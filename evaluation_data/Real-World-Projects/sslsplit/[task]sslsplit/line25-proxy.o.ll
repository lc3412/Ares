; ModuleID = './line25-proxy.o.i'
source_filename = "./line25-proxy.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.proxy_ctx = type { %struct.pxy_thrmgr_ctx*, %struct.event_base*, [6 x %struct.event*], %struct.event*, %struct.proxy_listener_ctx*, %struct.opts* }
%struct.pxy_thrmgr_ctx = type opaque
%struct.event_base = type opaque
%struct.event = type opaque
%struct.proxy_listener_ctx = type { %struct.pxy_thrmgr_ctx*, %struct.proxyspec*, %struct.opts*, %struct.evconnlistener*, %struct.proxy_listener_ctx* }
%struct.proxyspec = type { i8, %struct.sockaddr_storage, i32, %struct.sockaddr_storage, i32, i16, i8*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (i32)*, %struct.proxyspec* }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.evconnlistener = type opaque
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
%struct.evdns_base = type opaque

@.str = private unnamed_addr constant [25 x i8] c"Error allocating memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error getting event base\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error creating dns event base\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"evdns cannot parse resolv.conf: %s (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"failed to open file\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to stat file\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"file too large\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"short read from file\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"no nameservers in file\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Error creating thread manager\0A\00", align 1
@signals = internal global [6 x i32] [i32 15, i32 3, i32 1, i32 2, i32 13, i32 10], align 16
@proxy_new.gc_delay = private unnamed_addr constant %struct.timeval { i64 60, i64 0 }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to start thread manager\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Starting main event loop.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Main event loop stopped.\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Using libevent backend '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Event base supports: edge %s, O(1) %s, anyfd %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Error opening socket: %s (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Error creating listener context\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Error creating evconnlistener: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Error %d on listener: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Received signal %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Warning: Failed to reopen logs\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Reopened log files\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Warning: Received SIGPIPE; ignoring.\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Warning: Received unexpected signal %i\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"Garbage collecting caches started.\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Garbage collecting caches done.\0A\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.proxy_ctx* @proxy_new(%struct.opts* nonnull, i32) #0 !dbg !20 {
  %3 = alloca %struct.proxy_ctx*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proxy_listener_ctx*, align 8
  %7 = alloca %struct.proxy_ctx*, align 8
  %8 = alloca %struct.evdns_base*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.proxyspec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i64, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %4, metadata !1860, metadata !1861), !dbg !1862
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1863, metadata !1861), !dbg !1864
  call void @llvm.dbg.declare(metadata %struct.proxy_listener_ctx** %6, metadata !1865, metadata !1861), !dbg !1868
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %7, metadata !1869, metadata !1861), !dbg !1870
  call void @llvm.dbg.declare(metadata %struct.evdns_base** %8, metadata !1871, metadata !1861), !dbg !1875
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1876, metadata !1861), !dbg !1877
  %14 = call i32 @evthread_use_pthreads(), !dbg !1878
  %15 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !1879
  %16 = bitcast %struct.opts* %15 to i16*, !dbg !1881
  %17 = load i16, i16* %16, align 8, !dbg !1881
  %18 = and i16 %17, 1, !dbg !1881
  %19 = zext i16 %18 to i32, !dbg !1881
  %20 = zext i32 %19 to i64, !dbg !1882
  %21 = icmp ne i64 %20, 0, !dbg !1883
  br i1 %21, label %22, label %23, !dbg !1884

; <label>:22:                                     ; preds = %2
  call void @event_enable_debug_mode(), !dbg !1885
  br label %23, !dbg !1887

; <label>:23:                                     ; preds = %22, %2
  %24 = call noalias i8* @malloc(i64 88) #6, !dbg !1888
  %25 = bitcast i8* %24 to %struct.proxy_ctx*, !dbg !1888
  store %struct.proxy_ctx* %25, %struct.proxy_ctx** %7, align 8, !dbg !1889
  %26 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1890
  %27 = icmp ne %struct.proxy_ctx* %26, null, !dbg !1890
  br i1 %27, label %30, label %28, !dbg !1892

; <label>:28:                                     ; preds = %23
  %29 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)), !dbg !1893
  br label %270, !dbg !1895

; <label>:30:                                     ; preds = %23
  %31 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1896
  %32 = bitcast %struct.proxy_ctx* %31 to i8*, !dbg !1897
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 88, i32 8, i1 false), !dbg !1897
  %33 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !1898
  %34 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1899
  %35 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %34, i32 0, i32 5, !dbg !1900
  store %struct.opts* %33, %struct.opts** %35, align 8, !dbg !1901
  %36 = call %struct.event_base* @event_base_new(), !dbg !1902
  %37 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1903
  %38 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %37, i32 0, i32 1, !dbg !1904
  store %struct.event_base* %36, %struct.event_base** %38, align 8, !dbg !1905
  %39 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1906
  %40 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %39, i32 0, i32 1, !dbg !1908
  %41 = load %struct.event_base*, %struct.event_base** %40, align 8, !dbg !1908
  %42 = icmp ne %struct.event_base* %41, null, !dbg !1906
  br i1 %42, label %45, label %43, !dbg !1909

; <label>:43:                                     ; preds = %30
  %44 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)), !dbg !1910
  br label %267, !dbg !1912

; <label>:45:                                     ; preds = %30
  %46 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !1913
  %47 = call i32 @opts_has_dns_spec(%struct.opts* %46), !dbg !1915
  %48 = icmp ne i32 %47, 0, !dbg !1915
  br i1 %48, label %49, label %101, !dbg !1916

; <label>:49:                                     ; preds = %45
  %50 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1917
  %51 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %50, i32 0, i32 1, !dbg !1919
  %52 = load %struct.event_base*, %struct.event_base** %51, align 8, !dbg !1919
  %53 = call %struct.evdns_base* @evdns_base_new(%struct.event_base* %52, i32 0), !dbg !1920
  store %struct.evdns_base* %53, %struct.evdns_base** %8, align 8, !dbg !1921
  %54 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8, !dbg !1922
  %55 = icmp ne %struct.evdns_base* %54, null, !dbg !1922
  br i1 %55, label %58, label %56, !dbg !1924

; <label>:56:                                     ; preds = %49
  %57 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)), !dbg !1925
  br label %263, !dbg !1927

; <label>:58:                                     ; preds = %49
  %59 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8, !dbg !1928
  %60 = call i32 @evdns_base_resolv_conf_parse(%struct.evdns_base* %59, i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)), !dbg !1929
  store i32 %60, i32* %9, align 4, !dbg !1930
  %61 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8, !dbg !1931
  call void @evdns_base_free(%struct.evdns_base* %61, i32 0), !dbg !1932
  %62 = load i32, i32* %9, align 4, !dbg !1933
  %63 = icmp ne i32 %62, 0, !dbg !1935
  br i1 %63, label %64, label %100, !dbg !1936

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %9, align 4, !dbg !1937
  %66 = icmp eq i32 %65, 1, !dbg !1939
  br i1 %66, label %67, label %68, !dbg !1937

; <label>:67:                                     ; preds = %64
  br label %96, !dbg !1940

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %9, align 4, !dbg !1942
  %70 = icmp eq i32 %69, 2, !dbg !1943
  br i1 %70, label %71, label %72, !dbg !1942

; <label>:71:                                     ; preds = %68
  br label %94, !dbg !1944

; <label>:72:                                     ; preds = %68
  %73 = load i32, i32* %9, align 4, !dbg !1945
  %74 = icmp eq i32 %73, 3, !dbg !1946
  br i1 %74, label %75, label %76, !dbg !1945

; <label>:75:                                     ; preds = %72
  br label %92, !dbg !1947

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %9, align 4, !dbg !1948
  %78 = icmp eq i32 %77, 4, !dbg !1949
  br i1 %78, label %79, label %80, !dbg !1948

; <label>:79:                                     ; preds = %76
  br label %90, !dbg !1950

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %9, align 4, !dbg !1951
  %82 = icmp eq i32 %81, 5, !dbg !1952
  br i1 %82, label %83, label %84, !dbg !1951

; <label>:83:                                     ; preds = %80
  br label %88, !dbg !1953

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* %9, align 4, !dbg !1954
  %86 = icmp eq i32 %85, 6, !dbg !1955
  %87 = select i1 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), !dbg !1954
  br label %88, !dbg !1956

; <label>:88:                                     ; preds = %84, %83
  %89 = phi i8* [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %83 ], [ %87, %84 ], !dbg !1958
  br label %90, !dbg !1960

; <label>:90:                                     ; preds = %88, %79
  %91 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %79 ], [ %89, %88 ], !dbg !1961
  br label %92, !dbg !1962

; <label>:92:                                     ; preds = %90, %75
  %93 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %75 ], [ %91, %90 ], !dbg !1963
  br label %94, !dbg !1964

; <label>:94:                                     ; preds = %92, %71
  %95 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), %71 ], [ %93, %92 ], !dbg !1965
  br label %96, !dbg !1966

; <label>:96:                                     ; preds = %94, %67
  %97 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), %67 ], [ %95, %94 ], !dbg !1967
  %98 = load i32, i32* %9, align 4, !dbg !1968
  %99 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* %97, i32 %98), !dbg !1969
  br label %263, !dbg !1970

; <label>:100:                                    ; preds = %58
  br label %101, !dbg !1971

; <label>:101:                                    ; preds = %100, %45
  %102 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !1972
  %103 = bitcast %struct.opts* %102 to i16*, !dbg !1974
  %104 = load i16, i16* %103, align 8, !dbg !1974
  %105 = and i16 %104, 1, !dbg !1974
  %106 = zext i16 %105 to i32, !dbg !1974
  %107 = zext i32 %106 to i64, !dbg !1975
  %108 = icmp ne i64 %107, 0, !dbg !1976
  br i1 %108, label %109, label %113, !dbg !1977

; <label>:109:                                    ; preds = %101
  %110 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1978
  %111 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %110, i32 0, i32 1, !dbg !1980
  %112 = load %struct.event_base*, %struct.event_base** %111, align 8, !dbg !1980
  call void @proxy_debug_base(%struct.event_base* %112), !dbg !1981
  br label %113, !dbg !1982

; <label>:113:                                    ; preds = %109, %101
  %114 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !1983
  %115 = call noalias %struct.pxy_thrmgr_ctx* @pxy_thrmgr_new(%struct.opts* %114), !dbg !1984
  %116 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1985
  %117 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %116, i32 0, i32 0, !dbg !1986
  store %struct.pxy_thrmgr_ctx* %115, %struct.pxy_thrmgr_ctx** %117, align 8, !dbg !1987
  %118 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1988
  %119 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %118, i32 0, i32 0, !dbg !1990
  %120 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %119, align 8, !dbg !1990
  %121 = icmp ne %struct.pxy_thrmgr_ctx* %120, null, !dbg !1988
  br i1 %121, label %124, label %122, !dbg !1991

; <label>:122:                                    ; preds = %113
  %123 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0)), !dbg !1992
  br label %263, !dbg !1994

; <label>:124:                                    ; preds = %113
  %125 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !1995
  %126 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %125, i32 0, i32 4, !dbg !1996
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %126, align 8, !dbg !1997
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %6, align 8, !dbg !1998
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %10, metadata !1999, metadata !1861), !dbg !2001
  %127 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2002
  %128 = getelementptr inbounds %struct.opts, %struct.opts* %127, i32 0, i32 27, !dbg !2003
  %129 = load %struct.proxyspec*, %struct.proxyspec** %128, align 8, !dbg !2003
  store %struct.proxyspec* %129, %struct.proxyspec** %10, align 8, !dbg !2001
  br label %130, !dbg !2004

; <label>:130:                                    ; preds = %156, %124
  %131 = load %struct.proxyspec*, %struct.proxyspec** %10, align 8, !dbg !2005
  %132 = icmp ne %struct.proxyspec* %131, null, !dbg !2008
  br i1 %132, label %133, label %160, !dbg !2008

; <label>:133:                                    ; preds = %130
  %134 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2009
  %135 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %134, i32 0, i32 1, !dbg !2011
  %136 = load %struct.event_base*, %struct.event_base** %135, align 8, !dbg !2011
  %137 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2012
  %138 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %137, i32 0, i32 0, !dbg !2013
  %139 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %138, align 8, !dbg !2013
  %140 = load %struct.proxyspec*, %struct.proxyspec** %10, align 8, !dbg !2014
  %141 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2015
  %142 = load i32, i32* %5, align 4, !dbg !2016
  %143 = call %struct.proxy_listener_ctx* @proxy_listener_setup(%struct.event_base* %136, %struct.pxy_thrmgr_ctx* %139, %struct.proxyspec* %140, %struct.opts* %141, i32 %142), !dbg !2017
  store %struct.proxy_listener_ctx* %143, %struct.proxy_listener_ctx** %6, align 8, !dbg !2018
  %144 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %6, align 8, !dbg !2019
  %145 = icmp ne %struct.proxy_listener_ctx* %144, null, !dbg !2019
  br i1 %145, label %147, label %146, !dbg !2021

; <label>:146:                                    ; preds = %133
  br label %250, !dbg !2022

; <label>:147:                                    ; preds = %133
  %148 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2023
  %149 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %148, i32 0, i32 4, !dbg !2024
  %150 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %149, align 8, !dbg !2024
  %151 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %6, align 8, !dbg !2025
  %152 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %151, i32 0, i32 4, !dbg !2026
  store %struct.proxy_listener_ctx* %150, %struct.proxy_listener_ctx** %152, align 8, !dbg !2027
  %153 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %6, align 8, !dbg !2028
  %154 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2029
  %155 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %154, i32 0, i32 4, !dbg !2030
  store %struct.proxy_listener_ctx* %153, %struct.proxy_listener_ctx** %155, align 8, !dbg !2031
  br label %156, !dbg !2032

; <label>:156:                                    ; preds = %147
  %157 = load %struct.proxyspec*, %struct.proxyspec** %10, align 8, !dbg !2033
  %158 = getelementptr inbounds %struct.proxyspec, %struct.proxyspec* %157, i32 0, i32 9, !dbg !2035
  %159 = load %struct.proxyspec*, %struct.proxyspec** %158, align 8, !dbg !2035
  store %struct.proxyspec* %159, %struct.proxyspec** %10, align 8, !dbg !2036
  br label %130, !dbg !2037, !llvm.loop !2038

; <label>:160:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2040, metadata !1861), !dbg !2042
  store i64 0, i64* %11, align 8, !dbg !2042
  br label %161, !dbg !2043

; <label>:161:                                    ; preds = %192, %160
  %162 = load i64, i64* %11, align 8, !dbg !2044
  %163 = icmp ult i64 %162, 6, !dbg !2047
  br i1 %163, label %164, label %195, !dbg !2048

; <label>:164:                                    ; preds = %161
  %165 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2049
  %166 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %165, i32 0, i32 1, !dbg !2051
  %167 = load %struct.event_base*, %struct.event_base** %166, align 8, !dbg !2051
  %168 = load i64, i64* %11, align 8, !dbg !2052
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* @signals, i64 0, i64 %168, !dbg !2049
  %170 = load i32, i32* %169, align 4, !dbg !2049
  %171 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2049
  %172 = bitcast %struct.proxy_ctx* %171 to i8*, !dbg !2053
  %173 = call %struct.event* @event_new(%struct.event_base* %167, i32 %170, i16 signext 24, void (i32, i16, i8*)* @proxy_signal_cb, i8* %172), !dbg !2049
  %174 = load i64, i64* %11, align 8, !dbg !2054
  %175 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2055
  %176 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %175, i32 0, i32 2, !dbg !2056
  %177 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %176, i64 0, i64 %174, !dbg !2055
  store %struct.event* %173, %struct.event** %177, align 8, !dbg !2057
  %178 = load i64, i64* %11, align 8, !dbg !2058
  %179 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2060
  %180 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %179, i32 0, i32 2, !dbg !2061
  %181 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %180, i64 0, i64 %178, !dbg !2060
  %182 = load %struct.event*, %struct.event** %181, align 8, !dbg !2060
  %183 = icmp ne %struct.event* %182, null, !dbg !2060
  br i1 %183, label %185, label %184, !dbg !2062

; <label>:184:                                    ; preds = %164
  br label %228, !dbg !2063

; <label>:185:                                    ; preds = %164
  %186 = load i64, i64* %11, align 8, !dbg !2064
  %187 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2065
  %188 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %187, i32 0, i32 2, !dbg !2066
  %189 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %188, i64 0, i64 %186, !dbg !2065
  %190 = load %struct.event*, %struct.event** %189, align 8, !dbg !2065
  %191 = call i32 @event_add(%struct.event* %190, %struct.timeval* null), !dbg !2065
  br label %192, !dbg !2067

; <label>:192:                                    ; preds = %185
  %193 = load i64, i64* %11, align 8, !dbg !2068
  %194 = add i64 %193, 1, !dbg !2068
  store i64 %194, i64* %11, align 8, !dbg !2068
  br label %161, !dbg !2070, !llvm.loop !2071

; <label>:195:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata %struct.timeval* %12, metadata !2073, metadata !1861), !dbg !2074
  %196 = bitcast %struct.timeval* %12 to i8*, !dbg !2074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* bitcast (%struct.timeval* @proxy_new.gc_delay to i8*), i64 16, i32 8, i1 false), !dbg !2074
  %197 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2075
  %198 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %197, i32 0, i32 1, !dbg !2076
  %199 = load %struct.event_base*, %struct.event_base** %198, align 8, !dbg !2076
  %200 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2077
  %201 = bitcast %struct.proxy_ctx* %200 to i8*, !dbg !2077
  %202 = call %struct.event* @event_new(%struct.event_base* %199, i32 -1, i16 signext 16, void (i32, i16, i8*)* @proxy_gc_cb, i8* %201), !dbg !2078
  %203 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2079
  %204 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %203, i32 0, i32 3, !dbg !2080
  store %struct.event* %202, %struct.event** %204, align 8, !dbg !2081
  %205 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2082
  %206 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %205, i32 0, i32 3, !dbg !2084
  %207 = load %struct.event*, %struct.event** %206, align 8, !dbg !2084
  %208 = icmp ne %struct.event* %207, null, !dbg !2082
  br i1 %208, label %210, label %209, !dbg !2085

; <label>:209:                                    ; preds = %195
  br label %218, !dbg !2086

; <label>:210:                                    ; preds = %195
  %211 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2087
  %212 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %211, i32 0, i32 3, !dbg !2088
  %213 = load %struct.event*, %struct.event** %212, align 8, !dbg !2088
  %214 = call i32 @event_add(%struct.event* %213, %struct.timeval* %12), !dbg !2087
  %215 = load i32, i32* %5, align 4, !dbg !2089
  %216 = call i32 @privsep_client_close(i32 %215), !dbg !2090
  %217 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2091
  store %struct.proxy_ctx* %217, %struct.proxy_ctx** %3, align 8, !dbg !2092
  br label %271, !dbg !2092

; <label>:218:                                    ; preds = %209
  %219 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2093
  %220 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %219, i32 0, i32 3, !dbg !2095
  %221 = load %struct.event*, %struct.event** %220, align 8, !dbg !2095
  %222 = icmp ne %struct.event* %221, null, !dbg !2093
  br i1 %222, label %223, label %227, !dbg !2096

; <label>:223:                                    ; preds = %218
  %224 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2097
  %225 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %224, i32 0, i32 3, !dbg !2099
  %226 = load %struct.event*, %struct.event** %225, align 8, !dbg !2099
  call void @event_free(%struct.event* %226), !dbg !2100
  br label %227, !dbg !2101

; <label>:227:                                    ; preds = %223, %218
  br label %228, !dbg !2102

; <label>:228:                                    ; preds = %227, %184
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2104, metadata !1861), !dbg !2106
  store i64 0, i64* %13, align 8, !dbg !2106
  br label %229, !dbg !2107

; <label>:229:                                    ; preds = %246, %228
  %230 = load i64, i64* %13, align 8, !dbg !2108
  %231 = icmp ult i64 %230, 6, !dbg !2111
  br i1 %231, label %232, label %249, !dbg !2112

; <label>:232:                                    ; preds = %229
  %233 = load i64, i64* %13, align 8, !dbg !2113
  %234 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2116
  %235 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %234, i32 0, i32 2, !dbg !2117
  %236 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %235, i64 0, i64 %233, !dbg !2116
  %237 = load %struct.event*, %struct.event** %236, align 8, !dbg !2116
  %238 = icmp ne %struct.event* %237, null, !dbg !2116
  br i1 %238, label %239, label %245, !dbg !2118

; <label>:239:                                    ; preds = %232
  %240 = load i64, i64* %13, align 8, !dbg !2119
  %241 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2121
  %242 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %241, i32 0, i32 2, !dbg !2122
  %243 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %242, i64 0, i64 %240, !dbg !2121
  %244 = load %struct.event*, %struct.event** %243, align 8, !dbg !2121
  call void @event_free(%struct.event* %244), !dbg !2123
  br label %245, !dbg !2124

; <label>:245:                                    ; preds = %239, %232
  br label %246, !dbg !2125

; <label>:246:                                    ; preds = %245
  %247 = load i64, i64* %13, align 8, !dbg !2126
  %248 = add i64 %247, 1, !dbg !2126
  store i64 %248, i64* %13, align 8, !dbg !2126
  br label %229, !dbg !2128, !llvm.loop !2129

; <label>:249:                                    ; preds = %229
  br label %250, !dbg !2131

; <label>:250:                                    ; preds = %249, %146
  %251 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2133
  %252 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %251, i32 0, i32 4, !dbg !2135
  %253 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %252, align 8, !dbg !2135
  %254 = icmp ne %struct.proxy_listener_ctx* %253, null, !dbg !2133
  br i1 %254, label %255, label %259, !dbg !2136

; <label>:255:                                    ; preds = %250
  %256 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2137
  %257 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %256, i32 0, i32 4, !dbg !2139
  %258 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %257, align 8, !dbg !2139
  call void @proxy_listener_ctx_free(%struct.proxy_listener_ctx* %258), !dbg !2140
  br label %259, !dbg !2141

; <label>:259:                                    ; preds = %255, %250
  %260 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2142
  %261 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %260, i32 0, i32 0, !dbg !2143
  %262 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %261, align 8, !dbg !2143
  call void @pxy_thrmgr_free(%struct.pxy_thrmgr_ctx* %262), !dbg !2144
  br label %263, !dbg !2144

; <label>:263:                                    ; preds = %259, %122, %96, %56
  %264 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2145
  %265 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %264, i32 0, i32 1, !dbg !2146
  %266 = load %struct.event_base*, %struct.event_base** %265, align 8, !dbg !2146
  call void @event_base_free(%struct.event_base* %266), !dbg !2147
  br label %267, !dbg !2147

; <label>:267:                                    ; preds = %263, %43
  %268 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2148
  %269 = bitcast %struct.proxy_ctx* %268 to i8*, !dbg !2148
  call void @free(i8* %269) #6, !dbg !2149
  br label %270, !dbg !2149

; <label>:270:                                    ; preds = %267, %28
  store %struct.proxy_ctx* null, %struct.proxy_ctx** %3, align 8, !dbg !2150
  br label %271, !dbg !2150

; <label>:271:                                    ; preds = %270, %210
  %272 = load %struct.proxy_ctx*, %struct.proxy_ctx** %3, align 8, !dbg !2151
  ret %struct.proxy_ctx* %272, !dbg !2151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @evthread_use_pthreads() #2

declare void @event_enable_debug_mode() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @log_err_printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare %struct.event_base* @event_base_new() #2

declare i32 @opts_has_dns_spec(%struct.opts*) #2

declare %struct.evdns_base* @evdns_base_new(%struct.event_base*, i32) #2

declare i32 @evdns_base_resolv_conf_parse(%struct.evdns_base*, i32, i8*) #2

declare void @evdns_base_free(%struct.evdns_base*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_debug_base(%struct.event_base*) #0 !dbg !2152 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.event_base** %2, metadata !2157, metadata !1861), !dbg !2158
  %4 = load %struct.event_base*, %struct.event_base** %2, align 8, !dbg !2159
  %5 = call i8* @event_base_get_method(%struct.event_base* %4), !dbg !2160
  %6 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %5), !dbg !2161
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2162, metadata !1861), !dbg !2163
  %7 = load %struct.event_base*, %struct.event_base** %2, align 8, !dbg !2164
  %8 = call i32 @event_base_get_features(%struct.event_base* %7), !dbg !2165
  store i32 %8, i32* %3, align 4, !dbg !2166
  %9 = load i32, i32* %3, align 4, !dbg !2167
  %10 = and i32 %9, 1, !dbg !2168
  %11 = icmp ne i32 %10, 0, !dbg !2169
  %12 = select i1 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), !dbg !2169
  %13 = load i32, i32* %3, align 4, !dbg !2170
  %14 = and i32 %13, 2, !dbg !2171
  %15 = icmp ne i32 %14, 0, !dbg !2172
  %16 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), !dbg !2172
  %17 = load i32, i32* %3, align 4, !dbg !2173
  %18 = and i32 %17, 4, !dbg !2174
  %19 = icmp ne i32 %18, 0, !dbg !2175
  %20 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), !dbg !2175
  %21 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i8* %12, i8* %16, i8* %20), !dbg !2176
  ret void, !dbg !2177
}

