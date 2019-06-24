; ModuleID = './line16-main.o.i'
source_filename = "./line16-main.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cache = type { %union.pthread_mutex_t, i32 ()*, i32 ()*, i32 (i32)*, void (i32)*, i32 (i8*)*, i32 (i8*, i32*)*, void (i8*)*, void (i8*)*, i8* (i32)*, i8* (i32)*, void (i32, i8*)*, i8* (i8*, i32)*, void ()* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.opts = type { i16, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.ssl_method_st* ()*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.dh_st*, i8*, %struct.proxyspec*, i8*, i8 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, {}*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.0, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.0 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
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
%struct.engine_st = type opaque
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.cert_st = type opaque
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i8*, i8*, i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st_SSL_CIPHER*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i8*, i64, i8*, i8*, i64, i64, i8* }
%struct.sess_cert_st = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32 }
%struct.stack_st_X509_OBJECT = type { %struct.stack_st }
%struct.stack_st_X509_LOOKUP = type { %struct.stack_st }
%struct.stack_st_X509_CRL = type { %struct.stack_st }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, [20 x i8], %struct.stack_st_GENERAL_NAMES*, %struct.x509_crl_method_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.stack_st_GENERAL_NAME = type { %struct.stack_st }
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.3, %struct.X509_name_st* }
%union.anon.3 = type { %struct.stack_st_GENERAL_NAME* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.stack_st_X509_NAME = type { %struct.stack_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.ssl3_enc_method = type opaque
%struct.stack_st_X509 = type { %struct.stack_st }
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type { %struct.stack_st }
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type { %struct.stack_st }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_X509_ALGOR = type { %struct.stack_st }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.2, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.2 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }
%struct.proxyspec = type { i8, %struct.sockaddr_storage, i32, %struct.sockaddr_storage, i32, i16, i8*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (i32)*, %struct.proxyspec* }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.proxy_ctx = type opaque
%struct.cert = type { %struct.evp_pkey_st*, %struct.x509_st*, %struct.stack_st_X509*, %union.pthread_mutex_t, i64 }

@.str = private unnamed_addr constant [75 x i8] c"g:G:Zx:T:I:k:c:C:K:t:OPa:b:s:r:R:e:Eu:m:j:p:l:L:S:F:M:dDVhW:w:q:f:o:X:Y:y:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: -d and -D are mutually exclusive.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: -T depends on -I.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: -I depends on -T.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: no proxyspec specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [95 x i8] c"%s: no supported NAT engines on this platform.\0AOnly static addr and SNI proxyspecs supported.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: IPv6 not supported by '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: failed to initialize OpenSSL.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: failed to enable OpenSSL engine %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: no CA key specified (-k).\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s: no CA cert specified (-c).\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: CA cert does not match key.\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"%s: cannot open PID file '%s' - process already running?\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ALL:-aNULL\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s: cannot use -m when -u is current user\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%s: -m depends on -u\0A\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"| Warning: -F requires a privileged operation for each connection!\0A\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"| Warning: -S requires a privileged operation for each connection!\0A\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"| Warning: -Y requires a privileged operation for each connection!\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"| Warning: -y requires a privileged operation for each connection!\0A\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"| Warning: -w/-W require a privileged op for each connection!\0A\00", align 1
@.str.22 = private unnamed_addr constant [153 x i8] c"| Privileged operations require communication between parent and child process\0A| and will negatively impact latency and performance on each connection.\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"%s: error generating RSA key:\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Generated RSA key for leaf certs.\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"%s: error generating key id\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"%s/%s.key\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%s: %s (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"%s: Failed to open '%s' for writing: %s (%i)\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"%s: Failed to write key to '%s': %s (%i)\0A\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"proxyspecs:\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"- %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Loaded OpenSSL engine %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Loaded CA: '%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"No CA loaded.\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"%s: failed to preinit cachemgr.\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"%s: failed to preinit logging.\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"%s: failed to preinit NAT lookup.\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"%s: failed to load certs from %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [60 x i8] c"Detaching from TTY, see syslog for errors after this point\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"%s: failed to detach from TTY: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"Failed to write PID to PID file '%s': %s (%i)\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Failed to initialize proxy.\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Failed to drop privileges: %s (%i)\0A\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Dropped privs to user %s group %s chroot %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"%s: failed to reinit SSL\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"%s: failed to init log facility: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"Failed to init cache manager.\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Failed to init NAT state table lookup.\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"%s %s (built %s)\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"SSLsplit\00", align 1
@build_version = external global i8*, align 8
@build_date = external global i8*, align 8
@.str.54 = private unnamed_addr constant [80 x i8] c"------------------------------------------------------------------------------\0A\00", align 1
@.str.55 = private unnamed_addr constant [70 x i8] c"WARNING: Something is wrong with the version compiled into sslsplit!\0A\00", align 1
@.str.56 = private unnamed_addr constant [76 x i8] c"The version should contain a release number and/or a git commit reference.\0A\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"If using a package, please report a bug to the distro package maintainer.\0A\00", align 1
@.str.58 = private unnamed_addr constant [64 x i8] c"Copyright (c) 2009-2018, Daniel Roethlisberger <daniel@roe.ch>\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"https://www.roe.ch/SSLsplit\0A\00", align 1
@build_info = external global i8*, align 8
@.str.60 = private unnamed_addr constant [16 x i8] c"Build info: %s\0A\00", align 1
@build_features = external global i8*, align 8
@.str.61 = private unnamed_addr constant [14 x i8] c"Features: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Local process info support: \00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"compiled against libevent %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"2.1.8-stable\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"rtlinked against libevent %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"compiled against libnet %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"1.1.6\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"libnet version \00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"rtlinked against libnet %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"compiled against libpcap n/a\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"libpcap version \00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"rtlinked against libpcap %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"%d CPU cores detected\0A\00", align 1
@.str.75 = private unnamed_addr constant [3396 x i8] c"Usage: %s [-D] [-f conffile] [-o opt=val] [options...] [proxyspecs...]\0A  -f conffile use conffile to load configuration from\0A  -o opt=val  override conffile option opt with value val\0A  -c pemfile  use CA cert (and key) from pemfile to sign forged certs\0A  -k pemfile  use CA key (and cert) from pemfile to sign forged certs\0A  -C pemfile  use CA chain from pemfile (intermediate and root CA certs)\0A  -K pemfile  use key from pemfile for leaf certs (default: generate)\0A  -q crlurl   use URL as CRL distribution point for all forged certs\0A  -t certdir  use cert+chain+key PEM files from certdir to target all sites\0A              matching the common names (non-matching: generate if CA)\0A  -w gendir   write leaf key and only generated certificates to gendir\0A  -W gendir   write leaf key and all certificates to gendir\0A  -O          deny all OCSP requests on all proxyspecs\0A  -P          passthrough SSL connections if they cannot be split because of\0A              client cert auth or no matching cert and no CA (default: drop)\0A  -a pemfile  use cert from pemfile when destination requests client certs\0A  -b pemfile  use key from pemfile when destination requests client certs\0A  -g pemfile  use DH group params from pemfile (default: keyfiles or auto)\0A  -G curve    use ECDH named curve (default: prime256v1)\0A  -Z          disable SSL/TLS compression on all connections\0A  -r proto    only support one of ssl3 tls10 tls11 tls12 (default: all)\0A  -R proto    disable one of ssl3 tls10 tls11 tls12 (default: none)\0A  -s ciphers  use the given OpenSSL cipher suite spec (default: ALL:-aNULL)\0A  -x engine   load OpenSSL engine with the given identifier\0A  -e engine   specify default NAT engine to use (default: %s)\0A  -E          list available NAT engines and exit\0A  -u user     drop privileges to user (default if run as root: nobody)\0A  -m group    when using -u, override group (default: primary group of user)\0A  -j jaildir  chroot() to jaildir (impacts sni proxyspecs, see manual page)\0A  -p pidfile  write pid to pidfile (default: no pid file)\0A  -l logfile  connect log: log one line summary per connection to logfile\0A  -L logfile  content log: full data to file or named pipe (excludes -S/-F)\0A  -S logdir   content log: full data to separate files in dir (excludes -L/-F)\0A  -F pathspec content log: full data to sep files with %% subst (excl. -L/-S):\0A              %%T - initial connection time as an ISO 8601 UTC timestamp\0A              %%d - destination host and port\0A              %%D - destination host\0A              %%p - destination port\0A              %%s - source host and port\0A              %%S - source host\0A              %%q - source port\0A              %%%% - literal '%%'\0A      e.g.    \22/var/log/sslsplit/%%T-%%s-%%d.log\22\0A  -X pcapfile pcap log: packets to pcapfile (excludes -Y/-y)\0A  -Y pcapdir  pcap log: packets to separate files in dir (excludes -X/-y)\0A  -y pathspec pcap log: packets to sep files with %% subst (excl. -X/-Y):\0A              see option -F for pathspec format\0A  -I if       mirror packets to interface\0A  -T addr     mirror packets to target address (used with -I)\0A  -M logfile  log master keys to logfile in SSLKEYLOGFILE format\0A  -d          daemon mode: run in background, log error messages to syslog\0A  -D          debug mode: run in foreground, log debug messages on stderr\0A  -V          print version information and exit\0A  -h          print usage information and exit\0A\00", align 1
@.str.76 = private unnamed_addr constant [602 x i8] c"  proxyspec = type listenaddr+port [natengine|targetaddr+port|\22sni\22+port]\0A      e.g.    http 0.0.0.0 8080 www.roe.ch 80  # http/4; static hostname dst\0A              https ::1 8443 2001:db8::1 443   # https/6; static address dst\0A              https 127.0.0.1 9443 sni 443     # https/4; SNI DNS lookups\0A              tcp 127.0.0.1 10025              # tcp/4; default NAT engine\0A              ssl 2001:db8::2 9999 pf          # ssl/6; NAT engine 'pf'\0A              autossl ::1 10025                # autossl/6; STARTTLS et al\0AExample:\0A  %s -k ca.key -c ca.pem -P  https 127.0.0.1 8443  https ::1 8443\0A%s\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.78 = private unnamed_addr constant [99 x i8] c"\0AWarning: no supported NAT engine on this platform!\0AOnly static and SNI proxyspecs are supported.\0A\00", align 1
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@build_pkgname = external global i8*, align 8
@.str.80 = private unnamed_addr constant [48 x i8] c"Failed to load cert and key from PEM file '%s'\0A\00", align 1
@.str.81 = private unnamed_addr constant [43 x i8] c"Cert does not match key in PEM file '%s':\0A\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Targets for '%s':\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@cachemgr_tgcrt = external global %struct.cache*, align 8
@.str.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.opts*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.proxyspec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca %struct.proxyspec*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [6 x i32], align 16
  %22 = alloca %struct.proxy_ctx*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !16, metadata !17), !dbg !18
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !19, metadata !17), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %6, metadata !21, metadata !17), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %7, metadata !25, metadata !17), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.opts** %8, metadata !27, metadata !17), !dbg !1827
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1828, metadata !17), !dbg !1829
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1830, metadata !17), !dbg !1831
  store i32 -1, i32* %10, align 4, !dbg !1831
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1832, metadata !17), !dbg !1833
  store i32 1, i32* %11, align 4, !dbg !1833
  %23 = load i8**, i8*** %5, align 8, !dbg !1834
  %24 = getelementptr inbounds i8*, i8** %23, i64 0, !dbg !1834
  %25 = load i8*, i8** %24, align 8, !dbg !1834
  store i8* %25, i8** %6, align 8, !dbg !1835
  %26 = call noalias %struct.opts* @opts_new(), !dbg !1836
  store %struct.opts* %26, %struct.opts** %8, align 8, !dbg !1837
  %27 = call i8* @nat_getdefaultname(), !dbg !1838
  %28 = icmp ne i8* %27, null, !dbg !1838
  br i1 %28, label %29, label %37, !dbg !1840

; <label>:29:                                     ; preds = %2
  %30 = call i8* @nat_getdefaultname(), !dbg !1841
  %31 = call noalias i8* @strdup(i8* %30) #8, !dbg !1843
  store i8* %31, i8** %9, align 8, !dbg !1845
  %32 = load i8*, i8** %9, align 8, !dbg !1846
  %33 = icmp ne i8* %32, null, !dbg !1846
  br i1 %33, label %36, label %34, !dbg !1848

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %6, align 8, !dbg !1849
  call void @oom_die(i8* %35) #9, !dbg !1850
  unreachable, !dbg !1850

; <label>:36:                                     ; preds = %29
  br label %38, !dbg !1851

; <label>:37:                                     ; preds = %2
  store i8* null, i8** %9, align 8, !dbg !1852
  br label %38

; <label>:38:                                     ; preds = %37, %36
  br label %39, !dbg !1854

; <label>:39:                                     ; preds = %228, %38
  %40 = load i32, i32* %4, align 4, !dbg !1855
  %41 = load i8**, i8*** %5, align 8, !dbg !1857
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0)) #8, !dbg !1858
  store i32 %42, i32* %7, align 4, !dbg !1859
  %43 = icmp ne i32 %42, -1, !dbg !1860
  br i1 %43, label %44, label %229, !dbg !1861

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %7, align 4, !dbg !1862
  switch i32 %45, label %227 [
    i32 102, label %46
    i32 111, label %73
    i32 99, label %81
    i32 107, label %85
    i32 67, label %89
    i32 75, label %93
    i32 116, label %97
    i32 113, label %101
    i32 79, label %104
    i32 80, label %106
    i32 97, label %108
    i32 98, label %112
    i32 103, label %116
    i32 71, label %120
    i32 90, label %124
    i32 115, label %126
    i32 114, label %130
    i32 82, label %134
    i32 120, label %138
    i32 101, label %142
    i32 69, label %155
    i32 117, label %156
    i32 109, label %160
    i32 112, label %164
    i32 106, label %168
    i32 108, label %172
    i32 76, label %176
    i32 83, label %180
    i32 70, label %184
    i32 88, label %188
    i32 89, label %192
    i32 121, label %196
    i32 73, label %200
    i32 84, label %204
    i32 87, label %208
    i32 119, label %212
    i32 77, label %216
    i32 100, label %220
    i32 68, label %222
    i32 86, label %224
    i32 104, label %225
    i32 63, label %226
  ], !dbg !1864

; <label>:46:                                     ; preds = %44
  %47 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1865
  %48 = getelementptr inbounds %struct.opts, %struct.opts* %47, i32 0, i32 9, !dbg !1868
  %49 = load i8*, i8** %48, align 8, !dbg !1868
  %50 = icmp ne i8* %49, null, !dbg !1865
  br i1 %50, label %51, label %55, !dbg !1869

; <label>:51:                                     ; preds = %46
  %52 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1870
  %53 = getelementptr inbounds %struct.opts, %struct.opts* %52, i32 0, i32 9, !dbg !1871
  %54 = load i8*, i8** %53, align 8, !dbg !1871
  call void @free(i8* %54) #8, !dbg !1872
  br label %55, !dbg !1872

; <label>:55:                                     ; preds = %51, %46
  %56 = load i8*, i8** @optarg, align 8, !dbg !1873
  %57 = call noalias i8* @strdup(i8* %56) #8, !dbg !1874
  %58 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1875
  %59 = getelementptr inbounds %struct.opts, %struct.opts* %58, i32 0, i32 9, !dbg !1876
  store i8* %57, i8** %59, align 8, !dbg !1877
  %60 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1878
  %61 = getelementptr inbounds %struct.opts, %struct.opts* %60, i32 0, i32 9, !dbg !1880
  %62 = load i8*, i8** %61, align 8, !dbg !1880
  %63 = icmp ne i8* %62, null, !dbg !1878
  br i1 %63, label %66, label %64, !dbg !1881

; <label>:64:                                     ; preds = %55
  %65 = load i8*, i8** %6, align 8, !dbg !1882
  call void @oom_die(i8* %65) #9, !dbg !1883
  unreachable, !dbg !1883

; <label>:66:                                     ; preds = %55
  %67 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1884
  %68 = load i8*, i8** %6, align 8, !dbg !1886
  %69 = call i32 @load_conffile(%struct.opts* %67, i8* %68, i8** %9), !dbg !1887
  %70 = icmp eq i32 %69, -1, !dbg !1888
  br i1 %70, label %71, label %72, !dbg !1889

; <label>:71:                                     ; preds = %66
  call void @exit(i32 1) #10, !dbg !1890
  unreachable, !dbg !1890

; <label>:72:                                     ; preds = %66
  br label %228, !dbg !1892

; <label>:73:                                     ; preds = %44
  %74 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1893
  %75 = load i8*, i8** %6, align 8, !dbg !1895
  %76 = load i8*, i8** @optarg, align 8, !dbg !1896
  %77 = call i32 @opts_set_option(%struct.opts* %74, i8* %75, i8* %76, i8** %9), !dbg !1897
  %78 = icmp eq i32 %77, -1, !dbg !1898
  br i1 %78, label %79, label %80, !dbg !1899

; <label>:79:                                     ; preds = %73
  call void @exit(i32 1) #10, !dbg !1900
  unreachable, !dbg !1900

; <label>:80:                                     ; preds = %73
  br label %228, !dbg !1902

; <label>:81:                                     ; preds = %44
  %82 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1903
  %83 = load i8*, i8** %6, align 8, !dbg !1904
  %84 = load i8*, i8** @optarg, align 8, !dbg !1905
  call void @opts_set_cacrt(%struct.opts* %82, i8* %83, i8* %84), !dbg !1906
  br label %228, !dbg !1907

; <label>:85:                                     ; preds = %44
  %86 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1908
  %87 = load i8*, i8** %6, align 8, !dbg !1909
  %88 = load i8*, i8** @optarg, align 8, !dbg !1910
  call void @opts_set_cakey(%struct.opts* %86, i8* %87, i8* %88), !dbg !1911
  br label %228, !dbg !1912

; <label>:89:                                     ; preds = %44
  %90 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1913
  %91 = load i8*, i8** %6, align 8, !dbg !1914
  %92 = load i8*, i8** @optarg, align 8, !dbg !1915
  call void @opts_set_chain(%struct.opts* %90, i8* %91, i8* %92), !dbg !1916
  br label %228, !dbg !1917

; <label>:93:                                     ; preds = %44
  %94 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1918
  %95 = load i8*, i8** %6, align 8, !dbg !1919
  %96 = load i8*, i8** @optarg, align 8, !dbg !1920
  call void @opts_set_key(%struct.opts* %94, i8* %95, i8* %96), !dbg !1921
  br label %228, !dbg !1922

; <label>:97:                                     ; preds = %44
  %98 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1923
  %99 = load i8*, i8** %6, align 8, !dbg !1924
  %100 = load i8*, i8** @optarg, align 8, !dbg !1925
  call void @opts_set_tgcrtdir(%struct.opts* %98, i8* %99, i8* %100), !dbg !1926
  br label %228, !dbg !1927

; <label>:101:                                    ; preds = %44
  %102 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1928
  %103 = load i8*, i8** @optarg, align 8, !dbg !1929
  call void @opts_set_crl(%struct.opts* %102, i8* %103), !dbg !1930
  br label %228, !dbg !1931

; <label>:104:                                    ; preds = %44
  %105 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1932
  call void @opts_set_deny_ocsp(%struct.opts* %105), !dbg !1933
  br label %228, !dbg !1934

; <label>:106:                                    ; preds = %44
  %107 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1935
  call void @opts_set_passthrough(%struct.opts* %107), !dbg !1936
  br label %228, !dbg !1937

; <label>:108:                                    ; preds = %44
  %109 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1938
  %110 = load i8*, i8** %6, align 8, !dbg !1939
  %111 = load i8*, i8** @optarg, align 8, !dbg !1940
  call void @opts_set_clientcrt(%struct.opts* %109, i8* %110, i8* %111), !dbg !1941
  br label %228, !dbg !1942

; <label>:112:                                    ; preds = %44
  %113 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1943
  %114 = load i8*, i8** %6, align 8, !dbg !1944
  %115 = load i8*, i8** @optarg, align 8, !dbg !1945
  call void @opts_set_clientkey(%struct.opts* %113, i8* %114, i8* %115), !dbg !1946
  br label %228, !dbg !1947

; <label>:116:                                    ; preds = %44
  %117 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1948
  %118 = load i8*, i8** %6, align 8, !dbg !1949
  %119 = load i8*, i8** @optarg, align 8, !dbg !1950
  call void @opts_set_dh(%struct.opts* %117, i8* %118, i8* %119), !dbg !1951
  br label %228, !dbg !1952

; <label>:120:                                    ; preds = %44
  %121 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1953
  %122 = load i8*, i8** %6, align 8, !dbg !1954
  %123 = load i8*, i8** @optarg, align 8, !dbg !1955
  call void @opts_set_ecdhcurve(%struct.opts* %121, i8* %122, i8* %123), !dbg !1956
  br label %228, !dbg !1957

; <label>:124:                                    ; preds = %44
  %125 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1958
  call void @opts_unset_sslcomp(%struct.opts* %125), !dbg !1959
  br label %228, !dbg !1960

; <label>:126:                                    ; preds = %44
  %127 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1961
  %128 = load i8*, i8** %6, align 8, !dbg !1962
  %129 = load i8*, i8** @optarg, align 8, !dbg !1963
  call void @opts_set_ciphers(%struct.opts* %127, i8* %128, i8* %129), !dbg !1964
  br label %228, !dbg !1965

; <label>:130:                                    ; preds = %44
  %131 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1966
  %132 = load i8*, i8** %6, align 8, !dbg !1967
  %133 = load i8*, i8** @optarg, align 8, !dbg !1968
  call void @opts_force_proto(%struct.opts* %131, i8* %132, i8* %133), !dbg !1969
  br label %228, !dbg !1970

; <label>:134:                                    ; preds = %44
  %135 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1971
  %136 = load i8*, i8** %6, align 8, !dbg !1972
  %137 = load i8*, i8** @optarg, align 8, !dbg !1973
  call void @opts_disable_proto(%struct.opts* %135, i8* %136, i8* %137), !dbg !1974
  br label %228, !dbg !1975

; <label>:138:                                    ; preds = %44
  %139 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1976
  %140 = load i8*, i8** %6, align 8, !dbg !1977
  %141 = load i8*, i8** @optarg, align 8, !dbg !1978
  call void @opts_set_openssl_engine(%struct.opts* %139, i8* %140, i8* %141), !dbg !1979
  br label %228, !dbg !1980

; <label>:142:                                    ; preds = %44
  %143 = load i8*, i8** %9, align 8, !dbg !1981
  %144 = icmp ne i8* %143, null, !dbg !1981
  br i1 %144, label %145, label %147, !dbg !1983

; <label>:145:                                    ; preds = %142
  %146 = load i8*, i8** %9, align 8, !dbg !1984
  call void @free(i8* %146) #8, !dbg !1985
  br label %147, !dbg !1985

; <label>:147:                                    ; preds = %145, %142
  %148 = load i8*, i8** @optarg, align 8, !dbg !1986
  %149 = call noalias i8* @strdup(i8* %148) #8, !dbg !1987
  store i8* %149, i8** %9, align 8, !dbg !1988
  %150 = load i8*, i8** %9, align 8, !dbg !1989
  %151 = icmp ne i8* %150, null, !dbg !1989
  br i1 %151, label %154, label %152, !dbg !1991

; <label>:152:                                    ; preds = %147
  %153 = load i8*, i8** %6, align 8, !dbg !1992
  call void @oom_die(i8* %153) #9, !dbg !1993
  unreachable, !dbg !1993

; <label>:154:                                    ; preds = %147
  br label %228, !dbg !1994

; <label>:155:                                    ; preds = %44
  call void @nat_list_engines(), !dbg !1995
  call void @exit(i32 0) #10, !dbg !1996
  unreachable, !dbg !1996

; <label>:156:                                    ; preds = %44
  %157 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !1997
  %158 = load i8*, i8** %6, align 8, !dbg !1998
  %159 = load i8*, i8** @optarg, align 8, !dbg !1999
  call void @opts_set_user(%struct.opts* %157, i8* %158, i8* %159), !dbg !2000
  br label %228, !dbg !2001

; <label>:160:                                    ; preds = %44
  %161 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2002
  %162 = load i8*, i8** %6, align 8, !dbg !2003
  %163 = load i8*, i8** @optarg, align 8, !dbg !2004
  call void @opts_set_group(%struct.opts* %161, i8* %162, i8* %163), !dbg !2005
  br label %228, !dbg !2006

; <label>:164:                                    ; preds = %44
  %165 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2007
  %166 = load i8*, i8** %6, align 8, !dbg !2008
  %167 = load i8*, i8** @optarg, align 8, !dbg !2009
  call void @opts_set_pidfile(%struct.opts* %165, i8* %166, i8* %167), !dbg !2010
  br label %228, !dbg !2011

; <label>:168:                                    ; preds = %44
  %169 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2012
  %170 = load i8*, i8** %6, align 8, !dbg !2013
  %171 = load i8*, i8** @optarg, align 8, !dbg !2014
  call void @opts_set_jaildir(%struct.opts* %169, i8* %170, i8* %171), !dbg !2015
  br label %228, !dbg !2016

; <label>:172:                                    ; preds = %44
  %173 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2017
  %174 = load i8*, i8** %6, align 8, !dbg !2018
  %175 = load i8*, i8** @optarg, align 8, !dbg !2019
  call void @opts_set_connectlog(%struct.opts* %173, i8* %174, i8* %175), !dbg !2020
  br label %228, !dbg !2021

; <label>:176:                                    ; preds = %44
  %177 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2022
  %178 = load i8*, i8** %6, align 8, !dbg !2023
  %179 = load i8*, i8** @optarg, align 8, !dbg !2024
  call void @opts_set_contentlog(%struct.opts* %177, i8* %178, i8* %179), !dbg !2025
  br label %228, !dbg !2026

; <label>:180:                                    ; preds = %44
  %181 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2027
  %182 = load i8*, i8** %6, align 8, !dbg !2028
  %183 = load i8*, i8** @optarg, align 8, !dbg !2029
  call void @opts_set_contentlogdir(%struct.opts* %181, i8* %182, i8* %183), !dbg !2030
  br label %228, !dbg !2031

; <label>:184:                                    ; preds = %44
  %185 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2032
  %186 = load i8*, i8** %6, align 8, !dbg !2033
  %187 = load i8*, i8** @optarg, align 8, !dbg !2034
  call void @opts_set_contentlogpathspec(%struct.opts* %185, i8* %186, i8* %187), !dbg !2035
  br label %228, !dbg !2036

; <label>:188:                                    ; preds = %44
  %189 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2037
  %190 = load i8*, i8** %6, align 8, !dbg !2038
  %191 = load i8*, i8** @optarg, align 8, !dbg !2039
  call void @opts_set_pcaplog(%struct.opts* %189, i8* %190, i8* %191), !dbg !2040
  br label %228, !dbg !2041

; <label>:192:                                    ; preds = %44
  %193 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2042
  %194 = load i8*, i8** %6, align 8, !dbg !2043
  %195 = load i8*, i8** @optarg, align 8, !dbg !2044
  call void @opts_set_pcaplogdir(%struct.opts* %193, i8* %194, i8* %195), !dbg !2045
  br label %228, !dbg !2046

; <label>:196:                                    ; preds = %44
  %197 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2047
  %198 = load i8*, i8** %6, align 8, !dbg !2048
  %199 = load i8*, i8** @optarg, align 8, !dbg !2049
  call void @opts_set_pcaplogpathspec(%struct.opts* %197, i8* %198, i8* %199), !dbg !2050
  br label %228, !dbg !2051

; <label>:200:                                    ; preds = %44
  %201 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2052
  %202 = load i8*, i8** %6, align 8, !dbg !2053
  %203 = load i8*, i8** @optarg, align 8, !dbg !2054
  call void @opts_set_mirrorif(%struct.opts* %201, i8* %202, i8* %203), !dbg !2055
  br label %228, !dbg !2056

; <label>:204:                                    ; preds = %44
  %205 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2057
  %206 = load i8*, i8** %6, align 8, !dbg !2058
  %207 = load i8*, i8** @optarg, align 8, !dbg !2059
  call void @opts_set_mirrortarget(%struct.opts* %205, i8* %206, i8* %207), !dbg !2060
  br label %228, !dbg !2061

; <label>:208:                                    ; preds = %44
  %209 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2062
  %210 = load i8*, i8** %6, align 8, !dbg !2063
  %211 = load i8*, i8** @optarg, align 8, !dbg !2064
  call void @opts_set_certgendir_writeall(%struct.opts* %209, i8* %210, i8* %211), !dbg !2065
  br label %228, !dbg !2066

; <label>:212:                                    ; preds = %44
  %213 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2067
  %214 = load i8*, i8** %6, align 8, !dbg !2068
  %215 = load i8*, i8** @optarg, align 8, !dbg !2069
  call void @opts_set_certgendir_writegencerts(%struct.opts* %213, i8* %214, i8* %215), !dbg !2070
  br label %228, !dbg !2071

; <label>:216:                                    ; preds = %44
  %217 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2072
  %218 = load i8*, i8** %6, align 8, !dbg !2073
  %219 = load i8*, i8** @optarg, align 8, !dbg !2074
  call void @opts_set_masterkeylog(%struct.opts* %217, i8* %218, i8* %219), !dbg !2075
  br label %228, !dbg !2076

; <label>:220:                                    ; preds = %44
  %221 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2077
  call void @opts_set_daemon(%struct.opts* %221), !dbg !2078
  br label %228, !dbg !2079

; <label>:222:                                    ; preds = %44
  %223 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2080
  call void @opts_set_debug(%struct.opts* %223), !dbg !2081
  br label %228, !dbg !2082

; <label>:224:                                    ; preds = %44
  call void @main_version(), !dbg !2083
  call void @exit(i32 0) #10, !dbg !2084
  unreachable, !dbg !2084

; <label>:225:                                    ; preds = %44
  call void @main_usage(), !dbg !2085
  call void @exit(i32 0) #10, !dbg !2086
  unreachable, !dbg !2086

; <label>:226:                                    ; preds = %44
  call void @exit(i32 1) #10, !dbg !2087
  unreachable, !dbg !2087

; <label>:227:                                    ; preds = %44
  call void @main_usage(), !dbg !2088
  call void @exit(i32 1) #10, !dbg !2089
  unreachable, !dbg !2089

; <label>:228:                                    ; preds = %222, %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %164, %160, %156, %154, %138, %134, %130, %126, %124, %120, %116, %112, %108, %106, %104, %101, %97, %93, %89, %85, %81, %80, %72
  br label %39, !dbg !2090, !llvm.loop !2092

; <label>:229:                                    ; preds = %39
  %230 = load i32, i32* @optind, align 4, !dbg !2093
  %231 = load i32, i32* %4, align 4, !dbg !2094
  %232 = sub nsw i32 %231, %230, !dbg !2094
  store i32 %232, i32* %4, align 4, !dbg !2094
  %233 = load i32, i32* @optind, align 4, !dbg !2095
  %234 = load i8**, i8*** %5, align 8, !dbg !2096
  %235 = sext i32 %233 to i64, !dbg !2096
  %236 = getelementptr inbounds i8*, i8** %234, i64 %235, !dbg !2096
  store i8** %236, i8*** %5, align 8, !dbg !2096
  %237 = load i8*, i8** %9, align 8, !dbg !2097
  %238 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2098
  %239 = getelementptr inbounds %struct.opts, %struct.opts* %238, i32 0, i32 27, !dbg !2099
  call void @proxyspec_parse(i32* %4, i8*** %5, i8* %237, %struct.proxyspec** %239), !dbg !2100
  %240 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2101
  %241 = bitcast %struct.opts* %240 to i16*, !dbg !2103
  %242 = load i16, i16* %241, align 8, !dbg !2103
  %243 = lshr i16 %242, 1, !dbg !2103
  %244 = and i16 %243, 1, !dbg !2103
  %245 = zext i16 %244 to i32, !dbg !2103
  %246 = icmp ne i32 %245, 0, !dbg !2101
  br i1 %246, label %247, label %259, !dbg !2104

; <label>:247:                                    ; preds = %229
  %248 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2105
  %249 = bitcast %struct.opts* %248 to i16*, !dbg !2107
  %250 = load i16, i16* %249, align 8, !dbg !2107
  %251 = and i16 %250, 1, !dbg !2107
  %252 = zext i16 %251 to i32, !dbg !2107
  %253 = zext i32 %252 to i64, !dbg !2108
  %254 = icmp ne i64 %253, 0, !dbg !2109
  br i1 %254, label %255, label %259, !dbg !2110

; <label>:255:                                    ; preds = %247
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2111
  %257 = load i8*, i8** %6, align 8, !dbg !2113
  %258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i8* %257), !dbg !2114
  call void @exit(i32 1) #10, !dbg !2115
  unreachable, !dbg !2115

; <label>:259:                                    ; preds = %247, %229
  %260 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2116
  %261 = getelementptr inbounds %struct.opts, %struct.opts* %260, i32 0, i32 17, !dbg !2118
  %262 = load i8*, i8** %261, align 8, !dbg !2118
  %263 = icmp ne i8* %262, null, !dbg !2116
  br i1 %263, label %264, label %273, !dbg !2119

; <label>:264:                                    ; preds = %259
  %265 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2120
  %266 = getelementptr inbounds %struct.opts, %struct.opts* %265, i32 0, i32 16, !dbg !2122
  %267 = load i8*, i8** %266, align 8, !dbg !2122
  %268 = icmp ne i8* %267, null, !dbg !2120
  br i1 %268, label %273, label %269, !dbg !2123

; <label>:269:                                    ; preds = %264
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2124
  %271 = load i8*, i8** %6, align 8, !dbg !2126
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* %271), !dbg !2127
  call void @exit(i32 1) #10, !dbg !2128
  unreachable, !dbg !2128

; <label>:273:                                    ; preds = %264, %259
  %274 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2129
  %275 = getelementptr inbounds %struct.opts, %struct.opts* %274, i32 0, i32 16, !dbg !2131
  %276 = load i8*, i8** %275, align 8, !dbg !2131
  %277 = icmp ne i8* %276, null, !dbg !2129
  br i1 %277, label %278, label %287, !dbg !2132

; <label>:278:                                    ; preds = %273
  %279 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2133
  %280 = getelementptr inbounds %struct.opts, %struct.opts* %279, i32 0, i32 17, !dbg !2135
  %281 = load i8*, i8** %280, align 8, !dbg !2135
  %282 = icmp ne i8* %281, null, !dbg !2133
  br i1 %282, label %287, label %283, !dbg !2136

; <label>:283:                                    ; preds = %278
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2137
  %285 = load i8*, i8** %6, align 8, !dbg !2139
  %286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i8* %285), !dbg !2140
  call void @exit(i32 1) #10, !dbg !2141
  unreachable, !dbg !2141

; <label>:287:                                    ; preds = %278, %273
  %288 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2142
  %289 = getelementptr inbounds %struct.opts, %struct.opts* %288, i32 0, i32 27, !dbg !2144
  %290 = load %struct.proxyspec*, %struct.proxyspec** %289, align 8, !dbg !2144
  %291 = icmp ne %struct.proxyspec* %290, null, !dbg !2142
  br i1 %291, label %296, label %292, !dbg !2145

; <label>:292:                                    ; preds = %287
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2146
  %294 = load i8*, i8** %6, align 8, !dbg !2148
  %295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %294), !dbg !2149
  call void @exit(i32 1) #10, !dbg !2150
  unreachable, !dbg !2150

; <label>:296:                                    ; preds = %287
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %12, metadata !2151, metadata !17), !dbg !2153
  %297 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2154
  %298 = getelementptr inbounds %struct.opts, %struct.opts* %297, i32 0, i32 27, !dbg !2155
  %299 = load %struct.proxyspec*, %struct.proxyspec** %298, align 8, !dbg !2155
  store %struct.proxyspec* %299, %struct.proxyspec** %12, align 8, !dbg !2153
  br label %300, !dbg !2156

; <label>:300:                                    ; preds = %357, %296
  %301 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2157
  %302 = icmp ne %struct.proxyspec* %301, null, !dbg !2160
  br i1 %302, label %303, label %361, !dbg !2160

; <label>:303:                                    ; preds = %300
  %304 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2161
  %305 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %304, i32 0, i32 4, !dbg !2164
  %306 = load i32, i32* %305, align 8, !dbg !2164
  %307 = icmp ne i32 %306, 0, !dbg !2161
  br i1 %307, label %314, label %308, !dbg !2165

