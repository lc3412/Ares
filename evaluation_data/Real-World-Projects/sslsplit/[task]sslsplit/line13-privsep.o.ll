; ModuleID = './line13-privsep.o.i'
source_filename = "./line13-privsep.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.proxyspec = type { i8, %struct.sockaddr_storage, i32, %struct.sockaddr_storage, i32, i16, i8*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (i32)*, %struct.proxyspec* }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
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
%union.__WAIT_STATUS = type { %union.wait* }
%union.wait = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%struct.fd_set = type { [16 x i64] }

@privsep_fastpath = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Privsep fastpath enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Privsep fastpath disabled\0A\00", align 1
@received_sigquit = internal global i32 0, align 4
@received_sighup = internal global i32 0, align 4
@received_sigint = internal global i32 0, align 4
@received_sigchld = internal global i32 0, align 4
@received_sigusr1 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to create self-pipe: %s (%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Created self-pipe [r=%i,w=%i]\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to create chld-pipe: %s (%i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Created chld-pipe [r=%i,w=%i]\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to create socket pair %zu: %s (%i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Created socketpair %zu [p=%i,c=%i]\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Privsep parent pid %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Failed to fork: %s (%i)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Privsep child pid %i\0A\00", align 1
@selfpipe_wrfd = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"Failed to install SIGHUP handler: %s (%i)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Failed to install SIGINT handler: %s (%i)\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Failed to install SIGTERM handler: %s (%i)\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Failed to install SIGQUIT handler: %s (%i)\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Failed to install SIGUSR1 handler: %s (%i)\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to install SIGCHLD handler: %s (%i)\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Privsep server failed: %s (%i)\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Child proc %lld exited with status %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Child proc %lld killed by signal %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Child proc %lld neither exited nor killed\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Could not duplicate filname: %s (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Could not get dirname: %s (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Could not create directory '%s': %s (%i)\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Failed to open '%s': %s (%i)\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Failed to seek on '%s': %s (%i)\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Error from socket(): %s (%i)\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Error making socket nonblocking: %s (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"Error from setsockopt(SO_KEEPALIVE): %s (%i)\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Error from setsockopt(SO_REUSABLE): %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Error from spec->natsocket()\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Error from bind(): %s\0A\00", align 1
@received_sigterm = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Failed to write from signal handler: %s (%i)\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"select() failed: %s (%i)\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"read(sigpipe) failed: %s (%i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"kill(%i,SIGQUIT) failed: %s (%i)\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"kill(%i,SIGTERM) failed: %s (%i)\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"kill(%i,SIGHUP) failed: %s (%i)\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"kill(%i,SIGUSR1) failed: %s (%i)\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"kill(%i,SIGINT) failed: %s (%i)\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Failed to handle privsep req on srvsock %i\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"Failed to receive msg: %s (%i)\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Received privsep req type %02x sz %zd on srvsock %i\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Sending message failed: %s (%i)\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"/../\00", align 1

; Function Attrs: nounwind uwtable
define i32 @privsep_client_openfile(i32, i8*, i32) #0 !dbg !138 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !144, metadata !145), !dbg !146
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !147, metadata !145), !dbg !148
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !149, metadata !145), !dbg !150
  call void @llvm.dbg.declare(metadata [5 x i8]* %8, metadata !151, metadata !145), !dbg !155
  %13 = load i8*, i8** %6, align 8, !dbg !156
  %14 = call i64 @strlen(i8* %13) #8, !dbg !157
  %15 = add i64 1, %14, !dbg !158
  %16 = call i8* @llvm.stacksave(), !dbg !159
  store i8* %16, i8** %9, align 8, !dbg !161
  %17 = alloca i8, i64 %15, align 16, !dbg !161
  call void @llvm.dbg.declare(metadata i8* %17, metadata !162, metadata !166), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %10, metadata !168, metadata !145), !dbg !169
  store i32 -1, i32* %10, align 4, !dbg !169
  call void @llvm.dbg.declare(metadata i64* %11, metadata !170, metadata !145), !dbg !171
  %18 = load i32, i32* @privsep_fastpath, align 4, !dbg !172
  %19 = icmp ne i32 %18, 0, !dbg !172
  br i1 %19, label %20, label %24, !dbg !174

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %6, align 8, !dbg !175
  %22 = load i32, i32* %7, align 4, !dbg !176
  %23 = call i32 @privsep_server_openfile(i8* %21, i32 %22), !dbg !177
  store i32 %23, i32* %4, align 4, !dbg !178
  store i32 1, i32* %12, align 4
  br label %70, !dbg !178

; <label>:24:                                     ; preds = %3
  %25 = load i32, i32* %7, align 4, !dbg !179
  %26 = icmp ne i32 %25, 0, !dbg !179
  %27 = select i1 %26, i32 2, i32 1, !dbg !179
  %28 = trunc i32 %27 to i8, !dbg !179
  %29 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !180
  store i8 %28, i8* %29, align 16, !dbg !181
  %30 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !182
  %31 = load i8*, i8** %6, align 8, !dbg !183
  %32 = sub i64 %15, 1, !dbg !184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %32, i32 1, i1 false), !dbg !185
  %33 = load i32, i32* %5, align 4, !dbg !186
  %34 = call i64 @sys_sendmsgfd(i32 %33, i8* %17, i64 %15, i32 -1), !dbg !188
  %35 = icmp eq i64 %34, -1, !dbg !189
  br i1 %35, label %36, label %37, !dbg !190

; <label>:36:                                     ; preds = %24
  store i32 -1, i32* %4, align 4, !dbg !191
  store i32 1, i32* %12, align 4
  br label %70, !dbg !191

; <label>:37:                                     ; preds = %24
  %38 = load i32, i32* %5, align 4, !dbg !193
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i32 0, i32 0, !dbg !195
  %40 = call i64 @sys_recvmsgfd(i32 %38, i8* %39, i64 5, i32* %10), !dbg !196
  store i64 %40, i64* %11, align 8, !dbg !197
  %41 = icmp eq i64 %40, -1, !dbg !198
  br i1 %41, label %42, label %43, !dbg !199

; <label>:42:                                     ; preds = %37
  store i32 -1, i32* %4, align 4, !dbg !200
  store i32 1, i32* %12, align 4
  br label %70, !dbg !200

; <label>:43:                                     ; preds = %37
  %44 = load i64, i64* %11, align 8, !dbg !202
  %45 = icmp slt i64 %44, 1, !dbg !204
  br i1 %45, label %46, label %48, !dbg !205

; <label>:46:                                     ; preds = %43
  %47 = call i32* @__errno_location() #1, !dbg !206
  store i32 22, i32* %47, align 4, !dbg !208
  store i32 -1, i32* %4, align 4, !dbg !209
  store i32 1, i32* %12, align 4
  br label %70, !dbg !209

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !210
  %50 = load i8, i8* %49, align 1, !dbg !210
  %51 = sext i8 %50 to i32, !dbg !210
  switch i32 %51, label %66 [
    i32 0, label %52
    i32 3, label %53
    i32 4, label %55
    i32 1, label %65
    i32 2, label %65
  ], !dbg !211

; <label>:52:                                     ; preds = %48
  br label %68, !dbg !212

; <label>:53:                                     ; preds = %48
  %54 = call i32* @__errno_location() #1, !dbg !214
  store i32 13, i32* %54, align 4, !dbg !215
  store i32 -1, i32* %4, align 4, !dbg !216
  store i32 1, i32* %12, align 4
  br label %70, !dbg !216

; <label>:55:                                     ; preds = %48
  %56 = load i64, i64* %11, align 8, !dbg !217
  %57 = icmp slt i64 %56, 5, !dbg !219
  br i1 %57, label %58, label %60, !dbg !220

; <label>:58:                                     ; preds = %55
  %59 = call i32* @__errno_location() #1, !dbg !221
  store i32 22, i32* %59, align 4, !dbg !223
  store i32 -1, i32* %4, align 4, !dbg !224
  store i32 1, i32* %12, align 4
  br label %70, !dbg !224

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !225
  %62 = bitcast i8* %61 to i32*, !dbg !226
  %63 = load i32, i32* %62, align 1, !dbg !226
  %64 = call i32* @__errno_location() #1, !dbg !227
  store i32 %63, i32* %64, align 4, !dbg !228
  store i32 -1, i32* %4, align 4, !dbg !229
  store i32 1, i32* %12, align 4
  br label %70, !dbg !229

; <label>:65:                                     ; preds = %48, %48
  br label %66, !dbg !230

; <label>:66:                                     ; preds = %48, %65
  %67 = call i32* @__errno_location() #1, !dbg !232
  store i32 22, i32* %67, align 4, !dbg !233
  store i32 -1, i32* %4, align 4, !dbg !234
  store i32 1, i32* %12, align 4
  br label %70, !dbg !234

; <label>:68:                                     ; preds = %52
  %69 = load i32, i32* %10, align 4, !dbg !235
  store i32 %69, i32* %4, align 4, !dbg !236
  store i32 1, i32* %12, align 4
  br label %70, !dbg !236

; <label>:70:                                     ; preds = %68, %66, %60, %58, %53, %46, %42, %36, %20
  %71 = load i8*, i8** %9, align 8, !dbg !237
  call void @llvm.stackrestore(i8* %71), !dbg !237
  %72 = load i32, i32* %4, align 4, !dbg !237
  ret i32 %72, !dbg !237
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_openfile(i8*, i32) #0 !dbg !238 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !241, metadata !145), !dbg !242
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !243, metadata !145), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %6, metadata !245, metadata !145), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %7, metadata !247, metadata !145), !dbg !248
  %10 = load i32, i32* %5, align 4, !dbg !249
  %11 = icmp ne i32 %10, 0, !dbg !249
  br i1 %11, label %12, label %64, !dbg !251

; <label>:12:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %8, metadata !252, metadata !145), !dbg !254
  call void @llvm.dbg.declare(metadata i8** %9, metadata !255, metadata !145), !dbg !256
  %13 = load i8*, i8** %4, align 8, !dbg !257
  %14 = call noalias i8* @strdup(i8* %13) #3, !dbg !258
  store i8* %14, i8** %9, align 8, !dbg !259
  %15 = load i8*, i8** %9, align 8, !dbg !260
  %16 = icmp ne i8* %15, null, !dbg !260
  br i1 %16, label %28, label %17, !dbg !262

; <label>:17:                                     ; preds = %12
  %18 = call i32* @__errno_location() #1, !dbg !263
  %19 = load i32, i32* %18, align 4, !dbg !265
  store i32 %19, i32* %7, align 4, !dbg !266
  %20 = call i32* @__errno_location() #1, !dbg !267
  %21 = load i32, i32* %20, align 4, !dbg !268
  %22 = call i8* @strerror(i32 %21) #3, !dbg !269
  %23 = call i32* @__errno_location() #1, !dbg !271
  %24 = load i32, i32* %23, align 4, !dbg !273
  %25 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0), i8* %22, i32 %24), !dbg !274
  %26 = load i32, i32* %7, align 4, !dbg !275
  %27 = call i32* @__errno_location() #1, !dbg !276
  store i32 %26, i32* %27, align 4, !dbg !277
  store i32 -1, i32* %3, align 4, !dbg !278
  br label %99, !dbg !278

; <label>:28:                                     ; preds = %12
  %29 = load i8*, i8** %9, align 8, !dbg !279
  %30 = call i8* @dirname(i8* %29) #3, !dbg !280
  store i8* %30, i8** %8, align 8, !dbg !281
  %31 = load i8*, i8** %8, align 8, !dbg !282
  %32 = icmp ne i8* %31, null, !dbg !282
  br i1 %32, label %45, label %33, !dbg !284

; <label>:33:                                     ; preds = %28
  %34 = call i32* @__errno_location() #1, !dbg !285
  %35 = load i32, i32* %34, align 4, !dbg !287
  store i32 %35, i32* %7, align 4, !dbg !288
  %36 = call i32* @__errno_location() #1, !dbg !289
  %37 = load i32, i32* %36, align 4, !dbg !290
  %38 = call i8* @strerror(i32 %37) #3, !dbg !291
  %39 = call i32* @__errno_location() #1, !dbg !293
  %40 = load i32, i32* %39, align 4, !dbg !295
  %41 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* %38, i32 %40), !dbg !296
  %42 = load i8*, i8** %9, align 8, !dbg !297
  call void @free(i8* %42) #3, !dbg !298
  %43 = load i32, i32* %7, align 4, !dbg !299
  %44 = call i32* @__errno_location() #1, !dbg !300
  store i32 %43, i32* %44, align 4, !dbg !301
  store i32 -1, i32* %3, align 4, !dbg !302
  br label %99, !dbg !302

; <label>:45:                                     ; preds = %28
  %46 = load i8*, i8** %8, align 8, !dbg !303
  %47 = call i32 @sys_mkpath(i8* %46, i32 511), !dbg !305
  %48 = icmp eq i32 %47, -1, !dbg !306
  br i1 %48, label %49, label %62, !dbg !307

; <label>:49:                                     ; preds = %45
  %50 = call i32* @__errno_location() #1, !dbg !308
  %51 = load i32, i32* %50, align 4, !dbg !310
  store i32 %51, i32* %7, align 4, !dbg !311
  %52 = load i8*, i8** %8, align 8, !dbg !312
  %53 = call i32* @__errno_location() #1, !dbg !313
  %54 = load i32, i32* %53, align 4, !dbg !314
  %55 = call i8* @strerror(i32 %54) #3, !dbg !315
  %56 = call i32* @__errno_location() #1, !dbg !317
  %57 = load i32, i32* %56, align 4, !dbg !319
  %58 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i32 0, i32 0), i8* %52, i8* %55, i32 %57), !dbg !320
  %59 = load i8*, i8** %9, align 8, !dbg !321
  call void @free(i8* %59) #3, !dbg !322
  %60 = load i32, i32* %7, align 4, !dbg !323
  %61 = call i32* @__errno_location() #1, !dbg !324
  store i32 %60, i32* %61, align 4, !dbg !325
  store i32 -1, i32* %3, align 4, !dbg !326
  br label %99, !dbg !326

; <label>:62:                                     ; preds = %45
  %63 = load i8*, i8** %9, align 8, !dbg !327
  call void @free(i8* %63) #3, !dbg !328
  br label %64, !dbg !329

; <label>:64:                                     ; preds = %62, %2
  %65 = load i8*, i8** %4, align 8, !dbg !330
  %66 = call i32 (i8*, i32, ...) @open(i8* %65, i32 66, i32 438), !dbg !331
  store i32 %66, i32* %6, align 4, !dbg !332
  %67 = load i32, i32* %6, align 4, !dbg !333
  %68 = icmp eq i32 %67, -1, !dbg !335
  br i1 %68, label %69, label %81, !dbg !336

; <label>:69:                                     ; preds = %64
  %70 = call i32* @__errno_location() #1, !dbg !337
  %71 = load i32, i32* %70, align 4, !dbg !339
  store i32 %71, i32* %7, align 4, !dbg !340
  %72 = load i8*, i8** %4, align 8, !dbg !341
  %73 = call i32* @__errno_location() #1, !dbg !342
  %74 = load i32, i32* %73, align 4, !dbg !343
  %75 = call i8* @strerror(i32 %74) #3, !dbg !344
  %76 = call i32* @__errno_location() #1, !dbg !346
  %77 = load i32, i32* %76, align 4, !dbg !348
  %78 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* %72, i8* %75, i32 %77), !dbg !349
  %79 = load i32, i32* %7, align 4, !dbg !350
  %80 = call i32* @__errno_location() #1, !dbg !351
  store i32 %79, i32* %80, align 4, !dbg !352
  store i32 -1, i32* %3, align 4, !dbg !353
  br label %99, !dbg !353

; <label>:81:                                     ; preds = %64
  %82 = load i32, i32* %6, align 4, !dbg !354
  %83 = call i64 @lseek(i32 %82, i64 0, i32 2) #3, !dbg !356
  %84 = icmp eq i64 %83, -1, !dbg !357
  br i1 %84, label %85, label %97, !dbg !358

; <label>:85:                                     ; preds = %81
  %86 = call i32* @__errno_location() #1, !dbg !359
  %87 = load i32, i32* %86, align 4, !dbg !361
  store i32 %87, i32* %7, align 4, !dbg !362
  %88 = load i8*, i8** %4, align 8, !dbg !363
  %89 = call i32* @__errno_location() #1, !dbg !364
  %90 = load i32, i32* %89, align 4, !dbg !365
  %91 = call i8* @strerror(i32 %90) #3, !dbg !366
  %92 = call i32* @__errno_location() #1, !dbg !368
  %93 = load i32, i32* %92, align 4, !dbg !370
  %94 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i8* %88, i8* %91, i32 %93), !dbg !371
  %95 = load i32, i32* %7, align 4, !dbg !372
  %96 = call i32* @__errno_location() #1, !dbg !373
  store i32 %95, i32* %96, align 4, !dbg !374
  store i32 -1, i32* %3, align 4, !dbg !375
  br label %99, !dbg !375

; <label>:97:                                     ; preds = %81
  %98 = load i32, i32* %6, align 4, !dbg !376
  store i32 %98, i32* %3, align 4, !dbg !377
  br label %99, !dbg !377

; <label>:99:                                     ; preds = %97, %85, %69, %49, %33, %17
  %100 = load i32, i32* %3, align 4, !dbg !378
  ret i32 %100, !dbg !378
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @sys_sendmsgfd(i32, i8*, i64, i32) #5

declare i64 @sys_recvmsgfd(i32, i8*, i64, i32*) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @privsep_client_opensock(i32, %struct.proxyspec*) #0 !dbg !379 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proxyspec*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca [9 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !382, metadata !145), !dbg !383
  store %struct.proxyspec* %1, %struct.proxyspec** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %5, metadata !384, metadata !145), !dbg !385
  call void @llvm.dbg.declare(metadata [5 x i8]* %6, metadata !386, metadata !145), !dbg !387
  call void @llvm.dbg.declare(metadata [9 x i8]* %7, metadata !388, metadata !145), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %8, metadata !393, metadata !145), !dbg !394
  store i32 -1, i32* %8, align 4, !dbg !394
  call void @llvm.dbg.declare(metadata i64* %9, metadata !395, metadata !145), !dbg !396
  %10 = load i32, i32* @privsep_fastpath, align 4, !dbg !397
  %11 = icmp ne i32 %10, 0, !dbg !397
  br i1 %11, label %12, label %15, !dbg !399

; <label>:12:                                     ; preds = %2
  %13 = load %struct.proxyspec*, %struct.proxyspec** %5, align 8, !dbg !400
  %14 = call i32 @privsep_server_opensock(%struct.proxyspec* %13), !dbg !401
  store i32 %14, i32* %3, align 4, !dbg !402
  br label %58, !dbg !402

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !403
  store i8 3, i8* %16, align 1, !dbg !404
  %17 = load %struct.proxyspec*, %struct.proxyspec** %5, align 8, !dbg !405
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1, !dbg !406
  %19 = bitcast i8* %18 to %struct.proxyspec**, !dbg !407
  store %struct.proxyspec* %17, %struct.proxyspec** %19, align 1, !dbg !408
  %20 = load i32, i32* %4, align 4, !dbg !409
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i32 0, i32 0, !dbg !411
  %22 = call i64 @sys_sendmsgfd(i32 %20, i8* %21, i64 9, i32 -1), !dbg !412
  %23 = icmp eq i64 %22, -1, !dbg !413
  br i1 %23, label %24, label %25, !dbg !414

; <label>:24:                                     ; preds = %15
  store i32 -1, i32* %3, align 4, !dbg !415
  br label %58, !dbg !415

; <label>:25:                                     ; preds = %15
  %26 = load i32, i32* %4, align 4, !dbg !417
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 0, !dbg !419
  %28 = call i64 @sys_recvmsgfd(i32 %26, i8* %27, i64 5, i32* %8), !dbg !420
  store i64 %28, i64* %9, align 8, !dbg !421
  %29 = icmp eq i64 %28, -1, !dbg !422
  br i1 %29, label %30, label %31, !dbg !423

; <label>:30:                                     ; preds = %25
  store i32 -1, i32* %3, align 4, !dbg !424
  br label %58, !dbg !424

; <label>:31:                                     ; preds = %25
  %32 = load i64, i64* %9, align 8, !dbg !426
  %33 = icmp slt i64 %32, 1, !dbg !428
  br i1 %33, label %34, label %36, !dbg !429

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno_location() #1, !dbg !430
  store i32 22, i32* %35, align 4, !dbg !432
  store i32 -1, i32* %3, align 4, !dbg !433
  br label %58, !dbg !433

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0, !dbg !434
  %38 = load i8, i8* %37, align 1, !dbg !434
  %39 = sext i8 %38 to i32, !dbg !434
  switch i32 %39, label %54 [
    i32 0, label %40
    i32 3, label %41
    i32 4, label %43
    i32 1, label %53
    i32 2, label %53
  ], !dbg !435

; <label>:40:                                     ; preds = %36
  br label %56, !dbg !436

; <label>:41:                                     ; preds = %36
  %42 = call i32* @__errno_location() #1, !dbg !438
  store i32 13, i32* %42, align 4, !dbg !439
  store i32 -1, i32* %3, align 4, !dbg !440
  br label %58, !dbg !440

; <label>:43:                                     ; preds = %36
  %44 = load i64, i64* %9, align 8, !dbg !441
  %45 = icmp slt i64 %44, 5, !dbg !443
  br i1 %45, label %46, label %48, !dbg !444

; <label>:46:                                     ; preds = %43
  %47 = call i32* @__errno_location() #1, !dbg !445
  store i32 22, i32* %47, align 4, !dbg !447
  store i32 -1, i32* %3, align 4, !dbg !448
  br label %58, !dbg !448

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 1, !dbg !449
  %50 = bitcast i8* %49 to i32*, !dbg !450
  %51 = load i32, i32* %50, align 1, !dbg !450
  %52 = call i32* @__errno_location() #1, !dbg !451
  store i32 %51, i32* %52, align 4, !dbg !452
  store i32 -1, i32* %3, align 4, !dbg !453
  br label %58, !dbg !453

; <label>:53:                                     ; preds = %36, %36
  br label %54, !dbg !454

; <label>:54:                                     ; preds = %36, %53
  %55 = call i32* @__errno_location() #1, !dbg !456
  store i32 22, i32* %55, align 4, !dbg !457
  store i32 -1, i32* %3, align 4, !dbg !458
  br label %58, !dbg !458

; <label>:56:                                     ; preds = %40
  %57 = load i32, i32* %8, align 4, !dbg !459
  store i32 %57, i32* %3, align 4, !dbg !460
  br label %58, !dbg !460

; <label>:58:                                     ; preds = %56, %54, %48, %46, %41, %34, %30, %24, %12
  %59 = load i32, i32* %3, align 4, !dbg !461
  ret i32 %59, !dbg !461
}

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_opensock(%struct.proxyspec*) #0 !dbg !462 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proxyspec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct.proxyspec* %0, %struct.proxyspec** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %3, metadata !465, metadata !145), !dbg !466
  call void @llvm.dbg.declare(metadata i32* %4, metadata !467, metadata !145), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %5, metadata !469, metadata !145), !dbg !470
  store i32 1, i32* %5, align 4, !dbg !470
  call void @llvm.dbg.declare(metadata i32* %6, metadata !471, metadata !145), !dbg !472
  %8 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !473
  %9 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %8, i32 0, i32 1, !dbg !474
  %10 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0, !dbg !475
  %11 = load i16, i16* %10, align 8, !dbg !475
  %12 = zext i16 %11 to i32, !dbg !473
  %13 = call i32 @socket(i32 %12, i32 1, i32 6) #3, !dbg !476
  store i32 %13, i32* %4, align 4, !dbg !477
  %14 = load i32, i32* %4, align 4, !dbg !478
  %15 = icmp eq i32 %14, -1, !dbg !480
  br i1 %15, label %16, label %25, !dbg !481

; <label>:16:                                     ; preds = %1
  %17 = call i32* @__errno_location() #1, !dbg !482
  %18 = load i32, i32* %17, align 4, !dbg !484
  %19 = call i8* @strerror(i32 %18) #3, !dbg !485
  %20 = call i32* @__errno_location() #1, !dbg !487
  %21 = load i32, i32* %20, align 4, !dbg !489
  %22 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %19, i32 %21), !dbg !490
  %23 = load i32, i32* %4, align 4, !dbg !491
  %24 = call i32 @evutil_closesocket(i32 %23), !dbg !492
  store i32 -1, i32* %2, align 4, !dbg !493
  br label %105, !dbg !493

; <label>:25:                                     ; preds = %1
  %26 = load i32, i32* %4, align 4, !dbg !494
  %27 = call i32 @evutil_make_socket_nonblocking(i32 %26), !dbg !495
  store i32 %27, i32* %6, align 4, !dbg !496
  %28 = load i32, i32* %6, align 4, !dbg !497
  %29 = icmp eq i32 %28, -1, !dbg !499
  br i1 %29, label %30, label %39, !dbg !500

; <label>:30:                                     ; preds = %25
  %31 = call i32* @__errno_location() #1, !dbg !501
  %32 = load i32, i32* %31, align 4, !dbg !503
  %33 = call i8* @strerror(i32 %32) #3, !dbg !504
  %34 = call i32* @__errno_location() #1, !dbg !506
  %35 = load i32, i32* %34, align 4, !dbg !508
  %36 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i8* %33, i32 %35), !dbg !509
  %37 = load i32, i32* %4, align 4, !dbg !510
  %38 = call i32 @evutil_closesocket(i32 %37), !dbg !511
  store i32 -1, i32* %2, align 4, !dbg !512
  br label %105, !dbg !512

; <label>:39:                                     ; preds = %25
  %40 = load i32, i32* %4, align 4, !dbg !513
  %41 = bitcast i32* %5 to i8*, !dbg !514
  %42 = call i32 @setsockopt(i32 %40, i32 1, i32 9, i8* %41, i32 4) #3, !dbg !515
  store i32 %42, i32* %6, align 4, !dbg !516
  %43 = load i32, i32* %6, align 4, !dbg !517
  %44 = icmp eq i32 %43, -1, !dbg !519
  br i1 %44, label %45, label %54, !dbg !520

; <label>:45:                                     ; preds = %39
  %46 = call i32* @__errno_location() #1, !dbg !521
  %47 = load i32, i32* %46, align 4, !dbg !523
  %48 = call i8* @strerror(i32 %47) #3, !dbg !524
  %49 = call i32* @__errno_location() #1, !dbg !526
  %50 = load i32, i32* %49, align 4, !dbg !528
  %51 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), i8* %48, i32 %50), !dbg !529
  %52 = load i32, i32* %4, align 4, !dbg !530
  %53 = call i32 @evutil_closesocket(i32 %52), !dbg !531
  store i32 -1, i32* %2, align 4, !dbg !532
  br label %105, !dbg !532

; <label>:54:                                     ; preds = %39
  %55 = load i32, i32* %4, align 4, !dbg !533
  %56 = call i32 @evutil_make_listen_socket_reuseable(i32 %55), !dbg !534
  store i32 %56, i32* %6, align 4, !dbg !535
  %57 = load i32, i32* %6, align 4, !dbg !536
  %58 = icmp eq i32 %57, -1, !dbg !538
  br i1 %58, label %59, label %66, !dbg !539

; <label>:59:                                     ; preds = %54
  %60 = call i32* @__errno_location() #1, !dbg !540
  %61 = load i32, i32* %60, align 4, !dbg !542
  %62 = call i8* @strerror(i32 %61) #3, !dbg !543
  %63 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %62), !dbg !545
  %64 = load i32, i32* %4, align 4, !dbg !546
  %65 = call i32 @evutil_closesocket(i32 %64), !dbg !547
  store i32 -1, i32* %2, align 4, !dbg !548
  br label %105, !dbg !548

; <label>:66:                                     ; preds = %54
  %67 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !549
  %68 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %67, i32 0, i32 8, !dbg !551
  %69 = load i32 (i32)*, i32 (i32)** %68, align 8, !dbg !551
  %70 = icmp ne i32 (i32)* %69, null, !dbg !549
  br i1 %70, label %71, label %82, !dbg !552

; <label>:71:                                     ; preds = %66
  %72 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !553
  %73 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %72, i32 0, i32 8, !dbg !555
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8, !dbg !555
  %75 = load i32, i32* %4, align 4, !dbg !556
  %76 = call i32 %74(i32 %75), !dbg !553
  %77 = icmp eq i32 %76, -1, !dbg !557
  br i1 %77, label %78, label %82, !dbg !558

; <label>:78:                                     ; preds = %71
  %79 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0)), !dbg !559
  %80 = load i32, i32* %4, align 4, !dbg !561
  %81 = call i32 @evutil_closesocket(i32 %80), !dbg !562
  store i32 -1, i32* %2, align 4, !dbg !563
  br label %105, !dbg !563

; <label>:82:                                     ; preds = %71, %66
  %83 = load i32, i32* %4, align 4, !dbg !564
  %84 = bitcast %union.__CONST_SOCKADDR_ARG* %7 to %struct.sockaddr**, !dbg !565
  %85 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !566
  %86 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %85, i32 0, i32 1, !dbg !567
  %87 = bitcast %struct.sockaddr_storage* %86 to %struct.sockaddr*, !dbg !565
  store %struct.sockaddr* %87, %struct.sockaddr** %84, align 8, !dbg !565
  %88 = load %struct.proxyspec*, %struct.proxyspec** %3, align 8, !dbg !568
  %89 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %88, i32 0, i32 2, !dbg !569
  %90 = load i32, i32* %89, align 8, !dbg !569
  %91 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %7, i32 0, i32 0, !dbg !570
  %92 = load %struct.sockaddr*, %struct.sockaddr** %91, align 8, !dbg !570
  %93 = call i32 @bind(i32 %83, %struct.sockaddr* %92, i32 %90) #3, !dbg !570
  store i32 %93, i32* %6, align 4, !dbg !571
  %94 = load i32, i32* %6, align 4, !dbg !572
  %95 = icmp eq i32 %94, -1, !dbg !574
  br i1 %95, label %96, label %103, !dbg !575

; <label>:96:                                     ; preds = %82
  %97 = call i32* @__errno_location() #1, !dbg !576
  %98 = load i32, i32* %97, align 4, !dbg !578
  %99 = call i8* @strerror(i32 %98) #3, !dbg !579
  %100 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i8* %99), !dbg !581
  %101 = load i32, i32* %4, align 4, !dbg !583
  %102 = call i32 @evutil_closesocket(i32 %101), !dbg !584
  store i32 -1, i32* %2, align 4, !dbg !585
  br label %105, !dbg !585

; <label>:103:                                    ; preds = %82
  %104 = load i32, i32* %4, align 4, !dbg !586
  store i32 %104, i32* %2, align 4, !dbg !587
  br label %105, !dbg !587

; <label>:105:                                    ; preds = %103, %96, %78, %59, %45, %30, %16
  %106 = load i32, i32* %2, align 4, !dbg !588
  ret i32 %106, !dbg !588
}

; Function Attrs: nounwind uwtable
define i32 @privsep_client_certfile(i32, i8*) #0 !dbg !589 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !592, metadata !145), !dbg !593
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !594, metadata !145), !dbg !595
  call void @llvm.dbg.declare(metadata [5 x i8]* %6, metadata !596, metadata !145), !dbg !597
  %11 = load i8*, i8** %5, align 8, !dbg !598
  %12 = call i64 @strlen(i8* %11) #8, !dbg !599
  %13 = add i64 1, %12, !dbg !600
  %14 = call i8* @llvm.stacksave(), !dbg !601
  store i8* %14, i8** %7, align 8, !dbg !603
  %15 = alloca i8, i64 %13, align 16, !dbg !603
  call void @llvm.dbg.declare(metadata i8* %15, metadata !604, metadata !166), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %8, metadata !606, metadata !145), !dbg !607
  store i32 -1, i32* %8, align 4, !dbg !607
  call void @llvm.dbg.declare(metadata i64* %9, metadata !608, metadata !145), !dbg !609
  %16 = load i32, i32* @privsep_fastpath, align 4, !dbg !610
  %17 = icmp ne i32 %16, 0, !dbg !610
  br i1 %17, label %18, label %21, !dbg !612

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %5, align 8, !dbg !613
  %20 = call i32 @privsep_server_certfile(i8* %19), !dbg !614
  store i32 %20, i32* %3, align 4, !dbg !615
  store i32 1, i32* %10, align 4
  br label %63, !dbg !615

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !616
  store i8 4, i8* %22, align 16, !dbg !617
  %23 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !618
  %24 = load i8*, i8** %5, align 8, !dbg !619
  %25 = sub i64 %13, 1, !dbg !620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %25, i32 1, i1 false), !dbg !621
  %26 = load i32, i32* %4, align 4, !dbg !622
  %27 = call i64 @sys_sendmsgfd(i32 %26, i8* %15, i64 %13, i32 -1), !dbg !624
  %28 = icmp eq i64 %27, -1, !dbg !625
  br i1 %28, label %29, label %30, !dbg !626

; <label>:29:                                     ; preds = %21
  store i32 -1, i32* %3, align 4, !dbg !627
  store i32 1, i32* %10, align 4
  br label %63, !dbg !627

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %4, align 4, !dbg !629
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i32 0, i32 0, !dbg !631
  %33 = call i64 @sys_recvmsgfd(i32 %31, i8* %32, i64 5, i32* %8), !dbg !632
  store i64 %33, i64* %9, align 8, !dbg !633
  %34 = icmp eq i64 %33, -1, !dbg !634
  br i1 %34, label %35, label %36, !dbg !635

; <label>:35:                                     ; preds = %30
  store i32 -1, i32* %3, align 4, !dbg !636
  store i32 1, i32* %10, align 4
  br label %63, !dbg !636

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %9, align 8, !dbg !638
  %38 = icmp slt i64 %37, 1, !dbg !640
  br i1 %38, label %39, label %41, !dbg !641

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno_location() #1, !dbg !642
  store i32 22, i32* %40, align 4, !dbg !644
  store i32 -1, i32* %3, align 4, !dbg !645
  store i32 1, i32* %10, align 4
  br label %63, !dbg !645

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0, !dbg !646
  %43 = load i8, i8* %42, align 1, !dbg !646
  %44 = sext i8 %43 to i32, !dbg !646
  switch i32 %44, label %59 [
    i32 0, label %45
    i32 3, label %46
    i32 4, label %48
    i32 1, label %58
    i32 2, label %58
  ], !dbg !647

; <label>:45:                                     ; preds = %41
  br label %61, !dbg !648

; <label>:46:                                     ; preds = %41
  %47 = call i32* @__errno_location() #1, !dbg !650
  store i32 13, i32* %47, align 4, !dbg !651
  store i32 -1, i32* %3, align 4, !dbg !652
  store i32 1, i32* %10, align 4
  br label %63, !dbg !652

; <label>:48:                                     ; preds = %41
  %49 = load i64, i64* %9, align 8, !dbg !653
  %50 = icmp slt i64 %49, 5, !dbg !655
  br i1 %50, label %51, label %53, !dbg !656

; <label>:51:                                     ; preds = %48
  %52 = call i32* @__errno_location() #1, !dbg !657
  store i32 22, i32* %52, align 4, !dbg !659
  store i32 -1, i32* %3, align 4, !dbg !660
  store i32 1, i32* %10, align 4
  br label %63, !dbg !660

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 1, !dbg !661
  %55 = bitcast i8* %54 to i32*, !dbg !662
  %56 = load i32, i32* %55, align 1, !dbg !662
  %57 = call i32* @__errno_location() #1, !dbg !663
  store i32 %56, i32* %57, align 4, !dbg !664
  store i32 -1, i32* %3, align 4, !dbg !665
  store i32 1, i32* %10, align 4
  br label %63, !dbg !665

; <label>:58:                                     ; preds = %41, %41
  br label %59, !dbg !666

; <label>:59:                                     ; preds = %41, %58
  %60 = call i32* @__errno_location() #1, !dbg !668
  store i32 22, i32* %60, align 4, !dbg !669
  store i32 -1, i32* %3, align 4, !dbg !670
  store i32 1, i32* %10, align 4
  br label %63, !dbg !670

; <label>:61:                                     ; preds = %45
  %62 = load i32, i32* %8, align 4, !dbg !671
  store i32 %62, i32* %3, align 4, !dbg !672
  store i32 1, i32* %10, align 4
  br label %63, !dbg !672

; <label>:63:                                     ; preds = %61, %59, %53, %51, %46, %39, %35, %29, %18
  %64 = load i8*, i8** %7, align 8, !dbg !673
  call void @llvm.stackrestore(i8* %64), !dbg !673
  %65 = load i32, i32* %3, align 4, !dbg !673
  ret i32 %65, !dbg !673
}

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_certfile(i8*) #0 !dbg !674 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !677, metadata !145), !dbg !678
  call void @llvm.dbg.declare(metadata i32* %4, metadata !679, metadata !145), !dbg !680
  %5 = load i8*, i8** %3, align 8, !dbg !681
  %6 = call i32 (i8*, i32, ...) @open(i8* %5, i32 193, i32 438), !dbg !682
  store i32 %6, i32* %4, align 4, !dbg !683
  %7 = load i32, i32* %4, align 4, !dbg !684
  %8 = icmp eq i32 %7, -1, !dbg !686
  br i1 %8, label %9, label %21, !dbg !687

; <label>:9:                                      ; preds = %1
  %10 = call i32* @__errno_location() #1, !dbg !688
  %11 = load i32, i32* %10, align 4, !dbg !690
  %12 = icmp ne i32 %11, 17, !dbg !691
  br i1 %12, label %13, label %21, !dbg !692

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %3, align 8, !dbg !693
  %15 = call i32* @__errno_location() #1, !dbg !695
  %16 = load i32, i32* %15, align 4, !dbg !696
  %17 = call i8* @strerror(i32 %16) #3, !dbg !697
  %18 = call i32* @__errno_location() #1, !dbg !699
  %19 = load i32, i32* %18, align 4, !dbg !701
  %20 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* %14, i8* %17, i32 %19), !dbg !702
  store i32 -1, i32* %2, align 4, !dbg !703
  br label %23, !dbg !703

; <label>:21:                                     ; preds = %9, %1
  %22 = load i32, i32* %4, align 4, !dbg !704
  store i32 %22, i32* %2, align 4, !dbg !705
  br label %23, !dbg !705

; <label>:23:                                     ; preds = %21, %13
  %24 = load i32, i32* %2, align 4, !dbg !706
  ret i32 %24, !dbg !706
}

; Function Attrs: nounwind uwtable
define i32 @privsep_client_close(i32) #0 !dbg !707 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !708, metadata !145), !dbg !709
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !710, metadata !145), !dbg !714
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !715
  store i8 0, i8* %5, align 1, !dbg !716
  %6 = load i32, i32* %3, align 4, !dbg !717
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !719
  %8 = call i64 @sys_sendmsgfd(i32 %6, i8* %7, i64 1, i32 -1), !dbg !720
  %9 = icmp eq i64 %8, -1, !dbg !721
  br i1 %9, label %10, label %13, !dbg !722

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !723
  %12 = call i32 @close(i32 %11), !dbg !725
  store i32 -1, i32* %2, align 4, !dbg !726
  br label %16, !dbg !726

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %3, align 4, !dbg !727
  %15 = call i32 @close(i32 %14), !dbg !728
  store i32 0, i32* %2, align 4, !dbg !729
  br label %16, !dbg !729

; <label>:16:                                     ; preds = %13, %10
  %17 = load i32, i32* %2, align 4, !dbg !730
  ret i32 %17, !dbg !730
}

declare i32 @close(i32) #5

; Function Attrs: nounwind uwtable
define i32 @privsep_fork(%struct.opts*, i32*, i64) #0 !dbg !731 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x i8], align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %union.__WAIT_STATUS, align 8
  %24 = alloca %union.anon.7, align 4
  %25 = alloca %union.anon.8, align 4
  %26 = alloca %union.anon.9, align 4
  %27 = alloca %union.anon.10, align 4
  %28 = alloca %union.anon.11, align 4
  %29 = alloca %union.anon.12, align 4
  store %struct.opts* %0, %struct.opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %5, metadata !2473, metadata !145), !dbg !2474
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2475, metadata !145), !dbg !2476
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2477, metadata !145), !dbg !2478
  call void @llvm.dbg.declare(metadata [2 x i32]* %8, metadata !2479, metadata !145), !dbg !2481
  call void @llvm.dbg.declare(metadata [2 x i32]* %9, metadata !2482, metadata !145), !dbg !2483
  %30 = load i64, i64* %7, align 8, !dbg !2484
  %31 = call i8* @llvm.stacksave(), !dbg !2485
  store i8* %31, i8** %10, align 8, !dbg !2485
  %32 = alloca [2 x i32], i64 %30, align 16, !dbg !2485
  call void @llvm.dbg.declare(metadata [2 x i32]* %32, metadata !2486, metadata !166), !dbg !2489
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2490, metadata !145), !dbg !2493
  %33 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !2494
  %34 = getelementptr inbounds %struct.opts, %struct.opts* %33, i32 0, i32 5, !dbg !2496
  %35 = load i8*, i8** %34, align 8, !dbg !2496
  %36 = icmp ne i8* %35, null, !dbg !2494
  br i1 %36, label %39, label %37, !dbg !2497

; <label>:37:                                     ; preds = %3
  %38 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)), !dbg !2498
  store i32 1, i32* @privsep_fastpath, align 4, !dbg !2500
  br label %41, !dbg !2501

; <label>:39:                                     ; preds = %3
  %40 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)), !dbg !2502
  store i32 0, i32* @privsep_fastpath, align 4, !dbg !2504
  br label %41

; <label>:41:                                     ; preds = %39, %37
  store volatile i32 0, i32* @received_sigquit, align 4, !dbg !2505
  store volatile i32 0, i32* @received_sighup, align 4, !dbg !2506
  store volatile i32 0, i32* @received_sigint, align 4, !dbg !2507
  store volatile i32 0, i32* @received_sigchld, align 4, !dbg !2508
  store volatile i32 0, i32* @received_sigusr1, align 4, !dbg !2509
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0, !dbg !2510
  %43 = call i32 @pipe(i32* %42) #3, !dbg !2512
  %44 = icmp eq i32 %43, -1, !dbg !2513
  br i1 %44, label %45, label %52, !dbg !2514

; <label>:45:                                     ; preds = %41
  %46 = call i32* @__errno_location() #1, !dbg !2515
  %47 = load i32, i32* %46, align 4, !dbg !2517
  %48 = call i8* @strerror(i32 %47) #3, !dbg !2518
  %49 = call i32* @__errno_location() #1, !dbg !2520
  %50 = load i32, i32* %49, align 4, !dbg !2522
  %51 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* %48, i32 %50), !dbg !2523
  store i32 -1, i32* %4, align 4, !dbg !2524
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2524

; <label>:52:                                     ; preds = %41
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2525
  %54 = load i32, i32* %53, align 4, !dbg !2525
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2526
  %56 = load i32, i32* %55, align 4, !dbg !2526
  %57 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %54, i32 %56), !dbg !2527
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i32 0, i32 0, !dbg !2528
  %59 = call i32 @pipe(i32* %58) #3, !dbg !2530
  %60 = icmp eq i32 %59, -1, !dbg !2531
  br i1 %60, label %61, label %68, !dbg !2532

; <label>:61:                                     ; preds = %52
  %62 = call i32* @__errno_location() #1, !dbg !2533
  %63 = load i32, i32* %62, align 4, !dbg !2535
  %64 = call i8* @strerror(i32 %63) #3, !dbg !2536
  %65 = call i32* @__errno_location() #1, !dbg !2538
  %66 = load i32, i32* %65, align 4, !dbg !2540
  %67 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* %64, i32 %66), !dbg !2541
  store i32 -1, i32* %4, align 4, !dbg !2542
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2542

; <label>:68:                                     ; preds = %52
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2543
  %70 = load i32, i32* %69, align 4, !dbg !2543
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2544
  %72 = load i32, i32* %71, align 4, !dbg !2544
  %73 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 %70, i32 %72), !dbg !2545
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2546, metadata !145), !dbg !2548
  store i64 0, i64* %13, align 8, !dbg !2548
  br label %74, !dbg !2549

; <label>:74:                                     ; preds = %103, %68
  %75 = load i64, i64* %13, align 8, !dbg !2550
  %76 = load i64, i64* %7, align 8, !dbg !2553
  %77 = icmp ult i64 %75, %76, !dbg !2554
  br i1 %77, label %78, label %106, !dbg !2555

; <label>:78:                                     ; preds = %74
  %79 = load i64, i64* %13, align 8, !dbg !2556
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %79, !dbg !2559
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i32 0, i32 0, !dbg !2559
  %82 = call i32 @socketpair(i32 1, i32 2, i32 0, i32* %81) #3, !dbg !2560
  %83 = icmp eq i32 %82, -1, !dbg !2561
  br i1 %83, label %84, label %92, !dbg !2562

; <label>:84:                                     ; preds = %78
  %85 = load i64, i64* %13, align 8, !dbg !2563
  %86 = call i32* @__errno_location() #1, !dbg !2565
  %87 = load i32, i32* %86, align 4, !dbg !2566
  %88 = call i8* @strerror(i32 %87) #3, !dbg !2567
  %89 = call i32* @__errno_location() #1, !dbg !2569
  %90 = load i32, i32* %89, align 4, !dbg !2571
  %91 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i64 %85, i8* %88, i32 %90), !dbg !2572
  store i32 -1, i32* %4, align 4, !dbg !2573
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2573

; <label>:92:                                     ; preds = %78
  %93 = load i64, i64* %13, align 8, !dbg !2574
  %94 = load i64, i64* %13, align 8, !dbg !2575
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %94, !dbg !2576
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i64 0, i64 0, !dbg !2576
  %97 = load i32, i32* %96, align 8, !dbg !2576
  %98 = load i64, i64* %13, align 8, !dbg !2577
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %98, !dbg !2578
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 0, i64 1, !dbg !2578
  %101 = load i32, i32* %100, align 4, !dbg !2578
  %102 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i64 %93, i32 %97, i32 %101), !dbg !2579
  br label %103, !dbg !2580

; <label>:103:                                    ; preds = %92
  %104 = load i64, i64* %13, align 8, !dbg !2581
  %105 = add i64 %104, 1, !dbg !2581
  store i64 %105, i64* %13, align 8, !dbg !2581
  br label %74, !dbg !2583, !llvm.loop !2584

; <label>:106:                                    ; preds = %74
  %107 = call i32 @getpid() #3, !dbg !2586
  %108 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 %107), !dbg !2587
  %109 = call i32 @fork() #3, !dbg !2589
  store i32 %109, i32* %11, align 4, !dbg !2590
  %110 = load i32, i32* %11, align 4, !dbg !2591
  %111 = icmp eq i32 %110, -1, !dbg !2593
  br i1 %111, label %112, label %150, !dbg !2594

; <label>:112:                                    ; preds = %106
  %113 = call i32* @__errno_location() #1, !dbg !2595
  %114 = load i32, i32* %113, align 4, !dbg !2597
  %115 = call i8* @strerror(i32 %114) #3, !dbg !2598
  %116 = call i32* @__errno_location() #1, !dbg !2600
  %117 = load i32, i32* %116, align 4, !dbg !2602
  %118 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %115, i32 %117), !dbg !2603
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2604
  %120 = load i32, i32* %119, align 4, !dbg !2604
  %121 = call i32 @close(i32 %120), !dbg !2605
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2606
  %123 = load i32, i32* %122, align 4, !dbg !2606
  %124 = call i32 @close(i32 %123), !dbg !2607
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2608
  %126 = load i32, i32* %125, align 4, !dbg !2608
  %127 = call i32 @close(i32 %126), !dbg !2609
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2610
  %129 = load i32, i32* %128, align 4, !dbg !2610
  %130 = call i32 @close(i32 %129), !dbg !2611
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2612, metadata !145), !dbg !2614
  store i64 0, i64* %14, align 8, !dbg !2614
  br label %131, !dbg !2615

; <label>:131:                                    ; preds = %146, %112
  %132 = load i64, i64* %14, align 8, !dbg !2616
  %133 = load i64, i64* %7, align 8, !dbg !2619
  %134 = icmp ult i64 %132, %133, !dbg !2620
  br i1 %134, label %135, label %149, !dbg !2621

; <label>:135:                                    ; preds = %131
  %136 = load i64, i64* %14, align 8, !dbg !2622
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %136, !dbg !2624
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %137, i64 0, i64 0, !dbg !2624
  %139 = load i32, i32* %138, align 8, !dbg !2624
  %140 = call i32 @close(i32 %139), !dbg !2625
  %141 = load i64, i64* %14, align 8, !dbg !2626
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %141, !dbg !2627
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %142, i64 0, i64 1, !dbg !2627
  %144 = load i32, i32* %143, align 4, !dbg !2627
  %145 = call i32 @close(i32 %144), !dbg !2628
  br label %146, !dbg !2629

; <label>:146:                                    ; preds = %135
  %147 = load i64, i64* %14, align 8, !dbg !2630
  %148 = add i64 %147, 1, !dbg !2630
  store i64 %148, i64* %14, align 8, !dbg !2630
  br label %131, !dbg !2632, !llvm.loop !2633

; <label>:149:                                    ; preds = %131
  store i32 -1, i32* %4, align 4, !dbg !2635
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2635

; <label>:150:                                    ; preds = %106
  %151 = load i32, i32* %11, align 4, !dbg !2636
  %152 = icmp eq i32 %151, 0, !dbg !2638
  br i1 %152, label %153, label %213, !dbg !2639

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2640
  %155 = load i32, i32* %154, align 4, !dbg !2640
  %156 = call i32 @close(i32 %155), !dbg !2642
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2643
  %158 = load i32, i32* %157, align 4, !dbg !2643
  %159 = call i32 @close(i32 %158), !dbg !2644
  call void @llvm.dbg.declare(metadata i64* %15, metadata !2645, metadata !145), !dbg !2647
  store i64 0, i64* %15, align 8, !dbg !2647
  br label %160, !dbg !2648

; <label>:160:                                    ; preds = %170, %153
  %161 = load i64, i64* %15, align 8, !dbg !2649
  %162 = load i64, i64* %7, align 8, !dbg !2652
  %163 = icmp ult i64 %161, %162, !dbg !2653
  br i1 %163, label %164, label %173, !dbg !2654

; <label>:164:                                    ; preds = %160
  %165 = load i64, i64* %15, align 8, !dbg !2655
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %165, !dbg !2656
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 0, !dbg !2656
  %168 = load i32, i32* %167, align 8, !dbg !2656
  %169 = call i32 @close(i32 %168), !dbg !2657
  br label %170, !dbg !2657

; <label>:170:                                    ; preds = %164
  %171 = load i64, i64* %15, align 8, !dbg !2658
  %172 = add i64 %171, 1, !dbg !2658
  store i64 %172, i64* %15, align 8, !dbg !2658
  br label %160, !dbg !2660, !llvm.loop !2661

; <label>:173:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata [1 x i8]* %16, metadata !2663, metadata !145), !dbg !2664
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2665, metadata !145), !dbg !2666
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2667
  %175 = load i32, i32* %174, align 4, !dbg !2667
  %176 = call i32 @close(i32 %175), !dbg !2668
  br label %177, !dbg !2669, !llvm.loop !2670

; <label>:177:                                    ; preds = %189, %173
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2671
  %179 = load i32, i32* %178, align 4, !dbg !2671
  %180 = getelementptr inbounds [1 x i8], [1 x i8]* %16, i32 0, i32 0, !dbg !2673
  %181 = call i64 @read(i32 %179, i8* %180, i64 1), !dbg !2674
  store i64 %181, i64* %17, align 8, !dbg !2675
  br label %182, !dbg !2676

; <label>:182:                                    ; preds = %177
  %183 = load i64, i64* %17, align 8, !dbg !2677
  %184 = icmp eq i64 %183, -1, !dbg !2679
  br i1 %184, label %185, label %189, !dbg !2680

; <label>:185:                                    ; preds = %182
  %186 = call i32* @__errno_location() #1, !dbg !2681
  %187 = load i32, i32* %186, align 4, !dbg !2683
  %188 = icmp eq i32 %187, 4, !dbg !2684
  br label %189

; <label>:189:                                    ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  br i1 %190, label %177, label %191, !dbg !2685, !llvm.loop !2670

; <label>:191:                                    ; preds = %189
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2687
  %193 = load i32, i32* %192, align 4, !dbg !2687
  %194 = call i32 @close(i32 %193), !dbg !2688
  %195 = call i32 @getpid() #3, !dbg !2689
  %196 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 %195), !dbg !2690
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2691, metadata !145), !dbg !2693
  store i64 0, i64* %18, align 8, !dbg !2693
  br label %197, !dbg !2694

; <label>:197:                                    ; preds = %209, %191
  %198 = load i64, i64* %18, align 8, !dbg !2695
  %199 = load i64, i64* %7, align 8, !dbg !2698
  %200 = icmp ult i64 %198, %199, !dbg !2699
  br i1 %200, label %201, label %212, !dbg !2700

; <label>:201:                                    ; preds = %197
  %202 = load i64, i64* %18, align 8, !dbg !2701
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %202, !dbg !2702
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %203, i64 0, i64 1, !dbg !2702
  %205 = load i32, i32* %204, align 4, !dbg !2702
  %206 = load i64, i64* %18, align 8, !dbg !2703
  %207 = load i32*, i32** %6, align 8, !dbg !2704
  %208 = getelementptr inbounds i32, i32* %207, i64 %206, !dbg !2704
  store i32 %205, i32* %208, align 4, !dbg !2705
  br label %209, !dbg !2704

; <label>:209:                                    ; preds = %201
  %210 = load i64, i64* %18, align 8, !dbg !2706
  %211 = add i64 %210, 1, !dbg !2706
  store i64 %211, i64* %18, align 8, !dbg !2706
  br label %197, !dbg !2708, !llvm.loop !2709

; <label>:212:                                    ; preds = %197
  store i32 0, i32* %4, align 4, !dbg !2711
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2711

; <label>:213:                                    ; preds = %150
  br label %214

; <label>:214:                                    ; preds = %213
  call void @llvm.dbg.declare(metadata i64* %19, metadata !2712, metadata !145), !dbg !2714
  store i64 0, i64* %19, align 8, !dbg !2714
  br label %215, !dbg !2715

; <label>:215:                                    ; preds = %225, %214
  %216 = load i64, i64* %19, align 8, !dbg !2716
  %217 = load i64, i64* %7, align 8, !dbg !2719
  %218 = icmp ult i64 %216, %217, !dbg !2720
  br i1 %218, label %219, label %228, !dbg !2721

; <label>:219:                                    ; preds = %215
  %220 = load i64, i64* %19, align 8, !dbg !2722
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %220, !dbg !2723
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %221, i64 0, i64 1, !dbg !2723
  %223 = load i32, i32* %222, align 4, !dbg !2723
  %224 = call i32 @close(i32 %223), !dbg !2724
  br label %225, !dbg !2724

; <label>:225:                                    ; preds = %219
  %226 = load i64, i64* %19, align 8, !dbg !2725
  %227 = add i64 %226, 1, !dbg !2725
  store i64 %227, i64* %19, align 8, !dbg !2725
  br label %215, !dbg !2727, !llvm.loop !2728

; <label>:228:                                    ; preds = %215
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2730
  %230 = load i32, i32* %229, align 4, !dbg !2730
  store volatile i32 %230, i32* @selfpipe_wrfd, align 4, !dbg !2731
  call void @nat_preinit_undo(), !dbg !2732
  call void @log_preinit_undo(), !dbg !2733
  %231 = call void (i32)* @signal(i32 1, void (i32)* @privsep_server_signal_handler) #3, !dbg !2734
  %232 = icmp eq void (i32)* %231, inttoptr (i64 -1 to void (i32)*), !dbg !2736
  br i1 %232, label %233, label %240, !dbg !2737

; <label>:233:                                    ; preds = %228
  %234 = call i32* @__errno_location() #1, !dbg !2738
  %235 = load i32, i32* %234, align 4, !dbg !2740
  %236 = call i8* @strerror(i32 %235) #3, !dbg !2741
  %237 = call i32* @__errno_location() #1, !dbg !2743
  %238 = load i32, i32* %237, align 4, !dbg !2745
  %239 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8* %236, i32 %238), !dbg !2746
  store i32 -1, i32* %4, align 4, !dbg !2747
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2747

; <label>:240:                                    ; preds = %228
  %241 = call void (i32)* @signal(i32 2, void (i32)* @privsep_server_signal_handler) #3, !dbg !2748
  %242 = icmp eq void (i32)* %241, inttoptr (i64 -1 to void (i32)*), !dbg !2750
  br i1 %242, label %243, label %250, !dbg !2751

; <label>:243:                                    ; preds = %240
  %244 = call i32* @__errno_location() #1, !dbg !2752
  %245 = load i32, i32* %244, align 4, !dbg !2754
  %246 = call i8* @strerror(i32 %245) #3, !dbg !2755
  %247 = call i32* @__errno_location() #1, !dbg !2757
  %248 = load i32, i32* %247, align 4, !dbg !2759
  %249 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i8* %246, i32 %248), !dbg !2760
  store i32 -1, i32* %4, align 4, !dbg !2761
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2761

; <label>:250:                                    ; preds = %240
  %251 = call void (i32)* @signal(i32 15, void (i32)* @privsep_server_signal_handler) #3, !dbg !2762
  %252 = icmp eq void (i32)* %251, inttoptr (i64 -1 to void (i32)*), !dbg !2764
  br i1 %252, label %253, label %260, !dbg !2765

; <label>:253:                                    ; preds = %250
  %254 = call i32* @__errno_location() #1, !dbg !2766
  %255 = load i32, i32* %254, align 4, !dbg !2768
  %256 = call i8* @strerror(i32 %255) #3, !dbg !2769
  %257 = call i32* @__errno_location() #1, !dbg !2771
  %258 = load i32, i32* %257, align 4, !dbg !2773
  %259 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0), i8* %256, i32 %258), !dbg !2774
  store i32 -1, i32* %4, align 4, !dbg !2775
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2775

; <label>:260:                                    ; preds = %250
  %261 = call void (i32)* @signal(i32 3, void (i32)* @privsep_server_signal_handler) #3, !dbg !2776
  %262 = icmp eq void (i32)* %261, inttoptr (i64 -1 to void (i32)*), !dbg !2778
  br i1 %262, label %263, label %270, !dbg !2779

; <label>:263:                                    ; preds = %260
  %264 = call i32* @__errno_location() #1, !dbg !2780
  %265 = load i32, i32* %264, align 4, !dbg !2782
  %266 = call i8* @strerror(i32 %265) #3, !dbg !2783
  %267 = call i32* @__errno_location() #1, !dbg !2785
  %268 = load i32, i32* %267, align 4, !dbg !2787
  %269 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0), i8* %266, i32 %268), !dbg !2788
  store i32 -1, i32* %4, align 4, !dbg !2789
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2789

; <label>:270:                                    ; preds = %260
  %271 = call void (i32)* @signal(i32 10, void (i32)* @privsep_server_signal_handler) #3, !dbg !2790
  %272 = icmp eq void (i32)* %271, inttoptr (i64 -1 to void (i32)*), !dbg !2792
  br i1 %272, label %273, label %280, !dbg !2793

; <label>:273:                                    ; preds = %270
  %274 = call i32* @__errno_location() #1, !dbg !2794
  %275 = load i32, i32* %274, align 4, !dbg !2796
  %276 = call i8* @strerror(i32 %275) #3, !dbg !2797
  %277 = call i32* @__errno_location() #1, !dbg !2799
  %278 = load i32, i32* %277, align 4, !dbg !2801
  %279 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* %276, i32 %278), !dbg !2802
  store i32 -1, i32* %4, align 4, !dbg !2803
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2803

; <label>:280:                                    ; preds = %270
  %281 = call void (i32)* @signal(i32 17, void (i32)* @privsep_server_signal_handler) #3, !dbg !2804
  %282 = icmp eq void (i32)* %281, inttoptr (i64 -1 to void (i32)*), !dbg !2806
  br i1 %282, label %283, label %290, !dbg !2807

; <label>:283:                                    ; preds = %280
  %284 = call i32* @__errno_location() #1, !dbg !2808
  %285 = load i32, i32* %284, align 4, !dbg !2810
  %286 = call i8* @strerror(i32 %285) #3, !dbg !2811
  %287 = call i32* @__errno_location() #1, !dbg !2813
  %288 = load i32, i32* %287, align 4, !dbg !2815
  %289 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8* %286, i32 %288), !dbg !2816
  store i32 -1, i32* %4, align 4, !dbg !2817
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2817

; <label>:290:                                    ; preds = %280
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0, !dbg !2818
  %292 = load i32, i32* %291, align 4, !dbg !2818
  %293 = call i32 @close(i32 %292), !dbg !2819
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1, !dbg !2820
  %295 = load i32, i32* %294, align 4, !dbg !2820
  %296 = call i32 @close(i32 %295), !dbg !2821
  %297 = load i64, i64* %7, align 8, !dbg !2822
  %298 = alloca i32, i64 %297, align 16, !dbg !2823
  call void @llvm.dbg.declare(metadata i32* %298, metadata !2824, metadata !166), !dbg !2826
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2827, metadata !145), !dbg !2829
  store i64 0, i64* %20, align 8, !dbg !2829
  br label %299, !dbg !2830

; <label>:299:                                    ; preds = %310, %290
  %300 = load i64, i64* %20, align 8, !dbg !2831
  %301 = load i64, i64* %7, align 8, !dbg !2834
  %302 = icmp ult i64 %300, %301, !dbg !2835
  br i1 %302, label %303, label %313, !dbg !2836

; <label>:303:                                    ; preds = %299
  %304 = load i64, i64* %20, align 8, !dbg !2837
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %304, !dbg !2838
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %305, i64 0, i64 0, !dbg !2838
  %307 = load i32, i32* %306, align 8, !dbg !2838
  %308 = load i64, i64* %20, align 8, !dbg !2839
  %309 = getelementptr inbounds i32, i32* %298, i64 %308, !dbg !2840
  store i32 %307, i32* %309, align 4, !dbg !2841
  br label %310, !dbg !2840

; <label>:310:                                    ; preds = %303
  %311 = load i64, i64* %20, align 8, !dbg !2842
  %312 = add i64 %311, 1, !dbg !2842
  store i64 %312, i64* %20, align 8, !dbg !2842
  br label %299, !dbg !2844, !llvm.loop !2845

; <label>:313:                                    ; preds = %299
  %314 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !2847
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2849
  %316 = load i32, i32* %315, align 4, !dbg !2849
  %317 = load i64, i64* %7, align 8, !dbg !2850
  %318 = load i32, i32* %11, align 4, !dbg !2851
  %319 = call i32 @privsep_server(%struct.opts* %314, i32 %316, i32* %298, i64 %317, i32 %318), !dbg !2852
  %320 = icmp eq i32 %319, -1, !dbg !2853
  br i1 %320, label %321, label %328, !dbg !2854

; <label>:321:                                    ; preds = %313
  %322 = call i32* @__errno_location() #1, !dbg !2855
  %323 = load i32, i32* %322, align 4, !dbg !2857
  %324 = call i8* @strerror(i32 %323) #3, !dbg !2858
  %325 = call i32* @__errno_location() #1, !dbg !2860
  %326 = load i32, i32* %325, align 4, !dbg !2862
  %327 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* %324, i32 %326), !dbg !2863
  br label %328, !dbg !2864

; <label>:328:                                    ; preds = %321, %313
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2865, metadata !145), !dbg !2867
  store i64 0, i64* %21, align 8, !dbg !2867
  br label %329, !dbg !2868

; <label>:329:                                    ; preds = %339, %328
  %330 = load i64, i64* %21, align 8, !dbg !2869
  %331 = load i64, i64* %7, align 8, !dbg !2872
  %332 = icmp ult i64 %330, %331, !dbg !2873
  br i1 %332, label %333, label %342, !dbg !2874

; <label>:333:                                    ; preds = %329
  %334 = load i64, i64* %21, align 8, !dbg !2875
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 %334, !dbg !2876
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %335, i64 0, i64 0, !dbg !2876
  %337 = load i32, i32* %336, align 8, !dbg !2876
  %338 = call i32 @close(i32 %337), !dbg !2877
  br label %339, !dbg !2877

; <label>:339:                                    ; preds = %333
  %340 = load i64, i64* %21, align 8, !dbg !2878
  %341 = add i64 %340, 1, !dbg !2878
  store i64 %341, i64* %21, align 8, !dbg !2878
  br label %329, !dbg !2880, !llvm.loop !2881

; <label>:342:                                    ; preds = %329
  store volatile i32 -1, i32* @selfpipe_wrfd, align 4, !dbg !2883
  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2884
  %344 = load i32, i32* %343, align 4, !dbg !2884
  %345 = call i32 @close(i32 %344), !dbg !2885
  %346 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2886
  %347 = load i32, i32* %346, align 4, !dbg !2886
  %348 = call i32 @close(i32 %347), !dbg !2887
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2888, metadata !145), !dbg !2889
  %349 = bitcast %union.__WAIT_STATUS* %23 to i32**, !dbg !2890
  store i32* %22, i32** %349, align 8, !dbg !2890
  %350 = getelementptr inbounds %union.__WAIT_STATUS, %union.__WAIT_STATUS* %23, i32 0, i32 0, !dbg !2891
  %351 = load %union.wait*, %union.wait** %350, align 8, !dbg !2891
  %352 = call i32 @wait(%union.wait* %351), !dbg !2891
  %353 = bitcast %union.anon.7* %24 to i32*, !dbg !2892
  %354 = load i32, i32* %22, align 4, !dbg !2894
  store i32 %354, i32* %353, align 4, !dbg !2892
  %355 = bitcast %union.anon.7* %24 to i32*, !dbg !2895
  %356 = load i32, i32* %355, align 4, !dbg !2895
  %357 = and i32 %356, 127, !dbg !2896
  %358 = icmp eq i32 %357, 0, !dbg !2892
  br i1 %358, label %359, label %388, !dbg !2897

; <label>:359:                                    ; preds = %342
  %360 = bitcast %union.anon.8* %25 to i32*, !dbg !2898
  %361 = load i32, i32* %22, align 4, !dbg !2901
  store i32 %361, i32* %360, align 4, !dbg !2898
  %362 = bitcast %union.anon.8* %25 to i32*, !dbg !2902
  %363 = load i32, i32* %362, align 4, !dbg !2902
  %364 = and i32 %363, 65280, !dbg !2903
  %365 = ashr i32 %364, 8, !dbg !2904
  %366 = icmp ne i32 %365, 0, !dbg !2898
  br i1 %366, label %367, label %377, !dbg !2905

; <label>:367:                                    ; preds = %359
  %368 = load i32, i32* %11, align 4, !dbg !2906
  %369 = sext i32 %368 to i64, !dbg !2908
  %370 = bitcast %union.anon.9* %26 to i32*, !dbg !2909
  %371 = load i32, i32* %22, align 4, !dbg !2910
  store i32 %371, i32* %370, align 4, !dbg !2909
  %372 = bitcast %union.anon.9* %26 to i32*, !dbg !2911
  %373 = load i32, i32* %372, align 4, !dbg !2911
  %374 = and i32 %373, 65280, !dbg !2912
  %375 = ashr i32 %374, 8, !dbg !2913
  %376 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i64 %369, i32 %375), !dbg !2914
  br label %387, !dbg !2915

; <label>:377:                                    ; preds = %359
  %378 = load i32, i32* %11, align 4, !dbg !2916
  %379 = sext i32 %378 to i64, !dbg !2918
  %380 = bitcast %union.anon.10* %27 to i32*, !dbg !2919
  %381 = load i32, i32* %22, align 4, !dbg !2920
  store i32 %381, i32* %380, align 4, !dbg !2919
  %382 = bitcast %union.anon.10* %27 to i32*, !dbg !2921
  %383 = load i32, i32* %382, align 4, !dbg !2921
  %384 = and i32 %383, 65280, !dbg !2922
  %385 = ashr i32 %384, 8, !dbg !2923
  %386 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0), i64 %379, i32 %385), !dbg !2924
  br label %387

; <label>:387:                                    ; preds = %377, %367
  br label %413, !dbg !2925

; <label>:388:                                    ; preds = %342
  %389 = bitcast %union.anon.11* %28 to i32*, !dbg !2926
  %390 = load i32, i32* %22, align 4, !dbg !2929
  store i32 %390, i32* %389, align 4, !dbg !2926
  %391 = bitcast %union.anon.11* %28 to i32*, !dbg !2930
  %392 = load i32, i32* %391, align 4, !dbg !2930
  %393 = and i32 %392, 127, !dbg !2931
  %394 = add nsw i32 %393, 1, !dbg !2926
  %395 = trunc i32 %394 to i8, !dbg !2932
  %396 = sext i8 %395 to i32, !dbg !2932
  %397 = ashr i32 %396, 1, !dbg !2933
  %398 = icmp sgt i32 %397, 0, !dbg !2934
  br i1 %398, label %399, label %408, !dbg !2929

; <label>:399:                                    ; preds = %388
  %400 = load i32, i32* %11, align 4, !dbg !2935
  %401 = sext i32 %400 to i64, !dbg !2937
  %402 = bitcast %union.anon.12* %29 to i32*, !dbg !2938
  %403 = load i32, i32* %22, align 4, !dbg !2939
  store i32 %403, i32* %402, align 4, !dbg !2938
  %404 = bitcast %union.anon.12* %29 to i32*, !dbg !2940
  %405 = load i32, i32* %404, align 4, !dbg !2940
  %406 = and i32 %405, 127, !dbg !2941
  %407 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i64 %401, i32 %406), !dbg !2942
  br label %412, !dbg !2943

; <label>:408:                                    ; preds = %388
  %409 = load i32, i32* %11, align 4, !dbg !2944
  %410 = sext i32 %409 to i64, !dbg !2946
  %411 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0), i64 %410), !dbg !2947
  br label %412

; <label>:412:                                    ; preds = %408, %399
  br label %413

; <label>:413:                                    ; preds = %412, %387
  store i32 1, i32* %4, align 4, !dbg !2948
  store i32 1, i32* %12, align 4
  br label %414, !dbg !2948

; <label>:414:                                    ; preds = %413, %283, %273, %263, %253, %243, %233, %212, %149, %84, %61, %45
  %415 = load i8*, i8** %10, align 8, !dbg !2949
  call void @llvm.stackrestore(i8* %415), !dbg !2949
  %416 = load i32, i32* %4, align 4, !dbg !2949
  ret i32 %416, !dbg !2949
}

declare i32 @log_dbg_printf(i8*, ...) #5

; Function Attrs: nounwind
declare i32 @pipe(i32*) #7

declare i32 @log_err_printf(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #7

; Function Attrs: nounwind
declare i32 @socketpair(i32, i32, i32, i32*) #7

; Function Attrs: nounwind
declare i32 @getpid() #7

; Function Attrs: nounwind
declare i32 @fork() #7

declare i64 @read(i32, i8*, i64) #5

declare void @nat_preinit_undo() #5

declare void @log_preinit_undo() #5

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #7

; Function Attrs: nounwind uwtable
define internal void @privsep_server_signal_handler(i32) #0 !dbg !2950 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2951, metadata !145), !dbg !2952
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2953, metadata !145), !dbg !2954
  %5 = call i32* @__errno_location() #1, !dbg !2955
  %6 = load i32, i32* %5, align 4, !dbg !2956
  store i32 %6, i32* %3, align 4, !dbg !2957
  %7 = load i32, i32* %2, align 4, !dbg !2958
  switch i32 %7, label %14 [
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 15, label %11
    i32 17, label %12
    i32 10, label %13
  ], !dbg !2959

; <label>:8:                                      ; preds = %1
  store volatile i32 1, i32* @received_sighup, align 4, !dbg !2960
  br label %14, !dbg !2962

; <label>:9:                                      ; preds = %1
  store volatile i32 1, i32* @received_sigint, align 4, !dbg !2963
  br label %14, !dbg !2964

; <label>:10:                                     ; preds = %1
  store volatile i32 1, i32* @received_sigquit, align 4, !dbg !2965
  br label %14, !dbg !2966

; <label>:11:                                     ; preds = %1
  store volatile i32 1, i32* @received_sigterm, align 4, !dbg !2967
  br label %14, !dbg !2968

; <label>:12:                                     ; preds = %1
  store volatile i32 1, i32* @received_sigchld, align 4, !dbg !2969
  br label %14, !dbg !2970

; <label>:13:                                     ; preds = %1
  store volatile i32 1, i32* @received_sigusr1, align 4, !dbg !2971
  br label %14, !dbg !2972

; <label>:14:                                     ; preds = %1, %13, %12, %11, %10, %9, %8
  %15 = load volatile i32, i32* @selfpipe_wrfd, align 4, !dbg !2973
  %16 = icmp ne i32 %15, -1, !dbg !2975
  br i1 %16, label %17, label %41, !dbg !2976

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2977, metadata !145), !dbg !2979
  br label %18, !dbg !2980, !llvm.loop !2981

; <label>:18:                                     ; preds = %28, %17
  %19 = load volatile i32, i32* @selfpipe_wrfd, align 4, !dbg !2982
  %20 = call i64 @write(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i64 1), !dbg !2984
  store i64 %20, i64* %4, align 8, !dbg !2985
  br label %21, !dbg !2986

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %4, align 8, !dbg !2987
  %23 = icmp eq i64 %22, -1, !dbg !2989
  br i1 %23, label %24, label %28, !dbg !2990

; <label>:24:                                     ; preds = %21
  %25 = call i32* @__errno_location() #1, !dbg !2991
  %26 = load i32, i32* %25, align 4, !dbg !2993
  %27 = icmp eq i32 %26, 4, !dbg !2994
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %18, label %30, !dbg !2995, !llvm.loop !2981

; <label>:30:                                     ; preds = %28
  %31 = load i64, i64* %4, align 8, !dbg !2997
  %32 = icmp eq i64 %31, -1, !dbg !2999
  br i1 %32, label %33, label %40, !dbg !3000

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno_location() #1, !dbg !3001
  %35 = load i32, i32* %34, align 4, !dbg !3003
  %36 = call i8* @strerror(i32 %35) #3, !dbg !3004
  %37 = call i32* @__errno_location() #1, !dbg !3006
  %38 = load i32, i32* %37, align 4, !dbg !3008
  %39 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0), i8* %36, i32 %38), !dbg !3009
  br label %40, !dbg !3010

; <label>:40:                                     ; preds = %33, %30
  br label %41, !dbg !3011

; <label>:41:                                     ; preds = %40, %14
  %42 = load i32, i32* %3, align 4, !dbg !3012
  %43 = call i32* @__errno_location() #1, !dbg !3013
  store i32 %42, i32* %43, align 4, !dbg !3014
  ret void, !dbg !3015
}

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server(%struct.opts*, i32, i32*, i64, i32) #0 !dbg !3016 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fd_set, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32
  %20 = alloca [16 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.opts* %0, %struct.opts** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %7, metadata !3019, metadata !145), !dbg !3020
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3021, metadata !145), !dbg !3022
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3023, metadata !145), !dbg !3024
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3025, metadata !145), !dbg !3026
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3027, metadata !145), !dbg !3028
  %23 = load i64, i64* %10, align 8, !dbg !3029
  %24 = call i8* @llvm.stacksave(), !dbg !3030
  store i8* %24, i8** %12, align 8, !dbg !3030
  %25 = alloca i32, i64 %23, align 16, !dbg !3030
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3031, metadata !166), !dbg !3032
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3033, metadata !145), !dbg !3034
  store i64 0, i64* %13, align 8, !dbg !3034
  store i64 0, i64* %13, align 8, !dbg !3035
  br label %26, !dbg !3037

; <label>:26:                                     ; preds = %33, %5
  %27 = load i64, i64* %13, align 8, !dbg !3038
  %28 = load i64, i64* %10, align 8, !dbg !3041
  %29 = icmp ult i64 %27, %28, !dbg !3042
  br i1 %29, label %30, label %36, !dbg !3043

; <label>:30:                                     ; preds = %26
  %31 = load i64, i64* %13, align 8, !dbg !3044
  %32 = getelementptr inbounds i32, i32* %25, i64 %31, !dbg !3046
  store i32 0, i32* %32, align 4, !dbg !3047
  br label %33, !dbg !3048

; <label>:33:                                     ; preds = %30
  %34 = load i64, i64* %13, align 8, !dbg !3049
  %35 = add i64 %34, 1, !dbg !3049
  store i64 %35, i64* %13, align 8, !dbg !3049
  br label %26, !dbg !3051, !llvm.loop !3052

; <label>:36:                                     ; preds = %26
  br label %37, !dbg !3054

; <label>:37:                                     ; preds = %301, %36
  call void @llvm.dbg.declare(metadata %struct.fd_set* %14, metadata !3055, metadata !145), !dbg !3064
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3065, metadata !145), !dbg !3066
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3067, metadata !145), !dbg !3068
  br label %38, !dbg !3069, !llvm.loop !3070

; <label>:38:                                     ; preds = %119, %37
  br label %39, !dbg !3071, !llvm.loop !3073

; <label>:39:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3074, metadata !145), !dbg !3076
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3077, metadata !145), !dbg !3078
  %40 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !3079
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %40, i64 0, i64 0, !dbg !3081
  %42 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %41) #3, !dbg !3082, !srcloc !3083
  %43 = extractvalue { i64, i64* } %42, 0, !dbg !3082
  %44 = extractvalue { i64, i64* } %42, 1, !dbg !3082
  %45 = trunc i64 %43 to i32, !dbg !3082
  store i32 %45, i32* %17, align 4, !dbg !3082
  %46 = ptrtoint i64* %44 to i64, !dbg !3082
  %47 = trunc i64 %46 to i32, !dbg !3082
  store i32 %47, i32* %18, align 4, !dbg !3082
  br label %48, !dbg !3084

; <label>:48:                                     ; preds = %39
  br label %49, !dbg !3085

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %8, align 4, !dbg !3087
  %51 = srem i32 %50, 64, !dbg !3088
  %52 = zext i32 %51 to i64, !dbg !3089
  %53 = shl i64 1, %52, !dbg !3089
  %54 = load i32, i32* %8, align 4, !dbg !3087
  %55 = sdiv i32 %54, 64, !dbg !3088
  %56 = sext i32 %55 to i64, !dbg !3090
  %57 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !3091
  %58 = getelementptr inbounds [16 x i64], [16 x i64]* %57, i64 0, i64 %56, !dbg !3090
  %59 = load i64, i64* %58, align 8, !dbg !3092
  %60 = or i64 %59, %53, !dbg !3092
  store i64 %60, i64* %58, align 8, !dbg !3092
  %61 = load i32, i32* %8, align 4, !dbg !3093
  store i32 %61, i32* %15, align 4, !dbg !3094
  store i64 0, i64* %13, align 8, !dbg !3095
  br label %62, !dbg !3097

; <label>:62:                                     ; preds = %105, %49
  %63 = load i64, i64* %13, align 8, !dbg !3098
  %64 = load i64, i64* %10, align 8, !dbg !3101
  %65 = icmp ult i64 %63, %64, !dbg !3102
  br i1 %65, label %66, label %108, !dbg !3103

; <label>:66:                                     ; preds = %62
  %67 = load i64, i64* %13, align 8, !dbg !3104
  %68 = getelementptr inbounds i32, i32* %25, i64 %67, !dbg !3107
  %69 = load i32, i32* %68, align 4, !dbg !3107
  %70 = icmp ne i32 %69, 0, !dbg !3107
  br i1 %70, label %104, label %71, !dbg !3108

; <label>:71:                                     ; preds = %66
  %72 = load i64, i64* %13, align 8, !dbg !3109
  %73 = load i32*, i32** %9, align 8, !dbg !3111
  %74 = getelementptr inbounds i32, i32* %73, i64 %72, !dbg !3111
  %75 = load i32, i32* %74, align 4, !dbg !3111
  %76 = srem i32 %75, 64, !dbg !3112
  %77 = zext i32 %76 to i64, !dbg !3113
  %78 = shl i64 1, %77, !dbg !3113
  %79 = load i64, i64* %13, align 8, !dbg !3109
  %80 = load i32*, i32** %9, align 8, !dbg !3111
  %81 = getelementptr inbounds i32, i32* %80, i64 %79, !dbg !3111
  %82 = load i32, i32* %81, align 4, !dbg !3111
  %83 = sdiv i32 %82, 64, !dbg !3112
  %84 = sext i32 %83 to i64, !dbg !3114
  %85 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !3115
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %85, i64 0, i64 %84, !dbg !3114
  %87 = load i64, i64* %86, align 8, !dbg !3116
  %88 = or i64 %87, %78, !dbg !3116
  store i64 %88, i64* %86, align 8, !dbg !3116
  %89 = load i32, i32* %15, align 4, !dbg !3117
  %90 = load i64, i64* %13, align 8, !dbg !3118
  %91 = load i32*, i32** %9, align 8, !dbg !3119
  %92 = getelementptr inbounds i32, i32* %91, i64 %90, !dbg !3119
  %93 = load i32, i32* %92, align 4, !dbg !3119
  %94 = icmp sgt i32 %89, %93, !dbg !3120
  br i1 %94, label %95, label %97, !dbg !3121

; <label>:95:                                     ; preds = %71
  %96 = load i32, i32* %15, align 4, !dbg !3122
  br label %102, !dbg !3124

; <label>:97:                                     ; preds = %71
  %98 = load i64, i64* %13, align 8, !dbg !3125
  %99 = load i32*, i32** %9, align 8, !dbg !3127
  %100 = getelementptr inbounds i32, i32* %99, i64 %98, !dbg !3127
  %101 = load i32, i32* %100, align 4, !dbg !3127
  br label %102, !dbg !3128

; <label>:102:                                    ; preds = %97, %95
  %103 = phi i32 [ %96, %95 ], [ %101, %97 ], !dbg !3129
  store i32 %103, i32* %15, align 4, !dbg !3131
  br label %104, !dbg !3132

; <label>:104:                                    ; preds = %102, %66
  br label %105, !dbg !3133

; <label>:105:                                    ; preds = %104
  %106 = load i64, i64* %13, align 8, !dbg !3134
  %107 = add i64 %106, 1, !dbg !3134
  store i64 %107, i64* %13, align 8, !dbg !3134
  br label %62, !dbg !3136, !llvm.loop !3137

; <label>:108:                                    ; preds = %62
  %109 = load i32, i32* %15, align 4, !dbg !3139
  %110 = add nsw i32 %109, 1, !dbg !3140
  %111 = call i32 @select(i32 %110, %struct.fd_set* %14, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* null), !dbg !3141
  store i32 %111, i32* %16, align 4, !dbg !3142
  br label %112, !dbg !3143

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %16, align 4, !dbg !3144
  %114 = icmp eq i32 %113, -1, !dbg !3146
  br i1 %114, label %115, label %119, !dbg !3147

; <label>:115:                                    ; preds = %112
  %116 = call i32* @__errno_location() #1, !dbg !3148
  %117 = load i32, i32* %116, align 4, !dbg !3150
  %118 = icmp eq i32 %117, 4, !dbg !3151
  br label %119

; <label>:119:                                    ; preds = %115, %112
  %120 = phi i1 [ false, %112 ], [ %118, %115 ]
  br i1 %120, label %38, label %121, !dbg !3152, !llvm.loop !3070

; <label>:121:                                    ; preds = %119
  %122 = load i32, i32* %16, align 4, !dbg !3154
  %123 = icmp eq i32 %122, -1, !dbg !3156
  br i1 %123, label %124, label %131, !dbg !3157

; <label>:124:                                    ; preds = %121
  %125 = call i32* @__errno_location() #1, !dbg !3158
  %126 = load i32, i32* %125, align 4, !dbg !3160
  %127 = call i8* @strerror(i32 %126) #3, !dbg !3161
  %128 = call i32* @__errno_location() #1, !dbg !3163
  %129 = load i32, i32* %128, align 4, !dbg !3165
  %130 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i8* %127, i32 %129), !dbg !3166
  store i32 -1, i32* %6, align 4, !dbg !3167
  store i32 1, i32* %19, align 4
  br label %303, !dbg !3167

; <label>:131:                                    ; preds = %121
  %132 = load i32, i32* %8, align 4, !dbg !3168
  %133 = sdiv i32 %132, 64, !dbg !3170
  %134 = sext i32 %133 to i64, !dbg !3170
  %135 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !3171
  %136 = getelementptr inbounds [16 x i64], [16 x i64]* %135, i64 0, i64 %134, !dbg !3170
  %137 = load i64, i64* %136, align 8, !dbg !3170
  %138 = load i32, i32* %8, align 4, !dbg !3168
  %139 = srem i32 %138, 64, !dbg !3170
  %140 = zext i32 %139 to i64, !dbg !3172
  %141 = shl i64 1, %140, !dbg !3172
  %142 = and i64 %137, %141, !dbg !3173
  %143 = icmp ne i64 %142, 0, !dbg !3174
  br i1 %143, label %144, label %251, !dbg !3175

; <label>:144:                                    ; preds = %131
  call void @llvm.dbg.declare(metadata [16 x i8]* %20, metadata !3176, metadata !145), !dbg !3179
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3180, metadata !145), !dbg !3181
  %145 = load i32, i32* %8, align 4, !dbg !3182
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i32 0, i32 0, !dbg !3183
  %147 = call i64 @read(i32 %145, i8* %146, i64 16), !dbg !3184
  store i64 %147, i64* %21, align 8, !dbg !3185
  %148 = load i64, i64* %21, align 8, !dbg !3186
  %149 = icmp eq i64 %148, -1, !dbg !3188
  br i1 %149, label %150, label %157, !dbg !3189

; <label>:150:                                    ; preds = %144
  %151 = call i32* @__errno_location() #1, !dbg !3190
  %152 = load i32, i32* %151, align 4, !dbg !3192
  %153 = call i8* @strerror(i32 %152) #3, !dbg !3193
  %154 = call i32* @__errno_location() #1, !dbg !3195
  %155 = load i32, i32* %154, align 4, !dbg !3197
  %156 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* %153, i32 %155), !dbg !3198
  store i32 -1, i32* %6, align 4, !dbg !3199
  store i32 1, i32* %19, align 4
  br label %303, !dbg !3199

; <label>:157:                                    ; preds = %144
  %158 = load volatile i32, i32* @received_sigquit, align 4, !dbg !3200
  %159 = icmp ne i32 %158, 0, !dbg !3200
  br i1 %159, label %160, label %173, !dbg !3202

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %11, align 4, !dbg !3203
  %162 = call i32 @kill(i32 %161, i32 3) #3, !dbg !3206
  %163 = icmp eq i32 %162, -1, !dbg !3207
  br i1 %163, label %164, label %172, !dbg !3208

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %11, align 4, !dbg !3209
  %166 = call i32* @__errno_location() #1, !dbg !3211
  %167 = load i32, i32* %166, align 4, !dbg !3212
  %168 = call i8* @strerror(i32 %167) #3, !dbg !3213
  %169 = call i32* @__errno_location() #1, !dbg !3215
  %170 = load i32, i32* %169, align 4, !dbg !3217
  %171 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i32 %165, i8* %168, i32 %170), !dbg !3218
  br label %172, !dbg !3219

; <label>:172:                                    ; preds = %164, %160
  store volatile i32 0, i32* @received_sigquit, align 4, !dbg !3220
  br label %173, !dbg !3221

; <label>:173:                                    ; preds = %172, %157
  %174 = load volatile i32, i32* @received_sigterm, align 4, !dbg !3222
  %175 = icmp ne i32 %174, 0, !dbg !3222
  br i1 %175, label %176, label %189, !dbg !3224

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %11, align 4, !dbg !3225
  %178 = call i32 @kill(i32 %177, i32 15) #3, !dbg !3228
  %179 = icmp eq i32 %178, -1, !dbg !3229
  br i1 %179, label %180, label %188, !dbg !3230

; <label>:180:                                    ; preds = %176
  %181 = load i32, i32* %11, align 4, !dbg !3231
  %182 = call i32* @__errno_location() #1, !dbg !3233
  %183 = load i32, i32* %182, align 4, !dbg !3234
  %184 = call i8* @strerror(i32 %183) #3, !dbg !3235
  %185 = call i32* @__errno_location() #1, !dbg !3237
  %186 = load i32, i32* %185, align 4, !dbg !3239
  %187 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 %181, i8* %184, i32 %186), !dbg !3240
  br label %188, !dbg !3241

; <label>:188:                                    ; preds = %180, %176
  store volatile i32 0, i32* @received_sigterm, align 4, !dbg !3242
  br label %189, !dbg !3243

; <label>:189:                                    ; preds = %188, %173
  %190 = load volatile i32, i32* @received_sighup, align 4, !dbg !3244
  %191 = icmp ne i32 %190, 0, !dbg !3244
  br i1 %191, label %192, label %205, !dbg !3246

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %11, align 4, !dbg !3247
  %194 = call i32 @kill(i32 %193, i32 1) #3, !dbg !3250
  %195 = icmp eq i32 %194, -1, !dbg !3251
  br i1 %195, label %196, label %204, !dbg !3252

; <label>:196:                                    ; preds = %192
  %197 = load i32, i32* %11, align 4, !dbg !3253
  %198 = call i32* @__errno_location() #1, !dbg !3255
  %199 = load i32, i32* %198, align 4, !dbg !3256
  %200 = call i8* @strerror(i32 %199) #3, !dbg !3257
  %201 = call i32* @__errno_location() #1, !dbg !3259
  %202 = load i32, i32* %201, align 4, !dbg !3261
  %203 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i32 %197, i8* %200, i32 %202), !dbg !3262
  br label %204, !dbg !3263

; <label>:204:                                    ; preds = %196, %192
  store volatile i32 0, i32* @received_sighup, align 4, !dbg !3264
  br label %205, !dbg !3265

; <label>:205:                                    ; preds = %204, %189
  %206 = load volatile i32, i32* @received_sigusr1, align 4, !dbg !3266
  %207 = icmp ne i32 %206, 0, !dbg !3266
  br i1 %207, label %208, label %221, !dbg !3268

; <label>:208:                                    ; preds = %205
  %209 = load i32, i32* %11, align 4, !dbg !3269
  %210 = call i32 @kill(i32 %209, i32 10) #3, !dbg !3272
  %211 = icmp eq i32 %210, -1, !dbg !3273
  br i1 %211, label %212, label %220, !dbg !3274

; <label>:212:                                    ; preds = %208
  %213 = load i32, i32* %11, align 4, !dbg !3275
  %214 = call i32* @__errno_location() #1, !dbg !3277
  %215 = load i32, i32* %214, align 4, !dbg !3278
  %216 = call i8* @strerror(i32 %215) #3, !dbg !3279
  %217 = call i32* @__errno_location() #1, !dbg !3281
  %218 = load i32, i32* %217, align 4, !dbg !3283
  %219 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), i32 %213, i8* %216, i32 %218), !dbg !3284
  br label %220, !dbg !3285

; <label>:220:                                    ; preds = %212, %208
  store volatile i32 0, i32* @received_sigusr1, align 4, !dbg !3286
  br label %221, !dbg !3287

; <label>:221:                                    ; preds = %220, %205
  %222 = load volatile i32, i32* @received_sigint, align 4, !dbg !3288
  %223 = icmp ne i32 %222, 0, !dbg !3288
  br i1 %223, label %224, label %246, !dbg !3290

; <label>:224:                                    ; preds = %221
  %225 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !3291
  %226 = bitcast %struct.opts* %225 to i16*, !dbg !3294
  %227 = load i16, i16* %226, align 8, !dbg !3294
  %228 = lshr i16 %227, 1, !dbg !3294
  %229 = and i16 %228, 1, !dbg !3294
  %230 = zext i16 %229 to i32, !dbg !3294
  %231 = icmp ne i32 %230, 0, !dbg !3291
  br i1 %231, label %232, label %245, !dbg !3295

; <label>:232:                                    ; preds = %224
  %233 = load i32, i32* %11, align 4, !dbg !3296
  %234 = call i32 @kill(i32 %233, i32 2) #3, !dbg !3299
  %235 = icmp eq i32 %234, -1, !dbg !3300
  br i1 %235, label %236, label %244, !dbg !3301

; <label>:236:                                    ; preds = %232
  %237 = load i32, i32* %11, align 4, !dbg !3302
  %238 = call i32* @__errno_location() #1, !dbg !3304
  %239 = load i32, i32* %238, align 4, !dbg !3305
  %240 = call i8* @strerror(i32 %239) #3, !dbg !3306
  %241 = call i32* @__errno_location() #1, !dbg !3308
  %242 = load i32, i32* %241, align 4, !dbg !3309
  %243 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), i32 %237, i8* %240, i32 %242), !dbg !3310
  br label %244, !dbg !3311

; <label>:244:                                    ; preds = %236, %232
  br label %245, !dbg !3312

; <label>:245:                                    ; preds = %244, %224
  store volatile i32 0, i32* @received_sigint, align 4, !dbg !3313
  br label %246, !dbg !3314

; <label>:246:                                    ; preds = %245, %221
  %247 = load volatile i32, i32* @received_sigchld, align 4, !dbg !3315
  %248 = icmp ne i32 %247, 0, !dbg !3315
  br i1 %248, label %249, label %250, !dbg !3317

; <label>:249:                                    ; preds = %246
  br label %302, !dbg !3318

; <label>:250:                                    ; preds = %246
  br label %251, !dbg !3320

; <label>:251:                                    ; preds = %250, %131
  store i64 0, i64* %13, align 8, !dbg !3321
  br label %252, !dbg !3323

; <label>:252:                                    ; preds = %298, %251
  %253 = load i64, i64* %13, align 8, !dbg !3324
  %254 = load i64, i64* %10, align 8, !dbg !3327
  %255 = icmp ult i64 %253, %254, !dbg !3328
  br i1 %255, label %256, label %301, !dbg !3329

; <label>:256:                                    ; preds = %252
  %257 = load i64, i64* %13, align 8, !dbg !3330
  %258 = load i32*, i32** %9, align 8, !dbg !3333
  %259 = getelementptr inbounds i32, i32* %258, i64 %257, !dbg !3333
  %260 = load i32, i32* %259, align 4, !dbg !3333
  %261 = sdiv i32 %260, 64, !dbg !3334
  %262 = sext i32 %261 to i64, !dbg !3334
  %263 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %14, i32 0, i32 0, !dbg !3335
  %264 = getelementptr inbounds [16 x i64], [16 x i64]* %263, i64 0, i64 %262, !dbg !3334
  %265 = load i64, i64* %264, align 8, !dbg !3334
  %266 = load i64, i64* %13, align 8, !dbg !3330
  %267 = load i32*, i32** %9, align 8, !dbg !3333
  %268 = getelementptr inbounds i32, i32* %267, i64 %266, !dbg !3333
  %269 = load i32, i32* %268, align 4, !dbg !3333
  %270 = srem i32 %269, 64, !dbg !3334
  %271 = zext i32 %270 to i64, !dbg !3336
  %272 = shl i64 1, %271, !dbg !3336
  %273 = and i64 %265, %272, !dbg !3337
  %274 = icmp ne i64 %273, 0, !dbg !3338
  br i1 %274, label %275, label %297, !dbg !3339

; <label>:275:                                    ; preds = %256
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3340, metadata !145), !dbg !3342
  %276 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !3343
  %277 = load i64, i64* %13, align 8, !dbg !3344
  %278 = load i32*, i32** %9, align 8, !dbg !3345
  %279 = getelementptr inbounds i32, i32* %278, i64 %277, !dbg !3345
  %280 = load i32, i32* %279, align 4, !dbg !3345
  %281 = call i32 @privsep_server_handle_req(%struct.opts* %276, i32 %280), !dbg !3346
  store i32 %281, i32* %22, align 4, !dbg !3342
  %282 = load i32, i32* %22, align 4, !dbg !3347
  %283 = icmp eq i32 %282, -1, !dbg !3349
  br i1 %283, label %284, label %290, !dbg !3350

; <label>:284:                                    ; preds = %275
  %285 = load i64, i64* %13, align 8, !dbg !3351
  %286 = load i32*, i32** %9, align 8, !dbg !3353
  %287 = getelementptr inbounds i32, i32* %286, i64 %285, !dbg !3353
  %288 = load i32, i32* %287, align 4, !dbg !3353
  %289 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i32 0, i32 0), i32 %288), !dbg !3354
  store i32 -1, i32* %6, align 4, !dbg !3355
  store i32 1, i32* %19, align 4
  br label %303, !dbg !3355

; <label>:290:                                    ; preds = %275
  %291 = load i32, i32* %22, align 4, !dbg !3356
  %292 = icmp eq i32 %291, 1, !dbg !3358
  br i1 %292, label %293, label %296, !dbg !3359

; <label>:293:                                    ; preds = %290
  %294 = load i64, i64* %13, align 8, !dbg !3360
  %295 = getelementptr inbounds i32, i32* %25, i64 %294, !dbg !3362
  store i32 1, i32* %295, align 4, !dbg !3363
  br label %296, !dbg !3364

; <label>:296:                                    ; preds = %293, %290
  br label %297, !dbg !3365

; <label>:297:                                    ; preds = %296, %256
  br label %298, !dbg !3366

; <label>:298:                                    ; preds = %297
  %299 = load i64, i64* %13, align 8, !dbg !3367
  %300 = add i64 %299, 1, !dbg !3367
  store i64 %300, i64* %13, align 8, !dbg !3367
  br label %252, !dbg !3369, !llvm.loop !3370

; <label>:301:                                    ; preds = %252
  br label %37, !dbg !3372, !llvm.loop !3374

; <label>:302:                                    ; preds = %249
  store i32 0, i32* %6, align 4, !dbg !3375
  store i32 1, i32* %19, align 4
  br label %303, !dbg !3375

; <label>:303:                                    ; preds = %302, %284, %150, %124
  %304 = load i8*, i8** %12, align 8, !dbg !3376
  call void @llvm.stackrestore(i8* %304), !dbg !3376
  %305 = load i32, i32* %6, align 4, !dbg !3376
  ret i32 %305, !dbg !3376
}

declare i32 @wait(%union.wait*) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #7

; Function Attrs: nounwind
declare i8* @dirname(i8*) #7

; Function Attrs: nounwind
declare void @free(i8*) #7

declare i32 @sys_mkpath(i8*, i32) #5

declare i32 @open(i8*, i32, ...) #5

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #7

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #7

declare i32 @evutil_closesocket(i32) #5

declare i32 @evutil_make_socket_nonblocking(i32) #5

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #7

declare i32 @evutil_make_listen_socket_reuseable(i32) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #7

declare i64 @write(i32, i8*, i64) #5

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #5

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #7

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_handle_req(%struct.opts*, i32) #0 !dbg !3377 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca [5 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.proxyspec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3380, metadata !145), !dbg !3381
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3382, metadata !145), !dbg !3383
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !3384, metadata !145), !dbg !3388
  call void @llvm.dbg.declare(metadata [5 x i8]* %7, metadata !3389, metadata !145), !dbg !3390
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3391, metadata !145), !dbg !3392
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3393, metadata !145), !dbg !3394
  store i32 0, i32* %9, align 4, !dbg !3394
  %16 = load i32, i32* %5, align 4, !dbg !3395
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !3397
  %18 = call i64 @sys_recvmsgfd(i32 %16, i8* %17, i64 512, i32* null), !dbg !3398
  store i64 %18, i64* %8, align 8, !dbg !3399
  %19 = icmp eq i64 %18, -1, !dbg !3400
  br i1 %19, label %20, label %36, !dbg !3401

; <label>:20:                                     ; preds = %2
  %21 = call i32* @__errno_location() #1, !dbg !3402
  %22 = load i32, i32* %21, align 4, !dbg !3405
  %23 = icmp eq i32 %22, 32, !dbg !3406
  br i1 %23, label %28, label %24, !dbg !3407

; <label>:24:                                     ; preds = %20
  %25 = call i32* @__errno_location() #1, !dbg !3408
  %26 = load i32, i32* %25, align 4, !dbg !3410
  %27 = icmp eq i32 %26, 104, !dbg !3411
  br i1 %27, label %28, label %29, !dbg !3412

; <label>:28:                                     ; preds = %24, %20
  store i32 1, i32* %3, align 4, !dbg !3413
  br label %372, !dbg !3413

; <label>:29:                                     ; preds = %24
  %30 = call i32* @__errno_location() #1, !dbg !3415
  %31 = load i32, i32* %30, align 4, !dbg !3416
  %32 = call i8* @strerror(i32 %31) #3, !dbg !3417
  %33 = call i32* @__errno_location() #1, !dbg !3419
  %34 = load i32, i32* %33, align 4, !dbg !3421
  %35 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0), i8* %32, i32 %34), !dbg !3422
  store i32 -1, i32* %3, align 4, !dbg !3423
  br label %372, !dbg !3423

; <label>:36:                                     ; preds = %2
  %37 = load i64, i64* %8, align 8, !dbg !3424
  %38 = icmp eq i64 %37, 0, !dbg !3426
  br i1 %38, label %39, label %40, !dbg !3427

; <label>:39:                                     ; preds = %36
  store i32 1, i32* %3, align 4, !dbg !3428
  br label %372, !dbg !3428

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !3430
  %42 = load i8, i8* %41, align 16, !dbg !3430
  %43 = sext i8 %42 to i32, !dbg !3430
  %44 = load i64, i64* %8, align 8, !dbg !3431
  %45 = load i32, i32* %5, align 4, !dbg !3432
  %46 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i32 %43, i64 %44, i32 %45), !dbg !3433
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !3434
  %48 = load i8, i8* %47, align 16, !dbg !3434
  %49 = sext i8 %48 to i32, !dbg !3434
  switch i32 %49, label %357 [
    i32 0, label %50
    i32 2, label %51
    i32 1, label %52
    i32 3, label %165
    i32 4, label %246
  ], !dbg !3435

; <label>:50:                                     ; preds = %40
  store i32 1, i32* %3, align 4, !dbg !3436
  br label %372, !dbg !3436

; <label>:51:                                     ; preds = %40
  store i32 1, i32* %9, align 4, !dbg !3439
  br label %52, !dbg !3440

; <label>:52:                                     ; preds = %40, %51
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3441, metadata !145), !dbg !3443
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3444, metadata !145), !dbg !3445
  %53 = load i64, i64* %8, align 8, !dbg !3446
  %54 = icmp slt i64 %53, 2, !dbg !3448
  br i1 %54, label %55, label %69, !dbg !3449

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3450
  store i8 2, i8* %56, align 1, !dbg !3452
  %57 = load i32, i32* %5, align 4, !dbg !3453
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3455
  %59 = call i64 @sys_sendmsgfd(i32 %57, i8* %58, i64 1, i32 -1), !dbg !3456
  %60 = icmp eq i64 %59, -1, !dbg !3457
  br i1 %60, label %61, label %68, !dbg !3458

; <label>:61:                                     ; preds = %55
  %62 = call i32* @__errno_location() #1, !dbg !3459
  %63 = load i32, i32* %62, align 4, !dbg !3461
  %64 = call i8* @strerror(i32 %63) #3, !dbg !3462
  %65 = call i32* @__errno_location() #1, !dbg !3464
  %66 = load i32, i32* %65, align 4, !dbg !3466
  %67 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %64, i32 %66), !dbg !3467
  store i32 -1, i32* %3, align 4, !dbg !3468
  br label %372, !dbg !3468

; <label>:68:                                     ; preds = %55
  br label %69, !dbg !3469

; <label>:69:                                     ; preds = %68, %52
  %70 = load i64, i64* %8, align 8, !dbg !3470
  %71 = call noalias i8* @malloc(i64 %70) #3, !dbg !3472
  store i8* %71, i8** %10, align 8, !dbg !3473
  %72 = icmp ne i8* %71, null, !dbg !3473
  br i1 %72, label %91, label %73, !dbg !3474

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3475
  store i8 4, i8* %74, align 1, !dbg !3477
  %75 = call i32* @__errno_location() #1, !dbg !3478
  %76 = load i32, i32* %75, align 4, !dbg !3479
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !3480
  %78 = bitcast i8* %77 to i32*, !dbg !3481
  store i32 %76, i32* %78, align 1, !dbg !3482
  %79 = load i32, i32* %5, align 4, !dbg !3483
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3485
  %81 = call i64 @sys_sendmsgfd(i32 %79, i8* %80, i64 5, i32 -1), !dbg !3486
  %82 = icmp eq i64 %81, -1, !dbg !3487
  br i1 %82, label %83, label %90, !dbg !3488

; <label>:83:                                     ; preds = %73
  %84 = call i32* @__errno_location() #1, !dbg !3489
  %85 = load i32, i32* %84, align 4, !dbg !3491
  %86 = call i8* @strerror(i32 %85) #3, !dbg !3492
  %87 = call i32* @__errno_location() #1, !dbg !3494
  %88 = load i32, i32* %87, align 4, !dbg !3496
  %89 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %86, i32 %88), !dbg !3497
  store i32 -1, i32* %3, align 4, !dbg !3498
  br label %372, !dbg !3498

; <label>:90:                                     ; preds = %73
  store i32 0, i32* %3, align 4, !dbg !3499
  br label %372, !dbg !3499

; <label>:91:                                     ; preds = %69
  %92 = load i8*, i8** %10, align 8, !dbg !3500
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !3501
  %94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !3502
  %95 = load i64, i64* %8, align 8, !dbg !3503
  %96 = sub nsw i64 %95, 1, !dbg !3504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %94, i64 %96, i32 1, i1 false), !dbg !3505
  %97 = load i64, i64* %8, align 8, !dbg !3506
  %98 = sub nsw i64 %97, 1, !dbg !3507
  %99 = load i8*, i8** %10, align 8, !dbg !3508
  %100 = getelementptr inbounds i8, i8* %99, i64 %98, !dbg !3508
  store i8 0, i8* %100, align 1, !dbg !3509
  %101 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3510
  %102 = load i8*, i8** %10, align 8, !dbg !3512
  %103 = load i32, i32* %9, align 4, !dbg !3513
  %104 = call i32 @privsep_server_openfile_verify(%struct.opts* %101, i8* %102, i32 %103), !dbg !3514
  %105 = icmp eq i32 %104, -1, !dbg !3515
  br i1 %105, label %106, label %121, !dbg !3516

; <label>:106:                                    ; preds = %91
  %107 = load i8*, i8** %10, align 8, !dbg !3517
  call void @free(i8* %107) #3, !dbg !3519
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3520
  store i8 3, i8* %108, align 1, !dbg !3521
  %109 = load i32, i32* %5, align 4, !dbg !3522
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3524
  %111 = call i64 @sys_sendmsgfd(i32 %109, i8* %110, i64 1, i32 -1), !dbg !3525
  %112 = icmp eq i64 %111, -1, !dbg !3526
  br i1 %112, label %113, label %120, !dbg !3527

; <label>:113:                                    ; preds = %106
  %114 = call i32* @__errno_location() #1, !dbg !3528
  %115 = load i32, i32* %114, align 4, !dbg !3530
  %116 = call i8* @strerror(i32 %115) #3, !dbg !3531
  %117 = call i32* @__errno_location() #1, !dbg !3533
  %118 = load i32, i32* %117, align 4, !dbg !3535
  %119 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %116, i32 %118), !dbg !3536
  store i32 -1, i32* %3, align 4, !dbg !3537
  br label %372, !dbg !3537

; <label>:120:                                    ; preds = %106
  store i32 0, i32* %3, align 4, !dbg !3538
  br label %372, !dbg !3538

; <label>:121:                                    ; preds = %91
  %122 = load i8*, i8** %10, align 8, !dbg !3539
  %123 = load i32, i32* %9, align 4, !dbg !3541
  %124 = call i32 @privsep_server_openfile(i8* %122, i32 %123), !dbg !3542
  store i32 %124, i32* %11, align 4, !dbg !3543
  %125 = icmp eq i32 %124, -1, !dbg !3544
  br i1 %125, label %126, label %145, !dbg !3545

; <label>:126:                                    ; preds = %121
  %127 = load i8*, i8** %10, align 8, !dbg !3546
  call void @free(i8* %127) #3, !dbg !3548
  %128 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3549
  store i8 4, i8* %128, align 1, !dbg !3550
  %129 = call i32* @__errno_location() #1, !dbg !3551
  %130 = load i32, i32* %129, align 4, !dbg !3552
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !3553
  %132 = bitcast i8* %131 to i32*, !dbg !3554
  store i32 %130, i32* %132, align 1, !dbg !3555
  %133 = load i32, i32* %5, align 4, !dbg !3556
  %134 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3558
  %135 = call i64 @sys_sendmsgfd(i32 %133, i8* %134, i64 5, i32 -1), !dbg !3559
  %136 = icmp eq i64 %135, -1, !dbg !3560
  br i1 %136, label %137, label %144, !dbg !3561

; <label>:137:                                    ; preds = %126
  %138 = call i32* @__errno_location() #1, !dbg !3562
  %139 = load i32, i32* %138, align 4, !dbg !3564
  %140 = call i8* @strerror(i32 %139) #3, !dbg !3565
  %141 = call i32* @__errno_location() #1, !dbg !3567
  %142 = load i32, i32* %141, align 4, !dbg !3569
  %143 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %140, i32 %142), !dbg !3570
  store i32 -1, i32* %3, align 4, !dbg !3571
  br label %372, !dbg !3571

; <label>:144:                                    ; preds = %126
  store i32 0, i32* %3, align 4, !dbg !3572
  br label %372, !dbg !3572

; <label>:145:                                    ; preds = %121
  %146 = load i8*, i8** %10, align 8, !dbg !3573
  call void @free(i8* %146) #3, !dbg !3575
  %147 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3576
  store i8 0, i8* %147, align 1, !dbg !3577
  %148 = load i32, i32* %5, align 4, !dbg !3578
  %149 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3580
  %150 = load i32, i32* %11, align 4, !dbg !3581
  %151 = call i64 @sys_sendmsgfd(i32 %148, i8* %149, i64 1, i32 %150), !dbg !3582
  %152 = icmp eq i64 %151, -1, !dbg !3583
  br i1 %152, label %153, label %162, !dbg !3584

; <label>:153:                                    ; preds = %145
  %154 = load i32, i32* %11, align 4, !dbg !3585
  %155 = call i32 @close(i32 %154), !dbg !3587
  %156 = call i32* @__errno_location() #1, !dbg !3588
  %157 = load i32, i32* %156, align 4, !dbg !3589
  %158 = call i8* @strerror(i32 %157) #3, !dbg !3590
  %159 = call i32* @__errno_location() #1, !dbg !3592
  %160 = load i32, i32* %159, align 4, !dbg !3594
  %161 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %158, i32 %160), !dbg !3595
  store i32 -1, i32* %3, align 4, !dbg !3596
  br label %372, !dbg !3596

; <label>:162:                                    ; preds = %145
  %163 = load i32, i32* %11, align 4, !dbg !3597
  %164 = call i32 @close(i32 %163), !dbg !3598
  store i32 0, i32* %3, align 4, !dbg !3599
  br label %372, !dbg !3599

; <label>:165:                                    ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %12, metadata !3600, metadata !145), !dbg !3602
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3603, metadata !145), !dbg !3604
  %166 = load i64, i64* %8, align 8, !dbg !3605
  %167 = icmp ne i64 %166, 9, !dbg !3607
  br i1 %167, label %168, label %182, !dbg !3608

; <label>:168:                                    ; preds = %165
  %169 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3609
  store i8 2, i8* %169, align 1, !dbg !3611
  %170 = load i32, i32* %5, align 4, !dbg !3612
  %171 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3614
  %172 = call i64 @sys_sendmsgfd(i32 %170, i8* %171, i64 1, i32 -1), !dbg !3615
  %173 = icmp eq i64 %172, -1, !dbg !3616
  br i1 %173, label %174, label %181, !dbg !3617

; <label>:174:                                    ; preds = %168
  %175 = call i32* @__errno_location() #1, !dbg !3618
  %176 = load i32, i32* %175, align 4, !dbg !3620
  %177 = call i8* @strerror(i32 %176) #3, !dbg !3621
  %178 = call i32* @__errno_location() #1, !dbg !3623
  %179 = load i32, i32* %178, align 4, !dbg !3625
  %180 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %177, i32 %179), !dbg !3626
  store i32 -1, i32* %3, align 4, !dbg !3627
  br label %372, !dbg !3627

; <label>:181:                                    ; preds = %168
  store i32 0, i32* %3, align 4, !dbg !3628
  br label %372, !dbg !3628

; <label>:182:                                    ; preds = %165
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 1, !dbg !3629
  %184 = bitcast i8* %183 to %struct.proxyspec**, !dbg !3630
  %185 = load %struct.proxyspec*, %struct.proxyspec** %184, align 1, !dbg !3630
  store %struct.proxyspec* %185, %struct.proxyspec** %12, align 8, !dbg !3631
  %186 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3632
  %187 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !3634
  %188 = bitcast %struct.proxyspec* %187 to i8*, !dbg !3634
  %189 = call i32 @privsep_server_opensock_verify(%struct.opts* %186, i8* %188), !dbg !3635
  %190 = icmp eq i32 %189, -1, !dbg !3636
  br i1 %190, label %191, label %205, !dbg !3637

; <label>:191:                                    ; preds = %182
  %192 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3638
  store i8 3, i8* %192, align 1, !dbg !3640
  %193 = load i32, i32* %5, align 4, !dbg !3641
  %194 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3643
  %195 = call i64 @sys_sendmsgfd(i32 %193, i8* %194, i64 1, i32 -1), !dbg !3644
  %196 = icmp eq i64 %195, -1, !dbg !3645
  br i1 %196, label %197, label %204, !dbg !3646

; <label>:197:                                    ; preds = %191
  %198 = call i32* @__errno_location() #1, !dbg !3647
  %199 = load i32, i32* %198, align 4, !dbg !3649
  %200 = call i8* @strerror(i32 %199) #3, !dbg !3650
  %201 = call i32* @__errno_location() #1, !dbg !3652
  %202 = load i32, i32* %201, align 4, !dbg !3654
  %203 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %200, i32 %202), !dbg !3655
  store i32 -1, i32* %3, align 4, !dbg !3656
  br label %372, !dbg !3656

; <label>:204:                                    ; preds = %191
  store i32 0, i32* %3, align 4, !dbg !3657
  br label %372, !dbg !3657

; <label>:205:                                    ; preds = %182
  %206 = load %struct.proxyspec*, %struct.proxyspec** %12, align 8, !dbg !3658
  %207 = call i32 @privsep_server_opensock(%struct.proxyspec* %206), !dbg !3660
  store i32 %207, i32* %13, align 4, !dbg !3661
  %208 = icmp eq i32 %207, -1, !dbg !3662
  br i1 %208, label %209, label %227, !dbg !3663

; <label>:209:                                    ; preds = %205
  %210 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3664
  store i8 4, i8* %210, align 1, !dbg !3666
  %211 = call i32* @__errno_location() #1, !dbg !3667
  %212 = load i32, i32* %211, align 4, !dbg !3668
  %213 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !3669
  %214 = bitcast i8* %213 to i32*, !dbg !3670
  store i32 %212, i32* %214, align 1, !dbg !3671
  %215 = load i32, i32* %5, align 4, !dbg !3672
  %216 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3674
  %217 = call i64 @sys_sendmsgfd(i32 %215, i8* %216, i64 5, i32 -1), !dbg !3675
  %218 = icmp eq i64 %217, -1, !dbg !3676
  br i1 %218, label %219, label %226, !dbg !3677

; <label>:219:                                    ; preds = %209
  %220 = call i32* @__errno_location() #1, !dbg !3678
  %221 = load i32, i32* %220, align 4, !dbg !3680
  %222 = call i8* @strerror(i32 %221) #3, !dbg !3681
  %223 = call i32* @__errno_location() #1, !dbg !3683
  %224 = load i32, i32* %223, align 4, !dbg !3685
  %225 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %222, i32 %224), !dbg !3686
  store i32 -1, i32* %3, align 4, !dbg !3687
  br label %372, !dbg !3687

; <label>:226:                                    ; preds = %209
  store i32 0, i32* %3, align 4, !dbg !3688
  br label %372, !dbg !3688

; <label>:227:                                    ; preds = %205
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3689
  store i8 0, i8* %228, align 1, !dbg !3691
  %229 = load i32, i32* %5, align 4, !dbg !3692
  %230 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3694
  %231 = load i32, i32* %13, align 4, !dbg !3695
  %232 = call i64 @sys_sendmsgfd(i32 %229, i8* %230, i64 1, i32 %231), !dbg !3696
  %233 = icmp eq i64 %232, -1, !dbg !3697
  br i1 %233, label %234, label %243, !dbg !3698

; <label>:234:                                    ; preds = %227
  %235 = load i32, i32* %13, align 4, !dbg !3699
  %236 = call i32 @evutil_closesocket(i32 %235), !dbg !3701
  %237 = call i32* @__errno_location() #1, !dbg !3702
  %238 = load i32, i32* %237, align 4, !dbg !3703
  %239 = call i8* @strerror(i32 %238) #3, !dbg !3704
  %240 = call i32* @__errno_location() #1, !dbg !3706
  %241 = load i32, i32* %240, align 4, !dbg !3708
  %242 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %239, i32 %241), !dbg !3709
  store i32 -1, i32* %3, align 4, !dbg !3710
  br label %372, !dbg !3710

; <label>:243:                                    ; preds = %227
  %244 = load i32, i32* %13, align 4, !dbg !3711
  %245 = call i32 @evutil_closesocket(i32 %244), !dbg !3712
  store i32 0, i32* %3, align 4, !dbg !3713
  br label %372, !dbg !3713

; <label>:246:                                    ; preds = %40
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3714, metadata !145), !dbg !3716
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3717, metadata !145), !dbg !3718
  %247 = load i64, i64* %8, align 8, !dbg !3719
  %248 = icmp slt i64 %247, 2, !dbg !3721
  br i1 %248, label %249, label %263, !dbg !3722

; <label>:249:                                    ; preds = %246
  %250 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3723
  store i8 2, i8* %250, align 1, !dbg !3725
  %251 = load i32, i32* %5, align 4, !dbg !3726
  %252 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3728
  %253 = call i64 @sys_sendmsgfd(i32 %251, i8* %252, i64 1, i32 -1), !dbg !3729
  %254 = icmp eq i64 %253, -1, !dbg !3730
  br i1 %254, label %255, label %262, !dbg !3731

; <label>:255:                                    ; preds = %249
  %256 = call i32* @__errno_location() #1, !dbg !3732
  %257 = load i32, i32* %256, align 4, !dbg !3734
  %258 = call i8* @strerror(i32 %257) #3, !dbg !3735
  %259 = call i32* @__errno_location() #1, !dbg !3737
  %260 = load i32, i32* %259, align 4, !dbg !3739
  %261 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %258, i32 %260), !dbg !3740
  store i32 -1, i32* %3, align 4, !dbg !3741
  br label %372, !dbg !3741

; <label>:262:                                    ; preds = %249
  br label %263, !dbg !3742

; <label>:263:                                    ; preds = %262, %246
  %264 = load i64, i64* %8, align 8, !dbg !3743
  %265 = call noalias i8* @malloc(i64 %264) #3, !dbg !3745
  store i8* %265, i8** %14, align 8, !dbg !3746
  %266 = icmp ne i8* %265, null, !dbg !3746
  br i1 %266, label %285, label %267, !dbg !3747

; <label>:267:                                    ; preds = %263
  %268 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3748
  store i8 4, i8* %268, align 1, !dbg !3750
  %269 = call i32* @__errno_location() #1, !dbg !3751
  %270 = load i32, i32* %269, align 4, !dbg !3752
  %271 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !3753
  %272 = bitcast i8* %271 to i32*, !dbg !3754
  store i32 %270, i32* %272, align 1, !dbg !3755
  %273 = load i32, i32* %5, align 4, !dbg !3756
  %274 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3758
  %275 = call i64 @sys_sendmsgfd(i32 %273, i8* %274, i64 5, i32 -1), !dbg !3759
  %276 = icmp eq i64 %275, -1, !dbg !3760
  br i1 %276, label %277, label %284, !dbg !3761

; <label>:277:                                    ; preds = %267
  %278 = call i32* @__errno_location() #1, !dbg !3762
  %279 = load i32, i32* %278, align 4, !dbg !3764
  %280 = call i8* @strerror(i32 %279) #3, !dbg !3765
  %281 = call i32* @__errno_location() #1, !dbg !3767
  %282 = load i32, i32* %281, align 4, !dbg !3769
  %283 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %280, i32 %282), !dbg !3770
  store i32 -1, i32* %3, align 4, !dbg !3771
  br label %372, !dbg !3771

; <label>:284:                                    ; preds = %267
  store i32 0, i32* %3, align 4, !dbg !3772
  br label %372, !dbg !3772

; <label>:285:                                    ; preds = %263
  %286 = load i8*, i8** %14, align 8, !dbg !3773
  %287 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !3774
  %288 = getelementptr inbounds i8, i8* %287, i64 1, !dbg !3775
  %289 = load i64, i64* %8, align 8, !dbg !3776
  %290 = sub nsw i64 %289, 1, !dbg !3777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %288, i64 %290, i32 1, i1 false), !dbg !3778
  %291 = load i64, i64* %8, align 8, !dbg !3779
  %292 = sub nsw i64 %291, 1, !dbg !3780
  %293 = load i8*, i8** %14, align 8, !dbg !3781
  %294 = getelementptr inbounds i8, i8* %293, i64 %292, !dbg !3781
  store i8 0, i8* %294, align 1, !dbg !3782
  %295 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !3783
  %296 = load i8*, i8** %14, align 8, !dbg !3785
  %297 = call i32 @privsep_server_certfile_verify(%struct.opts* %295, i8* %296), !dbg !3786
  %298 = icmp eq i32 %297, -1, !dbg !3787
  br i1 %298, label %299, label %314, !dbg !3788

; <label>:299:                                    ; preds = %285
  %300 = load i8*, i8** %14, align 8, !dbg !3789
  call void @free(i8* %300) #3, !dbg !3791
  %301 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3792
  store i8 3, i8* %301, align 1, !dbg !3793
  %302 = load i32, i32* %5, align 4, !dbg !3794
  %303 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3796
  %304 = call i64 @sys_sendmsgfd(i32 %302, i8* %303, i64 1, i32 -1), !dbg !3797
  %305 = icmp eq i64 %304, -1, !dbg !3798
  br i1 %305, label %306, label %313, !dbg !3799

; <label>:306:                                    ; preds = %299
  %307 = call i32* @__errno_location() #1, !dbg !3800
  %308 = load i32, i32* %307, align 4, !dbg !3802
  %309 = call i8* @strerror(i32 %308) #3, !dbg !3803
  %310 = call i32* @__errno_location() #1, !dbg !3805
  %311 = load i32, i32* %310, align 4, !dbg !3807
  %312 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %309, i32 %311), !dbg !3808
  store i32 -1, i32* %3, align 4, !dbg !3809
  br label %372, !dbg !3809

; <label>:313:                                    ; preds = %299
  store i32 0, i32* %3, align 4, !dbg !3810
  br label %372, !dbg !3810

; <label>:314:                                    ; preds = %285
  %315 = load i8*, i8** %14, align 8, !dbg !3811
  %316 = call i32 @privsep_server_certfile(i8* %315), !dbg !3813
  store i32 %316, i32* %15, align 4, !dbg !3814
  %317 = icmp eq i32 %316, -1, !dbg !3815
  br i1 %317, label %318, label %337, !dbg !3816

; <label>:318:                                    ; preds = %314
  %319 = load i8*, i8** %14, align 8, !dbg !3817
  call void @free(i8* %319) #3, !dbg !3819
  %320 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3820
  store i8 4, i8* %320, align 1, !dbg !3821
  %321 = call i32* @__errno_location() #1, !dbg !3822
  %322 = load i32, i32* %321, align 4, !dbg !3823
  %323 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1, !dbg !3824
  %324 = bitcast i8* %323 to i32*, !dbg !3825
  store i32 %322, i32* %324, align 1, !dbg !3826
  %325 = load i32, i32* %5, align 4, !dbg !3827
  %326 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3829
  %327 = call i64 @sys_sendmsgfd(i32 %325, i8* %326, i64 5, i32 -1), !dbg !3830
  %328 = icmp eq i64 %327, -1, !dbg !3831
  br i1 %328, label %329, label %336, !dbg !3832

; <label>:329:                                    ; preds = %318
  %330 = call i32* @__errno_location() #1, !dbg !3833
  %331 = load i32, i32* %330, align 4, !dbg !3835
  %332 = call i8* @strerror(i32 %331) #3, !dbg !3836
  %333 = call i32* @__errno_location() #1, !dbg !3838
  %334 = load i32, i32* %333, align 4, !dbg !3840
  %335 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %332, i32 %334), !dbg !3841
  store i32 -1, i32* %3, align 4, !dbg !3842
  br label %372, !dbg !3842

; <label>:336:                                    ; preds = %318
  store i32 0, i32* %3, align 4, !dbg !3843
  br label %372, !dbg !3843

; <label>:337:                                    ; preds = %314
  %338 = load i8*, i8** %14, align 8, !dbg !3844
  call void @free(i8* %338) #3, !dbg !3846
  %339 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3847
  store i8 0, i8* %339, align 1, !dbg !3848
  %340 = load i32, i32* %5, align 4, !dbg !3849
  %341 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3851
  %342 = load i32, i32* %15, align 4, !dbg !3852
  %343 = call i64 @sys_sendmsgfd(i32 %340, i8* %341, i64 1, i32 %342), !dbg !3853
  %344 = icmp eq i64 %343, -1, !dbg !3854
  br i1 %344, label %345, label %354, !dbg !3855

; <label>:345:                                    ; preds = %337
  %346 = load i32, i32* %15, align 4, !dbg !3856
  %347 = call i32 @close(i32 %346), !dbg !3858
  %348 = call i32* @__errno_location() #1, !dbg !3859
  %349 = load i32, i32* %348, align 4, !dbg !3860
  %350 = call i8* @strerror(i32 %349) #3, !dbg !3861
  %351 = call i32* @__errno_location() #1, !dbg !3863
  %352 = load i32, i32* %351, align 4, !dbg !3865
  %353 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %350, i32 %352), !dbg !3866
  store i32 -1, i32* %3, align 4, !dbg !3867
  br label %372, !dbg !3867

; <label>:354:                                    ; preds = %337
  %355 = load i32, i32* %15, align 4, !dbg !3868
  %356 = call i32 @close(i32 %355), !dbg !3869
  store i32 0, i32* %3, align 4, !dbg !3870
  br label %372, !dbg !3870

; <label>:357:                                    ; preds = %40
  %358 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !3871
  store i8 1, i8* %358, align 1, !dbg !3872
  %359 = load i32, i32* %5, align 4, !dbg !3873
  %360 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i32 0, i32 0, !dbg !3875
  %361 = call i64 @sys_sendmsgfd(i32 %359, i8* %360, i64 1, i32 -1), !dbg !3876
  %362 = icmp eq i64 %361, -1, !dbg !3877
  br i1 %362, label %363, label %370, !dbg !3878

; <label>:363:                                    ; preds = %357
  %364 = call i32* @__errno_location() #1, !dbg !3879
  %365 = load i32, i32* %364, align 4, !dbg !3881
  %366 = call i8* @strerror(i32 %365) #3, !dbg !3882
  %367 = call i32* @__errno_location() #1, !dbg !3884
  %368 = load i32, i32* %367, align 4, !dbg !3886
  %369 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %366, i32 %368), !dbg !3887
  store i32 -1, i32* %3, align 4, !dbg !3888
  br label %372, !dbg !3888

; <label>:370:                                    ; preds = %357
  br label %371, !dbg !3889

; <label>:371:                                    ; preds = %370
  store i32 0, i32* %3, align 4, !dbg !3890
  br label %372, !dbg !3890

; <label>:372:                                    ; preds = %371, %363, %354, %345, %336, %329, %313, %306, %284, %277, %255, %243, %234, %226, %219, %204, %197, %181, %174, %162, %153, %144, %137, %120, %113, %90, %83, %61, %50, %39, %29, %28
  %373 = load i32, i32* %3, align 4, !dbg !3891
  ret i32 %373, !dbg !3891
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #7

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_openfile_verify(%struct.opts*, i8*, i32) #0 !dbg !3892 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.opts* %0, %struct.opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %5, metadata !3895, metadata !145), !dbg !3896
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3897, metadata !145), !dbg !3898
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3899, metadata !145), !dbg !3900
  br label %8, !dbg !3901, !llvm.loop !3902

; <label>:8:                                      ; preds = %3
  %9 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3903
  %10 = getelementptr inbounds %struct.opts, %struct.opts* %9, i32 0, i32 11, !dbg !3906
  %11 = load i8*, i8** %10, align 8, !dbg !3906
  %12 = icmp ne i8* %11, null, !dbg !3903
  br i1 %12, label %13, label %37, !dbg !3907

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %6, align 8, !dbg !3908
  %15 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3911
  %16 = bitcast %struct.opts* %15 to i16*, !dbg !3912
  %17 = load i16, i16* %16, align 8, !dbg !3912
  %18 = lshr i16 %17, 10, !dbg !3912
  %19 = and i16 %18, 1, !dbg !3912
  %20 = zext i16 %19 to i32, !dbg !3912
  %21 = icmp ne i32 %20, 0, !dbg !3911
  br i1 %21, label %22, label %26, !dbg !3911

; <label>:22:                                     ; preds = %13
  %23 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3913
  %24 = getelementptr inbounds %struct.opts, %struct.opts* %23, i32 0, i32 12, !dbg !3914
  %25 = load i8*, i8** %24, align 8, !dbg !3914
  br label %30, !dbg !3915

; <label>:26:                                     ; preds = %13
  %27 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3917
  %28 = getelementptr inbounds %struct.opts, %struct.opts* %27, i32 0, i32 11, !dbg !3918
  %29 = load i8*, i8** %28, align 8, !dbg !3918
  br label %30, !dbg !3919

; <label>:30:                                     ; preds = %26, %22
  %31 = phi i8* [ %25, %22 ], [ %29, %26 ], !dbg !3921
  %32 = call i8* @strstr(i8* %14, i8* %31) #8, !dbg !3923
  %33 = load i8*, i8** %6, align 8, !dbg !3924
  %34 = icmp eq i8* %32, %33, !dbg !3925
  br i1 %34, label %35, label %36, !dbg !3923

; <label>:35:                                     ; preds = %30
  br label %97, !dbg !3926

; <label>:36:                                     ; preds = %30
  br label %37, !dbg !3927

; <label>:37:                                     ; preds = %36, %8
  %38 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3928
  %39 = getelementptr inbounds %struct.opts, %struct.opts* %38, i32 0, i32 14, !dbg !3930
  %40 = load i8*, i8** %39, align 8, !dbg !3930
  %41 = icmp ne i8* %40, null, !dbg !3928
  br i1 %41, label %42, label %66, !dbg !3931

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %6, align 8, !dbg !3932
  %44 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3935
  %45 = bitcast %struct.opts* %44 to i16*, !dbg !3936
  %46 = load i16, i16* %45, align 8, !dbg !3936
  %47 = lshr i16 %46, 12, !dbg !3936
  %48 = and i16 %47, 1, !dbg !3936
  %49 = zext i16 %48 to i32, !dbg !3936
  %50 = icmp ne i32 %49, 0, !dbg !3935
  br i1 %50, label %51, label %55, !dbg !3935

; <label>:51:                                     ; preds = %42
  %52 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3937
  %53 = getelementptr inbounds %struct.opts, %struct.opts* %52, i32 0, i32 15, !dbg !3938
  %54 = load i8*, i8** %53, align 8, !dbg !3938
  br label %59, !dbg !3939

; <label>:55:                                     ; preds = %42
  %56 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3941
  %57 = getelementptr inbounds %struct.opts, %struct.opts* %56, i32 0, i32 14, !dbg !3942
  %58 = load i8*, i8** %57, align 8, !dbg !3942
  br label %59, !dbg !3943

; <label>:59:                                     ; preds = %55, %51
  %60 = phi i8* [ %54, %51 ], [ %58, %55 ], !dbg !3945
  %61 = call i8* @strstr(i8* %43, i8* %60) #8, !dbg !3947
  %62 = load i8*, i8** %6, align 8, !dbg !3948
  %63 = icmp eq i8* %61, %62, !dbg !3949
  br i1 %63, label %64, label %65, !dbg !3947

; <label>:64:                                     ; preds = %59
  br label %97, !dbg !3950

; <label>:65:                                     ; preds = %59
  br label %66, !dbg !3951

; <label>:66:                                     ; preds = %65, %37
  %67 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3952
  %68 = getelementptr inbounds %struct.opts, %struct.opts* %67, i32 0, i32 10, !dbg !3954
  %69 = load i8*, i8** %68, align 8, !dbg !3954
  %70 = icmp ne i8* %69, null, !dbg !3952
  br i1 %70, label %71, label %81, !dbg !3955

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %6, align 8, !dbg !3956
  %73 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3959
  %74 = getelementptr inbounds %struct.opts, %struct.opts* %73, i32 0, i32 10, !dbg !3960
  %75 = load i8*, i8** %74, align 8, !dbg !3960
  %76 = call i8* @strstr(i8* %72, i8* %75) #8, !dbg !3961
  %77 = load i8*, i8** %6, align 8, !dbg !3962
  %78 = icmp eq i8* %76, %77, !dbg !3963
  br i1 %78, label %79, label %80, !dbg !3964

; <label>:79:                                     ; preds = %71
  br label %97, !dbg !3965

; <label>:80:                                     ; preds = %71
  br label %81, !dbg !3966

; <label>:81:                                     ; preds = %80, %66
  %82 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3967
  %83 = getelementptr inbounds %struct.opts, %struct.opts* %82, i32 0, i32 13, !dbg !3969
  %84 = load i8*, i8** %83, align 8, !dbg !3969
  %85 = icmp ne i8* %84, null, !dbg !3967
  br i1 %85, label %86, label %96, !dbg !3970

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %6, align 8, !dbg !3971
  %88 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !3974
  %89 = getelementptr inbounds %struct.opts, %struct.opts* %88, i32 0, i32 13, !dbg !3975
  %90 = load i8*, i8** %89, align 8, !dbg !3975
  %91 = call i8* @strstr(i8* %87, i8* %90) #8, !dbg !3976
  %92 = load i8*, i8** %6, align 8, !dbg !3977
  %93 = icmp eq i8* %91, %92, !dbg !3978
  br i1 %93, label %94, label %95, !dbg !3979

; <label>:94:                                     ; preds = %86
  br label %97, !dbg !3980

; <label>:95:                                     ; preds = %86
  br label %96, !dbg !3981

; <label>:96:                                     ; preds = %95, %81
  store i32 -1, i32* %4, align 4, !dbg !3982
  br label %103, !dbg !3982

; <label>:97:                                     ; preds = %94, %79, %64, %35
  %98 = load i8*, i8** %6, align 8, !dbg !3983
  %99 = call i8* @strstr(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !3985
  %100 = icmp ne i8* %99, null, !dbg !3985
  br i1 %100, label %101, label %102, !dbg !3986

; <label>:101:                                    ; preds = %97
  store i32 -1, i32* %4, align 4, !dbg !3987
  br label %103, !dbg !3987

; <label>:102:                                    ; preds = %97
  store i32 0, i32* %4, align 4, !dbg !3988
  br label %103, !dbg !3988

; <label>:103:                                    ; preds = %102, %101, %96
  %104 = load i32, i32* %4, align 4, !dbg !3989
  ret i32 %104, !dbg !3989
}

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_opensock_verify(%struct.opts*, i8*) #0 !dbg !3990 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proxyspec*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !3993, metadata !145), !dbg !3994
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3995, metadata !145), !dbg !3996
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %6, metadata !3997, metadata !145), !dbg !3999
  %7 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4000
  %8 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 27, !dbg !4001
  %9 = load %struct.proxyspec*, %struct.proxyspec** %8, align 8, !dbg !4001
  store %struct.proxyspec* %9, %struct.proxyspec** %6, align 8, !dbg !3999
  br label %10, !dbg !4002

; <label>:10:                                     ; preds = %20, %2
  %11 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !4003
  %12 = icmp ne %struct.proxyspec* %11, null, !dbg !4006
  br i1 %12, label %13, label %24, !dbg !4006

; <label>:13:                                     ; preds = %10
  %14 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !4007
  %15 = load i8*, i8** %5, align 8, !dbg !4010
  %16 = bitcast i8* %15 to %struct.proxyspec*, !dbg !4010
  %17 = icmp eq %struct.proxyspec* %14, %16, !dbg !4011
  br i1 %17, label %18, label %19, !dbg !4012

; <label>:18:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !4013
  br label %25, !dbg !4013

; <label>:19:                                     ; preds = %13
  br label %20, !dbg !4014

; <label>:20:                                     ; preds = %19
  %21 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !4015
  %22 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %21, i32 0, i32 9, !dbg !4017
  %23 = load %struct.proxyspec*, %struct.proxyspec** %22, align 8, !dbg !4017
  store %struct.proxyspec* %23, %struct.proxyspec** %6, align 8, !dbg !4018
  br label %10, !dbg !4019, !llvm.loop !4020

; <label>:24:                                     ; preds = %10
  store i32 1, i32* %3, align 4, !dbg !4022
  br label %25, !dbg !4022

; <label>:25:                                     ; preds = %24, %18
  %26 = load i32, i32* %3, align 4, !dbg !4023
  ret i32 %26, !dbg !4023
}

; Function Attrs: nounwind uwtable
define internal i32 @privsep_server_certfile_verify(%struct.opts*, i8*) #0 !dbg !4024 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !4027, metadata !145), !dbg !4028
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4029, metadata !145), !dbg !4030
  %6 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4031
  %7 = getelementptr inbounds %struct.opts, %struct.opts* %6, i32 0, i32 3, !dbg !4033
  %8 = load i8*, i8** %7, align 8, !dbg !4033
  %9 = icmp ne i8* %8, null, !dbg !4031
  br i1 %9, label %11, label %10, !dbg !4034

; <label>:10:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !4035
  br label %25, !dbg !4035

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !4036
  %13 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !4038
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 3, !dbg !4039
  %15 = load i8*, i8** %14, align 8, !dbg !4039
  %16 = call i8* @strstr(i8* %12, i8* %15) #8, !dbg !4040
  %17 = load i8*, i8** %5, align 8, !dbg !4041
  %18 = icmp ne i8* %16, %17, !dbg !4042
  br i1 %18, label %23, label %19, !dbg !4043

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %5, align 8, !dbg !4044
  %21 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #8, !dbg !4046
  %22 = icmp ne i8* %21, null, !dbg !4046
  br i1 %22, label %23, label %24, !dbg !4047

; <label>:23:                                     ; preds = %19, %11
  store i32 -1, i32* %3, align 4, !dbg !4048
  br label %25, !dbg !4048

; <label>:24:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !4049
  br label %25, !dbg !4049

; <label>:25:                                     ; preds = %24, %23, %10
  %26 = load i32, i32* %3, align 4, !dbg !4050
  ret i32 %26, !dbg !4050
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !44, globals: !121)
!1 = !DIFile(filename: "line13-privsep.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/bits/socket_type.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!7 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!8 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!9 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!10 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!11 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!12 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!13 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!14 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 40, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!18 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!19 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!20 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!21 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!22 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!23 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!24 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!25 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!26 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!27 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!28 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!29 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!30 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!31 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!32 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!33 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!34 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!35 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!36 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!37 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!38 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!39 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!40 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!41 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!42 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!43 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!44 = !{!45, !50, !52, !109, !114, !115, !116, !93, !117, !51, !119}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 109, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !48, line: 172, baseType: !49)
!48 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!49 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxyspec_t", file: !56, line: 54, baseType: !57)
!56 = !DIFile(filename: "opts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxyspec", file: !56, line: 37, size: 2496, align: 64, elements: !58)
!58 = !{!59, !61, !62, !63, !64, !79, !82, !83, !84, !85, !87, !102, !107}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !57, file: !56, line: 38, baseType: !60, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "http", scope: !57, file: !56, line: 39, baseType: !60, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !57, file: !56, line: 40, baseType: !60, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !57, file: !56, line: 41, baseType: !60, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addr", scope: !57, file: !56, line: 42, baseType: !65, size: 1024, align: 64, offset: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !66, line: 166, size: 1024, align: 64, elements: !67)
!66 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!67 = !{!68, !72, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !65, file: !66, line: 168, baseType: !69, size: 16, align: 16)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !70, line: 28, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!71 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !65, file: !66, line: 169, baseType: !73, size: 944, align: 8, offset: 16)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 944, align: 8, elements: !75)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !{!76}
!76 = !DISubrange(count: 118)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !65, file: !66, line: 170, baseType: !78, size: 64, align: 64, offset: 960)
!78 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addrlen", scope: !57, file: !56, line: 43, baseType: !80, size: 32, align: 32, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !66, line: 33, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !48, line: 189, baseType: !60)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addr", scope: !57, file: !56, line: 47, baseType: !65, size: 1024, align: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addrlen", scope: !57, file: !56, line: 48, baseType: !80, size: 32, align: 32, offset: 2176)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sni_port", scope: !57, file: !56, line: 49, baseType: !71, size: 16, align: 16, offset: 2208)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "natengine", scope: !57, file: !56, line: 50, baseType: !86, size: 64, align: 64, offset: 2240)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "natlookup", scope: !57, file: !56, line: 51, baseType: !88, size: 64, align: 64, offset: 2304)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !89, line: 39, baseType: !90)
!89 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!51, !93, !101, !51, !93, !80}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !66, line: 153, size: 128, align: 16, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !94, file: !66, line: 155, baseType: !69, size: 16, align: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !94, file: !66, line: 156, baseType: !98, size: 112, align: 8, offset: 16)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 112, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 14)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "natsocket", scope: !57, file: !56, line: 52, baseType: !103, size: 64, align: 64, offset: 2368)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !89, line: 41, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!51, !51}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !56, line: 53, baseType: !108, size: 64, align: 64, offset: 2432)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !110, line: 85, baseType: !111)
!110 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !51}
!114 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!115 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !118, line: 54, baseType: !49)
!118 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!121 = !{!122, !124, !129, !130, !131, !132, !133, !134}
!122 = distinct !DIGlobalVariable(name: "privsep_fastpath", scope: !0, file: !123, line: 83, type: !51, isLocal: true, isDefinition: true, variable: i32* @privsep_fastpath)
!123 = !DIFile(filename: "privsep.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!124 = distinct !DIGlobalVariable(name: "received_sighup", scope: !0, file: !123, line: 86, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sighup)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !110, line: 40, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !128, line: 22, baseType: !51)
!128 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!129 = distinct !DIGlobalVariable(name: "received_sigint", scope: !0, file: !123, line: 87, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sigint)
!130 = distinct !DIGlobalVariable(name: "received_sigquit", scope: !0, file: !123, line: 88, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sigquit)
!131 = distinct !DIGlobalVariable(name: "received_sigchld", scope: !0, file: !123, line: 90, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sigchld)
!132 = distinct !DIGlobalVariable(name: "received_sigusr1", scope: !0, file: !123, line: 91, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sigusr1)
!133 = distinct !DIGlobalVariable(name: "selfpipe_wrfd", scope: !0, file: !123, line: 93, type: !125, isLocal: true, isDefinition: true, variable: i32* @selfpipe_wrfd)
!134 = distinct !DIGlobalVariable(name: "received_sigterm", scope: !0, file: !123, line: 89, type: !125, isLocal: true, isDefinition: true, variable: i32* @received_sigterm)
!135 = !{i32 2, !"Dwarf Version", i32 4}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!138 = distinct !DISubprogram(name: "privsep_client_openfile", scope: !123, file: !123, line: 703, type: !139, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!139 = !DISubroutineType(types: !140)
!140 = !{!51, !51, !141, !51}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!143 = !{}
!144 = !DILocalVariable(name: "clisock", arg: 1, scope: !138, file: !123, line: 703, type: !51)
!145 = !DIExpression()
!146 = !DILocation(line: 703, column: 29, scope: !138)
!147 = !DILocalVariable(name: "fn", arg: 2, scope: !138, file: !123, line: 703, type: !141)
!148 = !DILocation(line: 703, column: 50, scope: !138)
!149 = !DILocalVariable(name: "mkpath", arg: 3, scope: !138, file: !123, line: 703, type: !51)
!150 = !DILocation(line: 703, column: 58, scope: !138)
!151 = !DILocalVariable(name: "ans", scope: !138, file: !123, line: 705, type: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 40, align: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 5)
!155 = !DILocation(line: 705, column: 7, scope: !138)
!156 = !DILocation(line: 706, column: 22, scope: !138)
!157 = !DILocation(line: 706, column: 15, scope: !138)
!158 = !DILocation(line: 706, column: 13, scope: !138)
!159 = !DILocation(line: 706, column: 2, scope: !160)
!160 = !DILexicalBlockFile(scope: !138, file: !123, discriminator: 1)
!161 = !DILocation(line: 706, column: 2, scope: !138)
!162 = !DILocalVariable(name: "req", scope: !138, file: !123, line: 706, type: !163)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: -1)
!166 = !DIExpression(DW_OP_deref)
!167 = !DILocation(line: 706, column: 7, scope: !138)
!168 = !DILocalVariable(name: "fd", scope: !138, file: !123, line: 707, type: !51)
!169 = !DILocation(line: 707, column: 6, scope: !138)
!170 = !DILocalVariable(name: "n", scope: !138, file: !123, line: 708, type: !45)
!171 = !DILocation(line: 708, column: 10, scope: !138)
!172 = !DILocation(line: 710, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !138, file: !123, line: 710, column: 6)
!174 = !DILocation(line: 710, column: 6, scope: !138)
!175 = !DILocation(line: 711, column: 34, scope: !173)
!176 = !DILocation(line: 711, column: 38, scope: !173)
!177 = !DILocation(line: 711, column: 10, scope: !173)
!178 = !DILocation(line: 711, column: 3, scope: !173)
!179 = !DILocation(line: 713, column: 11, scope: !138)
!180 = !DILocation(line: 713, column: 2, scope: !138)
!181 = !DILocation(line: 713, column: 9, scope: !138)
!182 = !DILocation(line: 714, column: 13, scope: !138)
!183 = !DILocation(line: 714, column: 18, scope: !138)
!184 = !DILocation(line: 714, column: 34, scope: !138)
!185 = !DILocation(line: 714, column: 2, scope: !138)
!186 = !DILocation(line: 716, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !138, file: !123, line: 716, column: 6)
!188 = !DILocation(line: 716, column: 6, scope: !187)
!189 = !DILocation(line: 716, column: 51, scope: !187)
!190 = !DILocation(line: 716, column: 6, scope: !138)
!191 = !DILocation(line: 717, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !123, line: 716, column: 58)
!193 = !DILocation(line: 720, column: 25, scope: !194)
!194 = distinct !DILexicalBlock(scope: !138, file: !123, line: 720, column: 6)
!195 = !DILocation(line: 720, column: 34, scope: !194)
!196 = !DILocation(line: 720, column: 11, scope: !194)
!197 = !DILocation(line: 720, column: 9, scope: !194)
!198 = !DILocation(line: 720, column: 58, scope: !194)
!199 = !DILocation(line: 720, column: 6, scope: !138)
!200 = !DILocation(line: 721, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !123, line: 720, column: 65)
!202 = !DILocation(line: 724, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !138, file: !123, line: 724, column: 6)
!204 = !DILocation(line: 724, column: 8, scope: !203)
!205 = !DILocation(line: 724, column: 6, scope: !138)
!206 = !DILocation(line: 725, column: 4, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !123, line: 724, column: 13)
!208 = !DILocation(line: 725, column: 8, scope: !207)
!209 = !DILocation(line: 726, column: 3, scope: !207)
!210 = !DILocation(line: 729, column: 10, scope: !138)
!211 = !DILocation(line: 729, column: 2, scope: !138)
!212 = !DILocation(line: 731, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !138, file: !123, line: 729, column: 18)
!214 = !DILocation(line: 733, column: 4, scope: !213)
!215 = !DILocation(line: 733, column: 8, scope: !213)
!216 = !DILocation(line: 734, column: 3, scope: !213)
!217 = !DILocation(line: 736, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !123, line: 736, column: 7)
!219 = !DILocation(line: 736, column: 9, scope: !218)
!220 = !DILocation(line: 736, column: 7, scope: !213)
!221 = !DILocation(line: 737, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !123, line: 736, column: 39)
!223 = !DILocation(line: 737, column: 9, scope: !222)
!224 = !DILocation(line: 738, column: 4, scope: !222)
!225 = !DILocation(line: 740, column: 19, scope: !213)
!226 = !DILocation(line: 740, column: 10, scope: !213)
!227 = !DILocation(line: 740, column: 4, scope: !213)
!228 = !DILocation(line: 740, column: 8, scope: !213)
!229 = !DILocation(line: 741, column: 3, scope: !213)
!230 = !DILocation(line: 741, column: 3, scope: !231)
!231 = !DILexicalBlockFile(scope: !213, file: !123, discriminator: 1)
!232 = !DILocation(line: 745, column: 4, scope: !213)
!233 = !DILocation(line: 745, column: 8, scope: !213)
!234 = !DILocation(line: 746, column: 3, scope: !213)
!235 = !DILocation(line: 749, column: 9, scope: !138)
!236 = !DILocation(line: 749, column: 2, scope: !138)
!237 = !DILocation(line: 750, column: 1, scope: !138)
!238 = distinct !DISubprogram(name: "privsep_server_openfile", scope: !123, file: !123, line: 184, type: !239, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!239 = !DISubroutineType(types: !240)
!240 = !{!51, !141, !51}
!241 = !DILocalVariable(name: "fn", arg: 1, scope: !238, file: !123, line: 184, type: !141)
!242 = !DILocation(line: 184, column: 37, scope: !238)
!243 = !DILocalVariable(name: "mkpath", arg: 2, scope: !238, file: !123, line: 184, type: !51)
!244 = !DILocation(line: 184, column: 45, scope: !238)
!245 = !DILocalVariable(name: "fd", scope: !238, file: !123, line: 186, type: !51)
!246 = !DILocation(line: 186, column: 6, scope: !238)
!247 = !DILocalVariable(name: "tmp", scope: !238, file: !123, line: 186, type: !51)
!248 = !DILocation(line: 186, column: 10, scope: !238)
!249 = !DILocation(line: 188, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !238, file: !123, line: 188, column: 6)
!251 = !DILocation(line: 188, column: 6, scope: !238)
!252 = !DILocalVariable(name: "filedir", scope: !253, file: !123, line: 189, type: !86)
!253 = distinct !DILexicalBlock(scope: !250, file: !123, line: 188, column: 14)
!254 = !DILocation(line: 189, column: 9, scope: !253)
!255 = !DILocalVariable(name: "fn2", scope: !253, file: !123, line: 189, type: !86)
!256 = !DILocation(line: 189, column: 19, scope: !253)
!257 = !DILocation(line: 191, column: 16, scope: !253)
!258 = !DILocation(line: 191, column: 9, scope: !253)
!259 = !DILocation(line: 191, column: 7, scope: !253)
!260 = !DILocation(line: 192, column: 8, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !123, line: 192, column: 7)
!262 = !DILocation(line: 192, column: 7, scope: !253)
!263 = !DILocation(line: 193, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !123, line: 192, column: 13)
!265 = !DILocation(line: 193, column: 10, scope: !264)
!266 = !DILocation(line: 193, column: 8, scope: !264)
!267 = !DILocation(line: 195, column: 29, scope: !264)
!268 = !DILocation(line: 195, column: 28, scope: !264)
!269 = !DILocation(line: 195, column: 19, scope: !270)
!270 = !DILexicalBlockFile(scope: !264, file: !123, discriminator: 1)
!271 = !DILocation(line: 195, column: 37, scope: !272)
!272 = !DILexicalBlockFile(scope: !264, file: !123, discriminator: 2)
!273 = !DILocation(line: 195, column: 36, scope: !264)
!274 = !DILocation(line: 194, column: 4, scope: !264)
!275 = !DILocation(line: 196, column: 11, scope: !264)
!276 = !DILocation(line: 196, column: 5, scope: !264)
!277 = !DILocation(line: 196, column: 9, scope: !264)
!278 = !DILocation(line: 197, column: 4, scope: !264)
!279 = !DILocation(line: 199, column: 21, scope: !253)
!280 = !DILocation(line: 199, column: 13, scope: !253)
!281 = !DILocation(line: 199, column: 11, scope: !253)
!282 = !DILocation(line: 200, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !253, file: !123, line: 200, column: 7)
!284 = !DILocation(line: 200, column: 7, scope: !253)
!285 = !DILocation(line: 201, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !123, line: 200, column: 17)
!287 = !DILocation(line: 201, column: 10, scope: !286)
!288 = !DILocation(line: 201, column: 8, scope: !286)
!289 = !DILocation(line: 203, column: 29, scope: !286)
!290 = !DILocation(line: 203, column: 28, scope: !286)
!291 = !DILocation(line: 203, column: 19, scope: !292)
!292 = !DILexicalBlockFile(scope: !286, file: !123, discriminator: 1)
!293 = !DILocation(line: 203, column: 37, scope: !294)
!294 = !DILexicalBlockFile(scope: !286, file: !123, discriminator: 2)
!295 = !DILocation(line: 203, column: 36, scope: !286)
!296 = !DILocation(line: 202, column: 4, scope: !286)
!297 = !DILocation(line: 204, column: 9, scope: !286)
!298 = !DILocation(line: 204, column: 4, scope: !286)
!299 = !DILocation(line: 205, column: 11, scope: !286)
!300 = !DILocation(line: 205, column: 5, scope: !286)
!301 = !DILocation(line: 205, column: 9, scope: !286)
!302 = !DILocation(line: 206, column: 4, scope: !286)
!303 = !DILocation(line: 208, column: 18, scope: !304)
!304 = distinct !DILexicalBlock(scope: !253, file: !123, line: 208, column: 7)
!305 = !DILocation(line: 208, column: 7, scope: !304)
!306 = !DILocation(line: 208, column: 33, scope: !304)
!307 = !DILocation(line: 208, column: 7, scope: !253)
!308 = !DILocation(line: 209, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !123, line: 208, column: 40)
!310 = !DILocation(line: 209, column: 10, scope: !309)
!311 = !DILocation(line: 209, column: 8, scope: !309)
!312 = !DILocation(line: 211, column: 19, scope: !309)
!313 = !DILocation(line: 211, column: 38, scope: !309)
!314 = !DILocation(line: 211, column: 37, scope: !309)
!315 = !DILocation(line: 211, column: 28, scope: !316)
!316 = !DILexicalBlockFile(scope: !309, file: !123, discriminator: 1)
!317 = !DILocation(line: 211, column: 46, scope: !318)
!318 = !DILexicalBlockFile(scope: !309, file: !123, discriminator: 2)
!319 = !DILocation(line: 211, column: 45, scope: !309)
!320 = !DILocation(line: 210, column: 4, scope: !309)
!321 = !DILocation(line: 212, column: 9, scope: !309)
!322 = !DILocation(line: 212, column: 4, scope: !309)
!323 = !DILocation(line: 213, column: 11, scope: !309)
!324 = !DILocation(line: 213, column: 5, scope: !309)
!325 = !DILocation(line: 213, column: 9, scope: !309)
!326 = !DILocation(line: 214, column: 4, scope: !309)
!327 = !DILocation(line: 216, column: 8, scope: !253)
!328 = !DILocation(line: 216, column: 3, scope: !253)
!329 = !DILocation(line: 217, column: 2, scope: !253)
!330 = !DILocation(line: 219, column: 12, scope: !238)
!331 = !DILocation(line: 219, column: 7, scope: !238)
!332 = !DILocation(line: 219, column: 5, scope: !238)
!333 = !DILocation(line: 220, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !238, file: !123, line: 220, column: 6)
!335 = !DILocation(line: 220, column: 9, scope: !334)
!336 = !DILocation(line: 220, column: 6, scope: !238)
!337 = !DILocation(line: 221, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !123, line: 220, column: 16)
!339 = !DILocation(line: 221, column: 9, scope: !338)
!340 = !DILocation(line: 221, column: 7, scope: !338)
!341 = !DILocation(line: 223, column: 18, scope: !338)
!342 = !DILocation(line: 223, column: 32, scope: !338)
!343 = !DILocation(line: 223, column: 31, scope: !338)
!344 = !DILocation(line: 223, column: 22, scope: !345)
!345 = !DILexicalBlockFile(scope: !338, file: !123, discriminator: 1)
!346 = !DILocation(line: 223, column: 40, scope: !347)
!347 = !DILexicalBlockFile(scope: !338, file: !123, discriminator: 2)
!348 = !DILocation(line: 223, column: 39, scope: !338)
!349 = !DILocation(line: 222, column: 3, scope: !338)
!350 = !DILocation(line: 224, column: 10, scope: !338)
!351 = !DILocation(line: 224, column: 4, scope: !338)
!352 = !DILocation(line: 224, column: 8, scope: !338)
!353 = !DILocation(line: 225, column: 3, scope: !338)
!354 = !DILocation(line: 227, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !238, file: !123, line: 227, column: 6)
!356 = !DILocation(line: 227, column: 6, scope: !355)
!357 = !DILocation(line: 227, column: 28, scope: !355)
!358 = !DILocation(line: 227, column: 6, scope: !238)
!359 = !DILocation(line: 228, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !123, line: 227, column: 35)
!361 = !DILocation(line: 228, column: 9, scope: !360)
!362 = !DILocation(line: 228, column: 7, scope: !360)
!363 = !DILocation(line: 230, column: 18, scope: !360)
!364 = !DILocation(line: 230, column: 32, scope: !360)
!365 = !DILocation(line: 230, column: 31, scope: !360)
!366 = !DILocation(line: 230, column: 22, scope: !367)
!367 = !DILexicalBlockFile(scope: !360, file: !123, discriminator: 1)
!368 = !DILocation(line: 230, column: 40, scope: !369)
!369 = !DILexicalBlockFile(scope: !360, file: !123, discriminator: 2)
!370 = !DILocation(line: 230, column: 39, scope: !360)
!371 = !DILocation(line: 229, column: 3, scope: !360)
!372 = !DILocation(line: 231, column: 10, scope: !360)
!373 = !DILocation(line: 231, column: 4, scope: !360)
!374 = !DILocation(line: 231, column: 8, scope: !360)
!375 = !DILocation(line: 232, column: 3, scope: !360)
!376 = !DILocation(line: 234, column: 9, scope: !238)
!377 = !DILocation(line: 234, column: 2, scope: !238)
!378 = !DILocation(line: 235, column: 1, scope: !238)
!379 = distinct !DISubprogram(name: "privsep_client_opensock", scope: !123, file: !123, line: 753, type: !380, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!380 = !DISubroutineType(types: !381)
!381 = !{!51, !51, !53}
!382 = !DILocalVariable(name: "clisock", arg: 1, scope: !379, file: !123, line: 753, type: !51)
!383 = !DILocation(line: 753, column: 29, scope: !379)
!384 = !DILocalVariable(name: "spec", arg: 2, scope: !379, file: !123, line: 753, type: !53)
!385 = !DILocation(line: 753, column: 57, scope: !379)
!386 = !DILocalVariable(name: "ans", scope: !379, file: !123, line: 755, type: !152)
!387 = !DILocation(line: 755, column: 7, scope: !379)
!388 = !DILocalVariable(name: "req", scope: !379, file: !123, line: 756, type: !389)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 72, align: 8, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 9)
!392 = !DILocation(line: 756, column: 7, scope: !379)
!393 = !DILocalVariable(name: "fd", scope: !379, file: !123, line: 757, type: !51)
!394 = !DILocation(line: 757, column: 6, scope: !379)
!395 = !DILocalVariable(name: "n", scope: !379, file: !123, line: 758, type: !45)
!396 = !DILocation(line: 758, column: 10, scope: !379)
!397 = !DILocation(line: 760, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !379, file: !123, line: 760, column: 6)
!399 = !DILocation(line: 760, column: 6, scope: !379)
!400 = !DILocation(line: 761, column: 34, scope: !398)
!401 = !DILocation(line: 761, column: 10, scope: !398)
!402 = !DILocation(line: 761, column: 3, scope: !398)
!403 = !DILocation(line: 763, column: 2, scope: !379)
!404 = !DILocation(line: 763, column: 9, scope: !379)
!405 = !DILocation(line: 764, column: 37, scope: !379)
!406 = !DILocation(line: 764, column: 27, scope: !379)
!407 = !DILocation(line: 764, column: 2, scope: !379)
!408 = !DILocation(line: 764, column: 35, scope: !379)
!409 = !DILocation(line: 766, column: 20, scope: !410)
!410 = distinct !DILexicalBlock(scope: !379, file: !123, line: 766, column: 6)
!411 = !DILocation(line: 766, column: 29, scope: !410)
!412 = !DILocation(line: 766, column: 6, scope: !410)
!413 = !DILocation(line: 766, column: 51, scope: !410)
!414 = !DILocation(line: 766, column: 6, scope: !379)
!415 = !DILocation(line: 767, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !410, file: !123, line: 766, column: 58)
!417 = !DILocation(line: 770, column: 25, scope: !418)
!418 = distinct !DILexicalBlock(scope: !379, file: !123, line: 770, column: 6)
!419 = !DILocation(line: 770, column: 34, scope: !418)
!420 = !DILocation(line: 770, column: 11, scope: !418)
!421 = !DILocation(line: 770, column: 9, scope: !418)
!422 = !DILocation(line: 770, column: 58, scope: !418)
!423 = !DILocation(line: 770, column: 6, scope: !379)
!424 = !DILocation(line: 771, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !123, line: 770, column: 65)
!426 = !DILocation(line: 774, column: 6, scope: !427)
!427 = distinct !DILexicalBlock(scope: !379, file: !123, line: 774, column: 6)
!428 = !DILocation(line: 774, column: 8, scope: !427)
!429 = !DILocation(line: 774, column: 6, scope: !379)
!430 = !DILocation(line: 775, column: 4, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !123, line: 774, column: 13)
!432 = !DILocation(line: 775, column: 8, scope: !431)
!433 = !DILocation(line: 776, column: 3, scope: !431)
!434 = !DILocation(line: 779, column: 10, scope: !379)
!435 = !DILocation(line: 779, column: 2, scope: !379)
!436 = !DILocation(line: 781, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !379, file: !123, line: 779, column: 18)
!438 = !DILocation(line: 783, column: 4, scope: !437)
!439 = !DILocation(line: 783, column: 8, scope: !437)
!440 = !DILocation(line: 784, column: 3, scope: !437)
!441 = !DILocation(line: 786, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !123, line: 786, column: 7)
!443 = !DILocation(line: 786, column: 9, scope: !442)
!444 = !DILocation(line: 786, column: 7, scope: !437)
!445 = !DILocation(line: 787, column: 5, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !123, line: 786, column: 39)
!447 = !DILocation(line: 787, column: 9, scope: !446)
!448 = !DILocation(line: 788, column: 4, scope: !446)
!449 = !DILocation(line: 790, column: 19, scope: !437)
!450 = !DILocation(line: 790, column: 10, scope: !437)
!451 = !DILocation(line: 790, column: 4, scope: !437)
!452 = !DILocation(line: 790, column: 8, scope: !437)
!453 = !DILocation(line: 791, column: 3, scope: !437)
!454 = !DILocation(line: 791, column: 3, scope: !455)
!455 = !DILexicalBlockFile(scope: !437, file: !123, discriminator: 1)
!456 = !DILocation(line: 795, column: 4, scope: !437)
!457 = !DILocation(line: 795, column: 8, scope: !437)
!458 = !DILocation(line: 796, column: 3, scope: !437)
!459 = !DILocation(line: 799, column: 9, scope: !379)
!460 = !DILocation(line: 799, column: 2, scope: !379)
!461 = !DILocation(line: 800, column: 1, scope: !379)
!462 = distinct !DISubprogram(name: "privsep_server_opensock", scope: !123, file: !123, line: 250, type: !463, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!463 = !DISubroutineType(types: !464)
!464 = !{!51, !53}
!465 = !DILocalVariable(name: "spec", arg: 1, scope: !462, file: !123, line: 250, type: !53)
!466 = !DILocation(line: 250, column: 44, scope: !462)
!467 = !DILocalVariable(name: "fd", scope: !462, file: !123, line: 252, type: !51)
!468 = !DILocation(line: 252, column: 17, scope: !462)
!469 = !DILocalVariable(name: "on", scope: !462, file: !123, line: 253, type: !51)
!470 = !DILocation(line: 253, column: 6, scope: !462)
!471 = !DILocalVariable(name: "rv", scope: !462, file: !123, line: 254, type: !51)
!472 = !DILocation(line: 254, column: 6, scope: !462)
!473 = !DILocation(line: 256, column: 14, scope: !462)
!474 = !DILocation(line: 256, column: 20, scope: !462)
!475 = !DILocation(line: 256, column: 32, scope: !462)
!476 = !DILocation(line: 256, column: 7, scope: !462)
!477 = !DILocation(line: 256, column: 5, scope: !462)
!478 = !DILocation(line: 257, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !462, file: !123, line: 257, column: 6)
!480 = !DILocation(line: 257, column: 9, scope: !479)
!481 = !DILocation(line: 257, column: 6, scope: !462)
!482 = !DILocation(line: 259, column: 28, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !123, line: 257, column: 16)
!484 = !DILocation(line: 259, column: 27, scope: !483)
!485 = !DILocation(line: 259, column: 18, scope: !486)
!486 = !DILexicalBlockFile(scope: !483, file: !123, discriminator: 1)
!487 = !DILocation(line: 259, column: 36, scope: !488)
!488 = !DILexicalBlockFile(scope: !483, file: !123, discriminator: 2)
!489 = !DILocation(line: 259, column: 35, scope: !483)
!490 = !DILocation(line: 258, column: 3, scope: !483)
!491 = !DILocation(line: 260, column: 22, scope: !483)
!492 = !DILocation(line: 260, column: 3, scope: !483)
!493 = !DILocation(line: 261, column: 3, scope: !483)
!494 = !DILocation(line: 264, column: 38, scope: !462)
!495 = !DILocation(line: 264, column: 7, scope: !462)
!496 = !DILocation(line: 264, column: 5, scope: !462)
!497 = !DILocation(line: 265, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !462, file: !123, line: 265, column: 6)
!499 = !DILocation(line: 265, column: 9, scope: !498)
!500 = !DILocation(line: 265, column: 6, scope: !462)
!501 = !DILocation(line: 267, column: 28, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !123, line: 265, column: 16)
!503 = !DILocation(line: 267, column: 27, scope: !502)
!504 = !DILocation(line: 267, column: 18, scope: !505)
!505 = !DILexicalBlockFile(scope: !502, file: !123, discriminator: 1)
!506 = !DILocation(line: 267, column: 36, scope: !507)
!507 = !DILexicalBlockFile(scope: !502, file: !123, discriminator: 2)
!508 = !DILocation(line: 267, column: 35, scope: !502)
!509 = !DILocation(line: 266, column: 3, scope: !502)
!510 = !DILocation(line: 268, column: 22, scope: !502)
!511 = !DILocation(line: 268, column: 3, scope: !502)
!512 = !DILocation(line: 269, column: 3, scope: !502)
!513 = !DILocation(line: 272, column: 18, scope: !462)
!514 = !DILocation(line: 272, column: 47, scope: !462)
!515 = !DILocation(line: 272, column: 7, scope: !462)
!516 = !DILocation(line: 272, column: 5, scope: !462)
!517 = !DILocation(line: 273, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !462, file: !123, line: 273, column: 6)
!519 = !DILocation(line: 273, column: 9, scope: !518)
!520 = !DILocation(line: 273, column: 6, scope: !462)
!521 = !DILocation(line: 275, column: 28, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !123, line: 273, column: 16)
!523 = !DILocation(line: 275, column: 27, scope: !522)
!524 = !DILocation(line: 275, column: 18, scope: !525)
!525 = !DILexicalBlockFile(scope: !522, file: !123, discriminator: 1)
!526 = !DILocation(line: 275, column: 36, scope: !527)
!527 = !DILexicalBlockFile(scope: !522, file: !123, discriminator: 2)
!528 = !DILocation(line: 275, column: 35, scope: !522)
!529 = !DILocation(line: 274, column: 3, scope: !522)
!530 = !DILocation(line: 276, column: 22, scope: !522)
!531 = !DILocation(line: 276, column: 3, scope: !522)
!532 = !DILocation(line: 277, column: 3, scope: !522)
!533 = !DILocation(line: 280, column: 43, scope: !462)
!534 = !DILocation(line: 280, column: 7, scope: !462)
!535 = !DILocation(line: 280, column: 5, scope: !462)
!536 = !DILocation(line: 281, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !462, file: !123, line: 281, column: 6)
!538 = !DILocation(line: 281, column: 9, scope: !537)
!539 = !DILocation(line: 281, column: 6, scope: !462)
!540 = !DILocation(line: 283, column: 28, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !123, line: 281, column: 16)
!542 = !DILocation(line: 283, column: 27, scope: !541)
!543 = !DILocation(line: 283, column: 18, scope: !544)
!544 = !DILexicalBlockFile(scope: !541, file: !123, discriminator: 1)
!545 = !DILocation(line: 282, column: 3, scope: !541)
!546 = !DILocation(line: 284, column: 22, scope: !541)
!547 = !DILocation(line: 284, column: 3, scope: !541)
!548 = !DILocation(line: 285, column: 3, scope: !541)
!549 = !DILocation(line: 288, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !462, file: !123, line: 288, column: 6)
!551 = !DILocation(line: 288, column: 12, scope: !550)
!552 = !DILocation(line: 288, column: 22, scope: !550)
!553 = !DILocation(line: 288, column: 26, scope: !554)
!554 = !DILexicalBlockFile(scope: !550, file: !123, discriminator: 1)
!555 = !DILocation(line: 288, column: 32, scope: !554)
!556 = !DILocation(line: 288, column: 42, scope: !554)
!557 = !DILocation(line: 288, column: 46, scope: !554)
!558 = !DILocation(line: 288, column: 6, scope: !554)
!559 = !DILocation(line: 289, column: 3, scope: !560)
!560 = distinct !DILexicalBlock(scope: !550, file: !123, line: 288, column: 54)
!561 = !DILocation(line: 290, column: 22, scope: !560)
!562 = !DILocation(line: 290, column: 3, scope: !560)
!563 = !DILocation(line: 291, column: 3, scope: !560)
!564 = !DILocation(line: 294, column: 12, scope: !462)
!565 = !DILocation(line: 294, column: 16, scope: !462)
!566 = !DILocation(line: 294, column: 36, scope: !462)
!567 = !DILocation(line: 294, column: 42, scope: !462)
!568 = !DILocation(line: 295, column: 12, scope: !462)
!569 = !DILocation(line: 295, column: 18, scope: !462)
!570 = !DILocation(line: 294, column: 7, scope: !462)
!571 = !DILocation(line: 294, column: 5, scope: !462)
!572 = !DILocation(line: 296, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !462, file: !123, line: 296, column: 6)
!574 = !DILocation(line: 296, column: 9, scope: !573)
!575 = !DILocation(line: 296, column: 6, scope: !462)
!576 = !DILocation(line: 297, column: 55, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !123, line: 296, column: 16)
!578 = !DILocation(line: 297, column: 54, scope: !577)
!579 = !DILocation(line: 297, column: 45, scope: !580)
!580 = !DILexicalBlockFile(scope: !577, file: !123, discriminator: 1)
!581 = !DILocation(line: 297, column: 3, scope: !582)
!582 = !DILexicalBlockFile(scope: !577, file: !123, discriminator: 2)
!583 = !DILocation(line: 298, column: 22, scope: !577)
!584 = !DILocation(line: 298, column: 3, scope: !577)
!585 = !DILocation(line: 299, column: 3, scope: !577)
!586 = !DILocation(line: 302, column: 9, scope: !462)
!587 = !DILocation(line: 302, column: 2, scope: !462)
!588 = !DILocation(line: 303, column: 1, scope: !462)
!589 = distinct !DISubprogram(name: "privsep_client_certfile", scope: !123, file: !123, line: 803, type: !590, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!590 = !DISubroutineType(types: !591)
!591 = !{!51, !51, !141}
!592 = !DILocalVariable(name: "clisock", arg: 1, scope: !589, file: !123, line: 803, type: !51)
!593 = !DILocation(line: 803, column: 29, scope: !589)
!594 = !DILocalVariable(name: "fn", arg: 2, scope: !589, file: !123, line: 803, type: !141)
!595 = !DILocation(line: 803, column: 50, scope: !589)
!596 = !DILocalVariable(name: "ans", scope: !589, file: !123, line: 805, type: !152)
!597 = !DILocation(line: 805, column: 7, scope: !589)
!598 = !DILocation(line: 806, column: 22, scope: !589)
!599 = !DILocation(line: 806, column: 15, scope: !589)
!600 = !DILocation(line: 806, column: 13, scope: !589)
!601 = !DILocation(line: 806, column: 2, scope: !602)
!602 = !DILexicalBlockFile(scope: !589, file: !123, discriminator: 1)
!603 = !DILocation(line: 806, column: 2, scope: !589)
!604 = !DILocalVariable(name: "req", scope: !589, file: !123, line: 806, type: !163)
!605 = !DILocation(line: 806, column: 7, scope: !589)
!606 = !DILocalVariable(name: "fd", scope: !589, file: !123, line: 807, type: !51)
!607 = !DILocation(line: 807, column: 6, scope: !589)
!608 = !DILocalVariable(name: "n", scope: !589, file: !123, line: 808, type: !45)
!609 = !DILocation(line: 808, column: 10, scope: !589)
!610 = !DILocation(line: 810, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !589, file: !123, line: 810, column: 6)
!612 = !DILocation(line: 810, column: 6, scope: !589)
!613 = !DILocation(line: 811, column: 34, scope: !611)
!614 = !DILocation(line: 811, column: 10, scope: !611)
!615 = !DILocation(line: 811, column: 3, scope: !611)
!616 = !DILocation(line: 813, column: 2, scope: !589)
!617 = !DILocation(line: 813, column: 9, scope: !589)
!618 = !DILocation(line: 814, column: 13, scope: !589)
!619 = !DILocation(line: 814, column: 18, scope: !589)
!620 = !DILocation(line: 814, column: 34, scope: !589)
!621 = !DILocation(line: 814, column: 2, scope: !589)
!622 = !DILocation(line: 816, column: 20, scope: !623)
!623 = distinct !DILexicalBlock(scope: !589, file: !123, line: 816, column: 6)
!624 = !DILocation(line: 816, column: 6, scope: !623)
!625 = !DILocation(line: 816, column: 51, scope: !623)
!626 = !DILocation(line: 816, column: 6, scope: !589)
!627 = !DILocation(line: 817, column: 3, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !123, line: 816, column: 58)
!629 = !DILocation(line: 820, column: 25, scope: !630)
!630 = distinct !DILexicalBlock(scope: !589, file: !123, line: 820, column: 6)
!631 = !DILocation(line: 820, column: 34, scope: !630)
!632 = !DILocation(line: 820, column: 11, scope: !630)
!633 = !DILocation(line: 820, column: 9, scope: !630)
!634 = !DILocation(line: 820, column: 58, scope: !630)
!635 = !DILocation(line: 820, column: 6, scope: !589)
!636 = !DILocation(line: 821, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !123, line: 820, column: 65)
!638 = !DILocation(line: 824, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !589, file: !123, line: 824, column: 6)
!640 = !DILocation(line: 824, column: 8, scope: !639)
!641 = !DILocation(line: 824, column: 6, scope: !589)
!642 = !DILocation(line: 825, column: 4, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !123, line: 824, column: 13)
!644 = !DILocation(line: 825, column: 8, scope: !643)
!645 = !DILocation(line: 826, column: 3, scope: !643)
!646 = !DILocation(line: 829, column: 10, scope: !589)
!647 = !DILocation(line: 829, column: 2, scope: !589)
!648 = !DILocation(line: 831, column: 3, scope: !649)
!649 = distinct !DILexicalBlock(scope: !589, file: !123, line: 829, column: 18)
!650 = !DILocation(line: 833, column: 4, scope: !649)
!651 = !DILocation(line: 833, column: 8, scope: !649)
!652 = !DILocation(line: 834, column: 3, scope: !649)
!653 = !DILocation(line: 836, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !123, line: 836, column: 7)
!655 = !DILocation(line: 836, column: 9, scope: !654)
!656 = !DILocation(line: 836, column: 7, scope: !649)
!657 = !DILocation(line: 837, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !123, line: 836, column: 39)
!659 = !DILocation(line: 837, column: 9, scope: !658)
!660 = !DILocation(line: 838, column: 4, scope: !658)
!661 = !DILocation(line: 840, column: 19, scope: !649)
!662 = !DILocation(line: 840, column: 10, scope: !649)
!663 = !DILocation(line: 840, column: 4, scope: !649)
!664 = !DILocation(line: 840, column: 8, scope: !649)
!665 = !DILocation(line: 841, column: 3, scope: !649)
!666 = !DILocation(line: 841, column: 3, scope: !667)
!667 = !DILexicalBlockFile(scope: !649, file: !123, discriminator: 1)
!668 = !DILocation(line: 845, column: 4, scope: !649)
!669 = !DILocation(line: 845, column: 8, scope: !649)
!670 = !DILocation(line: 846, column: 3, scope: !649)
!671 = !DILocation(line: 849, column: 9, scope: !589)
!672 = !DILocation(line: 849, column: 2, scope: !589)
!673 = !DILocation(line: 850, column: 1, scope: !589)
!674 = distinct !DISubprogram(name: "privsep_server_certfile", scope: !123, file: !123, line: 316, type: !675, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!675 = !DISubroutineType(types: !676)
!676 = !{!51, !141}
!677 = !DILocalVariable(name: "fn", arg: 1, scope: !674, file: !123, line: 316, type: !141)
!678 = !DILocation(line: 316, column: 37, scope: !674)
!679 = !DILocalVariable(name: "fd", scope: !674, file: !123, line: 318, type: !51)
!680 = !DILocation(line: 318, column: 6, scope: !674)
!681 = !DILocation(line: 320, column: 12, scope: !674)
!682 = !DILocation(line: 320, column: 7, scope: !674)
!683 = !DILocation(line: 320, column: 5, scope: !674)
!684 = !DILocation(line: 321, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !123, line: 321, column: 6)
!686 = !DILocation(line: 321, column: 9, scope: !685)
!687 = !DILocation(line: 321, column: 15, scope: !685)
!688 = !DILocation(line: 321, column: 19, scope: !689)
!689 = !DILexicalBlockFile(scope: !685, file: !123, discriminator: 1)
!690 = !DILocation(line: 321, column: 18, scope: !689)
!691 = !DILocation(line: 321, column: 23, scope: !689)
!692 = !DILocation(line: 321, column: 6, scope: !689)
!693 = !DILocation(line: 323, column: 18, scope: !694)
!694 = distinct !DILexicalBlock(scope: !685, file: !123, line: 321, column: 34)
!695 = !DILocation(line: 323, column: 32, scope: !694)
!696 = !DILocation(line: 323, column: 31, scope: !694)
!697 = !DILocation(line: 323, column: 22, scope: !698)
!698 = !DILexicalBlockFile(scope: !694, file: !123, discriminator: 1)
!699 = !DILocation(line: 323, column: 40, scope: !700)
!700 = !DILexicalBlockFile(scope: !694, file: !123, discriminator: 2)
!701 = !DILocation(line: 323, column: 39, scope: !694)
!702 = !DILocation(line: 322, column: 3, scope: !694)
!703 = !DILocation(line: 324, column: 3, scope: !694)
!704 = !DILocation(line: 326, column: 9, scope: !674)
!705 = !DILocation(line: 326, column: 2, scope: !674)
!706 = !DILocation(line: 327, column: 1, scope: !674)
!707 = distinct !DISubprogram(name: "privsep_client_close", scope: !123, file: !123, line: 853, type: !105, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!708 = !DILocalVariable(name: "clisock", arg: 1, scope: !707, file: !123, line: 853, type: !51)
!709 = !DILocation(line: 853, column: 26, scope: !707)
!710 = !DILocalVariable(name: "req", scope: !707, file: !123, line: 855, type: !711)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 8, align: 8, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 1)
!714 = !DILocation(line: 855, column: 7, scope: !707)
!715 = !DILocation(line: 857, column: 2, scope: !707)
!716 = !DILocation(line: 857, column: 9, scope: !707)
!717 = !DILocation(line: 859, column: 20, scope: !718)
!718 = distinct !DILexicalBlock(scope: !707, file: !123, line: 859, column: 6)
!719 = !DILocation(line: 859, column: 29, scope: !718)
!720 = !DILocation(line: 859, column: 6, scope: !718)
!721 = !DILocation(line: 859, column: 51, scope: !718)
!722 = !DILocation(line: 859, column: 6, scope: !707)
!723 = !DILocation(line: 860, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !718, file: !123, line: 859, column: 58)
!725 = !DILocation(line: 860, column: 3, scope: !724)
!726 = !DILocation(line: 861, column: 3, scope: !724)
!727 = !DILocation(line: 864, column: 8, scope: !707)
!728 = !DILocation(line: 864, column: 2, scope: !707)
!729 = !DILocation(line: 865, column: 2, scope: !707)
!730 = !DILocation(line: 866, column: 1, scope: !707)
!731 = distinct !DISubprogram(name: "privsep_fork", scope: !123, file: !123, line: 876, type: !732, isLocal: false, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!732 = !DISubroutineType(types: !733)
!733 = !{!51, !734, !50, !896}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "opts_t", file: !56, line: 126, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opts", file: !56, line: 56, size: 1920, align: 64, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !736, file: !56, line: 57, baseType: !60, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !736, file: !56, line: 58, baseType: !60, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sslcomp", scope: !736, file: !56, line: 59, baseType: !60, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "no_ssl3", scope: !736, file: !56, line: 64, baseType: !60, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls10", scope: !736, file: !56, line: 67, baseType: !60, size: 1, align: 32, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls11", scope: !736, file: !56, line: 70, baseType: !60, size: 1, align: 32, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls12", scope: !736, file: !56, line: 73, baseType: !60, size: 1, align: 32, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "passthrough", scope: !736, file: !56, line: 75, baseType: !60, size: 1, align: 32, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "deny_ocsp", scope: !736, file: !56, line: 76, baseType: !60, size: 1, align: 32, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isdir", scope: !736, file: !56, line: 77, baseType: !60, size: 1, align: 32, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isspec", scope: !736, file: !56, line: 78, baseType: !60, size: 1, align: 32, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isdir", scope: !736, file: !56, line: 79, baseType: !60, size: 1, align: 32, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isspec", scope: !736, file: !56, line: 80, baseType: !60, size: 1, align: 32, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "certgen_writeall", scope: !736, file: !56, line: 84, baseType: !60, size: 1, align: 32, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "openssl_engine", scope: !736, file: !56, line: 86, baseType: !86, size: 64, align: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !736, file: !56, line: 88, baseType: !86, size: 64, align: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "certgendir", scope: !736, file: !56, line: 89, baseType: !86, size: 64, align: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tgcrtdir", scope: !736, file: !56, line: 90, baseType: !86, size: 64, align: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dropuser", scope: !736, file: !56, line: 91, baseType: !86, size: 64, align: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dropgroup", scope: !736, file: !56, line: 92, baseType: !86, size: 64, align: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "jaildir", scope: !736, file: !56, line: 93, baseType: !86, size: 64, align: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !736, file: !56, line: 94, baseType: !86, size: 64, align: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "conffile", scope: !736, file: !56, line: 95, baseType: !86, size: 64, align: 64, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "connectlog", scope: !736, file: !56, line: 96, baseType: !86, size: 64, align: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog", scope: !736, file: !56, line: 97, baseType: !86, size: 64, align: 64, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_basedir", scope: !736, file: !56, line: 98, baseType: !86, size: 64, align: 64, offset: 768)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "masterkeylog", scope: !736, file: !56, line: 99, baseType: !86, size: 64, align: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog", scope: !736, file: !56, line: 100, baseType: !86, size: 64, align: 64, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_basedir", scope: !736, file: !56, line: 101, baseType: !86, size: 64, align: 64, offset: 960)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mirrorif", scope: !736, file: !56, line: 103, baseType: !86, size: 64, align: 64, offset: 1024)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mirrortarget", scope: !736, file: !56, line: 104, baseType: !86, size: 64, align: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sslmethod", scope: !736, file: !56, line: 106, baseType: !770, size: 64, align: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !776, line: 374, baseType: !777)
!776 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !776, line: 438, size: 1856, align: 64, elements: !778)
!778 = !{!779, !780, !2379, !2383, !2384, !2385, !2386, !2390, !2391, !2395, !2396, !2397, !2398, !2402, !2406, !2410, !2411, !2415, !2419, !2423, !2427, !2431, !2435, !2439, !2445, !2446, !2449, !2450, !2457}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !777, file: !776, line: 439, baseType: !51, size: 32, align: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !777, file: !776, line: 440, baseType: !781, size: 64, align: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!51, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !786, line: 178, baseType: !787)
!786 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !776, line: 1422, size: 6592, align: 64, elements: !788)
!788 = !{!789, !790, !791, !792, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !900, !901, !902, !903, !906, !907, !970, !1445, !1877, !1878, !1882, !1883, !1884, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1916, !1917, !1918, !1919, !1926, !1927, !2096, !2100, !2101, !2102, !2106, !2110, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2319, !2320, !2321, !2322, !2323, !2324, !2327, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2347, !2352, !2353, !2360, !2361, !2362, !2363, !2364, !2365, !2372, !2373, !2374, !2375, !2376, !2377, !2378}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !787, file: !776, line: 1427, baseType: !51, size: 32, align: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !776, line: 1429, baseType: !51, size: 32, align: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !787, file: !776, line: 1431, baseType: !773, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !787, file: !776, line: 1438, baseType: !793, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !795, line: 238, baseType: !796)
!795 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !795, line: 325, size: 896, align: 64, elements: !797)
!797 = !{!798, !836, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !796, file: !795, line: 326, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !795, line: 323, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !795, line: 312, size: 640, align: 64, elements: !802)
!802 = !{!803, !804, !805, !809, !813, !817, !818, !822, !826, !827}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !795, line: 313, baseType: !51, size: 32, align: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !801, file: !795, line: 314, baseType: !141, size: 64, align: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !801, file: !795, line: 315, baseType: !806, size: 64, align: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64, align: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!51, !793, !141, !51}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !801, file: !795, line: 316, baseType: !810, size: 64, align: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!51, !793, !86, !51}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !801, file: !795, line: 317, baseType: !814, size: 64, align: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64, align: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!51, !793, !141}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !801, file: !795, line: 318, baseType: !810, size: 64, align: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !801, file: !795, line: 319, baseType: !819, size: 64, align: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, align: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!49, !793, !51, !49, !116}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !801, file: !795, line: 320, baseType: !823, size: 64, align: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!51, !793}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !801, file: !795, line: 321, baseType: !823, size: 64, align: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !801, file: !795, line: 322, baseType: !828, size: 64, align: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!49, !793, !51, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !795, line: 309, baseType: !833)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835, !51, !141, !51, !49, !49}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !796, file: !795, line: 328, baseType: !837, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!49, !835, !51, !141, !51, !49, !49}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !796, file: !795, line: 329, baseType: !86, size: 64, align: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !796, file: !795, line: 330, baseType: !51, size: 32, align: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !796, file: !795, line: 331, baseType: !51, size: 32, align: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !795, line: 332, baseType: !51, size: 32, align: 32, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !796, file: !795, line: 333, baseType: !51, size: 32, align: 32, offset: 288)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !796, file: !795, line: 334, baseType: !51, size: 32, align: 32, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !796, file: !795, line: 335, baseType: !116, size: 64, align: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !796, file: !795, line: 336, baseType: !835, size: 64, align: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !796, file: !795, line: 337, baseType: !835, size: 64, align: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !796, file: !795, line: 338, baseType: !51, size: 32, align: 32, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !796, file: !795, line: 339, baseType: !78, size: 64, align: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !796, file: !795, line: 340, baseType: !78, size: 64, align: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !796, file: !795, line: 341, baseType: !853, size: 128, align: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !786, line: 195, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !855, line: 292, size: 128, align: 64, elements: !856)
!855 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!856 = !{!857, !877}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !854, file: !855, line: 293, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !855, line: 297, size: 256, align: 64, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !859, file: !855, line: 297, baseType: !862, size: 256, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !863, line: 72, baseType: !864)
!863 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !863, line: 66, size: 256, align: 64, elements: !865)
!865 = !{!866, !867, !869, !870, !871}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !864, file: !863, line: 67, baseType: !51, size: 32, align: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !864, file: !863, line: 68, baseType: !868, size: 64, align: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !864, file: !863, line: 69, baseType: !51, size: 32, align: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !864, file: !863, line: 70, baseType: !51, size: 32, align: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !864, file: !863, line: 71, baseType: !872, size: 64, align: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, align: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!51, !875, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !854, file: !855, line: 295, baseType: !51, size: 32, align: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !787, file: !776, line: 1440, baseType: !793, size: 64, align: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !787, file: !776, line: 1442, baseType: !793, size: 64, align: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !787, file: !776, line: 1455, baseType: !51, size: 32, align: 32, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !787, file: !776, line: 1457, baseType: !51, size: 32, align: 32, offset: 352)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !787, file: !776, line: 1458, baseType: !781, size: 64, align: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !787, file: !776, line: 1467, baseType: !51, size: 32, align: 32, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !787, file: !776, line: 1474, baseType: !51, size: 32, align: 32, offset: 480)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !787, file: !776, line: 1476, baseType: !51, size: 32, align: 32, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !787, file: !776, line: 1478, baseType: !51, size: 32, align: 32, offset: 544)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !787, file: !776, line: 1480, baseType: !51, size: 32, align: 32, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !787, file: !776, line: 1482, baseType: !51, size: 32, align: 32, offset: 608)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !787, file: !776, line: 1483, baseType: !890, size: 64, align: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !786, line: 127, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !893, line: 77, size: 192, align: 64, elements: !894)
!893 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!894 = !{!895, !898, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !892, file: !893, line: 78, baseType: !896, size: 64, align: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !897, line: 216, baseType: !78)
!897 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !893, line: 79, baseType: !86, size: 64, align: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !892, file: !893, line: 80, baseType: !896, size: 64, align: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !787, file: !776, line: 1484, baseType: !116, size: 64, align: 64, offset: 704)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !787, file: !776, line: 1486, baseType: !51, size: 32, align: 32, offset: 768)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !787, file: !776, line: 1487, baseType: !51, size: 32, align: 32, offset: 800)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !787, file: !776, line: 1489, baseType: !904, size: 64, align: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64, align: 64)
!905 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !787, file: !776, line: 1490, baseType: !60, size: 32, align: 32, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !787, file: !776, line: 1491, baseType: !908, size: 64, align: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !910, line: 163, size: 2752, align: 64, elements: !911)
!910 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!911 = !{!912, !913, !914, !915, !916, !917, !918, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !944, !945, !949, !950, !954, !955, !956}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !909, file: !910, line: 164, baseType: !51, size: 32, align: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !909, file: !910, line: 165, baseType: !51, size: 32, align: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !909, file: !910, line: 166, baseType: !51, size: 32, align: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !909, file: !910, line: 167, baseType: !51, size: 32, align: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !909, file: !910, line: 171, baseType: !60, size: 32, align: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !909, file: !910, line: 172, baseType: !51, size: 32, align: 32, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !909, file: !910, line: 173, baseType: !919, size: 64, align: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64, align: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !909, file: !910, line: 174, baseType: !51, size: 32, align: 32, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !909, file: !910, line: 175, baseType: !51, size: 32, align: 32, offset: 288)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !909, file: !910, line: 176, baseType: !51, size: 32, align: 32, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !909, file: !910, line: 178, baseType: !51, size: 32, align: 32, offset: 352)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !909, file: !910, line: 179, baseType: !51, size: 32, align: 32, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !909, file: !910, line: 180, baseType: !904, size: 64, align: 64, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !909, file: !910, line: 181, baseType: !904, size: 64, align: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !909, file: !910, line: 182, baseType: !904, size: 64, align: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !909, file: !910, line: 184, baseType: !60, size: 32, align: 32, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !909, file: !910, line: 185, baseType: !60, size: 32, align: 32, offset: 672)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !909, file: !910, line: 186, baseType: !51, size: 32, align: 32, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !909, file: !910, line: 187, baseType: !60, size: 32, align: 32, offset: 736)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !909, file: !910, line: 188, baseType: !51, size: 32, align: 32, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !909, file: !910, line: 189, baseType: !904, size: 64, align: 64, offset: 832)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !909, file: !910, line: 190, baseType: !904, size: 64, align: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !909, file: !910, line: 191, baseType: !904, size: 64, align: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !909, file: !910, line: 192, baseType: !904, size: 64, align: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !909, file: !910, line: 193, baseType: !904, size: 64, align: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !909, file: !910, line: 195, baseType: !60, size: 32, align: 32, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !909, file: !910, line: 196, baseType: !941, size: 256, align: 8, offset: 1184)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, align: 8, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !909, file: !910, line: 197, baseType: !60, size: 32, align: 32, offset: 1440)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !909, file: !910, line: 198, baseType: !946, size: 128, align: 8, offset: 1472)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 128, align: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 16)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !909, file: !910, line: 199, baseType: !60, size: 32, align: 32, offset: 1600)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !909, file: !910, line: 200, baseType: !951, size: 384, align: 8, offset: 1632)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 384, align: 8, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 48)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !909, file: !910, line: 201, baseType: !78, size: 64, align: 64, offset: 2048)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !909, file: !910, line: 202, baseType: !78, size: 64, align: 64, offset: 2112)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !909, file: !910, line: 215, baseType: !957, size: 576, align: 32, offset: 2176)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !910, line: 203, size: 576, align: 32, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !957, file: !910, line: 204, baseType: !60, size: 32, align: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !957, file: !910, line: 205, baseType: !60, size: 32, align: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !957, file: !910, line: 206, baseType: !60, size: 32, align: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !957, file: !910, line: 207, baseType: !60, size: 32, align: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !957, file: !910, line: 208, baseType: !60, size: 32, align: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !957, file: !910, line: 209, baseType: !60, size: 32, align: 32, offset: 160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !957, file: !910, line: 210, baseType: !941, size: 256, align: 8, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !957, file: !910, line: 211, baseType: !60, size: 32, align: 32, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !957, file: !910, line: 212, baseType: !60, size: 32, align: 32, offset: 480)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !957, file: !910, line: 213, baseType: !60, size: 32, align: 32, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !957, file: !910, line: 214, baseType: !60, size: 32, align: 32, offset: 544)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !787, file: !776, line: 1492, baseType: !971, size: 64, align: 64, offset: 1024)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64, align: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !973, line: 481, size: 9728, align: 64, elements: !974)
!973 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!974 = !{!975, !976, !977, !981, !982, !986, !987, !988, !989, !990, !991, !992, !993, !994, !1002, !1003, !1015, !1016, !1020, !1021, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 482, baseType: !49, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !972, file: !973, line: 483, baseType: !51, size: 32, align: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !972, file: !973, line: 484, baseType: !978, size: 64, align: 8, offset: 96)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 64, align: 8, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 8)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !972, file: !973, line: 485, baseType: !51, size: 32, align: 32, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !972, file: !973, line: 486, baseType: !983, size: 512, align: 8, offset: 192)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 512, align: 8, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !972, file: !973, line: 487, baseType: !978, size: 64, align: 8, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !972, file: !973, line: 488, baseType: !51, size: 32, align: 32, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !972, file: !973, line: 489, baseType: !983, size: 512, align: 8, offset: 800)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !972, file: !973, line: 490, baseType: !941, size: 256, align: 8, offset: 1312)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !972, file: !973, line: 491, baseType: !941, size: 256, align: 8, offset: 1568)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !972, file: !973, line: 493, baseType: !51, size: 32, align: 32, offset: 1824)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !972, file: !973, line: 494, baseType: !51, size: 32, align: 32, offset: 1856)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !972, file: !973, line: 496, baseType: !51, size: 32, align: 32, offset: 1888)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !972, file: !973, line: 497, baseType: !995, size: 192, align: 64, offset: 1920)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !973, line: 447, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !973, line: 438, size: 192, align: 64, elements: !997)
!997 = !{!998, !999, !1000, !1001}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !996, file: !973, line: 440, baseType: !904, size: 64, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !996, file: !973, line: 442, baseType: !896, size: 64, align: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !996, file: !973, line: 444, baseType: !51, size: 32, align: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !996, file: !973, line: 446, baseType: !51, size: 32, align: 32, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !972, file: !973, line: 498, baseType: !995, size: 192, align: 64, offset: 2112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !972, file: !973, line: 499, baseType: !1004, size: 448, align: 64, offset: 2304)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !973, line: 436, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !973, line: 403, size: 448, align: 64, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1005, file: !973, line: 407, baseType: !51, size: 32, align: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1005, file: !973, line: 411, baseType: !60, size: 32, align: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !1005, file: !973, line: 415, baseType: !60, size: 32, align: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1005, file: !973, line: 419, baseType: !904, size: 64, align: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1005, file: !973, line: 423, baseType: !904, size: 64, align: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1005, file: !973, line: 427, baseType: !904, size: 64, align: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1005, file: !973, line: 431, baseType: !78, size: 64, align: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !1005, file: !973, line: 435, baseType: !978, size: 64, align: 8, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !972, file: !973, line: 500, baseType: !1004, size: 448, align: 64, offset: 2752)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !972, file: !973, line: 505, baseType: !1017, size: 16, align: 8, offset: 3200)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 16, align: 8, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 2)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !972, file: !973, line: 506, baseType: !60, size: 32, align: 32, offset: 3232)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !972, file: !973, line: 507, baseType: !1022, size: 32, align: 8, offset: 3264)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 32, align: 8, elements: !1023)
!1023 = !{!1024}
!1024 = !DISubrange(count: 4)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !972, file: !973, line: 508, baseType: !60, size: 32, align: 32, offset: 3296)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !972, file: !973, line: 510, baseType: !60, size: 32, align: 32, offset: 3328)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !972, file: !973, line: 511, baseType: !51, size: 32, align: 32, offset: 3360)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !972, file: !973, line: 512, baseType: !51, size: 32, align: 32, offset: 3392)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !972, file: !973, line: 513, baseType: !51, size: 32, align: 32, offset: 3424)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !972, file: !973, line: 514, baseType: !919, size: 64, align: 64, offset: 3456)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !972, file: !973, line: 516, baseType: !793, size: 64, align: 64, offset: 3520)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !972, file: !973, line: 521, baseType: !1033, size: 64, align: 64, offset: 3584)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !786, line: 132, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !1037, line: 268, size: 384, align: 64, elements: !1038)
!1037 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1038 = !{!1039, !1085, !1089, !1090, !1091, !1095}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1036, file: !1037, line: 269, baseType: !1040, size: 64, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !786, line: 131, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !1037, line: 160, size: 960, align: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1053, !1057, !1061, !1067, !1068, !1073, !1077, !1079, !1080, !1081}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1043, file: !1037, line: 161, baseType: !51, size: 32, align: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !1043, file: !1037, line: 162, baseType: !51, size: 32, align: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !1043, file: !1037, line: 163, baseType: !51, size: 32, align: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !1037, line: 164, baseType: !78, size: 64, align: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1043, file: !1037, line: 165, baseType: !1050, size: 64, align: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64, align: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!51, !1034}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1043, file: !1037, line: 166, baseType: !1054, size: 64, align: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64, align: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!51, !1034, !875, !896}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1043, file: !1037, line: 167, baseType: !1058, size: 64, align: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64, align: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!51, !1034, !904}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1043, file: !1037, line: 168, baseType: !1062, size: 64, align: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64, align: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!51, !1034, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64, align: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1043, file: !1037, line: 169, baseType: !1050, size: 64, align: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1043, file: !1037, line: 171, baseType: !1069, size: 64, align: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64, align: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!51, !51, !919, !60, !904, !1072, !116}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1043, file: !1037, line: 173, baseType: !1074, size: 64, align: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64, align: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!51, !51, !919, !60, !919, !60, !116}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !1043, file: !1037, line: 176, baseType: !1078, size: 160, align: 32, offset: 640)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, align: 32, elements: !153)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1043, file: !1037, line: 177, baseType: !51, size: 32, align: 32, offset: 800)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1043, file: !1037, line: 178, baseType: !51, size: 32, align: 32, offset: 832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !1043, file: !1037, line: 180, baseType: !1082, size: 64, align: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64, align: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!51, !1034, !51, !51, !116}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1036, file: !1037, line: 270, baseType: !1086, size: 64, align: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !786, line: 177, baseType: !1088)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !786, line: 177, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !1037, line: 272, baseType: !78, size: 64, align: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !1036, file: !1037, line: 273, baseType: !116, size: 64, align: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !1036, file: !1037, line: 275, baseType: !1092, size: 64, align: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !786, line: 138, baseType: !1094)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !786, line: 138, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1036, file: !1037, line: 277, baseType: !1054, size: 64, align: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !972, file: !973, line: 527, baseType: !51, size: 32, align: 32, offset: 3648)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !972, file: !973, line: 528, baseType: !51, size: 32, align: 32, offset: 3680)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !972, file: !973, line: 529, baseType: !51, size: 32, align: 32, offset: 3712)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !972, file: !973, line: 534, baseType: !51, size: 32, align: 32, offset: 3744)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !972, file: !973, line: 535, baseType: !1017, size: 16, align: 8, offset: 3776)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !972, file: !973, line: 540, baseType: !51, size: 32, align: 32, offset: 3808)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !972, file: !973, line: 541, baseType: !51, size: 32, align: 32, offset: 3840)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !972, file: !973, line: 542, baseType: !51, size: 32, align: 32, offset: 3872)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !972, file: !973, line: 543, baseType: !51, size: 32, align: 32, offset: 3904)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !972, file: !973, line: 549, baseType: !116, size: 64, align: 64, offset: 3968)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !972, file: !973, line: 550, baseType: !896, size: 64, align: 64, offset: 4032)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !972, file: !973, line: 551, baseType: !116, size: 64, align: 64, offset: 4096)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !972, file: !973, line: 552, baseType: !896, size: 64, align: 64, offset: 4160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !972, file: !973, line: 592, baseType: !1110, size: 4224, align: 64, offset: 4224)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !973, line: 553, size: 4224, align: 64, elements: !1111)
!1111 = !{!1112, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1140, !1236, !1241, !1242, !1243, !1244, !1245, !1246, !1252, !1253, !1254, !1255, !1388, !1389, !1390, !1391, !1435}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !1110, file: !973, line: 555, baseType: !1113, size: 1024, align: 8)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 1024, align: 8, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !1110, file: !973, line: 557, baseType: !1113, size: 1024, align: 8, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !1110, file: !973, line: 558, baseType: !51, size: 32, align: 32, offset: 2048)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !1110, file: !973, line: 559, baseType: !1113, size: 1024, align: 8, offset: 2080)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !1110, file: !973, line: 560, baseType: !51, size: 32, align: 32, offset: 3104)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !1110, file: !973, line: 561, baseType: !78, size: 64, align: 64, offset: 3136)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !1110, file: !973, line: 562, baseType: !51, size: 32, align: 32, offset: 3200)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !1110, file: !973, line: 564, baseType: !1123, size: 64, align: 64, offset: 3264)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64, align: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !776, line: 375, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !776, line: 418, size: 704, align: 64, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1126, file: !776, line: 419, baseType: !51, size: 32, align: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1126, file: !776, line: 420, baseType: !141, size: 64, align: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1126, file: !776, line: 421, baseType: !78, size: 64, align: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !1126, file: !776, line: 426, baseType: !78, size: 64, align: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !1126, file: !776, line: 427, baseType: !78, size: 64, align: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !1126, file: !776, line: 428, baseType: !78, size: 64, align: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !1126, file: !776, line: 429, baseType: !78, size: 64, align: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !1126, file: !776, line: 430, baseType: !78, size: 64, align: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !1126, file: !776, line: 431, baseType: !78, size: 64, align: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !1126, file: !776, line: 432, baseType: !78, size: 64, align: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !1126, file: !776, line: 433, baseType: !51, size: 32, align: 32, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !1126, file: !776, line: 434, baseType: !51, size: 32, align: 32, offset: 672)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1110, file: !973, line: 566, baseType: !1141, size: 64, align: 64, offset: 3328)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !786, line: 140, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !1144, line: 135, size: 1152, align: 64, elements: !1145)
!1144 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1145 = !{!1146, !1147, !1148, !1160, !1161, !1162, !1163, !1164, !1165, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1235}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1143, file: !1144, line: 140, baseType: !51, size: 32, align: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1143, file: !1144, line: 141, baseType: !51, size: 32, align: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1143, file: !1144, line: 142, baseType: !1149, size: 64, align: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64, align: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !786, line: 120, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !1152, line: 313, size: 192, align: 64, elements: !1153)
!1152 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1153 = !{!1154, !1156, !1157, !1158, !1159}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1151, file: !1152, line: 314, baseType: !1155, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1151, file: !1152, line: 316, baseType: !51, size: 32, align: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !1151, file: !1152, line: 318, baseType: !51, size: 32, align: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !1151, file: !1152, line: 319, baseType: !51, size: 32, align: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !1152, line: 320, baseType: !51, size: 32, align: 32, offset: 160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1143, file: !1144, line: 143, baseType: !1149, size: 64, align: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1143, file: !1144, line: 144, baseType: !49, size: 64, align: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !1143, file: !1144, line: 145, baseType: !1149, size: 64, align: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !1143, file: !1144, line: 146, baseType: !1149, size: 64, align: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 147, baseType: !51, size: 32, align: 32, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !1143, file: !1144, line: 148, baseType: !1166, size: 64, align: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64, align: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !786, line: 123, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !1152, line: 324, size: 832, align: 64, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1176}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !1168, file: !1152, line: 325, baseType: !51, size: 32, align: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !1168, file: !1152, line: 326, baseType: !1150, size: 192, align: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1168, file: !1152, line: 327, baseType: !1150, size: 192, align: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !1168, file: !1152, line: 328, baseType: !1150, size: 192, align: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !1168, file: !1152, line: 330, baseType: !1175, size: 128, align: 64, offset: 640)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, align: 64, elements: !1018)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1168, file: !1152, line: 333, baseType: !51, size: 32, align: 32, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1143, file: !1144, line: 150, baseType: !1149, size: 64, align: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !1143, file: !1144, line: 151, baseType: !1149, size: 64, align: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !1143, file: !1144, line: 152, baseType: !904, size: 64, align: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !1143, file: !1144, line: 153, baseType: !51, size: 32, align: 32, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1143, file: !1144, line: 154, baseType: !1149, size: 64, align: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1143, file: !1144, line: 155, baseType: !51, size: 32, align: 32, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1143, file: !1144, line: 156, baseType: !853, size: 128, align: 64, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1143, file: !1144, line: 157, baseType: !1185, size: 64, align: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !786, line: 141, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !1144, line: 117, size: 576, align: 64, elements: !1189)
!1189 = !{!1190, !1191, !1195, !1201, !1210, !1211, !1212, !1213, !1214}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1188, file: !1144, line: 118, baseType: !141, size: 64, align: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !1188, file: !1144, line: 120, baseType: !1192, size: 64, align: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64, align: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!51, !1141}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !1188, file: !1144, line: 121, baseType: !1196, size: 64, align: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64, align: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!51, !904, !1199, !1141}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64, align: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1188, file: !1144, line: 123, baseType: !1202, size: 64, align: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64, align: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!51, !1205, !1149, !1199, !1199, !1199, !1207, !1166}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !786, line: 121, baseType: !1209)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !786, line: 121, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1188, file: !1144, line: 126, baseType: !1192, size: 64, align: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1188, file: !1144, line: 127, baseType: !1192, size: 64, align: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !1144, line: 128, baseType: !51, size: 32, align: 32, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1188, file: !1144, line: 129, baseType: !86, size: 64, align: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !1188, file: !1144, line: 131, baseType: !1215, size: 64, align: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64, align: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!51, !1141, !51, !51, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !786, line: 125, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !1152, line: 349, size: 192, align: 64, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !1220, file: !1152, line: 350, baseType: !60, size: 32, align: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1220, file: !1152, line: 351, baseType: !116, size: 64, align: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1220, file: !1152, line: 357, baseType: !1225, size: 64, align: 64, offset: 128)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !1152, line: 352, size: 64, align: 64, elements: !1226)
!1226 = !{!1227, !1231}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !1225, file: !1152, line: 354, baseType: !1228, size: 64, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64, align: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !51, !51, !116}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !1225, file: !1152, line: 356, baseType: !1232, size: 64, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64, align: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!51, !51, !51, !1218}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1143, file: !1144, line: 158, baseType: !1086, size: 64, align: 64, offset: 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !1110, file: !973, line: 569, baseType: !1237, size: 64, align: 64, offset: 3392)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !1239, line: 741, baseType: !1240)
!1239 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !1037, line: 147, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !1110, file: !973, line: 572, baseType: !51, size: 32, align: 32, offset: 3456)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !1110, file: !973, line: 573, baseType: !51, size: 32, align: 32, offset: 3488)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !1110, file: !973, line: 575, baseType: !51, size: 32, align: 32, offset: 3520)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !1110, file: !973, line: 576, baseType: !51, size: 32, align: 32, offset: 3552)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !1110, file: !973, line: 577, baseType: !389, size: 72, align: 8, offset: 3584)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !1110, file: !973, line: 578, baseType: !1247, size: 64, align: 64, offset: 3712)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64, align: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !1249, line: 192, size: 256, align: 64, elements: !1250)
!1249 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1248, file: !1249, line: 192, baseType: !862, size: 256, align: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !1110, file: !973, line: 579, baseType: !51, size: 32, align: 32, offset: 3776)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !1110, file: !973, line: 580, baseType: !51, size: 32, align: 32, offset: 3808)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !1110, file: !973, line: 581, baseType: !904, size: 64, align: 64, offset: 3840)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !1110, file: !973, line: 582, baseType: !1256, size: 64, align: 64, offset: 3904)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !786, line: 129, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !1037, line: 308, size: 704, align: 64, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1289, !1293, !1297, !1298, !1382, !1383, !1387}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1259, file: !1037, line: 309, baseType: !51, size: 32, align: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1259, file: !1037, line: 310, baseType: !51, size: 32, align: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1259, file: !1037, line: 312, baseType: !51, size: 32, align: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !1259, file: !1037, line: 313, baseType: !51, size: 32, align: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1037, line: 315, baseType: !78, size: 64, align: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1259, file: !1037, line: 317, baseType: !1267, size: 64, align: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64, align: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!51, !1270, !919, !919, !51}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !786, line: 130, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !1037, line: 449, size: 1344, align: 64, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1272, file: !1037, line: 450, baseType: !1256, size: 64, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1272, file: !1037, line: 451, baseType: !1086, size: 64, align: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !1272, file: !1037, line: 453, baseType: !51, size: 32, align: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !1272, file: !1037, line: 454, baseType: !51, size: 32, align: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !1272, file: !1037, line: 455, baseType: !946, size: 128, align: 8, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1272, file: !1037, line: 456, baseType: !946, size: 128, align: 8, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1272, file: !1037, line: 457, baseType: !941, size: 256, align: 8, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1272, file: !1037, line: 458, baseType: !51, size: 32, align: 32, offset: 704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1272, file: !1037, line: 459, baseType: !116, size: 64, align: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1272, file: !1037, line: 460, baseType: !51, size: 32, align: 32, offset: 832)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1037, line: 461, baseType: !78, size: 64, align: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !1272, file: !1037, line: 462, baseType: !116, size: 64, align: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !1272, file: !1037, line: 463, baseType: !51, size: 32, align: 32, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !1272, file: !1037, line: 464, baseType: !51, size: 32, align: 32, offset: 1056)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1272, file: !1037, line: 465, baseType: !941, size: 256, align: 8, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !1259, file: !1037, line: 320, baseType: !1290, size: 64, align: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64, align: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!51, !1270, !904, !919, !896}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1259, file: !1037, line: 323, baseType: !1294, size: 64, align: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, align: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!51, !1270}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1259, file: !1037, line: 325, baseType: !51, size: 32, align: 32, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !1259, file: !1037, line: 327, baseType: !1299, size: 64, align: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64, align: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!51, !1270, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !1304, line: 561, baseType: !1305)
!1304 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !1304, line: 532, size: 128, align: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1305, file: !1304, line: 533, baseType: !51, size: 32, align: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1305, file: !1304, line: 560, baseType: !1309, size: 64, align: 64, offset: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1304, line: 534, size: 64, align: 64, elements: !1310)
!1310 = !{!1311, !1312, !1314, !1323, !1334, !1337, !1340, !1343, !1346, !1349, !1352, !1355, !1358, !1361, !1364, !1367, !1370, !1373, !1376, !1377, !1378}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1309, file: !1304, line: 535, baseType: !86, size: 64, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !1309, file: !1304, line: 536, baseType: !1313, size: 32, align: 32)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !786, line: 99, baseType: !51)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !1309, file: !1304, line: 537, baseType: !1315, size: 64, align: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !786, line: 98, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !1304, line: 247, size: 192, align: 64, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1317, file: !1304, line: 248, baseType: !51, size: 32, align: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1317, file: !1304, line: 249, baseType: !51, size: 32, align: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1317, file: !1304, line: 250, baseType: !904, size: 64, align: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !1304, line: 256, baseType: !49, size: 64, align: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1309, file: !1304, line: 538, baseType: !1324, size: 64, align: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !786, line: 103, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !1304, line: 218, size: 320, align: 64, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !1326, file: !1304, line: 219, baseType: !141, size: 64, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !1326, file: !1304, line: 219, baseType: !141, size: 64, align: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1326, file: !1304, line: 220, baseType: !51, size: 32, align: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1326, file: !1304, line: 221, baseType: !51, size: 32, align: 32, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1326, file: !1304, line: 222, baseType: !919, size: 64, align: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1304, line: 223, baseType: !51, size: 32, align: 32, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1309, file: !1304, line: 539, baseType: !1335, size: 64, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !786, line: 83, baseType: !1317)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !1309, file: !1304, line: 540, baseType: !1338, size: 64, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !786, line: 84, baseType: !1317)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !1309, file: !1304, line: 541, baseType: !1341, size: 64, align: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !786, line: 85, baseType: !1317)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !1309, file: !1304, line: 542, baseType: !1344, size: 64, align: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64, align: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !786, line: 86, baseType: !1317)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !1309, file: !1304, line: 543, baseType: !1347, size: 64, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64, align: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !786, line: 87, baseType: !1317)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !1309, file: !1304, line: 544, baseType: !1350, size: 64, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !786, line: 88, baseType: !1317)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !1309, file: !1304, line: 545, baseType: !1353, size: 64, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64, align: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !786, line: 89, baseType: !1317)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !1309, file: !1304, line: 546, baseType: !1356, size: 64, align: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64, align: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !786, line: 90, baseType: !1317)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !1309, file: !1304, line: 547, baseType: !1359, size: 64, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64, align: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !786, line: 92, baseType: !1317)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !1309, file: !1304, line: 548, baseType: !1362, size: 64, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !786, line: 91, baseType: !1317)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !1309, file: !1304, line: 549, baseType: !1365, size: 64, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !786, line: 93, baseType: !1317)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !1309, file: !1304, line: 550, baseType: !1368, size: 64, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !786, line: 95, baseType: !1317)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !1309, file: !1304, line: 551, baseType: !1371, size: 64, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64, align: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !786, line: 96, baseType: !1317)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !1309, file: !1304, line: 552, baseType: !1374, size: 64, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !786, line: 97, baseType: !1317)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1309, file: !1304, line: 557, baseType: !1315, size: 64, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1309, file: !1304, line: 558, baseType: !1315, size: 64, align: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !1309, file: !1304, line: 559, baseType: !1379, size: 64, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !1304, line: 307, baseType: !1381)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !1304, line: 307, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !1259, file: !1037, line: 329, baseType: !1299, size: 64, align: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1259, file: !1037, line: 331, baseType: !1384, size: 64, align: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64, align: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!51, !1270, !51, !51, !116}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1259, file: !1037, line: 333, baseType: !116, size: 64, align: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !1110, file: !973, line: 583, baseType: !1040, size: 64, align: 64, offset: 3968)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !1110, file: !973, line: 584, baseType: !51, size: 32, align: 32, offset: 4032)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !1110, file: !973, line: 585, baseType: !51, size: 32, align: 32, offset: 4064)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !1110, file: !973, line: 587, baseType: !1392, size: 64, align: 64, offset: 4096)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !776, line: 908, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !776, line: 912, size: 192, align: 64, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1395, file: !776, line: 913, baseType: !51, size: 32, align: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1395, file: !776, line: 914, baseType: !141, size: 64, align: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1395, file: !776, line: 916, baseType: !1400, size: 64, align: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !1402, line: 29, baseType: !1403)
!1402 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !1402, line: 13, size: 512, align: 64, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1421, !1425, !1429, !1430, !1434}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !1402, line: 14, baseType: !51, size: 32, align: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1403, file: !1402, line: 15, baseType: !141, size: 64, align: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1403, file: !1402, line: 16, baseType: !1408, size: 64, align: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64, align: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!51, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !1402, line: 11, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !1402, line: 31, size: 448, align: 64, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1413, file: !1402, line: 32, baseType: !1400, size: 64, align: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !1413, file: !1402, line: 33, baseType: !78, size: 64, align: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !1413, file: !1402, line: 34, baseType: !78, size: 64, align: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !1413, file: !1402, line: 35, baseType: !78, size: 64, align: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !1413, file: !1402, line: 36, baseType: !78, size: 64, align: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1413, file: !1402, line: 37, baseType: !853, size: 128, align: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1403, file: !1402, line: 17, baseType: !1422, size: 64, align: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64, align: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1411}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1403, file: !1402, line: 18, baseType: !1426, size: 64, align: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64, align: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!51, !1411, !904, !60, !904, !60}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !1403, file: !1402, line: 21, baseType: !1426, size: 64, align: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1403, file: !1402, line: 27, baseType: !1431, size: 64, align: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, align: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!49}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1403, file: !1402, line: 28, baseType: !1431, size: 64, align: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !1110, file: !973, line: 591, baseType: !51, size: 32, align: 32, offset: 4160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !972, file: !973, line: 595, baseType: !983, size: 512, align: 8, offset: 8448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !972, file: !973, line: 596, baseType: !905, size: 8, align: 8, offset: 8960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !972, file: !973, line: 597, baseType: !983, size: 512, align: 8, offset: 8968)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !972, file: !973, line: 598, baseType: !905, size: 8, align: 8, offset: 9480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !972, file: !973, line: 599, baseType: !51, size: 32, align: 32, offset: 9504)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !972, file: !973, line: 605, baseType: !51, size: 32, align: 32, offset: 9536)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !972, file: !973, line: 615, baseType: !74, size: 8, align: 8, offset: 9568)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !972, file: !973, line: 628, baseType: !904, size: 64, align: 64, offset: 9600)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !972, file: !973, line: 629, baseType: !60, size: 32, align: 32, offset: 9664)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !787, file: !776, line: 1493, baseType: !1446, size: 64, align: 64, offset: 1088)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64, align: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !1448, line: 182, size: 7168, align: 64, elements: !1449)
!1448 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1449 = !{!1450, !1451, !1455, !1456, !1457, !1458, !1459, !1465, !1466, !1467, !1468, !1469, !1470, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1852, !1853, !1859, !1867, !1868, !1869, !1870, !1874, !1875, !1876}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !1447, file: !1448, line: 183, baseType: !60, size: 32, align: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1447, file: !1448, line: 184, baseType: !1452, size: 2048, align: 8, offset: 32)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 2048, align: 8, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !1447, file: !1448, line: 185, baseType: !1452, size: 2048, align: 8, offset: 2080)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !1447, file: !1448, line: 186, baseType: !60, size: 32, align: 32, offset: 4128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !1447, file: !1448, line: 192, baseType: !71, size: 16, align: 16, offset: 4160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !1447, file: !1448, line: 193, baseType: !71, size: 16, align: 16, offset: 4176)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1447, file: !1448, line: 195, baseType: !1460, size: 128, align: 64, offset: 4224)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !1448, line: 133, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !1448, line: 128, size: 128, align: 64, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1461, file: !1448, line: 129, baseType: !78, size: 64, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !1461, file: !1448, line: 131, baseType: !978, size: 64, align: 8, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !1447, file: !1448, line: 197, baseType: !1460, size: 128, align: 64, offset: 4352)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !1447, file: !1448, line: 199, baseType: !71, size: 16, align: 16, offset: 4480)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !1447, file: !1448, line: 200, baseType: !71, size: 16, align: 16, offset: 4496)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !1447, file: !1448, line: 201, baseType: !71, size: 16, align: 16, offset: 4512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !1447, file: !1448, line: 203, baseType: !978, size: 64, align: 8, offset: 4528)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !1447, file: !1448, line: 205, baseType: !1471, size: 128, align: 64, offset: 4608)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !1448, line: 174, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !1448, line: 171, size: 128, align: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1472, file: !1448, line: 172, baseType: !71, size: 16, align: 16)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1472, file: !1448, line: 173, baseType: !1476, size: 64, align: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !1477, line: 70, baseType: !1478)
!1477 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64, align: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !1477, line: 70, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !1447, file: !1448, line: 206, baseType: !1471, size: 128, align: 64, offset: 4736)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !1447, file: !1448, line: 208, baseType: !1476, size: 64, align: 64, offset: 4864)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !1447, file: !1448, line: 210, baseType: !1476, size: 64, align: 64, offset: 4928)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !1447, file: !1448, line: 216, baseType: !1471, size: 128, align: 64, offset: 4992)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1447, file: !1448, line: 218, baseType: !60, size: 32, align: 32, offset: 5120)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !1447, file: !1448, line: 219, baseType: !60, size: 32, align: 32, offset: 5152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1447, file: !1448, line: 220, baseType: !60, size: 32, align: 32, offset: 5184)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !1447, file: !1448, line: 221, baseType: !1488, size: 704, align: 64, offset: 5248)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !1448, line: 147, size: 704, align: 64, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1488, file: !1448, line: 148, baseType: !905, size: 8, align: 8)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !1488, file: !1448, line: 149, baseType: !78, size: 64, align: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1488, file: !1448, line: 150, baseType: !71, size: 16, align: 16, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !1488, file: !1448, line: 151, baseType: !78, size: 64, align: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !1488, file: !1448, line: 152, baseType: !78, size: 64, align: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !1488, file: !1448, line: 153, baseType: !60, size: 32, align: 32, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !1488, file: !1448, line: 154, baseType: !1497, size: 320, align: 64, offset: 384)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !1448, line: 135, size: 320, align: 64, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1851}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !1497, file: !1448, line: 136, baseType: !1270, size: 64, align: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !1497, file: !1448, line: 137, baseType: !1034, size: 64, align: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1497, file: !1448, line: 139, baseType: !1411, size: 64, align: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1497, file: !1448, line: 143, baseType: !1503, size: 64, align: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !776, line: 376, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !776, line: 498, size: 2816, align: 64, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1522, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1838, !1839, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !1505, file: !776, line: 499, baseType: !51, size: 32, align: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !1505, file: !776, line: 502, baseType: !60, size: 32, align: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !1505, file: !776, line: 503, baseType: !978, size: 64, align: 8, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !1505, file: !776, line: 504, baseType: !51, size: 32, align: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !1505, file: !776, line: 505, baseType: !951, size: 384, align: 8, offset: 160)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1505, file: !776, line: 507, baseType: !60, size: 32, align: 32, offset: 544)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !1505, file: !776, line: 508, baseType: !941, size: 256, align: 8, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1505, file: !776, line: 514, baseType: !60, size: 32, align: 32, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1505, file: !776, line: 515, baseType: !941, size: 256, align: 8, offset: 864)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1505, file: !776, line: 521, baseType: !86, size: 64, align: 64, offset: 1152)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !1505, file: !776, line: 522, baseType: !86, size: 64, align: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !1505, file: !776, line: 529, baseType: !51, size: 32, align: 32, offset: 1280)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !1505, file: !776, line: 531, baseType: !1520, size: 64, align: 64, offset: 1344)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64, align: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !776, line: 531, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1505, file: !776, line: 538, baseType: !1523, size: 64, align: 64, offset: 1408)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !786, line: 154, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !1249, line: 270, size: 1472, align: 64, elements: !1526)
!1526 = !{!1527, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1782, !1786, !1791, !1793, !1804, !1808}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !1525, file: !1249, line: 271, baseType: !1528, size: 64, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !1249, line: 254, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !1249, line: 242, size: 832, align: 64, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1541, !1555, !1564, !1565, !1741, !1742, !1743, !1748}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1530, file: !1249, line: 243, baseType: !1335, size: 64, align: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !1530, file: !1249, line: 244, baseType: !1335, size: 64, align: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1530, file: !1249, line: 245, baseType: !1535, size: 64, align: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64, align: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !786, line: 155, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !1249, line: 143, size: 128, align: 64, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !1537, file: !1249, line: 144, baseType: !1324, size: 64, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !1537, file: !1249, line: 145, baseType: !1302, size: 64, align: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1530, file: !1249, line: 246, baseType: !1542, size: 64, align: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64, align: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !786, line: 159, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !1249, line: 179, size: 320, align: 64, elements: !1545)
!1545 = !{!1546, !1551, !1552, !1553, !1554}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1544, file: !1249, line: 180, baseType: !1547, size: 64, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64, align: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !1249, line: 175, size: 256, align: 64, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1548, file: !1249, line: 175, baseType: !862, size: 256, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1544, file: !1249, line: 181, baseType: !51, size: 32, align: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1544, file: !1249, line: 183, baseType: !890, size: 64, align: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !1544, file: !1249, line: 188, baseType: !904, size: 64, align: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !1544, file: !1249, line: 189, baseType: !51, size: 32, align: 32, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !1530, file: !1249, line: 247, baseType: !1556, size: 64, align: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !1249, line: 155, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !1249, line: 152, size: 128, align: 64, elements: !1559)
!1559 = !{!1560, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !1558, file: !1249, line: 153, baseType: !1561, size: 64, align: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !786, line: 94, baseType: !1317)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !1558, file: !1249, line: 154, baseType: !1561, size: 64, align: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !1530, file: !1249, line: 248, baseType: !1542, size: 64, align: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1530, file: !1249, line: 249, baseType: !1566, size: 64, align: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !786, line: 160, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !1249, line: 157, size: 192, align: 64, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !1568, file: !1249, line: 158, baseType: !1535, size: 64, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !1568, file: !1249, line: 159, baseType: !1341, size: 64, align: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1568, file: !1249, line: 160, baseType: !1573, size: 64, align: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !786, line: 133, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !1037, line: 129, size: 448, align: 64, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1585, !1586, !1735, !1736}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1575, file: !1037, line: 130, baseType: !51, size: 32, align: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !1575, file: !1037, line: 131, baseType: !51, size: 32, align: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1575, file: !1037, line: 132, baseType: !51, size: 32, align: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !1575, file: !1037, line: 133, baseType: !1581, size: 64, align: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64, align: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !786, line: 135, baseType: !1584)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !786, line: 135, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1575, file: !1037, line: 134, baseType: !1086, size: 64, align: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1575, file: !1037, line: 149, baseType: !1587, size: 64, align: 64, offset: 256)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1037, line: 135, size: 64, align: 64, elements: !1588)
!1588 = !{!1589, !1590, !1663, !1731, !1733}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1587, file: !1037, line: 136, baseType: !86, size: 64, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !1587, file: !1037, line: 138, baseType: !1591, size: 64, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64, align: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !1593, line: 132, size: 1344, align: 64, elements: !1594)
!1593 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1594 = !{!1595, !1596, !1597, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1662}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1592, file: !1593, line: 137, baseType: !51, size: 32, align: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1592, file: !1593, line: 138, baseType: !49, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1592, file: !1593, line: 139, baseType: !1598, size: 64, align: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !786, line: 147, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !1593, line: 85, size: 896, align: 64, elements: !1602)
!1602 = !{!1603, !1604, !1610, !1611, !1612, !1613, !1617, !1621, !1625, !1626, !1627, !1628, !1634, !1638}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1601, file: !1593, line: 86, baseType: !141, size: 64, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !1601, file: !1593, line: 87, baseType: !1605, size: 64, align: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64, align: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!51, !51, !919, !904, !1608, !51}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, align: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !786, line: 146, baseType: !1592)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !1601, file: !1593, line: 89, baseType: !1605, size: 64, align: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !1601, file: !1593, line: 91, baseType: !1605, size: 64, align: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !1601, file: !1593, line: 93, baseType: !1605, size: 64, align: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !1601, file: !1593, line: 96, baseType: !1614, size: 64, align: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64, align: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!51, !1149, !1199, !1608, !1207}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1601, file: !1593, line: 98, baseType: !1618, size: 64, align: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64, align: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!51, !1149, !1199, !1199, !1199, !1207, !1166}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1601, file: !1593, line: 101, baseType: !1622, size: 64, align: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64, align: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!51, !1608}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1601, file: !1593, line: 103, baseType: !1622, size: 64, align: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !1593, line: 105, baseType: !51, size: 32, align: 32, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1601, file: !1593, line: 107, baseType: !86, size: 64, align: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !1601, file: !1593, line: 116, baseType: !1629, size: 64, align: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64, align: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!51, !51, !919, !60, !904, !1072, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !1601, file: !1593, line: 120, baseType: !1635, size: 64, align: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64, align: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!51, !51, !919, !60, !919, !60, !1632}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !1601, file: !1593, line: 129, baseType: !1639, size: 64, align: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64, align: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!51, !1608, !51, !1149, !1218}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1592, file: !1593, line: 141, baseType: !1086, size: 64, align: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1592, file: !1593, line: 142, baseType: !1149, size: 64, align: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1592, file: !1593, line: 143, baseType: !1149, size: 64, align: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1592, file: !1593, line: 144, baseType: !1149, size: 64, align: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1592, file: !1593, line: 145, baseType: !1149, size: 64, align: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1592, file: !1593, line: 146, baseType: !1149, size: 64, align: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !1592, file: !1593, line: 147, baseType: !1149, size: 64, align: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !1592, file: !1593, line: 148, baseType: !1149, size: 64, align: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !1592, file: !1593, line: 149, baseType: !1149, size: 64, align: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1592, file: !1593, line: 151, baseType: !853, size: 128, align: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1592, file: !1593, line: 152, baseType: !51, size: 32, align: 32, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1592, file: !1593, line: 153, baseType: !51, size: 32, align: 32, offset: 928)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !1592, file: !1593, line: 155, baseType: !1166, size: 64, align: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !1592, file: !1593, line: 156, baseType: !1166, size: 64, align: 64, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !1592, file: !1593, line: 157, baseType: !1166, size: 64, align: 64, offset: 1088)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !1592, file: !1593, line: 162, baseType: !86, size: 64, align: 64, offset: 1152)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !1592, file: !1593, line: 163, baseType: !1659, size: 64, align: 64, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64, align: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !786, line: 122, baseType: !1661)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !786, line: 122, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !1592, file: !1593, line: 164, baseType: !1659, size: 64, align: 64, offset: 1280)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !1587, file: !1037, line: 141, baseType: !1664, size: 64, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64, align: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !1666, line: 155, size: 1088, align: 64, elements: !1667)
!1666 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1730}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1665, file: !1666, line: 160, baseType: !51, size: 32, align: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1665, file: !1666, line: 161, baseType: !49, size: 64, align: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !1665, file: !1666, line: 162, baseType: !51, size: 32, align: 32, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1665, file: !1666, line: 163, baseType: !1149, size: 64, align: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1665, file: !1666, line: 164, baseType: !1149, size: 64, align: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1665, file: !1666, line: 165, baseType: !1149, size: 64, align: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !1665, file: !1666, line: 166, baseType: !1149, size: 64, align: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !1665, file: !1666, line: 167, baseType: !1149, size: 64, align: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !1665, file: !1666, line: 168, baseType: !1149, size: 64, align: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1665, file: !1666, line: 169, baseType: !1149, size: 64, align: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !1666, line: 170, baseType: !51, size: 32, align: 32, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !1665, file: !1666, line: 172, baseType: !1166, size: 64, align: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1665, file: !1666, line: 173, baseType: !51, size: 32, align: 32, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1665, file: !1666, line: 174, baseType: !853, size: 128, align: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1665, file: !1666, line: 175, baseType: !1683, size: 64, align: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !786, line: 144, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !1666, line: 129, size: 768, align: 64, elements: !1687)
!1687 = !{!1688, !1689, !1701, !1706, !1710, !1714, !1718, !1722, !1723, !1724, !1725, !1729}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !1666, line: 130, baseType: !141, size: 64, align: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !1686, file: !1666, line: 131, baseType: !1690, size: 64, align: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64, align: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !919, !51, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !1666, line: 127, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !1666, line: 124, size: 128, align: 64, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1695, file: !1666, line: 125, baseType: !1149, size: 64, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1695, file: !1666, line: 126, baseType: !1149, size: 64, align: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !786, line: 143, baseType: !1665)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !1686, file: !1666, line: 132, baseType: !1702, size: 64, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64, align: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!51, !1699, !1207, !1705, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64, align: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !1686, file: !1666, line: 134, baseType: !1707, size: 64, align: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64, align: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!51, !919, !51, !1693, !1699}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !1686, file: !1666, line: 136, baseType: !1711, size: 64, align: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64, align: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!51, !1699, !1149, !1149, !1149, !1149, !1149, !1149, !1207, !1166}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1686, file: !1666, line: 140, baseType: !1715, size: 64, align: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64, align: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!51, !1699, !1149, !1149, !1199, !1199, !1207, !1166}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1686, file: !1666, line: 142, baseType: !1719, size: 64, align: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64, align: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!51, !1699}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1686, file: !1666, line: 143, baseType: !1719, size: 64, align: 64, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1666, line: 144, baseType: !51, size: 32, align: 32, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1686, file: !1666, line: 145, baseType: !86, size: 64, align: 64, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !1686, file: !1666, line: 147, baseType: !1726, size: 64, align: 64, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64, align: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!51, !1699, !51, !919, !51, !50, !1155, !1218}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !1686, file: !1666, line: 152, baseType: !1719, size: 64, align: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1665, file: !1666, line: 177, baseType: !1086, size: 64, align: 64, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1587, file: !1037, line: 144, baseType: !1732, size: 64, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !1587, file: !1037, line: 147, baseType: !1734, size: 64, align: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !1575, file: !1037, line: 150, baseType: !51, size: 32, align: 32, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1575, file: !1037, line: 151, baseType: !1737, size: 64, align: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64, align: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !1249, line: 223, size: 256, align: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1738, file: !1249, line: 223, baseType: !862, size: 256, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !1530, file: !1249, line: 250, baseType: !1341, size: 64, align: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !1530, file: !1249, line: 251, baseType: !1341, size: 64, align: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1530, file: !1249, line: 252, baseType: !1744, size: 64, align: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64, align: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !1249, line: 204, size: 256, align: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1745, file: !1249, line: 204, baseType: !862, size: 256, align: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1530, file: !1249, line: 253, baseType: !1749, size: 192, align: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !1304, line: 269, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !1304, line: 265, size: 192, align: 64, elements: !1751)
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1750, file: !1304, line: 266, baseType: !904, size: 64, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1750, file: !1304, line: 267, baseType: !49, size: 64, align: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1750, file: !1304, line: 268, baseType: !51, size: 32, align: 32, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1525, file: !1249, line: 272, baseType: !1535, size: 64, align: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1525, file: !1249, line: 273, baseType: !1341, size: 64, align: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1525, file: !1249, line: 274, baseType: !51, size: 32, align: 32, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1525, file: !1249, line: 275, baseType: !51, size: 32, align: 32, offset: 224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1525, file: !1249, line: 276, baseType: !86, size: 64, align: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1525, file: !1249, line: 277, baseType: !853, size: 128, align: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !1525, file: !1249, line: 279, baseType: !49, size: 64, align: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !1525, file: !1249, line: 280, baseType: !49, size: 64, align: 64, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !1525, file: !1249, line: 281, baseType: !78, size: 64, align: 64, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !1525, file: !1249, line: 282, baseType: !78, size: 64, align: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !1525, file: !1249, line: 283, baseType: !78, size: 64, align: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !1525, file: !1249, line: 284, baseType: !78, size: 64, align: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !1525, file: !1249, line: 285, baseType: !1344, size: 64, align: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1525, file: !1249, line: 286, baseType: !1769, size: 64, align: 64, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !786, line: 186, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !1772, line: 262, size: 192, align: 64, elements: !1773)
!1772 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1773 = !{!1774, !1775, !1781}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1771, file: !1772, line: 263, baseType: !1344, size: 64, align: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1771, file: !1772, line: 264, baseType: !1776, size: 64, align: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !1772, line: 209, baseType: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !1772, line: 220, size: 256, align: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1778, file: !1772, line: 220, baseType: !862, size: 256, align: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1771, file: !1772, line: 265, baseType: !1335, size: 64, align: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !1525, file: !1249, line: 287, baseType: !1783, size: 64, align: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64, align: 64)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !786, line: 184, baseType: !1785)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !786, line: 184, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !1525, file: !1249, line: 288, baseType: !1787, size: 64, align: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64, align: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !1772, line: 259, size: 256, align: 64, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1788, file: !1772, line: 259, baseType: !862, size: 256, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !1525, file: !1249, line: 289, baseType: !1792, size: 64, align: 64, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1525, file: !1249, line: 290, baseType: !1794, size: 64, align: 64, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !786, line: 189, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !1772, line: 332, size: 128, align: 64, elements: !1797)
!1797 = !{!1798, !1803}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !1796, file: !1772, line: 333, baseType: !1799, size: 64, align: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64, align: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !1772, line: 330, size: 256, align: 64, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1800, file: !1772, line: 330, baseType: !862, size: 256, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !1796, file: !1772, line: 334, baseType: !1799, size: 64, align: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1525, file: !1249, line: 296, baseType: !1805, size: 160, align: 8, offset: 1216)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 160, align: 8, elements: !1806)
!1806 = !{!1807}
!1807 = !DISubrange(count: 20)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1525, file: !1249, line: 298, baseType: !1809, size: 64, align: 64, offset: 1408)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !1249, line: 268, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !1249, line: 262, size: 320, align: 64, elements: !1812)
!1812 = !{!1813, !1818, !1819, !1820, !1821}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1811, file: !1249, line: 263, baseType: !1814, size: 64, align: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64, align: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !1304, line: 801, size: 256, align: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1815, file: !1304, line: 801, baseType: !862, size: 256, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1811, file: !1249, line: 264, baseType: !1814, size: 64, align: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1811, file: !1249, line: 265, baseType: !1374, size: 64, align: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1811, file: !1249, line: 266, baseType: !1344, size: 64, align: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1811, file: !1249, line: 267, baseType: !1822, size: 64, align: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64, align: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !1304, line: 170, size: 256, align: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1823, file: !1304, line: 170, baseType: !862, size: 256, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !1505, file: !776, line: 543, baseType: !49, size: 64, align: 64, offset: 1472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1505, file: !776, line: 544, baseType: !51, size: 32, align: 32, offset: 1536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1505, file: !776, line: 545, baseType: !49, size: 64, align: 64, offset: 1600)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1505, file: !776, line: 546, baseType: !49, size: 64, align: 64, offset: 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !1505, file: !776, line: 547, baseType: !60, size: 32, align: 32, offset: 1728)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1505, file: !776, line: 548, baseType: !1123, size: 64, align: 64, offset: 1792)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !1505, file: !776, line: 549, baseType: !78, size: 64, align: 64, offset: 1856)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !1505, file: !776, line: 551, baseType: !1834, size: 64, align: 64, offset: 1920)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64, align: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !776, line: 380, size: 256, align: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1835, file: !776, line: 380, baseType: !862, size: 256, align: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1505, file: !776, line: 552, baseType: !853, size: 128, align: 64, offset: 1984)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1505, file: !776, line: 557, baseType: !1840, size: 64, align: 64, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64, align: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1505, file: !776, line: 557, baseType: !1840, size: 64, align: 64, offset: 2176)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !1505, file: !776, line: 559, baseType: !86, size: 64, align: 64, offset: 2240)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1505, file: !776, line: 561, baseType: !896, size: 64, align: 64, offset: 2304)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1505, file: !776, line: 562, baseType: !904, size: 64, align: 64, offset: 2368)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1505, file: !776, line: 563, baseType: !896, size: 64, align: 64, offset: 2432)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1505, file: !776, line: 564, baseType: !904, size: 64, align: 64, offset: 2496)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !1505, file: !776, line: 567, baseType: !904, size: 64, align: 64, offset: 2560)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !1505, file: !776, line: 568, baseType: !896, size: 64, align: 64, offset: 2624)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !1505, file: !776, line: 569, baseType: !49, size: 64, align: 64, offset: 2688)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !1505, file: !776, line: 572, baseType: !86, size: 64, align: 64, offset: 2752)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1497, file: !1448, line: 144, baseType: !71, size: 16, align: 16, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !1447, file: !1448, line: 222, baseType: !1488, size: 704, align: 64, offset: 5952)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1447, file: !1448, line: 223, baseType: !1854, size: 96, align: 32, offset: 6656)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !1448, line: 162, size: 96, align: 32, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1854, file: !1448, line: 164, baseType: !60, size: 32, align: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1854, file: !1448, line: 166, baseType: !60, size: 32, align: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1854, file: !1448, line: 168, baseType: !60, size: 32, align: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !1447, file: !1448, line: 227, baseType: !1860, size: 128, align: 64, offset: 6784)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1861, line: 30, size: 128, align: 64, elements: !1862)
!1861 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1862 = !{!1863, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1860, file: !1861, line: 32, baseType: !1864, size: 64, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !48, line: 139, baseType: !49)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1860, file: !1861, line: 33, baseType: !1866, size: 64, align: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !48, line: 141, baseType: !49)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !1447, file: !1448, line: 229, baseType: !71, size: 16, align: 16, offset: 6912)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1447, file: !1448, line: 234, baseType: !1017, size: 16, align: 8, offset: 6928)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1447, file: !1448, line: 235, baseType: !60, size: 32, align: 32, offset: 6944)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1447, file: !1448, line: 236, baseType: !1871, size: 96, align: 8, offset: 6976)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 96, align: 8, elements: !1872)
!1872 = !{!1873}
!1873 = !DISubrange(count: 12)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1447, file: !1448, line: 237, baseType: !60, size: 32, align: 32, offset: 7072)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !1447, file: !1448, line: 238, baseType: !60, size: 32, align: 32, offset: 7104)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !1447, file: !1448, line: 243, baseType: !60, size: 32, align: 32, offset: 7136)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !787, file: !776, line: 1494, baseType: !51, size: 32, align: 32, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !787, file: !776, line: 1497, baseType: !1879, size: 64, align: 64, offset: 1216)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64, align: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !51, !51, !51, !875, !896, !784, !116}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !787, file: !776, line: 1499, baseType: !116, size: 64, align: 64, offset: 1280)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !787, file: !776, line: 1500, baseType: !51, size: 32, align: 32, offset: 1344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !787, file: !776, line: 1501, baseType: !1885, size: 64, align: 64, offset: 1408)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64, align: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1887, line: 177, baseType: !1888)
!1887 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1887, line: 167, size: 512, align: 64, elements: !1889)
!1889 = !{!1890, !1891, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1888, file: !1887, line: 168, baseType: !86, size: 64, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1888, file: !1887, line: 169, baseType: !1892, size: 64, align: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1893, line: 75, baseType: !1864)
!1893 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1888, file: !1887, line: 170, baseType: !78, size: 64, align: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1887, line: 171, baseType: !78, size: 64, align: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1888, file: !1887, line: 172, baseType: !51, size: 32, align: 32, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1888, file: !1887, line: 173, baseType: !51, size: 32, align: 32, offset: 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1888, file: !1887, line: 174, baseType: !51, size: 32, align: 32, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1888, file: !1887, line: 175, baseType: !1814, size: 64, align: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1888, file: !1887, line: 176, baseType: !1901, size: 64, align: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1887, line: 159, baseType: !1903)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1887, line: 159, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !787, file: !776, line: 1507, baseType: !1834, size: 64, align: 64, offset: 1472)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !787, file: !776, line: 1508, baseType: !1834, size: 64, align: 64, offset: 1536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !787, file: !776, line: 1513, baseType: !51, size: 32, align: 32, offset: 1600)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !787, file: !776, line: 1514, baseType: !1270, size: 64, align: 64, offset: 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !787, file: !776, line: 1515, baseType: !1034, size: 64, align: 64, offset: 1728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !787, file: !776, line: 1517, baseType: !1411, size: 64, align: 64, offset: 1792)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !787, file: !776, line: 1521, baseType: !1270, size: 64, align: 64, offset: 1856)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !787, file: !776, line: 1522, baseType: !1034, size: 64, align: 64, offset: 1920)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !787, file: !776, line: 1524, baseType: !1411, size: 64, align: 64, offset: 1984)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !787, file: !776, line: 1531, baseType: !1914, size: 64, align: 64, offset: 2048)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64, align: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !776, line: 1035, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !787, file: !776, line: 1536, baseType: !60, size: 32, align: 32, offset: 2112)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !787, file: !776, line: 1537, baseType: !941, size: 256, align: 8, offset: 2144)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !787, file: !776, line: 1539, baseType: !1503, size: 64, align: 64, offset: 2432)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !787, file: !776, line: 1541, baseType: !1920, size: 64, align: 64, offset: 2496)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !776, line: 905, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64, align: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!51, !1924, !904, !1072}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64, align: 64)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !787, file: !776, line: 1547, baseType: !51, size: 32, align: 32, offset: 2560)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !787, file: !776, line: 1549, baseType: !1928, size: 64, align: 64, offset: 2624)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64, align: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!51, !51, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64, align: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !786, line: 162, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1887, line: 236, size: 1984, align: 64, elements: !1934)
!1934 = !{!1935, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1933, file: !1887, line: 237, baseType: !1936, size: 64, align: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !786, line: 161, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1887, line: 186, size: 1152, align: 64, elements: !1939)
!1939 = !{!1940, !1941, !1946, !1951, !1952, !1956, !1957, !1962, !1966, !1967, !2034, !2038, !2042, !2050, !2058, !2059, !2060}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1938, file: !1887, line: 188, baseType: !51, size: 32, align: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1938, file: !1887, line: 189, baseType: !1942, size: 64, align: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64, align: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1887, line: 137, size: 256, align: 64, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1943, file: !1887, line: 137, baseType: !862, size: 256, align: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1938, file: !1887, line: 191, baseType: !1947, size: 64, align: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64, align: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1887, line: 136, size: 256, align: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1948, file: !1887, line: 136, baseType: !862, size: 256, align: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1938, file: !1887, line: 192, baseType: !1885, size: 64, align: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1938, file: !1887, line: 195, baseType: !1953, size: 64, align: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64, align: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!51, !1931}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1938, file: !1887, line: 197, baseType: !1928, size: 64, align: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1938, file: !1887, line: 199, baseType: !1958, size: 64, align: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64, align: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!51, !1961, !1931, !1523}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1938, file: !1887, line: 201, baseType: !1963, size: 64, align: 64, offset: 448)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64, align: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!51, !1931, !1523, !1523}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1938, file: !1887, line: 203, baseType: !1953, size: 64, align: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1938, file: !1887, line: 205, baseType: !1968, size: 64, align: 64, offset: 576)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64, align: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!51, !1931, !1971, !1523}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64, align: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !786, line: 156, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !1249, line: 452, size: 960, align: 64, elements: !1975)
!1975 = !{!1976, !1993, !1994, !1995, !1996, !1997, !1998, !2020, !2021, !2022, !2023, !2024, !2025, !2028, !2033}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1974, file: !1249, line: 454, baseType: !1977, size: 64, align: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64, align: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !1249, line: 450, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !1249, line: 441, size: 640, align: 64, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1991, !1992}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1979, file: !1249, line: 442, baseType: !1335, size: 64, align: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1979, file: !1249, line: 443, baseType: !1535, size: 64, align: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1979, file: !1249, line: 444, baseType: !1542, size: 64, align: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1979, file: !1249, line: 445, baseType: !1561, size: 64, align: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1979, file: !1249, line: 446, baseType: !1561, size: 64, align: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1979, file: !1249, line: 447, baseType: !1987, size: 64, align: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64, align: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !1249, line: 438, size: 256, align: 64, elements: !1989)
!1989 = !{!1990}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1988, file: !1249, line: 438, baseType: !862, size: 256, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1979, file: !1249, line: 448, baseType: !1744, size: 64, align: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1979, file: !1249, line: 449, baseType: !1749, size: 192, align: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1974, file: !1249, line: 455, baseType: !1535, size: 64, align: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1974, file: !1249, line: 456, baseType: !1341, size: 64, align: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1974, file: !1249, line: 457, baseType: !51, size: 32, align: 32, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !1249, line: 458, baseType: !51, size: 32, align: 32, offset: 224)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1974, file: !1249, line: 460, baseType: !1769, size: 64, align: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1974, file: !1249, line: 461, baseType: !1999, size: 64, align: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64, align: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !786, line: 188, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !1772, line: 356, size: 256, align: 64, elements: !2002)
!2002 = !{!2003, !2015, !2016, !2017, !2018, !2019}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !2001, file: !1772, line: 357, baseType: !2004, size: 64, align: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !1772, line: 234, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !1772, line: 226, size: 192, align: 64, elements: !2007)
!2007 = !{!2008, !2009, !2014}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2006, file: !1772, line: 227, baseType: !51, size: 32, align: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2006, file: !1772, line: 231, baseType: !2010, size: 64, align: 64, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !1772, line: 228, size: 64, align: 64, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !2010, file: !1772, line: 229, baseType: !1776, size: 64, align: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !2010, file: !1772, line: 230, baseType: !1547, size: 64, align: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !2006, file: !1772, line: 233, baseType: !1542, size: 64, align: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !2001, file: !1772, line: 358, baseType: !51, size: 32, align: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !2001, file: !1772, line: 359, baseType: !51, size: 32, align: 32, offset: 96)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !2001, file: !1772, line: 360, baseType: !1341, size: 64, align: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !2001, file: !1772, line: 361, baseType: !51, size: 32, align: 32, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !2001, file: !1772, line: 362, baseType: !51, size: 32, align: 32, offset: 224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1974, file: !1249, line: 463, baseType: !51, size: 32, align: 32, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1974, file: !1249, line: 464, baseType: !51, size: 32, align: 32, offset: 416)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1974, file: !1249, line: 466, baseType: !1335, size: 64, align: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1974, file: !1249, line: 467, baseType: !1335, size: 64, align: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1974, file: !1249, line: 469, baseType: !1805, size: 160, align: 8, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1974, file: !1249, line: 471, baseType: !2026, size: 64, align: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64, align: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !1249, line: 471, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1974, file: !1249, line: 472, baseType: !2029, size: 64, align: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64, align: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !786, line: 157, baseType: !2032)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !786, line: 157, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1974, file: !1249, line: 473, baseType: !116, size: 64, align: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1938, file: !1887, line: 207, baseType: !2035, size: 64, align: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64, align: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!51, !1931, !1972}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1938, file: !1887, line: 209, baseType: !2039, size: 64, align: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64, align: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!51, !1931, !1972, !1523}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1938, file: !1887, line: 210, baseType: !2043, size: 64, align: 64, offset: 768)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64, align: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!2046, !1931, !1542}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64, align: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !1249, line: 301, size: 256, align: 64, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2047, file: !1249, line: 301, baseType: !862, size: 256, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1938, file: !1887, line: 211, baseType: !2051, size: 64, align: 64, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64, align: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!2054, !1931, !1542}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64, align: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !1249, line: 476, size: 256, align: 64, elements: !2056)
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2055, file: !1249, line: 476, baseType: !862, size: 256, align: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1938, file: !1887, line: 212, baseType: !1953, size: 64, align: 64, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1938, file: !1887, line: 213, baseType: !853, size: 128, align: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1938, file: !1887, line: 214, baseType: !51, size: 32, align: 32, offset: 1088)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1933, file: !1887, line: 239, baseType: !51, size: 32, align: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1933, file: !1887, line: 242, baseType: !1523, size: 64, align: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1933, file: !1887, line: 244, baseType: !2046, size: 64, align: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1933, file: !1887, line: 246, baseType: !2054, size: 64, align: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1933, file: !1887, line: 247, baseType: !1885, size: 64, align: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1933, file: !1887, line: 249, baseType: !116, size: 64, align: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1933, file: !1887, line: 252, baseType: !1953, size: 64, align: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1933, file: !1887, line: 254, baseType: !1928, size: 64, align: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1933, file: !1887, line: 256, baseType: !1958, size: 64, align: 64, offset: 576)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1933, file: !1887, line: 258, baseType: !1963, size: 64, align: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1933, file: !1887, line: 260, baseType: !1953, size: 64, align: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1933, file: !1887, line: 262, baseType: !1968, size: 64, align: 64, offset: 768)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1933, file: !1887, line: 264, baseType: !2035, size: 64, align: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1933, file: !1887, line: 266, baseType: !2039, size: 64, align: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1933, file: !1887, line: 267, baseType: !1953, size: 64, align: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1933, file: !1887, line: 268, baseType: !2043, size: 64, align: 64, offset: 1024)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1933, file: !1887, line: 269, baseType: !2051, size: 64, align: 64, offset: 1088)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1933, file: !1887, line: 270, baseType: !1953, size: 64, align: 64, offset: 1152)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1933, file: !1887, line: 273, baseType: !51, size: 32, align: 32, offset: 1216)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1933, file: !1887, line: 275, baseType: !51, size: 32, align: 32, offset: 1248)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1933, file: !1887, line: 277, baseType: !2046, size: 64, align: 64, offset: 1280)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1933, file: !1887, line: 279, baseType: !2083, size: 64, align: 64, offset: 1344)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64, align: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !786, line: 183, baseType: !2085)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !786, line: 183, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1933, file: !1887, line: 281, baseType: !51, size: 32, align: 32, offset: 1408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1933, file: !1887, line: 283, baseType: !51, size: 32, align: 32, offset: 1440)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1933, file: !1887, line: 284, baseType: !51, size: 32, align: 32, offset: 1472)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1933, file: !1887, line: 285, baseType: !1523, size: 64, align: 64, offset: 1536)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1933, file: !1887, line: 287, baseType: !1523, size: 64, align: 64, offset: 1600)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1933, file: !1887, line: 289, baseType: !1972, size: 64, align: 64, offset: 1664)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1933, file: !1887, line: 291, baseType: !51, size: 32, align: 32, offset: 1728)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1933, file: !1887, line: 293, baseType: !60, size: 32, align: 32, offset: 1760)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1933, file: !1887, line: 295, baseType: !1931, size: 64, align: 64, offset: 1792)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1933, file: !1887, line: 296, baseType: !853, size: 128, align: 64, offset: 1856)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !787, file: !776, line: 1551, baseType: !2097, size: 64, align: 64, offset: 2688)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64, align: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1924, !51, !51}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !787, file: !776, line: 1553, baseType: !51, size: 32, align: 32, offset: 2752)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !787, file: !776, line: 1555, baseType: !51, size: 32, align: 32, offset: 2784)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !787, file: !776, line: 1561, baseType: !2103, size: 64, align: 64, offset: 2816)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64, align: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!60, !784, !141, !86, !60, !904, !60}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !787, file: !776, line: 1566, baseType: !2107, size: 64, align: 64, offset: 2880)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64, align: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!60, !784, !141, !904, !60}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !787, file: !776, line: 1570, baseType: !2111, size: 64, align: 64, offset: 2944)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64, align: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !786, line: 179, baseType: !2113)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !776, line: 925, size: 6400, align: 64, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2120, !2125, !2126, !2127, !2128, !2129, !2130, !2135, !2140, !2144, !2158, !2159, !2163, !2164, !2170, !2171, !2176, !2180, !2184, !2185, !2186, !2187, !2188, !2189, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2216, !2217, !2218, !2219, !2220, !2235, !2239, !2240, !2244, !2245, !2246, !2247, !2248, !2249, !2252, !2253, !2276, !2281, !2282, !2287, !2288, !2293, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !2113, file: !776, line: 926, baseType: !773, size: 64, align: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !2113, file: !776, line: 927, baseType: !1834, size: 64, align: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !2113, file: !776, line: 929, baseType: !1834, size: 64, align: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !2113, file: !776, line: 930, baseType: !2119, size: 64, align: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64, align: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !2113, file: !776, line: 931, baseType: !2121, size: 64, align: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64, align: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !776, line: 923, size: 32, align: 32, elements: !2123)
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2122, file: !776, line: 923, baseType: !51, size: 32, align: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !2113, file: !776, line: 936, baseType: !78, size: 64, align: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !2113, file: !776, line: 937, baseType: !1840, size: 64, align: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !2113, file: !776, line: 938, baseType: !1840, size: 64, align: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !2113, file: !776, line: 944, baseType: !51, size: 32, align: 32, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !2113, file: !776, line: 950, baseType: !49, size: 64, align: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !2113, file: !776, line: 960, baseType: !2131, size: 64, align: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64, align: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!51, !2134, !1503}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !2113, file: !776, line: 961, baseType: !2136, size: 64, align: 64, offset: 704)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64, align: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2139, !1503}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64, align: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !2113, file: !776, line: 962, baseType: !2141, size: 64, align: 64, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64, align: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1503, !2134, !904, !51, !50}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2113, file: !776, line: 980, baseType: !2145, size: 352, align: 32, offset: 832)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2113, file: !776, line: 964, size: 352, align: 32, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !2145, file: !776, line: 965, baseType: !51, size: 32, align: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !2145, file: !776, line: 966, baseType: !51, size: 32, align: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !2145, file: !776, line: 967, baseType: !51, size: 32, align: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !2145, file: !776, line: 968, baseType: !51, size: 32, align: 32, offset: 96)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !2145, file: !776, line: 969, baseType: !51, size: 32, align: 32, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !2145, file: !776, line: 970, baseType: !51, size: 32, align: 32, offset: 160)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !2145, file: !776, line: 971, baseType: !51, size: 32, align: 32, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !2145, file: !776, line: 972, baseType: !51, size: 32, align: 32, offset: 224)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !2145, file: !776, line: 973, baseType: !51, size: 32, align: 32, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !2145, file: !776, line: 974, baseType: !51, size: 32, align: 32, offset: 288)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !2145, file: !776, line: 975, baseType: !51, size: 32, align: 32, offset: 320)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !2113, file: !776, line: 982, baseType: !51, size: 32, align: 32, offset: 1184)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !2113, file: !776, line: 985, baseType: !2160, size: 64, align: 64, offset: 1216)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64, align: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!51, !1931, !116}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !2113, file: !776, line: 986, baseType: !116, size: 64, align: 64, offset: 1280)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !2113, file: !776, line: 993, baseType: !2165, size: 64, align: 64, offset: 1344)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !2167, line: 389, baseType: !2168)
!2167 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!51, !86, !51, !51, !116}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !2113, file: !776, line: 996, baseType: !116, size: 64, align: 64, offset: 1408)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !2113, file: !776, line: 999, baseType: !2172, size: 64, align: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64, align: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!51, !784, !1961, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64, align: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !2113, file: !776, line: 1002, baseType: !2177, size: 64, align: 64, offset: 1536)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64, align: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!51, !784, !904, !1072}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !2113, file: !776, line: 1006, baseType: !2181, size: 64, align: 64, offset: 1600)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64, align: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!51, !784, !904, !60}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !2113, file: !776, line: 1009, baseType: !853, size: 128, align: 64, offset: 1664)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !2113, file: !776, line: 1011, baseType: !1040, size: 64, align: 64, offset: 1792)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !2113, file: !776, line: 1012, baseType: !1040, size: 64, align: 64, offset: 1856)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !2113, file: !776, line: 1013, baseType: !1040, size: 64, align: 64, offset: 1920)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !2113, file: !776, line: 1015, baseType: !2046, size: 64, align: 64, offset: 1984)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !2113, file: !776, line: 1016, baseType: !2190, size: 64, align: 64, offset: 2048)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64, align: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !776, line: 922, size: 256, align: 64, elements: !2192)
!2192 = !{!2193}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2191, file: !776, line: 922, baseType: !862, size: 256, align: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !2113, file: !776, line: 1021, baseType: !2097, size: 64, align: 64, offset: 2112)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !2113, file: !776, line: 1024, baseType: !1247, size: 64, align: 64, offset: 2176)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2113, file: !776, line: 1031, baseType: !78, size: 64, align: 64, offset: 2240)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2113, file: !776, line: 1032, baseType: !78, size: 64, align: 64, offset: 2304)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !2113, file: !776, line: 1033, baseType: !49, size: 64, align: 64, offset: 2368)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !2113, file: !776, line: 1035, baseType: !1914, size: 64, align: 64, offset: 2432)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !2113, file: !776, line: 1036, baseType: !51, size: 32, align: 32, offset: 2496)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !2113, file: !776, line: 1039, baseType: !1879, size: 64, align: 64, offset: 2560)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !2113, file: !776, line: 1041, baseType: !116, size: 64, align: 64, offset: 2624)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !2113, file: !776, line: 1043, baseType: !51, size: 32, align: 32, offset: 2688)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !2113, file: !776, line: 1044, baseType: !60, size: 32, align: 32, offset: 2720)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !2113, file: !776, line: 1045, baseType: !941, size: 256, align: 8, offset: 2752)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !2113, file: !776, line: 1047, baseType: !1928, size: 64, align: 64, offset: 3008)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !2113, file: !776, line: 1050, baseType: !1920, size: 64, align: 64, offset: 3072)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2113, file: !776, line: 1052, baseType: !1885, size: 64, align: 64, offset: 3136)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !2113, file: !776, line: 1059, baseType: !51, size: 32, align: 32, offset: 3200)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !2113, file: !776, line: 1065, baseType: !60, size: 32, align: 32, offset: 3232)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !2113, file: !776, line: 1071, baseType: !1086, size: 64, align: 64, offset: 3264)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !2113, file: !776, line: 1076, baseType: !2213, size: 64, align: 64, offset: 3328)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64, align: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!51, !784, !50, !116}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !2113, file: !776, line: 1077, baseType: !116, size: 64, align: 64, offset: 3392)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !2113, file: !776, line: 1079, baseType: !946, size: 128, align: 8, offset: 3456)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !2113, file: !776, line: 1080, baseType: !946, size: 128, align: 8, offset: 3584)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !2113, file: !776, line: 1081, baseType: !946, size: 128, align: 8, offset: 3712)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !2113, file: !776, line: 1083, baseType: !2221, size: 64, align: 64, offset: 3840)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64, align: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!51, !784, !904, !904, !1270, !2224, !51}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64, align: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !2226, line: 82, baseType: !2227)
!2226 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !2226, line: 75, size: 2304, align: 64, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !2227, file: !2226, line: 76, baseType: !1040, size: 64, align: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !2227, file: !2226, line: 77, baseType: !1035, size: 384, align: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !2227, file: !2226, line: 78, baseType: !1035, size: 384, align: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !2227, file: !2226, line: 79, baseType: !1035, size: 384, align: 64, offset: 832)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !2227, file: !2226, line: 80, baseType: !60, size: 32, align: 32, offset: 1216)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2227, file: !2226, line: 81, baseType: !1113, size: 1024, align: 8, offset: 1248)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !2113, file: !776, line: 1090, baseType: !2236, size: 64, align: 64, offset: 3904)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64, align: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!51, !784, !116}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !2113, file: !776, line: 1091, baseType: !116, size: 64, align: 64, offset: 3968)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !2113, file: !776, line: 1094, baseType: !2241, size: 64, align: 64, offset: 4032)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64, align: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!51, !784, !116, !896, !116}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !2113, file: !776, line: 1096, baseType: !116, size: 64, align: 64, offset: 4096)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !2113, file: !776, line: 1100, baseType: !86, size: 64, align: 64, offset: 4160)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !2113, file: !776, line: 1101, baseType: !2103, size: 64, align: 64, offset: 4224)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !2113, file: !776, line: 1106, baseType: !2107, size: 64, align: 64, offset: 4288)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !2113, file: !776, line: 1113, baseType: !60, size: 32, align: 32, offset: 4352)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !2113, file: !776, line: 1114, baseType: !2250, size: 64, align: 64, offset: 4416)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64, align: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !776, line: 1114, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !2113, file: !776, line: 1115, baseType: !2250, size: 64, align: 64, offset: 4480)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !2113, file: !776, line: 1118, baseType: !2254, size: 1024, align: 64, offset: 4544)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !776, line: 864, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !776, line: 849, size: 1024, align: 64, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !2255, file: !776, line: 851, baseType: !116, size: 64, align: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !2255, file: !776, line: 853, baseType: !2213, size: 64, align: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !2255, file: !776, line: 855, baseType: !2236, size: 64, align: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !2255, file: !776, line: 857, baseType: !2261, size: 64, align: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64, align: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!86, !784, !116}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !2255, file: !776, line: 858, baseType: !86, size: 64, align: 64, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !2255, file: !776, line: 859, baseType: !1149, size: 64, align: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2255, file: !776, line: 859, baseType: !1149, size: 64, align: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2255, file: !776, line: 859, baseType: !1149, size: 64, align: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !2255, file: !776, line: 859, baseType: !1149, size: 64, align: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !2255, file: !776, line: 859, baseType: !1149, size: 64, align: 64, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2255, file: !776, line: 860, baseType: !1149, size: 64, align: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2255, file: !776, line: 860, baseType: !1149, size: 64, align: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2255, file: !776, line: 860, baseType: !1149, size: 64, align: 64, offset: 768)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2255, file: !776, line: 861, baseType: !86, size: 64, align: 64, offset: 832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2255, file: !776, line: 862, baseType: !51, size: 32, align: 32, offset: 896)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !2255, file: !776, line: 863, baseType: !78, size: 64, align: 64, offset: 960)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !2113, file: !776, line: 1131, baseType: !2277, size: 64, align: 64, offset: 5568)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64, align: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!51, !784, !2280, !1072, !116}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !2113, file: !776, line: 1133, baseType: !116, size: 64, align: 64, offset: 5632)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !2113, file: !776, line: 1138, baseType: !2283, size: 64, align: 64, offset: 5696)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64, align: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!51, !784, !2286, !904, !919, !60, !116}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64, align: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !2113, file: !776, line: 1142, baseType: !116, size: 64, align: 64, offset: 5760)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !2113, file: !776, line: 1145, baseType: !2289, size: 64, align: 64, offset: 5824)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64, align: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !776, line: 388, size: 256, align: 64, elements: !2291)
!2291 = !{!2292}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2290, file: !776, line: 388, baseType: !862, size: 256, align: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !2113, file: !776, line: 1162, baseType: !2294, size: 64, align: 64, offset: 5888)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64, align: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!51, !784, !2280, !904, !919, !60, !116}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !2113, file: !776, line: 1167, baseType: !116, size: 64, align: 64, offset: 5952)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !2113, file: !776, line: 1173, baseType: !904, size: 64, align: 64, offset: 6016)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !2113, file: !776, line: 1174, baseType: !60, size: 32, align: 32, offset: 6080)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !2113, file: !776, line: 1178, baseType: !896, size: 64, align: 64, offset: 6144)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !2113, file: !776, line: 1179, baseType: !904, size: 64, align: 64, offset: 6208)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !2113, file: !776, line: 1180, baseType: !896, size: 64, align: 64, offset: 6272)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !2113, file: !776, line: 1181, baseType: !904, size: 64, align: 64, offset: 6336)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !787, file: !776, line: 1575, baseType: !51, size: 32, align: 32, offset: 3008)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !787, file: !776, line: 1577, baseType: !49, size: 64, align: 64, offset: 3072)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !787, file: !776, line: 1578, baseType: !853, size: 128, align: 64, offset: 3136)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !787, file: !776, line: 1580, baseType: !1247, size: 64, align: 64, offset: 3264)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !787, file: !776, line: 1581, baseType: !51, size: 32, align: 32, offset: 3328)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !787, file: !776, line: 1583, baseType: !78, size: 64, align: 64, offset: 3392)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !787, file: !776, line: 1585, baseType: !78, size: 64, align: 64, offset: 3456)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !787, file: !776, line: 1586, baseType: !49, size: 64, align: 64, offset: 3520)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !787, file: !776, line: 1587, baseType: !51, size: 32, align: 32, offset: 3584)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !787, file: !776, line: 1589, baseType: !51, size: 32, align: 32, offset: 3616)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !787, file: !776, line: 1590, baseType: !60, size: 32, align: 32, offset: 3648)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !787, file: !776, line: 1593, baseType: !2316, size: 64, align: 64, offset: 3712)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64, align: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !784, !51, !51, !904, !51, !116}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !787, file: !776, line: 1595, baseType: !116, size: 64, align: 64, offset: 3776)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !787, file: !776, line: 1596, baseType: !86, size: 64, align: 64, offset: 3840)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !787, file: !776, line: 1603, baseType: !51, size: 32, align: 32, offset: 3904)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !787, file: !776, line: 1606, baseType: !51, size: 32, align: 32, offset: 3936)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !787, file: !776, line: 1608, baseType: !51, size: 32, align: 32, offset: 3968)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !787, file: !776, line: 1610, baseType: !2325, size: 64, align: 64, offset: 4032)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64, align: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !776, line: 1610, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !787, file: !776, line: 1611, baseType: !2328, size: 64, align: 64, offset: 4096)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64, align: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !1249, line: 202, baseType: !1745)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !787, file: !776, line: 1613, baseType: !904, size: 64, align: 64, offset: 4160)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !787, file: !776, line: 1614, baseType: !51, size: 32, align: 32, offset: 4224)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !787, file: !776, line: 1616, baseType: !51, size: 32, align: 32, offset: 4256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !787, file: !776, line: 1618, baseType: !896, size: 64, align: 64, offset: 4288)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !787, file: !776, line: 1620, baseType: !904, size: 64, align: 64, offset: 4352)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !787, file: !776, line: 1621, baseType: !896, size: 64, align: 64, offset: 4416)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !787, file: !776, line: 1623, baseType: !904, size: 64, align: 64, offset: 4480)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !787, file: !776, line: 1629, baseType: !116, size: 64, align: 64, offset: 4544)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !787, file: !776, line: 1630, baseType: !896, size: 64, align: 64, offset: 4608)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !787, file: !776, line: 1632, baseType: !2340, size: 64, align: 64, offset: 4672)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64, align: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !776, line: 373, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !2343, line: 802, size: 128, align: 64, elements: !2344)
!2343 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2342, file: !2343, line: 803, baseType: !71, size: 16, align: 16)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2342, file: !2343, line: 804, baseType: !116, size: 64, align: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !787, file: !776, line: 1634, baseType: !2348, size: 64, align: 64, offset: 4736)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !776, line: 390, baseType: !2349)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64, align: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!51, !784, !919, !51, !116}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !787, file: !776, line: 1635, baseType: !116, size: 64, align: 64, offset: 4800)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !787, file: !776, line: 1637, baseType: !2354, size: 64, align: 64, offset: 4864)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !776, line: 393, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64, align: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!51, !784, !116, !50, !1834, !2358, !116}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64, align: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, align: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !787, file: !776, line: 1638, baseType: !116, size: 64, align: 64, offset: 4928)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !787, file: !776, line: 1639, baseType: !2111, size: 64, align: 64, offset: 4992)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !787, file: !776, line: 1648, baseType: !904, size: 64, align: 64, offset: 5056)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !787, file: !776, line: 1649, baseType: !905, size: 8, align: 8, offset: 5120)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !787, file: !776, line: 1653, baseType: !2289, size: 64, align: 64, offset: 5184)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !787, file: !776, line: 1655, baseType: !2366, size: 64, align: 64, offset: 5248)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64, align: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !776, line: 386, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !776, line: 383, size: 128, align: 64, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2368, file: !776, line: 384, baseType: !141, size: 64, align: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2368, file: !776, line: 385, baseType: !78, size: 64, align: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !787, file: !776, line: 1662, baseType: !60, size: 32, align: 32, offset: 5312)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !787, file: !776, line: 1664, baseType: !60, size: 32, align: 32, offset: 5344)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !787, file: !776, line: 1666, baseType: !60, size: 32, align: 32, offset: 5376)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !787, file: !776, line: 1675, baseType: !51, size: 32, align: 32, offset: 5408)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !787, file: !776, line: 1678, baseType: !2254, size: 1024, align: 64, offset: 5440)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !787, file: !776, line: 1685, baseType: !904, size: 64, align: 64, offset: 6464)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !787, file: !776, line: 1686, baseType: !60, size: 32, align: 32, offset: 6528)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !777, file: !776, line: 441, baseType: !2380, size: 64, align: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64, align: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !784}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !777, file: !776, line: 442, baseType: !2380, size: 64, align: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !777, file: !776, line: 443, baseType: !781, size: 64, align: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !777, file: !776, line: 444, baseType: !781, size: 64, align: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !777, file: !776, line: 445, baseType: !2387, size: 64, align: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64, align: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!51, !784, !116, !51}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !777, file: !776, line: 446, baseType: !2387, size: 64, align: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !777, file: !776, line: 447, baseType: !2392, size: 64, align: 64, offset: 512)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64, align: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!51, !784, !875, !51}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !777, file: !776, line: 448, baseType: !781, size: 64, align: 64, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !777, file: !776, line: 449, baseType: !781, size: 64, align: 64, offset: 640)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !777, file: !776, line: 450, baseType: !781, size: 64, align: 64, offset: 704)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !777, file: !776, line: 451, baseType: !2399, size: 64, align: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64, align: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!49, !784, !51, !51, !51, !49, !50}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !777, file: !776, line: 453, baseType: !2403, size: 64, align: 64, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64, align: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!51, !784, !51, !904, !51, !51}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !777, file: !776, line: 455, baseType: !2407, size: 64, align: 64, offset: 896)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64, align: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!51, !784, !51, !875, !51}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !777, file: !776, line: 456, baseType: !781, size: 64, align: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !777, file: !776, line: 457, baseType: !2412, size: 64, align: 64, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64, align: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!49, !784, !51, !49, !116}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !777, file: !776, line: 458, baseType: !2416, size: 64, align: 64, offset: 1088)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64, align: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!49, !2111, !51, !49, !116}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !777, file: !776, line: 459, baseType: !2420, size: 64, align: 64, offset: 1152)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64, align: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!1123, !919}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !777, file: !776, line: 460, baseType: !2424, size: 64, align: 64, offset: 1216)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64, align: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!51, !1123, !904}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !777, file: !776, line: 461, baseType: !2428, size: 64, align: 64, offset: 1280)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64, align: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!51, !1924}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !777, file: !776, line: 462, baseType: !2432, size: 64, align: 64, offset: 1344)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64, align: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!51}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !777, file: !776, line: 463, baseType: !2436, size: 64, align: 64, offset: 1408)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64, align: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!1123, !60}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !777, file: !776, line: 464, baseType: !2440, size: 64, align: 64, offset: 1472)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64, align: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !51}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64, align: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !777, file: !776, line: 465, baseType: !1431, size: 64, align: 64, offset: 1536)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !777, file: !776, line: 466, baseType: !2447, size: 64, align: 64, offset: 1600)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64, align: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !776, line: 466, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !777, file: !776, line: 467, baseType: !2432, size: 64, align: 64, offset: 1664)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !777, file: !776, line: 468, baseType: !2451, size: 64, align: 64, offset: 1728)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64, align: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!49, !784, !51, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64, align: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !777, file: !776, line: 469, baseType: !2458, size: 64, align: 64, offset: 1792)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64, align: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!49, !2111, !51, !2454}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cacrt", scope: !736, file: !56, line: 110, baseType: !1523, size: 64, align: 64, offset: 1216)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cakey", scope: !736, file: !56, line: 111, baseType: !1573, size: 64, align: 64, offset: 1280)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !736, file: !56, line: 112, baseType: !1573, size: 64, align: 64, offset: 1344)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !736, file: !56, line: 113, baseType: !2046, size: 64, align: 64, offset: 1408)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "clientcrt", scope: !736, file: !56, line: 114, baseType: !1523, size: 64, align: 64, offset: 1472)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "clientkey", scope: !736, file: !56, line: 115, baseType: !1573, size: 64, align: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !736, file: !56, line: 117, baseType: !1141, size: 64, align: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ecdhcurve", scope: !736, file: !56, line: 120, baseType: !86, size: 64, align: 64, offset: 1664)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !736, file: !56, line: 122, baseType: !120, size: 64, align: 64, offset: 1728)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "crlurl", scope: !736, file: !56, line: 123, baseType: !86, size: 64, align: 64, offset: 1792)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "verify_peer", scope: !736, file: !56, line: 124, baseType: !60, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "allow_wrong_host", scope: !736, file: !56, line: 125, baseType: !60, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!2473 = !DILocalVariable(name: "opts", arg: 1, scope: !731, file: !123, line: 876, type: !734)
!2474 = !DILocation(line: 876, column: 22, scope: !731)
!2475 = !DILocalVariable(name: "clisock", arg: 2, scope: !731, file: !123, line: 876, type: !50)
!2476 = !DILocation(line: 876, column: 32, scope: !731)
!2477 = !DILocalVariable(name: "nclisock", arg: 3, scope: !731, file: !123, line: 876, type: !896)
!2478 = !DILocation(line: 876, column: 50, scope: !731)
!2479 = !DILocalVariable(name: "selfpipev", scope: !731, file: !123, line: 878, type: !2480)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, align: 32, elements: !1018)
!2481 = !DILocation(line: 878, column: 6, scope: !731)
!2482 = !DILocalVariable(name: "chldpipev", scope: !731, file: !123, line: 879, type: !2480)
!2483 = !DILocation(line: 879, column: 6, scope: !731)
!2484 = !DILocation(line: 880, column: 15, scope: !731)
!2485 = !DILocation(line: 880, column: 2, scope: !731)
!2486 = !DILocalVariable(name: "sockcliv", scope: !731, file: !123, line: 880, type: !2487)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, align: 32, elements: !2488)
!2488 = !{!165, !1019}
!2489 = !DILocation(line: 880, column: 6, scope: !731)
!2490 = !DILocalVariable(name: "pid", scope: !731, file: !123, line: 881, type: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 98, baseType: !2492)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !48, line: 133, baseType: !51)
!2493 = !DILocation(line: 881, column: 8, scope: !731)
!2494 = !DILocation(line: 883, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !731, file: !123, line: 883, column: 6)
!2496 = !DILocation(line: 883, column: 13, scope: !2495)
!2497 = !DILocation(line: 883, column: 6, scope: !731)
!2498 = !DILocation(line: 884, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !123, line: 883, column: 23)
!2500 = !DILocation(line: 885, column: 20, scope: !2499)
!2501 = !DILocation(line: 886, column: 2, scope: !2499)
!2502 = !DILocation(line: 887, column: 3, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !123, line: 886, column: 9)
!2504 = !DILocation(line: 888, column: 20, scope: !2503)
!2505 = !DILocation(line: 891, column: 19, scope: !731)
!2506 = !DILocation(line: 892, column: 18, scope: !731)
!2507 = !DILocation(line: 893, column: 18, scope: !731)
!2508 = !DILocation(line: 894, column: 19, scope: !731)
!2509 = !DILocation(line: 895, column: 19, scope: !731)
!2510 = !DILocation(line: 897, column: 11, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !731, file: !123, line: 897, column: 6)
!2512 = !DILocation(line: 897, column: 6, scope: !2511)
!2513 = !DILocation(line: 897, column: 22, scope: !2511)
!2514 = !DILocation(line: 897, column: 6, scope: !731)
!2515 = !DILocation(line: 899, column: 28, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !123, line: 897, column: 29)
!2517 = !DILocation(line: 899, column: 27, scope: !2516)
!2518 = !DILocation(line: 899, column: 18, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2516, file: !123, discriminator: 1)
!2520 = !DILocation(line: 899, column: 36, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2516, file: !123, discriminator: 2)
!2522 = !DILocation(line: 899, column: 35, scope: !2516)
!2523 = !DILocation(line: 898, column: 3, scope: !2516)
!2524 = !DILocation(line: 900, column: 3, scope: !2516)
!2525 = !DILocation(line: 903, column: 17, scope: !731)
!2526 = !DILocation(line: 903, column: 31, scope: !731)
!2527 = !DILocation(line: 902, column: 2, scope: !731)
!2528 = !DILocation(line: 905, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !731, file: !123, line: 905, column: 6)
!2530 = !DILocation(line: 905, column: 6, scope: !2529)
!2531 = !DILocation(line: 905, column: 22, scope: !2529)
!2532 = !DILocation(line: 905, column: 6, scope: !731)
!2533 = !DILocation(line: 907, column: 28, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !123, line: 905, column: 29)
!2535 = !DILocation(line: 907, column: 27, scope: !2534)
!2536 = !DILocation(line: 907, column: 18, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2534, file: !123, discriminator: 1)
!2538 = !DILocation(line: 907, column: 36, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2534, file: !123, discriminator: 2)
!2540 = !DILocation(line: 907, column: 35, scope: !2534)
!2541 = !DILocation(line: 906, column: 3, scope: !2534)
!2542 = !DILocation(line: 908, column: 3, scope: !2534)
!2543 = !DILocation(line: 911, column: 17, scope: !731)
!2544 = !DILocation(line: 911, column: 31, scope: !731)
!2545 = !DILocation(line: 910, column: 2, scope: !731)
!2546 = !DILocalVariable(name: "i", scope: !2547, file: !123, line: 913, type: !896)
!2547 = distinct !DILexicalBlock(scope: !731, file: !123, line: 913, column: 2)
!2548 = !DILocation(line: 913, column: 14, scope: !2547)
!2549 = !DILocation(line: 913, column: 7, scope: !2547)
!2550 = !DILocation(line: 913, column: 21, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2552, file: !123, discriminator: 1)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !123, line: 913, column: 2)
!2553 = !DILocation(line: 913, column: 25, scope: !2551)
!2554 = !DILocation(line: 913, column: 23, scope: !2551)
!2555 = !DILocation(line: 913, column: 2, scope: !2551)
!2556 = !DILocation(line: 914, column: 50, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !123, line: 914, column: 7)
!2558 = distinct !DILexicalBlock(scope: !2552, file: !123, line: 913, column: 40)
!2559 = !DILocation(line: 914, column: 41, scope: !2557)
!2560 = !DILocation(line: 914, column: 7, scope: !2557)
!2561 = !DILocation(line: 914, column: 54, scope: !2557)
!2562 = !DILocation(line: 914, column: 7, scope: !2558)
!2563 = !DILocation(line: 916, column: 32, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2557, file: !123, line: 914, column: 61)
!2565 = !DILocation(line: 916, column: 45, scope: !2564)
!2566 = !DILocation(line: 916, column: 44, scope: !2564)
!2567 = !DILocation(line: 916, column: 35, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2564, file: !123, discriminator: 1)
!2569 = !DILocation(line: 916, column: 53, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2564, file: !123, discriminator: 2)
!2571 = !DILocation(line: 916, column: 52, scope: !2564)
!2572 = !DILocation(line: 915, column: 4, scope: !2564)
!2573 = !DILocation(line: 917, column: 4, scope: !2564)
!2574 = !DILocation(line: 920, column: 18, scope: !2558)
!2575 = !DILocation(line: 920, column: 30, scope: !2558)
!2576 = !DILocation(line: 920, column: 21, scope: !2558)
!2577 = !DILocation(line: 920, column: 46, scope: !2558)
!2578 = !DILocation(line: 920, column: 37, scope: !2558)
!2579 = !DILocation(line: 919, column: 3, scope: !2558)
!2580 = !DILocation(line: 921, column: 2, scope: !2558)
!2581 = !DILocation(line: 913, column: 36, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2552, file: !123, discriminator: 2)
!2583 = !DILocation(line: 913, column: 2, scope: !2582)
!2584 = distinct !{!2584, !2585}
!2585 = !DILocation(line: 913, column: 2, scope: !731)
!2586 = !DILocation(line: 923, column: 44, scope: !731)
!2587 = !DILocation(line: 923, column: 2, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !731, file: !123, discriminator: 1)
!2589 = !DILocation(line: 924, column: 8, scope: !731)
!2590 = !DILocation(line: 924, column: 6, scope: !731)
!2591 = !DILocation(line: 925, column: 6, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !731, file: !123, line: 925, column: 6)
!2593 = !DILocation(line: 925, column: 10, scope: !2592)
!2594 = !DILocation(line: 925, column: 6, scope: !731)
!2595 = !DILocation(line: 927, column: 28, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !123, line: 925, column: 17)
!2597 = !DILocation(line: 927, column: 27, scope: !2596)
!2598 = !DILocation(line: 927, column: 18, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2596, file: !123, discriminator: 1)
!2600 = !DILocation(line: 927, column: 36, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2596, file: !123, discriminator: 2)
!2602 = !DILocation(line: 927, column: 35, scope: !2596)
!2603 = !DILocation(line: 926, column: 3, scope: !2596)
!2604 = !DILocation(line: 928, column: 9, scope: !2596)
!2605 = !DILocation(line: 928, column: 3, scope: !2596)
!2606 = !DILocation(line: 929, column: 9, scope: !2596)
!2607 = !DILocation(line: 929, column: 3, scope: !2596)
!2608 = !DILocation(line: 930, column: 9, scope: !2596)
!2609 = !DILocation(line: 930, column: 3, scope: !2596)
!2610 = !DILocation(line: 931, column: 9, scope: !2596)
!2611 = !DILocation(line: 931, column: 3, scope: !2596)
!2612 = !DILocalVariable(name: "i", scope: !2613, file: !123, line: 932, type: !896)
!2613 = distinct !DILexicalBlock(scope: !2596, file: !123, line: 932, column: 3)
!2614 = !DILocation(line: 932, column: 15, scope: !2613)
!2615 = !DILocation(line: 932, column: 8, scope: !2613)
!2616 = !DILocation(line: 932, column: 22, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2618, file: !123, discriminator: 1)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !123, line: 932, column: 3)
!2619 = !DILocation(line: 932, column: 26, scope: !2617)
!2620 = !DILocation(line: 932, column: 24, scope: !2617)
!2621 = !DILocation(line: 932, column: 3, scope: !2617)
!2622 = !DILocation(line: 933, column: 19, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !123, line: 932, column: 41)
!2624 = !DILocation(line: 933, column: 10, scope: !2623)
!2625 = !DILocation(line: 933, column: 4, scope: !2623)
!2626 = !DILocation(line: 934, column: 19, scope: !2623)
!2627 = !DILocation(line: 934, column: 10, scope: !2623)
!2628 = !DILocation(line: 934, column: 4, scope: !2623)
!2629 = !DILocation(line: 935, column: 3, scope: !2623)
!2630 = !DILocation(line: 932, column: 37, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2618, file: !123, discriminator: 2)
!2632 = !DILocation(line: 932, column: 3, scope: !2631)
!2633 = distinct !{!2633, !2634}
!2634 = !DILocation(line: 932, column: 3, scope: !2596)
!2635 = !DILocation(line: 936, column: 3, scope: !2596)
!2636 = !DILocation(line: 937, column: 13, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2592, file: !123, line: 937, column: 13)
!2638 = !DILocation(line: 937, column: 17, scope: !2637)
!2639 = !DILocation(line: 937, column: 13, scope: !2592)
!2640 = !DILocation(line: 939, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !123, line: 937, column: 23)
!2642 = !DILocation(line: 939, column: 3, scope: !2641)
!2643 = !DILocation(line: 940, column: 9, scope: !2641)
!2644 = !DILocation(line: 940, column: 3, scope: !2641)
!2645 = !DILocalVariable(name: "i", scope: !2646, file: !123, line: 941, type: !896)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !123, line: 941, column: 3)
!2647 = !DILocation(line: 941, column: 15, scope: !2646)
!2648 = !DILocation(line: 941, column: 8, scope: !2646)
!2649 = !DILocation(line: 941, column: 22, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !123, discriminator: 1)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !123, line: 941, column: 3)
!2652 = !DILocation(line: 941, column: 26, scope: !2650)
!2653 = !DILocation(line: 941, column: 24, scope: !2650)
!2654 = !DILocation(line: 941, column: 3, scope: !2650)
!2655 = !DILocation(line: 942, column: 19, scope: !2651)
!2656 = !DILocation(line: 942, column: 10, scope: !2651)
!2657 = !DILocation(line: 942, column: 4, scope: !2651)
!2658 = !DILocation(line: 941, column: 37, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2651, file: !123, discriminator: 2)
!2660 = !DILocation(line: 941, column: 3, scope: !2659)
!2661 = distinct !{!2661, !2662}
!2662 = !DILocation(line: 941, column: 3, scope: !2641)
!2663 = !DILocalVariable(name: "buf", scope: !2641, file: !123, line: 945, type: !711)
!2664 = !DILocation(line: 945, column: 8, scope: !2641)
!2665 = !DILocalVariable(name: "n", scope: !2641, file: !123, line: 946, type: !45)
!2666 = !DILocation(line: 946, column: 11, scope: !2641)
!2667 = !DILocation(line: 947, column: 9, scope: !2641)
!2668 = !DILocation(line: 947, column: 3, scope: !2641)
!2669 = !DILocation(line: 948, column: 3, scope: !2641)
!2670 = distinct !{!2670, !2669}
!2671 = !DILocation(line: 949, column: 13, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2641, file: !123, line: 948, column: 6)
!2673 = !DILocation(line: 949, column: 27, scope: !2672)
!2674 = !DILocation(line: 949, column: 8, scope: !2672)
!2675 = !DILocation(line: 949, column: 6, scope: !2672)
!2676 = !DILocation(line: 950, column: 3, scope: !2672)
!2677 = !DILocation(line: 950, column: 12, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2641, file: !123, discriminator: 1)
!2679 = !DILocation(line: 950, column: 14, scope: !2678)
!2680 = !DILocation(line: 950, column: 20, scope: !2678)
!2681 = !DILocation(line: 950, column: 24, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2641, file: !123, discriminator: 2)
!2683 = !DILocation(line: 950, column: 23, scope: !2682)
!2684 = !DILocation(line: 950, column: 28, scope: !2682)
!2685 = !DILocation(line: 950, column: 3, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2672, file: !123, discriminator: 3)
!2687 = !DILocation(line: 951, column: 9, scope: !2641)
!2688 = !DILocation(line: 951, column: 3, scope: !2641)
!2689 = !DILocation(line: 952, column: 44, scope: !2641)
!2690 = !DILocation(line: 952, column: 3, scope: !2678)
!2691 = !DILocalVariable(name: "i", scope: !2692, file: !123, line: 954, type: !896)
!2692 = distinct !DILexicalBlock(scope: !2641, file: !123, line: 954, column: 3)
!2693 = !DILocation(line: 954, column: 15, scope: !2692)
!2694 = !DILocation(line: 954, column: 8, scope: !2692)
!2695 = !DILocation(line: 954, column: 22, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2697, file: !123, discriminator: 1)
!2697 = distinct !DILexicalBlock(scope: !2692, file: !123, line: 954, column: 3)
!2698 = !DILocation(line: 954, column: 26, scope: !2696)
!2699 = !DILocation(line: 954, column: 24, scope: !2696)
!2700 = !DILocation(line: 954, column: 3, scope: !2696)
!2701 = !DILocation(line: 955, column: 26, scope: !2697)
!2702 = !DILocation(line: 955, column: 17, scope: !2697)
!2703 = !DILocation(line: 955, column: 12, scope: !2697)
!2704 = !DILocation(line: 955, column: 4, scope: !2697)
!2705 = !DILocation(line: 955, column: 15, scope: !2697)
!2706 = !DILocation(line: 954, column: 37, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2697, file: !123, discriminator: 2)
!2708 = !DILocation(line: 954, column: 3, scope: !2707)
!2709 = distinct !{!2709, !2710}
!2710 = !DILocation(line: 954, column: 3, scope: !2641)
!2711 = !DILocation(line: 956, column: 3, scope: !2641)
!2712 = !DILocalVariable(name: "i", scope: !2713, file: !123, line: 959, type: !896)
!2713 = distinct !DILexicalBlock(scope: !731, file: !123, line: 959, column: 2)
!2714 = !DILocation(line: 959, column: 14, scope: !2713)
!2715 = !DILocation(line: 959, column: 7, scope: !2713)
!2716 = !DILocation(line: 959, column: 21, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2718, file: !123, discriminator: 1)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !123, line: 959, column: 2)
!2719 = !DILocation(line: 959, column: 25, scope: !2717)
!2720 = !DILocation(line: 959, column: 23, scope: !2717)
!2721 = !DILocation(line: 959, column: 2, scope: !2717)
!2722 = !DILocation(line: 960, column: 18, scope: !2718)
!2723 = !DILocation(line: 960, column: 9, scope: !2718)
!2724 = !DILocation(line: 960, column: 3, scope: !2718)
!2725 = !DILocation(line: 959, column: 36, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2718, file: !123, discriminator: 2)
!2727 = !DILocation(line: 959, column: 2, scope: !2726)
!2728 = distinct !{!2728, !2729}
!2729 = !DILocation(line: 959, column: 2, scope: !731)
!2730 = !DILocation(line: 961, column: 18, scope: !731)
!2731 = !DILocation(line: 961, column: 16, scope: !731)
!2732 = !DILocation(line: 966, column: 2, scope: !731)
!2733 = !DILocation(line: 967, column: 2, scope: !731)
!2734 = !DILocation(line: 972, column: 6, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !731, file: !123, line: 972, column: 6)
!2736 = !DILocation(line: 972, column: 51, scope: !2735)
!2737 = !DILocation(line: 972, column: 6, scope: !731)
!2738 = !DILocation(line: 974, column: 28, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !123, line: 972, column: 63)
!2740 = !DILocation(line: 974, column: 27, scope: !2739)
!2741 = !DILocation(line: 974, column: 18, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2739, file: !123, discriminator: 1)
!2743 = !DILocation(line: 974, column: 36, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2739, file: !123, discriminator: 2)
!2745 = !DILocation(line: 974, column: 35, scope: !2739)
!2746 = !DILocation(line: 973, column: 3, scope: !2739)
!2747 = !DILocation(line: 975, column: 3, scope: !2739)
!2748 = !DILocation(line: 977, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !731, file: !123, line: 977, column: 6)
!2750 = !DILocation(line: 977, column: 51, scope: !2749)
!2751 = !DILocation(line: 977, column: 6, scope: !731)
!2752 = !DILocation(line: 979, column: 28, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !123, line: 977, column: 63)
!2754 = !DILocation(line: 979, column: 27, scope: !2753)
!2755 = !DILocation(line: 979, column: 18, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2753, file: !123, discriminator: 1)
!2757 = !DILocation(line: 979, column: 36, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2753, file: !123, discriminator: 2)
!2759 = !DILocation(line: 979, column: 35, scope: !2753)
!2760 = !DILocation(line: 978, column: 3, scope: !2753)
!2761 = !DILocation(line: 980, column: 3, scope: !2753)
!2762 = !DILocation(line: 982, column: 6, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !731, file: !123, line: 982, column: 6)
!2764 = !DILocation(line: 982, column: 52, scope: !2763)
!2765 = !DILocation(line: 982, column: 6, scope: !731)
!2766 = !DILocation(line: 984, column: 28, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !123, line: 982, column: 64)
!2768 = !DILocation(line: 984, column: 27, scope: !2767)
!2769 = !DILocation(line: 984, column: 18, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2767, file: !123, discriminator: 1)
!2771 = !DILocation(line: 984, column: 36, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2767, file: !123, discriminator: 2)
!2773 = !DILocation(line: 984, column: 35, scope: !2767)
!2774 = !DILocation(line: 983, column: 3, scope: !2767)
!2775 = !DILocation(line: 985, column: 3, scope: !2767)
!2776 = !DILocation(line: 987, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !731, file: !123, line: 987, column: 6)
!2778 = !DILocation(line: 987, column: 52, scope: !2777)
!2779 = !DILocation(line: 987, column: 6, scope: !731)
!2780 = !DILocation(line: 989, column: 28, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !123, line: 987, column: 64)
!2782 = !DILocation(line: 989, column: 27, scope: !2781)
!2783 = !DILocation(line: 989, column: 18, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2781, file: !123, discriminator: 1)
!2785 = !DILocation(line: 989, column: 36, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2781, file: !123, discriminator: 2)
!2787 = !DILocation(line: 989, column: 35, scope: !2781)
!2788 = !DILocation(line: 988, column: 3, scope: !2781)
!2789 = !DILocation(line: 990, column: 3, scope: !2781)
!2790 = !DILocation(line: 992, column: 6, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !731, file: !123, line: 992, column: 6)
!2792 = !DILocation(line: 992, column: 52, scope: !2791)
!2793 = !DILocation(line: 992, column: 6, scope: !731)
!2794 = !DILocation(line: 994, column: 28, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !123, line: 992, column: 64)
!2796 = !DILocation(line: 994, column: 27, scope: !2795)
!2797 = !DILocation(line: 994, column: 18, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2795, file: !123, discriminator: 1)
!2799 = !DILocation(line: 994, column: 36, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2795, file: !123, discriminator: 2)
!2801 = !DILocation(line: 994, column: 35, scope: !2795)
!2802 = !DILocation(line: 993, column: 3, scope: !2795)
!2803 = !DILocation(line: 995, column: 3, scope: !2795)
!2804 = !DILocation(line: 997, column: 6, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !731, file: !123, line: 997, column: 6)
!2806 = !DILocation(line: 997, column: 52, scope: !2805)
!2807 = !DILocation(line: 997, column: 6, scope: !731)
!2808 = !DILocation(line: 999, column: 28, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !123, line: 997, column: 64)
!2810 = !DILocation(line: 999, column: 27, scope: !2809)
!2811 = !DILocation(line: 999, column: 18, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2809, file: !123, discriminator: 1)
!2813 = !DILocation(line: 999, column: 36, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2809, file: !123, discriminator: 2)
!2815 = !DILocation(line: 999, column: 35, scope: !2809)
!2816 = !DILocation(line: 998, column: 3, scope: !2809)
!2817 = !DILocation(line: 1000, column: 3, scope: !2809)
!2818 = !DILocation(line: 1004, column: 8, scope: !731)
!2819 = !DILocation(line: 1004, column: 2, scope: !731)
!2820 = !DILocation(line: 1005, column: 8, scope: !731)
!2821 = !DILocation(line: 1005, column: 2, scope: !731)
!2822 = !DILocation(line: 1007, column: 14, scope: !731)
!2823 = !DILocation(line: 1007, column: 2, scope: !731)
!2824 = !DILocalVariable(name: "socksrv", scope: !731, file: !123, line: 1007, type: !2825)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, align: 32, elements: !164)
!2826 = !DILocation(line: 1007, column: 6, scope: !731)
!2827 = !DILocalVariable(name: "i", scope: !2828, file: !123, line: 1008, type: !896)
!2828 = distinct !DILexicalBlock(scope: !731, file: !123, line: 1008, column: 2)
!2829 = !DILocation(line: 1008, column: 14, scope: !2828)
!2830 = !DILocation(line: 1008, column: 7, scope: !2828)
!2831 = !DILocation(line: 1008, column: 21, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2833, file: !123, discriminator: 1)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !123, line: 1008, column: 2)
!2834 = !DILocation(line: 1008, column: 25, scope: !2832)
!2835 = !DILocation(line: 1008, column: 23, scope: !2832)
!2836 = !DILocation(line: 1008, column: 2, scope: !2832)
!2837 = !DILocation(line: 1009, column: 25, scope: !2833)
!2838 = !DILocation(line: 1009, column: 16, scope: !2833)
!2839 = !DILocation(line: 1009, column: 11, scope: !2833)
!2840 = !DILocation(line: 1009, column: 3, scope: !2833)
!2841 = !DILocation(line: 1009, column: 14, scope: !2833)
!2842 = !DILocation(line: 1008, column: 36, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2833, file: !123, discriminator: 2)
!2844 = !DILocation(line: 1008, column: 2, scope: !2843)
!2845 = distinct !{!2845, !2846}
!2846 = !DILocation(line: 1008, column: 2, scope: !731)
!2847 = !DILocation(line: 1010, column: 21, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !731, file: !123, line: 1010, column: 6)
!2849 = !DILocation(line: 1010, column: 27, scope: !2848)
!2850 = !DILocation(line: 1010, column: 50, scope: !2848)
!2851 = !DILocation(line: 1010, column: 60, scope: !2848)
!2852 = !DILocation(line: 1010, column: 6, scope: !2848)
!2853 = !DILocation(line: 1010, column: 65, scope: !2848)
!2854 = !DILocation(line: 1010, column: 6, scope: !731)
!2855 = !DILocation(line: 1012, column: 28, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2848, file: !123, line: 1010, column: 72)
!2857 = !DILocation(line: 1012, column: 27, scope: !2856)
!2858 = !DILocation(line: 1012, column: 18, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2856, file: !123, discriminator: 1)
!2860 = !DILocation(line: 1012, column: 36, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2856, file: !123, discriminator: 2)
!2862 = !DILocation(line: 1012, column: 35, scope: !2856)
!2863 = !DILocation(line: 1011, column: 3, scope: !2856)
!2864 = !DILocation(line: 1014, column: 2, scope: !2856)
!2865 = !DILocalVariable(name: "i", scope: !2866, file: !123, line: 1019, type: !896)
!2866 = distinct !DILexicalBlock(scope: !731, file: !123, line: 1019, column: 2)
!2867 = !DILocation(line: 1019, column: 14, scope: !2866)
!2868 = !DILocation(line: 1019, column: 7, scope: !2866)
!2869 = !DILocation(line: 1019, column: 21, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2871, file: !123, discriminator: 1)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !123, line: 1019, column: 2)
!2872 = !DILocation(line: 1019, column: 25, scope: !2870)
!2873 = !DILocation(line: 1019, column: 23, scope: !2870)
!2874 = !DILocation(line: 1019, column: 2, scope: !2870)
!2875 = !DILocation(line: 1020, column: 18, scope: !2871)
!2876 = !DILocation(line: 1020, column: 9, scope: !2871)
!2877 = !DILocation(line: 1020, column: 3, scope: !2871)
!2878 = !DILocation(line: 1019, column: 36, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2871, file: !123, discriminator: 2)
!2880 = !DILocation(line: 1019, column: 2, scope: !2879)
!2881 = distinct !{!2881, !2882}
!2882 = !DILocation(line: 1019, column: 2, scope: !731)
!2883 = !DILocation(line: 1021, column: 16, scope: !731)
!2884 = !DILocation(line: 1022, column: 8, scope: !731)
!2885 = !DILocation(line: 1022, column: 2, scope: !731)
!2886 = !DILocation(line: 1023, column: 8, scope: !731)
!2887 = !DILocation(line: 1023, column: 2, scope: !731)
!2888 = !DILocalVariable(name: "status", scope: !731, file: !123, line: 1025, type: !51)
!2889 = !DILocation(line: 1025, column: 6, scope: !731)
!2890 = !DILocation(line: 1026, column: 7, scope: !731)
!2891 = !DILocation(line: 1026, column: 2, scope: !731)
!2892 = !DILocation(line: 1027, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !731, file: !123, line: 1027, column: 5)
!2894 = !DILocation(line: 1027, column: 5, scope: !2893)
!2895 = !DILocation(line: 1027, column: 10, scope: !2893)
!2896 = !DILocation(line: 1027, column: 17, scope: !2893)
!2897 = !DILocation(line: 1027, column: 5, scope: !731)
!2898 = !DILocation(line: 1028, column: 26, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !123, line: 1028, column: 6)
!2900 = distinct !DILexicalBlock(scope: !2893, file: !123, line: 1027, column: 24)
!2901 = !DILocation(line: 1028, column: 6, scope: !2899)
!2902 = !DILocation(line: 1028, column: 11, scope: !2899)
!2903 = !DILocation(line: 1028, column: 18, scope: !2899)
!2904 = !DILocation(line: 1028, column: 28, scope: !2899)
!2905 = !DILocation(line: 1028, column: 6, scope: !2900)
!2906 = !DILocation(line: 1030, column: 30, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2899, file: !123, line: 1028, column: 32)
!2908 = !DILocation(line: 1030, column: 19, scope: !2907)
!2909 = !DILocation(line: 1030, column: 54, scope: !2907)
!2910 = !DILocation(line: 1030, column: 34, scope: !2907)
!2911 = !DILocation(line: 1030, column: 39, scope: !2907)
!2912 = !DILocation(line: 1030, column: 46, scope: !2907)
!2913 = !DILocation(line: 1030, column: 56, scope: !2907)
!2914 = !DILocation(line: 1029, column: 4, scope: !2907)
!2915 = !DILocation(line: 1031, column: 3, scope: !2907)
!2916 = !DILocation(line: 1033, column: 30, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2899, file: !123, line: 1031, column: 10)
!2918 = !DILocation(line: 1033, column: 19, scope: !2917)
!2919 = !DILocation(line: 1033, column: 54, scope: !2917)
!2920 = !DILocation(line: 1033, column: 34, scope: !2917)
!2921 = !DILocation(line: 1033, column: 39, scope: !2917)
!2922 = !DILocation(line: 1033, column: 46, scope: !2917)
!2923 = !DILocation(line: 1033, column: 56, scope: !2917)
!2924 = !DILocation(line: 1032, column: 4, scope: !2917)
!2925 = !DILocation(line: 1035, column: 2, scope: !2900)
!2926 = !DILocation(line: 1035, column: 32, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !123, discriminator: 1)
!2928 = distinct !DILexicalBlock(scope: !2893, file: !123, line: 1035, column: 12)
!2929 = !DILocation(line: 1035, column: 12, scope: !2927)
!2930 = !DILocation(line: 1035, column: 17, scope: !2927)
!2931 = !DILocation(line: 1035, column: 24, scope: !2927)
!2932 = !DILocation(line: 1035, column: 14, scope: !2927)
!2933 = !DILocation(line: 1035, column: 37, scope: !2927)
!2934 = !DILocation(line: 1035, column: 43, scope: !2927)
!2935 = !DILocation(line: 1037, column: 29, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2928, file: !123, line: 1035, column: 33)
!2937 = !DILocation(line: 1037, column: 18, scope: !2936)
!2938 = !DILocation(line: 1037, column: 53, scope: !2936)
!2939 = !DILocation(line: 1037, column: 33, scope: !2936)
!2940 = !DILocation(line: 1037, column: 38, scope: !2936)
!2941 = !DILocation(line: 1037, column: 45, scope: !2936)
!2942 = !DILocation(line: 1036, column: 3, scope: !2936)
!2943 = !DILocation(line: 1038, column: 2, scope: !2936)
!2944 = !DILocation(line: 1040, column: 29, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2928, file: !123, line: 1038, column: 9)
!2946 = !DILocation(line: 1040, column: 18, scope: !2945)
!2947 = !DILocation(line: 1039, column: 3, scope: !2945)
!2948 = !DILocation(line: 1043, column: 2, scope: !731)
!2949 = !DILocation(line: 1044, column: 1, scope: !731)
!2950 = distinct !DISubprogram(name: "privsep_server_signal_handler", scope: !123, file: !123, line: 96, type: !112, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!2951 = !DILocalVariable(name: "sig", arg: 1, scope: !2950, file: !123, line: 96, type: !51)
!2952 = !DILocation(line: 96, column: 35, scope: !2950)
!2953 = !DILocalVariable(name: "saved_errno", scope: !2950, file: !123, line: 98, type: !51)
!2954 = !DILocation(line: 98, column: 6, scope: !2950)
!2955 = !DILocation(line: 100, column: 17, scope: !2950)
!2956 = !DILocation(line: 100, column: 16, scope: !2950)
!2957 = !DILocation(line: 100, column: 14, scope: !2950)
!2958 = !DILocation(line: 106, column: 10, scope: !2950)
!2959 = !DILocation(line: 106, column: 2, scope: !2950)
!2960 = !DILocation(line: 108, column: 19, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2950, file: !123, line: 106, column: 15)
!2962 = !DILocation(line: 109, column: 3, scope: !2961)
!2963 = !DILocation(line: 111, column: 19, scope: !2961)
!2964 = !DILocation(line: 112, column: 3, scope: !2961)
!2965 = !DILocation(line: 114, column: 20, scope: !2961)
!2966 = !DILocation(line: 115, column: 3, scope: !2961)
!2967 = !DILocation(line: 117, column: 20, scope: !2961)
!2968 = !DILocation(line: 118, column: 3, scope: !2961)
!2969 = !DILocation(line: 120, column: 20, scope: !2961)
!2970 = !DILocation(line: 121, column: 3, scope: !2961)
!2971 = !DILocation(line: 123, column: 20, scope: !2961)
!2972 = !DILocation(line: 124, column: 3, scope: !2961)
!2973 = !DILocation(line: 126, column: 6, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2950, file: !123, line: 126, column: 6)
!2975 = !DILocation(line: 126, column: 20, scope: !2974)
!2976 = !DILocation(line: 126, column: 6, scope: !2950)
!2977 = !DILocalVariable(name: "n", scope: !2978, file: !123, line: 127, type: !45)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !123, line: 126, column: 27)
!2979 = !DILocation(line: 127, column: 11, scope: !2978)
!2980 = !DILocation(line: 132, column: 3, scope: !2978)
!2981 = distinct !{!2981, !2980}
!2982 = !DILocation(line: 133, column: 14, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2978, file: !123, line: 132, column: 6)
!2984 = !DILocation(line: 133, column: 8, scope: !2983)
!2985 = !DILocation(line: 133, column: 6, scope: !2983)
!2986 = !DILocation(line: 134, column: 3, scope: !2983)
!2987 = !DILocation(line: 134, column: 12, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2978, file: !123, discriminator: 1)
!2989 = !DILocation(line: 134, column: 14, scope: !2988)
!2990 = !DILocation(line: 134, column: 20, scope: !2988)
!2991 = !DILocation(line: 134, column: 24, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2978, file: !123, discriminator: 2)
!2993 = !DILocation(line: 134, column: 23, scope: !2992)
!2994 = !DILocation(line: 134, column: 28, scope: !2992)
!2995 = !DILocation(line: 134, column: 3, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2983, file: !123, discriminator: 3)
!2997 = !DILocation(line: 135, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2978, file: !123, line: 135, column: 7)
!2999 = !DILocation(line: 135, column: 9, scope: !2998)
!3000 = !DILocation(line: 135, column: 7, scope: !2978)
!3001 = !DILocation(line: 137, column: 42, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !123, line: 135, column: 16)
!3003 = !DILocation(line: 137, column: 41, scope: !3002)
!3004 = !DILocation(line: 137, column: 32, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3002, file: !123, discriminator: 1)
!3006 = !DILocation(line: 137, column: 50, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3002, file: !123, discriminator: 2)
!3008 = !DILocation(line: 137, column: 49, scope: !3002)
!3009 = !DILocation(line: 136, column: 4, scope: !3002)
!3010 = !DILocation(line: 139, column: 3, scope: !3002)
!3011 = !DILocation(line: 144, column: 2, scope: !2978)
!3012 = !DILocation(line: 145, column: 9, scope: !2950)
!3013 = !DILocation(line: 145, column: 3, scope: !2950)
!3014 = !DILocation(line: 145, column: 7, scope: !2950)
!3015 = !DILocation(line: 146, column: 1, scope: !2950)
!3016 = distinct !DISubprogram(name: "privsep_server", scope: !123, file: !123, line: 557, type: !3017, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!51, !734, !51, !50, !896, !2491}
!3019 = !DILocalVariable(name: "opts", arg: 1, scope: !3016, file: !123, line: 557, type: !734)
!3020 = !DILocation(line: 557, column: 24, scope: !3016)
!3021 = !DILocalVariable(name: "sigpipe", arg: 2, scope: !3016, file: !123, line: 557, type: !51)
!3022 = !DILocation(line: 557, column: 34, scope: !3016)
!3023 = !DILocalVariable(name: "srvsock", arg: 3, scope: !3016, file: !123, line: 557, type: !50)
!3024 = !DILocation(line: 557, column: 47, scope: !3016)
!3025 = !DILocalVariable(name: "nsrvsock", arg: 4, scope: !3016, file: !123, line: 557, type: !896)
!3026 = !DILocation(line: 557, column: 65, scope: !3016)
!3027 = !DILocalVariable(name: "childpid", arg: 5, scope: !3016, file: !123, line: 558, type: !2491)
!3028 = !DILocation(line: 558, column: 22, scope: !3016)
!3029 = !DILocation(line: 560, column: 13, scope: !3016)
!3030 = !DILocation(line: 560, column: 2, scope: !3016)
!3031 = !DILocalVariable(name: "srveof", scope: !3016, file: !123, line: 560, type: !2825)
!3032 = !DILocation(line: 560, column: 6, scope: !3016)
!3033 = !DILocalVariable(name: "i", scope: !3016, file: !123, line: 561, type: !896)
!3034 = !DILocation(line: 561, column: 9, scope: !3016)
!3035 = !DILocation(line: 563, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3016, file: !123, line: 563, column: 2)
!3037 = !DILocation(line: 563, column: 7, scope: !3036)
!3038 = !DILocation(line: 563, column: 14, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3040, file: !123, discriminator: 1)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !123, line: 563, column: 2)
!3041 = !DILocation(line: 563, column: 18, scope: !3039)
!3042 = !DILocation(line: 563, column: 16, scope: !3039)
!3043 = !DILocation(line: 563, column: 2, scope: !3039)
!3044 = !DILocation(line: 564, column: 10, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !123, line: 563, column: 33)
!3046 = !DILocation(line: 564, column: 3, scope: !3045)
!3047 = !DILocation(line: 564, column: 13, scope: !3045)
!3048 = !DILocation(line: 565, column: 2, scope: !3045)
!3049 = !DILocation(line: 563, column: 29, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3040, file: !123, discriminator: 2)
!3051 = !DILocation(line: 563, column: 2, scope: !3050)
!3052 = distinct !{!3052, !3053}
!3053 = !DILocation(line: 563, column: 2, scope: !3016)
!3054 = !DILocation(line: 567, column: 2, scope: !3016)
!3055 = !DILocalVariable(name: "readfds", scope: !3056, file: !123, line: 568, type: !3059)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !123, line: 567, column: 11)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !123, line: 567, column: 2)
!3058 = distinct !DILexicalBlock(scope: !3016, file: !123, line: 567, column: 2)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !118, line: 75, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 64, size: 1024, align: 64, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !3060, file: !118, line: 69, baseType: !3063, size: 1024, align: 64)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, align: 64, elements: !947)
!3064 = !DILocation(line: 568, column: 10, scope: !3056)
!3065 = !DILocalVariable(name: "maxfd", scope: !3056, file: !123, line: 569, type: !51)
!3066 = !DILocation(line: 569, column: 7, scope: !3056)
!3067 = !DILocalVariable(name: "rv", scope: !3056, file: !123, line: 569, type: !51)
!3068 = !DILocation(line: 569, column: 14, scope: !3056)
!3069 = !DILocation(line: 574, column: 3, scope: !3056)
!3070 = distinct !{!3070, !3069}
!3071 = !DILocation(line: 575, column: 3, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3056, file: !123, line: 574, column: 6)
!3073 = distinct !{!3073, !3071}
!3074 = !DILocalVariable(name: "__d0", scope: !3075, file: !123, line: 575, type: !51)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !123, line: 575, column: 6)
!3076 = !DILocation(line: 575, column: 12, scope: !3075)
!3077 = !DILocalVariable(name: "__d1", scope: !3075, file: !123, line: 575, type: !51)
!3078 = !DILocation(line: 575, column: 18, scope: !3075)
!3079 = !DILocation(line: 575, column: 6, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3075, file: !123, discriminator: 1)
!3081 = !DILocation(line: 575, column: 155, scope: !3080)
!3082 = !DILocation(line: 575, column: 24, scope: !3080)
!3083 = !{i32 514182}
!3084 = !DILocation(line: 575, column: 33, scope: !3080)
!3085 = !DILocation(line: 575, column: 33, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3075, file: !123, discriminator: 2)
!3087 = !DILocation(line: 576, column: 3, scope: !3072)
!3088 = !DILocation(line: 576, column: 5, scope: !3072)
!3089 = !DILocation(line: 576, column: 61, scope: !3072)
!3090 = !DILocation(line: 576, column: 12, scope: !3072)
!3091 = !DILocation(line: 576, column: 6, scope: !3072)
!3092 = !DILocation(line: 576, column: 40, scope: !3072)
!3093 = !DILocation(line: 577, column: 12, scope: !3072)
!3094 = !DILocation(line: 577, column: 10, scope: !3072)
!3095 = !DILocation(line: 578, column: 11, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3072, file: !123, line: 578, column: 4)
!3097 = !DILocation(line: 578, column: 9, scope: !3096)
!3098 = !DILocation(line: 578, column: 16, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3100, file: !123, discriminator: 1)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !123, line: 578, column: 4)
!3101 = !DILocation(line: 578, column: 20, scope: !3099)
!3102 = !DILocation(line: 578, column: 18, scope: !3099)
!3103 = !DILocation(line: 578, column: 4, scope: !3099)
!3104 = !DILocation(line: 579, column: 17, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !123, line: 579, column: 9)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !123, line: 578, column: 35)
!3107 = !DILocation(line: 579, column: 10, scope: !3105)
!3108 = !DILocation(line: 579, column: 9, scope: !3106)
!3109 = !DILocation(line: 580, column: 13, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !123, line: 579, column: 21)
!3111 = !DILocation(line: 580, column: 5, scope: !3110)
!3112 = !DILocation(line: 580, column: 7, scope: !3110)
!3113 = !DILocation(line: 580, column: 63, scope: !3110)
!3114 = !DILocation(line: 580, column: 14, scope: !3110)
!3115 = !DILocation(line: 580, column: 8, scope: !3110)
!3116 = !DILocation(line: 580, column: 42, scope: !3110)
!3117 = !DILocation(line: 581, column: 16, scope: !3110)
!3118 = !DILocation(line: 581, column: 34, scope: !3110)
!3119 = !DILocation(line: 581, column: 26, scope: !3110)
!3120 = !DILocation(line: 581, column: 23, scope: !3110)
!3121 = !DILocation(line: 581, column: 15, scope: !3110)
!3122 = !DILocation(line: 581, column: 41, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3110, file: !123, discriminator: 1)
!3124 = !DILocation(line: 581, column: 15, scope: !3123)
!3125 = !DILocation(line: 581, column: 59, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3110, file: !123, discriminator: 2)
!3127 = !DILocation(line: 581, column: 51, scope: !3126)
!3128 = !DILocation(line: 581, column: 15, scope: !3126)
!3129 = !DILocation(line: 581, column: 15, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3110, file: !123, discriminator: 3)
!3131 = !DILocation(line: 581, column: 12, scope: !3130)
!3132 = !DILocation(line: 582, column: 5, scope: !3110)
!3133 = !DILocation(line: 583, column: 4, scope: !3106)
!3134 = !DILocation(line: 578, column: 31, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3100, file: !123, discriminator: 2)
!3136 = !DILocation(line: 578, column: 4, scope: !3135)
!3137 = distinct !{!3137, !3138}
!3138 = !DILocation(line: 578, column: 4, scope: !3072)
!3139 = !DILocation(line: 584, column: 16, scope: !3072)
!3140 = !DILocation(line: 584, column: 22, scope: !3072)
!3141 = !DILocation(line: 584, column: 9, scope: !3072)
!3142 = !DILocation(line: 584, column: 7, scope: !3072)
!3143 = !DILocation(line: 588, column: 3, scope: !3072)
!3144 = !DILocation(line: 588, column: 12, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3056, file: !123, discriminator: 1)
!3146 = !DILocation(line: 588, column: 15, scope: !3145)
!3147 = !DILocation(line: 588, column: 21, scope: !3145)
!3148 = !DILocation(line: 588, column: 25, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3056, file: !123, discriminator: 2)
!3150 = !DILocation(line: 588, column: 24, scope: !3149)
!3151 = !DILocation(line: 588, column: 29, scope: !3149)
!3152 = !DILocation(line: 588, column: 3, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3072, file: !123, discriminator: 3)
!3154 = !DILocation(line: 589, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3056, file: !123, line: 589, column: 7)
!3156 = !DILocation(line: 589, column: 10, scope: !3155)
!3157 = !DILocation(line: 589, column: 7, scope: !3056)
!3158 = !DILocation(line: 591, column: 29, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !123, line: 589, column: 17)
!3160 = !DILocation(line: 591, column: 28, scope: !3159)
!3161 = !DILocation(line: 591, column: 19, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3159, file: !123, discriminator: 1)
!3163 = !DILocation(line: 591, column: 37, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3159, file: !123, discriminator: 2)
!3165 = !DILocation(line: 591, column: 36, scope: !3159)
!3166 = !DILocation(line: 590, column: 4, scope: !3159)
!3167 = !DILocation(line: 592, column: 4, scope: !3159)
!3168 = !DILocation(line: 598, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3056, file: !123, line: 598, column: 6)
!3170 = !DILocation(line: 598, column: 8, scope: !3169)
!3171 = !DILocation(line: 598, column: 9, scope: !3169)
!3172 = !DILocation(line: 598, column: 63, scope: !3169)
!3173 = !DILocation(line: 598, column: 43, scope: !3169)
!3174 = !DILocation(line: 598, column: 45, scope: !3169)
!3175 = !DILocation(line: 598, column: 6, scope: !3056)
!3176 = !DILocalVariable(name: "buf", scope: !3177, file: !123, line: 599, type: !3178)
!3177 = distinct !DILexicalBlock(scope: !3169, file: !123, line: 598, column: 35)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, align: 8, elements: !947)
!3179 = !DILocation(line: 599, column: 9, scope: !3177)
!3180 = !DILocalVariable(name: "n", scope: !3177, file: !123, line: 600, type: !45)
!3181 = !DILocation(line: 600, column: 12, scope: !3177)
!3182 = !DILocation(line: 603, column: 13, scope: !3177)
!3183 = !DILocation(line: 603, column: 22, scope: !3177)
!3184 = !DILocation(line: 603, column: 8, scope: !3177)
!3185 = !DILocation(line: 603, column: 6, scope: !3177)
!3186 = !DILocation(line: 604, column: 8, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 604, column: 8)
!3188 = !DILocation(line: 604, column: 10, scope: !3187)
!3189 = !DILocation(line: 604, column: 8, scope: !3177)
!3190 = !DILocation(line: 607, column: 30, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !123, line: 604, column: 17)
!3192 = !DILocation(line: 607, column: 29, scope: !3191)
!3193 = !DILocation(line: 607, column: 20, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3191, file: !123, discriminator: 1)
!3195 = !DILocation(line: 607, column: 38, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3191, file: !123, discriminator: 2)
!3197 = !DILocation(line: 607, column: 37, scope: !3191)
!3198 = !DILocation(line: 605, column: 5, scope: !3191)
!3199 = !DILocation(line: 608, column: 5, scope: !3191)
!3200 = !DILocation(line: 610, column: 8, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 610, column: 8)
!3202 = !DILocation(line: 610, column: 8, scope: !3177)
!3203 = !DILocation(line: 611, column: 14, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !123, line: 611, column: 9)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !123, line: 610, column: 26)
!3206 = !DILocation(line: 611, column: 9, scope: !3204)
!3207 = !DILocation(line: 611, column: 32, scope: !3204)
!3208 = !DILocation(line: 611, column: 9, scope: !3205)
!3209 = !DILocation(line: 614, column: 21, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !123, line: 611, column: 39)
!3211 = !DILocation(line: 615, column: 31, scope: !3210)
!3212 = !DILocation(line: 615, column: 30, scope: !3210)
!3213 = !DILocation(line: 615, column: 21, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3210, file: !123, discriminator: 1)
!3215 = !DILocation(line: 615, column: 39, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3210, file: !123, discriminator: 2)
!3217 = !DILocation(line: 615, column: 38, scope: !3210)
!3218 = !DILocation(line: 612, column: 6, scope: !3210)
!3219 = !DILocation(line: 616, column: 5, scope: !3210)
!3220 = !DILocation(line: 617, column: 22, scope: !3205)
!3221 = !DILocation(line: 618, column: 4, scope: !3205)
!3222 = !DILocation(line: 619, column: 8, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 619, column: 8)
!3224 = !DILocation(line: 619, column: 8, scope: !3177)
!3225 = !DILocation(line: 620, column: 14, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !123, line: 620, column: 9)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !123, line: 619, column: 26)
!3228 = !DILocation(line: 620, column: 9, scope: !3226)
!3229 = !DILocation(line: 620, column: 32, scope: !3226)
!3230 = !DILocation(line: 620, column: 9, scope: !3227)
!3231 = !DILocation(line: 623, column: 21, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !123, line: 620, column: 39)
!3233 = !DILocation(line: 624, column: 31, scope: !3232)
!3234 = !DILocation(line: 624, column: 30, scope: !3232)
!3235 = !DILocation(line: 624, column: 21, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3232, file: !123, discriminator: 1)
!3237 = !DILocation(line: 624, column: 39, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3232, file: !123, discriminator: 2)
!3239 = !DILocation(line: 624, column: 38, scope: !3232)
!3240 = !DILocation(line: 621, column: 6, scope: !3232)
!3241 = !DILocation(line: 625, column: 5, scope: !3232)
!3242 = !DILocation(line: 626, column: 22, scope: !3227)
!3243 = !DILocation(line: 627, column: 4, scope: !3227)
!3244 = !DILocation(line: 628, column: 8, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 628, column: 8)
!3246 = !DILocation(line: 628, column: 8, scope: !3177)
!3247 = !DILocation(line: 629, column: 14, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !123, line: 629, column: 9)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !123, line: 628, column: 25)
!3250 = !DILocation(line: 629, column: 9, scope: !3248)
!3251 = !DILocation(line: 629, column: 31, scope: !3248)
!3252 = !DILocation(line: 629, column: 9, scope: !3249)
!3253 = !DILocation(line: 632, column: 21, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !123, line: 629, column: 38)
!3255 = !DILocation(line: 633, column: 31, scope: !3254)
!3256 = !DILocation(line: 633, column: 30, scope: !3254)
!3257 = !DILocation(line: 633, column: 21, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3254, file: !123, discriminator: 1)
!3259 = !DILocation(line: 633, column: 39, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3254, file: !123, discriminator: 2)
!3261 = !DILocation(line: 633, column: 38, scope: !3254)
!3262 = !DILocation(line: 630, column: 6, scope: !3254)
!3263 = !DILocation(line: 634, column: 5, scope: !3254)
!3264 = !DILocation(line: 635, column: 21, scope: !3249)
!3265 = !DILocation(line: 636, column: 4, scope: !3249)
!3266 = !DILocation(line: 637, column: 8, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 637, column: 8)
!3268 = !DILocation(line: 637, column: 8, scope: !3177)
!3269 = !DILocation(line: 638, column: 14, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !123, line: 638, column: 9)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !123, line: 637, column: 26)
!3272 = !DILocation(line: 638, column: 9, scope: !3270)
!3273 = !DILocation(line: 638, column: 32, scope: !3270)
!3274 = !DILocation(line: 638, column: 9, scope: !3271)
!3275 = !DILocation(line: 641, column: 21, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3270, file: !123, line: 638, column: 39)
!3277 = !DILocation(line: 642, column: 31, scope: !3276)
!3278 = !DILocation(line: 642, column: 30, scope: !3276)
!3279 = !DILocation(line: 642, column: 21, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3276, file: !123, discriminator: 1)
!3281 = !DILocation(line: 642, column: 39, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3276, file: !123, discriminator: 2)
!3283 = !DILocation(line: 642, column: 38, scope: !3276)
!3284 = !DILocation(line: 639, column: 6, scope: !3276)
!3285 = !DILocation(line: 643, column: 5, scope: !3276)
!3286 = !DILocation(line: 644, column: 22, scope: !3271)
!3287 = !DILocation(line: 645, column: 4, scope: !3271)
!3288 = !DILocation(line: 646, column: 8, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 646, column: 8)
!3290 = !DILocation(line: 646, column: 8, scope: !3177)
!3291 = !DILocation(line: 649, column: 9, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !123, line: 649, column: 9)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !123, line: 646, column: 25)
!3294 = !DILocation(line: 649, column: 15, scope: !3292)
!3295 = !DILocation(line: 649, column: 9, scope: !3293)
!3296 = !DILocation(line: 650, column: 15, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !123, line: 650, column: 10)
!3298 = distinct !DILexicalBlock(scope: !3292, file: !123, line: 649, column: 23)
!3299 = !DILocation(line: 650, column: 10, scope: !3297)
!3300 = !DILocation(line: 650, column: 32, scope: !3297)
!3301 = !DILocation(line: 650, column: 10, scope: !3298)
!3302 = !DILocation(line: 654, column: 22, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3297, file: !123, line: 650, column: 39)
!3304 = !DILocation(line: 655, column: 32, scope: !3303)
!3305 = !DILocation(line: 655, column: 31, scope: !3303)
!3306 = !DILocation(line: 655, column: 22, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3303, file: !123, discriminator: 1)
!3308 = !DILocation(line: 656, column: 23, scope: !3303)
!3309 = !DILocation(line: 656, column: 22, scope: !3303)
!3310 = !DILocation(line: 651, column: 7, scope: !3303)
!3311 = !DILocation(line: 657, column: 6, scope: !3303)
!3312 = !DILocation(line: 658, column: 5, scope: !3298)
!3313 = !DILocation(line: 659, column: 21, scope: !3293)
!3314 = !DILocation(line: 660, column: 4, scope: !3293)
!3315 = !DILocation(line: 661, column: 8, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3177, file: !123, line: 661, column: 8)
!3317 = !DILocation(line: 661, column: 8, scope: !3177)
!3318 = !DILocation(line: 668, column: 5, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !123, line: 661, column: 26)
!3320 = !DILocation(line: 670, column: 3, scope: !3177)
!3321 = !DILocation(line: 672, column: 10, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3056, file: !123, line: 672, column: 3)
!3323 = !DILocation(line: 672, column: 8, scope: !3322)
!3324 = !DILocation(line: 672, column: 15, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3326, file: !123, discriminator: 1)
!3326 = distinct !DILexicalBlock(scope: !3322, file: !123, line: 672, column: 3)
!3327 = !DILocation(line: 672, column: 19, scope: !3325)
!3328 = !DILocation(line: 672, column: 17, scope: !3325)
!3329 = !DILocation(line: 672, column: 3, scope: !3325)
!3330 = !DILocation(line: 673, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !123, line: 673, column: 7)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !123, line: 672, column: 34)
!3333 = !DILocation(line: 673, column: 7, scope: !3331)
!3334 = !DILocation(line: 673, column: 9, scope: !3331)
!3335 = !DILocation(line: 673, column: 10, scope: !3331)
!3336 = !DILocation(line: 673, column: 64, scope: !3331)
!3337 = !DILocation(line: 673, column: 44, scope: !3331)
!3338 = !DILocation(line: 673, column: 46, scope: !3331)
!3339 = !DILocation(line: 673, column: 7, scope: !3332)
!3340 = !DILocalVariable(name: "rv", scope: !3341, file: !123, line: 674, type: !51)
!3341 = distinct !DILexicalBlock(scope: !3331, file: !123, line: 673, column: 39)
!3342 = !DILocation(line: 674, column: 9, scope: !3341)
!3343 = !DILocation(line: 674, column: 40, scope: !3341)
!3344 = !DILocation(line: 675, column: 48, scope: !3341)
!3345 = !DILocation(line: 675, column: 40, scope: !3341)
!3346 = !DILocation(line: 674, column: 14, scope: !3341)
!3347 = !DILocation(line: 676, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !123, line: 676, column: 9)
!3349 = !DILocation(line: 676, column: 12, scope: !3348)
!3350 = !DILocation(line: 676, column: 9, scope: !3341)
!3351 = !DILocation(line: 680, column: 29, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3348, file: !123, line: 676, column: 19)
!3353 = !DILocation(line: 680, column: 21, scope: !3352)
!3354 = !DILocation(line: 677, column: 6, scope: !3352)
!3355 = !DILocation(line: 681, column: 6, scope: !3352)
!3356 = !DILocation(line: 683, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3341, file: !123, line: 683, column: 9)
!3358 = !DILocation(line: 683, column: 12, scope: !3357)
!3359 = !DILocation(line: 683, column: 9, scope: !3341)
!3360 = !DILocation(line: 687, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !123, line: 683, column: 18)
!3362 = !DILocation(line: 687, column: 6, scope: !3361)
!3363 = !DILocation(line: 687, column: 16, scope: !3361)
!3364 = !DILocation(line: 688, column: 5, scope: !3361)
!3365 = !DILocation(line: 689, column: 4, scope: !3341)
!3366 = !DILocation(line: 690, column: 3, scope: !3332)
!3367 = !DILocation(line: 672, column: 30, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3326, file: !123, discriminator: 2)
!3369 = !DILocation(line: 672, column: 3, scope: !3368)
!3370 = distinct !{!3370, !3371}
!3371 = !DILocation(line: 672, column: 3, scope: !3056)
!3372 = !DILocation(line: 567, column: 2, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3057, file: !123, discriminator: 1)
!3374 = distinct !{!3374, !3054}
!3375 = !DILocation(line: 699, column: 2, scope: !3016)
!3376 = !DILocation(line: 700, column: 1, scope: !3016)
!3377 = distinct !DISubprogram(name: "privsep_server_handle_req", scope: !123, file: !123, line: 334, type: !3378, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!51, !734, !51}
!3380 = !DILocalVariable(name: "opts", arg: 1, scope: !3377, file: !123, line: 334, type: !734)
!3381 = !DILocation(line: 334, column: 35, scope: !3377)
!3382 = !DILocalVariable(name: "srvsock", arg: 2, scope: !3377, file: !123, line: 334, type: !51)
!3383 = !DILocation(line: 334, column: 45, scope: !3377)
!3384 = !DILocalVariable(name: "req", scope: !3377, file: !123, line: 336, type: !3385)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 4096, align: 8, elements: !3386)
!3386 = !{!3387}
!3387 = !DISubrange(count: 512)
!3388 = !DILocation(line: 336, column: 7, scope: !3377)
!3389 = !DILocalVariable(name: "ans", scope: !3377, file: !123, line: 337, type: !152)
!3390 = !DILocation(line: 337, column: 7, scope: !3377)
!3391 = !DILocalVariable(name: "n", scope: !3377, file: !123, line: 338, type: !45)
!3392 = !DILocation(line: 338, column: 10, scope: !3377)
!3393 = !DILocalVariable(name: "mkpath", scope: !3377, file: !123, line: 339, type: !51)
!3394 = !DILocation(line: 339, column: 6, scope: !3377)
!3395 = !DILocation(line: 341, column: 25, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3377, file: !123, line: 341, column: 6)
!3397 = !DILocation(line: 341, column: 34, scope: !3396)
!3398 = !DILocation(line: 341, column: 11, scope: !3396)
!3399 = !DILocation(line: 341, column: 9, scope: !3396)
!3400 = !DILocation(line: 342, column: 31, scope: !3396)
!3401 = !DILocation(line: 341, column: 6, scope: !3377)
!3402 = !DILocation(line: 343, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !123, line: 343, column: 6)
!3404 = distinct !DILexicalBlock(scope: !3396, file: !123, line: 342, column: 38)
!3405 = !DILocation(line: 343, column: 7, scope: !3403)
!3406 = !DILocation(line: 343, column: 12, scope: !3403)
!3407 = !DILocation(line: 343, column: 21, scope: !3403)
!3408 = !DILocation(line: 343, column: 26, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3403, file: !123, discriminator: 1)
!3410 = !DILocation(line: 343, column: 25, scope: !3409)
!3411 = !DILocation(line: 343, column: 30, scope: !3409)
!3412 = !DILocation(line: 343, column: 6, scope: !3409)
!3413 = !DILocation(line: 345, column: 4, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3403, file: !123, line: 343, column: 45)
!3415 = !DILocation(line: 348, column: 28, scope: !3404)
!3416 = !DILocation(line: 348, column: 27, scope: !3404)
!3417 = !DILocation(line: 348, column: 18, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3404, file: !123, discriminator: 1)
!3419 = !DILocation(line: 348, column: 36, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3404, file: !123, discriminator: 2)
!3421 = !DILocation(line: 348, column: 35, scope: !3404)
!3422 = !DILocation(line: 347, column: 3, scope: !3404)
!3423 = !DILocation(line: 349, column: 3, scope: !3404)
!3424 = !DILocation(line: 351, column: 6, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3377, file: !123, line: 351, column: 6)
!3426 = !DILocation(line: 351, column: 8, scope: !3425)
!3427 = !DILocation(line: 351, column: 6, scope: !3377)
!3428 = !DILocation(line: 353, column: 3, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !123, line: 351, column: 14)
!3430 = !DILocation(line: 356, column: 17, scope: !3377)
!3431 = !DILocation(line: 356, column: 25, scope: !3377)
!3432 = !DILocation(line: 356, column: 28, scope: !3377)
!3433 = !DILocation(line: 355, column: 2, scope: !3377)
!3434 = !DILocation(line: 357, column: 10, scope: !3377)
!3435 = !DILocation(line: 357, column: 2, scope: !3377)
!3436 = !DILocation(line: 360, column: 3, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !123, line: 358, column: 10)
!3438 = distinct !DILexicalBlock(scope: !3377, file: !123, line: 357, column: 18)
!3439 = !DILocation(line: 363, column: 10, scope: !3438)
!3440 = !DILocation(line: 363, column: 3, scope: !3438)
!3441 = !DILocalVariable(name: "fn", scope: !3442, file: !123, line: 366, type: !86)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !123, line: 365, column: 10)
!3443 = !DILocation(line: 366, column: 9, scope: !3442)
!3444 = !DILocalVariable(name: "fd", scope: !3442, file: !123, line: 367, type: !51)
!3445 = !DILocation(line: 367, column: 7, scope: !3442)
!3446 = !DILocation(line: 369, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !123, line: 369, column: 7)
!3448 = !DILocation(line: 369, column: 9, scope: !3447)
!3449 = !DILocation(line: 369, column: 7, scope: !3442)
!3450 = !DILocation(line: 370, column: 4, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !123, line: 369, column: 14)
!3452 = !DILocation(line: 370, column: 11, scope: !3451)
!3453 = !DILocation(line: 371, column: 22, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !123, line: 371, column: 8)
!3455 = !DILocation(line: 371, column: 31, scope: !3454)
!3456 = !DILocation(line: 371, column: 8, scope: !3454)
!3457 = !DILocation(line: 371, column: 43, scope: !3454)
!3458 = !DILocation(line: 371, column: 8, scope: !3451)
!3459 = !DILocation(line: 373, column: 37, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !123, line: 371, column: 50)
!3461 = !DILocation(line: 373, column: 36, scope: !3460)
!3462 = !DILocation(line: 373, column: 27, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3460, file: !123, discriminator: 1)
!3464 = !DILocation(line: 373, column: 45, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3460, file: !123, discriminator: 2)
!3466 = !DILocation(line: 373, column: 44, scope: !3460)
!3467 = !DILocation(line: 372, column: 5, scope: !3460)
!3468 = !DILocation(line: 374, column: 5, scope: !3460)
!3469 = !DILocation(line: 376, column: 3, scope: !3451)
!3470 = !DILocation(line: 377, column: 21, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3442, file: !123, line: 377, column: 7)
!3472 = !DILocation(line: 377, column: 14, scope: !3471)
!3473 = !DILocation(line: 377, column: 12, scope: !3471)
!3474 = !DILocation(line: 377, column: 7, scope: !3442)
!3475 = !DILocation(line: 378, column: 4, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3471, file: !123, line: 377, column: 26)
!3477 = !DILocation(line: 378, column: 11, scope: !3476)
!3478 = !DILocation(line: 379, column: 24, scope: !3476)
!3479 = !DILocation(line: 379, column: 23, scope: !3476)
!3480 = !DILocation(line: 379, column: 13, scope: !3476)
!3481 = !DILocation(line: 379, column: 4, scope: !3476)
!3482 = !DILocation(line: 379, column: 21, scope: !3476)
!3483 = !DILocation(line: 380, column: 22, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3476, file: !123, line: 380, column: 8)
!3485 = !DILocation(line: 380, column: 31, scope: !3484)
!3486 = !DILocation(line: 380, column: 8, scope: !3484)
!3487 = !DILocation(line: 381, column: 26, scope: !3484)
!3488 = !DILocation(line: 380, column: 8, scope: !3476)
!3489 = !DILocation(line: 383, column: 37, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3484, file: !123, line: 381, column: 33)
!3491 = !DILocation(line: 383, column: 36, scope: !3490)
!3492 = !DILocation(line: 383, column: 27, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3490, file: !123, discriminator: 1)
!3494 = !DILocation(line: 383, column: 45, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3490, file: !123, discriminator: 2)
!3496 = !DILocation(line: 383, column: 44, scope: !3490)
!3497 = !DILocation(line: 382, column: 5, scope: !3490)
!3498 = !DILocation(line: 384, column: 5, scope: !3490)
!3499 = !DILocation(line: 386, column: 4, scope: !3476)
!3500 = !DILocation(line: 388, column: 10, scope: !3442)
!3501 = !DILocation(line: 388, column: 14, scope: !3442)
!3502 = !DILocation(line: 388, column: 18, scope: !3442)
!3503 = !DILocation(line: 388, column: 23, scope: !3442)
!3504 = !DILocation(line: 388, column: 25, scope: !3442)
!3505 = !DILocation(line: 388, column: 3, scope: !3442)
!3506 = !DILocation(line: 389, column: 6, scope: !3442)
!3507 = !DILocation(line: 389, column: 8, scope: !3442)
!3508 = !DILocation(line: 389, column: 3, scope: !3442)
!3509 = !DILocation(line: 389, column: 13, scope: !3442)
!3510 = !DILocation(line: 390, column: 38, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3442, file: !123, line: 390, column: 7)
!3512 = !DILocation(line: 390, column: 44, scope: !3511)
!3513 = !DILocation(line: 390, column: 48, scope: !3511)
!3514 = !DILocation(line: 390, column: 7, scope: !3511)
!3515 = !DILocation(line: 390, column: 56, scope: !3511)
!3516 = !DILocation(line: 390, column: 7, scope: !3442)
!3517 = !DILocation(line: 391, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3511, file: !123, line: 390, column: 63)
!3519 = !DILocation(line: 391, column: 4, scope: !3518)
!3520 = !DILocation(line: 392, column: 4, scope: !3518)
!3521 = !DILocation(line: 392, column: 11, scope: !3518)
!3522 = !DILocation(line: 393, column: 22, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !123, line: 393, column: 8)
!3524 = !DILocation(line: 393, column: 31, scope: !3523)
!3525 = !DILocation(line: 393, column: 8, scope: !3523)
!3526 = !DILocation(line: 393, column: 43, scope: !3523)
!3527 = !DILocation(line: 393, column: 8, scope: !3518)
!3528 = !DILocation(line: 395, column: 37, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3523, file: !123, line: 393, column: 50)
!3530 = !DILocation(line: 395, column: 36, scope: !3529)
!3531 = !DILocation(line: 395, column: 27, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3529, file: !123, discriminator: 1)
!3533 = !DILocation(line: 395, column: 45, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3529, file: !123, discriminator: 2)
!3535 = !DILocation(line: 395, column: 44, scope: !3529)
!3536 = !DILocation(line: 394, column: 5, scope: !3529)
!3537 = !DILocation(line: 396, column: 5, scope: !3529)
!3538 = !DILocation(line: 398, column: 4, scope: !3518)
!3539 = !DILocation(line: 400, column: 37, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3442, file: !123, line: 400, column: 7)
!3541 = !DILocation(line: 400, column: 41, scope: !3540)
!3542 = !DILocation(line: 400, column: 13, scope: !3540)
!3543 = !DILocation(line: 400, column: 11, scope: !3540)
!3544 = !DILocation(line: 400, column: 50, scope: !3540)
!3545 = !DILocation(line: 400, column: 7, scope: !3442)
!3546 = !DILocation(line: 401, column: 9, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3540, file: !123, line: 400, column: 57)
!3548 = !DILocation(line: 401, column: 4, scope: !3547)
!3549 = !DILocation(line: 402, column: 4, scope: !3547)
!3550 = !DILocation(line: 402, column: 11, scope: !3547)
!3551 = !DILocation(line: 403, column: 24, scope: !3547)
!3552 = !DILocation(line: 403, column: 23, scope: !3547)
!3553 = !DILocation(line: 403, column: 13, scope: !3547)
!3554 = !DILocation(line: 403, column: 4, scope: !3547)
!3555 = !DILocation(line: 403, column: 21, scope: !3547)
!3556 = !DILocation(line: 404, column: 22, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !123, line: 404, column: 8)
!3558 = !DILocation(line: 404, column: 31, scope: !3557)
!3559 = !DILocation(line: 404, column: 8, scope: !3557)
!3560 = !DILocation(line: 405, column: 26, scope: !3557)
!3561 = !DILocation(line: 404, column: 8, scope: !3547)
!3562 = !DILocation(line: 407, column: 37, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3557, file: !123, line: 405, column: 33)
!3564 = !DILocation(line: 407, column: 36, scope: !3563)
!3565 = !DILocation(line: 407, column: 27, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3563, file: !123, discriminator: 1)
!3567 = !DILocation(line: 407, column: 45, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3563, file: !123, discriminator: 2)
!3569 = !DILocation(line: 407, column: 44, scope: !3563)
!3570 = !DILocation(line: 406, column: 5, scope: !3563)
!3571 = !DILocation(line: 408, column: 5, scope: !3563)
!3572 = !DILocation(line: 410, column: 4, scope: !3547)
!3573 = !DILocation(line: 412, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3540, file: !123, line: 411, column: 10)
!3575 = !DILocation(line: 412, column: 4, scope: !3574)
!3576 = !DILocation(line: 413, column: 4, scope: !3574)
!3577 = !DILocation(line: 413, column: 11, scope: !3574)
!3578 = !DILocation(line: 414, column: 22, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !123, line: 414, column: 8)
!3580 = !DILocation(line: 414, column: 31, scope: !3579)
!3581 = !DILocation(line: 414, column: 39, scope: !3579)
!3582 = !DILocation(line: 414, column: 8, scope: !3579)
!3583 = !DILocation(line: 414, column: 43, scope: !3579)
!3584 = !DILocation(line: 414, column: 8, scope: !3574)
!3585 = !DILocation(line: 415, column: 11, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !123, line: 414, column: 50)
!3587 = !DILocation(line: 415, column: 5, scope: !3586)
!3588 = !DILocation(line: 417, column: 37, scope: !3586)
!3589 = !DILocation(line: 417, column: 36, scope: !3586)
!3590 = !DILocation(line: 417, column: 27, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3586, file: !123, discriminator: 1)
!3592 = !DILocation(line: 417, column: 45, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3586, file: !123, discriminator: 2)
!3594 = !DILocation(line: 417, column: 44, scope: !3586)
!3595 = !DILocation(line: 416, column: 5, scope: !3586)
!3596 = !DILocation(line: 418, column: 5, scope: !3586)
!3597 = !DILocation(line: 420, column: 10, scope: !3574)
!3598 = !DILocation(line: 420, column: 4, scope: !3574)
!3599 = !DILocation(line: 421, column: 4, scope: !3574)
!3600 = !DILocalVariable(name: "arg", scope: !3601, file: !123, line: 427, type: !120)
!3601 = distinct !DILexicalBlock(scope: !3438, file: !123, line: 426, column: 10)
!3602 = !DILocation(line: 427, column: 16, scope: !3601)
!3603 = !DILocalVariable(name: "s", scope: !3601, file: !123, line: 428, type: !51)
!3604 = !DILocation(line: 428, column: 7, scope: !3601)
!3605 = !DILocation(line: 430, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3601, file: !123, line: 430, column: 7)
!3607 = !DILocation(line: 430, column: 9, scope: !3606)
!3608 = !DILocation(line: 430, column: 7, scope: !3601)
!3609 = !DILocation(line: 431, column: 4, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !123, line: 430, column: 40)
!3611 = !DILocation(line: 431, column: 11, scope: !3610)
!3612 = !DILocation(line: 432, column: 22, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !123, line: 432, column: 8)
!3614 = !DILocation(line: 432, column: 31, scope: !3613)
!3615 = !DILocation(line: 432, column: 8, scope: !3613)
!3616 = !DILocation(line: 432, column: 43, scope: !3613)
!3617 = !DILocation(line: 432, column: 8, scope: !3610)
!3618 = !DILocation(line: 434, column: 37, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !123, line: 432, column: 50)
!3620 = !DILocation(line: 434, column: 36, scope: !3619)
!3621 = !DILocation(line: 434, column: 27, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !3619, file: !123, discriminator: 1)
!3623 = !DILocation(line: 434, column: 45, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3619, file: !123, discriminator: 2)
!3625 = !DILocation(line: 434, column: 44, scope: !3619)
!3626 = !DILocation(line: 433, column: 5, scope: !3619)
!3627 = !DILocation(line: 435, column: 5, scope: !3619)
!3628 = !DILocation(line: 437, column: 4, scope: !3610)
!3629 = !DILocation(line: 439, column: 27, scope: !3601)
!3630 = !DILocation(line: 439, column: 9, scope: !3601)
!3631 = !DILocation(line: 439, column: 7, scope: !3601)
!3632 = !DILocation(line: 440, column: 38, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3601, file: !123, line: 440, column: 7)
!3634 = !DILocation(line: 440, column: 44, scope: !3633)
!3635 = !DILocation(line: 440, column: 7, scope: !3633)
!3636 = !DILocation(line: 440, column: 49, scope: !3633)
!3637 = !DILocation(line: 440, column: 7, scope: !3601)
!3638 = !DILocation(line: 441, column: 4, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3633, file: !123, line: 440, column: 56)
!3640 = !DILocation(line: 441, column: 11, scope: !3639)
!3641 = !DILocation(line: 442, column: 22, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3639, file: !123, line: 442, column: 8)
!3643 = !DILocation(line: 442, column: 31, scope: !3642)
!3644 = !DILocation(line: 442, column: 8, scope: !3642)
!3645 = !DILocation(line: 442, column: 43, scope: !3642)
!3646 = !DILocation(line: 442, column: 8, scope: !3639)
!3647 = !DILocation(line: 444, column: 37, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3642, file: !123, line: 442, column: 50)
!3649 = !DILocation(line: 444, column: 36, scope: !3648)
!3650 = !DILocation(line: 444, column: 27, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3648, file: !123, discriminator: 1)
!3652 = !DILocation(line: 444, column: 45, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3648, file: !123, discriminator: 2)
!3654 = !DILocation(line: 444, column: 44, scope: !3648)
!3655 = !DILocation(line: 443, column: 5, scope: !3648)
!3656 = !DILocation(line: 445, column: 5, scope: !3648)
!3657 = !DILocation(line: 447, column: 4, scope: !3639)
!3658 = !DILocation(line: 449, column: 36, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3601, file: !123, line: 449, column: 7)
!3660 = !DILocation(line: 449, column: 12, scope: !3659)
!3661 = !DILocation(line: 449, column: 10, scope: !3659)
!3662 = !DILocation(line: 449, column: 42, scope: !3659)
!3663 = !DILocation(line: 449, column: 7, scope: !3601)
!3664 = !DILocation(line: 450, column: 4, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3659, file: !123, line: 449, column: 49)
!3666 = !DILocation(line: 450, column: 11, scope: !3665)
!3667 = !DILocation(line: 451, column: 24, scope: !3665)
!3668 = !DILocation(line: 451, column: 23, scope: !3665)
!3669 = !DILocation(line: 451, column: 13, scope: !3665)
!3670 = !DILocation(line: 451, column: 4, scope: !3665)
!3671 = !DILocation(line: 451, column: 21, scope: !3665)
!3672 = !DILocation(line: 452, column: 22, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3665, file: !123, line: 452, column: 8)
!3674 = !DILocation(line: 452, column: 31, scope: !3673)
!3675 = !DILocation(line: 452, column: 8, scope: !3673)
!3676 = !DILocation(line: 453, column: 26, scope: !3673)
!3677 = !DILocation(line: 452, column: 8, scope: !3665)
!3678 = !DILocation(line: 455, column: 37, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3673, file: !123, line: 453, column: 33)
!3680 = !DILocation(line: 455, column: 36, scope: !3679)
!3681 = !DILocation(line: 455, column: 27, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3679, file: !123, discriminator: 1)
!3683 = !DILocation(line: 455, column: 45, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3679, file: !123, discriminator: 2)
!3685 = !DILocation(line: 455, column: 44, scope: !3679)
!3686 = !DILocation(line: 454, column: 5, scope: !3679)
!3687 = !DILocation(line: 456, column: 5, scope: !3679)
!3688 = !DILocation(line: 458, column: 4, scope: !3665)
!3689 = !DILocation(line: 460, column: 4, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3659, file: !123, line: 459, column: 10)
!3691 = !DILocation(line: 460, column: 11, scope: !3690)
!3692 = !DILocation(line: 461, column: 22, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3690, file: !123, line: 461, column: 8)
!3694 = !DILocation(line: 461, column: 31, scope: !3693)
!3695 = !DILocation(line: 461, column: 39, scope: !3693)
!3696 = !DILocation(line: 461, column: 8, scope: !3693)
!3697 = !DILocation(line: 461, column: 42, scope: !3693)
!3698 = !DILocation(line: 461, column: 8, scope: !3690)
!3699 = !DILocation(line: 462, column: 24, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3693, file: !123, line: 461, column: 49)
!3701 = !DILocation(line: 462, column: 5, scope: !3700)
!3702 = !DILocation(line: 464, column: 37, scope: !3700)
!3703 = !DILocation(line: 464, column: 36, scope: !3700)
!3704 = !DILocation(line: 464, column: 27, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !3700, file: !123, discriminator: 1)
!3706 = !DILocation(line: 464, column: 45, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3700, file: !123, discriminator: 2)
!3708 = !DILocation(line: 464, column: 44, scope: !3700)
!3709 = !DILocation(line: 463, column: 5, scope: !3700)
!3710 = !DILocation(line: 465, column: 5, scope: !3700)
!3711 = !DILocation(line: 467, column: 23, scope: !3690)
!3712 = !DILocation(line: 467, column: 4, scope: !3690)
!3713 = !DILocation(line: 468, column: 4, scope: !3690)
!3714 = !DILocalVariable(name: "fn", scope: !3715, file: !123, line: 474, type: !86)
!3715 = distinct !DILexicalBlock(scope: !3438, file: !123, line: 473, column: 10)
!3716 = !DILocation(line: 474, column: 9, scope: !3715)
!3717 = !DILocalVariable(name: "fd", scope: !3715, file: !123, line: 475, type: !51)
!3718 = !DILocation(line: 475, column: 7, scope: !3715)
!3719 = !DILocation(line: 477, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3715, file: !123, line: 477, column: 7)
!3721 = !DILocation(line: 477, column: 9, scope: !3720)
!3722 = !DILocation(line: 477, column: 7, scope: !3715)
!3723 = !DILocation(line: 478, column: 4, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !123, line: 477, column: 14)
!3725 = !DILocation(line: 478, column: 11, scope: !3724)
!3726 = !DILocation(line: 479, column: 22, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !123, line: 479, column: 8)
!3728 = !DILocation(line: 479, column: 31, scope: !3727)
!3729 = !DILocation(line: 479, column: 8, scope: !3727)
!3730 = !DILocation(line: 479, column: 43, scope: !3727)
!3731 = !DILocation(line: 479, column: 8, scope: !3724)
!3732 = !DILocation(line: 481, column: 37, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3727, file: !123, line: 479, column: 50)
!3734 = !DILocation(line: 481, column: 36, scope: !3733)
!3735 = !DILocation(line: 481, column: 27, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !3733, file: !123, discriminator: 1)
!3737 = !DILocation(line: 481, column: 45, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !3733, file: !123, discriminator: 2)
!3739 = !DILocation(line: 481, column: 44, scope: !3733)
!3740 = !DILocation(line: 480, column: 5, scope: !3733)
!3741 = !DILocation(line: 482, column: 5, scope: !3733)
!3742 = !DILocation(line: 484, column: 3, scope: !3724)
!3743 = !DILocation(line: 485, column: 21, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3715, file: !123, line: 485, column: 7)
!3745 = !DILocation(line: 485, column: 14, scope: !3744)
!3746 = !DILocation(line: 485, column: 12, scope: !3744)
!3747 = !DILocation(line: 485, column: 7, scope: !3715)
!3748 = !DILocation(line: 486, column: 4, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3744, file: !123, line: 485, column: 26)
!3750 = !DILocation(line: 486, column: 11, scope: !3749)
!3751 = !DILocation(line: 487, column: 24, scope: !3749)
!3752 = !DILocation(line: 487, column: 23, scope: !3749)
!3753 = !DILocation(line: 487, column: 13, scope: !3749)
!3754 = !DILocation(line: 487, column: 4, scope: !3749)
!3755 = !DILocation(line: 487, column: 21, scope: !3749)
!3756 = !DILocation(line: 488, column: 22, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3749, file: !123, line: 488, column: 8)
!3758 = !DILocation(line: 488, column: 31, scope: !3757)
!3759 = !DILocation(line: 488, column: 8, scope: !3757)
!3760 = !DILocation(line: 489, column: 26, scope: !3757)
!3761 = !DILocation(line: 488, column: 8, scope: !3749)
!3762 = !DILocation(line: 491, column: 37, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3757, file: !123, line: 489, column: 33)
!3764 = !DILocation(line: 491, column: 36, scope: !3763)
!3765 = !DILocation(line: 491, column: 27, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3763, file: !123, discriminator: 1)
!3767 = !DILocation(line: 491, column: 45, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3763, file: !123, discriminator: 2)
!3769 = !DILocation(line: 491, column: 44, scope: !3763)
!3770 = !DILocation(line: 490, column: 5, scope: !3763)
!3771 = !DILocation(line: 492, column: 5, scope: !3763)
!3772 = !DILocation(line: 494, column: 4, scope: !3749)
!3773 = !DILocation(line: 496, column: 10, scope: !3715)
!3774 = !DILocation(line: 496, column: 14, scope: !3715)
!3775 = !DILocation(line: 496, column: 18, scope: !3715)
!3776 = !DILocation(line: 496, column: 23, scope: !3715)
!3777 = !DILocation(line: 496, column: 25, scope: !3715)
!3778 = !DILocation(line: 496, column: 3, scope: !3715)
!3779 = !DILocation(line: 497, column: 6, scope: !3715)
!3780 = !DILocation(line: 497, column: 8, scope: !3715)
!3781 = !DILocation(line: 497, column: 3, scope: !3715)
!3782 = !DILocation(line: 497, column: 13, scope: !3715)
!3783 = !DILocation(line: 498, column: 38, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3715, file: !123, line: 498, column: 7)
!3785 = !DILocation(line: 498, column: 44, scope: !3784)
!3786 = !DILocation(line: 498, column: 7, scope: !3784)
!3787 = !DILocation(line: 498, column: 48, scope: !3784)
!3788 = !DILocation(line: 498, column: 7, scope: !3715)
!3789 = !DILocation(line: 499, column: 9, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3784, file: !123, line: 498, column: 55)
!3791 = !DILocation(line: 499, column: 4, scope: !3790)
!3792 = !DILocation(line: 500, column: 4, scope: !3790)
!3793 = !DILocation(line: 500, column: 11, scope: !3790)
!3794 = !DILocation(line: 501, column: 22, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !123, line: 501, column: 8)
!3796 = !DILocation(line: 501, column: 31, scope: !3795)
!3797 = !DILocation(line: 501, column: 8, scope: !3795)
!3798 = !DILocation(line: 501, column: 43, scope: !3795)
!3799 = !DILocation(line: 501, column: 8, scope: !3790)
!3800 = !DILocation(line: 503, column: 37, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3795, file: !123, line: 501, column: 50)
!3802 = !DILocation(line: 503, column: 36, scope: !3801)
!3803 = !DILocation(line: 503, column: 27, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3801, file: !123, discriminator: 1)
!3805 = !DILocation(line: 503, column: 45, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !3801, file: !123, discriminator: 2)
!3807 = !DILocation(line: 503, column: 44, scope: !3801)
!3808 = !DILocation(line: 502, column: 5, scope: !3801)
!3809 = !DILocation(line: 504, column: 5, scope: !3801)
!3810 = !DILocation(line: 506, column: 4, scope: !3790)
!3811 = !DILocation(line: 508, column: 37, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3715, file: !123, line: 508, column: 7)
!3813 = !DILocation(line: 508, column: 13, scope: !3812)
!3814 = !DILocation(line: 508, column: 11, scope: !3812)
!3815 = !DILocation(line: 508, column: 42, scope: !3812)
!3816 = !DILocation(line: 508, column: 7, scope: !3715)
!3817 = !DILocation(line: 509, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3812, file: !123, line: 508, column: 49)
!3819 = !DILocation(line: 509, column: 4, scope: !3818)
!3820 = !DILocation(line: 510, column: 4, scope: !3818)
!3821 = !DILocation(line: 510, column: 11, scope: !3818)
!3822 = !DILocation(line: 511, column: 24, scope: !3818)
!3823 = !DILocation(line: 511, column: 23, scope: !3818)
!3824 = !DILocation(line: 511, column: 13, scope: !3818)
!3825 = !DILocation(line: 511, column: 4, scope: !3818)
!3826 = !DILocation(line: 511, column: 21, scope: !3818)
!3827 = !DILocation(line: 512, column: 22, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3818, file: !123, line: 512, column: 8)
!3829 = !DILocation(line: 512, column: 31, scope: !3828)
!3830 = !DILocation(line: 512, column: 8, scope: !3828)
!3831 = !DILocation(line: 513, column: 26, scope: !3828)
!3832 = !DILocation(line: 512, column: 8, scope: !3818)
!3833 = !DILocation(line: 515, column: 37, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3828, file: !123, line: 513, column: 33)
!3835 = !DILocation(line: 515, column: 36, scope: !3834)
!3836 = !DILocation(line: 515, column: 27, scope: !3837)
!3837 = !DILexicalBlockFile(scope: !3834, file: !123, discriminator: 1)
!3838 = !DILocation(line: 515, column: 45, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3834, file: !123, discriminator: 2)
!3840 = !DILocation(line: 515, column: 44, scope: !3834)
!3841 = !DILocation(line: 514, column: 5, scope: !3834)
!3842 = !DILocation(line: 516, column: 5, scope: !3834)
!3843 = !DILocation(line: 518, column: 4, scope: !3818)
!3844 = !DILocation(line: 520, column: 9, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3812, file: !123, line: 519, column: 10)
!3846 = !DILocation(line: 520, column: 4, scope: !3845)
!3847 = !DILocation(line: 521, column: 4, scope: !3845)
!3848 = !DILocation(line: 521, column: 11, scope: !3845)
!3849 = !DILocation(line: 522, column: 22, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !123, line: 522, column: 8)
!3851 = !DILocation(line: 522, column: 31, scope: !3850)
!3852 = !DILocation(line: 522, column: 39, scope: !3850)
!3853 = !DILocation(line: 522, column: 8, scope: !3850)
!3854 = !DILocation(line: 522, column: 43, scope: !3850)
!3855 = !DILocation(line: 522, column: 8, scope: !3845)
!3856 = !DILocation(line: 523, column: 11, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3850, file: !123, line: 522, column: 50)
!3858 = !DILocation(line: 523, column: 5, scope: !3857)
!3859 = !DILocation(line: 525, column: 37, scope: !3857)
!3860 = !DILocation(line: 525, column: 36, scope: !3857)
!3861 = !DILocation(line: 525, column: 27, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3857, file: !123, discriminator: 1)
!3863 = !DILocation(line: 525, column: 45, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3857, file: !123, discriminator: 2)
!3865 = !DILocation(line: 525, column: 44, scope: !3857)
!3866 = !DILocation(line: 524, column: 5, scope: !3857)
!3867 = !DILocation(line: 526, column: 5, scope: !3857)
!3868 = !DILocation(line: 528, column: 10, scope: !3845)
!3869 = !DILocation(line: 528, column: 4, scope: !3845)
!3870 = !DILocation(line: 529, column: 4, scope: !3845)
!3871 = !DILocation(line: 535, column: 3, scope: !3438)
!3872 = !DILocation(line: 535, column: 10, scope: !3438)
!3873 = !DILocation(line: 536, column: 21, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3438, file: !123, line: 536, column: 7)
!3875 = !DILocation(line: 536, column: 30, scope: !3874)
!3876 = !DILocation(line: 536, column: 7, scope: !3874)
!3877 = !DILocation(line: 536, column: 42, scope: !3874)
!3878 = !DILocation(line: 536, column: 7, scope: !3438)
!3879 = !DILocation(line: 538, column: 36, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3874, file: !123, line: 536, column: 49)
!3881 = !DILocation(line: 538, column: 35, scope: !3880)
!3882 = !DILocation(line: 538, column: 26, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3880, file: !123, discriminator: 1)
!3884 = !DILocation(line: 538, column: 44, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3880, file: !123, discriminator: 2)
!3886 = !DILocation(line: 538, column: 43, scope: !3880)
!3887 = !DILocation(line: 537, column: 4, scope: !3880)
!3888 = !DILocation(line: 539, column: 4, scope: !3880)
!3889 = !DILocation(line: 541, column: 2, scope: !3438)
!3890 = !DILocation(line: 542, column: 2, scope: !3377)
!3891 = !DILocation(line: 543, column: 1, scope: !3377)
!3892 = distinct !DISubprogram(name: "privsep_server_openfile_verify", scope: !123, file: !123, line: 149, type: !3893, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!51, !734, !141, !51}
!3895 = !DILocalVariable(name: "opts", arg: 1, scope: !3892, file: !123, line: 149, type: !734)
!3896 = !DILocation(line: 149, column: 40, scope: !3892)
!3897 = !DILocalVariable(name: "fn", arg: 2, scope: !3892, file: !123, line: 149, type: !141)
!3898 = !DILocation(line: 149, column: 58, scope: !3892)
!3899 = !DILocalVariable(name: "mkpath", arg: 3, scope: !3892, file: !123, line: 149, type: !51)
!3900 = !DILocation(line: 149, column: 90, scope: !3892)
!3901 = !DILocation(line: 152, column: 2, scope: !3892)
!3902 = distinct !{!3902, !3901}
!3903 = !DILocation(line: 153, column: 7, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !123, line: 153, column: 7)
!3905 = distinct !DILexicalBlock(scope: !3892, file: !123, line: 152, column: 5)
!3906 = !DILocation(line: 153, column: 13, scope: !3904)
!3907 = !DILocation(line: 153, column: 7, scope: !3905)
!3908 = !DILocation(line: 154, column: 15, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !123, line: 154, column: 8)
!3910 = distinct !DILexicalBlock(scope: !3904, file: !123, line: 153, column: 25)
!3911 = !DILocation(line: 154, column: 19, scope: !3909)
!3912 = !DILocation(line: 154, column: 25, scope: !3909)
!3913 = !DILocation(line: 155, column: 21, scope: !3909)
!3914 = !DILocation(line: 155, column: 27, scope: !3909)
!3915 = !DILocation(line: 154, column: 19, scope: !3916)
!3916 = !DILexicalBlockFile(scope: !3909, file: !123, discriminator: 1)
!3917 = !DILocation(line: 156, column: 21, scope: !3909)
!3918 = !DILocation(line: 156, column: 27, scope: !3909)
!3919 = !DILocation(line: 154, column: 19, scope: !3920)
!3920 = !DILexicalBlockFile(scope: !3909, file: !123, discriminator: 2)
!3921 = !DILocation(line: 154, column: 19, scope: !3922)
!3922 = !DILexicalBlockFile(scope: !3909, file: !123, discriminator: 3)
!3923 = !DILocation(line: 154, column: 8, scope: !3922)
!3924 = !DILocation(line: 156, column: 42, scope: !3916)
!3925 = !DILocation(line: 156, column: 39, scope: !3916)
!3926 = !DILocation(line: 157, column: 5, scope: !3909)
!3927 = !DILocation(line: 158, column: 3, scope: !3910)
!3928 = !DILocation(line: 159, column: 7, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3905, file: !123, line: 159, column: 7)
!3930 = !DILocation(line: 159, column: 13, scope: !3929)
!3931 = !DILocation(line: 159, column: 7, scope: !3905)
!3932 = !DILocation(line: 160, column: 15, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !123, line: 160, column: 8)
!3934 = distinct !DILexicalBlock(scope: !3929, file: !123, line: 159, column: 22)
!3935 = !DILocation(line: 160, column: 19, scope: !3933)
!3936 = !DILocation(line: 160, column: 25, scope: !3933)
!3937 = !DILocation(line: 161, column: 21, scope: !3933)
!3938 = !DILocation(line: 161, column: 27, scope: !3933)
!3939 = !DILocation(line: 160, column: 19, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3933, file: !123, discriminator: 1)
!3941 = !DILocation(line: 162, column: 21, scope: !3933)
!3942 = !DILocation(line: 162, column: 27, scope: !3933)
!3943 = !DILocation(line: 160, column: 19, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3933, file: !123, discriminator: 2)
!3945 = !DILocation(line: 160, column: 19, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3933, file: !123, discriminator: 3)
!3947 = !DILocation(line: 160, column: 8, scope: !3946)
!3948 = !DILocation(line: 162, column: 39, scope: !3940)
!3949 = !DILocation(line: 162, column: 36, scope: !3940)
!3950 = !DILocation(line: 163, column: 5, scope: !3933)
!3951 = !DILocation(line: 164, column: 3, scope: !3934)
!3952 = !DILocation(line: 165, column: 7, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3905, file: !123, line: 165, column: 7)
!3954 = !DILocation(line: 165, column: 13, scope: !3953)
!3955 = !DILocation(line: 165, column: 7, scope: !3905)
!3956 = !DILocation(line: 166, column: 15, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !123, line: 166, column: 8)
!3958 = distinct !DILexicalBlock(scope: !3953, file: !123, line: 165, column: 25)
!3959 = !DILocation(line: 166, column: 19, scope: !3957)
!3960 = !DILocation(line: 166, column: 25, scope: !3957)
!3961 = !DILocation(line: 166, column: 8, scope: !3957)
!3962 = !DILocation(line: 166, column: 40, scope: !3957)
!3963 = !DILocation(line: 166, column: 37, scope: !3957)
!3964 = !DILocation(line: 166, column: 8, scope: !3958)
!3965 = !DILocation(line: 167, column: 5, scope: !3957)
!3966 = !DILocation(line: 168, column: 3, scope: !3958)
!3967 = !DILocation(line: 169, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3905, file: !123, line: 169, column: 7)
!3969 = !DILocation(line: 169, column: 13, scope: !3968)
!3970 = !DILocation(line: 169, column: 7, scope: !3905)
!3971 = !DILocation(line: 170, column: 15, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !123, line: 170, column: 8)
!3973 = distinct !DILexicalBlock(scope: !3968, file: !123, line: 169, column: 27)
!3974 = !DILocation(line: 170, column: 19, scope: !3972)
!3975 = !DILocation(line: 170, column: 25, scope: !3972)
!3976 = !DILocation(line: 170, column: 8, scope: !3972)
!3977 = !DILocation(line: 170, column: 42, scope: !3972)
!3978 = !DILocation(line: 170, column: 39, scope: !3972)
!3979 = !DILocation(line: 170, column: 8, scope: !3973)
!3980 = !DILocation(line: 171, column: 5, scope: !3972)
!3981 = !DILocation(line: 172, column: 3, scope: !3973)
!3982 = !DILocation(line: 173, column: 3, scope: !3905)
!3983 = !DILocation(line: 177, column: 13, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3892, file: !123, line: 177, column: 6)
!3985 = !DILocation(line: 177, column: 6, scope: !3984)
!3986 = !DILocation(line: 177, column: 6, scope: !3892)
!3987 = !DILocation(line: 178, column: 3, scope: !3984)
!3988 = !DILocation(line: 180, column: 2, scope: !3892)
!3989 = !DILocation(line: 181, column: 1, scope: !3892)
!3990 = distinct !DISubprogram(name: "privsep_server_opensock_verify", scope: !123, file: !123, line: 238, type: !3991, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!51, !734, !116}
!3993 = !DILocalVariable(name: "opts", arg: 1, scope: !3990, file: !123, line: 238, type: !734)
!3994 = !DILocation(line: 238, column: 40, scope: !3990)
!3995 = !DILocalVariable(name: "arg", arg: 2, scope: !3990, file: !123, line: 238, type: !116)
!3996 = !DILocation(line: 238, column: 52, scope: !3990)
!3997 = !DILocalVariable(name: "spec", scope: !3998, file: !123, line: 242, type: !120)
!3998 = distinct !DILexicalBlock(scope: !3990, file: !123, line: 242, column: 2)
!3999 = !DILocation(line: 242, column: 20, scope: !3998)
!4000 = !DILocation(line: 242, column: 27, scope: !3998)
!4001 = !DILocation(line: 242, column: 33, scope: !3998)
!4002 = !DILocation(line: 242, column: 7, scope: !3998)
!4003 = !DILocation(line: 242, column: 39, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !4005, file: !123, discriminator: 1)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !123, line: 242, column: 2)
!4006 = !DILocation(line: 242, column: 2, scope: !4004)
!4007 = !DILocation(line: 243, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !123, line: 243, column: 7)
!4009 = distinct !DILexicalBlock(scope: !4005, file: !123, line: 242, column: 64)
!4010 = !DILocation(line: 243, column: 15, scope: !4008)
!4011 = !DILocation(line: 243, column: 12, scope: !4008)
!4012 = !DILocation(line: 243, column: 7, scope: !4009)
!4013 = !DILocation(line: 244, column: 4, scope: !4008)
!4014 = !DILocation(line: 245, column: 2, scope: !4009)
!4015 = !DILocation(line: 242, column: 52, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4005, file: !123, discriminator: 2)
!4017 = !DILocation(line: 242, column: 58, scope: !4016)
!4018 = !DILocation(line: 242, column: 50, scope: !4016)
!4019 = !DILocation(line: 242, column: 2, scope: !4016)
!4020 = distinct !{!4020, !4021}
!4021 = !DILocation(line: 242, column: 2, scope: !3990)
!4022 = !DILocation(line: 246, column: 2, scope: !3990)
!4023 = !DILocation(line: 247, column: 1, scope: !3990)
!4024 = distinct !DISubprogram(name: "privsep_server_certfile_verify", scope: !123, file: !123, line: 306, type: !4025, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !143)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!51, !734, !141}
!4027 = !DILocalVariable(name: "opts", arg: 1, scope: !4024, file: !123, line: 306, type: !734)
!4028 = !DILocation(line: 306, column: 40, scope: !4024)
!4029 = !DILocalVariable(name: "fn", arg: 2, scope: !4024, file: !123, line: 306, type: !141)
!4030 = !DILocation(line: 306, column: 58, scope: !4024)
!4031 = !DILocation(line: 308, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4024, file: !123, line: 308, column: 6)
!4033 = !DILocation(line: 308, column: 13, scope: !4032)
!4034 = !DILocation(line: 308, column: 6, scope: !4024)
!4035 = !DILocation(line: 309, column: 3, scope: !4032)
!4036 = !DILocation(line: 310, column: 13, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4024, file: !123, line: 310, column: 6)
!4038 = !DILocation(line: 310, column: 17, scope: !4037)
!4039 = !DILocation(line: 310, column: 23, scope: !4037)
!4040 = !DILocation(line: 310, column: 6, scope: !4037)
!4041 = !DILocation(line: 310, column: 38, scope: !4037)
!4042 = !DILocation(line: 310, column: 35, scope: !4037)
!4043 = !DILocation(line: 310, column: 41, scope: !4037)
!4044 = !DILocation(line: 310, column: 51, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !4037, file: !123, discriminator: 1)
!4046 = !DILocation(line: 310, column: 44, scope: !4045)
!4047 = !DILocation(line: 310, column: 6, scope: !4045)
!4048 = !DILocation(line: 311, column: 3, scope: !4037)
!4049 = !DILocation(line: 312, column: 2, scope: !4024)
!4050 = !DILocation(line: 313, column: 1, scope: !4024)