declare noalias %struct.pxy_thrmgr_ctx* @pxy_thrmgr_new(%struct.opts*) #2

; Function Attrs: nounwind uwtable
define internal %struct.proxy_listener_ctx* @proxy_listener_setup(%struct.event_base*, %struct.pxy_thrmgr_ctx*, %struct.proxyspec*, %struct.opts*, i32) #0 !dbg !2178 {
  %6 = alloca %struct.proxy_listener_ctx*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.pxy_thrmgr_ctx*, align 8
  %9 = alloca %struct.proxyspec*, align 8
  %10 = alloca %struct.opts*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.proxy_listener_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.event_base** %7, metadata !2181, metadata !1861), !dbg !2182
  store %struct.pxy_thrmgr_ctx* %1, %struct.pxy_thrmgr_ctx** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.pxy_thrmgr_ctx** %8, metadata !2183, metadata !1861), !dbg !2184
  store %struct.proxyspec* %2, %struct.proxyspec** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %9, metadata !2185, metadata !1861), !dbg !2186
  store %struct.opts* %3, %struct.opts** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %10, metadata !2187, metadata !1861), !dbg !2188
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2189, metadata !1861), !dbg !2190
  call void @llvm.dbg.declare(metadata %struct.proxy_listener_ctx** %12, metadata !2191, metadata !1861), !dbg !2192
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2193, metadata !1861), !dbg !2194
  %14 = load i32, i32* %11, align 4, !dbg !2195
  %15 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2197
  %16 = call i32 @privsep_client_opensock(i32 %14, %struct.proxyspec* %15), !dbg !2198
  store i32 %16, i32* %13, align 4, !dbg !2199
  %17 = icmp eq i32 %16, -1, !dbg !2200
  br i1 %17, label %18, label %25, !dbg !2201

; <label>:18:                                     ; preds = %5
  %19 = call i32* @__errno_location() #1, !dbg !2202
  %20 = load i32, i32* %19, align 4, !dbg !2204
  %21 = call i8* @strerror(i32 %20) #6, !dbg !2205
  %22 = call i32* @__errno_location() #1, !dbg !2207
  %23 = load i32, i32* %22, align 4, !dbg !2209
  %24 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %21, i32 %23), !dbg !2210
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %6, align 8, !dbg !2211
  br label %61, !dbg !2211

; <label>:25:                                     ; preds = %5
  %26 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %8, align 8, !dbg !2212
  %27 = load %struct.proxyspec*, %struct.proxyspec** %9, align 8, !dbg !2213
  %28 = load %struct.opts*, %struct.opts** %10, align 8, !dbg !2214
  %29 = call noalias %struct.proxy_listener_ctx* @proxy_listener_ctx_new(%struct.pxy_thrmgr_ctx* %26, %struct.proxyspec* %27, %struct.opts* %28), !dbg !2215
  store %struct.proxy_listener_ctx* %29, %struct.proxy_listener_ctx** %12, align 8, !dbg !2216
  %30 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2217
  %31 = icmp ne %struct.proxy_listener_ctx* %30, null, !dbg !2217
  br i1 %31, label %36, label %32, !dbg !2219

; <label>:32:                                     ; preds = %25
  %33 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0)), !dbg !2220
  %34 = load i32, i32* %13, align 4, !dbg !2222
  %35 = call i32 @evutil_closesocket(i32 %34), !dbg !2223
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %6, align 8, !dbg !2224
  br label %61, !dbg !2224

; <label>:36:                                     ; preds = %25
  %37 = load %struct.event_base*, %struct.event_base** %7, align 8, !dbg !2225
  %38 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2226
  %39 = bitcast %struct.proxy_listener_ctx* %38 to i8*, !dbg !2226
  %40 = load i32, i32* %13, align 4, !dbg !2227
  %41 = call %struct.evconnlistener* @evconnlistener_new(%struct.event_base* %37, void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @proxy_listener_acceptcb, i8* %39, i32 2, i32 1024, i32 %40), !dbg !2228
  %42 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2229
  %43 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %42, i32 0, i32 3, !dbg !2230
  store %struct.evconnlistener* %41, %struct.evconnlistener** %43, align 8, !dbg !2231
  %44 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2232
  %45 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %44, i32 0, i32 3, !dbg !2234
  %46 = load %struct.evconnlistener*, %struct.evconnlistener** %45, align 8, !dbg !2234
  %47 = icmp ne %struct.evconnlistener* %46, null, !dbg !2232
  br i1 %47, label %56, label %48, !dbg !2235

; <label>:48:                                     ; preds = %36
  %49 = call i32* @__errno_location() #1, !dbg !2236
  %50 = load i32, i32* %49, align 4, !dbg !2238
  %51 = call i8* @strerror(i32 %50) #6, !dbg !2239
  %52 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i8* %51), !dbg !2241
  %53 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2242
  call void @proxy_listener_ctx_free(%struct.proxy_listener_ctx* %53), !dbg !2243
  %54 = load i32, i32* %13, align 4, !dbg !2244
  %55 = call i32 @evutil_closesocket(i32 %54), !dbg !2245
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %6, align 8, !dbg !2246
  br label %61, !dbg !2246

; <label>:56:                                     ; preds = %36
  %57 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2247
  %58 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %57, i32 0, i32 3, !dbg !2248
  %59 = load %struct.evconnlistener*, %struct.evconnlistener** %58, align 8, !dbg !2248
  call void @evconnlistener_set_error_cb(%struct.evconnlistener* %59, void (%struct.evconnlistener*, i8*)* @proxy_listener_errorcb), !dbg !2249
  %60 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %12, align 8, !dbg !2250
  store %struct.proxy_listener_ctx* %60, %struct.proxy_listener_ctx** %6, align 8, !dbg !2251
  br label %61, !dbg !2251

; <label>:61:                                     ; preds = %56, %48, %32, %18
  %62 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %6, align 8, !dbg !2252
  ret %struct.proxy_listener_ctx* %62, !dbg !2252
}

declare %struct.event* @event_new(%struct.event_base*, i32, i16 signext, void (i32, i16, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_signal_cb(i32, i16 signext, i8*) #0 !dbg !2253 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.proxy_ctx*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2257, metadata !1861), !dbg !2258
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2259, metadata !1861), !dbg !2260
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2261, metadata !1861), !dbg !2262
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %7, metadata !2263, metadata !1861), !dbg !2264
  %8 = load i8*, i8** %6, align 8, !dbg !2265
  %9 = bitcast i8* %8 to %struct.proxy_ctx*, !dbg !2265
  store %struct.proxy_ctx* %9, %struct.proxy_ctx** %7, align 8, !dbg !2264
  %10 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2266
  %11 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %10, i32 0, i32 5, !dbg !2268
  %12 = load %struct.opts*, %struct.opts** %11, align 8, !dbg !2268
  %13 = bitcast %struct.opts* %12 to i16*, !dbg !2269
  %14 = load i16, i16* %13, align 8, !dbg !2269
  %15 = and i16 %14, 1, !dbg !2269
  %16 = zext i16 %15 to i32, !dbg !2269
  %17 = zext i32 %16 to i64, !dbg !2270
  %18 = icmp ne i64 %17, 0, !dbg !2271
  br i1 %18, label %19, label %22, !dbg !2272

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %4, align 4, !dbg !2273
  %21 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 %20), !dbg !2275
  br label %22, !dbg !2276

; <label>:22:                                     ; preds = %19, %3
  %23 = load i32, i32* %4, align 4, !dbg !2277
  switch i32 %23, label %36 [
    i32 15, label %24
    i32 3, label %24
    i32 2, label %24
    i32 1, label %24
    i32 10, label %26
    i32 13, label %34
  ], !dbg !2278

; <label>:24:                                     ; preds = %22, %22, %22, %22
  %25 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2279
  call void @proxy_loopbreak(%struct.proxy_ctx* %25), !dbg !2281
  br label %39, !dbg !2282

; <label>:26:                                     ; preds = %22
  %27 = call i32 @log_reopen(), !dbg !2283
  %28 = icmp eq i32 %27, -1, !dbg !2285
  br i1 %28, label %29, label %31, !dbg !2286

; <label>:29:                                     ; preds = %26
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0)), !dbg !2287
  br label %33, !dbg !2289

; <label>:31:                                     ; preds = %26
  %32 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)), !dbg !2290
  br label %33

; <label>:33:                                     ; preds = %31, %29
  br label %39, !dbg !2292

; <label>:34:                                     ; preds = %22
  %35 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0)), !dbg !2293
  br label %39, !dbg !2294

; <label>:36:                                     ; preds = %22
  %37 = load i32, i32* %4, align 4, !dbg !2295
  %38 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0), i32 %37), !dbg !2296
  br label %39, !dbg !2297

; <label>:39:                                     ; preds = %36, %34, %33, %24
  ret void, !dbg !2298
}

declare i32 @event_add(%struct.event*, %struct.timeval*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @proxy_gc_cb(i32, i16 signext, i8*) #0 !dbg !2299 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.proxy_ctx*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2300, metadata !1861), !dbg !2301
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2302, metadata !1861), !dbg !2303
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2304, metadata !1861), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %7, metadata !2306, metadata !1861), !dbg !2307
  %8 = load i8*, i8** %6, align 8, !dbg !2308
  %9 = bitcast i8* %8 to %struct.proxy_ctx*, !dbg !2308
  store %struct.proxy_ctx* %9, %struct.proxy_ctx** %7, align 8, !dbg !2307
  %10 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2309
  %11 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %10, i32 0, i32 5, !dbg !2311
  %12 = load %struct.opts*, %struct.opts** %11, align 8, !dbg !2311
  %13 = bitcast %struct.opts* %12 to i16*, !dbg !2312
  %14 = load i16, i16* %13, align 8, !dbg !2312
  %15 = and i16 %14, 1, !dbg !2312
  %16 = zext i16 %15 to i32, !dbg !2312
  %17 = zext i32 %16 to i64, !dbg !2313
  %18 = icmp ne i64 %17, 0, !dbg !2314
  br i1 %18, label %19, label %21, !dbg !2315

; <label>:19:                                     ; preds = %3
  %20 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0)), !dbg !2316
  br label %21, !dbg !2316

; <label>:21:                                     ; preds = %19, %3
  call void @cachemgr_gc(), !dbg !2317
  %22 = load %struct.proxy_ctx*, %struct.proxy_ctx** %7, align 8, !dbg !2318
  %23 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %22, i32 0, i32 5, !dbg !2320
  %24 = load %struct.opts*, %struct.opts** %23, align 8, !dbg !2320
  %25 = bitcast %struct.opts* %24 to i16*, !dbg !2321
  %26 = load i16, i16* %25, align 8, !dbg !2321
  %27 = and i16 %26, 1, !dbg !2321
  %28 = zext i16 %27 to i32, !dbg !2321
  %29 = zext i32 %28 to i64, !dbg !2322
  %30 = icmp ne i64 %29, 0, !dbg !2323
  br i1 %30, label %31, label %33, !dbg !2324

; <label>:31:                                     ; preds = %21
  %32 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0)), !dbg !2325
  br label %33, !dbg !2325

; <label>:33:                                     ; preds = %31, %21
  ret void, !dbg !2326
}

declare i32 @privsep_client_close(i32) #2

declare void @event_free(%struct.event*) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_listener_ctx_free(%struct.proxy_listener_ctx* nonnull) #0 !dbg !2327 {
  %2 = alloca %struct.proxy_listener_ctx*, align 8
  store %struct.proxy_listener_ctx* %0, %struct.proxy_listener_ctx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.proxy_listener_ctx** %2, metadata !2330, metadata !1861), !dbg !2331
  %3 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %2, align 8, !dbg !2332
  %4 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %3, i32 0, i32 3, !dbg !2334
  %5 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8, !dbg !2334
  %6 = icmp ne %struct.evconnlistener* %5, null, !dbg !2332
  br i1 %6, label %7, label %11, !dbg !2335

; <label>:7:                                      ; preds = %1
  %8 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %2, align 8, !dbg !2336
  %9 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %8, i32 0, i32 3, !dbg !2338
  %10 = load %struct.evconnlistener*, %struct.evconnlistener** %9, align 8, !dbg !2338
  call void @evconnlistener_free(%struct.evconnlistener* %10), !dbg !2339
  br label %11, !dbg !2340

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %2, align 8, !dbg !2341
  %13 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %12, i32 0, i32 4, !dbg !2343
  %14 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %13, align 8, !dbg !2343
  %15 = icmp ne %struct.proxy_listener_ctx* %14, null, !dbg !2341
  br i1 %15, label %16, label %20, !dbg !2344

; <label>:16:                                     ; preds = %11
  %17 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %2, align 8, !dbg !2345
  %18 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %17, i32 0, i32 4, !dbg !2347
  %19 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %18, align 8, !dbg !2347
  call void @proxy_listener_ctx_free(%struct.proxy_listener_ctx* %19), !dbg !2348
  br label %20, !dbg !2349

; <label>:20:                                     ; preds = %16, %11
  %21 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %2, align 8, !dbg !2350
  %22 = bitcast %struct.proxy_listener_ctx* %21 to i8*, !dbg !2350
  call void @free(i8* %22) #6, !dbg !2351
  ret void, !dbg !2352
}

declare void @pxy_thrmgr_free(%struct.pxy_thrmgr_ctx*) #2

declare void @event_base_free(%struct.event_base*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @proxy_run(%struct.proxy_ctx* nonnull) #0 !dbg !2353 {
  %2 = alloca %struct.proxy_ctx*, align 8
  store %struct.proxy_ctx* %0, %struct.proxy_ctx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %2, metadata !2356, metadata !1861), !dbg !2357
  %3 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2358
  %4 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %3, i32 0, i32 5, !dbg !2360
  %5 = load %struct.opts*, %struct.opts** %4, align 8, !dbg !2360
  %6 = bitcast %struct.opts* %5 to i16*, !dbg !2361
  %7 = load i16, i16* %6, align 8, !dbg !2361
  %8 = lshr i16 %7, 1, !dbg !2361
  %9 = and i16 %8, 1, !dbg !2361
  %10 = zext i16 %9 to i32, !dbg !2361
  %11 = icmp ne i32 %10, 0, !dbg !2358
  br i1 %11, label %12, label %17, !dbg !2362

; <label>:12:                                     ; preds = %1
  %13 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2363
  %14 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %13, i32 0, i32 1, !dbg !2365
  %15 = load %struct.event_base*, %struct.event_base** %14, align 8, !dbg !2365
  %16 = call i32 @event_reinit(%struct.event_base* %15), !dbg !2366
  br label %17, !dbg !2367

; <label>:17:                                     ; preds = %12, %1
  %18 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2368
  %19 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %18, i32 0, i32 5, !dbg !2370
  %20 = load %struct.opts*, %struct.opts** %19, align 8, !dbg !2370
  %21 = bitcast %struct.opts* %20 to i16*, !dbg !2371
  %22 = load i16, i16* %21, align 8, !dbg !2371
  %23 = and i16 %22, 1, !dbg !2371
  %24 = zext i16 %23 to i32, !dbg !2371
  %25 = zext i32 %24 to i64, !dbg !2372
  %26 = icmp ne i64 %25, 0, !dbg !2373
  br i1 %26, label %27, label %32, !dbg !2374

; <label>:27:                                     ; preds = %17
  %28 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2375
  %29 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %28, i32 0, i32 1, !dbg !2377
  %30 = load %struct.event_base*, %struct.event_base** %29, align 8, !dbg !2377
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2378
  call void @event_base_dump_events(%struct.event_base* %30, %struct._IO_FILE* %31), !dbg !2379
  br label %32, !dbg !2380

; <label>:32:                                     ; preds = %27, %17
  %33 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2381
  %34 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %33, i32 0, i32 0, !dbg !2383
  %35 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %34, align 8, !dbg !2383
  %36 = call i32 @pxy_thrmgr_run(%struct.pxy_thrmgr_ctx* %35), !dbg !2384
  %37 = icmp eq i32 %36, -1, !dbg !2385
  br i1 %37, label %38, label %40, !dbg !2386

; <label>:38:                                     ; preds = %32
  %39 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0)), !dbg !2387
  br label %68, !dbg !2389

; <label>:40:                                     ; preds = %32
  %41 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2390
  %42 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %41, i32 0, i32 5, !dbg !2392
  %43 = load %struct.opts*, %struct.opts** %42, align 8, !dbg !2392
  %44 = bitcast %struct.opts* %43 to i16*, !dbg !2393
  %45 = load i16, i16* %44, align 8, !dbg !2393
  %46 = and i16 %45, 1, !dbg !2393
  %47 = zext i16 %46 to i32, !dbg !2393
  %48 = zext i32 %47 to i64, !dbg !2394
  %49 = icmp ne i64 %48, 0, !dbg !2395
  br i1 %49, label %50, label %52, !dbg !2396

; <label>:50:                                     ; preds = %40
  %51 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0)), !dbg !2397
  br label %52, !dbg !2399

; <label>:52:                                     ; preds = %50, %40
  %53 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2400
  %54 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %53, i32 0, i32 1, !dbg !2401
  %55 = load %struct.event_base*, %struct.event_base** %54, align 8, !dbg !2401
  %56 = call i32 @event_base_dispatch(%struct.event_base* %55), !dbg !2402
  %57 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2403
  %58 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %57, i32 0, i32 5, !dbg !2405
  %59 = load %struct.opts*, %struct.opts** %58, align 8, !dbg !2405
  %60 = bitcast %struct.opts* %59 to i16*, !dbg !2406
  %61 = load i16, i16* %60, align 8, !dbg !2406
  %62 = and i16 %61, 1, !dbg !2406
  %63 = zext i16 %62 to i32, !dbg !2406
  %64 = zext i32 %63 to i64, !dbg !2407
  %65 = icmp ne i64 %64, 0, !dbg !2408
  br i1 %65, label %66, label %68, !dbg !2409

; <label>:66:                                     ; preds = %52
  %67 = call i32 (i8*, ...) @log_dbg_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0)), !dbg !2410
  br label %68, !dbg !2412

; <label>:68:                                     ; preds = %38, %66, %52
  ret void, !dbg !2413
}

declare i32 @event_reinit(%struct.event_base*) #2

declare void @event_base_dump_events(%struct.event_base*, %struct._IO_FILE*) #2

declare i32 @pxy_thrmgr_run(%struct.pxy_thrmgr_ctx*) #2

declare i32 @log_dbg_printf(i8*, ...) #2

declare i32 @event_base_dispatch(%struct.event_base*) #2

; Function Attrs: nounwind uwtable
define void @proxy_loopbreak(%struct.proxy_ctx* nonnull) #0 !dbg !2414 {
  %2 = alloca %struct.proxy_ctx*, align 8
  store %struct.proxy_ctx* %0, %struct.proxy_ctx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %2, metadata !2415, metadata !1861), !dbg !2416
  %3 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2417
  %4 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %3, i32 0, i32 1, !dbg !2418
  %5 = load %struct.event_base*, %struct.event_base** %4, align 8, !dbg !2418
  %6 = call i32 @event_base_loopbreak(%struct.event_base* %5), !dbg !2419
  ret void, !dbg !2420
}

declare i32 @event_base_loopbreak(%struct.event_base*) #2

; Function Attrs: nounwind uwtable
define void @proxy_free(%struct.proxy_ctx* nonnull) #0 !dbg !2421 {
  %2 = alloca %struct.proxy_ctx*, align 8
  %3 = alloca i64, align 8
  store %struct.proxy_ctx* %0, %struct.proxy_ctx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %2, metadata !2422, metadata !1861), !dbg !2423
  %4 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2424
  %5 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %4, i32 0, i32 3, !dbg !2426
  %6 = load %struct.event*, %struct.event** %5, align 8, !dbg !2426
  %7 = icmp ne %struct.event* %6, null, !dbg !2424
  br i1 %7, label %8, label %12, !dbg !2427

; <label>:8:                                      ; preds = %1
  %9 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2428
  %10 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %9, i32 0, i32 3, !dbg !2430
  %11 = load %struct.event*, %struct.event** %10, align 8, !dbg !2430
  call void @event_free(%struct.event* %11), !dbg !2431
  br label %12, !dbg !2432

; <label>:12:                                     ; preds = %8, %1
  %13 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2433
  %14 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %13, i32 0, i32 4, !dbg !2435
  %15 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %14, align 8, !dbg !2435
  %16 = icmp ne %struct.proxy_listener_ctx* %15, null, !dbg !2433
  br i1 %16, label %17, label %21, !dbg !2436

; <label>:17:                                     ; preds = %12
  %18 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2437
  %19 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %18, i32 0, i32 4, !dbg !2439
  %20 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %19, align 8, !dbg !2439
  call void @proxy_listener_ctx_free(%struct.proxy_listener_ctx* %20), !dbg !2440
  br label %21, !dbg !2441

; <label>:21:                                     ; preds = %17, %12
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2442, metadata !1861), !dbg !2444
  store i64 0, i64* %3, align 8, !dbg !2444
  br label %22, !dbg !2445

; <label>:22:                                     ; preds = %39, %21
  %23 = load i64, i64* %3, align 8, !dbg !2446
  %24 = icmp ult i64 %23, 6, !dbg !2449
  br i1 %24, label %25, label %42, !dbg !2450

; <label>:25:                                     ; preds = %22
  %26 = load i64, i64* %3, align 8, !dbg !2451
  %27 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2454
  %28 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %27, i32 0, i32 2, !dbg !2455
  %29 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %28, i64 0, i64 %26, !dbg !2454
  %30 = load %struct.event*, %struct.event** %29, align 8, !dbg !2454
  %31 = icmp ne %struct.event* %30, null, !dbg !2454
  br i1 %31, label %32, label %38, !dbg !2456

; <label>:32:                                     ; preds = %25
  %33 = load i64, i64* %3, align 8, !dbg !2457
  %34 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2459
  %35 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %34, i32 0, i32 2, !dbg !2460
  %36 = getelementptr inbounds [6 x %struct.event*], [6 x %struct.event*]* %35, i64 0, i64 %33, !dbg !2459
  %37 = load %struct.event*, %struct.event** %36, align 8, !dbg !2459
  call void @event_free(%struct.event* %37), !dbg !2461
  br label %38, !dbg !2462

; <label>:38:                                     ; preds = %32, %25
  br label %39, !dbg !2463

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %3, align 8, !dbg !2464
  %41 = add i64 %40, 1, !dbg !2464
  store i64 %41, i64* %3, align 8, !dbg !2464
  br label %22, !dbg !2466, !llvm.loop !2467

; <label>:42:                                     ; preds = %22
  %43 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2469
  %44 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %43, i32 0, i32 0, !dbg !2471
  %45 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %44, align 8, !dbg !2471
  %46 = icmp ne %struct.pxy_thrmgr_ctx* %45, null, !dbg !2469
  br i1 %46, label %47, label %51, !dbg !2472

; <label>:47:                                     ; preds = %42
  %48 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2473
  %49 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %48, i32 0, i32 0, !dbg !2475
  %50 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %49, align 8, !dbg !2475
  call void @pxy_thrmgr_free(%struct.pxy_thrmgr_ctx* %50), !dbg !2476
  br label %51, !dbg !2477

; <label>:51:                                     ; preds = %47, %42
  %52 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2478
  %53 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %52, i32 0, i32 1, !dbg !2480
  %54 = load %struct.event_base*, %struct.event_base** %53, align 8, !dbg !2480
  %55 = icmp ne %struct.event_base* %54, null, !dbg !2478
  br i1 %55, label %56, label %60, !dbg !2481

; <label>:56:                                     ; preds = %51
  %57 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2482
  %58 = getelementptr inbounds %struct.proxy_ctx, %struct.proxy_ctx* %57, i32 0, i32 1, !dbg !2484
  %59 = load %struct.event_base*, %struct.event_base** %58, align 8, !dbg !2484
  call void @event_base_free(%struct.event_base* %59), !dbg !2485
  br label %60, !dbg !2486

; <label>:60:                                     ; preds = %56, %51
  %61 = load %struct.proxy_ctx*, %struct.proxy_ctx** %2, align 8, !dbg !2487
  %62 = bitcast %struct.proxy_ctx* %61 to i8*, !dbg !2487
  call void @free(i8* %62) #6, !dbg !2488
  ret void, !dbg !2489
}

declare i8* @event_base_get_method(%struct.event_base*) #2

declare i32 @event_base_get_features(%struct.event_base*) #2