; <label>:308:                                    ; preds = %303
  %309 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2166
  %310 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %309, i32 0, i32 5, !dbg !2168
  %311 = load i16, i16* %310, align 4, !dbg !2168
  %312 = zext i16 %311 to i32, !dbg !2166
  %313 = icmp ne i32 %312, 0, !dbg !2166
  br i1 %313, label %314, label %315, !dbg !2169

; <label>:314:                                    ; preds = %308, %303
  br label %357, !dbg !2170

; <label>:315:                                    ; preds = %308
  %316 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2171
  %317 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %316, i32 0, i32 6, !dbg !2173
  %318 = load i8*, i8** %317, align 8, !dbg !2173
  %319 = icmp ne i8* %318, null, !dbg !2171
  br i1 %319, label %324, label %320, !dbg !2174

; <label>:320:                                    ; preds = %315
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2175
  %322 = load i8*, i8** %6, align 8, !dbg !2177
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i32 0, i32 0), i8* %322), !dbg !2178
  call void @exit(i32 1) #10, !dbg !2179
  unreachable, !dbg !2179

; <label>:324:                                    ; preds = %315
  %325 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2180
  %326 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %325, i32 0, i32 1, !dbg !2182
  %327 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %326, i32 0, i32 0, !dbg !2183
  %328 = load i16, i16* %327, align 8, !dbg !2183
  %329 = zext i16 %328 to i32, !dbg !2180
  %330 = icmp eq i32 %329, 10, !dbg !2184
  br i1 %330, label %331, label %344, !dbg !2185

; <label>:331:                                    ; preds = %324
  %332 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2186
  %333 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %332, i32 0, i32 6, !dbg !2187
  %334 = load i8*, i8** %333, align 8, !dbg !2187
  %335 = call i32 @nat_ipv6ready(i8* %334), !dbg !2188
  %336 = icmp ne i32 %335, 0, !dbg !2188
  br i1 %336, label %344, label %337, !dbg !2189

; <label>:337:                                    ; preds = %331
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2191
  %339 = load i8*, i8** %6, align 8, !dbg !2193
  %340 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2194
  %341 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %340, i32 0, i32 6, !dbg !2195
  %342 = load i8*, i8** %341, align 8, !dbg !2195
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i8* %339, i8* %342), !dbg !2196
  call void @exit(i32 1) #10, !dbg !2197
  unreachable, !dbg !2197

; <label>:344:                                    ; preds = %331, %324
  %345 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2198
  %346 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %345, i32 0, i32 6, !dbg !2199
  %347 = load i8*, i8** %346, align 8, !dbg !2199
  %348 = call i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* @nat_getlookupcb(i8* %347), !dbg !2200
  %349 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2201
  %350 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %349, i32 0, i32 7, !dbg !2202
  store i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* %348, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)** %350, align 8, !dbg !2203
  %351 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2204
  %352 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %351, i32 0, i32 6, !dbg !2205
  %353 = load i8*, i8** %352, align 8, !dbg !2205
  %354 = call i32 (i32)* @nat_getsocketcb(i8* %353), !dbg !2206
  %355 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2207
  %356 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %355, i32 0, i32 8, !dbg !2208
  store i32 (i32)* %354, i32 (i32)** %356, align 8, !dbg !2209
  br label %357, !dbg !2210

; <label>:357:                                    ; preds = %344, %314
  %358 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !2211
  %359 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %358, i32 0, i32 9, !dbg !2213
  %360 = load %struct.proxyspec*, %struct.proxyspec** %359, align 8, !dbg !2213
  store %struct.proxyspec* %360, %struct.proxyspec** %12, align 8, !dbg !2214
  br label %300, !dbg !2215, !llvm.loop !2216

; <label>:361:                                    ; preds = %300
  %362 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2218
  %363 = call i32 @opts_has_ssl_spec(%struct.opts* %362), !dbg !2220
  %364 = icmp ne i32 %363, 0, !dbg !2220
  br i1 %364, label %365, label %448, !dbg !2221

; <label>:365:                                    ; preds = %361
  %366 = call i32 @ssl_init(), !dbg !2222
  %367 = icmp eq i32 %366, -1, !dbg !2225
  br i1 %367, label %368, label %372, !dbg !2226

; <label>:368:                                    ; preds = %365
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2227
  %370 = load i8*, i8** %6, align 8, !dbg !2229
  %371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* %370), !dbg !2230
  call void @exit(i32 1) #10, !dbg !2231
  unreachable, !dbg !2231

; <label>:372:                                    ; preds = %365
  %373 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2232
  %374 = getelementptr inbounds %struct.opts, %struct.opts* %373, i32 0, i32 1, !dbg !2234
  %375 = load i8*, i8** %374, align 8, !dbg !2234
  %376 = icmp ne i8* %375, null, !dbg !2232
  br i1 %376, label %377, label %390, !dbg !2235

; <label>:377:                                    ; preds = %372
  %378 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2236
  %379 = getelementptr inbounds %struct.opts, %struct.opts* %378, i32 0, i32 1, !dbg !2237
  %380 = load i8*, i8** %379, align 8, !dbg !2237
  %381 = call i32 @ssl_engine(i8* %380), !dbg !2238
  %382 = icmp eq i32 %381, -1, !dbg !2239
  br i1 %382, label %383, label %390, !dbg !2240

; <label>:383:                                    ; preds = %377
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2242
  %385 = load i8*, i8** %6, align 8, !dbg !2244
  %386 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2245
  %387 = getelementptr inbounds %struct.opts, %struct.opts* %386, i32 0, i32 1, !dbg !2246
  %388 = load i8*, i8** %387, align 8, !dbg !2246
  %389 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %384, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* %385, i8* %388), !dbg !2247
  call void @exit(i32 1) #10, !dbg !2248
  unreachable, !dbg !2248

; <label>:390:                                    ; preds = %377, %372
  %391 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2249
  %392 = getelementptr inbounds %struct.opts, %struct.opts* %391, i32 0, i32 19, !dbg !2251
  %393 = load %struct.x509_st*, %struct.x509_st** %392, align 8, !dbg !2251
  %394 = icmp ne %struct.x509_st* %393, null, !dbg !2249
  br i1 %394, label %400, label %395, !dbg !2252

; <label>:395:                                    ; preds = %390
  %396 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2253
  %397 = getelementptr inbounds %struct.opts, %struct.opts* %396, i32 0, i32 4, !dbg !2255
  %398 = load i8*, i8** %397, align 8, !dbg !2255
  %399 = icmp ne i8* %398, null, !dbg !2253
  br i1 %399, label %409, label %400, !dbg !2256

; <label>:400:                                    ; preds = %395, %390
  %401 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2257
  %402 = getelementptr inbounds %struct.opts, %struct.opts* %401, i32 0, i32 20, !dbg !2259
  %403 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %402, align 8, !dbg !2259
  %404 = icmp ne %struct.evp_pkey_st* %403, null, !dbg !2257
  br i1 %404, label %409, label %405, !dbg !2260

; <label>:405:                                    ; preds = %400
  %406 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2261
  %407 = load i8*, i8** %6, align 8, !dbg !2263
  %408 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %406, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* %407), !dbg !2264
  call void @exit(i32 1) #10, !dbg !2265
  unreachable, !dbg !2265

; <label>:409:                                    ; preds = %400, %395
  %410 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2266
  %411 = getelementptr inbounds %struct.opts, %struct.opts* %410, i32 0, i32 20, !dbg !2268
  %412 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %411, align 8, !dbg !2268
  %413 = icmp ne %struct.evp_pkey_st* %412, null, !dbg !2266
  br i1 %413, label %414, label %423, !dbg !2269

; <label>:414:                                    ; preds = %409
  %415 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2270
  %416 = getelementptr inbounds %struct.opts, %struct.opts* %415, i32 0, i32 19, !dbg !2272
  %417 = load %struct.x509_st*, %struct.x509_st** %416, align 8, !dbg !2272
  %418 = icmp ne %struct.x509_st* %417, null, !dbg !2270
  br i1 %418, label %423, label %419, !dbg !2273

; <label>:419:                                    ; preds = %414
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2274
  %421 = load i8*, i8** %6, align 8, !dbg !2276
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* %421), !dbg !2277
  call void @exit(i32 1) #10, !dbg !2278
  unreachable, !dbg !2278

; <label>:423:                                    ; preds = %414, %409
  %424 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2279
  %425 = getelementptr inbounds %struct.opts, %struct.opts* %424, i32 0, i32 20, !dbg !2281
  %426 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %425, align 8, !dbg !2281
  %427 = icmp ne %struct.evp_pkey_st* %426, null, !dbg !2279
  br i1 %427, label %428, label %447, !dbg !2282

; <label>:428:                                    ; preds = %423
  %429 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2283
  %430 = getelementptr inbounds %struct.opts, %struct.opts* %429, i32 0, i32 19, !dbg !2285
  %431 = load %struct.x509_st*, %struct.x509_st** %430, align 8, !dbg !2285
  %432 = icmp ne %struct.x509_st* %431, null, !dbg !2283
  br i1 %432, label %433, label %447, !dbg !2286

; <label>:433:                                    ; preds = %428
  %434 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2287
  %435 = getelementptr inbounds %struct.opts, %struct.opts* %434, i32 0, i32 19, !dbg !2288
  %436 = load %struct.x509_st*, %struct.x509_st** %435, align 8, !dbg !2288
  %437 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2289
  %438 = getelementptr inbounds %struct.opts, %struct.opts* %437, i32 0, i32 20, !dbg !2290
  %439 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %438, align 8, !dbg !2290
  %440 = call i32 @X509_check_private_key(%struct.x509_st* %436, %struct.evp_pkey_st* %439), !dbg !2291
  %441 = icmp ne i32 %440, 1, !dbg !2292
  br i1 %441, label %442, label %447, !dbg !2293

; <label>:442:                                    ; preds = %433
  %443 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2295
  %444 = load i8*, i8** %6, align 8, !dbg !2297
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i8* %444), !dbg !2298
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2299
  call void @ERR_print_errors_fp(%struct._IO_FILE* %446), !dbg !2300
  call void @exit(i32 1) #10, !dbg !2301
  unreachable, !dbg !2301

; <label>:447:                                    ; preds = %433, %428, %423
  br label %448, !dbg !2302

; <label>:448:                                    ; preds = %447, %361
  %449 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2303
  %450 = getelementptr inbounds %struct.opts, %struct.opts* %449, i32 0, i32 8, !dbg !2305
  %451 = load i8*, i8** %450, align 8, !dbg !2305
  %452 = icmp ne i8* %451, null, !dbg !2303
  br i1 %452, label %453, label %468, !dbg !2306

; <label>:453:                                    ; preds = %448
  %454 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2307
  %455 = getelementptr inbounds %struct.opts, %struct.opts* %454, i32 0, i32 8, !dbg !2309
  %456 = load i8*, i8** %455, align 8, !dbg !2309
  %457 = call i32 @sys_pidf_open(i8* %456), !dbg !2310
  store i32 %457, i32* %10, align 4, !dbg !2311
  %458 = load i32, i32* %10, align 4, !dbg !2312
  %459 = icmp eq i32 %458, -1, !dbg !2314
  br i1 %459, label %460, label %467, !dbg !2315

; <label>:460:                                    ; preds = %453
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2316
  %462 = load i8*, i8** %6, align 8, !dbg !2318
  %463 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2319
  %464 = getelementptr inbounds %struct.opts, %struct.opts* %463, i32 0, i32 8, !dbg !2320
  %465 = load i8*, i8** %464, align 8, !dbg !2320
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %461, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %462, i8* %465), !dbg !2321
  call void @exit(i32 1) #10, !dbg !2322
  unreachable, !dbg !2322

; <label>:467:                                    ; preds = %453
  br label %468, !dbg !2323

; <label>:468:                                    ; preds = %467, %448
  %469 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2324
  %470 = getelementptr inbounds %struct.opts, %struct.opts* %469, i32 0, i32 2, !dbg !2326
  %471 = load i8*, i8** %470, align 8, !dbg !2326
  %472 = icmp ne i8* %471, null, !dbg !2324
  br i1 %472, label %484, label %473, !dbg !2327

; <label>:473:                                    ; preds = %468
  %474 = call noalias i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !2328
  %475 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2330
  %476 = getelementptr inbounds %struct.opts, %struct.opts* %475, i32 0, i32 2, !dbg !2331
  store i8* %474, i8** %476, align 8, !dbg !2332
  %477 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2333
  %478 = getelementptr inbounds %struct.opts, %struct.opts* %477, i32 0, i32 2, !dbg !2335
  %479 = load i8*, i8** %478, align 8, !dbg !2335
  %480 = icmp ne i8* %479, null, !dbg !2333
  br i1 %480, label %483, label %481, !dbg !2336

; <label>:481:                                    ; preds = %473
  %482 = load i8*, i8** %6, align 8, !dbg !2337
  call void @oom_die(i8* %482) #9, !dbg !2338
  unreachable, !dbg !2338

; <label>:483:                                    ; preds = %473
  br label %484, !dbg !2339

; <label>:484:                                    ; preds = %483, %468
  %485 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2340
  %486 = getelementptr inbounds %struct.opts, %struct.opts* %485, i32 0, i32 5, !dbg !2342
  %487 = load i8*, i8** %486, align 8, !dbg !2342
  %488 = icmp ne i8* %487, null, !dbg !2340
  br i1 %488, label %509, label %489, !dbg !2343

; <label>:489:                                    ; preds = %484
  %490 = call i32 @geteuid() #8, !dbg !2344
  %491 = icmp ne i32 %490, 0, !dbg !2344
  br i1 %491, label %509, label %492, !dbg !2346

; <label>:492:                                    ; preds = %489
  %493 = call i32 @getuid() #8, !dbg !2347
  %494 = icmp ne i32 %493, 0, !dbg !2347
  br i1 %494, label %509, label %495, !dbg !2349

; <label>:495:                                    ; preds = %492
  %496 = call i32 @sys_isuser(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !2350
  %497 = icmp ne i32 %496, 0, !dbg !2350
  br i1 %497, label %498, label %509, !dbg !2351

; <label>:498:                                    ; preds = %495
  %499 = call noalias i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !2353
  %500 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2355
  %501 = getelementptr inbounds %struct.opts, %struct.opts* %500, i32 0, i32 5, !dbg !2356
  store i8* %499, i8** %501, align 8, !dbg !2357
  %502 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2358
  %503 = getelementptr inbounds %struct.opts, %struct.opts* %502, i32 0, i32 5, !dbg !2360
  %504 = load i8*, i8** %503, align 8, !dbg !2360
  %505 = icmp ne i8* %504, null, !dbg !2358
  br i1 %505, label %508, label %506, !dbg !2361

; <label>:506:                                    ; preds = %498
  %507 = load i8*, i8** %6, align 8, !dbg !2362
  call void @oom_die(i8* %507) #9, !dbg !2363
  unreachable, !dbg !2363

; <label>:508:                                    ; preds = %498
  br label %509, !dbg !2364

; <label>:509:                                    ; preds = %508, %495, %492, %489, %484
  %510 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2365
  %511 = getelementptr inbounds %struct.opts, %struct.opts* %510, i32 0, i32 5, !dbg !2367
  %512 = load i8*, i8** %511, align 8, !dbg !2367
  %513 = icmp ne i8* %512, null, !dbg !2365
  br i1 %513, label %514, label %535, !dbg !2368

; <label>:514:                                    ; preds = %509
  %515 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2369
  %516 = getelementptr inbounds %struct.opts, %struct.opts* %515, i32 0, i32 5, !dbg !2371
  %517 = load i8*, i8** %516, align 8, !dbg !2371
  %518 = call i32 @sys_isgeteuid(i8* %517), !dbg !2372
  %519 = icmp ne i32 %518, 0, !dbg !2372
  br i1 %519, label %520, label %535, !dbg !2373

; <label>:520:                                    ; preds = %514
  %521 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2374
  %522 = getelementptr inbounds %struct.opts, %struct.opts* %521, i32 0, i32 6, !dbg !2377
  %523 = load i8*, i8** %522, align 8, !dbg !2377
  %524 = icmp ne i8* %523, null, !dbg !2374
  br i1 %524, label %525, label %529, !dbg !2378

; <label>:525:                                    ; preds = %520
  %526 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2379
  %527 = load i8*, i8** %6, align 8, !dbg !2381
  %528 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %526, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i8* %527), !dbg !2382
  call void @exit(i32 1) #10, !dbg !2383
  unreachable, !dbg !2383

; <label>:529:                                    ; preds = %520
  %530 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2384
  %531 = getelementptr inbounds %struct.opts, %struct.opts* %530, i32 0, i32 5, !dbg !2385
  %532 = load i8*, i8** %531, align 8, !dbg !2385
  call void @free(i8* %532) #8, !dbg !2386
  %533 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2387
  %534 = getelementptr inbounds %struct.opts, %struct.opts* %533, i32 0, i32 5, !dbg !2388
  store i8* null, i8** %534, align 8, !dbg !2389
  br label %535, !dbg !2390

; <label>:535:                                    ; preds = %529, %514, %509
  %536 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2391
  %537 = getelementptr inbounds %struct.opts, %struct.opts* %536, i32 0, i32 6, !dbg !2393
  %538 = load i8*, i8** %537, align 8, !dbg !2393
  %539 = icmp ne i8* %538, null, !dbg !2391
  br i1 %539, label %540, label %549, !dbg !2394

; <label>:540:                                    ; preds = %535
  %541 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2395
  %542 = getelementptr inbounds %struct.opts, %struct.opts* %541, i32 0, i32 5, !dbg !2397
  %543 = load i8*, i8** %542, align 8, !dbg !2397
  %544 = icmp ne i8* %543, null, !dbg !2395
  br i1 %544, label %549, label %545, !dbg !2398

; <label>:545:                                    ; preds = %540
  %546 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2399
  %547 = load i8*, i8** %6, align 8, !dbg !2401
  %548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %546, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %547), !dbg !2402
  call void @exit(i32 1) #10, !dbg !2403
  unreachable, !dbg !2403

; <label>:549:                                    ; preds = %540, %535
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2404, metadata !17), !dbg !2405
  store i32 0, i32* %13, align 4, !dbg !2405
  %550 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2406
  %551 = getelementptr inbounds %struct.opts, %struct.opts* %550, i32 0, i32 5, !dbg !2408
  %552 = load i8*, i8** %551, align 8, !dbg !2408
  %553 = icmp ne i8* %552, null, !dbg !2406
  br i1 %553, label %554, label %602, !dbg !2409

; <label>:554:                                    ; preds = %549
  %555 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2410
  %556 = bitcast %struct.opts* %555 to i16*, !dbg !2413
  %557 = load i16, i16* %556, align 8, !dbg !2413
  %558 = lshr i16 %557, 9, !dbg !2413
  %559 = and i16 %558, 1, !dbg !2413
  %560 = zext i16 %559 to i32, !dbg !2413
  %561 = icmp ne i32 %560, 0, !dbg !2410
  br i1 %561, label %562, label %564, !dbg !2414

; <label>:562:                                    ; preds = %554
  %563 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0)), !dbg !2415
  store i32 1, i32* %13, align 4, !dbg !2417
  br label %564, !dbg !2418

; <label>:564:                                    ; preds = %562, %554
  %565 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2419
  %566 = bitcast %struct.opts* %565 to i16*, !dbg !2421
  %567 = load i16, i16* %566, align 8, !dbg !2421
  %568 = lshr i16 %567, 10, !dbg !2421
  %569 = and i16 %568, 1, !dbg !2421
  %570 = zext i16 %569 to i32, !dbg !2421
  %571 = icmp ne i32 %570, 0, !dbg !2419
  br i1 %571, label %572, label %574, !dbg !2422

; <label>:572:                                    ; preds = %564
  %573 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i32 0, i32 0)), !dbg !2423
  store i32 1, i32* %13, align 4, !dbg !2425
  br label %574, !dbg !2426

; <label>:574:                                    ; preds = %572, %564
  %575 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2427
  %576 = bitcast %struct.opts* %575 to i16*, !dbg !2429
  %577 = load i16, i16* %576, align 8, !dbg !2429
  %578 = lshr i16 %577, 11, !dbg !2429
  %579 = and i16 %578, 1, !dbg !2429
  %580 = zext i16 %579 to i32, !dbg !2429
  %581 = icmp ne i32 %580, 0, !dbg !2427
  br i1 %581, label %582, label %584, !dbg !2430

; <label>:582:                                    ; preds = %574
  %583 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0)), !dbg !2431
  store i32 1, i32* %13, align 4, !dbg !2433
  br label %584, !dbg !2434

; <label>:584:                                    ; preds = %582, %574
  %585 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2435
  %586 = bitcast %struct.opts* %585 to i16*, !dbg !2437
  %587 = load i16, i16* %586, align 8, !dbg !2437
  %588 = lshr i16 %587, 12, !dbg !2437
  %589 = and i16 %588, 1, !dbg !2437
  %590 = zext i16 %589 to i32, !dbg !2437
  %591 = icmp ne i32 %590, 0, !dbg !2435
  br i1 %591, label %592, label %594, !dbg !2438

; <label>:592:                                    ; preds = %584
  %593 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i32 0, i32 0)), !dbg !2439
  store i32 1, i32* %13, align 4, !dbg !2441
  br label %594, !dbg !2442

; <label>:594:                                    ; preds = %592, %584
  %595 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2443
  %596 = getelementptr inbounds %struct.opts, %struct.opts* %595, i32 0, i32 3, !dbg !2445
  %597 = load i8*, i8** %596, align 8, !dbg !2445
  %598 = icmp ne i8* %597, null, !dbg !2443
  br i1 %598, label %599, label %601, !dbg !2446

; <label>:599:                                    ; preds = %594
  %600 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i32 0, i32 0)), !dbg !2447
  store i32 1, i32* %13, align 4, !dbg !2449
  br label %601, !dbg !2450

; <label>:601:                                    ; preds = %599, %594
  br label %602, !dbg !2451

; <label>:602:                                    ; preds = %601, %549
  %603 = load i32, i32* %13, align 4, !dbg !2452
  %604 = icmp ne i32 %603, 0, !dbg !2452
  br i1 %604, label %605, label %607, !dbg !2454

; <label>:605:                                    ; preds = %602
  %606 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.22, i32 0, i32 0)), !dbg !2455
  br label %607, !dbg !2457

; <label>:607:                                    ; preds = %605, %602
  %608 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2458
  %609 = bitcast %struct.opts* %608 to i16*, !dbg !2460
  %610 = load i16, i16* %609, align 8, !dbg !2460
  %611 = and i16 %610, 1, !dbg !2460
  %612 = zext i16 %611 to i32, !dbg !2460
  %613 = zext i32 %612 to i64, !dbg !2461
  %614 = icmp ne i64 %613, 0, !dbg !2462
  br i1 %614, label %615, label %616, !dbg !2463

; <label>:615:                                    ; preds = %607
  call void @main_version(), !dbg !2464
  br label %616, !dbg !2466

; <label>:616:                                    ; preds = %615, %607
  %617 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2467
  %618 = call i32 @opts_has_ssl_spec(%struct.opts* %617), !dbg !2469
  %619 = icmp ne i32 %618, 0, !dbg !2469
  br i1 %619, label %620, label %654, !dbg !2470

; <label>:620:                                    ; preds = %616
  %621 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2471
  %622 = getelementptr inbounds %struct.opts, %struct.opts* %621, i32 0, i32 20, !dbg !2473
  %623 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %622, align 8, !dbg !2473
  %624 = icmp ne %struct.evp_pkey_st* %623, null, !dbg !2471
  br i1 %624, label %625, label %654, !dbg !2474

; <label>:625:                                    ; preds = %620
  %626 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2475
  %627 = getelementptr inbounds %struct.opts, %struct.opts* %626, i32 0, i32 21, !dbg !2477
  %628 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %627, align 8, !dbg !2477
  %629 = icmp ne %struct.evp_pkey_st* %628, null, !dbg !2475
  br i1 %629, label %654, label %630, !dbg !2478

; <label>:630:                                    ; preds = %625
  %631 = call noalias %struct.evp_pkey_st* @ssl_key_genrsa(i32 1024), !dbg !2479
  %632 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2481
  %633 = getelementptr inbounds %struct.opts, %struct.opts* %632, i32 0, i32 21, !dbg !2482
  store %struct.evp_pkey_st* %631, %struct.evp_pkey_st** %633, align 8, !dbg !2483
  %634 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2484
  %635 = getelementptr inbounds %struct.opts, %struct.opts* %634, i32 0, i32 21, !dbg !2486
  %636 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %635, align 8, !dbg !2486
  %637 = icmp ne %struct.evp_pkey_st* %636, null, !dbg !2484
  br i1 %637, label %643, label %638, !dbg !2487

; <label>:638:                                    ; preds = %630
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2488
  %640 = load i8*, i8** %6, align 8, !dbg !2490
  %641 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %639, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i8* %640), !dbg !2491
  %642 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2492
  call void @ERR_print_errors_fp(%struct._IO_FILE* %642), !dbg !2493
  call void @exit(i32 1) #10, !dbg !2494
  unreachable, !dbg !2494

; <label>:643:                                    ; preds = %630
  %644 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2495
  %645 = bitcast %struct.opts* %644 to i16*, !dbg !2497
  %646 = load i16, i16* %645, align 8, !dbg !2497
  %647 = and i16 %646, 1, !dbg !2497
  %648 = zext i16 %647 to i32, !dbg !2497
  %649 = zext i32 %648 to i64, !dbg !2498
  %650 = icmp ne i64 %649, 0, !dbg !2499
  br i1 %650, label %651, label %653, !dbg !2500

; <label>:651:                                    ; preds = %643
  %652 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0)), !dbg !2501
  br label %653, !dbg !2503

; <label>:653:                                    ; preds = %651, %643
  br label %654, !dbg !2504

; <label>:654:                                    ; preds = %653, %625, %620, %616
  %655 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2505
  %656 = getelementptr inbounds %struct.opts, %struct.opts* %655, i32 0, i32 3, !dbg !2507
  %657 = load i8*, i8** %656, align 8, !dbg !2507
  %658 = icmp ne i8* %657, null, !dbg !2505
  br i1 %658, label %659, label %721, !dbg !2508

; <label>:659:                                    ; preds = %654
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2509, metadata !17), !dbg !2511
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2512, metadata !17), !dbg !2513
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2514, metadata !17), !dbg !2515
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %17, metadata !2516, metadata !17), !dbg !2568
  %660 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2569
  %661 = getelementptr inbounds %struct.opts, %struct.opts* %660, i32 0, i32 21, !dbg !2570
  %662 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %661, align 8, !dbg !2570
  %663 = call noalias i8* @ssl_key_identifier(%struct.evp_pkey_st* %662, i32 0), !dbg !2571
  store i8* %663, i8** %14, align 8, !dbg !2572
  %664 = load i8*, i8** %14, align 8, !dbg !2573
  %665 = icmp ne i8* %664, null, !dbg !2573
  br i1 %665, label %670, label %666, !dbg !2575

; <label>:666:                                    ; preds = %659
  %667 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2576
  %668 = load i8*, i8** %6, align 8, !dbg !2578
  %669 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %667, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0), i8* %668), !dbg !2579
  call void @exit(i32 1) #10, !dbg !2580
  unreachable, !dbg !2580

; <label>:670:                                    ; preds = %659
  %671 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2581
  %672 = getelementptr inbounds %struct.opts, %struct.opts* %671, i32 0, i32 3, !dbg !2582
  %673 = load i8*, i8** %672, align 8, !dbg !2582
  %674 = load i8*, i8** %14, align 8, !dbg !2583
  %675 = call i32 (i8**, i8*, ...) @asprintf(i8** %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* %673, i8* %674) #8, !dbg !2584
  store i32 %675, i32* %16, align 4, !dbg !2585
  %676 = load i32, i32* %16, align 4, !dbg !2586
  %677 = icmp eq i32 %676, -1, !dbg !2588
  br i1 %677, label %678, label %687, !dbg !2589

; <label>:678:                                    ; preds = %670
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2590
  %680 = load i8*, i8** %6, align 8, !dbg !2592
  %681 = call i32* @__errno_location() #1, !dbg !2593
  %682 = load i32, i32* %681, align 4, !dbg !2594
  %683 = call i8* @strerror(i32 %682) #8, !dbg !2595
  %684 = call i32* @__errno_location() #1, !dbg !2597
  %685 = load i32, i32* %684, align 4, !dbg !2599
  %686 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %679, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* %680, i8* %683, i32 %685), !dbg !2600
  call void @exit(i32 1) #10, !dbg !2601
  unreachable, !dbg !2601

; <label>:687:                                    ; preds = %670
  %688 = load i8*, i8** %15, align 8, !dbg !2602
  %689 = call %struct._IO_FILE* @fopen(i8* %688, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)), !dbg !2604
  store %struct._IO_FILE* %689, %struct._IO_FILE** %17, align 8, !dbg !2605
  %690 = icmp ne %struct._IO_FILE* %689, null, !dbg !2605
  br i1 %690, label %701, label %691, !dbg !2606

; <label>:691:                                    ; preds = %687
  %692 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2607
  %693 = load i8*, i8** %6, align 8, !dbg !2609
  %694 = load i8*, i8** %15, align 8, !dbg !2610
  %695 = call i32* @__errno_location() #1, !dbg !2611
  %696 = load i32, i32* %695, align 4, !dbg !2612
  %697 = call i8* @strerror(i32 %696) #8, !dbg !2613
  %698 = call i32* @__errno_location() #1, !dbg !2615
  %699 = load i32, i32* %698, align 4, !dbg !2617
  %700 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %692, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i32 0, i32 0), i8* %693, i8* %694, i8* %697, i32 %699), !dbg !2618
  call void @exit(i32 1) #10, !dbg !2619
  unreachable, !dbg !2619

; <label>:701:                                    ; preds = %687
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !2620
  %703 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2622
  %704 = getelementptr inbounds %struct.opts, %struct.opts* %703, i32 0, i32 21, !dbg !2623
  %705 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %704, align 8, !dbg !2623
  %706 = call i32 @PEM_write_PrivateKey(%struct._IO_FILE* %702, %struct.evp_pkey_st* %705, %struct.evp_cipher_st* null, i8* null, i32 0, i32 (i8*, i32, i32, i8*)* null, i8* null), !dbg !2624
  %707 = icmp ne i32 %706, 0, !dbg !2624
  br i1 %707, label %718, label %708, !dbg !2625

; <label>:708:                                    ; preds = %701
  %709 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2626
  %710 = load i8*, i8** %6, align 8, !dbg !2628
  %711 = load i8*, i8** %15, align 8, !dbg !2629
  %712 = call i32* @__errno_location() #1, !dbg !2630
  %713 = load i32, i32* %712, align 4, !dbg !2631
  %714 = call i8* @strerror(i32 %713) #8, !dbg !2632
  %715 = call i32* @__errno_location() #1, !dbg !2634
  %716 = load i32, i32* %715, align 4, !dbg !2636
  %717 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %709, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* %710, i8* %711, i8* %714, i32 %716), !dbg !2637
  call void @exit(i32 1) #10, !dbg !2638
  unreachable, !dbg !2638

; <label>:718:                                    ; preds = %701
  %719 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !2639
  %720 = call i32 @fclose(%struct._IO_FILE* %719), !dbg !2640
  br label %721, !dbg !2641

; <label>:721:                                    ; preds = %718, %654
  %722 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2642
  %723 = bitcast %struct.opts* %722 to i16*, !dbg !2644
  %724 = load i16, i16* %723, align 8, !dbg !2644
  %725 = and i16 %724, 1, !dbg !2644
  %726 = zext i16 %725 to i32, !dbg !2644
  %727 = zext i32 %726 to i64, !dbg !2645
  %728 = icmp ne i64 %727, 0, !dbg !2646
  br i1 %728, label %729, label %781, !dbg !2647

; <label>:729:                                    ; preds = %721
  %730 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2648
  call void @opts_proto_dbg_dump(%struct.opts* %730), !dbg !2650
  %731 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)), !dbg !2651
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %18, metadata !2652, metadata !17), !dbg !2654
  %732 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2655
  %733 = getelementptr inbounds %struct.opts, %struct.opts* %732, i32 0, i32 27, !dbg !2656
  %734 = load %struct.proxyspec*, %struct.proxyspec** %733, align 8, !dbg !2656
  store %struct.proxyspec* %734, %struct.proxyspec** %18, align 8, !dbg !2654
  br label %735, !dbg !2657

; <label>:735:                                    ; preds = %751, %729
  %736 = load %struct.proxyspec*, %struct.proxyspec** %18, align 8, !dbg !2658
  %737 = icmp ne %struct.proxyspec* %736, null, !dbg !2661
  br i1 %737, label %738, label %755, !dbg !2661

; <label>:738:                                    ; preds = %735
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2662, metadata !17), !dbg !2664
  %739 = load %struct.proxyspec*, %struct.proxyspec** %18, align 8, !dbg !2665
  %740 = call noalias i8* @proxyspec_str(%struct.proxyspec* %739), !dbg !2666
  store i8* %740, i8** %19, align 8, !dbg !2664
  %741 = load i8*, i8** %19, align 8, !dbg !2667
  %742 = icmp ne i8* %741, null, !dbg !2667
  br i1 %742, label %747, label %743, !dbg !2669

; <label>:743:                                    ; preds = %738
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2670
  %745 = load i8*, i8** %6, align 8, !dbg !2672
  %746 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %745), !dbg !2673
  call void @exit(i32 1) #10, !dbg !2674
  unreachable, !dbg !2674

; <label>:747:                                    ; preds = %738
  %748 = load i8*, i8** %19, align 8, !dbg !2675
  %749 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %748), !dbg !2676
  %750 = load i8*, i8** %19, align 8, !dbg !2677
  call void @free(i8* %750) #8, !dbg !2678
  br label %751, !dbg !2679

; <label>:751:                                    ; preds = %747
  %752 = load %struct.proxyspec*, %struct.proxyspec** %18, align 8, !dbg !2680
  %753 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %752, i32 0, i32 9, !dbg !2682
  %754 = load %struct.proxyspec*, %struct.proxyspec** %753, align 8, !dbg !2682
  store %struct.proxyspec* %754, %struct.proxyspec** %18, align 8, !dbg !2683
  br label %735, !dbg !2684, !llvm.loop !2685

; <label>:755:                                    ; preds = %735
  %756 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2687
  %757 = getelementptr inbounds %struct.opts, %struct.opts* %756, i32 0, i32 1, !dbg !2689
  %758 = load i8*, i8** %757, align 8, !dbg !2689
  %759 = icmp ne i8* %758, null, !dbg !2687
  br i1 %759, label %760, label %765, !dbg !2690

; <label>:760:                                    ; preds = %755
  %761 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2691
  %762 = getelementptr inbounds %struct.opts, %struct.opts* %761, i32 0, i32 1, !dbg !2693
  %763 = load i8*, i8** %762, align 8, !dbg !2693
  %764 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* %763), !dbg !2694
  br label %765, !dbg !2695

; <label>:765:                                    ; preds = %760, %755
  %766 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2696
  %767 = getelementptr inbounds %struct.opts, %struct.opts* %766, i32 0, i32 19, !dbg !2698
  %768 = load %struct.x509_st*, %struct.x509_st** %767, align 8, !dbg !2698
  %769 = icmp ne %struct.x509_st* %768, null, !dbg !2696
  br i1 %769, label %770, label %778, !dbg !2699

; <label>:770:                                    ; preds = %765
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2700, metadata !17), !dbg !2702
  %771 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2703
  %772 = getelementptr inbounds %struct.opts, %struct.opts* %771, i32 0, i32 19, !dbg !2704
  %773 = load %struct.x509_st*, %struct.x509_st** %772, align 8, !dbg !2704
  %774 = call noalias i8* @ssl_x509_subject(%struct.x509_st* %773), !dbg !2705
  store i8* %774, i8** %20, align 8, !dbg !2702
  %775 = load i8*, i8** %20, align 8, !dbg !2706
  %776 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i8* %775), !dbg !2707
  %777 = load i8*, i8** %20, align 8, !dbg !2708
  call void @free(i8* %777) #8, !dbg !2709
  br label %780, !dbg !2710

; <label>:778:                                    ; preds = %765
  %779 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)), !dbg !2711
  br label %780

; <label>:780:                                    ; preds = %778, %770
  br label %781, !dbg !2713

