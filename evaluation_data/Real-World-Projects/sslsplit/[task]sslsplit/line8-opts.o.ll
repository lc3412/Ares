; ModuleID = './line8-opts.o.i'
source_filename = "./line8-opts.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SSL/TLS protocol: %s%s%s%s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ssl3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"tls10\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tls11\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tls12\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"negotiate\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" -ssl3\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" -tls10\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" -tls11\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" -tls12\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"autossl\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Unknown connection type '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sni\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"SNI hostname lookup only works for ssl and https proxyspecs\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Invalid port '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Incomplete proxyspec!\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"[%s]:%s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sni %i\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"[%s]:%s %s%s%s %s\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"|upgrade\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"|http\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"%s: error loading CA cert from '%s':\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"%s: error loading CA key from '%s':\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"%s: error loading chain from '%s':\0A\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"%s: error loading leaf key from '%s':\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"%s: '%s' is not a directory\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"%s: error loading client cert from '%s':\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"%s: error loading client key from '%s':\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"%s: error loading DH params from '%s':\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"%s: unknown curve '%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"%s: cannot use -r multiple times\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"tls1\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"%s: Unsupported SSL/TLS protocol '%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"%s: '%s' is not an existing user\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"%s: '%s' is not an existing group\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"%s: Failed to realpath '%s': %s (%i)\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Directory part of '%s' does not exist\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Failed to realpath '%s': %s (%i)\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Error opening conf file '%s': %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"Error in conf file: getline() returns NULL line after line %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"%s: Failed to split '%s' in lhs/rhs: %s (%i)\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"%s: Failed to create '%s': %s (%i)\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Error in option: No option name\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"CACert\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"CAKey\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"ClientCert\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"ClientKey\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"CAChain\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"LeafCerts\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"CRL\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"TargetCertDir\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"WriteGenCertsDir\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"WriteAllCertsDir\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"DenyOCSP\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Passthrough\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"DHGroupParams\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"ECDHCurve\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"SSLCompression\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"ForceSSLProto\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"DisableSSLProto\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Ciphers\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"OpenSSLEngine\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"NATEngine\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Chroot\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"PidFile\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"ConnectLog\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"ContentLog\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"ContentLogDir\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"ContentLogPathSpec\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"MasterKeyLog\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"PcapLog\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"PcapLogDir\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"PcapLogPathSpec\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"MirrorIf\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"MirrorTarget\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Daemon\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"ProxySpec\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"VerifyPeer\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"AddSNIToCertificate\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"Error in conf: Unknown option '%s' at line %d\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"Error in conf: Invalid '%s' value '%s' at line %d, use yes|no\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @oom_die(i8* nonnull) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !54), !dbg !55
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !56
  %4 = load i8*, i8** %2, align 8, !dbg !57
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* %4), !dbg !58
  call void @exit(i32 1) #9, !dbg !59
  unreachable, !dbg !59
                                                  ; No predecessors!
  ret void, !dbg !60
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define noalias %struct.opts* @opts_new() #4 !dbg !61 {
  %1 = alloca %struct.opts*, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %1, metadata !1832, metadata !54), !dbg !1833
  %2 = call noalias i8* @malloc(i64 240) #10, !dbg !1834
  %3 = bitcast i8* %2 to %struct.opts*, !dbg !1834
  store %struct.opts* %3, %struct.opts** %1, align 8, !dbg !1835
  %4 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1836
  %5 = bitcast %struct.opts* %4 to i8*, !dbg !1837
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 240, i32 8, i1 false), !dbg !1837
  %6 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1838
  %7 = bitcast %struct.opts* %6 to i16*, !dbg !1839
  %8 = load i16, i16* %7, align 8, !dbg !1840
  %9 = and i16 %8, -5, !dbg !1840
  %10 = or i16 %9, 4, !dbg !1840
  store i16 %10, i16* %7, align 8, !dbg !1840
  %11 = call %struct.stack_st* @sk_new_null(), !dbg !1841
  %12 = bitcast %struct.stack_st* %11 to %struct.stack_st_X509*, !dbg !1842
  %13 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1843
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 22, !dbg !1844
  store %struct.stack_st_X509* %12, %struct.stack_st_X509** %14, align 8, !dbg !1845
  %15 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1846
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %15, i32 0, i32 18, !dbg !1847
  store %struct.ssl_method_st* ()* @SSLv23_method, %struct.ssl_method_st* ()** %16, align 8, !dbg !1848
  %17 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1849
  %18 = getelementptr inbounds %struct.opts, %struct.opts* %17, i32 0, i32 29, !dbg !1850
  %19 = load i8, i8* %18, align 8, !dbg !1851
  %20 = and i8 %19, -3, !dbg !1851
  %21 = or i8 %20, 2, !dbg !1851
  store i8 %21, i8* %18, align 8, !dbg !1851
  %22 = load %struct.opts*, %struct.opts** %1, align 8, !dbg !1852
  ret %struct.opts* %22, !dbg !1853
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare %struct.stack_st* @sk_new_null() #2

declare %struct.ssl_method_st* @SSLv23_method() #2

; Function Attrs: nounwind uwtable
define void @opts_free(%struct.opts* nonnull) #4 !dbg !1854 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !1857, metadata !54), !dbg !1858
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1859
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 22, !dbg !1860
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %4, align 8, !dbg !1860
  %6 = bitcast %struct.stack_st_X509* %5 to %struct.stack_st*, !dbg !1861
  call void @sk_pop_free(%struct.stack_st* %6, void (i8*)* bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)), !dbg !1859
  %7 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1862
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 23, !dbg !1864
  %9 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !1864
  %10 = icmp ne %struct.x509_st* %9, null, !dbg !1862
  br i1 %10, label %11, label %15, !dbg !1865

; <label>:11:                                     ; preds = %1
  %12 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1866
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 23, !dbg !1868
  %14 = load %struct.x509_st*, %struct.x509_st** %13, align 8, !dbg !1868
  call void @X509_free(%struct.x509_st* %14), !dbg !1869
  br label %15, !dbg !1870

; <label>:15:                                     ; preds = %11, %1
  %16 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1871
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 24, !dbg !1873
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %17, align 8, !dbg !1873
  %19 = icmp ne %struct.evp_pkey_st* %18, null, !dbg !1871
  br i1 %19, label %20, label %24, !dbg !1874

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1875
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 24, !dbg !1877
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %22, align 8, !dbg !1877
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %23), !dbg !1878
  br label %24, !dbg !1879

; <label>:24:                                     ; preds = %20, %15
  %25 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1880
  %26 = getelementptr inbounds %struct.opts, %struct.opts* %25, i32 0, i32 19, !dbg !1882
  %27 = load %struct.x509_st*, %struct.x509_st** %26, align 8, !dbg !1882
  %28 = icmp ne %struct.x509_st* %27, null, !dbg !1880
  br i1 %28, label %29, label %33, !dbg !1883

; <label>:29:                                     ; preds = %24
  %30 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1884
  %31 = getelementptr inbounds %struct.opts, %struct.opts* %30, i32 0, i32 19, !dbg !1886
  %32 = load %struct.x509_st*, %struct.x509_st** %31, align 8, !dbg !1886
  call void @X509_free(%struct.x509_st* %32), !dbg !1887
  br label %33, !dbg !1888

; <label>:33:                                     ; preds = %29, %24
  %34 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1889
  %35 = getelementptr inbounds %struct.opts, %struct.opts* %34, i32 0, i32 20, !dbg !1891
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %35, align 8, !dbg !1891
  %37 = icmp ne %struct.evp_pkey_st* %36, null, !dbg !1889
  br i1 %37, label %38, label %42, !dbg !1892

; <label>:38:                                     ; preds = %33
  %39 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1893
  %40 = getelementptr inbounds %struct.opts, %struct.opts* %39, i32 0, i32 20, !dbg !1895
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %40, align 8, !dbg !1895
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %41), !dbg !1896
  br label %42, !dbg !1897

; <label>:42:                                     ; preds = %38, %33
  %43 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1898
  %44 = getelementptr inbounds %struct.opts, %struct.opts* %43, i32 0, i32 21, !dbg !1900
  %45 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %44, align 8, !dbg !1900
  %46 = icmp ne %struct.evp_pkey_st* %45, null, !dbg !1898
  br i1 %46, label %47, label %51, !dbg !1901

; <label>:47:                                     ; preds = %42
  %48 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1902
  %49 = getelementptr inbounds %struct.opts, %struct.opts* %48, i32 0, i32 21, !dbg !1904
  %50 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %49, align 8, !dbg !1904
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %50), !dbg !1905
  br label %51, !dbg !1906

; <label>:51:                                     ; preds = %47, %42
  %52 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1907
  %53 = getelementptr inbounds %struct.opts, %struct.opts* %52, i32 0, i32 25, !dbg !1909
  %54 = load %struct.dh_st*, %struct.dh_st** %53, align 8, !dbg !1909
  %55 = icmp ne %struct.dh_st* %54, null, !dbg !1907
  br i1 %55, label %56, label %60, !dbg !1910

; <label>:56:                                     ; preds = %51
  %57 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1911
  %58 = getelementptr inbounds %struct.opts, %struct.opts* %57, i32 0, i32 25, !dbg !1913
  %59 = load %struct.dh_st*, %struct.dh_st** %58, align 8, !dbg !1913
  call void @DH_free(%struct.dh_st* %59), !dbg !1914
  br label %60, !dbg !1915

; <label>:60:                                     ; preds = %56, %51
  %61 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1916
  %62 = getelementptr inbounds %struct.opts, %struct.opts* %61, i32 0, i32 26, !dbg !1918
  %63 = load i8*, i8** %62, align 8, !dbg !1918
  %64 = icmp ne i8* %63, null, !dbg !1916
  br i1 %64, label %65, label %69, !dbg !1919

; <label>:65:                                     ; preds = %60
  %66 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1920
  %67 = getelementptr inbounds %struct.opts, %struct.opts* %66, i32 0, i32 26, !dbg !1922
  %68 = load i8*, i8** %67, align 8, !dbg !1922
  call void @free(i8* %68) #10, !dbg !1923
  br label %69, !dbg !1924

; <label>:69:                                     ; preds = %65, %60
  %70 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1925
  %71 = getelementptr inbounds %struct.opts, %struct.opts* %70, i32 0, i32 27, !dbg !1927
  %72 = load %struct.proxyspec*, %struct.proxyspec** %71, align 8, !dbg !1927
  %73 = icmp ne %struct.proxyspec* %72, null, !dbg !1925
  br i1 %73, label %74, label %78, !dbg !1928

; <label>:74:                                     ; preds = %69
  %75 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1929
  %76 = getelementptr inbounds %struct.opts, %struct.opts* %75, i32 0, i32 27, !dbg !1931
  %77 = load %struct.proxyspec*, %struct.proxyspec** %76, align 8, !dbg !1931
  call void @proxyspec_free(%struct.proxyspec* %77), !dbg !1932
  br label %78, !dbg !1933

; <label>:78:                                     ; preds = %74, %69
  %79 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1934
  %80 = getelementptr inbounds %struct.opts, %struct.opts* %79, i32 0, i32 2, !dbg !1936
  %81 = load i8*, i8** %80, align 8, !dbg !1936
  %82 = icmp ne i8* %81, null, !dbg !1934
  br i1 %82, label %83, label %87, !dbg !1937

; <label>:83:                                     ; preds = %78
  %84 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1938
  %85 = getelementptr inbounds %struct.opts, %struct.opts* %84, i32 0, i32 2, !dbg !1940
  %86 = load i8*, i8** %85, align 8, !dbg !1940
  call void @free(i8* %86) #10, !dbg !1941
  br label %87, !dbg !1942

; <label>:87:                                     ; preds = %83, %78
  %88 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1943
  %89 = getelementptr inbounds %struct.opts, %struct.opts* %88, i32 0, i32 1, !dbg !1945
  %90 = load i8*, i8** %89, align 8, !dbg !1945
  %91 = icmp ne i8* %90, null, !dbg !1943
  br i1 %91, label %92, label %96, !dbg !1946

; <label>:92:                                     ; preds = %87
  %93 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1947
  %94 = getelementptr inbounds %struct.opts, %struct.opts* %93, i32 0, i32 1, !dbg !1949
  %95 = load i8*, i8** %94, align 8, !dbg !1949
  call void @free(i8* %95) #10, !dbg !1950
  br label %96, !dbg !1951

; <label>:96:                                     ; preds = %92, %87
  %97 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1952
  %98 = getelementptr inbounds %struct.opts, %struct.opts* %97, i32 0, i32 4, !dbg !1954
  %99 = load i8*, i8** %98, align 8, !dbg !1954
  %100 = icmp ne i8* %99, null, !dbg !1952
  br i1 %100, label %101, label %105, !dbg !1955

; <label>:101:                                    ; preds = %96
  %102 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1956
  %103 = getelementptr inbounds %struct.opts, %struct.opts* %102, i32 0, i32 4, !dbg !1958
  %104 = load i8*, i8** %103, align 8, !dbg !1958
  call void @free(i8* %104) #10, !dbg !1959
  br label %105, !dbg !1960

; <label>:105:                                    ; preds = %101, %96
  %106 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1961
  %107 = getelementptr inbounds %struct.opts, %struct.opts* %106, i32 0, i32 28, !dbg !1963
  %108 = load i8*, i8** %107, align 8, !dbg !1963
  %109 = icmp ne i8* %108, null, !dbg !1961
  br i1 %109, label %110, label %114, !dbg !1964

; <label>:110:                                    ; preds = %105
  %111 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1965
  %112 = getelementptr inbounds %struct.opts, %struct.opts* %111, i32 0, i32 28, !dbg !1967
  %113 = load i8*, i8** %112, align 8, !dbg !1967
  call void @free(i8* %113) #10, !dbg !1968
  br label %114, !dbg !1969

; <label>:114:                                    ; preds = %110, %105
  %115 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1970
  %116 = getelementptr inbounds %struct.opts, %struct.opts* %115, i32 0, i32 5, !dbg !1972
  %117 = load i8*, i8** %116, align 8, !dbg !1972
  %118 = icmp ne i8* %117, null, !dbg !1970
  br i1 %118, label %119, label %123, !dbg !1973

; <label>:119:                                    ; preds = %114
  %120 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1974
  %121 = getelementptr inbounds %struct.opts, %struct.opts* %120, i32 0, i32 5, !dbg !1976
  %122 = load i8*, i8** %121, align 8, !dbg !1976
  call void @free(i8* %122) #10, !dbg !1977
  br label %123, !dbg !1978

; <label>:123:                                    ; preds = %119, %114
  %124 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1979
  %125 = getelementptr inbounds %struct.opts, %struct.opts* %124, i32 0, i32 6, !dbg !1981
  %126 = load i8*, i8** %125, align 8, !dbg !1981
  %127 = icmp ne i8* %126, null, !dbg !1979
  br i1 %127, label %128, label %132, !dbg !1982

; <label>:128:                                    ; preds = %123
  %129 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1983
  %130 = getelementptr inbounds %struct.opts, %struct.opts* %129, i32 0, i32 6, !dbg !1985
  %131 = load i8*, i8** %130, align 8, !dbg !1985
  call void @free(i8* %131) #10, !dbg !1986
  br label %132, !dbg !1987

; <label>:132:                                    ; preds = %128, %123
  %133 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1988
  %134 = getelementptr inbounds %struct.opts, %struct.opts* %133, i32 0, i32 7, !dbg !1990
  %135 = load i8*, i8** %134, align 8, !dbg !1990
  %136 = icmp ne i8* %135, null, !dbg !1988
  br i1 %136, label %137, label %141, !dbg !1991

; <label>:137:                                    ; preds = %132
  %138 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1992
  %139 = getelementptr inbounds %struct.opts, %struct.opts* %138, i32 0, i32 7, !dbg !1994
  %140 = load i8*, i8** %139, align 8, !dbg !1994
  call void @free(i8* %140) #10, !dbg !1995
  br label %141, !dbg !1996

; <label>:141:                                    ; preds = %137, %132
  %142 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !1997
  %143 = getelementptr inbounds %struct.opts, %struct.opts* %142, i32 0, i32 8, !dbg !1999
  %144 = load i8*, i8** %143, align 8, !dbg !1999
  %145 = icmp ne i8* %144, null, !dbg !1997
  br i1 %145, label %146, label %150, !dbg !2000

; <label>:146:                                    ; preds = %141
  %147 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2001
  %148 = getelementptr inbounds %struct.opts, %struct.opts* %147, i32 0, i32 8, !dbg !2003
  %149 = load i8*, i8** %148, align 8, !dbg !2003
  call void @free(i8* %149) #10, !dbg !2004
  br label %150, !dbg !2005

; <label>:150:                                    ; preds = %146, %141
  %151 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2006
  %152 = getelementptr inbounds %struct.opts, %struct.opts* %151, i32 0, i32 10, !dbg !2008
  %153 = load i8*, i8** %152, align 8, !dbg !2008
  %154 = icmp ne i8* %153, null, !dbg !2006
  br i1 %154, label %155, label %159, !dbg !2009

; <label>:155:                                    ; preds = %150
  %156 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2010
  %157 = getelementptr inbounds %struct.opts, %struct.opts* %156, i32 0, i32 10, !dbg !2012
  %158 = load i8*, i8** %157, align 8, !dbg !2012
  call void @free(i8* %158) #10, !dbg !2013
  br label %159, !dbg !2014

; <label>:159:                                    ; preds = %155, %150
  %160 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2015
  %161 = getelementptr inbounds %struct.opts, %struct.opts* %160, i32 0, i32 11, !dbg !2017
  %162 = load i8*, i8** %161, align 8, !dbg !2017
  %163 = icmp ne i8* %162, null, !dbg !2015
  br i1 %163, label %164, label %168, !dbg !2018

; <label>:164:                                    ; preds = %159
  %165 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2019
  %166 = getelementptr inbounds %struct.opts, %struct.opts* %165, i32 0, i32 11, !dbg !2021
  %167 = load i8*, i8** %166, align 8, !dbg !2021
  call void @free(i8* %167) #10, !dbg !2022
  br label %168, !dbg !2023

; <label>:168:                                    ; preds = %164, %159
  %169 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2024
  %170 = getelementptr inbounds %struct.opts, %struct.opts* %169, i32 0, i32 3, !dbg !2026
  %171 = load i8*, i8** %170, align 8, !dbg !2026
  %172 = icmp ne i8* %171, null, !dbg !2024
  br i1 %172, label %173, label %177, !dbg !2027

; <label>:173:                                    ; preds = %168
  %174 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2028
  %175 = getelementptr inbounds %struct.opts, %struct.opts* %174, i32 0, i32 3, !dbg !2030
  %176 = load i8*, i8** %175, align 8, !dbg !2030
  call void @free(i8* %176) #10, !dbg !2031
  br label %177, !dbg !2032

; <label>:177:                                    ; preds = %173, %168
  %178 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2033
  %179 = getelementptr inbounds %struct.opts, %struct.opts* %178, i32 0, i32 12, !dbg !2035
  %180 = load i8*, i8** %179, align 8, !dbg !2035
  %181 = icmp ne i8* %180, null, !dbg !2033
  br i1 %181, label %182, label %186, !dbg !2036

; <label>:182:                                    ; preds = %177
  %183 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2037
  %184 = getelementptr inbounds %struct.opts, %struct.opts* %183, i32 0, i32 12, !dbg !2039
  %185 = load i8*, i8** %184, align 8, !dbg !2039
  call void @free(i8* %185) #10, !dbg !2040
  br label %186, !dbg !2041

; <label>:186:                                    ; preds = %182, %177
  %187 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2042
  %188 = getelementptr inbounds %struct.opts, %struct.opts* %187, i32 0, i32 13, !dbg !2044
  %189 = load i8*, i8** %188, align 8, !dbg !2044
  %190 = icmp ne i8* %189, null, !dbg !2042
  br i1 %190, label %191, label %195, !dbg !2045

; <label>:191:                                    ; preds = %186
  %192 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2046
  %193 = getelementptr inbounds %struct.opts, %struct.opts* %192, i32 0, i32 13, !dbg !2048
  %194 = load i8*, i8** %193, align 8, !dbg !2048
  call void @free(i8* %194) #10, !dbg !2049
  br label %195, !dbg !2050

; <label>:195:                                    ; preds = %191, %186
  %196 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2051
  %197 = getelementptr inbounds %struct.opts, %struct.opts* %196, i32 0, i32 14, !dbg !2053
  %198 = load i8*, i8** %197, align 8, !dbg !2053
  %199 = icmp ne i8* %198, null, !dbg !2051
  br i1 %199, label %200, label %204, !dbg !2054

; <label>:200:                                    ; preds = %195
  %201 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2055
  %202 = getelementptr inbounds %struct.opts, %struct.opts* %201, i32 0, i32 14, !dbg !2057
  %203 = load i8*, i8** %202, align 8, !dbg !2057
  call void @free(i8* %203) #10, !dbg !2058
  br label %204, !dbg !2059

; <label>:204:                                    ; preds = %200, %195
  %205 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2060
  %206 = getelementptr inbounds %struct.opts, %struct.opts* %205, i32 0, i32 15, !dbg !2062
  %207 = load i8*, i8** %206, align 8, !dbg !2062
  %208 = icmp ne i8* %207, null, !dbg !2060
  br i1 %208, label %209, label %213, !dbg !2063

; <label>:209:                                    ; preds = %204
  %210 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2064
  %211 = getelementptr inbounds %struct.opts, %struct.opts* %210, i32 0, i32 15, !dbg !2066
  %212 = load i8*, i8** %211, align 8, !dbg !2066
  call void @free(i8* %212) #10, !dbg !2067
  br label %213, !dbg !2068

; <label>:213:                                    ; preds = %209, %204
  %214 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2069
  %215 = getelementptr inbounds %struct.opts, %struct.opts* %214, i32 0, i32 16, !dbg !2071
  %216 = load i8*, i8** %215, align 8, !dbg !2071
  %217 = icmp ne i8* %216, null, !dbg !2069
  br i1 %217, label %218, label %222, !dbg !2072

; <label>:218:                                    ; preds = %213
  %219 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2073
  %220 = getelementptr inbounds %struct.opts, %struct.opts* %219, i32 0, i32 16, !dbg !2075
  %221 = load i8*, i8** %220, align 8, !dbg !2075
  call void @free(i8* %221) #10, !dbg !2076
  br label %222, !dbg !2077

; <label>:222:                                    ; preds = %218, %213
  %223 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2078
  %224 = getelementptr inbounds %struct.opts, %struct.opts* %223, i32 0, i32 17, !dbg !2080
  %225 = load i8*, i8** %224, align 8, !dbg !2080
  %226 = icmp ne i8* %225, null, !dbg !2078
  br i1 %226, label %227, label %231, !dbg !2081

; <label>:227:                                    ; preds = %222
  %228 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2082
  %229 = getelementptr inbounds %struct.opts, %struct.opts* %228, i32 0, i32 17, !dbg !2084
  %230 = load i8*, i8** %229, align 8, !dbg !2084
  call void @free(i8* %230) #10, !dbg !2085
  br label %231, !dbg !2086

; <label>:231:                                    ; preds = %227, %222
  %232 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2087
  %233 = bitcast %struct.opts* %232 to i8*, !dbg !2088
  call void @llvm.memset.p0i8.i64(i8* %233, i8 0, i64 240, i32 8, i1 false), !dbg !2088
  %234 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2089
  %235 = bitcast %struct.opts* %234 to i8*, !dbg !2089
  call void @free(i8* %235) #10, !dbg !2090
  ret void, !dbg !2091
}

declare void @sk_pop_free(%struct.stack_st*, void (i8*)*) #2

declare void @X509_free(%struct.x509_st*) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #2

declare void @DH_free(%struct.dh_st*) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @proxyspec_free(%struct.proxyspec* nonnull) #4 !dbg !2092 {
  %2 = alloca %struct.proxyspec*, align 8
  %3 = alloca %struct.proxyspec*, align 8
  store %struct.proxyspec* %0, %struct.proxyspec** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %2, metadata !2095, metadata !54), !dbg !2096
  br label %4, !dbg !2097, !llvm.loop !2098

; <label>:4:                                      ; preds = %22, %1
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %3, metadata !2099, metadata !54), !dbg !2101
  %5 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2102
  %6 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %5, i32 0, i32 9, !dbg !2103
  %7 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !2103
  store %struct.proxyspec* %7, %struct.proxyspec** %3, align 8, !dbg !2101
  %8 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2104
  %9 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %8, i32 0, i32 6, !dbg !2106
  %10 = load i8*, i8** %9, align 8, !dbg !2106
  %11 = icmp ne i8* %10, null, !dbg !2104
  br i1 %11, label %12, label %16, !dbg !2107

; <label>:12:                                     ; preds = %4
  %13 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2108
  %14 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %13, i32 0, i32 6, !dbg !2109
  %15 = load i8*, i8** %14, align 8, !dbg !2109
  call void @free(i8* %15) #10, !dbg !2110
  br label %16, !dbg !2110

; <label>:16:                                     ; preds = %12, %4
  %17 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2111
  %18 = bitcast %struct.proxyspec* %17 to i8*, !dbg !2112
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 312, i32 8, i1 false), !dbg !2112
  %19 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2113
  %20 = bitcast %struct.proxyspec* %19 to i8*, !dbg !2113
  call void @free(i8* %20) #10, !dbg !2114
  %21 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2115
  store %struct.proxyspec* %21, %struct.proxyspec** %2, align 8, !dbg !2116
  br label %22, !dbg !2117

; <label>:22:                                     ; preds = %16
  %23 = load %struct.proxyspec*, %struct.proxyspec** %2, align 8, !dbg !2118
  %24 = icmp ne %struct.proxyspec* %23, null, !dbg !2120
  br i1 %24, label %4, label %25, !dbg !2120, !llvm.loop !2098

; <label>:25:                                     ; preds = %22
  ret void, !dbg !2121
}

; Function Attrs: nounwind uwtable
define i32 @opts_has_ssl_spec(%struct.opts* nonnull) #4 !dbg !2122 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opts*, align 8
  %4 = alloca %struct.proxyspec*, align 8
  store %struct.opts* %0, %struct.opts** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %3, metadata !2125, metadata !54), !dbg !2126
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %4, metadata !2127, metadata !54), !dbg !2128
  %5 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !2129
  %6 = getelementptr inbounds %struct.opts, %struct.opts* %5, i32 0, i32 27, !dbg !2130
  %7 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !2130
  store %struct.proxyspec* %7, %struct.proxyspec** %4, align 8, !dbg !2128
  br label %8, !dbg !2131

; <label>:8:                                      ; preds = %27, %1
  %9 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2132
  %10 = icmp ne %struct.proxyspec* %9, null, !dbg !2134
  br i1 %10, label %11, label %31, !dbg !2134

; <label>:11:                                     ; preds = %8
  %12 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2135
  %13 = bitcast %struct.proxyspec* %12 to i8*, !dbg !2138
  %14 = load i8, i8* %13, align 8, !dbg !2138
  %15 = and i8 %14, 1, !dbg !2138
  %16 = zext i8 %15 to i32, !dbg !2138
  %17 = icmp ne i32 %16, 0, !dbg !2135
  br i1 %17, label %26, label %18, !dbg !2139

; <label>:18:                                     ; preds = %11
  %19 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2140
  %20 = bitcast %struct.proxyspec* %19 to i8*, !dbg !2142
  %21 = load i8, i8* %20, align 8, !dbg !2142
  %22 = lshr i8 %21, 2, !dbg !2142
  %23 = and i8 %22, 1, !dbg !2142
  %24 = zext i8 %23 to i32, !dbg !2142
  %25 = icmp ne i32 %24, 0, !dbg !2140
  br i1 %25, label %26, label %27, !dbg !2143

; <label>:26:                                     ; preds = %18, %11
  store i32 1, i32* %2, align 4, !dbg !2144
  br label %32, !dbg !2144

; <label>:27:                                     ; preds = %18
  %28 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2145
  %29 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %28, i32 0, i32 9, !dbg !2146
  %30 = load %struct.proxyspec*, %struct.proxyspec** %29, align 8, !dbg !2146
  store %struct.proxyspec* %30, %struct.proxyspec** %4, align 8, !dbg !2147
  br label %8, !dbg !2148, !llvm.loop !2150

; <label>:31:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !2151
  br label %32, !dbg !2151

; <label>:32:                                     ; preds = %31, %26
  %33 = load i32, i32* %2, align 4, !dbg !2152
  ret i32 %33, !dbg !2152
}

; Function Attrs: nounwind uwtable
define i32 @opts_has_dns_spec(%struct.opts* nonnull) #4 !dbg !2153 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opts*, align 8
  %4 = alloca %struct.proxyspec*, align 8
  store %struct.opts* %0, %struct.opts** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %3, metadata !2154, metadata !54), !dbg !2155
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %4, metadata !2156, metadata !54), !dbg !2157
  %5 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !2158
  %6 = getelementptr inbounds %struct.opts, %struct.opts* %5, i32 0, i32 27, !dbg !2159
  %7 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !2159
  store %struct.proxyspec* %7, %struct.proxyspec** %4, align 8, !dbg !2157
  br label %8, !dbg !2160

; <label>:8:                                      ; preds = %20, %1
  %9 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2161
  %10 = icmp ne %struct.proxyspec* %9, null, !dbg !2163
  br i1 %10, label %11, label %24, !dbg !2163

; <label>:11:                                     ; preds = %8
  %12 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2164
  %13 = bitcast %struct.proxyspec* %12 to i8*, !dbg !2167
  %14 = load i8, i8* %13, align 8, !dbg !2167
  %15 = lshr i8 %14, 3, !dbg !2167
  %16 = and i8 %15, 1, !dbg !2167
  %17 = zext i8 %16 to i32, !dbg !2167
  %18 = icmp ne i32 %17, 0, !dbg !2164
  br i1 %18, label %19, label %20, !dbg !2168

; <label>:19:                                     ; preds = %11
  store i32 1, i32* %2, align 4, !dbg !2169
  br label %25, !dbg !2169

; <label>:20:                                     ; preds = %11
  %21 = load %struct.proxyspec*, %struct.proxyspec** %4, align 8, !dbg !2170
  %22 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %21, i32 0, i32 9, !dbg !2171
  %23 = load %struct.proxyspec*, %struct.proxyspec** %22, align 8, !dbg !2171
  store %struct.proxyspec* %23, %struct.proxyspec** %4, align 8, !dbg !2172
  br label %8, !dbg !2173, !llvm.loop !2175

; <label>:24:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !2176
  br label %25, !dbg !2176

; <label>:25:                                     ; preds = %24, %19
  %26 = load i32, i32* %2, align 4, !dbg !2177
  ret i32 %26, !dbg !2177
}

; Function Attrs: nounwind uwtable
define void @opts_proto_dbg_dump(%struct.opts* nonnull) #4 !dbg !2178 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !2179, metadata !54), !dbg !2180
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2181
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 18, !dbg !2182
  %5 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %4, align 8, !dbg !2182
  %6 = icmp eq %struct.ssl_method_st* ()* %5, @SSLv3_method, !dbg !2183
  br i1 %6, label %7, label %8, !dbg !2184

; <label>:7:                                      ; preds = %1
  br label %30, !dbg !2185

; <label>:8:                                      ; preds = %1
  %9 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2187
  %10 = getelementptr inbounds %struct.opts, %struct.opts* %9, i32 0, i32 18, !dbg !2188
  %11 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %10, align 8, !dbg !2188
  %12 = icmp eq %struct.ssl_method_st* ()* %11, @TLSv1_method, !dbg !2189
  br i1 %12, label %13, label %14, !dbg !2190

; <label>:13:                                     ; preds = %8
  br label %28, !dbg !2191

; <label>:14:                                     ; preds = %8
  %15 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2192
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %15, i32 0, i32 18, !dbg !2193
  %17 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %16, align 8, !dbg !2193
  %18 = icmp eq %struct.ssl_method_st* ()* %17, @TLSv1_1_method, !dbg !2194
  br i1 %18, label %19, label %20, !dbg !2195

; <label>:19:                                     ; preds = %14
  br label %26, !dbg !2196

; <label>:20:                                     ; preds = %14
  %21 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2197
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 18, !dbg !2198
  %23 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %22, align 8, !dbg !2198
  %24 = icmp eq %struct.ssl_method_st* ()* %23, @TLSv1_2_method, !dbg !2199
  %25 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), !dbg !2200
  br label %26, !dbg !2201

; <label>:26:                                     ; preds = %20, %19
  %27 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %19 ], [ %25, %20 ], !dbg !2203
  br label %28, !dbg !2205

; <label>:28:                                     ; preds = %26, %13
  %29 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %13 ], [ %27, %26 ], !dbg !2206
  br label %30, !dbg !2207

; <label>:30:                                     ; preds = %28, %7
  %31 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %7 ], [ %29, %28 ], !dbg !2208
  %32 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2209
  %33 = bitcast %struct.opts* %32 to i16*, !dbg !2210
  %34 = load i16, i16* %33, align 8, !dbg !2210
  %35 = lshr i16 %34, 3, !dbg !2210
  %36 = and i16 %35, 1, !dbg !2210
  %37 = zext i16 %36 to i32, !dbg !2210
  %38 = icmp ne i32 %37, 0, !dbg !2209
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2209
  %40 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2211
  %41 = bitcast %struct.opts* %40 to i16*, !dbg !2212
  %42 = load i16, i16* %41, align 8, !dbg !2212
  %43 = lshr i16 %42, 4, !dbg !2212
  %44 = and i16 %43, 1, !dbg !2212
  %45 = zext i16 %44 to i32, !dbg !2212
  %46 = icmp ne i32 %45, 0, !dbg !2211
  %47 = select i1 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2211
  %48 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2213
  %49 = bitcast %struct.opts* %48 to i16*, !dbg !2214
  %50 = load i16, i16* %49, align 8, !dbg !2214
  %51 = lshr i16 %50, 5, !dbg !2214
  %52 = and i16 %51, 1, !dbg !2214
  %53 = zext i16 %52 to i32, !dbg !2214
  %54 = icmp ne i32 %53, 0, !dbg !2213
  %55 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2213
  %56 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !2215
  %57 = bitcast %struct.opts* %56 to i16*, !dbg !2216
  %58 = load i16, i16* %57, align 8, !dbg !2216
  %59 = lshr i16 %58, 6, !dbg !2216
  %60 = and i16 %59, 1, !dbg !2216
  %61 = zext i16 %60 to i32, !dbg !2216
  %62 = icmp ne i32 %61, 0, !dbg !2215
  %63 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2215
  %64 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), i8* %39, i8* %47, i8* %55, i8* %63), !dbg !2217
  ret void, !dbg !2218
}

declare i32 @log_dbg_printf(i8*, ...) #2

declare %struct.ssl_method_st* @SSLv3_method() #2

declare %struct.ssl_method_st* @TLSv1_method() #2

declare %struct.ssl_method_st* @TLSv1_1_method() #2

declare %struct.ssl_method_st* @TLSv1_2_method() #2

; Function Attrs: nounwind uwtable
define void @proxyspec_parse(i32*, i8***, i8*, %struct.proxyspec**) #4 !dbg !2219 {
  %5 = alloca i32*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.proxyspec**, align 8
  %9 = alloca %struct.proxyspec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2224, metadata !54), !dbg !2225
  store i8*** %1, i8**** %6, align 8
  call void @llvm.dbg.declare(metadata i8**** %6, metadata !2226, metadata !54), !dbg !2227
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2228, metadata !54), !dbg !2229
  store %struct.proxyspec** %3, %struct.proxyspec*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec*** %8, metadata !2230, metadata !54), !dbg !2231
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %9, metadata !2232, metadata !54), !dbg !2233
  store %struct.proxyspec* null, %struct.proxyspec** %9, align 8, !dbg !2233
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2234, metadata !54), !dbg !2235
  store i8* null, i8** %10, align 8, !dbg !2235
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2236, metadata !54), !dbg !2237
  store i32 0, i32* %11, align 4, !dbg !2237
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2238, metadata !54), !dbg !2239
  store i32 0, i32* %12, align 4, !dbg !2239
  br label %13, !dbg !2240

; <label>:13:                                     ; preds = %295, %4
  %14 = load i32*, i32** %5, align 8, !dbg !2241
  %15 = load i32, i32* %14, align 4, !dbg !2243
  %16 = add nsw i32 %15, -1, !dbg !2243
  store i32 %16, i32* %14, align 4, !dbg !2243
  %17 = icmp ne i32 %15, 0, !dbg !2244
  br i1 %17, label %18, label %299, !dbg !2244

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %12, align 4, !dbg !2245
  switch i32 %19, label %20 [
    i32 0, label %21
    i32 1, label %116
    i32 2, label %122
    i32 3, label %159
    i32 4, label %256
    i32 5, label %271
  ], !dbg !2247

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !2248

; <label>:21:                                     ; preds = %18, %20
  %22 = call noalias i8* @malloc(i64 312) #10, !dbg !2250
  %23 = bitcast i8* %22 to %struct.proxyspec*, !dbg !2250
  store %struct.proxyspec* %23, %struct.proxyspec** %9, align 8, !dbg !2252
  %24 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2253
  %25 = bitcast %struct.proxyspec* %24 to i8*, !dbg !2254
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 312, i32 8, i1 false), !dbg !2254
  %26 = load %struct.proxyspec**, %struct.proxyspec*** %8, align 8, !dbg !2255
  %27 = load %struct.proxyspec*, %struct.proxyspec** %26, align 8, !dbg !2256
  %28 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2257
  %29 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %28, i32 0, i32 9, !dbg !2258
  store %struct.proxyspec* %27, %struct.proxyspec** %29, align 8, !dbg !2259
  %30 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2260
  %31 = load %struct.proxyspec**, %struct.proxyspec*** %8, align 8, !dbg !2261
  store %struct.proxyspec* %30, %struct.proxyspec** %31, align 8, !dbg !2262
  %32 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2263
  %33 = bitcast %struct.proxyspec* %32 to i8*, !dbg !2264
  %34 = load i8, i8* %33, align 8, !dbg !2265
  %35 = and i8 %34, -2, !dbg !2265
  store i8 %35, i8* %33, align 8, !dbg !2265
  %36 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2266
  %37 = bitcast %struct.proxyspec* %36 to i8*, !dbg !2267
  %38 = load i8, i8* %37, align 8, !dbg !2268
  %39 = and i8 %38, -3, !dbg !2268
  store i8 %39, i8* %37, align 8, !dbg !2268
  %40 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2269
  %41 = bitcast %struct.proxyspec* %40 to i8*, !dbg !2270
  %42 = load i8, i8* %41, align 8, !dbg !2271
  %43 = and i8 %42, -5, !dbg !2271
  store i8 %43, i8* %41, align 8, !dbg !2271
  %44 = load i8***, i8**** %6, align 8, !dbg !2272
  %45 = load i8**, i8*** %44, align 8, !dbg !2274
  %46 = load i8*, i8** %45, align 8, !dbg !2275
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #11, !dbg !2276
  %48 = icmp ne i32 %47, 0, !dbg !2276
  br i1 %48, label %50, label %49, !dbg !2277

; <label>:49:                                     ; preds = %21
  br label %113, !dbg !2278

; <label>:50:                                     ; preds = %21
  %51 = load i8***, i8**** %6, align 8, !dbg !2280
  %52 = load i8**, i8*** %51, align 8, !dbg !2282
  %53 = load i8*, i8** %52, align 8, !dbg !2283
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #11, !dbg !2284
  %55 = icmp ne i32 %54, 0, !dbg !2284
  br i1 %55, label %62, label %56, !dbg !2285

; <label>:56:                                     ; preds = %50
  %57 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2286
  %58 = bitcast %struct.proxyspec* %57 to i8*, !dbg !2288
  %59 = load i8, i8* %58, align 8, !dbg !2289
  %60 = and i8 %59, -2, !dbg !2289
  %61 = or i8 %60, 1, !dbg !2289
  store i8 %61, i8* %58, align 8, !dbg !2289
  br label %112, !dbg !2290

; <label>:62:                                     ; preds = %50
  %63 = load i8***, i8**** %6, align 8, !dbg !2291
  %64 = load i8**, i8*** %63, align 8, !dbg !2293
  %65 = load i8*, i8** %64, align 8, !dbg !2294
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #11, !dbg !2295
  %67 = icmp ne i32 %66, 0, !dbg !2295
  br i1 %67, label %74, label %68, !dbg !2296

; <label>:68:                                     ; preds = %62
  %69 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2297
  %70 = bitcast %struct.proxyspec* %69 to i8*, !dbg !2299
  %71 = load i8, i8* %70, align 8, !dbg !2300
  %72 = and i8 %71, -3, !dbg !2300
  %73 = or i8 %72, 2, !dbg !2300
  store i8 %73, i8* %70, align 8, !dbg !2300
  br label %111, !dbg !2301

; <label>:74:                                     ; preds = %62
  %75 = load i8***, i8**** %6, align 8, !dbg !2302
  %76 = load i8**, i8*** %75, align 8, !dbg !2304
  %77 = load i8*, i8** %76, align 8, !dbg !2305
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #11, !dbg !2306
  %79 = icmp ne i32 %78, 0, !dbg !2306
  br i1 %79, label %91, label %80, !dbg !2307

; <label>:80:                                     ; preds = %74
  %81 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2308
  %82 = bitcast %struct.proxyspec* %81 to i8*, !dbg !2310
  %83 = load i8, i8* %82, align 8, !dbg !2311
  %84 = and i8 %83, -2, !dbg !2311
  %85 = or i8 %84, 1, !dbg !2311
  store i8 %85, i8* %82, align 8, !dbg !2311
  %86 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2312
  %87 = bitcast %struct.proxyspec* %86 to i8*, !dbg !2313
  %88 = load i8, i8* %87, align 8, !dbg !2314
  %89 = and i8 %88, -3, !dbg !2314
  %90 = or i8 %89, 2, !dbg !2314
  store i8 %90, i8* %87, align 8, !dbg !2314
  br label %110, !dbg !2315

; <label>:91:                                     ; preds = %74
  %92 = load i8***, i8**** %6, align 8, !dbg !2316
  %93 = load i8**, i8*** %92, align 8, !dbg !2318
  %94 = load i8*, i8** %93, align 8, !dbg !2319
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #11, !dbg !2320
  %96 = icmp ne i32 %95, 0, !dbg !2320
  br i1 %96, label %103, label %97, !dbg !2321

; <label>:97:                                     ; preds = %91
  %98 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2322
  %99 = bitcast %struct.proxyspec* %98 to i8*, !dbg !2324
  %100 = load i8, i8* %99, align 8, !dbg !2325
  %101 = and i8 %100, -5, !dbg !2325
  %102 = or i8 %101, 4, !dbg !2325
  store i8 %102, i8* %99, align 8, !dbg !2325
  br label %109, !dbg !2326

; <label>:103:                                    ; preds = %91
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2327
  %105 = load i8***, i8**** %6, align 8, !dbg !2329
  %106 = load i8**, i8*** %105, align 8, !dbg !2330
  %107 = load i8*, i8** %106, align 8, !dbg !2331
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* %107), !dbg !2332
  call void @exit(i32 1) #9, !dbg !2333
  unreachable, !dbg !2333

; <label>:109:                                    ; preds = %97
  br label %110

; <label>:110:                                    ; preds = %109, %80
  br label %111

; <label>:111:                                    ; preds = %110, %68
  br label %112

; <label>:112:                                    ; preds = %111, %56
  br label %113

; <label>:113:                                    ; preds = %112, %49
  %114 = load i32, i32* %12, align 4, !dbg !2334
  %115 = add nsw i32 %114, 1, !dbg !2334
  store i32 %115, i32* %12, align 4, !dbg !2334
  br label %295, !dbg !2335

; <label>:116:                                    ; preds = %18
  %117 = load i8***, i8**** %6, align 8, !dbg !2336
  %118 = load i8**, i8*** %117, align 8, !dbg !2337
  %119 = load i8*, i8** %118, align 8, !dbg !2338
  store i8* %119, i8** %10, align 8, !dbg !2339
  %120 = load i32, i32* %12, align 4, !dbg !2340
  %121 = add nsw i32 %120, 1, !dbg !2340
  store i32 %121, i32* %12, align 4, !dbg !2340
  br label %295, !dbg !2341

; <label>:122:                                    ; preds = %18
  %123 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2342
  %124 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %123, i32 0, i32 1, !dbg !2343
  %125 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2344
  %126 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %125, i32 0, i32 2, !dbg !2345
  %127 = load i8*, i8** %10, align 8, !dbg !2346
  %128 = load i8***, i8**** %6, align 8, !dbg !2347
  %129 = load i8**, i8*** %128, align 8, !dbg !2348
  %130 = load i8*, i8** %129, align 8, !dbg !2349
  %131 = load i8*, i8** %10, align 8, !dbg !2350
  %132 = call i32 @sys_get_af(i8* %131), !dbg !2351
  %133 = call i32 @sys_sockaddr_parse(%struct.sockaddr_storage* %124, i32* %126, i8* %127, i8* %130, i32 %132, i32 1), !dbg !2352
  store i32 %133, i32* %11, align 4, !dbg !2353
  %134 = load i32, i32* %11, align 4, !dbg !2354
  %135 = icmp eq i32 %134, -1, !dbg !2356
  br i1 %135, label %136, label %137, !dbg !2357

; <label>:136:                                    ; preds = %122
  call void @exit(i32 1) #9, !dbg !2358
  unreachable, !dbg !2358

; <label>:137:                                    ; preds = %122
  %138 = load i8*, i8** %7, align 8, !dbg !2360
  %139 = icmp ne i8* %138, null, !dbg !2360
  br i1 %139, label %140, label %153, !dbg !2362

; <label>:140:                                    ; preds = %137
  %141 = load i8*, i8** %7, align 8, !dbg !2363
  %142 = call noalias i8* @strdup(i8* %141) #10, !dbg !2365
  %143 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2366
  %144 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %143, i32 0, i32 6, !dbg !2367
  store i8* %142, i8** %144, align 8, !dbg !2368
  %145 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2369
  %146 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %145, i32 0, i32 6, !dbg !2371
  %147 = load i8*, i8** %146, align 8, !dbg !2371
  %148 = icmp ne i8* %147, null, !dbg !2369
  br i1 %148, label %152, label %149, !dbg !2372

; <label>:149:                                    ; preds = %140
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2373
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)), !dbg !2375
  call void @exit(i32 1) #9, !dbg !2376
  unreachable, !dbg !2376

; <label>:152:                                    ; preds = %140
  br label %156, !dbg !2377

; <label>:153:                                    ; preds = %137
  %154 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2378
  %155 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %154, i32 0, i32 6, !dbg !2380
  store i8* null, i8** %155, align 8, !dbg !2381
  br label %156

; <label>:156:                                    ; preds = %153, %152
  %157 = load i32, i32* %12, align 4, !dbg !2382
  %158 = add nsw i32 %157, 1, !dbg !2382
  store i32 %158, i32* %12, align 4, !dbg !2382
  br label %295, !dbg !2383

; <label>:159:                                    ; preds = %18
  %160 = load i8***, i8**** %6, align 8, !dbg !2384
  %161 = load i8**, i8*** %160, align 8, !dbg !2386
  %162 = load i8*, i8** %161, align 8, !dbg !2387
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #11, !dbg !2388
  %164 = icmp ne i32 %163, 0, !dbg !2388
  br i1 %164, label %165, label %189, !dbg !2389

; <label>:165:                                    ; preds = %159
  %166 = load i8***, i8**** %6, align 8, !dbg !2390
  %167 = load i8**, i8*** %166, align 8, !dbg !2391
  %168 = load i8*, i8** %167, align 8, !dbg !2392
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #11, !dbg !2393
  %170 = icmp ne i32 %169, 0, !dbg !2393
  br i1 %170, label %171, label %189, !dbg !2394

; <label>:171:                                    ; preds = %165
  %172 = load i8***, i8**** %6, align 8, !dbg !2395
  %173 = load i8**, i8*** %172, align 8, !dbg !2396
  %174 = load i8*, i8** %173, align 8, !dbg !2397
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #11, !dbg !2398
  %176 = icmp ne i32 %175, 0, !dbg !2398
  br i1 %176, label %177, label %189, !dbg !2399

; <label>:177:                                    ; preds = %171
  %178 = load i8***, i8**** %6, align 8, !dbg !2400
  %179 = load i8**, i8*** %178, align 8, !dbg !2401
  %180 = load i8*, i8** %179, align 8, !dbg !2402
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #11, !dbg !2403
  %182 = icmp ne i32 %181, 0, !dbg !2403
  br i1 %182, label %183, label %189, !dbg !2404

; <label>:183:                                    ; preds = %177
  %184 = load i8***, i8**** %6, align 8, !dbg !2405
  %185 = load i8**, i8*** %184, align 8, !dbg !2406
  %186 = load i8*, i8** %185, align 8, !dbg !2407
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #11, !dbg !2408
  %188 = icmp ne i32 %187, 0, !dbg !2408
  br i1 %188, label %196, label %189, !dbg !2409

; <label>:189:                                    ; preds = %183, %177, %171, %165, %159
  %190 = load i8***, i8**** %6, align 8, !dbg !2411
  %191 = load i8**, i8*** %190, align 8, !dbg !2413
  %192 = getelementptr inbounds i8*, i8** %191, i32 -1, !dbg !2413
  store i8** %192, i8*** %190, align 8, !dbg !2413
  %193 = load i32*, i32** %5, align 8, !dbg !2414
  %194 = load i32, i32* %193, align 4, !dbg !2415
  %195 = add nsw i32 %194, 1, !dbg !2415
  store i32 %195, i32* %193, align 4, !dbg !2415
  store i32 0, i32* %12, align 4, !dbg !2416
  br label %255, !dbg !2417

; <label>:196:                                    ; preds = %183
  %197 = load i8***, i8**** %6, align 8, !dbg !2418
  %198 = load i8**, i8*** %197, align 8, !dbg !2420
  %199 = load i8*, i8** %198, align 8, !dbg !2421
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #11, !dbg !2422
  %201 = icmp ne i32 %200, 0, !dbg !2422
  br i1 %201, label %218, label %202, !dbg !2423

; <label>:202:                                    ; preds = %196
  %203 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2424
  %204 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %203, i32 0, i32 6, !dbg !2426
  %205 = load i8*, i8** %204, align 8, !dbg !2426
  call void @free(i8* %205) #10, !dbg !2427
  %206 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2428
  %207 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %206, i32 0, i32 6, !dbg !2429
  store i8* null, i8** %207, align 8, !dbg !2430
  %208 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2431
  %209 = bitcast %struct.proxyspec* %208 to i8*, !dbg !2433
  %210 = load i8, i8* %209, align 8, !dbg !2433
  %211 = and i8 %210, 1, !dbg !2433
  %212 = zext i8 %211 to i32, !dbg !2433
  %213 = icmp ne i32 %212, 0, !dbg !2431
  br i1 %213, label %217, label %214, !dbg !2434

; <label>:214:                                    ; preds = %202
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2435
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i32 0, i32 0)), !dbg !2437
  call void @exit(i32 1) #9, !dbg !2438
  unreachable, !dbg !2438

; <label>:217:                                    ; preds = %202
  store i32 5, i32* %12, align 4, !dbg !2439
  br label %254, !dbg !2440

; <label>:218:                                    ; preds = %196
  %219 = load i8***, i8**** %6, align 8, !dbg !2441
  %220 = load i8**, i8*** %219, align 8, !dbg !2443
  %221 = load i8*, i8** %220, align 8, !dbg !2444
  %222 = call i32 @nat_exist(i8* %221), !dbg !2445
  %223 = icmp ne i32 %222, 0, !dbg !2445
  br i1 %223, label %224, label %242, !dbg !2446

; <label>:224:                                    ; preds = %218
  %225 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2447
  %226 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %225, i32 0, i32 6, !dbg !2449
  %227 = load i8*, i8** %226, align 8, !dbg !2449
  call void @free(i8* %227) #10, !dbg !2450
  %228 = load i8***, i8**** %6, align 8, !dbg !2451
  %229 = load i8**, i8*** %228, align 8, !dbg !2452
  %230 = load i8*, i8** %229, align 8, !dbg !2453
  %231 = call noalias i8* @strdup(i8* %230) #10, !dbg !2454
  %232 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2455
  %233 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %232, i32 0, i32 6, !dbg !2456
  store i8* %231, i8** %233, align 8, !dbg !2457
  %234 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2458
  %235 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %234, i32 0, i32 6, !dbg !2460
  %236 = load i8*, i8** %235, align 8, !dbg !2460
  %237 = icmp ne i8* %236, null, !dbg !2458
  br i1 %237, label %241, label %238, !dbg !2461

; <label>:238:                                    ; preds = %224
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2462
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)), !dbg !2464
  call void @exit(i32 1) #9, !dbg !2465
  unreachable, !dbg !2465

; <label>:241:                                    ; preds = %224
  store i32 0, i32* %12, align 4, !dbg !2466
  br label %253, !dbg !2467

; <label>:242:                                    ; preds = %218
  %243 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2468
  %244 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %243, i32 0, i32 6, !dbg !2470
  %245 = load i8*, i8** %244, align 8, !dbg !2470
  call void @free(i8* %245) #10, !dbg !2471
  %246 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2472
  %247 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %246, i32 0, i32 6, !dbg !2473
  store i8* null, i8** %247, align 8, !dbg !2474
  %248 = load i8***, i8**** %6, align 8, !dbg !2475
  %249 = load i8**, i8*** %248, align 8, !dbg !2476
  %250 = load i8*, i8** %249, align 8, !dbg !2477
  store i8* %250, i8** %10, align 8, !dbg !2478
  %251 = load i32, i32* %12, align 4, !dbg !2479
  %252 = add nsw i32 %251, 1, !dbg !2479
  store i32 %252, i32* %12, align 4, !dbg !2479
  br label %253

; <label>:253:                                    ; preds = %242, %241
  br label %254

; <label>:254:                                    ; preds = %253, %217
  br label %255

; <label>:255:                                    ; preds = %254, %189
  br label %295, !dbg !2480

; <label>:256:                                    ; preds = %18
  %257 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2481
  %258 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %257, i32 0, i32 3, !dbg !2482
  %259 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2483
  %260 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %259, i32 0, i32 4, !dbg !2484
  %261 = load i8*, i8** %10, align 8, !dbg !2485
  %262 = load i8***, i8**** %6, align 8, !dbg !2486
  %263 = load i8**, i8*** %262, align 8, !dbg !2487
  %264 = load i8*, i8** %263, align 8, !dbg !2488
  %265 = load i32, i32* %11, align 4, !dbg !2489
  %266 = call i32 @sys_sockaddr_parse(%struct.sockaddr_storage* %258, i32* %260, i8* %261, i8* %264, i32 %265, i32 0), !dbg !2490
  store i32 %266, i32* %11, align 4, !dbg !2491
  %267 = load i32, i32* %11, align 4, !dbg !2492
  %268 = icmp eq i32 %267, -1, !dbg !2494
  br i1 %268, label %269, label %270, !dbg !2495

; <label>:269:                                    ; preds = %256
  call void @exit(i32 1) #9, !dbg !2496
  unreachable, !dbg !2496

; <label>:270:                                    ; preds = %256
  store i32 0, i32* %12, align 4, !dbg !2498
  br label %295, !dbg !2499

; <label>:271:                                    ; preds = %18
  %272 = load i8***, i8**** %6, align 8, !dbg !2500
  %273 = load i8**, i8*** %272, align 8, !dbg !2501
  %274 = load i8*, i8** %273, align 8, !dbg !2502
  %275 = call i32 @atoi(i8* %274) #11, !dbg !2503
  %276 = trunc i32 %275 to i16, !dbg !2503
  %277 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2504
  %278 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %277, i32 0, i32 5, !dbg !2505
  store i16 %276, i16* %278, align 4, !dbg !2506
  %279 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2507
  %280 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %279, i32 0, i32 5, !dbg !2509
  %281 = load i16, i16* %280, align 4, !dbg !2509
  %282 = icmp ne i16 %281, 0, !dbg !2507
  br i1 %282, label %289, label %283, !dbg !2510

; <label>:283:                                    ; preds = %271
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2511
  %285 = load i8***, i8**** %6, align 8, !dbg !2513
  %286 = load i8**, i8*** %285, align 8, !dbg !2514
  %287 = load i8*, i8** %286, align 8, !dbg !2515
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* %287), !dbg !2516
  call void @exit(i32 1) #9, !dbg !2517
  unreachable, !dbg !2517

; <label>:289:                                    ; preds = %271
  %290 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2518
  %291 = bitcast %struct.proxyspec* %290 to i8*, !dbg !2519
  %292 = load i8, i8* %291, align 8, !dbg !2520
  %293 = and i8 %292, -9, !dbg !2520
  %294 = or i8 %293, 8, !dbg !2520
  store i8 %294, i8* %291, align 8, !dbg !2520
  store i32 0, i32* %12, align 4, !dbg !2521
  br label %295, !dbg !2522

; <label>:295:                                    ; preds = %289, %270, %255, %156, %116, %113
  %296 = load i8***, i8**** %6, align 8, !dbg !2523
  %297 = load i8**, i8*** %296, align 8, !dbg !2524
  %298 = getelementptr inbounds i8*, i8** %297, i32 1, !dbg !2524
  store i8** %298, i8*** %296, align 8, !dbg !2524
  br label %13, !dbg !2525, !llvm.loop !2527

; <label>:299:                                    ; preds = %13
  %300 = load i32, i32* %12, align 4, !dbg !2528
  %301 = icmp ne i32 %300, 0, !dbg !2530
  br i1 %301, label %302, label %308, !dbg !2531

; <label>:302:                                    ; preds = %299
  %303 = load i32, i32* %12, align 4, !dbg !2532
  %304 = icmp ne i32 %303, 3, !dbg !2534
  br i1 %304, label %305, label %308, !dbg !2535

; <label>:305:                                    ; preds = %302
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2536
  %307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)), !dbg !2538
  call void @exit(i32 1) #9, !dbg !2539
  unreachable, !dbg !2539

; <label>:308:                                    ; preds = %302, %299
  ret void, !dbg !2540
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare i32 @sys_sockaddr_parse(%struct.sockaddr_storage*, i32*, i8*, i8*, i32, i32) #2

declare i32 @sys_get_af(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #5

declare i32 @nat_exist(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #7

; Function Attrs: nounwind uwtable
define noalias i8* @proxyspec_str(%struct.proxyspec* nonnull) #4 !dbg !2541 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.proxyspec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.proxyspec* %0, %struct.proxyspec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %3, metadata !2544, metadata !54), !dbg !2545
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2546, metadata !54), !dbg !2547
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2548, metadata !54), !dbg !2549
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2550, metadata !54), !dbg !2551
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2552, metadata !54), !dbg !2553
  store i8* null, i8** %7, align 8, !dbg !2553
  %10 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2554
  %11 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %10, i32 0, i32 1, !dbg !2556
  %12 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*, !dbg !2557
  %13 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2558
  %14 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %13, i32 0, i32 2, !dbg !2559
  %15 = load i32, i32* %14, align 8, !dbg !2559
  %16 = call i32 @sys_sockaddr_str(%struct.sockaddr* %12, i32 %15, i8** %5, i8** %6), !dbg !2560
  %17 = icmp ne i32 %16, 0, !dbg !2561
  br i1 %17, label %18, label %19, !dbg !2562

; <label>:18:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !2563
  br label %107, !dbg !2563

; <label>:19:                                     ; preds = %1
  %20 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2565
  %21 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %20, i32 0, i32 4, !dbg !2567
  %22 = load i32, i32* %21, align 8, !dbg !2567
  %23 = icmp ne i32 %22, 0, !dbg !2565
  br i1 %23, label %24, label %43, !dbg !2568

; <label>:24:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2569, metadata !54), !dbg !2571
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2572, metadata !54), !dbg !2573
  %25 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2574
  %26 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %25, i32 0, i32 3, !dbg !2576
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr*, !dbg !2577
  %28 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2578
  %29 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %28, i32 0, i32 4, !dbg !2579
  %30 = load i32, i32* %29, align 8, !dbg !2579
  %31 = call i32 @sys_sockaddr_str(%struct.sockaddr* %27, i32 %30, i8** %8, i8** %9), !dbg !2580
  %32 = icmp ne i32 %31, 0, !dbg !2581
  br i1 %32, label %33, label %34, !dbg !2582

; <label>:33:                                     ; preds = %24
  store i8* null, i8** %2, align 8, !dbg !2583
  br label %107, !dbg !2583

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %8, align 8, !dbg !2585
  %36 = load i8*, i8** %9, align 8, !dbg !2587
  %37 = call i32 (i8**, i8*, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %35, i8* %36) #10, !dbg !2588
  %38 = icmp slt i32 %37, 0, !dbg !2589
  br i1 %38, label %39, label %40, !dbg !2590

; <label>:39:                                     ; preds = %34
  store i8* null, i8** %2, align 8, !dbg !2591
  br label %107, !dbg !2591

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %8, align 8, !dbg !2593
  call void @free(i8* %41) #10, !dbg !2594
  %42 = load i8*, i8** %9, align 8, !dbg !2595
  call void @free(i8* %42) #10, !dbg !2596
  br label %43, !dbg !2597

; <label>:43:                                     ; preds = %40, %19
  %44 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2598
  %45 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %44, i32 0, i32 5, !dbg !2600
  %46 = load i16, i16* %45, align 4, !dbg !2600
  %47 = icmp ne i16 %46, 0, !dbg !2598
  br i1 %47, label %48, label %57, !dbg !2601

; <label>:48:                                     ; preds = %43
  %49 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2602
  %50 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %49, i32 0, i32 5, !dbg !2605
  %51 = load i16, i16* %50, align 4, !dbg !2605
  %52 = zext i16 %51 to i32, !dbg !2602
  %53 = call i32 (i8**, i8*, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 %52) #10, !dbg !2606
  %54 = icmp slt i32 %53, 0, !dbg !2607
  br i1 %54, label %55, label %56, !dbg !2608

; <label>:55:                                     ; preds = %48
  store i8* null, i8** %2, align 8, !dbg !2609
  br label %107, !dbg !2609

; <label>:56:                                     ; preds = %48
  br label %57, !dbg !2611

; <label>:57:                                     ; preds = %56, %43
  %58 = load i8*, i8** %5, align 8, !dbg !2612
  %59 = load i8*, i8** %6, align 8, !dbg !2614
  %60 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2615
  %61 = bitcast %struct.proxyspec* %60 to i8*, !dbg !2616
  %62 = load i8, i8* %61, align 8, !dbg !2616
  %63 = and i8 %62, 1, !dbg !2616
  %64 = zext i8 %63 to i32, !dbg !2616
  %65 = icmp ne i32 %64, 0, !dbg !2615
  %66 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), !dbg !2615
  %67 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2617
  %68 = bitcast %struct.proxyspec* %67 to i8*, !dbg !2618
  %69 = load i8, i8* %68, align 8, !dbg !2618
  %70 = lshr i8 %69, 2, !dbg !2618
  %71 = and i8 %70, 1, !dbg !2618
  %72 = zext i8 %71 to i32, !dbg !2618
  %73 = icmp ne i32 %72, 0, !dbg !2617
  %74 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2617
  %75 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2619
  %76 = bitcast %struct.proxyspec* %75 to i8*, !dbg !2620
  %77 = load i8, i8* %76, align 8, !dbg !2620
  %78 = lshr i8 %77, 1, !dbg !2620
  %79 = and i8 %78, 1, !dbg !2620
  %80 = zext i8 %79 to i32, !dbg !2620
  %81 = icmp ne i32 %80, 0, !dbg !2619
  %82 = select i1 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), !dbg !2619
  %83 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2621
  %84 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %83, i32 0, i32 6, !dbg !2622
  %85 = load i8*, i8** %84, align 8, !dbg !2622
  %86 = icmp ne i8* %85, null, !dbg !2621
  br i1 %86, label %87, label %91, !dbg !2621

; <label>:87:                                     ; preds = %57
  %88 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !2623
  %89 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %88, i32 0, i32 6, !dbg !2625
  %90 = load i8*, i8** %89, align 8, !dbg !2625
  br label %93, !dbg !2626

; <label>:91:                                     ; preds = %57
  %92 = load i8*, i8** %7, align 8, !dbg !2627
  br label %93, !dbg !2629

; <label>:93:                                     ; preds = %91, %87
  %94 = phi i8* [ %90, %87 ], [ %92, %91 ], !dbg !2630
  %95 = call i32 (i8**, i8*, ...) @asprintf(i8** %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* %58, i8* %59, i8* %66, i8* %74, i8* %82, i8* %94) #10, !dbg !2632
  %96 = icmp slt i32 %95, 0, !dbg !2633
  br i1 %96, label %97, label %98, !dbg !2632

; <label>:97:                                     ; preds = %93
  store i8* null, i8** %4, align 8, !dbg !2634
  br label %98, !dbg !2636

; <label>:98:                                     ; preds = %97, %93
  %99 = load i8*, i8** %5, align 8, !dbg !2637
  call void @free(i8* %99) #10, !dbg !2638
  %100 = load i8*, i8** %6, align 8, !dbg !2639
  call void @free(i8* %100) #10, !dbg !2640
  %101 = load i8*, i8** %7, align 8, !dbg !2641
  %102 = icmp ne i8* %101, null, !dbg !2641
  br i1 %102, label %103, label %105, !dbg !2643

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %7, align 8, !dbg !2644
  call void @free(i8* %104) #10, !dbg !2645
  br label %105, !dbg !2645

; <label>:105:                                    ; preds = %103, %98
  %106 = load i8*, i8** %4, align 8, !dbg !2646
  store i8* %106, i8** %2, align 8, !dbg !2647
  br label %107, !dbg !2647

; <label>:107:                                    ; preds = %105, %55, %39, %33, %18
  %108 = load i8*, i8** %2, align 8, !dbg !2648
  ret i8* %108, !dbg !2648
}

declare i32 @sys_sockaddr_str(%struct.sockaddr*, i32, i8**, i8**) #2

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @opts_set_cacrt(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2649 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2652, metadata !54), !dbg !2653
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2654, metadata !54), !dbg !2655
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2656, metadata !54), !dbg !2657
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2658
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 19, !dbg !2660
  %9 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !2660
  %10 = icmp ne %struct.x509_st* %9, null, !dbg !2658
  br i1 %10, label %11, label %15, !dbg !2661

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2662
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 19, !dbg !2663
  %14 = load %struct.x509_st*, %struct.x509_st** %13, align 8, !dbg !2663
  call void @X509_free(%struct.x509_st* %14), !dbg !2664
  br label %15, !dbg !2664

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !2665
  %17 = call noalias %struct.x509_st* @ssl_x509_load(i8* %16), !dbg !2666
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2667
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 19, !dbg !2668
  store %struct.x509_st* %17, %struct.x509_st** %19, align 8, !dbg !2669
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2670
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 19, !dbg !2672
  %22 = load %struct.x509_st*, %struct.x509_st** %21, align 8, !dbg !2672
  %23 = icmp ne %struct.x509_st* %22, null, !dbg !2670
  br i1 %23, label %41, label %24, !dbg !2673

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2674
  %26 = load i8*, i8** %5, align 8, !dbg !2676
  %27 = load i8*, i8** %6, align 8, !dbg !2677
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0), i8* %26, i8* %27), !dbg !2678
  %29 = call i32* @__errno_location() #1, !dbg !2679
  %30 = load i32, i32* %29, align 4, !dbg !2681
  %31 = icmp ne i32 %30, 0, !dbg !2682
  br i1 %31, label %32, label %38, !dbg !2683

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2684
  %34 = call i32* @__errno_location() #1, !dbg !2686
  %35 = load i32, i32* %34, align 4, !dbg !2687
  %36 = call i8* @strerror(i32 %35) #10, !dbg !2688
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !2690
  br label %40, !dbg !2692

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2693
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !2695
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !2696
  unreachable, !dbg !2696

; <label>:41:                                     ; preds = %15
  %42 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2697
  %43 = getelementptr inbounds %struct.opts, %struct.opts* %42, i32 0, i32 19, !dbg !2698
  %44 = load %struct.x509_st*, %struct.x509_st** %43, align 8, !dbg !2698
  call void @ssl_x509_refcount_inc(%struct.x509_st* %44), !dbg !2699
  %45 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2700
  %46 = getelementptr inbounds %struct.opts, %struct.opts* %45, i32 0, i32 22, !dbg !2701
  %47 = load %struct.stack_st_X509*, %struct.stack_st_X509** %46, align 8, !dbg !2701
  %48 = bitcast %struct.stack_st_X509* %47 to %struct.stack_st*, !dbg !2702
  %49 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2700
  %50 = getelementptr inbounds %struct.opts, %struct.opts* %49, i32 0, i32 19, !dbg !2701
  %51 = load %struct.x509_st*, %struct.x509_st** %50, align 8, !dbg !2701
  %52 = bitcast %struct.x509_st* %51 to i8*, !dbg !2703
  %53 = call i32 @sk_insert(%struct.stack_st* %48, i8* %52, i32 0), !dbg !2700
  %54 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2704
  %55 = getelementptr inbounds %struct.opts, %struct.opts* %54, i32 0, i32 20, !dbg !2706
  %56 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %55, align 8, !dbg !2706
  %57 = icmp ne %struct.evp_pkey_st* %56, null, !dbg !2704
  br i1 %57, label %63, label %58, !dbg !2707

; <label>:58:                                     ; preds = %41
  %59 = load i8*, i8** %6, align 8, !dbg !2708
  %60 = call noalias %struct.evp_pkey_st* @ssl_key_load(i8* %59), !dbg !2710
  %61 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2711
  %62 = getelementptr inbounds %struct.opts, %struct.opts* %61, i32 0, i32 20, !dbg !2712
  store %struct.evp_pkey_st* %60, %struct.evp_pkey_st** %62, align 8, !dbg !2713
  br label %63, !dbg !2714

; <label>:63:                                     ; preds = %58, %41
  %64 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2715
  %65 = getelementptr inbounds %struct.opts, %struct.opts* %64, i32 0, i32 25, !dbg !2717
  %66 = load %struct.dh_st*, %struct.dh_st** %65, align 8, !dbg !2717
  %67 = icmp ne %struct.dh_st* %66, null, !dbg !2715
  br i1 %67, label %73, label %68, !dbg !2718

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %6, align 8, !dbg !2719
  %70 = call noalias %struct.dh_st* @ssl_dh_load(i8* %69), !dbg !2721
  %71 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2722
  %72 = getelementptr inbounds %struct.opts, %struct.opts* %71, i32 0, i32 25, !dbg !2723
  store %struct.dh_st* %70, %struct.dh_st** %72, align 8, !dbg !2724
  br label %73, !dbg !2725

; <label>:73:                                     ; preds = %68, %63
  ret void, !dbg !2726
}

declare noalias %struct.x509_st* @ssl_x509_load(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare void @ERR_print_errors_fp(%struct._IO_FILE*) #2

declare void @ssl_x509_refcount_inc(%struct.x509_st*) #2

declare i32 @sk_insert(%struct.stack_st*, i8*, i32) #2

declare noalias %struct.evp_pkey_st* @ssl_key_load(i8*) #2

declare noalias %struct.dh_st* @ssl_dh_load(i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_cakey(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2727 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2728, metadata !54), !dbg !2729
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2730, metadata !54), !dbg !2731
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2732, metadata !54), !dbg !2733
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2734
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 20, !dbg !2736
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %8, align 8, !dbg !2736
  %10 = icmp ne %struct.evp_pkey_st* %9, null, !dbg !2734
  br i1 %10, label %11, label %15, !dbg !2737

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2738
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 20, !dbg !2739
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !2739
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %14), !dbg !2740
  br label %15, !dbg !2740

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !2741
  %17 = call noalias %struct.evp_pkey_st* @ssl_key_load(i8* %16), !dbg !2742
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2743
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 20, !dbg !2744
  store %struct.evp_pkey_st* %17, %struct.evp_pkey_st** %19, align 8, !dbg !2745
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2746
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 20, !dbg !2748
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %21, align 8, !dbg !2748
  %23 = icmp ne %struct.evp_pkey_st* %22, null, !dbg !2746
  br i1 %23, label %41, label %24, !dbg !2749

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2750
  %26 = load i8*, i8** %5, align 8, !dbg !2752
  %27 = load i8*, i8** %6, align 8, !dbg !2753
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0), i8* %26, i8* %27), !dbg !2754
  %29 = call i32* @__errno_location() #1, !dbg !2755
  %30 = load i32, i32* %29, align 4, !dbg !2757
  %31 = icmp ne i32 %30, 0, !dbg !2758
  br i1 %31, label %32, label %38, !dbg !2759

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2760
  %34 = call i32* @__errno_location() #1, !dbg !2762
  %35 = load i32, i32* %34, align 4, !dbg !2763
  %36 = call i8* @strerror(i32 %35) #10, !dbg !2764
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !2766
  br label %40, !dbg !2768

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2769
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !2771
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !2772
  unreachable, !dbg !2772

; <label>:41:                                     ; preds = %15
  %42 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2773
  %43 = getelementptr inbounds %struct.opts, %struct.opts* %42, i32 0, i32 19, !dbg !2775
  %44 = load %struct.x509_st*, %struct.x509_st** %43, align 8, !dbg !2775
  %45 = icmp ne %struct.x509_st* %44, null, !dbg !2773
  br i1 %45, label %69, label %46, !dbg !2776

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %6, align 8, !dbg !2777
  %48 = call noalias %struct.x509_st* @ssl_x509_load(i8* %47), !dbg !2779
  %49 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2780
  %50 = getelementptr inbounds %struct.opts, %struct.opts* %49, i32 0, i32 19, !dbg !2781
  store %struct.x509_st* %48, %struct.x509_st** %50, align 8, !dbg !2782
  %51 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2783
  %52 = getelementptr inbounds %struct.opts, %struct.opts* %51, i32 0, i32 19, !dbg !2785
  %53 = load %struct.x509_st*, %struct.x509_st** %52, align 8, !dbg !2785
  %54 = icmp ne %struct.x509_st* %53, null, !dbg !2783
  br i1 %54, label %55, label %68, !dbg !2786

; <label>:55:                                     ; preds = %46
  %56 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2787
  %57 = getelementptr inbounds %struct.opts, %struct.opts* %56, i32 0, i32 19, !dbg !2789
  %58 = load %struct.x509_st*, %struct.x509_st** %57, align 8, !dbg !2789
  call void @ssl_x509_refcount_inc(%struct.x509_st* %58), !dbg !2790
  %59 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2791
  %60 = getelementptr inbounds %struct.opts, %struct.opts* %59, i32 0, i32 22, !dbg !2792
  %61 = load %struct.stack_st_X509*, %struct.stack_st_X509** %60, align 8, !dbg !2792
  %62 = bitcast %struct.stack_st_X509* %61 to %struct.stack_st*, !dbg !2793
  %63 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2791
  %64 = getelementptr inbounds %struct.opts, %struct.opts* %63, i32 0, i32 19, !dbg !2792
  %65 = load %struct.x509_st*, %struct.x509_st** %64, align 8, !dbg !2792
  %66 = bitcast %struct.x509_st* %65 to i8*, !dbg !2794
  %67 = call i32 @sk_insert(%struct.stack_st* %62, i8* %66, i32 0), !dbg !2791
  br label %68, !dbg !2795

; <label>:68:                                     ; preds = %55, %46
  br label %69, !dbg !2796

; <label>:69:                                     ; preds = %68, %41
  %70 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2797
  %71 = getelementptr inbounds %struct.opts, %struct.opts* %70, i32 0, i32 25, !dbg !2799
  %72 = load %struct.dh_st*, %struct.dh_st** %71, align 8, !dbg !2799
  %73 = icmp ne %struct.dh_st* %72, null, !dbg !2797
  br i1 %73, label %79, label %74, !dbg !2800

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %6, align 8, !dbg !2801
  %76 = call noalias %struct.dh_st* @ssl_dh_load(i8* %75), !dbg !2803
  %77 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2804
  %78 = getelementptr inbounds %struct.opts, %struct.opts* %77, i32 0, i32 25, !dbg !2805
  store %struct.dh_st* %76, %struct.dh_st** %78, align 8, !dbg !2806
  br label %79, !dbg !2807

; <label>:79:                                     ; preds = %74, %69
  ret void, !dbg !2808
}

; Function Attrs: nounwind uwtable
define void @opts_set_chain(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2809 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2810, metadata !54), !dbg !2811
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2812, metadata !54), !dbg !2813
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2814, metadata !54), !dbg !2815
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2816
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 22, !dbg !2818
  %9 = load i8*, i8** %6, align 8, !dbg !2819
  %10 = call i32 @ssl_x509chain_load(%struct.x509_st** null, %struct.stack_st_X509** %8, i8* %9), !dbg !2820
  %11 = icmp eq i32 %10, -1, !dbg !2821
  br i1 %11, label %12, label %29, !dbg !2822

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2823
  %14 = load i8*, i8** %5, align 8, !dbg !2825
  %15 = load i8*, i8** %6, align 8, !dbg !2826
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i8* %14, i8* %15), !dbg !2827
  %17 = call i32* @__errno_location() #1, !dbg !2828
  %18 = load i32, i32* %17, align 4, !dbg !2830
  %19 = icmp ne i32 %18, 0, !dbg !2831
  br i1 %19, label %20, label %26, !dbg !2832

; <label>:20:                                     ; preds = %12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2833
  %22 = call i32* @__errno_location() #1, !dbg !2835
  %23 = load i32, i32* %22, align 4, !dbg !2836
  %24 = call i8* @strerror(i32 %23) #10, !dbg !2837
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %24), !dbg !2839
  br label %28, !dbg !2841

; <label>:26:                                     ; preds = %12
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2842
  call void @ERR_print_errors_fp(%struct._IO_FILE* %27), !dbg !2844
  br label %28

; <label>:28:                                     ; preds = %26, %20
  call void @exit(i32 1) #9, !dbg !2845
  unreachable, !dbg !2845

; <label>:29:                                     ; preds = %3
  ret void, !dbg !2846
}

declare i32 @ssl_x509chain_load(%struct.x509_st**, %struct.stack_st_X509**, i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_key(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2847 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2848, metadata !54), !dbg !2849
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2850, metadata !54), !dbg !2851
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2852, metadata !54), !dbg !2853
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2854
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 21, !dbg !2856
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %8, align 8, !dbg !2856
  %10 = icmp ne %struct.evp_pkey_st* %9, null, !dbg !2854
  br i1 %10, label %11, label %15, !dbg !2857

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2858
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 21, !dbg !2859
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !2859
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %14), !dbg !2860
  br label %15, !dbg !2860

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !2861
  %17 = call noalias %struct.evp_pkey_st* @ssl_key_load(i8* %16), !dbg !2862
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2863
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 21, !dbg !2864
  store %struct.evp_pkey_st* %17, %struct.evp_pkey_st** %19, align 8, !dbg !2865
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2866
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 21, !dbg !2868
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %21, align 8, !dbg !2868
  %23 = icmp ne %struct.evp_pkey_st* %22, null, !dbg !2866
  br i1 %23, label %41, label %24, !dbg !2869

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2870
  %26 = load i8*, i8** %5, align 8, !dbg !2872
  %27 = load i8*, i8** %6, align 8, !dbg !2873
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0), i8* %26, i8* %27), !dbg !2874
  %29 = call i32* @__errno_location() #1, !dbg !2875
  %30 = load i32, i32* %29, align 4, !dbg !2877
  %31 = icmp ne i32 %30, 0, !dbg !2878
  br i1 %31, label %32, label %38, !dbg !2879

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2880
  %34 = call i32* @__errno_location() #1, !dbg !2882
  %35 = load i32, i32* %34, align 4, !dbg !2883
  %36 = call i8* @strerror(i32 %35) #10, !dbg !2884
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !2886
  br label %40, !dbg !2888

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2889
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !2891
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !2892
  unreachable, !dbg !2892

; <label>:41:                                     ; preds = %15
  %42 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2893
  %43 = getelementptr inbounds %struct.opts, %struct.opts* %42, i32 0, i32 25, !dbg !2895
  %44 = load %struct.dh_st*, %struct.dh_st** %43, align 8, !dbg !2895
  %45 = icmp ne %struct.dh_st* %44, null, !dbg !2893
  br i1 %45, label %51, label %46, !dbg !2896

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %6, align 8, !dbg !2897
  %48 = call noalias %struct.dh_st* @ssl_dh_load(i8* %47), !dbg !2899
  %49 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2900
  %50 = getelementptr inbounds %struct.opts, %struct.opts* %49, i32 0, i32 25, !dbg !2901
  store %struct.dh_st* %48, %struct.dh_st** %50, align 8, !dbg !2902
  br label %51, !dbg !2903

; <label>:51:                                     ; preds = %46, %41
  ret void, !dbg !2904
}

; Function Attrs: nounwind uwtable
define void @opts_set_crl(%struct.opts* nonnull, i8* nonnull) #4 !dbg !2905 {
  %3 = alloca %struct.opts*, align 8
  %4 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %3, metadata !2908, metadata !54), !dbg !2909
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2910, metadata !54), !dbg !2911
  %5 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !2912
  %6 = getelementptr inbounds %struct.opts, %struct.opts* %5, i32 0, i32 28, !dbg !2914
  %7 = load i8*, i8** %6, align 8, !dbg !2914
  %8 = icmp ne i8* %7, null, !dbg !2912
  br i1 %8, label %9, label %13, !dbg !2915

; <label>:9:                                      ; preds = %2
  %10 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !2916
  %11 = getelementptr inbounds %struct.opts, %struct.opts* %10, i32 0, i32 28, !dbg !2917
  %12 = load i8*, i8** %11, align 8, !dbg !2917
  call void @free(i8* %12) #10, !dbg !2918
  br label %13, !dbg !2918

; <label>:13:                                     ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8, !dbg !2919
  %15 = call noalias i8* @strdup(i8* %14) #10, !dbg !2920
  %16 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !2921
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 28, !dbg !2922
  store i8* %15, i8** %17, align 8, !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: nounwind uwtable
define void @opts_set_tgcrtdir(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2925 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2926, metadata !54), !dbg !2927
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2928, metadata !54), !dbg !2929
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2930, metadata !54), !dbg !2931
  %7 = load i8*, i8** %6, align 8, !dbg !2932
  %8 = call i32 @sys_isdir(i8* %7), !dbg !2934
  %9 = icmp ne i32 %8, 0, !dbg !2934
  br i1 %9, label %15, label %10, !dbg !2935

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2936
  %12 = load i8*, i8** %5, align 8, !dbg !2938
  %13 = load i8*, i8** %6, align 8, !dbg !2939
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* %12, i8* %13), !dbg !2940
  call void @exit(i32 1) #9, !dbg !2941
  unreachable, !dbg !2941

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2942
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 4, !dbg !2944
  %18 = load i8*, i8** %17, align 8, !dbg !2944
  %19 = icmp ne i8* %18, null, !dbg !2942
  br i1 %19, label %20, label %24, !dbg !2945

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2946
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 4, !dbg !2947
  %23 = load i8*, i8** %22, align 8, !dbg !2947
  call void @free(i8* %23) #10, !dbg !2948
  br label %24, !dbg !2948

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !2949
  %26 = call noalias i8* @strdup(i8* %25) #10, !dbg !2950
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2951
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 4, !dbg !2952
  store i8* %26, i8** %28, align 8, !dbg !2953
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2954
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 4, !dbg !2956
  %31 = load i8*, i8** %30, align 8, !dbg !2956
  %32 = icmp ne i8* %31, null, !dbg !2954
  br i1 %32, label %35, label %33, !dbg !2957

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %5, align 8, !dbg !2958
  call void @oom_die(i8* %34) #12, !dbg !2959
  unreachable, !dbg !2959

; <label>:35:                                     ; preds = %24
  ret void, !dbg !2960
}

declare i32 @sys_isdir(i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_certgendir_writegencerts(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !2961 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2962, metadata !54), !dbg !2963
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2964, metadata !54), !dbg !2965
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2966, metadata !54), !dbg !2967
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2968
  %8 = bitcast %struct.opts* %7 to i16*, !dbg !2969
  %9 = load i16, i16* %8, align 8, !dbg !2970
  %10 = and i16 %9, -8193, !dbg !2970
  store i16 %10, i16* %8, align 8, !dbg !2970
  %11 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2971
  %12 = load i8*, i8** %5, align 8, !dbg !2972
  %13 = load i8*, i8** %6, align 8, !dbg !2973
  call void @set_certgendir(%struct.opts* %11, i8* %12, i8* %13), !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: nounwind uwtable
define internal void @set_certgendir(%struct.opts*, i8*, i8*) #4 !dbg !2976 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !2977, metadata !54), !dbg !2978
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2979, metadata !54), !dbg !2980
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2981, metadata !54), !dbg !2982
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2983
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 3, !dbg !2985
  %9 = load i8*, i8** %8, align 8, !dbg !2985
  %10 = icmp ne i8* %9, null, !dbg !2983
  br i1 %10, label %11, label %15, !dbg !2986

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2987
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 3, !dbg !2988
  %14 = load i8*, i8** %13, align 8, !dbg !2988
  call void @free(i8* %14) #10, !dbg !2989
  br label %15, !dbg !2989

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !2990
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !2991
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2992
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 3, !dbg !2993
  store i8* %17, i8** %19, align 8, !dbg !2994
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2995
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 3, !dbg !2997
  %22 = load i8*, i8** %21, align 8, !dbg !2997
  %23 = icmp ne i8* %22, null, !dbg !2995
  br i1 %23, label %26, label %24, !dbg !2998

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !2999
  call void @oom_die(i8* %25) #12, !dbg !3000
  unreachable, !dbg !3000

; <label>:26:                                     ; preds = %15
  ret void, !dbg !3001
}

; Function Attrs: nounwind uwtable
define void @opts_set_certgendir_writeall(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3002 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3003, metadata !54), !dbg !3004
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3005, metadata !54), !dbg !3006
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3007, metadata !54), !dbg !3008
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3009
  %8 = bitcast %struct.opts* %7 to i16*, !dbg !3010
  %9 = load i16, i16* %8, align 8, !dbg !3011
  %10 = and i16 %9, -8193, !dbg !3011
  %11 = or i16 %10, 8192, !dbg !3011
  store i16 %11, i16* %8, align 8, !dbg !3011
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3012
  %13 = load i8*, i8** %5, align 8, !dbg !3013
  %14 = load i8*, i8** %6, align 8, !dbg !3014
  call void @set_certgendir(%struct.opts* %12, i8* %13, i8* %14), !dbg !3015
  ret void, !dbg !3016
}

; Function Attrs: nounwind uwtable
define void @opts_set_deny_ocsp(%struct.opts* nonnull) #4 !dbg !3017 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3018, metadata !54), !dbg !3019
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3020
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3021
  %5 = load i16, i16* %4, align 8, !dbg !3022
  %6 = and i16 %5, -257, !dbg !3022
  %7 = or i16 %6, 256, !dbg !3022
  store i16 %7, i16* %4, align 8, !dbg !3022
  ret void, !dbg !3023
}

; Function Attrs: nounwind uwtable
define void @opts_unset_deny_ocsp(%struct.opts*) #4 !dbg !3024 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3025, metadata !54), !dbg !3026
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3027
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3028
  %5 = load i16, i16* %4, align 8, !dbg !3029
  %6 = and i16 %5, -257, !dbg !3029
  store i16 %6, i16* %4, align 8, !dbg !3029
  ret void, !dbg !3030
}

; Function Attrs: nounwind uwtable
define void @opts_set_passthrough(%struct.opts* nonnull) #4 !dbg !3031 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3032, metadata !54), !dbg !3033
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3034
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3035
  %5 = load i16, i16* %4, align 8, !dbg !3036
  %6 = and i16 %5, -129, !dbg !3036
  %7 = or i16 %6, 128, !dbg !3036
  store i16 %7, i16* %4, align 8, !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: nounwind uwtable
define void @opts_unset_passthrough(%struct.opts*) #4 !dbg !3038 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3039, metadata !54), !dbg !3040
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3041
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3042
  %5 = load i16, i16* %4, align 8, !dbg !3043
  %6 = and i16 %5, -129, !dbg !3043
  store i16 %6, i16* %4, align 8, !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: nounwind uwtable
define void @opts_set_clientcrt(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3045 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3046, metadata !54), !dbg !3047
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3048, metadata !54), !dbg !3049
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3050, metadata !54), !dbg !3051
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3052
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 23, !dbg !3054
  %9 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3054
  %10 = icmp ne %struct.x509_st* %9, null, !dbg !3052
  br i1 %10, label %11, label %15, !dbg !3055

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3056
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 23, !dbg !3057
  %14 = load %struct.x509_st*, %struct.x509_st** %13, align 8, !dbg !3057
  call void @X509_free(%struct.x509_st* %14), !dbg !3058
  br label %15, !dbg !3058

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3059
  %17 = call noalias %struct.x509_st* @ssl_x509_load(i8* %16), !dbg !3060
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3061
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 23, !dbg !3062
  store %struct.x509_st* %17, %struct.x509_st** %19, align 8, !dbg !3063
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3064
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 23, !dbg !3066
  %22 = load %struct.x509_st*, %struct.x509_st** %21, align 8, !dbg !3066
  %23 = icmp ne %struct.x509_st* %22, null, !dbg !3064
  br i1 %23, label %41, label %24, !dbg !3067

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3068
  %26 = load i8*, i8** %5, align 8, !dbg !3070
  %27 = load i8*, i8** %6, align 8, !dbg !3071
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i32 0, i32 0), i8* %26, i8* %27), !dbg !3072
  %29 = call i32* @__errno_location() #1, !dbg !3073
  %30 = load i32, i32* %29, align 4, !dbg !3075
  %31 = icmp ne i32 %30, 0, !dbg !3076
  br i1 %31, label %32, label %38, !dbg !3077

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3078
  %34 = call i32* @__errno_location() #1, !dbg !3080
  %35 = load i32, i32* %34, align 4, !dbg !3081
  %36 = call i8* @strerror(i32 %35) #10, !dbg !3082
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !3084
  br label %40, !dbg !3086

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3087
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !3089
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !3090
  unreachable, !dbg !3090

; <label>:41:                                     ; preds = %15
  ret void, !dbg !3091
}

; Function Attrs: nounwind uwtable
define void @opts_set_clientkey(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3092 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3093, metadata !54), !dbg !3094
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3095, metadata !54), !dbg !3096
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3097, metadata !54), !dbg !3098
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3099
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 24, !dbg !3101
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %8, align 8, !dbg !3101
  %10 = icmp ne %struct.evp_pkey_st* %9, null, !dbg !3099
  br i1 %10, label %11, label %15, !dbg !3102

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3103
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 24, !dbg !3104
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !3104
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %14), !dbg !3105
  br label %15, !dbg !3105

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3106
  %17 = call noalias %struct.evp_pkey_st* @ssl_key_load(i8* %16), !dbg !3107
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3108
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 24, !dbg !3109
  store %struct.evp_pkey_st* %17, %struct.evp_pkey_st** %19, align 8, !dbg !3110
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3111
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 24, !dbg !3113
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %21, align 8, !dbg !3113
  %23 = icmp ne %struct.evp_pkey_st* %22, null, !dbg !3111
  br i1 %23, label %41, label %24, !dbg !3114

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3115
  %26 = load i8*, i8** %5, align 8, !dbg !3117
  %27 = load i8*, i8** %6, align 8, !dbg !3118
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0), i8* %26, i8* %27), !dbg !3119
  %29 = call i32* @__errno_location() #1, !dbg !3120
  %30 = load i32, i32* %29, align 4, !dbg !3122
  %31 = icmp ne i32 %30, 0, !dbg !3123
  br i1 %31, label %32, label %38, !dbg !3124

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3125
  %34 = call i32* @__errno_location() #1, !dbg !3127
  %35 = load i32, i32* %34, align 4, !dbg !3128
  %36 = call i8* @strerror(i32 %35) #10, !dbg !3129
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !3131
  br label %40, !dbg !3133

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3134
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !3136
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !3137
  unreachable, !dbg !3137

; <label>:41:                                     ; preds = %15
  ret void, !dbg !3138
}

; Function Attrs: nounwind uwtable
define void @opts_set_dh(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3139 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3140, metadata !54), !dbg !3141
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3142, metadata !54), !dbg !3143
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3144, metadata !54), !dbg !3145
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3146
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 25, !dbg !3148
  %9 = load %struct.dh_st*, %struct.dh_st** %8, align 8, !dbg !3148
  %10 = icmp ne %struct.dh_st* %9, null, !dbg !3146
  br i1 %10, label %11, label %15, !dbg !3149

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3150
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 25, !dbg !3151
  %14 = load %struct.dh_st*, %struct.dh_st** %13, align 8, !dbg !3151
  call void @DH_free(%struct.dh_st* %14), !dbg !3152
  br label %15, !dbg !3152

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3153
  %17 = call noalias %struct.dh_st* @ssl_dh_load(i8* %16), !dbg !3154
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3155
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 25, !dbg !3156
  store %struct.dh_st* %17, %struct.dh_st** %19, align 8, !dbg !3157
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3158
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 25, !dbg !3160
  %22 = load %struct.dh_st*, %struct.dh_st** %21, align 8, !dbg !3160
  %23 = icmp ne %struct.dh_st* %22, null, !dbg !3158
  br i1 %23, label %41, label %24, !dbg !3161

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3162
  %26 = load i8*, i8** %5, align 8, !dbg !3164
  %27 = load i8*, i8** %6, align 8, !dbg !3165
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i8* %26, i8* %27), !dbg !3166
  %29 = call i32* @__errno_location() #1, !dbg !3167
  %30 = load i32, i32* %29, align 4, !dbg !3169
  %31 = icmp ne i32 %30, 0, !dbg !3170
  br i1 %31, label %32, label %38, !dbg !3171

; <label>:32:                                     ; preds = %24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3172
  %34 = call i32* @__errno_location() #1, !dbg !3174
  %35 = load i32, i32* %34, align 4, !dbg !3175
  %36 = call i8* @strerror(i32 %35) #10, !dbg !3176
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %36), !dbg !3178
  br label %40, !dbg !3180

; <label>:38:                                     ; preds = %24
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3181
  call void @ERR_print_errors_fp(%struct._IO_FILE* %39), !dbg !3183
  br label %40

; <label>:40:                                     ; preds = %38, %32
  call void @exit(i32 1) #9, !dbg !3184
  unreachable, !dbg !3184

; <label>:41:                                     ; preds = %15
  ret void, !dbg !3185
}

; Function Attrs: nounwind uwtable
define void @opts_set_ecdhcurve(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3186 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ec_key_st*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3187, metadata !54), !dbg !3188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3189, metadata !54), !dbg !3190
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3191, metadata !54), !dbg !3192
  call void @llvm.dbg.declare(metadata %struct.ec_key_st** %7, metadata !3193, metadata !54), !dbg !3194
  %8 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3195
  %9 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 26, !dbg !3197
  %10 = load i8*, i8** %9, align 8, !dbg !3197
  %11 = icmp ne i8* %10, null, !dbg !3195
  br i1 %11, label %12, label %16, !dbg !3198

; <label>:12:                                     ; preds = %3
  %13 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3199
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 26, !dbg !3200
  %15 = load i8*, i8** %14, align 8, !dbg !3200
  call void @free(i8* %15) #10, !dbg !3201
  br label %16, !dbg !3201

; <label>:16:                                     ; preds = %12, %3
  %17 = load i8*, i8** %6, align 8, !dbg !3202
  %18 = call noalias %struct.ec_key_st* @ssl_ec_by_name(i8* %17), !dbg !3204
  store %struct.ec_key_st* %18, %struct.ec_key_st** %7, align 8, !dbg !3205
  %19 = icmp ne %struct.ec_key_st* %18, null, !dbg !3205
  br i1 %19, label %25, label %20, !dbg !3206

; <label>:20:                                     ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3207
  %22 = load i8*, i8** %5, align 8, !dbg !3209
  %23 = load i8*, i8** %6, align 8, !dbg !3210
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* %22, i8* %23), !dbg !3211
  call void @exit(i32 1) #9, !dbg !3212
  unreachable, !dbg !3212

; <label>:25:                                     ; preds = %16
  %26 = load %struct.ec_key_st*, %struct.ec_key_st** %7, align 8, !dbg !3213
  call void @EC_KEY_free(%struct.ec_key_st* %26), !dbg !3214
  %27 = load i8*, i8** %6, align 8, !dbg !3215
  %28 = call noalias i8* @strdup(i8* %27) #10, !dbg !3216
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3217
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 26, !dbg !3218
  store i8* %28, i8** %30, align 8, !dbg !3219
  %31 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3220
  %32 = getelementptr inbounds %struct.opts, %struct.opts* %31, i32 0, i32 26, !dbg !3222
  %33 = load i8*, i8** %32, align 8, !dbg !3222
  %34 = icmp ne i8* %33, null, !dbg !3220
  br i1 %34, label %37, label %35, !dbg !3223

; <label>:35:                                     ; preds = %25
  %36 = load i8*, i8** %5, align 8, !dbg !3224
  call void @oom_die(i8* %36) #12, !dbg !3225
  unreachable, !dbg !3225

; <label>:37:                                     ; preds = %25
  ret void, !dbg !3226
}

declare noalias %struct.ec_key_st* @ssl_ec_by_name(i8*) #2

declare void @EC_KEY_free(%struct.ec_key_st*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_sslcomp(%struct.opts*) #4 !dbg !3227 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3228, metadata !54), !dbg !3229
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3230
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3231
  %5 = load i16, i16* %4, align 8, !dbg !3232
  %6 = and i16 %5, -5, !dbg !3232
  %7 = or i16 %6, 4, !dbg !3232
  store i16 %7, i16* %4, align 8, !dbg !3232
  ret void, !dbg !3233
}

; Function Attrs: nounwind uwtable
define void @opts_unset_sslcomp(%struct.opts* nonnull) #4 !dbg !3234 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !3235, metadata !54), !dbg !3236
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !3237
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !3238
  %5 = load i16, i16* %4, align 8, !dbg !3239
  %6 = and i16 %5, -5, !dbg !3239
  store i16 %6, i16* %4, align 8, !dbg !3239
  ret void, !dbg !3240
}

; Function Attrs: nounwind uwtable
define void @opts_set_ciphers(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3241 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3242, metadata !54), !dbg !3243
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3244, metadata !54), !dbg !3245
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3246, metadata !54), !dbg !3247
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3248
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 2, !dbg !3250
  %9 = load i8*, i8** %8, align 8, !dbg !3250
  %10 = icmp ne i8* %9, null, !dbg !3248
  br i1 %10, label %11, label %15, !dbg !3251

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3252
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 2, !dbg !3253
  %14 = load i8*, i8** %13, align 8, !dbg !3253
  call void @free(i8* %14) #10, !dbg !3254
  br label %15, !dbg !3254

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3255
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !3256
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3257
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 2, !dbg !3258
  store i8* %17, i8** %19, align 8, !dbg !3259
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3260
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 2, !dbg !3262
  %22 = load i8*, i8** %21, align 8, !dbg !3262
  %23 = icmp ne i8* %22, null, !dbg !3260
  br i1 %23, label %26, label %24, !dbg !3263

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !3264
  call void @oom_die(i8* %25) #12, !dbg !3265
  unreachable, !dbg !3265

; <label>:26:                                     ; preds = %15
  ret void, !dbg !3266
}

; Function Attrs: nounwind uwtable
define void @opts_set_openssl_engine(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3267 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3268, metadata !54), !dbg !3269
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3270, metadata !54), !dbg !3271
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3272, metadata !54), !dbg !3273
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3274
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 1, !dbg !3276
  %9 = load i8*, i8** %8, align 8, !dbg !3276
  %10 = icmp ne i8* %9, null, !dbg !3274
  br i1 %10, label %11, label %15, !dbg !3277

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3278
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 1, !dbg !3279
  %14 = load i8*, i8** %13, align 8, !dbg !3279
  call void @free(i8* %14) #10, !dbg !3280
  br label %15, !dbg !3280

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3281
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !3282
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3283
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 1, !dbg !3284
  store i8* %17, i8** %19, align 8, !dbg !3285
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3286
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 1, !dbg !3288
  %22 = load i8*, i8** %21, align 8, !dbg !3288
  %23 = icmp ne i8* %22, null, !dbg !3286
  br i1 %23, label %26, label %24, !dbg !3289

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !3290
  call void @oom_die(i8* %25) #12, !dbg !3291
  unreachable, !dbg !3291

; <label>:26:                                     ; preds = %15
  ret void, !dbg !3292
}

; Function Attrs: nounwind uwtable
define void @opts_force_proto(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3293 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3294, metadata !54), !dbg !3295
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3296, metadata !54), !dbg !3297
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3298, metadata !54), !dbg !3299
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3300
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 18, !dbg !3302
  %9 = load %struct.ssl_method_st* ()*, %struct.ssl_method_st* ()** %8, align 8, !dbg !3302
  %10 = icmp ne %struct.ssl_method_st* ()* %9, @SSLv23_method, !dbg !3303
  br i1 %10, label %11, label %15, !dbg !3304

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3305
  %13 = load i8*, i8** %5, align 8, !dbg !3307
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i8* %13), !dbg !3308
  call void @exit(i32 1) #9, !dbg !3309
  unreachable, !dbg !3309

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %6, align 8, !dbg !3310
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #11, !dbg !3312
  %18 = icmp ne i32 %17, 0, !dbg !3312
  br i1 %18, label %22, label %19, !dbg !3313

; <label>:19:                                     ; preds = %15
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3314
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 18, !dbg !3316
  store %struct.ssl_method_st* ()* @SSLv3_method, %struct.ssl_method_st* ()** %21, align 8, !dbg !3317
  br label %55, !dbg !3318

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %6, align 8, !dbg !3319
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #11, !dbg !3321
  %25 = icmp ne i32 %24, 0, !dbg !3321
  br i1 %25, label %26, label %30, !dbg !3322

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %6, align 8, !dbg !3323
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)) #11, !dbg !3325
  %29 = icmp ne i32 %28, 0, !dbg !3325
  br i1 %29, label %33, label %30, !dbg !3326

; <label>:30:                                     ; preds = %26, %22
  %31 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3327
  %32 = getelementptr inbounds %struct.opts, %struct.opts* %31, i32 0, i32 18, !dbg !3329
  store %struct.ssl_method_st* ()* @TLSv1_method, %struct.ssl_method_st* ()** %32, align 8, !dbg !3330
  br label %54, !dbg !3331

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** %6, align 8, !dbg !3332
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #11, !dbg !3334
  %36 = icmp ne i32 %35, 0, !dbg !3334
  br i1 %36, label %40, label %37, !dbg !3335

; <label>:37:                                     ; preds = %33
  %38 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3336
  %39 = getelementptr inbounds %struct.opts, %struct.opts* %38, i32 0, i32 18, !dbg !3338
  store %struct.ssl_method_st* ()* @TLSv1_1_method, %struct.ssl_method_st* ()** %39, align 8, !dbg !3339
  br label %53, !dbg !3340

; <label>:40:                                     ; preds = %33
  %41 = load i8*, i8** %6, align 8, !dbg !3341
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #11, !dbg !3343
  %43 = icmp ne i32 %42, 0, !dbg !3343
  br i1 %43, label %47, label %44, !dbg !3344

; <label>:44:                                     ; preds = %40
  %45 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3345
  %46 = getelementptr inbounds %struct.opts, %struct.opts* %45, i32 0, i32 18, !dbg !3347
  store %struct.ssl_method_st* ()* @TLSv1_2_method, %struct.ssl_method_st* ()** %46, align 8, !dbg !3348
  br label %52, !dbg !3349

; <label>:47:                                     ; preds = %40
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3350
  %49 = load i8*, i8** %5, align 8, !dbg !3352
  %50 = load i8*, i8** %6, align 8, !dbg !3353
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i8* %49, i8* %50), !dbg !3354
  call void @exit(i32 1) #9, !dbg !3355
  unreachable, !dbg !3355

; <label>:52:                                     ; preds = %44
  br label %53

; <label>:53:                                     ; preds = %52, %37
  br label %54

; <label>:54:                                     ; preds = %53, %30
  br label %55

; <label>:55:                                     ; preds = %54, %19
  ret void, !dbg !3356
}

; Function Attrs: nounwind uwtable
define void @opts_disable_proto(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3357 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3358, metadata !54), !dbg !3359
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3360, metadata !54), !dbg !3361
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3362, metadata !54), !dbg !3363
  %7 = load i8*, i8** %6, align 8, !dbg !3364
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #11, !dbg !3366
  %9 = icmp ne i32 %8, 0, !dbg !3366
  br i1 %9, label %16, label %10, !dbg !3367

; <label>:10:                                     ; preds = %3
  %11 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3368
  %12 = bitcast %struct.opts* %11 to i16*, !dbg !3370
  %13 = load i16, i16* %12, align 8, !dbg !3371
  %14 = and i16 %13, -9, !dbg !3371
  %15 = or i16 %14, 8, !dbg !3371
  store i16 %15, i16* %12, align 8, !dbg !3371
  br label %58, !dbg !3372

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %6, align 8, !dbg !3373
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #11, !dbg !3375
  %19 = icmp ne i32 %18, 0, !dbg !3375
  br i1 %19, label %20, label %24, !dbg !3376

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %6, align 8, !dbg !3377
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)) #11, !dbg !3379
  %23 = icmp ne i32 %22, 0, !dbg !3379
  br i1 %23, label %30, label %24, !dbg !3380

; <label>:24:                                     ; preds = %20, %16
  %25 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3381
  %26 = bitcast %struct.opts* %25 to i16*, !dbg !3383
  %27 = load i16, i16* %26, align 8, !dbg !3384
  %28 = and i16 %27, -17, !dbg !3384
  %29 = or i16 %28, 16, !dbg !3384
  store i16 %29, i16* %26, align 8, !dbg !3384
  br label %57, !dbg !3385

; <label>:30:                                     ; preds = %20
  %31 = load i8*, i8** %6, align 8, !dbg !3386
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #11, !dbg !3388
  %33 = icmp ne i32 %32, 0, !dbg !3388
  br i1 %33, label %40, label %34, !dbg !3389

; <label>:34:                                     ; preds = %30
  %35 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3390
  %36 = bitcast %struct.opts* %35 to i16*, !dbg !3392
  %37 = load i16, i16* %36, align 8, !dbg !3393
  %38 = and i16 %37, -33, !dbg !3393
  %39 = or i16 %38, 32, !dbg !3393
  store i16 %39, i16* %36, align 8, !dbg !3393
  br label %56, !dbg !3394

; <label>:40:                                     ; preds = %30
  %41 = load i8*, i8** %6, align 8, !dbg !3395
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #11, !dbg !3397
  %43 = icmp ne i32 %42, 0, !dbg !3397
  br i1 %43, label %50, label %44, !dbg !3398

; <label>:44:                                     ; preds = %40
  %45 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3399
  %46 = bitcast %struct.opts* %45 to i16*, !dbg !3401
  %47 = load i16, i16* %46, align 8, !dbg !3402
  %48 = and i16 %47, -65, !dbg !3402
  %49 = or i16 %48, 64, !dbg !3402
  store i16 %49, i16* %46, align 8, !dbg !3402
  br label %55, !dbg !3403

; <label>:50:                                     ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3404
  %52 = load i8*, i8** %5, align 8, !dbg !3406
  %53 = load i8*, i8** %6, align 8, !dbg !3407
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i32 0, i32 0), i8* %52, i8* %53), !dbg !3408
  call void @exit(i32 1) #9, !dbg !3409
  unreachable, !dbg !3409

; <label>:55:                                     ; preds = %44
  br label %56

; <label>:56:                                     ; preds = %55, %34
  br label %57

; <label>:57:                                     ; preds = %56, %24
  br label %58

; <label>:58:                                     ; preds = %57, %10
  ret void, !dbg !3410
}

; Function Attrs: nounwind uwtable
define void @opts_set_user(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3411 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3412, metadata !54), !dbg !3413
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3414, metadata !54), !dbg !3415
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3416, metadata !54), !dbg !3417
  %7 = load i8*, i8** %6, align 8, !dbg !3418
  %8 = call i32 @sys_isuser(i8* %7), !dbg !3420
  %9 = icmp ne i32 %8, 0, !dbg !3420
  br i1 %9, label %15, label %10, !dbg !3421

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3422
  %12 = load i8*, i8** %5, align 8, !dbg !3424
  %13 = load i8*, i8** %6, align 8, !dbg !3425
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i8* %12, i8* %13), !dbg !3426
  call void @exit(i32 1) #9, !dbg !3427
  unreachable, !dbg !3427

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3428
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 5, !dbg !3430
  %18 = load i8*, i8** %17, align 8, !dbg !3430
  %19 = icmp ne i8* %18, null, !dbg !3428
  br i1 %19, label %20, label %24, !dbg !3431

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3432
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 5, !dbg !3433
  %23 = load i8*, i8** %22, align 8, !dbg !3433
  call void @free(i8* %23) #10, !dbg !3434
  br label %24, !dbg !3434

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !3435
  %26 = call noalias i8* @strdup(i8* %25) #10, !dbg !3436
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3437
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 5, !dbg !3438
  store i8* %26, i8** %28, align 8, !dbg !3439
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3440
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 5, !dbg !3442
  %31 = load i8*, i8** %30, align 8, !dbg !3442
  %32 = icmp ne i8* %31, null, !dbg !3440
  br i1 %32, label %35, label %33, !dbg !3443

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %5, align 8, !dbg !3444
  call void @oom_die(i8* %34) #12, !dbg !3445
  unreachable, !dbg !3445

; <label>:35:                                     ; preds = %24
  ret void, !dbg !3446
}

declare i32 @sys_isuser(i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_group(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3447 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3448, metadata !54), !dbg !3449
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3450, metadata !54), !dbg !3451
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3452, metadata !54), !dbg !3453
  %7 = load i8*, i8** %6, align 8, !dbg !3454
  %8 = call i32 @sys_isgroup(i8* %7), !dbg !3456
  %9 = icmp ne i32 %8, 0, !dbg !3456
  br i1 %9, label %15, label %10, !dbg !3457

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3458
  %12 = load i8*, i8** %5, align 8, !dbg !3460
  %13 = load i8*, i8** %6, align 8, !dbg !3461
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i8* %12, i8* %13), !dbg !3462
  call void @exit(i32 1) #9, !dbg !3463
  unreachable, !dbg !3463

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3464
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 6, !dbg !3466
  %18 = load i8*, i8** %17, align 8, !dbg !3466
  %19 = icmp ne i8* %18, null, !dbg !3464
  br i1 %19, label %20, label %24, !dbg !3467

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3468
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 6, !dbg !3469
  %23 = load i8*, i8** %22, align 8, !dbg !3469
  call void @free(i8* %23) #10, !dbg !3470
  br label %24, !dbg !3470

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !3471
  %26 = call noalias i8* @strdup(i8* %25) #10, !dbg !3472
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3473
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 6, !dbg !3474
  store i8* %26, i8** %28, align 8, !dbg !3475
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3476
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 6, !dbg !3478
  %31 = load i8*, i8** %30, align 8, !dbg !3478
  %32 = icmp ne i8* %31, null, !dbg !3476
  br i1 %32, label %35, label %33, !dbg !3479

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %5, align 8, !dbg !3480
  call void @oom_die(i8* %34) #12, !dbg !3481
  unreachable, !dbg !3481

; <label>:35:                                     ; preds = %24
  ret void, !dbg !3482
}

declare i32 @sys_isgroup(i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_jaildir(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3483 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3484, metadata !54), !dbg !3485
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3486, metadata !54), !dbg !3487
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3488, metadata !54), !dbg !3489
  %7 = load i8*, i8** %6, align 8, !dbg !3490
  %8 = call i32 @sys_isdir(i8* %7), !dbg !3492
  %9 = icmp ne i32 %8, 0, !dbg !3492
  br i1 %9, label %15, label %10, !dbg !3493

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3494
  %12 = load i8*, i8** %5, align 8, !dbg !3496
  %13 = load i8*, i8** %6, align 8, !dbg !3497
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* %12, i8* %13), !dbg !3498
  call void @exit(i32 1) #9, !dbg !3499
  unreachable, !dbg !3499

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3500
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 7, !dbg !3502
  %18 = load i8*, i8** %17, align 8, !dbg !3502
  %19 = icmp ne i8* %18, null, !dbg !3500
  br i1 %19, label %20, label %24, !dbg !3503

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3504
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 7, !dbg !3505
  %23 = load i8*, i8** %22, align 8, !dbg !3505
  call void @free(i8* %23) #10, !dbg !3506
  br label %24, !dbg !3506

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !3507
  %26 = call i8* @realpath(i8* %25, i8* null) #10, !dbg !3508
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3509
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 7, !dbg !3510
  store i8* %26, i8** %28, align 8, !dbg !3511
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3512
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 7, !dbg !3514
  %31 = load i8*, i8** %30, align 8, !dbg !3514
  %32 = icmp ne i8* %31, null, !dbg !3512
  br i1 %32, label %43, label %33, !dbg !3515

; <label>:33:                                     ; preds = %24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3516
  %35 = load i8*, i8** %5, align 8, !dbg !3518
  %36 = load i8*, i8** %6, align 8, !dbg !3519
  %37 = call i32* @__errno_location() #1, !dbg !3520
  %38 = load i32, i32* %37, align 4, !dbg !3521
  %39 = call i8* @strerror(i32 %38) #10, !dbg !3522
  %40 = call i32* @__errno_location() #1, !dbg !3524
  %41 = load i32, i32* %40, align 4, !dbg !3526
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %35, i8* %36, i8* %39, i32 %41), !dbg !3527
  call void @exit(i32 1) #9, !dbg !3528
  unreachable, !dbg !3528

; <label>:43:                                     ; preds = %24
  ret void, !dbg !3529
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @opts_set_pidfile(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3530 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3531, metadata !54), !dbg !3532
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3533, metadata !54), !dbg !3534
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3535, metadata !54), !dbg !3536
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3537
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 8, !dbg !3539
  %9 = load i8*, i8** %8, align 8, !dbg !3539
  %10 = icmp ne i8* %9, null, !dbg !3537
  br i1 %10, label %11, label %15, !dbg !3540

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3541
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 8, !dbg !3542
  %14 = load i8*, i8** %13, align 8, !dbg !3542
  call void @free(i8* %14) #10, !dbg !3543
  br label %15, !dbg !3543

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3544
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !3545
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3546
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 8, !dbg !3547
  store i8* %17, i8** %19, align 8, !dbg !3548
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3549
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 8, !dbg !3551
  %22 = load i8*, i8** %21, align 8, !dbg !3551
  %23 = icmp ne i8* %22, null, !dbg !3549
  br i1 %23, label %26, label %24, !dbg !3552

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !3553
  call void @oom_die(i8* %25) #12, !dbg !3554
  unreachable, !dbg !3554

; <label>:26:                                     ; preds = %15
  ret void, !dbg !3555
}

; Function Attrs: nounwind uwtable
define void @opts_set_connectlog(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3556 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3557, metadata !54), !dbg !3558
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3559, metadata !54), !dbg !3560
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3561, metadata !54), !dbg !3562
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3563
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 10, !dbg !3565
  %9 = load i8*, i8** %8, align 8, !dbg !3565
  %10 = icmp ne i8* %9, null, !dbg !3563
  br i1 %10, label %11, label %15, !dbg !3566

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3567
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 10, !dbg !3568
  %14 = load i8*, i8** %13, align 8, !dbg !3568
  call void @free(i8* %14) #10, !dbg !3569
  br label %15, !dbg !3569

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3570
  %17 = call noalias i8* @sys_realdir(i8* %16), !dbg !3572
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3573
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 10, !dbg !3574
  store i8* %17, i8** %19, align 8, !dbg !3575
  %20 = icmp ne i8* %17, null, !dbg !3575
  br i1 %20, label %39, label %21, !dbg !3576

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #1, !dbg !3577
  %23 = load i32, i32* %22, align 4, !dbg !3580
  %24 = icmp eq i32 %23, 2, !dbg !3581
  br i1 %24, label %25, label %29, !dbg !3582

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3583
  %27 = load i8*, i8** %6, align 8, !dbg !3585
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* %27), !dbg !3586
  call void @exit(i32 1) #9, !dbg !3587
  unreachable, !dbg !3587

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3588
  %31 = load i8*, i8** %6, align 8, !dbg !3590
  %32 = call i32* @__errno_location() #1, !dbg !3591
  %33 = load i32, i32* %32, align 4, !dbg !3592
  %34 = call i8* @strerror(i32 %33) #10, !dbg !3593
  %35 = call i32* @__errno_location() #1, !dbg !3595
  %36 = load i32, i32* %35, align 4, !dbg !3597
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* %31, i8* %34, i32 %36), !dbg !3598
  %38 = load i8*, i8** %5, align 8, !dbg !3599
  call void @oom_die(i8* %38) #12, !dbg !3600
  unreachable, !dbg !3600

; <label>:39:                                     ; preds = %15
  ret void, !dbg !3601
}

declare noalias i8* @sys_realdir(i8*) #2

; Function Attrs: nounwind uwtable
define void @opts_set_contentlog(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3602 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3603, metadata !54), !dbg !3604
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3605, metadata !54), !dbg !3606
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3607, metadata !54), !dbg !3608
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3609
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 11, !dbg !3611
  %9 = load i8*, i8** %8, align 8, !dbg !3611
  %10 = icmp ne i8* %9, null, !dbg !3609
  br i1 %10, label %11, label %15, !dbg !3612

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3613
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 11, !dbg !3614
  %14 = load i8*, i8** %13, align 8, !dbg !3614
  call void @free(i8* %14) #10, !dbg !3615
  br label %15, !dbg !3615

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3616
  %17 = call noalias i8* @sys_realdir(i8* %16), !dbg !3618
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3619
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 11, !dbg !3620
  store i8* %17, i8** %19, align 8, !dbg !3621
  %20 = icmp ne i8* %17, null, !dbg !3621
  br i1 %20, label %39, label %21, !dbg !3622

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #1, !dbg !3623
  %23 = load i32, i32* %22, align 4, !dbg !3626
  %24 = icmp eq i32 %23, 2, !dbg !3627
  br i1 %24, label %25, label %29, !dbg !3628

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3629
  %27 = load i8*, i8** %6, align 8, !dbg !3631
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* %27), !dbg !3632
  call void @exit(i32 1) #9, !dbg !3633
  unreachable, !dbg !3633

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3634
  %31 = load i8*, i8** %6, align 8, !dbg !3636
  %32 = call i32* @__errno_location() #1, !dbg !3637
  %33 = load i32, i32* %32, align 4, !dbg !3638
  %34 = call i8* @strerror(i32 %33) #10, !dbg !3639
  %35 = call i32* @__errno_location() #1, !dbg !3641
  %36 = load i32, i32* %35, align 4, !dbg !3643
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* %31, i8* %34, i32 %36), !dbg !3644
  %38 = load i8*, i8** %5, align 8, !dbg !3645
  call void @oom_die(i8* %38) #12, !dbg !3646
  unreachable, !dbg !3646

; <label>:39:                                     ; preds = %15
  %40 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3647
  %41 = bitcast %struct.opts* %40 to i16*, !dbg !3648
  %42 = load i16, i16* %41, align 8, !dbg !3649
  %43 = and i16 %42, -513, !dbg !3649
  store i16 %43, i16* %41, align 8, !dbg !3649
  %44 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3650
  %45 = bitcast %struct.opts* %44 to i16*, !dbg !3651
  %46 = load i16, i16* %45, align 8, !dbg !3652
  %47 = and i16 %46, -1025, !dbg !3652
  store i16 %47, i16* %45, align 8, !dbg !3652
  ret void, !dbg !3653
}

; Function Attrs: nounwind uwtable
define void @opts_set_contentlogdir(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3654 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3655, metadata !54), !dbg !3656
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3657, metadata !54), !dbg !3658
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3659, metadata !54), !dbg !3660
  %7 = load i8*, i8** %6, align 8, !dbg !3661
  %8 = call i32 @sys_isdir(i8* %7), !dbg !3663
  %9 = icmp ne i32 %8, 0, !dbg !3663
  br i1 %9, label %15, label %10, !dbg !3664

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3665
  %12 = load i8*, i8** %5, align 8, !dbg !3667
  %13 = load i8*, i8** %6, align 8, !dbg !3668
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* %12, i8* %13), !dbg !3669
  call void @exit(i32 1) #9, !dbg !3670
  unreachable, !dbg !3670

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3671
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 11, !dbg !3673
  %18 = load i8*, i8** %17, align 8, !dbg !3673
  %19 = icmp ne i8* %18, null, !dbg !3671
  br i1 %19, label %20, label %24, !dbg !3674

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3675
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 11, !dbg !3676
  %23 = load i8*, i8** %22, align 8, !dbg !3676
  call void @free(i8* %23) #10, !dbg !3677
  br label %24, !dbg !3677

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !3678
  %26 = call i8* @realpath(i8* %25, i8* null) #10, !dbg !3679
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3680
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 11, !dbg !3681
  store i8* %26, i8** %28, align 8, !dbg !3682
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3683
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 11, !dbg !3685
  %31 = load i8*, i8** %30, align 8, !dbg !3685
  %32 = icmp ne i8* %31, null, !dbg !3683
  br i1 %32, label %43, label %33, !dbg !3686

; <label>:33:                                     ; preds = %24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3687
  %35 = load i8*, i8** %5, align 8, !dbg !3689
  %36 = load i8*, i8** %6, align 8, !dbg !3690
  %37 = call i32* @__errno_location() #1, !dbg !3691
  %38 = load i32, i32* %37, align 4, !dbg !3692
  %39 = call i8* @strerror(i32 %38) #10, !dbg !3693
  %40 = call i32* @__errno_location() #1, !dbg !3695
  %41 = load i32, i32* %40, align 4, !dbg !3697
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %35, i8* %36, i8* %39, i32 %41), !dbg !3698
  call void @exit(i32 1) #9, !dbg !3699
  unreachable, !dbg !3699

; <label>:43:                                     ; preds = %24
  %44 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3700
  %45 = bitcast %struct.opts* %44 to i16*, !dbg !3701
  %46 = load i16, i16* %45, align 8, !dbg !3702
  %47 = and i16 %46, -513, !dbg !3702
  %48 = or i16 %47, 512, !dbg !3702
  store i16 %48, i16* %45, align 8, !dbg !3702
  %49 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3703
  %50 = bitcast %struct.opts* %49 to i16*, !dbg !3704
  %51 = load i16, i16* %50, align 8, !dbg !3705
  %52 = and i16 %51, -1025, !dbg !3705
  store i16 %52, i16* %50, align 8, !dbg !3705
  ret void, !dbg !3706
}

; Function Attrs: nounwind uwtable
define void @opts_set_contentlogpathspec(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3707 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3708, metadata !54), !dbg !3709
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3710, metadata !54), !dbg !3711
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3712, metadata !54), !dbg !3713
  %7 = load i8*, i8** %5, align 8, !dbg !3714
  %8 = load i8*, i8** %6, align 8, !dbg !3715
  %9 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3716
  %10 = getelementptr inbounds %struct.opts, %struct.opts* %9, i32 0, i32 12, !dbg !3717
  %11 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3718
  %12 = getelementptr inbounds %struct.opts, %struct.opts* %11, i32 0, i32 11, !dbg !3719
  call void @opts_set_logbasedir(i8* %7, i8* %8, i8** %10, i8** %12), !dbg !3720
  %13 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3721
  %14 = bitcast %struct.opts* %13 to i16*, !dbg !3722
  %15 = load i16, i16* %14, align 8, !dbg !3723
  %16 = and i16 %15, -513, !dbg !3723
  store i16 %16, i16* %14, align 8, !dbg !3723
  %17 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3724
  %18 = bitcast %struct.opts* %17 to i16*, !dbg !3725
  %19 = load i16, i16* %18, align 8, !dbg !3726
  %20 = and i16 %19, -1025, !dbg !3726
  %21 = or i16 %20, 1024, !dbg !3726
  store i16 %21, i16* %18, align 8, !dbg !3726
  ret void, !dbg !3727
}

; Function Attrs: nounwind uwtable
define internal void @opts_set_logbasedir(i8*, i8*, i8**, i8**) #4 !dbg !3728 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3731, metadata !54), !dbg !3732
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3733, metadata !54), !dbg !3734
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !3735, metadata !54), !dbg !3736
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3737, metadata !54), !dbg !3738
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3739, metadata !54), !dbg !3740
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3741, metadata !54), !dbg !3742
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3743, metadata !54), !dbg !3744
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3745, metadata !54), !dbg !3746
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3747, metadata !54), !dbg !3748
  %14 = load i8**, i8*** %7, align 8, !dbg !3749
  %15 = load i8*, i8** %14, align 8, !dbg !3751
  %16 = icmp ne i8* %15, null, !dbg !3751
  br i1 %16, label %17, label %20, !dbg !3752

; <label>:17:                                     ; preds = %4
  %18 = load i8**, i8*** %7, align 8, !dbg !3753
  %19 = load i8*, i8** %18, align 8, !dbg !3754
  call void @free(i8* %19) #10, !dbg !3755
  br label %20, !dbg !3755

; <label>:20:                                     ; preds = %17, %4
  %21 = load i8**, i8*** %8, align 8, !dbg !3756
  %22 = load i8*, i8** %21, align 8, !dbg !3758
  %23 = icmp ne i8* %22, null, !dbg !3758
  br i1 %23, label %24, label %27, !dbg !3759

; <label>:24:                                     ; preds = %20
  %25 = load i8**, i8*** %8, align 8, !dbg !3760
  %26 = load i8*, i8** %25, align 8, !dbg !3761
  call void @free(i8* %26) #10, !dbg !3762
  br label %27, !dbg !3762

; <label>:27:                                     ; preds = %24, %20
  %28 = load i8*, i8** %6, align 8, !dbg !3763
  %29 = call i32 @log_content_split_pathspec(i8* %28, i8** %9, i8** %10), !dbg !3765
  %30 = icmp eq i32 %29, -1, !dbg !3766
  br i1 %30, label %31, label %41, !dbg !3767

; <label>:31:                                     ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3768
  %33 = load i8*, i8** %5, align 8, !dbg !3770
  %34 = load i8*, i8** %6, align 8, !dbg !3771
  %35 = call i32* @__errno_location() #1, !dbg !3772
  %36 = load i32, i32* %35, align 4, !dbg !3773
  %37 = call i8* @strerror(i32 %36) #10, !dbg !3774
  %38 = call i32* @__errno_location() #1, !dbg !3776
  %39 = load i32, i32* %38, align 4, !dbg !3778
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.49, i32 0, i32 0), i8* %33, i8* %34, i8* %37, i32 %39), !dbg !3779
  call void @exit(i32 1) #9, !dbg !3780
  unreachable, !dbg !3780

; <label>:41:                                     ; preds = %27
  %42 = load i8*, i8** %9, align 8, !dbg !3781
  store i8* %42, i8** %12, align 8, !dbg !3783
  store i8* %42, i8** %11, align 8, !dbg !3784
  br label %43, !dbg !3785

; <label>:43:                                     ; preds = %70, %41
  %44 = load i8*, i8** %11, align 8, !dbg !3786
  %45 = load i8, i8* %44, align 1, !dbg !3789
  %46 = icmp ne i8 %45, 0, !dbg !3790
  br i1 %46, label %47, label %75, !dbg !3790

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %12, align 8, !dbg !3791
  %49 = load i8*, i8** %11, align 8, !dbg !3794
  %50 = icmp ult i8* %48, %49, !dbg !3795
  br i1 %50, label %51, label %55, !dbg !3796

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %11, align 8, !dbg !3797
  %53 = load i8, i8* %52, align 1, !dbg !3798
  %54 = load i8*, i8** %12, align 8, !dbg !3799
  store i8 %53, i8* %54, align 1, !dbg !3800
  br label %55, !dbg !3801

; <label>:55:                                     ; preds = %51, %47
  %56 = load i8*, i8** %11, align 8, !dbg !3802
  %57 = load i8, i8* %56, align 1, !dbg !3804
  %58 = sext i8 %57 to i32, !dbg !3804
  %59 = icmp eq i32 %58, 37, !dbg !3805
  br i1 %59, label %60, label %69, !dbg !3806

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %11, align 8, !dbg !3807
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !3809
  %63 = load i8, i8* %62, align 1, !dbg !3810
  %64 = sext i8 %63 to i32, !dbg !3810
  %65 = icmp eq i32 %64, 37, !dbg !3811
  br i1 %65, label %66, label %69, !dbg !3812

; <label>:66:                                     ; preds = %60
  %67 = load i8*, i8** %11, align 8, !dbg !3813
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !3813
  store i8* %68, i8** %11, align 8, !dbg !3813
  br label %69, !dbg !3814

; <label>:69:                                     ; preds = %66, %60, %55
  br label %70, !dbg !3815

; <label>:70:                                     ; preds = %69
  %71 = load i8*, i8** %11, align 8, !dbg !3816
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !3816
  store i8* %72, i8** %11, align 8, !dbg !3816
  %73 = load i8*, i8** %12, align 8, !dbg !3818
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !3818
  store i8* %74, i8** %12, align 8, !dbg !3818
  br label %43, !dbg !3819, !llvm.loop !3820

; <label>:75:                                     ; preds = %43
  %76 = load i8*, i8** %12, align 8, !dbg !3822
  store i8 0, i8* %76, align 1, !dbg !3823
  %77 = load i8*, i8** %9, align 8, !dbg !3824
  %78 = call i32 @sys_mkpath(i8* %77, i32 511), !dbg !3826
  %79 = icmp eq i32 %78, -1, !dbg !3827
  br i1 %79, label %80, label %90, !dbg !3828

; <label>:80:                                     ; preds = %75
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3829
  %82 = load i8*, i8** %5, align 8, !dbg !3831
  %83 = load i8*, i8** %9, align 8, !dbg !3832
  %84 = call i32* @__errno_location() #1, !dbg !3833
  %85 = load i32, i32* %84, align 4, !dbg !3834
  %86 = call i8* @strerror(i32 %85) #10, !dbg !3835
  %87 = call i32* @__errno_location() #1, !dbg !3837
  %88 = load i32, i32* %87, align 4, !dbg !3839
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i8* %82, i8* %83, i8* %86, i32 %88), !dbg !3840
  call void @exit(i32 1) #9, !dbg !3841
  unreachable, !dbg !3841

; <label>:90:                                     ; preds = %75
  %91 = load i8*, i8** %9, align 8, !dbg !3842
  %92 = call i8* @realpath(i8* %91, i8* null) #10, !dbg !3843
  %93 = load i8**, i8*** %7, align 8, !dbg !3844
  store i8* %92, i8** %93, align 8, !dbg !3845
  %94 = load i8**, i8*** %7, align 8, !dbg !3846
  %95 = load i8*, i8** %94, align 8, !dbg !3848
  %96 = icmp ne i8* %95, null, !dbg !3848
  br i1 %96, label %107, label %97, !dbg !3849

; <label>:97:                                     ; preds = %90
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3850
  %99 = load i8*, i8** %5, align 8, !dbg !3852
  %100 = load i8*, i8** %9, align 8, !dbg !3853
  %101 = call i32* @__errno_location() #1, !dbg !3854
  %102 = load i32, i32* %101, align 4, !dbg !3855
  %103 = call i8* @strerror(i32 %102) #10, !dbg !3856
  %104 = call i32* @__errno_location() #1, !dbg !3858
  %105 = load i32, i32* %104, align 4, !dbg !3860
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %99, i8* %100, i8* %103, i32 %105), !dbg !3861
  call void @exit(i32 1) #9, !dbg !3862
  unreachable, !dbg !3862

; <label>:107:                                    ; preds = %90
  store i64 0, i64* %13, align 8, !dbg !3863
  %108 = load i8**, i8*** %7, align 8, !dbg !3865
  %109 = load i8*, i8** %108, align 8, !dbg !3866
  store i8* %109, i8** %11, align 8, !dbg !3867
  br label %110, !dbg !3868

; <label>:110:                                    ; preds = %123, %107
  %111 = load i8*, i8** %11, align 8, !dbg !3869
  %112 = load i8, i8* %111, align 1, !dbg !3871
  %113 = icmp ne i8 %112, 0, !dbg !3872
  br i1 %113, label %114, label %126, !dbg !3872

; <label>:114:                                    ; preds = %110
  %115 = load i8*, i8** %11, align 8, !dbg !3874
  %116 = load i8, i8* %115, align 1, !dbg !3877
  %117 = sext i8 %116 to i32, !dbg !3877
  %118 = icmp eq i32 %117, 37, !dbg !3878
  br i1 %118, label %119, label %122, !dbg !3879

; <label>:119:                                    ; preds = %114
  %120 = load i64, i64* %13, align 8, !dbg !3880
  %121 = add i64 %120, 1, !dbg !3880
  store i64 %121, i64* %13, align 8, !dbg !3880
  br label %122, !dbg !3881

; <label>:122:                                    ; preds = %119, %114
  br label %123, !dbg !3882

; <label>:123:                                    ; preds = %122
  %124 = load i8*, i8** %11, align 8, !dbg !3883
  %125 = getelementptr inbounds i8, i8* %124, i32 1, !dbg !3883
  store i8* %125, i8** %11, align 8, !dbg !3883
  br label %110, !dbg !3884, !llvm.loop !3886

; <label>:126:                                    ; preds = %110
  %127 = load i8*, i8** %9, align 8, !dbg !3888
  call void @free(i8* %127) #10, !dbg !3889
  %128 = load i8**, i8*** %7, align 8, !dbg !3890
  %129 = load i8*, i8** %128, align 8, !dbg !3891
  %130 = call i64 @strlen(i8* %129) #11, !dbg !3892
  %131 = load i64, i64* %13, align 8, !dbg !3893
  %132 = add i64 %131, %130, !dbg !3893
  store i64 %132, i64* %13, align 8, !dbg !3893
  %133 = load i64, i64* %13, align 8, !dbg !3894
  %134 = add i64 %133, 1, !dbg !3896
  %135 = call noalias i8* @malloc(i64 %134) #10, !dbg !3897
  store i8* %135, i8** %9, align 8, !dbg !3898
  %136 = icmp ne i8* %135, null, !dbg !3898
  br i1 %136, label %139, label %137, !dbg !3899

; <label>:137:                                    ; preds = %126
  %138 = load i8*, i8** %5, align 8, !dbg !3900
  call void @oom_die(i8* %138) #12, !dbg !3901
  unreachable, !dbg !3901

; <label>:139:                                    ; preds = %126
  %140 = load i8**, i8*** %7, align 8, !dbg !3902
  %141 = load i8*, i8** %140, align 8, !dbg !3904
  store i8* %141, i8** %11, align 8, !dbg !3905
  %142 = load i8*, i8** %9, align 8, !dbg !3906
  store i8* %142, i8** %12, align 8, !dbg !3907
  br label %143, !dbg !3908

; <label>:143:                                    ; preds = %159, %139
  %144 = load i8*, i8** %11, align 8, !dbg !3909
  %145 = load i8, i8* %144, align 1, !dbg !3911
  %146 = icmp ne i8 %145, 0, !dbg !3912
  br i1 %146, label %147, label %164, !dbg !3912

; <label>:147:                                    ; preds = %143
  %148 = load i8*, i8** %11, align 8, !dbg !3914
  %149 = load i8, i8* %148, align 1, !dbg !3916
  %150 = load i8*, i8** %12, align 8, !dbg !3917
  store i8 %149, i8* %150, align 1, !dbg !3918
  %151 = load i8*, i8** %12, align 8, !dbg !3919
  %152 = load i8, i8* %151, align 1, !dbg !3921
  %153 = sext i8 %152 to i32, !dbg !3921
  %154 = icmp eq i32 %153, 37, !dbg !3922
  br i1 %154, label %155, label %158, !dbg !3923

; <label>:155:                                    ; preds = %147
  %156 = load i8*, i8** %12, align 8, !dbg !3924
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !3924
  store i8* %157, i8** %12, align 8, !dbg !3924
  store i8 37, i8* %157, align 1, !dbg !3925
  br label %158, !dbg !3926

; <label>:158:                                    ; preds = %155, %147
  br label %159, !dbg !3927

; <label>:159:                                    ; preds = %158
  %160 = load i8*, i8** %11, align 8, !dbg !3928
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !3928
  store i8* %161, i8** %11, align 8, !dbg !3928
  %162 = load i8*, i8** %12, align 8, !dbg !3929
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !3929
  store i8* %163, i8** %12, align 8, !dbg !3929
  br label %143, !dbg !3930, !llvm.loop !3932

; <label>:164:                                    ; preds = %143
  %165 = load i8*, i8** %12, align 8, !dbg !3934
  store i8 0, i8* %165, align 1, !dbg !3935
  %166 = load i8**, i8*** %8, align 8, !dbg !3936
  %167 = load i8*, i8** %9, align 8, !dbg !3938
  %168 = load i8*, i8** %10, align 8, !dbg !3939
  %169 = call i32 (i8**, i8*, ...) @asprintf(i8** %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* %167, i8* %168) #10, !dbg !3940
  %170 = icmp slt i32 %169, 0, !dbg !3941
  br i1 %170, label %171, label %173, !dbg !3942

; <label>:171:                                    ; preds = %164
  %172 = load i8*, i8** %5, align 8, !dbg !3943
  call void @oom_die(i8* %172) #12, !dbg !3944
  unreachable, !dbg !3944

; <label>:173:                                    ; preds = %164
  %174 = load i8*, i8** %9, align 8, !dbg !3945
  call void @free(i8* %174) #10, !dbg !3946
  %175 = load i8*, i8** %10, align 8, !dbg !3947
  call void @free(i8* %175) #10, !dbg !3948
  ret void, !dbg !3949
}

; Function Attrs: nounwind uwtable
define void @opts_set_masterkeylog(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3950 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3951, metadata !54), !dbg !3952
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3953, metadata !54), !dbg !3954
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3955, metadata !54), !dbg !3956
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3957
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 13, !dbg !3959
  %9 = load i8*, i8** %8, align 8, !dbg !3959
  %10 = icmp ne i8* %9, null, !dbg !3957
  br i1 %10, label %11, label %15, !dbg !3960

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3961
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 13, !dbg !3962
  %14 = load i8*, i8** %13, align 8, !dbg !3962
  call void @free(i8* %14) #10, !dbg !3963
  br label %15, !dbg !3963

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !3964
  %17 = call noalias i8* @sys_realdir(i8* %16), !dbg !3966
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3967
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 13, !dbg !3968
  store i8* %17, i8** %19, align 8, !dbg !3969
  %20 = icmp ne i8* %17, null, !dbg !3969
  br i1 %20, label %39, label %21, !dbg !3970

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #1, !dbg !3971
  %23 = load i32, i32* %22, align 4, !dbg !3974
  %24 = icmp eq i32 %23, 2, !dbg !3975
  br i1 %24, label %25, label %29, !dbg !3976

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3977
  %27 = load i8*, i8** %6, align 8, !dbg !3979
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* %27), !dbg !3980
  call void @exit(i32 1) #9, !dbg !3981
  unreachable, !dbg !3981

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3982
  %31 = load i8*, i8** %6, align 8, !dbg !3984
  %32 = call i32* @__errno_location() #1, !dbg !3985
  %33 = load i32, i32* %32, align 4, !dbg !3986
  %34 = call i8* @strerror(i32 %33) #10, !dbg !3987
  %35 = call i32* @__errno_location() #1, !dbg !3989
  %36 = load i32, i32* %35, align 4, !dbg !3991
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* %31, i8* %34, i32 %36), !dbg !3992
  %38 = load i8*, i8** %5, align 8, !dbg !3993
  call void @oom_die(i8* %38) #12, !dbg !3994
  unreachable, !dbg !3994

; <label>:39:                                     ; preds = %15
  ret void, !dbg !3995
}

; Function Attrs: nounwind uwtable
define void @opts_set_pcaplog(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !3996 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3997, metadata !54), !dbg !3998
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3999, metadata !54), !dbg !4000
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4001, metadata !54), !dbg !4002
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4003
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 14, !dbg !4005
  %9 = load i8*, i8** %8, align 8, !dbg !4005
  %10 = icmp ne i8* %9, null, !dbg !4003
  br i1 %10, label %11, label %15, !dbg !4006

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4007
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 14, !dbg !4008
  %14 = load i8*, i8** %13, align 8, !dbg !4008
  call void @free(i8* %14) #10, !dbg !4009
  br label %15, !dbg !4009

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !4010
  %17 = call noalias i8* @sys_realdir(i8* %16), !dbg !4012
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4013
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 14, !dbg !4014
  store i8* %17, i8** %19, align 8, !dbg !4015
  %20 = icmp ne i8* %17, null, !dbg !4015
  br i1 %20, label %39, label %21, !dbg !4016

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno_location() #1, !dbg !4017
  %23 = load i32, i32* %22, align 4, !dbg !4020
  %24 = icmp eq i32 %23, 2, !dbg !4021
  br i1 %24, label %25, label %29, !dbg !4022

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4023
  %27 = load i8*, i8** %6, align 8, !dbg !4025
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* %27), !dbg !4026
  call void @exit(i32 1) #9, !dbg !4027
  unreachable, !dbg !4027

; <label>:29:                                     ; preds = %21
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4028
  %31 = load i8*, i8** %6, align 8, !dbg !4030
  %32 = call i32* @__errno_location() #1, !dbg !4031
  %33 = load i32, i32* %32, align 4, !dbg !4032
  %34 = call i8* @strerror(i32 %33) #10, !dbg !4033
  %35 = call i32* @__errno_location() #1, !dbg !4035
  %36 = load i32, i32* %35, align 4, !dbg !4037
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0), i8* %31, i8* %34, i32 %36), !dbg !4038
  %38 = load i8*, i8** %5, align 8, !dbg !4039
  call void @oom_die(i8* %38) #12, !dbg !4040
  unreachable, !dbg !4040

; <label>:39:                                     ; preds = %15
  %40 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4041
  %41 = bitcast %struct.opts* %40 to i16*, !dbg !4042
  %42 = load i16, i16* %41, align 8, !dbg !4043
  %43 = and i16 %42, -2049, !dbg !4043
  store i16 %43, i16* %41, align 8, !dbg !4043
  %44 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4044
  %45 = bitcast %struct.opts* %44 to i16*, !dbg !4045
  %46 = load i16, i16* %45, align 8, !dbg !4046
  %47 = and i16 %46, -4097, !dbg !4046
  store i16 %47, i16* %45, align 8, !dbg !4046
  ret void, !dbg !4047
}

; Function Attrs: nounwind uwtable
define void @opts_set_pcaplogdir(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !4048 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !4049, metadata !54), !dbg !4050
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4051, metadata !54), !dbg !4052
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4053, metadata !54), !dbg !4054
  %7 = load i8*, i8** %6, align 8, !dbg !4055
  %8 = call i32 @sys_isdir(i8* %7), !dbg !4057
  %9 = icmp ne i32 %8, 0, !dbg !4057
  br i1 %9, label %15, label %10, !dbg !4058

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4059
  %12 = load i8*, i8** %5, align 8, !dbg !4061
  %13 = load i8*, i8** %6, align 8, !dbg !4062
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* %12, i8* %13), !dbg !4063
  call void @exit(i32 1) #9, !dbg !4064
  unreachable, !dbg !4064

; <label>:15:                                     ; preds = %3
  %16 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4065
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 14, !dbg !4067
  %18 = load i8*, i8** %17, align 8, !dbg !4067
  %19 = icmp ne i8* %18, null, !dbg !4065
  br i1 %19, label %20, label %24, !dbg !4068

; <label>:20:                                     ; preds = %15
  %21 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4069
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 14, !dbg !4070
  %23 = load i8*, i8** %22, align 8, !dbg !4070
  call void @free(i8* %23) #10, !dbg !4071
  br label %24, !dbg !4071

; <label>:24:                                     ; preds = %20, %15
  %25 = load i8*, i8** %6, align 8, !dbg !4072
  %26 = call i8* @realpath(i8* %25, i8* null) #10, !dbg !4073
  %27 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4074
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 14, !dbg !4075
  store i8* %26, i8** %28, align 8, !dbg !4076
  %29 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4077
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 14, !dbg !4079
  %31 = load i8*, i8** %30, align 8, !dbg !4079
  %32 = icmp ne i8* %31, null, !dbg !4077
  br i1 %32, label %43, label %33, !dbg !4080

; <label>:33:                                     ; preds = %24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4081
  %35 = load i8*, i8** %5, align 8, !dbg !4083
  %36 = load i8*, i8** %6, align 8, !dbg !4084
  %37 = call i32* @__errno_location() #1, !dbg !4085
  %38 = load i32, i32* %37, align 4, !dbg !4086
  %39 = call i8* @strerror(i32 %38) #10, !dbg !4087
  %40 = call i32* @__errno_location() #1, !dbg !4089
  %41 = load i32, i32* %40, align 4, !dbg !4091
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %35, i8* %36, i8* %39, i32 %41), !dbg !4092
  call void @exit(i32 1) #9, !dbg !4093
  unreachable, !dbg !4093

; <label>:43:                                     ; preds = %24
  %44 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4094
  %45 = bitcast %struct.opts* %44 to i16*, !dbg !4095
  %46 = load i16, i16* %45, align 8, !dbg !4096
  %47 = and i16 %46, -2049, !dbg !4096
  %48 = or i16 %47, 2048, !dbg !4096
  store i16 %48, i16* %45, align 8, !dbg !4096
  %49 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4097
  %50 = bitcast %struct.opts* %49 to i16*, !dbg !4098
  %51 = load i16, i16* %50, align 8, !dbg !4099
  %52 = and i16 %51, -4097, !dbg !4099
  store i16 %52, i16* %50, align 8, !dbg !4099
  ret void, !dbg !4100
}

; Function Attrs: nounwind uwtable
define void @opts_set_pcaplogpathspec(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !4101 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !4102, metadata !54), !dbg !4103
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4104, metadata !54), !dbg !4105
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4106, metadata !54), !dbg !4107
  %7 = load i8*, i8** %5, align 8, !dbg !4108
  %8 = load i8*, i8** %6, align 8, !dbg !4109
  %9 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4110
  %10 = getelementptr inbounds %struct.opts, %struct.opts* %9, i32 0, i32 15, !dbg !4111
  %11 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4112
  %12 = getelementptr inbounds %struct.opts, %struct.opts* %11, i32 0, i32 14, !dbg !4113
  call void @opts_set_logbasedir(i8* %7, i8* %8, i8** %10, i8** %12), !dbg !4114
  %13 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4115
  %14 = bitcast %struct.opts* %13 to i16*, !dbg !4116
  %15 = load i16, i16* %14, align 8, !dbg !4117
  %16 = and i16 %15, -2049, !dbg !4117
  store i16 %16, i16* %14, align 8, !dbg !4117
  %17 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4118
  %18 = bitcast %struct.opts* %17 to i16*, !dbg !4119
  %19 = load i16, i16* %18, align 8, !dbg !4120
  %20 = and i16 %19, -4097, !dbg !4120
  %21 = or i16 %20, 4096, !dbg !4120
  store i16 %21, i16* %18, align 8, !dbg !4120
  ret void, !dbg !4121
}

; Function Attrs: nounwind uwtable
define void @opts_set_mirrorif(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !4122 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !4123, metadata !54), !dbg !4124
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4125, metadata !54), !dbg !4126
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4127, metadata !54), !dbg !4128
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4129
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 16, !dbg !4131
  %9 = load i8*, i8** %8, align 8, !dbg !4131
  %10 = icmp ne i8* %9, null, !dbg !4129
  br i1 %10, label %11, label %15, !dbg !4132

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4133
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 16, !dbg !4134
  %14 = load i8*, i8** %13, align 8, !dbg !4134
  call void @free(i8* %14) #10, !dbg !4135
  br label %15, !dbg !4135

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !4136
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !4137
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4138
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 16, !dbg !4139
  store i8* %17, i8** %19, align 8, !dbg !4140
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4141
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 16, !dbg !4143
  %22 = load i8*, i8** %21, align 8, !dbg !4143
  %23 = icmp ne i8* %22, null, !dbg !4141
  br i1 %23, label %26, label %24, !dbg !4144

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !4145
  call void @oom_die(i8* %25) #12, !dbg !4146
  unreachable, !dbg !4146

; <label>:26:                                     ; preds = %15
  ret void, !dbg !4147
}

; Function Attrs: nounwind uwtable
define void @opts_set_mirrortarget(%struct.opts* nonnull, i8* nonnull, i8* nonnull) #4 !dbg !4148 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !4149, metadata !54), !dbg !4150
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4151, metadata !54), !dbg !4152
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4153, metadata !54), !dbg !4154
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4155
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 17, !dbg !4157
  %9 = load i8*, i8** %8, align 8, !dbg !4157
  %10 = icmp ne i8* %9, null, !dbg !4155
  br i1 %10, label %11, label %15, !dbg !4158

; <label>:11:                                     ; preds = %3
  %12 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4159
  %13 = getelementptr inbounds %struct.opts, %struct.opts* %12, i32 0, i32 17, !dbg !4160
  %14 = load i8*, i8** %13, align 8, !dbg !4160
  call void @free(i8* %14) #10, !dbg !4161
  br label %15, !dbg !4161

; <label>:15:                                     ; preds = %11, %3
  %16 = load i8*, i8** %6, align 8, !dbg !4162
  %17 = call noalias i8* @strdup(i8* %16) #10, !dbg !4163
  %18 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4164
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 17, !dbg !4165
  store i8* %17, i8** %19, align 8, !dbg !4166
  %20 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4167
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 17, !dbg !4169
  %22 = load i8*, i8** %21, align 8, !dbg !4169
  %23 = icmp ne i8* %22, null, !dbg !4167
  br i1 %23, label %26, label %24, !dbg !4170

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %5, align 8, !dbg !4171
  call void @oom_die(i8* %25) #12, !dbg !4172
  unreachable, !dbg !4172

; <label>:26:                                     ; preds = %15
  ret void, !dbg !4173
}

; Function Attrs: nounwind uwtable
define void @opts_set_daemon(%struct.opts* nonnull) #4 !dbg !4174 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !4175, metadata !54), !dbg !4176
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !4177
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !4178
  %5 = load i16, i16* %4, align 8, !dbg !4179
  %6 = and i16 %5, -3, !dbg !4179
  %7 = or i16 %6, 2, !dbg !4179
  store i16 %7, i16* %4, align 8, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: nounwind uwtable
define void @opts_unset_daemon(%struct.opts*) #4 !dbg !4181 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !4182, metadata !54), !dbg !4183
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !4184
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !4185
  %5 = load i16, i16* %4, align 8, !dbg !4186
  %6 = and i16 %5, -3, !dbg !4186
  store i16 %6, i16* %4, align 8, !dbg !4186
  ret void, !dbg !4187
}

; Function Attrs: nounwind uwtable
define void @opts_set_debug(%struct.opts* nonnull) #4 !dbg !4188 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !4189, metadata !54), !dbg !4190
  call void @log_dbg_mode(i32 1), !dbg !4191
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !4192
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !4193
  %5 = load i16, i16* %4, align 8, !dbg !4194
  %6 = and i16 %5, -2, !dbg !4194
  %7 = or i16 %6, 1, !dbg !4194
  store i16 %7, i16* %4, align 8, !dbg !4194
  ret void, !dbg !4195
}

declare void @log_dbg_mode(i32) #2

; Function Attrs: nounwind uwtable
define void @opts_unset_debug(%struct.opts*) #4 !dbg !4196 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !4197, metadata !54), !dbg !4198
  call void @log_dbg_mode(i32 0), !dbg !4199
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !4200
  %4 = bitcast %struct.opts* %3 to i16*, !dbg !4201
  %5 = load i16, i16* %4, align 8, !dbg !4202
  %6 = and i16 %5, -2, !dbg !4202
  store i16 %6, i16* %4, align 8, !dbg !4202
  ret void, !dbg !4203
}

; Function Attrs: nounwind uwtable
define i32 @opts_set_option(%struct.opts* nonnull, i8* nonnull, i8* nonnull, i8**) #4 !dbg !4204 {
  %5 = alloca %struct.opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %5, metadata !4207, metadata !54), !dbg !4208
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4209, metadata !54), !dbg !4210
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4211, metadata !54), !dbg !4212
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4213, metadata !54), !dbg !4214
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4215, metadata !54), !dbg !4216
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4217, metadata !54), !dbg !4218
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4219, metadata !54), !dbg !4220
  store i32 -1, i32* %11, align 4, !dbg !4220
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4221, metadata !54), !dbg !4222
  %13 = load i8*, i8** %7, align 8, !dbg !4223
  %14 = call noalias i8* @strdup(i8* %13) #10, !dbg !4224
  store i8* %14, i8** %12, align 8, !dbg !4222
  %15 = load i8*, i8** %12, align 8, !dbg !4225
  store i8* %15, i8** %9, align 8, !dbg !4227
  br label %16, !dbg !4228

; <label>:16:                                     ; preds = %29, %4
  %17 = load i8*, i8** %9, align 8, !dbg !4229
  %18 = load i8, i8* %17, align 1, !dbg !4232
  %19 = sext i8 %18 to i32, !dbg !4232
  %20 = icmp eq i32 %19, 32, !dbg !4233
  br i1 %20, label %26, label %21, !dbg !4234

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %9, align 8, !dbg !4235
  %23 = load i8, i8* %22, align 1, !dbg !4237
  %24 = sext i8 %23 to i32, !dbg !4237
  %25 = icmp eq i32 %24, 9, !dbg !4238
  br label %26, !dbg !4239

; <label>:26:                                     ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %32, !dbg !4240

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !4242

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %9, align 8, !dbg !4244
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !4244
  store i8* %31, i8** %9, align 8, !dbg !4244
  br label %16, !dbg !4246, !llvm.loop !4247

; <label>:32:                                     ; preds = %26
  %33 = call i32 @get_name_value(i8** %9, i8** %10, i8 signext 61), !dbg !4249
  store i32 %33, i32* %11, align 4, !dbg !4250
  %34 = load i32, i32* %11, align 4, !dbg !4251
  %35 = icmp eq i32 %34, 0, !dbg !4253
  br i1 %35, label %36, label %43, !dbg !4254

; <label>:36:                                     ; preds = %32
  %37 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !4255
  %38 = load i8*, i8** %6, align 8, !dbg !4257
  %39 = load i8*, i8** %9, align 8, !dbg !4258
  %40 = load i8*, i8** %10, align 8, !dbg !4259
  %41 = load i8**, i8*** %8, align 8, !dbg !4260
  %42 = call i32 @set_option(%struct.opts* %37, i8* %38, i8* %39, i8* %40, i8** %41, i32 0), !dbg !4261
  store i32 %42, i32* %11, align 4, !dbg !4262
  br label %43, !dbg !4263

; <label>:43:                                     ; preds = %36, %32
  %44 = load i8*, i8** %12, align 8, !dbg !4264
  %45 = icmp ne i8* %44, null, !dbg !4264
  br i1 %45, label %46, label %48, !dbg !4266

; <label>:46:                                     ; preds = %43
  %47 = load i8*, i8** %12, align 8, !dbg !4267
  call void @free(i8* %47) #10, !dbg !4269
  br label %48, !dbg !4270

; <label>:48:                                     ; preds = %46, %43
  %49 = load i32, i32* %11, align 4, !dbg !4271
  ret i32 %49, !dbg !4272
}

; Function Attrs: nounwind uwtable
define internal i32 @get_name_value(i8**, i8**, i8 signext) #4 !dbg !4273 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !4276, metadata !54), !dbg !4277
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !4278, metadata !54), !dbg !4279
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4280, metadata !54), !dbg !4281
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4282, metadata !54), !dbg !4283
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4284, metadata !54), !dbg !4285
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4286, metadata !54), !dbg !4287
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4288, metadata !54), !dbg !4289
  store i32 -1, i32* %10, align 4, !dbg !4289
  %11 = load i8**, i8*** %4, align 8, !dbg !4290
  %12 = load i8*, i8** %11, align 8, !dbg !4292
  store i8* %12, i8** %7, align 8, !dbg !4293
  br label %13, !dbg !4294

; <label>:13:                                     ; preds = %41, %3
  %14 = load i8*, i8** %7, align 8, !dbg !4295
  %15 = load i8, i8* %14, align 1, !dbg !4299
  %16 = sext i8 %15 to i32, !dbg !4299
  %17 = icmp eq i32 %16, 32, !dbg !4300
  br i1 %17, label %30, label %18, !dbg !4301

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %7, align 8, !dbg !4302
  %20 = load i8, i8* %19, align 1, !dbg !4304
  %21 = sext i8 %20 to i32, !dbg !4304
  %22 = icmp eq i32 %21, 9, !dbg !4305
  br i1 %22, label %30, label %23, !dbg !4306

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %7, align 8, !dbg !4307
  %25 = load i8, i8* %24, align 1, !dbg !4309
  %26 = sext i8 %25 to i32, !dbg !4309
  %27 = load i8, i8* %6, align 1, !dbg !4310
  %28 = sext i8 %27 to i32, !dbg !4310
  %29 = icmp eq i32 %26, %28, !dbg !4311
  br i1 %29, label %30, label %34, !dbg !4312

; <label>:30:                                     ; preds = %23, %18, %13
  %31 = load i8*, i8** %7, align 8, !dbg !4313
  store i8 0, i8* %31, align 1, !dbg !4315
  %32 = load i8*, i8** %7, align 8, !dbg !4316
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !4316
  store i8* %33, i8** %7, align 8, !dbg !4316
  br label %44, !dbg !4317

; <label>:34:                                     ; preds = %23
  %35 = load i8*, i8** %7, align 8, !dbg !4318
  %36 = load i8, i8* %35, align 1, !dbg !4320
  %37 = sext i8 %36 to i32, !dbg !4320
  %38 = icmp eq i32 %37, 0, !dbg !4321
  br i1 %38, label %39, label %40, !dbg !4322

; <label>:39:                                     ; preds = %34
  store i8* null, i8** %7, align 8, !dbg !4323
  br label %44, !dbg !4325

; <label>:40:                                     ; preds = %34
  br label %41, !dbg !4326

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %7, align 8, !dbg !4327
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !4327
  store i8* %43, i8** %7, align 8, !dbg !4327
  br label %13, !dbg !4329, !llvm.loop !4330

; <label>:44:                                     ; preds = %39, %30
  %45 = load i8*, i8** %7, align 8, !dbg !4332
  %46 = icmp eq i8* %45, null, !dbg !4334
  br i1 %46, label %47, label %50, !dbg !4335

; <label>:47:                                     ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4336
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0)), !dbg !4338
  br label %123, !dbg !4339

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !4340

; <label>:51:                                     ; preds = %70, %50
  %52 = load i8*, i8** %7, align 8, !dbg !4341
  %53 = load i8, i8* %52, align 1, !dbg !4343
  %54 = sext i8 %53 to i32, !dbg !4343
  %55 = icmp eq i32 %54, 32, !dbg !4344
  br i1 %55, label %68, label %56, !dbg !4345

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %7, align 8, !dbg !4346
  %58 = load i8, i8* %57, align 1, !dbg !4348
  %59 = sext i8 %58 to i32, !dbg !4348
  %60 = icmp eq i32 %59, 9, !dbg !4349
  br i1 %60, label %68, label %61, !dbg !4350

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %7, align 8, !dbg !4351
  %63 = load i8, i8* %62, align 1, !dbg !4353
  %64 = sext i8 %63 to i32, !dbg !4353
  %65 = load i8, i8* %6, align 1, !dbg !4354
  %66 = sext i8 %65 to i32, !dbg !4354
  %67 = icmp eq i32 %64, %66, !dbg !4355
  br label %68, !dbg !4356

; <label>:68:                                     ; preds = %61, %56, %51
  %69 = phi i1 [ true, %56 ], [ true, %51 ], [ %67, %61 ]
  br i1 %69, label %70, label %73, !dbg !4357

; <label>:70:                                     ; preds = %68
  %71 = load i8*, i8** %7, align 8, !dbg !4359
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !4359
  store i8* %72, i8** %7, align 8, !dbg !4359
  br label %51, !dbg !4361, !llvm.loop !4363

; <label>:73:                                     ; preds = %68
  %74 = load i8*, i8** %7, align 8, !dbg !4364
  %75 = load i8**, i8*** %5, align 8, !dbg !4365
  store i8* %74, i8** %75, align 8, !dbg !4366
  store i8* null, i8** %9, align 8, !dbg !4367
  %76 = load i8**, i8*** %5, align 8, !dbg !4368
  %77 = load i8*, i8** %76, align 8, !dbg !4370
  store i8* %77, i8** %8, align 8, !dbg !4371
  br label %78, !dbg !4372

; <label>:78:                                     ; preds = %114, %73
  %79 = load i8*, i8** %8, align 8, !dbg !4373
  %80 = load i8, i8* %79, align 1, !dbg !4377
  %81 = sext i8 %80 to i32, !dbg !4377
  %82 = icmp eq i32 %81, 0, !dbg !4378
  br i1 %82, label %83, label %84, !dbg !4379

; <label>:83:                                     ; preds = %78
  br label %117, !dbg !4380

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %8, align 8, !dbg !4382
  %86 = load i8, i8* %85, align 1, !dbg !4384
  %87 = sext i8 %86 to i32, !dbg !4384
  %88 = icmp eq i32 %87, 13, !dbg !4385
  br i1 %88, label %94, label %89, !dbg !4386

; <label>:89:                                     ; preds = %84
  %90 = load i8*, i8** %8, align 8, !dbg !4387
  %91 = load i8, i8* %90, align 1, !dbg !4389
  %92 = sext i8 %91 to i32, !dbg !4389
  %93 = icmp eq i32 %92, 10, !dbg !4390
  br i1 %93, label %94, label %96, !dbg !4391

; <label>:94:                                     ; preds = %89, %84
  %95 = load i8*, i8** %8, align 8, !dbg !4392
  store i8 0, i8* %95, align 1, !dbg !4394
  br label %117, !dbg !4395

; <label>:96:                                     ; preds = %89
  %97 = load i8*, i8** %8, align 8, !dbg !4396
  %98 = load i8, i8* %97, align 1, !dbg !4398
  %99 = sext i8 %98 to i32, !dbg !4398
  %100 = icmp eq i32 %99, 32, !dbg !4399
  br i1 %100, label %106, label %101, !dbg !4400

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %8, align 8, !dbg !4401
  %103 = load i8, i8* %102, align 1, !dbg !4403
  %104 = sext i8 %103 to i32, !dbg !4403
  %105 = icmp eq i32 %104, 9, !dbg !4404
  br i1 %105, label %106, label %112, !dbg !4405

; <label>:106:                                    ; preds = %101, %96
  %107 = load i8*, i8** %9, align 8, !dbg !4406
  %108 = icmp ne i8* %107, null, !dbg !4406
  br i1 %108, label %111, label %109, !dbg !4409

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %8, align 8, !dbg !4410
  store i8* %110, i8** %9, align 8, !dbg !4412
  br label %111, !dbg !4413

; <label>:111:                                    ; preds = %109, %106
  br label %113, !dbg !4414

; <label>:112:                                    ; preds = %101
  store i8* null, i8** %9, align 8, !dbg !4415
  br label %113

; <label>:113:                                    ; preds = %112, %111
  br label %114, !dbg !4417

; <label>:114:                                    ; preds = %113
  %115 = load i8*, i8** %8, align 8, !dbg !4418
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !4418
  store i8* %116, i8** %8, align 8, !dbg !4418
  br label %78, !dbg !4420, !llvm.loop !4421

; <label>:117:                                    ; preds = %94, %83
  %118 = load i8*, i8** %9, align 8, !dbg !4423
  %119 = icmp ne i8* %118, null, !dbg !4423
  br i1 %119, label %120, label %122, !dbg !4425

; <label>:120:                                    ; preds = %117
  %121 = load i8*, i8** %9, align 8, !dbg !4426
  store i8 0, i8* %121, align 1, !dbg !4428
  br label %122, !dbg !4429

; <label>:122:                                    ; preds = %120, %117
  store i32 0, i32* %10, align 4, !dbg !4430
  br label %123, !dbg !4431

; <label>:123:                                    ; preds = %122, %47
  %124 = load i32, i32* %10, align 4, !dbg !4432
  ret i32 %124, !dbg !4433
}

; Function Attrs: nounwind uwtable
define internal i32 @set_option(%struct.opts*, i8*, i8*, i8*, i8**, i32) #4 !dbg !4434 {
  %7 = alloca %struct.opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %7, metadata !4437, metadata !54), !dbg !4438
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4439, metadata !54), !dbg !4440
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4441, metadata !54), !dbg !4442
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4443, metadata !54), !dbg !4444
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4445, metadata !54), !dbg !4446
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4447, metadata !54), !dbg !4448
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4449, metadata !54), !dbg !4450
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4451, metadata !54), !dbg !4452
  store i32 -1, i32* %14, align 4, !dbg !4452
  %20 = load i8*, i8** %9, align 8, !dbg !4453
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i64 7) #11, !dbg !4455
  %22 = icmp ne i32 %21, 0, !dbg !4455
  br i1 %22, label %27, label %23, !dbg !4456

; <label>:23:                                     ; preds = %6
  %24 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4457
  %25 = load i8*, i8** %8, align 8, !dbg !4459
  %26 = load i8*, i8** %10, align 8, !dbg !4460
  call void @opts_set_cacrt(%struct.opts* %24, i8* %25, i8* %26), !dbg !4461
  br label %488, !dbg !4462

; <label>:27:                                     ; preds = %6
  %28 = load i8*, i8** %9, align 8, !dbg !4463
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i64 6) #11, !dbg !4466
  %30 = icmp ne i32 %29, 0, !dbg !4466
  br i1 %30, label %35, label %31, !dbg !4467

; <label>:31:                                     ; preds = %27
  %32 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4468
  %33 = load i8*, i8** %8, align 8, !dbg !4470
  %34 = load i8*, i8** %10, align 8, !dbg !4471
  call void @opts_set_cakey(%struct.opts* %32, i8* %33, i8* %34), !dbg !4472
  br label %487, !dbg !4473

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %9, align 8, !dbg !4474
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i64 11) #11, !dbg !4477
  %38 = icmp ne i32 %37, 0, !dbg !4477
  br i1 %38, label %43, label %39, !dbg !4478

; <label>:39:                                     ; preds = %35
  %40 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4479
  %41 = load i8*, i8** %8, align 8, !dbg !4481
  %42 = load i8*, i8** %10, align 8, !dbg !4482
  call void @opts_set_clientcrt(%struct.opts* %40, i8* %41, i8* %42), !dbg !4483
  br label %486, !dbg !4484

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %9, align 8, !dbg !4485
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i64 10) #11, !dbg !4488
  %46 = icmp ne i32 %45, 0, !dbg !4488
  br i1 %46, label %51, label %47, !dbg !4489

; <label>:47:                                     ; preds = %43
  %48 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4490
  %49 = load i8*, i8** %8, align 8, !dbg !4492
  %50 = load i8*, i8** %10, align 8, !dbg !4493
  call void @opts_set_clientkey(%struct.opts* %48, i8* %49, i8* %50), !dbg !4494
  br label %485, !dbg !4495

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %9, align 8, !dbg !4496
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i64 8) #11, !dbg !4499
  %54 = icmp ne i32 %53, 0, !dbg !4499
  br i1 %54, label %59, label %55, !dbg !4500

; <label>:55:                                     ; preds = %51
  %56 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4501
  %57 = load i8*, i8** %8, align 8, !dbg !4503
  %58 = load i8*, i8** %10, align 8, !dbg !4504
  call void @opts_set_chain(%struct.opts* %56, i8* %57, i8* %58), !dbg !4505
  br label %484, !dbg !4506

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %9, align 8, !dbg !4507
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i64 10) #11, !dbg !4510
  %62 = icmp ne i32 %61, 0, !dbg !4510
  br i1 %62, label %67, label %63, !dbg !4511

; <label>:63:                                     ; preds = %59
  %64 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4512
  %65 = load i8*, i8** %8, align 8, !dbg !4514
  %66 = load i8*, i8** %10, align 8, !dbg !4515
  call void @opts_set_key(%struct.opts* %64, i8* %65, i8* %66), !dbg !4516
  br label %483, !dbg !4517

; <label>:67:                                     ; preds = %59
  %68 = load i8*, i8** %9, align 8, !dbg !4518
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i64 4) #11, !dbg !4521
  %70 = icmp ne i32 %69, 0, !dbg !4521
  br i1 %70, label %74, label %71, !dbg !4522

; <label>:71:                                     ; preds = %67
  %72 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4523
  %73 = load i8*, i8** %10, align 8, !dbg !4525
  call void @opts_set_crl(%struct.opts* %72, i8* %73), !dbg !4526
  br label %482, !dbg !4527

; <label>:74:                                     ; preds = %67
  %75 = load i8*, i8** %9, align 8, !dbg !4528
  %76 = call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i64 14) #11, !dbg !4531
  %77 = icmp ne i32 %76, 0, !dbg !4531
  br i1 %77, label %82, label %78, !dbg !4532

; <label>:78:                                     ; preds = %74
  %79 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4533
  %80 = load i8*, i8** %8, align 8, !dbg !4535
  %81 = load i8*, i8** %10, align 8, !dbg !4536
  call void @opts_set_tgcrtdir(%struct.opts* %79, i8* %80, i8* %81), !dbg !4537
  br label %481, !dbg !4538

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %9, align 8, !dbg !4539
  %84 = call i32 @strncmp(i8* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i64 17) #11, !dbg !4542
  %85 = icmp ne i32 %84, 0, !dbg !4542
  br i1 %85, label %90, label %86, !dbg !4543

; <label>:86:                                     ; preds = %82
  %87 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4544
  %88 = load i8*, i8** %8, align 8, !dbg !4546
  %89 = load i8*, i8** %10, align 8, !dbg !4547
  call void @opts_set_certgendir_writegencerts(%struct.opts* %87, i8* %88, i8* %89), !dbg !4548
  br label %480, !dbg !4549

; <label>:90:                                     ; preds = %82
  %91 = load i8*, i8** %9, align 8, !dbg !4550
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i64 17) #11, !dbg !4553
  %93 = icmp ne i32 %92, 0, !dbg !4553
  br i1 %93, label %98, label %94, !dbg !4554

; <label>:94:                                     ; preds = %90
  %95 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4555
  %96 = load i8*, i8** %8, align 8, !dbg !4557
  %97 = load i8*, i8** %10, align 8, !dbg !4558
  call void @opts_set_certgendir_writeall(%struct.opts* %95, i8* %96, i8* %97), !dbg !4559
  br label %479, !dbg !4560

; <label>:98:                                     ; preds = %90
  %99 = load i8*, i8** %9, align 8, !dbg !4561
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i64 9) #11, !dbg !4564
  %101 = icmp ne i32 %100, 0, !dbg !4564
  br i1 %101, label %117, label %102, !dbg !4565

; <label>:102:                                    ; preds = %98
  %103 = load i8*, i8** %10, align 8, !dbg !4566
  %104 = load i32, i32* %12, align 4, !dbg !4568
  %105 = call i32 @check_value_yesno(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %104), !dbg !4569
  store i32 %105, i32* %13, align 4, !dbg !4570
  %106 = load i32, i32* %13, align 4, !dbg !4571
  %107 = icmp eq i32 %106, -1, !dbg !4573
  br i1 %107, label %108, label %109, !dbg !4574

; <label>:108:                                    ; preds = %102
  br label %489, !dbg !4575

; <label>:109:                                    ; preds = %102
  %110 = load i32, i32* %13, align 4, !dbg !4577
  %111 = icmp ne i32 %110, 0, !dbg !4577
  br i1 %111, label %112, label %114, !dbg !4577

; <label>:112:                                    ; preds = %109
  %113 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4578
  call void @opts_set_deny_ocsp(%struct.opts* %113), !dbg !4580
  br label %116, !dbg !4581

; <label>:114:                                    ; preds = %109
  %115 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4582
  call void @opts_unset_deny_ocsp(%struct.opts* %115), !dbg !4584
  br label %116, !dbg !4585

; <label>:116:                                    ; preds = %114, %112
  br label %478, !dbg !4586

; <label>:117:                                    ; preds = %98
  %118 = load i8*, i8** %9, align 8, !dbg !4587
  %119 = call i32 @strncmp(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i64 12) #11, !dbg !4590
  %120 = icmp ne i32 %119, 0, !dbg !4590
  br i1 %120, label %136, label %121, !dbg !4591

; <label>:121:                                    ; preds = %117
  %122 = load i8*, i8** %10, align 8, !dbg !4592
  %123 = load i32, i32* %12, align 4, !dbg !4594
  %124 = call i32 @check_value_yesno(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i32 %123), !dbg !4595
  store i32 %124, i32* %13, align 4, !dbg !4596
  %125 = load i32, i32* %13, align 4, !dbg !4597
  %126 = icmp eq i32 %125, -1, !dbg !4599
  br i1 %126, label %127, label %128, !dbg !4600

; <label>:127:                                    ; preds = %121
  br label %489, !dbg !4601

; <label>:128:                                    ; preds = %121
  %129 = load i32, i32* %13, align 4, !dbg !4603
  %130 = icmp ne i32 %129, 0, !dbg !4603
  br i1 %130, label %131, label %133, !dbg !4603

; <label>:131:                                    ; preds = %128
  %132 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4604
  call void @opts_set_passthrough(%struct.opts* %132), !dbg !4606
  br label %135, !dbg !4607

; <label>:133:                                    ; preds = %128
  %134 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4608
  call void @opts_unset_passthrough(%struct.opts* %134), !dbg !4610
  br label %135, !dbg !4611

; <label>:135:                                    ; preds = %133, %131
  br label %477, !dbg !4612

; <label>:136:                                    ; preds = %117
  %137 = load i8*, i8** %9, align 8, !dbg !4613
  %138 = call i32 @strncmp(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i64 14) #11, !dbg !4616
  %139 = icmp ne i32 %138, 0, !dbg !4616
  br i1 %139, label %144, label %140, !dbg !4617

; <label>:140:                                    ; preds = %136
  %141 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4618
  %142 = load i8*, i8** %8, align 8, !dbg !4620
  %143 = load i8*, i8** %10, align 8, !dbg !4621
  call void @opts_set_dh(%struct.opts* %141, i8* %142, i8* %143), !dbg !4622
  br label %476, !dbg !4623

; <label>:144:                                    ; preds = %136
  %145 = load i8*, i8** %9, align 8, !dbg !4624
  %146 = call i32 @strncmp(i8* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i64 10) #11, !dbg !4627
  %147 = icmp ne i32 %146, 0, !dbg !4627
  br i1 %147, label %152, label %148, !dbg !4628

; <label>:148:                                    ; preds = %144
  %149 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4629
  %150 = load i8*, i8** %8, align 8, !dbg !4631
  %151 = load i8*, i8** %10, align 8, !dbg !4632
  call void @opts_set_ecdhcurve(%struct.opts* %149, i8* %150, i8* %151), !dbg !4633
  br label %475, !dbg !4634

; <label>:152:                                    ; preds = %144
  %153 = load i8*, i8** %9, align 8, !dbg !4635
  %154 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i64 15) #11, !dbg !4638
  %155 = icmp ne i32 %154, 0, !dbg !4638
  br i1 %155, label %171, label %156, !dbg !4639

; <label>:156:                                    ; preds = %152
  %157 = load i8*, i8** %10, align 8, !dbg !4640
  %158 = load i32, i32* %12, align 4, !dbg !4642
  %159 = call i32 @check_value_yesno(i8* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i32 %158), !dbg !4643
  store i32 %159, i32* %13, align 4, !dbg !4644
  %160 = load i32, i32* %13, align 4, !dbg !4645
  %161 = icmp eq i32 %160, -1, !dbg !4647
  br i1 %161, label %162, label %163, !dbg !4648

; <label>:162:                                    ; preds = %156
  br label %489, !dbg !4649

; <label>:163:                                    ; preds = %156
  %164 = load i32, i32* %13, align 4, !dbg !4651
  %165 = icmp ne i32 %164, 0, !dbg !4651
  br i1 %165, label %166, label %168, !dbg !4651

; <label>:166:                                    ; preds = %163
  %167 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4652
  call void @opts_set_sslcomp(%struct.opts* %167), !dbg !4654
  br label %170, !dbg !4655

; <label>:168:                                    ; preds = %163
  %169 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4656
  call void @opts_unset_sslcomp(%struct.opts* %169), !dbg !4658
  br label %170, !dbg !4659

; <label>:170:                                    ; preds = %168, %166
  br label %474, !dbg !4660

; <label>:171:                                    ; preds = %152
  %172 = load i8*, i8** %9, align 8, !dbg !4661
  %173 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i64 14) #11, !dbg !4664
  %174 = icmp ne i32 %173, 0, !dbg !4664
  br i1 %174, label %179, label %175, !dbg !4665

; <label>:175:                                    ; preds = %171
  %176 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4666
  %177 = load i8*, i8** %8, align 8, !dbg !4668
  %178 = load i8*, i8** %10, align 8, !dbg !4669
  call void @opts_force_proto(%struct.opts* %176, i8* %177, i8* %178), !dbg !4670
  br label %473, !dbg !4671

; <label>:179:                                    ; preds = %171
  %180 = load i8*, i8** %9, align 8, !dbg !4672
  %181 = call i32 @strncmp(i8* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i64 16) #11, !dbg !4675
  %182 = icmp ne i32 %181, 0, !dbg !4675
  br i1 %182, label %187, label %183, !dbg !4676

; <label>:183:                                    ; preds = %179
  %184 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4677
  %185 = load i8*, i8** %8, align 8, !dbg !4679
  %186 = load i8*, i8** %10, align 8, !dbg !4680
  call void @opts_disable_proto(%struct.opts* %184, i8* %185, i8* %186), !dbg !4681
  br label %472, !dbg !4682

; <label>:187:                                    ; preds = %179
  %188 = load i8*, i8** %9, align 8, !dbg !4683
  %189 = call i32 @strncmp(i8* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i64 8) #11, !dbg !4686
  %190 = icmp ne i32 %189, 0, !dbg !4686
  br i1 %190, label %195, label %191, !dbg !4687

; <label>:191:                                    ; preds = %187
  %192 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4688
  %193 = load i8*, i8** %8, align 8, !dbg !4690
  %194 = load i8*, i8** %10, align 8, !dbg !4691
  call void @opts_set_ciphers(%struct.opts* %192, i8* %193, i8* %194), !dbg !4692
  br label %471, !dbg !4693

; <label>:195:                                    ; preds = %187
  %196 = load i8*, i8** %9, align 8, !dbg !4694
  %197 = call i32 @strncmp(i8* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i64 14) #11, !dbg !4697
  %198 = icmp ne i32 %197, 0, !dbg !4697
  br i1 %198, label %203, label %199, !dbg !4698

; <label>:199:                                    ; preds = %195
  %200 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4699
  %201 = load i8*, i8** %8, align 8, !dbg !4701
  %202 = load i8*, i8** %10, align 8, !dbg !4702
  call void @opts_set_openssl_engine(%struct.opts* %200, i8* %201, i8* %202), !dbg !4703
  br label %470, !dbg !4704

; <label>:203:                                    ; preds = %195
  %204 = load i8*, i8** %9, align 8, !dbg !4705
  %205 = call i32 @strncmp(i8* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i64 10) #11, !dbg !4708
  %206 = icmp ne i32 %205, 0, !dbg !4708
  br i1 %206, label %223, label %207, !dbg !4709

; <label>:207:                                    ; preds = %203
  %208 = load i8**, i8*** %11, align 8, !dbg !4710
  %209 = load i8*, i8** %208, align 8, !dbg !4713
  %210 = icmp ne i8* %209, null, !dbg !4713
  br i1 %210, label %211, label %214, !dbg !4714

; <label>:211:                                    ; preds = %207
  %212 = load i8**, i8*** %11, align 8, !dbg !4715
  %213 = load i8*, i8** %212, align 8, !dbg !4716
  call void @free(i8* %213) #10, !dbg !4717
  br label %214, !dbg !4717

; <label>:214:                                    ; preds = %211, %207
  %215 = load i8*, i8** %10, align 8, !dbg !4718
  %216 = call noalias i8* @strdup(i8* %215) #10, !dbg !4719
  %217 = load i8**, i8*** %11, align 8, !dbg !4720
  store i8* %216, i8** %217, align 8, !dbg !4721
  %218 = load i8**, i8*** %11, align 8, !dbg !4722
  %219 = load i8*, i8** %218, align 8, !dbg !4724
  %220 = icmp ne i8* %219, null, !dbg !4724
  br i1 %220, label %222, label %221, !dbg !4725

; <label>:221:                                    ; preds = %214
  br label %489, !dbg !4726

; <label>:222:                                    ; preds = %214
  br label %469, !dbg !4727

; <label>:223:                                    ; preds = %203
  %224 = load i8*, i8** %9, align 8, !dbg !4728
  %225 = call i32 @strncmp(i8* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i64 5) #11, !dbg !4731
  %226 = icmp ne i32 %225, 0, !dbg !4731
  br i1 %226, label %231, label %227, !dbg !4732

; <label>:227:                                    ; preds = %223
  %228 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4733
  %229 = load i8*, i8** %8, align 8, !dbg !4735
  %230 = load i8*, i8** %10, align 8, !dbg !4736
  call void @opts_set_user(%struct.opts* %228, i8* %229, i8* %230), !dbg !4737
  br label %468, !dbg !4738

; <label>:231:                                    ; preds = %223
  %232 = load i8*, i8** %9, align 8, !dbg !4739
  %233 = call i32 @strncmp(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i64 6) #11, !dbg !4742
  %234 = icmp ne i32 %233, 0, !dbg !4742
  br i1 %234, label %239, label %235, !dbg !4743

; <label>:235:                                    ; preds = %231
  %236 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4744
  %237 = load i8*, i8** %8, align 8, !dbg !4746
  %238 = load i8*, i8** %10, align 8, !dbg !4747
  call void @opts_set_group(%struct.opts* %236, i8* %237, i8* %238), !dbg !4748
  br label %467, !dbg !4749

; <label>:239:                                    ; preds = %231
  %240 = load i8*, i8** %9, align 8, !dbg !4750
  %241 = call i32 @strncmp(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i64 7) #11, !dbg !4753
  %242 = icmp ne i32 %241, 0, !dbg !4753
  br i1 %242, label %247, label %243, !dbg !4754

; <label>:243:                                    ; preds = %239
  %244 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4755
  %245 = load i8*, i8** %8, align 8, !dbg !4757
  %246 = load i8*, i8** %10, align 8, !dbg !4758
  call void @opts_set_jaildir(%struct.opts* %244, i8* %245, i8* %246), !dbg !4759
  br label %466, !dbg !4760

; <label>:247:                                    ; preds = %239
  %248 = load i8*, i8** %9, align 8, !dbg !4761
  %249 = call i32 @strncmp(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i64 8) #11, !dbg !4764
  %250 = icmp ne i32 %249, 0, !dbg !4764
  br i1 %250, label %255, label %251, !dbg !4765

; <label>:251:                                    ; preds = %247
  %252 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4766
  %253 = load i8*, i8** %8, align 8, !dbg !4768
  %254 = load i8*, i8** %10, align 8, !dbg !4769
  call void @opts_set_pidfile(%struct.opts* %252, i8* %253, i8* %254), !dbg !4770
  br label %465, !dbg !4771

; <label>:255:                                    ; preds = %247
  %256 = load i8*, i8** %9, align 8, !dbg !4772
  %257 = call i32 @strncmp(i8* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i64 11) #11, !dbg !4775
  %258 = icmp ne i32 %257, 0, !dbg !4775
  br i1 %258, label %263, label %259, !dbg !4776

; <label>:259:                                    ; preds = %255
  %260 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4777
  %261 = load i8*, i8** %8, align 8, !dbg !4779
  %262 = load i8*, i8** %10, align 8, !dbg !4780
  call void @opts_set_connectlog(%struct.opts* %260, i8* %261, i8* %262), !dbg !4781
  br label %464, !dbg !4782

; <label>:263:                                    ; preds = %255
  %264 = load i8*, i8** %9, align 8, !dbg !4783
  %265 = call i32 @strncmp(i8* %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i64 11) #11, !dbg !4786
  %266 = icmp ne i32 %265, 0, !dbg !4786
  br i1 %266, label %271, label %267, !dbg !4787

; <label>:267:                                    ; preds = %263
  %268 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4788
  %269 = load i8*, i8** %8, align 8, !dbg !4790
  %270 = load i8*, i8** %10, align 8, !dbg !4791
  call void @opts_set_contentlog(%struct.opts* %268, i8* %269, i8* %270), !dbg !4792
  br label %463, !dbg !4793

; <label>:271:                                    ; preds = %263
  %272 = load i8*, i8** %9, align 8, !dbg !4794
  %273 = call i32 @strncmp(i8* %272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i64 14) #11, !dbg !4797
  %274 = icmp ne i32 %273, 0, !dbg !4797
  br i1 %274, label %279, label %275, !dbg !4798

; <label>:275:                                    ; preds = %271
  %276 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4799
  %277 = load i8*, i8** %8, align 8, !dbg !4801
  %278 = load i8*, i8** %10, align 8, !dbg !4802
  call void @opts_set_contentlogdir(%struct.opts* %276, i8* %277, i8* %278), !dbg !4803
  br label %462, !dbg !4804

; <label>:279:                                    ; preds = %271
  %280 = load i8*, i8** %9, align 8, !dbg !4805
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i64 19) #11, !dbg !4808
  %282 = icmp ne i32 %281, 0, !dbg !4808
  br i1 %282, label %287, label %283, !dbg !4809

; <label>:283:                                    ; preds = %279
  %284 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4810
  %285 = load i8*, i8** %8, align 8, !dbg !4812
  %286 = load i8*, i8** %10, align 8, !dbg !4813
  call void @opts_set_contentlogpathspec(%struct.opts* %284, i8* %285, i8* %286), !dbg !4814
  br label %461, !dbg !4815

; <label>:287:                                    ; preds = %279
  %288 = load i8*, i8** %9, align 8, !dbg !4816
  %289 = call i32 @strncmp(i8* %288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i64 13) #11, !dbg !4819
  %290 = icmp ne i32 %289, 0, !dbg !4819
  br i1 %290, label %295, label %291, !dbg !4820

; <label>:291:                                    ; preds = %287
  %292 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4821
  %293 = load i8*, i8** %8, align 8, !dbg !4823
  %294 = load i8*, i8** %10, align 8, !dbg !4824
  call void @opts_set_masterkeylog(%struct.opts* %292, i8* %293, i8* %294), !dbg !4825
  br label %460, !dbg !4826

; <label>:295:                                    ; preds = %287
  %296 = load i8*, i8** %9, align 8, !dbg !4827
  %297 = call i32 @strncmp(i8* %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i64 8) #11, !dbg !4830
  %298 = icmp ne i32 %297, 0, !dbg !4830
  br i1 %298, label %303, label %299, !dbg !4831

; <label>:299:                                    ; preds = %295
  %300 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4832
  %301 = load i8*, i8** %8, align 8, !dbg !4834
  %302 = load i8*, i8** %10, align 8, !dbg !4835
  call void @opts_set_pcaplog(%struct.opts* %300, i8* %301, i8* %302), !dbg !4836
  br label %459, !dbg !4837

; <label>:303:                                    ; preds = %295
  %304 = load i8*, i8** %9, align 8, !dbg !4838
  %305 = call i32 @strncmp(i8* %304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i64 11) #11, !dbg !4841
  %306 = icmp ne i32 %305, 0, !dbg !4841
  br i1 %306, label %311, label %307, !dbg !4842

; <label>:307:                                    ; preds = %303
  %308 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4843
  %309 = load i8*, i8** %8, align 8, !dbg !4845
  %310 = load i8*, i8** %10, align 8, !dbg !4846
  call void @opts_set_pcaplogdir(%struct.opts* %308, i8* %309, i8* %310), !dbg !4847
  br label %458, !dbg !4848

; <label>:311:                                    ; preds = %303
  %312 = load i8*, i8** %9, align 8, !dbg !4849
  %313 = call i32 @strncmp(i8* %312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), i64 16) #11, !dbg !4852
  %314 = icmp ne i32 %313, 0, !dbg !4852
  br i1 %314, label %319, label %315, !dbg !4853

; <label>:315:                                    ; preds = %311
  %316 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4854
  %317 = load i8*, i8** %8, align 8, !dbg !4856
  %318 = load i8*, i8** %10, align 8, !dbg !4857
  call void @opts_set_pcaplogpathspec(%struct.opts* %316, i8* %317, i8* %318), !dbg !4858
  br label %457, !dbg !4859

; <label>:319:                                    ; preds = %311
  %320 = load i8*, i8** %9, align 8, !dbg !4860
  %321 = call i32 @strncmp(i8* %320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i64 9) #11, !dbg !4863
  %322 = icmp ne i32 %321, 0, !dbg !4863
  br i1 %322, label %327, label %323, !dbg !4864

; <label>:323:                                    ; preds = %319
  %324 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4865
  %325 = load i8*, i8** %8, align 8, !dbg !4867
  %326 = load i8*, i8** %10, align 8, !dbg !4868
  call void @opts_set_mirrorif(%struct.opts* %324, i8* %325, i8* %326), !dbg !4869
  br label %456, !dbg !4870

; <label>:327:                                    ; preds = %319
  %328 = load i8*, i8** %9, align 8, !dbg !4871
  %329 = call i32 @strncmp(i8* %328, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i64 13) #11, !dbg !4874
  %330 = icmp ne i32 %329, 0, !dbg !4874
  br i1 %330, label %335, label %331, !dbg !4875

; <label>:331:                                    ; preds = %327
  %332 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4876
  %333 = load i8*, i8** %8, align 8, !dbg !4878
  %334 = load i8*, i8** %10, align 8, !dbg !4879
  call void @opts_set_mirrortarget(%struct.opts* %332, i8* %333, i8* %334), !dbg !4880
  br label %455, !dbg !4881

; <label>:335:                                    ; preds = %327
  %336 = load i8*, i8** %9, align 8, !dbg !4882
  %337 = call i32 @strncmp(i8* %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i64 7) #11, !dbg !4885
  %338 = icmp ne i32 %337, 0, !dbg !4885
  br i1 %338, label %354, label %339, !dbg !4886

; <label>:339:                                    ; preds = %335
  %340 = load i8*, i8** %10, align 8, !dbg !4887
  %341 = load i32, i32* %12, align 4, !dbg !4889
  %342 = call i32 @check_value_yesno(i8* %340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %341), !dbg !4890
  store i32 %342, i32* %13, align 4, !dbg !4891
  %343 = load i32, i32* %13, align 4, !dbg !4892
  %344 = icmp eq i32 %343, -1, !dbg !4894
  br i1 %344, label %345, label %346, !dbg !4895

; <label>:345:                                    ; preds = %339
  br label %489, !dbg !4896

; <label>:346:                                    ; preds = %339
  %347 = load i32, i32* %13, align 4, !dbg !4898
  %348 = icmp ne i32 %347, 0, !dbg !4898
  br i1 %348, label %349, label %351, !dbg !4898

; <label>:349:                                    ; preds = %346
  %350 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4899
  call void @opts_set_daemon(%struct.opts* %350), !dbg !4901
  br label %353, !dbg !4902

; <label>:351:                                    ; preds = %346
  %352 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4903
  call void @opts_unset_daemon(%struct.opts* %352), !dbg !4905
  br label %353, !dbg !4906

; <label>:353:                                    ; preds = %351, %349
  br label %454, !dbg !4907

; <label>:354:                                    ; preds = %335
  %355 = load i8*, i8** %9, align 8, !dbg !4908
  %356 = call i32 @strncmp(i8* %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i64 6) #11, !dbg !4911
  %357 = icmp ne i32 %356, 0, !dbg !4911
  br i1 %357, label %373, label %358, !dbg !4912

; <label>:358:                                    ; preds = %354
  %359 = load i8*, i8** %10, align 8, !dbg !4913
  %360 = load i32, i32* %12, align 4, !dbg !4915
  %361 = call i32 @check_value_yesno(i8* %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 %360), !dbg !4916
  store i32 %361, i32* %13, align 4, !dbg !4917
  %362 = load i32, i32* %13, align 4, !dbg !4918
  %363 = icmp eq i32 %362, -1, !dbg !4920
  br i1 %363, label %364, label %365, !dbg !4921

; <label>:364:                                    ; preds = %358
  br label %489, !dbg !4922

; <label>:365:                                    ; preds = %358
  %366 = load i32, i32* %13, align 4, !dbg !4924
  %367 = icmp ne i32 %366, 0, !dbg !4924
  br i1 %367, label %368, label %370, !dbg !4924

; <label>:368:                                    ; preds = %365
  %369 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4925
  call void @opts_set_debug(%struct.opts* %369), !dbg !4927
  br label %372, !dbg !4928

; <label>:370:                                    ; preds = %365
  %371 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4929
  call void @opts_unset_debug(%struct.opts* %371), !dbg !4931
  br label %372, !dbg !4932

; <label>:372:                                    ; preds = %370, %368
  br label %453, !dbg !4933

; <label>:373:                                    ; preds = %354
  %374 = load i8*, i8** %9, align 8, !dbg !4934
  %375 = call i32 @strncmp(i8* %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i64 10) #11, !dbg !4937
  %376 = icmp ne i32 %375, 0, !dbg !4937
  br i1 %376, label %407, label %377, !dbg !4938

; <label>:377:                                    ; preds = %373
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !4939, metadata !54), !dbg !4941
  %378 = call noalias i8* @malloc(i64 80) #10, !dbg !4942
  %379 = bitcast i8* %378 to i8**, !dbg !4942
  store i8** %379, i8*** %15, align 8, !dbg !4941
  call void @llvm.dbg.declare(metadata i8*** %16, metadata !4943, metadata !54), !dbg !4944
  %380 = load i8**, i8*** %15, align 8, !dbg !4945
  store i8** %380, i8*** %16, align 8, !dbg !4944
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4946, metadata !54), !dbg !4947
  store i32 0, i32* %17, align 4, !dbg !4947
  call void @llvm.dbg.declare(metadata i8** %18, metadata !4948, metadata !54), !dbg !4949
  call void @llvm.dbg.declare(metadata i8** %19, metadata !4950, metadata !54), !dbg !4951
  store i8* null, i8** %19, align 8, !dbg !4951
  %381 = load i8*, i8** %10, align 8, !dbg !4952
  %382 = call i8* @strtok_r(i8* %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8** %19) #10, !dbg !4954
  store i8* %382, i8** %18, align 8, !dbg !4955
  br label %383, !dbg !4956

; <label>:383:                                    ; preds = %398, %377
  %384 = load i8*, i8** %18, align 8, !dbg !4957
  %385 = icmp ne i8* %384, null, !dbg !4959
  br i1 %385, label %386, label %400, !dbg !4959

; <label>:386:                                    ; preds = %383
  %387 = load i32, i32* %17, align 4, !dbg !4961
  %388 = icmp slt i32 %387, 10, !dbg !4964
  br i1 %388, label %389, label %396, !dbg !4965

; <label>:389:                                    ; preds = %386
  %390 = load i8*, i8** %18, align 8, !dbg !4966
  %391 = load i32, i32* %17, align 4, !dbg !4968
  %392 = add nsw i32 %391, 1, !dbg !4968
  store i32 %392, i32* %17, align 4, !dbg !4968
  %393 = sext i32 %391 to i64, !dbg !4969
  %394 = load i8**, i8*** %15, align 8, !dbg !4969
  %395 = getelementptr inbounds i8*, i8** %394, i64 %393, !dbg !4969
  store i8* %390, i8** %395, align 8, !dbg !4970
  br label %397, !dbg !4971

; <label>:396:                                    ; preds = %386
  br label %400, !dbg !4972

; <label>:397:                                    ; preds = %389
  br label %398, !dbg !4974

; <label>:398:                                    ; preds = %397
  %399 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8** %19) #10, !dbg !4975
  store i8* %399, i8** %18, align 8, !dbg !4976
  br label %383, !dbg !4977, !llvm.loop !4979

; <label>:400:                                    ; preds = %396, %383
  %401 = load i8**, i8*** %11, align 8, !dbg !4981
  %402 = load i8*, i8** %401, align 8, !dbg !4982
  %403 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !4983
  %404 = getelementptr inbounds %struct.opts, %struct.opts* %403, i32 0, i32 27, !dbg !4984
  call void @proxyspec_parse(i32* %17, i8*** %15, i8* %402, %struct.proxyspec** %404), !dbg !4985
  %405 = load i8**, i8*** %16, align 8, !dbg !4986
  %406 = bitcast i8** %405 to i8*, !dbg !4986
  call void @free(i8* %406) #10, !dbg !4987
  br label %452, !dbg !4988

; <label>:407:                                    ; preds = %373
  %408 = load i8*, i8** %9, align 8, !dbg !4989
  %409 = call i32 @strncasecmp(i8* %408, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i64 11) #11, !dbg !4992
  %410 = icmp ne i32 %409, 0, !dbg !4992
  br i1 %410, label %426, label %411, !dbg !4993

; <label>:411:                                    ; preds = %407
  %412 = load i8*, i8** %10, align 8, !dbg !4994
  %413 = load i32, i32* %12, align 4, !dbg !4996
  %414 = call i32 @check_value_yesno(i8* %412, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i32 %413), !dbg !4997
  store i32 %414, i32* %13, align 4, !dbg !4998
  %415 = load i32, i32* %13, align 4, !dbg !4999
  %416 = icmp eq i32 %415, -1, !dbg !5001
  br i1 %416, label %417, label %418, !dbg !5002

; <label>:417:                                    ; preds = %411
  br label %489, !dbg !5003

; <label>:418:                                    ; preds = %411
  %419 = load i32, i32* %13, align 4, !dbg !5005
  %420 = icmp ne i32 %419, 0, !dbg !5005
  br i1 %420, label %421, label %423, !dbg !5005

; <label>:421:                                    ; preds = %418
  %422 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !5006
  call void @opts_set_verify_peer(%struct.opts* %422), !dbg !5008
  br label %425, !dbg !5009

; <label>:423:                                    ; preds = %418
  %424 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !5010
  call void @opts_unset_verify_peer(%struct.opts* %424), !dbg !5012
  br label %425, !dbg !5013

; <label>:425:                                    ; preds = %423, %421
  br label %451, !dbg !5014

; <label>:426:                                    ; preds = %407
  %427 = load i8*, i8** %9, align 8, !dbg !5015
  %428 = call i32 @strncasecmp(i8* %427, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i64 20) #11, !dbg !5018
  %429 = icmp ne i32 %428, 0, !dbg !5018
  br i1 %429, label %445, label %430, !dbg !5019

; <label>:430:                                    ; preds = %426
  %431 = load i8*, i8** %10, align 8, !dbg !5020
  %432 = load i32, i32* %12, align 4, !dbg !5022
  %433 = call i32 @check_value_yesno(i8* %431, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), i32 %432), !dbg !5023
  store i32 %433, i32* %13, align 4, !dbg !5024
  %434 = load i32, i32* %13, align 4, !dbg !5025
  %435 = icmp eq i32 %434, -1, !dbg !5027
  br i1 %435, label %436, label %437, !dbg !5028

; <label>:436:                                    ; preds = %430
  br label %489, !dbg !5029

; <label>:437:                                    ; preds = %430
  %438 = load i32, i32* %13, align 4, !dbg !5031
  %439 = icmp ne i32 %438, 0, !dbg !5031
  br i1 %439, label %440, label %442, !dbg !5031

; <label>:440:                                    ; preds = %437
  %441 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !5032
  call void @opts_set_allow_wrong_host(%struct.opts* %441), !dbg !5034
  br label %444, !dbg !5035

; <label>:442:                                    ; preds = %437
  %443 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !5036
  call void @opts_unset_allow_wrong_host(%struct.opts* %443), !dbg !5037
  br label %444, !dbg !5038

; <label>:444:                                    ; preds = %442, %440
  br label %450, !dbg !5040

; <label>:445:                                    ; preds = %426
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5041
  %447 = load i8*, i8** %9, align 8, !dbg !5043
  %448 = load i32, i32* %12, align 4, !dbg !5044
  %449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %446, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i32 0, i32 0), i8* %447, i32 %448), !dbg !5045
  br label %489, !dbg !5046

; <label>:450:                                    ; preds = %444
  br label %451

; <label>:451:                                    ; preds = %450, %425
  br label %452

; <label>:452:                                    ; preds = %451, %400
  br label %453

; <label>:453:                                    ; preds = %452, %372
  br label %454

; <label>:454:                                    ; preds = %453, %353
  br label %455

; <label>:455:                                    ; preds = %454, %331
  br label %456

; <label>:456:                                    ; preds = %455, %323
  br label %457

; <label>:457:                                    ; preds = %456, %315
  br label %458

; <label>:458:                                    ; preds = %457, %307
  br label %459

; <label>:459:                                    ; preds = %458, %299
  br label %460

; <label>:460:                                    ; preds = %459, %291
  br label %461

; <label>:461:                                    ; preds = %460, %283
  br label %462

; <label>:462:                                    ; preds = %461, %275
  br label %463

; <label>:463:                                    ; preds = %462, %267
  br label %464

; <label>:464:                                    ; preds = %463, %259
  br label %465

; <label>:465:                                    ; preds = %464, %251
  br label %466

; <label>:466:                                    ; preds = %465, %243
  br label %467

; <label>:467:                                    ; preds = %466, %235
  br label %468

; <label>:468:                                    ; preds = %467, %227
  br label %469

; <label>:469:                                    ; preds = %468, %222
  br label %470

; <label>:470:                                    ; preds = %469, %199
  br label %471

; <label>:471:                                    ; preds = %470, %191
  br label %472

; <label>:472:                                    ; preds = %471, %183
  br label %473

; <label>:473:                                    ; preds = %472, %175
  br label %474

; <label>:474:                                    ; preds = %473, %170
  br label %475

; <label>:475:                                    ; preds = %474, %148
  br label %476

; <label>:476:                                    ; preds = %475, %140
  br label %477

; <label>:477:                                    ; preds = %476, %135
  br label %478

; <label>:478:                                    ; preds = %477, %116
  br label %479

; <label>:479:                                    ; preds = %478, %94
  br label %480

; <label>:480:                                    ; preds = %479, %86
  br label %481

; <label>:481:                                    ; preds = %480, %78
  br label %482

; <label>:482:                                    ; preds = %481, %71
  br label %483

; <label>:483:                                    ; preds = %482, %63
  br label %484

; <label>:484:                                    ; preds = %483, %55
  br label %485

; <label>:485:                                    ; preds = %484, %47
  br label %486

; <label>:486:                                    ; preds = %485, %39
  br label %487

; <label>:487:                                    ; preds = %486, %31
  br label %488

; <label>:488:                                    ; preds = %487, %23
  store i32 0, i32* %14, align 4, !dbg !5047
  br label %489, !dbg !5048

; <label>:489:                                    ; preds = %488, %445, %436, %417, %364, %345, %221, %162, %127, %108
  %490 = load i32, i32* %14, align 4, !dbg !5049
  ret i32 %490, !dbg !5050
}

; Function Attrs: nounwind uwtable
define i32 @load_conffile(%struct.opts* nonnull, i8* nonnull, i8**) #4 !dbg !5051 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  store %struct.opts* %0, %struct.opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %5, metadata !5054, metadata !54), !dbg !5055
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5056, metadata !54), !dbg !5057
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !5058, metadata !54), !dbg !5059
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5060, metadata !54), !dbg !5061
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5062, metadata !54), !dbg !5063
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5064, metadata !54), !dbg !5065
  call void @llvm.dbg.declare(metadata i8** %11, metadata !5066, metadata !54), !dbg !5067
  call void @llvm.dbg.declare(metadata i8** %12, metadata !5068, metadata !54), !dbg !5069
  call void @llvm.dbg.declare(metadata i64* %13, metadata !5070, metadata !54), !dbg !5071
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !5072, metadata !54), !dbg !5124
  %15 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !5125
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %15, i32 0, i32 9, !dbg !5126
  %17 = load i8*, i8** %16, align 8, !dbg !5126
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)), !dbg !5127
  store %struct._IO_FILE* %18, %struct._IO_FILE** %14, align 8, !dbg !5128
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5129
  %20 = icmp ne %struct._IO_FILE* %19, null, !dbg !5129
  br i1 %20, label %30, label %21, !dbg !5131

; <label>:21:                                     ; preds = %3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5132
  %23 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !5134
  %24 = getelementptr inbounds %struct.opts, %struct.opts* %23, i32 0, i32 9, !dbg !5135
  %25 = load i8*, i8** %24, align 8, !dbg !5135
  %26 = call i32* @__errno_location() #1, !dbg !5136
  %27 = load i32, i32* %26, align 4, !dbg !5137
  %28 = call i8* @strerror(i32 %27) #10, !dbg !5138
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* %25, i8* %28), !dbg !5140
  store i32 -1, i32* %4, align 4, !dbg !5142
  br label %126, !dbg !5142

; <label>:30:                                     ; preds = %3
  store i8* null, i8** %10, align 8, !dbg !5143
  store i32 0, i32* %9, align 4, !dbg !5144
  store i32 -1, i32* %8, align 4, !dbg !5145
  br label %31, !dbg !5146

; <label>:31:                                     ; preds = %115, %98, %30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5147
  %33 = call i32 @feof(%struct._IO_FILE* %32) #10, !dbg !5149
  %34 = icmp ne i32 %33, 0, !dbg !5150
  %35 = xor i1 %34, true, !dbg !5150
  br i1 %35, label %36, label %116, !dbg !5151

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5152
  %38 = call i64 @getline(i8** %10, i64* %13, %struct._IO_FILE* %37), !dbg !5155
  %39 = icmp eq i64 %38, -1, !dbg !5156
  br i1 %39, label %40, label %41, !dbg !5157

; <label>:40:                                     ; preds = %36
  br label %116, !dbg !5158

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %10, align 8, !dbg !5160
  %43 = icmp eq i8* %42, null, !dbg !5162
  br i1 %43, label %44, label %48, !dbg !5163

; <label>:44:                                     ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5164
  %46 = load i32, i32* %9, align 4, !dbg !5166
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i32 0, i32 0), i32 %46), !dbg !5167
  br label %117, !dbg !5168

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %9, align 4, !dbg !5169
  %50 = add nsw i32 %49, 1, !dbg !5169
  store i32 %50, i32* %9, align 4, !dbg !5169
  %51 = load i8*, i8** %10, align 8, !dbg !5170
  store i8* %51, i8** %11, align 8, !dbg !5172
  br label %52, !dbg !5173

; <label>:52:                                     ; preds = %65, %48
  %53 = load i8*, i8** %11, align 8, !dbg !5174
  %54 = load i8, i8* %53, align 1, !dbg !5177
  %55 = sext i8 %54 to i32, !dbg !5177
  %56 = icmp eq i32 %55, 32, !dbg !5178
  br i1 %56, label %62, label %57, !dbg !5179

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %11, align 8, !dbg !5180
  %59 = load i8, i8* %58, align 1, !dbg !5182
  %60 = sext i8 %59 to i32, !dbg !5182
  %61 = icmp eq i32 %60, 9, !dbg !5183
  br label %62, !dbg !5184

; <label>:62:                                     ; preds = %57, %52
  %63 = phi i1 [ true, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %68, !dbg !5185

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5187

; <label>:65:                                     ; preds = %64
  %66 = load i8*, i8** %11, align 8, !dbg !5189
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !5189
  store i8* %67, i8** %11, align 8, !dbg !5189
  br label %52, !dbg !5191, !llvm.loop !5192

; <label>:68:                                     ; preds = %62
  %69 = load i8*, i8** %11, align 8, !dbg !5194
  %70 = getelementptr inbounds i8, i8* %69, i64 0, !dbg !5194
  %71 = load i8, i8* %70, align 1, !dbg !5194
  %72 = sext i8 %71 to i32, !dbg !5194
  %73 = icmp eq i32 %72, 0, !dbg !5196
  br i1 %73, label %98, label %74, !dbg !5197

; <label>:74:                                     ; preds = %68
  %75 = load i8*, i8** %11, align 8, !dbg !5198
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !5198
  %77 = load i8, i8* %76, align 1, !dbg !5198
  %78 = sext i8 %77 to i32, !dbg !5198
  %79 = icmp eq i32 %78, 35, !dbg !5200
  br i1 %79, label %98, label %80, !dbg !5201

; <label>:80:                                     ; preds = %74
  %81 = load i8*, i8** %11, align 8, !dbg !5202
  %82 = getelementptr inbounds i8, i8* %81, i64 0, !dbg !5202
  %83 = load i8, i8* %82, align 1, !dbg !5202
  %84 = sext i8 %83 to i32, !dbg !5202
  %85 = icmp eq i32 %84, 59, !dbg !5204
  br i1 %85, label %98, label %86, !dbg !5205

; <label>:86:                                     ; preds = %80
  %87 = load i8*, i8** %11, align 8, !dbg !5206
  %88 = getelementptr inbounds i8, i8* %87, i64 0, !dbg !5206
  %89 = load i8, i8* %88, align 1, !dbg !5206
  %90 = sext i8 %89 to i32, !dbg !5206
  %91 = icmp eq i32 %90, 13, !dbg !5207
  br i1 %91, label %98, label %92, !dbg !5208

; <label>:92:                                     ; preds = %86
  %93 = load i8*, i8** %11, align 8, !dbg !5209
  %94 = getelementptr inbounds i8, i8* %93, i64 0, !dbg !5209
  %95 = load i8, i8* %94, align 1, !dbg !5209
  %96 = sext i8 %95 to i32, !dbg !5209
  %97 = icmp eq i32 %96, 10, !dbg !5210
  br i1 %97, label %98, label %99, !dbg !5211

; <label>:98:                                     ; preds = %92, %86, %80, %74, %68
  br label %31, !dbg !5213, !llvm.loop !5215

; <label>:99:                                     ; preds = %92
  %100 = call i32 @get_name_value(i8** %11, i8** %12, i8 signext 32), !dbg !5216
  store i32 %100, i32* %8, align 4, !dbg !5217
  %101 = load i32, i32* %8, align 4, !dbg !5218
  %102 = icmp eq i32 %101, 0, !dbg !5220
  br i1 %102, label %103, label %111, !dbg !5221

; <label>:103:                                    ; preds = %99
  %104 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !5222
  %105 = load i8*, i8** %6, align 8, !dbg !5224
  %106 = load i8*, i8** %11, align 8, !dbg !5225
  %107 = load i8*, i8** %12, align 8, !dbg !5226
  %108 = load i8**, i8*** %7, align 8, !dbg !5227
  %109 = load i32, i32* %9, align 4, !dbg !5228
  %110 = call i32 @set_option(%struct.opts* %104, i8* %105, i8* %106, i8* %107, i8** %108, i32 %109), !dbg !5229
  store i32 %110, i32* %8, align 4, !dbg !5230
  br label %111, !dbg !5231

; <label>:111:                                    ; preds = %103, %99
  %112 = load i32, i32* %8, align 4, !dbg !5232
  %113 = icmp eq i32 %112, -1, !dbg !5234
  br i1 %113, label %114, label %115, !dbg !5235

; <label>:114:                                    ; preds = %111
  br label %117, !dbg !5236

; <label>:115:                                    ; preds = %111
  br label %31, !dbg !5238, !llvm.loop !5215

; <label>:116:                                    ; preds = %40, %31
  br label %117, !dbg !5240

; <label>:117:                                    ; preds = %116, %114, %44
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !5242
  %119 = call i32 @fclose(%struct._IO_FILE* %118), !dbg !5243
  %120 = load i8*, i8** %10, align 8, !dbg !5244
  %121 = icmp ne i8* %120, null, !dbg !5244
  br i1 %121, label %122, label %124, !dbg !5246

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %10, align 8, !dbg !5247
  call void @free(i8* %123) #10, !dbg !5249
  br label %124, !dbg !5250

; <label>:124:                                    ; preds = %122, %117
  %125 = load i32, i32* %8, align 4, !dbg !5251
  store i32 %125, i32* %4, align 4, !dbg !5252
  br label %126, !dbg !5252

; <label>:126:                                    ; preds = %124, %21
  %127 = load i32, i32* %4, align 4, !dbg !5253
  ret i32 %127, !dbg !5253
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #5

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @log_content_split_pathspec(i8*, i8**, i8**) #2

declare i32 @sys_mkpath(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define internal i32 @check_value_yesno(i8*, i8*, i32) #4 !dbg !5254 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5257, metadata !54), !dbg !5258
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5259, metadata !54), !dbg !5260
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5261, metadata !54), !dbg !5262
  %8 = load i8*, i8** %5, align 8, !dbg !5263
  %9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i64 4) #11, !dbg !5265
  %10 = icmp ne i32 %9, 0, !dbg !5265
  br i1 %10, label %12, label %11, !dbg !5266

; <label>:11:                                     ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !5267
  br label %24, !dbg !5267

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !5269
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i64 3) #11, !dbg !5271
  %15 = icmp ne i32 %14, 0, !dbg !5271
  br i1 %15, label %17, label %16, !dbg !5272

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %4, align 4, !dbg !5273
  br label %24, !dbg !5273

; <label>:17:                                     ; preds = %12
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5275
  %20 = load i8*, i8** %6, align 8, !dbg !5276
  %21 = load i8*, i8** %5, align 8, !dbg !5277
  %22 = load i32, i32* %7, align 4, !dbg !5278
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.96, i32 0, i32 0), i8* %20, i8* %21, i32 %22), !dbg !5279
  store i32 -1, i32* %4, align 4, !dbg !5280
  br label %24, !dbg !5280

; <label>:24:                                     ; preds = %18, %16, %11
  %25 = load i32, i32* %4, align 4, !dbg !5281
  ret i32 %25, !dbg !5281
}

; Function Attrs: nounwind
declare i8* @strtok_r(i8*, i8*, i8**) #5

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define internal void @opts_set_verify_peer(%struct.opts*) #4 !dbg !5282 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !5283, metadata !54), !dbg !5284
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !5285
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 29, !dbg !5286
  %5 = load i8, i8* %4, align 8, !dbg !5287
  %6 = and i8 %5, -2, !dbg !5287
  %7 = or i8 %6, 1, !dbg !5287
  store i8 %7, i8* %4, align 8, !dbg !5287
  ret void, !dbg !5288
}

; Function Attrs: nounwind uwtable
define internal void @opts_unset_verify_peer(%struct.opts*) #4 !dbg !5289 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !5290, metadata !54), !dbg !5291
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !5292
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 29, !dbg !5293
  %5 = load i8, i8* %4, align 8, !dbg !5294
  %6 = and i8 %5, -2, !dbg !5294
  store i8 %6, i8* %4, align 8, !dbg !5294
  ret void, !dbg !5295
}

; Function Attrs: nounwind uwtable
define internal void @opts_set_allow_wrong_host(%struct.opts*) #4 !dbg !5296 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !5297, metadata !54), !dbg !5298
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !5299
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 29, !dbg !5300
  %5 = load i8, i8* %4, align 8, !dbg !5301
  %6 = and i8 %5, -3, !dbg !5301
  %7 = or i8 %6, 2, !dbg !5301
  store i8 %7, i8* %4, align 8, !dbg !5301
  ret void, !dbg !5302
}

; Function Attrs: nounwind uwtable
define internal void @opts_unset_allow_wrong_host(%struct.opts*) #4 !dbg !5303 {
  %2 = alloca %struct.opts*, align 8
  store %struct.opts* %0, %struct.opts** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %2, metadata !5304, metadata !54), !dbg !5305
  %3 = load %struct.opts*, %struct.opts** %2, align 8, !dbg !5306
  %4 = getelementptr inbounds %struct.opts, %struct.opts* %3, i32 0, i32 29, !dbg !5307
  %5 = load i8, i8* %4, align 8, !dbg !5308
  %6 = and i8 %5, -3, !dbg !5308
  store i8 %6, i8* %4, align 8, !dbg !5308
  ret void, !dbg !5309
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line8-opts.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !27, !28, !32, !31}
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
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !34, line: 153, size: 128, align: 16, elements: !35)
!34 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!35 = !{!36, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !33, file: !34, line: 155, baseType: !37, size: 16, align: 16)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !38, line: 28, baseType: !39)
!38 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!39 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !33, file: !34, line: 156, baseType: !41, size: 112, align: 8, offset: 16)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 112, align: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 14)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "oom_die", scope: !48, file: !48, line: 49, type: !49, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DIFile(filename: "opts.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!53 = !DILocalVariable(name: "argv0", arg: 1, scope: !47, file: !48, line: 49, type: !51)
!54 = !DIExpression()
!55 = !DILocation(line: 49, column: 21, scope: !47)
!56 = !DILocation(line: 51, column: 9, scope: !47)
!57 = !DILocation(line: 51, column: 40, scope: !47)
!58 = !DILocation(line: 51, column: 2, scope: !47)
!59 = !DILocation(line: 52, column: 2, scope: !47)
!60 = !DILocation(line: 53, column: 1, scope: !47)
!61 = distinct !DISubprogram(name: "opts_new", scope: !48, file: !48, line: 56, type: !62, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "opts_t", file: !66, line: 126, baseType: !67)
!66 = !DIFile(filename: "opts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opts", file: !66, line: 56, size: 1920, align: 64, elements: !68)
!68 = !{!69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1829, !1830, !1831}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !67, file: !66, line: 57, baseType: !70, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !67, file: !66, line: 58, baseType: !70, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "sslcomp", scope: !67, file: !66, line: 59, baseType: !70, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "no_ssl3", scope: !67, file: !66, line: 64, baseType: !70, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls10", scope: !67, file: !66, line: 67, baseType: !70, size: 1, align: 32, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls11", scope: !67, file: !66, line: 70, baseType: !70, size: 1, align: 32, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls12", scope: !67, file: !66, line: 73, baseType: !70, size: 1, align: 32, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "passthrough", scope: !67, file: !66, line: 75, baseType: !70, size: 1, align: 32, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "deny_ocsp", scope: !67, file: !66, line: 76, baseType: !70, size: 1, align: 32, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isdir", scope: !67, file: !66, line: 77, baseType: !70, size: 1, align: 32, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isspec", scope: !67, file: !66, line: 78, baseType: !70, size: 1, align: 32, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isdir", scope: !67, file: !66, line: 79, baseType: !70, size: 1, align: 32, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isspec", scope: !67, file: !66, line: 80, baseType: !70, size: 1, align: 32, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "certgen_writeall", scope: !67, file: !66, line: 84, baseType: !70, size: 1, align: 32, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "openssl_engine", scope: !67, file: !66, line: 86, baseType: !17, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !67, file: !66, line: 88, baseType: !17, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "certgendir", scope: !67, file: !66, line: 89, baseType: !17, size: 64, align: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tgcrtdir", scope: !67, file: !66, line: 90, baseType: !17, size: 64, align: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dropuser", scope: !67, file: !66, line: 91, baseType: !17, size: 64, align: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "dropgroup", scope: !67, file: !66, line: 92, baseType: !17, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "jaildir", scope: !67, file: !66, line: 93, baseType: !17, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !67, file: !66, line: 94, baseType: !17, size: 64, align: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "conffile", scope: !67, file: !66, line: 95, baseType: !17, size: 64, align: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "connectlog", scope: !67, file: !66, line: 96, baseType: !17, size: 64, align: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog", scope: !67, file: !66, line: 97, baseType: !17, size: 64, align: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_basedir", scope: !67, file: !66, line: 98, baseType: !17, size: 64, align: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "masterkeylog", scope: !67, file: !66, line: 99, baseType: !17, size: 64, align: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog", scope: !67, file: !66, line: 100, baseType: !17, size: 64, align: 64, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_basedir", scope: !67, file: !66, line: 101, baseType: !17, size: 64, align: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mirrorif", scope: !67, file: !66, line: 103, baseType: !17, size: 64, align: 64, offset: 1024)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "mirrortarget", scope: !67, file: !66, line: 104, baseType: !17, size: 64, align: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sslmethod", scope: !67, file: !66, line: 106, baseType: !102, size: 64, align: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !108, line: 374, baseType: !109)
!108 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !108, line: 438, size: 1856, align: 64, elements: !110)
!110 = !{!111, !112, !1700, !1704, !1705, !1706, !1707, !1711, !1712, !1716, !1717, !1718, !1719, !1723, !1727, !1731, !1732, !1736, !1740, !1744, !1748, !1752, !1756, !1760, !1766, !1767, !1770, !1771, !1778}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !109, file: !108, line: 439, baseType: !14, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !109, file: !108, line: 440, baseType: !113, size: 64, align: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!14, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !118, line: 178, baseType: !119)
!118 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !108, line: 1422, size: 6592, align: 64, elements: !120)
!120 = !{!121, !122, !123, !124, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !219, !220, !221, !222, !225, !226, !289, !768, !1202, !1203, !1207, !1208, !1209, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1241, !1242, !1243, !1244, !1251, !1252, !1417, !1421, !1422, !1423, !1427, !1431, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1640, !1641, !1642, !1643, !1644, !1645, !1648, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1668, !1673, !1674, !1681, !1682, !1683, !1684, !1685, !1686, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !119, file: !108, line: 1427, baseType: !14, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !108, line: 1429, baseType: !14, size: 32, align: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !119, file: !108, line: 1431, baseType: !105, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !119, file: !108, line: 1438, baseType: !125, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !127, line: 238, baseType: !128)
!127 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !127, line: 325, size: 896, align: 64, elements: !129)
!129 = !{!130, !169, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !185, !186}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !128, file: !127, line: 326, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !127, line: 323, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !127, line: 312, size: 640, align: 64, elements: !134)
!134 = !{!135, !136, !137, !141, !145, !149, !150, !155, !159, !160}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !127, line: 313, baseType: !14, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !127, line: 314, baseType: !51, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !133, file: !127, line: 315, baseType: !138, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!14, !125, !51, !14}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !133, file: !127, line: 316, baseType: !142, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!14, !125, !17, !14}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !133, file: !127, line: 317, baseType: !146, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!14, !125, !51}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !133, file: !127, line: 318, baseType: !142, size: 64, align: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !133, file: !127, line: 319, baseType: !151, size: 64, align: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !125, !14, !154, !31}
!154 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !133, file: !127, line: 320, baseType: !156, size: 64, align: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!14, !125}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !133, file: !127, line: 321, baseType: !156, size: 64, align: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !133, file: !127, line: 322, baseType: !161, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!154, !125, !14, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !127, line: 309, baseType: !166)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168, !14, !51, !14, !154, !154}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !128, file: !127, line: 328, baseType: !170, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!154, !168, !14, !51, !14, !154, !154}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !128, file: !127, line: 329, baseType: !17, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !128, file: !127, line: 330, baseType: !14, size: 32, align: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !128, file: !127, line: 331, baseType: !14, size: 32, align: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !127, line: 332, baseType: !14, size: 32, align: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !128, file: !127, line: 333, baseType: !14, size: 32, align: 32, offset: 288)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !128, file: !127, line: 334, baseType: !14, size: 32, align: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !128, file: !127, line: 335, baseType: !31, size: 64, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !128, file: !127, line: 336, baseType: !168, size: 64, align: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !128, file: !127, line: 337, baseType: !168, size: 64, align: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !128, file: !127, line: 338, baseType: !14, size: 32, align: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !128, file: !127, line: 339, baseType: !184, size: 64, align: 64, offset: 640)
!184 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !128, file: !127, line: 340, baseType: !184, size: 64, align: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !128, file: !127, line: 341, baseType: !187, size: 128, align: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !118, line: 195, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !189, line: 292, size: 128, align: 64, elements: !190)
!189 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!190 = !{!191, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !188, file: !189, line: 293, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !189, line: 297, size: 256, align: 64, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !193, file: !189, line: 297, baseType: !9, size: 256, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !188, file: !189, line: 295, baseType: !14, size: 32, align: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !119, file: !108, line: 1440, baseType: !125, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !119, file: !108, line: 1442, baseType: !125, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !119, file: !108, line: 1455, baseType: !14, size: 32, align: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !119, file: !108, line: 1457, baseType: !14, size: 32, align: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !119, file: !108, line: 1458, baseType: !113, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !119, file: !108, line: 1467, baseType: !14, size: 32, align: 32, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !119, file: !108, line: 1474, baseType: !14, size: 32, align: 32, offset: 480)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !119, file: !108, line: 1476, baseType: !14, size: 32, align: 32, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !119, file: !108, line: 1478, baseType: !14, size: 32, align: 32, offset: 544)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !119, file: !108, line: 1480, baseType: !14, size: 32, align: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !119, file: !108, line: 1482, baseType: !14, size: 32, align: 32, offset: 608)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !119, file: !108, line: 1483, baseType: !209, size: 64, align: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !118, line: 127, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !212, line: 77, size: 192, align: 64, elements: !213)
!212 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!213 = !{!214, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !211, file: !212, line: 78, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 216, baseType: !184)
!216 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !211, file: !212, line: 79, baseType: !17, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !211, file: !212, line: 80, baseType: !215, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !119, file: !108, line: 1484, baseType: !31, size: 64, align: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !119, file: !108, line: 1486, baseType: !14, size: 32, align: 32, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !119, file: !108, line: 1487, baseType: !14, size: 32, align: 32, offset: 800)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !119, file: !108, line: 1489, baseType: !223, size: 64, align: 64, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !119, file: !108, line: 1490, baseType: !70, size: 32, align: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !119, file: !108, line: 1491, baseType: !227, size: 64, align: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !229, line: 163, size: 2752, align: 64, elements: !230)
!229 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!230 = !{!231, !232, !233, !234, !235, !236, !237, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !263, !264, !268, !269, !273, !274, !275}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !228, file: !229, line: 164, baseType: !14, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !228, file: !229, line: 165, baseType: !14, size: 32, align: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !228, file: !229, line: 166, baseType: !14, size: 32, align: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !228, file: !229, line: 167, baseType: !14, size: 32, align: 32, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !228, file: !229, line: 171, baseType: !70, size: 32, align: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !228, file: !229, line: 172, baseType: !14, size: 32, align: 32, offset: 160)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !228, file: !229, line: 173, baseType: !238, size: 64, align: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !228, file: !229, line: 174, baseType: !14, size: 32, align: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !228, file: !229, line: 175, baseType: !14, size: 32, align: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !228, file: !229, line: 176, baseType: !14, size: 32, align: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !228, file: !229, line: 178, baseType: !14, size: 32, align: 32, offset: 352)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !228, file: !229, line: 179, baseType: !14, size: 32, align: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !228, file: !229, line: 180, baseType: !223, size: 64, align: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !228, file: !229, line: 181, baseType: !223, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !228, file: !229, line: 182, baseType: !223, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !228, file: !229, line: 184, baseType: !70, size: 32, align: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !228, file: !229, line: 185, baseType: !70, size: 32, align: 32, offset: 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !228, file: !229, line: 186, baseType: !14, size: 32, align: 32, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !228, file: !229, line: 187, baseType: !70, size: 32, align: 32, offset: 736)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !228, file: !229, line: 188, baseType: !14, size: 32, align: 32, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !228, file: !229, line: 189, baseType: !223, size: 64, align: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !228, file: !229, line: 190, baseType: !223, size: 64, align: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !228, file: !229, line: 191, baseType: !223, size: 64, align: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !228, file: !229, line: 192, baseType: !223, size: 64, align: 64, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !228, file: !229, line: 193, baseType: !223, size: 64, align: 64, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !228, file: !229, line: 195, baseType: !70, size: 32, align: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !228, file: !229, line: 196, baseType: !260, size: 256, align: 8, offset: 1184)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, align: 8, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !228, file: !229, line: 197, baseType: !70, size: 32, align: 32, offset: 1440)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !228, file: !229, line: 198, baseType: !265, size: 128, align: 8, offset: 1472)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, align: 8, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !228, file: !229, line: 199, baseType: !70, size: 32, align: 32, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !228, file: !229, line: 200, baseType: !270, size: 384, align: 8, offset: 1632)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 384, align: 8, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !228, file: !229, line: 201, baseType: !184, size: 64, align: 64, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !228, file: !229, line: 202, baseType: !184, size: 64, align: 64, offset: 2112)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !228, file: !229, line: 215, baseType: !276, size: 576, align: 32, offset: 2176)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !229, line: 203, size: 576, align: 32, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !276, file: !229, line: 204, baseType: !70, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !276, file: !229, line: 205, baseType: !70, size: 32, align: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !276, file: !229, line: 206, baseType: !70, size: 32, align: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !276, file: !229, line: 207, baseType: !70, size: 32, align: 32, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !276, file: !229, line: 208, baseType: !70, size: 32, align: 32, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !276, file: !229, line: 209, baseType: !70, size: 32, align: 32, offset: 160)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !276, file: !229, line: 210, baseType: !260, size: 256, align: 8, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !276, file: !229, line: 211, baseType: !70, size: 32, align: 32, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !276, file: !229, line: 212, baseType: !70, size: 32, align: 32, offset: 480)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !276, file: !229, line: 213, baseType: !70, size: 32, align: 32, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !276, file: !229, line: 214, baseType: !70, size: 32, align: 32, offset: 544)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !119, file: !108, line: 1492, baseType: !290, size: 64, align: 64, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !292, line: 481, size: 9728, align: 64, elements: !293)
!292 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!293 = !{!294, !295, !296, !300, !301, !305, !306, !307, !308, !309, !310, !311, !312, !313, !321, !322, !334, !335, !339, !340, !344, !345, !346, !347, !348, !349, !350, !351, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !292, line: 482, baseType: !154, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !291, file: !292, line: 483, baseType: !14, size: 32, align: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !291, file: !292, line: 484, baseType: !297, size: 64, align: 8, offset: 96)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, align: 8, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !291, file: !292, line: 485, baseType: !14, size: 32, align: 32, offset: 160)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !291, file: !292, line: 486, baseType: !302, size: 512, align: 8, offset: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 512, align: 8, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !291, file: !292, line: 487, baseType: !297, size: 64, align: 8, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !291, file: !292, line: 488, baseType: !14, size: 32, align: 32, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !291, file: !292, line: 489, baseType: !302, size: 512, align: 8, offset: 800)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !291, file: !292, line: 490, baseType: !260, size: 256, align: 8, offset: 1312)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !291, file: !292, line: 491, baseType: !260, size: 256, align: 8, offset: 1568)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !291, file: !292, line: 493, baseType: !14, size: 32, align: 32, offset: 1824)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !291, file: !292, line: 494, baseType: !14, size: 32, align: 32, offset: 1856)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !291, file: !292, line: 496, baseType: !14, size: 32, align: 32, offset: 1888)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !291, file: !292, line: 497, baseType: !314, size: 192, align: 64, offset: 1920)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !292, line: 447, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !292, line: 438, size: 192, align: 64, elements: !316)
!316 = !{!317, !318, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !315, file: !292, line: 440, baseType: !223, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !292, line: 442, baseType: !215, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !315, file: !292, line: 444, baseType: !14, size: 32, align: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !315, file: !292, line: 446, baseType: !14, size: 32, align: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !291, file: !292, line: 498, baseType: !314, size: 192, align: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !291, file: !292, line: 499, baseType: !323, size: 448, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !292, line: 436, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !292, line: 403, size: 448, align: 64, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !292, line: 407, baseType: !14, size: 32, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !324, file: !292, line: 411, baseType: !70, size: 32, align: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !324, file: !292, line: 415, baseType: !70, size: 32, align: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !324, file: !292, line: 419, baseType: !223, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !324, file: !292, line: 423, baseType: !223, size: 64, align: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !324, file: !292, line: 427, baseType: !223, size: 64, align: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !324, file: !292, line: 431, baseType: !184, size: 64, align: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !324, file: !292, line: 435, baseType: !297, size: 64, align: 8, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !291, file: !292, line: 500, baseType: !323, size: 448, align: 64, offset: 2752)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !291, file: !292, line: 505, baseType: !336, size: 16, align: 8, offset: 3200)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 16, align: 8, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 2)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !291, file: !292, line: 506, baseType: !70, size: 32, align: 32, offset: 3232)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !291, file: !292, line: 507, baseType: !341, size: 32, align: 8, offset: 3264)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 32, align: 8, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 4)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !291, file: !292, line: 508, baseType: !70, size: 32, align: 32, offset: 3296)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !291, file: !292, line: 510, baseType: !70, size: 32, align: 32, offset: 3328)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !291, file: !292, line: 511, baseType: !14, size: 32, align: 32, offset: 3360)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !291, file: !292, line: 512, baseType: !14, size: 32, align: 32, offset: 3392)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !291, file: !292, line: 513, baseType: !14, size: 32, align: 32, offset: 3424)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !291, file: !292, line: 514, baseType: !238, size: 64, align: 64, offset: 3456)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !291, file: !292, line: 516, baseType: !125, size: 64, align: 64, offset: 3520)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !291, file: !292, line: 521, baseType: !352, size: 64, align: 64, offset: 3584)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !118, line: 132, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !356, line: 268, size: 384, align: 64, elements: !357)
!356 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!357 = !{!358, !406, !410, !411, !412, !416}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !355, file: !356, line: 269, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !118, line: 131, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !356, line: 160, size: 960, align: 64, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !372, !376, !380, !386, !387, !392, !396, !400, !401, !402}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !356, line: 161, baseType: !14, size: 32, align: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !362, file: !356, line: 162, baseType: !14, size: 32, align: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !362, file: !356, line: 163, baseType: !14, size: 32, align: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !356, line: 164, baseType: !184, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !362, file: !356, line: 165, baseType: !369, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!14, !353}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !362, file: !356, line: 166, baseType: !373, size: 64, align: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!14, !353, !25, !215}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !362, file: !356, line: 167, baseType: !377, size: 64, align: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!14, !353, !223}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !362, file: !356, line: 168, baseType: !381, size: 64, align: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!14, !353, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !362, file: !356, line: 169, baseType: !369, size: 64, align: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !362, file: !356, line: 171, baseType: !388, size: 64, align: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!14, !14, !238, !70, !223, !391, !31}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !362, file: !356, line: 173, baseType: !393, size: 64, align: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!14, !14, !238, !70, !238, !70, !31}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !362, file: !356, line: 176, baseType: !397, size: 160, align: 32, offset: 640)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 32, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 5)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !362, file: !356, line: 177, baseType: !14, size: 32, align: 32, offset: 800)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !362, file: !356, line: 178, baseType: !14, size: 32, align: 32, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !362, file: !356, line: 180, baseType: !403, size: 64, align: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!14, !353, !14, !14, !31}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !355, file: !356, line: 270, baseType: !407, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !118, line: 177, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !118, line: 177, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !356, line: 272, baseType: !184, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !355, file: !356, line: 273, baseType: !31, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !355, file: !356, line: 275, baseType: !413, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !118, line: 138, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !118, line: 138, flags: DIFlagFwdDecl)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !355, file: !356, line: 277, baseType: !373, size: 64, align: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !291, file: !292, line: 527, baseType: !14, size: 32, align: 32, offset: 3648)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !291, file: !292, line: 528, baseType: !14, size: 32, align: 32, offset: 3680)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !291, file: !292, line: 529, baseType: !14, size: 32, align: 32, offset: 3712)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !291, file: !292, line: 534, baseType: !14, size: 32, align: 32, offset: 3744)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !291, file: !292, line: 535, baseType: !336, size: 16, align: 8, offset: 3776)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !291, file: !292, line: 540, baseType: !14, size: 32, align: 32, offset: 3808)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !291, file: !292, line: 541, baseType: !14, size: 32, align: 32, offset: 3840)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !291, file: !292, line: 542, baseType: !14, size: 32, align: 32, offset: 3872)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !291, file: !292, line: 543, baseType: !14, size: 32, align: 32, offset: 3904)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !291, file: !292, line: 549, baseType: !31, size: 64, align: 64, offset: 3968)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !291, file: !292, line: 550, baseType: !215, size: 64, align: 64, offset: 4032)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !291, file: !292, line: 551, baseType: !31, size: 64, align: 64, offset: 4096)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !291, file: !292, line: 552, baseType: !215, size: 64, align: 64, offset: 4160)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !291, file: !292, line: 592, baseType: !431, size: 4224, align: 64, offset: 4224)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !292, line: 553, size: 4224, align: 64, elements: !432)
!432 = !{!433, !437, !438, !439, !440, !441, !442, !443, !461, !557, !562, !563, !564, !565, !566, !570, !575, !576, !577, !578, !711, !712, !713, !714, !758}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !431, file: !292, line: 555, baseType: !434, size: 1024, align: 8)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, align: 8, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !431, file: !292, line: 557, baseType: !434, size: 1024, align: 8, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !431, file: !292, line: 558, baseType: !14, size: 32, align: 32, offset: 2048)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !431, file: !292, line: 559, baseType: !434, size: 1024, align: 8, offset: 2080)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !431, file: !292, line: 560, baseType: !14, size: 32, align: 32, offset: 3104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !431, file: !292, line: 561, baseType: !184, size: 64, align: 64, offset: 3136)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !431, file: !292, line: 562, baseType: !14, size: 32, align: 32, offset: 3200)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !431, file: !292, line: 564, baseType: !444, size: 64, align: 64, offset: 3264)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !108, line: 375, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !108, line: 418, size: 704, align: 64, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !447, file: !108, line: 419, baseType: !14, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !108, line: 420, baseType: !51, size: 64, align: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !447, file: !108, line: 421, baseType: !184, size: 64, align: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !447, file: !108, line: 426, baseType: !184, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !447, file: !108, line: 427, baseType: !184, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !447, file: !108, line: 428, baseType: !184, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !447, file: !108, line: 429, baseType: !184, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !447, file: !108, line: 430, baseType: !184, size: 64, align: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !447, file: !108, line: 431, baseType: !184, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !447, file: !108, line: 432, baseType: !184, size: 64, align: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !447, file: !108, line: 433, baseType: !14, size: 32, align: 32, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !447, file: !108, line: 434, baseType: !14, size: 32, align: 32, offset: 672)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !431, file: !292, line: 566, baseType: !462, size: 64, align: 64, offset: 3328)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !118, line: 140, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !465, line: 135, size: 1152, align: 64, elements: !466)
!465 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!466 = !{!467, !468, !469, !481, !482, !483, !484, !485, !486, !498, !499, !500, !501, !502, !503, !504, !505, !556}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !464, file: !465, line: 140, baseType: !14, size: 32, align: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !464, file: !465, line: 141, baseType: !14, size: 32, align: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !464, file: !465, line: 142, baseType: !470, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !118, line: 120, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !473, line: 313, size: 192, align: 64, elements: !474)
!473 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!474 = !{!475, !477, !478, !479, !480}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !472, file: !473, line: 314, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !472, file: !473, line: 316, baseType: !14, size: 32, align: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !472, file: !473, line: 318, baseType: !14, size: 32, align: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !472, file: !473, line: 319, baseType: !14, size: 32, align: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !473, line: 320, baseType: !14, size: 32, align: 32, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !464, file: !465, line: 143, baseType: !470, size: 64, align: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !464, file: !465, line: 144, baseType: !154, size: 64, align: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !464, file: !465, line: 145, baseType: !470, size: 64, align: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !464, file: !465, line: 146, baseType: !470, size: 64, align: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !465, line: 147, baseType: !14, size: 32, align: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !464, file: !465, line: 148, baseType: !487, size: 64, align: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !118, line: 123, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !473, line: 324, size: 832, align: 64, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !489, file: !473, line: 325, baseType: !14, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !489, file: !473, line: 326, baseType: !471, size: 192, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !489, file: !473, line: 327, baseType: !471, size: 192, align: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !489, file: !473, line: 328, baseType: !471, size: 192, align: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !489, file: !473, line: 330, baseType: !496, size: 128, align: 64, offset: 640)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, align: 64, elements: !337)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !473, line: 333, baseType: !14, size: 32, align: 32, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !464, file: !465, line: 150, baseType: !470, size: 64, align: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !464, file: !465, line: 151, baseType: !470, size: 64, align: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !464, file: !465, line: 152, baseType: !223, size: 64, align: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !464, file: !465, line: 153, baseType: !14, size: 32, align: 32, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !464, file: !465, line: 154, baseType: !470, size: 64, align: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !464, file: !465, line: 155, baseType: !14, size: 32, align: 32, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !464, file: !465, line: 156, baseType: !187, size: 128, align: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !464, file: !465, line: 157, baseType: !506, size: 64, align: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !118, line: 141, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !465, line: 117, size: 576, align: 64, elements: !510)
!510 = !{!511, !512, !516, !522, !531, !532, !533, !534, !535}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !465, line: 118, baseType: !51, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !509, file: !465, line: 120, baseType: !513, size: 64, align: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!14, !462}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !509, file: !465, line: 121, baseType: !517, size: 64, align: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!14, !223, !520, !462}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !509, file: !465, line: 123, baseType: !523, size: 64, align: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!14, !526, !470, !520, !520, !520, !528, !487}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !118, line: 121, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !118, line: 121, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !509, file: !465, line: 126, baseType: !513, size: 64, align: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !509, file: !465, line: 127, baseType: !513, size: 64, align: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !465, line: 128, baseType: !14, size: 32, align: 32, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !509, file: !465, line: 129, baseType: !17, size: 64, align: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !509, file: !465, line: 131, baseType: !536, size: 64, align: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!14, !462, !14, !14, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !118, line: 125, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !473, line: 349, size: 192, align: 64, elements: !542)
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !541, file: !473, line: 350, baseType: !70, size: 32, align: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !541, file: !473, line: 351, baseType: !31, size: 64, align: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !541, file: !473, line: 357, baseType: !546, size: 64, align: 64, offset: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !473, line: 352, size: 64, align: 64, elements: !547)
!547 = !{!548, !552}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !546, file: !473, line: 354, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !14, !14, !31}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !546, file: !473, line: 356, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!14, !14, !14, !539}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !464, file: !465, line: 158, baseType: !407, size: 64, align: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !431, file: !292, line: 569, baseType: !558, size: 64, align: 64, offset: 3392)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !560, line: 741, baseType: !561)
!560 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !356, line: 147, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !431, file: !292, line: 572, baseType: !14, size: 32, align: 32, offset: 3456)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !431, file: !292, line: 573, baseType: !14, size: 32, align: 32, offset: 3488)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !431, file: !292, line: 575, baseType: !14, size: 32, align: 32, offset: 3520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !431, file: !292, line: 576, baseType: !14, size: 32, align: 32, offset: 3552)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !431, file: !292, line: 577, baseType: !567, size: 72, align: 8, offset: 3584)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, align: 8, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 9)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !431, file: !292, line: 578, baseType: !571, size: 64, align: 64, offset: 3712)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !6, line: 192, size: 256, align: 64, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !572, file: !6, line: 192, baseType: !9, size: 256, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !431, file: !292, line: 579, baseType: !14, size: 32, align: 32, offset: 3776)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !431, file: !292, line: 580, baseType: !14, size: 32, align: 32, offset: 3808)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !431, file: !292, line: 581, baseType: !223, size: 64, align: 64, offset: 3840)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !431, file: !292, line: 582, baseType: !579, size: 64, align: 64, offset: 3904)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !118, line: 129, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !356, line: 308, size: 704, align: 64, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !612, !616, !620, !621, !705, !706, !710}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !582, file: !356, line: 309, baseType: !14, size: 32, align: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !582, file: !356, line: 310, baseType: !14, size: 32, align: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !582, file: !356, line: 312, baseType: !14, size: 32, align: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !582, file: !356, line: 313, baseType: !14, size: 32, align: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !356, line: 315, baseType: !184, size: 64, align: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !582, file: !356, line: 317, baseType: !590, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!14, !593, !238, !238, !14}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !118, line: 130, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !356, line: 449, size: 1344, align: 64, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !595, file: !356, line: 450, baseType: !579, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !595, file: !356, line: 451, baseType: !407, size: 64, align: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !595, file: !356, line: 453, baseType: !14, size: 32, align: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !595, file: !356, line: 454, baseType: !14, size: 32, align: 32, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !595, file: !356, line: 455, baseType: !265, size: 128, align: 8, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !595, file: !356, line: 456, baseType: !265, size: 128, align: 8, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !595, file: !356, line: 457, baseType: !260, size: 256, align: 8, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !595, file: !356, line: 458, baseType: !14, size: 32, align: 32, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !595, file: !356, line: 459, baseType: !31, size: 64, align: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !595, file: !356, line: 460, baseType: !14, size: 32, align: 32, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !356, line: 461, baseType: !184, size: 64, align: 64, offset: 896)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !595, file: !356, line: 462, baseType: !31, size: 64, align: 64, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !595, file: !356, line: 463, baseType: !14, size: 32, align: 32, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !595, file: !356, line: 464, baseType: !14, size: 32, align: 32, offset: 1056)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !595, file: !356, line: 465, baseType: !260, size: 256, align: 8, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !582, file: !356, line: 320, baseType: !613, size: 64, align: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!14, !593, !223, !238, !215}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !582, file: !356, line: 323, baseType: !617, size: 64, align: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!14, !593}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !582, file: !356, line: 325, baseType: !14, size: 32, align: 32, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !582, file: !356, line: 327, baseType: !622, size: 64, align: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!14, !593, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !627, line: 561, baseType: !628)
!627 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !627, line: 532, size: 128, align: 64, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !627, line: 533, baseType: !14, size: 32, align: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !627, line: 560, baseType: !632, size: 64, align: 64, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !627, line: 534, size: 64, align: 64, elements: !633)
!633 = !{!634, !635, !637, !646, !657, !660, !663, !666, !669, !672, !675, !678, !681, !684, !687, !690, !693, !696, !699, !700, !701}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !632, file: !627, line: 535, baseType: !17, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !632, file: !627, line: 536, baseType: !636, size: 32, align: 32)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !118, line: 99, baseType: !14)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !632, file: !627, line: 537, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !118, line: 98, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !627, line: 247, size: 192, align: 64, elements: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !640, file: !627, line: 248, baseType: !14, size: 32, align: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !627, line: 249, baseType: !14, size: 32, align: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !640, file: !627, line: 250, baseType: !223, size: 64, align: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !627, line: 256, baseType: !154, size: 64, align: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !632, file: !627, line: 538, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !118, line: 103, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !627, line: 218, size: 320, align: 64, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !649, file: !627, line: 219, baseType: !51, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !649, file: !627, line: 219, baseType: !51, size: 64, align: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !649, file: !627, line: 220, baseType: !14, size: 32, align: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !649, file: !627, line: 221, baseType: !14, size: 32, align: 32, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !649, file: !627, line: 222, baseType: !238, size: 64, align: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !627, line: 223, baseType: !14, size: 32, align: 32, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !632, file: !627, line: 539, baseType: !658, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !118, line: 83, baseType: !640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !632, file: !627, line: 540, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !118, line: 84, baseType: !640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !632, file: !627, line: 541, baseType: !664, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !118, line: 85, baseType: !640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !632, file: !627, line: 542, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !118, line: 86, baseType: !640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !632, file: !627, line: 543, baseType: !670, size: 64, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !118, line: 87, baseType: !640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !632, file: !627, line: 544, baseType: !673, size: 64, align: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !118, line: 88, baseType: !640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !632, file: !627, line: 545, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !118, line: 89, baseType: !640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !632, file: !627, line: 546, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !118, line: 90, baseType: !640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !632, file: !627, line: 547, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !118, line: 92, baseType: !640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !632, file: !627, line: 548, baseType: !685, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !118, line: 91, baseType: !640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !632, file: !627, line: 549, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !118, line: 93, baseType: !640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !632, file: !627, line: 550, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !118, line: 95, baseType: !640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !632, file: !627, line: 551, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !118, line: 96, baseType: !640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !632, file: !627, line: 552, baseType: !697, size: 64, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !118, line: 97, baseType: !640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !632, file: !627, line: 557, baseType: !638, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !632, file: !627, line: 558, baseType: !638, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !632, file: !627, line: 559, baseType: !702, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !627, line: 307, baseType: !704)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !627, line: 307, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !582, file: !356, line: 329, baseType: !622, size: 64, align: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !582, file: !356, line: 331, baseType: !707, size: 64, align: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!14, !593, !14, !14, !31}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !582, file: !356, line: 333, baseType: !31, size: 64, align: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !431, file: !292, line: 583, baseType: !359, size: 64, align: 64, offset: 3968)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !431, file: !292, line: 584, baseType: !14, size: 32, align: 32, offset: 4032)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !431, file: !292, line: 585, baseType: !14, size: 32, align: 32, offset: 4064)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !431, file: !292, line: 587, baseType: !715, size: 64, align: 64, offset: 4096)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !108, line: 908, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !108, line: 912, size: 192, align: 64, elements: !719)
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !718, file: !108, line: 913, baseType: !14, size: 32, align: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !108, line: 914, baseType: !51, size: 64, align: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !718, file: !108, line: 916, baseType: !723, size: 64, align: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !725, line: 29, baseType: !726)
!725 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !725, line: 13, size: 512, align: 64, elements: !727)
!727 = !{!728, !729, !730, !744, !748, !752, !753, !757}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !725, line: 14, baseType: !14, size: 32, align: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !725, line: 15, baseType: !51, size: 64, align: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !726, file: !725, line: 16, baseType: !731, size: 64, align: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!14, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !725, line: 11, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !725, line: 31, size: 448, align: 64, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !736, file: !725, line: 32, baseType: !723, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !736, file: !725, line: 33, baseType: !184, size: 64, align: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !736, file: !725, line: 34, baseType: !184, size: 64, align: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !736, file: !725, line: 35, baseType: !184, size: 64, align: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !736, file: !725, line: 36, baseType: !184, size: 64, align: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !736, file: !725, line: 37, baseType: !187, size: 128, align: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !726, file: !725, line: 17, baseType: !745, size: 64, align: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !734}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !726, file: !725, line: 18, baseType: !749, size: 64, align: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!14, !734, !223, !70, !223, !70}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !726, file: !725, line: 21, baseType: !749, size: 64, align: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !726, file: !725, line: 27, baseType: !754, size: 64, align: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!154}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !726, file: !725, line: 28, baseType: !754, size: 64, align: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !431, file: !292, line: 591, baseType: !14, size: 32, align: 32, offset: 4160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !291, file: !292, line: 595, baseType: !302, size: 512, align: 8, offset: 8448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !291, file: !292, line: 596, baseType: !224, size: 8, align: 8, offset: 8960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !291, file: !292, line: 597, baseType: !302, size: 512, align: 8, offset: 8968)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !291, file: !292, line: 598, baseType: !224, size: 8, align: 8, offset: 9480)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !291, file: !292, line: 599, baseType: !14, size: 32, align: 32, offset: 9504)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !291, file: !292, line: 605, baseType: !14, size: 32, align: 32, offset: 9536)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !291, file: !292, line: 615, baseType: !18, size: 8, align: 8, offset: 9568)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !291, file: !292, line: 628, baseType: !223, size: 64, align: 64, offset: 9600)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !291, file: !292, line: 629, baseType: !70, size: 32, align: 32, offset: 9664)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !119, file: !108, line: 1493, baseType: !769, size: 64, align: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !771, line: 182, size: 7168, align: 64, elements: !772)
!771 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!772 = !{!773, !774, !778, !779, !780, !781, !782, !788, !789, !790, !791, !792, !793, !803, !804, !805, !806, !807, !808, !809, !810, !1176, !1177, !1183, !1192, !1193, !1194, !1195, !1199, !1200, !1201}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !770, file: !771, line: 183, baseType: !70, size: 32, align: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !770, file: !771, line: 184, baseType: !775, size: 2048, align: 8, offset: 32)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 2048, align: 8, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !770, file: !771, line: 185, baseType: !775, size: 2048, align: 8, offset: 2080)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !770, file: !771, line: 186, baseType: !70, size: 32, align: 32, offset: 4128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !770, file: !771, line: 192, baseType: !39, size: 16, align: 16, offset: 4160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !770, file: !771, line: 193, baseType: !39, size: 16, align: 16, offset: 4176)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !770, file: !771, line: 195, baseType: !783, size: 128, align: 64, offset: 4224)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !771, line: 133, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !771, line: 128, size: 128, align: 64, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !784, file: !771, line: 129, baseType: !184, size: 64, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !784, file: !771, line: 131, baseType: !297, size: 64, align: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !770, file: !771, line: 197, baseType: !783, size: 128, align: 64, offset: 4352)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !770, file: !771, line: 199, baseType: !39, size: 16, align: 16, offset: 4480)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !770, file: !771, line: 200, baseType: !39, size: 16, align: 16, offset: 4496)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !770, file: !771, line: 201, baseType: !39, size: 16, align: 16, offset: 4512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !770, file: !771, line: 203, baseType: !297, size: 64, align: 8, offset: 4528)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !770, file: !771, line: 205, baseType: !794, size: 128, align: 64, offset: 4608)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !771, line: 174, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !771, line: 171, size: 128, align: 64, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !795, file: !771, line: 172, baseType: !39, size: 16, align: 16)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !795, file: !771, line: 173, baseType: !799, size: 64, align: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !800, line: 70, baseType: !801)
!800 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !800, line: 70, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !770, file: !771, line: 206, baseType: !794, size: 128, align: 64, offset: 4736)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !770, file: !771, line: 208, baseType: !799, size: 64, align: 64, offset: 4864)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !770, file: !771, line: 210, baseType: !799, size: 64, align: 64, offset: 4928)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !770, file: !771, line: 216, baseType: !794, size: 128, align: 64, offset: 4992)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !770, file: !771, line: 218, baseType: !70, size: 32, align: 32, offset: 5120)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !770, file: !771, line: 219, baseType: !70, size: 32, align: 32, offset: 5152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !770, file: !771, line: 220, baseType: !70, size: 32, align: 32, offset: 5184)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !770, file: !771, line: 221, baseType: !811, size: 704, align: 64, offset: 5248)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !771, line: 147, size: 704, align: 64, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !811, file: !771, line: 148, baseType: !224, size: 8, align: 8)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !811, file: !771, line: 149, baseType: !184, size: 64, align: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !811, file: !771, line: 150, baseType: !39, size: 16, align: 16, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !811, file: !771, line: 151, baseType: !184, size: 64, align: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !811, file: !771, line: 152, baseType: !184, size: 64, align: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !811, file: !771, line: 153, baseType: !70, size: 32, align: 32, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !811, file: !771, line: 154, baseType: !820, size: 320, align: 64, offset: 384)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !771, line: 135, size: 320, align: 64, elements: !821)
!821 = !{!822, !823, !824, !825, !1175}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !820, file: !771, line: 136, baseType: !593, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !820, file: !771, line: 137, baseType: !353, size: 64, align: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !820, file: !771, line: 139, baseType: !734, size: 64, align: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !820, file: !771, line: 143, baseType: !826, size: 64, align: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !108, line: 376, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !108, line: 498, size: 2816, align: 64, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !845, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1162, !1163, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !828, file: !108, line: 499, baseType: !14, size: 32, align: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !828, file: !108, line: 502, baseType: !70, size: 32, align: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !828, file: !108, line: 503, baseType: !297, size: 64, align: 8, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !828, file: !108, line: 504, baseType: !14, size: 32, align: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !828, file: !108, line: 505, baseType: !270, size: 384, align: 8, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !828, file: !108, line: 507, baseType: !70, size: 32, align: 32, offset: 544)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !828, file: !108, line: 508, baseType: !260, size: 256, align: 8, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !828, file: !108, line: 514, baseType: !70, size: 32, align: 32, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !828, file: !108, line: 515, baseType: !260, size: 256, align: 8, offset: 864)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !828, file: !108, line: 521, baseType: !17, size: 64, align: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !828, file: !108, line: 522, baseType: !17, size: 64, align: 64, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !828, file: !108, line: 529, baseType: !14, size: 32, align: 32, offset: 1280)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !828, file: !108, line: 531, baseType: !843, size: 64, align: 64, offset: 1344)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, align: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !108, line: 531, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !828, file: !108, line: 538, baseType: !846, size: 64, align: 64, offset: 1408)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !118, line: 154, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !6, line: 270, size: 1472, align: 64, elements: !849)
!849 = !{!850, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1106, !1110, !1115, !1117, !1128, !1132}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !848, file: !6, line: 271, baseType: !851, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !6, line: 254, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !6, line: 242, size: 832, align: 64, elements: !854)
!854 = !{!855, !856, !857, !864, !878, !887, !888, !1065, !1066, !1067, !1072}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !853, file: !6, line: 243, baseType: !658, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !853, file: !6, line: 244, baseType: !658, size: 64, align: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !853, file: !6, line: 245, baseType: !858, size: 64, align: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !118, line: 155, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !6, line: 143, size: 128, align: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !860, file: !6, line: 144, baseType: !647, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !860, file: !6, line: 145, baseType: !625, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !853, file: !6, line: 246, baseType: !865, size: 64, align: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !118, line: 159, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !6, line: 179, size: 320, align: 64, elements: !868)
!868 = !{!869, !874, !875, !876, !877}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !867, file: !6, line: 180, baseType: !870, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64, align: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !6, line: 175, size: 256, align: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !871, file: !6, line: 175, baseType: !9, size: 256, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !867, file: !6, line: 181, baseType: !14, size: 32, align: 32, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !867, file: !6, line: 183, baseType: !209, size: 64, align: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !867, file: !6, line: 188, baseType: !223, size: 64, align: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !867, file: !6, line: 189, baseType: !14, size: 32, align: 32, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !853, file: !6, line: 247, baseType: !879, size: 64, align: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !6, line: 155, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !6, line: 152, size: 128, align: 64, elements: !882)
!882 = !{!883, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !881, file: !6, line: 153, baseType: !884, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !118, line: 94, baseType: !640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !881, file: !6, line: 154, baseType: !884, size: 64, align: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !853, file: !6, line: 248, baseType: !865, size: 64, align: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !853, file: !6, line: 249, baseType: !889, size: 64, align: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !118, line: 160, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !6, line: 157, size: 192, align: 64, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !891, file: !6, line: 158, baseType: !858, size: 64, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !891, file: !6, line: 159, baseType: !664, size: 64, align: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !891, file: !6, line: 160, baseType: !896, size: 64, align: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !118, line: 133, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !356, line: 129, size: 448, align: 64, elements: !899)
!899 = !{!900, !901, !902, !903, !908, !909, !1059, !1060}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !898, file: !356, line: 130, baseType: !14, size: 32, align: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !898, file: !356, line: 131, baseType: !14, size: 32, align: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !898, file: !356, line: 132, baseType: !14, size: 32, align: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !898, file: !356, line: 133, baseType: !904, size: 64, align: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !118, line: 135, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !118, line: 135, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !898, file: !356, line: 134, baseType: !407, size: 64, align: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !898, file: !356, line: 149, baseType: !910, size: 64, align: 64, offset: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !356, line: 135, size: 64, align: 64, elements: !911)
!911 = !{!912, !913, !986, !1055, !1057}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !910, file: !356, line: 136, baseType: !17, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !910, file: !356, line: 138, baseType: !914, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64, align: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !916, line: 132, size: 1344, align: 64, elements: !917)
!916 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!917 = !{!918, !919, !920, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !985}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !915, file: !916, line: 137, baseType: !14, size: 32, align: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !915, file: !916, line: 138, baseType: !154, size: 64, align: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !915, file: !916, line: 139, baseType: !921, size: 64, align: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !118, line: 147, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !916, line: 85, size: 896, align: 64, elements: !925)
!925 = !{!926, !927, !933, !934, !935, !936, !940, !944, !948, !949, !950, !951, !957, !961}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !924, file: !916, line: 86, baseType: !51, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !924, file: !916, line: 87, baseType: !928, size: 64, align: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64, align: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!14, !14, !238, !223, !931, !14}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !118, line: 146, baseType: !915)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !924, file: !916, line: 89, baseType: !928, size: 64, align: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !924, file: !916, line: 91, baseType: !928, size: 64, align: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !924, file: !916, line: 93, baseType: !928, size: 64, align: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !924, file: !916, line: 96, baseType: !937, size: 64, align: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64, align: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!14, !470, !520, !931, !528}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !924, file: !916, line: 98, baseType: !941, size: 64, align: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64, align: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!14, !470, !520, !520, !520, !528, !487}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !924, file: !916, line: 101, baseType: !945, size: 64, align: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!14, !931}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !924, file: !916, line: 103, baseType: !945, size: 64, align: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !916, line: 105, baseType: !14, size: 32, align: 32, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !924, file: !916, line: 107, baseType: !17, size: 64, align: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !924, file: !916, line: 116, baseType: !952, size: 64, align: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!14, !14, !238, !70, !223, !391, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !924, file: !916, line: 120, baseType: !958, size: 64, align: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64, align: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!14, !14, !238, !70, !238, !70, !955}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !924, file: !916, line: 129, baseType: !962, size: 64, align: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, align: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!14, !931, !14, !470, !539}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !915, file: !916, line: 141, baseType: !407, size: 64, align: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !915, file: !916, line: 142, baseType: !470, size: 64, align: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !915, file: !916, line: 143, baseType: !470, size: 64, align: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !915, file: !916, line: 144, baseType: !470, size: 64, align: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !915, file: !916, line: 145, baseType: !470, size: 64, align: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !915, file: !916, line: 146, baseType: !470, size: 64, align: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !915, file: !916, line: 147, baseType: !470, size: 64, align: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !915, file: !916, line: 148, baseType: !470, size: 64, align: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !915, file: !916, line: 149, baseType: !470, size: 64, align: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !915, file: !916, line: 151, baseType: !187, size: 128, align: 64, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !915, file: !916, line: 152, baseType: !14, size: 32, align: 32, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !916, line: 153, baseType: !14, size: 32, align: 32, offset: 928)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !915, file: !916, line: 155, baseType: !487, size: 64, align: 64, offset: 960)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !915, file: !916, line: 156, baseType: !487, size: 64, align: 64, offset: 1024)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !915, file: !916, line: 157, baseType: !487, size: 64, align: 64, offset: 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !915, file: !916, line: 162, baseType: !17, size: 64, align: 64, offset: 1152)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !915, file: !916, line: 163, baseType: !982, size: 64, align: 64, offset: 1216)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !118, line: 122, baseType: !984)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !118, line: 122, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !915, file: !916, line: 164, baseType: !982, size: 64, align: 64, offset: 1280)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !910, file: !356, line: 141, baseType: !987, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, align: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !989, line: 155, size: 1088, align: 64, elements: !990)
!989 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!990 = !{!991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1054}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !988, file: !989, line: 160, baseType: !14, size: 32, align: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !988, file: !989, line: 161, baseType: !154, size: 64, align: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !988, file: !989, line: 162, baseType: !14, size: 32, align: 32, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !988, file: !989, line: 163, baseType: !470, size: 64, align: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !988, file: !989, line: 164, baseType: !470, size: 64, align: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !988, file: !989, line: 165, baseType: !470, size: 64, align: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !988, file: !989, line: 166, baseType: !470, size: 64, align: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !988, file: !989, line: 167, baseType: !470, size: 64, align: 64, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !988, file: !989, line: 168, baseType: !470, size: 64, align: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !988, file: !989, line: 169, baseType: !470, size: 64, align: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !988, file: !989, line: 170, baseType: !14, size: 32, align: 32, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !988, file: !989, line: 172, baseType: !487, size: 64, align: 64, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !988, file: !989, line: 173, baseType: !14, size: 32, align: 32, offset: 768)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !988, file: !989, line: 174, baseType: !187, size: 128, align: 64, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !988, file: !989, line: 175, baseType: !1006, size: 64, align: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !118, line: 144, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !989, line: 129, size: 768, align: 64, elements: !1010)
!1010 = !{!1011, !1012, !1024, !1029, !1033, !1037, !1041, !1045, !1046, !1047, !1048, !1053}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !989, line: 130, baseType: !51, size: 64, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !1009, file: !989, line: 131, baseType: !1013, size: 64, align: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016, !238, !14, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !989, line: 127, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !989, line: 124, size: 128, align: 64, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1018, file: !989, line: 125, baseType: !470, size: 64, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1018, file: !989, line: 126, baseType: !470, size: 64, align: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !118, line: 143, baseType: !988)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !1009, file: !989, line: 132, baseType: !1025, size: 64, align: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64, align: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!14, !1022, !528, !1028, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !1009, file: !989, line: 134, baseType: !1030, size: 64, align: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64, align: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!14, !238, !14, !1016, !1022}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !1009, file: !989, line: 136, baseType: !1034, size: 64, align: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64, align: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!14, !1022, !470, !470, !470, !470, !470, !470, !528, !487}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1009, file: !989, line: 140, baseType: !1038, size: 64, align: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64, align: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!14, !1022, !470, !470, !520, !520, !528, !487}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1009, file: !989, line: 142, baseType: !1042, size: 64, align: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64, align: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!14, !1022}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1009, file: !989, line: 143, baseType: !1042, size: 64, align: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !989, line: 144, baseType: !14, size: 32, align: 32, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1009, file: !989, line: 145, baseType: !17, size: 64, align: 64, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !1009, file: !989, line: 147, baseType: !1049, size: 64, align: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!14, !1022, !14, !238, !14, !1052, !476, !539}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !1009, file: !989, line: 152, baseType: !1042, size: 64, align: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !988, file: !989, line: 177, baseType: !407, size: 64, align: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !910, file: !356, line: 144, baseType: !1056, size: 64, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !910, file: !356, line: 147, baseType: !1058, size: 64, align: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !898, file: !356, line: 150, baseType: !14, size: 32, align: 32, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !898, file: !356, line: 151, baseType: !1061, size: 64, align: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64, align: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !6, line: 223, size: 256, align: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1062, file: !6, line: 223, baseType: !9, size: 256, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !853, file: !6, line: 250, baseType: !664, size: 64, align: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !853, file: !6, line: 251, baseType: !664, size: 64, align: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !853, file: !6, line: 252, baseType: !1068, size: 64, align: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64, align: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !6, line: 204, size: 256, align: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1069, file: !6, line: 204, baseType: !9, size: 256, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !853, file: !6, line: 253, baseType: !1073, size: 192, align: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !627, line: 269, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !627, line: 265, size: 192, align: 64, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1074, file: !627, line: 266, baseType: !223, size: 64, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1074, file: !627, line: 267, baseType: !154, size: 64, align: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1074, file: !627, line: 268, baseType: !14, size: 32, align: 32, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !848, file: !6, line: 272, baseType: !858, size: 64, align: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !848, file: !6, line: 273, baseType: !664, size: 64, align: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !848, file: !6, line: 274, baseType: !14, size: 32, align: 32, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !848, file: !6, line: 275, baseType: !14, size: 32, align: 32, offset: 224)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !848, file: !6, line: 276, baseType: !17, size: 64, align: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !848, file: !6, line: 277, baseType: !187, size: 128, align: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !848, file: !6, line: 279, baseType: !154, size: 64, align: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !848, file: !6, line: 280, baseType: !154, size: 64, align: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !848, file: !6, line: 281, baseType: !184, size: 64, align: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !848, file: !6, line: 282, baseType: !184, size: 64, align: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !848, file: !6, line: 283, baseType: !184, size: 64, align: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !848, file: !6, line: 284, baseType: !184, size: 64, align: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !848, file: !6, line: 285, baseType: !667, size: 64, align: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !848, file: !6, line: 286, baseType: !1093, size: 64, align: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !118, line: 186, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !1096, line: 262, size: 192, align: 64, elements: !1097)
!1096 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1097 = !{!1098, !1099, !1105}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1095, file: !1096, line: 263, baseType: !667, size: 64, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1095, file: !1096, line: 264, baseType: !1100, size: 64, align: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !1096, line: 209, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !1096, line: 220, size: 256, align: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1102, file: !1096, line: 220, baseType: !9, size: 256, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1095, file: !1096, line: 265, baseType: !658, size: 64, align: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !848, file: !6, line: 287, baseType: !1107, size: 64, align: 64, offset: 960)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64, align: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !118, line: 184, baseType: !1109)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !118, line: 184, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !848, file: !6, line: 288, baseType: !1111, size: 64, align: 64, offset: 1024)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64, align: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !1096, line: 259, size: 256, align: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1112, file: !1096, line: 259, baseType: !9, size: 256, align: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !848, file: !6, line: 289, baseType: !1116, size: 64, align: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64, align: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !848, file: !6, line: 290, baseType: !1118, size: 64, align: 64, offset: 1152)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !118, line: 189, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !1096, line: 332, size: 128, align: 64, elements: !1121)
!1121 = !{!1122, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !1120, file: !1096, line: 333, baseType: !1123, size: 64, align: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64, align: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !1096, line: 330, size: 256, align: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1124, file: !1096, line: 330, baseType: !9, size: 256, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !1120, file: !1096, line: 334, baseType: !1123, size: 64, align: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !848, file: !6, line: 296, baseType: !1129, size: 160, align: 8, offset: 1216)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 160, align: 8, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 20)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !848, file: !6, line: 298, baseType: !1133, size: 64, align: 64, offset: 1408)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !6, line: 268, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !6, line: 262, size: 320, align: 64, elements: !1136)
!1136 = !{!1137, !1142, !1143, !1144, !1145}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1135, file: !6, line: 263, baseType: !1138, size: 64, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64, align: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !627, line: 801, size: 256, align: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1139, file: !627, line: 801, baseType: !9, size: 256, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1135, file: !6, line: 264, baseType: !1138, size: 64, align: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1135, file: !6, line: 265, baseType: !697, size: 64, align: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1135, file: !6, line: 266, baseType: !667, size: 64, align: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1135, file: !6, line: 267, baseType: !1146, size: 64, align: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64, align: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !627, line: 170, size: 256, align: 64, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1147, file: !627, line: 170, baseType: !9, size: 256, align: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !828, file: !108, line: 543, baseType: !154, size: 64, align: 64, offset: 1472)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !828, file: !108, line: 544, baseType: !14, size: 32, align: 32, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !828, file: !108, line: 545, baseType: !154, size: 64, align: 64, offset: 1600)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !828, file: !108, line: 546, baseType: !154, size: 64, align: 64, offset: 1664)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !828, file: !108, line: 547, baseType: !70, size: 32, align: 32, offset: 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !828, file: !108, line: 548, baseType: !444, size: 64, align: 64, offset: 1792)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !828, file: !108, line: 549, baseType: !184, size: 64, align: 64, offset: 1856)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !828, file: !108, line: 551, baseType: !1158, size: 64, align: 64, offset: 1920)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64, align: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !108, line: 380, size: 256, align: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1159, file: !108, line: 380, baseType: !9, size: 256, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !828, file: !108, line: 552, baseType: !187, size: 128, align: 64, offset: 1984)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !828, file: !108, line: 557, baseType: !1164, size: 64, align: 64, offset: 2112)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !108, line: 557, baseType: !1164, size: 64, align: 64, offset: 2176)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !828, file: !108, line: 559, baseType: !17, size: 64, align: 64, offset: 2240)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !828, file: !108, line: 561, baseType: !215, size: 64, align: 64, offset: 2304)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !828, file: !108, line: 562, baseType: !223, size: 64, align: 64, offset: 2368)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !828, file: !108, line: 563, baseType: !215, size: 64, align: 64, offset: 2432)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !828, file: !108, line: 564, baseType: !223, size: 64, align: 64, offset: 2496)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !828, file: !108, line: 567, baseType: !223, size: 64, align: 64, offset: 2560)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !828, file: !108, line: 568, baseType: !215, size: 64, align: 64, offset: 2624)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !828, file: !108, line: 569, baseType: !154, size: 64, align: 64, offset: 2688)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !828, file: !108, line: 572, baseType: !17, size: 64, align: 64, offset: 2752)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !820, file: !771, line: 144, baseType: !39, size: 16, align: 16, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !770, file: !771, line: 222, baseType: !811, size: 704, align: 64, offset: 5952)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !770, file: !771, line: 223, baseType: !1178, size: 96, align: 32, offset: 6656)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !771, line: 162, size: 96, align: 32, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1178, file: !771, line: 164, baseType: !70, size: 32, align: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1178, file: !771, line: 166, baseType: !70, size: 32, align: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1178, file: !771, line: 168, baseType: !70, size: 32, align: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !770, file: !771, line: 227, baseType: !1184, size: 128, align: 64, offset: 6784)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1185, line: 30, size: 128, align: 64, elements: !1186)
!1185 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1186 = !{!1187, !1190}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1184, file: !1185, line: 32, baseType: !1188, size: 64, align: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1189, line: 139, baseType: !154)
!1189 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1184, file: !1185, line: 33, baseType: !1191, size: 64, align: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !1189, line: 141, baseType: !154)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !770, file: !771, line: 229, baseType: !39, size: 16, align: 16, offset: 6912)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !770, file: !771, line: 234, baseType: !336, size: 16, align: 8, offset: 6928)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !770, file: !771, line: 235, baseType: !70, size: 32, align: 32, offset: 6944)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !770, file: !771, line: 236, baseType: !1196, size: 96, align: 8, offset: 6976)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 96, align: 8, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 12)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !770, file: !771, line: 237, baseType: !70, size: 32, align: 32, offset: 7072)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !770, file: !771, line: 238, baseType: !70, size: 32, align: 32, offset: 7104)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !770, file: !771, line: 243, baseType: !70, size: 32, align: 32, offset: 7136)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !119, file: !108, line: 1494, baseType: !14, size: 32, align: 32, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !119, file: !108, line: 1497, baseType: !1204, size: 64, align: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64, align: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !14, !14, !14, !25, !215, !116, !31}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !119, file: !108, line: 1499, baseType: !31, size: 64, align: 64, offset: 1280)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !119, file: !108, line: 1500, baseType: !14, size: 32, align: 32, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !119, file: !108, line: 1501, baseType: !1210, size: 64, align: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1212, line: 177, baseType: !1213)
!1212 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1212, line: 167, size: 512, align: 64, elements: !1214)
!1214 = !{!1215, !1216, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !1212, line: 168, baseType: !17, size: 64, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1213, file: !1212, line: 169, baseType: !1217, size: 64, align: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1218, line: 75, baseType: !1188)
!1218 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1213, file: !1212, line: 170, baseType: !184, size: 64, align: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !1212, line: 171, baseType: !184, size: 64, align: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1213, file: !1212, line: 172, baseType: !14, size: 32, align: 32, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1213, file: !1212, line: 173, baseType: !14, size: 32, align: 32, offset: 288)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1213, file: !1212, line: 174, baseType: !14, size: 32, align: 32, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1213, file: !1212, line: 175, baseType: !1138, size: 64, align: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1213, file: !1212, line: 176, baseType: !1226, size: 64, align: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64, align: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1212, line: 159, baseType: !1228)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1212, line: 159, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !119, file: !108, line: 1507, baseType: !1158, size: 64, align: 64, offset: 1472)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !119, file: !108, line: 1508, baseType: !1158, size: 64, align: 64, offset: 1536)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !119, file: !108, line: 1513, baseType: !14, size: 32, align: 32, offset: 1600)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !119, file: !108, line: 1514, baseType: !593, size: 64, align: 64, offset: 1664)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !119, file: !108, line: 1515, baseType: !353, size: 64, align: 64, offset: 1728)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !119, file: !108, line: 1517, baseType: !734, size: 64, align: 64, offset: 1792)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !119, file: !108, line: 1521, baseType: !593, size: 64, align: 64, offset: 1856)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !119, file: !108, line: 1522, baseType: !353, size: 64, align: 64, offset: 1920)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !119, file: !108, line: 1524, baseType: !734, size: 64, align: 64, offset: 1984)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !119, file: !108, line: 1531, baseType: !1239, size: 64, align: 64, offset: 2048)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !108, line: 1035, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !119, file: !108, line: 1536, baseType: !70, size: 32, align: 32, offset: 2112)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !119, file: !108, line: 1537, baseType: !260, size: 256, align: 8, offset: 2144)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !119, file: !108, line: 1539, baseType: !826, size: 64, align: 64, offset: 2432)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !119, file: !108, line: 1541, baseType: !1245, size: 64, align: 64, offset: 2496)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !108, line: 905, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64, align: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!14, !1249, !223, !391}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64, align: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !119, file: !108, line: 1547, baseType: !14, size: 32, align: 32, offset: 2560)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !119, file: !108, line: 1549, baseType: !1253, size: 64, align: 64, offset: 2624)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!14, !14, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !118, line: 162, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1212, line: 236, size: 1984, align: 64, elements: !1259)
!1259 = !{!1260, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1258, file: !1212, line: 237, baseType: !1261, size: 64, align: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !118, line: 161, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1212, line: 186, size: 1152, align: 64, elements: !1264)
!1264 = !{!1265, !1266, !1271, !1276, !1277, !1281, !1282, !1287, !1291, !1292, !1359, !1363, !1367, !1371, !1379, !1380, !1381}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1263, file: !1212, line: 188, baseType: !14, size: 32, align: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1263, file: !1212, line: 189, baseType: !1267, size: 64, align: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64, align: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1212, line: 137, size: 256, align: 64, elements: !1269)
!1269 = !{!1270}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1268, file: !1212, line: 137, baseType: !9, size: 256, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1263, file: !1212, line: 191, baseType: !1272, size: 64, align: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64, align: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1212, line: 136, size: 256, align: 64, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1273, file: !1212, line: 136, baseType: !9, size: 256, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1263, file: !1212, line: 192, baseType: !1210, size: 64, align: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1263, file: !1212, line: 195, baseType: !1278, size: 64, align: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64, align: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!14, !1256}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1263, file: !1212, line: 197, baseType: !1253, size: 64, align: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1263, file: !1212, line: 199, baseType: !1283, size: 64, align: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64, align: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!14, !1286, !1256, !846}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1263, file: !1212, line: 201, baseType: !1288, size: 64, align: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64, align: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!14, !1256, !846, !846}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1263, file: !1212, line: 203, baseType: !1278, size: 64, align: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1263, file: !1212, line: 205, baseType: !1293, size: 64, align: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64, align: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!14, !1256, !1296, !846}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64, align: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !118, line: 156, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !6, line: 452, size: 960, align: 64, elements: !1300)
!1300 = !{!1301, !1318, !1319, !1320, !1321, !1322, !1323, !1345, !1346, !1347, !1348, !1349, !1350, !1353, !1358}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1299, file: !6, line: 454, baseType: !1302, size: 64, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !6, line: 450, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !6, line: 441, size: 640, align: 64, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1316, !1317}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1304, file: !6, line: 442, baseType: !658, size: 64, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1304, file: !6, line: 443, baseType: !858, size: 64, align: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1304, file: !6, line: 444, baseType: !865, size: 64, align: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1304, file: !6, line: 445, baseType: !884, size: 64, align: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1304, file: !6, line: 446, baseType: !884, size: 64, align: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1304, file: !6, line: 447, baseType: !1312, size: 64, align: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64, align: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !6, line: 438, size: 256, align: 64, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1313, file: !6, line: 438, baseType: !9, size: 256, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1304, file: !6, line: 448, baseType: !1068, size: 64, align: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1304, file: !6, line: 449, baseType: !1073, size: 192, align: 64, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1299, file: !6, line: 455, baseType: !858, size: 64, align: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1299, file: !6, line: 456, baseType: !664, size: 64, align: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1299, file: !6, line: 457, baseType: !14, size: 32, align: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !6, line: 458, baseType: !14, size: 32, align: 32, offset: 224)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1299, file: !6, line: 460, baseType: !1093, size: 64, align: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1299, file: !6, line: 461, baseType: !1324, size: 64, align: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !118, line: 188, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !1096, line: 356, size: 256, align: 64, elements: !1327)
!1327 = !{!1328, !1340, !1341, !1342, !1343, !1344}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !1326, file: !1096, line: 357, baseType: !1329, size: 64, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !1096, line: 234, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !1096, line: 226, size: 192, align: 64, elements: !1332)
!1332 = !{!1333, !1334, !1339}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1096, line: 227, baseType: !14, size: 32, align: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1331, file: !1096, line: 231, baseType: !1335, size: 64, align: 64, offset: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !1096, line: 228, size: 64, align: 64, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1335, file: !1096, line: 229, baseType: !1100, size: 64, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !1335, file: !1096, line: 230, baseType: !870, size: 64, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !1331, file: !1096, line: 233, baseType: !865, size: 64, align: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !1326, file: !1096, line: 358, baseType: !14, size: 32, align: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !1326, file: !1096, line: 359, baseType: !14, size: 32, align: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !1326, file: !1096, line: 360, baseType: !664, size: 64, align: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !1326, file: !1096, line: 361, baseType: !14, size: 32, align: 32, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !1326, file: !1096, line: 362, baseType: !14, size: 32, align: 32, offset: 224)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1299, file: !6, line: 463, baseType: !14, size: 32, align: 32, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1299, file: !6, line: 464, baseType: !14, size: 32, align: 32, offset: 416)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1299, file: !6, line: 466, baseType: !658, size: 64, align: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1299, file: !6, line: 467, baseType: !658, size: 64, align: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1299, file: !6, line: 469, baseType: !1129, size: 160, align: 8, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1299, file: !6, line: 471, baseType: !1351, size: 64, align: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64, align: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !6, line: 471, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1299, file: !6, line: 472, baseType: !1354, size: 64, align: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !118, line: 157, baseType: !1357)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !118, line: 157, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1299, file: !6, line: 473, baseType: !31, size: 64, align: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1263, file: !1212, line: 207, baseType: !1360, size: 64, align: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64, align: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!14, !1256, !1297}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1263, file: !1212, line: 209, baseType: !1364, size: 64, align: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!14, !1256, !1297, !846}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1263, file: !1212, line: 210, baseType: !1368, size: 64, align: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!4, !1256, !865}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1263, file: !1212, line: 211, baseType: !1372, size: 64, align: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64, align: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1375, !1256, !865}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64, align: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !6, line: 476, size: 256, align: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1376, file: !6, line: 476, baseType: !9, size: 256, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1263, file: !1212, line: 212, baseType: !1278, size: 64, align: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1263, file: !1212, line: 213, baseType: !187, size: 128, align: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1263, file: !1212, line: 214, baseType: !14, size: 32, align: 32, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1258, file: !1212, line: 239, baseType: !14, size: 32, align: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1258, file: !1212, line: 242, baseType: !846, size: 64, align: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1258, file: !1212, line: 244, baseType: !4, size: 64, align: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1258, file: !1212, line: 246, baseType: !1375, size: 64, align: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1258, file: !1212, line: 247, baseType: !1210, size: 64, align: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1258, file: !1212, line: 249, baseType: !31, size: 64, align: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1258, file: !1212, line: 252, baseType: !1278, size: 64, align: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1258, file: !1212, line: 254, baseType: !1253, size: 64, align: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1258, file: !1212, line: 256, baseType: !1283, size: 64, align: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1258, file: !1212, line: 258, baseType: !1288, size: 64, align: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1258, file: !1212, line: 260, baseType: !1278, size: 64, align: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1258, file: !1212, line: 262, baseType: !1293, size: 64, align: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1258, file: !1212, line: 264, baseType: !1360, size: 64, align: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1258, file: !1212, line: 266, baseType: !1364, size: 64, align: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1258, file: !1212, line: 267, baseType: !1278, size: 64, align: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1258, file: !1212, line: 268, baseType: !1368, size: 64, align: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1258, file: !1212, line: 269, baseType: !1372, size: 64, align: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1258, file: !1212, line: 270, baseType: !1278, size: 64, align: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1258, file: !1212, line: 273, baseType: !14, size: 32, align: 32, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1258, file: !1212, line: 275, baseType: !14, size: 32, align: 32, offset: 1248)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1258, file: !1212, line: 277, baseType: !4, size: 64, align: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1258, file: !1212, line: 279, baseType: !1404, size: 64, align: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !118, line: 183, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !118, line: 183, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1258, file: !1212, line: 281, baseType: !14, size: 32, align: 32, offset: 1408)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1258, file: !1212, line: 283, baseType: !14, size: 32, align: 32, offset: 1440)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1258, file: !1212, line: 284, baseType: !14, size: 32, align: 32, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1258, file: !1212, line: 285, baseType: !846, size: 64, align: 64, offset: 1536)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1258, file: !1212, line: 287, baseType: !846, size: 64, align: 64, offset: 1600)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1258, file: !1212, line: 289, baseType: !1297, size: 64, align: 64, offset: 1664)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1258, file: !1212, line: 291, baseType: !14, size: 32, align: 32, offset: 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1258, file: !1212, line: 293, baseType: !70, size: 32, align: 32, offset: 1760)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1258, file: !1212, line: 295, baseType: !1256, size: 64, align: 64, offset: 1792)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1258, file: !1212, line: 296, baseType: !187, size: 128, align: 64, offset: 1856)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !119, file: !108, line: 1551, baseType: !1418, size: 64, align: 64, offset: 2688)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64, align: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1249, !14, !14}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !119, file: !108, line: 1553, baseType: !14, size: 32, align: 32, offset: 2752)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !119, file: !108, line: 1555, baseType: !14, size: 32, align: 32, offset: 2784)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !119, file: !108, line: 1561, baseType: !1424, size: 64, align: 64, offset: 2816)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64, align: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!70, !116, !51, !17, !70, !223, !70}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !119, file: !108, line: 1566, baseType: !1428, size: 64, align: 64, offset: 2880)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64, align: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!70, !116, !51, !223, !70}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !119, file: !108, line: 1570, baseType: !1432, size: 64, align: 64, offset: 2944)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !118, line: 179, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !108, line: 925, size: 6400, align: 64, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1441, !1446, !1447, !1448, !1449, !1450, !1451, !1456, !1461, !1465, !1479, !1480, !1484, !1485, !1491, !1492, !1497, !1501, !1505, !1506, !1507, !1508, !1509, !1510, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1537, !1538, !1539, !1540, !1541, !1556, !1560, !1561, !1565, !1566, !1567, !1568, !1569, !1570, !1573, !1574, !1597, !1602, !1603, !1608, !1609, !1614, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1434, file: !108, line: 926, baseType: !105, size: 64, align: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !1434, file: !108, line: 927, baseType: !1158, size: 64, align: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !1434, file: !108, line: 929, baseType: !1158, size: 64, align: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !1434, file: !108, line: 930, baseType: !1440, size: 64, align: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !1434, file: !108, line: 931, baseType: !1442, size: 64, align: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, align: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !108, line: 923, size: 32, align: 32, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1443, file: !108, line: 923, baseType: !14, size: 32, align: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !1434, file: !108, line: 936, baseType: !184, size: 64, align: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !1434, file: !108, line: 937, baseType: !1164, size: 64, align: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !1434, file: !108, line: 938, baseType: !1164, size: 64, align: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !1434, file: !108, line: 944, baseType: !14, size: 32, align: 32, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !1434, file: !108, line: 950, baseType: !154, size: 64, align: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !1434, file: !108, line: 960, baseType: !1452, size: 64, align: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64, align: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!14, !1455, !826}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !1434, file: !108, line: 961, baseType: !1457, size: 64, align: 64, offset: 704)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64, align: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1460, !826}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !1434, file: !108, line: 962, baseType: !1462, size: 64, align: 64, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, align: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!826, !1455, !223, !14, !1052}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1434, file: !108, line: 980, baseType: !1466, size: 352, align: 32, offset: 832)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !108, line: 964, size: 352, align: 32, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1466, file: !108, line: 965, baseType: !14, size: 32, align: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1466, file: !108, line: 966, baseType: !14, size: 32, align: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1466, file: !108, line: 967, baseType: !14, size: 32, align: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1466, file: !108, line: 968, baseType: !14, size: 32, align: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1466, file: !108, line: 969, baseType: !14, size: 32, align: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1466, file: !108, line: 970, baseType: !14, size: 32, align: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1466, file: !108, line: 971, baseType: !14, size: 32, align: 32, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1466, file: !108, line: 972, baseType: !14, size: 32, align: 32, offset: 224)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1466, file: !108, line: 973, baseType: !14, size: 32, align: 32, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1466, file: !108, line: 974, baseType: !14, size: 32, align: 32, offset: 288)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1466, file: !108, line: 975, baseType: !14, size: 32, align: 32, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1434, file: !108, line: 982, baseType: !14, size: 32, align: 32, offset: 1184)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !1434, file: !108, line: 985, baseType: !1481, size: 64, align: 64, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64, align: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!14, !1256, !31}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !1434, file: !108, line: 986, baseType: !31, size: 64, align: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !1434, file: !108, line: 993, baseType: !1486, size: 64, align: 64, offset: 1344)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64, align: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1488, line: 389, baseType: !1489)
!1488 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!14, !17, !14, !14, !31}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !1434, file: !108, line: 996, baseType: !31, size: 64, align: 64, offset: 1408)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !1434, file: !108, line: 999, baseType: !1493, size: 64, align: 64, offset: 1472)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64, align: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!14, !116, !1286, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !1434, file: !108, line: 1002, baseType: !1498, size: 64, align: 64, offset: 1536)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64, align: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!14, !116, !223, !391}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !1434, file: !108, line: 1006, baseType: !1502, size: 64, align: 64, offset: 1600)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64, align: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!14, !116, !223, !70}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1434, file: !108, line: 1009, baseType: !187, size: 128, align: 64, offset: 1664)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !1434, file: !108, line: 1011, baseType: !359, size: 64, align: 64, offset: 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !1434, file: !108, line: 1012, baseType: !359, size: 64, align: 64, offset: 1856)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !1434, file: !108, line: 1013, baseType: !359, size: 64, align: 64, offset: 1920)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !1434, file: !108, line: 1015, baseType: !4, size: 64, align: 64, offset: 1984)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !1434, file: !108, line: 1016, baseType: !1511, size: 64, align: 64, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64, align: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !108, line: 922, size: 256, align: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1512, file: !108, line: 922, baseType: !9, size: 256, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !1434, file: !108, line: 1021, baseType: !1418, size: 64, align: 64, offset: 2112)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !1434, file: !108, line: 1024, baseType: !571, size: 64, align: 64, offset: 2176)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1434, file: !108, line: 1031, baseType: !184, size: 64, align: 64, offset: 2240)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1434, file: !108, line: 1032, baseType: !184, size: 64, align: 64, offset: 2304)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !1434, file: !108, line: 1033, baseType: !154, size: 64, align: 64, offset: 2368)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1434, file: !108, line: 1035, baseType: !1239, size: 64, align: 64, offset: 2432)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1434, file: !108, line: 1036, baseType: !14, size: 32, align: 32, offset: 2496)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !1434, file: !108, line: 1039, baseType: !1204, size: 64, align: 64, offset: 2560)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !1434, file: !108, line: 1041, baseType: !31, size: 64, align: 64, offset: 2624)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !1434, file: !108, line: 1043, baseType: !14, size: 32, align: 32, offset: 2688)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1434, file: !108, line: 1044, baseType: !70, size: 32, align: 32, offset: 2720)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1434, file: !108, line: 1045, baseType: !260, size: 256, align: 8, offset: 2752)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !1434, file: !108, line: 1047, baseType: !1253, size: 64, align: 64, offset: 3008)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !1434, file: !108, line: 1050, baseType: !1245, size: 64, align: 64, offset: 3072)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1434, file: !108, line: 1052, baseType: !1210, size: 64, align: 64, offset: 3136)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !1434, file: !108, line: 1059, baseType: !14, size: 32, align: 32, offset: 3200)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !1434, file: !108, line: 1065, baseType: !70, size: 32, align: 32, offset: 3232)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !1434, file: !108, line: 1071, baseType: !407, size: 64, align: 64, offset: 3264)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !1434, file: !108, line: 1076, baseType: !1534, size: 64, align: 64, offset: 3328)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64, align: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!14, !116, !1052, !31}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !1434, file: !108, line: 1077, baseType: !31, size: 64, align: 64, offset: 3392)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !1434, file: !108, line: 1079, baseType: !265, size: 128, align: 8, offset: 3456)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !1434, file: !108, line: 1080, baseType: !265, size: 128, align: 8, offset: 3584)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !1434, file: !108, line: 1081, baseType: !265, size: 128, align: 8, offset: 3712)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !1434, file: !108, line: 1083, baseType: !1542, size: 64, align: 64, offset: 3840)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64, align: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!14, !116, !223, !223, !593, !1545, !14}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1547, line: 82, baseType: !1548)
!1547 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1547, line: 75, size: 2304, align: 64, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1548, file: !1547, line: 76, baseType: !359, size: 64, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1548, file: !1547, line: 77, baseType: !354, size: 384, align: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1548, file: !1547, line: 78, baseType: !354, size: 384, align: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1548, file: !1547, line: 79, baseType: !354, size: 384, align: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1548, file: !1547, line: 80, baseType: !70, size: 32, align: 32, offset: 1216)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1548, file: !1547, line: 81, baseType: !434, size: 1024, align: 8, offset: 1248)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !1434, file: !108, line: 1090, baseType: !1557, size: 64, align: 64, offset: 3904)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64, align: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!14, !116, !31}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !1434, file: !108, line: 1091, baseType: !31, size: 64, align: 64, offset: 3968)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !1434, file: !108, line: 1094, baseType: !1562, size: 64, align: 64, offset: 4032)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64, align: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!14, !116, !31, !215, !31}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !1434, file: !108, line: 1096, baseType: !31, size: 64, align: 64, offset: 4096)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1434, file: !108, line: 1100, baseType: !17, size: 64, align: 64, offset: 4160)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !1434, file: !108, line: 1101, baseType: !1424, size: 64, align: 64, offset: 4224)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !1434, file: !108, line: 1106, baseType: !1428, size: 64, align: 64, offset: 4288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !1434, file: !108, line: 1113, baseType: !70, size: 32, align: 32, offset: 4352)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !1434, file: !108, line: 1114, baseType: !1571, size: 64, align: 64, offset: 4416)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64, align: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !108, line: 1114, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !1434, file: !108, line: 1115, baseType: !1571, size: 64, align: 64, offset: 4480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !1434, file: !108, line: 1118, baseType: !1575, size: 1024, align: 64, offset: 4544)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !108, line: 864, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !108, line: 849, size: 1024, align: 64, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1576, file: !108, line: 851, baseType: !31, size: 64, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1576, file: !108, line: 853, baseType: !1534, size: 64, align: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1576, file: !108, line: 855, baseType: !1557, size: 64, align: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1576, file: !108, line: 857, baseType: !1582, size: 64, align: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64, align: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!17, !116, !31}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1576, file: !108, line: 858, baseType: !17, size: 64, align: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1576, file: !108, line: 859, baseType: !470, size: 64, align: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1576, file: !108, line: 859, baseType: !470, size: 64, align: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1576, file: !108, line: 859, baseType: !470, size: 64, align: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1576, file: !108, line: 859, baseType: !470, size: 64, align: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1576, file: !108, line: 859, baseType: !470, size: 64, align: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1576, file: !108, line: 860, baseType: !470, size: 64, align: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1576, file: !108, line: 860, baseType: !470, size: 64, align: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1576, file: !108, line: 860, baseType: !470, size: 64, align: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1576, file: !108, line: 861, baseType: !17, size: 64, align: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1576, file: !108, line: 862, baseType: !14, size: 32, align: 32, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1576, file: !108, line: 863, baseType: !184, size: 64, align: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !1434, file: !108, line: 1131, baseType: !1598, size: 64, align: 64, offset: 5568)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64, align: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!14, !116, !1601, !391, !31}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !1434, file: !108, line: 1133, baseType: !31, size: 64, align: 64, offset: 5632)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !1434, file: !108, line: 1138, baseType: !1604, size: 64, align: 64, offset: 5696)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64, align: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!14, !116, !1607, !223, !238, !70, !31}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !1434, file: !108, line: 1142, baseType: !31, size: 64, align: 64, offset: 5760)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !1434, file: !108, line: 1145, baseType: !1610, size: 64, align: 64, offset: 5824)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64, align: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !108, line: 388, size: 256, align: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1611, file: !108, line: 388, baseType: !9, size: 256, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !1434, file: !108, line: 1162, baseType: !1615, size: 64, align: 64, offset: 5888)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64, align: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!14, !116, !1601, !223, !238, !70, !31}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !1434, file: !108, line: 1167, baseType: !31, size: 64, align: 64, offset: 5952)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !1434, file: !108, line: 1173, baseType: !223, size: 64, align: 64, offset: 6016)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !1434, file: !108, line: 1174, baseType: !70, size: 32, align: 32, offset: 6080)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1434, file: !108, line: 1178, baseType: !215, size: 64, align: 64, offset: 6144)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1434, file: !108, line: 1179, baseType: !223, size: 64, align: 64, offset: 6208)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1434, file: !108, line: 1180, baseType: !215, size: 64, align: 64, offset: 6272)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1434, file: !108, line: 1181, baseType: !223, size: 64, align: 64, offset: 6336)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !119, file: !108, line: 1575, baseType: !14, size: 32, align: 32, offset: 3008)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !119, file: !108, line: 1577, baseType: !154, size: 64, align: 64, offset: 3072)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !119, file: !108, line: 1578, baseType: !187, size: 128, align: 64, offset: 3136)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !119, file: !108, line: 1580, baseType: !571, size: 64, align: 64, offset: 3264)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !119, file: !108, line: 1581, baseType: !14, size: 32, align: 32, offset: 3328)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !119, file: !108, line: 1583, baseType: !184, size: 64, align: 64, offset: 3392)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !119, file: !108, line: 1585, baseType: !184, size: 64, align: 64, offset: 3456)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !119, file: !108, line: 1586, baseType: !154, size: 64, align: 64, offset: 3520)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !119, file: !108, line: 1587, baseType: !14, size: 32, align: 32, offset: 3584)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !119, file: !108, line: 1589, baseType: !14, size: 32, align: 32, offset: 3616)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !119, file: !108, line: 1590, baseType: !70, size: 32, align: 32, offset: 3648)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !119, file: !108, line: 1593, baseType: !1637, size: 64, align: 64, offset: 3712)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, align: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !116, !14, !14, !223, !14, !31}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !119, file: !108, line: 1595, baseType: !31, size: 64, align: 64, offset: 3776)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !119, file: !108, line: 1596, baseType: !17, size: 64, align: 64, offset: 3840)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !119, file: !108, line: 1603, baseType: !14, size: 32, align: 32, offset: 3904)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !119, file: !108, line: 1606, baseType: !14, size: 32, align: 32, offset: 3936)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !119, file: !108, line: 1608, baseType: !14, size: 32, align: 32, offset: 3968)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !119, file: !108, line: 1610, baseType: !1646, size: 64, align: 64, offset: 4032)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64, align: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !108, line: 1610, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !119, file: !108, line: 1611, baseType: !1649, size: 64, align: 64, offset: 4096)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64, align: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !6, line: 202, baseType: !1069)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !119, file: !108, line: 1613, baseType: !223, size: 64, align: 64, offset: 4160)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !119, file: !108, line: 1614, baseType: !14, size: 32, align: 32, offset: 4224)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !119, file: !108, line: 1616, baseType: !14, size: 32, align: 32, offset: 4256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !119, file: !108, line: 1618, baseType: !215, size: 64, align: 64, offset: 4288)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !119, file: !108, line: 1620, baseType: !223, size: 64, align: 64, offset: 4352)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !119, file: !108, line: 1621, baseType: !215, size: 64, align: 64, offset: 4416)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !119, file: !108, line: 1623, baseType: !223, size: 64, align: 64, offset: 4480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !119, file: !108, line: 1629, baseType: !31, size: 64, align: 64, offset: 4544)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !119, file: !108, line: 1630, baseType: !215, size: 64, align: 64, offset: 4608)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !119, file: !108, line: 1632, baseType: !1661, size: 64, align: 64, offset: 4672)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !108, line: 373, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1664, line: 802, size: 128, align: 64, elements: !1665)
!1664 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1663, file: !1664, line: 803, baseType: !39, size: 16, align: 16)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1663, file: !1664, line: 804, baseType: !31, size: 64, align: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !119, file: !108, line: 1634, baseType: !1669, size: 64, align: 64, offset: 4736)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !108, line: 390, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!14, !116, !238, !14, !31}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !119, file: !108, line: 1635, baseType: !31, size: 64, align: 64, offset: 4800)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !119, file: !108, line: 1637, baseType: !1675, size: 64, align: 64, offset: 4864)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !108, line: 393, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64, align: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!14, !116, !31, !1052, !1158, !1679, !31}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !119, file: !108, line: 1638, baseType: !31, size: 64, align: 64, offset: 4928)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !119, file: !108, line: 1639, baseType: !1432, size: 64, align: 64, offset: 4992)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !119, file: !108, line: 1648, baseType: !223, size: 64, align: 64, offset: 5056)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !119, file: !108, line: 1649, baseType: !224, size: 8, align: 8, offset: 5120)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !119, file: !108, line: 1653, baseType: !1610, size: 64, align: 64, offset: 5184)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !119, file: !108, line: 1655, baseType: !1687, size: 64, align: 64, offset: 5248)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !108, line: 386, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !108, line: 383, size: 128, align: 64, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !108, line: 384, baseType: !51, size: 64, align: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1689, file: !108, line: 385, baseType: !184, size: 64, align: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !119, file: !108, line: 1662, baseType: !70, size: 32, align: 32, offset: 5312)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !119, file: !108, line: 1664, baseType: !70, size: 32, align: 32, offset: 5344)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !119, file: !108, line: 1666, baseType: !70, size: 32, align: 32, offset: 5376)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !119, file: !108, line: 1675, baseType: !14, size: 32, align: 32, offset: 5408)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !119, file: !108, line: 1678, baseType: !1575, size: 1024, align: 64, offset: 5440)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !119, file: !108, line: 1685, baseType: !223, size: 64, align: 64, offset: 6464)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !119, file: !108, line: 1686, baseType: !70, size: 32, align: 32, offset: 6528)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !109, file: !108, line: 441, baseType: !1701, size: 64, align: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64, align: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !116}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !109, file: !108, line: 442, baseType: !1701, size: 64, align: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !109, file: !108, line: 443, baseType: !113, size: 64, align: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !109, file: !108, line: 444, baseType: !113, size: 64, align: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !109, file: !108, line: 445, baseType: !1708, size: 64, align: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64, align: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!14, !116, !31, !14}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !109, file: !108, line: 446, baseType: !1708, size: 64, align: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !109, file: !108, line: 447, baseType: !1713, size: 64, align: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64, align: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!14, !116, !25, !14}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !109, file: !108, line: 448, baseType: !113, size: 64, align: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !109, file: !108, line: 449, baseType: !113, size: 64, align: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !109, file: !108, line: 450, baseType: !113, size: 64, align: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !109, file: !108, line: 451, baseType: !1720, size: 64, align: 64, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64, align: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!154, !116, !14, !14, !14, !154, !1052}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !109, file: !108, line: 453, baseType: !1724, size: 64, align: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64, align: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!14, !116, !14, !223, !14, !14}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !109, file: !108, line: 455, baseType: !1728, size: 64, align: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64, align: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!14, !116, !14, !25, !14}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !109, file: !108, line: 456, baseType: !113, size: 64, align: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !109, file: !108, line: 457, baseType: !1733, size: 64, align: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64, align: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!154, !116, !14, !154, !31}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !109, file: !108, line: 458, baseType: !1737, size: 64, align: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64, align: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!154, !1432, !14, !154, !31}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !109, file: !108, line: 459, baseType: !1741, size: 64, align: 64, offset: 1152)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64, align: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!444, !238}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !109, file: !108, line: 460, baseType: !1745, size: 64, align: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64, align: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!14, !444, !223}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !109, file: !108, line: 461, baseType: !1749, size: 64, align: 64, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64, align: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!14, !1249}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !109, file: !108, line: 462, baseType: !1753, size: 64, align: 64, offset: 1344)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64, align: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!14}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !109, file: !108, line: 463, baseType: !1757, size: 64, align: 64, offset: 1408)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64, align: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!444, !70}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !109, file: !108, line: 464, baseType: !1761, size: 64, align: 64, offset: 1472)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64, align: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1764, !14}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !109, file: !108, line: 465, baseType: !754, size: 64, align: 64, offset: 1536)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !109, file: !108, line: 466, baseType: !1768, size: 64, align: 64, offset: 1600)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64, align: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !108, line: 466, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !109, file: !108, line: 467, baseType: !1753, size: 64, align: 64, offset: 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !109, file: !108, line: 468, baseType: !1772, size: 64, align: 64, offset: 1728)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64, align: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!154, !116, !14, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64, align: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !109, file: !108, line: 469, baseType: !1779, size: 64, align: 64, offset: 1792)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64, align: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!154, !1432, !14, !1775}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cacrt", scope: !67, file: !66, line: 110, baseType: !846, size: 64, align: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cakey", scope: !67, file: !66, line: 111, baseType: !896, size: 64, align: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !67, file: !66, line: 112, baseType: !896, size: 64, align: 64, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !67, file: !66, line: 113, baseType: !4, size: 64, align: 64, offset: 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "clientcrt", scope: !67, file: !66, line: 114, baseType: !846, size: 64, align: 64, offset: 1472)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "clientkey", scope: !67, file: !66, line: 115, baseType: !896, size: 64, align: 64, offset: 1536)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !67, file: !66, line: 117, baseType: !462, size: 64, align: 64, offset: 1600)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ecdhcurve", scope: !67, file: !66, line: 120, baseType: !17, size: 64, align: 64, offset: 1664)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !67, file: !66, line: 122, baseType: !1791, size: 64, align: 64, offset: 1728)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64, align: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxyspec_t", file: !66, line: 54, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxyspec", file: !66, line: 37, size: 2496, align: 64, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1808, !1811, !1812, !1813, !1814, !1815, !1822, !1827}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1793, file: !66, line: 38, baseType: !70, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "http", scope: !1793, file: !66, line: 39, baseType: !70, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1793, file: !66, line: 40, baseType: !70, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !1793, file: !66, line: 41, baseType: !70, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addr", scope: !1793, file: !66, line: 42, baseType: !1800, size: 1024, align: 64, offset: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !34, line: 166, size: 1024, align: 64, elements: !1801)
!1801 = !{!1802, !1803, !1807}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1800, file: !34, line: 168, baseType: !37, size: 16, align: 16)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1800, file: !34, line: 169, baseType: !1804, size: 944, align: 8, offset: 16)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 944, align: 8, elements: !1805)
!1805 = !{!1806}
!1806 = !DISubrange(count: 118)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1800, file: !34, line: 170, baseType: !184, size: 64, align: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addrlen", scope: !1793, file: !66, line: 43, baseType: !1809, size: 32, align: 32, offset: 1088)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !34, line: 33, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !1189, line: 189, baseType: !70)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addr", scope: !1793, file: !66, line: 47, baseType: !1800, size: 1024, align: 64, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addrlen", scope: !1793, file: !66, line: 48, baseType: !1809, size: 32, align: 32, offset: 2176)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sni_port", scope: !1793, file: !66, line: 49, baseType: !39, size: 16, align: 16, offset: 2208)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "natengine", scope: !1793, file: !66, line: 50, baseType: !17, size: 64, align: 64, offset: 2240)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "natlookup", scope: !1793, file: !66, line: 51, baseType: !1816, size: 64, align: 64, offset: 2304)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !1817, line: 39, baseType: !1818)
!1817 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64, align: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!14, !32, !1821, !14, !32, !1809}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64, align: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "natsocket", scope: !1793, file: !66, line: 52, baseType: !1823, size: 64, align: 64, offset: 2368)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !1817, line: 41, baseType: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64, align: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!14, !14}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1793, file: !66, line: 53, baseType: !1828, size: 64, align: 64, offset: 2432)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "crlurl", scope: !67, file: !66, line: 123, baseType: !17, size: 64, align: 64, offset: 1792)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "verify_peer", scope: !67, file: !66, line: 124, baseType: !70, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "allow_wrong_host", scope: !67, file: !66, line: 125, baseType: !70, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!1832 = !DILocalVariable(name: "opts", scope: !61, file: !48, line: 58, type: !64)
!1833 = !DILocation(line: 58, column: 10, scope: !61)
!1834 = !DILocation(line: 60, column: 9, scope: !61)
!1835 = !DILocation(line: 60, column: 7, scope: !61)
!1836 = !DILocation(line: 61, column: 9, scope: !61)
!1837 = !DILocation(line: 61, column: 2, scope: !61)
!1838 = !DILocation(line: 63, column: 2, scope: !61)
!1839 = !DILocation(line: 63, column: 8, scope: !61)
!1840 = !DILocation(line: 63, column: 16, scope: !61)
!1841 = !DILocation(line: 64, column: 40, scope: !61)
!1842 = !DILocation(line: 64, column: 16, scope: !61)
!1843 = !DILocation(line: 64, column: 2, scope: !61)
!1844 = !DILocation(line: 64, column: 8, scope: !61)
!1845 = !DILocation(line: 64, column: 14, scope: !61)
!1846 = !DILocation(line: 65, column: 2, scope: !61)
!1847 = !DILocation(line: 65, column: 8, scope: !61)
!1848 = !DILocation(line: 65, column: 18, scope: !61)
!1849 = !DILocation(line: 66, column: 2, scope: !61)
!1850 = !DILocation(line: 66, column: 8, scope: !61)
!1851 = !DILocation(line: 66, column: 25, scope: !61)
!1852 = !DILocation(line: 68, column: 9, scope: !61)
!1853 = !DILocation(line: 68, column: 2, scope: !61)
!1854 = distinct !DISubprogram(name: "opts_free", scope: !48, file: !48, line: 72, type: !1855, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !64}
!1857 = !DILocalVariable(name: "opts", arg: 1, scope: !1854, file: !48, line: 72, type: !64)
!1858 = !DILocation(line: 72, column: 19, scope: !1854)
!1859 = !DILocation(line: 74, column: 1, scope: !1854)
!1860 = !DILocation(line: 74, column: 7, scope: !1854)
!1861 = !DILocation(line: 74, column: 14, scope: !1854)
!1862 = !DILocation(line: 75, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 75, column: 6)
!1864 = !DILocation(line: 75, column: 12, scope: !1863)
!1865 = !DILocation(line: 75, column: 6, scope: !1854)
!1866 = !DILocation(line: 76, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !48, line: 75, column: 23)
!1868 = !DILocation(line: 76, column: 19, scope: !1867)
!1869 = !DILocation(line: 76, column: 3, scope: !1867)
!1870 = !DILocation(line: 77, column: 2, scope: !1867)
!1871 = !DILocation(line: 78, column: 6, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 78, column: 6)
!1873 = !DILocation(line: 78, column: 12, scope: !1872)
!1874 = !DILocation(line: 78, column: 6, scope: !1854)
!1875 = !DILocation(line: 79, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !48, line: 78, column: 23)
!1877 = !DILocation(line: 79, column: 23, scope: !1876)
!1878 = !DILocation(line: 79, column: 3, scope: !1876)
!1879 = !DILocation(line: 80, column: 2, scope: !1876)
!1880 = !DILocation(line: 81, column: 6, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 81, column: 6)
!1882 = !DILocation(line: 81, column: 12, scope: !1881)
!1883 = !DILocation(line: 81, column: 6, scope: !1854)
!1884 = !DILocation(line: 82, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !48, line: 81, column: 19)
!1886 = !DILocation(line: 82, column: 19, scope: !1885)
!1887 = !DILocation(line: 82, column: 3, scope: !1885)
!1888 = !DILocation(line: 83, column: 2, scope: !1885)
!1889 = !DILocation(line: 84, column: 6, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 84, column: 6)
!1891 = !DILocation(line: 84, column: 12, scope: !1890)
!1892 = !DILocation(line: 84, column: 6, scope: !1854)
!1893 = !DILocation(line: 85, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !48, line: 84, column: 19)
!1895 = !DILocation(line: 85, column: 23, scope: !1894)
!1896 = !DILocation(line: 85, column: 3, scope: !1894)
!1897 = !DILocation(line: 86, column: 2, scope: !1894)
!1898 = !DILocation(line: 87, column: 6, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 87, column: 6)
!1900 = !DILocation(line: 87, column: 12, scope: !1899)
!1901 = !DILocation(line: 87, column: 6, scope: !1854)
!1902 = !DILocation(line: 88, column: 17, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !48, line: 87, column: 17)
!1904 = !DILocation(line: 88, column: 23, scope: !1903)
!1905 = !DILocation(line: 88, column: 3, scope: !1903)
!1906 = !DILocation(line: 89, column: 2, scope: !1903)
!1907 = !DILocation(line: 91, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 91, column: 6)
!1909 = !DILocation(line: 91, column: 12, scope: !1908)
!1910 = !DILocation(line: 91, column: 6, scope: !1854)
!1911 = !DILocation(line: 92, column: 11, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !48, line: 91, column: 16)
!1913 = !DILocation(line: 92, column: 17, scope: !1912)
!1914 = !DILocation(line: 92, column: 3, scope: !1912)
!1915 = !DILocation(line: 93, column: 2, scope: !1912)
!1916 = !DILocation(line: 96, column: 6, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 96, column: 6)
!1918 = !DILocation(line: 96, column: 12, scope: !1917)
!1919 = !DILocation(line: 96, column: 6, scope: !1854)
!1920 = !DILocation(line: 97, column: 8, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !48, line: 96, column: 23)
!1922 = !DILocation(line: 97, column: 14, scope: !1921)
!1923 = !DILocation(line: 97, column: 3, scope: !1921)
!1924 = !DILocation(line: 98, column: 2, scope: !1921)
!1925 = !DILocation(line: 100, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 100, column: 6)
!1927 = !DILocation(line: 100, column: 12, scope: !1926)
!1928 = !DILocation(line: 100, column: 6, scope: !1854)
!1929 = !DILocation(line: 101, column: 18, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !48, line: 100, column: 18)
!1931 = !DILocation(line: 101, column: 24, scope: !1930)
!1932 = !DILocation(line: 101, column: 3, scope: !1930)
!1933 = !DILocation(line: 102, column: 2, scope: !1930)
!1934 = !DILocation(line: 103, column: 6, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 103, column: 6)
!1936 = !DILocation(line: 103, column: 12, scope: !1935)
!1937 = !DILocation(line: 103, column: 6, scope: !1854)
!1938 = !DILocation(line: 104, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !48, line: 103, column: 21)
!1940 = !DILocation(line: 104, column: 14, scope: !1939)
!1941 = !DILocation(line: 104, column: 3, scope: !1939)
!1942 = !DILocation(line: 105, column: 2, scope: !1939)
!1943 = !DILocation(line: 107, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 107, column: 6)
!1945 = !DILocation(line: 107, column: 12, scope: !1944)
!1946 = !DILocation(line: 107, column: 6, scope: !1854)
!1947 = !DILocation(line: 108, column: 8, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !48, line: 107, column: 28)
!1949 = !DILocation(line: 108, column: 14, scope: !1948)
!1950 = !DILocation(line: 108, column: 3, scope: !1948)
!1951 = !DILocation(line: 109, column: 2, scope: !1948)
!1952 = !DILocation(line: 111, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 111, column: 6)
!1954 = !DILocation(line: 111, column: 12, scope: !1953)
!1955 = !DILocation(line: 111, column: 6, scope: !1854)
!1956 = !DILocation(line: 112, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !48, line: 111, column: 22)
!1958 = !DILocation(line: 112, column: 14, scope: !1957)
!1959 = !DILocation(line: 112, column: 3, scope: !1957)
!1960 = !DILocation(line: 113, column: 2, scope: !1957)
!1961 = !DILocation(line: 114, column: 6, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 114, column: 6)
!1963 = !DILocation(line: 114, column: 12, scope: !1962)
!1964 = !DILocation(line: 114, column: 6, scope: !1854)
!1965 = !DILocation(line: 115, column: 8, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !48, line: 114, column: 20)
!1967 = !DILocation(line: 115, column: 14, scope: !1966)
!1968 = !DILocation(line: 115, column: 3, scope: !1966)
!1969 = !DILocation(line: 116, column: 2, scope: !1966)
!1970 = !DILocation(line: 117, column: 6, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 117, column: 6)
!1972 = !DILocation(line: 117, column: 12, scope: !1971)
!1973 = !DILocation(line: 117, column: 6, scope: !1854)
!1974 = !DILocation(line: 118, column: 8, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !48, line: 117, column: 22)
!1976 = !DILocation(line: 118, column: 14, scope: !1975)
!1977 = !DILocation(line: 118, column: 3, scope: !1975)
!1978 = !DILocation(line: 119, column: 2, scope: !1975)
!1979 = !DILocation(line: 120, column: 6, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 120, column: 6)
!1981 = !DILocation(line: 120, column: 12, scope: !1980)
!1982 = !DILocation(line: 120, column: 6, scope: !1854)
!1983 = !DILocation(line: 121, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !48, line: 120, column: 23)
!1985 = !DILocation(line: 121, column: 14, scope: !1984)
!1986 = !DILocation(line: 121, column: 3, scope: !1984)
!1987 = !DILocation(line: 122, column: 2, scope: !1984)
!1988 = !DILocation(line: 123, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 123, column: 6)
!1990 = !DILocation(line: 123, column: 12, scope: !1989)
!1991 = !DILocation(line: 123, column: 6, scope: !1854)
!1992 = !DILocation(line: 124, column: 8, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !48, line: 123, column: 21)
!1994 = !DILocation(line: 124, column: 14, scope: !1993)
!1995 = !DILocation(line: 124, column: 3, scope: !1993)
!1996 = !DILocation(line: 125, column: 2, scope: !1993)
!1997 = !DILocation(line: 126, column: 6, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 126, column: 6)
!1999 = !DILocation(line: 126, column: 12, scope: !1998)
!2000 = !DILocation(line: 126, column: 6, scope: !1854)
!2001 = !DILocation(line: 127, column: 8, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !48, line: 126, column: 21)
!2003 = !DILocation(line: 127, column: 14, scope: !2002)
!2004 = !DILocation(line: 127, column: 3, scope: !2002)
!2005 = !DILocation(line: 128, column: 2, scope: !2002)
!2006 = !DILocation(line: 129, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 129, column: 6)
!2008 = !DILocation(line: 129, column: 12, scope: !2007)
!2009 = !DILocation(line: 129, column: 6, scope: !1854)
!2010 = !DILocation(line: 130, column: 8, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !48, line: 129, column: 24)
!2012 = !DILocation(line: 130, column: 14, scope: !2011)
!2013 = !DILocation(line: 130, column: 3, scope: !2011)
!2014 = !DILocation(line: 131, column: 2, scope: !2011)
!2015 = !DILocation(line: 132, column: 6, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 132, column: 6)
!2017 = !DILocation(line: 132, column: 12, scope: !2016)
!2018 = !DILocation(line: 132, column: 6, scope: !1854)
!2019 = !DILocation(line: 133, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !48, line: 132, column: 24)
!2021 = !DILocation(line: 133, column: 14, scope: !2020)
!2022 = !DILocation(line: 133, column: 3, scope: !2020)
!2023 = !DILocation(line: 134, column: 2, scope: !2020)
!2024 = !DILocation(line: 135, column: 6, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 135, column: 6)
!2026 = !DILocation(line: 135, column: 12, scope: !2025)
!2027 = !DILocation(line: 135, column: 6, scope: !1854)
!2028 = !DILocation(line: 136, column: 8, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !48, line: 135, column: 24)
!2030 = !DILocation(line: 136, column: 14, scope: !2029)
!2031 = !DILocation(line: 136, column: 3, scope: !2029)
!2032 = !DILocation(line: 137, column: 2, scope: !2029)
!2033 = !DILocation(line: 138, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 138, column: 6)
!2035 = !DILocation(line: 138, column: 12, scope: !2034)
!2036 = !DILocation(line: 138, column: 6, scope: !1854)
!2037 = !DILocation(line: 139, column: 8, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !48, line: 138, column: 32)
!2039 = !DILocation(line: 139, column: 14, scope: !2038)
!2040 = !DILocation(line: 139, column: 3, scope: !2038)
!2041 = !DILocation(line: 140, column: 2, scope: !2038)
!2042 = !DILocation(line: 141, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 141, column: 6)
!2044 = !DILocation(line: 141, column: 12, scope: !2043)
!2045 = !DILocation(line: 141, column: 6, scope: !1854)
!2046 = !DILocation(line: 142, column: 8, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !48, line: 141, column: 26)
!2048 = !DILocation(line: 142, column: 14, scope: !2047)
!2049 = !DILocation(line: 142, column: 3, scope: !2047)
!2050 = !DILocation(line: 143, column: 2, scope: !2047)
!2051 = !DILocation(line: 144, column: 6, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 144, column: 6)
!2053 = !DILocation(line: 144, column: 12, scope: !2052)
!2054 = !DILocation(line: 144, column: 6, scope: !1854)
!2055 = !DILocation(line: 145, column: 8, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !48, line: 144, column: 21)
!2057 = !DILocation(line: 145, column: 14, scope: !2056)
!2058 = !DILocation(line: 145, column: 3, scope: !2056)
!2059 = !DILocation(line: 146, column: 2, scope: !2056)
!2060 = !DILocation(line: 147, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 147, column: 6)
!2062 = !DILocation(line: 147, column: 12, scope: !2061)
!2063 = !DILocation(line: 147, column: 6, scope: !1854)
!2064 = !DILocation(line: 148, column: 8, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !48, line: 147, column: 29)
!2066 = !DILocation(line: 148, column: 14, scope: !2065)
!2067 = !DILocation(line: 148, column: 3, scope: !2065)
!2068 = !DILocation(line: 149, column: 2, scope: !2065)
!2069 = !DILocation(line: 151, column: 6, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 151, column: 6)
!2071 = !DILocation(line: 151, column: 12, scope: !2070)
!2072 = !DILocation(line: 151, column: 6, scope: !1854)
!2073 = !DILocation(line: 152, column: 8, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !48, line: 151, column: 22)
!2075 = !DILocation(line: 152, column: 14, scope: !2074)
!2076 = !DILocation(line: 152, column: 3, scope: !2074)
!2077 = !DILocation(line: 153, column: 2, scope: !2074)
!2078 = !DILocation(line: 154, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1854, file: !48, line: 154, column: 6)
!2080 = !DILocation(line: 154, column: 12, scope: !2079)
!2081 = !DILocation(line: 154, column: 6, scope: !1854)
!2082 = !DILocation(line: 155, column: 8, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !48, line: 154, column: 26)
!2084 = !DILocation(line: 155, column: 14, scope: !2083)
!2085 = !DILocation(line: 155, column: 3, scope: !2083)
!2086 = !DILocation(line: 156, column: 2, scope: !2083)
!2087 = !DILocation(line: 158, column: 9, scope: !1854)
!2088 = !DILocation(line: 158, column: 2, scope: !1854)
!2089 = !DILocation(line: 159, column: 7, scope: !1854)
!2090 = !DILocation(line: 159, column: 2, scope: !1854)
!2091 = !DILocation(line: 160, column: 1, scope: !1854)
!2092 = distinct !DISubprogram(name: "proxyspec_free", scope: !48, file: !48, line: 411, type: !2093, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !1791}
!2095 = !DILocalVariable(name: "spec", arg: 1, scope: !2092, file: !48, line: 411, type: !1791)
!2096 = !DILocation(line: 411, column: 29, scope: !2092)
!2097 = !DILocation(line: 413, column: 2, scope: !2092)
!2098 = distinct !{!2098, !2097}
!2099 = !DILocalVariable(name: "next", scope: !2100, file: !48, line: 414, type: !1791)
!2100 = distinct !DILexicalBlock(scope: !2092, file: !48, line: 413, column: 5)
!2101 = !DILocation(line: 414, column: 16, scope: !2100)
!2102 = !DILocation(line: 414, column: 23, scope: !2100)
!2103 = !DILocation(line: 414, column: 29, scope: !2100)
!2104 = !DILocation(line: 415, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !48, line: 415, column: 7)
!2106 = !DILocation(line: 415, column: 13, scope: !2105)
!2107 = !DILocation(line: 415, column: 7, scope: !2100)
!2108 = !DILocation(line: 416, column: 9, scope: !2105)
!2109 = !DILocation(line: 416, column: 15, scope: !2105)
!2110 = !DILocation(line: 416, column: 4, scope: !2105)
!2111 = !DILocation(line: 417, column: 10, scope: !2100)
!2112 = !DILocation(line: 417, column: 3, scope: !2100)
!2113 = !DILocation(line: 418, column: 8, scope: !2100)
!2114 = !DILocation(line: 418, column: 3, scope: !2100)
!2115 = !DILocation(line: 419, column: 10, scope: !2100)
!2116 = !DILocation(line: 419, column: 8, scope: !2100)
!2117 = !DILocation(line: 420, column: 2, scope: !2100)
!2118 = !DILocation(line: 420, column: 11, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2092, file: !48, discriminator: 1)
!2120 = !DILocation(line: 420, column: 2, scope: !2119)
!2121 = !DILocation(line: 421, column: 1, scope: !2092)
!2122 = distinct !DISubprogram(name: "opts_has_ssl_spec", scope: !48, file: !48, line: 168, type: !2123, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!14, !64}
!2125 = !DILocalVariable(name: "opts", arg: 1, scope: !2122, file: !48, line: 168, type: !64)
!2126 = !DILocation(line: 168, column: 27, scope: !2122)
!2127 = !DILocalVariable(name: "p", scope: !2122, file: !48, line: 170, type: !1791)
!2128 = !DILocation(line: 170, column: 15, scope: !2122)
!2129 = !DILocation(line: 170, column: 19, scope: !2122)
!2130 = !DILocation(line: 170, column: 25, scope: !2122)
!2131 = !DILocation(line: 172, column: 2, scope: !2122)
!2132 = !DILocation(line: 172, column: 9, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2122, file: !48, discriminator: 1)
!2134 = !DILocation(line: 172, column: 2, scope: !2133)
!2135 = !DILocation(line: 173, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !48, line: 173, column: 7)
!2137 = distinct !DILexicalBlock(scope: !2122, file: !48, line: 172, column: 12)
!2138 = !DILocation(line: 173, column: 10, scope: !2136)
!2139 = !DILocation(line: 173, column: 14, scope: !2136)
!2140 = !DILocation(line: 173, column: 17, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2136, file: !48, discriminator: 1)
!2142 = !DILocation(line: 173, column: 20, scope: !2141)
!2143 = !DILocation(line: 173, column: 7, scope: !2141)
!2144 = !DILocation(line: 174, column: 4, scope: !2136)
!2145 = !DILocation(line: 175, column: 7, scope: !2137)
!2146 = !DILocation(line: 175, column: 10, scope: !2137)
!2147 = !DILocation(line: 175, column: 5, scope: !2137)
!2148 = !DILocation(line: 172, column: 2, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2122, file: !48, discriminator: 2)
!2150 = distinct !{!2150, !2131}
!2151 = !DILocation(line: 178, column: 2, scope: !2122)
!2152 = !DILocation(line: 179, column: 1, scope: !2122)
!2153 = distinct !DISubprogram(name: "opts_has_dns_spec", scope: !48, file: !48, line: 185, type: !2123, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2154 = !DILocalVariable(name: "opts", arg: 1, scope: !2153, file: !48, line: 185, type: !64)
!2155 = !DILocation(line: 185, column: 27, scope: !2153)
!2156 = !DILocalVariable(name: "p", scope: !2153, file: !48, line: 187, type: !1791)
!2157 = !DILocation(line: 187, column: 15, scope: !2153)
!2158 = !DILocation(line: 187, column: 19, scope: !2153)
!2159 = !DILocation(line: 187, column: 25, scope: !2153)
!2160 = !DILocation(line: 189, column: 2, scope: !2153)
!2161 = !DILocation(line: 189, column: 9, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2153, file: !48, discriminator: 1)
!2163 = !DILocation(line: 189, column: 2, scope: !2162)
!2164 = !DILocation(line: 190, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !48, line: 190, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2153, file: !48, line: 189, column: 12)
!2167 = !DILocation(line: 190, column: 10, scope: !2165)
!2168 = !DILocation(line: 190, column: 7, scope: !2166)
!2169 = !DILocation(line: 191, column: 4, scope: !2165)
!2170 = !DILocation(line: 192, column: 7, scope: !2166)
!2171 = !DILocation(line: 192, column: 10, scope: !2166)
!2172 = !DILocation(line: 192, column: 5, scope: !2166)
!2173 = !DILocation(line: 189, column: 2, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2153, file: !48, discriminator: 2)
!2175 = distinct !{!2175, !2160}
!2176 = !DILocation(line: 195, column: 2, scope: !2153)
!2177 = !DILocation(line: 196, column: 1, scope: !2153)
!2178 = distinct !DISubprogram(name: "opts_proto_dbg_dump", scope: !48, file: !48, line: 202, type: !1855, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2179 = !DILocalVariable(name: "opts", arg: 1, scope: !2178, file: !48, line: 202, type: !64)
!2180 = !DILocation(line: 202, column: 29, scope: !2178)
!2181 = !DILocation(line: 210, column: 18, scope: !2178)
!2182 = !DILocation(line: 210, column: 24, scope: !2178)
!2183 = !DILocation(line: 210, column: 34, scope: !2178)
!2184 = !DILocation(line: 210, column: 17, scope: !2178)
!2185 = !DILocation(line: 210, column: 17, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2178, file: !48, discriminator: 1)
!2187 = !DILocation(line: 213, column: 18, scope: !2178)
!2188 = !DILocation(line: 213, column: 24, scope: !2178)
!2189 = !DILocation(line: 213, column: 34, scope: !2178)
!2190 = !DILocation(line: 213, column: 17, scope: !2178)
!2191 = !DILocation(line: 213, column: 17, scope: !2186)
!2192 = !DILocation(line: 216, column: 18, scope: !2178)
!2193 = !DILocation(line: 216, column: 24, scope: !2178)
!2194 = !DILocation(line: 216, column: 34, scope: !2178)
!2195 = !DILocation(line: 216, column: 17, scope: !2178)
!2196 = !DILocation(line: 216, column: 17, scope: !2186)
!2197 = !DILocation(line: 219, column: 18, scope: !2178)
!2198 = !DILocation(line: 219, column: 24, scope: !2178)
!2199 = !DILocation(line: 219, column: 34, scope: !2178)
!2200 = !DILocation(line: 219, column: 17, scope: !2178)
!2201 = !DILocation(line: 216, column: 17, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2178, file: !48, discriminator: 2)
!2203 = !DILocation(line: 216, column: 17, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2178, file: !48, discriminator: 3)
!2205 = !DILocation(line: 213, column: 17, scope: !2202)
!2206 = !DILocation(line: 213, column: 17, scope: !2204)
!2207 = !DILocation(line: 210, column: 17, scope: !2202)
!2208 = !DILocation(line: 210, column: 17, scope: !2204)
!2209 = !DILocation(line: 241, column: 17, scope: !2178)
!2210 = !DILocation(line: 241, column: 23, scope: !2178)
!2211 = !DILocation(line: 245, column: 17, scope: !2178)
!2212 = !DILocation(line: 245, column: 23, scope: !2178)
!2213 = !DILocation(line: 249, column: 17, scope: !2178)
!2214 = !DILocation(line: 249, column: 23, scope: !2178)
!2215 = !DILocation(line: 253, column: 17, scope: !2178)
!2216 = !DILocation(line: 253, column: 23, scope: !2178)
!2217 = !DILocation(line: 204, column: 2, scope: !2178)
!2218 = !DILocation(line: 256, column: 1, scope: !2178)
!2219 = distinct !DISubprogram(name: "proxyspec_parse", scope: !48, file: !48, line: 262, type: !2220, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !1052, !2222, !51, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64, align: 64)
!2224 = !DILocalVariable(name: "argc", arg: 1, scope: !2219, file: !48, line: 262, type: !1052)
!2225 = !DILocation(line: 262, column: 22, scope: !2219)
!2226 = !DILocalVariable(name: "argv", arg: 2, scope: !2219, file: !48, line: 262, type: !2222)
!2227 = !DILocation(line: 262, column: 35, scope: !2219)
!2228 = !DILocalVariable(name: "natengine", arg: 3, scope: !2219, file: !48, line: 262, type: !51)
!2229 = !DILocation(line: 262, column: 55, scope: !2219)
!2230 = !DILocalVariable(name: "opts_spec", arg: 4, scope: !2219, file: !48, line: 263, type: !2223)
!2231 = !DILocation(line: 263, column: 31, scope: !2219)
!2232 = !DILocalVariable(name: "spec", scope: !2219, file: !48, line: 265, type: !1791)
!2233 = !DILocation(line: 265, column: 15, scope: !2219)
!2234 = !DILocalVariable(name: "addr", scope: !2219, file: !48, line: 266, type: !17)
!2235 = !DILocation(line: 266, column: 8, scope: !2219)
!2236 = !DILocalVariable(name: "af", scope: !2219, file: !48, line: 267, type: !14)
!2237 = !DILocation(line: 267, column: 6, scope: !2219)
!2238 = !DILocalVariable(name: "state", scope: !2219, file: !48, line: 268, type: !14)
!2239 = !DILocation(line: 268, column: 6, scope: !2219)
!2240 = !DILocation(line: 270, column: 2, scope: !2219)
!2241 = !DILocation(line: 270, column: 11, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2219, file: !48, discriminator: 1)
!2243 = !DILocation(line: 270, column: 16, scope: !2242)
!2244 = !DILocation(line: 270, column: 2, scope: !2242)
!2245 = !DILocation(line: 271, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2219, file: !48, line: 270, column: 20)
!2247 = !DILocation(line: 271, column: 3, scope: !2246)
!2248 = !DILocation(line: 271, column: 18, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2246, file: !48, discriminator: 1)
!2250 = !DILocation(line: 275, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !48, line: 271, column: 18)
!2252 = !DILocation(line: 275, column: 10, scope: !2251)
!2253 = !DILocation(line: 276, column: 12, scope: !2251)
!2254 = !DILocation(line: 276, column: 5, scope: !2251)
!2255 = !DILocation(line: 277, column: 19, scope: !2251)
!2256 = !DILocation(line: 277, column: 18, scope: !2251)
!2257 = !DILocation(line: 277, column: 5, scope: !2251)
!2258 = !DILocation(line: 277, column: 11, scope: !2251)
!2259 = !DILocation(line: 277, column: 16, scope: !2251)
!2260 = !DILocation(line: 278, column: 18, scope: !2251)
!2261 = !DILocation(line: 278, column: 6, scope: !2251)
!2262 = !DILocation(line: 278, column: 16, scope: !2251)
!2263 = !DILocation(line: 281, column: 5, scope: !2251)
!2264 = !DILocation(line: 281, column: 11, scope: !2251)
!2265 = !DILocation(line: 281, column: 15, scope: !2251)
!2266 = !DILocation(line: 282, column: 5, scope: !2251)
!2267 = !DILocation(line: 282, column: 11, scope: !2251)
!2268 = !DILocation(line: 282, column: 16, scope: !2251)
!2269 = !DILocation(line: 283, column: 5, scope: !2251)
!2270 = !DILocation(line: 283, column: 11, scope: !2251)
!2271 = !DILocation(line: 283, column: 19, scope: !2251)
!2272 = !DILocation(line: 284, column: 19, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 284, column: 9)
!2274 = !DILocation(line: 284, column: 18, scope: !2273)
!2275 = !DILocation(line: 284, column: 17, scope: !2273)
!2276 = !DILocation(line: 284, column: 10, scope: !2273)
!2277 = !DILocation(line: 284, column: 9, scope: !2251)
!2278 = !DILocation(line: 286, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2273, file: !48, line: 284, column: 33)
!2280 = !DILocation(line: 287, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2273, file: !48, line: 287, column: 9)
!2282 = !DILocation(line: 287, column: 18, scope: !2281)
!2283 = !DILocation(line: 287, column: 17, scope: !2281)
!2284 = !DILocation(line: 287, column: 10, scope: !2281)
!2285 = !DILocation(line: 287, column: 9, scope: !2273)
!2286 = !DILocation(line: 288, column: 6, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2281, file: !48, line: 287, column: 33)
!2288 = !DILocation(line: 288, column: 12, scope: !2287)
!2289 = !DILocation(line: 288, column: 16, scope: !2287)
!2290 = !DILocation(line: 289, column: 5, scope: !2287)
!2291 = !DILocation(line: 290, column: 19, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2281, file: !48, line: 290, column: 9)
!2293 = !DILocation(line: 290, column: 18, scope: !2292)
!2294 = !DILocation(line: 290, column: 17, scope: !2292)
!2295 = !DILocation(line: 290, column: 10, scope: !2292)
!2296 = !DILocation(line: 290, column: 9, scope: !2281)
!2297 = !DILocation(line: 291, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2292, file: !48, line: 290, column: 34)
!2299 = !DILocation(line: 291, column: 12, scope: !2298)
!2300 = !DILocation(line: 291, column: 17, scope: !2298)
!2301 = !DILocation(line: 292, column: 5, scope: !2298)
!2302 = !DILocation(line: 293, column: 19, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !48, line: 293, column: 9)
!2304 = !DILocation(line: 293, column: 18, scope: !2303)
!2305 = !DILocation(line: 293, column: 17, scope: !2303)
!2306 = !DILocation(line: 293, column: 10, scope: !2303)
!2307 = !DILocation(line: 293, column: 9, scope: !2292)
!2308 = !DILocation(line: 294, column: 6, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !48, line: 293, column: 35)
!2310 = !DILocation(line: 294, column: 12, scope: !2309)
!2311 = !DILocation(line: 294, column: 16, scope: !2309)
!2312 = !DILocation(line: 295, column: 6, scope: !2309)
!2313 = !DILocation(line: 295, column: 12, scope: !2309)
!2314 = !DILocation(line: 295, column: 17, scope: !2309)
!2315 = !DILocation(line: 296, column: 5, scope: !2309)
!2316 = !DILocation(line: 297, column: 19, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2303, file: !48, line: 297, column: 9)
!2318 = !DILocation(line: 297, column: 18, scope: !2317)
!2319 = !DILocation(line: 297, column: 17, scope: !2317)
!2320 = !DILocation(line: 297, column: 10, scope: !2317)
!2321 = !DILocation(line: 297, column: 9, scope: !2303)
!2322 = !DILocation(line: 298, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !48, line: 297, column: 37)
!2324 = !DILocation(line: 298, column: 12, scope: !2323)
!2325 = !DILocation(line: 298, column: 20, scope: !2323)
!2326 = !DILocation(line: 299, column: 5, scope: !2323)
!2327 = !DILocation(line: 300, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !48, line: 299, column: 12)
!2329 = !DILocation(line: 301, column: 39, scope: !2328)
!2330 = !DILocation(line: 301, column: 38, scope: !2328)
!2331 = !DILocation(line: 301, column: 37, scope: !2328)
!2332 = !DILocation(line: 300, column: 6, scope: !2328)
!2333 = !DILocation(line: 302, column: 6, scope: !2328)
!2334 = !DILocation(line: 304, column: 10, scope: !2251)
!2335 = !DILocation(line: 305, column: 5, scope: !2251)
!2336 = !DILocation(line: 308, column: 14, scope: !2251)
!2337 = !DILocation(line: 308, column: 13, scope: !2251)
!2338 = !DILocation(line: 308, column: 12, scope: !2251)
!2339 = !DILocation(line: 308, column: 10, scope: !2251)
!2340 = !DILocation(line: 309, column: 10, scope: !2251)
!2341 = !DILocation(line: 310, column: 5, scope: !2251)
!2342 = !DILocation(line: 313, column: 30, scope: !2251)
!2343 = !DILocation(line: 313, column: 36, scope: !2251)
!2344 = !DILocation(line: 314, column: 30, scope: !2251)
!2345 = !DILocation(line: 314, column: 36, scope: !2251)
!2346 = !DILocation(line: 315, column: 29, scope: !2251)
!2347 = !DILocation(line: 315, column: 37, scope: !2251)
!2348 = !DILocation(line: 315, column: 36, scope: !2251)
!2349 = !DILocation(line: 315, column: 35, scope: !2251)
!2350 = !DILocation(line: 316, column: 40, scope: !2251)
!2351 = !DILocation(line: 316, column: 29, scope: !2251)
!2352 = !DILocation(line: 313, column: 10, scope: !2251)
!2353 = !DILocation(line: 313, column: 8, scope: !2251)
!2354 = !DILocation(line: 318, column: 9, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 318, column: 9)
!2356 = !DILocation(line: 318, column: 12, scope: !2355)
!2357 = !DILocation(line: 318, column: 9, scope: !2251)
!2358 = !DILocation(line: 319, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !48, line: 318, column: 19)
!2360 = !DILocation(line: 321, column: 9, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 321, column: 9)
!2362 = !DILocation(line: 321, column: 9, scope: !2251)
!2363 = !DILocation(line: 322, column: 31, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !48, line: 321, column: 20)
!2365 = !DILocation(line: 322, column: 24, scope: !2364)
!2366 = !DILocation(line: 322, column: 6, scope: !2364)
!2367 = !DILocation(line: 322, column: 12, scope: !2364)
!2368 = !DILocation(line: 322, column: 22, scope: !2364)
!2369 = !DILocation(line: 323, column: 11, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !48, line: 323, column: 10)
!2371 = !DILocation(line: 323, column: 17, scope: !2370)
!2372 = !DILocation(line: 323, column: 10, scope: !2364)
!2373 = !DILocation(line: 324, column: 14, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !48, line: 323, column: 28)
!2375 = !DILocation(line: 324, column: 7, scope: !2374)
!2376 = !DILocation(line: 327, column: 7, scope: !2374)
!2377 = !DILocation(line: 329, column: 5, scope: !2364)
!2378 = !DILocation(line: 330, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2361, file: !48, line: 329, column: 12)
!2380 = !DILocation(line: 330, column: 12, scope: !2379)
!2381 = !DILocation(line: 330, column: 22, scope: !2379)
!2382 = !DILocation(line: 332, column: 10, scope: !2251)
!2383 = !DILocation(line: 333, column: 5, scope: !2251)
!2384 = !DILocation(line: 336, column: 19, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 336, column: 9)
!2386 = !DILocation(line: 336, column: 18, scope: !2385)
!2387 = !DILocation(line: 336, column: 17, scope: !2385)
!2388 = !DILocation(line: 336, column: 10, scope: !2385)
!2389 = !DILocation(line: 336, column: 32, scope: !2385)
!2390 = !DILocation(line: 337, column: 19, scope: !2385)
!2391 = !DILocation(line: 337, column: 18, scope: !2385)
!2392 = !DILocation(line: 337, column: 17, scope: !2385)
!2393 = !DILocation(line: 337, column: 10, scope: !2385)
!2394 = !DILocation(line: 337, column: 32, scope: !2385)
!2395 = !DILocation(line: 338, column: 19, scope: !2385)
!2396 = !DILocation(line: 338, column: 18, scope: !2385)
!2397 = !DILocation(line: 338, column: 17, scope: !2385)
!2398 = !DILocation(line: 338, column: 10, scope: !2385)
!2399 = !DILocation(line: 338, column: 33, scope: !2385)
!2400 = !DILocation(line: 339, column: 19, scope: !2385)
!2401 = !DILocation(line: 339, column: 18, scope: !2385)
!2402 = !DILocation(line: 339, column: 17, scope: !2385)
!2403 = !DILocation(line: 339, column: 10, scope: !2385)
!2404 = !DILocation(line: 339, column: 34, scope: !2385)
!2405 = !DILocation(line: 340, column: 19, scope: !2385)
!2406 = !DILocation(line: 340, column: 18, scope: !2385)
!2407 = !DILocation(line: 340, column: 17, scope: !2385)
!2408 = !DILocation(line: 340, column: 10, scope: !2385)
!2409 = !DILocation(line: 336, column: 9, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2251, file: !48, discriminator: 1)
!2411 = !DILocation(line: 342, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2385, file: !48, line: 340, column: 37)
!2413 = !DILocation(line: 342, column: 13, scope: !2412)
!2414 = !DILocation(line: 342, column: 19, scope: !2412)
!2415 = !DILocation(line: 342, column: 24, scope: !2412)
!2416 = !DILocation(line: 343, column: 12, scope: !2412)
!2417 = !DILocation(line: 344, column: 5, scope: !2412)
!2418 = !DILocation(line: 345, column: 19, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2385, file: !48, line: 345, column: 9)
!2420 = !DILocation(line: 345, column: 18, scope: !2419)
!2421 = !DILocation(line: 345, column: 17, scope: !2419)
!2422 = !DILocation(line: 345, column: 10, scope: !2419)
!2423 = !DILocation(line: 345, column: 9, scope: !2385)
!2424 = !DILocation(line: 346, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2419, file: !48, line: 345, column: 33)
!2426 = !DILocation(line: 346, column: 17, scope: !2425)
!2427 = !DILocation(line: 346, column: 6, scope: !2425)
!2428 = !DILocation(line: 347, column: 6, scope: !2425)
!2429 = !DILocation(line: 347, column: 12, scope: !2425)
!2430 = !DILocation(line: 347, column: 22, scope: !2425)
!2431 = !DILocation(line: 348, column: 11, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2425, file: !48, line: 348, column: 10)
!2433 = !DILocation(line: 348, column: 17, scope: !2432)
!2434 = !DILocation(line: 348, column: 10, scope: !2425)
!2435 = !DILocation(line: 349, column: 14, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !48, line: 348, column: 22)
!2437 = !DILocation(line: 349, column: 7, scope: !2436)
!2438 = !DILocation(line: 354, column: 7, scope: !2436)
!2439 = !DILocation(line: 356, column: 12, scope: !2425)
!2440 = !DILocation(line: 357, column: 5, scope: !2425)
!2441 = !DILocation(line: 358, column: 21, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2419, file: !48, line: 358, column: 9)
!2443 = !DILocation(line: 358, column: 20, scope: !2442)
!2444 = !DILocation(line: 358, column: 19, scope: !2442)
!2445 = !DILocation(line: 358, column: 9, scope: !2442)
!2446 = !DILocation(line: 358, column: 9, scope: !2419)
!2447 = !DILocation(line: 360, column: 11, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !48, line: 358, column: 28)
!2449 = !DILocation(line: 360, column: 17, scope: !2448)
!2450 = !DILocation(line: 360, column: 6, scope: !2448)
!2451 = !DILocation(line: 361, column: 33, scope: !2448)
!2452 = !DILocation(line: 361, column: 32, scope: !2448)
!2453 = !DILocation(line: 361, column: 31, scope: !2448)
!2454 = !DILocation(line: 361, column: 24, scope: !2448)
!2455 = !DILocation(line: 361, column: 6, scope: !2448)
!2456 = !DILocation(line: 361, column: 12, scope: !2448)
!2457 = !DILocation(line: 361, column: 22, scope: !2448)
!2458 = !DILocation(line: 362, column: 11, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2448, file: !48, line: 362, column: 10)
!2460 = !DILocation(line: 362, column: 17, scope: !2459)
!2461 = !DILocation(line: 362, column: 10, scope: !2448)
!2462 = !DILocation(line: 363, column: 14, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !48, line: 362, column: 28)
!2464 = !DILocation(line: 363, column: 7, scope: !2463)
!2465 = !DILocation(line: 366, column: 7, scope: !2463)
!2466 = !DILocation(line: 368, column: 12, scope: !2448)
!2467 = !DILocation(line: 369, column: 5, scope: !2448)
!2468 = !DILocation(line: 371, column: 11, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2442, file: !48, line: 369, column: 12)
!2470 = !DILocation(line: 371, column: 17, scope: !2469)
!2471 = !DILocation(line: 371, column: 6, scope: !2469)
!2472 = !DILocation(line: 372, column: 6, scope: !2469)
!2473 = !DILocation(line: 372, column: 12, scope: !2469)
!2474 = !DILocation(line: 372, column: 22, scope: !2469)
!2475 = !DILocation(line: 373, column: 15, scope: !2469)
!2476 = !DILocation(line: 373, column: 14, scope: !2469)
!2477 = !DILocation(line: 373, column: 13, scope: !2469)
!2478 = !DILocation(line: 373, column: 11, scope: !2469)
!2479 = !DILocation(line: 374, column: 11, scope: !2469)
!2480 = !DILocation(line: 376, column: 5, scope: !2251)
!2481 = !DILocation(line: 379, column: 30, scope: !2251)
!2482 = !DILocation(line: 379, column: 36, scope: !2251)
!2483 = !DILocation(line: 380, column: 30, scope: !2251)
!2484 = !DILocation(line: 380, column: 36, scope: !2251)
!2485 = !DILocation(line: 381, column: 29, scope: !2251)
!2486 = !DILocation(line: 381, column: 37, scope: !2251)
!2487 = !DILocation(line: 381, column: 36, scope: !2251)
!2488 = !DILocation(line: 381, column: 35, scope: !2251)
!2489 = !DILocation(line: 381, column: 43, scope: !2251)
!2490 = !DILocation(line: 379, column: 10, scope: !2251)
!2491 = !DILocation(line: 379, column: 8, scope: !2251)
!2492 = !DILocation(line: 382, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 382, column: 9)
!2494 = !DILocation(line: 382, column: 12, scope: !2493)
!2495 = !DILocation(line: 382, column: 9, scope: !2251)
!2496 = !DILocation(line: 383, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !48, line: 382, column: 19)
!2498 = !DILocation(line: 385, column: 11, scope: !2251)
!2499 = !DILocation(line: 386, column: 5, scope: !2251)
!2500 = !DILocation(line: 389, column: 29, scope: !2251)
!2501 = !DILocation(line: 389, column: 28, scope: !2251)
!2502 = !DILocation(line: 389, column: 27, scope: !2251)
!2503 = !DILocation(line: 389, column: 22, scope: !2251)
!2504 = !DILocation(line: 389, column: 5, scope: !2251)
!2505 = !DILocation(line: 389, column: 11, scope: !2251)
!2506 = !DILocation(line: 389, column: 20, scope: !2251)
!2507 = !DILocation(line: 390, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2251, file: !48, line: 390, column: 9)
!2509 = !DILocation(line: 390, column: 16, scope: !2508)
!2510 = !DILocation(line: 390, column: 9, scope: !2251)
!2511 = !DILocation(line: 391, column: 13, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !48, line: 390, column: 26)
!2513 = !DILocation(line: 392, column: 24, scope: !2512)
!2514 = !DILocation(line: 392, column: 23, scope: !2512)
!2515 = !DILocation(line: 392, column: 22, scope: !2512)
!2516 = !DILocation(line: 391, column: 6, scope: !2512)
!2517 = !DILocation(line: 393, column: 6, scope: !2512)
!2518 = !DILocation(line: 395, column: 5, scope: !2251)
!2519 = !DILocation(line: 395, column: 11, scope: !2251)
!2520 = !DILocation(line: 395, column: 15, scope: !2251)
!2521 = !DILocation(line: 396, column: 11, scope: !2251)
!2522 = !DILocation(line: 397, column: 5, scope: !2251)
!2523 = !DILocation(line: 399, column: 5, scope: !2246)
!2524 = !DILocation(line: 399, column: 10, scope: !2246)
!2525 = !DILocation(line: 270, column: 2, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2219, file: !48, discriminator: 2)
!2527 = distinct !{!2527, !2240}
!2528 = !DILocation(line: 401, column: 6, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2219, file: !48, line: 401, column: 6)
!2530 = !DILocation(line: 401, column: 12, scope: !2529)
!2531 = !DILocation(line: 401, column: 17, scope: !2529)
!2532 = !DILocation(line: 401, column: 20, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2529, file: !48, discriminator: 1)
!2534 = !DILocation(line: 401, column: 26, scope: !2533)
!2535 = !DILocation(line: 401, column: 6, scope: !2533)
!2536 = !DILocation(line: 402, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2529, file: !48, line: 401, column: 32)
!2538 = !DILocation(line: 402, column: 3, scope: !2537)
!2539 = !DILocation(line: 403, column: 3, scope: !2537)
!2540 = !DILocation(line: 405, column: 1, scope: !2219)
!2541 = distinct !DISubprogram(name: "proxyspec_str", scope: !48, file: !48, line: 428, type: !2542, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!17, !1791}
!2544 = !DILocalVariable(name: "spec", arg: 1, scope: !2541, file: !48, line: 428, type: !1791)
!2545 = !DILocation(line: 428, column: 28, scope: !2541)
!2546 = !DILocalVariable(name: "s", scope: !2541, file: !48, line: 430, type: !17)
!2547 = !DILocation(line: 430, column: 8, scope: !2541)
!2548 = !DILocalVariable(name: "lhbuf", scope: !2541, file: !48, line: 431, type: !17)
!2549 = !DILocation(line: 431, column: 8, scope: !2541)
!2550 = !DILocalVariable(name: "lpbuf", scope: !2541, file: !48, line: 431, type: !17)
!2551 = !DILocation(line: 431, column: 16, scope: !2541)
!2552 = !DILocalVariable(name: "cbuf", scope: !2541, file: !48, line: 432, type: !17)
!2553 = !DILocation(line: 432, column: 8, scope: !2541)
!2554 = !DILocation(line: 433, column: 43, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2541, file: !48, line: 433, column: 6)
!2556 = !DILocation(line: 433, column: 49, scope: !2555)
!2557 = !DILocation(line: 433, column: 23, scope: !2555)
!2558 = !DILocation(line: 434, column: 23, scope: !2555)
!2559 = !DILocation(line: 434, column: 29, scope: !2555)
!2560 = !DILocation(line: 433, column: 6, scope: !2555)
!2561 = !DILocation(line: 434, column: 61, scope: !2555)
!2562 = !DILocation(line: 433, column: 6, scope: !2541)
!2563 = !DILocation(line: 435, column: 3, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2555, file: !48, line: 434, column: 67)
!2565 = !DILocation(line: 437, column: 6, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2541, file: !48, line: 437, column: 6)
!2567 = !DILocation(line: 437, column: 12, scope: !2566)
!2568 = !DILocation(line: 437, column: 6, scope: !2541)
!2569 = !DILocalVariable(name: "chbuf", scope: !2570, file: !48, line: 438, type: !17)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !48, line: 437, column: 29)
!2571 = !DILocation(line: 438, column: 9, scope: !2570)
!2572 = !DILocalVariable(name: "cpbuf", scope: !2570, file: !48, line: 438, type: !17)
!2573 = !DILocation(line: 438, column: 17, scope: !2570)
!2574 = !DILocation(line: 439, column: 44, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !48, line: 439, column: 7)
!2576 = !DILocation(line: 439, column: 50, scope: !2575)
!2577 = !DILocation(line: 439, column: 24, scope: !2575)
!2578 = !DILocation(line: 440, column: 24, scope: !2575)
!2579 = !DILocation(line: 440, column: 30, scope: !2575)
!2580 = !DILocation(line: 439, column: 7, scope: !2575)
!2581 = !DILocation(line: 441, column: 40, scope: !2575)
!2582 = !DILocation(line: 439, column: 7, scope: !2570)
!2583 = !DILocation(line: 442, column: 4, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2575, file: !48, line: 441, column: 46)
!2585 = !DILocation(line: 444, column: 34, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2570, file: !48, line: 444, column: 7)
!2587 = !DILocation(line: 444, column: 41, scope: !2586)
!2588 = !DILocation(line: 444, column: 7, scope: !2586)
!2589 = !DILocation(line: 444, column: 48, scope: !2586)
!2590 = !DILocation(line: 444, column: 7, scope: !2570)
!2591 = !DILocation(line: 445, column: 4, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2586, file: !48, line: 444, column: 53)
!2593 = !DILocation(line: 447, column: 8, scope: !2570)
!2594 = !DILocation(line: 447, column: 3, scope: !2570)
!2595 = !DILocation(line: 448, column: 8, scope: !2570)
!2596 = !DILocation(line: 448, column: 3, scope: !2570)
!2597 = !DILocation(line: 449, column: 2, scope: !2570)
!2598 = !DILocation(line: 450, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2541, file: !48, line: 450, column: 6)
!2600 = !DILocation(line: 450, column: 12, scope: !2599)
!2601 = !DILocation(line: 450, column: 6, scope: !2541)
!2602 = !DILocation(line: 451, column: 33, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !48, line: 451, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !48, line: 450, column: 22)
!2605 = !DILocation(line: 451, column: 39, scope: !2603)
!2606 = !DILocation(line: 451, column: 7, scope: !2603)
!2607 = !DILocation(line: 451, column: 49, scope: !2603)
!2608 = !DILocation(line: 451, column: 7, scope: !2604)
!2609 = !DILocation(line: 452, column: 4, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2603, file: !48, line: 451, column: 54)
!2611 = !DILocation(line: 454, column: 2, scope: !2604)
!2612 = !DILocation(line: 455, column: 40, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2541, file: !48, line: 455, column: 6)
!2614 = !DILocation(line: 455, column: 47, scope: !2613)
!2615 = !DILocation(line: 456, column: 16, scope: !2613)
!2616 = !DILocation(line: 456, column: 22, scope: !2613)
!2617 = !DILocation(line: 457, column: 16, scope: !2613)
!2618 = !DILocation(line: 457, column: 22, scope: !2613)
!2619 = !DILocation(line: 458, column: 16, scope: !2613)
!2620 = !DILocation(line: 458, column: 22, scope: !2613)
!2621 = !DILocation(line: 459, column: 16, scope: !2613)
!2622 = !DILocation(line: 459, column: 22, scope: !2613)
!2623 = !DILocation(line: 459, column: 34, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2613, file: !48, discriminator: 1)
!2625 = !DILocation(line: 459, column: 40, scope: !2624)
!2626 = !DILocation(line: 459, column: 16, scope: !2624)
!2627 = !DILocation(line: 459, column: 52, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2613, file: !48, discriminator: 2)
!2629 = !DILocation(line: 459, column: 16, scope: !2628)
!2630 = !DILocation(line: 459, column: 16, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2613, file: !48, discriminator: 3)
!2632 = !DILocation(line: 455, column: 6, scope: !2624)
!2633 = !DILocation(line: 459, column: 59, scope: !2631)
!2634 = !DILocation(line: 460, column: 5, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2613, file: !48, line: 459, column: 64)
!2636 = !DILocation(line: 461, column: 2, scope: !2635)
!2637 = !DILocation(line: 462, column: 7, scope: !2541)
!2638 = !DILocation(line: 462, column: 2, scope: !2541)
!2639 = !DILocation(line: 463, column: 7, scope: !2541)
!2640 = !DILocation(line: 463, column: 2, scope: !2541)
!2641 = !DILocation(line: 464, column: 6, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2541, file: !48, line: 464, column: 6)
!2643 = !DILocation(line: 464, column: 6, scope: !2541)
!2644 = !DILocation(line: 465, column: 8, scope: !2642)
!2645 = !DILocation(line: 465, column: 3, scope: !2642)
!2646 = !DILocation(line: 466, column: 9, scope: !2541)
!2647 = !DILocation(line: 466, column: 2, scope: !2541)
!2648 = !DILocation(line: 467, column: 1, scope: !2541)
!2649 = distinct !DISubprogram(name: "opts_set_cacrt", scope: !48, file: !48, line: 470, type: !2650, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !64, !51, !51}
!2652 = !DILocalVariable(name: "opts", arg: 1, scope: !2649, file: !48, line: 470, type: !64)
!2653 = !DILocation(line: 470, column: 24, scope: !2649)
!2654 = !DILocalVariable(name: "argv0", arg: 2, scope: !2649, file: !48, line: 470, type: !51)
!2655 = !DILocation(line: 470, column: 42, scope: !2649)
!2656 = !DILocalVariable(name: "optarg", arg: 3, scope: !2649, file: !48, line: 470, type: !51)
!2657 = !DILocation(line: 470, column: 61, scope: !2649)
!2658 = !DILocation(line: 472, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2649, file: !48, line: 472, column: 6)
!2660 = !DILocation(line: 472, column: 12, scope: !2659)
!2661 = !DILocation(line: 472, column: 6, scope: !2649)
!2662 = !DILocation(line: 473, column: 13, scope: !2659)
!2663 = !DILocation(line: 473, column: 19, scope: !2659)
!2664 = !DILocation(line: 473, column: 3, scope: !2659)
!2665 = !DILocation(line: 474, column: 30, scope: !2649)
!2666 = !DILocation(line: 474, column: 16, scope: !2649)
!2667 = !DILocation(line: 474, column: 2, scope: !2649)
!2668 = !DILocation(line: 474, column: 8, scope: !2649)
!2669 = !DILocation(line: 474, column: 14, scope: !2649)
!2670 = !DILocation(line: 475, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2649, file: !48, line: 475, column: 6)
!2672 = !DILocation(line: 475, column: 13, scope: !2671)
!2673 = !DILocation(line: 475, column: 6, scope: !2649)
!2674 = !DILocation(line: 476, column: 10, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !48, line: 475, column: 20)
!2676 = !DILocation(line: 477, column: 11, scope: !2675)
!2677 = !DILocation(line: 477, column: 18, scope: !2675)
!2678 = !DILocation(line: 476, column: 3, scope: !2675)
!2679 = !DILocation(line: 478, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !48, line: 478, column: 6)
!2681 = !DILocation(line: 478, column: 7, scope: !2680)
!2682 = !DILocation(line: 478, column: 6, scope: !2680)
!2683 = !DILocation(line: 478, column: 6, scope: !2675)
!2684 = !DILocation(line: 479, column: 11, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !48, line: 478, column: 13)
!2686 = !DILocation(line: 479, column: 38, scope: !2685)
!2687 = !DILocation(line: 479, column: 37, scope: !2685)
!2688 = !DILocation(line: 479, column: 27, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2685, file: !48, discriminator: 1)
!2690 = !DILocation(line: 479, column: 4, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2685, file: !48, discriminator: 2)
!2692 = !DILocation(line: 480, column: 3, scope: !2685)
!2693 = !DILocation(line: 481, column: 23, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2680, file: !48, line: 480, column: 10)
!2695 = !DILocation(line: 481, column: 4, scope: !2694)
!2696 = !DILocation(line: 483, column: 3, scope: !2675)
!2697 = !DILocation(line: 485, column: 24, scope: !2649)
!2698 = !DILocation(line: 485, column: 30, scope: !2649)
!2699 = !DILocation(line: 485, column: 2, scope: !2649)
!2700 = !DILocation(line: 486, column: 1, scope: !2649)
!2701 = !DILocation(line: 486, column: 7, scope: !2649)
!2702 = !DILocation(line: 486, column: 12, scope: !2649)
!2703 = !DILocation(line: 486, column: 34, scope: !2649)
!2704 = !DILocation(line: 487, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2649, file: !48, line: 487, column: 6)
!2706 = !DILocation(line: 487, column: 13, scope: !2705)
!2707 = !DILocation(line: 487, column: 6, scope: !2649)
!2708 = !DILocation(line: 488, column: 30, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !48, line: 487, column: 20)
!2710 = !DILocation(line: 488, column: 17, scope: !2709)
!2711 = !DILocation(line: 488, column: 3, scope: !2709)
!2712 = !DILocation(line: 488, column: 9, scope: !2709)
!2713 = !DILocation(line: 488, column: 15, scope: !2709)
!2714 = !DILocation(line: 489, column: 2, scope: !2709)
!2715 = !DILocation(line: 491, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2649, file: !48, line: 491, column: 6)
!2717 = !DILocation(line: 491, column: 13, scope: !2716)
!2718 = !DILocation(line: 491, column: 6, scope: !2649)
!2719 = !DILocation(line: 492, column: 26, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !48, line: 491, column: 17)
!2721 = !DILocation(line: 492, column: 14, scope: !2720)
!2722 = !DILocation(line: 492, column: 3, scope: !2720)
!2723 = !DILocation(line: 492, column: 9, scope: !2720)
!2724 = !DILocation(line: 492, column: 12, scope: !2720)
!2725 = !DILocation(line: 493, column: 2, scope: !2720)
!2726 = !DILocation(line: 498, column: 1, scope: !2649)
!2727 = distinct !DISubprogram(name: "opts_set_cakey", scope: !48, file: !48, line: 501, type: !2650, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2728 = !DILocalVariable(name: "opts", arg: 1, scope: !2727, file: !48, line: 501, type: !64)
!2729 = !DILocation(line: 501, column: 24, scope: !2727)
!2730 = !DILocalVariable(name: "argv0", arg: 2, scope: !2727, file: !48, line: 501, type: !51)
!2731 = !DILocation(line: 501, column: 42, scope: !2727)
!2732 = !DILocalVariable(name: "optarg", arg: 3, scope: !2727, file: !48, line: 501, type: !51)
!2733 = !DILocation(line: 501, column: 61, scope: !2727)
!2734 = !DILocation(line: 503, column: 6, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !48, line: 503, column: 6)
!2736 = !DILocation(line: 503, column: 12, scope: !2735)
!2737 = !DILocation(line: 503, column: 6, scope: !2727)
!2738 = !DILocation(line: 504, column: 17, scope: !2735)
!2739 = !DILocation(line: 504, column: 23, scope: !2735)
!2740 = !DILocation(line: 504, column: 3, scope: !2735)
!2741 = !DILocation(line: 505, column: 29, scope: !2727)
!2742 = !DILocation(line: 505, column: 16, scope: !2727)
!2743 = !DILocation(line: 505, column: 2, scope: !2727)
!2744 = !DILocation(line: 505, column: 8, scope: !2727)
!2745 = !DILocation(line: 505, column: 14, scope: !2727)
!2746 = !DILocation(line: 506, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2727, file: !48, line: 506, column: 6)
!2748 = !DILocation(line: 506, column: 13, scope: !2747)
!2749 = !DILocation(line: 506, column: 6, scope: !2727)
!2750 = !DILocation(line: 507, column: 10, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !48, line: 506, column: 20)
!2752 = !DILocation(line: 508, column: 11, scope: !2751)
!2753 = !DILocation(line: 508, column: 18, scope: !2751)
!2754 = !DILocation(line: 507, column: 3, scope: !2751)
!2755 = !DILocation(line: 509, column: 8, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !48, line: 509, column: 6)
!2757 = !DILocation(line: 509, column: 7, scope: !2756)
!2758 = !DILocation(line: 509, column: 6, scope: !2756)
!2759 = !DILocation(line: 509, column: 6, scope: !2751)
!2760 = !DILocation(line: 510, column: 11, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !48, line: 509, column: 13)
!2762 = !DILocation(line: 510, column: 38, scope: !2761)
!2763 = !DILocation(line: 510, column: 37, scope: !2761)
!2764 = !DILocation(line: 510, column: 27, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2761, file: !48, discriminator: 1)
!2766 = !DILocation(line: 510, column: 4, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2761, file: !48, discriminator: 2)
!2768 = !DILocation(line: 511, column: 3, scope: !2761)
!2769 = !DILocation(line: 512, column: 23, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2756, file: !48, line: 511, column: 10)
!2771 = !DILocation(line: 512, column: 4, scope: !2770)
!2772 = !DILocation(line: 514, column: 3, scope: !2751)
!2773 = !DILocation(line: 516, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2727, file: !48, line: 516, column: 6)
!2775 = !DILocation(line: 516, column: 13, scope: !2774)
!2776 = !DILocation(line: 516, column: 6, scope: !2727)
!2777 = !DILocation(line: 517, column: 31, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !48, line: 516, column: 20)
!2779 = !DILocation(line: 517, column: 17, scope: !2778)
!2780 = !DILocation(line: 517, column: 3, scope: !2778)
!2781 = !DILocation(line: 517, column: 9, scope: !2778)
!2782 = !DILocation(line: 517, column: 15, scope: !2778)
!2783 = !DILocation(line: 518, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !48, line: 518, column: 7)
!2785 = !DILocation(line: 518, column: 13, scope: !2784)
!2786 = !DILocation(line: 518, column: 7, scope: !2778)
!2787 = !DILocation(line: 519, column: 26, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !48, line: 518, column: 20)
!2789 = !DILocation(line: 519, column: 32, scope: !2788)
!2790 = !DILocation(line: 519, column: 4, scope: !2788)
!2791 = !DILocation(line: 520, column: 3, scope: !2788)
!2792 = !DILocation(line: 520, column: 9, scope: !2788)
!2793 = !DILocation(line: 520, column: 14, scope: !2788)
!2794 = !DILocation(line: 520, column: 36, scope: !2788)
!2795 = !DILocation(line: 521, column: 3, scope: !2788)
!2796 = !DILocation(line: 522, column: 2, scope: !2778)
!2797 = !DILocation(line: 524, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2727, file: !48, line: 524, column: 6)
!2799 = !DILocation(line: 524, column: 13, scope: !2798)
!2800 = !DILocation(line: 524, column: 6, scope: !2727)
!2801 = !DILocation(line: 525, column: 26, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !48, line: 524, column: 17)
!2803 = !DILocation(line: 525, column: 14, scope: !2802)
!2804 = !DILocation(line: 525, column: 3, scope: !2802)
!2805 = !DILocation(line: 525, column: 9, scope: !2802)
!2806 = !DILocation(line: 525, column: 12, scope: !2802)
!2807 = !DILocation(line: 526, column: 2, scope: !2802)
!2808 = !DILocation(line: 531, column: 1, scope: !2727)
!2809 = distinct !DISubprogram(name: "opts_set_chain", scope: !48, file: !48, line: 534, type: !2650, isLocal: false, isDefinition: true, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2810 = !DILocalVariable(name: "opts", arg: 1, scope: !2809, file: !48, line: 534, type: !64)
!2811 = !DILocation(line: 534, column: 24, scope: !2809)
!2812 = !DILocalVariable(name: "argv0", arg: 2, scope: !2809, file: !48, line: 534, type: !51)
!2813 = !DILocation(line: 534, column: 42, scope: !2809)
!2814 = !DILocalVariable(name: "optarg", arg: 3, scope: !2809, file: !48, line: 534, type: !51)
!2815 = !DILocation(line: 534, column: 61, scope: !2809)
!2816 = !DILocation(line: 536, column: 31, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !48, line: 536, column: 6)
!2818 = !DILocation(line: 536, column: 37, scope: !2817)
!2819 = !DILocation(line: 536, column: 44, scope: !2817)
!2820 = !DILocation(line: 536, column: 6, scope: !2817)
!2821 = !DILocation(line: 536, column: 52, scope: !2817)
!2822 = !DILocation(line: 536, column: 6, scope: !2809)
!2823 = !DILocation(line: 537, column: 10, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2817, file: !48, line: 536, column: 59)
!2825 = !DILocation(line: 538, column: 11, scope: !2824)
!2826 = !DILocation(line: 538, column: 18, scope: !2824)
!2827 = !DILocation(line: 537, column: 3, scope: !2824)
!2828 = !DILocation(line: 539, column: 8, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !48, line: 539, column: 6)
!2830 = !DILocation(line: 539, column: 7, scope: !2829)
!2831 = !DILocation(line: 539, column: 6, scope: !2829)
!2832 = !DILocation(line: 539, column: 6, scope: !2824)
!2833 = !DILocation(line: 540, column: 11, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !48, line: 539, column: 13)
!2835 = !DILocation(line: 540, column: 38, scope: !2834)
!2836 = !DILocation(line: 540, column: 37, scope: !2834)
!2837 = !DILocation(line: 540, column: 27, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2834, file: !48, discriminator: 1)
!2839 = !DILocation(line: 540, column: 4, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2834, file: !48, discriminator: 2)
!2841 = !DILocation(line: 541, column: 3, scope: !2834)
!2842 = !DILocation(line: 542, column: 23, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2829, file: !48, line: 541, column: 10)
!2844 = !DILocation(line: 542, column: 4, scope: !2843)
!2845 = !DILocation(line: 544, column: 3, scope: !2824)
!2846 = !DILocation(line: 549, column: 1, scope: !2809)
!2847 = distinct !DISubprogram(name: "opts_set_key", scope: !48, file: !48, line: 552, type: !2650, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2848 = !DILocalVariable(name: "opts", arg: 1, scope: !2847, file: !48, line: 552, type: !64)
!2849 = !DILocation(line: 552, column: 22, scope: !2847)
!2850 = !DILocalVariable(name: "argv0", arg: 2, scope: !2847, file: !48, line: 552, type: !51)
!2851 = !DILocation(line: 552, column: 40, scope: !2847)
!2852 = !DILocalVariable(name: "optarg", arg: 3, scope: !2847, file: !48, line: 552, type: !51)
!2853 = !DILocation(line: 552, column: 59, scope: !2847)
!2854 = !DILocation(line: 554, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2847, file: !48, line: 554, column: 6)
!2856 = !DILocation(line: 554, column: 12, scope: !2855)
!2857 = !DILocation(line: 554, column: 6, scope: !2847)
!2858 = !DILocation(line: 555, column: 17, scope: !2855)
!2859 = !DILocation(line: 555, column: 23, scope: !2855)
!2860 = !DILocation(line: 555, column: 3, scope: !2855)
!2861 = !DILocation(line: 556, column: 27, scope: !2847)
!2862 = !DILocation(line: 556, column: 14, scope: !2847)
!2863 = !DILocation(line: 556, column: 2, scope: !2847)
!2864 = !DILocation(line: 556, column: 8, scope: !2847)
!2865 = !DILocation(line: 556, column: 12, scope: !2847)
!2866 = !DILocation(line: 557, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2847, file: !48, line: 557, column: 6)
!2868 = !DILocation(line: 557, column: 13, scope: !2867)
!2869 = !DILocation(line: 557, column: 6, scope: !2847)
!2870 = !DILocation(line: 558, column: 10, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !48, line: 557, column: 18)
!2872 = !DILocation(line: 559, column: 11, scope: !2871)
!2873 = !DILocation(line: 559, column: 18, scope: !2871)
!2874 = !DILocation(line: 558, column: 3, scope: !2871)
!2875 = !DILocation(line: 560, column: 8, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !48, line: 560, column: 6)
!2877 = !DILocation(line: 560, column: 7, scope: !2876)
!2878 = !DILocation(line: 560, column: 6, scope: !2876)
!2879 = !DILocation(line: 560, column: 6, scope: !2871)
!2880 = !DILocation(line: 561, column: 11, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !48, line: 560, column: 13)
!2882 = !DILocation(line: 561, column: 38, scope: !2881)
!2883 = !DILocation(line: 561, column: 37, scope: !2881)
!2884 = !DILocation(line: 561, column: 27, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2881, file: !48, discriminator: 1)
!2886 = !DILocation(line: 561, column: 4, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2881, file: !48, discriminator: 2)
!2888 = !DILocation(line: 562, column: 3, scope: !2881)
!2889 = !DILocation(line: 563, column: 23, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2876, file: !48, line: 562, column: 10)
!2891 = !DILocation(line: 563, column: 4, scope: !2890)
!2892 = !DILocation(line: 565, column: 3, scope: !2871)
!2893 = !DILocation(line: 568, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2847, file: !48, line: 568, column: 6)
!2895 = !DILocation(line: 568, column: 13, scope: !2894)
!2896 = !DILocation(line: 568, column: 6, scope: !2847)
!2897 = !DILocation(line: 569, column: 26, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !48, line: 568, column: 17)
!2899 = !DILocation(line: 569, column: 14, scope: !2898)
!2900 = !DILocation(line: 569, column: 3, scope: !2898)
!2901 = !DILocation(line: 569, column: 9, scope: !2898)
!2902 = !DILocation(line: 569, column: 12, scope: !2898)
!2903 = !DILocation(line: 570, column: 2, scope: !2898)
!2904 = !DILocation(line: 575, column: 1, scope: !2847)
!2905 = distinct !DISubprogram(name: "opts_set_crl", scope: !48, file: !48, line: 578, type: !2906, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !64, !51}
!2908 = !DILocalVariable(name: "opts", arg: 1, scope: !2905, file: !48, line: 578, type: !64)
!2909 = !DILocation(line: 578, column: 22, scope: !2905)
!2910 = !DILocalVariable(name: "optarg", arg: 2, scope: !2905, file: !48, line: 578, type: !51)
!2911 = !DILocation(line: 578, column: 40, scope: !2905)
!2912 = !DILocation(line: 580, column: 6, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2905, file: !48, line: 580, column: 6)
!2914 = !DILocation(line: 580, column: 12, scope: !2913)
!2915 = !DILocation(line: 580, column: 6, scope: !2905)
!2916 = !DILocation(line: 581, column: 8, scope: !2913)
!2917 = !DILocation(line: 581, column: 14, scope: !2913)
!2918 = !DILocation(line: 581, column: 3, scope: !2913)
!2919 = !DILocation(line: 582, column: 24, scope: !2905)
!2920 = !DILocation(line: 582, column: 17, scope: !2905)
!2921 = !DILocation(line: 582, column: 2, scope: !2905)
!2922 = !DILocation(line: 582, column: 8, scope: !2905)
!2923 = !DILocation(line: 582, column: 15, scope: !2905)
!2924 = !DILocation(line: 586, column: 1, scope: !2905)
!2925 = distinct !DISubprogram(name: "opts_set_tgcrtdir", scope: !48, file: !48, line: 589, type: !2650, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2926 = !DILocalVariable(name: "opts", arg: 1, scope: !2925, file: !48, line: 589, type: !64)
!2927 = !DILocation(line: 589, column: 27, scope: !2925)
!2928 = !DILocalVariable(name: "argv0", arg: 2, scope: !2925, file: !48, line: 589, type: !51)
!2929 = !DILocation(line: 589, column: 45, scope: !2925)
!2930 = !DILocalVariable(name: "optarg", arg: 3, scope: !2925, file: !48, line: 589, type: !51)
!2931 = !DILocation(line: 589, column: 64, scope: !2925)
!2932 = !DILocation(line: 591, column: 17, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !48, line: 591, column: 6)
!2934 = !DILocation(line: 591, column: 7, scope: !2933)
!2935 = !DILocation(line: 591, column: 6, scope: !2925)
!2936 = !DILocation(line: 592, column: 10, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !48, line: 591, column: 26)
!2938 = !DILocation(line: 593, column: 11, scope: !2937)
!2939 = !DILocation(line: 593, column: 18, scope: !2937)
!2940 = !DILocation(line: 592, column: 3, scope: !2937)
!2941 = !DILocation(line: 594, column: 3, scope: !2937)
!2942 = !DILocation(line: 596, column: 6, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2925, file: !48, line: 596, column: 6)
!2944 = !DILocation(line: 596, column: 12, scope: !2943)
!2945 = !DILocation(line: 596, column: 6, scope: !2925)
!2946 = !DILocation(line: 597, column: 8, scope: !2943)
!2947 = !DILocation(line: 597, column: 14, scope: !2943)
!2948 = !DILocation(line: 597, column: 3, scope: !2943)
!2949 = !DILocation(line: 598, column: 26, scope: !2925)
!2950 = !DILocation(line: 598, column: 19, scope: !2925)
!2951 = !DILocation(line: 598, column: 2, scope: !2925)
!2952 = !DILocation(line: 598, column: 8, scope: !2925)
!2953 = !DILocation(line: 598, column: 17, scope: !2925)
!2954 = !DILocation(line: 599, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2925, file: !48, line: 599, column: 6)
!2956 = !DILocation(line: 599, column: 13, scope: !2955)
!2957 = !DILocation(line: 599, column: 6, scope: !2925)
!2958 = !DILocation(line: 600, column: 11, scope: !2955)
!2959 = !DILocation(line: 600, column: 3, scope: !2955)
!2960 = !DILocation(line: 604, column: 1, scope: !2925)
!2961 = distinct !DISubprogram(name: "opts_set_certgendir_writegencerts", scope: !48, file: !48, line: 617, type: !2650, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2962 = !DILocalVariable(name: "opts", arg: 1, scope: !2961, file: !48, line: 617, type: !64)
!2963 = !DILocation(line: 617, column: 43, scope: !2961)
!2964 = !DILocalVariable(name: "argv0", arg: 2, scope: !2961, file: !48, line: 617, type: !51)
!2965 = !DILocation(line: 617, column: 61, scope: !2961)
!2966 = !DILocalVariable(name: "optarg", arg: 3, scope: !2961, file: !48, line: 618, type: !51)
!2967 = !DILocation(line: 618, column: 47, scope: !2961)
!2968 = !DILocation(line: 620, column: 2, scope: !2961)
!2969 = !DILocation(line: 620, column: 8, scope: !2961)
!2970 = !DILocation(line: 620, column: 25, scope: !2961)
!2971 = !DILocation(line: 621, column: 17, scope: !2961)
!2972 = !DILocation(line: 621, column: 23, scope: !2961)
!2973 = !DILocation(line: 621, column: 30, scope: !2961)
!2974 = !DILocation(line: 621, column: 2, scope: !2961)
!2975 = !DILocation(line: 626, column: 1, scope: !2961)
!2976 = distinct !DISubprogram(name: "set_certgendir", scope: !48, file: !48, line: 607, type: !2650, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2977 = !DILocalVariable(name: "opts", arg: 1, scope: !2976, file: !48, line: 607, type: !64)
!2978 = !DILocation(line: 607, column: 24, scope: !2976)
!2979 = !DILocalVariable(name: "argv0", arg: 2, scope: !2976, file: !48, line: 607, type: !51)
!2980 = !DILocation(line: 607, column: 42, scope: !2976)
!2981 = !DILocalVariable(name: "optarg", arg: 3, scope: !2976, file: !48, line: 607, type: !51)
!2982 = !DILocation(line: 607, column: 61, scope: !2976)
!2983 = !DILocation(line: 609, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !48, line: 609, column: 6)
!2985 = !DILocation(line: 609, column: 12, scope: !2984)
!2986 = !DILocation(line: 609, column: 6, scope: !2976)
!2987 = !DILocation(line: 610, column: 8, scope: !2984)
!2988 = !DILocation(line: 610, column: 14, scope: !2984)
!2989 = !DILocation(line: 610, column: 3, scope: !2984)
!2990 = !DILocation(line: 611, column: 28, scope: !2976)
!2991 = !DILocation(line: 611, column: 21, scope: !2976)
!2992 = !DILocation(line: 611, column: 2, scope: !2976)
!2993 = !DILocation(line: 611, column: 8, scope: !2976)
!2994 = !DILocation(line: 611, column: 19, scope: !2976)
!2995 = !DILocation(line: 612, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2976, file: !48, line: 612, column: 6)
!2997 = !DILocation(line: 612, column: 13, scope: !2996)
!2998 = !DILocation(line: 612, column: 6, scope: !2976)
!2999 = !DILocation(line: 613, column: 11, scope: !2996)
!3000 = !DILocation(line: 613, column: 3, scope: !2996)
!3001 = !DILocation(line: 614, column: 1, scope: !2976)
!3002 = distinct !DISubprogram(name: "opts_set_certgendir_writeall", scope: !48, file: !48, line: 629, type: !2650, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3003 = !DILocalVariable(name: "opts", arg: 1, scope: !3002, file: !48, line: 629, type: !64)
!3004 = !DILocation(line: 629, column: 38, scope: !3002)
!3005 = !DILocalVariable(name: "argv0", arg: 2, scope: !3002, file: !48, line: 629, type: !51)
!3006 = !DILocation(line: 629, column: 56, scope: !3002)
!3007 = !DILocalVariable(name: "optarg", arg: 3, scope: !3002, file: !48, line: 630, type: !51)
!3008 = !DILocation(line: 630, column: 42, scope: !3002)
!3009 = !DILocation(line: 632, column: 2, scope: !3002)
!3010 = !DILocation(line: 632, column: 8, scope: !3002)
!3011 = !DILocation(line: 632, column: 25, scope: !3002)
!3012 = !DILocation(line: 633, column: 17, scope: !3002)
!3013 = !DILocation(line: 633, column: 23, scope: !3002)
!3014 = !DILocation(line: 633, column: 30, scope: !3002)
!3015 = !DILocation(line: 633, column: 2, scope: !3002)
!3016 = !DILocation(line: 638, column: 1, scope: !3002)
!3017 = distinct !DISubprogram(name: "opts_set_deny_ocsp", scope: !48, file: !48, line: 641, type: !1855, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3018 = !DILocalVariable(name: "opts", arg: 1, scope: !3017, file: !48, line: 641, type: !64)
!3019 = !DILocation(line: 641, column: 28, scope: !3017)
!3020 = !DILocation(line: 643, column: 2, scope: !3017)
!3021 = !DILocation(line: 643, column: 8, scope: !3017)
!3022 = !DILocation(line: 643, column: 18, scope: !3017)
!3023 = !DILocation(line: 644, column: 1, scope: !3017)
!3024 = distinct !DISubprogram(name: "opts_unset_deny_ocsp", scope: !48, file: !48, line: 647, type: !1855, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3025 = !DILocalVariable(name: "opts", arg: 1, scope: !3024, file: !48, line: 647, type: !64)
!3026 = !DILocation(line: 647, column: 30, scope: !3024)
!3027 = !DILocation(line: 649, column: 2, scope: !3024)
!3028 = !DILocation(line: 649, column: 8, scope: !3024)
!3029 = !DILocation(line: 649, column: 18, scope: !3024)
!3030 = !DILocation(line: 650, column: 1, scope: !3024)
!3031 = distinct !DISubprogram(name: "opts_set_passthrough", scope: !48, file: !48, line: 653, type: !1855, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3032 = !DILocalVariable(name: "opts", arg: 1, scope: !3031, file: !48, line: 653, type: !64)
!3033 = !DILocation(line: 653, column: 30, scope: !3031)
!3034 = !DILocation(line: 655, column: 2, scope: !3031)
!3035 = !DILocation(line: 655, column: 8, scope: !3031)
!3036 = !DILocation(line: 655, column: 20, scope: !3031)
!3037 = !DILocation(line: 656, column: 1, scope: !3031)
!3038 = distinct !DISubprogram(name: "opts_unset_passthrough", scope: !48, file: !48, line: 659, type: !1855, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3039 = !DILocalVariable(name: "opts", arg: 1, scope: !3038, file: !48, line: 659, type: !64)
!3040 = !DILocation(line: 659, column: 32, scope: !3038)
!3041 = !DILocation(line: 661, column: 2, scope: !3038)
!3042 = !DILocation(line: 661, column: 8, scope: !3038)
!3043 = !DILocation(line: 661, column: 20, scope: !3038)
!3044 = !DILocation(line: 662, column: 1, scope: !3038)
!3045 = distinct !DISubprogram(name: "opts_set_clientcrt", scope: !48, file: !48, line: 665, type: !2650, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3046 = !DILocalVariable(name: "opts", arg: 1, scope: !3045, file: !48, line: 665, type: !64)
!3047 = !DILocation(line: 665, column: 28, scope: !3045)
!3048 = !DILocalVariable(name: "argv0", arg: 2, scope: !3045, file: !48, line: 665, type: !51)
!3049 = !DILocation(line: 665, column: 46, scope: !3045)
!3050 = !DILocalVariable(name: "optarg", arg: 3, scope: !3045, file: !48, line: 665, type: !51)
!3051 = !DILocation(line: 665, column: 65, scope: !3045)
!3052 = !DILocation(line: 667, column: 6, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3045, file: !48, line: 667, column: 6)
!3054 = !DILocation(line: 667, column: 12, scope: !3053)
!3055 = !DILocation(line: 667, column: 6, scope: !3045)
!3056 = !DILocation(line: 668, column: 13, scope: !3053)
!3057 = !DILocation(line: 668, column: 19, scope: !3053)
!3058 = !DILocation(line: 668, column: 3, scope: !3053)
!3059 = !DILocation(line: 669, column: 34, scope: !3045)
!3060 = !DILocation(line: 669, column: 20, scope: !3045)
!3061 = !DILocation(line: 669, column: 2, scope: !3045)
!3062 = !DILocation(line: 669, column: 8, scope: !3045)
!3063 = !DILocation(line: 669, column: 18, scope: !3045)
!3064 = !DILocation(line: 670, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3045, file: !48, line: 670, column: 6)
!3066 = !DILocation(line: 670, column: 13, scope: !3065)
!3067 = !DILocation(line: 670, column: 6, scope: !3045)
!3068 = !DILocation(line: 671, column: 10, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !48, line: 670, column: 24)
!3070 = !DILocation(line: 672, column: 11, scope: !3069)
!3071 = !DILocation(line: 672, column: 18, scope: !3069)
!3072 = !DILocation(line: 671, column: 3, scope: !3069)
!3073 = !DILocation(line: 673, column: 8, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !48, line: 673, column: 6)
!3075 = !DILocation(line: 673, column: 7, scope: !3074)
!3076 = !DILocation(line: 673, column: 6, scope: !3074)
!3077 = !DILocation(line: 673, column: 6, scope: !3069)
!3078 = !DILocation(line: 674, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !48, line: 673, column: 13)
!3080 = !DILocation(line: 674, column: 38, scope: !3079)
!3081 = !DILocation(line: 674, column: 37, scope: !3079)
!3082 = !DILocation(line: 674, column: 27, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3079, file: !48, discriminator: 1)
!3084 = !DILocation(line: 674, column: 4, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !3079, file: !48, discriminator: 2)
!3086 = !DILocation(line: 675, column: 3, scope: !3079)
!3087 = !DILocation(line: 676, column: 23, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3074, file: !48, line: 675, column: 10)
!3089 = !DILocation(line: 676, column: 4, scope: !3088)
!3090 = !DILocation(line: 678, column: 3, scope: !3069)
!3091 = !DILocation(line: 683, column: 1, scope: !3045)
!3092 = distinct !DISubprogram(name: "opts_set_clientkey", scope: !48, file: !48, line: 686, type: !2650, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3093 = !DILocalVariable(name: "opts", arg: 1, scope: !3092, file: !48, line: 686, type: !64)
!3094 = !DILocation(line: 686, column: 28, scope: !3092)
!3095 = !DILocalVariable(name: "argv0", arg: 2, scope: !3092, file: !48, line: 686, type: !51)
!3096 = !DILocation(line: 686, column: 46, scope: !3092)
!3097 = !DILocalVariable(name: "optarg", arg: 3, scope: !3092, file: !48, line: 686, type: !51)
!3098 = !DILocation(line: 686, column: 65, scope: !3092)
!3099 = !DILocation(line: 688, column: 6, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3092, file: !48, line: 688, column: 6)
!3101 = !DILocation(line: 688, column: 12, scope: !3100)
!3102 = !DILocation(line: 688, column: 6, scope: !3092)
!3103 = !DILocation(line: 689, column: 17, scope: !3100)
!3104 = !DILocation(line: 689, column: 23, scope: !3100)
!3105 = !DILocation(line: 689, column: 3, scope: !3100)
!3106 = !DILocation(line: 690, column: 33, scope: !3092)
!3107 = !DILocation(line: 690, column: 20, scope: !3092)
!3108 = !DILocation(line: 690, column: 2, scope: !3092)
!3109 = !DILocation(line: 690, column: 8, scope: !3092)
!3110 = !DILocation(line: 690, column: 18, scope: !3092)
!3111 = !DILocation(line: 691, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3092, file: !48, line: 691, column: 6)
!3113 = !DILocation(line: 691, column: 13, scope: !3112)
!3114 = !DILocation(line: 691, column: 6, scope: !3092)
!3115 = !DILocation(line: 692, column: 10, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !48, line: 691, column: 24)
!3117 = !DILocation(line: 693, column: 11, scope: !3116)
!3118 = !DILocation(line: 693, column: 18, scope: !3116)
!3119 = !DILocation(line: 692, column: 3, scope: !3116)
!3120 = !DILocation(line: 694, column: 8, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3116, file: !48, line: 694, column: 6)
!3122 = !DILocation(line: 694, column: 7, scope: !3121)
!3123 = !DILocation(line: 694, column: 6, scope: !3121)
!3124 = !DILocation(line: 694, column: 6, scope: !3116)
!3125 = !DILocation(line: 695, column: 11, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !48, line: 694, column: 13)
!3127 = !DILocation(line: 695, column: 38, scope: !3126)
!3128 = !DILocation(line: 695, column: 37, scope: !3126)
!3129 = !DILocation(line: 695, column: 27, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3126, file: !48, discriminator: 1)
!3131 = !DILocation(line: 695, column: 4, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3126, file: !48, discriminator: 2)
!3133 = !DILocation(line: 696, column: 3, scope: !3126)
!3134 = !DILocation(line: 697, column: 23, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3121, file: !48, line: 696, column: 10)
!3136 = !DILocation(line: 697, column: 4, scope: !3135)
!3137 = !DILocation(line: 699, column: 3, scope: !3116)
!3138 = !DILocation(line: 704, column: 1, scope: !3092)
!3139 = distinct !DISubprogram(name: "opts_set_dh", scope: !48, file: !48, line: 708, type: !2650, isLocal: false, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3140 = !DILocalVariable(name: "opts", arg: 1, scope: !3139, file: !48, line: 708, type: !64)
!3141 = !DILocation(line: 708, column: 21, scope: !3139)
!3142 = !DILocalVariable(name: "argv0", arg: 2, scope: !3139, file: !48, line: 708, type: !51)
!3143 = !DILocation(line: 708, column: 39, scope: !3139)
!3144 = !DILocalVariable(name: "optarg", arg: 3, scope: !3139, file: !48, line: 708, type: !51)
!3145 = !DILocation(line: 708, column: 58, scope: !3139)
!3146 = !DILocation(line: 710, column: 6, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3139, file: !48, line: 710, column: 6)
!3148 = !DILocation(line: 710, column: 12, scope: !3147)
!3149 = !DILocation(line: 710, column: 6, scope: !3139)
!3150 = !DILocation(line: 711, column: 11, scope: !3147)
!3151 = !DILocation(line: 711, column: 17, scope: !3147)
!3152 = !DILocation(line: 711, column: 3, scope: !3147)
!3153 = !DILocation(line: 712, column: 25, scope: !3139)
!3154 = !DILocation(line: 712, column: 13, scope: !3139)
!3155 = !DILocation(line: 712, column: 2, scope: !3139)
!3156 = !DILocation(line: 712, column: 8, scope: !3139)
!3157 = !DILocation(line: 712, column: 11, scope: !3139)
!3158 = !DILocation(line: 713, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3139, file: !48, line: 713, column: 6)
!3160 = !DILocation(line: 713, column: 13, scope: !3159)
!3161 = !DILocation(line: 713, column: 6, scope: !3139)
!3162 = !DILocation(line: 714, column: 10, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !48, line: 713, column: 17)
!3164 = !DILocation(line: 715, column: 11, scope: !3163)
!3165 = !DILocation(line: 715, column: 18, scope: !3163)
!3166 = !DILocation(line: 714, column: 3, scope: !3163)
!3167 = !DILocation(line: 716, column: 8, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !48, line: 716, column: 6)
!3169 = !DILocation(line: 716, column: 7, scope: !3168)
!3170 = !DILocation(line: 716, column: 6, scope: !3168)
!3171 = !DILocation(line: 716, column: 6, scope: !3163)
!3172 = !DILocation(line: 717, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !48, line: 716, column: 13)
!3174 = !DILocation(line: 717, column: 38, scope: !3173)
!3175 = !DILocation(line: 717, column: 37, scope: !3173)
!3176 = !DILocation(line: 717, column: 27, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3173, file: !48, discriminator: 1)
!3178 = !DILocation(line: 717, column: 4, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3173, file: !48, discriminator: 2)
!3180 = !DILocation(line: 718, column: 3, scope: !3173)
!3181 = !DILocation(line: 719, column: 23, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3168, file: !48, line: 718, column: 10)
!3183 = !DILocation(line: 719, column: 4, scope: !3182)
!3184 = !DILocation(line: 721, column: 3, scope: !3163)
!3185 = !DILocation(line: 726, column: 1, scope: !3139)
!3186 = distinct !DISubprogram(name: "opts_set_ecdhcurve", scope: !48, file: !48, line: 731, type: !2650, isLocal: false, isDefinition: true, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3187 = !DILocalVariable(name: "opts", arg: 1, scope: !3186, file: !48, line: 731, type: !64)
!3188 = !DILocation(line: 731, column: 28, scope: !3186)
!3189 = !DILocalVariable(name: "argv0", arg: 2, scope: !3186, file: !48, line: 731, type: !51)
!3190 = !DILocation(line: 731, column: 46, scope: !3186)
!3191 = !DILocalVariable(name: "optarg", arg: 3, scope: !3186, file: !48, line: 731, type: !51)
!3192 = !DILocation(line: 731, column: 65, scope: !3186)
!3193 = !DILocalVariable(name: "ec", scope: !3186, file: !48, line: 733, type: !558)
!3194 = !DILocation(line: 733, column: 10, scope: !3186)
!3195 = !DILocation(line: 734, column: 6, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3186, file: !48, line: 734, column: 6)
!3197 = !DILocation(line: 734, column: 12, scope: !3196)
!3198 = !DILocation(line: 734, column: 6, scope: !3186)
!3199 = !DILocation(line: 735, column: 8, scope: !3196)
!3200 = !DILocation(line: 735, column: 14, scope: !3196)
!3201 = !DILocation(line: 735, column: 3, scope: !3196)
!3202 = !DILocation(line: 736, column: 28, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3186, file: !48, line: 736, column: 6)
!3204 = !DILocation(line: 736, column: 13, scope: !3203)
!3205 = !DILocation(line: 736, column: 11, scope: !3203)
!3206 = !DILocation(line: 736, column: 6, scope: !3186)
!3207 = !DILocation(line: 737, column: 10, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !48, line: 736, column: 38)
!3209 = !DILocation(line: 737, column: 46, scope: !3208)
!3210 = !DILocation(line: 737, column: 53, scope: !3208)
!3211 = !DILocation(line: 737, column: 3, scope: !3208)
!3212 = !DILocation(line: 738, column: 3, scope: !3208)
!3213 = !DILocation(line: 740, column: 14, scope: !3186)
!3214 = !DILocation(line: 740, column: 2, scope: !3186)
!3215 = !DILocation(line: 741, column: 27, scope: !3186)
!3216 = !DILocation(line: 741, column: 20, scope: !3186)
!3217 = !DILocation(line: 741, column: 2, scope: !3186)
!3218 = !DILocation(line: 741, column: 8, scope: !3186)
!3219 = !DILocation(line: 741, column: 18, scope: !3186)
!3220 = !DILocation(line: 742, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3186, file: !48, line: 742, column: 6)
!3222 = !DILocation(line: 742, column: 13, scope: !3221)
!3223 = !DILocation(line: 742, column: 6, scope: !3186)
!3224 = !DILocation(line: 743, column: 11, scope: !3221)
!3225 = !DILocation(line: 743, column: 3, scope: !3221)
!3226 = !DILocation(line: 747, column: 1, scope: !3186)
!3227 = distinct !DISubprogram(name: "opts_set_sslcomp", scope: !48, file: !48, line: 751, type: !1855, isLocal: false, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3228 = !DILocalVariable(name: "opts", arg: 1, scope: !3227, file: !48, line: 751, type: !64)
!3229 = !DILocation(line: 751, column: 26, scope: !3227)
!3230 = !DILocation(line: 753, column: 2, scope: !3227)
!3231 = !DILocation(line: 753, column: 8, scope: !3227)
!3232 = !DILocation(line: 753, column: 16, scope: !3227)
!3233 = !DILocation(line: 754, column: 1, scope: !3227)
!3234 = distinct !DISubprogram(name: "opts_unset_sslcomp", scope: !48, file: !48, line: 757, type: !1855, isLocal: false, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3235 = !DILocalVariable(name: "opts", arg: 1, scope: !3234, file: !48, line: 757, type: !64)
!3236 = !DILocation(line: 757, column: 28, scope: !3234)
!3237 = !DILocation(line: 759, column: 2, scope: !3234)
!3238 = !DILocation(line: 759, column: 8, scope: !3234)
!3239 = !DILocation(line: 759, column: 16, scope: !3234)
!3240 = !DILocation(line: 760, column: 1, scope: !3234)
!3241 = distinct !DISubprogram(name: "opts_set_ciphers", scope: !48, file: !48, line: 763, type: !2650, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3242 = !DILocalVariable(name: "opts", arg: 1, scope: !3241, file: !48, line: 763, type: !64)
!3243 = !DILocation(line: 763, column: 26, scope: !3241)
!3244 = !DILocalVariable(name: "argv0", arg: 2, scope: !3241, file: !48, line: 763, type: !51)
!3245 = !DILocation(line: 763, column: 44, scope: !3241)
!3246 = !DILocalVariable(name: "optarg", arg: 3, scope: !3241, file: !48, line: 763, type: !51)
!3247 = !DILocation(line: 763, column: 63, scope: !3241)
!3248 = !DILocation(line: 765, column: 6, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3241, file: !48, line: 765, column: 6)
!3250 = !DILocation(line: 765, column: 12, scope: !3249)
!3251 = !DILocation(line: 765, column: 6, scope: !3241)
!3252 = !DILocation(line: 766, column: 8, scope: !3249)
!3253 = !DILocation(line: 766, column: 14, scope: !3249)
!3254 = !DILocation(line: 766, column: 3, scope: !3249)
!3255 = !DILocation(line: 767, column: 25, scope: !3241)
!3256 = !DILocation(line: 767, column: 18, scope: !3241)
!3257 = !DILocation(line: 767, column: 2, scope: !3241)
!3258 = !DILocation(line: 767, column: 8, scope: !3241)
!3259 = !DILocation(line: 767, column: 16, scope: !3241)
!3260 = !DILocation(line: 768, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3241, file: !48, line: 768, column: 6)
!3262 = !DILocation(line: 768, column: 13, scope: !3261)
!3263 = !DILocation(line: 768, column: 6, scope: !3241)
!3264 = !DILocation(line: 769, column: 11, scope: !3261)
!3265 = !DILocation(line: 769, column: 3, scope: !3261)
!3266 = !DILocation(line: 773, column: 1, scope: !3241)
!3267 = distinct !DISubprogram(name: "opts_set_openssl_engine", scope: !48, file: !48, line: 777, type: !2650, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3268 = !DILocalVariable(name: "opts", arg: 1, scope: !3267, file: !48, line: 777, type: !64)
!3269 = !DILocation(line: 777, column: 33, scope: !3267)
!3270 = !DILocalVariable(name: "argv0", arg: 2, scope: !3267, file: !48, line: 777, type: !51)
!3271 = !DILocation(line: 777, column: 51, scope: !3267)
!3272 = !DILocalVariable(name: "optarg", arg: 3, scope: !3267, file: !48, line: 777, type: !51)
!3273 = !DILocation(line: 777, column: 70, scope: !3267)
!3274 = !DILocation(line: 779, column: 6, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3267, file: !48, line: 779, column: 6)
!3276 = !DILocation(line: 779, column: 12, scope: !3275)
!3277 = !DILocation(line: 779, column: 6, scope: !3267)
!3278 = !DILocation(line: 780, column: 8, scope: !3275)
!3279 = !DILocation(line: 780, column: 14, scope: !3275)
!3280 = !DILocation(line: 780, column: 3, scope: !3275)
!3281 = !DILocation(line: 781, column: 32, scope: !3267)
!3282 = !DILocation(line: 781, column: 25, scope: !3267)
!3283 = !DILocation(line: 781, column: 2, scope: !3267)
!3284 = !DILocation(line: 781, column: 8, scope: !3267)
!3285 = !DILocation(line: 781, column: 23, scope: !3267)
!3286 = !DILocation(line: 782, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3267, file: !48, line: 782, column: 6)
!3288 = !DILocation(line: 782, column: 13, scope: !3287)
!3289 = !DILocation(line: 782, column: 6, scope: !3267)
!3290 = !DILocation(line: 783, column: 11, scope: !3287)
!3291 = !DILocation(line: 783, column: 3, scope: !3287)
!3292 = !DILocation(line: 787, column: 1, scope: !3267)
!3293 = distinct !DISubprogram(name: "opts_force_proto", scope: !48, file: !48, line: 795, type: !2650, isLocal: false, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3294 = !DILocalVariable(name: "opts", arg: 1, scope: !3293, file: !48, line: 795, type: !64)
!3295 = !DILocation(line: 795, column: 26, scope: !3293)
!3296 = !DILocalVariable(name: "argv0", arg: 2, scope: !3293, file: !48, line: 795, type: !51)
!3297 = !DILocation(line: 795, column: 44, scope: !3293)
!3298 = !DILocalVariable(name: "optarg", arg: 3, scope: !3293, file: !48, line: 795, type: !51)
!3299 = !DILocation(line: 795, column: 63, scope: !3293)
!3300 = !DILocation(line: 798, column: 6, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3293, file: !48, line: 798, column: 6)
!3302 = !DILocation(line: 798, column: 12, scope: !3301)
!3303 = !DILocation(line: 798, column: 22, scope: !3301)
!3304 = !DILocation(line: 798, column: 6, scope: !3293)
!3305 = !DILocation(line: 802, column: 10, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !48, line: 798, column: 40)
!3307 = !DILocation(line: 802, column: 56, scope: !3306)
!3308 = !DILocation(line: 802, column: 3, scope: !3306)
!3309 = !DILocation(line: 803, column: 3, scope: !3306)
!3310 = !DILocation(line: 813, column: 14, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3293, file: !48, line: 813, column: 6)
!3312 = !DILocation(line: 813, column: 7, scope: !3311)
!3313 = !DILocation(line: 813, column: 6, scope: !3293)
!3314 = !DILocation(line: 814, column: 3, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !48, line: 813, column: 31)
!3316 = !DILocation(line: 814, column: 9, scope: !3315)
!3317 = !DILocation(line: 814, column: 19, scope: !3315)
!3318 = !DILocation(line: 815, column: 2, scope: !3315)
!3319 = !DILocation(line: 818, column: 14, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !48, line: 818, column: 6)
!3321 = !DILocation(line: 818, column: 7, scope: !3320)
!3322 = !DILocation(line: 818, column: 31, scope: !3320)
!3323 = !DILocation(line: 818, column: 42, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3320, file: !48, discriminator: 1)
!3325 = !DILocation(line: 818, column: 35, scope: !3324)
!3326 = !DILocation(line: 818, column: 6, scope: !3324)
!3327 = !DILocation(line: 819, column: 3, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !48, line: 818, column: 59)
!3329 = !DILocation(line: 819, column: 9, scope: !3328)
!3330 = !DILocation(line: 819, column: 19, scope: !3328)
!3331 = !DILocation(line: 820, column: 2, scope: !3328)
!3332 = !DILocation(line: 823, column: 14, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3320, file: !48, line: 823, column: 6)
!3334 = !DILocation(line: 823, column: 7, scope: !3333)
!3335 = !DILocation(line: 823, column: 6, scope: !3320)
!3336 = !DILocation(line: 824, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !48, line: 823, column: 32)
!3338 = !DILocation(line: 824, column: 9, scope: !3337)
!3339 = !DILocation(line: 824, column: 19, scope: !3337)
!3340 = !DILocation(line: 825, column: 2, scope: !3337)
!3341 = !DILocation(line: 828, column: 14, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3333, file: !48, line: 828, column: 6)
!3343 = !DILocation(line: 828, column: 7, scope: !3342)
!3344 = !DILocation(line: 828, column: 6, scope: !3333)
!3345 = !DILocation(line: 829, column: 3, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !48, line: 828, column: 32)
!3347 = !DILocation(line: 829, column: 9, scope: !3346)
!3348 = !DILocation(line: 829, column: 19, scope: !3346)
!3349 = !DILocation(line: 830, column: 2, scope: !3346)
!3350 = !DILocation(line: 860, column: 10, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3342, file: !48, line: 859, column: 2)
!3352 = !DILocation(line: 861, column: 19, scope: !3351)
!3353 = !DILocation(line: 861, column: 26, scope: !3351)
!3354 = !DILocation(line: 860, column: 3, scope: !3351)
!3355 = !DILocation(line: 862, column: 3, scope: !3351)
!3356 = !DILocation(line: 867, column: 1, scope: !3293)
!3357 = distinct !DISubprogram(name: "opts_disable_proto", scope: !48, file: !48, line: 874, type: !2650, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3358 = !DILocalVariable(name: "opts", arg: 1, scope: !3357, file: !48, line: 874, type: !64)
!3359 = !DILocation(line: 874, column: 28, scope: !3357)
!3360 = !DILocalVariable(name: "argv0", arg: 2, scope: !3357, file: !48, line: 874, type: !51)
!3361 = !DILocation(line: 874, column: 46, scope: !3357)
!3362 = !DILocalVariable(name: "optarg", arg: 3, scope: !3357, file: !48, line: 874, type: !51)
!3363 = !DILocation(line: 874, column: 65, scope: !3357)
!3364 = !DILocation(line: 882, column: 14, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3357, file: !48, line: 882, column: 6)
!3366 = !DILocation(line: 882, column: 7, scope: !3365)
!3367 = !DILocation(line: 882, column: 6, scope: !3357)
!3368 = !DILocation(line: 883, column: 3, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3365, file: !48, line: 882, column: 31)
!3370 = !DILocation(line: 883, column: 9, scope: !3369)
!3371 = !DILocation(line: 883, column: 17, scope: !3369)
!3372 = !DILocation(line: 884, column: 2, scope: !3369)
!3373 = !DILocation(line: 887, column: 14, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !48, line: 887, column: 6)
!3375 = !DILocation(line: 887, column: 7, scope: !3374)
!3376 = !DILocation(line: 887, column: 31, scope: !3374)
!3377 = !DILocation(line: 887, column: 42, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3374, file: !48, discriminator: 1)
!3379 = !DILocation(line: 887, column: 35, scope: !3378)
!3380 = !DILocation(line: 887, column: 6, scope: !3378)
!3381 = !DILocation(line: 888, column: 3, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3374, file: !48, line: 887, column: 59)
!3383 = !DILocation(line: 888, column: 9, scope: !3382)
!3384 = !DILocation(line: 888, column: 18, scope: !3382)
!3385 = !DILocation(line: 889, column: 2, scope: !3382)
!3386 = !DILocation(line: 892, column: 14, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3374, file: !48, line: 892, column: 6)
!3388 = !DILocation(line: 892, column: 7, scope: !3387)
!3389 = !DILocation(line: 892, column: 6, scope: !3374)
!3390 = !DILocation(line: 893, column: 3, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3387, file: !48, line: 892, column: 32)
!3392 = !DILocation(line: 893, column: 9, scope: !3391)
!3393 = !DILocation(line: 893, column: 18, scope: !3391)
!3394 = !DILocation(line: 894, column: 2, scope: !3391)
!3395 = !DILocation(line: 897, column: 14, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3387, file: !48, line: 897, column: 6)
!3397 = !DILocation(line: 897, column: 7, scope: !3396)
!3398 = !DILocation(line: 897, column: 6, scope: !3387)
!3399 = !DILocation(line: 898, column: 3, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !48, line: 897, column: 32)
!3401 = !DILocation(line: 898, column: 9, scope: !3400)
!3402 = !DILocation(line: 898, column: 18, scope: !3400)
!3403 = !DILocation(line: 899, column: 2, scope: !3400)
!3404 = !DILocation(line: 902, column: 10, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3396, file: !48, line: 901, column: 2)
!3406 = !DILocation(line: 903, column: 19, scope: !3405)
!3407 = !DILocation(line: 903, column: 26, scope: !3405)
!3408 = !DILocation(line: 902, column: 3, scope: !3405)
!3409 = !DILocation(line: 904, column: 3, scope: !3405)
!3410 = !DILocation(line: 909, column: 1, scope: !3357)
!3411 = distinct !DISubprogram(name: "opts_set_user", scope: !48, file: !48, line: 912, type: !2650, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3412 = !DILocalVariable(name: "opts", arg: 1, scope: !3411, file: !48, line: 912, type: !64)
!3413 = !DILocation(line: 912, column: 23, scope: !3411)
!3414 = !DILocalVariable(name: "argv0", arg: 2, scope: !3411, file: !48, line: 912, type: !51)
!3415 = !DILocation(line: 912, column: 41, scope: !3411)
!3416 = !DILocalVariable(name: "optarg", arg: 3, scope: !3411, file: !48, line: 912, type: !51)
!3417 = !DILocation(line: 912, column: 60, scope: !3411)
!3418 = !DILocation(line: 914, column: 18, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !48, line: 914, column: 6)
!3420 = !DILocation(line: 914, column: 7, scope: !3419)
!3421 = !DILocation(line: 914, column: 6, scope: !3411)
!3422 = !DILocation(line: 915, column: 10, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3419, file: !48, line: 914, column: 27)
!3424 = !DILocation(line: 916, column: 11, scope: !3423)
!3425 = !DILocation(line: 916, column: 18, scope: !3423)
!3426 = !DILocation(line: 915, column: 3, scope: !3423)
!3427 = !DILocation(line: 917, column: 3, scope: !3423)
!3428 = !DILocation(line: 919, column: 6, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3411, file: !48, line: 919, column: 6)
!3430 = !DILocation(line: 919, column: 12, scope: !3429)
!3431 = !DILocation(line: 919, column: 6, scope: !3411)
!3432 = !DILocation(line: 920, column: 8, scope: !3429)
!3433 = !DILocation(line: 920, column: 14, scope: !3429)
!3434 = !DILocation(line: 920, column: 3, scope: !3429)
!3435 = !DILocation(line: 921, column: 26, scope: !3411)
!3436 = !DILocation(line: 921, column: 19, scope: !3411)
!3437 = !DILocation(line: 921, column: 2, scope: !3411)
!3438 = !DILocation(line: 921, column: 8, scope: !3411)
!3439 = !DILocation(line: 921, column: 17, scope: !3411)
!3440 = !DILocation(line: 922, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3411, file: !48, line: 922, column: 6)
!3442 = !DILocation(line: 922, column: 13, scope: !3441)
!3443 = !DILocation(line: 922, column: 6, scope: !3411)
!3444 = !DILocation(line: 923, column: 11, scope: !3441)
!3445 = !DILocation(line: 923, column: 3, scope: !3441)
!3446 = !DILocation(line: 927, column: 1, scope: !3411)
!3447 = distinct !DISubprogram(name: "opts_set_group", scope: !48, file: !48, line: 930, type: !2650, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3448 = !DILocalVariable(name: "opts", arg: 1, scope: !3447, file: !48, line: 930, type: !64)
!3449 = !DILocation(line: 930, column: 24, scope: !3447)
!3450 = !DILocalVariable(name: "argv0", arg: 2, scope: !3447, file: !48, line: 930, type: !51)
!3451 = !DILocation(line: 930, column: 42, scope: !3447)
!3452 = !DILocalVariable(name: "optarg", arg: 3, scope: !3447, file: !48, line: 930, type: !51)
!3453 = !DILocation(line: 930, column: 61, scope: !3447)
!3454 = !DILocation(line: 933, column: 19, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3447, file: !48, line: 933, column: 6)
!3456 = !DILocation(line: 933, column: 7, scope: !3455)
!3457 = !DILocation(line: 933, column: 6, scope: !3447)
!3458 = !DILocation(line: 934, column: 10, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !48, line: 933, column: 28)
!3460 = !DILocation(line: 935, column: 11, scope: !3459)
!3461 = !DILocation(line: 935, column: 18, scope: !3459)
!3462 = !DILocation(line: 934, column: 3, scope: !3459)
!3463 = !DILocation(line: 936, column: 3, scope: !3459)
!3464 = !DILocation(line: 938, column: 6, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3447, file: !48, line: 938, column: 6)
!3466 = !DILocation(line: 938, column: 12, scope: !3465)
!3467 = !DILocation(line: 938, column: 6, scope: !3447)
!3468 = !DILocation(line: 939, column: 8, scope: !3465)
!3469 = !DILocation(line: 939, column: 14, scope: !3465)
!3470 = !DILocation(line: 939, column: 3, scope: !3465)
!3471 = !DILocation(line: 940, column: 27, scope: !3447)
!3472 = !DILocation(line: 940, column: 20, scope: !3447)
!3473 = !DILocation(line: 940, column: 2, scope: !3447)
!3474 = !DILocation(line: 940, column: 8, scope: !3447)
!3475 = !DILocation(line: 940, column: 18, scope: !3447)
!3476 = !DILocation(line: 941, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3447, file: !48, line: 941, column: 6)
!3478 = !DILocation(line: 941, column: 13, scope: !3477)
!3479 = !DILocation(line: 941, column: 6, scope: !3447)
!3480 = !DILocation(line: 942, column: 11, scope: !3477)
!3481 = !DILocation(line: 942, column: 3, scope: !3477)
!3482 = !DILocation(line: 946, column: 1, scope: !3447)
!3483 = distinct !DISubprogram(name: "opts_set_jaildir", scope: !48, file: !48, line: 949, type: !2650, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3484 = !DILocalVariable(name: "opts", arg: 1, scope: !3483, file: !48, line: 949, type: !64)
!3485 = !DILocation(line: 949, column: 26, scope: !3483)
!3486 = !DILocalVariable(name: "argv0", arg: 2, scope: !3483, file: !48, line: 949, type: !51)
!3487 = !DILocation(line: 949, column: 44, scope: !3483)
!3488 = !DILocalVariable(name: "optarg", arg: 3, scope: !3483, file: !48, line: 949, type: !51)
!3489 = !DILocation(line: 949, column: 63, scope: !3483)
!3490 = !DILocation(line: 951, column: 17, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3483, file: !48, line: 951, column: 6)
!3492 = !DILocation(line: 951, column: 7, scope: !3491)
!3493 = !DILocation(line: 951, column: 6, scope: !3483)
!3494 = !DILocation(line: 952, column: 10, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !48, line: 951, column: 26)
!3496 = !DILocation(line: 952, column: 51, scope: !3495)
!3497 = !DILocation(line: 952, column: 58, scope: !3495)
!3498 = !DILocation(line: 952, column: 3, scope: !3495)
!3499 = !DILocation(line: 953, column: 3, scope: !3495)
!3500 = !DILocation(line: 955, column: 6, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3483, file: !48, line: 955, column: 6)
!3502 = !DILocation(line: 955, column: 12, scope: !3501)
!3503 = !DILocation(line: 955, column: 6, scope: !3483)
!3504 = !DILocation(line: 956, column: 8, scope: !3501)
!3505 = !DILocation(line: 956, column: 14, scope: !3501)
!3506 = !DILocation(line: 956, column: 3, scope: !3501)
!3507 = !DILocation(line: 957, column: 27, scope: !3483)
!3508 = !DILocation(line: 957, column: 18, scope: !3483)
!3509 = !DILocation(line: 957, column: 2, scope: !3483)
!3510 = !DILocation(line: 957, column: 8, scope: !3483)
!3511 = !DILocation(line: 957, column: 16, scope: !3483)
!3512 = !DILocation(line: 958, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3483, file: !48, line: 958, column: 6)
!3514 = !DILocation(line: 958, column: 13, scope: !3513)
!3515 = !DILocation(line: 958, column: 6, scope: !3483)
!3516 = !DILocation(line: 959, column: 10, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !48, line: 958, column: 22)
!3518 = !DILocation(line: 960, column: 11, scope: !3517)
!3519 = !DILocation(line: 960, column: 18, scope: !3517)
!3520 = !DILocation(line: 960, column: 36, scope: !3517)
!3521 = !DILocation(line: 960, column: 35, scope: !3517)
!3522 = !DILocation(line: 960, column: 26, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3517, file: !48, discriminator: 1)
!3524 = !DILocation(line: 960, column: 44, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3517, file: !48, discriminator: 2)
!3526 = !DILocation(line: 960, column: 43, scope: !3517)
!3527 = !DILocation(line: 959, column: 3, scope: !3517)
!3528 = !DILocation(line: 961, column: 3, scope: !3517)
!3529 = !DILocation(line: 966, column: 1, scope: !3483)
!3530 = distinct !DISubprogram(name: "opts_set_pidfile", scope: !48, file: !48, line: 969, type: !2650, isLocal: false, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3531 = !DILocalVariable(name: "opts", arg: 1, scope: !3530, file: !48, line: 969, type: !64)
!3532 = !DILocation(line: 969, column: 26, scope: !3530)
!3533 = !DILocalVariable(name: "argv0", arg: 2, scope: !3530, file: !48, line: 969, type: !51)
!3534 = !DILocation(line: 969, column: 44, scope: !3530)
!3535 = !DILocalVariable(name: "optarg", arg: 3, scope: !3530, file: !48, line: 969, type: !51)
!3536 = !DILocation(line: 969, column: 63, scope: !3530)
!3537 = !DILocation(line: 971, column: 6, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3530, file: !48, line: 971, column: 6)
!3539 = !DILocation(line: 971, column: 12, scope: !3538)
!3540 = !DILocation(line: 971, column: 6, scope: !3530)
!3541 = !DILocation(line: 972, column: 8, scope: !3538)
!3542 = !DILocation(line: 972, column: 14, scope: !3538)
!3543 = !DILocation(line: 972, column: 3, scope: !3538)
!3544 = !DILocation(line: 973, column: 25, scope: !3530)
!3545 = !DILocation(line: 973, column: 18, scope: !3530)
!3546 = !DILocation(line: 973, column: 2, scope: !3530)
!3547 = !DILocation(line: 973, column: 8, scope: !3530)
!3548 = !DILocation(line: 973, column: 16, scope: !3530)
!3549 = !DILocation(line: 974, column: 7, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3530, file: !48, line: 974, column: 6)
!3551 = !DILocation(line: 974, column: 13, scope: !3550)
!3552 = !DILocation(line: 974, column: 6, scope: !3530)
!3553 = !DILocation(line: 975, column: 11, scope: !3550)
!3554 = !DILocation(line: 975, column: 3, scope: !3550)
!3555 = !DILocation(line: 979, column: 1, scope: !3530)
!3556 = distinct !DISubprogram(name: "opts_set_connectlog", scope: !48, file: !48, line: 982, type: !2650, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3557 = !DILocalVariable(name: "opts", arg: 1, scope: !3556, file: !48, line: 982, type: !64)
!3558 = !DILocation(line: 982, column: 29, scope: !3556)
!3559 = !DILocalVariable(name: "argv0", arg: 2, scope: !3556, file: !48, line: 982, type: !51)
!3560 = !DILocation(line: 982, column: 47, scope: !3556)
!3561 = !DILocalVariable(name: "optarg", arg: 3, scope: !3556, file: !48, line: 982, type: !51)
!3562 = !DILocation(line: 982, column: 66, scope: !3556)
!3563 = !DILocation(line: 984, column: 6, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3556, file: !48, line: 984, column: 6)
!3565 = !DILocation(line: 984, column: 12, scope: !3564)
!3566 = !DILocation(line: 984, column: 6, scope: !3556)
!3567 = !DILocation(line: 985, column: 8, scope: !3564)
!3568 = !DILocation(line: 985, column: 14, scope: !3564)
!3569 = !DILocation(line: 985, column: 3, scope: !3564)
!3570 = !DILocation(line: 986, column: 39, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3556, file: !48, line: 986, column: 6)
!3572 = !DILocation(line: 986, column: 27, scope: !3571)
!3573 = !DILocation(line: 986, column: 8, scope: !3571)
!3574 = !DILocation(line: 986, column: 14, scope: !3571)
!3575 = !DILocation(line: 986, column: 25, scope: !3571)
!3576 = !DILocation(line: 986, column: 6, scope: !3556)
!3577 = !DILocation(line: 987, column: 8, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !48, line: 987, column: 6)
!3579 = distinct !DILexicalBlock(scope: !3571, file: !48, line: 986, column: 49)
!3580 = !DILocation(line: 987, column: 7, scope: !3578)
!3581 = !DILocation(line: 987, column: 12, scope: !3578)
!3582 = !DILocation(line: 987, column: 6, scope: !3579)
!3583 = !DILocation(line: 988, column: 11, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3578, file: !48, line: 987, column: 23)
!3585 = !DILocation(line: 989, column: 31, scope: !3584)
!3586 = !DILocation(line: 988, column: 4, scope: !3584)
!3587 = !DILocation(line: 990, column: 4, scope: !3584)
!3588 = !DILocation(line: 992, column: 11, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3578, file: !48, line: 991, column: 10)
!3590 = !DILocation(line: 993, column: 18, scope: !3589)
!3591 = !DILocation(line: 993, column: 36, scope: !3589)
!3592 = !DILocation(line: 993, column: 35, scope: !3589)
!3593 = !DILocation(line: 993, column: 26, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3589, file: !48, discriminator: 1)
!3595 = !DILocation(line: 993, column: 44, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3589, file: !48, discriminator: 2)
!3597 = !DILocation(line: 993, column: 43, scope: !3589)
!3598 = !DILocation(line: 992, column: 4, scope: !3589)
!3599 = !DILocation(line: 994, column: 12, scope: !3589)
!3600 = !DILocation(line: 994, column: 4, scope: !3589)
!3601 = !DILocation(line: 1000, column: 1, scope: !3556)
!3602 = distinct !DISubprogram(name: "opts_set_contentlog", scope: !48, file: !48, line: 1003, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3603 = !DILocalVariable(name: "opts", arg: 1, scope: !3602, file: !48, line: 1003, type: !64)
!3604 = !DILocation(line: 1003, column: 29, scope: !3602)
!3605 = !DILocalVariable(name: "argv0", arg: 2, scope: !3602, file: !48, line: 1003, type: !51)
!3606 = !DILocation(line: 1003, column: 47, scope: !3602)
!3607 = !DILocalVariable(name: "optarg", arg: 3, scope: !3602, file: !48, line: 1003, type: !51)
!3608 = !DILocation(line: 1003, column: 66, scope: !3602)
!3609 = !DILocation(line: 1005, column: 6, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !48, line: 1005, column: 6)
!3611 = !DILocation(line: 1005, column: 12, scope: !3610)
!3612 = !DILocation(line: 1005, column: 6, scope: !3602)
!3613 = !DILocation(line: 1006, column: 8, scope: !3610)
!3614 = !DILocation(line: 1006, column: 14, scope: !3610)
!3615 = !DILocation(line: 1006, column: 3, scope: !3610)
!3616 = !DILocation(line: 1007, column: 39, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3602, file: !48, line: 1007, column: 6)
!3618 = !DILocation(line: 1007, column: 27, scope: !3617)
!3619 = !DILocation(line: 1007, column: 8, scope: !3617)
!3620 = !DILocation(line: 1007, column: 14, scope: !3617)
!3621 = !DILocation(line: 1007, column: 25, scope: !3617)
!3622 = !DILocation(line: 1007, column: 6, scope: !3602)
!3623 = !DILocation(line: 1008, column: 8, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !48, line: 1008, column: 6)
!3625 = distinct !DILexicalBlock(scope: !3617, file: !48, line: 1007, column: 49)
!3626 = !DILocation(line: 1008, column: 7, scope: !3624)
!3627 = !DILocation(line: 1008, column: 12, scope: !3624)
!3628 = !DILocation(line: 1008, column: 6, scope: !3625)
!3629 = !DILocation(line: 1009, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !48, line: 1008, column: 23)
!3631 = !DILocation(line: 1010, column: 31, scope: !3630)
!3632 = !DILocation(line: 1009, column: 4, scope: !3630)
!3633 = !DILocation(line: 1011, column: 4, scope: !3630)
!3634 = !DILocation(line: 1013, column: 11, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3624, file: !48, line: 1012, column: 10)
!3636 = !DILocation(line: 1014, column: 18, scope: !3635)
!3637 = !DILocation(line: 1014, column: 36, scope: !3635)
!3638 = !DILocation(line: 1014, column: 35, scope: !3635)
!3639 = !DILocation(line: 1014, column: 26, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !3635, file: !48, discriminator: 1)
!3641 = !DILocation(line: 1014, column: 44, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3635, file: !48, discriminator: 2)
!3643 = !DILocation(line: 1014, column: 43, scope: !3635)
!3644 = !DILocation(line: 1013, column: 4, scope: !3635)
!3645 = !DILocation(line: 1015, column: 12, scope: !3635)
!3646 = !DILocation(line: 1015, column: 4, scope: !3635)
!3647 = !DILocation(line: 1018, column: 2, scope: !3602)
!3648 = !DILocation(line: 1018, column: 8, scope: !3602)
!3649 = !DILocation(line: 1018, column: 25, scope: !3602)
!3650 = !DILocation(line: 1019, column: 2, scope: !3602)
!3651 = !DILocation(line: 1019, column: 8, scope: !3602)
!3652 = !DILocation(line: 1019, column: 26, scope: !3602)
!3653 = !DILocation(line: 1023, column: 1, scope: !3602)
!3654 = distinct !DISubprogram(name: "opts_set_contentlogdir", scope: !48, file: !48, line: 1026, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3655 = !DILocalVariable(name: "opts", arg: 1, scope: !3654, file: !48, line: 1026, type: !64)
!3656 = !DILocation(line: 1026, column: 32, scope: !3654)
!3657 = !DILocalVariable(name: "argv0", arg: 2, scope: !3654, file: !48, line: 1026, type: !51)
!3658 = !DILocation(line: 1026, column: 50, scope: !3654)
!3659 = !DILocalVariable(name: "optarg", arg: 3, scope: !3654, file: !48, line: 1026, type: !51)
!3660 = !DILocation(line: 1026, column: 69, scope: !3654)
!3661 = !DILocation(line: 1028, column: 17, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3654, file: !48, line: 1028, column: 6)
!3663 = !DILocation(line: 1028, column: 7, scope: !3662)
!3664 = !DILocation(line: 1028, column: 6, scope: !3654)
!3665 = !DILocation(line: 1029, column: 10, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3662, file: !48, line: 1028, column: 26)
!3667 = !DILocation(line: 1029, column: 51, scope: !3666)
!3668 = !DILocation(line: 1029, column: 58, scope: !3666)
!3669 = !DILocation(line: 1029, column: 3, scope: !3666)
!3670 = !DILocation(line: 1030, column: 3, scope: !3666)
!3671 = !DILocation(line: 1032, column: 6, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3654, file: !48, line: 1032, column: 6)
!3673 = !DILocation(line: 1032, column: 12, scope: !3672)
!3674 = !DILocation(line: 1032, column: 6, scope: !3654)
!3675 = !DILocation(line: 1033, column: 8, scope: !3672)
!3676 = !DILocation(line: 1033, column: 14, scope: !3672)
!3677 = !DILocation(line: 1033, column: 3, scope: !3672)
!3678 = !DILocation(line: 1034, column: 30, scope: !3654)
!3679 = !DILocation(line: 1034, column: 21, scope: !3654)
!3680 = !DILocation(line: 1034, column: 2, scope: !3654)
!3681 = !DILocation(line: 1034, column: 8, scope: !3654)
!3682 = !DILocation(line: 1034, column: 19, scope: !3654)
!3683 = !DILocation(line: 1035, column: 7, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3654, file: !48, line: 1035, column: 6)
!3685 = !DILocation(line: 1035, column: 13, scope: !3684)
!3686 = !DILocation(line: 1035, column: 6, scope: !3654)
!3687 = !DILocation(line: 1036, column: 10, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !48, line: 1035, column: 25)
!3689 = !DILocation(line: 1037, column: 11, scope: !3688)
!3690 = !DILocation(line: 1037, column: 18, scope: !3688)
!3691 = !DILocation(line: 1037, column: 36, scope: !3688)
!3692 = !DILocation(line: 1037, column: 35, scope: !3688)
!3693 = !DILocation(line: 1037, column: 26, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3688, file: !48, discriminator: 1)
!3695 = !DILocation(line: 1037, column: 44, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3688, file: !48, discriminator: 2)
!3697 = !DILocation(line: 1037, column: 43, scope: !3688)
!3698 = !DILocation(line: 1036, column: 3, scope: !3688)
!3699 = !DILocation(line: 1038, column: 3, scope: !3688)
!3700 = !DILocation(line: 1040, column: 2, scope: !3654)
!3701 = !DILocation(line: 1040, column: 8, scope: !3654)
!3702 = !DILocation(line: 1040, column: 25, scope: !3654)
!3703 = !DILocation(line: 1041, column: 2, scope: !3654)
!3704 = !DILocation(line: 1041, column: 8, scope: !3654)
!3705 = !DILocation(line: 1041, column: 26, scope: !3654)
!3706 = !DILocation(line: 1045, column: 1, scope: !3654)
!3707 = distinct !DISubprogram(name: "opts_set_contentlogpathspec", scope: !48, file: !48, line: 1111, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3708 = !DILocalVariable(name: "opts", arg: 1, scope: !3707, file: !48, line: 1111, type: !64)
!3709 = !DILocation(line: 1111, column: 37, scope: !3707)
!3710 = !DILocalVariable(name: "argv0", arg: 2, scope: !3707, file: !48, line: 1111, type: !51)
!3711 = !DILocation(line: 1111, column: 55, scope: !3707)
!3712 = !DILocalVariable(name: "optarg", arg: 3, scope: !3707, file: !48, line: 1111, type: !51)
!3713 = !DILocation(line: 1111, column: 74, scope: !3707)
!3714 = !DILocation(line: 1113, column: 22, scope: !3707)
!3715 = !DILocation(line: 1113, column: 29, scope: !3707)
!3716 = !DILocation(line: 1113, column: 38, scope: !3707)
!3717 = !DILocation(line: 1113, column: 44, scope: !3707)
!3718 = !DILocation(line: 1114, column: 23, scope: !3707)
!3719 = !DILocation(line: 1114, column: 29, scope: !3707)
!3720 = !DILocation(line: 1113, column: 2, scope: !3707)
!3721 = !DILocation(line: 1115, column: 2, scope: !3707)
!3722 = !DILocation(line: 1115, column: 8, scope: !3707)
!3723 = !DILocation(line: 1115, column: 25, scope: !3707)
!3724 = !DILocation(line: 1116, column: 2, scope: !3707)
!3725 = !DILocation(line: 1116, column: 8, scope: !3707)
!3726 = !DILocation(line: 1116, column: 26, scope: !3707)
!3727 = !DILocation(line: 1121, column: 1, scope: !3707)
!3728 = distinct !DISubprogram(name: "opts_set_logbasedir", scope: !48, file: !48, line: 1048, type: !3729, isLocal: true, isDefinition: true, scopeLine: 1050, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !51, !51, !16, !16}
!3731 = !DILocalVariable(name: "argv0", arg: 1, scope: !3728, file: !48, line: 1048, type: !51)
!3732 = !DILocation(line: 1048, column: 33, scope: !3728)
!3733 = !DILocalVariable(name: "optarg", arg: 2, scope: !3728, file: !48, line: 1048, type: !51)
!3734 = !DILocation(line: 1048, column: 52, scope: !3728)
!3735 = !DILocalVariable(name: "basedir", arg: 3, scope: !3728, file: !48, line: 1049, type: !16)
!3736 = !DILocation(line: 1049, column: 28, scope: !3728)
!3737 = !DILocalVariable(name: "log", arg: 4, scope: !3728, file: !48, line: 1049, type: !16)
!3738 = !DILocation(line: 1049, column: 44, scope: !3728)
!3739 = !DILocalVariable(name: "lhs", scope: !3728, file: !48, line: 1051, type: !17)
!3740 = !DILocation(line: 1051, column: 8, scope: !3728)
!3741 = !DILocalVariable(name: "rhs", scope: !3728, file: !48, line: 1051, type: !17)
!3742 = !DILocation(line: 1051, column: 14, scope: !3728)
!3743 = !DILocalVariable(name: "p", scope: !3728, file: !48, line: 1051, type: !17)
!3744 = !DILocation(line: 1051, column: 20, scope: !3728)
!3745 = !DILocalVariable(name: "q", scope: !3728, file: !48, line: 1051, type: !17)
!3746 = !DILocation(line: 1051, column: 24, scope: !3728)
!3747 = !DILocalVariable(name: "n", scope: !3728, file: !48, line: 1052, type: !215)
!3748 = !DILocation(line: 1052, column: 9, scope: !3728)
!3749 = !DILocation(line: 1053, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1053, column: 6)
!3751 = !DILocation(line: 1053, column: 6, scope: !3750)
!3752 = !DILocation(line: 1053, column: 6, scope: !3728)
!3753 = !DILocation(line: 1054, column: 9, scope: !3750)
!3754 = !DILocation(line: 1054, column: 8, scope: !3750)
!3755 = !DILocation(line: 1054, column: 3, scope: !3750)
!3756 = !DILocation(line: 1055, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1055, column: 6)
!3758 = !DILocation(line: 1055, column: 6, scope: !3757)
!3759 = !DILocation(line: 1055, column: 6, scope: !3728)
!3760 = !DILocation(line: 1056, column: 9, scope: !3757)
!3761 = !DILocation(line: 1056, column: 8, scope: !3757)
!3762 = !DILocation(line: 1056, column: 3, scope: !3757)
!3763 = !DILocation(line: 1057, column: 33, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1057, column: 6)
!3765 = !DILocation(line: 1057, column: 6, scope: !3764)
!3766 = !DILocation(line: 1057, column: 53, scope: !3764)
!3767 = !DILocation(line: 1057, column: 6, scope: !3728)
!3768 = !DILocation(line: 1058, column: 10, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3764, file: !48, line: 1057, column: 60)
!3770 = !DILocation(line: 1059, column: 33, scope: !3769)
!3771 = !DILocation(line: 1059, column: 40, scope: !3769)
!3772 = !DILocation(line: 1060, column: 29, scope: !3769)
!3773 = !DILocation(line: 1060, column: 28, scope: !3769)
!3774 = !DILocation(line: 1060, column: 19, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3769, file: !48, discriminator: 1)
!3776 = !DILocation(line: 1060, column: 37, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !3769, file: !48, discriminator: 2)
!3778 = !DILocation(line: 1060, column: 36, scope: !3769)
!3779 = !DILocation(line: 1058, column: 3, scope: !3769)
!3780 = !DILocation(line: 1061, column: 3, scope: !3769)
!3781 = !DILocation(line: 1064, column: 15, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1064, column: 2)
!3783 = !DILocation(line: 1064, column: 13, scope: !3782)
!3784 = !DILocation(line: 1064, column: 9, scope: !3782)
!3785 = !DILocation(line: 1064, column: 7, scope: !3782)
!3786 = !DILocation(line: 1064, column: 21, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !3788, file: !48, discriminator: 1)
!3788 = distinct !DILexicalBlock(scope: !3782, file: !48, line: 1064, column: 2)
!3789 = !DILocation(line: 1064, column: 20, scope: !3787)
!3790 = !DILocation(line: 1064, column: 2, scope: !3787)
!3791 = !DILocation(line: 1065, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !48, line: 1065, column: 7)
!3793 = distinct !DILexicalBlock(scope: !3788, file: !48, line: 1064, column: 34)
!3794 = !DILocation(line: 1065, column: 11, scope: !3792)
!3795 = !DILocation(line: 1065, column: 9, scope: !3792)
!3796 = !DILocation(line: 1065, column: 7, scope: !3793)
!3797 = !DILocation(line: 1066, column: 10, scope: !3792)
!3798 = !DILocation(line: 1066, column: 9, scope: !3792)
!3799 = !DILocation(line: 1066, column: 5, scope: !3792)
!3800 = !DILocation(line: 1066, column: 7, scope: !3792)
!3801 = !DILocation(line: 1066, column: 4, scope: !3792)
!3802 = !DILocation(line: 1067, column: 8, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3793, file: !48, line: 1067, column: 7)
!3804 = !DILocation(line: 1067, column: 7, scope: !3803)
!3805 = !DILocation(line: 1067, column: 10, scope: !3803)
!3806 = !DILocation(line: 1067, column: 17, scope: !3803)
!3807 = !DILocation(line: 1067, column: 22, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3803, file: !48, discriminator: 1)
!3809 = !DILocation(line: 1067, column: 23, scope: !3808)
!3810 = !DILocation(line: 1067, column: 20, scope: !3808)
!3811 = !DILocation(line: 1067, column: 27, scope: !3808)
!3812 = !DILocation(line: 1067, column: 7, scope: !3808)
!3813 = !DILocation(line: 1068, column: 5, scope: !3803)
!3814 = !DILocation(line: 1068, column: 4, scope: !3803)
!3815 = !DILocation(line: 1069, column: 2, scope: !3793)
!3816 = !DILocation(line: 1064, column: 25, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3788, file: !48, discriminator: 2)
!3818 = !DILocation(line: 1064, column: 30, scope: !3817)
!3819 = !DILocation(line: 1064, column: 2, scope: !3817)
!3820 = distinct !{!3820, !3821}
!3821 = !DILocation(line: 1064, column: 2, scope: !3728)
!3822 = !DILocation(line: 1070, column: 3, scope: !3728)
!3823 = !DILocation(line: 1070, column: 5, scope: !3728)
!3824 = !DILocation(line: 1072, column: 17, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1072, column: 6)
!3826 = !DILocation(line: 1072, column: 6, scope: !3825)
!3827 = !DILocation(line: 1072, column: 28, scope: !3825)
!3828 = !DILocation(line: 1072, column: 6, scope: !3728)
!3829 = !DILocation(line: 1073, column: 10, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3825, file: !48, line: 1072, column: 35)
!3831 = !DILocation(line: 1074, column: 11, scope: !3830)
!3832 = !DILocation(line: 1074, column: 18, scope: !3830)
!3833 = !DILocation(line: 1074, column: 33, scope: !3830)
!3834 = !DILocation(line: 1074, column: 32, scope: !3830)
!3835 = !DILocation(line: 1074, column: 23, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3830, file: !48, discriminator: 1)
!3837 = !DILocation(line: 1074, column: 41, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3830, file: !48, discriminator: 2)
!3839 = !DILocation(line: 1074, column: 40, scope: !3830)
!3840 = !DILocation(line: 1073, column: 3, scope: !3830)
!3841 = !DILocation(line: 1075, column: 3, scope: !3830)
!3842 = !DILocation(line: 1077, column: 22, scope: !3728)
!3843 = !DILocation(line: 1077, column: 13, scope: !3728)
!3844 = !DILocation(line: 1077, column: 3, scope: !3728)
!3845 = !DILocation(line: 1077, column: 11, scope: !3728)
!3846 = !DILocation(line: 1078, column: 8, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1078, column: 6)
!3848 = !DILocation(line: 1078, column: 7, scope: !3847)
!3849 = !DILocation(line: 1078, column: 6, scope: !3728)
!3850 = !DILocation(line: 1079, column: 10, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !48, line: 1078, column: 17)
!3852 = !DILocation(line: 1080, column: 11, scope: !3851)
!3853 = !DILocation(line: 1080, column: 18, scope: !3851)
!3854 = !DILocation(line: 1080, column: 33, scope: !3851)
!3855 = !DILocation(line: 1080, column: 32, scope: !3851)
!3856 = !DILocation(line: 1080, column: 23, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3851, file: !48, discriminator: 1)
!3858 = !DILocation(line: 1080, column: 41, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3851, file: !48, discriminator: 2)
!3860 = !DILocation(line: 1080, column: 40, scope: !3851)
!3861 = !DILocation(line: 1079, column: 3, scope: !3851)
!3862 = !DILocation(line: 1081, column: 3, scope: !3851)
!3863 = !DILocation(line: 1084, column: 9, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1084, column: 2)
!3865 = !DILocation(line: 1084, column: 19, scope: !3864)
!3866 = !DILocation(line: 1084, column: 18, scope: !3864)
!3867 = !DILocation(line: 1084, column: 16, scope: !3864)
!3868 = !DILocation(line: 1084, column: 7, scope: !3864)
!3869 = !DILocation(line: 1085, column: 5, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3864, file: !48, line: 1084, column: 2)
!3871 = !DILocation(line: 1085, column: 4, scope: !3870)
!3872 = !DILocation(line: 1084, column: 2, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3864, file: !48, discriminator: 1)
!3874 = !DILocation(line: 1087, column: 8, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !48, line: 1087, column: 7)
!3876 = distinct !DILexicalBlock(scope: !3870, file: !48, line: 1086, column: 9)
!3877 = !DILocation(line: 1087, column: 7, scope: !3875)
!3878 = !DILocation(line: 1087, column: 10, scope: !3875)
!3879 = !DILocation(line: 1087, column: 7, scope: !3876)
!3880 = !DILocation(line: 1088, column: 5, scope: !3875)
!3881 = !DILocation(line: 1088, column: 4, scope: !3875)
!3882 = !DILocation(line: 1089, column: 2, scope: !3876)
!3883 = !DILocation(line: 1086, column: 5, scope: !3870)
!3884 = !DILocation(line: 1084, column: 2, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3870, file: !48, discriminator: 2)
!3886 = distinct !{!3886, !3887}
!3887 = !DILocation(line: 1084, column: 2, scope: !3728)
!3888 = !DILocation(line: 1090, column: 7, scope: !3728)
!3889 = !DILocation(line: 1090, column: 2, scope: !3728)
!3890 = !DILocation(line: 1091, column: 15, scope: !3728)
!3891 = !DILocation(line: 1091, column: 14, scope: !3728)
!3892 = !DILocation(line: 1091, column: 7, scope: !3728)
!3893 = !DILocation(line: 1091, column: 4, scope: !3728)
!3894 = !DILocation(line: 1092, column: 21, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1092, column: 6)
!3896 = !DILocation(line: 1092, column: 23, scope: !3895)
!3897 = !DILocation(line: 1092, column: 14, scope: !3895)
!3898 = !DILocation(line: 1092, column: 12, scope: !3895)
!3899 = !DILocation(line: 1092, column: 6, scope: !3728)
!3900 = !DILocation(line: 1093, column: 11, scope: !3895)
!3901 = !DILocation(line: 1093, column: 3, scope: !3895)
!3902 = !DILocation(line: 1095, column: 12, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1095, column: 2)
!3904 = !DILocation(line: 1095, column: 11, scope: !3903)
!3905 = !DILocation(line: 1095, column: 9, scope: !3903)
!3906 = !DILocation(line: 1095, column: 25, scope: !3903)
!3907 = !DILocation(line: 1095, column: 23, scope: !3903)
!3908 = !DILocation(line: 1095, column: 7, scope: !3903)
!3909 = !DILocation(line: 1096, column: 5, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3903, file: !48, line: 1095, column: 2)
!3911 = !DILocation(line: 1096, column: 4, scope: !3910)
!3912 = !DILocation(line: 1095, column: 2, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !3903, file: !48, discriminator: 1)
!3914 = !DILocation(line: 1098, column: 9, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3910, file: !48, line: 1097, column: 14)
!3916 = !DILocation(line: 1098, column: 8, scope: !3915)
!3917 = !DILocation(line: 1098, column: 4, scope: !3915)
!3918 = !DILocation(line: 1098, column: 6, scope: !3915)
!3919 = !DILocation(line: 1099, column: 8, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3915, file: !48, line: 1099, column: 7)
!3921 = !DILocation(line: 1099, column: 7, scope: !3920)
!3922 = !DILocation(line: 1099, column: 10, scope: !3920)
!3923 = !DILocation(line: 1099, column: 7, scope: !3915)
!3924 = !DILocation(line: 1100, column: 6, scope: !3920)
!3925 = !DILocation(line: 1100, column: 11, scope: !3920)
!3926 = !DILocation(line: 1100, column: 4, scope: !3920)
!3927 = !DILocation(line: 1101, column: 2, scope: !3915)
!3928 = !DILocation(line: 1097, column: 5, scope: !3910)
!3929 = !DILocation(line: 1097, column: 10, scope: !3910)
!3930 = !DILocation(line: 1095, column: 2, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3910, file: !48, discriminator: 2)
!3932 = distinct !{!3932, !3933}
!3933 = !DILocation(line: 1095, column: 2, scope: !3728)
!3934 = !DILocation(line: 1102, column: 3, scope: !3728)
!3935 = !DILocation(line: 1102, column: 5, scope: !3728)
!3936 = !DILocation(line: 1104, column: 15, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3728, file: !48, line: 1104, column: 6)
!3938 = !DILocation(line: 1104, column: 29, scope: !3937)
!3939 = !DILocation(line: 1104, column: 34, scope: !3937)
!3940 = !DILocation(line: 1104, column: 6, scope: !3937)
!3941 = !DILocation(line: 1104, column: 39, scope: !3937)
!3942 = !DILocation(line: 1104, column: 6, scope: !3728)
!3943 = !DILocation(line: 1105, column: 11, scope: !3937)
!3944 = !DILocation(line: 1105, column: 3, scope: !3937)
!3945 = !DILocation(line: 1106, column: 7, scope: !3728)
!3946 = !DILocation(line: 1106, column: 2, scope: !3728)
!3947 = !DILocation(line: 1107, column: 7, scope: !3728)
!3948 = !DILocation(line: 1107, column: 2, scope: !3728)
!3949 = !DILocation(line: 1108, column: 1, scope: !3728)
!3950 = distinct !DISubprogram(name: "opts_set_masterkeylog", scope: !48, file: !48, line: 1138, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3951 = !DILocalVariable(name: "opts", arg: 1, scope: !3950, file: !48, line: 1138, type: !64)
!3952 = !DILocation(line: 1138, column: 31, scope: !3950)
!3953 = !DILocalVariable(name: "argv0", arg: 2, scope: !3950, file: !48, line: 1138, type: !51)
!3954 = !DILocation(line: 1138, column: 49, scope: !3950)
!3955 = !DILocalVariable(name: "optarg", arg: 3, scope: !3950, file: !48, line: 1138, type: !51)
!3956 = !DILocation(line: 1138, column: 68, scope: !3950)
!3957 = !DILocation(line: 1140, column: 6, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3950, file: !48, line: 1140, column: 6)
!3959 = !DILocation(line: 1140, column: 12, scope: !3958)
!3960 = !DILocation(line: 1140, column: 6, scope: !3950)
!3961 = !DILocation(line: 1141, column: 8, scope: !3958)
!3962 = !DILocation(line: 1141, column: 14, scope: !3958)
!3963 = !DILocation(line: 1141, column: 3, scope: !3958)
!3964 = !DILocation(line: 1142, column: 41, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3950, file: !48, line: 1142, column: 6)
!3966 = !DILocation(line: 1142, column: 29, scope: !3965)
!3967 = !DILocation(line: 1142, column: 8, scope: !3965)
!3968 = !DILocation(line: 1142, column: 14, scope: !3965)
!3969 = !DILocation(line: 1142, column: 27, scope: !3965)
!3970 = !DILocation(line: 1142, column: 6, scope: !3950)
!3971 = !DILocation(line: 1143, column: 8, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !48, line: 1143, column: 6)
!3973 = distinct !DILexicalBlock(scope: !3965, file: !48, line: 1142, column: 51)
!3974 = !DILocation(line: 1143, column: 7, scope: !3972)
!3975 = !DILocation(line: 1143, column: 12, scope: !3972)
!3976 = !DILocation(line: 1143, column: 6, scope: !3973)
!3977 = !DILocation(line: 1144, column: 11, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3972, file: !48, line: 1143, column: 23)
!3979 = !DILocation(line: 1145, column: 31, scope: !3978)
!3980 = !DILocation(line: 1144, column: 4, scope: !3978)
!3981 = !DILocation(line: 1146, column: 4, scope: !3978)
!3982 = !DILocation(line: 1148, column: 11, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3972, file: !48, line: 1147, column: 10)
!3984 = !DILocation(line: 1149, column: 18, scope: !3983)
!3985 = !DILocation(line: 1149, column: 36, scope: !3983)
!3986 = !DILocation(line: 1149, column: 35, scope: !3983)
!3987 = !DILocation(line: 1149, column: 26, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3983, file: !48, discriminator: 1)
!3989 = !DILocation(line: 1149, column: 44, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3983, file: !48, discriminator: 2)
!3991 = !DILocation(line: 1149, column: 43, scope: !3983)
!3992 = !DILocation(line: 1148, column: 4, scope: !3983)
!3993 = !DILocation(line: 1150, column: 12, scope: !3983)
!3994 = !DILocation(line: 1150, column: 4, scope: !3983)
!3995 = !DILocation(line: 1156, column: 1, scope: !3950)
!3996 = distinct !DISubprogram(name: "opts_set_pcaplog", scope: !48, file: !48, line: 1159, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3997 = !DILocalVariable(name: "opts", arg: 1, scope: !3996, file: !48, line: 1159, type: !64)
!3998 = !DILocation(line: 1159, column: 26, scope: !3996)
!3999 = !DILocalVariable(name: "argv0", arg: 2, scope: !3996, file: !48, line: 1159, type: !51)
!4000 = !DILocation(line: 1159, column: 44, scope: !3996)
!4001 = !DILocalVariable(name: "optarg", arg: 3, scope: !3996, file: !48, line: 1159, type: !51)
!4002 = !DILocation(line: 1159, column: 63, scope: !3996)
!4003 = !DILocation(line: 1161, column: 6, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3996, file: !48, line: 1161, column: 6)
!4005 = !DILocation(line: 1161, column: 12, scope: !4004)
!4006 = !DILocation(line: 1161, column: 6, scope: !3996)
!4007 = !DILocation(line: 1162, column: 8, scope: !4004)
!4008 = !DILocation(line: 1162, column: 14, scope: !4004)
!4009 = !DILocation(line: 1162, column: 3, scope: !4004)
!4010 = !DILocation(line: 1163, column: 36, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3996, file: !48, line: 1163, column: 6)
!4012 = !DILocation(line: 1163, column: 24, scope: !4011)
!4013 = !DILocation(line: 1163, column: 8, scope: !4011)
!4014 = !DILocation(line: 1163, column: 14, scope: !4011)
!4015 = !DILocation(line: 1163, column: 22, scope: !4011)
!4016 = !DILocation(line: 1163, column: 6, scope: !3996)
!4017 = !DILocation(line: 1164, column: 8, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !48, line: 1164, column: 6)
!4019 = distinct !DILexicalBlock(scope: !4011, file: !48, line: 1163, column: 46)
!4020 = !DILocation(line: 1164, column: 7, scope: !4018)
!4021 = !DILocation(line: 1164, column: 12, scope: !4018)
!4022 = !DILocation(line: 1164, column: 6, scope: !4019)
!4023 = !DILocation(line: 1165, column: 11, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4018, file: !48, line: 1164, column: 23)
!4025 = !DILocation(line: 1166, column: 31, scope: !4024)
!4026 = !DILocation(line: 1165, column: 4, scope: !4024)
!4027 = !DILocation(line: 1167, column: 4, scope: !4024)
!4028 = !DILocation(line: 1169, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4018, file: !48, line: 1168, column: 10)
!4030 = !DILocation(line: 1170, column: 18, scope: !4029)
!4031 = !DILocation(line: 1170, column: 36, scope: !4029)
!4032 = !DILocation(line: 1170, column: 35, scope: !4029)
!4033 = !DILocation(line: 1170, column: 26, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4029, file: !48, discriminator: 1)
!4035 = !DILocation(line: 1170, column: 44, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4029, file: !48, discriminator: 2)
!4037 = !DILocation(line: 1170, column: 43, scope: !4029)
!4038 = !DILocation(line: 1169, column: 4, scope: !4029)
!4039 = !DILocation(line: 1171, column: 12, scope: !4029)
!4040 = !DILocation(line: 1171, column: 4, scope: !4029)
!4041 = !DILocation(line: 1174, column: 2, scope: !3996)
!4042 = !DILocation(line: 1174, column: 8, scope: !3996)
!4043 = !DILocation(line: 1174, column: 22, scope: !3996)
!4044 = !DILocation(line: 1175, column: 2, scope: !3996)
!4045 = !DILocation(line: 1175, column: 8, scope: !3996)
!4046 = !DILocation(line: 1175, column: 23, scope: !3996)
!4047 = !DILocation(line: 1179, column: 1, scope: !3996)
!4048 = distinct !DISubprogram(name: "opts_set_pcaplogdir", scope: !48, file: !48, line: 1182, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4049 = !DILocalVariable(name: "opts", arg: 1, scope: !4048, file: !48, line: 1182, type: !64)
!4050 = !DILocation(line: 1182, column: 29, scope: !4048)
!4051 = !DILocalVariable(name: "argv0", arg: 2, scope: !4048, file: !48, line: 1182, type: !51)
!4052 = !DILocation(line: 1182, column: 47, scope: !4048)
!4053 = !DILocalVariable(name: "optarg", arg: 3, scope: !4048, file: !48, line: 1182, type: !51)
!4054 = !DILocation(line: 1182, column: 66, scope: !4048)
!4055 = !DILocation(line: 1184, column: 17, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4048, file: !48, line: 1184, column: 6)
!4057 = !DILocation(line: 1184, column: 7, scope: !4056)
!4058 = !DILocation(line: 1184, column: 6, scope: !4048)
!4059 = !DILocation(line: 1185, column: 10, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4056, file: !48, line: 1184, column: 26)
!4061 = !DILocation(line: 1185, column: 51, scope: !4060)
!4062 = !DILocation(line: 1185, column: 58, scope: !4060)
!4063 = !DILocation(line: 1185, column: 3, scope: !4060)
!4064 = !DILocation(line: 1186, column: 3, scope: !4060)
!4065 = !DILocation(line: 1188, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4048, file: !48, line: 1188, column: 6)
!4067 = !DILocation(line: 1188, column: 12, scope: !4066)
!4068 = !DILocation(line: 1188, column: 6, scope: !4048)
!4069 = !DILocation(line: 1189, column: 8, scope: !4066)
!4070 = !DILocation(line: 1189, column: 14, scope: !4066)
!4071 = !DILocation(line: 1189, column: 3, scope: !4066)
!4072 = !DILocation(line: 1190, column: 27, scope: !4048)
!4073 = !DILocation(line: 1190, column: 18, scope: !4048)
!4074 = !DILocation(line: 1190, column: 2, scope: !4048)
!4075 = !DILocation(line: 1190, column: 8, scope: !4048)
!4076 = !DILocation(line: 1190, column: 16, scope: !4048)
!4077 = !DILocation(line: 1191, column: 7, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4048, file: !48, line: 1191, column: 6)
!4079 = !DILocation(line: 1191, column: 13, scope: !4078)
!4080 = !DILocation(line: 1191, column: 6, scope: !4048)
!4081 = !DILocation(line: 1192, column: 10, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4078, file: !48, line: 1191, column: 22)
!4083 = !DILocation(line: 1193, column: 11, scope: !4082)
!4084 = !DILocation(line: 1193, column: 18, scope: !4082)
!4085 = !DILocation(line: 1193, column: 36, scope: !4082)
!4086 = !DILocation(line: 1193, column: 35, scope: !4082)
!4087 = !DILocation(line: 1193, column: 26, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4082, file: !48, discriminator: 1)
!4089 = !DILocation(line: 1193, column: 44, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4082, file: !48, discriminator: 2)
!4091 = !DILocation(line: 1193, column: 43, scope: !4082)
!4092 = !DILocation(line: 1192, column: 3, scope: !4082)
!4093 = !DILocation(line: 1194, column: 3, scope: !4082)
!4094 = !DILocation(line: 1196, column: 2, scope: !4048)
!4095 = !DILocation(line: 1196, column: 8, scope: !4048)
!4096 = !DILocation(line: 1196, column: 22, scope: !4048)
!4097 = !DILocation(line: 1197, column: 2, scope: !4048)
!4098 = !DILocation(line: 1197, column: 8, scope: !4048)
!4099 = !DILocation(line: 1197, column: 23, scope: !4048)
!4100 = !DILocation(line: 1201, column: 1, scope: !4048)
!4101 = distinct !DISubprogram(name: "opts_set_pcaplogpathspec", scope: !48, file: !48, line: 1204, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4102 = !DILocalVariable(name: "opts", arg: 1, scope: !4101, file: !48, line: 1204, type: !64)
!4103 = !DILocation(line: 1204, column: 34, scope: !4101)
!4104 = !DILocalVariable(name: "argv0", arg: 2, scope: !4101, file: !48, line: 1204, type: !51)
!4105 = !DILocation(line: 1204, column: 52, scope: !4101)
!4106 = !DILocalVariable(name: "optarg", arg: 3, scope: !4101, file: !48, line: 1204, type: !51)
!4107 = !DILocation(line: 1204, column: 71, scope: !4101)
!4108 = !DILocation(line: 1206, column: 22, scope: !4101)
!4109 = !DILocation(line: 1206, column: 29, scope: !4101)
!4110 = !DILocation(line: 1206, column: 38, scope: !4101)
!4111 = !DILocation(line: 1206, column: 44, scope: !4101)
!4112 = !DILocation(line: 1207, column: 23, scope: !4101)
!4113 = !DILocation(line: 1207, column: 29, scope: !4101)
!4114 = !DILocation(line: 1206, column: 2, scope: !4101)
!4115 = !DILocation(line: 1208, column: 2, scope: !4101)
!4116 = !DILocation(line: 1208, column: 8, scope: !4101)
!4117 = !DILocation(line: 1208, column: 22, scope: !4101)
!4118 = !DILocation(line: 1209, column: 2, scope: !4101)
!4119 = !DILocation(line: 1209, column: 8, scope: !4101)
!4120 = !DILocation(line: 1209, column: 23, scope: !4101)
!4121 = !DILocation(line: 1214, column: 1, scope: !4101)
!4122 = distinct !DISubprogram(name: "opts_set_mirrorif", scope: !48, file: !48, line: 1218, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4123 = !DILocalVariable(name: "opts", arg: 1, scope: !4122, file: !48, line: 1218, type: !64)
!4124 = !DILocation(line: 1218, column: 27, scope: !4122)
!4125 = !DILocalVariable(name: "argv0", arg: 2, scope: !4122, file: !48, line: 1218, type: !51)
!4126 = !DILocation(line: 1218, column: 45, scope: !4122)
!4127 = !DILocalVariable(name: "optarg", arg: 3, scope: !4122, file: !48, line: 1218, type: !51)
!4128 = !DILocation(line: 1218, column: 64, scope: !4122)
!4129 = !DILocation(line: 1220, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4122, file: !48, line: 1220, column: 6)
!4131 = !DILocation(line: 1220, column: 12, scope: !4130)
!4132 = !DILocation(line: 1220, column: 6, scope: !4122)
!4133 = !DILocation(line: 1221, column: 8, scope: !4130)
!4134 = !DILocation(line: 1221, column: 14, scope: !4130)
!4135 = !DILocation(line: 1221, column: 3, scope: !4130)
!4136 = !DILocation(line: 1222, column: 26, scope: !4122)
!4137 = !DILocation(line: 1222, column: 19, scope: !4122)
!4138 = !DILocation(line: 1222, column: 2, scope: !4122)
!4139 = !DILocation(line: 1222, column: 8, scope: !4122)
!4140 = !DILocation(line: 1222, column: 17, scope: !4122)
!4141 = !DILocation(line: 1223, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4122, file: !48, line: 1223, column: 6)
!4143 = !DILocation(line: 1223, column: 13, scope: !4142)
!4144 = !DILocation(line: 1223, column: 6, scope: !4122)
!4145 = !DILocation(line: 1224, column: 11, scope: !4142)
!4146 = !DILocation(line: 1224, column: 3, scope: !4142)
!4147 = !DILocation(line: 1228, column: 1, scope: !4122)
!4148 = distinct !DISubprogram(name: "opts_set_mirrortarget", scope: !48, file: !48, line: 1231, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4149 = !DILocalVariable(name: "opts", arg: 1, scope: !4148, file: !48, line: 1231, type: !64)
!4150 = !DILocation(line: 1231, column: 31, scope: !4148)
!4151 = !DILocalVariable(name: "argv0", arg: 2, scope: !4148, file: !48, line: 1231, type: !51)
!4152 = !DILocation(line: 1231, column: 49, scope: !4148)
!4153 = !DILocalVariable(name: "optarg", arg: 3, scope: !4148, file: !48, line: 1231, type: !51)
!4154 = !DILocation(line: 1231, column: 68, scope: !4148)
!4155 = !DILocation(line: 1233, column: 6, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !48, line: 1233, column: 6)
!4157 = !DILocation(line: 1233, column: 12, scope: !4156)
!4158 = !DILocation(line: 1233, column: 6, scope: !4148)
!4159 = !DILocation(line: 1234, column: 8, scope: !4156)
!4160 = !DILocation(line: 1234, column: 14, scope: !4156)
!4161 = !DILocation(line: 1234, column: 3, scope: !4156)
!4162 = !DILocation(line: 1235, column: 30, scope: !4148)
!4163 = !DILocation(line: 1235, column: 23, scope: !4148)
!4164 = !DILocation(line: 1235, column: 2, scope: !4148)
!4165 = !DILocation(line: 1235, column: 8, scope: !4148)
!4166 = !DILocation(line: 1235, column: 21, scope: !4148)
!4167 = !DILocation(line: 1236, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4148, file: !48, line: 1236, column: 6)
!4169 = !DILocation(line: 1236, column: 13, scope: !4168)
!4170 = !DILocation(line: 1236, column: 6, scope: !4148)
!4171 = !DILocation(line: 1237, column: 11, scope: !4168)
!4172 = !DILocation(line: 1237, column: 3, scope: !4168)
!4173 = !DILocation(line: 1241, column: 1, scope: !4148)
!4174 = distinct !DISubprogram(name: "opts_set_daemon", scope: !48, file: !48, line: 1245, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4175 = !DILocalVariable(name: "opts", arg: 1, scope: !4174, file: !48, line: 1245, type: !64)
!4176 = !DILocation(line: 1245, column: 25, scope: !4174)
!4177 = !DILocation(line: 1247, column: 2, scope: !4174)
!4178 = !DILocation(line: 1247, column: 8, scope: !4174)
!4179 = !DILocation(line: 1247, column: 15, scope: !4174)
!4180 = !DILocation(line: 1248, column: 1, scope: !4174)
!4181 = distinct !DISubprogram(name: "opts_unset_daemon", scope: !48, file: !48, line: 1251, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4182 = !DILocalVariable(name: "opts", arg: 1, scope: !4181, file: !48, line: 1251, type: !64)
!4183 = !DILocation(line: 1251, column: 27, scope: !4181)
!4184 = !DILocation(line: 1253, column: 2, scope: !4181)
!4185 = !DILocation(line: 1253, column: 8, scope: !4181)
!4186 = !DILocation(line: 1253, column: 15, scope: !4181)
!4187 = !DILocation(line: 1254, column: 1, scope: !4181)
!4188 = distinct !DISubprogram(name: "opts_set_debug", scope: !48, file: !48, line: 1257, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4189 = !DILocalVariable(name: "opts", arg: 1, scope: !4188, file: !48, line: 1257, type: !64)
!4190 = !DILocation(line: 1257, column: 24, scope: !4188)
!4191 = !DILocation(line: 1259, column: 2, scope: !4188)
!4192 = !DILocation(line: 1260, column: 2, scope: !4188)
!4193 = !DILocation(line: 1260, column: 8, scope: !4188)
!4194 = !DILocation(line: 1260, column: 14, scope: !4188)
!4195 = !DILocation(line: 1261, column: 1, scope: !4188)
!4196 = distinct !DISubprogram(name: "opts_unset_debug", scope: !48, file: !48, line: 1264, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4197 = !DILocalVariable(name: "opts", arg: 1, scope: !4196, file: !48, line: 1264, type: !64)
!4198 = !DILocation(line: 1264, column: 26, scope: !4196)
!4199 = !DILocation(line: 1266, column: 2, scope: !4196)
!4200 = !DILocation(line: 1267, column: 2, scope: !4196)
!4201 = !DILocation(line: 1267, column: 8, scope: !4196)
!4202 = !DILocation(line: 1267, column: 14, scope: !4196)
!4203 = !DILocation(line: 1268, column: 1, scope: !4196)
!4204 = distinct !DISubprogram(name: "opts_set_option", scope: !48, file: !48, line: 1572, type: !4205, isLocal: false, isDefinition: true, scopeLine: 1574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!14, !64, !51, !51, !16}
!4207 = !DILocalVariable(name: "opts", arg: 1, scope: !4204, file: !48, line: 1572, type: !64)
!4208 = !DILocation(line: 1572, column: 25, scope: !4204)
!4209 = !DILocalVariable(name: "argv0", arg: 2, scope: !4204, file: !48, line: 1572, type: !51)
!4210 = !DILocation(line: 1572, column: 43, scope: !4204)
!4211 = !DILocalVariable(name: "optarg", arg: 3, scope: !4204, file: !48, line: 1572, type: !51)
!4212 = !DILocation(line: 1572, column: 62, scope: !4204)
!4213 = !DILocalVariable(name: "natengine", arg: 4, scope: !4204, file: !48, line: 1573, type: !16)
!4214 = !DILocation(line: 1573, column: 24, scope: !4204)
!4215 = !DILocalVariable(name: "name", scope: !4204, file: !48, line: 1575, type: !17)
!4216 = !DILocation(line: 1575, column: 8, scope: !4204)
!4217 = !DILocalVariable(name: "value", scope: !4204, file: !48, line: 1575, type: !17)
!4218 = !DILocation(line: 1575, column: 15, scope: !4204)
!4219 = !DILocalVariable(name: "retval", scope: !4204, file: !48, line: 1576, type: !14)
!4220 = !DILocation(line: 1576, column: 6, scope: !4204)
!4221 = !DILocalVariable(name: "line", scope: !4204, file: !48, line: 1577, type: !17)
!4222 = !DILocation(line: 1577, column: 8, scope: !4204)
!4223 = !DILocation(line: 1577, column: 22, scope: !4204)
!4224 = !DILocation(line: 1577, column: 15, scope: !4204)
!4225 = !DILocation(line: 1581, column: 14, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4204, file: !48, line: 1581, column: 2)
!4227 = !DILocation(line: 1581, column: 12, scope: !4226)
!4228 = !DILocation(line: 1581, column: 7, scope: !4226)
!4229 = !DILocation(line: 1581, column: 21, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4231, file: !48, discriminator: 1)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !48, line: 1581, column: 2)
!4232 = !DILocation(line: 1581, column: 20, scope: !4230)
!4233 = !DILocation(line: 1581, column: 26, scope: !4230)
!4234 = !DILocation(line: 1581, column: 33, scope: !4230)
!4235 = !DILocation(line: 1581, column: 37, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4231, file: !48, discriminator: 2)
!4237 = !DILocation(line: 1581, column: 36, scope: !4236)
!4238 = !DILocation(line: 1581, column: 42, scope: !4236)
!4239 = !DILocation(line: 1581, column: 33, scope: !4236)
!4240 = !DILocation(line: 1581, column: 2, scope: !4241)
!4241 = !DILexicalBlockFile(scope: !4226, file: !48, discriminator: 3)
!4242 = !DILocation(line: 1581, column: 2, scope: !4243)
!4243 = !DILexicalBlockFile(scope: !4226, file: !48, discriminator: 4)
!4244 = !DILocation(line: 1581, column: 55, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4231, file: !48, discriminator: 5)
!4246 = !DILocation(line: 1581, column: 2, scope: !4245)
!4247 = distinct !{!4247, !4248}
!4248 = !DILocation(line: 1581, column: 2, scope: !4204)
!4249 = !DILocation(line: 1584, column: 11, scope: !4204)
!4250 = !DILocation(line: 1584, column: 9, scope: !4204)
!4251 = !DILocation(line: 1585, column: 6, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4204, file: !48, line: 1585, column: 6)
!4253 = !DILocation(line: 1585, column: 13, scope: !4252)
!4254 = !DILocation(line: 1585, column: 6, scope: !4204)
!4255 = !DILocation(line: 1587, column: 23, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4252, file: !48, line: 1585, column: 19)
!4257 = !DILocation(line: 1587, column: 29, scope: !4256)
!4258 = !DILocation(line: 1587, column: 36, scope: !4256)
!4259 = !DILocation(line: 1587, column: 42, scope: !4256)
!4260 = !DILocation(line: 1587, column: 49, scope: !4256)
!4261 = !DILocation(line: 1587, column: 12, scope: !4256)
!4262 = !DILocation(line: 1587, column: 10, scope: !4256)
!4263 = !DILocation(line: 1588, column: 2, scope: !4256)
!4264 = !DILocation(line: 1590, column: 6, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4204, file: !48, line: 1590, column: 6)
!4266 = !DILocation(line: 1590, column: 6, scope: !4204)
!4267 = !DILocation(line: 1591, column: 8, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4265, file: !48, line: 1590, column: 12)
!4269 = !DILocation(line: 1591, column: 3, scope: !4268)
!4270 = !DILocation(line: 1592, column: 2, scope: !4268)
!4271 = !DILocation(line: 1593, column: 9, scope: !4204)
!4272 = !DILocation(line: 1593, column: 2, scope: !4204)
!4273 = distinct !DISubprogram(name: "get_name_value", scope: !48, file: !48, line: 1508, type: !4274, isLocal: true, isDefinition: true, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!14, !16, !16, !52}
!4276 = !DILocalVariable(name: "name", arg: 1, scope: !4273, file: !48, line: 1508, type: !16)
!4277 = !DILocation(line: 1508, column: 23, scope: !4273)
!4278 = !DILocalVariable(name: "value", arg: 2, scope: !4273, file: !48, line: 1508, type: !16)
!4279 = !DILocation(line: 1508, column: 36, scope: !4273)
!4280 = !DILocalVariable(name: "sep", arg: 3, scope: !4273, file: !48, line: 1508, type: !52)
!4281 = !DILocation(line: 1508, column: 54, scope: !4273)
!4282 = !DILocalVariable(name: "n", scope: !4273, file: !48, line: 1510, type: !17)
!4283 = !DILocation(line: 1510, column: 8, scope: !4273)
!4284 = !DILocalVariable(name: "v", scope: !4273, file: !48, line: 1510, type: !17)
!4285 = !DILocation(line: 1510, column: 12, scope: !4273)
!4286 = !DILocalVariable(name: "value_end", scope: !4273, file: !48, line: 1510, type: !17)
!4287 = !DILocation(line: 1510, column: 16, scope: !4273)
!4288 = !DILocalVariable(name: "retval", scope: !4273, file: !48, line: 1511, type: !14)
!4289 = !DILocation(line: 1511, column: 6, scope: !4273)
!4290 = !DILocation(line: 1514, column: 12, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4273, file: !48, line: 1514, column: 2)
!4292 = !DILocation(line: 1514, column: 11, scope: !4291)
!4293 = !DILocation(line: 1514, column: 9, scope: !4291)
!4294 = !DILocation(line: 1514, column: 7, scope: !4291)
!4295 = !DILocation(line: 1517, column: 8, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !48, line: 1517, column: 7)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !48, line: 1514, column: 24)
!4298 = distinct !DILexicalBlock(scope: !4291, file: !48, line: 1514, column: 2)
!4299 = !DILocation(line: 1517, column: 7, scope: !4296)
!4300 = !DILocation(line: 1517, column: 10, scope: !4296)
!4301 = !DILocation(line: 1517, column: 17, scope: !4296)
!4302 = !DILocation(line: 1517, column: 21, scope: !4303)
!4303 = !DILexicalBlockFile(scope: !4296, file: !48, discriminator: 1)
!4304 = !DILocation(line: 1517, column: 20, scope: !4303)
!4305 = !DILocation(line: 1517, column: 23, scope: !4303)
!4306 = !DILocation(line: 1517, column: 31, scope: !4303)
!4307 = !DILocation(line: 1517, column: 35, scope: !4308)
!4308 = !DILexicalBlockFile(scope: !4296, file: !48, discriminator: 2)
!4309 = !DILocation(line: 1517, column: 34, scope: !4308)
!4310 = !DILocation(line: 1517, column: 40, scope: !4308)
!4311 = !DILocation(line: 1517, column: 37, scope: !4308)
!4312 = !DILocation(line: 1517, column: 7, scope: !4308)
!4313 = !DILocation(line: 1518, column: 5, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4296, file: !48, line: 1517, column: 45)
!4315 = !DILocation(line: 1518, column: 7, scope: !4314)
!4316 = !DILocation(line: 1519, column: 5, scope: !4314)
!4317 = !DILocation(line: 1520, column: 4, scope: !4314)
!4318 = !DILocation(line: 1522, column: 8, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4297, file: !48, line: 1522, column: 7)
!4320 = !DILocation(line: 1522, column: 7, scope: !4319)
!4321 = !DILocation(line: 1522, column: 10, scope: !4319)
!4322 = !DILocation(line: 1522, column: 7, scope: !4297)
!4323 = !DILocation(line: 1523, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4319, file: !48, line: 1522, column: 19)
!4325 = !DILocation(line: 1524, column: 4, scope: !4324)
!4326 = !DILocation(line: 1526, column: 2, scope: !4297)
!4327 = !DILocation(line: 1514, column: 20, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !4298, file: !48, discriminator: 1)
!4329 = !DILocation(line: 1514, column: 2, scope: !4328)
!4330 = distinct !{!4330, !4331}
!4331 = !DILocation(line: 1514, column: 2, scope: !4273)
!4332 = !DILocation(line: 1529, column: 6, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4273, file: !48, line: 1529, column: 6)
!4334 = !DILocation(line: 1529, column: 8, scope: !4333)
!4335 = !DILocation(line: 1529, column: 6, scope: !4273)
!4336 = !DILocation(line: 1530, column: 10, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4333, file: !48, line: 1529, column: 16)
!4338 = !DILocation(line: 1530, column: 3, scope: !4337)
!4339 = !DILocation(line: 1531, column: 3, scope: !4337)
!4340 = !DILocation(line: 1536, column: 2, scope: !4273)
!4341 = !DILocation(line: 1536, column: 10, scope: !4342)
!4342 = !DILexicalBlockFile(scope: !4273, file: !48, discriminator: 1)
!4343 = !DILocation(line: 1536, column: 9, scope: !4342)
!4344 = !DILocation(line: 1536, column: 12, scope: !4342)
!4345 = !DILocation(line: 1536, column: 19, scope: !4342)
!4346 = !DILocation(line: 1536, column: 23, scope: !4347)
!4347 = !DILexicalBlockFile(scope: !4273, file: !48, discriminator: 2)
!4348 = !DILocation(line: 1536, column: 22, scope: !4347)
!4349 = !DILocation(line: 1536, column: 25, scope: !4347)
!4350 = !DILocation(line: 1536, column: 33, scope: !4347)
!4351 = !DILocation(line: 1536, column: 37, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4273, file: !48, discriminator: 3)
!4353 = !DILocation(line: 1536, column: 36, scope: !4352)
!4354 = !DILocation(line: 1536, column: 42, scope: !4352)
!4355 = !DILocation(line: 1536, column: 39, scope: !4352)
!4356 = !DILocation(line: 1536, column: 33, scope: !4352)
!4357 = !DILocation(line: 1536, column: 2, scope: !4358)
!4358 = !DILexicalBlockFile(scope: !4273, file: !48, discriminator: 4)
!4359 = !DILocation(line: 1537, column: 4, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4273, file: !48, line: 1536, column: 47)
!4361 = !DILocation(line: 1536, column: 2, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4273, file: !48, discriminator: 5)
!4363 = distinct !{!4363, !4340}
!4364 = !DILocation(line: 1540, column: 11, scope: !4273)
!4365 = !DILocation(line: 1540, column: 3, scope: !4273)
!4366 = !DILocation(line: 1540, column: 9, scope: !4273)
!4367 = !DILocation(line: 1544, column: 12, scope: !4273)
!4368 = !DILocation(line: 1545, column: 12, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4273, file: !48, line: 1545, column: 2)
!4370 = !DILocation(line: 1545, column: 11, scope: !4369)
!4371 = !DILocation(line: 1545, column: 9, scope: !4369)
!4372 = !DILocation(line: 1545, column: 7, scope: !4369)
!4373 = !DILocation(line: 1546, column: 8, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !48, line: 1546, column: 7)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !48, line: 1545, column: 25)
!4376 = distinct !DILexicalBlock(scope: !4369, file: !48, line: 1545, column: 2)
!4377 = !DILocation(line: 1546, column: 7, scope: !4374)
!4378 = !DILocation(line: 1546, column: 10, scope: !4374)
!4379 = !DILocation(line: 1546, column: 7, scope: !4375)
!4380 = !DILocation(line: 1547, column: 4, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4374, file: !48, line: 1546, column: 19)
!4382 = !DILocation(line: 1549, column: 8, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4375, file: !48, line: 1549, column: 7)
!4384 = !DILocation(line: 1549, column: 7, scope: !4383)
!4385 = !DILocation(line: 1549, column: 10, scope: !4383)
!4386 = !DILocation(line: 1549, column: 18, scope: !4383)
!4387 = !DILocation(line: 1549, column: 22, scope: !4388)
!4388 = !DILexicalBlockFile(scope: !4383, file: !48, discriminator: 1)
!4389 = !DILocation(line: 1549, column: 21, scope: !4388)
!4390 = !DILocation(line: 1549, column: 24, scope: !4388)
!4391 = !DILocation(line: 1549, column: 7, scope: !4388)
!4392 = !DILocation(line: 1550, column: 5, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4383, file: !48, line: 1549, column: 33)
!4394 = !DILocation(line: 1550, column: 7, scope: !4393)
!4395 = !DILocation(line: 1551, column: 4, scope: !4393)
!4396 = !DILocation(line: 1553, column: 8, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4375, file: !48, line: 1553, column: 7)
!4398 = !DILocation(line: 1553, column: 7, scope: !4397)
!4399 = !DILocation(line: 1553, column: 10, scope: !4397)
!4400 = !DILocation(line: 1553, column: 17, scope: !4397)
!4401 = !DILocation(line: 1553, column: 21, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4397, file: !48, discriminator: 1)
!4403 = !DILocation(line: 1553, column: 20, scope: !4402)
!4404 = !DILocation(line: 1553, column: 23, scope: !4402)
!4405 = !DILocation(line: 1553, column: 7, scope: !4402)
!4406 = !DILocation(line: 1554, column: 9, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !48, line: 1554, column: 8)
!4408 = distinct !DILexicalBlock(scope: !4397, file: !48, line: 1553, column: 32)
!4409 = !DILocation(line: 1554, column: 8, scope: !4408)
!4410 = !DILocation(line: 1555, column: 17, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4407, file: !48, line: 1554, column: 20)
!4412 = !DILocation(line: 1555, column: 15, scope: !4411)
!4413 = !DILocation(line: 1556, column: 4, scope: !4411)
!4414 = !DILocation(line: 1557, column: 3, scope: !4408)
!4415 = !DILocation(line: 1558, column: 14, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4397, file: !48, line: 1557, column: 10)
!4417 = !DILocation(line: 1560, column: 2, scope: !4375)
!4418 = !DILocation(line: 1545, column: 21, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4376, file: !48, discriminator: 1)
!4420 = !DILocation(line: 1545, column: 2, scope: !4419)
!4421 = distinct !{!4421, !4422}
!4422 = !DILocation(line: 1545, column: 2, scope: !4273)
!4423 = !DILocation(line: 1562, column: 6, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4273, file: !48, line: 1562, column: 6)
!4425 = !DILocation(line: 1562, column: 6, scope: !4273)
!4426 = !DILocation(line: 1563, column: 4, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4424, file: !48, line: 1562, column: 17)
!4428 = !DILocation(line: 1563, column: 14, scope: !4427)
!4429 = !DILocation(line: 1564, column: 2, scope: !4427)
!4430 = !DILocation(line: 1566, column: 9, scope: !4273)
!4431 = !DILocation(line: 1566, column: 2, scope: !4273)
!4432 = !DILocation(line: 1568, column: 9, scope: !4273)
!4433 = !DILocation(line: 1568, column: 2, scope: !4273)
!4434 = distinct !DISubprogram(name: "set_option", scope: !48, file: !48, line: 1310, type: !4435, isLocal: true, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!14, !64, !51, !51, !17, !16, !14}
!4437 = !DILocalVariable(name: "opts", arg: 1, scope: !4434, file: !48, line: 1310, type: !64)
!4438 = !DILocation(line: 1310, column: 20, scope: !4434)
!4439 = !DILocalVariable(name: "argv0", arg: 2, scope: !4434, file: !48, line: 1310, type: !51)
!4440 = !DILocation(line: 1310, column: 38, scope: !4434)
!4441 = !DILocalVariable(name: "name", arg: 3, scope: !4434, file: !48, line: 1311, type: !51)
!4442 = !DILocation(line: 1311, column: 24, scope: !4434)
!4443 = !DILocalVariable(name: "value", arg: 4, scope: !4434, file: !48, line: 1311, type: !17)
!4444 = !DILocation(line: 1311, column: 36, scope: !4434)
!4445 = !DILocalVariable(name: "natengine", arg: 5, scope: !4434, file: !48, line: 1311, type: !16)
!4446 = !DILocation(line: 1311, column: 50, scope: !4434)
!4447 = !DILocalVariable(name: "line_num", arg: 6, scope: !4434, file: !48, line: 1311, type: !14)
!4448 = !DILocation(line: 1311, column: 65, scope: !4434)
!4449 = !DILocalVariable(name: "yes", scope: !4434, file: !48, line: 1313, type: !14)
!4450 = !DILocation(line: 1313, column: 6, scope: !4434)
!4451 = !DILocalVariable(name: "retval", scope: !4434, file: !48, line: 1314, type: !14)
!4452 = !DILocation(line: 1314, column: 6, scope: !4434)
!4453 = !DILocation(line: 1317, column: 15, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4434, file: !48, line: 1317, column: 6)
!4455 = !DILocation(line: 1317, column: 7, scope: !4454)
!4456 = !DILocation(line: 1317, column: 6, scope: !4434)
!4457 = !DILocation(line: 1318, column: 18, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !48, line: 1317, column: 35)
!4459 = !DILocation(line: 1318, column: 24, scope: !4458)
!4460 = !DILocation(line: 1318, column: 31, scope: !4458)
!4461 = !DILocation(line: 1318, column: 3, scope: !4458)
!4462 = !DILocation(line: 1319, column: 2, scope: !4458)
!4463 = !DILocation(line: 1319, column: 22, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !4465, file: !48, discriminator: 1)
!4465 = distinct !DILexicalBlock(scope: !4454, file: !48, line: 1319, column: 13)
!4466 = !DILocation(line: 1319, column: 14, scope: !4464)
!4467 = !DILocation(line: 1319, column: 13, scope: !4464)
!4468 = !DILocation(line: 1320, column: 18, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !48, line: 1319, column: 41)
!4470 = !DILocation(line: 1320, column: 24, scope: !4469)
!4471 = !DILocation(line: 1320, column: 31, scope: !4469)
!4472 = !DILocation(line: 1320, column: 3, scope: !4469)
!4473 = !DILocation(line: 1321, column: 2, scope: !4469)
!4474 = !DILocation(line: 1321, column: 22, scope: !4475)
!4475 = !DILexicalBlockFile(scope: !4476, file: !48, discriminator: 1)
!4476 = distinct !DILexicalBlock(scope: !4465, file: !48, line: 1321, column: 13)
!4477 = !DILocation(line: 1321, column: 14, scope: !4475)
!4478 = !DILocation(line: 1321, column: 13, scope: !4475)
!4479 = !DILocation(line: 1322, column: 22, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !48, line: 1321, column: 47)
!4481 = !DILocation(line: 1322, column: 28, scope: !4480)
!4482 = !DILocation(line: 1322, column: 35, scope: !4480)
!4483 = !DILocation(line: 1322, column: 3, scope: !4480)
!4484 = !DILocation(line: 1323, column: 2, scope: !4480)
!4485 = !DILocation(line: 1323, column: 22, scope: !4486)
!4486 = !DILexicalBlockFile(scope: !4487, file: !48, discriminator: 1)
!4487 = distinct !DILexicalBlock(scope: !4476, file: !48, line: 1323, column: 13)
!4488 = !DILocation(line: 1323, column: 14, scope: !4486)
!4489 = !DILocation(line: 1323, column: 13, scope: !4486)
!4490 = !DILocation(line: 1324, column: 22, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4487, file: !48, line: 1323, column: 46)
!4492 = !DILocation(line: 1324, column: 28, scope: !4491)
!4493 = !DILocation(line: 1324, column: 35, scope: !4491)
!4494 = !DILocation(line: 1324, column: 3, scope: !4491)
!4495 = !DILocation(line: 1325, column: 2, scope: !4491)
!4496 = !DILocation(line: 1325, column: 22, scope: !4497)
!4497 = !DILexicalBlockFile(scope: !4498, file: !48, discriminator: 1)
!4498 = distinct !DILexicalBlock(scope: !4487, file: !48, line: 1325, column: 13)
!4499 = !DILocation(line: 1325, column: 14, scope: !4497)
!4500 = !DILocation(line: 1325, column: 13, scope: !4497)
!4501 = !DILocation(line: 1326, column: 18, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !48, line: 1325, column: 43)
!4503 = !DILocation(line: 1326, column: 24, scope: !4502)
!4504 = !DILocation(line: 1326, column: 31, scope: !4502)
!4505 = !DILocation(line: 1326, column: 3, scope: !4502)
!4506 = !DILocation(line: 1327, column: 2, scope: !4502)
!4507 = !DILocation(line: 1327, column: 22, scope: !4508)
!4508 = !DILexicalBlockFile(scope: !4509, file: !48, discriminator: 1)
!4509 = distinct !DILexicalBlock(scope: !4498, file: !48, line: 1327, column: 13)
!4510 = !DILocation(line: 1327, column: 14, scope: !4508)
!4511 = !DILocation(line: 1327, column: 13, scope: !4508)
!4512 = !DILocation(line: 1328, column: 16, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !48, line: 1327, column: 46)
!4514 = !DILocation(line: 1328, column: 22, scope: !4513)
!4515 = !DILocation(line: 1328, column: 29, scope: !4513)
!4516 = !DILocation(line: 1328, column: 3, scope: !4513)
!4517 = !DILocation(line: 1329, column: 2, scope: !4513)
!4518 = !DILocation(line: 1329, column: 22, scope: !4519)
!4519 = !DILexicalBlockFile(scope: !4520, file: !48, discriminator: 1)
!4520 = distinct !DILexicalBlock(scope: !4509, file: !48, line: 1329, column: 13)
!4521 = !DILocation(line: 1329, column: 14, scope: !4519)
!4522 = !DILocation(line: 1329, column: 13, scope: !4519)
!4523 = !DILocation(line: 1330, column: 16, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !48, line: 1329, column: 39)
!4525 = !DILocation(line: 1330, column: 22, scope: !4524)
!4526 = !DILocation(line: 1330, column: 3, scope: !4524)
!4527 = !DILocation(line: 1331, column: 2, scope: !4524)
!4528 = !DILocation(line: 1331, column: 22, scope: !4529)
!4529 = !DILexicalBlockFile(scope: !4530, file: !48, discriminator: 1)
!4530 = distinct !DILexicalBlock(scope: !4520, file: !48, line: 1331, column: 13)
!4531 = !DILocation(line: 1331, column: 14, scope: !4529)
!4532 = !DILocation(line: 1331, column: 13, scope: !4529)
!4533 = !DILocation(line: 1332, column: 21, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !48, line: 1331, column: 50)
!4535 = !DILocation(line: 1332, column: 27, scope: !4534)
!4536 = !DILocation(line: 1332, column: 34, scope: !4534)
!4537 = !DILocation(line: 1332, column: 3, scope: !4534)
!4538 = !DILocation(line: 1333, column: 2, scope: !4534)
!4539 = !DILocation(line: 1333, column: 22, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4541, file: !48, discriminator: 1)
!4541 = distinct !DILexicalBlock(scope: !4530, file: !48, line: 1333, column: 13)
!4542 = !DILocation(line: 1333, column: 14, scope: !4540)
!4543 = !DILocation(line: 1333, column: 13, scope: !4540)
!4544 = !DILocation(line: 1334, column: 37, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4541, file: !48, line: 1333, column: 53)
!4546 = !DILocation(line: 1334, column: 43, scope: !4545)
!4547 = !DILocation(line: 1334, column: 50, scope: !4545)
!4548 = !DILocation(line: 1334, column: 3, scope: !4545)
!4549 = !DILocation(line: 1335, column: 2, scope: !4545)
!4550 = !DILocation(line: 1335, column: 22, scope: !4551)
!4551 = !DILexicalBlockFile(scope: !4552, file: !48, discriminator: 1)
!4552 = distinct !DILexicalBlock(scope: !4541, file: !48, line: 1335, column: 13)
!4553 = !DILocation(line: 1335, column: 14, scope: !4551)
!4554 = !DILocation(line: 1335, column: 13, scope: !4551)
!4555 = !DILocation(line: 1336, column: 32, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !48, line: 1335, column: 53)
!4557 = !DILocation(line: 1336, column: 38, scope: !4556)
!4558 = !DILocation(line: 1336, column: 45, scope: !4556)
!4559 = !DILocation(line: 1336, column: 3, scope: !4556)
!4560 = !DILocation(line: 1337, column: 2, scope: !4556)
!4561 = !DILocation(line: 1337, column: 22, scope: !4562)
!4562 = !DILexicalBlockFile(scope: !4563, file: !48, discriminator: 1)
!4563 = distinct !DILexicalBlock(scope: !4552, file: !48, line: 1337, column: 13)
!4564 = !DILocation(line: 1337, column: 14, scope: !4562)
!4565 = !DILocation(line: 1337, column: 13, scope: !4562)
!4566 = !DILocation(line: 1338, column: 27, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !48, line: 1337, column: 44)
!4568 = !DILocation(line: 1338, column: 46, scope: !4567)
!4569 = !DILocation(line: 1338, column: 9, scope: !4567)
!4570 = !DILocation(line: 1338, column: 7, scope: !4567)
!4571 = !DILocation(line: 1339, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4567, file: !48, line: 1339, column: 7)
!4573 = !DILocation(line: 1339, column: 11, scope: !4572)
!4574 = !DILocation(line: 1339, column: 7, scope: !4567)
!4575 = !DILocation(line: 1340, column: 4, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4572, file: !48, line: 1339, column: 18)
!4577 = !DILocation(line: 1342, column: 3, scope: !4567)
!4578 = !DILocation(line: 1342, column: 28, scope: !4579)
!4579 = !DILexicalBlockFile(scope: !4567, file: !48, discriminator: 1)
!4580 = !DILocation(line: 1342, column: 9, scope: !4579)
!4581 = !DILocation(line: 1342, column: 3, scope: !4579)
!4582 = !DILocation(line: 1342, column: 57, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4567, file: !48, discriminator: 2)
!4584 = !DILocation(line: 1342, column: 36, scope: !4583)
!4585 = !DILocation(line: 1342, column: 3, scope: !4583)
!4586 = !DILocation(line: 1346, column: 2, scope: !4567)
!4587 = !DILocation(line: 1346, column: 22, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4589, file: !48, discriminator: 1)
!4589 = distinct !DILexicalBlock(scope: !4563, file: !48, line: 1346, column: 13)
!4590 = !DILocation(line: 1346, column: 14, scope: !4588)
!4591 = !DILocation(line: 1346, column: 13, scope: !4588)
!4592 = !DILocation(line: 1347, column: 27, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4589, file: !48, line: 1346, column: 48)
!4594 = !DILocation(line: 1347, column: 49, scope: !4593)
!4595 = !DILocation(line: 1347, column: 9, scope: !4593)
!4596 = !DILocation(line: 1347, column: 7, scope: !4593)
!4597 = !DILocation(line: 1348, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4593, file: !48, line: 1348, column: 7)
!4599 = !DILocation(line: 1348, column: 11, scope: !4598)
!4600 = !DILocation(line: 1348, column: 7, scope: !4593)
!4601 = !DILocation(line: 1349, column: 4, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4598, file: !48, line: 1348, column: 18)
!4603 = !DILocation(line: 1351, column: 3, scope: !4593)
!4604 = !DILocation(line: 1351, column: 30, scope: !4605)
!4605 = !DILexicalBlockFile(scope: !4593, file: !48, discriminator: 1)
!4606 = !DILocation(line: 1351, column: 9, scope: !4605)
!4607 = !DILocation(line: 1351, column: 3, scope: !4605)
!4608 = !DILocation(line: 1351, column: 61, scope: !4609)
!4609 = !DILexicalBlockFile(scope: !4593, file: !48, discriminator: 2)
!4610 = !DILocation(line: 1351, column: 38, scope: !4609)
!4611 = !DILocation(line: 1351, column: 3, scope: !4609)
!4612 = !DILocation(line: 1356, column: 2, scope: !4593)
!4613 = !DILocation(line: 1356, column: 22, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !4615, file: !48, discriminator: 1)
!4615 = distinct !DILexicalBlock(scope: !4589, file: !48, line: 1356, column: 13)
!4616 = !DILocation(line: 1356, column: 14, scope: !4614)
!4617 = !DILocation(line: 1356, column: 13, scope: !4614)
!4618 = !DILocation(line: 1357, column: 15, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4615, file: !48, line: 1356, column: 50)
!4620 = !DILocation(line: 1357, column: 21, scope: !4619)
!4621 = !DILocation(line: 1357, column: 28, scope: !4619)
!4622 = !DILocation(line: 1357, column: 3, scope: !4619)
!4623 = !DILocation(line: 1360, column: 2, scope: !4619)
!4624 = !DILocation(line: 1360, column: 22, scope: !4625)
!4625 = !DILexicalBlockFile(scope: !4626, file: !48, discriminator: 1)
!4626 = distinct !DILexicalBlock(scope: !4615, file: !48, line: 1360, column: 13)
!4627 = !DILocation(line: 1360, column: 14, scope: !4625)
!4628 = !DILocation(line: 1360, column: 13, scope: !4625)
!4629 = !DILocation(line: 1361, column: 22, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4626, file: !48, line: 1360, column: 46)
!4631 = !DILocation(line: 1361, column: 28, scope: !4630)
!4632 = !DILocation(line: 1361, column: 35, scope: !4630)
!4633 = !DILocation(line: 1361, column: 3, scope: !4630)
!4634 = !DILocation(line: 1364, column: 2, scope: !4630)
!4635 = !DILocation(line: 1364, column: 22, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !4637, file: !48, discriminator: 1)
!4637 = distinct !DILexicalBlock(scope: !4626, file: !48, line: 1364, column: 13)
!4638 = !DILocation(line: 1364, column: 14, scope: !4636)
!4639 = !DILocation(line: 1364, column: 13, scope: !4636)
!4640 = !DILocation(line: 1365, column: 27, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !48, line: 1364, column: 51)
!4642 = !DILocation(line: 1365, column: 52, scope: !4641)
!4643 = !DILocation(line: 1365, column: 9, scope: !4641)
!4644 = !DILocation(line: 1365, column: 7, scope: !4641)
!4645 = !DILocation(line: 1366, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4641, file: !48, line: 1366, column: 7)
!4647 = !DILocation(line: 1366, column: 11, scope: !4646)
!4648 = !DILocation(line: 1366, column: 7, scope: !4641)
!4649 = !DILocation(line: 1367, column: 4, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4646, file: !48, line: 1366, column: 18)
!4651 = !DILocation(line: 1369, column: 3, scope: !4641)
!4652 = !DILocation(line: 1369, column: 26, scope: !4653)
!4653 = !DILexicalBlockFile(scope: !4641, file: !48, discriminator: 1)
!4654 = !DILocation(line: 1369, column: 9, scope: !4653)
!4655 = !DILocation(line: 1369, column: 3, scope: !4653)
!4656 = !DILocation(line: 1369, column: 53, scope: !4657)
!4657 = !DILexicalBlockFile(scope: !4641, file: !48, discriminator: 2)
!4658 = !DILocation(line: 1369, column: 34, scope: !4657)
!4659 = !DILocation(line: 1369, column: 3, scope: !4657)
!4660 = !DILocation(line: 1374, column: 2, scope: !4641)
!4661 = !DILocation(line: 1374, column: 22, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !4663, file: !48, discriminator: 1)
!4663 = distinct !DILexicalBlock(scope: !4637, file: !48, line: 1374, column: 13)
!4664 = !DILocation(line: 1374, column: 14, scope: !4662)
!4665 = !DILocation(line: 1374, column: 13, scope: !4662)
!4666 = !DILocation(line: 1375, column: 20, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4663, file: !48, line: 1374, column: 50)
!4668 = !DILocation(line: 1375, column: 26, scope: !4667)
!4669 = !DILocation(line: 1375, column: 33, scope: !4667)
!4670 = !DILocation(line: 1375, column: 3, scope: !4667)
!4671 = !DILocation(line: 1376, column: 2, scope: !4667)
!4672 = !DILocation(line: 1376, column: 22, scope: !4673)
!4673 = !DILexicalBlockFile(scope: !4674, file: !48, discriminator: 1)
!4674 = distinct !DILexicalBlock(scope: !4663, file: !48, line: 1376, column: 13)
!4675 = !DILocation(line: 1376, column: 14, scope: !4673)
!4676 = !DILocation(line: 1376, column: 13, scope: !4673)
!4677 = !DILocation(line: 1377, column: 22, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4674, file: !48, line: 1376, column: 52)
!4679 = !DILocation(line: 1377, column: 28, scope: !4678)
!4680 = !DILocation(line: 1377, column: 35, scope: !4678)
!4681 = !DILocation(line: 1377, column: 3, scope: !4678)
!4682 = !DILocation(line: 1378, column: 2, scope: !4678)
!4683 = !DILocation(line: 1378, column: 22, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4685, file: !48, discriminator: 1)
!4685 = distinct !DILexicalBlock(scope: !4674, file: !48, line: 1378, column: 13)
!4686 = !DILocation(line: 1378, column: 14, scope: !4684)
!4687 = !DILocation(line: 1378, column: 13, scope: !4684)
!4688 = !DILocation(line: 1379, column: 20, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !48, line: 1378, column: 43)
!4690 = !DILocation(line: 1379, column: 26, scope: !4689)
!4691 = !DILocation(line: 1379, column: 33, scope: !4689)
!4692 = !DILocation(line: 1379, column: 3, scope: !4689)
!4693 = !DILocation(line: 1381, column: 2, scope: !4689)
!4694 = !DILocation(line: 1381, column: 22, scope: !4695)
!4695 = !DILexicalBlockFile(scope: !4696, file: !48, discriminator: 1)
!4696 = distinct !DILexicalBlock(scope: !4685, file: !48, line: 1381, column: 13)
!4697 = !DILocation(line: 1381, column: 14, scope: !4695)
!4698 = !DILocation(line: 1381, column: 13, scope: !4695)
!4699 = !DILocation(line: 1382, column: 27, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !48, line: 1381, column: 50)
!4701 = !DILocation(line: 1382, column: 33, scope: !4700)
!4702 = !DILocation(line: 1382, column: 40, scope: !4700)
!4703 = !DILocation(line: 1382, column: 3, scope: !4700)
!4704 = !DILocation(line: 1384, column: 2, scope: !4700)
!4705 = !DILocation(line: 1384, column: 22, scope: !4706)
!4706 = !DILexicalBlockFile(scope: !4707, file: !48, discriminator: 1)
!4707 = distinct !DILexicalBlock(scope: !4696, file: !48, line: 1384, column: 13)
!4708 = !DILocation(line: 1384, column: 14, scope: !4706)
!4709 = !DILocation(line: 1384, column: 13, scope: !4706)
!4710 = !DILocation(line: 1385, column: 8, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !48, line: 1385, column: 7)
!4712 = distinct !DILexicalBlock(scope: !4707, file: !48, line: 1384, column: 46)
!4713 = !DILocation(line: 1385, column: 7, scope: !4711)
!4714 = !DILocation(line: 1385, column: 7, scope: !4712)
!4715 = !DILocation(line: 1386, column: 10, scope: !4711)
!4716 = !DILocation(line: 1386, column: 9, scope: !4711)
!4717 = !DILocation(line: 1386, column: 4, scope: !4711)
!4718 = !DILocation(line: 1387, column: 23, scope: !4712)
!4719 = !DILocation(line: 1387, column: 16, scope: !4712)
!4720 = !DILocation(line: 1387, column: 4, scope: !4712)
!4721 = !DILocation(line: 1387, column: 14, scope: !4712)
!4722 = !DILocation(line: 1388, column: 9, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4712, file: !48, line: 1388, column: 7)
!4724 = !DILocation(line: 1388, column: 8, scope: !4723)
!4725 = !DILocation(line: 1388, column: 7, scope: !4712)
!4726 = !DILocation(line: 1389, column: 4, scope: !4723)
!4727 = !DILocation(line: 1393, column: 2, scope: !4712)
!4728 = !DILocation(line: 1393, column: 22, scope: !4729)
!4729 = !DILexicalBlockFile(scope: !4730, file: !48, discriminator: 1)
!4730 = distinct !DILexicalBlock(scope: !4707, file: !48, line: 1393, column: 13)
!4731 = !DILocation(line: 1393, column: 14, scope: !4729)
!4732 = !DILocation(line: 1393, column: 13, scope: !4729)
!4733 = !DILocation(line: 1394, column: 17, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !48, line: 1393, column: 40)
!4735 = !DILocation(line: 1394, column: 23, scope: !4734)
!4736 = !DILocation(line: 1394, column: 30, scope: !4734)
!4737 = !DILocation(line: 1394, column: 3, scope: !4734)
!4738 = !DILocation(line: 1395, column: 2, scope: !4734)
!4739 = !DILocation(line: 1395, column: 22, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !4741, file: !48, discriminator: 1)
!4741 = distinct !DILexicalBlock(scope: !4730, file: !48, line: 1395, column: 13)
!4742 = !DILocation(line: 1395, column: 14, scope: !4740)
!4743 = !DILocation(line: 1395, column: 13, scope: !4740)
!4744 = !DILocation(line: 1396, column: 18, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4741, file: !48, line: 1395, column: 41)
!4746 = !DILocation(line: 1396, column: 24, scope: !4745)
!4747 = !DILocation(line: 1396, column: 31, scope: !4745)
!4748 = !DILocation(line: 1396, column: 3, scope: !4745)
!4749 = !DILocation(line: 1397, column: 2, scope: !4745)
!4750 = !DILocation(line: 1397, column: 22, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !4752, file: !48, discriminator: 1)
!4752 = distinct !DILexicalBlock(scope: !4741, file: !48, line: 1397, column: 13)
!4753 = !DILocation(line: 1397, column: 14, scope: !4751)
!4754 = !DILocation(line: 1397, column: 13, scope: !4751)
!4755 = !DILocation(line: 1398, column: 20, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4752, file: !48, line: 1397, column: 42)
!4757 = !DILocation(line: 1398, column: 26, scope: !4756)
!4758 = !DILocation(line: 1398, column: 33, scope: !4756)
!4759 = !DILocation(line: 1398, column: 3, scope: !4756)
!4760 = !DILocation(line: 1399, column: 2, scope: !4756)
!4761 = !DILocation(line: 1399, column: 22, scope: !4762)
!4762 = !DILexicalBlockFile(scope: !4763, file: !48, discriminator: 1)
!4763 = distinct !DILexicalBlock(scope: !4752, file: !48, line: 1399, column: 13)
!4764 = !DILocation(line: 1399, column: 14, scope: !4762)
!4765 = !DILocation(line: 1399, column: 13, scope: !4762)
!4766 = !DILocation(line: 1400, column: 20, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4763, file: !48, line: 1399, column: 43)
!4768 = !DILocation(line: 1400, column: 26, scope: !4767)
!4769 = !DILocation(line: 1400, column: 33, scope: !4767)
!4770 = !DILocation(line: 1400, column: 3, scope: !4767)
!4771 = !DILocation(line: 1401, column: 2, scope: !4767)
!4772 = !DILocation(line: 1401, column: 22, scope: !4773)
!4773 = !DILexicalBlockFile(scope: !4774, file: !48, discriminator: 1)
!4774 = distinct !DILexicalBlock(scope: !4763, file: !48, line: 1401, column: 13)
!4775 = !DILocation(line: 1401, column: 14, scope: !4773)
!4776 = !DILocation(line: 1401, column: 13, scope: !4773)
!4777 = !DILocation(line: 1402, column: 23, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !48, line: 1401, column: 47)
!4779 = !DILocation(line: 1402, column: 29, scope: !4778)
!4780 = !DILocation(line: 1402, column: 36, scope: !4778)
!4781 = !DILocation(line: 1402, column: 3, scope: !4778)
!4782 = !DILocation(line: 1403, column: 2, scope: !4778)
!4783 = !DILocation(line: 1403, column: 22, scope: !4784)
!4784 = !DILexicalBlockFile(scope: !4785, file: !48, discriminator: 1)
!4785 = distinct !DILexicalBlock(scope: !4774, file: !48, line: 1403, column: 13)
!4786 = !DILocation(line: 1403, column: 14, scope: !4784)
!4787 = !DILocation(line: 1403, column: 13, scope: !4784)
!4788 = !DILocation(line: 1404, column: 23, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4785, file: !48, line: 1403, column: 47)
!4790 = !DILocation(line: 1404, column: 29, scope: !4789)
!4791 = !DILocation(line: 1404, column: 36, scope: !4789)
!4792 = !DILocation(line: 1404, column: 3, scope: !4789)
!4793 = !DILocation(line: 1405, column: 2, scope: !4789)
!4794 = !DILocation(line: 1405, column: 22, scope: !4795)
!4795 = !DILexicalBlockFile(scope: !4796, file: !48, discriminator: 1)
!4796 = distinct !DILexicalBlock(scope: !4785, file: !48, line: 1405, column: 13)
!4797 = !DILocation(line: 1405, column: 14, scope: !4795)
!4798 = !DILocation(line: 1405, column: 13, scope: !4795)
!4799 = !DILocation(line: 1406, column: 26, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !48, line: 1405, column: 50)
!4801 = !DILocation(line: 1406, column: 32, scope: !4800)
!4802 = !DILocation(line: 1406, column: 39, scope: !4800)
!4803 = !DILocation(line: 1406, column: 3, scope: !4800)
!4804 = !DILocation(line: 1407, column: 2, scope: !4800)
!4805 = !DILocation(line: 1407, column: 22, scope: !4806)
!4806 = !DILexicalBlockFile(scope: !4807, file: !48, discriminator: 1)
!4807 = distinct !DILexicalBlock(scope: !4796, file: !48, line: 1407, column: 13)
!4808 = !DILocation(line: 1407, column: 14, scope: !4806)
!4809 = !DILocation(line: 1407, column: 13, scope: !4806)
!4810 = !DILocation(line: 1408, column: 31, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !48, line: 1407, column: 55)
!4812 = !DILocation(line: 1408, column: 37, scope: !4811)
!4813 = !DILocation(line: 1408, column: 44, scope: !4811)
!4814 = !DILocation(line: 1408, column: 3, scope: !4811)
!4815 = !DILocation(line: 1420, column: 2, scope: !4811)
!4816 = !DILocation(line: 1420, column: 22, scope: !4817)
!4817 = !DILexicalBlockFile(scope: !4818, file: !48, discriminator: 1)
!4818 = distinct !DILexicalBlock(scope: !4807, file: !48, line: 1420, column: 13)
!4819 = !DILocation(line: 1420, column: 14, scope: !4817)
!4820 = !DILocation(line: 1420, column: 13, scope: !4817)
!4821 = !DILocation(line: 1421, column: 25, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !48, line: 1420, column: 49)
!4823 = !DILocation(line: 1421, column: 31, scope: !4822)
!4824 = !DILocation(line: 1421, column: 38, scope: !4822)
!4825 = !DILocation(line: 1421, column: 3, scope: !4822)
!4826 = !DILocation(line: 1422, column: 2, scope: !4822)
!4827 = !DILocation(line: 1422, column: 22, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !4829, file: !48, discriminator: 1)
!4829 = distinct !DILexicalBlock(scope: !4818, file: !48, line: 1422, column: 13)
!4830 = !DILocation(line: 1422, column: 14, scope: !4828)
!4831 = !DILocation(line: 1422, column: 13, scope: !4828)
!4832 = !DILocation(line: 1423, column: 20, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !48, line: 1422, column: 43)
!4834 = !DILocation(line: 1423, column: 26, scope: !4833)
!4835 = !DILocation(line: 1423, column: 33, scope: !4833)
!4836 = !DILocation(line: 1423, column: 3, scope: !4833)
!4837 = !DILocation(line: 1424, column: 2, scope: !4833)
!4838 = !DILocation(line: 1424, column: 22, scope: !4839)
!4839 = !DILexicalBlockFile(scope: !4840, file: !48, discriminator: 1)
!4840 = distinct !DILexicalBlock(scope: !4829, file: !48, line: 1424, column: 13)
!4841 = !DILocation(line: 1424, column: 14, scope: !4839)
!4842 = !DILocation(line: 1424, column: 13, scope: !4839)
!4843 = !DILocation(line: 1425, column: 23, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4840, file: !48, line: 1424, column: 47)
!4845 = !DILocation(line: 1425, column: 29, scope: !4844)
!4846 = !DILocation(line: 1425, column: 36, scope: !4844)
!4847 = !DILocation(line: 1425, column: 3, scope: !4844)
!4848 = !DILocation(line: 1426, column: 2, scope: !4844)
!4849 = !DILocation(line: 1426, column: 22, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4851, file: !48, discriminator: 1)
!4851 = distinct !DILexicalBlock(scope: !4840, file: !48, line: 1426, column: 13)
!4852 = !DILocation(line: 1426, column: 14, scope: !4850)
!4853 = !DILocation(line: 1426, column: 13, scope: !4850)
!4854 = !DILocation(line: 1427, column: 28, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !48, line: 1426, column: 52)
!4856 = !DILocation(line: 1427, column: 34, scope: !4855)
!4857 = !DILocation(line: 1427, column: 41, scope: !4855)
!4858 = !DILocation(line: 1427, column: 3, scope: !4855)
!4859 = !DILocation(line: 1429, column: 2, scope: !4855)
!4860 = !DILocation(line: 1429, column: 22, scope: !4861)
!4861 = !DILexicalBlockFile(scope: !4862, file: !48, discriminator: 1)
!4862 = distinct !DILexicalBlock(scope: !4851, file: !48, line: 1429, column: 13)
!4863 = !DILocation(line: 1429, column: 14, scope: !4861)
!4864 = !DILocation(line: 1429, column: 13, scope: !4861)
!4865 = !DILocation(line: 1430, column: 21, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4862, file: !48, line: 1429, column: 44)
!4867 = !DILocation(line: 1430, column: 27, scope: !4866)
!4868 = !DILocation(line: 1430, column: 34, scope: !4866)
!4869 = !DILocation(line: 1430, column: 3, scope: !4866)
!4870 = !DILocation(line: 1431, column: 2, scope: !4866)
!4871 = !DILocation(line: 1431, column: 22, scope: !4872)
!4872 = !DILexicalBlockFile(scope: !4873, file: !48, discriminator: 1)
!4873 = distinct !DILexicalBlock(scope: !4862, file: !48, line: 1431, column: 13)
!4874 = !DILocation(line: 1431, column: 14, scope: !4872)
!4875 = !DILocation(line: 1431, column: 13, scope: !4872)
!4876 = !DILocation(line: 1432, column: 25, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4873, file: !48, line: 1431, column: 49)
!4878 = !DILocation(line: 1432, column: 31, scope: !4877)
!4879 = !DILocation(line: 1432, column: 38, scope: !4877)
!4880 = !DILocation(line: 1432, column: 3, scope: !4877)
!4881 = !DILocation(line: 1434, column: 2, scope: !4877)
!4882 = !DILocation(line: 1434, column: 22, scope: !4883)
!4883 = !DILexicalBlockFile(scope: !4884, file: !48, discriminator: 1)
!4884 = distinct !DILexicalBlock(scope: !4873, file: !48, line: 1434, column: 13)
!4885 = !DILocation(line: 1434, column: 14, scope: !4883)
!4886 = !DILocation(line: 1434, column: 13, scope: !4883)
!4887 = !DILocation(line: 1435, column: 27, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4884, file: !48, line: 1434, column: 42)
!4889 = !DILocation(line: 1435, column: 44, scope: !4888)
!4890 = !DILocation(line: 1435, column: 9, scope: !4888)
!4891 = !DILocation(line: 1435, column: 7, scope: !4888)
!4892 = !DILocation(line: 1436, column: 7, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4888, file: !48, line: 1436, column: 7)
!4894 = !DILocation(line: 1436, column: 11, scope: !4893)
!4895 = !DILocation(line: 1436, column: 7, scope: !4888)
!4896 = !DILocation(line: 1437, column: 4, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !48, line: 1436, column: 18)
!4898 = !DILocation(line: 1439, column: 3, scope: !4888)
!4899 = !DILocation(line: 1439, column: 25, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4888, file: !48, discriminator: 1)
!4901 = !DILocation(line: 1439, column: 9, scope: !4900)
!4902 = !DILocation(line: 1439, column: 3, scope: !4900)
!4903 = !DILocation(line: 1439, column: 51, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4888, file: !48, discriminator: 2)
!4905 = !DILocation(line: 1439, column: 33, scope: !4904)
!4906 = !DILocation(line: 1439, column: 3, scope: !4904)
!4907 = !DILocation(line: 1443, column: 2, scope: !4888)
!4908 = !DILocation(line: 1443, column: 22, scope: !4909)
!4909 = !DILexicalBlockFile(scope: !4910, file: !48, discriminator: 1)
!4910 = distinct !DILexicalBlock(scope: !4884, file: !48, line: 1443, column: 13)
!4911 = !DILocation(line: 1443, column: 14, scope: !4909)
!4912 = !DILocation(line: 1443, column: 13, scope: !4909)
!4913 = !DILocation(line: 1444, column: 27, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4910, file: !48, line: 1443, column: 41)
!4915 = !DILocation(line: 1444, column: 43, scope: !4914)
!4916 = !DILocation(line: 1444, column: 9, scope: !4914)
!4917 = !DILocation(line: 1444, column: 7, scope: !4914)
!4918 = !DILocation(line: 1445, column: 7, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4914, file: !48, line: 1445, column: 7)
!4920 = !DILocation(line: 1445, column: 11, scope: !4919)
!4921 = !DILocation(line: 1445, column: 7, scope: !4914)
!4922 = !DILocation(line: 1446, column: 4, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !48, line: 1445, column: 18)
!4924 = !DILocation(line: 1448, column: 3, scope: !4914)
!4925 = !DILocation(line: 1448, column: 24, scope: !4926)
!4926 = !DILexicalBlockFile(scope: !4914, file: !48, discriminator: 1)
!4927 = !DILocation(line: 1448, column: 9, scope: !4926)
!4928 = !DILocation(line: 1448, column: 3, scope: !4926)
!4929 = !DILocation(line: 1448, column: 49, scope: !4930)
!4930 = !DILexicalBlockFile(scope: !4914, file: !48, discriminator: 2)
!4931 = !DILocation(line: 1448, column: 32, scope: !4930)
!4932 = !DILocation(line: 1448, column: 3, scope: !4930)
!4933 = !DILocation(line: 1452, column: 2, scope: !4914)
!4934 = !DILocation(line: 1452, column: 22, scope: !4935)
!4935 = !DILexicalBlockFile(scope: !4936, file: !48, discriminator: 1)
!4936 = distinct !DILexicalBlock(scope: !4910, file: !48, line: 1452, column: 13)
!4937 = !DILocation(line: 1452, column: 14, scope: !4935)
!4938 = !DILocation(line: 1452, column: 13, scope: !4935)
!4939 = !DILocalVariable(name: "argv", scope: !4940, file: !48, line: 1454, type: !16)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !48, line: 1452, column: 46)
!4941 = !DILocation(line: 1454, column: 10, scope: !4940)
!4942 = !DILocation(line: 1454, column: 17, scope: !4940)
!4943 = !DILocalVariable(name: "save_argv", scope: !4940, file: !48, line: 1455, type: !16)
!4944 = !DILocation(line: 1455, column: 10, scope: !4940)
!4945 = !DILocation(line: 1455, column: 22, scope: !4940)
!4946 = !DILocalVariable(name: "argc", scope: !4940, file: !48, line: 1456, type: !14)
!4947 = !DILocation(line: 1456, column: 7, scope: !4940)
!4948 = !DILocalVariable(name: "p", scope: !4940, file: !48, line: 1457, type: !17)
!4949 = !DILocation(line: 1457, column: 9, scope: !4940)
!4950 = !DILocalVariable(name: "last", scope: !4940, file: !48, line: 1457, type: !17)
!4951 = !DILocation(line: 1457, column: 13, scope: !4940)
!4952 = !DILocation(line: 1459, column: 22, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4940, file: !48, line: 1459, column: 3)
!4954 = !DILocation(line: 1459, column: 13, scope: !4953)
!4955 = !DILocation(line: 1459, column: 11, scope: !4953)
!4956 = !DILocation(line: 1459, column: 8, scope: !4953)
!4957 = !DILocation(line: 1460, column: 8, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4953, file: !48, line: 1459, column: 3)
!4959 = !DILocation(line: 1459, column: 3, scope: !4960)
!4960 = !DILexicalBlockFile(scope: !4953, file: !48, discriminator: 1)
!4961 = !DILocation(line: 1463, column: 8, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !48, line: 1463, column: 8)
!4963 = distinct !DILexicalBlock(scope: !4958, file: !48, line: 1461, column: 41)
!4964 = !DILocation(line: 1463, column: 13, scope: !4962)
!4965 = !DILocation(line: 1463, column: 8, scope: !4963)
!4966 = !DILocation(line: 1464, column: 20, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4962, file: !48, line: 1463, column: 19)
!4968 = !DILocation(line: 1464, column: 14, scope: !4967)
!4969 = !DILocation(line: 1464, column: 5, scope: !4967)
!4970 = !DILocation(line: 1464, column: 18, scope: !4967)
!4971 = !DILocation(line: 1465, column: 4, scope: !4967)
!4972 = !DILocation(line: 1466, column: 5, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4962, file: !48, line: 1465, column: 11)
!4974 = !DILocation(line: 1468, column: 3, scope: !4963)
!4975 = !DILocation(line: 1461, column: 13, scope: !4958)
!4976 = !DILocation(line: 1461, column: 11, scope: !4958)
!4977 = !DILocation(line: 1459, column: 3, scope: !4978)
!4978 = !DILexicalBlockFile(scope: !4958, file: !48, discriminator: 2)
!4979 = distinct !{!4979, !4980}
!4980 = !DILocation(line: 1459, column: 3, scope: !4940)
!4981 = !DILocation(line: 1470, column: 34, scope: !4940)
!4982 = !DILocation(line: 1470, column: 33, scope: !4940)
!4983 = !DILocation(line: 1470, column: 46, scope: !4940)
!4984 = !DILocation(line: 1470, column: 52, scope: !4940)
!4985 = !DILocation(line: 1470, column: 3, scope: !4940)
!4986 = !DILocation(line: 1471, column: 8, scope: !4940)
!4987 = !DILocation(line: 1471, column: 3, scope: !4940)
!4988 = !DILocation(line: 1472, column: 2, scope: !4940)
!4989 = !DILocation(line: 1472, column: 26, scope: !4990)
!4990 = !DILexicalBlockFile(scope: !4991, file: !48, discriminator: 1)
!4991 = distinct !DILexicalBlock(scope: !4936, file: !48, line: 1472, column: 13)
!4992 = !DILocation(line: 1472, column: 14, scope: !4990)
!4993 = !DILocation(line: 1472, column: 13, scope: !4990)
!4994 = !DILocation(line: 1473, column: 27, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4991, file: !48, line: 1472, column: 51)
!4996 = !DILocation(line: 1473, column: 48, scope: !4995)
!4997 = !DILocation(line: 1473, column: 9, scope: !4995)
!4998 = !DILocation(line: 1473, column: 7, scope: !4995)
!4999 = !DILocation(line: 1474, column: 7, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4995, file: !48, line: 1474, column: 7)
!5001 = !DILocation(line: 1474, column: 11, scope: !5000)
!5002 = !DILocation(line: 1474, column: 7, scope: !4995)
!5003 = !DILocation(line: 1475, column: 4, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !48, line: 1474, column: 18)
!5005 = !DILocation(line: 1477, column: 3, scope: !4995)
!5006 = !DILocation(line: 1477, column: 30, scope: !5007)
!5007 = !DILexicalBlockFile(scope: !4995, file: !48, discriminator: 1)
!5008 = !DILocation(line: 1477, column: 9, scope: !5007)
!5009 = !DILocation(line: 1477, column: 3, scope: !5007)
!5010 = !DILocation(line: 1477, column: 61, scope: !5011)
!5011 = !DILexicalBlockFile(scope: !4995, file: !48, discriminator: 2)
!5012 = !DILocation(line: 1477, column: 38, scope: !5011)
!5013 = !DILocation(line: 1477, column: 3, scope: !5011)
!5014 = !DILocation(line: 1481, column: 2, scope: !4995)
!5015 = !DILocation(line: 1481, column: 26, scope: !5016)
!5016 = !DILexicalBlockFile(scope: !5017, file: !48, discriminator: 1)
!5017 = distinct !DILexicalBlock(scope: !4991, file: !48, line: 1481, column: 13)
!5018 = !DILocation(line: 1481, column: 14, scope: !5016)
!5019 = !DILocation(line: 1481, column: 13, scope: !5016)
!5020 = !DILocation(line: 1482, column: 27, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5017, file: !48, line: 1481, column: 60)
!5022 = !DILocation(line: 1482, column: 57, scope: !5021)
!5023 = !DILocation(line: 1482, column: 9, scope: !5021)
!5024 = !DILocation(line: 1482, column: 7, scope: !5021)
!5025 = !DILocation(line: 1483, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5021, file: !48, line: 1483, column: 7)
!5027 = !DILocation(line: 1483, column: 11, scope: !5026)
!5028 = !DILocation(line: 1483, column: 7, scope: !5021)
!5029 = !DILocation(line: 1484, column: 4, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5026, file: !48, line: 1483, column: 18)
!5031 = !DILocation(line: 1486, column: 3, scope: !5021)
!5032 = !DILocation(line: 1486, column: 35, scope: !5033)
!5033 = !DILexicalBlockFile(scope: !5021, file: !48, discriminator: 1)
!5034 = !DILocation(line: 1486, column: 9, scope: !5033)
!5035 = !DILocation(line: 1486, column: 3, scope: !5033)
!5036 = !DILocation(line: 1487, column: 37, scope: !5021)
!5037 = !DILocation(line: 1487, column: 9, scope: !5021)
!5038 = !DILocation(line: 1486, column: 3, scope: !5039)
!5039 = !DILexicalBlockFile(scope: !5021, file: !48, discriminator: 2)
!5040 = !DILocation(line: 1492, column: 2, scope: !5021)
!5041 = !DILocation(line: 1493, column: 10, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5017, file: !48, line: 1492, column: 9)
!5043 = !DILocation(line: 1494, column: 40, scope: !5042)
!5044 = !DILocation(line: 1494, column: 46, scope: !5042)
!5045 = !DILocation(line: 1493, column: 3, scope: !5042)
!5046 = !DILocation(line: 1495, column: 3, scope: !5042)
!5047 = !DILocation(line: 1498, column: 9, scope: !4434)
!5048 = !DILocation(line: 1498, column: 2, scope: !4434)
!5049 = !DILocation(line: 1500, column: 9, scope: !4434)
!5050 = !DILocation(line: 1500, column: 2, scope: !4434)
!5051 = distinct !DISubprogram(name: "load_conffile", scope: !48, file: !48, line: 1597, type: !5052, isLocal: false, isDefinition: true, scopeLine: 1598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!14, !64, !51, !16}
!5054 = !DILocalVariable(name: "opts", arg: 1, scope: !5051, file: !48, line: 1597, type: !64)
!5055 = !DILocation(line: 1597, column: 23, scope: !5051)
!5056 = !DILocalVariable(name: "argv0", arg: 2, scope: !5051, file: !48, line: 1597, type: !51)
!5057 = !DILocation(line: 1597, column: 41, scope: !5051)
!5058 = !DILocalVariable(name: "natengine", arg: 3, scope: !5051, file: !48, line: 1597, type: !16)
!5059 = !DILocation(line: 1597, column: 55, scope: !5051)
!5060 = !DILocalVariable(name: "retval", scope: !5051, file: !48, line: 1599, type: !14)
!5061 = !DILocation(line: 1599, column: 6, scope: !5051)
!5062 = !DILocalVariable(name: "line_num", scope: !5051, file: !48, line: 1599, type: !14)
!5063 = !DILocation(line: 1599, column: 14, scope: !5051)
!5064 = !DILocalVariable(name: "line", scope: !5051, file: !48, line: 1600, type: !17)
!5065 = !DILocation(line: 1600, column: 8, scope: !5051)
!5066 = !DILocalVariable(name: "name", scope: !5051, file: !48, line: 1600, type: !17)
!5067 = !DILocation(line: 1600, column: 15, scope: !5051)
!5068 = !DILocalVariable(name: "value", scope: !5051, file: !48, line: 1600, type: !17)
!5069 = !DILocation(line: 1600, column: 22, scope: !5051)
!5070 = !DILocalVariable(name: "line_len", scope: !5051, file: !48, line: 1601, type: !215)
!5071 = !DILocation(line: 1601, column: 9, scope: !5051)
!5072 = !DILocalVariable(name: "f", scope: !5051, file: !48, line: 1602, type: !5073)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64, align: 64)
!5074 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !5075, line: 48, baseType: !5076)
!5075 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5077, line: 241, size: 1728, align: 64, elements: !5078)
!5077 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!5078 = !{!5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5099, !5100, !5101, !5102, !5104, !5105, !5107, !5111, !5114, !5116, !5117, !5118, !5119, !5120, !5121, !5122}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5076, file: !5077, line: 242, baseType: !14, size: 32, align: 32)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5076, file: !5077, line: 247, baseType: !17, size: 64, align: 64, offset: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5076, file: !5077, line: 248, baseType: !17, size: 64, align: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5076, file: !5077, line: 249, baseType: !17, size: 64, align: 64, offset: 192)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5076, file: !5077, line: 250, baseType: !17, size: 64, align: 64, offset: 256)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5076, file: !5077, line: 251, baseType: !17, size: 64, align: 64, offset: 320)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5076, file: !5077, line: 252, baseType: !17, size: 64, align: 64, offset: 384)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5076, file: !5077, line: 253, baseType: !17, size: 64, align: 64, offset: 448)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5076, file: !5077, line: 254, baseType: !17, size: 64, align: 64, offset: 512)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5076, file: !5077, line: 256, baseType: !17, size: 64, align: 64, offset: 576)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5076, file: !5077, line: 257, baseType: !17, size: 64, align: 64, offset: 640)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5076, file: !5077, line: 258, baseType: !17, size: 64, align: 64, offset: 704)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5076, file: !5077, line: 260, baseType: !5092, size: 64, align: 64, offset: 768)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64, align: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5077, line: 156, size: 192, align: 64, elements: !5094)
!5094 = !{!5095, !5096, !5098}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5093, file: !5077, line: 157, baseType: !5092, size: 64, align: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5093, file: !5077, line: 158, baseType: !5097, size: 64, align: 64, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64, align: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5093, file: !5077, line: 162, baseType: !14, size: 32, align: 32, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5076, file: !5077, line: 262, baseType: !5097, size: 64, align: 64, offset: 832)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5076, file: !5077, line: 264, baseType: !14, size: 32, align: 32, offset: 896)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5076, file: !5077, line: 268, baseType: !14, size: 32, align: 32, offset: 928)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5076, file: !5077, line: 270, baseType: !5103, size: 64, align: 64, offset: 960)
!5103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1189, line: 131, baseType: !154)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5076, file: !5077, line: 274, baseType: !39, size: 16, align: 16, offset: 1024)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5076, file: !5077, line: 275, baseType: !5106, size: 8, align: 8, offset: 1040)
!5106 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5076, file: !5077, line: 276, baseType: !5108, size: 8, align: 8, offset: 1048)
!5108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !5109)
!5109 = !{!5110}
!5110 = !DISubrange(count: 1)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5076, file: !5077, line: 280, baseType: !5112, size: 64, align: 64, offset: 1088)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64, align: 64)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !5077, line: 150, baseType: null)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5076, file: !5077, line: 289, baseType: !5115, size: 64, align: 64, offset: 1152)
!5115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1189, line: 132, baseType: !154)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5076, file: !5077, line: 297, baseType: !31, size: 64, align: 64, offset: 1216)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5076, file: !5077, line: 298, baseType: !31, size: 64, align: 64, offset: 1280)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5076, file: !5077, line: 299, baseType: !31, size: 64, align: 64, offset: 1344)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5076, file: !5077, line: 300, baseType: !31, size: 64, align: 64, offset: 1408)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5076, file: !5077, line: 302, baseType: !215, size: 64, align: 64, offset: 1472)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5076, file: !5077, line: 303, baseType: !14, size: 32, align: 32, offset: 1536)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5076, file: !5077, line: 305, baseType: !5123, size: 160, align: 8, offset: 1568)
!5123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, align: 8, elements: !1130)
!5124 = !DILocation(line: 1602, column: 8, scope: !5051)
!5125 = !DILocation(line: 1604, column: 12, scope: !5051)
!5126 = !DILocation(line: 1604, column: 18, scope: !5051)
!5127 = !DILocation(line: 1604, column: 6, scope: !5051)
!5128 = !DILocation(line: 1604, column: 4, scope: !5051)
!5129 = !DILocation(line: 1605, column: 7, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5051, file: !48, line: 1605, column: 6)
!5131 = !DILocation(line: 1605, column: 6, scope: !5051)
!5132 = !DILocation(line: 1606, column: 10, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !48, line: 1605, column: 10)
!5134 = !DILocation(line: 1606, column: 56, scope: !5133)
!5135 = !DILocation(line: 1606, column: 62, scope: !5133)
!5136 = !DILocation(line: 1606, column: 83, scope: !5133)
!5137 = !DILocation(line: 1606, column: 82, scope: !5133)
!5138 = !DILocation(line: 1606, column: 72, scope: !5139)
!5139 = !DILexicalBlockFile(scope: !5133, file: !48, discriminator: 1)
!5140 = !DILocation(line: 1606, column: 3, scope: !5141)
!5141 = !DILexicalBlockFile(scope: !5133, file: !48, discriminator: 2)
!5142 = !DILocation(line: 1607, column: 3, scope: !5133)
!5143 = !DILocation(line: 1610, column: 7, scope: !5051)
!5144 = !DILocation(line: 1611, column: 11, scope: !5051)
!5145 = !DILocation(line: 1612, column: 9, scope: !5051)
!5146 = !DILocation(line: 1613, column: 2, scope: !5051)
!5147 = !DILocation(line: 1613, column: 15, scope: !5148)
!5148 = !DILexicalBlockFile(scope: !5051, file: !48, discriminator: 1)
!5149 = !DILocation(line: 1613, column: 10, scope: !5148)
!5150 = !DILocation(line: 1613, column: 9, scope: !5148)
!5151 = !DILocation(line: 1613, column: 2, scope: !5148)
!5152 = !DILocation(line: 1614, column: 33, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1614, column: 7)
!5154 = distinct !DILexicalBlock(scope: !5051, file: !48, line: 1613, column: 19)
!5155 = !DILocation(line: 1614, column: 7, scope: !5153)
!5156 = !DILocation(line: 1614, column: 36, scope: !5153)
!5157 = !DILocation(line: 1614, column: 7, scope: !5154)
!5158 = !DILocation(line: 1615, column: 4, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5153, file: !48, line: 1614, column: 43)
!5160 = !DILocation(line: 1617, column: 7, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1617, column: 7)
!5162 = !DILocation(line: 1617, column: 12, scope: !5161)
!5163 = !DILocation(line: 1617, column: 7, scope: !5154)
!5164 = !DILocation(line: 1618, column: 11, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5161, file: !48, line: 1617, column: 20)
!5166 = !DILocation(line: 1618, column: 86, scope: !5165)
!5167 = !DILocation(line: 1618, column: 4, scope: !5165)
!5168 = !DILocation(line: 1619, column: 4, scope: !5165)
!5169 = !DILocation(line: 1621, column: 11, scope: !5154)
!5170 = !DILocation(line: 1624, column: 15, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1624, column: 3)
!5172 = !DILocation(line: 1624, column: 13, scope: !5171)
!5173 = !DILocation(line: 1624, column: 8, scope: !5171)
!5174 = !DILocation(line: 1624, column: 22, scope: !5175)
!5175 = !DILexicalBlockFile(scope: !5176, file: !48, discriminator: 1)
!5176 = distinct !DILexicalBlock(scope: !5171, file: !48, line: 1624, column: 3)
!5177 = !DILocation(line: 1624, column: 21, scope: !5175)
!5178 = !DILocation(line: 1624, column: 27, scope: !5175)
!5179 = !DILocation(line: 1624, column: 34, scope: !5175)
!5180 = !DILocation(line: 1624, column: 38, scope: !5181)
!5181 = !DILexicalBlockFile(scope: !5176, file: !48, discriminator: 2)
!5182 = !DILocation(line: 1624, column: 37, scope: !5181)
!5183 = !DILocation(line: 1624, column: 43, scope: !5181)
!5184 = !DILocation(line: 1624, column: 34, scope: !5181)
!5185 = !DILocation(line: 1624, column: 3, scope: !5186)
!5186 = !DILexicalBlockFile(scope: !5171, file: !48, discriminator: 3)
!5187 = !DILocation(line: 1624, column: 3, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !5171, file: !48, discriminator: 4)
!5189 = !DILocation(line: 1624, column: 56, scope: !5190)
!5190 = !DILexicalBlockFile(scope: !5176, file: !48, discriminator: 5)
!5191 = !DILocation(line: 1624, column: 3, scope: !5190)
!5192 = distinct !{!5192, !5193}
!5193 = !DILocation(line: 1624, column: 3, scope: !5154)
!5194 = !DILocation(line: 1627, column: 8, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1627, column: 7)
!5196 = !DILocation(line: 1627, column: 16, scope: !5195)
!5197 = !DILocation(line: 1627, column: 25, scope: !5195)
!5198 = !DILocation(line: 1627, column: 29, scope: !5199)
!5199 = !DILexicalBlockFile(scope: !5195, file: !48, discriminator: 1)
!5200 = !DILocation(line: 1627, column: 37, scope: !5199)
!5201 = !DILocation(line: 1627, column: 45, scope: !5199)
!5202 = !DILocation(line: 1627, column: 49, scope: !5203)
!5203 = !DILexicalBlockFile(scope: !5195, file: !48, discriminator: 2)
!5204 = !DILocation(line: 1627, column: 57, scope: !5203)
!5205 = !DILocation(line: 1627, column: 65, scope: !5203)
!5206 = !DILocation(line: 1628, column: 5, scope: !5195)
!5207 = !DILocation(line: 1628, column: 13, scope: !5195)
!5208 = !DILocation(line: 1628, column: 22, scope: !5195)
!5209 = !DILocation(line: 1628, column: 26, scope: !5199)
!5210 = !DILocation(line: 1628, column: 34, scope: !5199)
!5211 = !DILocation(line: 1627, column: 7, scope: !5212)
!5212 = !DILexicalBlockFile(scope: !5154, file: !48, discriminator: 3)
!5213 = !DILocation(line: 1629, column: 4, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5195, file: !48, line: 1628, column: 44)
!5215 = distinct !{!5215, !5146}
!5216 = !DILocation(line: 1632, column: 12, scope: !5154)
!5217 = !DILocation(line: 1632, column: 10, scope: !5154)
!5218 = !DILocation(line: 1633, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1633, column: 7)
!5220 = !DILocation(line: 1633, column: 14, scope: !5219)
!5221 = !DILocation(line: 1633, column: 7, scope: !5154)
!5222 = !DILocation(line: 1634, column: 24, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5219, file: !48, line: 1633, column: 20)
!5224 = !DILocation(line: 1634, column: 30, scope: !5223)
!5225 = !DILocation(line: 1634, column: 37, scope: !5223)
!5226 = !DILocation(line: 1634, column: 43, scope: !5223)
!5227 = !DILocation(line: 1634, column: 50, scope: !5223)
!5228 = !DILocation(line: 1634, column: 61, scope: !5223)
!5229 = !DILocation(line: 1634, column: 13, scope: !5223)
!5230 = !DILocation(line: 1634, column: 11, scope: !5223)
!5231 = !DILocation(line: 1635, column: 3, scope: !5223)
!5232 = !DILocation(line: 1637, column: 7, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5154, file: !48, line: 1637, column: 7)
!5234 = !DILocation(line: 1637, column: 14, scope: !5233)
!5235 = !DILocation(line: 1637, column: 7, scope: !5154)
!5236 = !DILocation(line: 1638, column: 4, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5233, file: !48, line: 1637, column: 21)
!5238 = !DILocation(line: 1613, column: 2, scope: !5239)
!5239 = !DILexicalBlockFile(scope: !5051, file: !48, discriminator: 2)
!5240 = !DILocation(line: 1613, column: 2, scope: !5241)
!5241 = !DILexicalBlockFile(scope: !5051, file: !48, discriminator: 3)
!5242 = !DILocation(line: 1643, column: 9, scope: !5051)
!5243 = !DILocation(line: 1643, column: 2, scope: !5051)
!5244 = !DILocation(line: 1644, column: 6, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5051, file: !48, line: 1644, column: 6)
!5246 = !DILocation(line: 1644, column: 6, scope: !5051)
!5247 = !DILocation(line: 1645, column: 8, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5245, file: !48, line: 1644, column: 12)
!5249 = !DILocation(line: 1645, column: 3, scope: !5248)
!5250 = !DILocation(line: 1646, column: 2, scope: !5248)
!5251 = !DILocation(line: 1647, column: 9, scope: !5051)
!5252 = !DILocation(line: 1647, column: 2, scope: !5051)
!5253 = !DILocation(line: 1648, column: 1, scope: !5051)
!5254 = distinct !DISubprogram(name: "check_value_yesno", scope: !48, file: !48, line: 1295, type: !5255, isLocal: true, isDefinition: true, scopeLine: 1296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!14, !51, !51, !14}
!5257 = !DILocalVariable(name: "value", arg: 1, scope: !5254, file: !48, line: 1295, type: !51)
!5258 = !DILocation(line: 1295, column: 31, scope: !5254)
!5259 = !DILocalVariable(name: "name", arg: 2, scope: !5254, file: !48, line: 1295, type: !51)
!5260 = !DILocation(line: 1295, column: 50, scope: !5254)
!5261 = !DILocalVariable(name: "line_num", arg: 3, scope: !5254, file: !48, line: 1295, type: !14)
!5262 = !DILocation(line: 1295, column: 60, scope: !5254)
!5263 = !DILocation(line: 1298, column: 15, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5254, file: !48, line: 1298, column: 6)
!5265 = !DILocation(line: 1298, column: 7, scope: !5264)
!5266 = !DILocation(line: 1298, column: 6, scope: !5254)
!5267 = !DILocation(line: 1299, column: 3, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5264, file: !48, line: 1298, column: 33)
!5269 = !DILocation(line: 1300, column: 22, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5264, file: !48, line: 1300, column: 13)
!5271 = !DILocation(line: 1300, column: 14, scope: !5270)
!5272 = !DILocation(line: 1300, column: 13, scope: !5264)
!5273 = !DILocation(line: 1301, column: 3, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5270, file: !48, line: 1300, column: 39)
!5275 = !DILocation(line: 1303, column: 9, scope: !5254)
!5276 = !DILocation(line: 1303, column: 84, scope: !5254)
!5277 = !DILocation(line: 1303, column: 90, scope: !5254)
!5278 = !DILocation(line: 1303, column: 97, scope: !5254)
!5279 = !DILocation(line: 1303, column: 2, scope: !5254)
!5280 = !DILocation(line: 1304, column: 2, scope: !5254)
!5281 = !DILocation(line: 1305, column: 1, scope: !5254)
!5282 = distinct !DISubprogram(name: "opts_set_verify_peer", scope: !48, file: !48, line: 1271, type: !1855, isLocal: true, isDefinition: true, scopeLine: 1272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5283 = !DILocalVariable(name: "opts", arg: 1, scope: !5282, file: !48, line: 1271, type: !64)
!5284 = !DILocation(line: 1271, column: 30, scope: !5282)
!5285 = !DILocation(line: 1273, column: 2, scope: !5282)
!5286 = !DILocation(line: 1273, column: 8, scope: !5282)
!5287 = !DILocation(line: 1273, column: 20, scope: !5282)
!5288 = !DILocation(line: 1274, column: 1, scope: !5282)
!5289 = distinct !DISubprogram(name: "opts_unset_verify_peer", scope: !48, file: !48, line: 1277, type: !1855, isLocal: true, isDefinition: true, scopeLine: 1278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5290 = !DILocalVariable(name: "opts", arg: 1, scope: !5289, file: !48, line: 1277, type: !64)
!5291 = !DILocation(line: 1277, column: 32, scope: !5289)
!5292 = !DILocation(line: 1279, column: 2, scope: !5289)
!5293 = !DILocation(line: 1279, column: 8, scope: !5289)
!5294 = !DILocation(line: 1279, column: 20, scope: !5289)
!5295 = !DILocation(line: 1280, column: 1, scope: !5289)
!5296 = distinct !DISubprogram(name: "opts_set_allow_wrong_host", scope: !48, file: !48, line: 1283, type: !1855, isLocal: true, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5297 = !DILocalVariable(name: "opts", arg: 1, scope: !5296, file: !48, line: 1283, type: !64)
!5298 = !DILocation(line: 1283, column: 35, scope: !5296)
!5299 = !DILocation(line: 1285, column: 2, scope: !5296)
!5300 = !DILocation(line: 1285, column: 8, scope: !5296)
!5301 = !DILocation(line: 1285, column: 25, scope: !5296)
!5302 = !DILocation(line: 1286, column: 1, scope: !5296)
!5303 = distinct !DISubprogram(name: "opts_unset_allow_wrong_host", scope: !48, file: !48, line: 1289, type: !1855, isLocal: true, isDefinition: true, scopeLine: 1290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5304 = !DILocalVariable(name: "opts", arg: 1, scope: !5303, file: !48, line: 1289, type: !64)
!5305 = !DILocation(line: 1289, column: 37, scope: !5303)
!5306 = !DILocation(line: 1291, column: 2, scope: !5303)
!5307 = !DILocation(line: 1291, column: 8, scope: !5303)
!5308 = !DILocation(line: 1291, column: 25, scope: !5303)
!5309 = !DILocation(line: 1292, column: 1, scope: !5303)