declare i32 @privsep_client_opensock(i32, %struct.proxyspec*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal noalias %struct.proxy_listener_ctx* @proxy_listener_ctx_new(%struct.pxy_thrmgr_ctx*, %struct.proxyspec*, %struct.opts*) #0 !dbg !2490 {
  %4 = alloca %struct.proxy_listener_ctx*, align 8
  %5 = alloca %struct.pxy_thrmgr_ctx*, align 8
  %6 = alloca %struct.proxyspec*, align 8
  %7 = alloca %struct.opts*, align 8
  %8 = alloca %struct.proxy_listener_ctx*, align 8
  store %struct.pxy_thrmgr_ctx* %0, %struct.pxy_thrmgr_ctx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.pxy_thrmgr_ctx** %5, metadata !2493, metadata !1861), !dbg !2494
  store %struct.proxyspec* %1, %struct.proxyspec** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.proxyspec** %6, metadata !2495, metadata !1861), !dbg !2496
  store %struct.opts* %2, %struct.opts** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %7, metadata !2497, metadata !1861), !dbg !2498
  call void @llvm.dbg.declare(metadata %struct.proxy_listener_ctx** %8, metadata !2499, metadata !1861), !dbg !2500
  %9 = call noalias i8* @malloc(i64 40) #6, !dbg !2501
  %10 = bitcast i8* %9 to %struct.proxy_listener_ctx*, !dbg !2501
  store %struct.proxy_listener_ctx* %10, %struct.proxy_listener_ctx** %8, align 8, !dbg !2500
  %11 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2502
  %12 = icmp ne %struct.proxy_listener_ctx* %11, null, !dbg !2502
  br i1 %12, label %14, label %13, !dbg !2504

; <label>:13:                                     ; preds = %3
  store %struct.proxy_listener_ctx* null, %struct.proxy_listener_ctx** %4, align 8, !dbg !2505
  br label %27, !dbg !2505

; <label>:14:                                     ; preds = %3
  %15 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2506
  %16 = bitcast %struct.proxy_listener_ctx* %15 to i8*, !dbg !2507
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 40, i32 8, i1 false), !dbg !2507
  %17 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %5, align 8, !dbg !2508
  %18 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2509
  %19 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %18, i32 0, i32 0, !dbg !2510
  store %struct.pxy_thrmgr_ctx* %17, %struct.pxy_thrmgr_ctx** %19, align 8, !dbg !2511
  %20 = load %struct.proxyspec*, %struct.proxyspec** %6, align 8, !dbg !2512
  %21 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2513
  %22 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %21, i32 0, i32 1, !dbg !2514
  store %struct.proxyspec* %20, %struct.proxyspec** %22, align 8, !dbg !2515
  %23 = load %struct.opts*, %struct.opts** %7, align 8, !dbg !2516
  %24 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2517
  %25 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %24, i32 0, i32 2, !dbg !2518
  store %struct.opts* %23, %struct.opts** %25, align 8, !dbg !2519
  %26 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %8, align 8, !dbg !2520
  store %struct.proxy_listener_ctx* %26, %struct.proxy_listener_ctx** %4, align 8, !dbg !2521
  br label %27, !dbg !2521

; <label>:27:                                     ; preds = %14, %13
  %28 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %4, align 8, !dbg !2522
  ret %struct.proxy_listener_ctx* %28, !dbg !2522
}

declare i32 @evutil_closesocket(i32) #2

declare %struct.evconnlistener* @evconnlistener_new(%struct.event_base*, void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_listener_acceptcb(%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*) #0 !dbg !2523 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.proxy_listener_ctx*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.evconnlistener** %6, metadata !2526, metadata !1861), !dbg !2527
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2528, metadata !1861), !dbg !2529
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %8, metadata !2530, metadata !1861), !dbg !2531
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2532, metadata !1861), !dbg !2533
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2534, metadata !1861), !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.proxy_listener_ctx** %11, metadata !2536, metadata !1861), !dbg !2537
  %12 = load i8*, i8** %10, align 8, !dbg !2538
  %13 = bitcast i8* %12 to %struct.proxy_listener_ctx*, !dbg !2538
  store %struct.proxy_listener_ctx* %13, %struct.proxy_listener_ctx** %11, align 8, !dbg !2537
  %14 = load i32, i32* %7, align 4, !dbg !2539
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8, !dbg !2540
  %16 = load i32, i32* %9, align 4, !dbg !2541
  %17 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %11, align 8, !dbg !2542
  %18 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %17, i32 0, i32 0, !dbg !2543
  %19 = load %struct.pxy_thrmgr_ctx*, %struct.pxy_thrmgr_ctx** %18, align 8, !dbg !2543
  %20 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %11, align 8, !dbg !2544
  %21 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %20, i32 0, i32 1, !dbg !2545
  %22 = load %struct.proxyspec*, %struct.proxyspec** %21, align 8, !dbg !2545
  %23 = load %struct.proxy_listener_ctx*, %struct.proxy_listener_ctx** %11, align 8, !dbg !2546
  %24 = getelementptr inbounds %struct.proxy_listener_ctx, %struct.proxy_listener_ctx* %23, i32 0, i32 2, !dbg !2547
  %25 = load %struct.opts*, %struct.opts** %24, align 8, !dbg !2547
  call void @pxy_conn_setup(i32 %14, %struct.sockaddr* %15, i32 %16, %struct.pxy_thrmgr_ctx* %19, %struct.proxyspec* %22, %struct.opts* %25), !dbg !2548
  ret void, !dbg !2549
}

declare void @evconnlistener_set_error_cb(%struct.evconnlistener*, void (%struct.evconnlistener*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @proxy_listener_errorcb(%struct.evconnlistener*, i8*) #0 !dbg !2550 {
  %3 = alloca %struct.evconnlistener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  store %struct.evconnlistener* %0, %struct.evconnlistener** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.evconnlistener** %3, metadata !2553, metadata !1861), !dbg !2554
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2555, metadata !1861), !dbg !2556
  call void @llvm.dbg.declare(metadata %struct.event_base** %5, metadata !2557, metadata !1861), !dbg !2558
  %7 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8, !dbg !2559
  %8 = call %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener* %7), !dbg !2560
  store %struct.event_base* %8, %struct.event_base** %5, align 8, !dbg !2558
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2561, metadata !1861), !dbg !2562
  %9 = call i32* @__errno_location() #1, !dbg !2563
  %10 = load i32, i32* %9, align 4, !dbg !2564
  store i32 %10, i32* %6, align 4, !dbg !2562
  %11 = load i32, i32* %6, align 4, !dbg !2565
  %12 = load i32, i32* %6, align 4, !dbg !2566
  %13 = call i8* @strerror(i32 %12) #6, !dbg !2567
  %14 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i32 %11, i8* %13), !dbg !2568
  %15 = load %struct.event_base*, %struct.event_base** %5, align 8, !dbg !2569
  %16 = call i32 @event_base_loopbreak(%struct.event_base* %15), !dbg !2570
  ret void, !dbg !2571
}

declare void @pxy_conn_setup(i32, %struct.sockaddr*, i32, %struct.pxy_thrmgr_ctx*, %struct.proxyspec*, %struct.opts*) #2

declare %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener*) #2

declare i32 @log_reopen() #2

declare void @cachemgr_gc() #2