; <label>:781:                                    ; preds = %780, %721
  %782 = call i32 @cachemgr_preinit(), !dbg !2714
  %783 = icmp eq i32 %782, -1, !dbg !2716
  br i1 %783, label %784, label %788, !dbg !2717

; <label>:784:                                    ; preds = %781
  %785 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2718
  %786 = load i8*, i8** %6, align 8, !dbg !2720
  %787 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %785, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0), i8* %786), !dbg !2721
  call void @exit(i32 1) #10, !dbg !2722
  unreachable, !dbg !2722

; <label>:788:                                    ; preds = %781
  %789 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2723
  %790 = call i32 @log_preinit(%struct.opts* %789), !dbg !2725
  %791 = icmp eq i32 %790, -1, !dbg !2726
  br i1 %791, label %792, label %796, !dbg !2727

; <label>:792:                                    ; preds = %788
  %793 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2728
  %794 = load i8*, i8** %6, align 8, !dbg !2730
  %795 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %793, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i8* %794), !dbg !2731
  call void @exit(i32 1) #10, !dbg !2732
  unreachable, !dbg !2732

; <label>:796:                                    ; preds = %788
  %797 = call i32 @nat_preinit(), !dbg !2733
  %798 = icmp eq i32 %797, -1, !dbg !2735
  br i1 %798, label %799, label %803, !dbg !2736

; <label>:799:                                    ; preds = %796
  %800 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2737
  %801 = load i8*, i8** %6, align 8, !dbg !2739
  %802 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %800, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0), i8* %801), !dbg !2740
  call void @exit(i32 1) #10, !dbg !2741
  unreachable, !dbg !2741

; <label>:803:                                    ; preds = %796
  %804 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2742
  %805 = getelementptr inbounds %struct.opts, %struct.opts* %804, i32 0, i32 4, !dbg !2744
  %806 = load i8*, i8** %805, align 8, !dbg !2744
  %807 = icmp ne i8* %806, null, !dbg !2742
  br i1 %807, label %808, label %824, !dbg !2745

; <label>:808:                                    ; preds = %803
  %809 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2746
  %810 = getelementptr inbounds %struct.opts, %struct.opts* %809, i32 0, i32 4, !dbg !2749
  %811 = load i8*, i8** %810, align 8, !dbg !2749
  %812 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2750
  %813 = bitcast %struct.opts* %812 to i8*, !dbg !2750
  %814 = call i32 @sys_dir_eachfile(i8* %811, i32 (i8*, i8*)* @main_loadtgcrt, i8* %813), !dbg !2751
  %815 = icmp eq i32 %814, -1, !dbg !2752
  br i1 %815, label %816, label %823, !dbg !2753

; <label>:816:                                    ; preds = %808
  %817 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2754
  %818 = load i8*, i8** %6, align 8, !dbg !2756
  %819 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2757
  %820 = getelementptr inbounds %struct.opts, %struct.opts* %819, i32 0, i32 4, !dbg !2758
  %821 = load i8*, i8** %820, align 8, !dbg !2758
  %822 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %817, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i8* %818, i8* %821), !dbg !2759
  call void @exit(i32 1) #10, !dbg !2760
  unreachable, !dbg !2760

; <label>:823:                                    ; preds = %808
  br label %824, !dbg !2761

; <label>:824:                                    ; preds = %823, %803
  %825 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2762
  %826 = bitcast %struct.opts* %825 to i16*, !dbg !2764
  %827 = load i16, i16* %826, align 8, !dbg !2764
  %828 = lshr i16 %827, 1, !dbg !2764
  %829 = and i16 %828, 1, !dbg !2764
  %830 = zext i16 %829 to i32, !dbg !2764
  %831 = icmp ne i32 %830, 0, !dbg !2762
  br i1 %831, label %832, label %853, !dbg !2765

; <label>:832:                                    ; preds = %824
  %833 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2766
  %834 = bitcast %struct.opts* %833 to i16*, !dbg !2769
  %835 = load i16, i16* %834, align 8, !dbg !2769
  %836 = and i16 %835, 1, !dbg !2769
  %837 = zext i16 %836 to i32, !dbg !2769
  %838 = zext i32 %837 to i64, !dbg !2770
  %839 = icmp ne i64 %838, 0, !dbg !2771
  br i1 %839, label %840, label %842, !dbg !2772

; <label>:840:                                    ; preds = %832
  %841 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.41, i32 0, i32 0)), !dbg !2773
  br label %842, !dbg !2775

; <label>:842:                                    ; preds = %840, %832
  %843 = call i32 @daemon(i32 0, i32 0) #8, !dbg !2776
  %844 = icmp eq i32 %843, -1, !dbg !2778
  br i1 %844, label %845, label %852, !dbg !2779

; <label>:845:                                    ; preds = %842
  %846 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2780
  %847 = load i8*, i8** %6, align 8, !dbg !2782
  %848 = call i32* @__errno_location() #1, !dbg !2783
  %849 = load i32, i32* %848, align 4, !dbg !2784
  %850 = call i8* @strerror(i32 %849) #8, !dbg !2785
  %851 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %846, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i8* %847, i8* %850), !dbg !2787
  call void @exit(i32 1) #10, !dbg !2788
  unreachable, !dbg !2788

; <label>:852:                                    ; preds = %842
  call void @log_err_mode(i32 1), !dbg !2789
  br label %853, !dbg !2790

; <label>:853:                                    ; preds = %852, %824
  %854 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2791
  %855 = getelementptr inbounds %struct.opts, %struct.opts* %854, i32 0, i32 8, !dbg !2793
  %856 = load i8*, i8** %855, align 8, !dbg !2793
  %857 = icmp ne i8* %856, null, !dbg !2791
  br i1 %857, label %858, label %872, !dbg !2794

; <label>:858:                                    ; preds = %853
  %859 = load i32, i32* %10, align 4, !dbg !2795
  %860 = call i32 @sys_pidf_write(i32 %859), !dbg !2797
  %861 = icmp eq i32 %860, -1, !dbg !2798
  br i1 %861, label %862, label %872, !dbg !2799

; <label>:862:                                    ; preds = %858
  %863 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2800
  %864 = getelementptr inbounds %struct.opts, %struct.opts* %863, i32 0, i32 8, !dbg !2802
  %865 = load i8*, i8** %864, align 8, !dbg !2802
  %866 = call i32* @__errno_location() #1, !dbg !2803
  %867 = load i32, i32* %866, align 4, !dbg !2804
  %868 = call i8* @strerror(i32 %867) #8, !dbg !2805
  %869 = call i32* @__errno_location() #1, !dbg !2807
  %870 = load i32, i32* %869, align 4, !dbg !2809
  %871 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0), i8* %865, i8* %868, i32 %870), !dbg !2810
  store i32 -1, i32* %3, align 4, !dbg !2811
  br label %998, !dbg !2811

; <label>:872:                                    ; preds = %858, %853
  call void @llvm.dbg.declare(metadata [6 x i32]* %21, metadata !2812, metadata !17), !dbg !2816
  %873 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2817
  %874 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i32 0, i32 0, !dbg !2819
  %875 = call i32 @privsep_fork(%struct.opts* %873, i32* %874, i64 6), !dbg !2820
  %876 = icmp ne i32 %875, 0, !dbg !2821
  br i1 %876, label %877, label %888, !dbg !2822

; <label>:877:                                    ; preds = %872
  %878 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2823
  %879 = getelementptr inbounds %struct.opts, %struct.opts* %878, i32 0, i32 8, !dbg !2826
  %880 = load i8*, i8** %879, align 8, !dbg !2826
  %881 = icmp ne i8* %880, null, !dbg !2823
  br i1 %881, label %882, label %887, !dbg !2827

; <label>:882:                                    ; preds = %877
  %883 = load i32, i32* %10, align 4, !dbg !2828
  %884 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2830
  %885 = getelementptr inbounds %struct.opts, %struct.opts* %884, i32 0, i32 8, !dbg !2831
  %886 = load i8*, i8** %885, align 8, !dbg !2831
  call void @sys_pidf_close(i32 %883, i8* %886), !dbg !2832
  br label %887, !dbg !2833

; <label>:887:                                    ; preds = %882, %877
  br label %995, !dbg !2834

; <label>:888:                                    ; preds = %872
  %889 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2835
  %890 = getelementptr inbounds %struct.opts, %struct.opts* %889, i32 0, i32 8, !dbg !2837
  %891 = load i8*, i8** %890, align 8, !dbg !2837
  %892 = icmp ne i8* %891, null, !dbg !2835
  br i1 %892, label %893, label %896, !dbg !2838

; <label>:893:                                    ; preds = %888
  %894 = load i32, i32* %10, align 4, !dbg !2839
  %895 = call i32 @close(i32 %894), !dbg !2840
  br label %896, !dbg !2840

; <label>:896:                                    ; preds = %893, %888
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %22, metadata !2841, metadata !17), !dbg !2846
  %897 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2847
  %898 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 0, !dbg !2848
  %899 = load i32, i32* %898, align 16, !dbg !2848
  %900 = call noalias %struct.proxy_ctx* @proxy_new(%struct.opts* %897, i32 %899), !dbg !2849
  store %struct.proxy_ctx* %900, %struct.proxy_ctx** %22, align 8, !dbg !2846
  %901 = load %struct.proxy_ctx*, %struct.proxy_ctx** %22, align 8, !dbg !2850
  %902 = icmp ne %struct.proxy_ctx* %901, null, !dbg !2850
  br i1 %902, label %905, label %903, !dbg !2852

; <label>:903:                                    ; preds = %896
  %904 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0)), !dbg !2853
  call void @exit(i32 1) #10, !dbg !2855
  unreachable, !dbg !2855

; <label>:905:                                    ; preds = %896
  %906 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2856
  %907 = getelementptr inbounds %struct.opts, %struct.opts* %906, i32 0, i32 5, !dbg !2858
  %908 = load i8*, i8** %907, align 8, !dbg !2858
  %909 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2859
  %910 = getelementptr inbounds %struct.opts, %struct.opts* %909, i32 0, i32 6, !dbg !2860
  %911 = load i8*, i8** %910, align 8, !dbg !2860
  %912 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2861
  %913 = getelementptr inbounds %struct.opts, %struct.opts* %912, i32 0, i32 7, !dbg !2862
  %914 = load i8*, i8** %913, align 8, !dbg !2862
  %915 = call i32 @sys_privdrop(i8* %908, i8* %911, i8* %914), !dbg !2863
  %916 = icmp eq i32 %915, -1, !dbg !2864
  br i1 %916, label %917, label %924, !dbg !2865

; <label>:917:                                    ; preds = %905
  %918 = call i32* @__errno_location() #1, !dbg !2866
  %919 = load i32, i32* %918, align 4, !dbg !2868
  %920 = call i8* @strerror(i32 %919) #8, !dbg !2869
  %921 = call i32* @__errno_location() #1, !dbg !2871
  %922 = load i32, i32* %921, align 4, !dbg !2873
  %923 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8* %920, i32 %922), !dbg !2874
  call void @exit(i32 1) #10, !dbg !2875
  unreachable, !dbg !2875

; <label>:924:                                    ; preds = %905
  %925 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2876
  %926 = getelementptr inbounds %struct.opts, %struct.opts* %925, i32 0, i32 5, !dbg !2877
  %927 = load i8*, i8** %926, align 8, !dbg !2877
  %928 = icmp ne i8* %927, null, !dbg !2876
  br i1 %928, label %929, label %933, !dbg !2876

; <label>:929:                                    ; preds = %924
  %930 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2878
  %931 = getelementptr inbounds %struct.opts, %struct.opts* %930, i32 0, i32 5, !dbg !2879
  %932 = load i8*, i8** %931, align 8, !dbg !2879
  br label %934, !dbg !2880

; <label>:933:                                    ; preds = %924
  br label %934, !dbg !2881

; <label>:934:                                    ; preds = %933, %929
  %935 = phi i8* [ %932, %929 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %933 ], !dbg !2882
  %936 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2883
  %937 = getelementptr inbounds %struct.opts, %struct.opts* %936, i32 0, i32 6, !dbg !2884
  %938 = load i8*, i8** %937, align 8, !dbg !2884
  %939 = icmp ne i8* %938, null, !dbg !2883
  br i1 %939, label %940, label %944, !dbg !2883

; <label>:940:                                    ; preds = %934
  %941 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2885
  %942 = getelementptr inbounds %struct.opts, %struct.opts* %941, i32 0, i32 6, !dbg !2886
  %943 = load i8*, i8** %942, align 8, !dbg !2886
  br label %945, !dbg !2887

; <label>:944:                                    ; preds = %934
  br label %945, !dbg !2888

; <label>:945:                                    ; preds = %944, %940
  %946 = phi i8* [ %943, %940 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %944 ], !dbg !2889
  %947 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2890
  %948 = getelementptr inbounds %struct.opts, %struct.opts* %947, i32 0, i32 7, !dbg !2891
  %949 = load i8*, i8** %948, align 8, !dbg !2891
  %950 = icmp ne i8* %949, null, !dbg !2890
  br i1 %950, label %951, label %955, !dbg !2890

; <label>:951:                                    ; preds = %945
  %952 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2892
  %953 = getelementptr inbounds %struct.opts, %struct.opts* %952, i32 0, i32 7, !dbg !2893
  %954 = load i8*, i8** %953, align 8, !dbg !2893
  br label %956, !dbg !2894

; <label>:955:                                    ; preds = %945
  br label %956, !dbg !2895

; <label>:956:                                    ; preds = %955, %951
  %957 = phi i8* [ %954, %951 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), %955 ], !dbg !2896
  %958 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0), i8* %935, i8* %946, i8* %957), !dbg !2897
  %959 = call i32 @ssl_reinit(), !dbg !2898
  %960 = icmp eq i32 %959, -1, !dbg !2900
  br i1 %960, label %961, label %965, !dbg !2901

; <label>:961:                                    ; preds = %956
  %962 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2902
  %963 = load i8*, i8** %6, align 8, !dbg !2904
  %964 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %962, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i8* %963), !dbg !2905
  br label %993, !dbg !2906

; <label>:965:                                    ; preds = %956
  %966 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2907
  %967 = load %struct.proxy_ctx*, %struct.proxy_ctx** %22, align 8, !dbg !2909
  %968 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 1, !dbg !2910
  %969 = call i32 @log_init(%struct.opts* %966, %struct.proxy_ctx* %967, i32* %968), !dbg !2911
  %970 = icmp eq i32 %969, -1, !dbg !2912
  br i1 %970, label %971, label %978, !dbg !2913

; <label>:971:                                    ; preds = %965
  %972 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2914
  %973 = load i8*, i8** %6, align 8, !dbg !2916
  %974 = call i32* @__errno_location() #1, !dbg !2917
  %975 = load i32, i32* %974, align 4, !dbg !2918
  %976 = call i8* @strerror(i32 %975) #8, !dbg !2919
  %977 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %972, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* %973, i8* %976), !dbg !2921
  br label %994, !dbg !2922

; <label>:978:                                    ; preds = %965
  %979 = call i32 @cachemgr_init(), !dbg !2923
  %980 = icmp eq i32 %979, -1, !dbg !2925
  br i1 %980, label %981, label %983, !dbg !2926

; <label>:981:                                    ; preds = %978
  %982 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0)), !dbg !2927
  br label %992, !dbg !2929

; <label>:983:                                    ; preds = %978
  %984 = call i32 @nat_init(), !dbg !2930
  %985 = icmp eq i32 %984, -1, !dbg !2932
  br i1 %985, label %986, label %988, !dbg !2933

; <label>:986:                                    ; preds = %983
  %987 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i32 0, i32 0)), !dbg !2934
  br label %991, !dbg !2936

; <label>:988:                                    ; preds = %983
  store i32 0, i32* %11, align 4, !dbg !2937
  %989 = load %struct.proxy_ctx*, %struct.proxy_ctx** %22, align 8, !dbg !2938
  call void @proxy_run(%struct.proxy_ctx* %989), !dbg !2939
  %990 = load %struct.proxy_ctx*, %struct.proxy_ctx** %22, align 8, !dbg !2940
  call void @proxy_free(%struct.proxy_ctx* %990), !dbg !2941
  call void @nat_fini(), !dbg !2942
  br label %991, !dbg !2942

; <label>:991:                                    ; preds = %988, %986
  call void @cachemgr_fini(), !dbg !2943
  br label %992, !dbg !2943

; <label>:992:                                    ; preds = %991, %981
  call void @log_fini(), !dbg !2944
  br label %993, !dbg !2944

; <label>:993:                                    ; preds = %992, %961
  br label %994, !dbg !2945

; <label>:994:                                    ; preds = %993, %971
  br label %995, !dbg !2946

; <label>:995:                                    ; preds = %994, %887
  %996 = load %struct.opts*, %struct.opts** %8, align 8, !dbg !2947
  call void @opts_free(%struct.opts* %996), !dbg !2948
  call void @ssl_fini(), !dbg !2949
  %997 = load i32, i32* %11, align 4, !dbg !2950
  store i32 %997, i32* %3, align 4, !dbg !2951
  br label %998, !dbg !2951

; <label>:998:                                    ; preds = %995, %862
  %999 = load i32, i32* %3, align 4, !dbg !2952
  ret i32 %999, !dbg !2952
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias %struct.opts* @opts_new() #2

declare i8* @nat_getdefaultname() #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: noreturn
declare void @oom_die(i8*) #4

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @load_conffile(%struct.opts*, i8*, i8**) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @opts_set_option(%struct.opts*, i8*, i8*, i8**) #2

declare void @opts_set_cacrt(%struct.opts*, i8*, i8*) #2

declare void @opts_set_cakey(%struct.opts*, i8*, i8*) #2

declare void @opts_set_chain(%struct.opts*, i8*, i8*) #2

declare void @opts_set_key(%struct.opts*, i8*, i8*) #2

declare void @opts_set_tgcrtdir(%struct.opts*, i8*, i8*) #2

declare void @opts_set_crl(%struct.opts*, i8*) #2

declare void @opts_set_deny_ocsp(%struct.opts*) #2

declare void @opts_set_passthrough(%struct.opts*) #2

declare void @opts_set_clientcrt(%struct.opts*, i8*, i8*) #2

declare void @opts_set_clientkey(%struct.opts*, i8*, i8*) #2

declare void @opts_set_dh(%struct.opts*, i8*, i8*) #2

declare void @opts_set_ecdhcurve(%struct.opts*, i8*, i8*) #2

declare void @opts_unset_sslcomp(%struct.opts*) #2

declare void @opts_set_ciphers(%struct.opts*, i8*, i8*) #2

declare void @opts_force_proto(%struct.opts*, i8*, i8*) #2

declare void @opts_disable_proto(%struct.opts*, i8*, i8*) #2

declare void @opts_set_openssl_engine(%struct.opts*, i8*, i8*) #2

declare void @nat_list_engines() #2

declare void @opts_set_user(%struct.opts*, i8*, i8*) #2

declare void @opts_set_group(%struct.opts*, i8*, i8*) #2

declare void @opts_set_pidfile(%struct.opts*, i8*, i8*) #2

declare void @opts_set_jaildir(%struct.opts*, i8*, i8*) #2

declare void @opts_set_connectlog(%struct.opts*, i8*, i8*) #2

declare void @opts_set_contentlog(%struct.opts*, i8*, i8*) #2

declare void @opts_set_contentlogdir(%struct.opts*, i8*, i8*) #2

declare void @opts_set_contentlogpathspec(%struct.opts*, i8*, i8*) #2

declare void @opts_set_pcaplog(%struct.opts*, i8*, i8*) #2

declare void @opts_set_pcaplogdir(%struct.opts*, i8*, i8*) #2

declare void @opts_set_pcaplogpathspec(%struct.opts*, i8*, i8*) #2

declare void @opts_set_mirrorif(%struct.opts*, i8*, i8*) #2

declare void @opts_set_mirrortarget(%struct.opts*, i8*, i8*) #2

declare void @opts_set_certgendir_writeall(%struct.opts*, i8*, i8*) #2

declare void @opts_set_certgendir_writegencerts(%struct.opts*, i8*, i8*) #2

declare void @opts_set_masterkeylog(%struct.opts*, i8*, i8*) #2

declare void @opts_set_daemon(%struct.opts*) #2

declare void @opts_set_debug(%struct.opts*) #2

; Function Attrs: nounwind uwtable
define internal void @main_version() #0 !dbg !2953 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2954
  %4 = load i8*, i8** @build_version, align 8, !dbg !2955
  %5 = load i8*, i8** @build_date, align 8, !dbg !2956
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* %4, i8* %5), !dbg !2957
  %7 = load i8*, i8** @build_version, align 8, !dbg !2958
  %8 = call i64 @strlen(i8* %7) #11, !dbg !2960
  %9 = icmp ult i64 %8, 5, !dbg !2961
  br i1 %9, label %10, label %21, !dbg !2962

; <label>:10:                                     ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2963
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.54, i32 0, i32 0)), !dbg !2965
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2966
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.55, i32 0, i32 0)), !dbg !2967
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2968
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.56, i32 0, i32 0)), !dbg !2969
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2970
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.57, i32 0, i32 0)), !dbg !2971
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2972
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.54, i32 0, i32 0)), !dbg !2973
  br label %21, !dbg !2974

; <label>:21:                                     ; preds = %10, %0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2975
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.58, i32 0, i32 0)), !dbg !2976
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2977
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0)), !dbg !2978
  %26 = load i8*, i8** @build_info, align 8, !dbg !2979
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !2979
  %28 = load i8, i8* %27, align 1, !dbg !2979
  %29 = icmp ne i8 %28, 0, !dbg !2979
  br i1 %29, label %30, label %34, !dbg !2981

; <label>:30:                                     ; preds = %21
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2982
  %32 = load i8*, i8** @build_info, align 8, !dbg !2984
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* %32), !dbg !2985
  br label %34, !dbg !2986

; <label>:34:                                     ; preds = %30, %21
  %35 = load i8*, i8** @build_features, align 8, !dbg !2987
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !2987
  %37 = load i8, i8* %36, align 1, !dbg !2987
  %38 = icmp ne i8 %37, 0, !dbg !2987
  br i1 %38, label %39, label %43, !dbg !2989

; <label>:39:                                     ; preds = %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2990
  %41 = load i8*, i8** @build_features, align 8, !dbg !2992
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i8* %41), !dbg !2993
  br label %43, !dbg !2994

; <label>:43:                                     ; preds = %39, %34
  call void @nat_version(), !dbg !2995
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2996
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0)), !dbg !2997
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2998
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0)), !dbg !2999
  call void @ssl_openssl_version(), !dbg !3000
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3001
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)), !dbg !3002
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3003
  %51 = call i8* @event_get_version(), !dbg !3004
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i32 0, i32 0), i8* %51), !dbg !3005
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3007
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)), !dbg !3008
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3009, metadata !17), !dbg !3010
  %55 = call i8* @libnet_version(), !dbg !3011
  store i8* %55, i8** %1, align 8, !dbg !3010
  %56 = load i8*, i8** %1, align 8, !dbg !3012
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i64 15) #11, !dbg !3014
  %58 = icmp ne i32 %57, 0, !dbg !3014
  br i1 %58, label %62, label %59, !dbg !3015

; <label>:59:                                     ; preds = %43
  %60 = load i8*, i8** %1, align 8, !dbg !3016
  %61 = getelementptr inbounds i8, i8* %60, i64 15, !dbg !3016
  store i8* %61, i8** %1, align 8, !dbg !3016
  br label %62, !dbg !3017

; <label>:62:                                     ; preds = %59, %43
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3018
  %64 = load i8*, i8** %1, align 8, !dbg !3019
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), i8* %64), !dbg !3020
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3021
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0)), !dbg !3022
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3023, metadata !17), !dbg !3024
  %68 = call i8* @pcap_lib_version(), !dbg !3025
  store i8* %68, i8** %2, align 8, !dbg !3024
  %69 = load i8*, i8** %2, align 8, !dbg !3026
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i64 16) #11, !dbg !3028
  %71 = icmp ne i32 %70, 0, !dbg !3028
  br i1 %71, label %75, label %72, !dbg !3029

; <label>:72:                                     ; preds = %62
  %73 = load i8*, i8** %2, align 8, !dbg !3030
  %74 = getelementptr inbounds i8, i8* %73, i64 16, !dbg !3030
  store i8* %74, i8** %2, align 8, !dbg !3030
  br label %75, !dbg !3031

; <label>:75:                                     ; preds = %72, %62
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3032
  %77 = load i8*, i8** %2, align 8, !dbg !3033
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i32 0, i32 0), i8* %77), !dbg !3034
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3035
  %80 = call i32 @sys_get_cpu_cores(), !dbg !3036
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i32 %80), !dbg !3037
  ret void, !dbg !3038
}

; Function Attrs: nounwind uwtable
define internal void @main_usage() #0 !dbg !3039 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3040, metadata !17), !dbg !3041
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3042, metadata !17), !dbg !3043
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3044, metadata !17), !dbg !3045
  store i8* getelementptr inbounds ([3396 x i8], [3396 x i8]* @.str.75, i32 0, i32 0), i8** %3, align 8, !dbg !3045
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3046, metadata !17), !dbg !3047
  store i8* getelementptr inbounds ([602 x i8], [602 x i8]* @.str.76, i32 0, i32 0), i8** %4, align 8, !dbg !3047
  %5 = call i8* @nat_getdefaultname(), !dbg !3048
  store i8* %5, i8** %1, align 8, !dbg !3050
  %6 = icmp ne i8* %5, null, !dbg !3050
  br i1 %6, label %8, label %7, !dbg !3051

; <label>:7:                                      ; preds = %0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8** %1, align 8, !dbg !3052
  store i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.78, i32 0, i32 0), i8** %2, align 8, !dbg !3054
  br label %9, !dbg !3055

; <label>:8:                                      ; preds = %0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i8** %2, align 8, !dbg !3056
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3058
  %11 = load i8*, i8** %3, align 8, !dbg !3059
  %12 = load i8*, i8** @build_pkgname, align 8, !dbg !3060
  %13 = load i8*, i8** %1, align 8, !dbg !3061
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* %11, i8* %12, i8* %13), !dbg !3062
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3063
  %16 = load i8*, i8** %4, align 8, !dbg !3064
  %17 = load i8*, i8** @build_pkgname, align 8, !dbg !3065
  %18 = load i8*, i8** %2, align 8, !dbg !3066
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* %16, i8* %17, i8* %18), !dbg !3067
  ret void, !dbg !3068
}

declare void @proxyspec_parse(i32*, i8***, i8*, %struct.proxyspec**) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @nat_ipv6ready(i8*) #2

declare i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)* @nat_getlookupcb(i8*) #2

declare i32 (i32)* @nat_getsocketcb(i8*) #2

declare i32 @opts_has_ssl_spec(%struct.opts*) #2

declare i32 @ssl_init() #2

declare i32 @ssl_engine(i8*) #2

declare i32 @X509_check_private_key(%struct.x509_st*, %struct.evp_pkey_st*) #2

declare void @ERR_print_errors_fp(%struct._IO_FILE*) #2

declare i32 @sys_pidf_open(i8*) #2

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @getuid() #3

declare i32 @sys_isuser(i8*) #2

declare i32 @sys_isgeteuid(i8*) #2

declare i32 @log_dbg_printf(i8*, ...) #2

declare noalias %struct.evp_pkey_st* @ssl_key_genrsa(i32) #2

declare noalias i8* @ssl_key_identifier(%struct.evp_pkey_st*, i32) #2

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @PEM_write_PrivateKey(%struct._IO_FILE*, %struct.evp_pkey_st*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @opts_proto_dbg_dump(%struct.opts*) #2

declare noalias i8* @proxyspec_str(%struct.proxyspec*) #2

declare noalias i8* @ssl_x509_subject(%struct.x509_st*) #2

declare i32 @cachemgr_preinit() #2

declare i32 @log_preinit(%struct.opts*) #2

declare i32 @nat_preinit() #2

declare i32 @sys_dir_eachfile(i8*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @main_loadtgcrt(i8*, i8*) #0 !dbg !3069 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opts*, align 8
  %7 = alloca %struct.cert*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3072, metadata !17), !dbg !3073
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3074, metadata !17), !dbg !3075
  call void @llvm.dbg.declare(metadata %struct.opts** %6, metadata !3076, metadata !17), !dbg !3077
  %11 = load i8*, i8** %5, align 8, !dbg !3078
  %12 = bitcast i8* %11 to %struct.opts*, !dbg !3078
  store %struct.opts* %12, %struct.opts** %6, align 8, !dbg !3077
  call void @llvm.dbg.declare(metadata %struct.cert** %7, metadata !3079, metadata !17), !dbg !3117
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3118, metadata !17), !dbg !3119
  %13 = load i8*, i8** %4, align 8, !dbg !3120
  %14 = call noalias %struct.cert* @cert_new_load(i8* %13), !dbg !3121
  store %struct.cert* %14, %struct.cert** %7, align 8, !dbg !3122
  %15 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3123
  %16 = icmp ne %struct.cert* %15, null, !dbg !3123
  br i1 %16, label %20, label %17, !dbg !3125

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8, !dbg !3126
  %19 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i32 0, i32 0), i8* %18), !dbg !3128
  store i32 -1, i32* %3, align 4, !dbg !3129
  br label %99, !dbg !3129

; <label>:20:                                     ; preds = %2
  %21 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3130
  %22 = getelementptr inbounds %struct.cert, %struct.cert* %21, i32 0, i32 1, !dbg !3132
  %23 = load %struct.x509_st*, %struct.x509_st** %22, align 8, !dbg !3132
  %24 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3133
  %25 = getelementptr inbounds %struct.cert, %struct.cert* %24, i32 0, i32 0, !dbg !3134
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %25, align 8, !dbg !3134
  %27 = call i32 @X509_check_private_key(%struct.x509_st* %23, %struct.evp_pkey_st* %26), !dbg !3135
  %28 = icmp ne i32 %27, 1, !dbg !3136
  br i1 %28, label %29, label %33, !dbg !3137

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %4, align 8, !dbg !3138
  %31 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.81, i32 0, i32 0), i8* %30), !dbg !3140
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3141
  call void @ERR_print_errors_fp(%struct._IO_FILE* %32), !dbg !3142
  store i32 -1, i32* %3, align 4, !dbg !3143
  br label %99, !dbg !3143

; <label>:33:                                     ; preds = %20
  %34 = load %struct.opts*, %struct.opts** %6, align 8, !dbg !3144
  %35 = bitcast %struct.opts* %34 to i16*, !dbg !3146
  %36 = load i16, i16* %35, align 8, !dbg !3146
  %37 = and i16 %36, 1, !dbg !3146
  %38 = zext i16 %37 to i32, !dbg !3146
  %39 = zext i32 %38 to i64, !dbg !3147
  %40 = icmp ne i64 %39, 0, !dbg !3148
  br i1 %40, label %41, label %44, !dbg !3149

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** %4, align 8, !dbg !3150
  %43 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* %42), !dbg !3152
  br label %44, !dbg !3153

; <label>:44:                                     ; preds = %41, %33
  %45 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3154
  %46 = getelementptr inbounds %struct.cert, %struct.cert* %45, i32 0, i32 1, !dbg !3155
  %47 = load %struct.x509_st*, %struct.x509_st** %46, align 8, !dbg !3155
  %48 = call noalias i8** @ssl_x509_names(%struct.x509_st* %47), !dbg !3156
  store i8** %48, i8*** %8, align 8, !dbg !3157
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !3158, metadata !17), !dbg !3160
  %49 = load i8**, i8*** %8, align 8, !dbg !3161
  store i8** %49, i8*** %9, align 8, !dbg !3160
  br label %50, !dbg !3162

; <label>:50:                                     ; preds = %82, %44
  %51 = load i8**, i8*** %9, align 8, !dbg !3163
  %52 = load i8*, i8** %51, align 8, !dbg !3166
  %53 = icmp ne i8* %52, null, !dbg !3167
  br i1 %53, label %54, label %85, !dbg !3167

; <label>:54:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3168, metadata !17), !dbg !3170
  %55 = load i8**, i8*** %9, align 8, !dbg !3171
  %56 = load i8*, i8** %55, align 8, !dbg !3173
  %57 = call i8* @strchr(i8* %56, i32 33) #11, !dbg !3174
  store i8* %57, i8** %10, align 8, !dbg !3175
  %58 = icmp ne i8* %57, null, !dbg !3175
  br i1 %58, label %59, label %61, !dbg !3176

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %10, align 8, !dbg !3177
  store i8 0, i8* %60, align 1, !dbg !3179
  br label %61, !dbg !3180

; <label>:61:                                     ; preds = %59, %54
  %62 = load %struct.opts*, %struct.opts** %6, align 8, !dbg !3181
  %63 = bitcast %struct.opts* %62 to i16*, !dbg !3183
  %64 = load i16, i16* %63, align 8, !dbg !3183
  %65 = and i16 %64, 1, !dbg !3183
  %66 = zext i16 %65 to i32, !dbg !3183
  %67 = zext i32 %66 to i64, !dbg !3184
  %68 = icmp ne i64 %67, 0, !dbg !3185
  br i1 %68, label %69, label %73, !dbg !3186

; <label>:69:                                     ; preds = %61
  %70 = load i8**, i8*** %9, align 8, !dbg !3187
  %71 = load i8*, i8** %70, align 8, !dbg !3189
  %72 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* %71), !dbg !3190
  br label %73, !dbg !3191

; <label>:73:                                     ; preds = %69, %61
  %74 = load %struct.cache*, %struct.cache** @cachemgr_tgcrt, align 8, !dbg !3192
  %75 = load i8**, i8*** %9, align 8, !dbg !3193
  %76 = load i8*, i8** %75, align 8, !dbg !3194
  %77 = call i8* @cachetgcrt_mkkey(i8* %76), !dbg !3195
  %78 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3196
  %79 = call i8* @cachetgcrt_mkval(%struct.cert* %78), !dbg !3197
  call void @cache_set(%struct.cache* %74, i8* %77, i8* %79), !dbg !3199
  %80 = load i8**, i8*** %9, align 8, !dbg !3201
  %81 = load i8*, i8** %80, align 8, !dbg !3202
  call void @free(i8* %81) #8, !dbg !3203
  br label %82, !dbg !3204

; <label>:82:                                     ; preds = %73
  %83 = load i8**, i8*** %9, align 8, !dbg !3205
  %84 = getelementptr inbounds i8*, i8** %83, i32 1, !dbg !3205
  store i8** %84, i8*** %9, align 8, !dbg !3205
  br label %50, !dbg !3207, !llvm.loop !3208

; <label>:85:                                     ; preds = %50
  %86 = load %struct.opts*, %struct.opts** %6, align 8, !dbg !3210
  %87 = bitcast %struct.opts* %86 to i16*, !dbg !3212
  %88 = load i16, i16* %87, align 8, !dbg !3212
  %89 = and i16 %88, 1, !dbg !3212
  %90 = zext i16 %89 to i32, !dbg !3212
  %91 = zext i32 %90 to i64, !dbg !3213
  %92 = icmp ne i64 %91, 0, !dbg !3214
  br i1 %92, label %93, label %95, !dbg !3215

; <label>:93:                                     ; preds = %85
  %94 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0)), !dbg !3216
  br label %95, !dbg !3218

; <label>:95:                                     ; preds = %93, %85
  %96 = load i8**, i8*** %8, align 8, !dbg !3219
  %97 = bitcast i8** %96 to i8*, !dbg !3219
  call void @free(i8* %97) #8, !dbg !3220
  %98 = load %struct.cert*, %struct.cert** %7, align 8, !dbg !3221
  call void @cert_free(%struct.cert* %98), !dbg !3222
  store i32 0, i32* %3, align 4, !dbg !3223
  br label %99, !dbg !3223

; <label>:99:                                     ; preds = %95, %29, %17
  %100 = load i32, i32* %3, align 4, !dbg !3224
  ret i32 %100, !dbg !3224
}

; Function Attrs: nounwind
declare i32 @daemon(i32, i32) #3

declare void @log_err_mode(i32) #2

declare i32 @sys_pidf_write(i32) #2

declare i32 @log_err_printf(i8*, ...) #2

declare i32 @privsep_fork(%struct.opts*, i32*, i64) #2

declare void @sys_pidf_close(i32, i8*) #2

declare i32 @close(i32) #2

declare noalias %struct.proxy_ctx* @proxy_new(%struct.opts*, i32) #2

declare i32 @sys_privdrop(i8*, i8*, i8*) #2