declare void @evconnlistener_free(%struct.evconnlistener*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !10)
!1 = !DIFile(filename: "line25-proxy.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "event_method_feature", file: !4, line: 501, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/event2/event.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "EV_FEATURE_ET", value: 1)
!7 = !DIEnumerator(name: "EV_FEATURE_O1", value: 2)
!8 = !DIEnumerator(name: "EV_FEATURE_FDS", value: 4)
!9 = !DIEnumerator(name: "EV_FEATURE_EARLY_CLOSE", value: 8)
!10 = !{!11}
!11 = distinct !DIGlobalVariable(name: "signals", scope: !0, file: !12, line: 60, type: !13, isLocal: true, isDefinition: true, variable: [6 x i32]* @signals)
!12 = !DIFile(filename: "proxy.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, align: 32, elements: !15)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!20 = distinct !DISubprogram(name: "proxy_new", scope: !12, file: !12, line: 254, type: !21, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !104, !14}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_ctx_t", file: !25, line: 35, baseType: !26)
!25 = !DIFile(filename: "proxy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_ctx", file: !12, line: 62, size: 704, align: 64, elements: !27)
!27 = !{!28, !33, !36, !40, !41, !1858}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "thrmgr", scope: !26, file: !12, line: 63, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pxy_thrmgr_ctx_t", file: !31, line: 41, baseType: !32)
!31 = !DIFile(filename: "pxythrmgr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "pxy_thrmgr_ctx", file: !31, line: 41, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "evbase", scope: !26, file: !12, line: 64, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !4, line: 217, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sev", scope: !26, file: !12, line: 65, baseType: !37, size: 384, align: 64, offset: 128)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 384, align: 64, elements: !15)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !4, line: 276, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "gcev", scope: !26, file: !12, line: 66, baseType: !38, size: 64, align: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lctx", scope: !26, file: !12, line: 67, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_listener_ctx", file: !12, line: 75, size: 320, align: 64, elements: !44)
!44 = !{!45, !46, !103, !1853, !1857}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "thrmgr", scope: !43, file: !12, line: 76, baseType: !29, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !43, file: !12, line: 77, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxyspec_t", file: !49, line: 54, baseType: !50)
!49 = !DIFile(filename: "opts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxyspec", file: !49, line: 37, size: 2496, align: 64, elements: !51)
!51 = !{!52, !54, !55, !56, !57, !72, !76, !77, !78, !79, !81, !96, !101}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !50, file: !49, line: 38, baseType: !53, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "http", scope: !50, file: !49, line: 39, baseType: !53, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !50, file: !49, line: 40, baseType: !53, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !50, file: !49, line: 41, baseType: !53, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addr", scope: !50, file: !49, line: 42, baseType: !58, size: 1024, align: 64, offset: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !59, line: 166, size: 1024, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!60 = !{!61, !65, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !58, file: !59, line: 168, baseType: !62, size: 16, align: 16)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !63, line: 28, baseType: !64)
!63 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!64 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !58, file: !59, line: 169, baseType: !66, size: 944, align: 8, offset: 16)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 944, align: 8, elements: !68)
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 118)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !58, file: !59, line: 170, baseType: !71, size: 64, align: 64, offset: 960)
!71 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addrlen", scope: !50, file: !49, line: 43, baseType: !73, size: 32, align: 32, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !59, line: 33, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !75, line: 189, baseType: !53)
!75 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addr", scope: !50, file: !49, line: 47, baseType: !58, size: 1024, align: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addrlen", scope: !50, file: !49, line: 48, baseType: !73, size: 32, align: 32, offset: 2176)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sni_port", scope: !50, file: !49, line: 49, baseType: !64, size: 16, align: 16, offset: 2208)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "natengine", scope: !50, file: !49, line: 50, baseType: !80, size: 64, align: 64, offset: 2240)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "natlookup", scope: !50, file: !49, line: 51, baseType: !82, size: 64, align: 64, offset: 2304)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !83, line: 39, baseType: !84)
!83 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!14, !87, !95, !14, !87, !73}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !59, line: 153, size: 128, align: 16, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !88, file: !59, line: 155, baseType: !62, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !88, file: !59, line: 156, baseType: !92, size: 112, align: 8, offset: 16)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 112, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 14)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "natsocket", scope: !50, file: !49, line: 52, baseType: !97, size: 64, align: 64, offset: 2368)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !83, line: 41, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !14}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !50, file: !49, line: 53, baseType: !102, size: 64, align: 64, offset: 2432)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !43, file: !12, line: 78, baseType: !104, size: 64, align: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "opts_t", file: !49, line: 126, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opts", file: !49, line: 56, size: 1920, align: 64, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !106, file: !49, line: 57, baseType: !53, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !106, file: !49, line: 58, baseType: !53, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sslcomp", scope: !106, file: !49, line: 59, baseType: !53, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "no_ssl3", scope: !106, file: !49, line: 64, baseType: !53, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls10", scope: !106, file: !49, line: 67, baseType: !53, size: 1, align: 32, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls11", scope: !106, file: !49, line: 70, baseType: !53, size: 1, align: 32, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls12", scope: !106, file: !49, line: 73, baseType: !53, size: 1, align: 32, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "passthrough", scope: !106, file: !49, line: 75, baseType: !53, size: 1, align: 32, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "deny_ocsp", scope: !106, file: !49, line: 76, baseType: !53, size: 1, align: 32, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isdir", scope: !106, file: !49, line: 77, baseType: !53, size: 1, align: 32, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isspec", scope: !106, file: !49, line: 78, baseType: !53, size: 1, align: 32, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isdir", scope: !106, file: !49, line: 79, baseType: !53, size: 1, align: 32, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isspec", scope: !106, file: !49, line: 80, baseType: !53, size: 1, align: 32, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "certgen_writeall", scope: !106, file: !49, line: 84, baseType: !53, size: 1, align: 32, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "openssl_engine", scope: !106, file: !49, line: 86, baseType: !80, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !106, file: !49, line: 88, baseType: !80, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "certgendir", scope: !106, file: !49, line: 89, baseType: !80, size: 64, align: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tgcrtdir", scope: !106, file: !49, line: 90, baseType: !80, size: 64, align: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dropuser", scope: !106, file: !49, line: 91, baseType: !80, size: 64, align: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dropgroup", scope: !106, file: !49, line: 92, baseType: !80, size: 64, align: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "jaildir", scope: !106, file: !49, line: 93, baseType: !80, size: 64, align: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !106, file: !49, line: 94, baseType: !80, size: 64, align: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "conffile", scope: !106, file: !49, line: 95, baseType: !80, size: 64, align: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "connectlog", scope: !106, file: !49, line: 96, baseType: !80, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog", scope: !106, file: !49, line: 97, baseType: !80, size: 64, align: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_basedir", scope: !106, file: !49, line: 98, baseType: !80, size: 64, align: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "masterkeylog", scope: !106, file: !49, line: 99, baseType: !80, size: 64, align: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog", scope: !106, file: !49, line: 100, baseType: !80, size: 64, align: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_basedir", scope: !106, file: !49, line: 101, baseType: !80, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mirrorif", scope: !106, file: !49, line: 103, baseType: !80, size: 64, align: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mirrortarget", scope: !106, file: !49, line: 104, baseType: !80, size: 64, align: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sslmethod", scope: !106, file: !49, line: 106, baseType: !140, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !146, line: 374, baseType: !147)
!146 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !146, line: 438, size: 1856, align: 64, elements: !148)
!148 = !{!149, !150, !1759, !1763, !1764, !1765, !1766, !1770, !1771, !1775, !1776, !1777, !1778, !1782, !1786, !1790, !1791, !1795, !1799, !1803, !1807, !1811, !1815, !1819, !1825, !1826, !1829, !1830, !1837}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !147, file: !146, line: 439, baseType: !14, size: 32, align: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !147, file: !146, line: 440, baseType: !151, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!14, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !156, line: 178, baseType: !157)
!156 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !146, line: 1422, size: 6592, align: 64, elements: !158)
!158 = !{!159, !160, !161, !162, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !274, !275, !276, !277, !280, !281, !344, !824, !1257, !1258, !1262, !1263, !1264, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1296, !1297, !1298, !1299, !1306, !1307, !1476, !1480, !1481, !1482, !1486, !1490, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1699, !1700, !1701, !1702, !1703, !1704, !1707, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1727, !1732, !1733, !1740, !1741, !1742, !1743, !1744, !1745, !1752, !1753, !1754, !1755, !1756, !1757, !1758}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !157, file: !146, line: 1427, baseType: !14, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !146, line: 1429, baseType: !14, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !157, file: !146, line: 1431, baseType: !143, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !157, file: !146, line: 1438, baseType: !163, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !165, line: 238, baseType: !166)
!165 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !165, line: 325, size: 896, align: 64, elements: !167)
!167 = !{!168, !210, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !166, file: !165, line: 326, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !165, line: 323, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !165, line: 312, size: 640, align: 64, elements: !172)
!172 = !{!173, !174, !177, !181, !185, !189, !190, !196, !200, !201}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !165, line: 313, baseType: !14, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !165, line: 314, baseType: !175, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !171, file: !165, line: 315, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !163, !175, !14}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !171, file: !165, line: 316, baseType: !182, size: 64, align: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !163, !80, !14}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !171, file: !165, line: 317, baseType: !186, size: 64, align: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!14, !163, !175}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !171, file: !165, line: 318, baseType: !182, size: 64, align: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !171, file: !165, line: 319, baseType: !191, size: 64, align: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !163, !14, !194, !195}
!194 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !171, file: !165, line: 320, baseType: !197, size: 64, align: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!14, !163}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !171, file: !165, line: 321, baseType: !197, size: 64, align: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !171, file: !165, line: 322, baseType: !202, size: 64, align: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!194, !163, !14, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !165, line: 309, baseType: !207)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !209, !14, !175, !14, !194, !194}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !166, file: !165, line: 328, baseType: !211, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!194, !209, !14, !175, !14, !194, !194}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !166, file: !165, line: 329, baseType: !80, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !166, file: !165, line: 330, baseType: !14, size: 32, align: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !166, file: !165, line: 331, baseType: !14, size: 32, align: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !165, line: 332, baseType: !14, size: 32, align: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !166, file: !165, line: 333, baseType: !14, size: 32, align: 32, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !166, file: !165, line: 334, baseType: !14, size: 32, align: 32, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !166, file: !165, line: 335, baseType: !195, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !166, file: !165, line: 336, baseType: !209, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !166, file: !165, line: 337, baseType: !209, size: 64, align: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !166, file: !165, line: 338, baseType: !14, size: 32, align: 32, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !166, file: !165, line: 339, baseType: !71, size: 64, align: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !166, file: !165, line: 340, baseType: !71, size: 64, align: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !166, file: !165, line: 341, baseType: !227, size: 128, align: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !156, line: 195, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !229, line: 292, size: 128, align: 64, elements: !230)
!229 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!230 = !{!231, !251}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !228, file: !229, line: 293, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !229, line: 297, size: 256, align: 64, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !233, file: !229, line: 297, baseType: !236, size: 256, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !237, line: 72, baseType: !238)
!237 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !237, line: 66, size: 256, align: 64, elements: !239)
!239 = !{!240, !241, !243, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !238, file: !237, line: 67, baseType: !14, size: 32, align: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !238, file: !237, line: 68, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !238, file: !237, line: 69, baseType: !14, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !238, file: !237, line: 70, baseType: !14, size: 32, align: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !238, file: !237, line: 71, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!14, !249, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !228, file: !229, line: 295, baseType: !14, size: 32, align: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !157, file: !146, line: 1440, baseType: !163, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !157, file: !146, line: 1442, baseType: !163, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !157, file: !146, line: 1455, baseType: !14, size: 32, align: 32, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !157, file: !146, line: 1457, baseType: !14, size: 32, align: 32, offset: 352)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !157, file: !146, line: 1458, baseType: !151, size: 64, align: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !157, file: !146, line: 1467, baseType: !14, size: 32, align: 32, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !157, file: !146, line: 1474, baseType: !14, size: 32, align: 32, offset: 480)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !157, file: !146, line: 1476, baseType: !14, size: 32, align: 32, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !157, file: !146, line: 1478, baseType: !14, size: 32, align: 32, offset: 544)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !157, file: !146, line: 1480, baseType: !14, size: 32, align: 32, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !157, file: !146, line: 1482, baseType: !14, size: 32, align: 32, offset: 608)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !157, file: !146, line: 1483, baseType: !264, size: 64, align: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !156, line: 127, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !267, line: 77, size: 192, align: 64, elements: !268)
!267 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!268 = !{!269, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !266, file: !267, line: 78, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !271, line: 216, baseType: !71)
!271 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !266, file: !267, line: 79, baseType: !80, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !266, file: !267, line: 80, baseType: !270, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !157, file: !146, line: 1484, baseType: !195, size: 64, align: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !157, file: !146, line: 1486, baseType: !14, size: 32, align: 32, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !157, file: !146, line: 1487, baseType: !14, size: 32, align: 32, offset: 800)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !157, file: !146, line: 1489, baseType: !278, size: 64, align: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !157, file: !146, line: 1490, baseType: !53, size: 32, align: 32, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !157, file: !146, line: 1491, baseType: !282, size: 64, align: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !284, line: 163, size: 2752, align: 64, elements: !285)
!284 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !318, !319, !323, !324, !328, !329, !330}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !283, file: !284, line: 164, baseType: !14, size: 32, align: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !283, file: !284, line: 165, baseType: !14, size: 32, align: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !283, file: !284, line: 166, baseType: !14, size: 32, align: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !283, file: !284, line: 167, baseType: !14, size: 32, align: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !283, file: !284, line: 171, baseType: !53, size: 32, align: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !283, file: !284, line: 172, baseType: !14, size: 32, align: 32, offset: 160)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !283, file: !284, line: 173, baseType: !293, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !283, file: !284, line: 174, baseType: !14, size: 32, align: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !283, file: !284, line: 175, baseType: !14, size: 32, align: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !283, file: !284, line: 176, baseType: !14, size: 32, align: 32, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !283, file: !284, line: 178, baseType: !14, size: 32, align: 32, offset: 352)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !283, file: !284, line: 179, baseType: !14, size: 32, align: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !283, file: !284, line: 180, baseType: !278, size: 64, align: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !283, file: !284, line: 181, baseType: !278, size: 64, align: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !283, file: !284, line: 182, baseType: !278, size: 64, align: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !283, file: !284, line: 184, baseType: !53, size: 32, align: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !283, file: !284, line: 185, baseType: !53, size: 32, align: 32, offset: 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !283, file: !284, line: 186, baseType: !14, size: 32, align: 32, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !283, file: !284, line: 187, baseType: !53, size: 32, align: 32, offset: 736)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !283, file: !284, line: 188, baseType: !14, size: 32, align: 32, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !283, file: !284, line: 189, baseType: !278, size: 64, align: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !283, file: !284, line: 190, baseType: !278, size: 64, align: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !283, file: !284, line: 191, baseType: !278, size: 64, align: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !283, file: !284, line: 192, baseType: !278, size: 64, align: 64, offset: 1024)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !283, file: !284, line: 193, baseType: !278, size: 64, align: 64, offset: 1088)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !283, file: !284, line: 195, baseType: !53, size: 32, align: 32, offset: 1152)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !283, file: !284, line: 196, baseType: !315, size: 256, align: 8, offset: 1184)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, align: 8, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !283, file: !284, line: 197, baseType: !53, size: 32, align: 32, offset: 1440)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !283, file: !284, line: 198, baseType: !320, size: 128, align: 8, offset: 1472)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, align: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !283, file: !284, line: 199, baseType: !53, size: 32, align: 32, offset: 1600)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !283, file: !284, line: 200, baseType: !325, size: 384, align: 8, offset: 1632)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 384, align: 8, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 48)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !283, file: !284, line: 201, baseType: !71, size: 64, align: 64, offset: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !283, file: !284, line: 202, baseType: !71, size: 64, align: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !283, file: !284, line: 215, baseType: !331, size: 576, align: 32, offset: 2176)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !283, file: !284, line: 203, size: 576, align: 32, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !331, file: !284, line: 204, baseType: !53, size: 32, align: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !331, file: !284, line: 205, baseType: !53, size: 32, align: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !331, file: !284, line: 206, baseType: !53, size: 32, align: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !331, file: !284, line: 207, baseType: !53, size: 32, align: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !331, file: !284, line: 208, baseType: !53, size: 32, align: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !331, file: !284, line: 209, baseType: !53, size: 32, align: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !331, file: !284, line: 210, baseType: !315, size: 256, align: 8, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !331, file: !284, line: 211, baseType: !53, size: 32, align: 32, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !331, file: !284, line: 212, baseType: !53, size: 32, align: 32, offset: 480)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !331, file: !284, line: 213, baseType: !53, size: 32, align: 32, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !331, file: !284, line: 214, baseType: !53, size: 32, align: 32, offset: 544)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !157, file: !146, line: 1492, baseType: !345, size: 64, align: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !347, line: 481, size: 9728, align: 64, elements: !348)
!347 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!348 = !{!349, !350, !351, !355, !356, !360, !361, !362, !363, !364, !365, !366, !367, !368, !376, !377, !389, !390, !394, !395, !399, !400, !401, !402, !403, !404, !405, !406, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !347, line: 482, baseType: !194, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !346, file: !347, line: 483, baseType: !14, size: 32, align: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !346, file: !347, line: 484, baseType: !352, size: 64, align: 8, offset: 96)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 64, align: 8, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !346, file: !347, line: 485, baseType: !14, size: 32, align: 32, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !346, file: !347, line: 486, baseType: !357, size: 512, align: 8, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 512, align: 8, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !346, file: !347, line: 487, baseType: !352, size: 64, align: 8, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !346, file: !347, line: 488, baseType: !14, size: 32, align: 32, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !346, file: !347, line: 489, baseType: !357, size: 512, align: 8, offset: 800)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !346, file: !347, line: 490, baseType: !315, size: 256, align: 8, offset: 1312)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !346, file: !347, line: 491, baseType: !315, size: 256, align: 8, offset: 1568)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !346, file: !347, line: 493, baseType: !14, size: 32, align: 32, offset: 1824)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !346, file: !347, line: 494, baseType: !14, size: 32, align: 32, offset: 1856)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !346, file: !347, line: 496, baseType: !14, size: 32, align: 32, offset: 1888)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !346, file: !347, line: 497, baseType: !369, size: 192, align: 64, offset: 1920)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !347, line: 447, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !347, line: 438, size: 192, align: 64, elements: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !370, file: !347, line: 440, baseType: !278, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !370, file: !347, line: 442, baseType: !270, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !370, file: !347, line: 444, baseType: !14, size: 32, align: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !370, file: !347, line: 446, baseType: !14, size: 32, align: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !346, file: !347, line: 498, baseType: !369, size: 192, align: 64, offset: 2112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !346, file: !347, line: 499, baseType: !378, size: 448, align: 64, offset: 2304)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !347, line: 436, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !347, line: 403, size: 448, align: 64, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !379, file: !347, line: 407, baseType: !14, size: 32, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !379, file: !347, line: 411, baseType: !53, size: 32, align: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !379, file: !347, line: 415, baseType: !53, size: 32, align: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !379, file: !347, line: 419, baseType: !278, size: 64, align: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !379, file: !347, line: 423, baseType: !278, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !379, file: !347, line: 427, baseType: !278, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !379, file: !347, line: 431, baseType: !71, size: 64, align: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !379, file: !347, line: 435, baseType: !352, size: 64, align: 8, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !346, file: !347, line: 500, baseType: !378, size: 448, align: 64, offset: 2752)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !346, file: !347, line: 505, baseType: !391, size: 16, align: 8, offset: 3200)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 16, align: 8, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 2)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !346, file: !347, line: 506, baseType: !53, size: 32, align: 32, offset: 3232)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !346, file: !347, line: 507, baseType: !396, size: 32, align: 8, offset: 3264)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 32, align: 8, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !346, file: !347, line: 508, baseType: !53, size: 32, align: 32, offset: 3296)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !346, file: !347, line: 510, baseType: !53, size: 32, align: 32, offset: 3328)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !346, file: !347, line: 511, baseType: !14, size: 32, align: 32, offset: 3360)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !346, file: !347, line: 512, baseType: !14, size: 32, align: 32, offset: 3392)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !346, file: !347, line: 513, baseType: !14, size: 32, align: 32, offset: 3424)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !346, file: !347, line: 514, baseType: !293, size: 64, align: 64, offset: 3456)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !346, file: !347, line: 516, baseType: !163, size: 64, align: 64, offset: 3520)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !346, file: !347, line: 521, baseType: !407, size: 64, align: 64, offset: 3584)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !156, line: 132, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !411, line: 268, size: 384, align: 64, elements: !412)
!411 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!412 = !{!413, !461, !465, !466, !467, !471}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !410, file: !411, line: 269, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !156, line: 131, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !411, line: 160, size: 960, align: 64, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !427, !431, !435, !441, !442, !447, !451, !455, !456, !457}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !411, line: 161, baseType: !14, size: 32, align: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !417, file: !411, line: 162, baseType: !14, size: 32, align: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !417, file: !411, line: 163, baseType: !14, size: 32, align: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !411, line: 164, baseType: !71, size: 64, align: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !417, file: !411, line: 165, baseType: !424, size: 64, align: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!14, !408}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !417, file: !411, line: 166, baseType: !428, size: 64, align: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!14, !408, !249, !270}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !417, file: !411, line: 167, baseType: !432, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!14, !408, !278}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !417, file: !411, line: 168, baseType: !436, size: 64, align: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!14, !408, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !417, file: !411, line: 169, baseType: !424, size: 64, align: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !417, file: !411, line: 171, baseType: !443, size: 64, align: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!14, !14, !293, !53, !278, !446, !195}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !417, file: !411, line: 173, baseType: !448, size: 64, align: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!14, !14, !293, !53, !293, !53, !195}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !417, file: !411, line: 176, baseType: !452, size: 160, align: 32, offset: 640)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, align: 32, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 5)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !417, file: !411, line: 177, baseType: !14, size: 32, align: 32, offset: 800)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !417, file: !411, line: 178, baseType: !14, size: 32, align: 32, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !417, file: !411, line: 180, baseType: !458, size: 64, align: 64, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!14, !408, !14, !14, !195}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !410, file: !411, line: 270, baseType: !462, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !156, line: 177, baseType: !464)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !156, line: 177, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !411, line: 272, baseType: !71, size: 64, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !410, file: !411, line: 273, baseType: !195, size: 64, align: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !410, file: !411, line: 275, baseType: !468, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !156, line: 138, baseType: !470)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !156, line: 138, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !410, file: !411, line: 277, baseType: !428, size: 64, align: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !346, file: !347, line: 527, baseType: !14, size: 32, align: 32, offset: 3648)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !346, file: !347, line: 528, baseType: !14, size: 32, align: 32, offset: 3680)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !346, file: !347, line: 529, baseType: !14, size: 32, align: 32, offset: 3712)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !346, file: !347, line: 534, baseType: !14, size: 32, align: 32, offset: 3744)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !346, file: !347, line: 535, baseType: !391, size: 16, align: 8, offset: 3776)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !346, file: !347, line: 540, baseType: !14, size: 32, align: 32, offset: 3808)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !346, file: !347, line: 541, baseType: !14, size: 32, align: 32, offset: 3840)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !346, file: !347, line: 542, baseType: !14, size: 32, align: 32, offset: 3872)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !346, file: !347, line: 543, baseType: !14, size: 32, align: 32, offset: 3904)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !346, file: !347, line: 549, baseType: !195, size: 64, align: 64, offset: 3968)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !346, file: !347, line: 550, baseType: !270, size: 64, align: 64, offset: 4032)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !346, file: !347, line: 551, baseType: !195, size: 64, align: 64, offset: 4096)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !346, file: !347, line: 552, baseType: !270, size: 64, align: 64, offset: 4160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !346, file: !347, line: 592, baseType: !486, size: 4224, align: 64, offset: 4224)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !347, line: 553, size: 4224, align: 64, elements: !487)
!487 = !{!488, !492, !493, !494, !495, !496, !497, !498, !516, !612, !617, !618, !619, !620, !621, !625, !631, !632, !633, !634, !767, !768, !769, !770, !814}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !486, file: !347, line: 555, baseType: !489, size: 1024, align: 8)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 1024, align: 8, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !486, file: !347, line: 557, baseType: !489, size: 1024, align: 8, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !486, file: !347, line: 558, baseType: !14, size: 32, align: 32, offset: 2048)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !486, file: !347, line: 559, baseType: !489, size: 1024, align: 8, offset: 2080)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !486, file: !347, line: 560, baseType: !14, size: 32, align: 32, offset: 3104)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !486, file: !347, line: 561, baseType: !71, size: 64, align: 64, offset: 3136)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !486, file: !347, line: 562, baseType: !14, size: 32, align: 32, offset: 3200)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !486, file: !347, line: 564, baseType: !499, size: 64, align: 64, offset: 3264)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !146, line: 375, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !146, line: 418, size: 704, align: 64, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !502, file: !146, line: 419, baseType: !14, size: 32, align: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !502, file: !146, line: 420, baseType: !175, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !502, file: !146, line: 421, baseType: !71, size: 64, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !502, file: !146, line: 426, baseType: !71, size: 64, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !502, file: !146, line: 427, baseType: !71, size: 64, align: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !502, file: !146, line: 428, baseType: !71, size: 64, align: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !502, file: !146, line: 429, baseType: !71, size: 64, align: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !502, file: !146, line: 430, baseType: !71, size: 64, align: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !502, file: !146, line: 431, baseType: !71, size: 64, align: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !502, file: !146, line: 432, baseType: !71, size: 64, align: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !502, file: !146, line: 433, baseType: !14, size: 32, align: 32, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !502, file: !146, line: 434, baseType: !14, size: 32, align: 32, offset: 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !486, file: !347, line: 566, baseType: !517, size: 64, align: 64, offset: 3328)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !156, line: 140, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !520, line: 135, size: 1152, align: 64, elements: !521)
!520 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!521 = !{!522, !523, !524, !536, !537, !538, !539, !540, !541, !553, !554, !555, !556, !557, !558, !559, !560, !611}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !519, file: !520, line: 140, baseType: !14, size: 32, align: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !519, file: !520, line: 141, baseType: !14, size: 32, align: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !519, file: !520, line: 142, baseType: !525, size: 64, align: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !156, line: 120, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !528, line: 313, size: 192, align: 64, elements: !529)
!528 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!529 = !{!530, !532, !533, !534, !535}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !527, file: !528, line: 314, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !527, file: !528, line: 316, baseType: !14, size: 32, align: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !527, file: !528, line: 318, baseType: !14, size: 32, align: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !527, file: !528, line: 319, baseType: !14, size: 32, align: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !528, line: 320, baseType: !14, size: 32, align: 32, offset: 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !519, file: !520, line: 143, baseType: !525, size: 64, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !519, file: !520, line: 144, baseType: !194, size: 64, align: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !519, file: !520, line: 145, baseType: !525, size: 64, align: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !519, file: !520, line: 146, baseType: !525, size: 64, align: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !520, line: 147, baseType: !14, size: 32, align: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !519, file: !520, line: 148, baseType: !542, size: 64, align: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !156, line: 123, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !528, line: 324, size: 832, align: 64, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !552}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !544, file: !528, line: 325, baseType: !14, size: 32, align: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !544, file: !528, line: 326, baseType: !526, size: 192, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !544, file: !528, line: 327, baseType: !526, size: 192, align: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !544, file: !528, line: 328, baseType: !526, size: 192, align: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !544, file: !528, line: 330, baseType: !551, size: 128, align: 64, offset: 640)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, align: 64, elements: !392)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !528, line: 333, baseType: !14, size: 32, align: 32, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !519, file: !520, line: 150, baseType: !525, size: 64, align: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !519, file: !520, line: 151, baseType: !525, size: 64, align: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !519, file: !520, line: 152, baseType: !278, size: 64, align: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !519, file: !520, line: 153, baseType: !14, size: 32, align: 32, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !520, line: 154, baseType: !525, size: 64, align: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !519, file: !520, line: 155, baseType: !14, size: 32, align: 32, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !519, file: !520, line: 156, baseType: !227, size: 128, align: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !519, file: !520, line: 157, baseType: !561, size: 64, align: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !156, line: 141, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !520, line: 117, size: 576, align: 64, elements: !565)
!565 = !{!566, !567, !571, !577, !586, !587, !588, !589, !590}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !520, line: 118, baseType: !175, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !564, file: !520, line: 120, baseType: !568, size: 64, align: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!14, !517}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !564, file: !520, line: 121, baseType: !572, size: 64, align: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!14, !278, !575, !517}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !564, file: !520, line: 123, baseType: !578, size: 64, align: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!14, !581, !525, !575, !575, !575, !583, !542}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !156, line: 121, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !156, line: 121, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !564, file: !520, line: 126, baseType: !568, size: 64, align: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !564, file: !520, line: 127, baseType: !568, size: 64, align: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !520, line: 128, baseType: !14, size: 32, align: 32, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !564, file: !520, line: 129, baseType: !80, size: 64, align: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !564, file: !520, line: 131, baseType: !591, size: 64, align: 64, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!14, !517, !14, !14, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !156, line: 125, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !528, line: 349, size: 192, align: 64, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !596, file: !528, line: 350, baseType: !53, size: 32, align: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !596, file: !528, line: 351, baseType: !195, size: 64, align: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !596, file: !528, line: 357, baseType: !601, size: 64, align: 64, offset: 128)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !528, line: 352, size: 64, align: 64, elements: !602)
!602 = !{!603, !607}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !601, file: !528, line: 354, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !14, !14, !195}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !601, file: !528, line: 356, baseType: !608, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!14, !14, !14, !594}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !519, file: !520, line: 158, baseType: !462, size: 64, align: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !486, file: !347, line: 569, baseType: !613, size: 64, align: 64, offset: 3392)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !615, line: 741, baseType: !616)
!615 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !411, line: 147, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !486, file: !347, line: 572, baseType: !14, size: 32, align: 32, offset: 3456)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !486, file: !347, line: 573, baseType: !14, size: 32, align: 32, offset: 3488)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !486, file: !347, line: 575, baseType: !14, size: 32, align: 32, offset: 3520)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !486, file: !347, line: 576, baseType: !14, size: 32, align: 32, offset: 3552)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !486, file: !347, line: 577, baseType: !622, size: 72, align: 8, offset: 3584)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 72, align: 8, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 9)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !486, file: !347, line: 578, baseType: !626, size: 64, align: 64, offset: 3712)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !628, line: 192, size: 256, align: 64, elements: !629)
!628 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !627, file: !628, line: 192, baseType: !236, size: 256, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !486, file: !347, line: 579, baseType: !14, size: 32, align: 32, offset: 3776)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !486, file: !347, line: 580, baseType: !14, size: 32, align: 32, offset: 3808)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !486, file: !347, line: 581, baseType: !278, size: 64, align: 64, offset: 3840)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !486, file: !347, line: 582, baseType: !635, size: 64, align: 64, offset: 3904)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !156, line: 129, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !411, line: 308, size: 704, align: 64, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !668, !672, !676, !677, !761, !762, !766}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !638, file: !411, line: 309, baseType: !14, size: 32, align: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !638, file: !411, line: 310, baseType: !14, size: 32, align: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !638, file: !411, line: 312, baseType: !14, size: 32, align: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !638, file: !411, line: 313, baseType: !14, size: 32, align: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !411, line: 315, baseType: !71, size: 64, align: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !638, file: !411, line: 317, baseType: !646, size: 64, align: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!14, !649, !293, !293, !14}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !156, line: 130, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !411, line: 449, size: 1344, align: 64, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !651, file: !411, line: 450, baseType: !635, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !651, file: !411, line: 451, baseType: !462, size: 64, align: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !651, file: !411, line: 453, baseType: !14, size: 32, align: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !651, file: !411, line: 454, baseType: !14, size: 32, align: 32, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !651, file: !411, line: 455, baseType: !320, size: 128, align: 8, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !651, file: !411, line: 456, baseType: !320, size: 128, align: 8, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !651, file: !411, line: 457, baseType: !315, size: 256, align: 8, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !651, file: !411, line: 458, baseType: !14, size: 32, align: 32, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !651, file: !411, line: 459, baseType: !195, size: 64, align: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !651, file: !411, line: 460, baseType: !14, size: 32, align: 32, offset: 832)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !411, line: 461, baseType: !71, size: 64, align: 64, offset: 896)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !651, file: !411, line: 462, baseType: !195, size: 64, align: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !651, file: !411, line: 463, baseType: !14, size: 32, align: 32, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !651, file: !411, line: 464, baseType: !14, size: 32, align: 32, offset: 1056)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !651, file: !411, line: 465, baseType: !315, size: 256, align: 8, offset: 1088)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !638, file: !411, line: 320, baseType: !669, size: 64, align: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!14, !649, !278, !293, !270}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !638, file: !411, line: 323, baseType: !673, size: 64, align: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!14, !649}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !638, file: !411, line: 325, baseType: !14, size: 32, align: 32, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !638, file: !411, line: 327, baseType: !678, size: 64, align: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!14, !649, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !683, line: 561, baseType: !684)
!683 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !683, line: 532, size: 128, align: 64, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !683, line: 533, baseType: !14, size: 32, align: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !684, file: !683, line: 560, baseType: !688, size: 64, align: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !683, line: 534, size: 64, align: 64, elements: !689)
!689 = !{!690, !691, !693, !702, !713, !716, !719, !722, !725, !728, !731, !734, !737, !740, !743, !746, !749, !752, !755, !756, !757}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !688, file: !683, line: 535, baseType: !80, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !688, file: !683, line: 536, baseType: !692, size: 32, align: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !156, line: 99, baseType: !14)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !688, file: !683, line: 537, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !156, line: 98, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !683, line: 247, size: 192, align: 64, elements: !697)
!697 = !{!698, !699, !700, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !696, file: !683, line: 248, baseType: !14, size: 32, align: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !683, line: 249, baseType: !14, size: 32, align: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !696, file: !683, line: 250, baseType: !278, size: 64, align: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !683, line: 256, baseType: !194, size: 64, align: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !688, file: !683, line: 538, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !156, line: 103, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !683, line: 218, size: 320, align: 64, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !705, file: !683, line: 219, baseType: !175, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !705, file: !683, line: 219, baseType: !175, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !705, file: !683, line: 220, baseType: !14, size: 32, align: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !705, file: !683, line: 221, baseType: !14, size: 32, align: 32, offset: 160)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !705, file: !683, line: 222, baseType: !293, size: 64, align: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !683, line: 223, baseType: !14, size: 32, align: 32, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !688, file: !683, line: 539, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !156, line: 83, baseType: !696)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !688, file: !683, line: 540, baseType: !717, size: 64, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !156, line: 84, baseType: !696)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !688, file: !683, line: 541, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !156, line: 85, baseType: !696)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !688, file: !683, line: 542, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !156, line: 86, baseType: !696)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !688, file: !683, line: 543, baseType: !726, size: 64, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !156, line: 87, baseType: !696)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !688, file: !683, line: 544, baseType: !729, size: 64, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !156, line: 88, baseType: !696)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !688, file: !683, line: 545, baseType: !732, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !156, line: 89, baseType: !696)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !688, file: !683, line: 546, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !156, line: 90, baseType: !696)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !688, file: !683, line: 547, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !156, line: 92, baseType: !696)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !688, file: !683, line: 548, baseType: !741, size: 64, align: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !156, line: 91, baseType: !696)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !688, file: !683, line: 549, baseType: !744, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !156, line: 93, baseType: !696)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !688, file: !683, line: 550, baseType: !747, size: 64, align: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !156, line: 95, baseType: !696)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !688, file: !683, line: 551, baseType: !750, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !156, line: 96, baseType: !696)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !688, file: !683, line: 552, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !156, line: 97, baseType: !696)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !688, file: !683, line: 557, baseType: !694, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !688, file: !683, line: 558, baseType: !694, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !688, file: !683, line: 559, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !683, line: 307, baseType: !760)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !683, line: 307, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !638, file: !411, line: 329, baseType: !678, size: 64, align: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !638, file: !411, line: 331, baseType: !763, size: 64, align: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!14, !649, !14, !14, !195}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !638, file: !411, line: 333, baseType: !195, size: 64, align: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !486, file: !347, line: 583, baseType: !414, size: 64, align: 64, offset: 3968)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !486, file: !347, line: 584, baseType: !14, size: 32, align: 32, offset: 4032)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !486, file: !347, line: 585, baseType: !14, size: 32, align: 32, offset: 4064)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !486, file: !347, line: 587, baseType: !771, size: 64, align: 64, offset: 4096)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !146, line: 908, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !146, line: 912, size: 192, align: 64, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !774, file: !146, line: 913, baseType: !14, size: 32, align: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !146, line: 914, baseType: !175, size: 64, align: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !774, file: !146, line: 916, baseType: !779, size: 64, align: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !781, line: 29, baseType: !782)
!781 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !781, line: 13, size: 512, align: 64, elements: !783)
!783 = !{!784, !785, !786, !800, !804, !808, !809, !813}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !781, line: 14, baseType: !14, size: 32, align: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !782, file: !781, line: 15, baseType: !175, size: 64, align: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !782, file: !781, line: 16, baseType: !787, size: 64, align: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!14, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !781, line: 11, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !781, line: 31, size: 448, align: 64, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !792, file: !781, line: 32, baseType: !779, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !792, file: !781, line: 33, baseType: !71, size: 64, align: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !792, file: !781, line: 34, baseType: !71, size: 64, align: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !792, file: !781, line: 35, baseType: !71, size: 64, align: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !792, file: !781, line: 36, baseType: !71, size: 64, align: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !792, file: !781, line: 37, baseType: !227, size: 128, align: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !782, file: !781, line: 17, baseType: !801, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !790}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !782, file: !781, line: 18, baseType: !805, size: 64, align: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!14, !790, !278, !53, !278, !53}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !782, file: !781, line: 21, baseType: !805, size: 64, align: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !782, file: !781, line: 27, baseType: !810, size: 64, align: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!194}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !782, file: !781, line: 28, baseType: !810, size: 64, align: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !486, file: !347, line: 591, baseType: !14, size: 32, align: 32, offset: 4160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !346, file: !347, line: 595, baseType: !357, size: 512, align: 8, offset: 8448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !346, file: !347, line: 596, baseType: !279, size: 8, align: 8, offset: 8960)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !346, file: !347, line: 597, baseType: !357, size: 512, align: 8, offset: 8968)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !346, file: !347, line: 598, baseType: !279, size: 8, align: 8, offset: 9480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !346, file: !347, line: 599, baseType: !14, size: 32, align: 32, offset: 9504)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !346, file: !347, line: 605, baseType: !14, size: 32, align: 32, offset: 9536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !346, file: !347, line: 615, baseType: !67, size: 8, align: 8, offset: 9568)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !346, file: !347, line: 628, baseType: !278, size: 64, align: 64, offset: 9600)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !346, file: !347, line: 629, baseType: !53, size: 32, align: 32, offset: 9664)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !157, file: !146, line: 1493, baseType: !825, size: 64, align: 64, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !827, line: 182, size: 7168, align: 64, elements: !828)
!827 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!828 = !{!829, !830, !834, !835, !836, !837, !838, !844, !845, !846, !847, !848, !849, !859, !860, !861, !862, !863, !864, !865, !866, !1232, !1233, !1239, !1247, !1248, !1249, !1250, !1254, !1255, !1256}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !826, file: !827, line: 183, baseType: !53, size: 32, align: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !826, file: !827, line: 184, baseType: !831, size: 2048, align: 8, offset: 32)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 2048, align: 8, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !826, file: !827, line: 185, baseType: !831, size: 2048, align: 8, offset: 2080)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !826, file: !827, line: 186, baseType: !53, size: 32, align: 32, offset: 4128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !826, file: !827, line: 192, baseType: !64, size: 16, align: 16, offset: 4160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !826, file: !827, line: 193, baseType: !64, size: 16, align: 16, offset: 4176)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !826, file: !827, line: 195, baseType: !839, size: 128, align: 64, offset: 4224)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !827, line: 133, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !827, line: 128, size: 128, align: 64, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !840, file: !827, line: 129, baseType: !71, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !840, file: !827, line: 131, baseType: !352, size: 64, align: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !826, file: !827, line: 197, baseType: !839, size: 128, align: 64, offset: 4352)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !826, file: !827, line: 199, baseType: !64, size: 16, align: 16, offset: 4480)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !826, file: !827, line: 200, baseType: !64, size: 16, align: 16, offset: 4496)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !826, file: !827, line: 201, baseType: !64, size: 16, align: 16, offset: 4512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !826, file: !827, line: 203, baseType: !352, size: 64, align: 8, offset: 4528)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !826, file: !827, line: 205, baseType: !850, size: 128, align: 64, offset: 4608)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !827, line: 174, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !827, line: 171, size: 128, align: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !851, file: !827, line: 172, baseType: !64, size: 16, align: 16)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !851, file: !827, line: 173, baseType: !855, size: 64, align: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !856, line: 70, baseType: !857)
!856 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !856, line: 70, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !826, file: !827, line: 206, baseType: !850, size: 128, align: 64, offset: 4736)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !826, file: !827, line: 208, baseType: !855, size: 64, align: 64, offset: 4864)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !826, file: !827, line: 210, baseType: !855, size: 64, align: 64, offset: 4928)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !826, file: !827, line: 216, baseType: !850, size: 128, align: 64, offset: 4992)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !826, file: !827, line: 218, baseType: !53, size: 32, align: 32, offset: 5120)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !826, file: !827, line: 219, baseType: !53, size: 32, align: 32, offset: 5152)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !826, file: !827, line: 220, baseType: !53, size: 32, align: 32, offset: 5184)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !826, file: !827, line: 221, baseType: !867, size: 704, align: 64, offset: 5248)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !827, line: 147, size: 704, align: 64, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !827, line: 148, baseType: !279, size: 8, align: 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !867, file: !827, line: 149, baseType: !71, size: 64, align: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !867, file: !827, line: 150, baseType: !64, size: 16, align: 16, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !867, file: !827, line: 151, baseType: !71, size: 64, align: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !867, file: !827, line: 152, baseType: !71, size: 64, align: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !867, file: !827, line: 153, baseType: !53, size: 32, align: 32, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !867, file: !827, line: 154, baseType: !876, size: 320, align: 64, offset: 384)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !827, line: 135, size: 320, align: 64, elements: !877)
!877 = !{!878, !879, !880, !881, !1231}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !876, file: !827, line: 136, baseType: !649, size: 64, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !876, file: !827, line: 137, baseType: !408, size: 64, align: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !876, file: !827, line: 139, baseType: !790, size: 64, align: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !876, file: !827, line: 143, baseType: !882, size: 64, align: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !146, line: 376, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !146, line: 498, size: 2816, align: 64, elements: !885)
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !901, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1218, !1219, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !884, file: !146, line: 499, baseType: !14, size: 32, align: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !884, file: !146, line: 502, baseType: !53, size: 32, align: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !884, file: !146, line: 503, baseType: !352, size: 64, align: 8, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !884, file: !146, line: 504, baseType: !14, size: 32, align: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !884, file: !146, line: 505, baseType: !325, size: 384, align: 8, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !884, file: !146, line: 507, baseType: !53, size: 32, align: 32, offset: 544)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !884, file: !146, line: 508, baseType: !315, size: 256, align: 8, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !884, file: !146, line: 514, baseType: !53, size: 32, align: 32, offset: 832)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !884, file: !146, line: 515, baseType: !315, size: 256, align: 8, offset: 864)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !884, file: !146, line: 521, baseType: !80, size: 64, align: 64, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !884, file: !146, line: 522, baseType: !80, size: 64, align: 64, offset: 1216)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !884, file: !146, line: 529, baseType: !14, size: 32, align: 32, offset: 1280)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !884, file: !146, line: 531, baseType: !899, size: 64, align: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, align: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !146, line: 531, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !884, file: !146, line: 538, baseType: !902, size: 64, align: 64, offset: 1408)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !156, line: 154, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !628, line: 270, size: 1472, align: 64, elements: !905)
!905 = !{!906, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1162, !1166, !1171, !1173, !1184, !1188}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !904, file: !628, line: 271, baseType: !907, size: 64, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !628, line: 254, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !628, line: 242, size: 832, align: 64, elements: !910)
!910 = !{!911, !912, !913, !920, !934, !943, !944, !1121, !1122, !1123, !1128}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !909, file: !628, line: 243, baseType: !714, size: 64, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !909, file: !628, line: 244, baseType: !714, size: 64, align: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !909, file: !628, line: 245, baseType: !914, size: 64, align: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !156, line: 155, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !628, line: 143, size: 128, align: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !916, file: !628, line: 144, baseType: !703, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !916, file: !628, line: 145, baseType: !681, size: 64, align: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !909, file: !628, line: 246, baseType: !921, size: 64, align: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !156, line: 159, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !628, line: 179, size: 320, align: 64, elements: !924)
!924 = !{!925, !930, !931, !932, !933}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !923, file: !628, line: 180, baseType: !926, size: 64, align: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !628, line: 175, size: 256, align: 64, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !927, file: !628, line: 175, baseType: !236, size: 256, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !923, file: !628, line: 181, baseType: !14, size: 32, align: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !923, file: !628, line: 183, baseType: !264, size: 64, align: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !923, file: !628, line: 188, baseType: !278, size: 64, align: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !923, file: !628, line: 189, baseType: !14, size: 32, align: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !909, file: !628, line: 247, baseType: !935, size: 64, align: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !628, line: 155, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !628, line: 152, size: 128, align: 64, elements: !938)
!938 = !{!939, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !937, file: !628, line: 153, baseType: !940, size: 64, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !156, line: 94, baseType: !696)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !937, file: !628, line: 154, baseType: !940, size: 64, align: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !909, file: !628, line: 248, baseType: !921, size: 64, align: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !909, file: !628, line: 249, baseType: !945, size: 64, align: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !156, line: 160, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !628, line: 157, size: 192, align: 64, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !947, file: !628, line: 158, baseType: !914, size: 64, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !947, file: !628, line: 159, baseType: !720, size: 64, align: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !947, file: !628, line: 160, baseType: !952, size: 64, align: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !156, line: 133, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !411, line: 129, size: 448, align: 64, elements: !955)
!955 = !{!956, !957, !958, !959, !964, !965, !1115, !1116}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !954, file: !411, line: 130, baseType: !14, size: 32, align: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !954, file: !411, line: 131, baseType: !14, size: 32, align: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !954, file: !411, line: 132, baseType: !14, size: 32, align: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !954, file: !411, line: 133, baseType: !960, size: 64, align: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !156, line: 135, baseType: !963)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !156, line: 135, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !954, file: !411, line: 134, baseType: !462, size: 64, align: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !954, file: !411, line: 149, baseType: !966, size: 64, align: 64, offset: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !411, line: 135, size: 64, align: 64, elements: !967)
!967 = !{!968, !969, !1042, !1111, !1113}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !966, file: !411, line: 136, baseType: !80, size: 64, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !966, file: !411, line: 138, baseType: !970, size: 64, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !972, line: 132, size: 1344, align: 64, elements: !973)
!972 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!973 = !{!974, !975, !976, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1041}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !971, file: !972, line: 137, baseType: !14, size: 32, align: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !971, file: !972, line: 138, baseType: !194, size: 64, align: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !971, file: !972, line: 139, baseType: !977, size: 64, align: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !156, line: 147, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !972, line: 85, size: 896, align: 64, elements: !981)
!981 = !{!982, !983, !989, !990, !991, !992, !996, !1000, !1004, !1005, !1006, !1007, !1013, !1017}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !972, line: 86, baseType: !175, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !980, file: !972, line: 87, baseType: !984, size: 64, align: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64, align: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!14, !14, !293, !278, !987, !14}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !156, line: 146, baseType: !971)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !980, file: !972, line: 89, baseType: !984, size: 64, align: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !980, file: !972, line: 91, baseType: !984, size: 64, align: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !980, file: !972, line: 93, baseType: !984, size: 64, align: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !980, file: !972, line: 96, baseType: !993, size: 64, align: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64, align: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!14, !525, !575, !987, !583}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !980, file: !972, line: 98, baseType: !997, size: 64, align: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64, align: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!14, !525, !575, !575, !575, !583, !542}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !980, file: !972, line: 101, baseType: !1001, size: 64, align: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64, align: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!14, !987}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !980, file: !972, line: 103, baseType: !1001, size: 64, align: 64, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !972, line: 105, baseType: !14, size: 32, align: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !980, file: !972, line: 107, baseType: !80, size: 64, align: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !980, file: !972, line: 116, baseType: !1008, size: 64, align: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64, align: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!14, !14, !293, !53, !278, !446, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !980, file: !972, line: 120, baseType: !1014, size: 64, align: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!14, !14, !293, !53, !293, !53, !1011}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !980, file: !972, line: 129, baseType: !1018, size: 64, align: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!14, !987, !14, !525, !594}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !971, file: !972, line: 141, baseType: !462, size: 64, align: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !971, file: !972, line: 142, baseType: !525, size: 64, align: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !971, file: !972, line: 143, baseType: !525, size: 64, align: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !971, file: !972, line: 144, baseType: !525, size: 64, align: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !971, file: !972, line: 145, baseType: !525, size: 64, align: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !971, file: !972, line: 146, baseType: !525, size: 64, align: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !971, file: !972, line: 147, baseType: !525, size: 64, align: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !971, file: !972, line: 148, baseType: !525, size: 64, align: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !971, file: !972, line: 149, baseType: !525, size: 64, align: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !971, file: !972, line: 151, baseType: !227, size: 128, align: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !971, file: !972, line: 152, baseType: !14, size: 32, align: 32, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !972, line: 153, baseType: !14, size: 32, align: 32, offset: 928)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !971, file: !972, line: 155, baseType: !542, size: 64, align: 64, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !971, file: !972, line: 156, baseType: !542, size: 64, align: 64, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !971, file: !972, line: 157, baseType: !542, size: 64, align: 64, offset: 1088)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !971, file: !972, line: 162, baseType: !80, size: 64, align: 64, offset: 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !971, file: !972, line: 163, baseType: !1038, size: 64, align: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !156, line: 122, baseType: !1040)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !156, line: 122, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !971, file: !972, line: 164, baseType: !1038, size: 64, align: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !966, file: !411, line: 141, baseType: !1043, size: 64, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64, align: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !1045, line: 155, size: 1088, align: 64, elements: !1046)
!1045 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1110}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1044, file: !1045, line: 160, baseType: !14, size: 32, align: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1044, file: !1045, line: 161, baseType: !194, size: 64, align: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !1044, file: !1045, line: 162, baseType: !14, size: 32, align: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1044, file: !1045, line: 163, baseType: !525, size: 64, align: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1044, file: !1045, line: 164, baseType: !525, size: 64, align: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1044, file: !1045, line: 165, baseType: !525, size: 64, align: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !1044, file: !1045, line: 166, baseType: !525, size: 64, align: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !1044, file: !1045, line: 167, baseType: !525, size: 64, align: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !1044, file: !1045, line: 168, baseType: !525, size: 64, align: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1044, file: !1045, line: 169, baseType: !525, size: 64, align: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !1045, line: 170, baseType: !14, size: 32, align: 32, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !1044, file: !1045, line: 172, baseType: !542, size: 64, align: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1044, file: !1045, line: 173, baseType: !14, size: 32, align: 32, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1044, file: !1045, line: 174, baseType: !227, size: 128, align: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1044, file: !1045, line: 175, baseType: !1062, size: 64, align: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !156, line: 144, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !1045, line: 129, size: 768, align: 64, elements: !1066)
!1066 = !{!1067, !1068, !1080, !1085, !1089, !1093, !1097, !1101, !1102, !1103, !1104, !1109}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1065, file: !1045, line: 130, baseType: !175, size: 64, align: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !1065, file: !1045, line: 131, baseType: !1069, size: 64, align: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64, align: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1072, !293, !14, !1078}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !1045, line: 127, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !1045, line: 124, size: 128, align: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1074, file: !1045, line: 125, baseType: !525, size: 64, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1074, file: !1045, line: 126, baseType: !525, size: 64, align: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !156, line: 143, baseType: !1044)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !1065, file: !1045, line: 132, baseType: !1081, size: 64, align: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64, align: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!14, !1078, !583, !1084, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !1065, file: !1045, line: 134, baseType: !1086, size: 64, align: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!14, !293, !14, !1072, !1078}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !1065, file: !1045, line: 136, baseType: !1090, size: 64, align: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64, align: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!14, !1078, !525, !525, !525, !525, !525, !525, !583, !542}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1065, file: !1045, line: 140, baseType: !1094, size: 64, align: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64, align: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!14, !1078, !525, !525, !575, !575, !583, !542}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1065, file: !1045, line: 142, baseType: !1098, size: 64, align: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64, align: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!14, !1078}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1065, file: !1045, line: 143, baseType: !1098, size: 64, align: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !1045, line: 144, baseType: !14, size: 32, align: 32, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1065, file: !1045, line: 145, baseType: !80, size: 64, align: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !1065, file: !1045, line: 147, baseType: !1105, size: 64, align: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64, align: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!14, !1078, !14, !293, !14, !1108, !531, !594}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !1065, file: !1045, line: 152, baseType: !1098, size: 64, align: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1044, file: !1045, line: 177, baseType: !462, size: 64, align: 64, offset: 1024)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !966, file: !411, line: 144, baseType: !1112, size: 64, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !966, file: !411, line: 147, baseType: !1114, size: 64, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !954, file: !411, line: 150, baseType: !14, size: 32, align: 32, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !954, file: !411, line: 151, baseType: !1117, size: 64, align: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64, align: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !628, line: 223, size: 256, align: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1118, file: !628, line: 223, baseType: !236, size: 256, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !909, file: !628, line: 250, baseType: !720, size: 64, align: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !909, file: !628, line: 251, baseType: !720, size: 64, align: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !909, file: !628, line: 252, baseType: !1124, size: 64, align: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64, align: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !628, line: 204, size: 256, align: 64, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1125, file: !628, line: 204, baseType: !236, size: 256, align: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !909, file: !628, line: 253, baseType: !1129, size: 192, align: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !683, line: 269, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !683, line: 265, size: 192, align: 64, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1130, file: !683, line: 266, baseType: !278, size: 64, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1130, file: !683, line: 267, baseType: !194, size: 64, align: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1130, file: !683, line: 268, baseType: !14, size: 32, align: 32, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !904, file: !628, line: 272, baseType: !914, size: 64, align: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !904, file: !628, line: 273, baseType: !720, size: 64, align: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !904, file: !628, line: 274, baseType: !14, size: 32, align: 32, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !904, file: !628, line: 275, baseType: !14, size: 32, align: 32, offset: 224)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !628, line: 276, baseType: !80, size: 64, align: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !904, file: !628, line: 277, baseType: !227, size: 128, align: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !904, file: !628, line: 279, baseType: !194, size: 64, align: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !904, file: !628, line: 280, baseType: !194, size: 64, align: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !904, file: !628, line: 281, baseType: !71, size: 64, align: 64, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !904, file: !628, line: 282, baseType: !71, size: 64, align: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !904, file: !628, line: 283, baseType: !71, size: 64, align: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !904, file: !628, line: 284, baseType: !71, size: 64, align: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !904, file: !628, line: 285, baseType: !723, size: 64, align: 64, offset: 832)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !904, file: !628, line: 286, baseType: !1149, size: 64, align: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64, align: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !156, line: 186, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !1152, line: 262, size: 192, align: 64, elements: !1153)
!1152 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1153 = !{!1154, !1155, !1161}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1151, file: !1152, line: 263, baseType: !723, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1151, file: !1152, line: 264, baseType: !1156, size: 64, align: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !1152, line: 209, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !1152, line: 220, size: 256, align: 64, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1158, file: !1152, line: 220, baseType: !236, size: 256, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1151, file: !1152, line: 265, baseType: !714, size: 64, align: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !904, file: !628, line: 287, baseType: !1163, size: 64, align: 64, offset: 960)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !156, line: 184, baseType: !1165)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !156, line: 184, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !904, file: !628, line: 288, baseType: !1167, size: 64, align: 64, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64, align: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !1152, line: 259, size: 256, align: 64, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1168, file: !1152, line: 259, baseType: !236, size: 256, align: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !904, file: !628, line: 289, baseType: !1172, size: 64, align: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !904, file: !628, line: 290, baseType: !1174, size: 64, align: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !156, line: 189, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !1152, line: 332, size: 128, align: 64, elements: !1177)
!1177 = !{!1178, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !1176, file: !1152, line: 333, baseType: !1179, size: 64, align: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64, align: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !1152, line: 330, size: 256, align: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1180, file: !1152, line: 330, baseType: !236, size: 256, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !1176, file: !1152, line: 334, baseType: !1179, size: 64, align: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !904, file: !628, line: 296, baseType: !1185, size: 160, align: 8, offset: 1216)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 160, align: 8, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 20)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !904, file: !628, line: 298, baseType: !1189, size: 64, align: 64, offset: 1408)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !628, line: 268, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !628, line: 262, size: 320, align: 64, elements: !1192)
!1192 = !{!1193, !1198, !1199, !1200, !1201}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1191, file: !628, line: 263, baseType: !1194, size: 64, align: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, align: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !683, line: 801, size: 256, align: 64, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1195, file: !683, line: 801, baseType: !236, size: 256, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1191, file: !628, line: 264, baseType: !1194, size: 64, align: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1191, file: !628, line: 265, baseType: !753, size: 64, align: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1191, file: !628, line: 266, baseType: !723, size: 64, align: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1191, file: !628, line: 267, baseType: !1202, size: 64, align: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64, align: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !683, line: 170, size: 256, align: 64, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1203, file: !683, line: 170, baseType: !236, size: 256, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !884, file: !146, line: 543, baseType: !194, size: 64, align: 64, offset: 1472)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !884, file: !146, line: 544, baseType: !14, size: 32, align: 32, offset: 1536)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !884, file: !146, line: 545, baseType: !194, size: 64, align: 64, offset: 1600)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !884, file: !146, line: 546, baseType: !194, size: 64, align: 64, offset: 1664)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !884, file: !146, line: 547, baseType: !53, size: 32, align: 32, offset: 1728)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !884, file: !146, line: 548, baseType: !499, size: 64, align: 64, offset: 1792)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !884, file: !146, line: 549, baseType: !71, size: 64, align: 64, offset: 1856)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !884, file: !146, line: 551, baseType: !1214, size: 64, align: 64, offset: 1920)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64, align: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !146, line: 380, size: 256, align: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1215, file: !146, line: 380, baseType: !236, size: 256, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !884, file: !146, line: 552, baseType: !227, size: 128, align: 64, offset: 1984)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !884, file: !146, line: 557, baseType: !1220, size: 64, align: 64, offset: 2112)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !146, line: 557, baseType: !1220, size: 64, align: 64, offset: 2176)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !884, file: !146, line: 559, baseType: !80, size: 64, align: 64, offset: 2240)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !884, file: !146, line: 561, baseType: !270, size: 64, align: 64, offset: 2304)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !884, file: !146, line: 562, baseType: !278, size: 64, align: 64, offset: 2368)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !884, file: !146, line: 563, baseType: !270, size: 64, align: 64, offset: 2432)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !884, file: !146, line: 564, baseType: !278, size: 64, align: 64, offset: 2496)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !884, file: !146, line: 567, baseType: !278, size: 64, align: 64, offset: 2560)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !884, file: !146, line: 568, baseType: !270, size: 64, align: 64, offset: 2624)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !884, file: !146, line: 569, baseType: !194, size: 64, align: 64, offset: 2688)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !884, file: !146, line: 572, baseType: !80, size: 64, align: 64, offset: 2752)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !876, file: !827, line: 144, baseType: !64, size: 16, align: 16, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !826, file: !827, line: 222, baseType: !867, size: 704, align: 64, offset: 5952)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !826, file: !827, line: 223, baseType: !1234, size: 96, align: 32, offset: 6656)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !827, line: 162, size: 96, align: 32, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1234, file: !827, line: 164, baseType: !53, size: 32, align: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1234, file: !827, line: 166, baseType: !53, size: 32, align: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1234, file: !827, line: 168, baseType: !53, size: 32, align: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !826, file: !827, line: 227, baseType: !1240, size: 128, align: 64, offset: 6784)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1241, line: 30, size: 128, align: 64, elements: !1242)
!1241 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1242 = !{!1243, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1240, file: !1241, line: 32, baseType: !1244, size: 64, align: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !75, line: 139, baseType: !194)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1240, file: !1241, line: 33, baseType: !1246, size: 64, align: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !75, line: 141, baseType: !194)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !826, file: !827, line: 229, baseType: !64, size: 16, align: 16, offset: 6912)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !826, file: !827, line: 234, baseType: !391, size: 16, align: 8, offset: 6928)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !826, file: !827, line: 235, baseType: !53, size: 32, align: 32, offset: 6944)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !826, file: !827, line: 236, baseType: !1251, size: 96, align: 8, offset: 6976)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 96, align: 8, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 12)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !826, file: !827, line: 237, baseType: !53, size: 32, align: 32, offset: 7072)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !826, file: !827, line: 238, baseType: !53, size: 32, align: 32, offset: 7104)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !826, file: !827, line: 243, baseType: !53, size: 32, align: 32, offset: 7136)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !157, file: !146, line: 1494, baseType: !14, size: 32, align: 32, offset: 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !157, file: !146, line: 1497, baseType: !1259, size: 64, align: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !14, !14, !14, !249, !270, !154, !195}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !157, file: !146, line: 1499, baseType: !195, size: 64, align: 64, offset: 1280)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !157, file: !146, line: 1500, baseType: !14, size: 32, align: 32, offset: 1344)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !157, file: !146, line: 1501, baseType: !1265, size: 64, align: 64, offset: 1408)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64, align: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1267, line: 177, baseType: !1268)
!1267 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1267, line: 167, size: 512, align: 64, elements: !1269)
!1269 = !{!1270, !1271, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1268, file: !1267, line: 168, baseType: !80, size: 64, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1268, file: !1267, line: 169, baseType: !1272, size: 64, align: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1273, line: 75, baseType: !1244)
!1273 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1268, file: !1267, line: 170, baseType: !71, size: 64, align: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !1267, line: 171, baseType: !71, size: 64, align: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1268, file: !1267, line: 172, baseType: !14, size: 32, align: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1268, file: !1267, line: 173, baseType: !14, size: 32, align: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1268, file: !1267, line: 174, baseType: !14, size: 32, align: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1268, file: !1267, line: 175, baseType: !1194, size: 64, align: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1268, file: !1267, line: 176, baseType: !1281, size: 64, align: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1267, line: 159, baseType: !1283)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1267, line: 159, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !157, file: !146, line: 1507, baseType: !1214, size: 64, align: 64, offset: 1472)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !157, file: !146, line: 1508, baseType: !1214, size: 64, align: 64, offset: 1536)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !157, file: !146, line: 1513, baseType: !14, size: 32, align: 32, offset: 1600)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !157, file: !146, line: 1514, baseType: !649, size: 64, align: 64, offset: 1664)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !157, file: !146, line: 1515, baseType: !408, size: 64, align: 64, offset: 1728)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !157, file: !146, line: 1517, baseType: !790, size: 64, align: 64, offset: 1792)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !157, file: !146, line: 1521, baseType: !649, size: 64, align: 64, offset: 1856)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !157, file: !146, line: 1522, baseType: !408, size: 64, align: 64, offset: 1920)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !157, file: !146, line: 1524, baseType: !790, size: 64, align: 64, offset: 1984)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !157, file: !146, line: 1531, baseType: !1294, size: 64, align: 64, offset: 2048)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, align: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !146, line: 1035, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !157, file: !146, line: 1536, baseType: !53, size: 32, align: 32, offset: 2112)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !157, file: !146, line: 1537, baseType: !315, size: 256, align: 8, offset: 2144)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !157, file: !146, line: 1539, baseType: !882, size: 64, align: 64, offset: 2432)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !157, file: !146, line: 1541, baseType: !1300, size: 64, align: 64, offset: 2496)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !146, line: 905, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64, align: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!14, !1304, !278, !446}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !157, file: !146, line: 1547, baseType: !14, size: 32, align: 32, offset: 2560)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !157, file: !146, line: 1549, baseType: !1308, size: 64, align: 64, offset: 2624)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64, align: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!14, !14, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !156, line: 162, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1267, line: 236, size: 1984, align: 64, elements: !1314)
!1314 = !{!1315, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1313, file: !1267, line: 237, baseType: !1316, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64, align: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !156, line: 161, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1267, line: 186, size: 1152, align: 64, elements: !1319)
!1319 = !{!1320, !1321, !1326, !1331, !1332, !1336, !1337, !1342, !1346, !1347, !1414, !1418, !1422, !1430, !1438, !1439, !1440}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1318, file: !1267, line: 188, baseType: !14, size: 32, align: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1318, file: !1267, line: 189, baseType: !1322, size: 64, align: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64, align: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1267, line: 137, size: 256, align: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1323, file: !1267, line: 137, baseType: !236, size: 256, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1318, file: !1267, line: 191, baseType: !1327, size: 64, align: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64, align: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1267, line: 136, size: 256, align: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1328, file: !1267, line: 136, baseType: !236, size: 256, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1318, file: !1267, line: 192, baseType: !1265, size: 64, align: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1318, file: !1267, line: 195, baseType: !1333, size: 64, align: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64, align: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!14, !1311}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1318, file: !1267, line: 197, baseType: !1308, size: 64, align: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1318, file: !1267, line: 199, baseType: !1338, size: 64, align: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64, align: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!14, !1341, !1311, !902}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1318, file: !1267, line: 201, baseType: !1343, size: 64, align: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64, align: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!14, !1311, !902, !902}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1318, file: !1267, line: 203, baseType: !1333, size: 64, align: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1318, file: !1267, line: 205, baseType: !1348, size: 64, align: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64, align: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!14, !1311, !1351, !902}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64, align: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !156, line: 156, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !628, line: 452, size: 960, align: 64, elements: !1355)
!1355 = !{!1356, !1373, !1374, !1375, !1376, !1377, !1378, !1400, !1401, !1402, !1403, !1404, !1405, !1408, !1413}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1354, file: !628, line: 454, baseType: !1357, size: 64, align: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64, align: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !628, line: 450, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !628, line: 441, size: 640, align: 64, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1371, !1372}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1359, file: !628, line: 442, baseType: !714, size: 64, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1359, file: !628, line: 443, baseType: !914, size: 64, align: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1359, file: !628, line: 444, baseType: !921, size: 64, align: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1359, file: !628, line: 445, baseType: !940, size: 64, align: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1359, file: !628, line: 446, baseType: !940, size: 64, align: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1359, file: !628, line: 447, baseType: !1367, size: 64, align: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64, align: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !628, line: 438, size: 256, align: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1368, file: !628, line: 438, baseType: !236, size: 256, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1359, file: !628, line: 448, baseType: !1124, size: 64, align: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1359, file: !628, line: 449, baseType: !1129, size: 192, align: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1354, file: !628, line: 455, baseType: !914, size: 64, align: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1354, file: !628, line: 456, baseType: !720, size: 64, align: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1354, file: !628, line: 457, baseType: !14, size: 32, align: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1354, file: !628, line: 458, baseType: !14, size: 32, align: 32, offset: 224)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1354, file: !628, line: 460, baseType: !1149, size: 64, align: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1354, file: !628, line: 461, baseType: !1379, size: 64, align: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !156, line: 188, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !1152, line: 356, size: 256, align: 64, elements: !1382)
!1382 = !{!1383, !1395, !1396, !1397, !1398, !1399}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !1381, file: !1152, line: 357, baseType: !1384, size: 64, align: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64, align: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !1152, line: 234, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !1152, line: 226, size: 192, align: 64, elements: !1387)
!1387 = !{!1388, !1389, !1394}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1386, file: !1152, line: 227, baseType: !14, size: 32, align: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1152, line: 231, baseType: !1390, size: 64, align: 64, offset: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !1152, line: 228, size: 64, align: 64, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1390, file: !1152, line: 229, baseType: !1156, size: 64, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !1390, file: !1152, line: 230, baseType: !926, size: 64, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !1386, file: !1152, line: 233, baseType: !921, size: 64, align: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !1381, file: !1152, line: 358, baseType: !14, size: 32, align: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !1381, file: !1152, line: 359, baseType: !14, size: 32, align: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !1381, file: !1152, line: 360, baseType: !720, size: 64, align: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !1381, file: !1152, line: 361, baseType: !14, size: 32, align: 32, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !1381, file: !1152, line: 362, baseType: !14, size: 32, align: 32, offset: 224)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1354, file: !628, line: 463, baseType: !14, size: 32, align: 32, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1354, file: !628, line: 464, baseType: !14, size: 32, align: 32, offset: 416)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1354, file: !628, line: 466, baseType: !714, size: 64, align: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1354, file: !628, line: 467, baseType: !714, size: 64, align: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1354, file: !628, line: 469, baseType: !1185, size: 160, align: 8, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1354, file: !628, line: 471, baseType: !1406, size: 64, align: 64, offset: 768)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64, align: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !628, line: 471, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1354, file: !628, line: 472, baseType: !1409, size: 64, align: 64, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !156, line: 157, baseType: !1412)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !156, line: 157, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1354, file: !628, line: 473, baseType: !195, size: 64, align: 64, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1318, file: !1267, line: 207, baseType: !1415, size: 64, align: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64, align: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!14, !1311, !1352}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1318, file: !1267, line: 209, baseType: !1419, size: 64, align: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64, align: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!14, !1311, !1352, !902}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1318, file: !1267, line: 210, baseType: !1423, size: 64, align: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64, align: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!1426, !1311, !921}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64, align: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !628, line: 301, size: 256, align: 64, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1427, file: !628, line: 301, baseType: !236, size: 256, align: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1318, file: !1267, line: 211, baseType: !1431, size: 64, align: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, align: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1434, !1311, !921}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64, align: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !628, line: 476, size: 256, align: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1435, file: !628, line: 476, baseType: !236, size: 256, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1318, file: !1267, line: 212, baseType: !1333, size: 64, align: 64, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1318, file: !1267, line: 213, baseType: !227, size: 128, align: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1318, file: !1267, line: 214, baseType: !14, size: 32, align: 32, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1313, file: !1267, line: 239, baseType: !14, size: 32, align: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1313, file: !1267, line: 242, baseType: !902, size: 64, align: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1313, file: !1267, line: 244, baseType: !1426, size: 64, align: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1313, file: !1267, line: 246, baseType: !1434, size: 64, align: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1313, file: !1267, line: 247, baseType: !1265, size: 64, align: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1313, file: !1267, line: 249, baseType: !195, size: 64, align: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1313, file: !1267, line: 252, baseType: !1333, size: 64, align: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1313, file: !1267, line: 254, baseType: !1308, size: 64, align: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1313, file: !1267, line: 256, baseType: !1338, size: 64, align: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1313, file: !1267, line: 258, baseType: !1343, size: 64, align: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1313, file: !1267, line: 260, baseType: !1333, size: 64, align: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1313, file: !1267, line: 262, baseType: !1348, size: 64, align: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1313, file: !1267, line: 264, baseType: !1415, size: 64, align: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1313, file: !1267, line: 266, baseType: !1419, size: 64, align: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1313, file: !1267, line: 267, baseType: !1333, size: 64, align: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1313, file: !1267, line: 268, baseType: !1423, size: 64, align: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1313, file: !1267, line: 269, baseType: !1431, size: 64, align: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1313, file: !1267, line: 270, baseType: !1333, size: 64, align: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1313, file: !1267, line: 273, baseType: !14, size: 32, align: 32, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1313, file: !1267, line: 275, baseType: !14, size: 32, align: 32, offset: 1248)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1313, file: !1267, line: 277, baseType: !1426, size: 64, align: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1313, file: !1267, line: 279, baseType: !1463, size: 64, align: 64, offset: 1344)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !156, line: 183, baseType: !1465)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !156, line: 183, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1313, file: !1267, line: 281, baseType: !14, size: 32, align: 32, offset: 1408)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1313, file: !1267, line: 283, baseType: !14, size: 32, align: 32, offset: 1440)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1313, file: !1267, line: 284, baseType: !14, size: 32, align: 32, offset: 1472)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1313, file: !1267, line: 285, baseType: !902, size: 64, align: 64, offset: 1536)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1313, file: !1267, line: 287, baseType: !902, size: 64, align: 64, offset: 1600)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1313, file: !1267, line: 289, baseType: !1352, size: 64, align: 64, offset: 1664)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1313, file: !1267, line: 291, baseType: !14, size: 32, align: 32, offset: 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1313, file: !1267, line: 293, baseType: !53, size: 32, align: 32, offset: 1760)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1313, file: !1267, line: 295, baseType: !1311, size: 64, align: 64, offset: 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1313, file: !1267, line: 296, baseType: !227, size: 128, align: 64, offset: 1856)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !157, file: !146, line: 1551, baseType: !1477, size: 64, align: 64, offset: 2688)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64, align: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1304, !14, !14}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !157, file: !146, line: 1553, baseType: !14, size: 32, align: 32, offset: 2752)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !157, file: !146, line: 1555, baseType: !14, size: 32, align: 32, offset: 2784)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !157, file: !146, line: 1561, baseType: !1483, size: 64, align: 64, offset: 2816)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64, align: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!53, !154, !175, !80, !53, !278, !53}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !157, file: !146, line: 1566, baseType: !1487, size: 64, align: 64, offset: 2880)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64, align: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!53, !154, !175, !278, !53}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !157, file: !146, line: 1570, baseType: !1491, size: 64, align: 64, offset: 2944)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64, align: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !156, line: 179, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !146, line: 925, size: 6400, align: 64, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1500, !1505, !1506, !1507, !1508, !1509, !1510, !1515, !1520, !1524, !1538, !1539, !1543, !1544, !1550, !1551, !1556, !1560, !1564, !1565, !1566, !1567, !1568, !1569, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1596, !1597, !1598, !1599, !1600, !1615, !1619, !1620, !1624, !1625, !1626, !1627, !1628, !1629, !1632, !1633, !1656, !1661, !1662, !1667, !1668, !1673, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1493, file: !146, line: 926, baseType: !143, size: 64, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !1493, file: !146, line: 927, baseType: !1214, size: 64, align: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !1493, file: !146, line: 929, baseType: !1214, size: 64, align: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !1493, file: !146, line: 930, baseType: !1499, size: 64, align: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64, align: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !1493, file: !146, line: 931, baseType: !1501, size: 64, align: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64, align: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !146, line: 923, size: 32, align: 32, elements: !1503)
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1502, file: !146, line: 923, baseType: !14, size: 32, align: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !1493, file: !146, line: 936, baseType: !71, size: 64, align: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !1493, file: !146, line: 937, baseType: !1220, size: 64, align: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !1493, file: !146, line: 938, baseType: !1220, size: 64, align: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !1493, file: !146, line: 944, baseType: !14, size: 32, align: 32, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !1493, file: !146, line: 950, baseType: !194, size: 64, align: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !1493, file: !146, line: 960, baseType: !1511, size: 64, align: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64, align: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!14, !1514, !882}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !1493, file: !146, line: 961, baseType: !1516, size: 64, align: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64, align: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1519, !882}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !1493, file: !146, line: 962, baseType: !1521, size: 64, align: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64, align: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!882, !1514, !278, !14, !1108}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1493, file: !146, line: 980, baseType: !1525, size: 352, align: 32, offset: 832)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !146, line: 964, size: 352, align: 32, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1525, file: !146, line: 965, baseType: !14, size: 32, align: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1525, file: !146, line: 966, baseType: !14, size: 32, align: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1525, file: !146, line: 967, baseType: !14, size: 32, align: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1525, file: !146, line: 968, baseType: !14, size: 32, align: 32, offset: 96)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1525, file: !146, line: 969, baseType: !14, size: 32, align: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1525, file: !146, line: 970, baseType: !14, size: 32, align: 32, offset: 160)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1525, file: !146, line: 971, baseType: !14, size: 32, align: 32, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1525, file: !146, line: 972, baseType: !14, size: 32, align: 32, offset: 224)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1525, file: !146, line: 973, baseType: !14, size: 32, align: 32, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1525, file: !146, line: 974, baseType: !14, size: 32, align: 32, offset: 288)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1525, file: !146, line: 975, baseType: !14, size: 32, align: 32, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1493, file: !146, line: 982, baseType: !14, size: 32, align: 32, offset: 1184)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !1493, file: !146, line: 985, baseType: !1540, size: 64, align: 64, offset: 1216)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64, align: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!14, !1311, !195}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !1493, file: !146, line: 986, baseType: !195, size: 64, align: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !1493, file: !146, line: 993, baseType: !1545, size: 64, align: 64, offset: 1344)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1547, line: 389, baseType: !1548)
!1547 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!14, !80, !14, !14, !195}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !1493, file: !146, line: 996, baseType: !195, size: 64, align: 64, offset: 1408)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !1493, file: !146, line: 999, baseType: !1552, size: 64, align: 64, offset: 1472)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64, align: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!14, !154, !1341, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !1493, file: !146, line: 1002, baseType: !1557, size: 64, align: 64, offset: 1536)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64, align: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!14, !154, !278, !446}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !1493, file: !146, line: 1006, baseType: !1561, size: 64, align: 64, offset: 1600)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64, align: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!14, !154, !278, !53}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1493, file: !146, line: 1009, baseType: !227, size: 128, align: 64, offset: 1664)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !1493, file: !146, line: 1011, baseType: !414, size: 64, align: 64, offset: 1792)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !1493, file: !146, line: 1012, baseType: !414, size: 64, align: 64, offset: 1856)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !1493, file: !146, line: 1013, baseType: !414, size: 64, align: 64, offset: 1920)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !1493, file: !146, line: 1015, baseType: !1426, size: 64, align: 64, offset: 1984)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !1493, file: !146, line: 1016, baseType: !1570, size: 64, align: 64, offset: 2048)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64, align: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !146, line: 922, size: 256, align: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1571, file: !146, line: 922, baseType: !236, size: 256, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !1493, file: !146, line: 1021, baseType: !1477, size: 64, align: 64, offset: 2112)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !1493, file: !146, line: 1024, baseType: !626, size: 64, align: 64, offset: 2176)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1493, file: !146, line: 1031, baseType: !71, size: 64, align: 64, offset: 2240)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1493, file: !146, line: 1032, baseType: !71, size: 64, align: 64, offset: 2304)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !1493, file: !146, line: 1033, baseType: !194, size: 64, align: 64, offset: 2368)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1493, file: !146, line: 1035, baseType: !1294, size: 64, align: 64, offset: 2432)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1493, file: !146, line: 1036, baseType: !14, size: 32, align: 32, offset: 2496)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !1493, file: !146, line: 1039, baseType: !1259, size: 64, align: 64, offset: 2560)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !1493, file: !146, line: 1041, baseType: !195, size: 64, align: 64, offset: 2624)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !1493, file: !146, line: 1043, baseType: !14, size: 32, align: 32, offset: 2688)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1493, file: !146, line: 1044, baseType: !53, size: 32, align: 32, offset: 2720)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1493, file: !146, line: 1045, baseType: !315, size: 256, align: 8, offset: 2752)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !1493, file: !146, line: 1047, baseType: !1308, size: 64, align: 64, offset: 3008)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !1493, file: !146, line: 1050, baseType: !1300, size: 64, align: 64, offset: 3072)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1493, file: !146, line: 1052, baseType: !1265, size: 64, align: 64, offset: 3136)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !1493, file: !146, line: 1059, baseType: !14, size: 32, align: 32, offset: 3200)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !1493, file: !146, line: 1065, baseType: !53, size: 32, align: 32, offset: 3232)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !1493, file: !146, line: 1071, baseType: !462, size: 64, align: 64, offset: 3264)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !1493, file: !146, line: 1076, baseType: !1593, size: 64, align: 64, offset: 3328)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64, align: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!14, !154, !1108, !195}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !1493, file: !146, line: 1077, baseType: !195, size: 64, align: 64, offset: 3392)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !1493, file: !146, line: 1079, baseType: !320, size: 128, align: 8, offset: 3456)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !1493, file: !146, line: 1080, baseType: !320, size: 128, align: 8, offset: 3584)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !1493, file: !146, line: 1081, baseType: !320, size: 128, align: 8, offset: 3712)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !1493, file: !146, line: 1083, baseType: !1601, size: 64, align: 64, offset: 3840)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64, align: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!14, !154, !278, !278, !649, !1604, !14}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1606, line: 82, baseType: !1607)
!1606 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1606, line: 75, size: 2304, align: 64, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1607, file: !1606, line: 76, baseType: !414, size: 64, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1607, file: !1606, line: 77, baseType: !409, size: 384, align: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1607, file: !1606, line: 78, baseType: !409, size: 384, align: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1607, file: !1606, line: 79, baseType: !409, size: 384, align: 64, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1607, file: !1606, line: 80, baseType: !53, size: 32, align: 32, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1607, file: !1606, line: 81, baseType: !489, size: 1024, align: 8, offset: 1248)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !1493, file: !146, line: 1090, baseType: !1616, size: 64, align: 64, offset: 3904)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64, align: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!14, !154, !195}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !1493, file: !146, line: 1091, baseType: !195, size: 64, align: 64, offset: 3968)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !1493, file: !146, line: 1094, baseType: !1621, size: 64, align: 64, offset: 4032)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64, align: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!14, !154, !195, !270, !195}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !1493, file: !146, line: 1096, baseType: !195, size: 64, align: 64, offset: 4096)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1493, file: !146, line: 1100, baseType: !80, size: 64, align: 64, offset: 4160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !1493, file: !146, line: 1101, baseType: !1483, size: 64, align: 64, offset: 4224)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !1493, file: !146, line: 1106, baseType: !1487, size: 64, align: 64, offset: 4288)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !1493, file: !146, line: 1113, baseType: !53, size: 32, align: 32, offset: 4352)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !1493, file: !146, line: 1114, baseType: !1630, size: 64, align: 64, offset: 4416)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64, align: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !146, line: 1114, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !1493, file: !146, line: 1115, baseType: !1630, size: 64, align: 64, offset: 4480)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !1493, file: !146, line: 1118, baseType: !1634, size: 1024, align: 64, offset: 4544)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !146, line: 864, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !146, line: 849, size: 1024, align: 64, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1635, file: !146, line: 851, baseType: !195, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1635, file: !146, line: 853, baseType: !1593, size: 64, align: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1635, file: !146, line: 855, baseType: !1616, size: 64, align: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1635, file: !146, line: 857, baseType: !1641, size: 64, align: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64, align: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!80, !154, !195}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1635, file: !146, line: 858, baseType: !80, size: 64, align: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1635, file: !146, line: 859, baseType: !525, size: 64, align: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1635, file: !146, line: 859, baseType: !525, size: 64, align: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1635, file: !146, line: 859, baseType: !525, size: 64, align: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1635, file: !146, line: 859, baseType: !525, size: 64, align: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1635, file: !146, line: 859, baseType: !525, size: 64, align: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1635, file: !146, line: 860, baseType: !525, size: 64, align: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1635, file: !146, line: 860, baseType: !525, size: 64, align: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1635, file: !146, line: 860, baseType: !525, size: 64, align: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1635, file: !146, line: 861, baseType: !80, size: 64, align: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1635, file: !146, line: 862, baseType: !14, size: 32, align: 32, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1635, file: !146, line: 863, baseType: !71, size: 64, align: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !1493, file: !146, line: 1131, baseType: !1657, size: 64, align: 64, offset: 5568)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64, align: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!14, !154, !1660, !446, !195}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !1493, file: !146, line: 1133, baseType: !195, size: 64, align: 64, offset: 5632)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !1493, file: !146, line: 1138, baseType: !1663, size: 64, align: 64, offset: 5696)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64, align: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!14, !154, !1666, !278, !293, !53, !195}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !1493, file: !146, line: 1142, baseType: !195, size: 64, align: 64, offset: 5760)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !1493, file: !146, line: 1145, baseType: !1669, size: 64, align: 64, offset: 5824)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64, align: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !146, line: 388, size: 256, align: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1670, file: !146, line: 388, baseType: !236, size: 256, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !1493, file: !146, line: 1162, baseType: !1674, size: 64, align: 64, offset: 5888)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64, align: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!14, !154, !1660, !278, !293, !53, !195}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !1493, file: !146, line: 1167, baseType: !195, size: 64, align: 64, offset: 5952)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !1493, file: !146, line: 1173, baseType: !278, size: 64, align: 64, offset: 6016)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !1493, file: !146, line: 1174, baseType: !53, size: 32, align: 32, offset: 6080)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1493, file: !146, line: 1178, baseType: !270, size: 64, align: 64, offset: 6144)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1493, file: !146, line: 1179, baseType: !278, size: 64, align: 64, offset: 6208)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1493, file: !146, line: 1180, baseType: !270, size: 64, align: 64, offset: 6272)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1493, file: !146, line: 1181, baseType: !278, size: 64, align: 64, offset: 6336)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !157, file: !146, line: 1575, baseType: !14, size: 32, align: 32, offset: 3008)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !157, file: !146, line: 1577, baseType: !194, size: 64, align: 64, offset: 3072)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !157, file: !146, line: 1578, baseType: !227, size: 128, align: 64, offset: 3136)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !157, file: !146, line: 1580, baseType: !626, size: 64, align: 64, offset: 3264)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !157, file: !146, line: 1581, baseType: !14, size: 32, align: 32, offset: 3328)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !157, file: !146, line: 1583, baseType: !71, size: 64, align: 64, offset: 3392)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !157, file: !146, line: 1585, baseType: !71, size: 64, align: 64, offset: 3456)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !157, file: !146, line: 1586, baseType: !194, size: 64, align: 64, offset: 3520)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !157, file: !146, line: 1587, baseType: !14, size: 32, align: 32, offset: 3584)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !157, file: !146, line: 1589, baseType: !14, size: 32, align: 32, offset: 3616)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !157, file: !146, line: 1590, baseType: !53, size: 32, align: 32, offset: 3648)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !157, file: !146, line: 1593, baseType: !1696, size: 64, align: 64, offset: 3712)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64, align: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !154, !14, !14, !278, !14, !195}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !157, file: !146, line: 1595, baseType: !195, size: 64, align: 64, offset: 3776)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !157, file: !146, line: 1596, baseType: !80, size: 64, align: 64, offset: 3840)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !157, file: !146, line: 1603, baseType: !14, size: 32, align: 32, offset: 3904)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !157, file: !146, line: 1606, baseType: !14, size: 32, align: 32, offset: 3936)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !157, file: !146, line: 1608, baseType: !14, size: 32, align: 32, offset: 3968)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !157, file: !146, line: 1610, baseType: !1705, size: 64, align: 64, offset: 4032)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64, align: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !146, line: 1610, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !157, file: !146, line: 1611, baseType: !1708, size: 64, align: 64, offset: 4096)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !628, line: 202, baseType: !1125)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !157, file: !146, line: 1613, baseType: !278, size: 64, align: 64, offset: 4160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !157, file: !146, line: 1614, baseType: !14, size: 32, align: 32, offset: 4224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !157, file: !146, line: 1616, baseType: !14, size: 32, align: 32, offset: 4256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !157, file: !146, line: 1618, baseType: !270, size: 64, align: 64, offset: 4288)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !157, file: !146, line: 1620, baseType: !278, size: 64, align: 64, offset: 4352)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !157, file: !146, line: 1621, baseType: !270, size: 64, align: 64, offset: 4416)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !157, file: !146, line: 1623, baseType: !278, size: 64, align: 64, offset: 4480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !157, file: !146, line: 1629, baseType: !195, size: 64, align: 64, offset: 4544)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !157, file: !146, line: 1630, baseType: !270, size: 64, align: 64, offset: 4608)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !157, file: !146, line: 1632, baseType: !1720, size: 64, align: 64, offset: 4672)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !146, line: 373, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1723, line: 802, size: 128, align: 64, elements: !1724)
!1723 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1722, file: !1723, line: 803, baseType: !64, size: 16, align: 16)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1722, file: !1723, line: 804, baseType: !195, size: 64, align: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !157, file: !146, line: 1634, baseType: !1728, size: 64, align: 64, offset: 4736)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !146, line: 390, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64, align: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!14, !154, !293, !14, !195}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !157, file: !146, line: 1635, baseType: !195, size: 64, align: 64, offset: 4800)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !157, file: !146, line: 1637, baseType: !1734, size: 64, align: 64, offset: 4864)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !146, line: 393, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64, align: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!14, !154, !195, !1108, !1214, !1738, !195}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !157, file: !146, line: 1638, baseType: !195, size: 64, align: 64, offset: 4928)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !157, file: !146, line: 1639, baseType: !1491, size: 64, align: 64, offset: 4992)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !157, file: !146, line: 1648, baseType: !278, size: 64, align: 64, offset: 5056)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !157, file: !146, line: 1649, baseType: !279, size: 8, align: 8, offset: 5120)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !157, file: !146, line: 1653, baseType: !1669, size: 64, align: 64, offset: 5184)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !157, file: !146, line: 1655, baseType: !1746, size: 64, align: 64, offset: 5248)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64, align: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !146, line: 386, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !146, line: 383, size: 128, align: 64, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !146, line: 384, baseType: !175, size: 64, align: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1748, file: !146, line: 385, baseType: !71, size: 64, align: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !157, file: !146, line: 1662, baseType: !53, size: 32, align: 32, offset: 5312)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !157, file: !146, line: 1664, baseType: !53, size: 32, align: 32, offset: 5344)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !157, file: !146, line: 1666, baseType: !53, size: 32, align: 32, offset: 5376)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !157, file: !146, line: 1675, baseType: !14, size: 32, align: 32, offset: 5408)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !157, file: !146, line: 1678, baseType: !1634, size: 1024, align: 64, offset: 5440)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !157, file: !146, line: 1685, baseType: !278, size: 64, align: 64, offset: 6464)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !157, file: !146, line: 1686, baseType: !53, size: 32, align: 32, offset: 6528)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !147, file: !146, line: 441, baseType: !1760, size: 64, align: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64, align: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !154}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !147, file: !146, line: 442, baseType: !1760, size: 64, align: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !147, file: !146, line: 443, baseType: !151, size: 64, align: 64, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !147, file: !146, line: 444, baseType: !151, size: 64, align: 64, offset: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !147, file: !146, line: 445, baseType: !1767, size: 64, align: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64, align: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!14, !154, !195, !14}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !147, file: !146, line: 446, baseType: !1767, size: 64, align: 64, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !147, file: !146, line: 447, baseType: !1772, size: 64, align: 64, offset: 512)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64, align: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!14, !154, !249, !14}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !147, file: !146, line: 448, baseType: !151, size: 64, align: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !147, file: !146, line: 449, baseType: !151, size: 64, align: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !147, file: !146, line: 450, baseType: !151, size: 64, align: 64, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !147, file: !146, line: 451, baseType: !1779, size: 64, align: 64, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64, align: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!194, !154, !14, !14, !14, !194, !1108}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !147, file: !146, line: 453, baseType: !1783, size: 64, align: 64, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64, align: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!14, !154, !14, !278, !14, !14}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !147, file: !146, line: 455, baseType: !1787, size: 64, align: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64, align: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!14, !154, !14, !249, !14}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !147, file: !146, line: 456, baseType: !151, size: 64, align: 64, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !147, file: !146, line: 457, baseType: !1792, size: 64, align: 64, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64, align: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!194, !154, !14, !194, !195}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !147, file: !146, line: 458, baseType: !1796, size: 64, align: 64, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64, align: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!194, !1491, !14, !194, !195}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !147, file: !146, line: 459, baseType: !1800, size: 64, align: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64, align: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!499, !293}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !147, file: !146, line: 460, baseType: !1804, size: 64, align: 64, offset: 1216)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64, align: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!14, !499, !278}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !147, file: !146, line: 461, baseType: !1808, size: 64, align: 64, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64, align: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!14, !1304}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !147, file: !146, line: 462, baseType: !1812, size: 64, align: 64, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64, align: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!14}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !147, file: !146, line: 463, baseType: !1816, size: 64, align: 64, offset: 1408)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64, align: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!499, !53}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !147, file: !146, line: 464, baseType: !1820, size: 64, align: 64, offset: 1472)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64, align: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !14}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64, align: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !147, file: !146, line: 465, baseType: !810, size: 64, align: 64, offset: 1536)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !147, file: !146, line: 466, baseType: !1827, size: 64, align: 64, offset: 1600)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64, align: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !146, line: 466, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !147, file: !146, line: 467, baseType: !1812, size: 64, align: 64, offset: 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !147, file: !146, line: 468, baseType: !1831, size: 64, align: 64, offset: 1728)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64, align: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!194, !154, !14, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64, align: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !147, file: !146, line: 469, baseType: !1838, size: 64, align: 64, offset: 1792)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64, align: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!194, !1491, !14, !1834}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cacrt", scope: !106, file: !49, line: 110, baseType: !902, size: 64, align: 64, offset: 1216)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cakey", scope: !106, file: !49, line: 111, baseType: !952, size: 64, align: 64, offset: 1280)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !106, file: !49, line: 112, baseType: !952, size: 64, align: 64, offset: 1344)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !106, file: !49, line: 113, baseType: !1426, size: 64, align: 64, offset: 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "clientcrt", scope: !106, file: !49, line: 114, baseType: !902, size: 64, align: 64, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "clientkey", scope: !106, file: !49, line: 115, baseType: !952, size: 64, align: 64, offset: 1536)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !106, file: !49, line: 117, baseType: !517, size: 64, align: 64, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ecdhcurve", scope: !106, file: !49, line: 120, baseType: !80, size: 64, align: 64, offset: 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !106, file: !49, line: 122, baseType: !47, size: 64, align: 64, offset: 1728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "crlurl", scope: !106, file: !49, line: 123, baseType: !80, size: 64, align: 64, offset: 1792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "verify_peer", scope: !106, file: !49, line: 124, baseType: !53, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "allow_wrong_host", scope: !106, file: !49, line: 125, baseType: !53, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "evcl", scope: !43, file: !12, line: 79, baseType: !1854, size: 64, align: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64, align: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !1856, line: 39, flags: DIFlagFwdDecl)
!1856 = !DIFile(filename: "/usr/include/event2/listener.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !12, line: 80, baseType: !42, size: 64, align: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !26, file: !12, line: 68, baseType: !104, size: 64, align: 64, offset: 640)
!1859 = !{}
!1860 = !DILocalVariable(name: "opts", arg: 1, scope: !20, file: !12, line: 254, type: !104)
!1861 = !DIExpression()
!1862 = !DILocation(line: 254, column: 19, scope: !20)
!1863 = !DILocalVariable(name: "clisock", arg: 2, scope: !20, file: !12, line: 254, type: !14)
!1864 = !DILocation(line: 254, column: 29, scope: !20)
!1865 = !DILocalVariable(name: "head", scope: !20, file: !12, line: 256, type: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_listener_ctx_t", file: !12, line: 81, baseType: !43)
!1868 = !DILocation(line: 256, column: 24, scope: !20)
!1869 = !DILocalVariable(name: "ctx", scope: !20, file: !12, line: 257, type: !23)
!1870 = !DILocation(line: 257, column: 15, scope: !20)
!1871 = !DILocalVariable(name: "dnsbase", scope: !20, file: !12, line: 258, type: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64, align: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "evdns_base", file: !1874, line: 203, flags: DIFlagFwdDecl)
!1874 = !DIFile(filename: "/usr/include/event2/dns.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1875 = !DILocation(line: 258, column: 21, scope: !20)
!1876 = !DILocalVariable(name: "rc", scope: !20, file: !12, line: 259, type: !14)
!1877 = !DILocation(line: 259, column: 6, scope: !20)
!1878 = !DILocation(line: 262, column: 2, scope: !20)
!1879 = !DILocation(line: 265, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !20, file: !12, line: 265, column: 6)
!1881 = !DILocation(line: 265, column: 32, scope: !1880)
!1882 = !DILocation(line: 265, column: 23, scope: !1880)
!1883 = !DILocation(line: 265, column: 6, scope: !1880)
!1884 = !DILocation(line: 265, column: 6, scope: !20)
!1885 = !DILocation(line: 266, column: 3, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !12, line: 265, column: 44)
!1887 = !DILocation(line: 267, column: 2, scope: !1886)
!1888 = !DILocation(line: 270, column: 8, scope: !20)
!1889 = !DILocation(line: 270, column: 6, scope: !20)
!1890 = !DILocation(line: 271, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !20, file: !12, line: 271, column: 6)
!1892 = !DILocation(line: 271, column: 6, scope: !20)
!1893 = !DILocation(line: 272, column: 3, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !12, line: 271, column: 12)
!1895 = !DILocation(line: 273, column: 3, scope: !1894)
!1896 = !DILocation(line: 275, column: 9, scope: !20)
!1897 = !DILocation(line: 275, column: 2, scope: !20)
!1898 = !DILocation(line: 277, column: 14, scope: !20)
!1899 = !DILocation(line: 277, column: 2, scope: !20)
!1900 = !DILocation(line: 277, column: 7, scope: !20)
!1901 = !DILocation(line: 277, column: 12, scope: !20)
!1902 = !DILocation(line: 278, column: 16, scope: !20)
!1903 = !DILocation(line: 278, column: 2, scope: !20)
!1904 = !DILocation(line: 278, column: 7, scope: !20)
!1905 = !DILocation(line: 278, column: 14, scope: !20)
!1906 = !DILocation(line: 279, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !20, file: !12, line: 279, column: 6)
!1908 = !DILocation(line: 279, column: 12, scope: !1907)
!1909 = !DILocation(line: 279, column: 6, scope: !20)
!1910 = !DILocation(line: 280, column: 3, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !12, line: 279, column: 20)
!1912 = !DILocation(line: 281, column: 3, scope: !1911)
!1913 = !DILocation(line: 284, column: 24, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !20, file: !12, line: 284, column: 6)
!1915 = !DILocation(line: 284, column: 6, scope: !1914)
!1916 = !DILocation(line: 284, column: 6, scope: !20)
!1917 = !DILocation(line: 287, column: 28, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !12, line: 284, column: 31)
!1919 = !DILocation(line: 287, column: 33, scope: !1918)
!1920 = !DILocation(line: 287, column: 13, scope: !1918)
!1921 = !DILocation(line: 287, column: 11, scope: !1918)
!1922 = !DILocation(line: 288, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !12, line: 288, column: 7)
!1924 = !DILocation(line: 288, column: 7, scope: !1918)
!1925 = !DILocation(line: 289, column: 4, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !12, line: 288, column: 17)
!1927 = !DILocation(line: 290, column: 4, scope: !1926)
!1928 = !DILocation(line: 292, column: 37, scope: !1918)
!1929 = !DILocation(line: 292, column: 8, scope: !1918)
!1930 = !DILocation(line: 292, column: 6, scope: !1918)
!1931 = !DILocation(line: 294, column: 19, scope: !1918)
!1932 = !DILocation(line: 294, column: 3, scope: !1918)
!1933 = !DILocation(line: 295, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1918, file: !12, line: 295, column: 7)
!1935 = !DILocation(line: 295, column: 10, scope: !1934)
!1936 = !DILocation(line: 295, column: 7, scope: !1918)
!1937 = !DILocation(line: 298, column: 19, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !12, line: 295, column: 16)
!1939 = !DILocation(line: 298, column: 22, scope: !1938)
!1940 = !DILocation(line: 298, column: 19, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1938, file: !12, discriminator: 1)
!1942 = !DILocation(line: 299, column: 19, scope: !1938)
!1943 = !DILocation(line: 299, column: 22, scope: !1938)
!1944 = !DILocation(line: 299, column: 19, scope: !1941)
!1945 = !DILocation(line: 300, column: 19, scope: !1938)
!1946 = !DILocation(line: 300, column: 22, scope: !1938)
!1947 = !DILocation(line: 300, column: 19, scope: !1941)
!1948 = !DILocation(line: 301, column: 19, scope: !1938)
!1949 = !DILocation(line: 301, column: 22, scope: !1938)
!1950 = !DILocation(line: 301, column: 19, scope: !1941)
!1951 = !DILocation(line: 302, column: 19, scope: !1938)
!1952 = !DILocation(line: 302, column: 22, scope: !1938)
!1953 = !DILocation(line: 302, column: 19, scope: !1941)
!1954 = !DILocation(line: 303, column: 19, scope: !1938)
!1955 = !DILocation(line: 303, column: 22, scope: !1938)
!1956 = !DILocation(line: 302, column: 19, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1938, file: !12, discriminator: 2)
!1958 = !DILocation(line: 302, column: 19, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1938, file: !12, discriminator: 3)
!1960 = !DILocation(line: 301, column: 19, scope: !1957)
!1961 = !DILocation(line: 301, column: 19, scope: !1959)
!1962 = !DILocation(line: 300, column: 19, scope: !1957)
!1963 = !DILocation(line: 300, column: 19, scope: !1959)
!1964 = !DILocation(line: 299, column: 19, scope: !1957)
!1965 = !DILocation(line: 299, column: 19, scope: !1959)
!1966 = !DILocation(line: 298, column: 19, scope: !1957)
!1967 = !DILocation(line: 298, column: 19, scope: !1959)
!1968 = !DILocation(line: 304, column: 36, scope: !1938)
!1969 = !DILocation(line: 296, column: 4, scope: !1938)
!1970 = !DILocation(line: 305, column: 4, scope: !1938)
!1971 = !DILocation(line: 307, column: 2, scope: !1918)
!1972 = !DILocation(line: 309, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !20, file: !12, line: 309, column: 6)
!1974 = !DILocation(line: 309, column: 32, scope: !1973)
!1975 = !DILocation(line: 309, column: 23, scope: !1973)
!1976 = !DILocation(line: 309, column: 6, scope: !1973)
!1977 = !DILocation(line: 309, column: 6, scope: !20)
!1978 = !DILocation(line: 310, column: 20, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !12, line: 309, column: 44)
!1980 = !DILocation(line: 310, column: 25, scope: !1979)
!1981 = !DILocation(line: 310, column: 3, scope: !1979)
!1982 = !DILocation(line: 311, column: 2, scope: !1979)
!1983 = !DILocation(line: 313, column: 31, scope: !20)
!1984 = !DILocation(line: 313, column: 16, scope: !20)
!1985 = !DILocation(line: 313, column: 2, scope: !20)
!1986 = !DILocation(line: 313, column: 7, scope: !20)
!1987 = !DILocation(line: 313, column: 14, scope: !20)
!1988 = !DILocation(line: 314, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !20, file: !12, line: 314, column: 6)
!1990 = !DILocation(line: 314, column: 12, scope: !1989)
!1991 = !DILocation(line: 314, column: 6, scope: !20)
!1992 = !DILocation(line: 315, column: 3, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !12, line: 314, column: 20)
!1994 = !DILocation(line: 316, column: 3, scope: !1993)
!1995 = !DILocation(line: 319, column: 9, scope: !20)
!1996 = !DILocation(line: 319, column: 14, scope: !20)
!1997 = !DILocation(line: 319, column: 19, scope: !20)
!1998 = !DILocation(line: 319, column: 7, scope: !20)
!1999 = !DILocalVariable(name: "spec", scope: !2000, file: !12, line: 320, type: !47)
!2000 = distinct !DILexicalBlock(scope: !20, file: !12, line: 320, column: 2)
!2001 = !DILocation(line: 320, column: 20, scope: !2000)
!2002 = !DILocation(line: 320, column: 27, scope: !2000)
!2003 = !DILocation(line: 320, column: 33, scope: !2000)
!2004 = !DILocation(line: 320, column: 7, scope: !2000)
!2005 = !DILocation(line: 320, column: 39, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2007, file: !12, discriminator: 1)
!2007 = distinct !DILexicalBlock(scope: !2000, file: !12, line: 320, column: 2)
!2008 = !DILocation(line: 320, column: 2, scope: !2006)
!2009 = !DILocation(line: 321, column: 31, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !12, line: 320, column: 64)
!2011 = !DILocation(line: 321, column: 36, scope: !2010)
!2012 = !DILocation(line: 321, column: 44, scope: !2010)
!2013 = !DILocation(line: 321, column: 49, scope: !2010)
!2014 = !DILocation(line: 322, column: 31, scope: !2010)
!2015 = !DILocation(line: 322, column: 37, scope: !2010)
!2016 = !DILocation(line: 322, column: 43, scope: !2010)
!2017 = !DILocation(line: 321, column: 10, scope: !2010)
!2018 = !DILocation(line: 321, column: 8, scope: !2010)
!2019 = !DILocation(line: 323, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2010, file: !12, line: 323, column: 7)
!2021 = !DILocation(line: 323, column: 7, scope: !2010)
!2022 = !DILocation(line: 324, column: 4, scope: !2020)
!2023 = !DILocation(line: 325, column: 16, scope: !2010)
!2024 = !DILocation(line: 325, column: 21, scope: !2010)
!2025 = !DILocation(line: 325, column: 3, scope: !2010)
!2026 = !DILocation(line: 325, column: 9, scope: !2010)
!2027 = !DILocation(line: 325, column: 14, scope: !2010)
!2028 = !DILocation(line: 326, column: 15, scope: !2010)
!2029 = !DILocation(line: 326, column: 3, scope: !2010)
!2030 = !DILocation(line: 326, column: 8, scope: !2010)
!2031 = !DILocation(line: 326, column: 13, scope: !2010)
!2032 = !DILocation(line: 327, column: 2, scope: !2010)
!2033 = !DILocation(line: 320, column: 52, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2007, file: !12, discriminator: 2)
!2035 = !DILocation(line: 320, column: 58, scope: !2034)
!2036 = !DILocation(line: 320, column: 50, scope: !2034)
!2037 = !DILocation(line: 320, column: 2, scope: !2034)
!2038 = distinct !{!2038, !2039}
!2039 = !DILocation(line: 320, column: 2, scope: !20)
!2040 = !DILocalVariable(name: "i", scope: !2041, file: !12, line: 329, type: !270)
!2041 = distinct !DILexicalBlock(scope: !20, file: !12, line: 329, column: 2)
!2042 = !DILocation(line: 329, column: 14, scope: !2041)
!2043 = !DILocation(line: 329, column: 7, scope: !2041)
!2044 = !DILocation(line: 329, column: 21, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2046, file: !12, discriminator: 1)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !12, line: 329, column: 2)
!2047 = !DILocation(line: 329, column: 23, scope: !2045)
!2048 = !DILocation(line: 329, column: 2, scope: !2045)
!2049 = !DILocation(line: 330, column: 16, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !12, line: 329, column: 63)
!2051 = !DILocation(line: 330, column: 21, scope: !2050)
!2052 = !DILocation(line: 330, column: 24, scope: !2050)
!2053 = !DILocation(line: 330, column: 19, scope: !2050)
!2054 = !DILocation(line: 330, column: 12, scope: !2050)
!2055 = !DILocation(line: 330, column: 3, scope: !2050)
!2056 = !DILocation(line: 330, column: 8, scope: !2050)
!2057 = !DILocation(line: 330, column: 15, scope: !2050)
!2058 = !DILocation(line: 332, column: 17, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !12, line: 332, column: 7)
!2060 = !DILocation(line: 332, column: 8, scope: !2059)
!2061 = !DILocation(line: 332, column: 13, scope: !2059)
!2062 = !DILocation(line: 332, column: 7, scope: !2050)
!2063 = !DILocation(line: 333, column: 4, scope: !2059)
!2064 = !DILocation(line: 334, column: 11, scope: !2050)
!2065 = !DILocation(line: 334, column: 2, scope: !2050)
!2066 = !DILocation(line: 334, column: 7, scope: !2050)
!2067 = !DILocation(line: 335, column: 2, scope: !2050)
!2068 = !DILocation(line: 329, column: 59, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2046, file: !12, discriminator: 2)
!2070 = !DILocation(line: 329, column: 2, scope: !2069)
!2071 = distinct !{!2071, !2072}
!2072 = !DILocation(line: 329, column: 2, scope: !20)
!2073 = !DILocalVariable(name: "gc_delay", scope: !20, file: !12, line: 337, type: !1240)
!2074 = !DILocation(line: 337, column: 17, scope: !20)
!2075 = !DILocation(line: 338, column: 24, scope: !20)
!2076 = !DILocation(line: 338, column: 29, scope: !20)
!2077 = !DILocation(line: 338, column: 65, scope: !20)
!2078 = !DILocation(line: 338, column: 14, scope: !20)
!2079 = !DILocation(line: 338, column: 2, scope: !20)
!2080 = !DILocation(line: 338, column: 7, scope: !20)
!2081 = !DILocation(line: 338, column: 12, scope: !20)
!2082 = !DILocation(line: 339, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !20, file: !12, line: 339, column: 6)
!2084 = !DILocation(line: 339, column: 12, scope: !2083)
!2085 = !DILocation(line: 339, column: 6, scope: !20)
!2086 = !DILocation(line: 340, column: 3, scope: !2083)
!2087 = !DILocation(line: 341, column: 1, scope: !20)
!2088 = !DILocation(line: 341, column: 6, scope: !20)
!2089 = !DILocation(line: 343, column: 23, scope: !20)
!2090 = !DILocation(line: 343, column: 2, scope: !20)
!2091 = !DILocation(line: 344, column: 9, scope: !20)
!2092 = !DILocation(line: 344, column: 2, scope: !20)
!2093 = !DILocation(line: 347, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !20, file: !12, line: 347, column: 6)
!2095 = !DILocation(line: 347, column: 11, scope: !2094)
!2096 = !DILocation(line: 347, column: 6, scope: !20)
!2097 = !DILocation(line: 348, column: 14, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2094, file: !12, line: 347, column: 17)
!2099 = !DILocation(line: 348, column: 19, scope: !2098)
!2100 = !DILocation(line: 348, column: 3, scope: !2098)
!2101 = !DILocation(line: 349, column: 2, scope: !2098)
!2102 = !DILocation(line: 347, column: 11, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2094, file: !12, discriminator: 1)
!2104 = !DILocalVariable(name: "i", scope: !2105, file: !12, line: 352, type: !270)
!2105 = distinct !DILexicalBlock(scope: !20, file: !12, line: 352, column: 2)
!2106 = !DILocation(line: 352, column: 14, scope: !2105)
!2107 = !DILocation(line: 352, column: 7, scope: !2105)
!2108 = !DILocation(line: 352, column: 21, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !12, discriminator: 1)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !12, line: 352, column: 2)
!2111 = !DILocation(line: 352, column: 23, scope: !2109)
!2112 = !DILocation(line: 352, column: 2, scope: !2109)
!2113 = !DILocation(line: 353, column: 16, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !12, line: 353, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !12, line: 352, column: 72)
!2116 = !DILocation(line: 353, column: 7, scope: !2114)
!2117 = !DILocation(line: 353, column: 12, scope: !2114)
!2118 = !DILocation(line: 353, column: 7, scope: !2115)
!2119 = !DILocation(line: 354, column: 24, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2114, file: !12, line: 353, column: 20)
!2121 = !DILocation(line: 354, column: 15, scope: !2120)
!2122 = !DILocation(line: 354, column: 20, scope: !2120)
!2123 = !DILocation(line: 354, column: 4, scope: !2120)
!2124 = !DILocation(line: 355, column: 3, scope: !2120)
!2125 = !DILocation(line: 356, column: 2, scope: !2115)
!2126 = !DILocation(line: 352, column: 68, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2110, file: !12, discriminator: 2)
!2128 = !DILocation(line: 352, column: 2, scope: !2127)
!2129 = distinct !{!2129, !2130}
!2130 = !DILocation(line: 352, column: 2, scope: !20)
!2131 = !DILocation(line: 356, column: 2, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2105, file: !12, discriminator: 1)
!2133 = !DILocation(line: 358, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !20, file: !12, line: 358, column: 6)
!2135 = !DILocation(line: 358, column: 11, scope: !2134)
!2136 = !DILocation(line: 358, column: 6, scope: !20)
!2137 = !DILocation(line: 359, column: 27, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !12, line: 358, column: 17)
!2139 = !DILocation(line: 359, column: 32, scope: !2138)
!2140 = !DILocation(line: 359, column: 3, scope: !2138)
!2141 = !DILocation(line: 360, column: 2, scope: !2138)
!2142 = !DILocation(line: 361, column: 18, scope: !20)
!2143 = !DILocation(line: 361, column: 23, scope: !20)
!2144 = !DILocation(line: 361, column: 2, scope: !20)
!2145 = !DILocation(line: 363, column: 18, scope: !20)
!2146 = !DILocation(line: 363, column: 23, scope: !20)
!2147 = !DILocation(line: 363, column: 2, scope: !20)
!2148 = !DILocation(line: 365, column: 7, scope: !20)
!2149 = !DILocation(line: 365, column: 2, scope: !20)
!2150 = !DILocation(line: 367, column: 2, scope: !20)
!2151 = !DILocation(line: 368, column: 1, scope: !20)
!2152 = distinct !DISubprogram(name: "proxy_debug_base", scope: !12, file: !12, line: 146, type: !2153, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64, align: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2157 = !DILocalVariable(name: "ev_base", arg: 1, scope: !2152, file: !12, line: 146, type: !2155)
!2158 = !DILocation(line: 146, column: 43, scope: !2152)
!2159 = !DILocation(line: 149, column: 39, scope: !2152)
!2160 = !DILocation(line: 149, column: 17, scope: !2152)
!2161 = !DILocation(line: 148, column: 2, scope: !2152)
!2162 = !DILocalVariable(name: "f", scope: !2152, file: !12, line: 151, type: !3)
!2163 = !DILocation(line: 151, column: 28, scope: !2152)
!2164 = !DILocation(line: 152, column: 30, scope: !2152)
!2165 = !DILocation(line: 152, column: 6, scope: !2152)
!2166 = !DILocation(line: 152, column: 4, scope: !2152)
!2167 = !DILocation(line: 154, column: 19, scope: !2152)
!2168 = !DILocation(line: 154, column: 21, scope: !2152)
!2169 = !DILocation(line: 154, column: 18, scope: !2152)
!2170 = !DILocation(line: 155, column: 19, scope: !2152)
!2171 = !DILocation(line: 155, column: 21, scope: !2152)
!2172 = !DILocation(line: 155, column: 18, scope: !2152)
!2173 = !DILocation(line: 156, column: 19, scope: !2152)
!2174 = !DILocation(line: 156, column: 21, scope: !2152)
!2175 = !DILocation(line: 156, column: 18, scope: !2152)
!2176 = !DILocation(line: 153, column: 2, scope: !2152)
!2177 = !DILocation(line: 157, column: 1, scope: !2152)
!2178 = distinct !DISubprogram(name: "proxy_listener_setup", scope: !12, file: !12, line: 164, type: !2179, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!1866, !34, !29, !47, !104, !14}
!2181 = !DILocalVariable(name: "evbase", arg: 1, scope: !2178, file: !12, line: 164, type: !34)
!2182 = !DILocation(line: 164, column: 41, scope: !2178)
!2183 = !DILocalVariable(name: "thrmgr", arg: 2, scope: !2178, file: !12, line: 164, type: !29)
!2184 = !DILocation(line: 164, column: 67, scope: !2178)
!2185 = !DILocalVariable(name: "spec", arg: 3, scope: !2178, file: !12, line: 165, type: !47)
!2186 = !DILocation(line: 165, column: 35, scope: !2178)
!2187 = !DILocalVariable(name: "opts", arg: 4, scope: !2178, file: !12, line: 165, type: !104)
!2188 = !DILocation(line: 165, column: 49, scope: !2178)
!2189 = !DILocalVariable(name: "clisock", arg: 5, scope: !2178, file: !12, line: 165, type: !14)
!2190 = !DILocation(line: 165, column: 59, scope: !2178)
!2191 = !DILocalVariable(name: "plc", scope: !2178, file: !12, line: 167, type: !1866)
!2192 = !DILocation(line: 167, column: 24, scope: !2178)
!2193 = !DILocalVariable(name: "fd", scope: !2178, file: !12, line: 168, type: !14)
!2194 = !DILocation(line: 168, column: 6, scope: !2178)
!2195 = !DILocation(line: 170, column: 36, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2178, file: !12, line: 170, column: 6)
!2197 = !DILocation(line: 170, column: 45, scope: !2196)
!2198 = !DILocation(line: 170, column: 12, scope: !2196)
!2199 = !DILocation(line: 170, column: 10, scope: !2196)
!2200 = !DILocation(line: 170, column: 52, scope: !2196)
!2201 = !DILocation(line: 170, column: 6, scope: !2178)
!2202 = !DILocation(line: 172, column: 28, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !12, line: 170, column: 59)
!2204 = !DILocation(line: 172, column: 27, scope: !2203)
!2205 = !DILocation(line: 172, column: 18, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2203, file: !12, discriminator: 1)
!2207 = !DILocation(line: 172, column: 36, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2203, file: !12, discriminator: 2)
!2209 = !DILocation(line: 172, column: 35, scope: !2203)
!2210 = !DILocation(line: 171, column: 3, scope: !2203)
!2211 = !DILocation(line: 173, column: 3, scope: !2203)
!2212 = !DILocation(line: 176, column: 31, scope: !2178)
!2213 = !DILocation(line: 176, column: 39, scope: !2178)
!2214 = !DILocation(line: 176, column: 45, scope: !2178)
!2215 = !DILocation(line: 176, column: 8, scope: !2178)
!2216 = !DILocation(line: 176, column: 6, scope: !2178)
!2217 = !DILocation(line: 177, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2178, file: !12, line: 177, column: 6)
!2219 = !DILocation(line: 177, column: 6, scope: !2178)
!2220 = !DILocation(line: 178, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !12, line: 177, column: 12)
!2222 = !DILocation(line: 179, column: 22, scope: !2221)
!2223 = !DILocation(line: 179, column: 3, scope: !2221)
!2224 = !DILocation(line: 180, column: 3, scope: !2221)
!2225 = !DILocation(line: 183, column: 33, scope: !2178)
!2226 = !DILocation(line: 184, column: 33, scope: !2178)
!2227 = !DILocation(line: 184, column: 66, scope: !2178)
!2228 = !DILocation(line: 183, column: 14, scope: !2178)
!2229 = !DILocation(line: 183, column: 2, scope: !2178)
!2230 = !DILocation(line: 183, column: 7, scope: !2178)
!2231 = !DILocation(line: 183, column: 12, scope: !2178)
!2232 = !DILocation(line: 185, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2178, file: !12, line: 185, column: 6)
!2234 = !DILocation(line: 185, column: 12, scope: !2233)
!2235 = !DILocation(line: 185, column: 6, scope: !2178)
!2236 = !DILocation(line: 187, column: 28, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !12, line: 185, column: 18)
!2238 = !DILocation(line: 187, column: 27, scope: !2237)
!2239 = !DILocation(line: 187, column: 18, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !12, discriminator: 1)
!2241 = !DILocation(line: 186, column: 3, scope: !2237)
!2242 = !DILocation(line: 188, column: 27, scope: !2237)
!2243 = !DILocation(line: 188, column: 3, scope: !2237)
!2244 = !DILocation(line: 189, column: 22, scope: !2237)
!2245 = !DILocation(line: 189, column: 3, scope: !2237)
!2246 = !DILocation(line: 190, column: 3, scope: !2237)
!2247 = !DILocation(line: 192, column: 30, scope: !2178)
!2248 = !DILocation(line: 192, column: 35, scope: !2178)
!2249 = !DILocation(line: 192, column: 2, scope: !2178)
!2250 = !DILocation(line: 193, column: 9, scope: !2178)
!2251 = !DILocation(line: 193, column: 2, scope: !2178)
!2252 = !DILocation(line: 194, column: 1, scope: !2178)
!2253 = distinct !DISubprogram(name: "proxy_signal_cb", scope: !12, file: !12, line: 200, type: !2254, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !14, !2256, !195}
!2256 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!2257 = !DILocalVariable(name: "fd", arg: 1, scope: !2253, file: !12, line: 200, type: !14)
!2258 = !DILocation(line: 200, column: 32, scope: !2253)
!2259 = !DILocalVariable(name: "what", arg: 2, scope: !2253, file: !12, line: 200, type: !2256)
!2260 = !DILocation(line: 200, column: 66, scope: !2253)
!2261 = !DILocalVariable(name: "arg", arg: 3, scope: !2253, file: !12, line: 200, type: !195)
!2262 = !DILocation(line: 200, column: 78, scope: !2253)
!2263 = !DILocalVariable(name: "ctx", scope: !2253, file: !12, line: 202, type: !23)
!2264 = !DILocation(line: 202, column: 15, scope: !2253)
!2265 = !DILocation(line: 202, column: 21, scope: !2253)
!2266 = !DILocation(line: 204, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2253, file: !12, line: 204, column: 6)
!2268 = !DILocation(line: 204, column: 30, scope: !2267)
!2269 = !DILocation(line: 204, column: 37, scope: !2267)
!2270 = !DILocation(line: 204, column: 23, scope: !2267)
!2271 = !DILocation(line: 204, column: 6, scope: !2267)
!2272 = !DILocation(line: 204, column: 6, scope: !2253)
!2273 = !DILocation(line: 205, column: 42, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2267, file: !12, line: 204, column: 49)
!2275 = !DILocation(line: 205, column: 3, scope: !2274)
!2276 = !DILocation(line: 206, column: 2, scope: !2274)
!2277 = !DILocation(line: 208, column: 9, scope: !2253)
!2278 = !DILocation(line: 208, column: 2, scope: !2253)
!2279 = !DILocation(line: 213, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2253, file: !12, line: 208, column: 13)
!2281 = !DILocation(line: 213, column: 3, scope: !2280)
!2282 = !DILocation(line: 214, column: 3, scope: !2280)
!2283 = !DILocation(line: 216, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !12, line: 216, column: 7)
!2285 = !DILocation(line: 216, column: 20, scope: !2284)
!2286 = !DILocation(line: 216, column: 7, scope: !2280)
!2287 = !DILocation(line: 217, column: 4, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !12, line: 216, column: 27)
!2289 = !DILocation(line: 218, column: 3, scope: !2288)
!2290 = !DILocation(line: 219, column: 4, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2284, file: !12, line: 218, column: 10)
!2292 = !DILocation(line: 221, column: 3, scope: !2280)
!2293 = !DILocation(line: 223, column: 3, scope: !2280)
!2294 = !DILocation(line: 224, column: 3, scope: !2280)
!2295 = !DILocation(line: 226, column: 62, scope: !2280)
!2296 = !DILocation(line: 226, column: 3, scope: !2280)
!2297 = !DILocation(line: 227, column: 3, scope: !2280)
!2298 = !DILocation(line: 229, column: 1, scope: !2253)
!2299 = distinct !DISubprogram(name: "proxy_gc_cb", scope: !12, file: !12, line: 235, type: !2254, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2300 = !DILocalVariable(name: "fd", arg: 1, scope: !2299, file: !12, line: 235, type: !14)
!2301 = !DILocation(line: 235, column: 35, scope: !2299)
!2302 = !DILocalVariable(name: "what", arg: 2, scope: !2299, file: !12, line: 235, type: !2256)
!2303 = !DILocation(line: 235, column: 69, scope: !2299)
!2304 = !DILocalVariable(name: "arg", arg: 3, scope: !2299, file: !12, line: 235, type: !195)
!2305 = !DILocation(line: 235, column: 81, scope: !2299)
!2306 = !DILocalVariable(name: "ctx", scope: !2299, file: !12, line: 237, type: !23)
!2307 = !DILocation(line: 237, column: 15, scope: !2299)
!2308 = !DILocation(line: 237, column: 21, scope: !2299)
!2309 = !DILocation(line: 239, column: 25, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2299, file: !12, line: 239, column: 6)
!2311 = !DILocation(line: 239, column: 30, scope: !2310)
!2312 = !DILocation(line: 239, column: 37, scope: !2310)
!2313 = !DILocation(line: 239, column: 23, scope: !2310)
!2314 = !DILocation(line: 239, column: 6, scope: !2310)
!2315 = !DILocation(line: 239, column: 6, scope: !2299)
!2316 = !DILocation(line: 240, column: 3, scope: !2310)
!2317 = !DILocation(line: 242, column: 2, scope: !2299)
!2318 = !DILocation(line: 244, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !12, line: 244, column: 6)
!2320 = !DILocation(line: 244, column: 30, scope: !2319)
!2321 = !DILocation(line: 244, column: 37, scope: !2319)
!2322 = !DILocation(line: 244, column: 23, scope: !2319)
!2323 = !DILocation(line: 244, column: 6, scope: !2319)
!2324 = !DILocation(line: 244, column: 6, scope: !2299)
!2325 = !DILocation(line: 245, column: 3, scope: !2319)
!2326 = !DILocation(line: 246, column: 1, scope: !2299)
!2327 = distinct !DISubprogram(name: "proxy_listener_ctx_free", scope: !12, file: !12, line: 103, type: !2328, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !1866}
!2330 = !DILocalVariable(name: "ctx", arg: 1, scope: !2327, file: !12, line: 103, type: !1866)
!2331 = !DILocation(line: 103, column: 47, scope: !2327)
!2332 = !DILocation(line: 105, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2327, file: !12, line: 105, column: 6)
!2334 = !DILocation(line: 105, column: 11, scope: !2333)
!2335 = !DILocation(line: 105, column: 6, scope: !2327)
!2336 = !DILocation(line: 106, column: 23, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !12, line: 105, column: 17)
!2338 = !DILocation(line: 106, column: 28, scope: !2337)
!2339 = !DILocation(line: 106, column: 3, scope: !2337)
!2340 = !DILocation(line: 107, column: 2, scope: !2337)
!2341 = !DILocation(line: 108, column: 6, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2327, file: !12, line: 108, column: 6)
!2343 = !DILocation(line: 108, column: 11, scope: !2342)
!2344 = !DILocation(line: 108, column: 6, scope: !2327)
!2345 = !DILocation(line: 109, column: 27, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !12, line: 108, column: 17)
!2347 = !DILocation(line: 109, column: 32, scope: !2346)
!2348 = !DILocation(line: 109, column: 3, scope: !2346)
!2349 = !DILocation(line: 110, column: 2, scope: !2346)
!2350 = !DILocation(line: 111, column: 7, scope: !2327)
!2351 = !DILocation(line: 111, column: 2, scope: !2327)
!2352 = !DILocation(line: 112, column: 1, scope: !2327)
!2353 = distinct !DISubprogram(name: "proxy_run", scope: !12, file: !12, line: 375, type: !2354, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !23}
!2356 = !DILocalVariable(name: "ctx", arg: 1, scope: !2353, file: !12, line: 375, type: !23)
!2357 = !DILocation(line: 375, column: 24, scope: !2353)
!2358 = !DILocation(line: 377, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !12, line: 377, column: 6)
!2360 = !DILocation(line: 377, column: 11, scope: !2359)
!2361 = !DILocation(line: 377, column: 17, scope: !2359)
!2362 = !DILocation(line: 377, column: 6, scope: !2353)
!2363 = !DILocation(line: 378, column: 16, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !12, line: 377, column: 25)
!2365 = !DILocation(line: 378, column: 21, scope: !2364)
!2366 = !DILocation(line: 378, column: 3, scope: !2364)
!2367 = !DILocation(line: 379, column: 2, scope: !2364)
!2368 = !DILocation(line: 381, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2353, file: !12, line: 381, column: 6)
!2370 = !DILocation(line: 381, column: 30, scope: !2369)
!2371 = !DILocation(line: 381, column: 37, scope: !2369)
!2372 = !DILocation(line: 381, column: 23, scope: !2369)
!2373 = !DILocation(line: 381, column: 6, scope: !2369)
!2374 = !DILocation(line: 381, column: 6, scope: !2353)
!2375 = !DILocation(line: 382, column: 26, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !12, line: 381, column: 49)
!2377 = !DILocation(line: 382, column: 31, scope: !2376)
!2378 = !DILocation(line: 382, column: 38, scope: !2376)
!2379 = !DILocation(line: 382, column: 3, scope: !2376)
!2380 = !DILocation(line: 383, column: 2, scope: !2376)
!2381 = !DILocation(line: 385, column: 21, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2353, file: !12, line: 385, column: 6)
!2383 = !DILocation(line: 385, column: 26, scope: !2382)
!2384 = !DILocation(line: 385, column: 6, scope: !2382)
!2385 = !DILocation(line: 385, column: 34, scope: !2382)
!2386 = !DILocation(line: 385, column: 6, scope: !2353)
!2387 = !DILocation(line: 386, column: 3, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2382, file: !12, line: 385, column: 41)
!2389 = !DILocation(line: 387, column: 3, scope: !2388)
!2390 = !DILocation(line: 389, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2353, file: !12, line: 389, column: 6)
!2392 = !DILocation(line: 389, column: 30, scope: !2391)
!2393 = !DILocation(line: 389, column: 37, scope: !2391)
!2394 = !DILocation(line: 389, column: 23, scope: !2391)
!2395 = !DILocation(line: 389, column: 6, scope: !2391)
!2396 = !DILocation(line: 389, column: 6, scope: !2353)
!2397 = !DILocation(line: 390, column: 3, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2391, file: !12, line: 389, column: 49)
!2399 = !DILocation(line: 391, column: 2, scope: !2398)
!2400 = !DILocation(line: 392, column: 22, scope: !2353)
!2401 = !DILocation(line: 392, column: 27, scope: !2353)
!2402 = !DILocation(line: 392, column: 2, scope: !2353)
!2403 = !DILocation(line: 393, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2353, file: !12, line: 393, column: 6)
!2405 = !DILocation(line: 393, column: 30, scope: !2404)
!2406 = !DILocation(line: 393, column: 37, scope: !2404)
!2407 = !DILocation(line: 393, column: 23, scope: !2404)
!2408 = !DILocation(line: 393, column: 6, scope: !2404)
!2409 = !DILocation(line: 393, column: 6, scope: !2353)
!2410 = !DILocation(line: 394, column: 3, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !12, line: 393, column: 49)
!2412 = !DILocation(line: 395, column: 2, scope: !2411)
!2413 = !DILocation(line: 396, column: 1, scope: !2353)
!2414 = distinct !DISubprogram(name: "proxy_loopbreak", scope: !12, file: !12, line: 402, type: !2354, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2415 = !DILocalVariable(name: "ctx", arg: 1, scope: !2414, file: !12, line: 402, type: !23)
!2416 = !DILocation(line: 402, column: 30, scope: !2414)
!2417 = !DILocation(line: 404, column: 23, scope: !2414)
!2418 = !DILocation(line: 404, column: 28, scope: !2414)
!2419 = !DILocation(line: 404, column: 2, scope: !2414)
!2420 = !DILocation(line: 405, column: 1, scope: !2414)
!2421 = distinct !DISubprogram(name: "proxy_free", scope: !12, file: !12, line: 411, type: !2354, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2422 = !DILocalVariable(name: "ctx", arg: 1, scope: !2421, file: !12, line: 411, type: !23)
!2423 = !DILocation(line: 411, column: 25, scope: !2421)
!2424 = !DILocation(line: 413, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !12, line: 413, column: 6)
!2426 = !DILocation(line: 413, column: 11, scope: !2425)
!2427 = !DILocation(line: 413, column: 6, scope: !2421)
!2428 = !DILocation(line: 414, column: 14, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !12, line: 413, column: 17)
!2430 = !DILocation(line: 414, column: 19, scope: !2429)
!2431 = !DILocation(line: 414, column: 3, scope: !2429)
!2432 = !DILocation(line: 415, column: 2, scope: !2429)
!2433 = !DILocation(line: 416, column: 6, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2421, file: !12, line: 416, column: 6)
!2435 = !DILocation(line: 416, column: 11, scope: !2434)
!2436 = !DILocation(line: 416, column: 6, scope: !2421)
!2437 = !DILocation(line: 417, column: 27, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !12, line: 416, column: 17)
!2439 = !DILocation(line: 417, column: 32, scope: !2438)
!2440 = !DILocation(line: 417, column: 3, scope: !2438)
!2441 = !DILocation(line: 418, column: 2, scope: !2438)
!2442 = !DILocalVariable(name: "i", scope: !2443, file: !12, line: 419, type: !270)
!2443 = distinct !DILexicalBlock(scope: !2421, file: !12, line: 419, column: 2)
!2444 = !DILocation(line: 419, column: 14, scope: !2443)
!2445 = !DILocation(line: 419, column: 7, scope: !2443)
!2446 = !DILocation(line: 419, column: 21, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2448, file: !12, discriminator: 1)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !12, line: 419, column: 2)
!2449 = !DILocation(line: 419, column: 23, scope: !2447)
!2450 = !DILocation(line: 419, column: 2, scope: !2447)
!2451 = !DILocation(line: 420, column: 16, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !12, line: 420, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !12, line: 419, column: 72)
!2454 = !DILocation(line: 420, column: 7, scope: !2452)
!2455 = !DILocation(line: 420, column: 12, scope: !2452)
!2456 = !DILocation(line: 420, column: 7, scope: !2453)
!2457 = !DILocation(line: 421, column: 24, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2452, file: !12, line: 420, column: 20)
!2459 = !DILocation(line: 421, column: 15, scope: !2458)
!2460 = !DILocation(line: 421, column: 20, scope: !2458)
!2461 = !DILocation(line: 421, column: 4, scope: !2458)
!2462 = !DILocation(line: 422, column: 3, scope: !2458)
!2463 = !DILocation(line: 423, column: 2, scope: !2453)
!2464 = !DILocation(line: 419, column: 68, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2448, file: !12, discriminator: 2)
!2466 = !DILocation(line: 419, column: 2, scope: !2465)
!2467 = distinct !{!2467, !2468}
!2468 = !DILocation(line: 419, column: 2, scope: !2421)
!2469 = !DILocation(line: 424, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2421, file: !12, line: 424, column: 6)
!2471 = !DILocation(line: 424, column: 11, scope: !2470)
!2472 = !DILocation(line: 424, column: 6, scope: !2421)
!2473 = !DILocation(line: 425, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !12, line: 424, column: 19)
!2475 = !DILocation(line: 425, column: 24, scope: !2474)
!2476 = !DILocation(line: 425, column: 3, scope: !2474)
!2477 = !DILocation(line: 426, column: 2, scope: !2474)
!2478 = !DILocation(line: 427, column: 6, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2421, file: !12, line: 427, column: 6)
!2480 = !DILocation(line: 427, column: 11, scope: !2479)
!2481 = !DILocation(line: 427, column: 6, scope: !2421)
!2482 = !DILocation(line: 428, column: 19, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !12, line: 427, column: 19)
!2484 = !DILocation(line: 428, column: 24, scope: !2483)
!2485 = !DILocation(line: 428, column: 3, scope: !2483)
!2486 = !DILocation(line: 429, column: 2, scope: !2483)
!2487 = !DILocation(line: 430, column: 7, scope: !2421)
!2488 = !DILocation(line: 430, column: 2, scope: !2421)
!2489 = !DILocation(line: 431, column: 1, scope: !2421)
!2490 = distinct !DISubprogram(name: "proxy_listener_ctx_new", scope: !12, file: !12, line: 87, type: !2491, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!1866, !29, !47, !104}
!2493 = !DILocalVariable(name: "thrmgr", arg: 1, scope: !2490, file: !12, line: 87, type: !29)
!2494 = !DILocation(line: 87, column: 42, scope: !2490)
!2495 = !DILocalVariable(name: "spec", arg: 2, scope: !2490, file: !12, line: 87, type: !47)
!2496 = !DILocation(line: 87, column: 63, scope: !2490)
!2497 = !DILocalVariable(name: "opts", arg: 3, scope: !2490, file: !12, line: 88, type: !104)
!2498 = !DILocation(line: 88, column: 32, scope: !2490)
!2499 = !DILocalVariable(name: "ctx", scope: !2490, file: !12, line: 90, type: !1866)
!2500 = !DILocation(line: 90, column: 24, scope: !2490)
!2501 = !DILocation(line: 90, column: 30, scope: !2490)
!2502 = !DILocation(line: 91, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2490, file: !12, line: 91, column: 6)
!2504 = !DILocation(line: 91, column: 6, scope: !2490)
!2505 = !DILocation(line: 92, column: 3, scope: !2503)
!2506 = !DILocation(line: 93, column: 9, scope: !2490)
!2507 = !DILocation(line: 93, column: 2, scope: !2490)
!2508 = !DILocation(line: 94, column: 16, scope: !2490)
!2509 = !DILocation(line: 94, column: 2, scope: !2490)
!2510 = !DILocation(line: 94, column: 7, scope: !2490)
!2511 = !DILocation(line: 94, column: 14, scope: !2490)
!2512 = !DILocation(line: 95, column: 14, scope: !2490)
!2513 = !DILocation(line: 95, column: 2, scope: !2490)
!2514 = !DILocation(line: 95, column: 7, scope: !2490)
!2515 = !DILocation(line: 95, column: 12, scope: !2490)
!2516 = !DILocation(line: 96, column: 14, scope: !2490)
!2517 = !DILocation(line: 96, column: 2, scope: !2490)
!2518 = !DILocation(line: 96, column: 7, scope: !2490)
!2519 = !DILocation(line: 96, column: 12, scope: !2490)
!2520 = !DILocation(line: 97, column: 9, scope: !2490)
!2521 = !DILocation(line: 97, column: 2, scope: !2490)
!2522 = !DILocation(line: 98, column: 1, scope: !2490)
!2523 = distinct !DISubprogram(name: "proxy_listener_acceptcb", scope: !12, file: !12, line: 118, type: !2524, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !1854, !14, !87, !14, !195}
!2526 = !DILocalVariable(name: "listener", arg: 1, scope: !2523, file: !12, line: 118, type: !1854)
!2527 = !DILocation(line: 118, column: 72, scope: !2523)
!2528 = !DILocalVariable(name: "fd", arg: 2, scope: !2523, file: !12, line: 119, type: !14)
!2529 = !DILocation(line: 119, column: 40, scope: !2523)
!2530 = !DILocalVariable(name: "peeraddr", arg: 3, scope: !2523, file: !12, line: 120, type: !87)
!2531 = !DILocation(line: 120, column: 42, scope: !2523)
!2532 = !DILocalVariable(name: "peeraddrlen", arg: 4, scope: !2523, file: !12, line: 120, type: !14)
!2533 = !DILocation(line: 120, column: 56, scope: !2523)
!2534 = !DILocalVariable(name: "arg", arg: 5, scope: !2523, file: !12, line: 121, type: !195)
!2535 = !DILocation(line: 121, column: 31, scope: !2523)
!2536 = !DILocalVariable(name: "cfg", scope: !2523, file: !12, line: 123, type: !1866)
!2537 = !DILocation(line: 123, column: 24, scope: !2523)
!2538 = !DILocation(line: 123, column: 30, scope: !2523)
!2539 = !DILocation(line: 125, column: 17, scope: !2523)
!2540 = !DILocation(line: 125, column: 21, scope: !2523)
!2541 = !DILocation(line: 125, column: 31, scope: !2523)
!2542 = !DILocation(line: 125, column: 44, scope: !2523)
!2543 = !DILocation(line: 125, column: 49, scope: !2523)
!2544 = !DILocation(line: 126, column: 17, scope: !2523)
!2545 = !DILocation(line: 126, column: 22, scope: !2523)
!2546 = !DILocation(line: 126, column: 28, scope: !2523)
!2547 = !DILocation(line: 126, column: 33, scope: !2523)
!2548 = !DILocation(line: 125, column: 2, scope: !2523)
!2549 = !DILocation(line: 127, column: 1, scope: !2523)
!2550 = distinct !DISubprogram(name: "proxy_listener_errorcb", scope: !12, file: !12, line: 133, type: !2551, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1859)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !1854, !195}
!2553 = !DILocalVariable(name: "listener", arg: 1, scope: !2550, file: !12, line: 133, type: !1854)
!2554 = !DILocation(line: 133, column: 47, scope: !2550)
!2555 = !DILocalVariable(name: "ctx", arg: 2, scope: !2550, file: !12, line: 133, type: !195)
!2556 = !DILocation(line: 133, column: 87, scope: !2550)
!2557 = !DILocalVariable(name: "evbase", scope: !2550, file: !12, line: 135, type: !34)
!2558 = !DILocation(line: 135, column: 21, scope: !2550)
!2559 = !DILocation(line: 135, column: 54, scope: !2550)
!2560 = !DILocation(line: 135, column: 30, scope: !2550)
!2561 = !DILocalVariable(name: "err", scope: !2550, file: !12, line: 136, type: !14)
!2562 = !DILocation(line: 136, column: 6, scope: !2550)
!2563 = !DILocation(line: 136, column: 14, scope: !2550)
!2564 = !DILocation(line: 136, column: 13, scope: !2550)
!2565 = !DILocation(line: 137, column: 47, scope: !2550)
!2566 = !DILocation(line: 138, column: 16, scope: !2550)
!2567 = !DILocation(line: 138, column: 17, scope: !2550)
!2568 = !DILocation(line: 137, column: 2, scope: !2550)
!2569 = !DILocation(line: 139, column: 23, scope: !2550)
!2570 = !DILocation(line: 139, column: 2, scope: !2550)
!2571 = !DILocation(line: 140, column: 1, scope: !2550)