declare i32 @ssl_reinit() #2

declare i32 @log_init(%struct.opts*, %struct.proxy_ctx*, i32*) #2

declare i32 @cachemgr_init() #2

declare i32 @nat_init() #2

declare void @proxy_run(%struct.proxy_ctx*) #2

declare void @proxy_free(%struct.proxy_ctx*) #2

declare void @nat_fini() #2

declare void @cachemgr_fini() #2

declare void @log_fini() #2

declare void @opts_free(%struct.opts*) #2

declare void @ssl_fini() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare void @nat_version() #2

declare void @ssl_openssl_version() #2

declare i8* @event_get_version() #2

declare i8* @libnet_version() #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

declare i8* @pcap_lib_version() #2

declare i32 @sys_get_cpu_cores() #2

declare noalias %struct.cert* @cert_new_load(i8*) #2

declare noalias i8** @ssl_x509_names(%struct.x509_st*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare void @cache_set(%struct.cache*, i8*, i8*) #2

declare i8* @cachetgcrt_mkkey(i8*) #2

declare i8* @cachetgcrt_mkval(%struct.cert*) #2

declare void @cert_free(%struct.cert*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line16-main.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 326, type: !10, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "main.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !8, file: !9, line: 326, type: !12)
!17 = !DIExpression()
!18 = !DILocation(line: 326, column: 10, scope: !8)
!19 = !DILocalVariable(name: "argv", arg: 2, scope: !8, file: !9, line: 326, type: !13)
!20 = !DILocation(line: 326, column: 22, scope: !8)
!21 = !DILocalVariable(name: "argv0", scope: !8, file: !9, line: 328, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!24 = !DILocation(line: 328, column: 14, scope: !8)
!25 = !DILocalVariable(name: "ch", scope: !8, file: !9, line: 329, type: !12)
!26 = !DILocation(line: 329, column: 6, scope: !8)
!27 = !DILocalVariable(name: "opts", scope: !8, file: !9, line: 330, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "opts_t", file: !30, line: 126, baseType: !31)
!30 = !DIFile(filename: "opts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opts", file: !30, line: 56, size: 1920, align: 64, elements: !32)
!32 = !{!33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1824, !1825, !1826}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !31, file: !30, line: 57, baseType: !34, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!34 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !31, file: !30, line: 58, baseType: !34, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sslcomp", scope: !31, file: !30, line: 59, baseType: !34, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "no_ssl3", scope: !31, file: !30, line: 64, baseType: !34, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls10", scope: !31, file: !30, line: 67, baseType: !34, size: 1, align: 32, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls11", scope: !31, file: !30, line: 70, baseType: !34, size: 1, align: 32, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls12", scope: !31, file: !30, line: 73, baseType: !34, size: 1, align: 32, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "passthrough", scope: !31, file: !30, line: 75, baseType: !34, size: 1, align: 32, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "deny_ocsp", scope: !31, file: !30, line: 76, baseType: !34, size: 1, align: 32, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isdir", scope: !31, file: !30, line: 77, baseType: !34, size: 1, align: 32, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isspec", scope: !31, file: !30, line: 78, baseType: !34, size: 1, align: 32, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isdir", scope: !31, file: !30, line: 79, baseType: !34, size: 1, align: 32, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isspec", scope: !31, file: !30, line: 80, baseType: !34, size: 1, align: 32, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "certgen_writeall", scope: !31, file: !30, line: 84, baseType: !34, size: 1, align: 32, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "openssl_engine", scope: !31, file: !30, line: 86, baseType: !14, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !31, file: !30, line: 88, baseType: !14, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "certgendir", scope: !31, file: !30, line: 89, baseType: !14, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tgcrtdir", scope: !31, file: !30, line: 90, baseType: !14, size: 64, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "dropuser", scope: !31, file: !30, line: 91, baseType: !14, size: 64, align: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "dropgroup", scope: !31, file: !30, line: 92, baseType: !14, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "jaildir", scope: !31, file: !30, line: 93, baseType: !14, size: 64, align: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !31, file: !30, line: 94, baseType: !14, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "conffile", scope: !31, file: !30, line: 95, baseType: !14, size: 64, align: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "connectlog", scope: !31, file: !30, line: 96, baseType: !14, size: 64, align: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog", scope: !31, file: !30, line: 97, baseType: !14, size: 64, align: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_basedir", scope: !31, file: !30, line: 98, baseType: !14, size: 64, align: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "masterkeylog", scope: !31, file: !30, line: 99, baseType: !14, size: 64, align: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog", scope: !31, file: !30, line: 100, baseType: !14, size: 64, align: 64, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_basedir", scope: !31, file: !30, line: 101, baseType: !14, size: 64, align: 64, offset: 960)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "mirrorif", scope: !31, file: !30, line: 103, baseType: !14, size: 64, align: 64, offset: 1024)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mirrortarget", scope: !31, file: !30, line: 104, baseType: !14, size: 64, align: 64, offset: 1088)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sslmethod", scope: !31, file: !30, line: 106, baseType: !66, size: 64, align: 64, offset: 1152)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !72, line: 374, baseType: !73)
!72 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !72, line: 438, size: 1856, align: 64, elements: !74)
!74 = !{!75, !76, !1684, !1688, !1689, !1690, !1691, !1695, !1696, !1700, !1701, !1702, !1703, !1707, !1711, !1715, !1716, !1720, !1724, !1728, !1732, !1736, !1740, !1744, !1750, !1751, !1754, !1755, !1762}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !73, file: !72, line: 439, baseType: !12, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !73, file: !72, line: 440, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!12, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !82, line: 178, baseType: !83)
!82 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !72, line: 1422, size: 6592, align: 64, elements: !84)
!84 = !{!85, !86, !87, !88, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !197, !198, !199, !200, !203, !204, !267, !747, !1182, !1183, !1187, !1188, !1189, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1221, !1222, !1223, !1224, !1231, !1232, !1401, !1405, !1406, !1407, !1411, !1415, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1624, !1625, !1626, !1627, !1628, !1629, !1632, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1652, !1657, !1658, !1665, !1666, !1667, !1668, !1669, !1670, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !83, file: !72, line: 1427, baseType: !12, size: 32, align: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !72, line: 1429, baseType: !12, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !83, file: !72, line: 1431, baseType: !69, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !83, file: !72, line: 1438, baseType: !89, size: 64, align: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !91, line: 238, baseType: !92)
!91 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !91, line: 325, size: 896, align: 64, elements: !93)
!93 = !{!94, !133, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !149, !150}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !92, file: !91, line: 326, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !91, line: 323, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !91, line: 312, size: 640, align: 64, elements: !98)
!98 = !{!99, !100, !101, !105, !109, !113, !114, !119, !123, !124}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !91, line: 313, baseType: !12, size: 32, align: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !91, line: 314, baseType: !22, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !97, file: !91, line: 315, baseType: !102, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!12, !89, !22, !12}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !97, file: !91, line: 316, baseType: !106, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!12, !89, !14, !12}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !97, file: !91, line: 317, baseType: !110, size: 64, align: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!12, !89, !22}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !97, file: !91, line: 318, baseType: !106, size: 64, align: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !97, file: !91, line: 319, baseType: !115, size: 64, align: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !89, !12, !118, !4}
!118 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !97, file: !91, line: 320, baseType: !120, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!12, !89}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !97, file: !91, line: 321, baseType: !120, size: 64, align: 64, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !97, file: !91, line: 322, baseType: !125, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!118, !89, !12, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !91, line: 309, baseType: !130)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !12, !22, !12, !118, !118}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !92, file: !91, line: 328, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!118, !132, !12, !22, !12, !118, !118}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !92, file: !91, line: 329, baseType: !14, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !92, file: !91, line: 330, baseType: !12, size: 32, align: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !92, file: !91, line: 331, baseType: !12, size: 32, align: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !91, line: 332, baseType: !12, size: 32, align: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !92, file: !91, line: 333, baseType: !12, size: 32, align: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !92, file: !91, line: 334, baseType: !12, size: 32, align: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !92, file: !91, line: 335, baseType: !4, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !92, file: !91, line: 336, baseType: !132, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !92, file: !91, line: 337, baseType: !132, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !92, file: !91, line: 338, baseType: !12, size: 32, align: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !92, file: !91, line: 339, baseType: !148, size: 64, align: 64, offset: 640)
!148 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !92, file: !91, line: 340, baseType: !148, size: 64, align: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !92, file: !91, line: 341, baseType: !151, size: 128, align: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !82, line: 195, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !153, line: 292, size: 128, align: 64, elements: !154)
!153 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!154 = !{!155, !174}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !152, file: !153, line: 293, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !153, line: 297, size: 256, align: 64, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !157, file: !153, line: 297, baseType: !160, size: 256, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !161, line: 72, baseType: !162)
!161 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !161, line: 66, size: 256, align: 64, elements: !163)
!163 = !{!164, !165, !166, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !162, file: !161, line: 67, baseType: !12, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !161, line: 68, baseType: !13, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !162, file: !161, line: 69, baseType: !12, size: 32, align: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !162, file: !161, line: 70, baseType: !12, size: 32, align: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !162, file: !161, line: 71, baseType: !169, size: 64, align: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!12, !172, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !152, file: !153, line: 295, baseType: !12, size: 32, align: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !83, file: !72, line: 1440, baseType: !89, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !83, file: !72, line: 1442, baseType: !89, size: 64, align: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !83, file: !72, line: 1455, baseType: !12, size: 32, align: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !83, file: !72, line: 1457, baseType: !12, size: 32, align: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !83, file: !72, line: 1458, baseType: !77, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !83, file: !72, line: 1467, baseType: !12, size: 32, align: 32, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !83, file: !72, line: 1474, baseType: !12, size: 32, align: 32, offset: 480)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !83, file: !72, line: 1476, baseType: !12, size: 32, align: 32, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !83, file: !72, line: 1478, baseType: !12, size: 32, align: 32, offset: 544)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !83, file: !72, line: 1480, baseType: !12, size: 32, align: 32, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !83, file: !72, line: 1482, baseType: !12, size: 32, align: 32, offset: 608)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !83, file: !72, line: 1483, baseType: !187, size: 64, align: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !82, line: 127, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !190, line: 77, size: 192, align: 64, elements: !191)
!190 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!191 = !{!192, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !189, file: !190, line: 78, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 216, baseType: !148)
!194 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !189, file: !190, line: 79, baseType: !14, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !189, file: !190, line: 80, baseType: !193, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !83, file: !72, line: 1484, baseType: !4, size: 64, align: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !83, file: !72, line: 1486, baseType: !12, size: 32, align: 32, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !83, file: !72, line: 1487, baseType: !12, size: 32, align: 32, offset: 800)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !83, file: !72, line: 1489, baseType: !201, size: 64, align: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !83, file: !72, line: 1490, baseType: !34, size: 32, align: 32, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !83, file: !72, line: 1491, baseType: !205, size: 64, align: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !207, line: 163, size: 2752, align: 64, elements: !208)
!207 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!208 = !{!209, !210, !211, !212, !213, !214, !215, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241, !242, !246, !247, !251, !252, !253}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !206, file: !207, line: 164, baseType: !12, size: 32, align: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !206, file: !207, line: 165, baseType: !12, size: 32, align: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !206, file: !207, line: 166, baseType: !12, size: 32, align: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !206, file: !207, line: 167, baseType: !12, size: 32, align: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !206, file: !207, line: 171, baseType: !34, size: 32, align: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !206, file: !207, line: 172, baseType: !12, size: 32, align: 32, offset: 160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !206, file: !207, line: 173, baseType: !216, size: 64, align: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !206, file: !207, line: 174, baseType: !12, size: 32, align: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !206, file: !207, line: 175, baseType: !12, size: 32, align: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !206, file: !207, line: 176, baseType: !12, size: 32, align: 32, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !206, file: !207, line: 178, baseType: !12, size: 32, align: 32, offset: 352)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !206, file: !207, line: 179, baseType: !12, size: 32, align: 32, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !206, file: !207, line: 180, baseType: !201, size: 64, align: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !206, file: !207, line: 181, baseType: !201, size: 64, align: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !206, file: !207, line: 182, baseType: !201, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !206, file: !207, line: 184, baseType: !34, size: 32, align: 32, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !206, file: !207, line: 185, baseType: !34, size: 32, align: 32, offset: 672)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !206, file: !207, line: 186, baseType: !12, size: 32, align: 32, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !206, file: !207, line: 187, baseType: !34, size: 32, align: 32, offset: 736)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !206, file: !207, line: 188, baseType: !12, size: 32, align: 32, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !206, file: !207, line: 189, baseType: !201, size: 64, align: 64, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !206, file: !207, line: 190, baseType: !201, size: 64, align: 64, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !206, file: !207, line: 191, baseType: !201, size: 64, align: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !206, file: !207, line: 192, baseType: !201, size: 64, align: 64, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !206, file: !207, line: 193, baseType: !201, size: 64, align: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !206, file: !207, line: 195, baseType: !34, size: 32, align: 32, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !206, file: !207, line: 196, baseType: !238, size: 256, align: 8, offset: 1184)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, align: 8, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !206, file: !207, line: 197, baseType: !34, size: 32, align: 32, offset: 1440)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !206, file: !207, line: 198, baseType: !243, size: 128, align: 8, offset: 1472)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, align: 8, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !206, file: !207, line: 199, baseType: !34, size: 32, align: 32, offset: 1600)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !206, file: !207, line: 200, baseType: !248, size: 384, align: 8, offset: 1632)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, align: 8, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 48)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !206, file: !207, line: 201, baseType: !148, size: 64, align: 64, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !206, file: !207, line: 202, baseType: !148, size: 64, align: 64, offset: 2112)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !206, file: !207, line: 215, baseType: !254, size: 576, align: 32, offset: 2176)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !207, line: 203, size: 576, align: 32, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !254, file: !207, line: 204, baseType: !34, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !254, file: !207, line: 205, baseType: !34, size: 32, align: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !254, file: !207, line: 206, baseType: !34, size: 32, align: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !254, file: !207, line: 207, baseType: !34, size: 32, align: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !254, file: !207, line: 208, baseType: !34, size: 32, align: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !254, file: !207, line: 209, baseType: !34, size: 32, align: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !254, file: !207, line: 210, baseType: !238, size: 256, align: 8, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !254, file: !207, line: 211, baseType: !34, size: 32, align: 32, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !254, file: !207, line: 212, baseType: !34, size: 32, align: 32, offset: 480)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !254, file: !207, line: 213, baseType: !34, size: 32, align: 32, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !254, file: !207, line: 214, baseType: !34, size: 32, align: 32, offset: 544)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !83, file: !72, line: 1492, baseType: !268, size: 64, align: 64, offset: 1024)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !270, line: 481, size: 9728, align: 64, elements: !271)
!270 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!271 = !{!272, !273, !274, !278, !279, !283, !284, !285, !286, !287, !288, !289, !290, !291, !299, !300, !312, !313, !317, !318, !322, !323, !324, !325, !326, !327, !328, !329, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !270, line: 482, baseType: !118, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !269, file: !270, line: 483, baseType: !12, size: 32, align: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !269, file: !270, line: 484, baseType: !275, size: 64, align: 8, offset: 96)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, align: 8, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !269, file: !270, line: 485, baseType: !12, size: 32, align: 32, offset: 160)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !269, file: !270, line: 486, baseType: !280, size: 512, align: 8, offset: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 512, align: 8, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !269, file: !270, line: 487, baseType: !275, size: 64, align: 8, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !269, file: !270, line: 488, baseType: !12, size: 32, align: 32, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !269, file: !270, line: 489, baseType: !280, size: 512, align: 8, offset: 800)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !269, file: !270, line: 490, baseType: !238, size: 256, align: 8, offset: 1312)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !269, file: !270, line: 491, baseType: !238, size: 256, align: 8, offset: 1568)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !269, file: !270, line: 493, baseType: !12, size: 32, align: 32, offset: 1824)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !269, file: !270, line: 494, baseType: !12, size: 32, align: 32, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !269, file: !270, line: 496, baseType: !12, size: 32, align: 32, offset: 1888)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !269, file: !270, line: 497, baseType: !292, size: 192, align: 64, offset: 1920)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !270, line: 447, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !270, line: 438, size: 192, align: 64, elements: !294)
!294 = !{!295, !296, !297, !298}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !293, file: !270, line: 440, baseType: !201, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !293, file: !270, line: 442, baseType: !193, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !293, file: !270, line: 444, baseType: !12, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !293, file: !270, line: 446, baseType: !12, size: 32, align: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !269, file: !270, line: 498, baseType: !292, size: 192, align: 64, offset: 2112)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !269, file: !270, line: 499, baseType: !301, size: 448, align: 64, offset: 2304)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !270, line: 436, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !270, line: 403, size: 448, align: 64, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !270, line: 407, baseType: !12, size: 32, align: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !302, file: !270, line: 411, baseType: !34, size: 32, align: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !302, file: !270, line: 415, baseType: !34, size: 32, align: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !302, file: !270, line: 419, baseType: !201, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !302, file: !270, line: 423, baseType: !201, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !302, file: !270, line: 427, baseType: !201, size: 64, align: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !302, file: !270, line: 431, baseType: !148, size: 64, align: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !302, file: !270, line: 435, baseType: !275, size: 64, align: 8, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !269, file: !270, line: 500, baseType: !301, size: 448, align: 64, offset: 2752)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !269, file: !270, line: 505, baseType: !314, size: 16, align: 8, offset: 3200)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16, align: 8, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !269, file: !270, line: 506, baseType: !34, size: 32, align: 32, offset: 3232)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !269, file: !270, line: 507, baseType: !319, size: 32, align: 8, offset: 3264)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 32, align: 8, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 4)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !269, file: !270, line: 508, baseType: !34, size: 32, align: 32, offset: 3296)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !269, file: !270, line: 510, baseType: !34, size: 32, align: 32, offset: 3328)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !269, file: !270, line: 511, baseType: !12, size: 32, align: 32, offset: 3360)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !269, file: !270, line: 512, baseType: !12, size: 32, align: 32, offset: 3392)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !269, file: !270, line: 513, baseType: !12, size: 32, align: 32, offset: 3424)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !269, file: !270, line: 514, baseType: !216, size: 64, align: 64, offset: 3456)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !269, file: !270, line: 516, baseType: !89, size: 64, align: 64, offset: 3520)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !269, file: !270, line: 521, baseType: !330, size: 64, align: 64, offset: 3584)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !82, line: 132, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !334, line: 268, size: 384, align: 64, elements: !335)
!334 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!335 = !{!336, !384, !388, !389, !390, !394}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !333, file: !334, line: 269, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !82, line: 131, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !334, line: 160, size: 960, align: 64, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !350, !354, !358, !364, !365, !370, !374, !378, !379, !380}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !334, line: 161, baseType: !12, size: 32, align: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !340, file: !334, line: 162, baseType: !12, size: 32, align: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !340, file: !334, line: 163, baseType: !12, size: 32, align: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !334, line: 164, baseType: !148, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !340, file: !334, line: 165, baseType: !347, size: 64, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!12, !331}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !340, file: !334, line: 166, baseType: !351, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!12, !331, !172, !193}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !340, file: !334, line: 167, baseType: !355, size: 64, align: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!12, !331, !201}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !340, file: !334, line: 168, baseType: !359, size: 64, align: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!12, !331, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !340, file: !334, line: 169, baseType: !347, size: 64, align: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !340, file: !334, line: 171, baseType: !366, size: 64, align: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!12, !12, !216, !34, !201, !369, !4}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !340, file: !334, line: 173, baseType: !371, size: 64, align: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!12, !12, !216, !34, !216, !34, !4}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !340, file: !334, line: 176, baseType: !375, size: 160, align: 32, offset: 640)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, align: 32, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 5)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !340, file: !334, line: 177, baseType: !12, size: 32, align: 32, offset: 800)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !340, file: !334, line: 178, baseType: !12, size: 32, align: 32, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !340, file: !334, line: 180, baseType: !381, size: 64, align: 64, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!12, !331, !12, !12, !4}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !333, file: !334, line: 270, baseType: !385, size: 64, align: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !82, line: 177, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !82, line: 177, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !334, line: 272, baseType: !148, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !333, file: !334, line: 273, baseType: !4, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !333, file: !334, line: 275, baseType: !391, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !82, line: 138, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !82, line: 138, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !333, file: !334, line: 277, baseType: !351, size: 64, align: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !269, file: !270, line: 527, baseType: !12, size: 32, align: 32, offset: 3648)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !269, file: !270, line: 528, baseType: !12, size: 32, align: 32, offset: 3680)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !269, file: !270, line: 529, baseType: !12, size: 32, align: 32, offset: 3712)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !269, file: !270, line: 534, baseType: !12, size: 32, align: 32, offset: 3744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !269, file: !270, line: 535, baseType: !314, size: 16, align: 8, offset: 3776)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !269, file: !270, line: 540, baseType: !12, size: 32, align: 32, offset: 3808)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !269, file: !270, line: 541, baseType: !12, size: 32, align: 32, offset: 3840)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !269, file: !270, line: 542, baseType: !12, size: 32, align: 32, offset: 3872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !269, file: !270, line: 543, baseType: !12, size: 32, align: 32, offset: 3904)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !269, file: !270, line: 549, baseType: !4, size: 64, align: 64, offset: 3968)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !269, file: !270, line: 550, baseType: !193, size: 64, align: 64, offset: 4032)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !269, file: !270, line: 551, baseType: !4, size: 64, align: 64, offset: 4096)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !269, file: !270, line: 552, baseType: !193, size: 64, align: 64, offset: 4160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !269, file: !270, line: 592, baseType: !409, size: 4224, align: 64, offset: 4224)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !270, line: 553, size: 4224, align: 64, elements: !410)
!410 = !{!411, !415, !416, !417, !418, !419, !420, !421, !439, !535, !540, !541, !542, !543, !544, !548, !554, !555, !556, !557, !690, !691, !692, !693, !737}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !409, file: !270, line: 555, baseType: !412, size: 1024, align: 8)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, align: 8, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !409, file: !270, line: 557, baseType: !412, size: 1024, align: 8, offset: 1024)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !409, file: !270, line: 558, baseType: !12, size: 32, align: 32, offset: 2048)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !409, file: !270, line: 559, baseType: !412, size: 1024, align: 8, offset: 2080)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !409, file: !270, line: 560, baseType: !12, size: 32, align: 32, offset: 3104)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !409, file: !270, line: 561, baseType: !148, size: 64, align: 64, offset: 3136)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !409, file: !270, line: 562, baseType: !12, size: 32, align: 32, offset: 3200)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !409, file: !270, line: 564, baseType: !422, size: 64, align: 64, offset: 3264)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !72, line: 375, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !72, line: 418, size: 704, align: 64, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !425, file: !72, line: 419, baseType: !12, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !72, line: 420, baseType: !22, size: 64, align: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !425, file: !72, line: 421, baseType: !148, size: 64, align: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !425, file: !72, line: 426, baseType: !148, size: 64, align: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !425, file: !72, line: 427, baseType: !148, size: 64, align: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !425, file: !72, line: 428, baseType: !148, size: 64, align: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !425, file: !72, line: 429, baseType: !148, size: 64, align: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !425, file: !72, line: 430, baseType: !148, size: 64, align: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !425, file: !72, line: 431, baseType: !148, size: 64, align: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !425, file: !72, line: 432, baseType: !148, size: 64, align: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !425, file: !72, line: 433, baseType: !12, size: 32, align: 32, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !425, file: !72, line: 434, baseType: !12, size: 32, align: 32, offset: 672)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !409, file: !270, line: 566, baseType: !440, size: 64, align: 64, offset: 3328)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !82, line: 140, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !443, line: 135, size: 1152, align: 64, elements: !444)
!443 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!444 = !{!445, !446, !447, !459, !460, !461, !462, !463, !464, !476, !477, !478, !479, !480, !481, !482, !483, !534}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !442, file: !443, line: 140, baseType: !12, size: 32, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !442, file: !443, line: 141, baseType: !12, size: 32, align: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !442, file: !443, line: 142, baseType: !448, size: 64, align: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !82, line: 120, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !451, line: 313, size: 192, align: 64, elements: !452)
!451 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!452 = !{!453, !455, !456, !457, !458}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !450, file: !451, line: 314, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !450, file: !451, line: 316, baseType: !12, size: 32, align: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !450, file: !451, line: 318, baseType: !12, size: 32, align: 32, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !450, file: !451, line: 319, baseType: !12, size: 32, align: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !451, line: 320, baseType: !12, size: 32, align: 32, offset: 160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !442, file: !443, line: 143, baseType: !448, size: 64, align: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !442, file: !443, line: 144, baseType: !118, size: 64, align: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !442, file: !443, line: 145, baseType: !448, size: 64, align: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !442, file: !443, line: 146, baseType: !448, size: 64, align: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 147, baseType: !12, size: 32, align: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !442, file: !443, line: 148, baseType: !465, size: 64, align: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !82, line: 123, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !451, line: 324, size: 832, align: 64, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !475}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !467, file: !451, line: 325, baseType: !12, size: 32, align: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !467, file: !451, line: 326, baseType: !449, size: 192, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !467, file: !451, line: 327, baseType: !449, size: 192, align: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !467, file: !451, line: 328, baseType: !449, size: 192, align: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !467, file: !451, line: 330, baseType: !474, size: 128, align: 64, offset: 640)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, align: 64, elements: !315)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !451, line: 333, baseType: !12, size: 32, align: 32, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !442, file: !443, line: 150, baseType: !448, size: 64, align: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !442, file: !443, line: 151, baseType: !448, size: 64, align: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !442, file: !443, line: 152, baseType: !201, size: 64, align: 64, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !442, file: !443, line: 153, baseType: !12, size: 32, align: 32, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !442, file: !443, line: 154, baseType: !448, size: 64, align: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !442, file: !443, line: 155, baseType: !12, size: 32, align: 32, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !442, file: !443, line: 156, baseType: !151, size: 128, align: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !442, file: !443, line: 157, baseType: !484, size: 64, align: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !82, line: 141, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !443, line: 117, size: 576, align: 64, elements: !488)
!488 = !{!489, !490, !494, !500, !509, !510, !511, !512, !513}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !443, line: 118, baseType: !22, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !487, file: !443, line: 120, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!12, !440}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !487, file: !443, line: 121, baseType: !495, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!12, !201, !498, !440}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !487, file: !443, line: 123, baseType: !501, size: 64, align: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!12, !504, !448, !498, !498, !498, !506, !465}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !82, line: 121, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !82, line: 121, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !487, file: !443, line: 126, baseType: !491, size: 64, align: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !487, file: !443, line: 127, baseType: !491, size: 64, align: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !443, line: 128, baseType: !12, size: 32, align: 32, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !487, file: !443, line: 129, baseType: !14, size: 64, align: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !487, file: !443, line: 131, baseType: !514, size: 64, align: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!12, !440, !12, !12, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !82, line: 125, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !451, line: 349, size: 192, align: 64, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !519, file: !451, line: 350, baseType: !34, size: 32, align: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !519, file: !451, line: 351, baseType: !4, size: 64, align: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !519, file: !451, line: 357, baseType: !524, size: 64, align: 64, offset: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !451, line: 352, size: 64, align: 64, elements: !525)
!525 = !{!526, !530}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !524, file: !451, line: 354, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !12, !12, !4}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !524, file: !451, line: 356, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!12, !12, !12, !517}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !442, file: !443, line: 158, baseType: !385, size: 64, align: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !409, file: !270, line: 569, baseType: !536, size: 64, align: 64, offset: 3392)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !538, line: 741, baseType: !539)
!538 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !334, line: 147, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !409, file: !270, line: 572, baseType: !12, size: 32, align: 32, offset: 3456)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !409, file: !270, line: 573, baseType: !12, size: 32, align: 32, offset: 3488)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !409, file: !270, line: 575, baseType: !12, size: 32, align: 32, offset: 3520)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !409, file: !270, line: 576, baseType: !12, size: 32, align: 32, offset: 3552)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !409, file: !270, line: 577, baseType: !545, size: 72, align: 8, offset: 3584)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, align: 8, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 9)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !409, file: !270, line: 578, baseType: !549, size: 64, align: 64, offset: 3712)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !551, line: 192, size: 256, align: 64, elements: !552)
!551 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !550, file: !551, line: 192, baseType: !160, size: 256, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !409, file: !270, line: 579, baseType: !12, size: 32, align: 32, offset: 3776)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !409, file: !270, line: 580, baseType: !12, size: 32, align: 32, offset: 3808)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !409, file: !270, line: 581, baseType: !201, size: 64, align: 64, offset: 3840)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !409, file: !270, line: 582, baseType: !558, size: 64, align: 64, offset: 3904)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !82, line: 129, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !334, line: 308, size: 704, align: 64, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !591, !595, !599, !600, !684, !685, !689}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !561, file: !334, line: 309, baseType: !12, size: 32, align: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !561, file: !334, line: 310, baseType: !12, size: 32, align: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !561, file: !334, line: 312, baseType: !12, size: 32, align: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !561, file: !334, line: 313, baseType: !12, size: 32, align: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !334, line: 315, baseType: !148, size: 64, align: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !561, file: !334, line: 317, baseType: !569, size: 64, align: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!12, !572, !216, !216, !12}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !82, line: 130, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !334, line: 449, size: 1344, align: 64, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !574, file: !334, line: 450, baseType: !558, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !574, file: !334, line: 451, baseType: !385, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !574, file: !334, line: 453, baseType: !12, size: 32, align: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !574, file: !334, line: 454, baseType: !12, size: 32, align: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !574, file: !334, line: 455, baseType: !243, size: 128, align: 8, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !574, file: !334, line: 456, baseType: !243, size: 128, align: 8, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !574, file: !334, line: 457, baseType: !238, size: 256, align: 8, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !574, file: !334, line: 458, baseType: !12, size: 32, align: 32, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !574, file: !334, line: 459, baseType: !4, size: 64, align: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !574, file: !334, line: 460, baseType: !12, size: 32, align: 32, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !334, line: 461, baseType: !148, size: 64, align: 64, offset: 896)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !574, file: !334, line: 462, baseType: !4, size: 64, align: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !574, file: !334, line: 463, baseType: !12, size: 32, align: 32, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !574, file: !334, line: 464, baseType: !12, size: 32, align: 32, offset: 1056)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !574, file: !334, line: 465, baseType: !238, size: 256, align: 8, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !561, file: !334, line: 320, baseType: !592, size: 64, align: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!12, !572, !201, !216, !193}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !561, file: !334, line: 323, baseType: !596, size: 64, align: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!12, !572}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !561, file: !334, line: 325, baseType: !12, size: 32, align: 32, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !561, file: !334, line: 327, baseType: !601, size: 64, align: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!12, !572, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !606, line: 561, baseType: !607)
!606 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !606, line: 532, size: 128, align: 64, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !606, line: 533, baseType: !12, size: 32, align: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !607, file: !606, line: 560, baseType: !611, size: 64, align: 64, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !606, line: 534, size: 64, align: 64, elements: !612)
!612 = !{!613, !614, !616, !625, !636, !639, !642, !645, !648, !651, !654, !657, !660, !663, !666, !669, !672, !675, !678, !679, !680}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !611, file: !606, line: 535, baseType: !14, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !611, file: !606, line: 536, baseType: !615, size: 32, align: 32)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !82, line: 99, baseType: !12)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !611, file: !606, line: 537, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !82, line: 98, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !606, line: 247, size: 192, align: 64, elements: !620)
!620 = !{!621, !622, !623, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !619, file: !606, line: 248, baseType: !12, size: 32, align: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !606, line: 249, baseType: !12, size: 32, align: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !619, file: !606, line: 250, baseType: !201, size: 64, align: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !606, line: 256, baseType: !118, size: 64, align: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !611, file: !606, line: 538, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !82, line: 103, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !606, line: 218, size: 320, align: 64, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !628, file: !606, line: 219, baseType: !22, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !628, file: !606, line: 219, baseType: !22, size: 64, align: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !628, file: !606, line: 220, baseType: !12, size: 32, align: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !628, file: !606, line: 221, baseType: !12, size: 32, align: 32, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !628, file: !606, line: 222, baseType: !216, size: 64, align: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !606, line: 223, baseType: !12, size: 32, align: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !611, file: !606, line: 539, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !82, line: 83, baseType: !619)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !611, file: !606, line: 540, baseType: !640, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !82, line: 84, baseType: !619)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !611, file: !606, line: 541, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !82, line: 85, baseType: !619)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !611, file: !606, line: 542, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !82, line: 86, baseType: !619)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !611, file: !606, line: 543, baseType: !649, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !82, line: 87, baseType: !619)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !611, file: !606, line: 544, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !82, line: 88, baseType: !619)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !611, file: !606, line: 545, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !82, line: 89, baseType: !619)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !611, file: !606, line: 546, baseType: !658, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !82, line: 90, baseType: !619)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !611, file: !606, line: 547, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !82, line: 92, baseType: !619)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !611, file: !606, line: 548, baseType: !664, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !82, line: 91, baseType: !619)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !611, file: !606, line: 549, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !82, line: 93, baseType: !619)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !611, file: !606, line: 550, baseType: !670, size: 64, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !82, line: 95, baseType: !619)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !611, file: !606, line: 551, baseType: !673, size: 64, align: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !82, line: 96, baseType: !619)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !611, file: !606, line: 552, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !82, line: 97, baseType: !619)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !611, file: !606, line: 557, baseType: !617, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !611, file: !606, line: 558, baseType: !617, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !611, file: !606, line: 559, baseType: !681, size: 64, align: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !606, line: 307, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !606, line: 307, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !561, file: !334, line: 329, baseType: !601, size: 64, align: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !561, file: !334, line: 331, baseType: !686, size: 64, align: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!12, !572, !12, !12, !4}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !561, file: !334, line: 333, baseType: !4, size: 64, align: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !409, file: !270, line: 583, baseType: !337, size: 64, align: 64, offset: 3968)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !409, file: !270, line: 584, baseType: !12, size: 32, align: 32, offset: 4032)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !409, file: !270, line: 585, baseType: !12, size: 32, align: 32, offset: 4064)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !409, file: !270, line: 587, baseType: !694, size: 64, align: 64, offset: 4096)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !72, line: 908, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !72, line: 912, size: 192, align: 64, elements: !698)
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !697, file: !72, line: 913, baseType: !12, size: 32, align: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !72, line: 914, baseType: !22, size: 64, align: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !697, file: !72, line: 916, baseType: !702, size: 64, align: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !704, line: 29, baseType: !705)
!704 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !704, line: 13, size: 512, align: 64, elements: !706)
!706 = !{!707, !708, !709, !723, !727, !731, !732, !736}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !704, line: 14, baseType: !12, size: 32, align: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !704, line: 15, baseType: !22, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !705, file: !704, line: 16, baseType: !710, size: 64, align: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!12, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !704, line: 11, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !704, line: 31, size: 448, align: 64, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !715, file: !704, line: 32, baseType: !702, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !715, file: !704, line: 33, baseType: !148, size: 64, align: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !715, file: !704, line: 34, baseType: !148, size: 64, align: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !715, file: !704, line: 35, baseType: !148, size: 64, align: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !715, file: !704, line: 36, baseType: !148, size: 64, align: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !715, file: !704, line: 37, baseType: !151, size: 128, align: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !705, file: !704, line: 17, baseType: !724, size: 64, align: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !713}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !705, file: !704, line: 18, baseType: !728, size: 64, align: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!12, !713, !201, !34, !201, !34}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !705, file: !704, line: 21, baseType: !728, size: 64, align: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !705, file: !704, line: 27, baseType: !733, size: 64, align: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!118}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !705, file: !704, line: 28, baseType: !733, size: 64, align: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !409, file: !270, line: 591, baseType: !12, size: 32, align: 32, offset: 4160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !269, file: !270, line: 595, baseType: !280, size: 512, align: 8, offset: 8448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !269, file: !270, line: 596, baseType: !202, size: 8, align: 8, offset: 8960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !269, file: !270, line: 597, baseType: !280, size: 512, align: 8, offset: 8968)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !269, file: !270, line: 598, baseType: !202, size: 8, align: 8, offset: 9480)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !269, file: !270, line: 599, baseType: !12, size: 32, align: 32, offset: 9504)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !269, file: !270, line: 605, baseType: !12, size: 32, align: 32, offset: 9536)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !269, file: !270, line: 615, baseType: !15, size: 8, align: 8, offset: 9568)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !269, file: !270, line: 628, baseType: !201, size: 64, align: 64, offset: 9600)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !269, file: !270, line: 629, baseType: !34, size: 32, align: 32, offset: 9664)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !83, file: !72, line: 1493, baseType: !748, size: 64, align: 64, offset: 1088)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !750, line: 182, size: 7168, align: 64, elements: !751)
!750 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!751 = !{!752, !753, !757, !758, !759, !761, !762, !768, !769, !770, !771, !772, !773, !783, !784, !785, !786, !787, !788, !789, !790, !1156, !1157, !1163, !1172, !1173, !1174, !1175, !1179, !1180, !1181}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !749, file: !750, line: 183, baseType: !34, size: 32, align: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !749, file: !750, line: 184, baseType: !754, size: 2048, align: 8, offset: 32)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, align: 8, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !749, file: !750, line: 185, baseType: !754, size: 2048, align: 8, offset: 2080)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !749, file: !750, line: 186, baseType: !34, size: 32, align: 32, offset: 4128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !749, file: !750, line: 192, baseType: !760, size: 16, align: 16, offset: 4160)
!760 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !749, file: !750, line: 193, baseType: !760, size: 16, align: 16, offset: 4176)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !749, file: !750, line: 195, baseType: !763, size: 128, align: 64, offset: 4224)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !750, line: 133, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !750, line: 128, size: 128, align: 64, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !764, file: !750, line: 129, baseType: !148, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !764, file: !750, line: 131, baseType: !275, size: 64, align: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !749, file: !750, line: 197, baseType: !763, size: 128, align: 64, offset: 4352)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !749, file: !750, line: 199, baseType: !760, size: 16, align: 16, offset: 4480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !749, file: !750, line: 200, baseType: !760, size: 16, align: 16, offset: 4496)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !749, file: !750, line: 201, baseType: !760, size: 16, align: 16, offset: 4512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !749, file: !750, line: 203, baseType: !275, size: 64, align: 8, offset: 4528)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !749, file: !750, line: 205, baseType: !774, size: 128, align: 64, offset: 4608)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !750, line: 174, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !750, line: 171, size: 128, align: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !775, file: !750, line: 172, baseType: !760, size: 16, align: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !775, file: !750, line: 173, baseType: !779, size: 64, align: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !780, line: 70, baseType: !781)
!780 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !780, line: 70, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !749, file: !750, line: 206, baseType: !774, size: 128, align: 64, offset: 4736)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !749, file: !750, line: 208, baseType: !779, size: 64, align: 64, offset: 4864)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !749, file: !750, line: 210, baseType: !779, size: 64, align: 64, offset: 4928)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !749, file: !750, line: 216, baseType: !774, size: 128, align: 64, offset: 4992)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !749, file: !750, line: 218, baseType: !34, size: 32, align: 32, offset: 5120)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !749, file: !750, line: 219, baseType: !34, size: 32, align: 32, offset: 5152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !749, file: !750, line: 220, baseType: !34, size: 32, align: 32, offset: 5184)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !749, file: !750, line: 221, baseType: !791, size: 704, align: 64, offset: 5248)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !750, line: 147, size: 704, align: 64, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !750, line: 148, baseType: !202, size: 8, align: 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !791, file: !750, line: 149, baseType: !148, size: 64, align: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !791, file: !750, line: 150, baseType: !760, size: 16, align: 16, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !791, file: !750, line: 151, baseType: !148, size: 64, align: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !791, file: !750, line: 152, baseType: !148, size: 64, align: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !791, file: !750, line: 153, baseType: !34, size: 32, align: 32, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !791, file: !750, line: 154, baseType: !800, size: 320, align: 64, offset: 384)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !750, line: 135, size: 320, align: 64, elements: !801)
!801 = !{!802, !803, !804, !805, !1155}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !800, file: !750, line: 136, baseType: !572, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !800, file: !750, line: 137, baseType: !331, size: 64, align: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !800, file: !750, line: 139, baseType: !713, size: 64, align: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !800, file: !750, line: 143, baseType: !806, size: 64, align: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !72, line: 376, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !72, line: 498, size: 2816, align: 64, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !825, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1142, !1143, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !808, file: !72, line: 499, baseType: !12, size: 32, align: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !808, file: !72, line: 502, baseType: !34, size: 32, align: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !808, file: !72, line: 503, baseType: !275, size: 64, align: 8, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !808, file: !72, line: 504, baseType: !12, size: 32, align: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !808, file: !72, line: 505, baseType: !248, size: 384, align: 8, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !808, file: !72, line: 507, baseType: !34, size: 32, align: 32, offset: 544)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !808, file: !72, line: 508, baseType: !238, size: 256, align: 8, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !808, file: !72, line: 514, baseType: !34, size: 32, align: 32, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !808, file: !72, line: 515, baseType: !238, size: 256, align: 8, offset: 864)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !808, file: !72, line: 521, baseType: !14, size: 64, align: 64, offset: 1152)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !808, file: !72, line: 522, baseType: !14, size: 64, align: 64, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !808, file: !72, line: 529, baseType: !12, size: 32, align: 32, offset: 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !808, file: !72, line: 531, baseType: !823, size: 64, align: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !72, line: 531, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !808, file: !72, line: 538, baseType: !826, size: 64, align: 64, offset: 1408)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !82, line: 154, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !551, line: 270, size: 1472, align: 64, elements: !829)
!829 = !{!830, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1086, !1090, !1095, !1097, !1108, !1112}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !828, file: !551, line: 271, baseType: !831, size: 64, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !551, line: 254, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !551, line: 242, size: 832, align: 64, elements: !834)
!834 = !{!835, !836, !837, !844, !858, !867, !868, !1045, !1046, !1047, !1052}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !833, file: !551, line: 243, baseType: !637, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !833, file: !551, line: 244, baseType: !637, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !833, file: !551, line: 245, baseType: !838, size: 64, align: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !82, line: 155, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !551, line: 143, size: 128, align: 64, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !840, file: !551, line: 144, baseType: !626, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !840, file: !551, line: 145, baseType: !604, size: 64, align: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !833, file: !551, line: 246, baseType: !845, size: 64, align: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !82, line: 159, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !551, line: 179, size: 320, align: 64, elements: !848)
!848 = !{!849, !854, !855, !856, !857}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !847, file: !551, line: 180, baseType: !850, size: 64, align: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !551, line: 175, size: 256, align: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !851, file: !551, line: 175, baseType: !160, size: 256, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !847, file: !551, line: 181, baseType: !12, size: 32, align: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !847, file: !551, line: 183, baseType: !187, size: 64, align: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !847, file: !551, line: 188, baseType: !201, size: 64, align: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !847, file: !551, line: 189, baseType: !12, size: 32, align: 32, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !833, file: !551, line: 247, baseType: !859, size: 64, align: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !551, line: 155, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !551, line: 152, size: 128, align: 64, elements: !862)
!862 = !{!863, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !861, file: !551, line: 153, baseType: !864, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64, align: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !82, line: 94, baseType: !619)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !861, file: !551, line: 154, baseType: !864, size: 64, align: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !833, file: !551, line: 248, baseType: !845, size: 64, align: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !833, file: !551, line: 249, baseType: !869, size: 64, align: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !82, line: 160, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !551, line: 157, size: 192, align: 64, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !871, file: !551, line: 158, baseType: !838, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !871, file: !551, line: 159, baseType: !643, size: 64, align: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !871, file: !551, line: 160, baseType: !876, size: 64, align: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !82, line: 133, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !334, line: 129, size: 448, align: 64, elements: !879)
!879 = !{!880, !881, !882, !883, !888, !889, !1039, !1040}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !878, file: !334, line: 130, baseType: !12, size: 32, align: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !878, file: !334, line: 131, baseType: !12, size: 32, align: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !878, file: !334, line: 132, baseType: !12, size: 32, align: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !878, file: !334, line: 133, baseType: !884, size: 64, align: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !82, line: 135, baseType: !887)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !82, line: 135, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !878, file: !334, line: 134, baseType: !385, size: 64, align: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !878, file: !334, line: 149, baseType: !890, size: 64, align: 64, offset: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !334, line: 135, size: 64, align: 64, elements: !891)
!891 = !{!892, !893, !966, !1035, !1037}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !890, file: !334, line: 136, baseType: !14, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !890, file: !334, line: 138, baseType: !894, size: 64, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64, align: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !896, line: 132, size: 1344, align: 64, elements: !897)
!896 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!897 = !{!898, !899, !900, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !965}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !895, file: !896, line: 137, baseType: !12, size: 32, align: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !895, file: !896, line: 138, baseType: !118, size: 64, align: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !895, file: !896, line: 139, baseType: !901, size: 64, align: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !82, line: 147, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !896, line: 85, size: 896, align: 64, elements: !905)
!905 = !{!906, !907, !913, !914, !915, !916, !920, !924, !928, !929, !930, !931, !937, !941}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !896, line: 86, baseType: !22, size: 64, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !904, file: !896, line: 87, baseType: !908, size: 64, align: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!12, !12, !216, !201, !911, !12}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !82, line: 146, baseType: !895)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !904, file: !896, line: 89, baseType: !908, size: 64, align: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !904, file: !896, line: 91, baseType: !908, size: 64, align: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !904, file: !896, line: 93, baseType: !908, size: 64, align: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !904, file: !896, line: 96, baseType: !917, size: 64, align: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, align: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!12, !448, !498, !911, !506}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !904, file: !896, line: 98, baseType: !921, size: 64, align: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, align: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!12, !448, !498, !498, !498, !506, !465}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !904, file: !896, line: 101, baseType: !925, size: 64, align: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!12, !911}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !904, file: !896, line: 103, baseType: !925, size: 64, align: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !896, line: 105, baseType: !12, size: 32, align: 32, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !904, file: !896, line: 107, baseType: !14, size: 64, align: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !904, file: !896, line: 116, baseType: !932, size: 64, align: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64, align: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!12, !12, !216, !34, !201, !369, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !904, file: !896, line: 120, baseType: !938, size: 64, align: 64, offset: 768)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64, align: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!12, !12, !216, !34, !216, !34, !935}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !904, file: !896, line: 129, baseType: !942, size: 64, align: 64, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64, align: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!12, !911, !12, !448, !517}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !895, file: !896, line: 141, baseType: !385, size: 64, align: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !895, file: !896, line: 142, baseType: !448, size: 64, align: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !895, file: !896, line: 143, baseType: !448, size: 64, align: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !895, file: !896, line: 144, baseType: !448, size: 64, align: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !895, file: !896, line: 145, baseType: !448, size: 64, align: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !895, file: !896, line: 146, baseType: !448, size: 64, align: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !895, file: !896, line: 147, baseType: !448, size: 64, align: 64, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !895, file: !896, line: 148, baseType: !448, size: 64, align: 64, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !895, file: !896, line: 149, baseType: !448, size: 64, align: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !895, file: !896, line: 151, baseType: !151, size: 128, align: 64, offset: 768)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !895, file: !896, line: 152, baseType: !12, size: 32, align: 32, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !896, line: 153, baseType: !12, size: 32, align: 32, offset: 928)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !895, file: !896, line: 155, baseType: !465, size: 64, align: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !895, file: !896, line: 156, baseType: !465, size: 64, align: 64, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !895, file: !896, line: 157, baseType: !465, size: 64, align: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !895, file: !896, line: 162, baseType: !14, size: 64, align: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !895, file: !896, line: 163, baseType: !962, size: 64, align: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !82, line: 122, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !82, line: 122, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !895, file: !896, line: 164, baseType: !962, size: 64, align: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !890, file: !334, line: 141, baseType: !967, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, align: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !969, line: 155, size: 1088, align: 64, elements: !970)
!969 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !1034}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !968, file: !969, line: 160, baseType: !12, size: 32, align: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !968, file: !969, line: 161, baseType: !118, size: 64, align: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !968, file: !969, line: 162, baseType: !12, size: 32, align: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !968, file: !969, line: 163, baseType: !448, size: 64, align: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !968, file: !969, line: 164, baseType: !448, size: 64, align: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !968, file: !969, line: 165, baseType: !448, size: 64, align: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !968, file: !969, line: 166, baseType: !448, size: 64, align: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !968, file: !969, line: 167, baseType: !448, size: 64, align: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !968, file: !969, line: 168, baseType: !448, size: 64, align: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !968, file: !969, line: 169, baseType: !448, size: 64, align: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 170, baseType: !12, size: 32, align: 32, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !968, file: !969, line: 172, baseType: !465, size: 64, align: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !968, file: !969, line: 173, baseType: !12, size: 32, align: 32, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !968, file: !969, line: 174, baseType: !151, size: 128, align: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !968, file: !969, line: 175, baseType: !986, size: 64, align: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !82, line: 144, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !969, line: 129, size: 768, align: 64, elements: !990)
!990 = !{!991, !992, !1004, !1009, !1013, !1017, !1021, !1025, !1026, !1027, !1028, !1033}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !989, file: !969, line: 130, baseType: !22, size: 64, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !989, file: !969, line: 131, baseType: !993, size: 64, align: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64, align: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!996, !216, !12, !1002}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !969, line: 127, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !969, line: 124, size: 128, align: 64, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !998, file: !969, line: 125, baseType: !448, size: 64, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !998, file: !969, line: 126, baseType: !448, size: 64, align: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !82, line: 143, baseType: !968)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !989, file: !969, line: 132, baseType: !1005, size: 64, align: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64, align: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!12, !1002, !506, !1008, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !989, file: !969, line: 134, baseType: !1010, size: 64, align: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64, align: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!12, !216, !12, !996, !1002}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !989, file: !969, line: 136, baseType: !1014, size: 64, align: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!12, !1002, !448, !448, !448, !448, !448, !448, !506, !465}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !989, file: !969, line: 140, baseType: !1018, size: 64, align: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!12, !1002, !448, !448, !498, !498, !506, !465}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !989, file: !969, line: 142, baseType: !1022, size: 64, align: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64, align: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!12, !1002}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !989, file: !969, line: 143, baseType: !1022, size: 64, align: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !989, file: !969, line: 144, baseType: !12, size: 32, align: 32, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !989, file: !969, line: 145, baseType: !14, size: 64, align: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !989, file: !969, line: 147, baseType: !1029, size: 64, align: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64, align: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!12, !1002, !12, !216, !12, !1032, !454, !517}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !989, file: !969, line: 152, baseType: !1022, size: 64, align: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !968, file: !969, line: 177, baseType: !385, size: 64, align: 64, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !890, file: !334, line: 144, baseType: !1036, size: 64, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !890, file: !334, line: 147, baseType: !1038, size: 64, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !878, file: !334, line: 150, baseType: !12, size: 32, align: 32, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !878, file: !334, line: 151, baseType: !1041, size: 64, align: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64, align: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !551, line: 223, size: 256, align: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1042, file: !551, line: 223, baseType: !160, size: 256, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !833, file: !551, line: 250, baseType: !643, size: 64, align: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !833, file: !551, line: 251, baseType: !643, size: 64, align: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !833, file: !551, line: 252, baseType: !1048, size: 64, align: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64, align: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !551, line: 204, size: 256, align: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1049, file: !551, line: 204, baseType: !160, size: 256, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !833, file: !551, line: 253, baseType: !1053, size: 192, align: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !606, line: 269, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !606, line: 265, size: 192, align: 64, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1054, file: !606, line: 266, baseType: !201, size: 64, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1054, file: !606, line: 267, baseType: !118, size: 64, align: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1054, file: !606, line: 268, baseType: !12, size: 32, align: 32, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !828, file: !551, line: 272, baseType: !838, size: 64, align: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !828, file: !551, line: 273, baseType: !643, size: 64, align: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !828, file: !551, line: 274, baseType: !12, size: 32, align: 32, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !828, file: !551, line: 275, baseType: !12, size: 32, align: 32, offset: 224)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !828, file: !551, line: 276, baseType: !14, size: 64, align: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !828, file: !551, line: 277, baseType: !151, size: 128, align: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !828, file: !551, line: 279, baseType: !118, size: 64, align: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !828, file: !551, line: 280, baseType: !118, size: 64, align: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !828, file: !551, line: 281, baseType: !148, size: 64, align: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !828, file: !551, line: 282, baseType: !148, size: 64, align: 64, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !828, file: !551, line: 283, baseType: !148, size: 64, align: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !828, file: !551, line: 284, baseType: !148, size: 64, align: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !828, file: !551, line: 285, baseType: !646, size: 64, align: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !828, file: !551, line: 286, baseType: !1073, size: 64, align: 64, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64, align: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !82, line: 186, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !1076, line: 262, size: 192, align: 64, elements: !1077)
!1076 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1077 = !{!1078, !1079, !1085}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1075, file: !1076, line: 263, baseType: !646, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1075, file: !1076, line: 264, baseType: !1080, size: 64, align: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !1076, line: 209, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !1076, line: 220, size: 256, align: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1082, file: !1076, line: 220, baseType: !160, size: 256, align: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1075, file: !1076, line: 265, baseType: !637, size: 64, align: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !828, file: !551, line: 287, baseType: !1087, size: 64, align: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !82, line: 184, baseType: !1089)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !82, line: 184, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !828, file: !551, line: 288, baseType: !1091, size: 64, align: 64, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64, align: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !1076, line: 259, size: 256, align: 64, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1092, file: !1076, line: 259, baseType: !160, size: 256, align: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !828, file: !551, line: 289, baseType: !1096, size: 64, align: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !828, file: !551, line: 290, baseType: !1098, size: 64, align: 64, offset: 1152)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !82, line: 189, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !1076, line: 332, size: 128, align: 64, elements: !1101)
!1101 = !{!1102, !1107}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !1100, file: !1076, line: 333, baseType: !1103, size: 64, align: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64, align: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !1076, line: 330, size: 256, align: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1104, file: !1076, line: 330, baseType: !160, size: 256, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !1100, file: !1076, line: 334, baseType: !1103, size: 64, align: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !828, file: !551, line: 296, baseType: !1109, size: 160, align: 8, offset: 1216)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 160, align: 8, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 20)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !828, file: !551, line: 298, baseType: !1113, size: 64, align: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !551, line: 268, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !551, line: 262, size: 320, align: 64, elements: !1116)
!1116 = !{!1117, !1122, !1123, !1124, !1125}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1115, file: !551, line: 263, baseType: !1118, size: 64, align: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, align: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !606, line: 801, size: 256, align: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1119, file: !606, line: 801, baseType: !160, size: 256, align: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1115, file: !551, line: 264, baseType: !1118, size: 64, align: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1115, file: !551, line: 265, baseType: !676, size: 64, align: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1115, file: !551, line: 266, baseType: !646, size: 64, align: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1115, file: !551, line: 267, baseType: !1126, size: 64, align: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64, align: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !606, line: 170, size: 256, align: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1127, file: !606, line: 170, baseType: !160, size: 256, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !808, file: !72, line: 543, baseType: !118, size: 64, align: 64, offset: 1472)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !808, file: !72, line: 544, baseType: !12, size: 32, align: 32, offset: 1536)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !808, file: !72, line: 545, baseType: !118, size: 64, align: 64, offset: 1600)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !808, file: !72, line: 546, baseType: !118, size: 64, align: 64, offset: 1664)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !808, file: !72, line: 547, baseType: !34, size: 32, align: 32, offset: 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !808, file: !72, line: 548, baseType: !422, size: 64, align: 64, offset: 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !808, file: !72, line: 549, baseType: !148, size: 64, align: 64, offset: 1856)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !808, file: !72, line: 551, baseType: !1138, size: 64, align: 64, offset: 1920)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64, align: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !72, line: 380, size: 256, align: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1139, file: !72, line: 380, baseType: !160, size: 256, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !808, file: !72, line: 552, baseType: !151, size: 128, align: 64, offset: 1984)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !808, file: !72, line: 557, baseType: !1144, size: 64, align: 64, offset: 2112)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !72, line: 557, baseType: !1144, size: 64, align: 64, offset: 2176)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !808, file: !72, line: 559, baseType: !14, size: 64, align: 64, offset: 2240)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !808, file: !72, line: 561, baseType: !193, size: 64, align: 64, offset: 2304)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !808, file: !72, line: 562, baseType: !201, size: 64, align: 64, offset: 2368)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !808, file: !72, line: 563, baseType: !193, size: 64, align: 64, offset: 2432)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !808, file: !72, line: 564, baseType: !201, size: 64, align: 64, offset: 2496)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !808, file: !72, line: 567, baseType: !201, size: 64, align: 64, offset: 2560)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !808, file: !72, line: 568, baseType: !193, size: 64, align: 64, offset: 2624)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !808, file: !72, line: 569, baseType: !118, size: 64, align: 64, offset: 2688)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !808, file: !72, line: 572, baseType: !14, size: 64, align: 64, offset: 2752)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !800, file: !750, line: 144, baseType: !760, size: 16, align: 16, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !749, file: !750, line: 222, baseType: !791, size: 704, align: 64, offset: 5952)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !749, file: !750, line: 223, baseType: !1158, size: 96, align: 32, offset: 6656)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !750, line: 162, size: 96, align: 32, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1158, file: !750, line: 164, baseType: !34, size: 32, align: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1158, file: !750, line: 166, baseType: !34, size: 32, align: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1158, file: !750, line: 168, baseType: !34, size: 32, align: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !749, file: !750, line: 227, baseType: !1164, size: 128, align: 64, offset: 6784)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1165, line: 30, size: 128, align: 64, elements: !1166)
!1165 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1166 = !{!1167, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1164, file: !1165, line: 32, baseType: !1168, size: 64, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1169, line: 139, baseType: !118)
!1169 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1164, file: !1165, line: 33, baseType: !1171, size: 64, align: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !1169, line: 141, baseType: !118)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !749, file: !750, line: 229, baseType: !760, size: 16, align: 16, offset: 6912)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !749, file: !750, line: 234, baseType: !314, size: 16, align: 8, offset: 6928)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !749, file: !750, line: 235, baseType: !34, size: 32, align: 32, offset: 6944)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !749, file: !750, line: 236, baseType: !1176, size: 96, align: 8, offset: 6976)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 96, align: 8, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 12)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !749, file: !750, line: 237, baseType: !34, size: 32, align: 32, offset: 7072)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !749, file: !750, line: 238, baseType: !34, size: 32, align: 32, offset: 7104)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !749, file: !750, line: 243, baseType: !34, size: 32, align: 32, offset: 7136)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !83, file: !72, line: 1494, baseType: !12, size: 32, align: 32, offset: 1152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !83, file: !72, line: 1497, baseType: !1184, size: 64, align: 64, offset: 1216)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64, align: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !12, !12, !12, !172, !193, !80, !4}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !83, file: !72, line: 1499, baseType: !4, size: 64, align: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !83, file: !72, line: 1500, baseType: !12, size: 32, align: 32, offset: 1344)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !83, file: !72, line: 1501, baseType: !1190, size: 64, align: 64, offset: 1408)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64, align: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1192, line: 177, baseType: !1193)
!1192 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1192, line: 167, size: 512, align: 64, elements: !1194)
!1194 = !{!1195, !1196, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1193, file: !1192, line: 168, baseType: !14, size: 64, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1193, file: !1192, line: 169, baseType: !1197, size: 64, align: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1198, line: 75, baseType: !1168)
!1198 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1193, file: !1192, line: 170, baseType: !148, size: 64, align: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1192, line: 171, baseType: !148, size: 64, align: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1193, file: !1192, line: 172, baseType: !12, size: 32, align: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1193, file: !1192, line: 173, baseType: !12, size: 32, align: 32, offset: 288)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1193, file: !1192, line: 174, baseType: !12, size: 32, align: 32, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1193, file: !1192, line: 175, baseType: !1118, size: 64, align: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1193, file: !1192, line: 176, baseType: !1206, size: 64, align: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64, align: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1192, line: 159, baseType: !1208)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1192, line: 159, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !83, file: !72, line: 1507, baseType: !1138, size: 64, align: 64, offset: 1472)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !83, file: !72, line: 1508, baseType: !1138, size: 64, align: 64, offset: 1536)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !83, file: !72, line: 1513, baseType: !12, size: 32, align: 32, offset: 1600)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !83, file: !72, line: 1514, baseType: !572, size: 64, align: 64, offset: 1664)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !83, file: !72, line: 1515, baseType: !331, size: 64, align: 64, offset: 1728)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !83, file: !72, line: 1517, baseType: !713, size: 64, align: 64, offset: 1792)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !83, file: !72, line: 1521, baseType: !572, size: 64, align: 64, offset: 1856)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !83, file: !72, line: 1522, baseType: !331, size: 64, align: 64, offset: 1920)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !83, file: !72, line: 1524, baseType: !713, size: 64, align: 64, offset: 1984)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !83, file: !72, line: 1531, baseType: !1219, size: 64, align: 64, offset: 2048)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64, align: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !72, line: 1035, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !83, file: !72, line: 1536, baseType: !34, size: 32, align: 32, offset: 2112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !83, file: !72, line: 1537, baseType: !238, size: 256, align: 8, offset: 2144)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !83, file: !72, line: 1539, baseType: !806, size: 64, align: 64, offset: 2432)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !83, file: !72, line: 1541, baseType: !1225, size: 64, align: 64, offset: 2496)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !72, line: 905, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64, align: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!12, !1229, !201, !369}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !83, file: !72, line: 1547, baseType: !12, size: 32, align: 32, offset: 2560)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !83, file: !72, line: 1549, baseType: !1233, size: 64, align: 64, offset: 2624)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64, align: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!12, !12, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64, align: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !82, line: 162, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1192, line: 236, size: 1984, align: 64, elements: !1239)
!1239 = !{!1240, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1238, file: !1192, line: 237, baseType: !1241, size: 64, align: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !82, line: 161, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1192, line: 186, size: 1152, align: 64, elements: !1244)
!1244 = !{!1245, !1246, !1251, !1256, !1257, !1261, !1262, !1267, !1271, !1272, !1339, !1343, !1347, !1355, !1363, !1364, !1365}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1243, file: !1192, line: 188, baseType: !12, size: 32, align: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1243, file: !1192, line: 189, baseType: !1247, size: 64, align: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64, align: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1192, line: 137, size: 256, align: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1248, file: !1192, line: 137, baseType: !160, size: 256, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1243, file: !1192, line: 191, baseType: !1252, size: 64, align: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64, align: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1192, line: 136, size: 256, align: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1253, file: !1192, line: 136, baseType: !160, size: 256, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1243, file: !1192, line: 192, baseType: !1190, size: 64, align: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1243, file: !1192, line: 195, baseType: !1258, size: 64, align: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64, align: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!12, !1236}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1243, file: !1192, line: 197, baseType: !1233, size: 64, align: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1243, file: !1192, line: 199, baseType: !1263, size: 64, align: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64, align: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!12, !1266, !1236, !826}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1243, file: !1192, line: 201, baseType: !1268, size: 64, align: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64, align: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!12, !1236, !826, !826}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1243, file: !1192, line: 203, baseType: !1258, size: 64, align: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1243, file: !1192, line: 205, baseType: !1273, size: 64, align: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64, align: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!12, !1236, !1276, !826}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64, align: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64, align: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !82, line: 156, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !551, line: 452, size: 960, align: 64, elements: !1280)
!1280 = !{!1281, !1298, !1299, !1300, !1301, !1302, !1303, !1325, !1326, !1327, !1328, !1329, !1330, !1333, !1338}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1279, file: !551, line: 454, baseType: !1282, size: 64, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !551, line: 450, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !551, line: 441, size: 640, align: 64, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1296, !1297}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1284, file: !551, line: 442, baseType: !637, size: 64, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1284, file: !551, line: 443, baseType: !838, size: 64, align: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1284, file: !551, line: 444, baseType: !845, size: 64, align: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1284, file: !551, line: 445, baseType: !864, size: 64, align: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1284, file: !551, line: 446, baseType: !864, size: 64, align: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1284, file: !551, line: 447, baseType: !1292, size: 64, align: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64, align: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !551, line: 438, size: 256, align: 64, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1293, file: !551, line: 438, baseType: !160, size: 256, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1284, file: !551, line: 448, baseType: !1048, size: 64, align: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1284, file: !551, line: 449, baseType: !1053, size: 192, align: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1279, file: !551, line: 455, baseType: !838, size: 64, align: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1279, file: !551, line: 456, baseType: !643, size: 64, align: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1279, file: !551, line: 457, baseType: !12, size: 32, align: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !551, line: 458, baseType: !12, size: 32, align: 32, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1279, file: !551, line: 460, baseType: !1073, size: 64, align: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1279, file: !551, line: 461, baseType: !1304, size: 64, align: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !82, line: 188, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !1076, line: 356, size: 256, align: 64, elements: !1307)
!1307 = !{!1308, !1320, !1321, !1322, !1323, !1324}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !1306, file: !1076, line: 357, baseType: !1309, size: 64, align: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !1076, line: 234, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !1076, line: 226, size: 192, align: 64, elements: !1312)
!1312 = !{!1313, !1314, !1319}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1311, file: !1076, line: 227, baseType: !12, size: 32, align: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1311, file: !1076, line: 231, baseType: !1315, size: 64, align: 64, offset: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !1076, line: 228, size: 64, align: 64, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1315, file: !1076, line: 229, baseType: !1080, size: 64, align: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !1315, file: !1076, line: 230, baseType: !850, size: 64, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !1311, file: !1076, line: 233, baseType: !845, size: 64, align: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !1306, file: !1076, line: 358, baseType: !12, size: 32, align: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !1306, file: !1076, line: 359, baseType: !12, size: 32, align: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !1306, file: !1076, line: 360, baseType: !643, size: 64, align: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !1306, file: !1076, line: 361, baseType: !12, size: 32, align: 32, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !1306, file: !1076, line: 362, baseType: !12, size: 32, align: 32, offset: 224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1279, file: !551, line: 463, baseType: !12, size: 32, align: 32, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1279, file: !551, line: 464, baseType: !12, size: 32, align: 32, offset: 416)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1279, file: !551, line: 466, baseType: !637, size: 64, align: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1279, file: !551, line: 467, baseType: !637, size: 64, align: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1279, file: !551, line: 469, baseType: !1109, size: 160, align: 8, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1279, file: !551, line: 471, baseType: !1331, size: 64, align: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64, align: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !551, line: 471, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1279, file: !551, line: 472, baseType: !1334, size: 64, align: 64, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !82, line: 157, baseType: !1337)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !82, line: 157, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1279, file: !551, line: 473, baseType: !4, size: 64, align: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1243, file: !1192, line: 207, baseType: !1340, size: 64, align: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64, align: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!12, !1236, !1277}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1243, file: !1192, line: 209, baseType: !1344, size: 64, align: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64, align: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!12, !1236, !1277, !826}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1243, file: !1192, line: 210, baseType: !1348, size: 64, align: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64, align: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1236, !845}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64, align: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !551, line: 301, size: 256, align: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1352, file: !551, line: 301, baseType: !160, size: 256, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1243, file: !1192, line: 211, baseType: !1356, size: 64, align: 64, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64, align: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1359, !1236, !845}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64, align: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !551, line: 476, size: 256, align: 64, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1360, file: !551, line: 476, baseType: !160, size: 256, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1243, file: !1192, line: 212, baseType: !1258, size: 64, align: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1243, file: !1192, line: 213, baseType: !151, size: 128, align: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1243, file: !1192, line: 214, baseType: !12, size: 32, align: 32, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1238, file: !1192, line: 239, baseType: !12, size: 32, align: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1238, file: !1192, line: 242, baseType: !826, size: 64, align: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1238, file: !1192, line: 244, baseType: !1351, size: 64, align: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1238, file: !1192, line: 246, baseType: !1359, size: 64, align: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1238, file: !1192, line: 247, baseType: !1190, size: 64, align: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1238, file: !1192, line: 249, baseType: !4, size: 64, align: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1238, file: !1192, line: 252, baseType: !1258, size: 64, align: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1238, file: !1192, line: 254, baseType: !1233, size: 64, align: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1238, file: !1192, line: 256, baseType: !1263, size: 64, align: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1238, file: !1192, line: 258, baseType: !1268, size: 64, align: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1238, file: !1192, line: 260, baseType: !1258, size: 64, align: 64, offset: 704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1238, file: !1192, line: 262, baseType: !1273, size: 64, align: 64, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1238, file: !1192, line: 264, baseType: !1340, size: 64, align: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1238, file: !1192, line: 266, baseType: !1344, size: 64, align: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1238, file: !1192, line: 267, baseType: !1258, size: 64, align: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1238, file: !1192, line: 268, baseType: !1348, size: 64, align: 64, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1238, file: !1192, line: 269, baseType: !1356, size: 64, align: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1238, file: !1192, line: 270, baseType: !1258, size: 64, align: 64, offset: 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1238, file: !1192, line: 273, baseType: !12, size: 32, align: 32, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1238, file: !1192, line: 275, baseType: !12, size: 32, align: 32, offset: 1248)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1238, file: !1192, line: 277, baseType: !1351, size: 64, align: 64, offset: 1280)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1238, file: !1192, line: 279, baseType: !1388, size: 64, align: 64, offset: 1344)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64, align: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !82, line: 183, baseType: !1390)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !82, line: 183, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1238, file: !1192, line: 281, baseType: !12, size: 32, align: 32, offset: 1408)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1238, file: !1192, line: 283, baseType: !12, size: 32, align: 32, offset: 1440)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1238, file: !1192, line: 284, baseType: !12, size: 32, align: 32, offset: 1472)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1238, file: !1192, line: 285, baseType: !826, size: 64, align: 64, offset: 1536)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1238, file: !1192, line: 287, baseType: !826, size: 64, align: 64, offset: 1600)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1238, file: !1192, line: 289, baseType: !1277, size: 64, align: 64, offset: 1664)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1238, file: !1192, line: 291, baseType: !12, size: 32, align: 32, offset: 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1238, file: !1192, line: 293, baseType: !34, size: 32, align: 32, offset: 1760)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1238, file: !1192, line: 295, baseType: !1236, size: 64, align: 64, offset: 1792)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1238, file: !1192, line: 296, baseType: !151, size: 128, align: 64, offset: 1856)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !83, file: !72, line: 1551, baseType: !1402, size: 64, align: 64, offset: 2688)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64, align: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !1229, !12, !12}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !83, file: !72, line: 1553, baseType: !12, size: 32, align: 32, offset: 2752)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !83, file: !72, line: 1555, baseType: !12, size: 32, align: 32, offset: 2784)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !83, file: !72, line: 1561, baseType: !1408, size: 64, align: 64, offset: 2816)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64, align: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!34, !80, !22, !14, !34, !201, !34}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !83, file: !72, line: 1566, baseType: !1412, size: 64, align: 64, offset: 2880)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64, align: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!34, !80, !22, !201, !34}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !83, file: !72, line: 1570, baseType: !1416, size: 64, align: 64, offset: 2944)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !82, line: 179, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !72, line: 925, size: 6400, align: 64, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1425, !1430, !1431, !1432, !1433, !1434, !1435, !1440, !1445, !1449, !1463, !1464, !1468, !1469, !1475, !1476, !1481, !1485, !1489, !1490, !1491, !1492, !1493, !1494, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1521, !1522, !1523, !1524, !1525, !1540, !1544, !1545, !1549, !1550, !1551, !1552, !1553, !1554, !1557, !1558, !1581, !1586, !1587, !1592, !1593, !1598, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1418, file: !72, line: 926, baseType: !69, size: 64, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !1418, file: !72, line: 927, baseType: !1138, size: 64, align: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !1418, file: !72, line: 929, baseType: !1138, size: 64, align: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !1418, file: !72, line: 930, baseType: !1424, size: 64, align: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64, align: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !1418, file: !72, line: 931, baseType: !1426, size: 64, align: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64, align: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !72, line: 923, size: 32, align: 32, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1427, file: !72, line: 923, baseType: !12, size: 32, align: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !1418, file: !72, line: 936, baseType: !148, size: 64, align: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !1418, file: !72, line: 937, baseType: !1144, size: 64, align: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !1418, file: !72, line: 938, baseType: !1144, size: 64, align: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !1418, file: !72, line: 944, baseType: !12, size: 32, align: 32, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !1418, file: !72, line: 950, baseType: !118, size: 64, align: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !1418, file: !72, line: 960, baseType: !1436, size: 64, align: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64, align: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!12, !1439, !806}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !1418, file: !72, line: 961, baseType: !1441, size: 64, align: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64, align: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1444, !806}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !1418, file: !72, line: 962, baseType: !1446, size: 64, align: 64, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64, align: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!806, !1439, !201, !12, !1032}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1418, file: !72, line: 980, baseType: !1450, size: 352, align: 32, offset: 832)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !72, line: 964, size: 352, align: 32, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1450, file: !72, line: 965, baseType: !12, size: 32, align: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1450, file: !72, line: 966, baseType: !12, size: 32, align: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1450, file: !72, line: 967, baseType: !12, size: 32, align: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1450, file: !72, line: 968, baseType: !12, size: 32, align: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1450, file: !72, line: 969, baseType: !12, size: 32, align: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1450, file: !72, line: 970, baseType: !12, size: 32, align: 32, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1450, file: !72, line: 971, baseType: !12, size: 32, align: 32, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1450, file: !72, line: 972, baseType: !12, size: 32, align: 32, offset: 224)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1450, file: !72, line: 973, baseType: !12, size: 32, align: 32, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1450, file: !72, line: 974, baseType: !12, size: 32, align: 32, offset: 288)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1450, file: !72, line: 975, baseType: !12, size: 32, align: 32, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1418, file: !72, line: 982, baseType: !12, size: 32, align: 32, offset: 1184)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !1418, file: !72, line: 985, baseType: !1465, size: 64, align: 64, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64, align: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!12, !1236, !4}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !1418, file: !72, line: 986, baseType: !4, size: 64, align: 64, offset: 1280)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !1418, file: !72, line: 993, baseType: !1470, size: 64, align: 64, offset: 1344)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64, align: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1472, line: 389, baseType: !1473)
!1472 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!12, !14, !12, !12, !4}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !1418, file: !72, line: 996, baseType: !4, size: 64, align: 64, offset: 1408)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !1418, file: !72, line: 999, baseType: !1477, size: 64, align: 64, offset: 1472)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64, align: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!12, !80, !1266, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !1418, file: !72, line: 1002, baseType: !1482, size: 64, align: 64, offset: 1536)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64, align: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!12, !80, !201, !369}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !1418, file: !72, line: 1006, baseType: !1486, size: 64, align: 64, offset: 1600)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64, align: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!12, !80, !201, !34}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1418, file: !72, line: 1009, baseType: !151, size: 128, align: 64, offset: 1664)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !1418, file: !72, line: 1011, baseType: !337, size: 64, align: 64, offset: 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !1418, file: !72, line: 1012, baseType: !337, size: 64, align: 64, offset: 1856)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !1418, file: !72, line: 1013, baseType: !337, size: 64, align: 64, offset: 1920)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !1418, file: !72, line: 1015, baseType: !1351, size: 64, align: 64, offset: 1984)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !1418, file: !72, line: 1016, baseType: !1495, size: 64, align: 64, offset: 2048)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64, align: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !72, line: 922, size: 256, align: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1496, file: !72, line: 922, baseType: !160, size: 256, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !1418, file: !72, line: 1021, baseType: !1402, size: 64, align: 64, offset: 2112)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !1418, file: !72, line: 1024, baseType: !549, size: 64, align: 64, offset: 2176)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1418, file: !72, line: 1031, baseType: !148, size: 64, align: 64, offset: 2240)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1418, file: !72, line: 1032, baseType: !148, size: 64, align: 64, offset: 2304)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !1418, file: !72, line: 1033, baseType: !118, size: 64, align: 64, offset: 2368)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1418, file: !72, line: 1035, baseType: !1219, size: 64, align: 64, offset: 2432)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1418, file: !72, line: 1036, baseType: !12, size: 32, align: 32, offset: 2496)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !1418, file: !72, line: 1039, baseType: !1184, size: 64, align: 64, offset: 2560)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !1418, file: !72, line: 1041, baseType: !4, size: 64, align: 64, offset: 2624)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !1418, file: !72, line: 1043, baseType: !12, size: 32, align: 32, offset: 2688)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1418, file: !72, line: 1044, baseType: !34, size: 32, align: 32, offset: 2720)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1418, file: !72, line: 1045, baseType: !238, size: 256, align: 8, offset: 2752)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !1418, file: !72, line: 1047, baseType: !1233, size: 64, align: 64, offset: 3008)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !1418, file: !72, line: 1050, baseType: !1225, size: 64, align: 64, offset: 3072)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1418, file: !72, line: 1052, baseType: !1190, size: 64, align: 64, offset: 3136)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !1418, file: !72, line: 1059, baseType: !12, size: 32, align: 32, offset: 3200)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !1418, file: !72, line: 1065, baseType: !34, size: 32, align: 32, offset: 3232)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !1418, file: !72, line: 1071, baseType: !385, size: 64, align: 64, offset: 3264)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !1418, file: !72, line: 1076, baseType: !1518, size: 64, align: 64, offset: 3328)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64, align: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!12, !80, !1032, !4}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !1418, file: !72, line: 1077, baseType: !4, size: 64, align: 64, offset: 3392)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !1418, file: !72, line: 1079, baseType: !243, size: 128, align: 8, offset: 3456)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !1418, file: !72, line: 1080, baseType: !243, size: 128, align: 8, offset: 3584)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !1418, file: !72, line: 1081, baseType: !243, size: 128, align: 8, offset: 3712)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !1418, file: !72, line: 1083, baseType: !1526, size: 64, align: 64, offset: 3840)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64, align: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!12, !80, !201, !201, !572, !1529, !12}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64, align: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1531, line: 82, baseType: !1532)
!1531 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1531, line: 75, size: 2304, align: 64, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1532, file: !1531, line: 76, baseType: !337, size: 64, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1532, file: !1531, line: 77, baseType: !332, size: 384, align: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1532, file: !1531, line: 78, baseType: !332, size: 384, align: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1532, file: !1531, line: 79, baseType: !332, size: 384, align: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1532, file: !1531, line: 80, baseType: !34, size: 32, align: 32, offset: 1216)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1532, file: !1531, line: 81, baseType: !412, size: 1024, align: 8, offset: 1248)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !1418, file: !72, line: 1090, baseType: !1541, size: 64, align: 64, offset: 3904)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64, align: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!12, !80, !4}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !1418, file: !72, line: 1091, baseType: !4, size: 64, align: 64, offset: 3968)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !1418, file: !72, line: 1094, baseType: !1546, size: 64, align: 64, offset: 4032)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64, align: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!12, !80, !4, !193, !4}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !1418, file: !72, line: 1096, baseType: !4, size: 64, align: 64, offset: 4096)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1418, file: !72, line: 1100, baseType: !14, size: 64, align: 64, offset: 4160)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !1418, file: !72, line: 1101, baseType: !1408, size: 64, align: 64, offset: 4224)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !1418, file: !72, line: 1106, baseType: !1412, size: 64, align: 64, offset: 4288)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !1418, file: !72, line: 1113, baseType: !34, size: 32, align: 32, offset: 4352)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !1418, file: !72, line: 1114, baseType: !1555, size: 64, align: 64, offset: 4416)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64, align: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !72, line: 1114, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !1418, file: !72, line: 1115, baseType: !1555, size: 64, align: 64, offset: 4480)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !1418, file: !72, line: 1118, baseType: !1559, size: 1024, align: 64, offset: 4544)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !72, line: 864, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !72, line: 849, size: 1024, align: 64, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1560, file: !72, line: 851, baseType: !4, size: 64, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1560, file: !72, line: 853, baseType: !1518, size: 64, align: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1560, file: !72, line: 855, baseType: !1541, size: 64, align: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1560, file: !72, line: 857, baseType: !1566, size: 64, align: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64, align: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!14, !80, !4}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1560, file: !72, line: 858, baseType: !14, size: 64, align: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1560, file: !72, line: 859, baseType: !448, size: 64, align: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1560, file: !72, line: 859, baseType: !448, size: 64, align: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1560, file: !72, line: 859, baseType: !448, size: 64, align: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1560, file: !72, line: 859, baseType: !448, size: 64, align: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1560, file: !72, line: 859, baseType: !448, size: 64, align: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1560, file: !72, line: 860, baseType: !448, size: 64, align: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1560, file: !72, line: 860, baseType: !448, size: 64, align: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1560, file: !72, line: 860, baseType: !448, size: 64, align: 64, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1560, file: !72, line: 861, baseType: !14, size: 64, align: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1560, file: !72, line: 862, baseType: !12, size: 32, align: 32, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1560, file: !72, line: 863, baseType: !148, size: 64, align: 64, offset: 960)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !1418, file: !72, line: 1131, baseType: !1582, size: 64, align: 64, offset: 5568)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64, align: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!12, !80, !1585, !369, !4}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !1418, file: !72, line: 1133, baseType: !4, size: 64, align: 64, offset: 5632)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !1418, file: !72, line: 1138, baseType: !1588, size: 64, align: 64, offset: 5696)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64, align: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!12, !80, !1591, !201, !216, !34, !4}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !1418, file: !72, line: 1142, baseType: !4, size: 64, align: 64, offset: 5760)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !1418, file: !72, line: 1145, baseType: !1594, size: 64, align: 64, offset: 5824)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64, align: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !72, line: 388, size: 256, align: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1595, file: !72, line: 388, baseType: !160, size: 256, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !1418, file: !72, line: 1162, baseType: !1599, size: 64, align: 64, offset: 5888)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64, align: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!12, !80, !1585, !201, !216, !34, !4}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !1418, file: !72, line: 1167, baseType: !4, size: 64, align: 64, offset: 5952)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !1418, file: !72, line: 1173, baseType: !201, size: 64, align: 64, offset: 6016)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !1418, file: !72, line: 1174, baseType: !34, size: 32, align: 32, offset: 6080)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1418, file: !72, line: 1178, baseType: !193, size: 64, align: 64, offset: 6144)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1418, file: !72, line: 1179, baseType: !201, size: 64, align: 64, offset: 6208)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1418, file: !72, line: 1180, baseType: !193, size: 64, align: 64, offset: 6272)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1418, file: !72, line: 1181, baseType: !201, size: 64, align: 64, offset: 6336)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !83, file: !72, line: 1575, baseType: !12, size: 32, align: 32, offset: 3008)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !83, file: !72, line: 1577, baseType: !118, size: 64, align: 64, offset: 3072)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !83, file: !72, line: 1578, baseType: !151, size: 128, align: 64, offset: 3136)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !83, file: !72, line: 1580, baseType: !549, size: 64, align: 64, offset: 3264)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !83, file: !72, line: 1581, baseType: !12, size: 32, align: 32, offset: 3328)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !83, file: !72, line: 1583, baseType: !148, size: 64, align: 64, offset: 3392)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !83, file: !72, line: 1585, baseType: !148, size: 64, align: 64, offset: 3456)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !83, file: !72, line: 1586, baseType: !118, size: 64, align: 64, offset: 3520)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !83, file: !72, line: 1587, baseType: !12, size: 32, align: 32, offset: 3584)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !83, file: !72, line: 1589, baseType: !12, size: 32, align: 32, offset: 3616)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !83, file: !72, line: 1590, baseType: !34, size: 32, align: 32, offset: 3648)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !83, file: !72, line: 1593, baseType: !1621, size: 64, align: 64, offset: 3712)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64, align: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !80, !12, !12, !201, !12, !4}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !83, file: !72, line: 1595, baseType: !4, size: 64, align: 64, offset: 3776)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !83, file: !72, line: 1596, baseType: !14, size: 64, align: 64, offset: 3840)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !83, file: !72, line: 1603, baseType: !12, size: 32, align: 32, offset: 3904)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !83, file: !72, line: 1606, baseType: !12, size: 32, align: 32, offset: 3936)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !83, file: !72, line: 1608, baseType: !12, size: 32, align: 32, offset: 3968)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !83, file: !72, line: 1610, baseType: !1630, size: 64, align: 64, offset: 4032)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64, align: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !72, line: 1610, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !83, file: !72, line: 1611, baseType: !1633, size: 64, align: 64, offset: 4096)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !551, line: 202, baseType: !1049)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !83, file: !72, line: 1613, baseType: !201, size: 64, align: 64, offset: 4160)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !83, file: !72, line: 1614, baseType: !12, size: 32, align: 32, offset: 4224)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !83, file: !72, line: 1616, baseType: !12, size: 32, align: 32, offset: 4256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !83, file: !72, line: 1618, baseType: !193, size: 64, align: 64, offset: 4288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !83, file: !72, line: 1620, baseType: !201, size: 64, align: 64, offset: 4352)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !83, file: !72, line: 1621, baseType: !193, size: 64, align: 64, offset: 4416)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !83, file: !72, line: 1623, baseType: !201, size: 64, align: 64, offset: 4480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !83, file: !72, line: 1629, baseType: !4, size: 64, align: 64, offset: 4544)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !83, file: !72, line: 1630, baseType: !193, size: 64, align: 64, offset: 4608)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !83, file: !72, line: 1632, baseType: !1645, size: 64, align: 64, offset: 4672)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !72, line: 373, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1648, line: 802, size: 128, align: 64, elements: !1649)
!1648 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1647, file: !1648, line: 803, baseType: !760, size: 16, align: 16)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1647, file: !1648, line: 804, baseType: !4, size: 64, align: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !83, file: !72, line: 1634, baseType: !1653, size: 64, align: 64, offset: 4736)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !72, line: 390, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64, align: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!12, !80, !216, !12, !4}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !83, file: !72, line: 1635, baseType: !4, size: 64, align: 64, offset: 4800)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !83, file: !72, line: 1637, baseType: !1659, size: 64, align: 64, offset: 4864)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !72, line: 393, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64, align: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!12, !80, !4, !1032, !1138, !1663, !4}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !83, file: !72, line: 1638, baseType: !4, size: 64, align: 64, offset: 4928)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !83, file: !72, line: 1639, baseType: !1416, size: 64, align: 64, offset: 4992)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !83, file: !72, line: 1648, baseType: !201, size: 64, align: 64, offset: 5056)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !83, file: !72, line: 1649, baseType: !202, size: 8, align: 8, offset: 5120)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !83, file: !72, line: 1653, baseType: !1594, size: 64, align: 64, offset: 5184)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !83, file: !72, line: 1655, baseType: !1671, size: 64, align: 64, offset: 5248)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !72, line: 386, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !72, line: 383, size: 128, align: 64, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !72, line: 384, baseType: !22, size: 64, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1673, file: !72, line: 385, baseType: !148, size: 64, align: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !83, file: !72, line: 1662, baseType: !34, size: 32, align: 32, offset: 5312)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !83, file: !72, line: 1664, baseType: !34, size: 32, align: 32, offset: 5344)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !83, file: !72, line: 1666, baseType: !34, size: 32, align: 32, offset: 5376)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !83, file: !72, line: 1675, baseType: !12, size: 32, align: 32, offset: 5408)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !83, file: !72, line: 1678, baseType: !1559, size: 1024, align: 64, offset: 5440)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !83, file: !72, line: 1685, baseType: !201, size: 64, align: 64, offset: 6464)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !83, file: !72, line: 1686, baseType: !34, size: 32, align: 32, offset: 6528)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !73, file: !72, line: 441, baseType: !1685, size: 64, align: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64, align: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !80}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !73, file: !72, line: 442, baseType: !1685, size: 64, align: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !73, file: !72, line: 443, baseType: !77, size: 64, align: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !73, file: !72, line: 444, baseType: !77, size: 64, align: 64, offset: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !73, file: !72, line: 445, baseType: !1692, size: 64, align: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64, align: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!12, !80, !4, !12}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !73, file: !72, line: 446, baseType: !1692, size: 64, align: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !73, file: !72, line: 447, baseType: !1697, size: 64, align: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64, align: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!12, !80, !172, !12}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !73, file: !72, line: 448, baseType: !77, size: 64, align: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !73, file: !72, line: 449, baseType: !77, size: 64, align: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !73, file: !72, line: 450, baseType: !77, size: 64, align: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !73, file: !72, line: 451, baseType: !1704, size: 64, align: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64, align: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!118, !80, !12, !12, !12, !118, !1032}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !73, file: !72, line: 453, baseType: !1708, size: 64, align: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64, align: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!12, !80, !12, !201, !12, !12}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !73, file: !72, line: 455, baseType: !1712, size: 64, align: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64, align: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!12, !80, !12, !172, !12}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !73, file: !72, line: 456, baseType: !77, size: 64, align: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !73, file: !72, line: 457, baseType: !1717, size: 64, align: 64, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64, align: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!118, !80, !12, !118, !4}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !73, file: !72, line: 458, baseType: !1721, size: 64, align: 64, offset: 1088)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64, align: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!118, !1416, !12, !118, !4}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !73, file: !72, line: 459, baseType: !1725, size: 64, align: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64, align: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!422, !216}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !73, file: !72, line: 460, baseType: !1729, size: 64, align: 64, offset: 1216)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64, align: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!12, !422, !201}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !73, file: !72, line: 461, baseType: !1733, size: 64, align: 64, offset: 1280)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64, align: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!12, !1229}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !73, file: !72, line: 462, baseType: !1737, size: 64, align: 64, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64, align: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!12}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !73, file: !72, line: 463, baseType: !1741, size: 64, align: 64, offset: 1408)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64, align: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!422, !34}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !73, file: !72, line: 464, baseType: !1745, size: 64, align: 64, offset: 1472)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64, align: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1748, !12}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !73, file: !72, line: 465, baseType: !733, size: 64, align: 64, offset: 1536)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !73, file: !72, line: 466, baseType: !1752, size: 64, align: 64, offset: 1600)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64, align: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !72, line: 466, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !73, file: !72, line: 467, baseType: !1737, size: 64, align: 64, offset: 1664)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !73, file: !72, line: 468, baseType: !1756, size: 64, align: 64, offset: 1728)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64, align: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!118, !80, !12, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64, align: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !73, file: !72, line: 469, baseType: !1763, size: 64, align: 64, offset: 1792)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64, align: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!118, !1416, !12, !1759}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cacrt", scope: !31, file: !30, line: 110, baseType: !826, size: 64, align: 64, offset: 1216)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cakey", scope: !31, file: !30, line: 111, baseType: !876, size: 64, align: 64, offset: 1280)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !31, file: !30, line: 112, baseType: !876, size: 64, align: 64, offset: 1344)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !31, file: !30, line: 113, baseType: !1351, size: 64, align: 64, offset: 1408)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "clientcrt", scope: !31, file: !30, line: 114, baseType: !826, size: 64, align: 64, offset: 1472)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "clientkey", scope: !31, file: !30, line: 115, baseType: !876, size: 64, align: 64, offset: 1536)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !31, file: !30, line: 117, baseType: !440, size: 64, align: 64, offset: 1600)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ecdhcurve", scope: !31, file: !30, line: 120, baseType: !14, size: 64, align: 64, offset: 1664)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !31, file: !30, line: 122, baseType: !1775, size: 64, align: 64, offset: 1728)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxyspec_t", file: !30, line: 54, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxyspec", file: !30, line: 37, size: 2496, align: 64, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1795, !1798, !1799, !1800, !1801, !1802, !1817, !1822}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1777, file: !30, line: 38, baseType: !34, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "http", scope: !1777, file: !30, line: 39, baseType: !34, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1777, file: !30, line: 40, baseType: !34, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !1777, file: !30, line: 41, baseType: !34, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addr", scope: !1777, file: !30, line: 42, baseType: !1784, size: 1024, align: 64, offset: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !1785, line: 166, size: 1024, align: 64, elements: !1786)
!1785 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1786 = !{!1787, !1790, !1794}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1784, file: !1785, line: 168, baseType: !1788, size: 16, align: 16)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !1789, line: 28, baseType: !760)
!1789 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1784, file: !1785, line: 169, baseType: !1791, size: 944, align: 8, offset: 16)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 944, align: 8, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 118)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1784, file: !1785, line: 170, baseType: !148, size: 64, align: 64, offset: 960)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addrlen", scope: !1777, file: !30, line: 43, baseType: !1796, size: 32, align: 32, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !1785, line: 33, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !1169, line: 189, baseType: !34)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addr", scope: !1777, file: !30, line: 47, baseType: !1784, size: 1024, align: 64, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addrlen", scope: !1777, file: !30, line: 48, baseType: !1796, size: 32, align: 32, offset: 2176)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sni_port", scope: !1777, file: !30, line: 49, baseType: !760, size: 16, align: 16, offset: 2208)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "natengine", scope: !1777, file: !30, line: 50, baseType: !14, size: 64, align: 64, offset: 2240)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "natlookup", scope: !1777, file: !30, line: 51, baseType: !1803, size: 64, align: 64, offset: 2304)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !1804, line: 39, baseType: !1805)
!1804 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64, align: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!12, !1808, !1816, !12, !1808, !1796}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64, align: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !1785, line: 153, size: 128, align: 16, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !1809, file: !1785, line: 155, baseType: !1788, size: 16, align: 16)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !1809, file: !1785, line: 156, baseType: !1813, size: 112, align: 8, offset: 16)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, align: 8, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 14)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "natsocket", scope: !1777, file: !30, line: 52, baseType: !1818, size: 64, align: 64, offset: 2368)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !1804, line: 41, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64, align: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!12, !12}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1777, file: !30, line: 53, baseType: !1823, size: 64, align: 64, offset: 2432)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64, align: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "crlurl", scope: !31, file: !30, line: 123, baseType: !14, size: 64, align: 64, offset: 1792)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "verify_peer", scope: !31, file: !30, line: 124, baseType: !34, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "allow_wrong_host", scope: !31, file: !30, line: 125, baseType: !34, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!1827 = !DILocation(line: 330, column: 10, scope: !8)
!1828 = !DILocalVariable(name: "natengine", scope: !8, file: !9, line: 331, type: !14)
!1829 = !DILocation(line: 331, column: 8, scope: !8)
!1830 = !DILocalVariable(name: "pidfd", scope: !8, file: !9, line: 332, type: !12)
!1831 = !DILocation(line: 332, column: 6, scope: !8)
!1832 = !DILocalVariable(name: "rv", scope: !8, file: !9, line: 333, type: !12)
!1833 = !DILocation(line: 333, column: 6, scope: !8)
!1834 = !DILocation(line: 335, column: 10, scope: !8)
!1835 = !DILocation(line: 335, column: 8, scope: !8)
!1836 = !DILocation(line: 336, column: 9, scope: !8)
!1837 = !DILocation(line: 336, column: 7, scope: !8)
!1838 = !DILocation(line: 337, column: 6, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !8, file: !9, line: 337, column: 6)
!1840 = !DILocation(line: 337, column: 6, scope: !8)
!1841 = !DILocation(line: 338, column: 22, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !9, line: 337, column: 28)
!1843 = !DILocation(line: 338, column: 15, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1842, file: !9, discriminator: 1)
!1845 = !DILocation(line: 338, column: 13, scope: !1842)
!1846 = !DILocation(line: 339, column: 8, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !9, line: 339, column: 7)
!1848 = !DILocation(line: 339, column: 7, scope: !1842)
!1849 = !DILocation(line: 340, column: 12, scope: !1847)
!1850 = !DILocation(line: 340, column: 4, scope: !1847)
!1851 = !DILocation(line: 341, column: 2, scope: !1842)
!1852 = !DILocation(line: 342, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1839, file: !9, line: 341, column: 9)
!1854 = !DILocation(line: 345, column: 2, scope: !8)
!1855 = !DILocation(line: 345, column: 22, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!1857 = !DILocation(line: 345, column: 28, scope: !1856)
!1858 = !DILocation(line: 345, column: 15, scope: !1856)
!1859 = !DILocation(line: 345, column: 13, scope: !1856)
!1860 = !DILocation(line: 348, column: 47, scope: !8)
!1861 = !DILocation(line: 345, column: 2, scope: !1856)
!1862 = !DILocation(line: 349, column: 11, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !8, file: !9, line: 348, column: 54)
!1864 = !DILocation(line: 349, column: 3, scope: !1863)
!1865 = !DILocation(line: 351, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 351, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !9, line: 349, column: 15)
!1868 = !DILocation(line: 351, column: 15, scope: !1866)
!1869 = !DILocation(line: 351, column: 9, scope: !1867)
!1870 = !DILocation(line: 352, column: 11, scope: !1866)
!1871 = !DILocation(line: 352, column: 17, scope: !1866)
!1872 = !DILocation(line: 352, column: 6, scope: !1866)
!1873 = !DILocation(line: 353, column: 29, scope: !1867)
!1874 = !DILocation(line: 353, column: 22, scope: !1867)
!1875 = !DILocation(line: 353, column: 5, scope: !1867)
!1876 = !DILocation(line: 353, column: 11, scope: !1867)
!1877 = !DILocation(line: 353, column: 20, scope: !1867)
!1878 = !DILocation(line: 354, column: 10, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 354, column: 9)
!1880 = !DILocation(line: 354, column: 16, scope: !1879)
!1881 = !DILocation(line: 354, column: 9, scope: !1867)
!1882 = !DILocation(line: 355, column: 14, scope: !1879)
!1883 = !DILocation(line: 355, column: 6, scope: !1879)
!1884 = !DILocation(line: 356, column: 23, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 356, column: 9)
!1886 = !DILocation(line: 356, column: 29, scope: !1885)
!1887 = !DILocation(line: 356, column: 9, scope: !1885)
!1888 = !DILocation(line: 356, column: 48, scope: !1885)
!1889 = !DILocation(line: 356, column: 9, scope: !1867)
!1890 = !DILocation(line: 357, column: 6, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !9, line: 356, column: 55)
!1892 = !DILocation(line: 362, column: 5, scope: !1867)
!1893 = !DILocation(line: 364, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 364, column: 9)
!1895 = !DILocation(line: 364, column: 31, scope: !1894)
!1896 = !DILocation(line: 364, column: 38, scope: !1894)
!1897 = !DILocation(line: 364, column: 9, scope: !1894)
!1898 = !DILocation(line: 364, column: 58, scope: !1894)
!1899 = !DILocation(line: 364, column: 9, scope: !1867)
!1900 = !DILocation(line: 365, column: 6, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !9, line: 364, column: 65)
!1902 = !DILocation(line: 367, column: 5, scope: !1867)
!1903 = !DILocation(line: 369, column: 20, scope: !1867)
!1904 = !DILocation(line: 369, column: 26, scope: !1867)
!1905 = !DILocation(line: 369, column: 33, scope: !1867)
!1906 = !DILocation(line: 369, column: 5, scope: !1867)
!1907 = !DILocation(line: 370, column: 5, scope: !1867)
!1908 = !DILocation(line: 372, column: 20, scope: !1867)
!1909 = !DILocation(line: 372, column: 26, scope: !1867)
!1910 = !DILocation(line: 372, column: 33, scope: !1867)
!1911 = !DILocation(line: 372, column: 5, scope: !1867)
!1912 = !DILocation(line: 373, column: 5, scope: !1867)
!1913 = !DILocation(line: 375, column: 20, scope: !1867)
!1914 = !DILocation(line: 375, column: 26, scope: !1867)
!1915 = !DILocation(line: 375, column: 33, scope: !1867)
!1916 = !DILocation(line: 375, column: 5, scope: !1867)
!1917 = !DILocation(line: 376, column: 5, scope: !1867)
!1918 = !DILocation(line: 378, column: 18, scope: !1867)
!1919 = !DILocation(line: 378, column: 24, scope: !1867)
!1920 = !DILocation(line: 378, column: 31, scope: !1867)
!1921 = !DILocation(line: 378, column: 5, scope: !1867)
!1922 = !DILocation(line: 379, column: 5, scope: !1867)
!1923 = !DILocation(line: 381, column: 23, scope: !1867)
!1924 = !DILocation(line: 381, column: 29, scope: !1867)
!1925 = !DILocation(line: 381, column: 36, scope: !1867)
!1926 = !DILocation(line: 381, column: 5, scope: !1867)
!1927 = !DILocation(line: 382, column: 5, scope: !1867)
!1928 = !DILocation(line: 384, column: 18, scope: !1867)
!1929 = !DILocation(line: 384, column: 24, scope: !1867)
!1930 = !DILocation(line: 384, column: 5, scope: !1867)
!1931 = !DILocation(line: 385, column: 5, scope: !1867)
!1932 = !DILocation(line: 387, column: 24, scope: !1867)
!1933 = !DILocation(line: 387, column: 5, scope: !1867)
!1934 = !DILocation(line: 388, column: 5, scope: !1867)
!1935 = !DILocation(line: 390, column: 26, scope: !1867)
!1936 = !DILocation(line: 390, column: 5, scope: !1867)
!1937 = !DILocation(line: 391, column: 5, scope: !1867)
!1938 = !DILocation(line: 393, column: 24, scope: !1867)
!1939 = !DILocation(line: 393, column: 30, scope: !1867)
!1940 = !DILocation(line: 393, column: 37, scope: !1867)
!1941 = !DILocation(line: 393, column: 5, scope: !1867)
!1942 = !DILocation(line: 394, column: 5, scope: !1867)
!1943 = !DILocation(line: 396, column: 24, scope: !1867)
!1944 = !DILocation(line: 396, column: 30, scope: !1867)
!1945 = !DILocation(line: 396, column: 37, scope: !1867)
!1946 = !DILocation(line: 396, column: 5, scope: !1867)
!1947 = !DILocation(line: 397, column: 5, scope: !1867)
!1948 = !DILocation(line: 400, column: 17, scope: !1867)
!1949 = !DILocation(line: 400, column: 23, scope: !1867)
!1950 = !DILocation(line: 400, column: 30, scope: !1867)
!1951 = !DILocation(line: 400, column: 5, scope: !1867)
!1952 = !DILocation(line: 401, column: 5, scope: !1867)
!1953 = !DILocation(line: 405, column: 24, scope: !1867)
!1954 = !DILocation(line: 405, column: 30, scope: !1867)
!1955 = !DILocation(line: 405, column: 37, scope: !1867)
!1956 = !DILocation(line: 405, column: 5, scope: !1867)
!1957 = !DILocation(line: 406, column: 5, scope: !1867)
!1958 = !DILocation(line: 410, column: 24, scope: !1867)
!1959 = !DILocation(line: 410, column: 5, scope: !1867)
!1960 = !DILocation(line: 411, column: 5, scope: !1867)
!1961 = !DILocation(line: 414, column: 22, scope: !1867)
!1962 = !DILocation(line: 414, column: 28, scope: !1867)
!1963 = !DILocation(line: 414, column: 35, scope: !1867)
!1964 = !DILocation(line: 414, column: 5, scope: !1867)
!1965 = !DILocation(line: 415, column: 5, scope: !1867)
!1966 = !DILocation(line: 417, column: 22, scope: !1867)
!1967 = !DILocation(line: 417, column: 28, scope: !1867)
!1968 = !DILocation(line: 417, column: 35, scope: !1867)
!1969 = !DILocation(line: 417, column: 5, scope: !1867)
!1970 = !DILocation(line: 418, column: 5, scope: !1867)
!1971 = !DILocation(line: 420, column: 24, scope: !1867)
!1972 = !DILocation(line: 420, column: 30, scope: !1867)
!1973 = !DILocation(line: 420, column: 37, scope: !1867)
!1974 = !DILocation(line: 420, column: 5, scope: !1867)
!1975 = !DILocation(line: 421, column: 5, scope: !1867)
!1976 = !DILocation(line: 424, column: 29, scope: !1867)
!1977 = !DILocation(line: 424, column: 35, scope: !1867)
!1978 = !DILocation(line: 424, column: 42, scope: !1867)
!1979 = !DILocation(line: 424, column: 5, scope: !1867)
!1980 = !DILocation(line: 425, column: 5, scope: !1867)
!1981 = !DILocation(line: 428, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 428, column: 9)
!1983 = !DILocation(line: 428, column: 9, scope: !1867)
!1984 = !DILocation(line: 429, column: 11, scope: !1982)
!1985 = !DILocation(line: 429, column: 6, scope: !1982)
!1986 = !DILocation(line: 430, column: 24, scope: !1867)
!1987 = !DILocation(line: 430, column: 17, scope: !1867)
!1988 = !DILocation(line: 430, column: 15, scope: !1867)
!1989 = !DILocation(line: 431, column: 10, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 431, column: 9)
!1991 = !DILocation(line: 431, column: 9, scope: !1867)
!1992 = !DILocation(line: 432, column: 14, scope: !1990)
!1993 = !DILocation(line: 432, column: 6, scope: !1990)
!1994 = !DILocation(line: 433, column: 5, scope: !1867)
!1995 = !DILocation(line: 435, column: 5, scope: !1867)
!1996 = !DILocation(line: 436, column: 5, scope: !1867)
!1997 = !DILocation(line: 439, column: 19, scope: !1867)
!1998 = !DILocation(line: 439, column: 25, scope: !1867)
!1999 = !DILocation(line: 439, column: 32, scope: !1867)
!2000 = !DILocation(line: 439, column: 5, scope: !1867)
!2001 = !DILocation(line: 440, column: 5, scope: !1867)
!2002 = !DILocation(line: 442, column: 20, scope: !1867)
!2003 = !DILocation(line: 442, column: 26, scope: !1867)
!2004 = !DILocation(line: 442, column: 33, scope: !1867)
!2005 = !DILocation(line: 442, column: 5, scope: !1867)
!2006 = !DILocation(line: 443, column: 5, scope: !1867)
!2007 = !DILocation(line: 445, column: 22, scope: !1867)
!2008 = !DILocation(line: 445, column: 28, scope: !1867)
!2009 = !DILocation(line: 445, column: 35, scope: !1867)
!2010 = !DILocation(line: 445, column: 5, scope: !1867)
!2011 = !DILocation(line: 446, column: 5, scope: !1867)
!2012 = !DILocation(line: 448, column: 22, scope: !1867)
!2013 = !DILocation(line: 448, column: 28, scope: !1867)
!2014 = !DILocation(line: 448, column: 35, scope: !1867)
!2015 = !DILocation(line: 448, column: 5, scope: !1867)
!2016 = !DILocation(line: 449, column: 5, scope: !1867)
!2017 = !DILocation(line: 451, column: 25, scope: !1867)
!2018 = !DILocation(line: 451, column: 31, scope: !1867)
!2019 = !DILocation(line: 451, column: 38, scope: !1867)
!2020 = !DILocation(line: 451, column: 5, scope: !1867)
!2021 = !DILocation(line: 452, column: 5, scope: !1867)
!2022 = !DILocation(line: 454, column: 25, scope: !1867)
!2023 = !DILocation(line: 454, column: 31, scope: !1867)
!2024 = !DILocation(line: 454, column: 38, scope: !1867)
!2025 = !DILocation(line: 454, column: 5, scope: !1867)
!2026 = !DILocation(line: 455, column: 5, scope: !1867)
!2027 = !DILocation(line: 457, column: 28, scope: !1867)
!2028 = !DILocation(line: 457, column: 34, scope: !1867)
!2029 = !DILocation(line: 457, column: 41, scope: !1867)
!2030 = !DILocation(line: 457, column: 5, scope: !1867)
!2031 = !DILocation(line: 458, column: 5, scope: !1867)
!2032 = !DILocation(line: 460, column: 33, scope: !1867)
!2033 = !DILocation(line: 460, column: 39, scope: !1867)
!2034 = !DILocation(line: 460, column: 46, scope: !1867)
!2035 = !DILocation(line: 460, column: 5, scope: !1867)
!2036 = !DILocation(line: 461, column: 5, scope: !1867)
!2037 = !DILocation(line: 463, column: 22, scope: !1867)
!2038 = !DILocation(line: 463, column: 28, scope: !1867)
!2039 = !DILocation(line: 463, column: 35, scope: !1867)
!2040 = !DILocation(line: 463, column: 5, scope: !1867)
!2041 = !DILocation(line: 464, column: 5, scope: !1867)
!2042 = !DILocation(line: 466, column: 25, scope: !1867)
!2043 = !DILocation(line: 466, column: 31, scope: !1867)
!2044 = !DILocation(line: 466, column: 38, scope: !1867)
!2045 = !DILocation(line: 466, column: 5, scope: !1867)
!2046 = !DILocation(line: 467, column: 5, scope: !1867)
!2047 = !DILocation(line: 469, column: 30, scope: !1867)
!2048 = !DILocation(line: 469, column: 36, scope: !1867)
!2049 = !DILocation(line: 469, column: 43, scope: !1867)
!2050 = !DILocation(line: 469, column: 5, scope: !1867)
!2051 = !DILocation(line: 470, column: 5, scope: !1867)
!2052 = !DILocation(line: 473, column: 23, scope: !1867)
!2053 = !DILocation(line: 473, column: 29, scope: !1867)
!2054 = !DILocation(line: 473, column: 36, scope: !1867)
!2055 = !DILocation(line: 473, column: 5, scope: !1867)
!2056 = !DILocation(line: 474, column: 5, scope: !1867)
!2057 = !DILocation(line: 476, column: 27, scope: !1867)
!2058 = !DILocation(line: 476, column: 33, scope: !1867)
!2059 = !DILocation(line: 476, column: 40, scope: !1867)
!2060 = !DILocation(line: 476, column: 5, scope: !1867)
!2061 = !DILocation(line: 477, column: 5, scope: !1867)
!2062 = !DILocation(line: 480, column: 34, scope: !1867)
!2063 = !DILocation(line: 480, column: 40, scope: !1867)
!2064 = !DILocation(line: 480, column: 47, scope: !1867)
!2065 = !DILocation(line: 480, column: 5, scope: !1867)
!2066 = !DILocation(line: 481, column: 5, scope: !1867)
!2067 = !DILocation(line: 483, column: 39, scope: !1867)
!2068 = !DILocation(line: 483, column: 45, scope: !1867)
!2069 = !DILocation(line: 483, column: 52, scope: !1867)
!2070 = !DILocation(line: 483, column: 5, scope: !1867)
!2071 = !DILocation(line: 484, column: 5, scope: !1867)
!2072 = !DILocation(line: 491, column: 27, scope: !1867)
!2073 = !DILocation(line: 491, column: 33, scope: !1867)
!2074 = !DILocation(line: 491, column: 40, scope: !1867)
!2075 = !DILocation(line: 491, column: 5, scope: !1867)
!2076 = !DILocation(line: 492, column: 5, scope: !1867)
!2077 = !DILocation(line: 494, column: 21, scope: !1867)
!2078 = !DILocation(line: 494, column: 5, scope: !1867)
!2079 = !DILocation(line: 495, column: 5, scope: !1867)
!2080 = !DILocation(line: 497, column: 20, scope: !1867)
!2081 = !DILocation(line: 497, column: 5, scope: !1867)
!2082 = !DILocation(line: 498, column: 5, scope: !1867)
!2083 = !DILocation(line: 500, column: 5, scope: !1867)
!2084 = !DILocation(line: 501, column: 5, scope: !1867)
!2085 = !DILocation(line: 503, column: 5, scope: !1867)
!2086 = !DILocation(line: 504, column: 5, scope: !1867)
!2087 = !DILocation(line: 506, column: 5, scope: !1867)
!2088 = !DILocation(line: 508, column: 5, scope: !1867)
!2089 = !DILocation(line: 509, column: 5, scope: !1867)
!2090 = !DILocation(line: 345, column: 2, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 2)
!2092 = distinct !{!2092, !1854}
!2093 = !DILocation(line: 512, column: 10, scope: !8)
!2094 = !DILocation(line: 512, column: 7, scope: !8)
!2095 = !DILocation(line: 513, column: 10, scope: !8)
!2096 = !DILocation(line: 513, column: 7, scope: !8)
!2097 = !DILocation(line: 514, column: 32, scope: !8)
!2098 = !DILocation(line: 514, column: 44, scope: !8)
!2099 = !DILocation(line: 514, column: 50, scope: !8)
!2100 = !DILocation(line: 514, column: 2, scope: !8)
!2101 = !DILocation(line: 517, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !8, file: !9, line: 517, column: 6)
!2103 = !DILocation(line: 517, column: 12, scope: !2102)
!2104 = !DILocation(line: 517, column: 19, scope: !2102)
!2105 = !DILocation(line: 517, column: 41, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2102, file: !9, discriminator: 1)
!2107 = !DILocation(line: 517, column: 48, scope: !2106)
!2108 = !DILocation(line: 517, column: 39, scope: !2106)
!2109 = !DILocation(line: 517, column: 22, scope: !2106)
!2110 = !DILocation(line: 517, column: 6, scope: !2106)
!2111 = !DILocation(line: 518, column: 10, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2102, file: !9, line: 517, column: 60)
!2113 = !DILocation(line: 519, column: 19, scope: !2112)
!2114 = !DILocation(line: 518, column: 3, scope: !2112)
!2115 = !DILocation(line: 520, column: 3, scope: !2112)
!2116 = !DILocation(line: 523, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !8, file: !9, line: 523, column: 6)
!2118 = !DILocation(line: 523, column: 12, scope: !2117)
!2119 = !DILocation(line: 523, column: 25, scope: !2117)
!2120 = !DILocation(line: 523, column: 29, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2117, file: !9, discriminator: 1)
!2122 = !DILocation(line: 523, column: 35, scope: !2121)
!2123 = !DILocation(line: 523, column: 6, scope: !2121)
!2124 = !DILocation(line: 524, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2117, file: !9, line: 523, column: 45)
!2126 = !DILocation(line: 524, column: 45, scope: !2125)
!2127 = !DILocation(line: 524, column: 3, scope: !2125)
!2128 = !DILocation(line: 525, column: 3, scope: !2125)
!2129 = !DILocation(line: 527, column: 6, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !8, file: !9, line: 527, column: 6)
!2131 = !DILocation(line: 527, column: 12, scope: !2130)
!2132 = !DILocation(line: 527, column: 21, scope: !2130)
!2133 = !DILocation(line: 527, column: 25, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2130, file: !9, discriminator: 1)
!2135 = !DILocation(line: 527, column: 31, scope: !2134)
!2136 = !DILocation(line: 527, column: 6, scope: !2134)
!2137 = !DILocation(line: 528, column: 10, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2130, file: !9, line: 527, column: 45)
!2139 = !DILocation(line: 528, column: 45, scope: !2138)
!2140 = !DILocation(line: 528, column: 3, scope: !2138)
!2141 = !DILocation(line: 529, column: 3, scope: !2138)
!2142 = !DILocation(line: 532, column: 7, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !8, file: !9, line: 532, column: 6)
!2144 = !DILocation(line: 532, column: 13, scope: !2143)
!2145 = !DILocation(line: 532, column: 6, scope: !8)
!2146 = !DILocation(line: 533, column: 10, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !9, line: 532, column: 19)
!2148 = !DILocation(line: 533, column: 51, scope: !2147)
!2149 = !DILocation(line: 533, column: 3, scope: !2147)
!2150 = !DILocation(line: 534, column: 3, scope: !2147)
!2151 = !DILocalVariable(name: "spec", scope: !2152, file: !9, line: 536, type: !1775)
!2152 = distinct !DILexicalBlock(scope: !8, file: !9, line: 536, column: 2)
!2153 = !DILocation(line: 536, column: 20, scope: !2152)
!2154 = !DILocation(line: 536, column: 27, scope: !2152)
!2155 = !DILocation(line: 536, column: 33, scope: !2152)
!2156 = !DILocation(line: 536, column: 7, scope: !2152)
!2157 = !DILocation(line: 536, column: 39, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !9, discriminator: 1)
!2159 = distinct !DILexicalBlock(scope: !2152, file: !9, line: 536, column: 2)
!2160 = !DILocation(line: 536, column: 2, scope: !2158)
!2161 = !DILocation(line: 537, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !9, line: 537, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !9, line: 536, column: 64)
!2164 = !DILocation(line: 537, column: 13, scope: !2162)
!2165 = !DILocation(line: 537, column: 29, scope: !2162)
!2166 = !DILocation(line: 537, column: 32, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2162, file: !9, discriminator: 1)
!2168 = !DILocation(line: 537, column: 38, scope: !2167)
!2169 = !DILocation(line: 537, column: 7, scope: !2167)
!2170 = !DILocation(line: 538, column: 4, scope: !2162)
!2171 = !DILocation(line: 539, column: 8, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2163, file: !9, line: 539, column: 7)
!2173 = !DILocation(line: 539, column: 14, scope: !2172)
!2174 = !DILocation(line: 539, column: 7, scope: !2163)
!2175 = !DILocation(line: 540, column: 11, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !9, line: 539, column: 25)
!2177 = !DILocation(line: 543, column: 36, scope: !2176)
!2178 = !DILocation(line: 540, column: 4, scope: !2176)
!2179 = !DILocation(line: 544, column: 4, scope: !2176)
!2180 = !DILocation(line: 546, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2163, file: !9, line: 546, column: 7)
!2182 = !DILocation(line: 546, column: 13, scope: !2181)
!2183 = !DILocation(line: 546, column: 25, scope: !2181)
!2184 = !DILocation(line: 546, column: 35, scope: !2181)
!2185 = !DILocation(line: 546, column: 46, scope: !2181)
!2186 = !DILocation(line: 547, column: 22, scope: !2181)
!2187 = !DILocation(line: 547, column: 28, scope: !2181)
!2188 = !DILocation(line: 547, column: 8, scope: !2181)
!2189 = !DILocation(line: 546, column: 7, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2163, file: !9, discriminator: 1)
!2191 = !DILocation(line: 548, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2181, file: !9, line: 547, column: 40)
!2193 = !DILocation(line: 549, column: 20, scope: !2192)
!2194 = !DILocation(line: 549, column: 27, scope: !2192)
!2195 = !DILocation(line: 549, column: 33, scope: !2192)
!2196 = !DILocation(line: 548, column: 4, scope: !2192)
!2197 = !DILocation(line: 550, column: 4, scope: !2192)
!2198 = !DILocation(line: 552, column: 37, scope: !2163)
!2199 = !DILocation(line: 552, column: 43, scope: !2163)
!2200 = !DILocation(line: 552, column: 21, scope: !2163)
!2201 = !DILocation(line: 552, column: 3, scope: !2163)
!2202 = !DILocation(line: 552, column: 9, scope: !2163)
!2203 = !DILocation(line: 552, column: 19, scope: !2163)
!2204 = !DILocation(line: 553, column: 37, scope: !2163)
!2205 = !DILocation(line: 553, column: 43, scope: !2163)
!2206 = !DILocation(line: 553, column: 21, scope: !2163)
!2207 = !DILocation(line: 553, column: 3, scope: !2163)
!2208 = !DILocation(line: 553, column: 9, scope: !2163)
!2209 = !DILocation(line: 553, column: 19, scope: !2163)
!2210 = !DILocation(line: 554, column: 2, scope: !2163)
!2211 = !DILocation(line: 536, column: 52, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2159, file: !9, discriminator: 2)
!2213 = !DILocation(line: 536, column: 58, scope: !2212)
!2214 = !DILocation(line: 536, column: 50, scope: !2212)
!2215 = !DILocation(line: 536, column: 2, scope: !2212)
!2216 = distinct !{!2216, !2217}
!2217 = !DILocation(line: 536, column: 2, scope: !8)
!2218 = !DILocation(line: 555, column: 24, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !8, file: !9, line: 555, column: 6)
!2220 = !DILocation(line: 555, column: 6, scope: !2219)
!2221 = !DILocation(line: 555, column: 6, scope: !8)
!2222 = !DILocation(line: 556, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !9, line: 556, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !9, line: 555, column: 31)
!2225 = !DILocation(line: 556, column: 18, scope: !2223)
!2226 = !DILocation(line: 556, column: 7, scope: !2224)
!2227 = !DILocation(line: 557, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !9, line: 556, column: 25)
!2229 = !DILocation(line: 558, column: 20, scope: !2228)
!2230 = !DILocation(line: 557, column: 4, scope: !2228)
!2231 = !DILocation(line: 559, column: 4, scope: !2228)
!2232 = !DILocation(line: 562, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !9, line: 562, column: 7)
!2234 = !DILocation(line: 562, column: 13, scope: !2233)
!2235 = !DILocation(line: 562, column: 28, scope: !2233)
!2236 = !DILocation(line: 563, column: 18, scope: !2233)
!2237 = !DILocation(line: 563, column: 24, scope: !2233)
!2238 = !DILocation(line: 563, column: 7, scope: !2233)
!2239 = !DILocation(line: 563, column: 40, scope: !2233)
!2240 = !DILocation(line: 562, column: 7, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2224, file: !9, discriminator: 1)
!2242 = !DILocation(line: 564, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2233, file: !9, line: 563, column: 47)
!2244 = !DILocation(line: 565, column: 30, scope: !2243)
!2245 = !DILocation(line: 565, column: 37, scope: !2243)
!2246 = !DILocation(line: 565, column: 43, scope: !2243)
!2247 = !DILocation(line: 564, column: 4, scope: !2243)
!2248 = !DILocation(line: 566, column: 4, scope: !2243)
!2249 = !DILocation(line: 569, column: 8, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2224, file: !9, line: 569, column: 7)
!2251 = !DILocation(line: 569, column: 14, scope: !2250)
!2252 = !DILocation(line: 569, column: 20, scope: !2250)
!2253 = !DILocation(line: 569, column: 24, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2250, file: !9, discriminator: 1)
!2255 = !DILocation(line: 569, column: 30, scope: !2254)
!2256 = !DILocation(line: 569, column: 40, scope: !2254)
!2257 = !DILocation(line: 569, column: 44, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2250, file: !9, discriminator: 2)
!2259 = !DILocation(line: 569, column: 50, scope: !2258)
!2260 = !DILocation(line: 569, column: 7, scope: !2258)
!2261 = !DILocation(line: 570, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2250, file: !9, line: 569, column: 57)
!2263 = !DILocation(line: 571, column: 20, scope: !2262)
!2264 = !DILocation(line: 570, column: 4, scope: !2262)
!2265 = !DILocation(line: 572, column: 4, scope: !2262)
!2266 = !DILocation(line: 574, column: 7, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2224, file: !9, line: 574, column: 7)
!2268 = !DILocation(line: 574, column: 13, scope: !2267)
!2269 = !DILocation(line: 574, column: 19, scope: !2267)
!2270 = !DILocation(line: 574, column: 23, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2267, file: !9, discriminator: 1)
!2272 = !DILocation(line: 574, column: 29, scope: !2271)
!2273 = !DILocation(line: 574, column: 7, scope: !2271)
!2274 = !DILocation(line: 575, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !9, line: 574, column: 36)
!2276 = !DILocation(line: 576, column: 20, scope: !2275)
!2277 = !DILocation(line: 575, column: 4, scope: !2275)
!2278 = !DILocation(line: 577, column: 4, scope: !2275)
!2279 = !DILocation(line: 579, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2224, file: !9, line: 579, column: 7)
!2281 = !DILocation(line: 579, column: 13, scope: !2280)
!2282 = !DILocation(line: 579, column: 19, scope: !2280)
!2283 = !DILocation(line: 579, column: 22, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2280, file: !9, discriminator: 1)
!2285 = !DILocation(line: 579, column: 28, scope: !2284)
!2286 = !DILocation(line: 579, column: 34, scope: !2284)
!2287 = !DILocation(line: 580, column: 31, scope: !2280)
!2288 = !DILocation(line: 580, column: 37, scope: !2280)
!2289 = !DILocation(line: 580, column: 44, scope: !2280)
!2290 = !DILocation(line: 580, column: 50, scope: !2280)
!2291 = !DILocation(line: 580, column: 8, scope: !2280)
!2292 = !DILocation(line: 580, column: 57, scope: !2280)
!2293 = !DILocation(line: 579, column: 7, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2224, file: !9, discriminator: 2)
!2295 = !DILocation(line: 581, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !9, line: 580, column: 64)
!2297 = !DILocation(line: 582, column: 20, scope: !2296)
!2298 = !DILocation(line: 581, column: 4, scope: !2296)
!2299 = !DILocation(line: 583, column: 23, scope: !2296)
!2300 = !DILocation(line: 583, column: 4, scope: !2296)
!2301 = !DILocation(line: 584, column: 4, scope: !2296)
!2302 = !DILocation(line: 586, column: 2, scope: !2224)
!2303 = !DILocation(line: 597, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !8, file: !9, line: 597, column: 6)
!2305 = !DILocation(line: 597, column: 12, scope: !2304)
!2306 = !DILocation(line: 597, column: 6, scope: !8)
!2307 = !DILocation(line: 598, column: 25, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !9, line: 597, column: 21)
!2309 = !DILocation(line: 598, column: 31, scope: !2308)
!2310 = !DILocation(line: 598, column: 11, scope: !2308)
!2311 = !DILocation(line: 598, column: 9, scope: !2308)
!2312 = !DILocation(line: 599, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !9, line: 599, column: 7)
!2314 = !DILocation(line: 599, column: 13, scope: !2313)
!2315 = !DILocation(line: 599, column: 7, scope: !2308)
!2316 = !DILocation(line: 600, column: 11, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !9, line: 599, column: 20)
!2318 = !DILocation(line: 602, column: 20, scope: !2317)
!2319 = !DILocation(line: 602, column: 27, scope: !2317)
!2320 = !DILocation(line: 602, column: 33, scope: !2317)
!2321 = !DILocation(line: 600, column: 4, scope: !2317)
!2322 = !DILocation(line: 603, column: 4, scope: !2317)
!2323 = !DILocation(line: 605, column: 2, scope: !2308)
!2324 = !DILocation(line: 608, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !8, file: !9, line: 608, column: 6)
!2326 = !DILocation(line: 608, column: 13, scope: !2325)
!2327 = !DILocation(line: 608, column: 6, scope: !8)
!2328 = !DILocation(line: 609, column: 19, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !9, line: 608, column: 22)
!2330 = !DILocation(line: 609, column: 3, scope: !2329)
!2331 = !DILocation(line: 609, column: 9, scope: !2329)
!2332 = !DILocation(line: 609, column: 17, scope: !2329)
!2333 = !DILocation(line: 610, column: 8, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !9, line: 610, column: 7)
!2335 = !DILocation(line: 610, column: 14, scope: !2334)
!2336 = !DILocation(line: 610, column: 7, scope: !2329)
!2337 = !DILocation(line: 611, column: 12, scope: !2334)
!2338 = !DILocation(line: 611, column: 4, scope: !2334)
!2339 = !DILocation(line: 612, column: 2, scope: !2329)
!2340 = !DILocation(line: 613, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !8, file: !9, line: 613, column: 6)
!2342 = !DILocation(line: 613, column: 13, scope: !2341)
!2343 = !DILocation(line: 613, column: 22, scope: !2341)
!2344 = !DILocation(line: 613, column: 26, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2341, file: !9, discriminator: 1)
!2346 = !DILocation(line: 613, column: 36, scope: !2345)
!2347 = !DILocation(line: 613, column: 40, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2341, file: !9, discriminator: 2)
!2349 = !DILocation(line: 613, column: 49, scope: !2348)
!2350 = !DILocation(line: 614, column: 6, scope: !2341)
!2351 = !DILocation(line: 613, column: 6, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 3)
!2353 = !DILocation(line: 621, column: 20, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2341, file: !9, line: 614, column: 28)
!2355 = !DILocation(line: 621, column: 3, scope: !2354)
!2356 = !DILocation(line: 621, column: 9, scope: !2354)
!2357 = !DILocation(line: 621, column: 18, scope: !2354)
!2358 = !DILocation(line: 622, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !9, line: 622, column: 7)
!2360 = !DILocation(line: 622, column: 14, scope: !2359)
!2361 = !DILocation(line: 622, column: 7, scope: !2354)
!2362 = !DILocation(line: 623, column: 12, scope: !2359)
!2363 = !DILocation(line: 623, column: 4, scope: !2359)
!2364 = !DILocation(line: 627, column: 2, scope: !2354)
!2365 = !DILocation(line: 628, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !8, file: !9, line: 628, column: 6)
!2367 = !DILocation(line: 628, column: 12, scope: !2366)
!2368 = !DILocation(line: 628, column: 21, scope: !2366)
!2369 = !DILocation(line: 628, column: 38, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2366, file: !9, discriminator: 1)
!2371 = !DILocation(line: 628, column: 44, scope: !2370)
!2372 = !DILocation(line: 628, column: 24, scope: !2370)
!2373 = !DILocation(line: 628, column: 6, scope: !2370)
!2374 = !DILocation(line: 629, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !9, line: 629, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2366, file: !9, line: 628, column: 55)
!2377 = !DILocation(line: 629, column: 13, scope: !2375)
!2378 = !DILocation(line: 629, column: 7, scope: !2376)
!2379 = !DILocation(line: 630, column: 11, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !9, line: 629, column: 24)
!2381 = !DILocation(line: 631, column: 30, scope: !2380)
!2382 = !DILocation(line: 630, column: 4, scope: !2380)
!2383 = !DILocation(line: 632, column: 4, scope: !2380)
!2384 = !DILocation(line: 634, column: 8, scope: !2376)
!2385 = !DILocation(line: 634, column: 14, scope: !2376)
!2386 = !DILocation(line: 634, column: 3, scope: !2376)
!2387 = !DILocation(line: 635, column: 3, scope: !2376)
!2388 = !DILocation(line: 635, column: 9, scope: !2376)
!2389 = !DILocation(line: 635, column: 18, scope: !2376)
!2390 = !DILocation(line: 636, column: 2, scope: !2376)
!2391 = !DILocation(line: 639, column: 6, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !8, file: !9, line: 639, column: 6)
!2393 = !DILocation(line: 639, column: 12, scope: !2392)
!2394 = !DILocation(line: 639, column: 22, scope: !2392)
!2395 = !DILocation(line: 639, column: 26, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2392, file: !9, discriminator: 1)
!2397 = !DILocation(line: 639, column: 32, scope: !2396)
!2398 = !DILocation(line: 639, column: 6, scope: !2396)
!2399 = !DILocation(line: 640, column: 10, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2392, file: !9, line: 639, column: 42)
!2401 = !DILocation(line: 640, column: 44, scope: !2400)
!2402 = !DILocation(line: 640, column: 3, scope: !2400)
!2403 = !DILocation(line: 641, column: 3, scope: !2400)
!2404 = !DILocalVariable(name: "privsep_warn", scope: !8, file: !9, line: 648, type: !12)
!2405 = !DILocation(line: 648, column: 6, scope: !8)
!2406 = !DILocation(line: 649, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !8, file: !9, line: 649, column: 6)
!2408 = !DILocation(line: 649, column: 12, scope: !2407)
!2409 = !DILocation(line: 649, column: 6, scope: !8)
!2410 = !DILocation(line: 650, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !9, line: 650, column: 7)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !9, line: 649, column: 22)
!2413 = !DILocation(line: 650, column: 13, scope: !2411)
!2414 = !DILocation(line: 650, column: 7, scope: !2412)
!2415 = !DILocation(line: 651, column: 4, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !9, line: 650, column: 31)
!2417 = !DILocation(line: 653, column: 17, scope: !2416)
!2418 = !DILocation(line: 654, column: 3, scope: !2416)
!2419 = !DILocation(line: 655, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2412, file: !9, line: 655, column: 7)
!2421 = !DILocation(line: 655, column: 13, scope: !2420)
!2422 = !DILocation(line: 655, column: 7, scope: !2412)
!2423 = !DILocation(line: 656, column: 4, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !9, line: 655, column: 32)
!2425 = !DILocation(line: 658, column: 17, scope: !2424)
!2426 = !DILocation(line: 659, column: 3, scope: !2424)
!2427 = !DILocation(line: 660, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2412, file: !9, line: 660, column: 7)
!2429 = !DILocation(line: 660, column: 13, scope: !2428)
!2430 = !DILocation(line: 660, column: 7, scope: !2412)
!2431 = !DILocation(line: 661, column: 4, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !9, line: 660, column: 28)
!2433 = !DILocation(line: 663, column: 17, scope: !2432)
!2434 = !DILocation(line: 664, column: 3, scope: !2432)
!2435 = !DILocation(line: 665, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2412, file: !9, line: 665, column: 7)
!2437 = !DILocation(line: 665, column: 13, scope: !2436)
!2438 = !DILocation(line: 665, column: 7, scope: !2412)
!2439 = !DILocation(line: 666, column: 4, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !9, line: 665, column: 29)
!2441 = !DILocation(line: 668, column: 17, scope: !2440)
!2442 = !DILocation(line: 669, column: 3, scope: !2440)
!2443 = !DILocation(line: 670, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2412, file: !9, line: 670, column: 7)
!2445 = !DILocation(line: 670, column: 13, scope: !2444)
!2446 = !DILocation(line: 670, column: 7, scope: !2412)
!2447 = !DILocation(line: 671, column: 4, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !9, line: 670, column: 25)
!2449 = !DILocation(line: 673, column: 17, scope: !2448)
!2450 = !DILocation(line: 674, column: 3, scope: !2448)
!2451 = !DILocation(line: 675, column: 2, scope: !2412)
!2452 = !DILocation(line: 676, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !8, file: !9, line: 676, column: 6)
!2454 = !DILocation(line: 676, column: 6, scope: !8)
!2455 = !DILocation(line: 677, column: 3, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2453, file: !9, line: 676, column: 20)
!2457 = !DILocation(line: 681, column: 2, scope: !2456)
!2458 = !DILocation(line: 684, column: 25, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !8, file: !9, line: 684, column: 6)
!2460 = !DILocation(line: 684, column: 32, scope: !2459)
!2461 = !DILocation(line: 684, column: 23, scope: !2459)
!2462 = !DILocation(line: 684, column: 6, scope: !2459)
!2463 = !DILocation(line: 684, column: 6, scope: !8)
!2464 = !DILocation(line: 685, column: 3, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !9, line: 684, column: 44)
!2466 = !DILocation(line: 686, column: 2, scope: !2465)
!2467 = !DILocation(line: 689, column: 24, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !8, file: !9, line: 689, column: 6)
!2469 = !DILocation(line: 689, column: 6, scope: !2468)
!2470 = !DILocation(line: 689, column: 30, scope: !2468)
!2471 = !DILocation(line: 689, column: 33, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2468, file: !9, discriminator: 1)
!2473 = !DILocation(line: 689, column: 39, scope: !2472)
!2474 = !DILocation(line: 689, column: 45, scope: !2472)
!2475 = !DILocation(line: 689, column: 49, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2468, file: !9, discriminator: 2)
!2477 = !DILocation(line: 689, column: 55, scope: !2476)
!2478 = !DILocation(line: 689, column: 6, scope: !2476)
!2479 = !DILocation(line: 690, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2468, file: !9, line: 689, column: 60)
!2481 = !DILocation(line: 690, column: 3, scope: !2480)
!2482 = !DILocation(line: 690, column: 9, scope: !2480)
!2483 = !DILocation(line: 690, column: 13, scope: !2480)
!2484 = !DILocation(line: 691, column: 8, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !9, line: 691, column: 7)
!2486 = !DILocation(line: 691, column: 14, scope: !2485)
!2487 = !DILocation(line: 691, column: 7, scope: !2480)
!2488 = !DILocation(line: 692, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !9, line: 691, column: 19)
!2490 = !DILocation(line: 693, column: 20, scope: !2489)
!2491 = !DILocation(line: 692, column: 4, scope: !2489)
!2492 = !DILocation(line: 694, column: 23, scope: !2489)
!2493 = !DILocation(line: 694, column: 4, scope: !2489)
!2494 = !DILocation(line: 695, column: 4, scope: !2489)
!2495 = !DILocation(line: 697, column: 26, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2480, file: !9, line: 697, column: 7)
!2497 = !DILocation(line: 697, column: 33, scope: !2496)
!2498 = !DILocation(line: 697, column: 24, scope: !2496)
!2499 = !DILocation(line: 697, column: 7, scope: !2496)
!2500 = !DILocation(line: 697, column: 7, scope: !2480)
!2501 = !DILocation(line: 698, column: 4, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !9, line: 697, column: 45)
!2503 = !DILocation(line: 699, column: 3, scope: !2502)
!2504 = !DILocation(line: 700, column: 2, scope: !2480)
!2505 = !DILocation(line: 701, column: 6, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !8, file: !9, line: 701, column: 6)
!2507 = !DILocation(line: 701, column: 12, scope: !2506)
!2508 = !DILocation(line: 701, column: 6, scope: !8)
!2509 = !DILocalVariable(name: "keyid", scope: !2510, file: !9, line: 702, type: !14)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !9, line: 701, column: 24)
!2511 = !DILocation(line: 702, column: 9, scope: !2510)
!2512 = !DILocalVariable(name: "keyfn", scope: !2510, file: !9, line: 702, type: !14)
!2513 = !DILocation(line: 702, column: 17, scope: !2510)
!2514 = !DILocalVariable(name: "prv", scope: !2510, file: !9, line: 703, type: !12)
!2515 = !DILocation(line: 703, column: 7, scope: !2510)
!2516 = !DILocalVariable(name: "keyf", scope: !2510, file: !9, line: 704, type: !2517)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64, align: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2519, line: 48, baseType: !2520)
!2519 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2521, line: 241, size: 1728, align: 64, elements: !2522)
!2521 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2543, !2544, !2545, !2546, !2548, !2549, !2551, !2555, !2558, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2520, file: !2521, line: 242, baseType: !12, size: 32, align: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2520, file: !2521, line: 247, baseType: !14, size: 64, align: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2520, file: !2521, line: 248, baseType: !14, size: 64, align: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2520, file: !2521, line: 249, baseType: !14, size: 64, align: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2520, file: !2521, line: 250, baseType: !14, size: 64, align: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2520, file: !2521, line: 251, baseType: !14, size: 64, align: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2520, file: !2521, line: 252, baseType: !14, size: 64, align: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2520, file: !2521, line: 253, baseType: !14, size: 64, align: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2520, file: !2521, line: 254, baseType: !14, size: 64, align: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2520, file: !2521, line: 256, baseType: !14, size: 64, align: 64, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2520, file: !2521, line: 257, baseType: !14, size: 64, align: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2520, file: !2521, line: 258, baseType: !14, size: 64, align: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2520, file: !2521, line: 260, baseType: !2536, size: 64, align: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64, align: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2521, line: 156, size: 192, align: 64, elements: !2538)
!2538 = !{!2539, !2540, !2542}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2537, file: !2521, line: 157, baseType: !2536, size: 64, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2537, file: !2521, line: 158, baseType: !2541, size: 64, align: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64, align: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2537, file: !2521, line: 162, baseType: !12, size: 32, align: 32, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2520, file: !2521, line: 262, baseType: !2541, size: 64, align: 64, offset: 832)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2520, file: !2521, line: 264, baseType: !12, size: 32, align: 32, offset: 896)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2520, file: !2521, line: 268, baseType: !12, size: 32, align: 32, offset: 928)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2520, file: !2521, line: 270, baseType: !2547, size: 64, align: 64, offset: 960)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1169, line: 131, baseType: !118)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2520, file: !2521, line: 274, baseType: !760, size: 16, align: 16, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2520, file: !2521, line: 275, baseType: !2550, size: 8, align: 8, offset: 1040)
!2550 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2520, file: !2521, line: 276, baseType: !2552, size: 8, align: 8, offset: 1048)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, align: 8, elements: !2553)
!2553 = !{!2554}
!2554 = !DISubrange(count: 1)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2520, file: !2521, line: 280, baseType: !2556, size: 64, align: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64, align: 64)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2521, line: 150, baseType: null)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2520, file: !2521, line: 289, baseType: !2559, size: 64, align: 64, offset: 1152)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1169, line: 132, baseType: !118)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2520, file: !2521, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2520, file: !2521, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2520, file: !2521, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2520, file: !2521, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2520, file: !2521, line: 302, baseType: !193, size: 64, align: 64, offset: 1472)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2520, file: !2521, line: 303, baseType: !12, size: 32, align: 32, offset: 1536)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2520, file: !2521, line: 305, baseType: !2567, size: 160, align: 8, offset: 1568)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, align: 8, elements: !1110)
!2568 = !DILocation(line: 704, column: 9, scope: !2510)
!2569 = !DILocation(line: 706, column: 30, scope: !2510)
!2570 = !DILocation(line: 706, column: 36, scope: !2510)
!2571 = !DILocation(line: 706, column: 11, scope: !2510)
!2572 = !DILocation(line: 706, column: 9, scope: !2510)
!2573 = !DILocation(line: 707, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2510, file: !9, line: 707, column: 7)
!2575 = !DILocation(line: 707, column: 7, scope: !2510)
!2576 = !DILocation(line: 708, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !9, line: 707, column: 15)
!2578 = !DILocation(line: 708, column: 52, scope: !2577)
!2579 = !DILocation(line: 708, column: 4, scope: !2577)
!2580 = !DILocation(line: 709, column: 4, scope: !2577)
!2581 = !DILocation(line: 712, column: 39, scope: !2510)
!2582 = !DILocation(line: 712, column: 45, scope: !2510)
!2583 = !DILocation(line: 712, column: 57, scope: !2510)
!2584 = !DILocation(line: 712, column: 9, scope: !2510)
!2585 = !DILocation(line: 712, column: 7, scope: !2510)
!2586 = !DILocation(line: 713, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2510, file: !9, line: 713, column: 7)
!2588 = !DILocation(line: 713, column: 11, scope: !2587)
!2589 = !DILocation(line: 713, column: 7, scope: !2510)
!2590 = !DILocation(line: 714, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !9, line: 713, column: 18)
!2592 = !DILocation(line: 714, column: 36, scope: !2591)
!2593 = !DILocation(line: 715, column: 30, scope: !2591)
!2594 = !DILocation(line: 715, column: 29, scope: !2591)
!2595 = !DILocation(line: 715, column: 20, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2591, file: !9, discriminator: 1)
!2597 = !DILocation(line: 715, column: 38, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2591, file: !9, discriminator: 2)
!2599 = !DILocation(line: 715, column: 37, scope: !2591)
!2600 = !DILocation(line: 714, column: 4, scope: !2591)
!2601 = !DILocation(line: 716, column: 4, scope: !2591)
!2602 = !DILocation(line: 719, column: 22, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2510, file: !9, line: 719, column: 7)
!2604 = !DILocation(line: 719, column: 16, scope: !2603)
!2605 = !DILocation(line: 719, column: 14, scope: !2603)
!2606 = !DILocation(line: 719, column: 7, scope: !2510)
!2607 = !DILocation(line: 720, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !9, line: 719, column: 36)
!2609 = !DILocation(line: 721, column: 33, scope: !2608)
!2610 = !DILocation(line: 721, column: 40, scope: !2608)
!2611 = !DILocation(line: 722, column: 30, scope: !2608)
!2612 = !DILocation(line: 722, column: 29, scope: !2608)
!2613 = !DILocation(line: 722, column: 20, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2608, file: !9, discriminator: 1)
!2615 = !DILocation(line: 722, column: 38, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2608, file: !9, discriminator: 2)
!2617 = !DILocation(line: 722, column: 37, scope: !2608)
!2618 = !DILocation(line: 720, column: 4, scope: !2608)
!2619 = !DILocation(line: 723, column: 4, scope: !2608)
!2620 = !DILocation(line: 725, column: 29, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2510, file: !9, line: 725, column: 7)
!2622 = !DILocation(line: 725, column: 35, scope: !2621)
!2623 = !DILocation(line: 725, column: 41, scope: !2621)
!2624 = !DILocation(line: 725, column: 8, scope: !2621)
!2625 = !DILocation(line: 725, column: 7, scope: !2510)
!2626 = !DILocation(line: 727, column: 11, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !9, line: 726, column: 58)
!2628 = !DILocation(line: 728, column: 33, scope: !2627)
!2629 = !DILocation(line: 728, column: 40, scope: !2627)
!2630 = !DILocation(line: 729, column: 30, scope: !2627)
!2631 = !DILocation(line: 729, column: 29, scope: !2627)
!2632 = !DILocation(line: 729, column: 20, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2627, file: !9, discriminator: 1)
!2634 = !DILocation(line: 729, column: 38, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2627, file: !9, discriminator: 2)
!2636 = !DILocation(line: 729, column: 37, scope: !2627)
!2637 = !DILocation(line: 727, column: 4, scope: !2627)
!2638 = !DILocation(line: 730, column: 4, scope: !2627)
!2639 = !DILocation(line: 732, column: 10, scope: !2510)
!2640 = !DILocation(line: 732, column: 3, scope: !2510)
!2641 = !DILocation(line: 733, column: 2, scope: !2510)
!2642 = !DILocation(line: 736, column: 25, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !8, file: !9, line: 736, column: 6)
!2644 = !DILocation(line: 736, column: 32, scope: !2643)
!2645 = !DILocation(line: 736, column: 23, scope: !2643)
!2646 = !DILocation(line: 736, column: 6, scope: !2643)
!2647 = !DILocation(line: 736, column: 6, scope: !8)
!2648 = !DILocation(line: 737, column: 23, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2643, file: !9, line: 736, column: 44)
!2650 = !DILocation(line: 737, column: 3, scope: !2649)
!2651 = !DILocation(line: 738, column: 3, scope: !2649)
!2652 = !DILocalVariable(name: "spec", scope: !2653, file: !9, line: 739, type: !1775)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !9, line: 739, column: 3)
!2654 = !DILocation(line: 739, column: 21, scope: !2653)
!2655 = !DILocation(line: 739, column: 28, scope: !2653)
!2656 = !DILocation(line: 739, column: 34, scope: !2653)
!2657 = !DILocation(line: 739, column: 8, scope: !2653)
!2658 = !DILocation(line: 739, column: 40, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2660, file: !9, discriminator: 1)
!2660 = distinct !DILexicalBlock(scope: !2653, file: !9, line: 739, column: 3)
!2661 = !DILocation(line: 739, column: 3, scope: !2659)
!2662 = !DILocalVariable(name: "specstr", scope: !2663, file: !9, line: 740, type: !14)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !9, line: 739, column: 65)
!2664 = !DILocation(line: 740, column: 10, scope: !2663)
!2665 = !DILocation(line: 740, column: 34, scope: !2663)
!2666 = !DILocation(line: 740, column: 20, scope: !2663)
!2667 = !DILocation(line: 741, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !9, line: 741, column: 8)
!2669 = !DILocation(line: 741, column: 8, scope: !2663)
!2670 = !DILocation(line: 742, column: 12, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !9, line: 741, column: 18)
!2672 = !DILocation(line: 742, column: 43, scope: !2671)
!2673 = !DILocation(line: 742, column: 5, scope: !2671)
!2674 = !DILocation(line: 743, column: 5, scope: !2671)
!2675 = !DILocation(line: 745, column: 29, scope: !2663)
!2676 = !DILocation(line: 745, column: 4, scope: !2663)
!2677 = !DILocation(line: 746, column: 9, scope: !2663)
!2678 = !DILocation(line: 746, column: 4, scope: !2663)
!2679 = !DILocation(line: 747, column: 3, scope: !2663)
!2680 = !DILocation(line: 739, column: 53, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2660, file: !9, discriminator: 2)
!2682 = !DILocation(line: 739, column: 59, scope: !2681)
!2683 = !DILocation(line: 739, column: 51, scope: !2681)
!2684 = !DILocation(line: 739, column: 3, scope: !2681)
!2685 = distinct !{!2685, !2686}
!2686 = !DILocation(line: 739, column: 3, scope: !2649)
!2687 = !DILocation(line: 749, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2649, file: !9, line: 749, column: 7)
!2689 = !DILocation(line: 749, column: 13, scope: !2688)
!2690 = !DILocation(line: 749, column: 7, scope: !2649)
!2691 = !DILocation(line: 751, column: 19, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !9, line: 749, column: 29)
!2693 = !DILocation(line: 751, column: 25, scope: !2692)
!2694 = !DILocation(line: 750, column: 4, scope: !2692)
!2695 = !DILocation(line: 752, column: 3, scope: !2692)
!2696 = !DILocation(line: 754, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2649, file: !9, line: 754, column: 7)
!2698 = !DILocation(line: 754, column: 13, scope: !2697)
!2699 = !DILocation(line: 754, column: 7, scope: !2649)
!2700 = !DILocalVariable(name: "subj", scope: !2701, file: !9, line: 755, type: !14)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !9, line: 754, column: 20)
!2702 = !DILocation(line: 755, column: 10, scope: !2701)
!2703 = !DILocation(line: 755, column: 34, scope: !2701)
!2704 = !DILocation(line: 755, column: 40, scope: !2701)
!2705 = !DILocation(line: 755, column: 17, scope: !2701)
!2706 = !DILocation(line: 756, column: 40, scope: !2701)
!2707 = !DILocation(line: 756, column: 4, scope: !2701)
!2708 = !DILocation(line: 757, column: 9, scope: !2701)
!2709 = !DILocation(line: 757, column: 4, scope: !2701)
!2710 = !DILocation(line: 762, column: 3, scope: !2701)
!2711 = !DILocation(line: 763, column: 4, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2697, file: !9, line: 762, column: 10)
!2713 = !DILocation(line: 765, column: 2, scope: !2649)
!2714 = !DILocation(line: 771, column: 6, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !8, file: !9, line: 771, column: 6)
!2716 = !DILocation(line: 771, column: 25, scope: !2715)
!2717 = !DILocation(line: 771, column: 6, scope: !8)
!2718 = !DILocation(line: 772, column: 10, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !9, line: 771, column: 32)
!2720 = !DILocation(line: 772, column: 55, scope: !2719)
!2721 = !DILocation(line: 772, column: 3, scope: !2719)
!2722 = !DILocation(line: 773, column: 3, scope: !2719)
!2723 = !DILocation(line: 775, column: 18, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !8, file: !9, line: 775, column: 6)
!2725 = !DILocation(line: 775, column: 6, scope: !2724)
!2726 = !DILocation(line: 775, column: 24, scope: !2724)
!2727 = !DILocation(line: 775, column: 6, scope: !8)
!2728 = !DILocation(line: 776, column: 10, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !9, line: 775, column: 31)
!2730 = !DILocation(line: 776, column: 54, scope: !2729)
!2731 = !DILocation(line: 776, column: 3, scope: !2729)
!2732 = !DILocation(line: 777, column: 3, scope: !2729)
!2733 = !DILocation(line: 779, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !8, file: !9, line: 779, column: 6)
!2735 = !DILocation(line: 779, column: 20, scope: !2734)
!2736 = !DILocation(line: 779, column: 6, scope: !8)
!2737 = !DILocation(line: 780, column: 10, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !9, line: 779, column: 27)
!2739 = !DILocation(line: 780, column: 57, scope: !2738)
!2740 = !DILocation(line: 780, column: 3, scope: !2738)
!2741 = !DILocation(line: 781, column: 3, scope: !2738)
!2742 = !DILocation(line: 785, column: 6, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !8, file: !9, line: 785, column: 6)
!2744 = !DILocation(line: 785, column: 12, scope: !2743)
!2745 = !DILocation(line: 785, column: 6, scope: !8)
!2746 = !DILocation(line: 786, column: 24, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !9, line: 786, column: 7)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !9, line: 785, column: 22)
!2749 = !DILocation(line: 786, column: 30, scope: !2747)
!2750 = !DILocation(line: 787, column: 40, scope: !2747)
!2751 = !DILocation(line: 786, column: 7, scope: !2747)
!2752 = !DILocation(line: 787, column: 46, scope: !2747)
!2753 = !DILocation(line: 786, column: 7, scope: !2748)
!2754 = !DILocation(line: 788, column: 11, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2747, file: !9, line: 787, column: 53)
!2756 = !DILocation(line: 789, column: 20, scope: !2755)
!2757 = !DILocation(line: 789, column: 27, scope: !2755)
!2758 = !DILocation(line: 789, column: 33, scope: !2755)
!2759 = !DILocation(line: 788, column: 4, scope: !2755)
!2760 = !DILocation(line: 790, column: 4, scope: !2755)
!2761 = !DILocation(line: 792, column: 2, scope: !2748)
!2762 = !DILocation(line: 796, column: 6, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !8, file: !9, line: 796, column: 6)
!2764 = !DILocation(line: 796, column: 12, scope: !2763)
!2765 = !DILocation(line: 796, column: 6, scope: !8)
!2766 = !DILocation(line: 797, column: 26, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !9, line: 797, column: 7)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !9, line: 796, column: 20)
!2769 = !DILocation(line: 797, column: 33, scope: !2767)
!2770 = !DILocation(line: 797, column: 24, scope: !2767)
!2771 = !DILocation(line: 797, column: 7, scope: !2767)
!2772 = !DILocation(line: 797, column: 7, scope: !2768)
!2773 = !DILocation(line: 798, column: 4, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2767, file: !9, line: 797, column: 45)
!2775 = !DILocation(line: 800, column: 3, scope: !2774)
!2776 = !DILocation(line: 801, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2768, file: !9, line: 801, column: 7)
!2778 = !DILocation(line: 801, column: 20, scope: !2777)
!2779 = !DILocation(line: 801, column: 7, scope: !2768)
!2780 = !DILocation(line: 802, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !9, line: 801, column: 27)
!2782 = !DILocation(line: 803, column: 20, scope: !2781)
!2783 = !DILocation(line: 803, column: 37, scope: !2781)
!2784 = !DILocation(line: 803, column: 36, scope: !2781)
!2785 = !DILocation(line: 803, column: 27, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2781, file: !9, discriminator: 1)
!2787 = !DILocation(line: 802, column: 4, scope: !2781)
!2788 = !DILocation(line: 804, column: 4, scope: !2781)
!2789 = !DILocation(line: 806, column: 3, scope: !2768)
!2790 = !DILocation(line: 807, column: 2, scope: !2768)
!2791 = !DILocation(line: 809, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !8, file: !9, line: 809, column: 6)
!2793 = !DILocation(line: 809, column: 12, scope: !2792)
!2794 = !DILocation(line: 809, column: 20, scope: !2792)
!2795 = !DILocation(line: 809, column: 39, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2792, file: !9, discriminator: 1)
!2797 = !DILocation(line: 809, column: 24, scope: !2796)
!2798 = !DILocation(line: 809, column: 46, scope: !2796)
!2799 = !DILocation(line: 809, column: 6, scope: !2796)
!2800 = !DILocation(line: 811, column: 24, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2792, file: !9, line: 809, column: 54)
!2802 = !DILocation(line: 811, column: 30, scope: !2801)
!2803 = !DILocation(line: 811, column: 49, scope: !2801)
!2804 = !DILocation(line: 811, column: 48, scope: !2801)
!2805 = !DILocation(line: 811, column: 39, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2801, file: !9, discriminator: 1)
!2807 = !DILocation(line: 811, column: 57, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2801, file: !9, discriminator: 2)
!2809 = !DILocation(line: 811, column: 56, scope: !2801)
!2810 = !DILocation(line: 810, column: 3, scope: !2801)
!2811 = !DILocation(line: 812, column: 3, scope: !2801)
!2812 = !DILocalVariable(name: "clisock", scope: !8, file: !9, line: 820, type: !2813)
!2813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, align: 32, elements: !2814)
!2814 = !{!2815}
!2815 = !DISubrange(count: 6)
!2816 = !DILocation(line: 820, column: 6, scope: !8)
!2817 = !DILocation(line: 821, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !8, file: !9, line: 821, column: 6)
!2819 = !DILocation(line: 821, column: 25, scope: !2818)
!2820 = !DILocation(line: 821, column: 6, scope: !2818)
!2821 = !DILocation(line: 822, column: 55, scope: !2818)
!2822 = !DILocation(line: 821, column: 6, scope: !8)
!2823 = !DILocation(line: 825, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !9, line: 825, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2818, file: !9, line: 822, column: 61)
!2826 = !DILocation(line: 825, column: 13, scope: !2824)
!2827 = !DILocation(line: 825, column: 7, scope: !2825)
!2828 = !DILocation(line: 826, column: 19, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !9, line: 825, column: 22)
!2830 = !DILocation(line: 826, column: 26, scope: !2829)
!2831 = !DILocation(line: 826, column: 32, scope: !2829)
!2832 = !DILocation(line: 826, column: 4, scope: !2829)
!2833 = !DILocation(line: 827, column: 3, scope: !2829)
!2834 = !DILocation(line: 828, column: 3, scope: !2825)
!2835 = !DILocation(line: 833, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !8, file: !9, line: 833, column: 6)
!2837 = !DILocation(line: 833, column: 12, scope: !2836)
!2838 = !DILocation(line: 833, column: 6, scope: !8)
!2839 = !DILocation(line: 834, column: 9, scope: !2836)
!2840 = !DILocation(line: 834, column: 3, scope: !2836)
!2841 = !DILocalVariable(name: "proxy", scope: !8, file: !9, line: 837, type: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64, align: 64)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_ctx_t", file: !2844, line: 35, baseType: !2845)
!2844 = !DIFile(filename: "proxy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_ctx", file: !2844, line: 35, flags: DIFlagFwdDecl)
!2846 = !DILocation(line: 837, column: 15, scope: !8)
!2847 = !DILocation(line: 837, column: 33, scope: !8)
!2848 = !DILocation(line: 837, column: 39, scope: !8)
!2849 = !DILocation(line: 837, column: 23, scope: !8)
!2850 = !DILocation(line: 838, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !8, file: !9, line: 838, column: 6)
!2852 = !DILocation(line: 838, column: 6, scope: !8)
!2853 = !DILocation(line: 839, column: 3, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !9, line: 838, column: 14)
!2855 = !DILocation(line: 840, column: 3, scope: !2854)
!2856 = !DILocation(line: 844, column: 19, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !8, file: !9, line: 844, column: 6)
!2858 = !DILocation(line: 844, column: 25, scope: !2857)
!2859 = !DILocation(line: 844, column: 35, scope: !2857)
!2860 = !DILocation(line: 844, column: 41, scope: !2857)
!2861 = !DILocation(line: 845, column: 19, scope: !2857)
!2862 = !DILocation(line: 845, column: 25, scope: !2857)
!2863 = !DILocation(line: 844, column: 6, scope: !2857)
!2864 = !DILocation(line: 845, column: 34, scope: !2857)
!2865 = !DILocation(line: 844, column: 6, scope: !8)
!2866 = !DILocation(line: 847, column: 28, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2857, file: !9, line: 845, column: 41)
!2868 = !DILocation(line: 847, column: 27, scope: !2867)
!2869 = !DILocation(line: 847, column: 18, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2867, file: !9, discriminator: 1)
!2871 = !DILocation(line: 847, column: 36, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2867, file: !9, discriminator: 2)
!2873 = !DILocation(line: 847, column: 35, scope: !2867)
!2874 = !DILocation(line: 846, column: 3, scope: !2867)
!2875 = !DILocation(line: 848, column: 3, scope: !2867)
!2876 = !DILocation(line: 851, column: 17, scope: !8)
!2877 = !DILocation(line: 851, column: 23, scope: !8)
!2878 = !DILocation(line: 851, column: 34, scope: !1856)
!2879 = !DILocation(line: 851, column: 40, scope: !1856)
!2880 = !DILocation(line: 851, column: 17, scope: !1856)
!2881 = !DILocation(line: 851, column: 17, scope: !2091)
!2882 = !DILocation(line: 851, column: 17, scope: !2352)
!2883 = !DILocation(line: 852, column: 17, scope: !8)
!2884 = !DILocation(line: 852, column: 23, scope: !8)
!2885 = !DILocation(line: 852, column: 35, scope: !1856)
!2886 = !DILocation(line: 852, column: 41, scope: !1856)
!2887 = !DILocation(line: 852, column: 17, scope: !1856)
!2888 = !DILocation(line: 852, column: 17, scope: !2091)
!2889 = !DILocation(line: 852, column: 17, scope: !2352)
!2890 = !DILocation(line: 853, column: 17, scope: !8)
!2891 = !DILocation(line: 853, column: 23, scope: !8)
!2892 = !DILocation(line: 853, column: 33, scope: !1856)
!2893 = !DILocation(line: 853, column: 39, scope: !1856)
!2894 = !DILocation(line: 853, column: 17, scope: !1856)
!2895 = !DILocation(line: 853, column: 17, scope: !2091)
!2896 = !DILocation(line: 853, column: 17, scope: !2352)
!2897 = !DILocation(line: 850, column: 2, scope: !8)
!2898 = !DILocation(line: 854, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !8, file: !9, line: 854, column: 6)
!2900 = !DILocation(line: 854, column: 19, scope: !2899)
!2901 = !DILocation(line: 854, column: 6, scope: !8)
!2902 = !DILocation(line: 855, column: 10, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !9, line: 854, column: 26)
!2904 = !DILocation(line: 855, column: 48, scope: !2903)
!2905 = !DILocation(line: 855, column: 3, scope: !2903)
!2906 = !DILocation(line: 856, column: 3, scope: !2903)
!2907 = !DILocation(line: 860, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !8, file: !9, line: 860, column: 6)
!2909 = !DILocation(line: 860, column: 21, scope: !2908)
!2910 = !DILocation(line: 860, column: 29, scope: !2908)
!2911 = !DILocation(line: 860, column: 6, scope: !2908)
!2912 = !DILocation(line: 860, column: 41, scope: !2908)
!2913 = !DILocation(line: 860, column: 6, scope: !8)
!2914 = !DILocation(line: 861, column: 10, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !9, line: 860, column: 48)
!2916 = !DILocation(line: 862, column: 19, scope: !2915)
!2917 = !DILocation(line: 862, column: 36, scope: !2915)
!2918 = !DILocation(line: 862, column: 35, scope: !2915)
!2919 = !DILocation(line: 862, column: 26, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2915, file: !9, discriminator: 1)
!2921 = !DILocation(line: 861, column: 3, scope: !2915)
!2922 = !DILocation(line: 863, column: 3, scope: !2915)
!2923 = !DILocation(line: 865, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !8, file: !9, line: 865, column: 6)
!2925 = !DILocation(line: 865, column: 22, scope: !2924)
!2926 = !DILocation(line: 865, column: 6, scope: !8)
!2927 = !DILocation(line: 866, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !9, line: 865, column: 29)
!2929 = !DILocation(line: 867, column: 3, scope: !2928)
!2930 = !DILocation(line: 869, column: 6, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !8, file: !9, line: 869, column: 6)
!2932 = !DILocation(line: 869, column: 17, scope: !2931)
!2933 = !DILocation(line: 869, column: 6, scope: !8)
!2934 = !DILocation(line: 870, column: 3, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !9, line: 869, column: 24)
!2936 = !DILocation(line: 871, column: 3, scope: !2935)
!2937 = !DILocation(line: 873, column: 5, scope: !8)
!2938 = !DILocation(line: 875, column: 12, scope: !8)
!2939 = !DILocation(line: 875, column: 2, scope: !8)
!2940 = !DILocation(line: 876, column: 13, scope: !8)
!2941 = !DILocation(line: 876, column: 2, scope: !8)
!2942 = !DILocation(line: 877, column: 2, scope: !8)
!2943 = !DILocation(line: 879, column: 2, scope: !8)
!2944 = !DILocation(line: 881, column: 2, scope: !8)
!2945 = !DILocation(line: 881, column: 2, scope: !1856)
!2946 = !DILocation(line: 881, column: 2, scope: !2091)
!2947 = !DILocation(line: 885, column: 12, scope: !8)
!2948 = !DILocation(line: 885, column: 2, scope: !8)
!2949 = !DILocation(line: 886, column: 2, scope: !8)
!2950 = !DILocation(line: 887, column: 9, scope: !8)
!2951 = !DILocation(line: 887, column: 2, scope: !8)
!2952 = !DILocation(line: 888, column: 1, scope: !8)
!2953 = distinct !DISubprogram(name: "main_version", scope: !9, file: !9, line: 74, type: !1760, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2954 = !DILocation(line: 76, column: 9, scope: !2953)
!2955 = !DILocation(line: 77, column: 30, scope: !2953)
!2956 = !DILocation(line: 77, column: 45, scope: !2953)
!2957 = !DILocation(line: 76, column: 2, scope: !2953)
!2958 = !DILocation(line: 78, column: 13, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2953, file: !9, line: 78, column: 6)
!2960 = !DILocation(line: 78, column: 6, scope: !2959)
!2961 = !DILocation(line: 78, column: 28, scope: !2959)
!2962 = !DILocation(line: 78, column: 6, scope: !2953)
!2963 = !DILocation(line: 90, column: 10, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !9, line: 78, column: 33)
!2965 = !DILocation(line: 90, column: 3, scope: !2964)
!2966 = !DILocation(line: 92, column: 10, scope: !2964)
!2967 = !DILocation(line: 92, column: 3, scope: !2964)
!2968 = !DILocation(line: 94, column: 10, scope: !2964)
!2969 = !DILocation(line: 94, column: 3, scope: !2964)
!2970 = !DILocation(line: 96, column: 10, scope: !2964)
!2971 = !DILocation(line: 96, column: 3, scope: !2964)
!2972 = !DILocation(line: 98, column: 10, scope: !2964)
!2973 = !DILocation(line: 98, column: 3, scope: !2964)
!2974 = !DILocation(line: 100, column: 2, scope: !2964)
!2975 = !DILocation(line: 101, column: 9, scope: !2953)
!2976 = !DILocation(line: 101, column: 2, scope: !2953)
!2977 = !DILocation(line: 103, column: 9, scope: !2953)
!2978 = !DILocation(line: 103, column: 2, scope: !2953)
!2979 = !DILocation(line: 104, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2953, file: !9, line: 104, column: 6)
!2981 = !DILocation(line: 104, column: 6, scope: !2953)
!2982 = !DILocation(line: 105, column: 10, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !9, line: 104, column: 21)
!2984 = !DILocation(line: 105, column: 38, scope: !2983)
!2985 = !DILocation(line: 105, column: 3, scope: !2983)
!2986 = !DILocation(line: 106, column: 2, scope: !2983)
!2987 = !DILocation(line: 107, column: 6, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2953, file: !9, line: 107, column: 6)
!2989 = !DILocation(line: 107, column: 6, scope: !2953)
!2990 = !DILocation(line: 108, column: 10, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !9, line: 107, column: 25)
!2992 = !DILocation(line: 108, column: 36, scope: !2991)
!2993 = !DILocation(line: 108, column: 3, scope: !2991)
!2994 = !DILocation(line: 109, column: 2, scope: !2991)
!2995 = !DILocation(line: 110, column: 2, scope: !2953)
!2996 = !DILocation(line: 111, column: 9, scope: !2953)
!2997 = !DILocation(line: 111, column: 2, scope: !2953)
!2998 = !DILocation(line: 115, column: 9, scope: !2953)
!2999 = !DILocation(line: 115, column: 2, scope: !2953)
!3000 = !DILocation(line: 117, column: 2, scope: !2953)
!3001 = !DILocation(line: 118, column: 9, scope: !2953)
!3002 = !DILocation(line: 118, column: 2, scope: !2953)
!3003 = !DILocation(line: 119, column: 9, scope: !2953)
!3004 = !DILocation(line: 119, column: 51, scope: !2953)
!3005 = !DILocation(line: 119, column: 2, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !2953, file: !9, discriminator: 1)
!3007 = !DILocation(line: 121, column: 9, scope: !2953)
!3008 = !DILocation(line: 121, column: 2, scope: !2953)
!3009 = !DILocalVariable(name: "lnv", scope: !2953, file: !9, line: 123, type: !22)
!3010 = !DILocation(line: 123, column: 14, scope: !2953)
!3011 = !DILocation(line: 123, column: 20, scope: !2953)
!3012 = !DILocation(line: 124, column: 15, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2953, file: !9, line: 124, column: 6)
!3014 = !DILocation(line: 124, column: 7, scope: !3013)
!3015 = !DILocation(line: 124, column: 6, scope: !2953)
!3016 = !DILocation(line: 125, column: 7, scope: !3013)
!3017 = !DILocation(line: 125, column: 3, scope: !3013)
!3018 = !DILocation(line: 126, column: 9, scope: !2953)
!3019 = !DILocation(line: 126, column: 49, scope: !2953)
!3020 = !DILocation(line: 126, column: 2, scope: !2953)
!3021 = !DILocation(line: 130, column: 9, scope: !2953)
!3022 = !DILocation(line: 130, column: 2, scope: !2953)
!3023 = !DILocalVariable(name: "lpv", scope: !2953, file: !9, line: 131, type: !22)
!3024 = !DILocation(line: 131, column: 14, scope: !2953)
!3025 = !DILocation(line: 131, column: 20, scope: !2953)
!3026 = !DILocation(line: 132, column: 15, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2953, file: !9, line: 132, column: 6)
!3028 = !DILocation(line: 132, column: 7, scope: !3027)
!3029 = !DILocation(line: 132, column: 6, scope: !2953)
!3030 = !DILocation(line: 133, column: 7, scope: !3027)
!3031 = !DILocation(line: 133, column: 3, scope: !3027)
!3032 = !DILocation(line: 134, column: 9, scope: !2953)
!3033 = !DILocation(line: 134, column: 50, scope: !2953)
!3034 = !DILocation(line: 134, column: 2, scope: !2953)
!3035 = !DILocation(line: 136, column: 9, scope: !2953)
!3036 = !DILocation(line: 136, column: 44, scope: !2953)
!3037 = !DILocation(line: 136, column: 2, scope: !3006)
!3038 = !DILocation(line: 137, column: 1, scope: !2953)
!3039 = distinct !DISubprogram(name: "main_usage", scope: !9, file: !9, line: 143, type: !1760, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3040 = !DILocalVariable(name: "dflt", scope: !3039, file: !9, line: 145, type: !22)
!3041 = !DILocation(line: 145, column: 14, scope: !3039)
!3042 = !DILocalVariable(name: "warn", scope: !3039, file: !9, line: 145, type: !22)
!3043 = !DILocation(line: 145, column: 21, scope: !3039)
!3044 = !DILocalVariable(name: "usagefmt1", scope: !3039, file: !9, line: 146, type: !22)
!3045 = !DILocation(line: 146, column: 14, scope: !3039)
!3046 = !DILocalVariable(name: "usagefmt2", scope: !3039, file: !9, line: 244, type: !22)
!3047 = !DILocation(line: 244, column: 14, scope: !3039)
!3048 = !DILocation(line: 256, column: 15, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3039, file: !9, line: 256, column: 6)
!3050 = !DILocation(line: 256, column: 13, scope: !3049)
!3051 = !DILocation(line: 256, column: 6, scope: !3039)
!3052 = !DILocation(line: 257, column: 8, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !9, line: 256, column: 38)
!3054 = !DILocation(line: 258, column: 8, scope: !3053)
!3055 = !DILocation(line: 260, column: 2, scope: !3053)
!3056 = !DILocation(line: 261, column: 8, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !9, line: 260, column: 9)
!3058 = !DILocation(line: 264, column: 9, scope: !3039)
!3059 = !DILocation(line: 264, column: 17, scope: !3039)
!3060 = !DILocation(line: 264, column: 28, scope: !3039)
!3061 = !DILocation(line: 264, column: 43, scope: !3039)
!3062 = !DILocation(line: 264, column: 2, scope: !3039)
!3063 = !DILocation(line: 265, column: 9, scope: !3039)
!3064 = !DILocation(line: 265, column: 17, scope: !3039)
!3065 = !DILocation(line: 265, column: 28, scope: !3039)
!3066 = !DILocation(line: 265, column: 43, scope: !3039)
!3067 = !DILocation(line: 265, column: 2, scope: !3039)
!3068 = !DILocation(line: 266, column: 1, scope: !3039)
!3069 = distinct !DISubprogram(name: "main_loadtgcrt", scope: !9, file: !9, line: 273, type: !3070, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!12, !22, !4}
!3072 = !DILocalVariable(name: "filename", arg: 1, scope: !3069, file: !9, line: 273, type: !22)
!3073 = !DILocation(line: 273, column: 28, scope: !3069)
!3074 = !DILocalVariable(name: "arg", arg: 2, scope: !3069, file: !9, line: 273, type: !4)
!3075 = !DILocation(line: 273, column: 44, scope: !3069)
!3076 = !DILocalVariable(name: "opts", scope: !3069, file: !9, line: 275, type: !28)
!3077 = !DILocation(line: 275, column: 10, scope: !3069)
!3078 = !DILocation(line: 275, column: 17, scope: !3069)
!3079 = !DILocalVariable(name: "cert", scope: !3069, file: !9, line: 276, type: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64, align: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "cert_t", file: !3082, line: 43, baseType: !3083)
!3082 = !DIFile(filename: "cert.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cert", file: !3082, line: 37, size: 576, align: 64, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3116}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3083, file: !3082, line: 38, baseType: !876, size: 64, align: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "crt", scope: !3083, file: !3082, line: 39, baseType: !826, size: 64, align: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !3083, file: !3082, line: 40, baseType: !1351, size: 64, align: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3083, file: !3082, line: 41, baseType: !3089, size: 320, align: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !3090, line: 128, baseType: !3091)
!3090 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3090, line: 90, size: 320, align: 64, elements: !3092)
!3092 = !{!3093, !3111, !3115}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !3091, file: !3090, line: 125, baseType: !3094, size: 320, align: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !3090, line: 92, size: 320, align: 64, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3103, !3104}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !3094, file: !3090, line: 94, baseType: !12, size: 32, align: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3094, file: !3090, line: 95, baseType: !34, size: 32, align: 32, offset: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !3094, file: !3090, line: 96, baseType: !12, size: 32, align: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !3094, file: !3090, line: 98, baseType: !34, size: 32, align: 32, offset: 96)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !3094, file: !3090, line: 102, baseType: !12, size: 32, align: 32, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !3094, file: !3090, line: 104, baseType: !3102, size: 16, align: 16, offset: 160)
!3102 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !3094, file: !3090, line: 105, baseType: !3102, size: 16, align: 16, offset: 176)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !3094, file: !3090, line: 106, baseType: !3105, size: 128, align: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !3090, line: 79, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !3090, line: 75, size: 128, align: 64, elements: !3107)
!3107 = !{!3108, !3110}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !3106, file: !3090, line: 77, baseType: !3109, size: 64, align: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64, align: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !3106, file: !3090, line: 78, baseType: !3109, size: 64, align: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3091, file: !3090, line: 126, baseType: !3112, size: 320, align: 8)
!3112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, align: 8, elements: !3113)
!3113 = !{!3114}
!3114 = !DISubrange(count: 40)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3091, file: !3090, line: 127, baseType: !118, size: 64, align: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !3083, file: !3082, line: 42, baseType: !193, size: 64, align: 64, offset: 512)
!3117 = !DILocation(line: 276, column: 10, scope: !3069)
!3118 = !DILocalVariable(name: "names", scope: !3069, file: !9, line: 277, type: !13)
!3119 = !DILocation(line: 277, column: 9, scope: !3069)
!3120 = !DILocation(line: 279, column: 23, scope: !3069)
!3121 = !DILocation(line: 279, column: 9, scope: !3069)
!3122 = !DILocation(line: 279, column: 7, scope: !3069)
!3123 = !DILocation(line: 280, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3069, file: !9, line: 280, column: 6)
!3125 = !DILocation(line: 280, column: 6, scope: !3069)
!3126 = !DILocation(line: 282, column: 29, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !9, line: 280, column: 13)
!3128 = !DILocation(line: 281, column: 3, scope: !3127)
!3129 = !DILocation(line: 283, column: 3, scope: !3127)
!3130 = !DILocation(line: 285, column: 29, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3069, file: !9, line: 285, column: 6)
!3132 = !DILocation(line: 285, column: 35, scope: !3131)
!3133 = !DILocation(line: 285, column: 40, scope: !3131)
!3134 = !DILocation(line: 285, column: 46, scope: !3131)
!3135 = !DILocation(line: 285, column: 6, scope: !3131)
!3136 = !DILocation(line: 285, column: 51, scope: !3131)
!3137 = !DILocation(line: 285, column: 6, scope: !3069)
!3138 = !DILocation(line: 287, column: 30, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3131, file: !9, line: 285, column: 57)
!3140 = !DILocation(line: 286, column: 3, scope: !3139)
!3141 = !DILocation(line: 288, column: 22, scope: !3139)
!3142 = !DILocation(line: 288, column: 3, scope: !3139)
!3143 = !DILocation(line: 289, column: 3, scope: !3139)
!3144 = !DILocation(line: 298, column: 25, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3069, file: !9, line: 298, column: 6)
!3146 = !DILocation(line: 298, column: 32, scope: !3145)
!3147 = !DILocation(line: 298, column: 23, scope: !3145)
!3148 = !DILocation(line: 298, column: 6, scope: !3145)
!3149 = !DILocation(line: 298, column: 6, scope: !3069)
!3150 = !DILocation(line: 299, column: 39, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3145, file: !9, line: 298, column: 44)
!3152 = !DILocation(line: 299, column: 3, scope: !3151)
!3153 = !DILocation(line: 300, column: 2, scope: !3151)
!3154 = !DILocation(line: 301, column: 25, scope: !3069)
!3155 = !DILocation(line: 301, column: 31, scope: !3069)
!3156 = !DILocation(line: 301, column: 10, scope: !3069)
!3157 = !DILocation(line: 301, column: 8, scope: !3069)
!3158 = !DILocalVariable(name: "p", scope: !3159, file: !9, line: 302, type: !13)
!3159 = distinct !DILexicalBlock(scope: !3069, file: !9, line: 302, column: 2)
!3160 = !DILocation(line: 302, column: 14, scope: !3159)
!3161 = !DILocation(line: 302, column: 18, scope: !3159)
!3162 = !DILocation(line: 302, column: 7, scope: !3159)
!3163 = !DILocation(line: 302, column: 26, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3165, file: !9, discriminator: 1)
!3165 = distinct !DILexicalBlock(scope: !3159, file: !9, line: 302, column: 2)
!3166 = !DILocation(line: 302, column: 25, scope: !3164)
!3167 = !DILocation(line: 302, column: 2, scope: !3164)
!3168 = !DILocalVariable(name: "sep", scope: !3169, file: !9, line: 304, type: !14)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !9, line: 302, column: 34)
!3170 = !DILocation(line: 304, column: 9, scope: !3169)
!3171 = !DILocation(line: 305, column: 22, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !9, line: 305, column: 7)
!3173 = !DILocation(line: 305, column: 21, scope: !3172)
!3174 = !DILocation(line: 305, column: 14, scope: !3172)
!3175 = !DILocation(line: 305, column: 12, scope: !3172)
!3176 = !DILocation(line: 305, column: 7, scope: !3169)
!3177 = !DILocation(line: 306, column: 5, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3172, file: !9, line: 305, column: 32)
!3179 = !DILocation(line: 306, column: 9, scope: !3178)
!3180 = !DILocation(line: 307, column: 3, scope: !3178)
!3181 = !DILocation(line: 308, column: 26, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3169, file: !9, line: 308, column: 7)
!3183 = !DILocation(line: 308, column: 33, scope: !3182)
!3184 = !DILocation(line: 308, column: 24, scope: !3182)
!3185 = !DILocation(line: 308, column: 7, scope: !3182)
!3186 = !DILocation(line: 308, column: 7, scope: !3169)
!3187 = !DILocation(line: 309, column: 29, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3182, file: !9, line: 308, column: 45)
!3189 = !DILocation(line: 309, column: 28, scope: !3188)
!3190 = !DILocation(line: 309, column: 4, scope: !3188)
!3191 = !DILocation(line: 310, column: 3, scope: !3188)
!3192 = !DILocation(line: 311, column: 13, scope: !3169)
!3193 = !DILocation(line: 311, column: 47, scope: !3169)
!3194 = !DILocation(line: 311, column: 46, scope: !3169)
!3195 = !DILocation(line: 311, column: 29, scope: !3169)
!3196 = !DILocation(line: 311, column: 68, scope: !3169)
!3197 = !DILocation(line: 311, column: 51, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3169, file: !9, discriminator: 1)
!3199 = !DILocation(line: 311, column: 3, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3169, file: !9, discriminator: 2)
!3201 = !DILocation(line: 312, column: 9, scope: !3169)
!3202 = !DILocation(line: 312, column: 8, scope: !3169)
!3203 = !DILocation(line: 312, column: 3, scope: !3169)
!3204 = !DILocation(line: 313, column: 2, scope: !3169)
!3205 = !DILocation(line: 302, column: 30, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3165, file: !9, discriminator: 2)
!3207 = !DILocation(line: 302, column: 2, scope: !3206)
!3208 = distinct !{!3208, !3209}
!3209 = !DILocation(line: 302, column: 2, scope: !3069)
!3210 = !DILocation(line: 314, column: 25, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3069, file: !9, line: 314, column: 6)
!3212 = !DILocation(line: 314, column: 32, scope: !3211)
!3213 = !DILocation(line: 314, column: 23, scope: !3211)
!3214 = !DILocation(line: 314, column: 6, scope: !3211)
!3215 = !DILocation(line: 314, column: 6, scope: !3069)
!3216 = !DILocation(line: 315, column: 3, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3211, file: !9, line: 314, column: 44)
!3218 = !DILocation(line: 316, column: 2, scope: !3217)
!3219 = !DILocation(line: 317, column: 7, scope: !3069)
!3220 = !DILocation(line: 317, column: 2, scope: !3069)
!3221 = !DILocation(line: 318, column: 12, scope: !3069)
!3222 = !DILocation(line: 318, column: 2, scope: !3069)
!3223 = !DILocation(line: 319, column: 2, scope: !3069)
!3224 = !DILocation(line: 320, column: 1, scope: !3069)
