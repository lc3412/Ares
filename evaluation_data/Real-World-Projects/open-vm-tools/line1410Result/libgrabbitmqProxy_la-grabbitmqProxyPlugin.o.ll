; ModuleID = './libgrabbitmqProxy_la-grabbitmqProxyPlugin.o.i'
source_filename = "./libgrabbitmqProxy_la-grabbitmqProxyPlugin.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ToolsPluginData = type { i8*, %struct._GArray*, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)*, i8* }
%struct._GArray = type { i8*, i32 }
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct.GuestProxyData = type { %struct.AsyncSocket*, %struct.AsyncSocket*, %struct._GList*, %struct.ToolsAppCtx*, i32, i32 }
%struct.AsyncSocket = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.3, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
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
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
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
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.ssl3_enc_method = type opaque
%struct.stack_st_SSL_CIPHER = type { %struct.stack_st }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32 }
%struct.stack_st_X509_OBJECT = type { %struct.stack_st }
%struct.stack_st_X509_LOOKUP = type { %struct.stack_st }
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st }
%struct.stack_st_X509_CRL = type { %struct.stack_st }
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, [20 x i8], %struct.stack_st_GENERAL_NAMES*, %struct.x509_crl_method_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.AUTHORITY_KEYID_st = type opaque
%struct.ISSUING_DIST_POINT_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.2, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.2 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type opaque
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type { %struct.stack_st }
%struct.stack_st_X509_ALGOR = type { %struct.stack_st }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i8*, i8*, i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st_SSL_CIPHER*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i8*, i64, i8*, i8*, i64, i64, i8* }
%struct.sess_cert_st = type opaque
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.env_md_st = type { i32, i32, i32, i64, i32 (%struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*, i8*, i64)*, i32 (%struct.env_md_ctx_st*, i8*)*, i32 (%struct.env_md_ctx_st*, %struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*)*, i32 (i32, i8*, i32, i8*, i32*, i8*)*, i32 (i32, i8*, i32, i8*, i32, i8*)*, [5 x i32], i32, i32, i32 (%struct.env_md_ctx_st*, i32, i32, i8*)* }
%struct.stack_st_X509 = type { %struct.stack_st }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.stack_st_X509_NAME = type { %struct.stack_st }
%struct.cert_st = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i64, i64, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.X509_VERIFY_PARAM_ID_st* }
%struct.X509_VERIFY_PARAM_ID_st = type opaque
%struct.engine_st = type opaque
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct._ConnInfo = type { i8, %struct.AsyncSocket*, void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)*, i32, i32, i8*, i32, i32, i32, %struct._ConnInfo* }
%struct._GError = type { i32, i32, i8* }
%struct.DataMap = type { %struct.HashMap*, i64 }
%struct.HashMap = type opaque
%struct.ToolsPluginSignalCb = type { i8*, i8*, i8* }
%struct.ToolsAppReg = type { i32, %struct._GArray* }
%struct.sockaddr_vm = type { i16, i16, i32, i32, [4 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.AsyncSocketPollParams = type { i32, %struct.MXUserRecLock*, %struct.PollClassSet, %struct.IVmdbPoll* }
%struct.MXUserRecLock = type opaque
%struct.PollClassSet = type { i64 }
%struct.IVmdbPoll = type opaque

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [18 x i8] c"vmxSendBufferSize\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"vmxRecvBufferSize\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"grabbitmqProxy\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Entering %s\0A\00", align 1
@__FUNCTION__.VmxListenSockConnectedCb = private unnamed_addr constant [25 x i8] c"VmxListenSockConnectedCb\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Got vmx connection, socket=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Socket %d is not connected, closing\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Cannot set VSOCK buffer size minima, closing socket %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Could not allocate memory, closing socket %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Error in set error handler for socket %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [86 x i8] c"Could not find RabbitMQ client connection for vmx connection, closing connection ...\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"rmqClientSendBuffer\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"rmqClientRecvBuffer\00", align 1
@__FUNCTION__.RmqListenSockConnectedCb = private unnamed_addr constant [25 x i8] c"RmqListenSockConnectedCb\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Got new RabbitMQ client connection %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Socket %d is not connected, closing.\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Closing socket %d due to error.\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Closing socket %d due to the invalid ssl context.\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"%s: SSL Library Directory is %s\0A\00", align 1
@__FUNCTION__.GRabbitmqProxyGetSSLLibPath = private unnamed_addr constant [28 x i8] c"GRabbitmqProxyGetSSLLibPath\00", align 1
@ToolsOnLoad.regData = internal global %struct.ToolsPluginData { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), %struct._GArray* null, i32 (%struct.ToolsAppCtx*, i32, i8*, %struct.ToolsPluginData*)* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"tcs_shutdown\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tcs_set_option\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"vmsvc\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"vmusr\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"Unknown container '%s', not loading grabbitmqProxyPlugin.\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"The Guest RabbitMQ Proxy is up and running ...\0A\00", align 1
@proxyData = internal global %struct.GuestProxyData zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"grabbitmqproxy\00", align 1
@__FUNCTION__.VmxConnRecvedCb = private unnamed_addr constant [16 x i8] c"VmxConnRecvedCb\00", align 1
@__FUNCTION__.ProcessPacketHeaderLen = private unnamed_addr constant [23 x i8] c"ProcessPacketHeaderLen\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"Could not allocate recv buffer for socket %d, closing connection.\0A\00", align 1
@__FUNCTION__.CloseConn = private unnamed_addr constant [10 x i8] c"CloseConn\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Closing %s connection %d\0A\00", align 1
@__FUNCTION__.ShutDownConn = private unnamed_addr constant [13 x i8] c"ShutDownConn\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Shutting down %s connection %d.\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Temporarily stop reading from socket %d.\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"vmx\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Error in AsyncSocket_Recv for socket %d: %s\0A\00", align 1
@__FUNCTION__.ProcessVmxDataPacket = private unnamed_addr constant [21 x i8] c"ProcessVmxDataPacket\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"Could not allocate buffer for socket %d, closing connection.\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Closing connection %d as instructed.\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Unknown dataMap packet type from connection %d!\0A\00", align 1
@__FUNCTION__.SendToConn = private unnamed_addr constant [11 x i8] c"SendToConn\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"Error in AsyncSocket_Send for socket %d, closing connection: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Sending %d bytes to socket %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Socket %d sendQueueLen = %d\0A\00", align 1
@__FUNCTION__.ConnSendDoneCb = private unnamed_addr constant [15 x i8] c"ConnSendDoneCb\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"Closing %s connection %d as sendbuffer is now empty.\0A\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"%d bytes sent to %s connection %d, sendQueueLen = %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Restart reading from connection %d.\0A\00", align 1
@__FUNCTION__.ConnErrorHandlerCb = private unnamed_addr constant [19 x i8] c"ConnErrorHandlerCb\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Error code %d, on %s connection %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"Error in allocating recv buffer for socket %d, closing connection.\0A\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"Error in AsyncSocket_RecvPartial for socket %d: %s\0A\00", align 1
@TheSslContext.sslCtx = internal global %struct.ssl_ctx_st* null, align 8
@.str.44 = private unnamed_addr constant [32 x i8] c"Cannot create the SSL context.\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Cannot find the certificate file\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Cannot load the certificate file: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"Cannot find the key file\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Cannot load the key file: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"Cannot find the trusted client certificate directory\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"Cannot load the trusted cert directory: %s\0A\00", align 1
@GetSslCertFile.certFile = internal global i8* null, align 8
@.str.51 = private unnamed_addr constant [21 x i8] c"%s%sserver%scert.pem\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@GetProxyDataDir.proxyDataDir = internal global i8* null, align 8
@.str.53 = private unnamed_addr constant [19 x i8] c"%s%sGuestProxyData\00", align 1
@GetSslKeyFile.keyFile = internal global i8* null, align 8
@.str.54 = private unnamed_addr constant [20 x i8] c"%s%sserver%skey.pem\00", align 1
@GetSslTrustDir.trustDir = internal global i8* null, align 8
@.str.55 = private unnamed_addr constant [12 x i8] c"%s%strusted\00", align 1
@__FUNCTION__.RmqClientSockHandShakeCb = private unnamed_addr constant [25 x i8] c"RmqClientSockHandShakeCb\00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"Failed SSL hand shake in socket %d, closing connection.\0A\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"Established new RabbitMQ client connection %d.\0A\00", align 1
@.str.58 = private unnamed_addr constant [83 x i8] c"Closing RabbitMQ client connection %d due to error in sending connection request!\0A\00", align 1
@__FUNCTION__.SendVmxConnectRequest = private unnamed_addr constant [22 x i8] c"SendVmxConnectRequest\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Error in socket getsockname: error=%d.\0A\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"xrabbitmqProxy.connect %d\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Failed to send connect request to VMX RabbitMQ Proxy.\0A\00", align 1
@__FUNCTION__.RmqClientConnRecvedCb = private unnamed_addr constant [22 x i8] c"RmqClientConnRecvedCb\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Recved %d bytes from client connection %d\0A\00", align 1
@__FUNCTION__.SendToVmxRmqProxy = private unnamed_addr constant [18 x i8] c"SendToVmxRmqProxy\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"Error in allocating memory.\0A\00", align 1
@.str.65 = private unnamed_addr constant [72 x i8] c"Error in dataMap encoding for socket %d, error=%d, closing connection.\0A\00", align 1
@__FUNCTION__.GRabbitmqProxyShutdown = private unnamed_addr constant [23 x i8] c"GRabbitmqProxyShutdown\00", align 1
@__FUNCTION__.GRabbitmqProxyDisableMessageTunnelling = private unnamed_addr constant [39 x i8] c"GRabbitmqProxyDisableMessageTunnelling\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"enableMessageBusTunnel\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__FUNCTION__.GRabbitmqProxyEnableMessageTunnelling = private unnamed_addr constant [38 x i8] c"GRabbitmqProxyEnableMessageTunnelling\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"Failed to get vc uuid, disable the rabbitmq proxy\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"Failed to publish vc uuid, disable the rabbitmq proxy\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"The proxy is disabled due to initialization error.\0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"xrabbitmqProxy.getVmVcUuid\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c"Guest rpc call to VMX failed, cannot retrieve vc uuid from vmx.\0A\00", align 1
@.str.74 = private unnamed_addr constant [63 x i8] c"Guest rpc call to VMX failed, the returned vc uuid too large.\0A\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Guest rpc call to VMX, retrieved vc uuid %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"Cannot find out the VM VC UUID path\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Cannot create directory %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"%s%svm.vc.uuid\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"grabbitmqProxyPlugin.c\00", align 1
@__func__.PublishVmVcUuid = private unnamed_addr constant [16 x i8] c"PublishVmVcUuid\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"Cannot write the vc uuid to file %s, %s\0A\00", align 1
@GetVmVcUuidDir.vmVcUuidDir = internal global i8* null, align 8
@.str.82 = private unnamed_addr constant [13 x i8] c"%s%sVmVcUuid\00", align 1
@__FUNCTION__.CreateVmxListenSocket = private unnamed_addr constant [22 x i8] c"CreateVmxListenSocket\00", align 1
@.str.83 = private unnamed_addr constant [64 x i8] c"Could not create listening socket for VMX proxy connection: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"/dev/vsock\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"/vmfs/devices/char/vsock/vsock\00", align 1
@__FUNCTION__.CreateRmqListenSocket = private unnamed_addr constant [22 x i8] c"CreateRmqListenSocket\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"enableNetworkConnections\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"Error in creating listening socket for RabbitMQ client: %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"maxSendQueueLen\00", align 1

; Function Attrs: nounwind uwtable
define void @VmxListenSockConnectedCb(%struct.AsyncSocket*, i8*) #0 !dbg !1882 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._ConnInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !1885, metadata !1886), !dbg !1887
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1888, metadata !1886), !dbg !1889
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1890, metadata !1886), !dbg !1891
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1892, metadata !1886), !dbg !1893
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1894
  %11 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %10), !dbg !1895
  store i32 %11, i32* %6, align 4, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %7, metadata !1896, metadata !1886), !dbg !1897
  store %struct._ConnInfo* null, %struct._ConnInfo** %7, align 8, !dbg !1897
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1898, metadata !1886), !dbg !1899
  %12 = call i32 @GetConfigInt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 65536), !dbg !1900
  store i32 %12, i32* %8, align 4, !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1901, metadata !1886), !dbg !1902
  %13 = call i32 @GetConfigInt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 65536), !dbg !1903
  store i32 %13, i32* %9, align 4, !dbg !1902
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.VmxListenSockConnectedCb, i32 0, i32 0)), !dbg !1904
  %14 = load i32, i32* %6, align 4, !dbg !1905
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %14), !dbg !1906
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1907
  %16 = call i32 @AsyncSocket_GetState(%struct.AsyncSocket* %15), !dbg !1909
  %17 = icmp ne i32 %16, 2, !dbg !1910
  br i1 %17, label %18, label %20, !dbg !1911

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %6, align 4, !dbg !1912
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32 %19), !dbg !1914
  br label %71, !dbg !1915

; <label>:20:                                     ; preds = %2
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1916
  %22 = load i32, i32* %8, align 4, !dbg !1918
  %23 = load i32, i32* %9, align 4, !dbg !1919
  %24 = call signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket* %21, i32 %22, i32 %23), !dbg !1920
  %25 = icmp ne i8 %24, 0, !dbg !1920
  br i1 %25, label %28, label %26, !dbg !1921

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %6, align 4, !dbg !1922
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0), i32 %27), !dbg !1924
  br label %71, !dbg !1925

; <label>:28:                                     ; preds = %20
  %29 = call noalias i8* @calloc(i64 1, i64 80) #9, !dbg !1926
  %30 = bitcast i8* %29 to %struct._ConnInfo*, !dbg !1926
  store %struct._ConnInfo* %30, %struct._ConnInfo** %7, align 8, !dbg !1927
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1928
  %32 = icmp eq %struct._ConnInfo* %31, null, !dbg !1930
  br i1 %32, label %33, label %35, !dbg !1931

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %6, align 4, !dbg !1932
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 %34), !dbg !1934
  br label %71, !dbg !1935

; <label>:35:                                     ; preds = %28
  %36 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1936
  %37 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1937
  %38 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %37, i32 0, i32 1, !dbg !1938
  store %struct.AsyncSocket* %36, %struct.AsyncSocket** %38, align 8, !dbg !1939
  %39 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1940
  %40 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %39, i32 0, i32 2, !dbg !1941
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* @VmxConnRecvedCb, void (i8*, i32, %struct.AsyncSocket*, i8*)** %40, align 8, !dbg !1942
  %41 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1943
  %42 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %41, i32 0, i32 3, !dbg !1944
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* @ConnSendDoneCb, void (i8*, i32, %struct.AsyncSocket*, i8*)** %42, align 8, !dbg !1945
  %43 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1946
  %44 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %43, i32 0, i32 4, !dbg !1947
  store void (i32, %struct.AsyncSocket*, i8*)* @ConnErrorHandlerCb, void (i32, %struct.AsyncSocket*, i8*)** %44, align 8, !dbg !1948
  %45 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1949
  %46 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1950
  %47 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %46, i32 0, i32 4, !dbg !1951
  %48 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %47, align 8, !dbg !1951
  %49 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1952
  %50 = bitcast %struct._ConnInfo* %49 to i8*, !dbg !1952
  %51 = call i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket* %45, void (i32, %struct.AsyncSocket*, i8*)* %48, i8* %50), !dbg !1953
  store i32 %51, i32* %5, align 4, !dbg !1954
  %52 = load i32, i32* %5, align 4, !dbg !1955
  %53 = icmp ne i32 %52, 0, !dbg !1957
  br i1 %53, label %54, label %56, !dbg !1958

; <label>:54:                                     ; preds = %35
  %55 = load i32, i32* %6, align 4, !dbg !1959
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %55), !dbg !1961
  br label %71, !dbg !1962

; <label>:56:                                     ; preds = %35
  %57 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1963
  %58 = call signext i8 @AssignVmxConn(%struct._ConnInfo* %57), !dbg !1965
  %59 = icmp ne i8 %58, 0, !dbg !1965
  br i1 %59, label %61, label %60, !dbg !1966

; <label>:60:                                     ; preds = %56
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.9, i32 0, i32 0)), !dbg !1967
  br label %71, !dbg !1969

; <label>:61:                                     ; preds = %56
  %62 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1970
  %63 = call i32 @StartRecvFromVmx(%struct._ConnInfo* %62), !dbg !1972
  %64 = icmp ne i32 %63, 0, !dbg !1972
  br i1 %64, label %65, label %70, !dbg !1973

; <label>:65:                                     ; preds = %61
  %66 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1974
  %67 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %66, i32 0, i32 11, !dbg !1976
  %68 = load %struct._ConnInfo*, %struct._ConnInfo** %67, align 8, !dbg !1976
  %69 = call i32 @StartRecvFromRmqClient(%struct._ConnInfo* %68), !dbg !1977
  br label %70, !dbg !1978

; <label>:70:                                     ; preds = %65, %61
  br label %76, !dbg !1979

; <label>:71:                                     ; preds = %60, %54, %33, %26, %18
  %72 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1980
  %73 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %72), !dbg !1981
  %74 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1982
  %75 = bitcast %struct._ConnInfo* %74 to i8*, !dbg !1982
  call void @free(i8* %75) #9, !dbg !1983
  br label %76, !dbg !1984

; <label>:76:                                     ; preds = %71, %70
  ret void, !dbg !1985
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @AsyncSocket_GetFd(%struct.AsyncSocket*) #2

; Function Attrs: nounwind uwtable
define internal i32 @GetConfigInt(i8*, i32) #0 !dbg !1987 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GError*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1990, metadata !1886), !dbg !1991
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1992, metadata !1886), !dbg !1993
  call void @llvm.dbg.declare(metadata %struct._GError** %6, metadata !1994, metadata !1886), !dbg !2007
  store %struct._GError* null, %struct._GError** %6, align 8, !dbg !2007
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2008, metadata !1886), !dbg !2009
  %8 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 3), align 8, !dbg !2010
  %9 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %8, i32 0, i32 6, !dbg !2011
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !2011
  %11 = load i8*, i8** %4, align 8, !dbg !2012
  %12 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* %11, %struct._GError** %6), !dbg !2013
  store i32 %12, i32* %7, align 4, !dbg !2009
  %13 = load %struct._GError*, %struct._GError** %6, align 8, !dbg !2014
  %14 = icmp ne %struct._GError* %13, null, !dbg !2014
  br i1 %14, label %15, label %17, !dbg !2016

; <label>:15:                                     ; preds = %2
  call void @g_clear_error(%struct._GError** %6), !dbg !2017
  %16 = load i32, i32* %5, align 4, !dbg !2019
  store i32 %16, i32* %3, align 4, !dbg !2020
  br label %19, !dbg !2020

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %7, align 4, !dbg !2021
  store i32 %18, i32* %3, align 4, !dbg !2022
  br label %19, !dbg !2022

; <label>:19:                                     ; preds = %17, %15
  %20 = load i32, i32* %3, align 4, !dbg !2023
  ret i32 %20, !dbg !2023
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @AsyncSocket_GetState(%struct.AsyncSocket*) #2

declare signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket*, i32, i32) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @VmxConnRecvedCb(i8*, i32, %struct.AsyncSocket*, i8*) #0 !dbg !2024 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AsyncSocket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._ConnInfo*, align 8
  %10 = alloca %struct.DataMap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2025, metadata !1886), !dbg !2026
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2027, metadata !1886), !dbg !2028
  store %struct.AsyncSocket* %2, %struct.AsyncSocket** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %7, metadata !2029, metadata !1886), !dbg !2030
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2031, metadata !1886), !dbg !2032
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %9, metadata !2033, metadata !1886), !dbg !2034
  %13 = load i8*, i8** %8, align 8, !dbg !2035
  %14 = bitcast i8* %13 to %struct._ConnInfo*, !dbg !2036
  store %struct._ConnInfo* %14, %struct._ConnInfo** %9, align 8, !dbg !2034
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.VmxConnRecvedCb, i32 0, i32 0)), !dbg !2037
  %15 = load i8*, i8** %5, align 8, !dbg !2038
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2040
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 6, !dbg !2041
  %18 = bitcast i32* %17 to i8*, !dbg !2042
  %19 = icmp eq i8* %15, %18, !dbg !2043
  br i1 %19, label %20, label %23, !dbg !2044

; <label>:20:                                     ; preds = %4
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2045
  %22 = load i32, i32* %6, align 4, !dbg !2047
  call void @ProcessPacketHeaderLen(%struct._ConnInfo* %21, i32 %22), !dbg !2048
  br label %43, !dbg !2049

; <label>:23:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.DataMap* %10, metadata !2050, metadata !1886), !dbg !2064
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2065, metadata !1886), !dbg !2067
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2068, metadata !1886), !dbg !2069
  %24 = load i32, i32* %6, align 4, !dbg !2070
  %25 = sext i32 %24 to i64, !dbg !2070
  %26 = add i64 %25, 4, !dbg !2071
  %27 = trunc i64 %26 to i32, !dbg !2070
  store i32 %27, i32* %12, align 4, !dbg !2069
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2072
  %29 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %28, i32 0, i32 7, !dbg !2073
  %30 = load i8*, i8** %29, align 8, !dbg !2073
  %31 = load i32, i32* %12, align 4, !dbg !2074
  %32 = call i32 @DataMap_Deserialize(i8* %30, i32 %31, %struct.DataMap* %10), !dbg !2075
  store i32 %32, i32* %11, align 4, !dbg !2076
  %33 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2077
  %34 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %33, i32 0, i32 11, !dbg !2079
  %35 = load %struct._ConnInfo*, %struct._ConnInfo** %34, align 8, !dbg !2079
  %36 = call i32 @ProcessVmxDataPacket(%struct._ConnInfo* %35, %struct.DataMap* %10), !dbg !2080
  %37 = icmp ne i32 %36, 0, !dbg !2080
  br i1 %37, label %38, label %41, !dbg !2081

; <label>:38:                                     ; preds = %23
  %39 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2082
  %40 = call i32 @StartRecvFromVmx(%struct._ConnInfo* %39), !dbg !2084
  br label %41, !dbg !2085

; <label>:41:                                     ; preds = %38, %23
  %42 = call i32 @DataMap_Destroy(%struct.DataMap* %10), !dbg !2086
  br label %43

; <label>:43:                                     ; preds = %41, %20
  ret void, !dbg !2087
}

; Function Attrs: nounwind uwtable
define internal void @ConnSendDoneCb(i8*, i32, %struct.AsyncSocket*, i8*) #0 !dbg !2088 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AsyncSocket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._ConnInfo*, align 8
  %10 = alloca %struct._ConnInfo*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2089, metadata !1886), !dbg !2090
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2091, metadata !1886), !dbg !2092
  store %struct.AsyncSocket* %2, %struct.AsyncSocket** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %7, metadata !2093, metadata !1886), !dbg !2094
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2095, metadata !1886), !dbg !2096
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %9, metadata !2097, metadata !1886), !dbg !2098
  %11 = load i8*, i8** %8, align 8, !dbg !2099
  %12 = bitcast i8* %11 to %struct._ConnInfo*, !dbg !2100
  store %struct._ConnInfo* %12, %struct._ConnInfo** %9, align 8, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %10, metadata !2101, metadata !1886), !dbg !2102
  %13 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2103
  %14 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %13, i32 0, i32 11, !dbg !2104
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %14, align 8, !dbg !2104
  store %struct._ConnInfo* %15, %struct._ConnInfo** %10, align 8, !dbg !2102
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.ConnSendDoneCb, i32 0, i32 0)), !dbg !2105
  %16 = load i8*, i8** %5, align 8, !dbg !2106
  call void @free(i8* %16) #9, !dbg !2107
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %7, align 8, !dbg !2108
  %18 = call i32 @AsyncSocket_GetState(%struct.AsyncSocket* %17), !dbg !2110
  %19 = icmp ne i32 %18, 2, !dbg !2111
  br i1 %19, label %20, label %21, !dbg !2112

; <label>:20:                                     ; preds = %4
  br label %88, !dbg !2113

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %6, align 4, !dbg !2115
  %23 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2116
  %24 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %23, i32 0, i32 9, !dbg !2117
  %25 = load i32, i32* %24, align 4, !dbg !2118
  %26 = sub nsw i32 %25, %22, !dbg !2118
  store i32 %26, i32* %24, align 4, !dbg !2118
  %27 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2119
  %28 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %27, i32 0, i32 9, !dbg !2121
  %29 = load i32, i32* %28, align 4, !dbg !2121
  %30 = icmp eq i32 %29, 0, !dbg !2122
  br i1 %30, label %31, label %44, !dbg !2123

; <label>:31:                                     ; preds = %21
  %32 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2124
  %33 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %32, i32 0, i32 5, !dbg !2126
  %34 = load i32, i32* %33, align 8, !dbg !2126
  %35 = icmp ne i32 %34, 0, !dbg !2124
  br i1 %35, label %36, label %44, !dbg !2127

; <label>:36:                                     ; preds = %31
  %37 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2128
  %38 = call i8* @GetConnName(%struct._ConnInfo* %37), !dbg !2130
  %39 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2131
  %40 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %39, i32 0, i32 1, !dbg !2132
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %40, align 8, !dbg !2132
  %42 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %41), !dbg !2133
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i32 0, i32 0), i8* %38, i32 %42), !dbg !2135
  %43 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2137
  call void @CloseConn(%struct._ConnInfo* %43), !dbg !2138
  br label %88, !dbg !2139

; <label>:44:                                     ; preds = %31, %21
  %45 = load i32, i32* %6, align 4, !dbg !2140
  %46 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2141
  %47 = call i8* @GetConnName(%struct._ConnInfo* %46), !dbg !2142
  %48 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2143
  %49 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %48, i32 0, i32 1, !dbg !2144
  %50 = load %struct.AsyncSocket*, %struct.AsyncSocket** %49, align 8, !dbg !2144
  %51 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %50), !dbg !2145
  %52 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2147
  %53 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %52, i32 0, i32 9, !dbg !2148
  %54 = load i32, i32* %53, align 4, !dbg !2148
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i32 0, i32 0), i32 %45, i8* %47, i32 %51, i32 %54), !dbg !2149
  %55 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2151
  %56 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %55, i32 0, i32 5, !dbg !2153
  %57 = load i32, i32* %56, align 8, !dbg !2153
  %58 = icmp ne i32 %57, 0, !dbg !2154
  br i1 %58, label %88, label %59, !dbg !2155

; <label>:59:                                     ; preds = %44
  %60 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2156
  %61 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %60, i32 0, i32 10, !dbg !2158
  %62 = load i32, i32* %61, align 8, !dbg !2158
  %63 = icmp ne i32 %62, 0, !dbg !2156
  br i1 %63, label %64, label %88, !dbg !2159

; <label>:64:                                     ; preds = %59
  %65 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2160
  %66 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %65, i32 0, i32 9, !dbg !2161
  %67 = load i32, i32* %66, align 4, !dbg !2161
  %68 = load i32, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 5), align 4, !dbg !2162
  %69 = icmp slt i32 %67, %68, !dbg !2163
  br i1 %69, label %70, label %88, !dbg !2164

; <label>:70:                                     ; preds = %64
  %71 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2165
  %72 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %71, i32 0, i32 1, !dbg !2167
  %73 = load %struct.AsyncSocket*, %struct.AsyncSocket** %72, align 8, !dbg !2167
  %74 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %73), !dbg !2168
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0), i32 %74), !dbg !2169
  %75 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2171
  %76 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %75, i32 0, i32 10, !dbg !2172
  store i32 0, i32* %76, align 8, !dbg !2173
  %77 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2174
  %78 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %77, i32 0, i32 0, !dbg !2176
  %79 = load i8, i8* %78, align 8, !dbg !2176
  %80 = icmp ne i8 %79, 0, !dbg !2174
  br i1 %80, label %81, label %84, !dbg !2177

; <label>:81:                                     ; preds = %70
  %82 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2178
  %83 = call i32 @StartRecvFromRmqClient(%struct._ConnInfo* %82), !dbg !2180
  br label %87, !dbg !2181

; <label>:84:                                     ; preds = %70
  %85 = load %struct._ConnInfo*, %struct._ConnInfo** %10, align 8, !dbg !2182
  %86 = call i32 @StartRecvFromVmx(%struct._ConnInfo* %85), !dbg !2184
  br label %87

; <label>:87:                                     ; preds = %84, %81
  br label %88, !dbg !2185

; <label>:88:                                     ; preds = %20, %36, %87, %64, %59, %44
  ret void, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal void @ConnErrorHandlerCb(i32, %struct.AsyncSocket*, i8*) #0 !dbg !2187 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._ConnInfo*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2188, metadata !1886), !dbg !2189
  store %struct.AsyncSocket* %1, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !2190, metadata !1886), !dbg !2191
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2192, metadata !1886), !dbg !2193
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %7, metadata !2194, metadata !1886), !dbg !2195
  %8 = load i8*, i8** %6, align 8, !dbg !2196
  %9 = bitcast i8* %8 to %struct._ConnInfo*, !dbg !2197
  store %struct._ConnInfo* %9, %struct._ConnInfo** %7, align 8, !dbg !2195
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.ConnErrorHandlerCb, i32 0, i32 0)), !dbg !2198
  %10 = load i32, i32* %4, align 4, !dbg !2199
  %11 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2200
  %12 = call i8* @GetConnName(%struct._ConnInfo* %11), !dbg !2201
  %13 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2202
  %14 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %13, i32 0, i32 1, !dbg !2203
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %14, align 8, !dbg !2203
  %16 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %15), !dbg !2204
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i32 %10, i8* %12, i32 %16), !dbg !2206
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2208
  call void @CloseConn(%struct._ConnInfo* %17), !dbg !2209
  ret void, !dbg !2210
}

declare i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket*, void (i32, %struct.AsyncSocket*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @AssignVmxConn(%struct._ConnInfo*) #0 !dbg !2211 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._ConnInfo*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._ConnInfo*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %3, metadata !2214, metadata !1886), !dbg !2215
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !2216, metadata !1886), !dbg !2217
  %6 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !2218
  store %struct._GList* %6, %struct._GList** %4, align 8, !dbg !2220
  br label %7, !dbg !2221

; <label>:7:                                      ; preds = %35, %1
  %8 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !2222
  %9 = icmp ne %struct._GList* %8, null, !dbg !2225
  br i1 %9, label %10, label %37, !dbg !2225

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %5, metadata !2226, metadata !1886), !dbg !2228
  %11 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !2229
  %12 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0, !dbg !2230
  %13 = load i8*, i8** %12, align 8, !dbg !2230
  %14 = bitcast i8* %13 to %struct._ConnInfo*, !dbg !2231
  store %struct._ConnInfo* %14, %struct._ConnInfo** %5, align 8, !dbg !2228
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !2232
  %16 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %15, i32 0, i32 11, !dbg !2234
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %16, align 8, !dbg !2234
  %18 = icmp eq %struct._ConnInfo* %17, null, !dbg !2235
  br i1 %18, label %19, label %26, !dbg !2236

; <label>:19:                                     ; preds = %10
  %20 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2237
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !2239
  %22 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %21, i32 0, i32 11, !dbg !2240
  store %struct._ConnInfo* %20, %struct._ConnInfo** %22, align 8, !dbg !2241
  %23 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !2242
  %24 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2243
  %25 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %24, i32 0, i32 11, !dbg !2244
  store %struct._ConnInfo* %23, %struct._ConnInfo** %25, align 8, !dbg !2245
  store i8 1, i8* %2, align 1, !dbg !2246
  br label %38, !dbg !2246

; <label>:26:                                     ; preds = %10
  br label %27, !dbg !2247

; <label>:27:                                     ; preds = %26
  %28 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !2248
  %29 = icmp ne %struct._GList* %28, null, !dbg !2250
  br i1 %29, label %30, label %34, !dbg !2250

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !2251
  %32 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1, !dbg !2253
  %33 = load %struct._GList*, %struct._GList** %32, align 8, !dbg !2253
  br label %35, !dbg !2254

; <label>:34:                                     ; preds = %27
  br label %35, !dbg !2255

; <label>:35:                                     ; preds = %34, %30
  %36 = phi %struct._GList* [ %33, %30 ], [ null, %34 ], !dbg !2257
  store %struct._GList* %36, %struct._GList** %4, align 8, !dbg !2259
  br label %7, !dbg !2260, !llvm.loop !2261

; <label>:37:                                     ; preds = %7
  store i8 0, i8* %2, align 1, !dbg !2263
  br label %38, !dbg !2263

; <label>:38:                                     ; preds = %37, %19
  %39 = load i8, i8* %2, align 1, !dbg !2264
  ret i8 %39, !dbg !2264
}

; Function Attrs: nounwind uwtable
define internal i32 @StartRecvFromVmx(%struct._ConnInfo*) #0 !dbg !2265 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._ConnInfo*, align 8
  %4 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %3, metadata !2268, metadata !1886), !dbg !2269
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2270, metadata !1886), !dbg !2271
  %5 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2272
  %6 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %5, i32 0, i32 1, !dbg !2273
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !2273
  %8 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2274
  %9 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %8, i32 0, i32 6, !dbg !2275
  %10 = bitcast i32* %9 to i8*, !dbg !2276
  %11 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2277
  %12 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %11, i32 0, i32 2, !dbg !2278
  %13 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %12, align 8, !dbg !2278
  %14 = bitcast void (i8*, i32, %struct.AsyncSocket*, i8*)* %13 to i8*, !dbg !2277
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2279
  %16 = bitcast %struct._ConnInfo* %15 to i8*, !dbg !2279
  %17 = call i32 @AsyncSocket_Recv(%struct.AsyncSocket* %7, i8* %10, i32 4, i8* %14, i8* %16), !dbg !2280
  store i32 %17, i32* %4, align 4, !dbg !2281
  %18 = load i32, i32* %4, align 4, !dbg !2282
  %19 = icmp ne i32 %18, 0, !dbg !2284
  br i1 %19, label %20, label %28, !dbg !2285

; <label>:20:                                     ; preds = %1
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2286
  %22 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %21, i32 0, i32 1, !dbg !2288
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %22, align 8, !dbg !2288
  %24 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %23), !dbg !2289
  %25 = load i32, i32* %4, align 4, !dbg !2290
  %26 = call i8* @AsyncSocket_Err2String(i32 %25), !dbg !2291
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i32 %24, i8* %26), !dbg !2293
  %27 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2295
  call void @CloseConn(%struct._ConnInfo* %27), !dbg !2296
  store i32 0, i32* %2, align 4, !dbg !2297
  br label %29, !dbg !2297

; <label>:28:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !2298
  br label %29, !dbg !2298

; <label>:29:                                     ; preds = %28, %20
  %30 = load i32, i32* %2, align 4, !dbg !2299
  ret i32 %30, !dbg !2299
}

; Function Attrs: nounwind uwtable
define internal i32 @StartRecvFromRmqClient(%struct._ConnInfo*) #0 !dbg !2300 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._ConnInfo*, align 8
  %4 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %3, metadata !2301, metadata !1886), !dbg !2302
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2303, metadata !1886), !dbg !2304
  %5 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2305
  %6 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %5, i32 0, i32 7, !dbg !2307
  %7 = load i8*, i8** %6, align 8, !dbg !2307
  %8 = icmp eq i8* %7, null, !dbg !2308
  br i1 %8, label %9, label %30, !dbg !2309

; <label>:9:                                      ; preds = %1
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2310
  %11 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %10, i32 0, i32 8, !dbg !2312
  store i32 65536, i32* %11, align 8, !dbg !2313
  %12 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2314
  %13 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %12, i32 0, i32 8, !dbg !2315
  %14 = load i32, i32* %13, align 8, !dbg !2315
  %15 = sext i32 %14 to i64, !dbg !2314
  %16 = call noalias i8* @malloc(i64 %15) #9, !dbg !2316
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2317
  %18 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %17, i32 0, i32 7, !dbg !2318
  store i8* %16, i8** %18, align 8, !dbg !2319
  %19 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2320
  %20 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %19, i32 0, i32 7, !dbg !2322
  %21 = load i8*, i8** %20, align 8, !dbg !2322
  %22 = icmp eq i8* %21, null, !dbg !2323
  br i1 %22, label %23, label %29, !dbg !2324

; <label>:23:                                     ; preds = %9
  %24 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2325
  %25 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %24, i32 0, i32 1, !dbg !2327
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %25, align 8, !dbg !2327
  %27 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %26), !dbg !2328
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.42, i32 0, i32 0), i32 %27), !dbg !2329
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2331
  call void @CloseConn(%struct._ConnInfo* %28), !dbg !2332
  store i32 0, i32* %2, align 4, !dbg !2333
  br label %58, !dbg !2333

; <label>:29:                                     ; preds = %9
  br label %30, !dbg !2334

; <label>:30:                                     ; preds = %29, %1
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2335
  %32 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %31, i32 0, i32 1, !dbg !2336
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %32, align 8, !dbg !2336
  %34 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2337
  %35 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %34, i32 0, i32 7, !dbg !2338
  %36 = load i8*, i8** %35, align 8, !dbg !2338
  %37 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2339
  %38 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %37, i32 0, i32 8, !dbg !2340
  %39 = load i32, i32* %38, align 8, !dbg !2340
  %40 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2341
  %41 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %40, i32 0, i32 2, !dbg !2342
  %42 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %41, align 8, !dbg !2342
  %43 = bitcast void (i8*, i32, %struct.AsyncSocket*, i8*)* %42 to i8*, !dbg !2341
  %44 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2343
  %45 = bitcast %struct._ConnInfo* %44 to i8*, !dbg !2343
  %46 = call i32 @AsyncSocket_RecvPartial(%struct.AsyncSocket* %33, i8* %36, i32 %39, i8* %43, i8* %45), !dbg !2344
  store i32 %46, i32* %4, align 4, !dbg !2345
  %47 = load i32, i32* %4, align 4, !dbg !2346
  %48 = icmp ne i32 %47, 0, !dbg !2348
  br i1 %48, label %49, label %57, !dbg !2349

; <label>:49:                                     ; preds = %30
  %50 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2350
  %51 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %50, i32 0, i32 1, !dbg !2352
  %52 = load %struct.AsyncSocket*, %struct.AsyncSocket** %51, align 8, !dbg !2352
  %53 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %52), !dbg !2353
  %54 = load i32, i32* %4, align 4, !dbg !2354
  %55 = call i8* @AsyncSocket_Err2String(i32 %54), !dbg !2355
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0), i32 %53, i8* %55), !dbg !2357
  %56 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2359
  call void @CloseConn(%struct._ConnInfo* %56), !dbg !2360
  store i32 0, i32* %2, align 4, !dbg !2361
  br label %58, !dbg !2361

; <label>:57:                                     ; preds = %30
  store i32 1, i32* %2, align 4, !dbg !2362
  br label %58, !dbg !2362

; <label>:58:                                     ; preds = %57, %49, %23
  %59 = load i32, i32* %2, align 4, !dbg !2363
  ret i32 %59, !dbg !2363
}

declare i32 @AsyncSocket_Close(%struct.AsyncSocket*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @RmqListenSockConnectedCb(%struct.AsyncSocket*, i8*) #0 !dbg !2364 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssl_ctx_st*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !2365, metadata !1886), !dbg !2366
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2367, metadata !1886), !dbg !2368
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2369, metadata !1886), !dbg !2370
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2371
  %10 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %9), !dbg !2372
  store i32 %10, i32* %5, align 4, !dbg !2370
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2373, metadata !1886), !dbg !2374
  %11 = call i32 @GetConfigInt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 65536), !dbg !2375
  store i32 %11, i32* %6, align 4, !dbg !2374
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2376, metadata !1886), !dbg !2377
  %12 = call i32 @GetConfigInt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 65536), !dbg !2378
  store i32 %12, i32* %7, align 4, !dbg !2377
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.RmqListenSockConnectedCb, i32 0, i32 0)), !dbg !2379
  %13 = load i32, i32* %5, align 4, !dbg !2380
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i32 %13), !dbg !2381
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2382
  %15 = call i32 @AsyncSocket_GetState(%struct.AsyncSocket* %14), !dbg !2384
  %16 = icmp ne i32 %15, 2, !dbg !2385
  br i1 %16, label %17, label %19, !dbg !2386

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %5, align 4, !dbg !2387
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i32 %18), !dbg !2389
  br label %44, !dbg !2390

; <label>:19:                                     ; preds = %2
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2391
  %21 = load i32, i32* %6, align 4, !dbg !2393
  %22 = load i32, i32* %7, align 4, !dbg !2394
  %23 = call signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket* %20, i32 %21, i32 %22), !dbg !2395
  %24 = icmp ne i8 %23, 0, !dbg !2395
  br i1 %24, label %27, label %25, !dbg !2396

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %5, align 4, !dbg !2397
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 %26), !dbg !2399
  br label %44, !dbg !2400

; <label>:27:                                     ; preds = %19
  %28 = call i32 @GetConfigBool(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 1), !dbg !2401
  %29 = icmp ne i32 %28, 0, !dbg !2401
  br i1 %29, label %30, label %41, !dbg !2403

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.ssl_ctx_st** %8, metadata !2404, metadata !1886), !dbg !2406
  %31 = call %struct.ssl_ctx_st* @TheSslContext(), !dbg !2407
  store %struct.ssl_ctx_st* %31, %struct.ssl_ctx_st** %8, align 8, !dbg !2406
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %8, align 8, !dbg !2408
  %33 = icmp ne %struct.ssl_ctx_st* %32, null, !dbg !2408
  br i1 %33, label %36, label %34, !dbg !2410

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %5, align 4, !dbg !2411
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i32 %35), !dbg !2413
  br label %44, !dbg !2414

; <label>:36:                                     ; preds = %30
  %37 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2415
  %38 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %8, align 8, !dbg !2416
  %39 = bitcast %struct.ssl_ctx_st* %38 to i8*, !dbg !2416
  %40 = call i32 @AsyncSocket_StartSslAccept(%struct.AsyncSocket* %37, i8* %39, void (i8, %struct.AsyncSocket*, i8*)* @RmqClientSockHandShakeCb, i8* null), !dbg !2417
  br label %43, !dbg !2418

; <label>:41:                                     ; preds = %27
  %42 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2419
  call void @RmqClientSockHandShakeCb(i8 signext 1, %struct.AsyncSocket* %42, i8* null), !dbg !2421
  br label %43

; <label>:43:                                     ; preds = %41, %36
  br label %47, !dbg !2422

; <label>:44:                                     ; preds = %34, %25, %17
  %45 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !2423
  %46 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %45), !dbg !2424
  br label %47, !dbg !2425

; <label>:47:                                     ; preds = %44, %43
  ret void, !dbg !2426
}

; Function Attrs: nounwind uwtable
define internal i32 @GetConfigBool(i8*, i32) #0 !dbg !2428 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GError*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2431, metadata !1886), !dbg !2432
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2433, metadata !1886), !dbg !2434
  call void @llvm.dbg.declare(metadata %struct._GError** %6, metadata !2435, metadata !1886), !dbg !2436
  store %struct._GError* null, %struct._GError** %6, align 8, !dbg !2436
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2437, metadata !1886), !dbg !2438
  %8 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 3), align 8, !dbg !2439
  %9 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %8, i32 0, i32 6, !dbg !2440
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !2440
  %11 = load i8*, i8** %4, align 8, !dbg !2441
  %12 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* %11, %struct._GError** %6), !dbg !2442
  store i32 %12, i32* %7, align 4, !dbg !2438
  %13 = load %struct._GError*, %struct._GError** %6, align 8, !dbg !2443
  %14 = icmp ne %struct._GError* %13, null, !dbg !2443
  br i1 %14, label %15, label %17, !dbg !2445

; <label>:15:                                     ; preds = %2
  call void @g_clear_error(%struct._GError** %6), !dbg !2446
  %16 = load i32, i32* %5, align 4, !dbg !2448
  store i32 %16, i32* %3, align 4, !dbg !2449
  br label %19, !dbg !2449

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %7, align 4, !dbg !2450
  store i32 %18, i32* %3, align 4, !dbg !2451
  br label %19, !dbg !2451

; <label>:19:                                     ; preds = %17, %15
  %20 = load i32, i32* %3, align 4, !dbg !2452
  ret i32 %20, !dbg !2452
}

; Function Attrs: nounwind uwtable
define internal %struct.ssl_ctx_st* @TheSslContext() #0 !dbg !205 {
  %1 = alloca %struct.ssl_ctx_st*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_ctx_st** %1, metadata !2453, metadata !1886), !dbg !2454
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %1, align 8, !dbg !2454
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2455, metadata !1886), !dbg !2456
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2457, metadata !1886), !dbg !2458
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2459, metadata !1886), !dbg !2460
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2461, metadata !1886), !dbg !2462
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @TheSslContext.sslCtx, align 8, !dbg !2463
  %7 = icmp ne %struct.ssl_ctx_st* %6, null, !dbg !2463
  br i1 %7, label %8, label %9, !dbg !2465

; <label>:8:                                      ; preds = %0
  br label %63, !dbg !2466

; <label>:9:                                      ; preds = %0
  %10 = call i8* @SSL_NewContext(), !dbg !2468
  %11 = bitcast i8* %10 to %struct.ssl_ctx_st*, !dbg !2468
  store %struct.ssl_ctx_st* %11, %struct.ssl_ctx_st** %1, align 8, !dbg !2469
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2470
  %13 = icmp ne %struct.ssl_ctx_st* %12, null, !dbg !2470
  br i1 %13, label %15, label %14, !dbg !2472

; <label>:14:                                     ; preds = %9
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0)), !dbg !2473
  br label %63, !dbg !2475

; <label>:15:                                     ; preds = %9
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2476
  %17 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %16, i32 32, i64 0, i8* null), !dbg !2476
  store i64 %17, i64* %5, align 8, !dbg !2477
  %18 = load i64, i64* %5, align 8, !dbg !2478
  %19 = or i64 %18, 67108864, !dbg !2478
  store i64 %19, i64* %5, align 8, !dbg !2478
  %20 = load i64, i64* %5, align 8, !dbg !2479
  %21 = or i64 %20, 268435456, !dbg !2479
  store i64 %21, i64* %5, align 8, !dbg !2479
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2480
  %23 = load i64, i64* %5, align 8, !dbg !2480
  %24 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %22, i32 32, i64 %23, i8* null), !dbg !2480
  %25 = call i8* @GetSslCertFile(), !dbg !2481
  store i8* %25, i8** %2, align 8, !dbg !2482
  %26 = load i8*, i8** %2, align 8, !dbg !2483
  %27 = icmp ne i8* %26, null, !dbg !2483
  br i1 %27, label %29, label %28, !dbg !2485

; <label>:28:                                     ; preds = %15
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0)), !dbg !2486
  br label %63, !dbg !2488

; <label>:29:                                     ; preds = %15
  %30 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2489
  %31 = load i8*, i8** %2, align 8, !dbg !2491
  %32 = call i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* %30, i8* %31, i32 1), !dbg !2492
  %33 = icmp ne i32 %32, 0, !dbg !2492
  br i1 %33, label %36, label %34, !dbg !2493

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %2, align 8, !dbg !2494
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i32 0, i32 0), i8* %35), !dbg !2496
  br label %63, !dbg !2497

; <label>:36:                                     ; preds = %29
  %37 = call i8* @GetSslKeyFile(), !dbg !2498
  store i8* %37, i8** %3, align 8, !dbg !2499
  %38 = load i8*, i8** %3, align 8, !dbg !2500
  %39 = icmp ne i8* %38, null, !dbg !2500
  br i1 %39, label %41, label %40, !dbg !2502

; <label>:40:                                     ; preds = %36
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0)), !dbg !2503
  br label %63, !dbg !2505

; <label>:41:                                     ; preds = %36
  %42 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2506
  %43 = load i8*, i8** %3, align 8, !dbg !2508
  %44 = call i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* %42, i8* %43, i32 1), !dbg !2509
  %45 = icmp ne i32 %44, 0, !dbg !2509
  br i1 %45, label %48, label %46, !dbg !2510

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %3, align 8, !dbg !2511
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i8* %47), !dbg !2513
  br label %63, !dbg !2514

; <label>:48:                                     ; preds = %41
  %49 = call i8* @GetSslTrustDir(), !dbg !2515
  store i8* %49, i8** %4, align 8, !dbg !2516
  %50 = load i8*, i8** %4, align 8, !dbg !2517
  %51 = icmp ne i8* %50, null, !dbg !2517
  br i1 %51, label %53, label %52, !dbg !2519

; <label>:52:                                     ; preds = %48
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0)), !dbg !2520
  br label %63, !dbg !2522

; <label>:53:                                     ; preds = %48
  %54 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2523
  %55 = load i8*, i8** %4, align 8, !dbg !2525
  %56 = call i32 @SSL_CTX_load_verify_locations(%struct.ssl_ctx_st* %54, i8* null, i8* %55), !dbg !2526
  %57 = icmp ne i32 %56, 0, !dbg !2526
  br i1 %57, label %60, label %58, !dbg !2527

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %4, align 8, !dbg !2528
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.50, i32 0, i32 0), i8* %59), !dbg !2530
  br label %63, !dbg !2531

; <label>:60:                                     ; preds = %53
  %61 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2532
  call void @SSL_CTX_set_verify(%struct.ssl_ctx_st* %61, i32 7, i32 (i32, %struct.x509_store_ctx_st*)* null), !dbg !2533
  %62 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2534
  store %struct.ssl_ctx_st* %62, %struct.ssl_ctx_st** @TheSslContext.sslCtx, align 8, !dbg !2535
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %1, align 8, !dbg !2536
  br label %63, !dbg !2537

; <label>:63:                                     ; preds = %60, %58, %52, %46, %40, %34, %28, %14, %8
  %64 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2538
  %65 = icmp ne %struct.ssl_ctx_st* %64, null, !dbg !2538
  br i1 %65, label %66, label %68, !dbg !2540

; <label>:66:                                     ; preds = %63
  %67 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2541
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %67), !dbg !2543
  br label %68, !dbg !2544

; <label>:68:                                     ; preds = %66, %63
  %69 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @TheSslContext.sslCtx, align 8, !dbg !2545
  ret %struct.ssl_ctx_st* %69, !dbg !2546
}

declare i32 @AsyncSocket_StartSslAccept(%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @RmqClientSockHandShakeCb(i8 signext, %struct.AsyncSocket*, i8*) #0 !dbg !2547 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._ConnInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2550, metadata !1886), !dbg !2551
  store %struct.AsyncSocket* %1, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !2552, metadata !1886), !dbg !2553
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2554, metadata !1886), !dbg !2555
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %7, metadata !2556, metadata !1886), !dbg !2557
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2558, metadata !1886), !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2560, metadata !1886), !dbg !2561
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.RmqClientSockHandShakeCb, i32 0, i32 0)), !dbg !2562
  %10 = load i8, i8* %4, align 1, !dbg !2563
  %11 = icmp ne i8 %10, 0, !dbg !2563
  br i1 %11, label %15, label %12, !dbg !2565

; <label>:12:                                     ; preds = %3
  %13 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !2566
  %14 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %13), !dbg !2568
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.56, i32 0, i32 0), i32 %14), !dbg !2569
  br label %60, !dbg !2571

; <label>:15:                                     ; preds = %3
  %16 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !2572
  %17 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %16), !dbg !2573
  store i32 %17, i32* %8, align 4, !dbg !2574
  %18 = load i32, i32* %8, align 4, !dbg !2575
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.57, i32 0, i32 0), i32 %18), !dbg !2576
  %19 = call i32 @SendVmxConnectRequest(), !dbg !2577
  %20 = icmp ne i32 %19, 0, !dbg !2577
  br i1 %20, label %23, label %21, !dbg !2579

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %8, align 4, !dbg !2580
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.58, i32 0, i32 0), i32 %22), !dbg !2582
  br label %60, !dbg !2583

; <label>:23:                                     ; preds = %15
  %24 = call noalias i8* @calloc(i64 1, i64 80) #9, !dbg !2584
  %25 = bitcast i8* %24 to %struct._ConnInfo*, !dbg !2584
  store %struct._ConnInfo* %25, %struct._ConnInfo** %7, align 8, !dbg !2585
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2586
  %27 = icmp eq %struct._ConnInfo* %26, null, !dbg !2588
  br i1 %27, label %28, label %30, !dbg !2589

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %8, align 4, !dbg !2590
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 %29), !dbg !2592
  br label %60, !dbg !2593

; <label>:30:                                     ; preds = %23
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2594
  %32 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %31, i32 0, i32 0, !dbg !2595
  store i8 1, i8* %32, align 8, !dbg !2596
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !2597
  %34 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2598
  %35 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %34, i32 0, i32 1, !dbg !2599
  store %struct.AsyncSocket* %33, %struct.AsyncSocket** %35, align 8, !dbg !2600
  %36 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2601
  %37 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %36, i32 0, i32 2, !dbg !2602
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* @RmqClientConnRecvedCb, void (i8*, i32, %struct.AsyncSocket*, i8*)** %37, align 8, !dbg !2603
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2604
  %39 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %38, i32 0, i32 3, !dbg !2605
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* @ConnSendDoneCb, void (i8*, i32, %struct.AsyncSocket*, i8*)** %39, align 8, !dbg !2606
  %40 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2607
  %41 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %40, i32 0, i32 4, !dbg !2608
  store void (i32, %struct.AsyncSocket*, i8*)* @ConnErrorHandlerCb, void (i32, %struct.AsyncSocket*, i8*)** %41, align 8, !dbg !2609
  %42 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !2610
  %43 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2611
  %44 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %43, i32 0, i32 4, !dbg !2612
  %45 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %44, align 8, !dbg !2612
  %46 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2613
  %47 = bitcast %struct._ConnInfo* %46 to i8*, !dbg !2613
  %48 = call i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket* %42, void (i32, %struct.AsyncSocket*, i8*)* %45, i8* %47), !dbg !2614
  store i32 %48, i32* %9, align 4, !dbg !2615
  %49 = load i32, i32* %9, align 4, !dbg !2616
  %50 = icmp ne i32 %49, 0, !dbg !2618
  br i1 %50, label %51, label %55, !dbg !2619

; <label>:51:                                     ; preds = %30
  %52 = load i32, i32* %8, align 4, !dbg !2620
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i32 %52), !dbg !2622
  %53 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2623
  %54 = bitcast %struct._ConnInfo* %53 to i8*, !dbg !2623
  call void @free(i8* %54) #9, !dbg !2624
  br label %60, !dbg !2625

; <label>:55:                                     ; preds = %30
  %56 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !2626
  %57 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !2627
  %58 = bitcast %struct._ConnInfo* %57 to i8*, !dbg !2627
  %59 = call %struct._GList* @g_list_append(%struct._GList* %56, i8* %58), !dbg !2628
  store %struct._GList* %59, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !2629
  br label %63, !dbg !2630

; <label>:60:                                     ; preds = %51, %28, %21, %12
  %61 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !2631
  %62 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %61), !dbg !2632
  br label %63, !dbg !2633

; <label>:63:                                     ; preds = %60, %55
  ret void, !dbg !2634
}

; Function Attrs: nounwind uwtable
define i8* @GRabbitmqProxyGetSSLLibPath(i8*, i8*) #0 !dbg !2636 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2639, metadata !1886), !dbg !2640
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2641, metadata !1886), !dbg !2642
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2643, metadata !1886), !dbg !2644
  store i8* null, i8** %5, align 8, !dbg !2644
  %7 = load i8*, i8** %5, align 8, !dbg !2645
  %8 = icmp ne i8* null, %7, !dbg !2647
  br i1 %8, label %9, label %27, !dbg !2648

; <label>:9:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2649, metadata !1886), !dbg !2651
  %10 = load i8*, i8** %5, align 8, !dbg !2652
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.GRabbitmqProxyGetSSLLibPath, i32 0, i32 0), i8* %10), !dbg !2653
  %11 = load i8*, i8** %5, align 8, !dbg !2654
  %12 = load i8*, i8** %5, align 8, !dbg !2655
  %13 = call i64 @strlen(i8* %12) #10, !dbg !2656
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !2657
  %15 = getelementptr inbounds i8, i8* %14, i64 -1, !dbg !2658
  store i8* %15, i8** %6, align 8, !dbg !2659
  %16 = load i8*, i8** %6, align 8, !dbg !2660
  %17 = load i8*, i8** %5, align 8, !dbg !2662
  %18 = icmp ugt i8* %16, %17, !dbg !2663
  br i1 %18, label %19, label %26, !dbg !2664

; <label>:19:                                     ; preds = %9
  %20 = load i8*, i8** %6, align 8, !dbg !2665
  %21 = load i8, i8* %20, align 1, !dbg !2667
  %22 = sext i8 %21 to i32, !dbg !2667
  %23 = icmp eq i32 47, %22, !dbg !2668
  br i1 %23, label %24, label %26, !dbg !2669

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %6, align 8, !dbg !2670
  store i8 0, i8* %25, align 1, !dbg !2672
  br label %26, !dbg !2673

; <label>:26:                                     ; preds = %24, %19, %9
  br label %27, !dbg !2674

; <label>:27:                                     ; preds = %26, %2
  %28 = load i8*, i8** %5, align 8, !dbg !2675
  ret i8* %28, !dbg !2676
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define %struct.ToolsPluginData* @ToolsOnLoad(%struct.ToolsAppCtx*) #0 !dbg !136 {
  %2 = alloca %struct.ToolsPluginData*, align 8
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca [2 x %struct.ToolsPluginSignalCb], align 16
  %5 = alloca [1 x %struct.ToolsAppReg], align 16
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !2677, metadata !1886), !dbg !2678
  call void @llvm.dbg.declare(metadata [2 x %struct.ToolsPluginSignalCb]* %4, metadata !2679, metadata !1886), !dbg !2687
  %6 = bitcast [2 x %struct.ToolsPluginSignalCb]* %4 to i8*, !dbg !2687
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 16, i1 false), !dbg !2687
  %7 = bitcast i8* %6 to [2 x %struct.ToolsPluginSignalCb]*, !dbg !2687
  %8 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %7, i32 0, i32 0, !dbg !2687
  %9 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %8, i32 0, i32 0, !dbg !2687
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8** %9, !dbg !2687
  %10 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %8, i32 0, i32 1, !dbg !2687
  store i8* bitcast (void (i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*)* @GRabbitmqProxyShutdown to i8*), i8** %10, !dbg !2687
  %11 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %8, i32 0, i32 2, !dbg !2687
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %11, !dbg !2687
  %12 = getelementptr [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %7, i32 0, i32 1, !dbg !2687
  %13 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %12, i32 0, i32 0, !dbg !2687
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8** %13, !dbg !2687
  %14 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %12, i32 0, i32 1, !dbg !2687
  store i8* bitcast (i32 (i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*)* @GRabbitmqProxySetOption to i8*), i8** %14, !dbg !2687
  %15 = getelementptr %struct.ToolsPluginSignalCb, %struct.ToolsPluginSignalCb* %12, i32 0, i32 2, !dbg !2687
  store i8* bitcast (%struct.ToolsPluginData* @ToolsOnLoad.regData to i8*), i8** %15, !dbg !2687
  call void @llvm.dbg.declare(metadata [1 x %struct.ToolsAppReg]* %5, metadata !2688, metadata !1886), !dbg !2697
  %16 = getelementptr inbounds [1 x %struct.ToolsAppReg], [1 x %struct.ToolsAppReg]* %5, i64 0, i64 0, !dbg !2698
  %17 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %16, i32 0, i32 0, !dbg !2699
  store i32 2, i32* %17, align 16, !dbg !2699
  %18 = getelementptr inbounds %struct.ToolsAppReg, %struct.ToolsAppReg* %16, i32 0, i32 1, !dbg !2699
  %19 = getelementptr inbounds [2 x %struct.ToolsPluginSignalCb], [2 x %struct.ToolsPluginSignalCb]* %4, i32 0, i32 0, !dbg !2700
  %20 = bitcast %struct.ToolsPluginSignalCb* %19 to i8*, !dbg !2700
  %21 = call %struct._GArray* @VMTools_WrapArray(i8* %20, i32 24, i32 2), !dbg !2701
  store %struct._GArray* %21, %struct._GArray** %18, align 8, !dbg !2699
  %22 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2702
  call void @InitProxyData(%struct.ToolsAppCtx* %22), !dbg !2703
  call void @Poll_InitGtk(), !dbg !2704
  call void @SSL_Init(i8* (i8*, i8*)* @GRabbitmqProxyGetSSLLibPath, i8* null, i8* null), !dbg !2705
  %23 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2706
  %24 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %23, i32 0, i32 1, !dbg !2708
  %25 = load i8*, i8** %24, align 8, !dbg !2708
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !2709
  %27 = icmp eq i32 %26, 0, !dbg !2710
  br i1 %27, label %38, label %28, !dbg !2711

; <label>:28:                                     ; preds = %1
  %29 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2712
  %30 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %29, i32 0, i32 1, !dbg !2714
  %31 = load i8*, i8** %30, align 8, !dbg !2714
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #10, !dbg !2715
  %33 = icmp eq i32 %32, 0, !dbg !2716
  br i1 %33, label %38, label %34, !dbg !2717

; <label>:34:                                     ; preds = %28
  %35 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !2718
  %36 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %35, i32 0, i32 1, !dbg !2720
  %37 = load i8*, i8** %36, align 8, !dbg !2720
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i32 0, i32 0), i8* %37), !dbg !2721
  store %struct.ToolsPluginData* null, %struct.ToolsPluginData** %2, align 8, !dbg !2722
  br label %42, !dbg !2722

; <label>:38:                                     ; preds = %28, %1
  %39 = getelementptr inbounds [1 x %struct.ToolsAppReg], [1 x %struct.ToolsAppReg]* %5, i32 0, i32 0, !dbg !2723
  %40 = bitcast %struct.ToolsAppReg* %39 to i8*, !dbg !2723
  %41 = call %struct._GArray* @VMTools_WrapArray(i8* %40, i32 16, i32 1), !dbg !2724
  store %struct._GArray* %41, %struct._GArray** getelementptr inbounds (%struct.ToolsPluginData, %struct.ToolsPluginData* @ToolsOnLoad.regData, i32 0, i32 1), align 8, !dbg !2725
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0)), !dbg !2726
  store %struct.ToolsPluginData* @ToolsOnLoad.regData, %struct.ToolsPluginData** %2, align 8, !dbg !2727
  br label %42, !dbg !2727

; <label>:42:                                     ; preds = %38, %34
  %43 = load %struct.ToolsPluginData*, %struct.ToolsPluginData** %2, align 8, !dbg !2728
  ret %struct.ToolsPluginData* %43, !dbg !2728
}

; Function Attrs: nounwind uwtable
define internal void @GRabbitmqProxyShutdown(i8*, %struct.ToolsAppCtx*, %struct.ToolsPluginData*) #0 !dbg !2729 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ToolsAppCtx*, align 8
  %6 = alloca %struct.ToolsPluginData*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2732, metadata !1886), !dbg !2733
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %5, metadata !2734, metadata !1886), !dbg !2735
  store %struct.ToolsPluginData* %2, %struct.ToolsPluginData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %6, metadata !2736, metadata !1886), !dbg !2737
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.GRabbitmqProxyShutdown, i32 0, i32 0)), !dbg !2738
  %7 = load i32, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !2739
  %8 = icmp ne i32 %7, 0, !dbg !2741
  br i1 %8, label %9, label %10, !dbg !2742

; <label>:9:                                      ; preds = %3
  call void @GRabbitmqProxyDisableMessageTunnelling(), !dbg !2743
  br label %10, !dbg !2745

; <label>:10:                                     ; preds = %9, %3
  ret void, !dbg !2746
}

; Function Attrs: nounwind uwtable
define internal i32 @GRabbitmqProxySetOption(i8*, %struct.ToolsAppCtx*, i8*, i8*, %struct.ToolsPluginData*) #0 !dbg !2747 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ToolsAppCtx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ToolsPluginData*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2750, metadata !1886), !dbg !2751
  store %struct.ToolsAppCtx* %1, %struct.ToolsAppCtx** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %7, metadata !2752, metadata !1886), !dbg !2753
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2754, metadata !1886), !dbg !2755
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2756, metadata !1886), !dbg !2757
  store %struct.ToolsPluginData* %4, %struct.ToolsPluginData** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsPluginData** %10, metadata !2758, metadata !1886), !dbg !2759
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2760, metadata !1886), !dbg !2761
  store i32 0, i32* %11, align 4, !dbg !2761
  %12 = load i8*, i8** %8, align 8, !dbg !2762
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0)) #10, !dbg !2764
  %14 = icmp eq i32 %13, 0, !dbg !2765
  br i1 %14, label %15, label %30, !dbg !2766

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %9, align 8, !dbg !2767
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0)) #10, !dbg !2770
  %18 = icmp eq i32 %17, 0, !dbg !2771
  br i1 %18, label %19, label %20, !dbg !2772

; <label>:19:                                     ; preds = %15
  call void @GRabbitmqProxyEnableMessageTunnelling(), !dbg !2773
  br label %29, !dbg !2775

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %9, align 8, !dbg !2776
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0)) #10, !dbg !2779
  %23 = icmp eq i32 %22, 0, !dbg !2780
  br i1 %23, label %24, label %28, !dbg !2781

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !2782
  %26 = icmp ne i32 %25, 0, !dbg !2783
  br i1 %26, label %27, label %28, !dbg !2784

; <label>:27:                                     ; preds = %24
  call void @GRabbitmqProxyDisableMessageTunnelling(), !dbg !2786
  br label %28, !dbg !2788

; <label>:28:                                     ; preds = %27, %24, %20
  br label %29

; <label>:29:                                     ; preds = %28, %19
  br label %30, !dbg !2789

; <label>:30:                                     ; preds = %29, %5
  %31 = load i32, i32* %11, align 4, !dbg !2790
  ret i32 %31, !dbg !2791
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct._GArray* @VMTools_WrapArray(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @InitProxyData(%struct.ToolsAppCtx*) #0 !dbg !2792 {
  %2 = alloca %struct.ToolsAppCtx*, align 8
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %2, metadata !2795, metadata !1886), !dbg !2796
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.GuestProxyData* @proxyData to i8*), i8 0, i64 40, i32 8, i1 false), !dbg !2797
  %3 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %2, align 8, !dbg !2798
  store %struct.ToolsAppCtx* %3, %struct.ToolsAppCtx** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 3), align 8, !dbg !2799
  store i32 0, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !2800
  %4 = call i32 @GetConfigInt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i32 262144), !dbg !2801
  store i32 %4, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 5), align 4, !dbg !2802
  ret void, !dbg !2803
}

declare void @Poll_InitGtk() #2

declare void @SSL_Init(i8* (i8*, i8*)*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_clear_error(%struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal void @ProcessPacketHeaderLen(%struct._ConnInfo*, i32) #0 !dbg !2804 {
  %3 = alloca %struct._ConnInfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %3, metadata !2807, metadata !1886), !dbg !2808
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2809, metadata !1886), !dbg !2810
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2811, metadata !1886), !dbg !2812
  %6 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2813
  %7 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %6, i32 0, i32 6, !dbg !2814
  %8 = load i32, i32* %7, align 4, !dbg !2814
  %9 = call i32 @ntohl(i32 %8) #1, !dbg !2815
  store i32 %9, i32* %5, align 4, !dbg !2812
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.ProcessPacketHeaderLen, i32 0, i32 0)), !dbg !2816
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2817
  %11 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %10, i32 0, i32 7, !dbg !2819
  %12 = load i8*, i8** %11, align 8, !dbg !2819
  %13 = icmp eq i8* %12, null, !dbg !2820
  br i1 %13, label %22, label %14, !dbg !2821

; <label>:14:                                     ; preds = %2
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2822
  %16 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %15, i32 0, i32 8, !dbg !2824
  %17 = load i32, i32* %16, align 8, !dbg !2824
  %18 = load i32, i32* %5, align 4, !dbg !2825
  %19 = load i32, i32* %4, align 4, !dbg !2826
  %20 = add nsw i32 %18, %19, !dbg !2827
  %21 = icmp slt i32 %17, %20, !dbg !2828
  br i1 %21, label %22, label %49, !dbg !2829

; <label>:22:                                     ; preds = %14, %2
  %23 = load i32, i32* %5, align 4, !dbg !2830
  %24 = load i32, i32* %4, align 4, !dbg !2832
  %25 = add nsw i32 %23, %24, !dbg !2833
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2834
  %27 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %26, i32 0, i32 8, !dbg !2835
  store i32 %25, i32* %27, align 8, !dbg !2836
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2837
  %29 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %28, i32 0, i32 7, !dbg !2838
  %30 = load i8*, i8** %29, align 8, !dbg !2838
  call void @free(i8* %30) #9, !dbg !2839
  %31 = load i32, i32* %5, align 4, !dbg !2840
  %32 = load i32, i32* %4, align 4, !dbg !2841
  %33 = add nsw i32 %31, %32, !dbg !2842
  %34 = sext i32 %33 to i64, !dbg !2840
  %35 = call noalias i8* @malloc(i64 %34) #9, !dbg !2843
  %36 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2844
  %37 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %36, i32 0, i32 7, !dbg !2845
  store i8* %35, i8** %37, align 8, !dbg !2846
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2847
  %39 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %38, i32 0, i32 7, !dbg !2849
  %40 = load i8*, i8** %39, align 8, !dbg !2849
  %41 = icmp eq i8* %40, null, !dbg !2850
  br i1 %41, label %42, label %48, !dbg !2851

; <label>:42:                                     ; preds = %22
  %43 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2852
  %44 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %43, i32 0, i32 1, !dbg !2854
  %45 = load %struct.AsyncSocket*, %struct.AsyncSocket** %44, align 8, !dbg !2854
  %46 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %45), !dbg !2855
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i32 0, i32 0), i32 %46), !dbg !2856
  %47 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2858
  call void @CloseConn(%struct._ConnInfo* %47), !dbg !2859
  br label %60, !dbg !2860

; <label>:48:                                     ; preds = %22
  br label %49, !dbg !2861

; <label>:49:                                     ; preds = %48, %14
  %50 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2862
  %51 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %50, i32 0, i32 6, !dbg !2863
  %52 = load i32, i32* %51, align 4, !dbg !2863
  %53 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2864
  %54 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %53, i32 0, i32 7, !dbg !2865
  %55 = load i8*, i8** %54, align 8, !dbg !2865
  %56 = bitcast i8* %55 to i32*, !dbg !2866
  store i32 %52, i32* %56, align 4, !dbg !2867
  %57 = load %struct._ConnInfo*, %struct._ConnInfo** %3, align 8, !dbg !2868
  %58 = load i32, i32* %5, align 4, !dbg !2869
  %59 = call i32 @RecvPacketFromVmxConn(%struct._ConnInfo* %57, i32 %58), !dbg !2870
  br label %60, !dbg !2871

; <label>:60:                                     ; preds = %49, %42
  ret void, !dbg !2872
}

declare i32 @DataMap_Deserialize(i8*, i32, %struct.DataMap*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ProcessVmxDataPacket(%struct._ConnInfo*, %struct.DataMap*) #0 !dbg !2874 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._ConnInfo*, align 8
  %5 = alloca %struct.DataMap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %4, metadata !2878, metadata !1886), !dbg !2879
  store %struct.DataMap* %1, %struct.DataMap** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.DataMap** %5, metadata !2880, metadata !1886), !dbg !2881
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2882, metadata !1886), !dbg !2883
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2884, metadata !1886), !dbg !2887
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.ProcessVmxDataPacket, i32 0, i32 0)), !dbg !2888
  %11 = load %struct.DataMap*, %struct.DataMap** %5, align 8, !dbg !2889
  %12 = call i32 @DataMap_GetInt64(%struct.DataMap* %11, i32 1, i64* %7), !dbg !2890
  store i32 %12, i32* %6, align 4, !dbg !2891
  %13 = load i64, i64* %7, align 8, !dbg !2892
  switch i64 %13, label %44 [
    i64 1, label %14
    i64 3, label %37
    i64 2, label %43
  ], !dbg !2893

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2894, metadata !1886), !dbg !2897
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2898, metadata !1886), !dbg !2899
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2900, metadata !1886), !dbg !2901
  %15 = load %struct.DataMap*, %struct.DataMap** %5, align 8, !dbg !2902
  %16 = call i32 @DataMap_GetString(%struct.DataMap* %15, i32 3, i8** %10, i32* %9), !dbg !2903
  store i32 %16, i32* %6, align 4, !dbg !2904
  %17 = load i32, i32* %9, align 4, !dbg !2905
  %18 = sext i32 %17 to i64, !dbg !2905
  %19 = call noalias i8* @malloc(i64 %18) #9, !dbg !2906
  store i8* %19, i8** %8, align 8, !dbg !2907
  %20 = load i8*, i8** %8, align 8, !dbg !2908
  %21 = icmp ne i8* %20, null, !dbg !2908
  br i1 %21, label %22, label %31, !dbg !2910

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %8, align 8, !dbg !2911
  %24 = load i8*, i8** %10, align 8, !dbg !2913
  %25 = load i32, i32* %9, align 4, !dbg !2914
  %26 = sext i32 %25 to i64, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %26, i32 1, i1 false), !dbg !2915
  %27 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2916
  %28 = load i8*, i8** %8, align 8, !dbg !2917
  %29 = load i32, i32* %9, align 4, !dbg !2918
  %30 = call i32 @SendToConn(%struct._ConnInfo* %27, i8* %28, i32 %29), !dbg !2919
  store i32 %30, i32* %3, align 4, !dbg !2920
  br label %51, !dbg !2920

; <label>:31:                                     ; preds = %14
  %32 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2921
  %33 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %32, i32 0, i32 1, !dbg !2923
  %34 = load %struct.AsyncSocket*, %struct.AsyncSocket** %33, align 8, !dbg !2923
  %35 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %34), !dbg !2924
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i32 0, i32 0), i32 %35), !dbg !2925
  %36 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2927
  call void @CloseConn(%struct._ConnInfo* %36), !dbg !2928
  store i32 0, i32* %3, align 4, !dbg !2929
  br label %51, !dbg !2929

; <label>:37:                                     ; preds = %2
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2930
  %39 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %38, i32 0, i32 1, !dbg !2932
  %40 = load %struct.AsyncSocket*, %struct.AsyncSocket** %39, align 8, !dbg !2932
  %41 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %40), !dbg !2933
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0), i32 %41), !dbg !2934
  %42 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2936
  call void @CloseConn(%struct._ConnInfo* %42), !dbg !2937
  store i32 0, i32* %3, align 4, !dbg !2938
  br label %51, !dbg !2938

; <label>:43:                                     ; preds = %2
  br label %50, !dbg !2939

; <label>:44:                                     ; preds = %2
  %45 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2940
  %46 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %45, i32 0, i32 1, !dbg !2941
  %47 = load %struct.AsyncSocket*, %struct.AsyncSocket** %46, align 8, !dbg !2941
  %48 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %47), !dbg !2942
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0), i32 %48), !dbg !2943
  %49 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2945
  call void @CloseConn(%struct._ConnInfo* %49), !dbg !2946
  store i32 0, i32* %3, align 4, !dbg !2947
  br label %51, !dbg !2947

; <label>:50:                                     ; preds = %43
  store i32 1, i32* %3, align 4, !dbg !2948
  br label %51, !dbg !2948

; <label>:51:                                     ; preds = %50, %44, %37, %31, %22
  %52 = load i32, i32* %3, align 4, !dbg !2949
  ret i32 %52, !dbg !2949
}

declare i32 @DataMap_Destroy(%struct.DataMap*) #2

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @CloseConn(%struct._ConnInfo*) #0 !dbg !2950 {
  %2 = alloca %struct._ConnInfo*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !2953, metadata !1886), !dbg !2954
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.CloseConn, i32 0, i32 0)), !dbg !2955
  %3 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2956
  %4 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %3, i32 0, i32 11, !dbg !2958
  %5 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !2958
  %6 = icmp ne %struct._ConnInfo* %5, null, !dbg !2959
  br i1 %6, label %7, label %13, !dbg !2960

; <label>:7:                                      ; preds = %1
  %8 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2961
  %9 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %8, i32 0, i32 11, !dbg !2963
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !2963
  call void @ShutDownConn(%struct._ConnInfo* %10), !dbg !2964
  %11 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2965
  %12 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %11, i32 0, i32 11, !dbg !2966
  store %struct._ConnInfo* null, %struct._ConnInfo** %12, align 8, !dbg !2967
  br label %13, !dbg !2968

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2969
  %15 = call i8* @GetConnName(%struct._ConnInfo* %14), !dbg !2970
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2971
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 1, !dbg !2972
  %18 = load %struct.AsyncSocket*, %struct.AsyncSocket** %17, align 8, !dbg !2972
  %19 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %18), !dbg !2973
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* %15, i32 %19), !dbg !2975
  %20 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2977
  %21 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %20, i32 0, i32 1, !dbg !2978
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %21, align 8, !dbg !2978
  %23 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %22), !dbg !2979
  %24 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2980
  %25 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %24, i32 0, i32 1, !dbg !2981
  store %struct.AsyncSocket* null, %struct.AsyncSocket** %25, align 8, !dbg !2982
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2983
  %27 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %26, i32 0, i32 7, !dbg !2984
  %28 = load i8*, i8** %27, align 8, !dbg !2984
  call void @free(i8* %28) #9, !dbg !2985
  %29 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2986
  %30 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %29, i32 0, i32 7, !dbg !2987
  store i8* null, i8** %30, align 8, !dbg !2988
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2989
  %32 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %31, i32 0, i32 0, !dbg !2991
  %33 = load i8, i8* %32, align 8, !dbg !2991
  %34 = icmp ne i8 %33, 0, !dbg !2989
  br i1 %34, label %35, label %40, !dbg !2992

; <label>:35:                                     ; preds = %13
  %36 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !2993
  %37 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2995
  %38 = bitcast %struct._ConnInfo* %37 to i8*, !dbg !2995
  %39 = call %struct._GList* @g_list_remove(%struct._GList* %36, i8* %38), !dbg !2996
  store %struct._GList* %39, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !2997
  br label %40, !dbg !2998

; <label>:40:                                     ; preds = %35, %13
  %41 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !2999
  %42 = bitcast %struct._ConnInfo* %41 to i8*, !dbg !2999
  call void @free(i8* %42) #9, !dbg !3000
  ret void, !dbg !3001
}

; Function Attrs: nounwind uwtable
define internal i32 @RecvPacketFromVmxConn(%struct._ConnInfo*, i32) #0 !dbg !3002 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._ConnInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %4, metadata !3005, metadata !1886), !dbg !3006
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3007, metadata !1886), !dbg !3008
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3009, metadata !1886), !dbg !3010
  %7 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3011
  %8 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %7, i32 0, i32 1, !dbg !3012
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !3012
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3013
  %11 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %10, i32 0, i32 7, !dbg !3014
  %12 = load i8*, i8** %11, align 8, !dbg !3014
  %13 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !3015
  %14 = load i32, i32* %5, align 4, !dbg !3016
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3017
  %16 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %15, i32 0, i32 2, !dbg !3018
  %17 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %16, align 8, !dbg !3018
  %18 = bitcast void (i8*, i32, %struct.AsyncSocket*, i8*)* %17 to i8*, !dbg !3017
  %19 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3019
  %20 = bitcast %struct._ConnInfo* %19 to i8*, !dbg !3019
  %21 = call i32 @AsyncSocket_Recv(%struct.AsyncSocket* %9, i8* %13, i32 %14, i8* %18, i8* %20), !dbg !3020
  store i32 %21, i32* %6, align 4, !dbg !3021
  %22 = load i32, i32* %6, align 4, !dbg !3022
  %23 = icmp ne i32 %22, 0, !dbg !3024
  br i1 %23, label %24, label %32, !dbg !3025

; <label>:24:                                     ; preds = %2
  %25 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3026
  %26 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %25, i32 0, i32 1, !dbg !3028
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %26, align 8, !dbg !3028
  %28 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %27), !dbg !3029
  %29 = load i32, i32* %6, align 4, !dbg !3030
  %30 = call i8* @AsyncSocket_Err2String(i32 %29), !dbg !3031
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i32 0, i32 0), i32 %28, i8* %30), !dbg !3033
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !3035
  call void @CloseConn(%struct._ConnInfo* %31), !dbg !3036
  store i32 0, i32* %3, align 4, !dbg !3037
  br label %33, !dbg !3037

; <label>:32:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !3038
  br label %33, !dbg !3038

; <label>:33:                                     ; preds = %32, %24
  %34 = load i32, i32* %3, align 4, !dbg !3039
  ret i32 %34, !dbg !3039
}

; Function Attrs: nounwind uwtable
define internal void @ShutDownConn(%struct._ConnInfo*) #0 !dbg !3040 {
  %2 = alloca %struct._ConnInfo*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !3041, metadata !1886), !dbg !3042
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.ShutDownConn, i32 0, i32 0)), !dbg !3043
  %3 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3044
  %4 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %3, i32 0, i32 11, !dbg !3045
  store %struct._ConnInfo* null, %struct._ConnInfo** %4, align 8, !dbg !3046
  %5 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3047
  %6 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %5, i32 0, i32 9, !dbg !3049
  %7 = load i32, i32* %6, align 4, !dbg !3049
  %8 = icmp sgt i32 %7, 0, !dbg !3050
  br i1 %8, label %9, label %19, !dbg !3051

; <label>:9:                                      ; preds = %1
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3052
  %11 = call i8* @GetConnName(%struct._ConnInfo* %10), !dbg !3054
  %12 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3055
  %13 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %12, i32 0, i32 1, !dbg !3056
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %13, align 8, !dbg !3056
  %15 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %14), !dbg !3057
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* %11, i32 %15), !dbg !3059
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3061
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 5, !dbg !3062
  store i32 1, i32* %17, align 8, !dbg !3063
  %18 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3064
  call void @StopRecvFromConn(%struct._ConnInfo* %18), !dbg !3065
  br label %21, !dbg !3066

; <label>:19:                                     ; preds = %1
  %20 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3067
  call void @CloseConn(%struct._ConnInfo* %20), !dbg !3069
  br label %21

; <label>:21:                                     ; preds = %19, %9
  ret void, !dbg !3070
}

; Function Attrs: nounwind uwtable
define internal i8* @GetConnName(%struct._ConnInfo*) #0 !dbg !3071 {
  %2 = alloca %struct._ConnInfo*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !3074, metadata !1886), !dbg !3075
  %3 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3076
  %4 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %3, i32 0, i32 0, !dbg !3077
  %5 = load i8, i8* %4, align 8, !dbg !3077
  %6 = sext i8 %5 to i32, !dbg !3076
  %7 = icmp ne i32 %6, 0, !dbg !3076
  %8 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), !dbg !3076
  ret i8* %8, !dbg !3078
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @StopRecvFromConn(%struct._ConnInfo*) #0 !dbg !3079 {
  %2 = alloca %struct._ConnInfo*, align 8
  %3 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !3080, metadata !1886), !dbg !3081
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3082, metadata !1886), !dbg !3083
  %4 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3084
  %5 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %4, i32 0, i32 1, !dbg !3085
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !3085
  %7 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %6), !dbg !3086
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 %7), !dbg !3087
  %8 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3089
  %9 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %8, i32 0, i32 1, !dbg !3090
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %9, align 8, !dbg !3090
  %11 = call i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket* %10, i32* null, i8** null, i8** null, i8 signext 1), !dbg !3091
  store i32 %11, i32* %3, align 4, !dbg !3092
  %12 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !3093
  %13 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %12, i32 0, i32 10, !dbg !3094
  store i32 1, i32* %13, align 8, !dbg !3095
  ret void, !dbg !3096
}

declare i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket*, i32*, i8**, i8**, i8 signext) #2

declare i32 @AsyncSocket_Recv(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #2

declare i8* @AsyncSocket_Err2String(i32) #2

declare i32 @DataMap_GetInt64(%struct.DataMap*, i32, i64*) #2

declare i32 @DataMap_GetString(%struct.DataMap*, i32, i8**, i32*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @SendToConn(%struct._ConnInfo*, i8*, i32) #0 !dbg !3097 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._ConnInfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._ConnInfo*, align 8
  %9 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %5, metadata !3100, metadata !1886), !dbg !3101
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3102, metadata !1886), !dbg !3103
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3104, metadata !1886), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %8, metadata !3106, metadata !1886), !dbg !3107
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3108
  %11 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %10, i32 0, i32 11, !dbg !3109
  %12 = load %struct._ConnInfo*, %struct._ConnInfo** %11, align 8, !dbg !3109
  store %struct._ConnInfo* %12, %struct._ConnInfo** %8, align 8, !dbg !3107
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3110, metadata !1886), !dbg !3111
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.SendToConn, i32 0, i32 0)), !dbg !3112
  %13 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3113
  %14 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %13, i32 0, i32 1, !dbg !3114
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %14, align 8, !dbg !3114
  %16 = load i8*, i8** %6, align 8, !dbg !3115
  %17 = load i32, i32* %7, align 4, !dbg !3116
  %18 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3117
  %19 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %18, i32 0, i32 3, !dbg !3118
  %20 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %19, align 8, !dbg !3118
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3119
  %22 = bitcast %struct._ConnInfo* %21 to i8*, !dbg !3119
  %23 = call i32 @AsyncSocket_Send(%struct.AsyncSocket* %15, i8* %16, i32 %17, void (i8*, i32, %struct.AsyncSocket*, i8*)* %20, i8* %22), !dbg !3120
  store i32 %23, i32* %9, align 4, !dbg !3121
  %24 = load i32, i32* %9, align 4, !dbg !3122
  %25 = icmp ne i32 %24, 0, !dbg !3124
  br i1 %25, label %26, label %35, !dbg !3125

; <label>:26:                                     ; preds = %3
  %27 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3126
  %28 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %27, i32 0, i32 1, !dbg !3128
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %28, align 8, !dbg !3128
  %30 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %29), !dbg !3129
  %31 = load i32, i32* %9, align 4, !dbg !3130
  %32 = call i8* @AsyncSocket_Err2String(i32 %31), !dbg !3131
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.35, i32 0, i32 0), i32 %30, i8* %32), !dbg !3133
  %33 = load i8*, i8** %6, align 8, !dbg !3135
  call void @free(i8* %33) #9, !dbg !3136
  %34 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3137
  call void @CloseConn(%struct._ConnInfo* %34), !dbg !3138
  store i32 0, i32* %4, align 4, !dbg !3139
  br label %66, !dbg !3139

; <label>:35:                                     ; preds = %3
  %36 = load i32, i32* %7, align 4, !dbg !3140
  %37 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3141
  %38 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %37, i32 0, i32 1, !dbg !3142
  %39 = load %struct.AsyncSocket*, %struct.AsyncSocket** %38, align 8, !dbg !3142
  %40 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %39), !dbg !3143
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i32 %36, i32 %40), !dbg !3144
  %41 = load i32, i32* %7, align 4, !dbg !3146
  %42 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3147
  %43 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %42, i32 0, i32 9, !dbg !3148
  %44 = load i32, i32* %43, align 4, !dbg !3149
  %45 = add nsw i32 %44, %41, !dbg !3149
  store i32 %45, i32* %43, align 4, !dbg !3149
  %46 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3150
  %47 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %46, i32 0, i32 1, !dbg !3151
  %48 = load %struct.AsyncSocket*, %struct.AsyncSocket** %47, align 8, !dbg !3151
  %49 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %48), !dbg !3152
  %50 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3153
  %51 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %50, i32 0, i32 9, !dbg !3154
  %52 = load i32, i32* %51, align 4, !dbg !3154
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32 %49, i32 %52), !dbg !3155
  %53 = load %struct._ConnInfo*, %struct._ConnInfo** %8, align 8, !dbg !3156
  %54 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %53, i32 0, i32 10, !dbg !3158
  %55 = load i32, i32* %54, align 8, !dbg !3158
  %56 = icmp ne i32 %55, 0, !dbg !3156
  br i1 %56, label %65, label %57, !dbg !3159

; <label>:57:                                     ; preds = %35
  %58 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3160
  %59 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %58, i32 0, i32 9, !dbg !3162
  %60 = load i32, i32* %59, align 4, !dbg !3162
  %61 = load i32, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 5), align 4, !dbg !3163
  %62 = icmp sgt i32 %60, %61, !dbg !3164
  br i1 %62, label %63, label %65, !dbg !3165

; <label>:63:                                     ; preds = %57
  %64 = load %struct._ConnInfo*, %struct._ConnInfo** %8, align 8, !dbg !3166
  call void @StopRecvFromConn(%struct._ConnInfo* %64), !dbg !3168
  store i32 0, i32* %4, align 4, !dbg !3169
  br label %66, !dbg !3169

; <label>:65:                                     ; preds = %57, %35
  store i32 1, i32* %4, align 4, !dbg !3170
  br label %66, !dbg !3170

; <label>:66:                                     ; preds = %65, %63, %26
  %67 = load i32, i32* %4, align 4, !dbg !3171
  ret i32 %67, !dbg !3171
}

declare i32 @AsyncSocket_Send(%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*) #2

declare i32 @AsyncSocket_RecvPartial(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #2

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare i8* @SSL_NewContext() #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st*, i32, i64, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetSslCertFile() #0 !dbg !1868 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3172, metadata !1886), !dbg !3173
  %2 = load i8*, i8** @GetSslCertFile.certFile, align 8, !dbg !3174
  %3 = icmp ne i8* %2, null, !dbg !3174
  br i1 %3, label %4, label %5, !dbg !3176

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !3177

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GetProxyDataDir(), !dbg !3179
  store i8* %6, i8** %1, align 8, !dbg !3180
  %7 = load i8*, i8** %1, align 8, !dbg !3181
  %8 = icmp ne i8* %7, null, !dbg !3181
  br i1 %8, label %9, label %12, !dbg !3183

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %1, align 8, !dbg !3184
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3186
  store i8* %11, i8** @GetSslCertFile.certFile, align 8, !dbg !3187
  br label %12, !dbg !3188

; <label>:12:                                     ; preds = %9, %5
  br label %13, !dbg !3189

; <label>:13:                                     ; preds = %12, %4
  %14 = load i8*, i8** @GetSslCertFile.certFile, align 8, !dbg !3191
  ret i8* %14, !dbg !3192
}

declare i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetSslKeyFile() #0 !dbg !1874 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3193, metadata !1886), !dbg !3194
  %2 = load i8*, i8** @GetSslKeyFile.keyFile, align 8, !dbg !3195
  %3 = icmp ne i8* %2, null, !dbg !3195
  br i1 %3, label %4, label %5, !dbg !3197

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !3198

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GetProxyDataDir(), !dbg !3200
  store i8* %6, i8** %1, align 8, !dbg !3201
  %7 = load i8*, i8** %1, align 8, !dbg !3202
  %8 = icmp ne i8* %7, null, !dbg !3202
  br i1 %8, label %9, label %12, !dbg !3204

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %1, align 8, !dbg !3205
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3207
  store i8* %11, i8** @GetSslKeyFile.keyFile, align 8, !dbg !3208
  br label %12, !dbg !3209

; <label>:12:                                     ; preds = %9, %5
  br label %13, !dbg !3210

; <label>:13:                                     ; preds = %12, %4
  %14 = load i8*, i8** @GetSslKeyFile.keyFile, align 8, !dbg !3212
  ret i8* %14, !dbg !3213
}

declare i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetSslTrustDir() #0 !dbg !1876 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3214, metadata !1886), !dbg !3215
  %2 = load i8*, i8** @GetSslTrustDir.trustDir, align 8, !dbg !3216
  %3 = icmp ne i8* %2, null, !dbg !3216
  br i1 %3, label %4, label %5, !dbg !3218

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !3219

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GetProxyDataDir(), !dbg !3221
  store i8* %6, i8** %1, align 8, !dbg !3222
  %7 = load i8*, i8** %1, align 8, !dbg !3223
  %8 = icmp ne i8* %7, null, !dbg !3223
  br i1 %8, label %9, label %12, !dbg !3225

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %1, align 8, !dbg !3226
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3228
  store i8* %11, i8** @GetSslTrustDir.trustDir, align 8, !dbg !3229
  br label %12, !dbg !3230

; <label>:12:                                     ; preds = %9, %5
  br label %13, !dbg !3231

; <label>:13:                                     ; preds = %12, %4
  %14 = load i8*, i8** @GetSslTrustDir.trustDir, align 8, !dbg !3233
  ret i8* %14, !dbg !3234
}

declare i32 @SSL_CTX_load_verify_locations(%struct.ssl_ctx_st*, i8*, i8*) #2

declare void @SSL_CTX_set_verify(%struct.ssl_ctx_st*, i32, i32 (i32, %struct.x509_store_ctx_st*)*) #2

declare void @SSL_CTX_free(%struct.ssl_ctx_st*) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetProxyDataDir() #0 !dbg !1872 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3235, metadata !1886), !dbg !3236
  store i8* null, i8** %1, align 8, !dbg !3236
  %2 = load i8*, i8** @GetProxyDataDir.proxyDataDir, align 8, !dbg !3237
  %3 = icmp ne i8* %2, null, !dbg !3237
  br i1 %3, label %4, label %5, !dbg !3239

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !3240

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GuestApp_GetConfPath(), !dbg !3242
  store i8* %6, i8** %1, align 8, !dbg !3243
  %7 = load i8*, i8** %1, align 8, !dbg !3244
  %8 = icmp ne i8* %7, null, !dbg !3244
  br i1 %8, label %9, label %12, !dbg !3246

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %1, align 8, !dbg !3247
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3249
  store i8* %11, i8** @GetProxyDataDir.proxyDataDir, align 8, !dbg !3250
  br label %12, !dbg !3251

; <label>:12:                                     ; preds = %9, %5
  br label %13, !dbg !3252

; <label>:13:                                     ; preds = %12, %4
  %14 = load i8*, i8** %1, align 8, !dbg !3254
  call void @free(i8* %14) #9, !dbg !3255
  %15 = load i8*, i8** @GetProxyDataDir.proxyDataDir, align 8, !dbg !3256
  ret i8* %15, !dbg !3257
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @GuestApp_GetConfPath() #2

; Function Attrs: nounwind uwtable
define internal i32 @SendVmxConnectRequest() #0 !dbg !3258 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_vm, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !3261, metadata !1886), !dbg !3262
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 0), align 8, !dbg !3263
  store %struct.AsyncSocket* %9, %struct.AsyncSocket** %2, align 8, !dbg !3262
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3264, metadata !1886), !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.sockaddr_vm* %4, metadata !3266, metadata !1886), !dbg !3275
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3276, metadata !1886), !dbg !3279
  store i32 16, i32* %5, align 4, !dbg !3279
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3280, metadata !1886), !dbg !3281
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3282, metadata !1886), !dbg !3283
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3284, metadata !1886), !dbg !3285
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.SendVmxConnectRequest, i32 0, i32 0)), !dbg !3286
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !3287
  %11 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %10), !dbg !3288
  store i32 %11, i32* %7, align 4, !dbg !3289
  %12 = load i32, i32* %7, align 4, !dbg !3290
  %13 = bitcast %struct.sockaddr_vm* %4 to %struct.sockaddr*, !dbg !3292
  %14 = call i32 @getsockname(i32 %12, %struct.sockaddr* %13, i32* %5) #9, !dbg !3293
  %15 = icmp eq i32 %14, -1, !dbg !3294
  br i1 %15, label %16, label %19, !dbg !3295

; <label>:16:                                     ; preds = %0
  %17 = call i32* @__errno_location() #1, !dbg !3296
  %18 = load i32, i32* %17, align 4, !dbg !3298
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), i32 %18), !dbg !3299
  store i32 0, i32* %1, align 4, !dbg !3301
  br label %37, !dbg !3301

; <label>:19:                                     ; preds = %0
  %20 = getelementptr inbounds %struct.sockaddr_vm, %struct.sockaddr_vm* %4, i32 0, i32 2, !dbg !3302
  %21 = load i32, i32* %20, align 4, !dbg !3302
  store i32 %21, i32* %6, align 4, !dbg !3303
  %22 = load i32, i32* %6, align 4, !dbg !3304
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0), i32 %22), !dbg !3305
  store i8* %23, i8** %8, align 8, !dbg !3306
  %24 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 3), align 8, !dbg !3307
  %25 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %24, i32 0, i32 5, !dbg !3308
  %26 = load %struct._RpcChannel*, %struct._RpcChannel** %25, align 8, !dbg !3308
  %27 = load i8*, i8** %8, align 8, !dbg !3309
  %28 = load i8*, i8** %8, align 8, !dbg !3310
  %29 = call i64 @strlen(i8* %28) #10, !dbg !3311
  %30 = call i32 @RpcChannel_Send(%struct._RpcChannel* %26, i8* %27, i64 %29, i8** null, i64* null), !dbg !3312
  store i32 %30, i32* %3, align 4, !dbg !3314
  %31 = load i32, i32* %3, align 4, !dbg !3315
  %32 = icmp ne i32 %31, 0, !dbg !3315
  br i1 %32, label %34, label %33, !dbg !3317

; <label>:33:                                     ; preds = %19
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i32 0, i32 0)), !dbg !3318
  br label %34, !dbg !3320

; <label>:34:                                     ; preds = %33, %19
  %35 = load i8*, i8** %8, align 8, !dbg !3321
  call void @g_free(i8* %35), !dbg !3322
  %36 = load i32, i32* %3, align 4, !dbg !3323
  store i32 %36, i32* %1, align 4, !dbg !3324
  br label %37, !dbg !3324

; <label>:37:                                     ; preds = %34, %16
  %38 = load i32, i32* %1, align 4, !dbg !3325
  ret i32 %38, !dbg !3325
}

; Function Attrs: nounwind uwtable
define internal void @RmqClientConnRecvedCb(i8*, i32, %struct.AsyncSocket*, i8*) #0 !dbg !3326 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AsyncSocket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._ConnInfo*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3327, metadata !1886), !dbg !3328
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3329, metadata !1886), !dbg !3330
  store %struct.AsyncSocket* %2, %struct.AsyncSocket** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %7, metadata !3331, metadata !1886), !dbg !3332
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3333, metadata !1886), !dbg !3334
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %9, metadata !3335, metadata !1886), !dbg !3336
  %10 = load i8*, i8** %8, align 8, !dbg !3337
  %11 = bitcast i8* %10 to %struct._ConnInfo*, !dbg !3338
  store %struct._ConnInfo* %11, %struct._ConnInfo** %9, align 8, !dbg !3336
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.RmqClientConnRecvedCb, i32 0, i32 0)), !dbg !3339
  %12 = load i32, i32* %6, align 4, !dbg !3340
  %13 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !3341
  %14 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %13, i32 0, i32 1, !dbg !3342
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %14, align 8, !dbg !3342
  %16 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %15), !dbg !3343
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0), i32 %12, i32 %16), !dbg !3344
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !3346
  %18 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !3348
  %19 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %18, i32 0, i32 7, !dbg !3349
  %20 = load i8*, i8** %19, align 8, !dbg !3349
  %21 = load i32, i32* %6, align 4, !dbg !3350
  %22 = call i32 @SendToVmxRmqProxy(%struct._ConnInfo* %17, i8* %20, i32 %21), !dbg !3351
  %23 = icmp ne i32 %22, 0, !dbg !3351
  br i1 %23, label %24, label %27, !dbg !3352

; <label>:24:                                     ; preds = %4
  %25 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !3353
  %26 = call i32 @StartRecvFromRmqClient(%struct._ConnInfo* %25), !dbg !3355
  br label %27, !dbg !3356

; <label>:27:                                     ; preds = %24, %4
  ret void, !dbg !3357
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @SendToVmxRmqProxy(%struct._ConnInfo*, i8*, i32) #0 !dbg !3358 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._ConnInfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.DataMap, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %5, metadata !3359, metadata !1886), !dbg !3360
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3361, metadata !1886), !dbg !3362
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3363, metadata !1886), !dbg !3364
  call void @llvm.dbg.declare(metadata %struct.DataMap* %8, metadata !3365, metadata !1886), !dbg !3366
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3367, metadata !1886), !dbg !3368
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3369, metadata !1886), !dbg !3370
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3371, metadata !1886), !dbg !3372
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3373, metadata !1886), !dbg !3374
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3375, metadata !1886), !dbg !3376
  store i32 0, i32* %13, align 4, !dbg !3376
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3377, metadata !1886), !dbg !3378
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.SendToVmxRmqProxy, i32 0, i32 0)), !dbg !3379
  %15 = call i32 @DataMap_Create(%struct.DataMap* %8), !dbg !3380
  store i32 %15, i32* %9, align 4, !dbg !3381
  %16 = load i32, i32* %9, align 4, !dbg !3382
  %17 = icmp ne i32 %16, 0, !dbg !3384
  br i1 %17, label %18, label %19, !dbg !3385

; <label>:18:                                     ; preds = %3
  br label %66, !dbg !3386

; <label>:19:                                     ; preds = %3
  store i32 1, i32* %13, align 4, !dbg !3388
  %20 = call i32 @DataMap_SetInt64(%struct.DataMap* %8, i32 1, i64 1, i8 signext 1), !dbg !3389
  store i32 %20, i32* %9, align 4, !dbg !3390
  %21 = load i32, i32* %9, align 4, !dbg !3391
  %22 = icmp ne i32 %21, 0, !dbg !3393
  br i1 %22, label %23, label %24, !dbg !3394

; <label>:23:                                     ; preds = %19
  br label %66, !dbg !3395

; <label>:24:                                     ; preds = %19
  %25 = call noalias i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0)) #9, !dbg !3397
  store i8* %25, i8** %14, align 8, !dbg !3398
  %26 = load i8*, i8** %14, align 8, !dbg !3399
  %27 = icmp eq i8* %26, null, !dbg !3401
  br i1 %27, label %28, label %29, !dbg !3402

; <label>:28:                                     ; preds = %24
  store i32 4, i32* %9, align 4, !dbg !3403
  br label %66, !dbg !3405

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %14, align 8, !dbg !3406
  %31 = call i32 @DataMap_SetString(%struct.DataMap* %8, i32 4, i8* %30, i32 -1, i8 signext 1), !dbg !3407
  store i32 %31, i32* %9, align 4, !dbg !3408
  %32 = load i32, i32* %9, align 4, !dbg !3409
  %33 = icmp ne i32 %32, 0, !dbg !3411
  br i1 %33, label %34, label %35, !dbg !3412

; <label>:34:                                     ; preds = %29
  br label %66, !dbg !3413

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %7, align 4, !dbg !3415
  %37 = sext i32 %36 to i64, !dbg !3415
  %38 = call noalias i8* @malloc(i64 %37) #9, !dbg !3416
  store i8* %38, i8** %10, align 8, !dbg !3417
  %39 = load i8*, i8** %10, align 8, !dbg !3418
  %40 = icmp eq i8* %39, null, !dbg !3420
  br i1 %40, label %41, label %42, !dbg !3421

; <label>:41:                                     ; preds = %35
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.64, i32 0, i32 0)), !dbg !3422
  br label %66, !dbg !3424

; <label>:42:                                     ; preds = %35
  %43 = load i8*, i8** %10, align 8, !dbg !3425
  %44 = load i8*, i8** %6, align 8, !dbg !3426
  %45 = load i32, i32* %7, align 4, !dbg !3427
  %46 = sext i32 %45 to i64, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %46, i32 1, i1 false), !dbg !3428
  %47 = load i8*, i8** %10, align 8, !dbg !3429
  %48 = load i32, i32* %7, align 4, !dbg !3430
  %49 = call i32 @DataMap_SetString(%struct.DataMap* %8, i32 3, i8* %47, i32 %48, i8 signext 1), !dbg !3431
  store i32 %49, i32* %9, align 4, !dbg !3432
  %50 = load i32, i32* %9, align 4, !dbg !3433
  %51 = icmp ne i32 %50, 0, !dbg !3435
  br i1 %51, label %52, label %53, !dbg !3436

; <label>:52:                                     ; preds = %42
  br label %66, !dbg !3437

; <label>:53:                                     ; preds = %42
  %54 = call i32 @DataMap_Serialize(%struct.DataMap* %8, i8** %11, i32* %12), !dbg !3439
  store i32 %54, i32* %9, align 4, !dbg !3440
  %55 = load i32, i32* %9, align 4, !dbg !3441
  %56 = icmp ne i32 %55, 0, !dbg !3443
  br i1 %56, label %57, label %58, !dbg !3444

; <label>:57:                                     ; preds = %53
  br label %66, !dbg !3445

; <label>:58:                                     ; preds = %53
  %59 = call i32 @DataMap_Destroy(%struct.DataMap* %8), !dbg !3447
  %60 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3448
  %61 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %60, i32 0, i32 11, !dbg !3449
  %62 = load %struct._ConnInfo*, %struct._ConnInfo** %61, align 8, !dbg !3449
  %63 = load i8*, i8** %11, align 8, !dbg !3450
  %64 = load i32, i32* %12, align 4, !dbg !3451
  %65 = call i32 @SendToConn(%struct._ConnInfo* %62, i8* %63, i32 %64), !dbg !3452
  store i32 %65, i32* %4, align 4, !dbg !3453
  br label %78, !dbg !3453

; <label>:66:                                     ; preds = %57, %52, %41, %34, %28, %23, %18
  %67 = load i32, i32* %13, align 4, !dbg !3454
  %68 = icmp ne i32 %67, 0, !dbg !3454
  br i1 %68, label %69, label %71, !dbg !3456

; <label>:69:                                     ; preds = %66
  %70 = call i32 @DataMap_Destroy(%struct.DataMap* %8), !dbg !3457
  br label %71, !dbg !3459

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3460
  %73 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %72, i32 0, i32 1, !dbg !3461
  %74 = load %struct.AsyncSocket*, %struct.AsyncSocket** %73, align 8, !dbg !3461
  %75 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %74), !dbg !3462
  %76 = load i32, i32* %9, align 4, !dbg !3463
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.65, i32 0, i32 0), i32 %75, i32 %76), !dbg !3464
  %77 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !3466
  call void @CloseConn(%struct._ConnInfo* %77), !dbg !3467
  store i32 0, i32* %4, align 4, !dbg !3468
  br label %78, !dbg !3468

; <label>:78:                                     ; preds = %71, %58
  %79 = load i32, i32* %4, align 4, !dbg !3469
  ret i32 %79, !dbg !3469
}

declare i32 @DataMap_Create(%struct.DataMap*) #2

declare i32 @DataMap_SetInt64(%struct.DataMap*, i32, i64, i8 signext) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

declare i32 @DataMap_SetString(%struct.DataMap*, i32, i8*, i32, i8 signext) #2

declare i32 @DataMap_Serialize(%struct.DataMap*, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @GRabbitmqProxyDisableMessageTunnelling() #0 !dbg !3470 {
  %1 = alloca %struct._ConnInfo*, align 8
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__FUNCTION__.GRabbitmqProxyDisableMessageTunnelling, i32 0, i32 0)), !dbg !3471
  %2 = load %struct.AsyncSocket*, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 0), align 8, !dbg !3472
  %3 = icmp ne %struct.AsyncSocket* %2, null, !dbg !3474
  br i1 %3, label %4, label %7, !dbg !3475

; <label>:4:                                      ; preds = %0
  %5 = load %struct.AsyncSocket*, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 0), align 8, !dbg !3476
  %6 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %5), !dbg !3478
  store %struct.AsyncSocket* null, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 0), align 8, !dbg !3479
  br label %7, !dbg !3480

; <label>:7:                                      ; preds = %4, %0
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 1), align 8, !dbg !3481
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !3483
  br i1 %9, label %10, label %13, !dbg !3484

; <label>:10:                                     ; preds = %7
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 1), align 8, !dbg !3485
  %12 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %11), !dbg !3487
  store %struct.AsyncSocket* null, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 1), align 8, !dbg !3488
  br label %13, !dbg !3489

; <label>:13:                                     ; preds = %10, %7
  br label %14, !dbg !3490

; <label>:14:                                     ; preds = %17, %13
  %15 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !3491
  %16 = icmp ne %struct._GList* %15, null, !dbg !3493
  br i1 %16, label %17, label %23, !dbg !3494

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %1, metadata !3495, metadata !1886), !dbg !3497
  %18 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 2), align 8, !dbg !3498
  %19 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0, !dbg !3499
  %20 = load i8*, i8** %19, align 8, !dbg !3499
  %21 = bitcast i8* %20 to %struct._ConnInfo*, !dbg !3500
  store %struct._ConnInfo* %21, %struct._ConnInfo** %1, align 8, !dbg !3497
  %22 = load %struct._ConnInfo*, %struct._ConnInfo** %1, align 8, !dbg !3501
  call void @CloseConn(%struct._ConnInfo* %22), !dbg !3502
  br label %14, !dbg !3503, !llvm.loop !3505

; <label>:23:                                     ; preds = %14
  store i32 0, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !3506
  ret void, !dbg !3507
}

; Function Attrs: nounwind uwtable
define internal void @GRabbitmqProxyEnableMessageTunnelling() #0 !dbg !3508 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3509, metadata !1886), !dbg !3510
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__FUNCTION__.GRabbitmqProxyEnableMessageTunnelling, i32 0, i32 0)), !dbg !3511
  %2 = load i32, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !3512
  %3 = icmp ne i32 %2, 0, !dbg !3514
  br i1 %3, label %4, label %5, !dbg !3515

; <label>:4:                                      ; preds = %0
  br label %25, !dbg !3516

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GetVmVcUuidFromVmx(), !dbg !3518
  store i8* %6, i8** %1, align 8, !dbg !3519
  %7 = load i8*, i8** %1, align 8, !dbg !3520
  %8 = icmp ne i8* %7, null, !dbg !3520
  br i1 %8, label %10, label %9, !dbg !3522

; <label>:9:                                      ; preds = %5
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.69, i32 0, i32 0)), !dbg !3523
  br label %25, !dbg !3525

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %1, align 8, !dbg !3526
  %12 = call i32 @PublishVmVcUuid(i8* %11), !dbg !3528
  %13 = icmp ne i32 %12, 0, !dbg !3528
  br i1 %13, label %16, label %14, !dbg !3529

; <label>:14:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0)), !dbg !3530
  %15 = load i8*, i8** %1, align 8, !dbg !3532
  call void @free(i8* %15) #9, !dbg !3533
  br label %25, !dbg !3534

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %1, align 8, !dbg !3535
  call void @free(i8* %17) #9, !dbg !3536
  %18 = call i32 @CreateVmxListenSocket(), !dbg !3537
  %19 = icmp ne i32 %18, 0, !dbg !3537
  br i1 %19, label %20, label %23, !dbg !3539

; <label>:20:                                     ; preds = %16
  %21 = call i32 @CreateRmqListenSocket(), !dbg !3540
  %22 = icmp ne i32 %21, 0, !dbg !3540
  br i1 %22, label %24, label %23, !dbg !3542

; <label>:23:                                     ; preds = %20, %16
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i32 0, i32 0)), !dbg !3543
  call void @GRabbitmqProxyDisableMessageTunnelling(), !dbg !3545
  br label %25, !dbg !3546

; <label>:24:                                     ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 4), align 8, !dbg !3547
  br label %25, !dbg !3548

; <label>:25:                                     ; preds = %24, %23, %14, %9, %4
  ret void, !dbg !3549
}

; Function Attrs: nounwind uwtable
define internal i8* @GetVmVcUuidFromVmx() #0 !dbg !3551 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3554, metadata !1886), !dbg !3555
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3556, metadata !1886), !dbg !3557
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3558, metadata !1886), !dbg !3559
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3560, metadata !1886), !dbg !3561
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3562, metadata !1886), !dbg !3563
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), i8** %6, align 8, !dbg !3563
  %7 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 3), align 8, !dbg !3564
  %8 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %7, i32 0, i32 5, !dbg !3565
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %8, align 8, !dbg !3565
  %10 = load i8*, i8** %6, align 8, !dbg !3566
  %11 = load i8*, i8** %6, align 8, !dbg !3567
  %12 = call i64 @strlen(i8* %11) #10, !dbg !3568
  %13 = call i32 @RpcChannel_Send(%struct._RpcChannel* %9, i8* %10, i64 %12, i8** %3, i64* %4), !dbg !3569
  store i32 %13, i32* %5, align 4, !dbg !3571
  %14 = load i32, i32* %5, align 4, !dbg !3572
  %15 = icmp ne i32 %14, 0, !dbg !3572
  br i1 %15, label %17, label %16, !dbg !3574

; <label>:16:                                     ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.73, i32 0, i32 0)), !dbg !3575
  store i8* null, i8** %1, align 8, !dbg !3577
  br label %32, !dbg !3577

; <label>:17:                                     ; preds = %0
  %18 = load i64, i64* %4, align 8, !dbg !3578
  %19 = icmp ugt i64 %18, 36, !dbg !3580
  br i1 %19, label %20, label %21, !dbg !3581

; <label>:20:                                     ; preds = %17
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.74, i32 0, i32 0)), !dbg !3582
  store i8* null, i8** %1, align 8, !dbg !3584
  br label %32, !dbg !3584

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %4, align 8, !dbg !3585
  %23 = add i64 %22, 1, !dbg !3586
  %24 = call i8* @UtilSafeMalloc0(i64 %23), !dbg !3587
  store i8* %24, i8** %2, align 8, !dbg !3588
  %25 = load i8*, i8** %2, align 8, !dbg !3589
  %26 = load i8*, i8** %3, align 8, !dbg !3590
  %27 = load i64, i64* %4, align 8, !dbg !3591
  %28 = add i64 %27, 1, !dbg !3592
  %29 = call i8* @Str_Strcpy(i8* %25, i8* %26, i64 %28), !dbg !3593
  %30 = load i8*, i8** %2, align 8, !dbg !3594
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i32 0, i32 0), i8* %30), !dbg !3595
  %31 = load i8*, i8** %2, align 8, !dbg !3596
  store i8* %31, i8** %1, align 8, !dbg !3597
  br label %32, !dbg !3597

; <label>:32:                                     ; preds = %21, %20, %16
  %33 = load i8*, i8** %1, align 8, !dbg !3598
  ret i8* %33, !dbg !3598
}

; Function Attrs: nounwind uwtable
define internal i32 @PublishVmVcUuid(i8*) #0 !dbg !3599 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GError*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3602, metadata !1886), !dbg !3603
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3604, metadata !1886), !dbg !3605
  store i32 0, i32* %3, align 4, !dbg !3605
  call void @llvm.dbg.declare(metadata %struct._GError** %4, metadata !3606, metadata !1886), !dbg !3607
  store %struct._GError* null, %struct._GError** %4, align 8, !dbg !3607
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3608, metadata !1886), !dbg !3609
  store i8* null, i8** %5, align 8, !dbg !3609
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3610, metadata !1886), !dbg !3611
  %7 = call i8* @GetVmVcUuidDir(), !dbg !3612
  store i8* %7, i8** %6, align 8, !dbg !3611
  %8 = load i8*, i8** %6, align 8, !dbg !3613
  %9 = icmp ne i8* %8, null, !dbg !3613
  br i1 %9, label %11, label %10, !dbg !3615

; <label>:10:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0)), !dbg !3616
  br label %38, !dbg !3618

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %6, align 8, !dbg !3619
  %13 = call i32 @g_mkdir_with_parents(i8* %12, i32 493), !dbg !3621
  %14 = icmp slt i32 %13, 0, !dbg !3622
  br i1 %14, label %15, label %17, !dbg !3623

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %6, align 8, !dbg !3624
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0), i8* %16), !dbg !3626
  br label %38, !dbg !3627

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !3628
  %19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3629
  store i8* %19, i8** %5, align 8, !dbg !3630
  br label %20, !dbg !3631, !llvm.loop !3632

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %5, align 8, !dbg !3633
  %22 = icmp ne i8* %21, null, !dbg !3633
  br i1 %22, label %23, label %24, !dbg !3633

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !3637

; <label>:24:                                     ; preds = %20
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i32 0, i32 0), i32 1697, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.PublishVmVcUuid, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0)) #11, !dbg !3639
  unreachable, !dbg !3639

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !3641

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %5, align 8, !dbg !3643
  %28 = load i8*, i8** %2, align 8, !dbg !3644
  %29 = call i32 @g_file_set_contents(i8* %27, i8* %28, i64 -1, %struct._GError** %4), !dbg !3645
  %30 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !3646
  %31 = icmp ne %struct._GError* %30, null, !dbg !3648
  br i1 %31, label %32, label %37, !dbg !3649

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %5, align 8, !dbg !3650
  %34 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !3652
  %35 = getelementptr inbounds %struct._GError, %struct._GError* %34, i32 0, i32 2, !dbg !3653
  %36 = load i8*, i8** %35, align 8, !dbg !3653
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i32 0, i32 0), i8* %33, i8* %36), !dbg !3654
  br label %38, !dbg !3655

; <label>:37:                                     ; preds = %26
  store i32 1, i32* %3, align 4, !dbg !3656
  br label %38, !dbg !3657

; <label>:38:                                     ; preds = %37, %32, %15, %10
  %39 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !3658
  %40 = icmp ne %struct._GError* %39, null, !dbg !3658
  br i1 %40, label %41, label %43, !dbg !3660

; <label>:41:                                     ; preds = %38
  %42 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !3661
  call void @g_error_free(%struct._GError* %42), !dbg !3663
  br label %43, !dbg !3664

; <label>:43:                                     ; preds = %41, %38
  %44 = load i8*, i8** %5, align 8, !dbg !3665
  call void @g_free(i8* %44), !dbg !3666
  %45 = load i32, i32* %3, align 4, !dbg !3667
  ret i32 %45, !dbg !3668
}

; Function Attrs: nounwind uwtable
define internal i32 @CreateVmxListenSocket() #0 !dbg !3669 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.AsyncSocket*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3670, metadata !1886), !dbg !3671
  store i32 0, i32* %2, align 4, !dbg !3671
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !3672, metadata !1886), !dbg !3673
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.CreateVmxListenSocket, i32 0, i32 0)), !dbg !3674
  %4 = call i32 @VMCISock_GetLocalCID(), !dbg !3675
  %5 = call %struct.AsyncSocket* @AsyncSocket_ListenVMCI(i32 %4, i32 -1, void (%struct.AsyncSocket*, i8*)* @VmxListenSockConnectedCb, i8* null, %struct.AsyncSocketPollParams* null, i32* %2), !dbg !3676
  store %struct.AsyncSocket* %5, %struct.AsyncSocket** %3, align 8, !dbg !3678
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !3679
  %7 = icmp eq %struct.AsyncSocket* %6, null, !dbg !3681
  br i1 %7, label %11, label %8, !dbg !3682

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !3683
  %10 = icmp ne i32 %9, 0, !dbg !3685
  br i1 %10, label %11, label %20, !dbg !3686

; <label>:11:                                     ; preds = %8, %0
  %12 = load i32, i32* %2, align 4, !dbg !3687
  %13 = call i8* @AsyncSocket_Err2String(i32 %12), !dbg !3689
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.83, i32 0, i32 0), i8* %13), !dbg !3690
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !3692
  %15 = icmp ne %struct.AsyncSocket* %14, null, !dbg !3694
  br i1 %15, label %16, label %19, !dbg !3695

; <label>:16:                                     ; preds = %11
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !3696
  %18 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %17), !dbg !3698
  br label %19, !dbg !3699

; <label>:19:                                     ; preds = %16, %11
  store i32 0, i32* %1, align 4, !dbg !3700
  br label %22, !dbg !3700

; <label>:20:                                     ; preds = %8
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !3701
  store %struct.AsyncSocket* %21, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 0), align 8, !dbg !3702
  store i32 1, i32* %1, align 4, !dbg !3703
  br label %22, !dbg !3703

; <label>:22:                                     ; preds = %20, %19
  %23 = load i32, i32* %1, align 4, !dbg !3704
  ret i32 %23, !dbg !3704
}

; Function Attrs: nounwind uwtable
define internal i32 @CreateRmqListenSocket() #0 !dbg !3705 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.AsyncSocket*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3706, metadata !1886), !dbg !3707
  store i32 6672, i32* %2, align 4, !dbg !3707
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3708, metadata !1886), !dbg !3709
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3710, metadata !1886), !dbg !3711
  store i32 0, i32* %4, align 4, !dbg !3711
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !3712, metadata !1886), !dbg !3713
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.CreateRmqListenSocket, i32 0, i32 0)), !dbg !3714
  %6 = load i32, i32* %2, align 4, !dbg !3715
  %7 = call i32 @GetConfigInt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 %6), !dbg !3716
  store i32 %7, i32* %3, align 4, !dbg !3717
  %8 = call i32 @GetConfigBool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i32 0, i32 0), i32 0), !dbg !3718
  %9 = icmp ne i32 %8, 0, !dbg !3718
  br i1 %9, label %10, label %13, !dbg !3720

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !3721
  %12 = call %struct.AsyncSocket* @AsyncSocket_Listen(i8* null, i32 %11, void (%struct.AsyncSocket*, i8*)* @RmqListenSockConnectedCb, i8* null, %struct.AsyncSocketPollParams* null, i32* %4), !dbg !3723
  store %struct.AsyncSocket* %12, %struct.AsyncSocket** %5, align 8, !dbg !3724
  br label %16, !dbg !3725

; <label>:13:                                     ; preds = %0
  %14 = load i32, i32* %3, align 4, !dbg !3726
  %15 = call %struct.AsyncSocket* @AsyncSocket_ListenLoopback(i32 %14, void (%struct.AsyncSocket*, i8*)* @RmqListenSockConnectedCb, i8* null, %struct.AsyncSocketPollParams* null, i32* %4), !dbg !3728
  store %struct.AsyncSocket* %15, %struct.AsyncSocket** %5, align 8, !dbg !3729
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !3730
  %18 = icmp eq %struct.AsyncSocket* %17, null, !dbg !3732
  br i1 %18, label %22, label %19, !dbg !3733

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4, !dbg !3734
  %21 = icmp ne i32 %20, 0, !dbg !3736
  br i1 %21, label %22, label %31, !dbg !3737

; <label>:22:                                     ; preds = %19, %16
  %23 = load i32, i32* %4, align 4, !dbg !3738
  %24 = call i8* @AsyncSocket_Err2String(i32 %23), !dbg !3740
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.88, i32 0, i32 0), i8* %24), !dbg !3741
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !3743
  %26 = icmp ne %struct.AsyncSocket* %25, null, !dbg !3745
  br i1 %26, label %27, label %30, !dbg !3746

; <label>:27:                                     ; preds = %22
  %28 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !3747
  %29 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %28), !dbg !3749
  br label %30, !dbg !3750

; <label>:30:                                     ; preds = %27, %22
  store i32 0, i32* %1, align 4, !dbg !3751
  br label %33, !dbg !3751

; <label>:31:                                     ; preds = %19
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !3752
  store %struct.AsyncSocket* %32, %struct.AsyncSocket** getelementptr inbounds (%struct.GuestProxyData, %struct.GuestProxyData* @proxyData, i32 0, i32 1), align 8, !dbg !3753
  store i32 1, i32* %1, align 4, !dbg !3754
  br label %33, !dbg !3754

; <label>:33:                                     ; preds = %31, %30
  %34 = load i32, i32* %1, align 4, !dbg !3755
  ret i32 %34, !dbg !3755
}

declare i8* @UtilSafeMalloc0(i64) #2

declare i8* @Str_Strcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetVmVcUuidDir() #0 !dbg !1878 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3756, metadata !1886), !dbg !3757
  %2 = load i8*, i8** @GetVmVcUuidDir.vmVcUuidDir, align 8, !dbg !3758
  %3 = icmp ne i8* %2, null, !dbg !3758
  br i1 %3, label %4, label %5, !dbg !3760

; <label>:4:                                      ; preds = %0
  br label %13, !dbg !3761

; <label>:5:                                      ; preds = %0
  %6 = call i8* @GetProxyDataDir(), !dbg !3763
  store i8* %6, i8** %1, align 8, !dbg !3764
  %7 = load i8*, i8** %1, align 8, !dbg !3765
  %8 = icmp ne i8* %7, null, !dbg !3765
  br i1 %8, label %9, label %12, !dbg !3767

; <label>:9:                                      ; preds = %5
  %10 = load i8*, i8** %1, align 8, !dbg !3768
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !3770
  store i8* %11, i8** @GetVmVcUuidDir.vmVcUuidDir, align 8, !dbg !3771
  br label %12, !dbg !3772

; <label>:12:                                     ; preds = %9, %5
  br label %13, !dbg !3773

; <label>:13:                                     ; preds = %12, %4
  %14 = load i8*, i8** @GetVmVcUuidDir.vmVcUuidDir, align 8, !dbg !3775
  ret i8* %14, !dbg !3776
}

declare i32 @g_mkdir_with_parents(i8*, i32) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare i32 @g_file_set_contents(i8*, i8*, i64, %struct._GError**) #2

declare void @g_error_free(%struct._GError*) #2

declare %struct.AsyncSocket* @AsyncSocket_ListenVMCI(i32, i32, void (%struct.AsyncSocket*, i8*)*, i8*, %struct.AsyncSocketPollParams*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VMCISock_GetLocalCID() #8 !dbg !3777 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3780, metadata !1886), !dbg !3781
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3782, metadata !1886), !dbg !3783
  %4 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i32 0), !dbg !3784
  store i32 %4, i32* %2, align 4, !dbg !3785
  %5 = load i32, i32* %2, align 4, !dbg !3786
  %6 = icmp slt i32 %5, 0, !dbg !3788
  br i1 %6, label %7, label %13, !dbg !3789

; <label>:7:                                      ; preds = %0
  %8 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i32 0), !dbg !3790
  store i32 %8, i32* %2, align 4, !dbg !3792
  %9 = load i32, i32* %2, align 4, !dbg !3793
  %10 = icmp slt i32 %9, 0, !dbg !3795
  br i1 %10, label %11, label %12, !dbg !3796

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %1, align 4, !dbg !3797
  br label %22, !dbg !3797

; <label>:12:                                     ; preds = %7
  br label %13, !dbg !3799

; <label>:13:                                     ; preds = %12, %0
  %14 = load i32, i32* %2, align 4, !dbg !3800
  %15 = call i32 (i32, i64, ...) @ioctl(i32 %14, i64 1977, i32* %3) #9, !dbg !3802
  %16 = icmp slt i32 %15, 0, !dbg !3803
  br i1 %16, label %17, label %18, !dbg !3804

; <label>:17:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !3805
  br label %18, !dbg !3807

; <label>:18:                                     ; preds = %17, %13
  %19 = load i32, i32* %2, align 4, !dbg !3808
  %20 = call i32 @close(i32 %19), !dbg !3809
  %21 = load i32, i32* %3, align 4, !dbg !3810
  store i32 %21, i32* %1, align 4, !dbg !3811
  br label %22, !dbg !3811

; <label>:22:                                     ; preds = %18, %11
  %23 = load i32, i32* %1, align 4, !dbg !3812
  ret i32 %23, !dbg !3812
}

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

declare i32 @close(i32) #2

declare %struct.AsyncSocket* @AsyncSocket_Listen(i8*, i32, void (%struct.AsyncSocket*, i8*)*, i8*, %struct.AsyncSocketPollParams*, i32*) #2

declare %struct.AsyncSocket* @AsyncSocket_ListenLoopback(i32, void (%struct.AsyncSocket*, i8*)*, i8*, %struct.AsyncSocketPollParams*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1879, !1880}
!llvm.ident = !{!1881}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !130)
!1 = !DIFile(filename: "libgrabbitmqProxy_la-grabbitmqProxyPlugin.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!2 = !{!3, !15, !23, !27, !33, !48, !57}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AsyncSocketState", file: !16, line: 184, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/asyncsocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "AsyncSocketListening", value: 0)
!19 = !DIEnumerator(name: "AsyncSocketConnecting", value: 1)
!20 = !DIEnumerator(name: "AsyncSocketConnected", value: 2)
!21 = !DIEnumerator(name: "AsyncSocketCBCancelled", value: 3)
!22 = !DIEnumerator(name: "AsyncSocketClosed", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 232, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!25 = !{!26}
!26 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 339, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "TOOLS_APP_GUESTRPC", value: 1)
!30 = !DIEnumerator(name: "TOOLS_APP_SIGNALS", value: 2)
!31 = !DIEnumerator(name: "TOOLS_APP_PROVIDER", value: 3)
!32 = !DIEnumerator(name: "TOOLS_SVC_PROPERTY", value: 4)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 47, size: 32, align: 32, elements: !35)
!34 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dataMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!36 = !DIEnumerator(name: "DMERR_SUCCESS", value: 0)
!37 = !DIEnumerator(name: "DMERR_NOT_FOUND", value: 1)
!38 = !DIEnumerator(name: "DMERR_ALREADY_EXIST", value: 2)
!39 = !DIEnumerator(name: "DMERR_DUPLICATED_FIELD_IDS", value: 3)
!40 = !DIEnumerator(name: "DMERR_INSUFFICIENT_MEM", value: 4)
!41 = !DIEnumerator(name: "DMERR_TYPE_MISMATCH", value: 5)
!42 = !DIEnumerator(name: "DMERR_INVALID_ARGS", value: 6)
!43 = !DIEnumerator(name: "DMERR_UNKNOWN_TYPE", value: 7)
!44 = !DIEnumerator(name: "DMERR_TRUNCATED_DATA", value: 8)
!45 = !DIEnumerator(name: "DMERR_BUFFER_TOO_SMALL", value: 9)
!46 = !DIEnumerator(name: "DMERR_INTEGER_OVERFLOW", value: 10)
!47 = !DIEnumerator(name: "DMERR_BAD_DATA", value: 11)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 41, size: 32, align: 32, elements: !50)
!49 = !DIFile(filename: "rabbitmqProxyConst.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "RMQPROXYDM_FLD_COMMAND", value: 1)
!52 = !DIEnumerator(name: "RMQPROXYDM_FLD_GUEST_CONN_ID", value: 2)
!53 = !DIEnumerator(name: "RMQPROXYDM_FLD_PAYLOAD", value: 3)
!54 = !DIEnumerator(name: "RMQPROXYDM_FLD_GUEST_VER_ID", value: 4)
!55 = !DIEnumerator(name: "RMQPROXYDM_FLD_QUEUE_PREFIX_ID", value: 5)
!56 = !DIEnumerator(name: "RMQPROXYDM_FLD_VC_UUID", value: 6)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 52, size: 32, align: 32, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "COMMAND_DATA", value: 1)
!60 = !DIEnumerator(name: "COMMAND_CONNECT", value: 2)
!61 = !DIEnumerator(name: "COMMAND_CLOSE", value: 3)
!62 = !{!63, !64, !105, !106, !115, !127, !129}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnInfo", file: !66, line: 112, baseType: !67)
!66 = !DIFile(filename: "grabbitmqProxyPlugin.c", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ConnInfo", file: !66, line: 93, size: 640, align: 64, elements: !68)
!68 = !{!69, !73, !77, !83, !85, !90, !94, !98, !100, !101, !102, !103}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "isRmqClient", scope: !67, file: !66, line: 94, baseType: !70, size: 8, align: 8)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !71, line: 230, baseType: !72)
!71 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!72 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !67, file: !66, line: 95, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocket", file: !16, line: 155, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocket", file: !16, line: 155, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "recvCb", scope: !67, file: !66, line: 96, baseType: !78, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketRecvFn", file: !16, line: 389, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !63, !82, !74, !63}
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sendCb", scope: !67, file: !66, line: 97, baseType: !84, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSendFn", file: !16, line: 395, baseType: !79)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !67, file: !66, line: 98, baseType: !86, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketErrorFn", file: !16, line: 401, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !82, !74, !63}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "shutDown", scope: !67, file: !66, line: 100, baseType: !91, size: 32, align: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !92, line: 50, baseType: !93)
!92 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !92, line: 49, baseType: !82)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "packetLen", scope: !67, file: !66, line: 102, baseType: !95, size: 32, align: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !71, line: 174, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !97, line: 196, baseType: !82)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "recvBuf", scope: !67, file: !66, line: 103, baseType: !99, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "recvBufLen", scope: !67, file: !66, line: 104, baseType: !82, size: 32, align: 32, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sendQueueLen", scope: !67, file: !66, line: 106, baseType: !82, size: 32, align: 32, offset: 480)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "recvStopped", scope: !67, file: !66, line: 108, baseType: !91, size: 32, align: 32, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "toConn", scope: !67, file: !66, line: 110, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !108, line: 37, baseType: !109)
!108 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !108, line: 39, size: 192, align: 64, elements: !110)
!110 = !{!111, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !109, file: !108, line: 41, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !92, line: 77, baseType: !63)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !108, line: 42, baseType: !106, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !108, line: 43, baseType: !106, size: 64, align: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !117, line: 153, size: 128, align: 16, elements: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !116, file: !117, line: 155, baseType: !120, size: 16, align: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !121, line: 28, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!122 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !116, file: !117, line: 156, baseType: !124, size: 112, align: 8, offset: 16)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 112, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 14)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!129 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!130 = !{!131, !135, !194, !204, !1867, !1871, !1873, !1875, !1877}
!131 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !66, line: 66, type: !132, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, align: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = distinct !DIGlobalVariable(name: "regData", scope: !136, file: !66, line: 1942, type: !140, isLocal: true, isDefinition: true, variable: %struct.ToolsPluginData* @ToolsOnLoad.regData)
!136 = distinct !DISubprogram(name: "ToolsOnLoad", scope: !66, file: !66, line: 1940, type: !137, isLocal: false, isDefinition: true, scopeLine: 1941, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !159}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginData", file: !24, line: 545, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginData", file: !24, line: 501, size: 256, align: 64, elements: !142)
!142 = !{!143, !144, !155, !192}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !24, line: 503, baseType: !127, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !141, file: !24, line: 508, baseType: !145, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !147, line: 37, baseType: !148)
!147 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !147, line: 41, size: 128, align: 64, elements: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !148, file: !147, line: 43, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !92, line: 46, baseType: !72)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !148, file: !147, line: 44, baseType: !154, size: 32, align: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !92, line: 55, baseType: !129)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "errorCb", scope: !141, file: !24, line: 539, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!91, !159, !190, !112, !191}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !24, line: 274, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !24, line: 241, size: 576, align: 64, elements: !162)
!162 = !{!163, !165, !168, !169, !170, !175, !180, !185, !186, !187, !189}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !161, file: !24, line: 243, baseType: !164, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !24, line: 234, baseType: !23)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !24, line: 245, baseType: !166, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !161, file: !24, line: 247, baseType: !91, size: 32, align: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !161, file: !24, line: 249, baseType: !82, size: 32, align: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !161, file: !24, line: 251, baseType: !171, size: 64, align: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !173, line: 56, baseType: !174)
!173 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !173, line: 56, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !161, file: !24, line: 253, baseType: !176, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !178, line: 48, baseType: !179)
!178 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !178, line: 48, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !161, file: !24, line: 255, baseType: !181, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !183, line: 48, baseType: !184)
!183 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !183, line: 48, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !161, file: !24, line: 261, baseType: !82, size: 32, align: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !161, file: !24, line: 263, baseType: !82, size: 32, align: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !161, file: !24, line: 265, baseType: !188, size: 64, align: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !161, file: !24, line: 273, baseType: !112, size: 64, align: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppType", file: !24, line: 360, baseType: !27)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !141, file: !24, line: 544, baseType: !112, size: 64, align: 64, offset: 192)
!193 = !{}
!194 = distinct !DIGlobalVariable(name: "proxyData", scope: !0, file: !66, line: 129, type: !195, isLocal: true, isDefinition: true, variable: %struct.GuestProxyData* @proxyData)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestProxyData", file: !66, line: 127, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 114, size: 320, align: 64, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "vmxListenSock", scope: !196, file: !66, line: 115, baseType: !74, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rmqListenSock", scope: !196, file: !66, line: 116, baseType: !74, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rmqConnList", scope: !196, file: !66, line: 118, baseType: !106, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !196, file: !66, line: 123, baseType: !159, size: 64, align: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "messageTunnellingEnabled", scope: !196, file: !66, line: 124, baseType: !91, size: 32, align: 32, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "maxSendQueueLen", scope: !196, file: !66, line: 126, baseType: !82, size: 32, align: 32, offset: 288)
!204 = distinct !DIGlobalVariable(name: "sslCtx", scope: !205, file: !66, line: 1304, type: !208, isLocal: true, isDefinition: true, variable: %struct.ssl_ctx_st** @TheSslContext.sslCtx)
!205 = distinct !DISubprogram(name: "TheSslContext", scope: !66, file: !66, line: 1302, type: !206, isLocal: true, isDefinition: true, scopeLine: 1303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!206 = !DISubroutineType(types: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !210, line: 179, baseType: !211)
!210 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !212, line: 925, size: 6400, align: 64, elements: !213)
!212 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!213 = !{!214, !1711, !1712, !1713, !1715, !1720, !1721, !1722, !1723, !1724, !1725, !1730, !1735, !1739, !1753, !1754, !1758, !1759, !1765, !1766, !1771, !1775, !1779, !1780, !1781, !1782, !1783, !1784, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1827, !1828, !1829, !1833, !1834, !1835, !1836, !1837, !1838, !1841, !1842, !1843, !1848, !1849, !1854, !1855, !1856, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !211, file: !212, line: 926, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !212, line: 374, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !212, line: 438, size: 1856, align: 64, elements: !219)
!219 = !{!220, !221, !1629, !1633, !1634, !1635, !1636, !1640, !1641, !1645, !1646, !1647, !1648, !1652, !1656, !1660, !1661, !1665, !1669, !1673, !1677, !1681, !1685, !1689, !1695, !1696, !1699, !1700, !1707}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !218, file: !212, line: 439, baseType: !82, size: 32, align: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !218, file: !212, line: 440, baseType: !222, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!82, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !210, line: 178, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !212, line: 1422, size: 6592, align: 64, elements: !228)
!228 = !{!229, !230, !231, !232, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !342, !343, !344, !345, !348, !349, !412, !892, !1306, !1307, !1311, !1312, !1313, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1345, !1346, !1347, !1348, !1355, !1356, !1507, !1511, !1512, !1513, !1517, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1537, !1538, !1539, !1540, !1541, !1542, !1545, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1565, !1570, !1571, !1578, !1579, !1580, !1581, !1582, !1587, !1594, !1595, !1596, !1597, !1598, !1627, !1628}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !227, file: !212, line: 1427, baseType: !82, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !212, line: 1429, baseType: !82, size: 32, align: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !227, file: !212, line: 1431, baseType: !215, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !227, file: !212, line: 1438, baseType: !233, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !235, line: 238, baseType: !236)
!235 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !235, line: 325, size: 896, align: 64, elements: !237)
!237 = !{!238, !277, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !293, !294}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !236, file: !235, line: 326, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !235, line: 323, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !235, line: 312, size: 640, align: 64, elements: !242)
!242 = !{!243, !244, !245, !249, !253, !257, !258, !263, !267, !268}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !235, line: 313, baseType: !82, size: 32, align: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !235, line: 314, baseType: !127, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !241, file: !235, line: 315, baseType: !246, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!82, !233, !127, !82}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !241, file: !235, line: 316, baseType: !250, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!82, !233, !99, !82}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !241, file: !235, line: 317, baseType: !254, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!82, !233, !127}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !241, file: !235, line: 318, baseType: !250, size: 64, align: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !241, file: !235, line: 319, baseType: !259, size: 64, align: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !233, !82, !262, !63}
!262 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !241, file: !235, line: 320, baseType: !264, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!82, !233}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !241, file: !235, line: 321, baseType: !264, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !241, file: !235, line: 322, baseType: !269, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!262, !233, !82, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !235, line: 309, baseType: !274)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276, !82, !127, !82, !262, !262}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !236, file: !235, line: 328, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!262, !276, !82, !127, !82, !262, !262}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !236, file: !235, line: 329, baseType: !99, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !236, file: !235, line: 330, baseType: !82, size: 32, align: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !236, file: !235, line: 331, baseType: !82, size: 32, align: 32, offset: 224)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !235, line: 332, baseType: !82, size: 32, align: 32, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !236, file: !235, line: 333, baseType: !82, size: 32, align: 32, offset: 288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !236, file: !235, line: 334, baseType: !82, size: 32, align: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !236, file: !235, line: 335, baseType: !63, size: 64, align: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !236, file: !235, line: 336, baseType: !276, size: 64, align: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !236, file: !235, line: 337, baseType: !276, size: 64, align: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !236, file: !235, line: 338, baseType: !82, size: 32, align: 32, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !236, file: !235, line: 339, baseType: !292, size: 64, align: 64, offset: 640)
!292 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !236, file: !235, line: 340, baseType: !292, size: 64, align: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !236, file: !235, line: 341, baseType: !295, size: 128, align: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !210, line: 195, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !297, line: 292, size: 128, align: 64, elements: !298)
!297 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!298 = !{!299, !319}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !296, file: !297, line: 293, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !297, line: 297, size: 256, align: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !301, file: !297, line: 297, baseType: !304, size: 256, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !305, line: 72, baseType: !306)
!305 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !305, line: 66, size: 256, align: 64, elements: !307)
!307 = !{!308, !309, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !306, file: !305, line: 67, baseType: !82, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !306, file: !305, line: 68, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !306, file: !305, line: 69, baseType: !82, size: 32, align: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !306, file: !305, line: 70, baseType: !82, size: 32, align: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !306, file: !305, line: 71, baseType: !314, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!82, !317, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !296, file: !297, line: 295, baseType: !82, size: 32, align: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !227, file: !212, line: 1440, baseType: !233, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !227, file: !212, line: 1442, baseType: !233, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !227, file: !212, line: 1455, baseType: !82, size: 32, align: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !227, file: !212, line: 1457, baseType: !82, size: 32, align: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !227, file: !212, line: 1458, baseType: !222, size: 64, align: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !227, file: !212, line: 1467, baseType: !82, size: 32, align: 32, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !227, file: !212, line: 1474, baseType: !82, size: 32, align: 32, offset: 480)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !227, file: !212, line: 1476, baseType: !82, size: 32, align: 32, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !227, file: !212, line: 1478, baseType: !82, size: 32, align: 32, offset: 544)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !227, file: !212, line: 1480, baseType: !82, size: 32, align: 32, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !227, file: !212, line: 1482, baseType: !82, size: 32, align: 32, offset: 608)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !227, file: !212, line: 1483, baseType: !332, size: 64, align: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !210, line: 127, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !335, line: 77, size: 192, align: 64, elements: !336)
!335 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!336 = !{!337, !340, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !334, file: !335, line: 78, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !339, line: 216, baseType: !292)
!339 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !334, file: !335, line: 79, baseType: !99, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !334, file: !335, line: 80, baseType: !338, size: 64, align: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !227, file: !212, line: 1484, baseType: !63, size: 64, align: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !227, file: !212, line: 1486, baseType: !82, size: 32, align: 32, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !227, file: !212, line: 1487, baseType: !82, size: 32, align: 32, offset: 800)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !227, file: !212, line: 1489, baseType: !346, size: 64, align: 64, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !227, file: !212, line: 1490, baseType: !129, size: 32, align: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !227, file: !212, line: 1491, baseType: !350, size: 64, align: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !352, line: 163, size: 2752, align: 64, elements: !353)
!352 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!353 = !{!354, !355, !356, !357, !358, !359, !360, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !386, !387, !391, !392, !396, !397, !398}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !351, file: !352, line: 164, baseType: !82, size: 32, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !351, file: !352, line: 165, baseType: !82, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !351, file: !352, line: 166, baseType: !82, size: 32, align: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !351, file: !352, line: 167, baseType: !82, size: 32, align: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !351, file: !352, line: 171, baseType: !129, size: 32, align: 32, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !351, file: !352, line: 172, baseType: !82, size: 32, align: 32, offset: 160)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !351, file: !352, line: 173, baseType: !361, size: 64, align: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !351, file: !352, line: 174, baseType: !82, size: 32, align: 32, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !351, file: !352, line: 175, baseType: !82, size: 32, align: 32, offset: 288)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !351, file: !352, line: 176, baseType: !82, size: 32, align: 32, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !351, file: !352, line: 178, baseType: !82, size: 32, align: 32, offset: 352)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !351, file: !352, line: 179, baseType: !82, size: 32, align: 32, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !351, file: !352, line: 180, baseType: !346, size: 64, align: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !351, file: !352, line: 181, baseType: !346, size: 64, align: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !351, file: !352, line: 182, baseType: !346, size: 64, align: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !351, file: !352, line: 184, baseType: !129, size: 32, align: 32, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !351, file: !352, line: 185, baseType: !129, size: 32, align: 32, offset: 672)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !351, file: !352, line: 186, baseType: !82, size: 32, align: 32, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !351, file: !352, line: 187, baseType: !129, size: 32, align: 32, offset: 736)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !351, file: !352, line: 188, baseType: !82, size: 32, align: 32, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !351, file: !352, line: 189, baseType: !346, size: 64, align: 64, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !351, file: !352, line: 190, baseType: !346, size: 64, align: 64, offset: 896)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !351, file: !352, line: 191, baseType: !346, size: 64, align: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !351, file: !352, line: 192, baseType: !346, size: 64, align: 64, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !351, file: !352, line: 193, baseType: !346, size: 64, align: 64, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !351, file: !352, line: 195, baseType: !129, size: 32, align: 32, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !351, file: !352, line: 196, baseType: !383, size: 256, align: 8, offset: 1184)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 256, align: 8, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !351, file: !352, line: 197, baseType: !129, size: 32, align: 32, offset: 1440)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !351, file: !352, line: 198, baseType: !388, size: 128, align: 8, offset: 1472)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, align: 8, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !351, file: !352, line: 199, baseType: !129, size: 32, align: 32, offset: 1600)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !351, file: !352, line: 200, baseType: !393, size: 384, align: 8, offset: 1632)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 384, align: 8, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 48)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !351, file: !352, line: 201, baseType: !292, size: 64, align: 64, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !351, file: !352, line: 202, baseType: !292, size: 64, align: 64, offset: 2112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !351, file: !352, line: 215, baseType: !399, size: 576, align: 32, offset: 2176)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !352, line: 203, size: 576, align: 32, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !399, file: !352, line: 204, baseType: !129, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !399, file: !352, line: 205, baseType: !129, size: 32, align: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !399, file: !352, line: 206, baseType: !129, size: 32, align: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !399, file: !352, line: 207, baseType: !129, size: 32, align: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !399, file: !352, line: 208, baseType: !129, size: 32, align: 32, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !399, file: !352, line: 209, baseType: !129, size: 32, align: 32, offset: 160)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !399, file: !352, line: 210, baseType: !383, size: 256, align: 8, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !399, file: !352, line: 211, baseType: !129, size: 32, align: 32, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !399, file: !352, line: 212, baseType: !129, size: 32, align: 32, offset: 480)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !399, file: !352, line: 213, baseType: !129, size: 32, align: 32, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !399, file: !352, line: 214, baseType: !129, size: 32, align: 32, offset: 544)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !227, file: !212, line: 1492, baseType: !413, size: 64, align: 64, offset: 1024)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !415, line: 481, size: 9728, align: 64, elements: !416)
!415 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!416 = !{!417, !418, !419, !423, !424, !428, !429, !430, !431, !432, !433, !434, !435, !436, !444, !445, !457, !458, !462, !463, !467, !468, !469, !470, !471, !472, !473, !474, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 482, baseType: !262, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !414, file: !415, line: 483, baseType: !82, size: 32, align: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !414, file: !415, line: 484, baseType: !420, size: 64, align: 8, offset: 96)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 64, align: 8, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 8)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !414, file: !415, line: 485, baseType: !82, size: 32, align: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !414, file: !415, line: 486, baseType: !425, size: 512, align: 8, offset: 192)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 512, align: 8, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !414, file: !415, line: 487, baseType: !420, size: 64, align: 8, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !414, file: !415, line: 488, baseType: !82, size: 32, align: 32, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !414, file: !415, line: 489, baseType: !425, size: 512, align: 8, offset: 800)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !414, file: !415, line: 490, baseType: !383, size: 256, align: 8, offset: 1312)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !414, file: !415, line: 491, baseType: !383, size: 256, align: 8, offset: 1568)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !414, file: !415, line: 493, baseType: !82, size: 32, align: 32, offset: 1824)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !414, file: !415, line: 494, baseType: !82, size: 32, align: 32, offset: 1856)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !414, file: !415, line: 496, baseType: !82, size: 32, align: 32, offset: 1888)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !414, file: !415, line: 497, baseType: !437, size: 192, align: 64, offset: 1920)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !415, line: 447, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !415, line: 438, size: 192, align: 64, elements: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !438, file: !415, line: 440, baseType: !346, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !438, file: !415, line: 442, baseType: !338, size: 64, align: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !438, file: !415, line: 444, baseType: !82, size: 32, align: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !438, file: !415, line: 446, baseType: !82, size: 32, align: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !414, file: !415, line: 498, baseType: !437, size: 192, align: 64, offset: 2112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !414, file: !415, line: 499, baseType: !446, size: 448, align: 64, offset: 2304)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !415, line: 436, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !415, line: 403, size: 448, align: 64, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !415, line: 407, baseType: !82, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !415, line: 411, baseType: !129, size: 32, align: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !447, file: !415, line: 415, baseType: !129, size: 32, align: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !447, file: !415, line: 419, baseType: !346, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !447, file: !415, line: 423, baseType: !346, size: 64, align: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !447, file: !415, line: 427, baseType: !346, size: 64, align: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !447, file: !415, line: 431, baseType: !292, size: 64, align: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !447, file: !415, line: 435, baseType: !420, size: 64, align: 8, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !414, file: !415, line: 500, baseType: !446, size: 448, align: 64, offset: 2752)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !414, file: !415, line: 505, baseType: !459, size: 16, align: 8, offset: 3200)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 16, align: 8, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 2)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !414, file: !415, line: 506, baseType: !129, size: 32, align: 32, offset: 3232)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !414, file: !415, line: 507, baseType: !464, size: 32, align: 8, offset: 3264)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32, align: 8, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 4)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !414, file: !415, line: 508, baseType: !129, size: 32, align: 32, offset: 3296)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !414, file: !415, line: 510, baseType: !129, size: 32, align: 32, offset: 3328)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !414, file: !415, line: 511, baseType: !82, size: 32, align: 32, offset: 3360)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !414, file: !415, line: 512, baseType: !82, size: 32, align: 32, offset: 3392)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !414, file: !415, line: 513, baseType: !82, size: 32, align: 32, offset: 3424)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !414, file: !415, line: 514, baseType: !361, size: 64, align: 64, offset: 3456)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !414, file: !415, line: 516, baseType: !233, size: 64, align: 64, offset: 3520)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !414, file: !415, line: 521, baseType: !475, size: 64, align: 64, offset: 3584)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !210, line: 132, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !479, line: 268, size: 384, align: 64, elements: !480)
!479 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!480 = !{!481, !529, !533, !534, !535, !539}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !478, file: !479, line: 269, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !210, line: 131, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !479, line: 160, size: 960, align: 64, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !495, !499, !503, !509, !510, !515, !519, !523, !524, !525}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !479, line: 161, baseType: !82, size: 32, align: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !485, file: !479, line: 162, baseType: !82, size: 32, align: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !485, file: !479, line: 163, baseType: !82, size: 32, align: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !479, line: 164, baseType: !292, size: 64, align: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !485, file: !479, line: 165, baseType: !492, size: 64, align: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!82, !476}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !485, file: !479, line: 166, baseType: !496, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!82, !476, !317, !338}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !485, file: !479, line: 167, baseType: !500, size: 64, align: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!82, !476, !346}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !485, file: !479, line: 168, baseType: !504, size: 64, align: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!82, !476, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !485, file: !479, line: 169, baseType: !492, size: 64, align: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !485, file: !479, line: 171, baseType: !511, size: 64, align: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!82, !82, !361, !129, !346, !514, !63}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !485, file: !479, line: 173, baseType: !516, size: 64, align: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!82, !82, !361, !129, !361, !129, !63}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !485, file: !479, line: 176, baseType: !520, size: 160, align: 32, offset: 640)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, align: 32, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 5)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !485, file: !479, line: 177, baseType: !82, size: 32, align: 32, offset: 800)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !485, file: !479, line: 178, baseType: !82, size: 32, align: 32, offset: 832)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !485, file: !479, line: 180, baseType: !526, size: 64, align: 64, offset: 896)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!82, !476, !82, !82, !63}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !478, file: !479, line: 270, baseType: !530, size: 64, align: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !210, line: 177, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !210, line: 177, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !479, line: 272, baseType: !292, size: 64, align: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !478, file: !479, line: 273, baseType: !63, size: 64, align: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !478, file: !479, line: 275, baseType: !536, size: 64, align: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !210, line: 138, baseType: !538)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !210, line: 138, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !478, file: !479, line: 277, baseType: !496, size: 64, align: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !414, file: !415, line: 527, baseType: !82, size: 32, align: 32, offset: 3648)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !414, file: !415, line: 528, baseType: !82, size: 32, align: 32, offset: 3680)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !414, file: !415, line: 529, baseType: !82, size: 32, align: 32, offset: 3712)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !414, file: !415, line: 534, baseType: !82, size: 32, align: 32, offset: 3744)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !414, file: !415, line: 535, baseType: !459, size: 16, align: 8, offset: 3776)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !414, file: !415, line: 540, baseType: !82, size: 32, align: 32, offset: 3808)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !414, file: !415, line: 541, baseType: !82, size: 32, align: 32, offset: 3840)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !414, file: !415, line: 542, baseType: !82, size: 32, align: 32, offset: 3872)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !414, file: !415, line: 543, baseType: !82, size: 32, align: 32, offset: 3904)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !414, file: !415, line: 549, baseType: !63, size: 64, align: 64, offset: 3968)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !414, file: !415, line: 550, baseType: !338, size: 64, align: 64, offset: 4032)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !414, file: !415, line: 551, baseType: !63, size: 64, align: 64, offset: 4096)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !414, file: !415, line: 552, baseType: !338, size: 64, align: 64, offset: 4160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !414, file: !415, line: 592, baseType: !554, size: 4224, align: 64, offset: 4224)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !415, line: 553, size: 4224, align: 64, elements: !555)
!555 = !{!556, !560, !561, !562, !563, !564, !565, !566, !584, !680, !685, !686, !687, !688, !689, !693, !699, !700, !701, !702, !835, !836, !837, !838, !882}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !554, file: !415, line: 555, baseType: !557, size: 1024, align: 8)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 1024, align: 8, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !554, file: !415, line: 557, baseType: !557, size: 1024, align: 8, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !554, file: !415, line: 558, baseType: !82, size: 32, align: 32, offset: 2048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !554, file: !415, line: 559, baseType: !557, size: 1024, align: 8, offset: 2080)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !554, file: !415, line: 560, baseType: !82, size: 32, align: 32, offset: 3104)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !554, file: !415, line: 561, baseType: !292, size: 64, align: 64, offset: 3136)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !554, file: !415, line: 562, baseType: !82, size: 32, align: 32, offset: 3200)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !554, file: !415, line: 564, baseType: !567, size: 64, align: 64, offset: 3264)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !212, line: 375, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !212, line: 418, size: 704, align: 64, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !570, file: !212, line: 419, baseType: !82, size: 32, align: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !212, line: 420, baseType: !127, size: 64, align: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !570, file: !212, line: 421, baseType: !292, size: 64, align: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !570, file: !212, line: 426, baseType: !292, size: 64, align: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !570, file: !212, line: 427, baseType: !292, size: 64, align: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !570, file: !212, line: 428, baseType: !292, size: 64, align: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !570, file: !212, line: 429, baseType: !292, size: 64, align: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !570, file: !212, line: 430, baseType: !292, size: 64, align: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !570, file: !212, line: 431, baseType: !292, size: 64, align: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !570, file: !212, line: 432, baseType: !292, size: 64, align: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !570, file: !212, line: 433, baseType: !82, size: 32, align: 32, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !570, file: !212, line: 434, baseType: !82, size: 32, align: 32, offset: 672)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !554, file: !415, line: 566, baseType: !585, size: 64, align: 64, offset: 3328)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !210, line: 140, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !588, line: 135, size: 1152, align: 64, elements: !589)
!588 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!589 = !{!590, !591, !592, !604, !605, !606, !607, !608, !609, !621, !622, !623, !624, !625, !626, !627, !628, !679}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !587, file: !588, line: 140, baseType: !82, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !587, file: !588, line: 141, baseType: !82, size: 32, align: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !587, file: !588, line: 142, baseType: !593, size: 64, align: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !210, line: 120, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !596, line: 313, size: 192, align: 64, elements: !597)
!596 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!597 = !{!598, !600, !601, !602, !603}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !595, file: !596, line: 314, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !595, file: !596, line: 316, baseType: !82, size: 32, align: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !595, file: !596, line: 318, baseType: !82, size: 32, align: 32, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !595, file: !596, line: 319, baseType: !82, size: 32, align: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !596, line: 320, baseType: !82, size: 32, align: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !587, file: !588, line: 143, baseType: !593, size: 64, align: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !588, line: 144, baseType: !262, size: 64, align: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !587, file: !588, line: 145, baseType: !593, size: 64, align: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !587, file: !588, line: 146, baseType: !593, size: 64, align: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !588, line: 147, baseType: !82, size: 32, align: 32, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !587, file: !588, line: 148, baseType: !610, size: 64, align: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !210, line: 123, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !596, line: 324, size: 832, align: 64, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !620}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !612, file: !596, line: 325, baseType: !82, size: 32, align: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !612, file: !596, line: 326, baseType: !594, size: 192, align: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !612, file: !596, line: 327, baseType: !594, size: 192, align: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !612, file: !596, line: 328, baseType: !594, size: 192, align: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !612, file: !596, line: 330, baseType: !619, size: 128, align: 64, offset: 640)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, align: 64, elements: !460)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !596, line: 333, baseType: !82, size: 32, align: 32, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !587, file: !588, line: 150, baseType: !593, size: 64, align: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !587, file: !588, line: 151, baseType: !593, size: 64, align: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !587, file: !588, line: 152, baseType: !346, size: 64, align: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !587, file: !588, line: 153, baseType: !82, size: 32, align: 32, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !587, file: !588, line: 154, baseType: !593, size: 64, align: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !587, file: !588, line: 155, baseType: !82, size: 32, align: 32, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !587, file: !588, line: 156, baseType: !295, size: 128, align: 64, offset: 896)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !587, file: !588, line: 157, baseType: !629, size: 64, align: 64, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !210, line: 141, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !588, line: 117, size: 576, align: 64, elements: !633)
!633 = !{!634, !635, !639, !645, !654, !655, !656, !657, !658}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !588, line: 118, baseType: !127, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !632, file: !588, line: 120, baseType: !636, size: 64, align: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!82, !585}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !632, file: !588, line: 121, baseType: !640, size: 64, align: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!82, !346, !643, !585}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !632, file: !588, line: 123, baseType: !646, size: 64, align: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!82, !649, !593, !643, !643, !643, !651, !610}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !210, line: 121, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !210, line: 121, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !632, file: !588, line: 126, baseType: !636, size: 64, align: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !632, file: !588, line: 127, baseType: !636, size: 64, align: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !588, line: 128, baseType: !82, size: 32, align: 32, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !632, file: !588, line: 129, baseType: !99, size: 64, align: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !632, file: !588, line: 131, baseType: !659, size: 64, align: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!82, !585, !82, !82, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !210, line: 125, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !596, line: 349, size: 192, align: 64, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !664, file: !596, line: 350, baseType: !129, size: 32, align: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !664, file: !596, line: 351, baseType: !63, size: 64, align: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !664, file: !596, line: 357, baseType: !669, size: 64, align: 64, offset: 128)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !596, line: 352, size: 64, align: 64, elements: !670)
!670 = !{!671, !675}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !669, file: !596, line: 354, baseType: !672, size: 64, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !82, !82, !63}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !669, file: !596, line: 356, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!82, !82, !82, !662}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !587, file: !588, line: 158, baseType: !530, size: 64, align: 64, offset: 1088)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !554, file: !415, line: 569, baseType: !681, size: 64, align: 64, offset: 3392)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !683, line: 741, baseType: !684)
!683 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !479, line: 147, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !554, file: !415, line: 572, baseType: !82, size: 32, align: 32, offset: 3456)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !554, file: !415, line: 573, baseType: !82, size: 32, align: 32, offset: 3488)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !554, file: !415, line: 575, baseType: !82, size: 32, align: 32, offset: 3520)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !554, file: !415, line: 576, baseType: !82, size: 32, align: 32, offset: 3552)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !554, file: !415, line: 577, baseType: !690, size: 72, align: 8, offset: 3584)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 72, align: 8, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 9)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !554, file: !415, line: 578, baseType: !694, size: 64, align: 64, offset: 3712)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !696, line: 192, size: 256, align: 64, elements: !697)
!696 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !695, file: !696, line: 192, baseType: !304, size: 256, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !554, file: !415, line: 579, baseType: !82, size: 32, align: 32, offset: 3776)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !554, file: !415, line: 580, baseType: !82, size: 32, align: 32, offset: 3808)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !554, file: !415, line: 581, baseType: !346, size: 64, align: 64, offset: 3840)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !554, file: !415, line: 582, baseType: !703, size: 64, align: 64, offset: 3904)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !210, line: 129, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !479, line: 308, size: 704, align: 64, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !736, !740, !744, !745, !829, !830, !834}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !706, file: !479, line: 309, baseType: !82, size: 32, align: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !706, file: !479, line: 310, baseType: !82, size: 32, align: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !706, file: !479, line: 312, baseType: !82, size: 32, align: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !706, file: !479, line: 313, baseType: !82, size: 32, align: 32, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !479, line: 315, baseType: !292, size: 64, align: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !706, file: !479, line: 317, baseType: !714, size: 64, align: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !717, !361, !361, !82}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !210, line: 130, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !479, line: 449, size: 1344, align: 64, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !719, file: !479, line: 450, baseType: !703, size: 64, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !719, file: !479, line: 451, baseType: !530, size: 64, align: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !719, file: !479, line: 453, baseType: !82, size: 32, align: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !719, file: !479, line: 454, baseType: !82, size: 32, align: 32, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !719, file: !479, line: 455, baseType: !388, size: 128, align: 8, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !719, file: !479, line: 456, baseType: !388, size: 128, align: 8, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !719, file: !479, line: 457, baseType: !383, size: 256, align: 8, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !719, file: !479, line: 458, baseType: !82, size: 32, align: 32, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !719, file: !479, line: 459, baseType: !63, size: 64, align: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !719, file: !479, line: 460, baseType: !82, size: 32, align: 32, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !479, line: 461, baseType: !292, size: 64, align: 64, offset: 896)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !719, file: !479, line: 462, baseType: !63, size: 64, align: 64, offset: 960)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !719, file: !479, line: 463, baseType: !82, size: 32, align: 32, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !719, file: !479, line: 464, baseType: !82, size: 32, align: 32, offset: 1056)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !719, file: !479, line: 465, baseType: !383, size: 256, align: 8, offset: 1088)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !706, file: !479, line: 320, baseType: !737, size: 64, align: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!82, !717, !346, !361, !338}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !706, file: !479, line: 323, baseType: !741, size: 64, align: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!82, !717}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !706, file: !479, line: 325, baseType: !82, size: 32, align: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !706, file: !479, line: 327, baseType: !746, size: 64, align: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!82, !717, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !751, line: 561, baseType: !752)
!751 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !751, line: 532, size: 128, align: 64, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !751, line: 533, baseType: !82, size: 32, align: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !751, line: 560, baseType: !756, size: 64, align: 64, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !751, line: 534, size: 64, align: 64, elements: !757)
!757 = !{!758, !759, !761, !770, !781, !784, !787, !790, !793, !796, !799, !802, !805, !808, !811, !814, !817, !820, !823, !824, !825}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !756, file: !751, line: 535, baseType: !99, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !756, file: !751, line: 536, baseType: !760, size: 32, align: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !210, line: 99, baseType: !82)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !756, file: !751, line: 537, baseType: !762, size: 64, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !210, line: 98, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !751, line: 247, size: 192, align: 64, elements: !765)
!765 = !{!766, !767, !768, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !764, file: !751, line: 248, baseType: !82, size: 32, align: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !751, line: 249, baseType: !82, size: 32, align: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !764, file: !751, line: 250, baseType: !346, size: 64, align: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !751, line: 256, baseType: !262, size: 64, align: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !756, file: !751, line: 538, baseType: !771, size: 64, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !210, line: 103, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !751, line: 218, size: 320, align: 64, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !773, file: !751, line: 219, baseType: !127, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !773, file: !751, line: 219, baseType: !127, size: 64, align: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !773, file: !751, line: 220, baseType: !82, size: 32, align: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !773, file: !751, line: 221, baseType: !82, size: 32, align: 32, offset: 160)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !773, file: !751, line: 222, baseType: !361, size: 64, align: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !751, line: 223, baseType: !82, size: 32, align: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !756, file: !751, line: 539, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !210, line: 83, baseType: !764)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !756, file: !751, line: 540, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !210, line: 84, baseType: !764)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !756, file: !751, line: 541, baseType: !788, size: 64, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64, align: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !210, line: 85, baseType: !764)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !756, file: !751, line: 542, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !210, line: 86, baseType: !764)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !756, file: !751, line: 543, baseType: !794, size: 64, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !210, line: 87, baseType: !764)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !756, file: !751, line: 544, baseType: !797, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !210, line: 88, baseType: !764)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !756, file: !751, line: 545, baseType: !800, size: 64, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !210, line: 89, baseType: !764)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !756, file: !751, line: 546, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !210, line: 90, baseType: !764)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !756, file: !751, line: 547, baseType: !806, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !210, line: 92, baseType: !764)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !756, file: !751, line: 548, baseType: !809, size: 64, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !210, line: 91, baseType: !764)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !756, file: !751, line: 549, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !210, line: 93, baseType: !764)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !756, file: !751, line: 550, baseType: !815, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !210, line: 95, baseType: !764)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !756, file: !751, line: 551, baseType: !818, size: 64, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !210, line: 96, baseType: !764)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !756, file: !751, line: 552, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !210, line: 97, baseType: !764)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !756, file: !751, line: 557, baseType: !762, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !756, file: !751, line: 558, baseType: !762, size: 64, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !756, file: !751, line: 559, baseType: !826, size: 64, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !751, line: 307, baseType: !828)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !751, line: 307, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !706, file: !479, line: 329, baseType: !746, size: 64, align: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !706, file: !479, line: 331, baseType: !831, size: 64, align: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !717, !82, !82, !63}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !706, file: !479, line: 333, baseType: !63, size: 64, align: 64, offset: 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !554, file: !415, line: 583, baseType: !482, size: 64, align: 64, offset: 3968)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !554, file: !415, line: 584, baseType: !82, size: 32, align: 32, offset: 4032)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !554, file: !415, line: 585, baseType: !82, size: 32, align: 32, offset: 4064)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !554, file: !415, line: 587, baseType: !839, size: 64, align: 64, offset: 4096)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !212, line: 908, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !212, line: 912, size: 192, align: 64, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !842, file: !212, line: 913, baseType: !82, size: 32, align: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !212, line: 914, baseType: !127, size: 64, align: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !842, file: !212, line: 916, baseType: !847, size: 64, align: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !849, line: 29, baseType: !850)
!849 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !849, line: 13, size: 512, align: 64, elements: !851)
!851 = !{!852, !853, !854, !868, !872, !876, !877, !881}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !849, line: 14, baseType: !82, size: 32, align: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !849, line: 15, baseType: !127, size: 64, align: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !850, file: !849, line: 16, baseType: !855, size: 64, align: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64, align: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!82, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !849, line: 11, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !849, line: 31, size: 448, align: 64, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !860, file: !849, line: 32, baseType: !847, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !860, file: !849, line: 33, baseType: !292, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !860, file: !849, line: 34, baseType: !292, size: 64, align: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !860, file: !849, line: 35, baseType: !292, size: 64, align: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !860, file: !849, line: 36, baseType: !292, size: 64, align: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !860, file: !849, line: 37, baseType: !295, size: 128, align: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !850, file: !849, line: 17, baseType: !869, size: 64, align: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !858}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !850, file: !849, line: 18, baseType: !873, size: 64, align: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64, align: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!82, !858, !346, !129, !346, !129}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !850, file: !849, line: 21, baseType: !873, size: 64, align: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !850, file: !849, line: 27, baseType: !878, size: 64, align: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!262}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !850, file: !849, line: 28, baseType: !878, size: 64, align: 64, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !554, file: !415, line: 591, baseType: !82, size: 32, align: 32, offset: 4160)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !414, file: !415, line: 595, baseType: !425, size: 512, align: 8, offset: 8448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !414, file: !415, line: 596, baseType: !347, size: 8, align: 8, offset: 8960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !414, file: !415, line: 597, baseType: !425, size: 512, align: 8, offset: 8968)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !414, file: !415, line: 598, baseType: !347, size: 8, align: 8, offset: 9480)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !414, file: !415, line: 599, baseType: !82, size: 32, align: 32, offset: 9504)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !414, file: !415, line: 605, baseType: !82, size: 32, align: 32, offset: 9536)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !414, file: !415, line: 615, baseType: !72, size: 8, align: 8, offset: 9568)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !414, file: !415, line: 628, baseType: !346, size: 64, align: 64, offset: 9600)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !414, file: !415, line: 629, baseType: !129, size: 32, align: 32, offset: 9664)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !227, file: !212, line: 1493, baseType: !893, size: 64, align: 64, offset: 1088)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, align: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !895, line: 182, size: 7168, align: 64, elements: !896)
!895 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!896 = !{!897, !898, !902, !903, !904, !905, !906, !912, !913, !914, !915, !916, !917, !927, !928, !929, !930, !931, !932, !933, !934, !1280, !1281, !1287, !1296, !1297, !1298, !1299, !1303, !1304, !1305}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !894, file: !895, line: 183, baseType: !129, size: 32, align: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !894, file: !895, line: 184, baseType: !899, size: 2048, align: 8, offset: 32)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 2048, align: 8, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !894, file: !895, line: 185, baseType: !899, size: 2048, align: 8, offset: 2080)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !894, file: !895, line: 186, baseType: !129, size: 32, align: 32, offset: 4128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !894, file: !895, line: 192, baseType: !122, size: 16, align: 16, offset: 4160)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !894, file: !895, line: 193, baseType: !122, size: 16, align: 16, offset: 4176)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !894, file: !895, line: 195, baseType: !907, size: 128, align: 64, offset: 4224)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !895, line: 133, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !895, line: 128, size: 128, align: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !908, file: !895, line: 129, baseType: !292, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !908, file: !895, line: 131, baseType: !420, size: 64, align: 8, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !894, file: !895, line: 197, baseType: !907, size: 128, align: 64, offset: 4352)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !894, file: !895, line: 199, baseType: !122, size: 16, align: 16, offset: 4480)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !894, file: !895, line: 200, baseType: !122, size: 16, align: 16, offset: 4496)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !894, file: !895, line: 201, baseType: !122, size: 16, align: 16, offset: 4512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !894, file: !895, line: 203, baseType: !420, size: 64, align: 8, offset: 4528)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !894, file: !895, line: 205, baseType: !918, size: 128, align: 64, offset: 4608)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !895, line: 174, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !895, line: 171, size: 128, align: 64, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !919, file: !895, line: 172, baseType: !122, size: 16, align: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !919, file: !895, line: 173, baseType: !923, size: 64, align: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !924, line: 70, baseType: !925)
!924 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !924, line: 70, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !894, file: !895, line: 206, baseType: !918, size: 128, align: 64, offset: 4736)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !894, file: !895, line: 208, baseType: !923, size: 64, align: 64, offset: 4864)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !894, file: !895, line: 210, baseType: !923, size: 64, align: 64, offset: 4928)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !894, file: !895, line: 216, baseType: !918, size: 128, align: 64, offset: 4992)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !894, file: !895, line: 218, baseType: !129, size: 32, align: 32, offset: 5120)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !894, file: !895, line: 219, baseType: !129, size: 32, align: 32, offset: 5152)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !894, file: !895, line: 220, baseType: !129, size: 32, align: 32, offset: 5184)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !894, file: !895, line: 221, baseType: !935, size: 704, align: 64, offset: 5248)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !895, line: 147, size: 704, align: 64, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !935, file: !895, line: 148, baseType: !347, size: 8, align: 8)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !935, file: !895, line: 149, baseType: !292, size: 64, align: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !935, file: !895, line: 150, baseType: !122, size: 16, align: 16, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !935, file: !895, line: 151, baseType: !292, size: 64, align: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !935, file: !895, line: 152, baseType: !292, size: 64, align: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !935, file: !895, line: 153, baseType: !129, size: 32, align: 32, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !935, file: !895, line: 154, baseType: !944, size: 320, align: 64, offset: 384)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !895, line: 135, size: 320, align: 64, elements: !945)
!945 = !{!946, !947, !948, !949, !1279}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !944, file: !895, line: 136, baseType: !717, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !944, file: !895, line: 137, baseType: !476, size: 64, align: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !944, file: !895, line: 139, baseType: !858, size: 64, align: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !944, file: !895, line: 143, baseType: !950, size: 64, align: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !212, line: 376, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !212, line: 498, size: 2816, align: 64, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !969, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1266, !1267, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !952, file: !212, line: 499, baseType: !82, size: 32, align: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !952, file: !212, line: 502, baseType: !129, size: 32, align: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !952, file: !212, line: 503, baseType: !420, size: 64, align: 8, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !952, file: !212, line: 504, baseType: !82, size: 32, align: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !952, file: !212, line: 505, baseType: !393, size: 384, align: 8, offset: 160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !952, file: !212, line: 507, baseType: !129, size: 32, align: 32, offset: 544)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !952, file: !212, line: 508, baseType: !383, size: 256, align: 8, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !952, file: !212, line: 514, baseType: !129, size: 32, align: 32, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !952, file: !212, line: 515, baseType: !383, size: 256, align: 8, offset: 864)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !952, file: !212, line: 521, baseType: !99, size: 64, align: 64, offset: 1152)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !952, file: !212, line: 522, baseType: !99, size: 64, align: 64, offset: 1216)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !952, file: !212, line: 529, baseType: !82, size: 32, align: 32, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !952, file: !212, line: 531, baseType: !967, size: 64, align: 64, offset: 1344)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, align: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !212, line: 531, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !952, file: !212, line: 538, baseType: !970, size: 64, align: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !210, line: 154, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !696, line: 270, size: 1472, align: 64, elements: !973)
!973 = !{!974, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1220, !1224, !1227, !1230, !1234, !1236}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !972, file: !696, line: 271, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !696, line: 254, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !696, line: 242, size: 832, align: 64, elements: !978)
!978 = !{!979, !980, !981, !988, !1002, !1011, !1012, !1189, !1190, !1191, !1196}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !977, file: !696, line: 243, baseType: !782, size: 64, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !977, file: !696, line: 244, baseType: !782, size: 64, align: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !977, file: !696, line: 245, baseType: !982, size: 64, align: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !210, line: 155, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !696, line: 143, size: 128, align: 64, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !984, file: !696, line: 144, baseType: !771, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !984, file: !696, line: 145, baseType: !749, size: 64, align: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !977, file: !696, line: 246, baseType: !989, size: 64, align: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64, align: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !210, line: 159, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !696, line: 179, size: 320, align: 64, elements: !992)
!992 = !{!993, !998, !999, !1000, !1001}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !991, file: !696, line: 180, baseType: !994, size: 64, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64, align: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !696, line: 175, size: 256, align: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !995, file: !696, line: 175, baseType: !304, size: 256, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !991, file: !696, line: 181, baseType: !82, size: 32, align: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !991, file: !696, line: 183, baseType: !332, size: 64, align: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !991, file: !696, line: 188, baseType: !346, size: 64, align: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !991, file: !696, line: 189, baseType: !82, size: 32, align: 32, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !977, file: !696, line: 247, baseType: !1003, size: 64, align: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !696, line: 155, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !696, line: 152, size: 128, align: 64, elements: !1006)
!1006 = !{!1007, !1010}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !1005, file: !696, line: 153, baseType: !1008, size: 64, align: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !210, line: 94, baseType: !764)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !1005, file: !696, line: 154, baseType: !1008, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !977, file: !696, line: 248, baseType: !989, size: 64, align: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !977, file: !696, line: 249, baseType: !1013, size: 64, align: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !210, line: 160, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !696, line: 157, size: 192, align: 64, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !1015, file: !696, line: 158, baseType: !982, size: 64, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !1015, file: !696, line: 159, baseType: !788, size: 64, align: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1015, file: !696, line: 160, baseType: !1020, size: 64, align: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !210, line: 133, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !479, line: 129, size: 448, align: 64, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1032, !1033, !1183, !1184}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1022, file: !479, line: 130, baseType: !82, size: 32, align: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !1022, file: !479, line: 131, baseType: !82, size: 32, align: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1022, file: !479, line: 132, baseType: !82, size: 32, align: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !1022, file: !479, line: 133, baseType: !1028, size: 64, align: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !210, line: 135, baseType: !1031)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !210, line: 135, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1022, file: !479, line: 134, baseType: !530, size: 64, align: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1022, file: !479, line: 149, baseType: !1034, size: 64, align: 64, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !479, line: 135, size: 64, align: 64, elements: !1035)
!1035 = !{!1036, !1037, !1110, !1179, !1181}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1034, file: !479, line: 136, baseType: !99, size: 64, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !1034, file: !479, line: 138, baseType: !1038, size: 64, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64, align: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !1040, line: 132, size: 1344, align: 64, elements: !1041)
!1040 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1041 = !{!1042, !1043, !1044, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1109}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1039, file: !1040, line: 137, baseType: !82, size: 32, align: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1039, file: !1040, line: 138, baseType: !262, size: 64, align: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1039, file: !1040, line: 139, baseType: !1045, size: 64, align: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !210, line: 147, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !1040, line: 85, size: 896, align: 64, elements: !1049)
!1049 = !{!1050, !1051, !1057, !1058, !1059, !1060, !1064, !1068, !1072, !1073, !1074, !1075, !1081, !1085}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1048, file: !1040, line: 86, baseType: !127, size: 64, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !1048, file: !1040, line: 87, baseType: !1052, size: 64, align: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64, align: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!82, !82, !361, !346, !1055, !82}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !210, line: 146, baseType: !1039)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !1048, file: !1040, line: 89, baseType: !1052, size: 64, align: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !1048, file: !1040, line: 91, baseType: !1052, size: 64, align: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !1048, file: !1040, line: 93, baseType: !1052, size: 64, align: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !1048, file: !1040, line: 96, baseType: !1061, size: 64, align: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64, align: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!82, !593, !643, !1055, !651}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1048, file: !1040, line: 98, baseType: !1065, size: 64, align: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64, align: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!82, !593, !643, !643, !643, !651, !610}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1048, file: !1040, line: 101, baseType: !1069, size: 64, align: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64, align: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!82, !1055}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1048, file: !1040, line: 103, baseType: !1069, size: 64, align: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !1040, line: 105, baseType: !82, size: 32, align: 32, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1048, file: !1040, line: 107, baseType: !99, size: 64, align: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !1048, file: !1040, line: 116, baseType: !1076, size: 64, align: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64, align: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!82, !82, !361, !129, !346, !514, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !1048, file: !1040, line: 120, baseType: !1082, size: 64, align: 64, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64, align: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!82, !82, !361, !129, !361, !129, !1079}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !1048, file: !1040, line: 129, baseType: !1086, size: 64, align: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!82, !1055, !82, !593, !662}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1039, file: !1040, line: 141, baseType: !530, size: 64, align: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1039, file: !1040, line: 142, baseType: !593, size: 64, align: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1039, file: !1040, line: 143, baseType: !593, size: 64, align: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1039, file: !1040, line: 144, baseType: !593, size: 64, align: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1039, file: !1040, line: 145, baseType: !593, size: 64, align: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1039, file: !1040, line: 146, baseType: !593, size: 64, align: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !1039, file: !1040, line: 147, baseType: !593, size: 64, align: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !1039, file: !1040, line: 148, baseType: !593, size: 64, align: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !1039, file: !1040, line: 149, baseType: !593, size: 64, align: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1039, file: !1040, line: 151, baseType: !295, size: 128, align: 64, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1039, file: !1040, line: 152, baseType: !82, size: 32, align: 32, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !1040, line: 153, baseType: !82, size: 32, align: 32, offset: 928)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !1039, file: !1040, line: 155, baseType: !610, size: 64, align: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !1039, file: !1040, line: 156, baseType: !610, size: 64, align: 64, offset: 1024)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !1039, file: !1040, line: 157, baseType: !610, size: 64, align: 64, offset: 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !1039, file: !1040, line: 162, baseType: !99, size: 64, align: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !1039, file: !1040, line: 163, baseType: !1106, size: 64, align: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !210, line: 122, baseType: !1108)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !210, line: 122, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !1039, file: !1040, line: 164, baseType: !1106, size: 64, align: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !1034, file: !479, line: 141, baseType: !1111, size: 64, align: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64, align: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !1113, line: 155, size: 1088, align: 64, elements: !1114)
!1113 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1178}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1112, file: !1113, line: 160, baseType: !82, size: 32, align: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1112, file: !1113, line: 161, baseType: !262, size: 64, align: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !1112, file: !1113, line: 162, baseType: !82, size: 32, align: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1112, file: !1113, line: 163, baseType: !593, size: 64, align: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1112, file: !1113, line: 164, baseType: !593, size: 64, align: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1112, file: !1113, line: 165, baseType: !593, size: 64, align: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !1112, file: !1113, line: 166, baseType: !593, size: 64, align: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !1112, file: !1113, line: 167, baseType: !593, size: 64, align: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !1112, file: !1113, line: 168, baseType: !593, size: 64, align: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1112, file: !1113, line: 169, baseType: !593, size: 64, align: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !1113, line: 170, baseType: !82, size: 32, align: 32, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !1112, file: !1113, line: 172, baseType: !610, size: 64, align: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1112, file: !1113, line: 173, baseType: !82, size: 32, align: 32, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1112, file: !1113, line: 174, baseType: !295, size: 128, align: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1112, file: !1113, line: 175, baseType: !1130, size: 64, align: 64, offset: 960)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !210, line: 144, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !1113, line: 129, size: 768, align: 64, elements: !1134)
!1134 = !{!1135, !1136, !1148, !1153, !1157, !1161, !1165, !1169, !1170, !1171, !1172, !1177}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1133, file: !1113, line: 130, baseType: !127, size: 64, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !1133, file: !1113, line: 131, baseType: !1137, size: 64, align: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, align: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!1140, !361, !82, !1146}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !1113, line: 127, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !1113, line: 124, size: 128, align: 64, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1142, file: !1113, line: 125, baseType: !593, size: 64, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1142, file: !1113, line: 126, baseType: !593, size: 64, align: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !210, line: 143, baseType: !1112)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !1133, file: !1113, line: 132, baseType: !1149, size: 64, align: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64, align: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!82, !1146, !651, !1152, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !1133, file: !1113, line: 134, baseType: !1154, size: 64, align: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64, align: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!82, !361, !82, !1140, !1146}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !1133, file: !1113, line: 136, baseType: !1158, size: 64, align: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64, align: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!82, !1146, !593, !593, !593, !593, !593, !593, !651, !610}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1133, file: !1113, line: 140, baseType: !1162, size: 64, align: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64, align: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!82, !1146, !593, !593, !643, !643, !651, !610}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1133, file: !1113, line: 142, baseType: !1166, size: 64, align: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64, align: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!82, !1146}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1133, file: !1113, line: 143, baseType: !1166, size: 64, align: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1113, line: 144, baseType: !82, size: 32, align: 32, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1133, file: !1113, line: 145, baseType: !99, size: 64, align: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !1133, file: !1113, line: 147, baseType: !1173, size: 64, align: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64, align: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!82, !1146, !82, !361, !82, !1176, !599, !662}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !1133, file: !1113, line: 152, baseType: !1166, size: 64, align: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1112, file: !1113, line: 177, baseType: !530, size: 64, align: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1034, file: !479, line: 144, baseType: !1180, size: 64, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !1034, file: !479, line: 147, baseType: !1182, size: 64, align: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !1022, file: !479, line: 150, baseType: !82, size: 32, align: 32, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1022, file: !479, line: 151, baseType: !1185, size: 64, align: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64, align: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !696, line: 223, size: 256, align: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1186, file: !696, line: 223, baseType: !304, size: 256, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !977, file: !696, line: 250, baseType: !788, size: 64, align: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !977, file: !696, line: 251, baseType: !788, size: 64, align: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !977, file: !696, line: 252, baseType: !1192, size: 64, align: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64, align: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !696, line: 204, size: 256, align: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1193, file: !696, line: 204, baseType: !304, size: 256, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !977, file: !696, line: 253, baseType: !1197, size: 192, align: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !751, line: 269, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !751, line: 265, size: 192, align: 64, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1198, file: !751, line: 266, baseType: !346, size: 64, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1198, file: !751, line: 267, baseType: !262, size: 64, align: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1198, file: !751, line: 268, baseType: !82, size: 32, align: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !972, file: !696, line: 272, baseType: !982, size: 64, align: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !972, file: !696, line: 273, baseType: !788, size: 64, align: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !972, file: !696, line: 274, baseType: !82, size: 32, align: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !972, file: !696, line: 275, baseType: !82, size: 32, align: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !696, line: 276, baseType: !99, size: 64, align: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !972, file: !696, line: 277, baseType: !295, size: 128, align: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !972, file: !696, line: 279, baseType: !262, size: 64, align: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !972, file: !696, line: 280, baseType: !262, size: 64, align: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !972, file: !696, line: 281, baseType: !292, size: 64, align: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !972, file: !696, line: 282, baseType: !292, size: 64, align: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !972, file: !696, line: 283, baseType: !292, size: 64, align: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !972, file: !696, line: 284, baseType: !292, size: 64, align: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !972, file: !696, line: 285, baseType: !791, size: 64, align: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !972, file: !696, line: 286, baseType: !1217, size: 64, align: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !210, line: 186, baseType: !1219)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !210, line: 186, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !972, file: !696, line: 287, baseType: !1221, size: 64, align: 64, offset: 960)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64, align: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !210, line: 184, baseType: !1223)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !210, line: 184, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !972, file: !696, line: 288, baseType: !1225, size: 64, align: 64, offset: 1024)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64, align: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !696, line: 288, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !972, file: !696, line: 289, baseType: !1228, size: 64, align: 64, offset: 1088)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64, align: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !696, line: 289, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !972, file: !696, line: 290, baseType: !1231, size: 64, align: 64, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64, align: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !210, line: 189, baseType: !1233)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !210, line: 189, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !972, file: !696, line: 296, baseType: !1235, size: 160, align: 8, offset: 1216)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 160, align: 8, elements: !133)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !972, file: !696, line: 298, baseType: !1237, size: 64, align: 64, offset: 1408)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !696, line: 268, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !696, line: 262, size: 320, align: 64, elements: !1240)
!1240 = !{!1241, !1246, !1247, !1248, !1249}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1239, file: !696, line: 263, baseType: !1242, size: 64, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64, align: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !751, line: 801, size: 256, align: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1243, file: !751, line: 801, baseType: !304, size: 256, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1239, file: !696, line: 264, baseType: !1242, size: 64, align: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1239, file: !696, line: 265, baseType: !821, size: 64, align: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1239, file: !696, line: 266, baseType: !791, size: 64, align: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1239, file: !696, line: 267, baseType: !1250, size: 64, align: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64, align: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !751, line: 170, size: 256, align: 64, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1251, file: !751, line: 170, baseType: !304, size: 256, align: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !952, file: !212, line: 543, baseType: !262, size: 64, align: 64, offset: 1472)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !952, file: !212, line: 544, baseType: !82, size: 32, align: 32, offset: 1536)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !952, file: !212, line: 545, baseType: !262, size: 64, align: 64, offset: 1600)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !952, file: !212, line: 546, baseType: !262, size: 64, align: 64, offset: 1664)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !952, file: !212, line: 547, baseType: !129, size: 32, align: 32, offset: 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !952, file: !212, line: 548, baseType: !567, size: 64, align: 64, offset: 1792)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !952, file: !212, line: 549, baseType: !292, size: 64, align: 64, offset: 1856)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !952, file: !212, line: 551, baseType: !1262, size: 64, align: 64, offset: 1920)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64, align: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !212, line: 380, size: 256, align: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1263, file: !212, line: 380, baseType: !304, size: 256, align: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !952, file: !212, line: 552, baseType: !295, size: 128, align: 64, offset: 1984)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !952, file: !212, line: 557, baseType: !1268, size: 64, align: 64, offset: 2112)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !212, line: 557, baseType: !1268, size: 64, align: 64, offset: 2176)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !952, file: !212, line: 559, baseType: !99, size: 64, align: 64, offset: 2240)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !952, file: !212, line: 561, baseType: !338, size: 64, align: 64, offset: 2304)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !952, file: !212, line: 562, baseType: !346, size: 64, align: 64, offset: 2368)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !952, file: !212, line: 563, baseType: !338, size: 64, align: 64, offset: 2432)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !952, file: !212, line: 564, baseType: !346, size: 64, align: 64, offset: 2496)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !952, file: !212, line: 567, baseType: !346, size: 64, align: 64, offset: 2560)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !952, file: !212, line: 568, baseType: !338, size: 64, align: 64, offset: 2624)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !952, file: !212, line: 569, baseType: !262, size: 64, align: 64, offset: 2688)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !952, file: !212, line: 572, baseType: !99, size: 64, align: 64, offset: 2752)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !944, file: !895, line: 144, baseType: !122, size: 16, align: 16, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !894, file: !895, line: 222, baseType: !935, size: 704, align: 64, offset: 5952)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !894, file: !895, line: 223, baseType: !1282, size: 96, align: 32, offset: 6656)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !895, line: 162, size: 96, align: 32, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1282, file: !895, line: 164, baseType: !129, size: 32, align: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1282, file: !895, line: 166, baseType: !129, size: 32, align: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1282, file: !895, line: 168, baseType: !129, size: 32, align: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !894, file: !895, line: 227, baseType: !1288, size: 128, align: 64, offset: 6784)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1289, line: 30, size: 128, align: 64, elements: !1290)
!1289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1290 = !{!1291, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1288, file: !1289, line: 32, baseType: !1292, size: 64, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1293, line: 139, baseType: !262)
!1293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1288, file: !1289, line: 33, baseType: !1295, size: 64, align: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !1293, line: 141, baseType: !262)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !894, file: !895, line: 229, baseType: !122, size: 16, align: 16, offset: 6912)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !894, file: !895, line: 234, baseType: !459, size: 16, align: 8, offset: 6928)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !894, file: !895, line: 235, baseType: !129, size: 32, align: 32, offset: 6944)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !894, file: !895, line: 236, baseType: !1300, size: 96, align: 8, offset: 6976)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 96, align: 8, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 12)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !894, file: !895, line: 237, baseType: !129, size: 32, align: 32, offset: 7072)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !894, file: !895, line: 238, baseType: !129, size: 32, align: 32, offset: 7104)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !894, file: !895, line: 243, baseType: !129, size: 32, align: 32, offset: 7136)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !227, file: !212, line: 1494, baseType: !82, size: 32, align: 32, offset: 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !227, file: !212, line: 1497, baseType: !1308, size: 64, align: 64, offset: 1216)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64, align: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !82, !82, !82, !317, !338, !225, !63}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !227, file: !212, line: 1499, baseType: !63, size: 64, align: 64, offset: 1280)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !227, file: !212, line: 1500, baseType: !82, size: 32, align: 32, offset: 1344)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !227, file: !212, line: 1501, baseType: !1314, size: 64, align: 64, offset: 1408)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64, align: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1316, line: 177, baseType: !1317)
!1316 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1316, line: 167, size: 512, align: 64, elements: !1318)
!1318 = !{!1319, !1320, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1317, file: !1316, line: 168, baseType: !99, size: 64, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1317, file: !1316, line: 169, baseType: !1321, size: 64, align: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1322, line: 75, baseType: !1292)
!1322 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1317, file: !1316, line: 170, baseType: !292, size: 64, align: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !1316, line: 171, baseType: !292, size: 64, align: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1317, file: !1316, line: 172, baseType: !82, size: 32, align: 32, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1317, file: !1316, line: 173, baseType: !82, size: 32, align: 32, offset: 288)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1317, file: !1316, line: 174, baseType: !82, size: 32, align: 32, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1317, file: !1316, line: 175, baseType: !1242, size: 64, align: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1317, file: !1316, line: 176, baseType: !1330, size: 64, align: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1316, line: 159, baseType: !1332)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1316, line: 159, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !227, file: !212, line: 1507, baseType: !1262, size: 64, align: 64, offset: 1472)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !227, file: !212, line: 1508, baseType: !1262, size: 64, align: 64, offset: 1536)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !227, file: !212, line: 1513, baseType: !82, size: 32, align: 32, offset: 1600)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !227, file: !212, line: 1514, baseType: !717, size: 64, align: 64, offset: 1664)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !227, file: !212, line: 1515, baseType: !476, size: 64, align: 64, offset: 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !227, file: !212, line: 1517, baseType: !858, size: 64, align: 64, offset: 1792)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !227, file: !212, line: 1521, baseType: !717, size: 64, align: 64, offset: 1856)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !227, file: !212, line: 1522, baseType: !476, size: 64, align: 64, offset: 1920)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !227, file: !212, line: 1524, baseType: !858, size: 64, align: 64, offset: 1984)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !227, file: !212, line: 1531, baseType: !1343, size: 64, align: 64, offset: 2048)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64, align: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !212, line: 1035, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !227, file: !212, line: 1536, baseType: !129, size: 32, align: 32, offset: 2112)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !227, file: !212, line: 1537, baseType: !383, size: 256, align: 8, offset: 2144)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !227, file: !212, line: 1539, baseType: !950, size: 64, align: 64, offset: 2432)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !227, file: !212, line: 1541, baseType: !1349, size: 64, align: 64, offset: 2496)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !212, line: 905, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64, align: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!82, !1353, !346, !514}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64, align: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !227, file: !212, line: 1547, baseType: !82, size: 32, align: 32, offset: 2560)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !227, file: !212, line: 1549, baseType: !1357, size: 64, align: 64, offset: 2624)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64, align: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!82, !82, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64, align: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !210, line: 162, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1316, line: 236, size: 1984, align: 64, elements: !1363)
!1363 = !{!1364, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1362, file: !1316, line: 237, baseType: !1365, size: 64, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !210, line: 161, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1316, line: 186, size: 1152, align: 64, elements: !1368)
!1368 = !{!1369, !1370, !1375, !1380, !1381, !1385, !1386, !1391, !1395, !1396, !1445, !1449, !1453, !1461, !1469, !1470, !1471}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1367, file: !1316, line: 188, baseType: !82, size: 32, align: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1367, file: !1316, line: 189, baseType: !1371, size: 64, align: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64, align: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1316, line: 137, size: 256, align: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1372, file: !1316, line: 137, baseType: !304, size: 256, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1367, file: !1316, line: 191, baseType: !1376, size: 64, align: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64, align: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1316, line: 136, size: 256, align: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1377, file: !1316, line: 136, baseType: !304, size: 256, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1367, file: !1316, line: 192, baseType: !1314, size: 64, align: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1367, file: !1316, line: 195, baseType: !1382, size: 64, align: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64, align: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!82, !1360}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1367, file: !1316, line: 197, baseType: !1357, size: 64, align: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1367, file: !1316, line: 199, baseType: !1387, size: 64, align: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64, align: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!82, !1390, !1360, !970}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1367, file: !1316, line: 201, baseType: !1392, size: 64, align: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64, align: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!82, !1360, !970, !970}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1367, file: !1316, line: 203, baseType: !1382, size: 64, align: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1367, file: !1316, line: 205, baseType: !1397, size: 64, align: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64, align: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!82, !1360, !1400, !970}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !210, line: 156, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !696, line: 452, size: 960, align: 64, elements: !1404)
!1404 = !{!1405, !1422, !1423, !1424, !1425, !1426, !1427, !1431, !1432, !1433, !1434, !1435, !1436, !1439, !1444}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1403, file: !696, line: 454, baseType: !1406, size: 64, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !696, line: 450, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !696, line: 441, size: 640, align: 64, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1420, !1421}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1408, file: !696, line: 442, baseType: !782, size: 64, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1408, file: !696, line: 443, baseType: !982, size: 64, align: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1408, file: !696, line: 444, baseType: !989, size: 64, align: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1408, file: !696, line: 445, baseType: !1008, size: 64, align: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1408, file: !696, line: 446, baseType: !1008, size: 64, align: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1408, file: !696, line: 447, baseType: !1416, size: 64, align: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64, align: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !696, line: 438, size: 256, align: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1417, file: !696, line: 438, baseType: !304, size: 256, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1408, file: !696, line: 448, baseType: !1192, size: 64, align: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1408, file: !696, line: 449, baseType: !1197, size: 192, align: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1403, file: !696, line: 455, baseType: !982, size: 64, align: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1403, file: !696, line: 456, baseType: !788, size: 64, align: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1403, file: !696, line: 457, baseType: !82, size: 32, align: 32, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !696, line: 458, baseType: !82, size: 32, align: 32, offset: 224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1403, file: !696, line: 460, baseType: !1217, size: 64, align: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1403, file: !696, line: 461, baseType: !1428, size: 64, align: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !210, line: 188, baseType: !1430)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !210, line: 188, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1403, file: !696, line: 463, baseType: !82, size: 32, align: 32, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1403, file: !696, line: 464, baseType: !82, size: 32, align: 32, offset: 416)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1403, file: !696, line: 466, baseType: !782, size: 64, align: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1403, file: !696, line: 467, baseType: !782, size: 64, align: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1403, file: !696, line: 469, baseType: !1235, size: 160, align: 8, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1403, file: !696, line: 471, baseType: !1437, size: 64, align: 64, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64, align: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !696, line: 471, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1403, file: !696, line: 472, baseType: !1440, size: 64, align: 64, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !210, line: 157, baseType: !1443)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !210, line: 157, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1403, file: !696, line: 473, baseType: !63, size: 64, align: 64, offset: 896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1367, file: !1316, line: 207, baseType: !1446, size: 64, align: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64, align: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!82, !1360, !1401}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1367, file: !1316, line: 209, baseType: !1450, size: 64, align: 64, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64, align: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!82, !1360, !1401, !970}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1367, file: !1316, line: 210, baseType: !1454, size: 64, align: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64, align: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1457, !1360, !989}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64, align: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !696, line: 301, size: 256, align: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1458, file: !696, line: 301, baseType: !304, size: 256, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1367, file: !1316, line: 211, baseType: !1462, size: 64, align: 64, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, align: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1360, !989}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64, align: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !696, line: 476, size: 256, align: 64, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1466, file: !696, line: 476, baseType: !304, size: 256, align: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1367, file: !1316, line: 212, baseType: !1382, size: 64, align: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1367, file: !1316, line: 213, baseType: !295, size: 128, align: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1367, file: !1316, line: 214, baseType: !82, size: 32, align: 32, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1362, file: !1316, line: 239, baseType: !82, size: 32, align: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1362, file: !1316, line: 242, baseType: !970, size: 64, align: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1362, file: !1316, line: 244, baseType: !1457, size: 64, align: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1362, file: !1316, line: 246, baseType: !1465, size: 64, align: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1362, file: !1316, line: 247, baseType: !1314, size: 64, align: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1362, file: !1316, line: 249, baseType: !63, size: 64, align: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1362, file: !1316, line: 252, baseType: !1382, size: 64, align: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1362, file: !1316, line: 254, baseType: !1357, size: 64, align: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1362, file: !1316, line: 256, baseType: !1387, size: 64, align: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1362, file: !1316, line: 258, baseType: !1392, size: 64, align: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1362, file: !1316, line: 260, baseType: !1382, size: 64, align: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1362, file: !1316, line: 262, baseType: !1397, size: 64, align: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1362, file: !1316, line: 264, baseType: !1446, size: 64, align: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1362, file: !1316, line: 266, baseType: !1450, size: 64, align: 64, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1362, file: !1316, line: 267, baseType: !1382, size: 64, align: 64, offset: 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1362, file: !1316, line: 268, baseType: !1454, size: 64, align: 64, offset: 1024)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1362, file: !1316, line: 269, baseType: !1462, size: 64, align: 64, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1362, file: !1316, line: 270, baseType: !1382, size: 64, align: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1362, file: !1316, line: 273, baseType: !82, size: 32, align: 32, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1362, file: !1316, line: 275, baseType: !82, size: 32, align: 32, offset: 1248)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1362, file: !1316, line: 277, baseType: !1457, size: 64, align: 64, offset: 1280)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1362, file: !1316, line: 279, baseType: !1494, size: 64, align: 64, offset: 1344)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !210, line: 183, baseType: !1496)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !210, line: 183, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1362, file: !1316, line: 281, baseType: !82, size: 32, align: 32, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1362, file: !1316, line: 283, baseType: !82, size: 32, align: 32, offset: 1440)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1362, file: !1316, line: 284, baseType: !82, size: 32, align: 32, offset: 1472)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1362, file: !1316, line: 285, baseType: !970, size: 64, align: 64, offset: 1536)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1362, file: !1316, line: 287, baseType: !970, size: 64, align: 64, offset: 1600)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1362, file: !1316, line: 289, baseType: !1401, size: 64, align: 64, offset: 1664)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1362, file: !1316, line: 291, baseType: !82, size: 32, align: 32, offset: 1728)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1362, file: !1316, line: 293, baseType: !129, size: 32, align: 32, offset: 1760)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1362, file: !1316, line: 295, baseType: !1360, size: 64, align: 64, offset: 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1362, file: !1316, line: 296, baseType: !295, size: 128, align: 64, offset: 1856)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !227, file: !212, line: 1551, baseType: !1508, size: 64, align: 64, offset: 2688)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64, align: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1353, !82, !82}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !227, file: !212, line: 1553, baseType: !82, size: 32, align: 32, offset: 2752)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !227, file: !212, line: 1555, baseType: !82, size: 32, align: 32, offset: 2784)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !227, file: !212, line: 1561, baseType: !1514, size: 64, align: 64, offset: 2816)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64, align: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!129, !225, !127, !99, !129, !346, !129}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !227, file: !212, line: 1566, baseType: !1518, size: 64, align: 64, offset: 2880)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64, align: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!129, !225, !127, !346, !129}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !227, file: !212, line: 1570, baseType: !208, size: 64, align: 64, offset: 2944)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !227, file: !212, line: 1575, baseType: !82, size: 32, align: 32, offset: 3008)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !227, file: !212, line: 1577, baseType: !262, size: 64, align: 64, offset: 3072)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !227, file: !212, line: 1578, baseType: !295, size: 128, align: 64, offset: 3136)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !227, file: !212, line: 1580, baseType: !694, size: 64, align: 64, offset: 3264)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !227, file: !212, line: 1581, baseType: !82, size: 32, align: 32, offset: 3328)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !227, file: !212, line: 1583, baseType: !292, size: 64, align: 64, offset: 3392)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !227, file: !212, line: 1585, baseType: !292, size: 64, align: 64, offset: 3456)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !227, file: !212, line: 1586, baseType: !262, size: 64, align: 64, offset: 3520)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !227, file: !212, line: 1587, baseType: !82, size: 32, align: 32, offset: 3584)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !227, file: !212, line: 1589, baseType: !82, size: 32, align: 32, offset: 3616)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !227, file: !212, line: 1590, baseType: !129, size: 32, align: 32, offset: 3648)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !227, file: !212, line: 1593, baseType: !1534, size: 64, align: 64, offset: 3712)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64, align: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !225, !82, !82, !346, !82, !63}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !227, file: !212, line: 1595, baseType: !63, size: 64, align: 64, offset: 3776)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !227, file: !212, line: 1596, baseType: !99, size: 64, align: 64, offset: 3840)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !227, file: !212, line: 1603, baseType: !82, size: 32, align: 32, offset: 3904)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !227, file: !212, line: 1606, baseType: !82, size: 32, align: 32, offset: 3936)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !227, file: !212, line: 1608, baseType: !82, size: 32, align: 32, offset: 3968)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !227, file: !212, line: 1610, baseType: !1543, size: 64, align: 64, offset: 4032)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64, align: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !212, line: 1610, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !227, file: !212, line: 1611, baseType: !1546, size: 64, align: 64, offset: 4096)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !696, line: 202, baseType: !1193)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !227, file: !212, line: 1613, baseType: !346, size: 64, align: 64, offset: 4160)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !227, file: !212, line: 1614, baseType: !82, size: 32, align: 32, offset: 4224)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !227, file: !212, line: 1616, baseType: !82, size: 32, align: 32, offset: 4256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !227, file: !212, line: 1618, baseType: !338, size: 64, align: 64, offset: 4288)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !227, file: !212, line: 1620, baseType: !346, size: 64, align: 64, offset: 4352)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !227, file: !212, line: 1621, baseType: !338, size: 64, align: 64, offset: 4416)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !227, file: !212, line: 1623, baseType: !346, size: 64, align: 64, offset: 4480)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !227, file: !212, line: 1629, baseType: !63, size: 64, align: 64, offset: 4544)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !227, file: !212, line: 1630, baseType: !338, size: 64, align: 64, offset: 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !227, file: !212, line: 1632, baseType: !1558, size: 64, align: 64, offset: 4672)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !212, line: 373, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1561, line: 802, size: 128, align: 64, elements: !1562)
!1561 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1560, file: !1561, line: 803, baseType: !122, size: 16, align: 16)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1560, file: !1561, line: 804, baseType: !63, size: 64, align: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !227, file: !212, line: 1634, baseType: !1566, size: 64, align: 64, offset: 4736)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !212, line: 390, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64, align: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!82, !225, !361, !82, !63}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !227, file: !212, line: 1635, baseType: !63, size: 64, align: 64, offset: 4800)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !227, file: !212, line: 1637, baseType: !1572, size: 64, align: 64, offset: 4864)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !212, line: 393, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64, align: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!82, !225, !63, !1176, !1262, !1576, !63}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64, align: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !227, file: !212, line: 1638, baseType: !63, size: 64, align: 64, offset: 4928)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !227, file: !212, line: 1639, baseType: !208, size: 64, align: 64, offset: 4992)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !227, file: !212, line: 1648, baseType: !346, size: 64, align: 64, offset: 5056)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !227, file: !212, line: 1649, baseType: !347, size: 8, align: 8, offset: 5120)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !227, file: !212, line: 1653, baseType: !1583, size: 64, align: 64, offset: 5184)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64, align: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !212, line: 388, size: 256, align: 64, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1584, file: !212, line: 388, baseType: !304, size: 256, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !227, file: !212, line: 1655, baseType: !1588, size: 64, align: 64, offset: 5248)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !212, line: 386, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !212, line: 383, size: 128, align: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1590, file: !212, line: 384, baseType: !127, size: 64, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1590, file: !212, line: 385, baseType: !292, size: 64, align: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !227, file: !212, line: 1662, baseType: !129, size: 32, align: 32, offset: 5312)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !227, file: !212, line: 1664, baseType: !129, size: 32, align: 32, offset: 5344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !227, file: !212, line: 1666, baseType: !129, size: 32, align: 32, offset: 5376)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !227, file: !212, line: 1675, baseType: !82, size: 32, align: 32, offset: 5408)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !227, file: !212, line: 1678, baseType: !1599, size: 1024, align: 64, offset: 5440)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !212, line: 864, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !212, line: 849, size: 1024, align: 64, elements: !1601)
!1601 = !{!1602, !1603, !1607, !1611, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1600, file: !212, line: 851, baseType: !63, size: 64, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1600, file: !212, line: 853, baseType: !1604, size: 64, align: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64, align: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!82, !225, !1176, !63}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1600, file: !212, line: 855, baseType: !1608, size: 64, align: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, align: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!82, !225, !63}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1600, file: !212, line: 857, baseType: !1612, size: 64, align: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64, align: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!99, !225, !63}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1600, file: !212, line: 858, baseType: !99, size: 64, align: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1600, file: !212, line: 859, baseType: !593, size: 64, align: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1600, file: !212, line: 859, baseType: !593, size: 64, align: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1600, file: !212, line: 859, baseType: !593, size: 64, align: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1600, file: !212, line: 859, baseType: !593, size: 64, align: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1600, file: !212, line: 859, baseType: !593, size: 64, align: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1600, file: !212, line: 860, baseType: !593, size: 64, align: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1600, file: !212, line: 860, baseType: !593, size: 64, align: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1600, file: !212, line: 860, baseType: !593, size: 64, align: 64, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1600, file: !212, line: 861, baseType: !99, size: 64, align: 64, offset: 832)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1600, file: !212, line: 862, baseType: !82, size: 32, align: 32, offset: 896)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1600, file: !212, line: 863, baseType: !292, size: 64, align: 64, offset: 960)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !227, file: !212, line: 1685, baseType: !346, size: 64, align: 64, offset: 6464)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !227, file: !212, line: 1686, baseType: !129, size: 32, align: 32, offset: 6528)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !218, file: !212, line: 441, baseType: !1630, size: 64, align: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64, align: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !225}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !218, file: !212, line: 442, baseType: !1630, size: 64, align: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !218, file: !212, line: 443, baseType: !222, size: 64, align: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !218, file: !212, line: 444, baseType: !222, size: 64, align: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !218, file: !212, line: 445, baseType: !1637, size: 64, align: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, align: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!82, !225, !63, !82}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !218, file: !212, line: 446, baseType: !1637, size: 64, align: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !218, file: !212, line: 447, baseType: !1642, size: 64, align: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64, align: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!82, !225, !317, !82}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !218, file: !212, line: 448, baseType: !222, size: 64, align: 64, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !218, file: !212, line: 449, baseType: !222, size: 64, align: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !218, file: !212, line: 450, baseType: !222, size: 64, align: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !218, file: !212, line: 451, baseType: !1649, size: 64, align: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64, align: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!262, !225, !82, !82, !82, !262, !1176}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !218, file: !212, line: 453, baseType: !1653, size: 64, align: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64, align: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!82, !225, !82, !346, !82, !82}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !218, file: !212, line: 455, baseType: !1657, size: 64, align: 64, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64, align: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!82, !225, !82, !317, !82}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !218, file: !212, line: 456, baseType: !222, size: 64, align: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !218, file: !212, line: 457, baseType: !1662, size: 64, align: 64, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64, align: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!262, !225, !82, !262, !63}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !218, file: !212, line: 458, baseType: !1666, size: 64, align: 64, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64, align: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!262, !208, !82, !262, !63}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !218, file: !212, line: 459, baseType: !1670, size: 64, align: 64, offset: 1152)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!567, !361}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !218, file: !212, line: 460, baseType: !1674, size: 64, align: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64, align: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!82, !567, !346}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !218, file: !212, line: 461, baseType: !1678, size: 64, align: 64, offset: 1280)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64, align: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!82, !1353}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !218, file: !212, line: 462, baseType: !1682, size: 64, align: 64, offset: 1344)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64, align: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!82}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !218, file: !212, line: 463, baseType: !1686, size: 64, align: 64, offset: 1408)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64, align: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!567, !129}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !218, file: !212, line: 464, baseType: !1690, size: 64, align: 64, offset: 1472)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64, align: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !82}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !218, file: !212, line: 465, baseType: !878, size: 64, align: 64, offset: 1536)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !218, file: !212, line: 466, baseType: !1697, size: 64, align: 64, offset: 1600)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64, align: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !212, line: 466, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !218, file: !212, line: 467, baseType: !1682, size: 64, align: 64, offset: 1664)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !218, file: !212, line: 468, baseType: !1701, size: 64, align: 64, offset: 1728)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64, align: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!262, !225, !82, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64, align: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !218, file: !212, line: 469, baseType: !1708, size: 64, align: 64, offset: 1792)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64, align: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!262, !208, !82, !1704}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !211, file: !212, line: 927, baseType: !1262, size: 64, align: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !211, file: !212, line: 929, baseType: !1262, size: 64, align: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !211, file: !212, line: 930, baseType: !1714, size: 64, align: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64, align: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !211, file: !212, line: 931, baseType: !1716, size: 64, align: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64, align: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !212, line: 923, size: 32, align: 32, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1717, file: !212, line: 923, baseType: !82, size: 32, align: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !211, file: !212, line: 936, baseType: !292, size: 64, align: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !211, file: !212, line: 937, baseType: !1268, size: 64, align: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !211, file: !212, line: 938, baseType: !1268, size: 64, align: 64, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !211, file: !212, line: 944, baseType: !82, size: 32, align: 32, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !211, file: !212, line: 950, baseType: !262, size: 64, align: 64, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !211, file: !212, line: 960, baseType: !1726, size: 64, align: 64, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64, align: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!82, !1729, !950}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !211, file: !212, line: 961, baseType: !1731, size: 64, align: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64, align: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1734, !950}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !211, file: !212, line: 962, baseType: !1736, size: 64, align: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64, align: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!950, !1729, !346, !82, !1176}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !211, file: !212, line: 980, baseType: !1740, size: 352, align: 32, offset: 832)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !212, line: 964, size: 352, align: 32, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1740, file: !212, line: 965, baseType: !82, size: 32, align: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1740, file: !212, line: 966, baseType: !82, size: 32, align: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1740, file: !212, line: 967, baseType: !82, size: 32, align: 32, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1740, file: !212, line: 968, baseType: !82, size: 32, align: 32, offset: 96)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1740, file: !212, line: 969, baseType: !82, size: 32, align: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1740, file: !212, line: 970, baseType: !82, size: 32, align: 32, offset: 160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1740, file: !212, line: 971, baseType: !82, size: 32, align: 32, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1740, file: !212, line: 972, baseType: !82, size: 32, align: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1740, file: !212, line: 973, baseType: !82, size: 32, align: 32, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1740, file: !212, line: 974, baseType: !82, size: 32, align: 32, offset: 288)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1740, file: !212, line: 975, baseType: !82, size: 32, align: 32, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !211, file: !212, line: 982, baseType: !82, size: 32, align: 32, offset: 1184)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !211, file: !212, line: 985, baseType: !1755, size: 64, align: 64, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64, align: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!82, !1360, !63}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !211, file: !212, line: 986, baseType: !63, size: 64, align: 64, offset: 1280)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !211, file: !212, line: 993, baseType: !1760, size: 64, align: 64, offset: 1344)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1762, line: 389, baseType: !1763)
!1762 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!82, !99, !82, !82, !63}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !211, file: !212, line: 996, baseType: !63, size: 64, align: 64, offset: 1408)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !211, file: !212, line: 999, baseType: !1767, size: 64, align: 64, offset: 1472)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64, align: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!82, !225, !1390, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !211, file: !212, line: 1002, baseType: !1772, size: 64, align: 64, offset: 1536)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64, align: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!82, !225, !346, !514}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !211, file: !212, line: 1006, baseType: !1776, size: 64, align: 64, offset: 1600)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64, align: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!82, !225, !346, !129}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !211, file: !212, line: 1009, baseType: !295, size: 128, align: 64, offset: 1664)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !211, file: !212, line: 1011, baseType: !482, size: 64, align: 64, offset: 1792)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !211, file: !212, line: 1012, baseType: !482, size: 64, align: 64, offset: 1856)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !211, file: !212, line: 1013, baseType: !482, size: 64, align: 64, offset: 1920)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !211, file: !212, line: 1015, baseType: !1457, size: 64, align: 64, offset: 1984)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !211, file: !212, line: 1016, baseType: !1785, size: 64, align: 64, offset: 2048)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64, align: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !212, line: 922, size: 256, align: 64, elements: !1787)
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1786, file: !212, line: 922, baseType: !304, size: 256, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !211, file: !212, line: 1021, baseType: !1508, size: 64, align: 64, offset: 2112)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !211, file: !212, line: 1024, baseType: !694, size: 64, align: 64, offset: 2176)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !211, file: !212, line: 1031, baseType: !292, size: 64, align: 64, offset: 2240)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !211, file: !212, line: 1032, baseType: !292, size: 64, align: 64, offset: 2304)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !211, file: !212, line: 1033, baseType: !262, size: 64, align: 64, offset: 2368)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !211, file: !212, line: 1035, baseType: !1343, size: 64, align: 64, offset: 2432)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !211, file: !212, line: 1036, baseType: !82, size: 32, align: 32, offset: 2496)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !211, file: !212, line: 1039, baseType: !1308, size: 64, align: 64, offset: 2560)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !211, file: !212, line: 1041, baseType: !63, size: 64, align: 64, offset: 2624)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !211, file: !212, line: 1043, baseType: !82, size: 32, align: 32, offset: 2688)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !211, file: !212, line: 1044, baseType: !129, size: 32, align: 32, offset: 2720)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !211, file: !212, line: 1045, baseType: !383, size: 256, align: 8, offset: 2752)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !211, file: !212, line: 1047, baseType: !1357, size: 64, align: 64, offset: 3008)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !211, file: !212, line: 1050, baseType: !1349, size: 64, align: 64, offset: 3072)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !211, file: !212, line: 1052, baseType: !1314, size: 64, align: 64, offset: 3136)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !211, file: !212, line: 1059, baseType: !82, size: 32, align: 32, offset: 3200)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !211, file: !212, line: 1065, baseType: !129, size: 32, align: 32, offset: 3232)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !211, file: !212, line: 1071, baseType: !530, size: 64, align: 64, offset: 3264)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !211, file: !212, line: 1076, baseType: !1604, size: 64, align: 64, offset: 3328)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !211, file: !212, line: 1077, baseType: !63, size: 64, align: 64, offset: 3392)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !211, file: !212, line: 1079, baseType: !388, size: 128, align: 8, offset: 3456)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !211, file: !212, line: 1080, baseType: !388, size: 128, align: 8, offset: 3584)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !211, file: !212, line: 1081, baseType: !388, size: 128, align: 8, offset: 3712)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !211, file: !212, line: 1083, baseType: !1813, size: 64, align: 64, offset: 3840)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64, align: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!82, !225, !346, !346, !717, !1816, !82}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1818, line: 82, baseType: !1819)
!1818 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1818, line: 75, size: 2304, align: 64, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1819, file: !1818, line: 76, baseType: !482, size: 64, align: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1819, file: !1818, line: 77, baseType: !477, size: 384, align: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1819, file: !1818, line: 78, baseType: !477, size: 384, align: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1819, file: !1818, line: 79, baseType: !477, size: 384, align: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1819, file: !1818, line: 80, baseType: !129, size: 32, align: 32, offset: 1216)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1819, file: !1818, line: 81, baseType: !557, size: 1024, align: 8, offset: 1248)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !211, file: !212, line: 1090, baseType: !1608, size: 64, align: 64, offset: 3904)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !211, file: !212, line: 1091, baseType: !63, size: 64, align: 64, offset: 3968)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !211, file: !212, line: 1094, baseType: !1830, size: 64, align: 64, offset: 4032)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64, align: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!82, !225, !63, !338, !63}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !211, file: !212, line: 1096, baseType: !63, size: 64, align: 64, offset: 4096)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !211, file: !212, line: 1100, baseType: !99, size: 64, align: 64, offset: 4160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !211, file: !212, line: 1101, baseType: !1514, size: 64, align: 64, offset: 4224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !211, file: !212, line: 1106, baseType: !1518, size: 64, align: 64, offset: 4288)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !211, file: !212, line: 1113, baseType: !129, size: 32, align: 32, offset: 4352)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !211, file: !212, line: 1114, baseType: !1839, size: 64, align: 64, offset: 4416)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64, align: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !212, line: 1114, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !211, file: !212, line: 1115, baseType: !1839, size: 64, align: 64, offset: 4480)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !211, file: !212, line: 1118, baseType: !1599, size: 1024, align: 64, offset: 4544)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !211, file: !212, line: 1131, baseType: !1844, size: 64, align: 64, offset: 5568)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64, align: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!82, !225, !1847, !514, !63}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !211, file: !212, line: 1133, baseType: !63, size: 64, align: 64, offset: 5632)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !211, file: !212, line: 1138, baseType: !1850, size: 64, align: 64, offset: 5696)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64, align: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!82, !225, !1853, !346, !361, !129, !63}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !211, file: !212, line: 1142, baseType: !63, size: 64, align: 64, offset: 5760)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !211, file: !212, line: 1145, baseType: !1583, size: 64, align: 64, offset: 5824)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !211, file: !212, line: 1162, baseType: !1857, size: 64, align: 64, offset: 5888)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64, align: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!82, !225, !1847, !346, !361, !129, !63}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !211, file: !212, line: 1167, baseType: !63, size: 64, align: 64, offset: 5952)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !211, file: !212, line: 1173, baseType: !346, size: 64, align: 64, offset: 6016)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !211, file: !212, line: 1174, baseType: !129, size: 32, align: 32, offset: 6080)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !211, file: !212, line: 1178, baseType: !338, size: 64, align: 64, offset: 6144)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !211, file: !212, line: 1179, baseType: !346, size: 64, align: 64, offset: 6208)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !211, file: !212, line: 1180, baseType: !338, size: 64, align: 64, offset: 6272)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !211, file: !212, line: 1181, baseType: !346, size: 64, align: 64, offset: 6336)
!1867 = distinct !DIGlobalVariable(name: "certFile", scope: !1868, file: !66, line: 1188, type: !99, isLocal: true, isDefinition: true, variable: i8** @GetSslCertFile.certFile)
!1868 = distinct !DISubprogram(name: "GetSslCertFile", scope: !66, file: !66, line: 1186, type: !1869, isLocal: true, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!127}
!1871 = distinct !DIGlobalVariable(name: "proxyDataDir", scope: !1872, file: !66, line: 1148, type: !99, isLocal: true, isDefinition: true, variable: i8** @GetProxyDataDir.proxyDataDir)
!1872 = distinct !DISubprogram(name: "GetProxyDataDir", scope: !66, file: !66, line: 1146, type: !1869, isLocal: true, isDefinition: true, scopeLine: 1147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1873 = distinct !DIGlobalVariable(name: "keyFile", scope: !1874, file: !66, line: 1227, type: !99, isLocal: true, isDefinition: true, variable: i8** @GetSslKeyFile.keyFile)
!1874 = distinct !DISubprogram(name: "GetSslKeyFile", scope: !66, file: !66, line: 1225, type: !1869, isLocal: true, isDefinition: true, scopeLine: 1226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1875 = distinct !DIGlobalVariable(name: "trustDir", scope: !1876, file: !66, line: 1266, type: !99, isLocal: true, isDefinition: true, variable: i8** @GetSslTrustDir.trustDir)
!1876 = distinct !DISubprogram(name: "GetSslTrustDir", scope: !66, file: !66, line: 1264, type: !1869, isLocal: true, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1877 = distinct !DIGlobalVariable(name: "vmVcUuidDir", scope: !1878, file: !66, line: 1644, type: !99, isLocal: true, isDefinition: true, variable: i8** @GetVmVcUuidDir.vmVcUuidDir)
!1878 = distinct !DISubprogram(name: "GetVmVcUuidDir", scope: !66, file: !66, line: 1642, type: !1869, isLocal: true, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1879 = !{i32 2, !"Dwarf Version", i32 4}
!1880 = !{i32 2, !"Debug Info Version", i32 3}
!1881 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!1882 = distinct !DISubprogram(name: "VmxListenSockConnectedCb", scope: !66, file: !66, line: 995, type: !1883, isLocal: false, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !74, !63}
!1885 = !DILocalVariable(name: "asock", arg: 1, scope: !1882, file: !66, line: 995, type: !74)
!1886 = !DIExpression()
!1887 = !DILocation(line: 995, column: 39, scope: !1882)
!1888 = !DILocalVariable(name: "clientData", arg: 2, scope: !1882, file: !66, line: 996, type: !63)
!1889 = !DILocation(line: 996, column: 32, scope: !1882)
!1890 = !DILocalVariable(name: "res", scope: !1882, file: !66, line: 998, type: !82)
!1891 = !DILocation(line: 998, column: 8, scope: !1882)
!1892 = !DILocalVariable(name: "fd", scope: !1882, file: !66, line: 999, type: !82)
!1893 = !DILocation(line: 999, column: 8, scope: !1882)
!1894 = !DILocation(line: 999, column: 31, scope: !1882)
!1895 = !DILocation(line: 999, column: 13, scope: !1882)
!1896 = !DILocalVariable(name: "conn", scope: !1882, file: !66, line: 1000, type: !64)
!1897 = !DILocation(line: 1000, column: 14, scope: !1882)
!1898 = !DILocalVariable(name: "sendBufSize", scope: !1882, file: !66, line: 1001, type: !82)
!1899 = !DILocation(line: 1001, column: 8, scope: !1882)
!1900 = !DILocation(line: 1001, column: 22, scope: !1882)
!1901 = !DILocalVariable(name: "recvBufSize", scope: !1882, file: !66, line: 1003, type: !82)
!1902 = !DILocation(line: 1003, column: 8, scope: !1882)
!1903 = !DILocation(line: 1003, column: 22, scope: !1882)
!1904 = !DILocation(line: 1006, column: 4, scope: !1882)
!1905 = !DILocation(line: 1008, column: 82, scope: !1882)
!1906 = !DILocation(line: 1008, column: 4, scope: !1882)
!1907 = !DILocation(line: 1010, column: 29, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1010, column: 8)
!1909 = !DILocation(line: 1010, column: 8, scope: !1908)
!1910 = !DILocation(line: 1010, column: 36, scope: !1908)
!1911 = !DILocation(line: 1010, column: 8, scope: !1882)
!1912 = !DILocation(line: 1011, column: 91, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !66, line: 1010, column: 61)
!1914 = !DILocation(line: 1011, column: 7, scope: !1913)
!1915 = !DILocation(line: 1012, column: 7, scope: !1913)
!1916 = !DILocation(line: 1015, column: 45, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1015, column: 8)
!1918 = !DILocation(line: 1015, column: 52, scope: !1917)
!1919 = !DILocation(line: 1015, column: 65, scope: !1917)
!1920 = !DILocation(line: 1015, column: 9, scope: !1917)
!1921 = !DILocation(line: 1015, column: 8, scope: !1882)
!1922 = !DILocation(line: 1016, column: 110, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !66, line: 1015, column: 79)
!1924 = !DILocation(line: 1016, column: 7, scope: !1923)
!1925 = !DILocation(line: 1017, column: 7, scope: !1923)
!1926 = !DILocation(line: 1020, column: 11, scope: !1882)
!1927 = !DILocation(line: 1020, column: 9, scope: !1882)
!1928 = !DILocation(line: 1021, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1021, column: 8)
!1930 = !DILocation(line: 1021, column: 13, scope: !1929)
!1931 = !DILocation(line: 1021, column: 8, scope: !1882)
!1932 = !DILocation(line: 1022, column: 103, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !66, line: 1021, column: 21)
!1934 = !DILocation(line: 1022, column: 7, scope: !1933)
!1935 = !DILocation(line: 1023, column: 7, scope: !1933)
!1936 = !DILocation(line: 1026, column: 18, scope: !1882)
!1937 = !DILocation(line: 1026, column: 4, scope: !1882)
!1938 = !DILocation(line: 1026, column: 10, scope: !1882)
!1939 = !DILocation(line: 1026, column: 16, scope: !1882)
!1940 = !DILocation(line: 1027, column: 4, scope: !1882)
!1941 = !DILocation(line: 1027, column: 10, scope: !1882)
!1942 = !DILocation(line: 1027, column: 17, scope: !1882)
!1943 = !DILocation(line: 1028, column: 4, scope: !1882)
!1944 = !DILocation(line: 1028, column: 10, scope: !1882)
!1945 = !DILocation(line: 1028, column: 17, scope: !1882)
!1946 = !DILocation(line: 1029, column: 4, scope: !1882)
!1947 = !DILocation(line: 1029, column: 10, scope: !1882)
!1948 = !DILocation(line: 1029, column: 18, scope: !1882)
!1949 = !DILocation(line: 1031, column: 33, scope: !1882)
!1950 = !DILocation(line: 1031, column: 40, scope: !1882)
!1951 = !DILocation(line: 1031, column: 46, scope: !1882)
!1952 = !DILocation(line: 1031, column: 55, scope: !1882)
!1953 = !DILocation(line: 1031, column: 10, scope: !1882)
!1954 = !DILocation(line: 1031, column: 8, scope: !1882)
!1955 = !DILocation(line: 1032, column: 8, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1032, column: 8)
!1957 = !DILocation(line: 1032, column: 12, scope: !1956)
!1958 = !DILocation(line: 1032, column: 8, scope: !1882)
!1959 = !DILocation(line: 1033, column: 96, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !66, line: 1032, column: 18)
!1961 = !DILocation(line: 1033, column: 7, scope: !1960)
!1962 = !DILocation(line: 1034, column: 7, scope: !1960)
!1963 = !DILocation(line: 1037, column: 23, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1037, column: 8)
!1965 = !DILocation(line: 1037, column: 9, scope: !1964)
!1966 = !DILocation(line: 1037, column: 8, scope: !1882)
!1967 = !DILocation(line: 1038, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !66, line: 1037, column: 30)
!1969 = !DILocation(line: 1040, column: 7, scope: !1968)
!1970 = !DILocation(line: 1043, column: 25, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1882, file: !66, line: 1043, column: 8)
!1972 = !DILocation(line: 1043, column: 8, scope: !1971)
!1973 = !DILocation(line: 1043, column: 8, scope: !1882)
!1974 = !DILocation(line: 1044, column: 30, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !66, line: 1043, column: 32)
!1976 = !DILocation(line: 1044, column: 36, scope: !1975)
!1977 = !DILocation(line: 1044, column: 7, scope: !1975)
!1978 = !DILocation(line: 1045, column: 4, scope: !1975)
!1979 = !DILocation(line: 1046, column: 4, scope: !1882)
!1980 = !DILocation(line: 1049, column: 22, scope: !1882)
!1981 = !DILocation(line: 1049, column: 4, scope: !1882)
!1982 = !DILocation(line: 1050, column: 9, scope: !1882)
!1983 = !DILocation(line: 1050, column: 4, scope: !1882)
!1984 = !DILocation(line: 1051, column: 1, scope: !1882)
!1985 = !DILocation(line: 1051, column: 1, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1882, file: !66, discriminator: 1)
!1987 = distinct !DISubprogram(name: "GetConfigInt", scope: !66, file: !66, line: 154, type: !1988, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!82, !127, !82}
!1990 = !DILocalVariable(name: "name", arg: 1, scope: !1987, file: !66, line: 154, type: !127)
!1991 = !DILocation(line: 154, column: 26, scope: !1987)
!1992 = !DILocalVariable(name: "defaultVal", arg: 2, scope: !1987, file: !66, line: 155, type: !82)
!1993 = !DILocation(line: 155, column: 18, scope: !1987)
!1994 = !DILocalVariable(name: "gerr", scope: !1987, file: !66, line: 157, type: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64, align: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !1997, line: 42, baseType: !1998)
!1997 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !1997, line: 44, size: 128, align: 64, elements: !1999)
!1999 = !{!2000, !2005, !2006}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1998, file: !1997, line: 46, baseType: !2001, size: 32, align: 32)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !2002, line: 36, baseType: !2003)
!2002 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !2004, line: 45, baseType: !129)
!2004 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1998, file: !1997, line: 47, baseType: !93, size: 32, align: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1998, file: !1997, line: 48, baseType: !151, size: 64, align: 64, offset: 64)
!2007 = !DILocation(line: 157, column: 12, scope: !1987)
!2008 = !DILocalVariable(name: "num", scope: !1987, file: !66, line: 158, type: !82)
!2009 = !DILocation(line: 158, column: 8, scope: !1987)
!2010 = !DILocation(line: 158, column: 47, scope: !1987)
!2011 = !DILocation(line: 158, column: 52, scope: !1987)
!2012 = !DILocation(line: 160, column: 37, scope: !1987)
!2013 = !DILocation(line: 158, column: 14, scope: !1987)
!2014 = !DILocation(line: 162, column: 8, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1987, file: !66, line: 162, column: 8)
!2016 = !DILocation(line: 162, column: 8, scope: !1987)
!2017 = !DILocation(line: 163, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !66, line: 162, column: 14)
!2019 = !DILocation(line: 164, column: 14, scope: !2018)
!2020 = !DILocation(line: 164, column: 7, scope: !2018)
!2021 = !DILocation(line: 167, column: 11, scope: !1987)
!2022 = !DILocation(line: 167, column: 4, scope: !1987)
!2023 = !DILocation(line: 168, column: 1, scope: !1987)
!2024 = distinct !DISubprogram(name: "VmxConnRecvedCb", scope: !66, file: !66, line: 916, type: !80, isLocal: true, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2025 = !DILocalVariable(name: "buf", arg: 1, scope: !2024, file: !66, line: 916, type: !63)
!2026 = !DILocation(line: 916, column: 23, scope: !2024)
!2027 = !DILocalVariable(name: "len", arg: 2, scope: !2024, file: !66, line: 917, type: !82)
!2028 = !DILocation(line: 917, column: 21, scope: !2024)
!2029 = !DILocalVariable(name: "asock", arg: 3, scope: !2024, file: !66, line: 918, type: !74)
!2030 = !DILocation(line: 918, column: 30, scope: !2024)
!2031 = !DILocalVariable(name: "clientData", arg: 4, scope: !2024, file: !66, line: 919, type: !63)
!2032 = !DILocation(line: 919, column: 23, scope: !2024)
!2033 = !DILocalVariable(name: "conn", scope: !2024, file: !66, line: 921, type: !64)
!2034 = !DILocation(line: 921, column: 14, scope: !2024)
!2035 = !DILocation(line: 921, column: 33, scope: !2024)
!2036 = !DILocation(line: 921, column: 21, scope: !2024)
!2037 = !DILocation(line: 923, column: 4, scope: !2024)
!2038 = !DILocation(line: 925, column: 8, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2024, file: !66, line: 925, column: 8)
!2040 = !DILocation(line: 925, column: 16, scope: !2039)
!2041 = !DILocation(line: 925, column: 22, scope: !2039)
!2042 = !DILocation(line: 925, column: 15, scope: !2039)
!2043 = !DILocation(line: 925, column: 12, scope: !2039)
!2044 = !DILocation(line: 925, column: 8, scope: !2024)
!2045 = !DILocation(line: 927, column: 30, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !66, line: 925, column: 33)
!2047 = !DILocation(line: 927, column: 36, scope: !2046)
!2048 = !DILocation(line: 927, column: 7, scope: !2046)
!2049 = !DILocation(line: 928, column: 4, scope: !2046)
!2050 = !DILocalVariable(name: "map", scope: !2051, file: !66, line: 929, type: !2052)
!2051 = distinct !DILexicalBlock(scope: !2039, file: !66, line: 928, column: 11)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataMap", file: !34, line: 77, baseType: !2053)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 74, size: 128, align: 64, elements: !2054)
!2054 = !{!2055, !2060}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2053, file: !34, line: 75, baseType: !2056, size: 64, align: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64, align: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMap", file: !2058, line: 45, baseType: !2059)
!2058 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap", file: !2058, line: 45, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !2053, file: !34, line: 76, baseType: !2061, size: 64, align: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !71, line: 171, baseType: !2062)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !2063, line: 55, baseType: !292)
!2063 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!2064 = !DILocation(line: 929, column: 15, scope: !2051)
!2065 = !DILocalVariable(name: "res", scope: !2051, file: !66, line: 930, type: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorCode", file: !34, line: 60, baseType: !33)
!2067 = !DILocation(line: 930, column: 17, scope: !2051)
!2068 = !DILocalVariable(name: "packetLen", scope: !2051, file: !66, line: 931, type: !82)
!2069 = !DILocation(line: 931, column: 11, scope: !2051)
!2070 = !DILocation(line: 931, column: 23, scope: !2051)
!2071 = !DILocation(line: 931, column: 27, scope: !2051)
!2072 = !DILocation(line: 934, column: 33, scope: !2051)
!2073 = !DILocation(line: 934, column: 39, scope: !2051)
!2074 = !DILocation(line: 934, column: 48, scope: !2051)
!2075 = !DILocation(line: 934, column: 13, scope: !2051)
!2076 = !DILocation(line: 934, column: 11, scope: !2051)
!2077 = !DILocation(line: 937, column: 32, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2051, file: !66, line: 937, column: 11)
!2079 = !DILocation(line: 937, column: 38, scope: !2078)
!2080 = !DILocation(line: 937, column: 11, scope: !2078)
!2081 = !DILocation(line: 937, column: 11, scope: !2051)
!2082 = !DILocation(line: 938, column: 27, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !66, line: 937, column: 53)
!2084 = !DILocation(line: 938, column: 10, scope: !2083)
!2085 = !DILocation(line: 939, column: 7, scope: !2083)
!2086 = !DILocation(line: 941, column: 7, scope: !2051)
!2087 = !DILocation(line: 944, column: 1, scope: !2024)
!2088 = distinct !DISubprogram(name: "ConnSendDoneCb", scope: !66, file: !66, line: 480, type: !80, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2089 = !DILocalVariable(name: "buf", arg: 1, scope: !2088, file: !66, line: 480, type: !63)
!2090 = !DILocation(line: 480, column: 22, scope: !2088)
!2091 = !DILocalVariable(name: "len", arg: 2, scope: !2088, file: !66, line: 481, type: !82)
!2092 = !DILocation(line: 481, column: 20, scope: !2088)
!2093 = !DILocalVariable(name: "asock", arg: 3, scope: !2088, file: !66, line: 482, type: !74)
!2094 = !DILocation(line: 482, column: 29, scope: !2088)
!2095 = !DILocalVariable(name: "clientData", arg: 4, scope: !2088, file: !66, line: 483, type: !63)
!2096 = !DILocation(line: 483, column: 22, scope: !2088)
!2097 = !DILocalVariable(name: "dst", scope: !2088, file: !66, line: 485, type: !64)
!2098 = !DILocation(line: 485, column: 14, scope: !2088)
!2099 = !DILocation(line: 485, column: 32, scope: !2088)
!2100 = !DILocation(line: 485, column: 20, scope: !2088)
!2101 = !DILocalVariable(name: "src", scope: !2088, file: !66, line: 486, type: !64)
!2102 = !DILocation(line: 486, column: 14, scope: !2088)
!2103 = !DILocation(line: 486, column: 20, scope: !2088)
!2104 = !DILocation(line: 486, column: 25, scope: !2088)
!2105 = !DILocation(line: 488, column: 4, scope: !2088)
!2106 = !DILocation(line: 490, column: 9, scope: !2088)
!2107 = !DILocation(line: 490, column: 4, scope: !2088)
!2108 = !DILocation(line: 492, column: 29, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2088, file: !66, line: 492, column: 8)
!2110 = !DILocation(line: 492, column: 8, scope: !2109)
!2111 = !DILocation(line: 492, column: 36, scope: !2109)
!2112 = !DILocation(line: 492, column: 8, scope: !2088)
!2113 = !DILocation(line: 495, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2109, file: !66, line: 492, column: 61)
!2115 = !DILocation(line: 498, column: 25, scope: !2088)
!2116 = !DILocation(line: 498, column: 4, scope: !2088)
!2117 = !DILocation(line: 498, column: 9, scope: !2088)
!2118 = !DILocation(line: 498, column: 22, scope: !2088)
!2119 = !DILocation(line: 501, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2088, file: !66, line: 501, column: 8)
!2121 = !DILocation(line: 501, column: 13, scope: !2120)
!2122 = !DILocation(line: 501, column: 26, scope: !2120)
!2123 = !DILocation(line: 501, column: 31, scope: !2120)
!2124 = !DILocation(line: 501, column: 34, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2120, file: !66, discriminator: 1)
!2126 = !DILocation(line: 501, column: 39, scope: !2125)
!2127 = !DILocation(line: 501, column: 8, scope: !2125)
!2128 = !DILocation(line: 502, column: 120, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2120, file: !66, line: 501, column: 49)
!2130 = !DILocation(line: 502, column: 108, scope: !2129)
!2131 = !DILocation(line: 502, column: 144, scope: !2129)
!2132 = !DILocation(line: 502, column: 149, scope: !2129)
!2133 = !DILocation(line: 502, column: 126, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2129, file: !66, discriminator: 1)
!2135 = !DILocation(line: 502, column: 7, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2129, file: !66, discriminator: 2)
!2137 = !DILocation(line: 504, column: 17, scope: !2129)
!2138 = !DILocation(line: 504, column: 7, scope: !2129)
!2139 = !DILocation(line: 505, column: 7, scope: !2129)
!2140 = !DILocation(line: 508, column: 106, scope: !2088)
!2141 = !DILocation(line: 508, column: 123, scope: !2088)
!2142 = !DILocation(line: 508, column: 111, scope: !2088)
!2143 = !DILocation(line: 508, column: 147, scope: !2088)
!2144 = !DILocation(line: 508, column: 152, scope: !2088)
!2145 = !DILocation(line: 508, column: 129, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2088, file: !66, discriminator: 1)
!2147 = !DILocation(line: 508, column: 160, scope: !2088)
!2148 = !DILocation(line: 508, column: 165, scope: !2088)
!2149 = !DILocation(line: 508, column: 4, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2088, file: !66, discriminator: 2)
!2151 = !DILocation(line: 512, column: 11, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2088, file: !66, line: 512, column: 8)
!2153 = !DILocation(line: 512, column: 16, scope: !2152)
!2154 = !DILocation(line: 512, column: 10, scope: !2152)
!2155 = !DILocation(line: 512, column: 27, scope: !2152)
!2156 = !DILocation(line: 512, column: 30, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2152, file: !66, discriminator: 1)
!2158 = !DILocation(line: 512, column: 35, scope: !2157)
!2159 = !DILocation(line: 512, column: 47, scope: !2157)
!2160 = !DILocation(line: 513, column: 9, scope: !2152)
!2161 = !DILocation(line: 513, column: 14, scope: !2152)
!2162 = !DILocation(line: 513, column: 39, scope: !2152)
!2163 = !DILocation(line: 513, column: 27, scope: !2152)
!2164 = !DILocation(line: 512, column: 8, scope: !2150)
!2165 = !DILocation(line: 514, column: 110, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2152, file: !66, line: 513, column: 57)
!2167 = !DILocation(line: 514, column: 115, scope: !2166)
!2168 = !DILocation(line: 514, column: 92, scope: !2166)
!2169 = !DILocation(line: 514, column: 7, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2166, file: !66, discriminator: 1)
!2171 = !DILocation(line: 517, column: 7, scope: !2166)
!2172 = !DILocation(line: 517, column: 12, scope: !2166)
!2173 = !DILocation(line: 517, column: 24, scope: !2166)
!2174 = !DILocation(line: 518, column: 11, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2166, file: !66, line: 518, column: 11)
!2176 = !DILocation(line: 518, column: 16, scope: !2175)
!2177 = !DILocation(line: 518, column: 11, scope: !2166)
!2178 = !DILocation(line: 519, column: 33, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !66, line: 518, column: 29)
!2180 = !DILocation(line: 519, column: 10, scope: !2179)
!2181 = !DILocation(line: 520, column: 7, scope: !2179)
!2182 = !DILocation(line: 521, column: 27, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2175, file: !66, line: 520, column: 14)
!2184 = !DILocation(line: 521, column: 10, scope: !2183)
!2185 = !DILocation(line: 523, column: 4, scope: !2166)
!2186 = !DILocation(line: 524, column: 1, scope: !2088)
!2187 = distinct !DISubprogram(name: "ConnErrorHandlerCb", scope: !66, file: !66, line: 964, type: !88, isLocal: true, isDefinition: true, scopeLine: 967, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2188 = !DILocalVariable(name: "err", arg: 1, scope: !2187, file: !66, line: 964, type: !82)
!2189 = !DILocation(line: 964, column: 24, scope: !2187)
!2190 = !DILocalVariable(name: "asock", arg: 2, scope: !2187, file: !66, line: 965, type: !74)
!2191 = !DILocation(line: 965, column: 33, scope: !2187)
!2192 = !DILocalVariable(name: "clientData", arg: 3, scope: !2187, file: !66, line: 966, type: !63)
!2193 = !DILocation(line: 966, column: 26, scope: !2187)
!2194 = !DILocalVariable(name: "conn", scope: !2187, file: !66, line: 968, type: !64)
!2195 = !DILocation(line: 968, column: 14, scope: !2187)
!2196 = !DILocation(line: 968, column: 33, scope: !2187)
!2197 = !DILocation(line: 968, column: 21, scope: !2187)
!2198 = !DILocation(line: 969, column: 4, scope: !2187)
!2199 = !DILocation(line: 972, column: 87, scope: !2187)
!2200 = !DILocation(line: 972, column: 104, scope: !2187)
!2201 = !DILocation(line: 972, column: 92, scope: !2187)
!2202 = !DILocation(line: 972, column: 129, scope: !2187)
!2203 = !DILocation(line: 972, column: 135, scope: !2187)
!2204 = !DILocation(line: 972, column: 111, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2187, file: !66, discriminator: 1)
!2206 = !DILocation(line: 972, column: 4, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2187, file: !66, discriminator: 2)
!2208 = !DILocation(line: 975, column: 14, scope: !2187)
!2209 = !DILocation(line: 975, column: 4, scope: !2187)
!2210 = !DILocation(line: 976, column: 1, scope: !2187)
!2211 = distinct !DISubprogram(name: "AssignVmxConn", scope: !66, file: !66, line: 332, type: !2212, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!70, !64}
!2214 = !DILocalVariable(name: "conn", arg: 1, scope: !2211, file: !66, line: 332, type: !64)
!2215 = !DILocation(line: 332, column: 25, scope: !2211)
!2216 = !DILocalVariable(name: "lp", scope: !2211, file: !66, line: 334, type: !106)
!2217 = !DILocation(line: 334, column: 11, scope: !2211)
!2218 = !DILocation(line: 336, column: 23, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2211, file: !66, line: 336, column: 4)
!2220 = !DILocation(line: 336, column: 11, scope: !2219)
!2221 = !DILocation(line: 336, column: 8, scope: !2219)
!2222 = !DILocation(line: 336, column: 36, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2224, file: !66, discriminator: 1)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !66, line: 336, column: 4)
!2225 = !DILocation(line: 336, column: 4, scope: !2223)
!2226 = !DILocalVariable(name: "cli", scope: !2227, file: !66, line: 337, type: !64)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !66, line: 336, column: 47)
!2228 = !DILocation(line: 337, column: 17, scope: !2227)
!2229 = !DILocation(line: 337, column: 36, scope: !2227)
!2230 = !DILocation(line: 337, column: 40, scope: !2227)
!2231 = !DILocation(line: 337, column: 23, scope: !2227)
!2232 = !DILocation(line: 338, column: 11, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !66, line: 338, column: 11)
!2234 = !DILocation(line: 338, column: 16, scope: !2233)
!2235 = !DILocation(line: 338, column: 23, scope: !2233)
!2236 = !DILocation(line: 338, column: 11, scope: !2227)
!2237 = !DILocation(line: 339, column: 24, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !66, line: 338, column: 31)
!2239 = !DILocation(line: 339, column: 10, scope: !2238)
!2240 = !DILocation(line: 339, column: 15, scope: !2238)
!2241 = !DILocation(line: 339, column: 22, scope: !2238)
!2242 = !DILocation(line: 340, column: 25, scope: !2238)
!2243 = !DILocation(line: 340, column: 10, scope: !2238)
!2244 = !DILocation(line: 340, column: 16, scope: !2238)
!2245 = !DILocation(line: 340, column: 23, scope: !2238)
!2246 = !DILocation(line: 341, column: 10, scope: !2238)
!2247 = !DILocation(line: 343, column: 4, scope: !2227)
!2248 = !DILocation(line: 336, column: 47, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2224, file: !66, discriminator: 2)
!2250 = !DILocation(line: 336, column: 46, scope: !2249)
!2251 = !DILocation(line: 336, column: 65, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2224, file: !66, discriminator: 3)
!2253 = !DILocation(line: 336, column: 71, scope: !2252)
!2254 = !DILocation(line: 336, column: 46, scope: !2252)
!2255 = !DILocation(line: 336, column: 46, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2224, file: !66, discriminator: 4)
!2257 = !DILocation(line: 336, column: 46, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2224, file: !66, discriminator: 5)
!2259 = !DILocation(line: 336, column: 43, scope: !2258)
!2260 = !DILocation(line: 336, column: 4, scope: !2258)
!2261 = distinct !{!2261, !2262}
!2262 = !DILocation(line: 336, column: 4, scope: !2211)
!2263 = !DILocation(line: 345, column: 4, scope: !2211)
!2264 = !DILocation(line: 346, column: 1, scope: !2211)
!2265 = distinct !DISubprogram(name: "StartRecvFromVmx", scope: !66, file: !66, line: 414, type: !2266, isLocal: true, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!91, !64}
!2268 = !DILocalVariable(name: "conn", arg: 1, scope: !2265, file: !66, line: 414, type: !64)
!2269 = !DILocation(line: 414, column: 28, scope: !2265)
!2270 = !DILocalVariable(name: "res", scope: !2265, file: !66, line: 416, type: !82)
!2271 = !DILocation(line: 416, column: 8, scope: !2265)
!2272 = !DILocation(line: 417, column: 27, scope: !2265)
!2273 = !DILocation(line: 417, column: 33, scope: !2265)
!2274 = !DILocation(line: 417, column: 41, scope: !2265)
!2275 = !DILocation(line: 417, column: 47, scope: !2265)
!2276 = !DILocation(line: 417, column: 40, scope: !2265)
!2277 = !DILocation(line: 419, column: 27, scope: !2265)
!2278 = !DILocation(line: 419, column: 33, scope: !2265)
!2279 = !DILocation(line: 419, column: 41, scope: !2265)
!2280 = !DILocation(line: 417, column: 10, scope: !2265)
!2281 = !DILocation(line: 417, column: 8, scope: !2265)
!2282 = !DILocation(line: 420, column: 8, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2265, file: !66, line: 420, column: 8)
!2284 = !DILocation(line: 420, column: 12, scope: !2283)
!2285 = !DILocation(line: 420, column: 8, scope: !2265)
!2286 = !DILocation(line: 421, column: 117, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !66, line: 420, column: 18)
!2288 = !DILocation(line: 421, column: 123, scope: !2287)
!2289 = !DILocation(line: 421, column: 99, scope: !2287)
!2290 = !DILocation(line: 421, column: 154, scope: !2287)
!2291 = !DILocation(line: 421, column: 131, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2287, file: !66, discriminator: 1)
!2293 = !DILocation(line: 421, column: 7, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2287, file: !66, discriminator: 2)
!2295 = !DILocation(line: 423, column: 17, scope: !2287)
!2296 = !DILocation(line: 423, column: 7, scope: !2287)
!2297 = !DILocation(line: 424, column: 7, scope: !2287)
!2298 = !DILocation(line: 426, column: 4, scope: !2265)
!2299 = !DILocation(line: 427, column: 1, scope: !2265)
!2300 = distinct !DISubprogram(name: "StartRecvFromRmqClient", scope: !66, file: !66, line: 366, type: !2266, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2301 = !DILocalVariable(name: "conn", arg: 1, scope: !2300, file: !66, line: 366, type: !64)
!2302 = !DILocation(line: 366, column: 34, scope: !2300)
!2303 = !DILocalVariable(name: "res", scope: !2300, file: !66, line: 368, type: !82)
!2304 = !DILocation(line: 368, column: 8, scope: !2300)
!2305 = !DILocation(line: 372, column: 8, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2300, file: !66, line: 372, column: 8)
!2307 = !DILocation(line: 372, column: 14, scope: !2306)
!2308 = !DILocation(line: 372, column: 22, scope: !2306)
!2309 = !DILocation(line: 372, column: 8, scope: !2300)
!2310 = !DILocation(line: 373, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !66, line: 372, column: 30)
!2312 = !DILocation(line: 373, column: 13, scope: !2311)
!2313 = !DILocation(line: 373, column: 24, scope: !2311)
!2314 = !DILocation(line: 374, column: 30, scope: !2311)
!2315 = !DILocation(line: 374, column: 36, scope: !2311)
!2316 = !DILocation(line: 374, column: 23, scope: !2311)
!2317 = !DILocation(line: 374, column: 7, scope: !2311)
!2318 = !DILocation(line: 374, column: 13, scope: !2311)
!2319 = !DILocation(line: 374, column: 21, scope: !2311)
!2320 = !DILocation(line: 375, column: 11, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2311, file: !66, line: 375, column: 11)
!2322 = !DILocation(line: 375, column: 17, scope: !2321)
!2323 = !DILocation(line: 375, column: 25, scope: !2321)
!2324 = !DILocation(line: 375, column: 11, scope: !2311)
!2325 = !DILocation(line: 376, column: 146, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !66, line: 375, column: 33)
!2327 = !DILocation(line: 376, column: 152, scope: !2326)
!2328 = !DILocation(line: 376, column: 128, scope: !2326)
!2329 = !DILocation(line: 376, column: 10, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2326, file: !66, discriminator: 1)
!2331 = !DILocation(line: 379, column: 20, scope: !2326)
!2332 = !DILocation(line: 379, column: 10, scope: !2326)
!2333 = !DILocation(line: 380, column: 10, scope: !2326)
!2334 = !DILocation(line: 382, column: 4, scope: !2311)
!2335 = !DILocation(line: 384, column: 34, scope: !2300)
!2336 = !DILocation(line: 384, column: 40, scope: !2300)
!2337 = !DILocation(line: 384, column: 47, scope: !2300)
!2338 = !DILocation(line: 384, column: 53, scope: !2300)
!2339 = !DILocation(line: 385, column: 34, scope: !2300)
!2340 = !DILocation(line: 385, column: 40, scope: !2300)
!2341 = !DILocation(line: 386, column: 34, scope: !2300)
!2342 = !DILocation(line: 386, column: 40, scope: !2300)
!2343 = !DILocation(line: 386, column: 48, scope: !2300)
!2344 = !DILocation(line: 384, column: 10, scope: !2300)
!2345 = !DILocation(line: 384, column: 8, scope: !2300)
!2346 = !DILocation(line: 387, column: 8, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2300, file: !66, line: 387, column: 8)
!2348 = !DILocation(line: 387, column: 12, scope: !2347)
!2349 = !DILocation(line: 387, column: 8, scope: !2300)
!2350 = !DILocation(line: 388, column: 124, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !66, line: 387, column: 18)
!2352 = !DILocation(line: 388, column: 130, scope: !2351)
!2353 = !DILocation(line: 388, column: 106, scope: !2351)
!2354 = !DILocation(line: 388, column: 161, scope: !2351)
!2355 = !DILocation(line: 388, column: 138, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2351, file: !66, discriminator: 1)
!2357 = !DILocation(line: 388, column: 7, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2351, file: !66, discriminator: 2)
!2359 = !DILocation(line: 390, column: 17, scope: !2351)
!2360 = !DILocation(line: 390, column: 7, scope: !2351)
!2361 = !DILocation(line: 391, column: 7, scope: !2351)
!2362 = !DILocation(line: 393, column: 4, scope: !2300)
!2363 = !DILocation(line: 394, column: 1, scope: !2300)
!2364 = distinct !DISubprogram(name: "RmqListenSockConnectedCb", scope: !66, file: !66, line: 1404, type: !1883, isLocal: false, isDefinition: true, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2365 = !DILocalVariable(name: "asock", arg: 1, scope: !2364, file: !66, line: 1404, type: !74)
!2366 = !DILocation(line: 1404, column: 39, scope: !2364)
!2367 = !DILocalVariable(name: "clientData", arg: 2, scope: !2364, file: !66, line: 1405, type: !63)
!2368 = !DILocation(line: 1405, column: 32, scope: !2364)
!2369 = !DILocalVariable(name: "fd", scope: !2364, file: !66, line: 1407, type: !82)
!2370 = !DILocation(line: 1407, column: 8, scope: !2364)
!2371 = !DILocation(line: 1407, column: 31, scope: !2364)
!2372 = !DILocation(line: 1407, column: 13, scope: !2364)
!2373 = !DILocalVariable(name: "sendBufSize", scope: !2364, file: !66, line: 1408, type: !82)
!2374 = !DILocation(line: 1408, column: 8, scope: !2364)
!2375 = !DILocation(line: 1408, column: 22, scope: !2364)
!2376 = !DILocalVariable(name: "recvBufSize", scope: !2364, file: !66, line: 1410, type: !82)
!2377 = !DILocation(line: 1410, column: 8, scope: !2364)
!2378 = !DILocation(line: 1410, column: 22, scope: !2364)
!2379 = !DILocation(line: 1414, column: 4, scope: !2364)
!2380 = !DILocation(line: 1415, column: 91, scope: !2364)
!2381 = !DILocation(line: 1415, column: 4, scope: !2364)
!2382 = !DILocation(line: 1417, column: 29, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2364, file: !66, line: 1417, column: 8)
!2384 = !DILocation(line: 1417, column: 8, scope: !2383)
!2385 = !DILocation(line: 1417, column: 36, scope: !2383)
!2386 = !DILocation(line: 1417, column: 8, scope: !2364)
!2387 = !DILocation(line: 1418, column: 92, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2383, file: !66, line: 1417, column: 61)
!2389 = !DILocation(line: 1418, column: 7, scope: !2388)
!2390 = !DILocation(line: 1419, column: 7, scope: !2388)
!2391 = !DILocation(line: 1422, column: 45, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2364, file: !66, line: 1422, column: 8)
!2393 = !DILocation(line: 1422, column: 52, scope: !2392)
!2394 = !DILocation(line: 1422, column: 65, scope: !2392)
!2395 = !DILocation(line: 1422, column: 9, scope: !2392)
!2396 = !DILocation(line: 1422, column: 8, scope: !2364)
!2397 = !DILocation(line: 1423, column: 87, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !66, line: 1422, column: 79)
!2399 = !DILocation(line: 1423, column: 7, scope: !2398)
!2400 = !DILocation(line: 1424, column: 7, scope: !2398)
!2401 = !DILocation(line: 1427, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2364, file: !66, line: 1427, column: 8)
!2403 = !DILocation(line: 1427, column: 8, scope: !2364)
!2404 = !DILocalVariable(name: "sslCtx", scope: !2405, file: !66, line: 1428, type: !208)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !66, line: 1427, column: 33)
!2406 = !DILocation(line: 1428, column: 16, scope: !2405)
!2407 = !DILocation(line: 1428, column: 25, scope: !2405)
!2408 = !DILocation(line: 1429, column: 12, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !66, line: 1429, column: 11)
!2410 = !DILocation(line: 1429, column: 11, scope: !2405)
!2411 = !DILocation(line: 1430, column: 111, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !66, line: 1429, column: 20)
!2413 = !DILocation(line: 1430, column: 10, scope: !2412)
!2414 = !DILocation(line: 1431, column: 10, scope: !2412)
!2415 = !DILocation(line: 1434, column: 34, scope: !2405)
!2416 = !DILocation(line: 1434, column: 41, scope: !2405)
!2417 = !DILocation(line: 1434, column: 7, scope: !2405)
!2418 = !DILocation(line: 1435, column: 4, scope: !2405)
!2419 = !DILocation(line: 1436, column: 35, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2402, file: !66, line: 1435, column: 11)
!2421 = !DILocation(line: 1436, column: 7, scope: !2420)
!2422 = !DILocation(line: 1439, column: 4, scope: !2364)
!2423 = !DILocation(line: 1442, column: 22, scope: !2364)
!2424 = !DILocation(line: 1442, column: 4, scope: !2364)
!2425 = !DILocation(line: 1443, column: 1, scope: !2364)
!2426 = !DILocation(line: 1443, column: 1, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2364, file: !66, discriminator: 1)
!2428 = distinct !DISubprogram(name: "GetConfigBool", scope: !66, file: !66, line: 188, type: !2429, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!91, !127, !91}
!2431 = !DILocalVariable(name: "name", arg: 1, scope: !2428, file: !66, line: 188, type: !127)
!2432 = !DILocation(line: 188, column: 27, scope: !2428)
!2433 = !DILocalVariable(name: "defaultVal", arg: 2, scope: !2428, file: !66, line: 189, type: !91)
!2434 = !DILocation(line: 189, column: 24, scope: !2428)
!2435 = !DILocalVariable(name: "gerr", scope: !2428, file: !66, line: 191, type: !1995)
!2436 = !DILocation(line: 191, column: 12, scope: !2428)
!2437 = !DILocalVariable(name: "val", scope: !2428, file: !66, line: 192, type: !91)
!2438 = !DILocation(line: 192, column: 13, scope: !2428)
!2439 = !DILocation(line: 192, column: 52, scope: !2428)
!2440 = !DILocation(line: 192, column: 57, scope: !2428)
!2441 = !DILocation(line: 194, column: 42, scope: !2428)
!2442 = !DILocation(line: 192, column: 19, scope: !2428)
!2443 = !DILocation(line: 196, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2428, file: !66, line: 196, column: 8)
!2445 = !DILocation(line: 196, column: 8, scope: !2428)
!2446 = !DILocation(line: 197, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !66, line: 196, column: 14)
!2448 = !DILocation(line: 198, column: 14, scope: !2447)
!2449 = !DILocation(line: 198, column: 7, scope: !2447)
!2450 = !DILocation(line: 201, column: 11, scope: !2428)
!2451 = !DILocation(line: 201, column: 4, scope: !2428)
!2452 = !DILocation(line: 202, column: 1, scope: !2428)
!2453 = !DILocalVariable(name: "workingCtx", scope: !205, file: !66, line: 1305, type: !208)
!2454 = !DILocation(line: 1305, column: 13, scope: !205)
!2455 = !DILocalVariable(name: "certFile", scope: !205, file: !66, line: 1306, type: !127)
!2456 = !DILocation(line: 1306, column: 16, scope: !205)
!2457 = !DILocalVariable(name: "keyFile", scope: !205, file: !66, line: 1307, type: !127)
!2458 = !DILocation(line: 1307, column: 16, scope: !205)
!2459 = !DILocalVariable(name: "trustDir", scope: !205, file: !66, line: 1308, type: !127)
!2460 = !DILocation(line: 1308, column: 16, scope: !205)
!2461 = !DILocalVariable(name: "sslCtxOptions", scope: !205, file: !66, line: 1309, type: !262)
!2462 = !DILocation(line: 1309, column: 9, scope: !205)
!2463 = !DILocation(line: 1311, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1311, column: 8)
!2465 = !DILocation(line: 1311, column: 8, scope: !205)
!2466 = !DILocation(line: 1312, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !66, line: 1311, column: 16)
!2468 = !DILocation(line: 1315, column: 17, scope: !205)
!2469 = !DILocation(line: 1315, column: 15, scope: !205)
!2470 = !DILocation(line: 1316, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1316, column: 8)
!2472 = !DILocation(line: 1316, column: 8, scope: !205)
!2473 = !DILocation(line: 1317, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !66, line: 1316, column: 21)
!2475 = !DILocation(line: 1318, column: 7, scope: !2474)
!2476 = !DILocation(line: 1325, column: 19, scope: !205)
!2477 = !DILocation(line: 1325, column: 18, scope: !205)
!2478 = !DILocation(line: 1329, column: 18, scope: !205)
!2479 = !DILocation(line: 1333, column: 18, scope: !205)
!2480 = !DILocation(line: 1336, column: 3, scope: !205)
!2481 = !DILocation(line: 1338, column: 15, scope: !205)
!2482 = !DILocation(line: 1338, column: 13, scope: !205)
!2483 = !DILocation(line: 1339, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1339, column: 8)
!2485 = !DILocation(line: 1339, column: 8, scope: !205)
!2486 = !DILocation(line: 1340, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !66, line: 1339, column: 19)
!2488 = !DILocation(line: 1341, column: 7, scope: !2487)
!2489 = !DILocation(line: 1343, column: 38, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1343, column: 8)
!2491 = !DILocation(line: 1343, column: 50, scope: !2490)
!2492 = !DILocation(line: 1343, column: 9, scope: !2490)
!2493 = !DILocation(line: 1343, column: 8, scope: !205)
!2494 = !DILocation(line: 1345, column: 95, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !66, line: 1344, column: 56)
!2496 = !DILocation(line: 1345, column: 7, scope: !2495)
!2497 = !DILocation(line: 1346, column: 7, scope: !2495)
!2498 = !DILocation(line: 1349, column: 14, scope: !205)
!2499 = !DILocation(line: 1349, column: 12, scope: !205)
!2500 = !DILocation(line: 1350, column: 9, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1350, column: 8)
!2502 = !DILocation(line: 1350, column: 8, scope: !205)
!2503 = !DILocation(line: 1351, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2501, file: !66, line: 1350, column: 18)
!2505 = !DILocation(line: 1352, column: 7, scope: !2504)
!2506 = !DILocation(line: 1354, column: 37, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1354, column: 8)
!2508 = !DILocation(line: 1354, column: 49, scope: !2507)
!2509 = !DILocation(line: 1354, column: 9, scope: !2507)
!2510 = !DILocation(line: 1354, column: 8, scope: !205)
!2511 = !DILocation(line: 1356, column: 87, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !66, line: 1355, column: 55)
!2513 = !DILocation(line: 1356, column: 7, scope: !2512)
!2514 = !DILocation(line: 1357, column: 7, scope: !2512)
!2515 = !DILocation(line: 1360, column: 15, scope: !205)
!2516 = !DILocation(line: 1360, column: 13, scope: !205)
!2517 = !DILocation(line: 1361, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1361, column: 8)
!2519 = !DILocation(line: 1361, column: 8, scope: !205)
!2520 = !DILocation(line: 1362, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !66, line: 1361, column: 19)
!2522 = !DILocation(line: 1363, column: 7, scope: !2521)
!2523 = !DILocation(line: 1365, column: 39, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1365, column: 8)
!2525 = !DILocation(line: 1365, column: 56, scope: !2524)
!2526 = !DILocation(line: 1365, column: 9, scope: !2524)
!2527 = !DILocation(line: 1365, column: 8, scope: !205)
!2528 = !DILocation(line: 1366, column: 101, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !66, line: 1365, column: 67)
!2530 = !DILocation(line: 1366, column: 7, scope: !2529)
!2531 = !DILocation(line: 1367, column: 7, scope: !2529)
!2532 = !DILocation(line: 1370, column: 23, scope: !205)
!2533 = !DILocation(line: 1370, column: 4, scope: !205)
!2534 = !DILocation(line: 1374, column: 13, scope: !205)
!2535 = !DILocation(line: 1374, column: 11, scope: !205)
!2536 = !DILocation(line: 1375, column: 15, scope: !205)
!2537 = !DILocation(line: 1375, column: 4, scope: !205)
!2538 = !DILocation(line: 1378, column: 8, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !205, file: !66, line: 1378, column: 8)
!2540 = !DILocation(line: 1378, column: 8, scope: !205)
!2541 = !DILocation(line: 1379, column: 20, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !66, line: 1378, column: 20)
!2543 = !DILocation(line: 1379, column: 7, scope: !2542)
!2544 = !DILocation(line: 1380, column: 4, scope: !2542)
!2545 = !DILocation(line: 1382, column: 11, scope: !205)
!2546 = !DILocation(line: 1382, column: 4, scope: !205)
!2547 = distinct !DISubprogram(name: "RmqClientSockHandShakeCb", scope: !66, file: !66, line: 1072, type: !2548, isLocal: true, isDefinition: true, scopeLine: 1075, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !70, !74, !63}
!2550 = !DILocalVariable(name: "status", arg: 1, scope: !2547, file: !66, line: 1072, type: !70)
!2551 = !DILocation(line: 1072, column: 31, scope: !2547)
!2552 = !DILocalVariable(name: "asock", arg: 2, scope: !2547, file: !66, line: 1073, type: !74)
!2553 = !DILocation(line: 1073, column: 39, scope: !2547)
!2554 = !DILocalVariable(name: "clientData", arg: 3, scope: !2547, file: !66, line: 1074, type: !63)
!2555 = !DILocation(line: 1074, column: 32, scope: !2547)
!2556 = !DILocalVariable(name: "conn", scope: !2547, file: !66, line: 1076, type: !64)
!2557 = !DILocation(line: 1076, column: 14, scope: !2547)
!2558 = !DILocalVariable(name: "fd", scope: !2547, file: !66, line: 1077, type: !82)
!2559 = !DILocation(line: 1077, column: 8, scope: !2547)
!2560 = !DILocalVariable(name: "res", scope: !2547, file: !66, line: 1077, type: !82)
!2561 = !DILocation(line: 1077, column: 12, scope: !2547)
!2562 = !DILocation(line: 1079, column: 4, scope: !2547)
!2563 = !DILocation(line: 1081, column: 9, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2547, file: !66, line: 1081, column: 8)
!2565 = !DILocation(line: 1081, column: 8, scope: !2547)
!2566 = !DILocation(line: 1082, column: 132, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !66, line: 1081, column: 17)
!2568 = !DILocation(line: 1082, column: 114, scope: !2567)
!2569 = !DILocation(line: 1082, column: 7, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2567, file: !66, discriminator: 1)
!2571 = !DILocation(line: 1084, column: 7, scope: !2567)
!2572 = !DILocation(line: 1087, column: 27, scope: !2547)
!2573 = !DILocation(line: 1087, column: 9, scope: !2547)
!2574 = !DILocation(line: 1087, column: 7, scope: !2547)
!2575 = !DILocation(line: 1089, column: 99, scope: !2547)
!2576 = !DILocation(line: 1089, column: 4, scope: !2547)
!2577 = !DILocation(line: 1091, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2547, file: !66, line: 1091, column: 8)
!2579 = !DILocation(line: 1091, column: 8, scope: !2547)
!2580 = !DILocation(line: 1092, column: 143, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !66, line: 1091, column: 34)
!2582 = !DILocation(line: 1092, column: 7, scope: !2581)
!2583 = !DILocation(line: 1094, column: 7, scope: !2581)
!2584 = !DILocation(line: 1098, column: 11, scope: !2547)
!2585 = !DILocation(line: 1098, column: 9, scope: !2547)
!2586 = !DILocation(line: 1099, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2547, file: !66, line: 1099, column: 8)
!2588 = !DILocation(line: 1099, column: 13, scope: !2587)
!2589 = !DILocation(line: 1099, column: 8, scope: !2547)
!2590 = !DILocation(line: 1100, column: 103, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !66, line: 1099, column: 21)
!2592 = !DILocation(line: 1100, column: 7, scope: !2591)
!2593 = !DILocation(line: 1101, column: 7, scope: !2591)
!2594 = !DILocation(line: 1104, column: 4, scope: !2547)
!2595 = !DILocation(line: 1104, column: 10, scope: !2547)
!2596 = !DILocation(line: 1104, column: 22, scope: !2547)
!2597 = !DILocation(line: 1105, column: 18, scope: !2547)
!2598 = !DILocation(line: 1105, column: 4, scope: !2547)
!2599 = !DILocation(line: 1105, column: 10, scope: !2547)
!2600 = !DILocation(line: 1105, column: 16, scope: !2547)
!2601 = !DILocation(line: 1106, column: 4, scope: !2547)
!2602 = !DILocation(line: 1106, column: 10, scope: !2547)
!2603 = !DILocation(line: 1106, column: 17, scope: !2547)
!2604 = !DILocation(line: 1107, column: 4, scope: !2547)
!2605 = !DILocation(line: 1107, column: 10, scope: !2547)
!2606 = !DILocation(line: 1107, column: 17, scope: !2547)
!2607 = !DILocation(line: 1108, column: 4, scope: !2547)
!2608 = !DILocation(line: 1108, column: 10, scope: !2547)
!2609 = !DILocation(line: 1108, column: 18, scope: !2547)
!2610 = !DILocation(line: 1110, column: 33, scope: !2547)
!2611 = !DILocation(line: 1110, column: 40, scope: !2547)
!2612 = !DILocation(line: 1110, column: 46, scope: !2547)
!2613 = !DILocation(line: 1110, column: 55, scope: !2547)
!2614 = !DILocation(line: 1110, column: 10, scope: !2547)
!2615 = !DILocation(line: 1110, column: 8, scope: !2547)
!2616 = !DILocation(line: 1111, column: 8, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2547, file: !66, line: 1111, column: 8)
!2618 = !DILocation(line: 1111, column: 12, scope: !2617)
!2619 = !DILocation(line: 1111, column: 8, scope: !2547)
!2620 = !DILocation(line: 1112, column: 96, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !66, line: 1111, column: 18)
!2622 = !DILocation(line: 1112, column: 7, scope: !2621)
!2623 = !DILocation(line: 1113, column: 12, scope: !2621)
!2624 = !DILocation(line: 1113, column: 7, scope: !2621)
!2625 = !DILocation(line: 1114, column: 7, scope: !2621)
!2626 = !DILocation(line: 1117, column: 52, scope: !2547)
!2627 = !DILocation(line: 1117, column: 65, scope: !2547)
!2628 = !DILocation(line: 1117, column: 28, scope: !2547)
!2629 = !DILocation(line: 1117, column: 26, scope: !2547)
!2630 = !DILocation(line: 1121, column: 4, scope: !2547)
!2631 = !DILocation(line: 1124, column: 22, scope: !2547)
!2632 = !DILocation(line: 1124, column: 4, scope: !2547)
!2633 = !DILocation(line: 1125, column: 1, scope: !2547)
!2634 = !DILocation(line: 1125, column: 1, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2547, file: !66, discriminator: 1)
!2636 = distinct !DISubprogram(name: "GRabbitmqProxyGetSSLLibPath", scope: !66, file: !66, line: 1899, type: !2637, isLocal: false, isDefinition: true, scopeLine: 1901, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!99, !127, !127}
!2639 = !DILocalVariable(name: "arg1", arg: 1, scope: !2636, file: !66, line: 1899, type: !127)
!2640 = !DILocation(line: 1899, column: 41, scope: !2636)
!2641 = !DILocalVariable(name: "arg2", arg: 2, scope: !2636, file: !66, line: 1900, type: !127)
!2642 = !DILocation(line: 1900, column: 41, scope: !2636)
!2643 = !DILocalVariable(name: "sslLibPath", scope: !2636, file: !66, line: 1902, type: !151)
!2644 = !DILocation(line: 1902, column: 11, scope: !2636)
!2645 = !DILocation(line: 1910, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2636, file: !66, line: 1910, column: 7)
!2647 = !DILocation(line: 1910, column: 12, scope: !2646)
!2648 = !DILocation(line: 1910, column: 7, scope: !2636)
!2649 = !DILocalVariable(name: "endPath", scope: !2650, file: !66, line: 1911, type: !151)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !66, line: 1910, column: 27)
!2651 = !DILocation(line: 1911, column: 14, scope: !2650)
!2652 = !DILocation(line: 1912, column: 102, scope: !2650)
!2653 = !DILocation(line: 1912, column: 7, scope: !2650)
!2654 = !DILocation(line: 1913, column: 17, scope: !2650)
!2655 = !DILocation(line: 1913, column: 37, scope: !2650)
!2656 = !DILocation(line: 1913, column: 30, scope: !2650)
!2657 = !DILocation(line: 1913, column: 28, scope: !2650)
!2658 = !DILocation(line: 1913, column: 49, scope: !2650)
!2659 = !DILocation(line: 1913, column: 15, scope: !2650)
!2660 = !DILocation(line: 1914, column: 12, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2650, file: !66, line: 1914, column: 11)
!2662 = !DILocation(line: 1914, column: 22, scope: !2661)
!2663 = !DILocation(line: 1914, column: 20, scope: !2661)
!2664 = !DILocation(line: 1914, column: 34, scope: !2661)
!2665 = !DILocation(line: 1914, column: 46, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2661, file: !66, discriminator: 1)
!2667 = !DILocation(line: 1914, column: 45, scope: !2666)
!2668 = !DILocation(line: 1914, column: 42, scope: !2666)
!2669 = !DILocation(line: 1914, column: 11, scope: !2666)
!2670 = !DILocation(line: 1915, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !66, line: 1914, column: 56)
!2672 = !DILocation(line: 1915, column: 19, scope: !2671)
!2673 = !DILocation(line: 1916, column: 7, scope: !2671)
!2674 = !DILocation(line: 1917, column: 4, scope: !2650)
!2675 = !DILocation(line: 1919, column: 11, scope: !2636)
!2676 = !DILocation(line: 1919, column: 4, scope: !2636)
!2677 = !DILocalVariable(name: "ctx", arg: 1, scope: !136, file: !66, line: 1940, type: !159)
!2678 = !DILocation(line: 1940, column: 26, scope: !136)
!2679 = !DILocalVariable(name: "sigs", scope: !136, file: !66, line: 1944, type: !2680)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2681, size: 384, align: 64, elements: !460)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsPluginSignalCb", file: !24, line: 484, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsPluginSignalCb", file: !24, line: 480, size: 192, align: 64, elements: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "signame", scope: !2682, file: !24, line: 481, baseType: !166, size: 64, align: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2682, file: !24, line: 482, baseType: !112, size: 64, align: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !2682, file: !24, line: 483, baseType: !112, size: 64, align: 64, offset: 128)
!2687 = !DILocation(line: 1944, column: 24, scope: !136)
!2688 = !DILocalVariable(name: "regs", scope: !136, file: !66, line: 1948, type: !2689)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 128, align: 64, elements: !2695)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppReg", file: !24, line: 450, baseType: !2691)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppReg", file: !24, line: 447, size: 128, align: 64, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2691, file: !24, line: 448, baseType: !190, size: 32, align: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2691, file: !24, line: 449, baseType: !145, size: 64, align: 64, offset: 64)
!2695 = !{!2696}
!2696 = !DISubrange(count: 1)
!2697 = !DILocation(line: 1948, column: 16, scope: !136)
!2698 = !DILocation(line: 1948, column: 25, scope: !136)
!2699 = !DILocation(line: 1949, column: 7, scope: !136)
!2700 = !DILocation(line: 1950, column: 27, scope: !136)
!2701 = !DILocation(line: 1950, column: 9, scope: !136)
!2702 = !DILocation(line: 1953, column: 18, scope: !136)
!2703 = !DILocation(line: 1953, column: 4, scope: !136)
!2704 = !DILocation(line: 1954, column: 4, scope: !136)
!2705 = !DILocation(line: 1955, column: 4, scope: !136)
!2706 = !DILocation(line: 1957, column: 18, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !136, file: !66, line: 1957, column: 8)
!2708 = !DILocation(line: 1957, column: 24, scope: !2707)
!2709 = !DILocation(line: 1957, column: 10, scope: !2707)
!2710 = !DILocation(line: 1957, column: 39, scope: !2707)
!2711 = !DILocation(line: 1957, column: 45, scope: !2707)
!2712 = !DILocation(line: 1957, column: 58, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2707, file: !66, discriminator: 1)
!2714 = !DILocation(line: 1957, column: 64, scope: !2713)
!2715 = !DILocation(line: 1957, column: 50, scope: !2713)
!2716 = !DILocation(line: 1957, column: 79, scope: !2713)
!2717 = !DILocation(line: 1957, column: 8, scope: !2713)
!2718 = !DILocation(line: 1958, column: 111, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2707, file: !66, line: 1957, column: 86)
!2720 = !DILocation(line: 1958, column: 116, scope: !2719)
!2721 = !DILocation(line: 1958, column: 7, scope: !2719)
!2722 = !DILocation(line: 1960, column: 7, scope: !2719)
!2723 = !DILocation(line: 1963, column: 37, scope: !136)
!2724 = !DILocation(line: 1963, column: 19, scope: !136)
!2725 = !DILocation(line: 1963, column: 17, scope: !136)
!2726 = !DILocation(line: 1965, column: 4, scope: !136)
!2727 = !DILocation(line: 1966, column: 4, scope: !136)
!2728 = !DILocation(line: 1967, column: 1, scope: !136)
!2729 = distinct !DISubprogram(name: "GRabbitmqProxyShutdown", scope: !66, file: !66, line: 1829, type: !2730, isLocal: true, isDefinition: true, scopeLine: 1832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !112, !159, !139}
!2732 = !DILocalVariable(name: "src", arg: 1, scope: !2729, file: !66, line: 1829, type: !112)
!2733 = !DILocation(line: 1829, column: 33, scope: !2729)
!2734 = !DILocalVariable(name: "ctx", arg: 2, scope: !2729, file: !66, line: 1830, type: !159)
!2735 = !DILocation(line: 1830, column: 37, scope: !2729)
!2736 = !DILocalVariable(name: "plugin", arg: 3, scope: !2729, file: !66, line: 1831, type: !139)
!2737 = !DILocation(line: 1831, column: 41, scope: !2729)
!2738 = !DILocation(line: 1833, column: 4, scope: !2729)
!2739 = !DILocation(line: 1835, column: 18, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2729, file: !66, line: 1835, column: 8)
!2741 = !DILocation(line: 1835, column: 8, scope: !2740)
!2742 = !DILocation(line: 1835, column: 8, scope: !2729)
!2743 = !DILocation(line: 1836, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !66, line: 1835, column: 44)
!2745 = !DILocation(line: 1837, column: 4, scope: !2744)
!2746 = !DILocation(line: 1838, column: 1, scope: !2729)
!2747 = distinct !DISubprogram(name: "GRabbitmqProxySetOption", scope: !66, file: !66, line: 1860, type: !2748, isLocal: true, isDefinition: true, scopeLine: 1865, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!91, !112, !159, !166, !166, !139}
!2750 = !DILocalVariable(name: "src", arg: 1, scope: !2747, file: !66, line: 1860, type: !112)
!2751 = !DILocation(line: 1860, column: 34, scope: !2747)
!2752 = !DILocalVariable(name: "ctx", arg: 2, scope: !2747, file: !66, line: 1861, type: !159)
!2753 = !DILocation(line: 1861, column: 38, scope: !2747)
!2754 = !DILocalVariable(name: "option", arg: 3, scope: !2747, file: !66, line: 1862, type: !166)
!2755 = !DILocation(line: 1862, column: 38, scope: !2747)
!2756 = !DILocalVariable(name: "value", arg: 4, scope: !2747, file: !66, line: 1863, type: !166)
!2757 = !DILocation(line: 1863, column: 38, scope: !2747)
!2758 = !DILocalVariable(name: "plugin", arg: 5, scope: !2747, file: !66, line: 1864, type: !139)
!2759 = !DILocation(line: 1864, column: 42, scope: !2747)
!2760 = !DILocalVariable(name: "retVal", scope: !2747, file: !66, line: 1866, type: !91)
!2761 = !DILocation(line: 1866, column: 13, scope: !2747)
!2762 = !DILocation(line: 1868, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2747, file: !66, line: 1868, column: 8)
!2764 = !DILocation(line: 1868, column: 8, scope: !2763)
!2765 = !DILocation(line: 1868, column: 49, scope: !2763)
!2766 = !DILocation(line: 1868, column: 8, scope: !2747)
!2767 = !DILocation(line: 1869, column: 18, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !66, line: 1869, column: 11)
!2769 = distinct !DILexicalBlock(scope: !2763, file: !66, line: 1868, column: 55)
!2770 = !DILocation(line: 1869, column: 11, scope: !2768)
!2771 = !DILocation(line: 1869, column: 30, scope: !2768)
!2772 = !DILocation(line: 1869, column: 11, scope: !2769)
!2773 = !DILocation(line: 1870, column: 10, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2768, file: !66, line: 1869, column: 36)
!2775 = !DILocation(line: 1871, column: 7, scope: !2774)
!2776 = !DILocation(line: 1871, column: 25, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2778, file: !66, discriminator: 1)
!2778 = distinct !DILexicalBlock(scope: !2768, file: !66, line: 1871, column: 18)
!2779 = !DILocation(line: 1871, column: 18, scope: !2777)
!2780 = !DILocation(line: 1871, column: 37, scope: !2777)
!2781 = !DILocation(line: 1871, column: 42, scope: !2777)
!2782 = !DILocation(line: 1872, column: 28, scope: !2778)
!2783 = !DILocation(line: 1872, column: 18, scope: !2778)
!2784 = !DILocation(line: 1871, column: 18, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2768, file: !66, discriminator: 2)
!2786 = !DILocation(line: 1873, column: 10, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2778, file: !66, line: 1872, column: 54)
!2788 = !DILocation(line: 1874, column: 7, scope: !2787)
!2789 = !DILocation(line: 1875, column: 4, scope: !2769)
!2790 = !DILocation(line: 1877, column: 11, scope: !2747)
!2791 = !DILocation(line: 1877, column: 4, scope: !2747)
!2792 = distinct !DISubprogram(name: "InitProxyData", scope: !66, file: !66, line: 1559, type: !2793, isLocal: true, isDefinition: true, scopeLine: 1560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !159}
!2795 = !DILocalVariable(name: "ctx", arg: 1, scope: !2792, file: !66, line: 1559, type: !159)
!2796 = !DILocation(line: 1559, column: 28, scope: !2792)
!2797 = !DILocation(line: 1562, column: 4, scope: !2792)
!2798 = !DILocation(line: 1564, column: 20, scope: !2792)
!2799 = !DILocation(line: 1564, column: 18, scope: !2792)
!2800 = !DILocation(line: 1565, column: 39, scope: !2792)
!2801 = !DILocation(line: 1566, column: 32, scope: !2792)
!2802 = !DILocation(line: 1566, column: 30, scope: !2792)
!2803 = !DILocation(line: 1568, column: 1, scope: !2792)
!2804 = distinct !DISubprogram(name: "ProcessPacketHeaderLen", scope: !66, file: !66, line: 875, type: !2805, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !64, !82}
!2807 = !DILocalVariable(name: "conn", arg: 1, scope: !2804, file: !66, line: 875, type: !64)
!2808 = !DILocation(line: 875, column: 34, scope: !2804)
!2809 = !DILocalVariable(name: "len", arg: 2, scope: !2804, file: !66, line: 876, type: !82)
!2810 = !DILocation(line: 876, column: 28, scope: !2804)
!2811 = !DILocalVariable(name: "pktLen", scope: !2804, file: !66, line: 878, type: !82)
!2812 = !DILocation(line: 878, column: 8, scope: !2804)
!2813 = !DILocation(line: 878, column: 23, scope: !2804)
!2814 = !DILocation(line: 878, column: 29, scope: !2804)
!2815 = !DILocation(line: 878, column: 17, scope: !2804)
!2816 = !DILocation(line: 880, column: 4, scope: !2804)
!2817 = !DILocation(line: 882, column: 8, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2804, file: !66, line: 882, column: 8)
!2819 = !DILocation(line: 882, column: 14, scope: !2818)
!2820 = !DILocation(line: 882, column: 22, scope: !2818)
!2821 = !DILocation(line: 882, column: 29, scope: !2818)
!2822 = !DILocation(line: 882, column: 32, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2818, file: !66, discriminator: 1)
!2824 = !DILocation(line: 882, column: 38, scope: !2823)
!2825 = !DILocation(line: 882, column: 51, scope: !2823)
!2826 = !DILocation(line: 882, column: 60, scope: !2823)
!2827 = !DILocation(line: 882, column: 58, scope: !2823)
!2828 = !DILocation(line: 882, column: 49, scope: !2823)
!2829 = !DILocation(line: 882, column: 8, scope: !2823)
!2830 = !DILocation(line: 883, column: 26, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2818, file: !66, line: 882, column: 65)
!2832 = !DILocation(line: 883, column: 35, scope: !2831)
!2833 = !DILocation(line: 883, column: 33, scope: !2831)
!2834 = !DILocation(line: 883, column: 7, scope: !2831)
!2835 = !DILocation(line: 883, column: 13, scope: !2831)
!2836 = !DILocation(line: 883, column: 24, scope: !2831)
!2837 = !DILocation(line: 884, column: 12, scope: !2831)
!2838 = !DILocation(line: 884, column: 18, scope: !2831)
!2839 = !DILocation(line: 884, column: 7, scope: !2831)
!2840 = !DILocation(line: 885, column: 30, scope: !2831)
!2841 = !DILocation(line: 885, column: 39, scope: !2831)
!2842 = !DILocation(line: 885, column: 37, scope: !2831)
!2843 = !DILocation(line: 885, column: 23, scope: !2831)
!2844 = !DILocation(line: 885, column: 7, scope: !2831)
!2845 = !DILocation(line: 885, column: 13, scope: !2831)
!2846 = !DILocation(line: 885, column: 21, scope: !2831)
!2847 = !DILocation(line: 886, column: 11, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2831, file: !66, line: 886, column: 11)
!2849 = !DILocation(line: 886, column: 17, scope: !2848)
!2850 = !DILocation(line: 886, column: 25, scope: !2848)
!2851 = !DILocation(line: 886, column: 11, scope: !2831)
!2852 = !DILocation(line: 887, column: 145, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2848, file: !66, line: 886, column: 33)
!2854 = !DILocation(line: 887, column: 151, scope: !2853)
!2855 = !DILocation(line: 887, column: 127, scope: !2853)
!2856 = !DILocation(line: 887, column: 10, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2853, file: !66, discriminator: 1)
!2858 = !DILocation(line: 889, column: 20, scope: !2853)
!2859 = !DILocation(line: 889, column: 10, scope: !2853)
!2860 = !DILocation(line: 890, column: 10, scope: !2853)
!2861 = !DILocation(line: 892, column: 4, scope: !2831)
!2862 = !DILocation(line: 894, column: 34, scope: !2804)
!2863 = !DILocation(line: 894, column: 40, scope: !2804)
!2864 = !DILocation(line: 894, column: 16, scope: !2804)
!2865 = !DILocation(line: 894, column: 22, scope: !2804)
!2866 = !DILocation(line: 894, column: 4, scope: !2804)
!2867 = !DILocation(line: 894, column: 32, scope: !2804)
!2868 = !DILocation(line: 895, column: 26, scope: !2804)
!2869 = !DILocation(line: 895, column: 32, scope: !2804)
!2870 = !DILocation(line: 895, column: 4, scope: !2804)
!2871 = !DILocation(line: 896, column: 1, scope: !2804)
!2872 = !DILocation(line: 896, column: 1, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2804, file: !66, discriminator: 1)
!2874 = distinct !DISubprogram(name: "ProcessVmxDataPacket", scope: !66, file: !66, line: 803, type: !2875, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!91, !64, !2877}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64, align: 64)
!2878 = !DILocalVariable(name: "cli", arg: 1, scope: !2874, file: !66, line: 803, type: !64)
!2879 = !DILocation(line: 803, column: 32, scope: !2874)
!2880 = !DILocalVariable(name: "map", arg: 2, scope: !2874, file: !66, line: 804, type: !2877)
!2881 = !DILocation(line: 804, column: 31, scope: !2874)
!2882 = !DILocalVariable(name: "res", scope: !2874, file: !66, line: 806, type: !2066)
!2883 = !DILocation(line: 806, column: 14, scope: !2874)
!2884 = !DILocalVariable(name: "cmdType", scope: !2874, file: !66, line: 807, type: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !71, line: 172, baseType: !2886)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !97, line: 197, baseType: !262)
!2887 = !DILocation(line: 807, column: 10, scope: !2874)
!2888 = !DILocation(line: 809, column: 4, scope: !2874)
!2889 = !DILocation(line: 811, column: 27, scope: !2874)
!2890 = !DILocation(line: 811, column: 10, scope: !2874)
!2891 = !DILocation(line: 811, column: 8, scope: !2874)
!2892 = !DILocation(line: 814, column: 12, scope: !2874)
!2893 = !DILocation(line: 814, column: 4, scope: !2874)
!2894 = !DILocalVariable(name: "buf", scope: !2895, file: !66, line: 817, type: !99)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !66, line: 816, column: 10)
!2896 = distinct !DILexicalBlock(scope: !2874, file: !66, line: 814, column: 21)
!2897 = !DILocation(line: 817, column: 19, scope: !2895)
!2898 = !DILocalVariable(name: "payloadLen", scope: !2895, file: !66, line: 818, type: !82)
!2899 = !DILocation(line: 818, column: 17, scope: !2895)
!2900 = !DILocalVariable(name: "payload", scope: !2895, file: !66, line: 819, type: !99)
!2901 = !DILocation(line: 819, column: 19, scope: !2895)
!2902 = !DILocation(line: 821, column: 37, scope: !2895)
!2903 = !DILocation(line: 821, column: 19, scope: !2895)
!2904 = !DILocation(line: 821, column: 17, scope: !2895)
!2905 = !DILocation(line: 824, column: 26, scope: !2895)
!2906 = !DILocation(line: 824, column: 19, scope: !2895)
!2907 = !DILocation(line: 824, column: 17, scope: !2895)
!2908 = !DILocation(line: 826, column: 17, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2895, file: !66, line: 826, column: 17)
!2910 = !DILocation(line: 826, column: 17, scope: !2895)
!2911 = !DILocation(line: 827, column: 23, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !66, line: 826, column: 22)
!2913 = !DILocation(line: 827, column: 28, scope: !2912)
!2914 = !DILocation(line: 827, column: 37, scope: !2912)
!2915 = !DILocation(line: 827, column: 16, scope: !2912)
!2916 = !DILocation(line: 828, column: 34, scope: !2912)
!2917 = !DILocation(line: 828, column: 39, scope: !2912)
!2918 = !DILocation(line: 828, column: 44, scope: !2912)
!2919 = !DILocation(line: 828, column: 23, scope: !2912)
!2920 = !DILocation(line: 828, column: 16, scope: !2912)
!2921 = !DILocation(line: 830, column: 149, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2909, file: !66, line: 829, column: 20)
!2923 = !DILocation(line: 830, column: 154, scope: !2922)
!2924 = !DILocation(line: 830, column: 131, scope: !2922)
!2925 = !DILocation(line: 830, column: 16, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2922, file: !66, discriminator: 1)
!2927 = !DILocation(line: 833, column: 26, scope: !2922)
!2928 = !DILocation(line: 833, column: 16, scope: !2922)
!2929 = !DILocation(line: 834, column: 16, scope: !2922)
!2930 = !DILocation(line: 840, column: 117, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2896, file: !66, line: 839, column: 10)
!2932 = !DILocation(line: 840, column: 122, scope: !2931)
!2933 = !DILocation(line: 840, column: 99, scope: !2931)
!2934 = !DILocation(line: 840, column: 13, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2931, file: !66, discriminator: 1)
!2936 = !DILocation(line: 842, column: 23, scope: !2931)
!2937 = !DILocation(line: 842, column: 13, scope: !2931)
!2938 = !DILocation(line: 843, column: 13, scope: !2931)
!2939 = !DILocation(line: 846, column: 10, scope: !2896)
!2940 = !DILocation(line: 848, column: 125, scope: !2896)
!2941 = !DILocation(line: 848, column: 130, scope: !2896)
!2942 = !DILocation(line: 848, column: 107, scope: !2896)
!2943 = !DILocation(line: 848, column: 10, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2896, file: !66, discriminator: 1)
!2945 = !DILocation(line: 850, column: 20, scope: !2896)
!2946 = !DILocation(line: 850, column: 10, scope: !2896)
!2947 = !DILocation(line: 851, column: 10, scope: !2896)
!2948 = !DILocation(line: 854, column: 4, scope: !2874)
!2949 = !DILocation(line: 855, column: 1, scope: !2874)
!2950 = distinct !DISubprogram(name: "CloseConn", scope: !66, file: !66, line: 290, type: !2951, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !64}
!2953 = !DILocalVariable(name: "conn", arg: 1, scope: !2950, file: !66, line: 290, type: !64)
!2954 = !DILocation(line: 290, column: 21, scope: !2950)
!2955 = !DILocation(line: 292, column: 4, scope: !2950)
!2956 = !DILocation(line: 296, column: 8, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2950, file: !66, line: 296, column: 8)
!2958 = !DILocation(line: 296, column: 14, scope: !2957)
!2959 = !DILocation(line: 296, column: 21, scope: !2957)
!2960 = !DILocation(line: 296, column: 8, scope: !2950)
!2961 = !DILocation(line: 297, column: 20, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2957, file: !66, line: 296, column: 29)
!2963 = !DILocation(line: 297, column: 26, scope: !2962)
!2964 = !DILocation(line: 297, column: 7, scope: !2962)
!2965 = !DILocation(line: 298, column: 7, scope: !2962)
!2966 = !DILocation(line: 298, column: 13, scope: !2962)
!2967 = !DILocation(line: 298, column: 20, scope: !2962)
!2968 = !DILocation(line: 299, column: 4, scope: !2962)
!2969 = !DILocation(line: 300, column: 89, scope: !2950)
!2970 = !DILocation(line: 300, column: 77, scope: !2950)
!2971 = !DILocation(line: 300, column: 114, scope: !2950)
!2972 = !DILocation(line: 300, column: 120, scope: !2950)
!2973 = !DILocation(line: 300, column: 96, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2950, file: !66, discriminator: 1)
!2975 = !DILocation(line: 300, column: 4, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2950, file: !66, discriminator: 2)
!2977 = !DILocation(line: 303, column: 22, scope: !2950)
!2978 = !DILocation(line: 303, column: 28, scope: !2950)
!2979 = !DILocation(line: 303, column: 4, scope: !2950)
!2980 = !DILocation(line: 304, column: 4, scope: !2950)
!2981 = !DILocation(line: 304, column: 10, scope: !2950)
!2982 = !DILocation(line: 304, column: 16, scope: !2950)
!2983 = !DILocation(line: 305, column: 9, scope: !2950)
!2984 = !DILocation(line: 305, column: 15, scope: !2950)
!2985 = !DILocation(line: 305, column: 4, scope: !2950)
!2986 = !DILocation(line: 306, column: 4, scope: !2950)
!2987 = !DILocation(line: 306, column: 10, scope: !2950)
!2988 = !DILocation(line: 306, column: 18, scope: !2950)
!2989 = !DILocation(line: 309, column: 8, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2950, file: !66, line: 309, column: 8)
!2991 = !DILocation(line: 309, column: 14, scope: !2990)
!2992 = !DILocation(line: 309, column: 8, scope: !2950)
!2993 = !DILocation(line: 310, column: 55, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !66, line: 309, column: 27)
!2995 = !DILocation(line: 310, column: 68, scope: !2994)
!2996 = !DILocation(line: 310, column: 31, scope: !2994)
!2997 = !DILocation(line: 310, column: 29, scope: !2994)
!2998 = !DILocation(line: 311, column: 4, scope: !2994)
!2999 = !DILocation(line: 312, column: 9, scope: !2950)
!3000 = !DILocation(line: 312, column: 4, scope: !2950)
!3001 = !DILocation(line: 313, column: 1, scope: !2950)
!3002 = distinct !DISubprogram(name: "RecvPacketFromVmxConn", scope: !66, file: !66, line: 447, type: !3003, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!91, !64, !82}
!3005 = !DILocalVariable(name: "conn", arg: 1, scope: !3002, file: !66, line: 447, type: !64)
!3006 = !DILocation(line: 447, column: 33, scope: !3002)
!3007 = !DILocalVariable(name: "len", arg: 2, scope: !3002, file: !66, line: 447, type: !82)
!3008 = !DILocation(line: 447, column: 43, scope: !3002)
!3009 = !DILocalVariable(name: "res", scope: !3002, file: !66, line: 449, type: !82)
!3010 = !DILocation(line: 449, column: 8, scope: !3002)
!3011 = !DILocation(line: 451, column: 27, scope: !3002)
!3012 = !DILocation(line: 451, column: 33, scope: !3002)
!3013 = !DILocation(line: 451, column: 40, scope: !3002)
!3014 = !DILocation(line: 451, column: 46, scope: !3002)
!3015 = !DILocation(line: 451, column: 54, scope: !3002)
!3016 = !DILocation(line: 452, column: 10, scope: !3002)
!3017 = !DILocation(line: 452, column: 15, scope: !3002)
!3018 = !DILocation(line: 452, column: 21, scope: !3002)
!3019 = !DILocation(line: 452, column: 29, scope: !3002)
!3020 = !DILocation(line: 451, column: 10, scope: !3002)
!3021 = !DILocation(line: 451, column: 8, scope: !3002)
!3022 = !DILocation(line: 453, column: 8, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3002, file: !66, line: 453, column: 8)
!3024 = !DILocation(line: 453, column: 12, scope: !3023)
!3025 = !DILocation(line: 453, column: 8, scope: !3002)
!3026 = !DILocation(line: 454, column: 117, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !66, line: 453, column: 18)
!3028 = !DILocation(line: 454, column: 123, scope: !3027)
!3029 = !DILocation(line: 454, column: 99, scope: !3027)
!3030 = !DILocation(line: 454, column: 154, scope: !3027)
!3031 = !DILocation(line: 454, column: 131, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3027, file: !66, discriminator: 1)
!3033 = !DILocation(line: 454, column: 7, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3027, file: !66, discriminator: 2)
!3035 = !DILocation(line: 456, column: 17, scope: !3027)
!3036 = !DILocation(line: 456, column: 7, scope: !3027)
!3037 = !DILocation(line: 457, column: 7, scope: !3027)
!3038 = !DILocation(line: 459, column: 4, scope: !3002)
!3039 = !DILocation(line: 460, column: 1, scope: !3002)
!3040 = distinct !DISubprogram(name: "ShutDownConn", scope: !66, file: !66, line: 247, type: !2951, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3041 = !DILocalVariable(name: "conn", arg: 1, scope: !3040, file: !66, line: 247, type: !64)
!3042 = !DILocation(line: 247, column: 24, scope: !3040)
!3043 = !DILocation(line: 249, column: 4, scope: !3040)
!3044 = !DILocation(line: 251, column: 4, scope: !3040)
!3045 = !DILocation(line: 251, column: 10, scope: !3040)
!3046 = !DILocation(line: 251, column: 17, scope: !3040)
!3047 = !DILocation(line: 252, column: 8, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3040, file: !66, line: 252, column: 8)
!3049 = !DILocation(line: 252, column: 14, scope: !3048)
!3050 = !DILocation(line: 252, column: 27, scope: !3048)
!3051 = !DILocation(line: 252, column: 8, scope: !3040)
!3052 = !DILocation(line: 253, column: 99, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !66, line: 252, column: 32)
!3054 = !DILocation(line: 253, column: 87, scope: !3053)
!3055 = !DILocation(line: 253, column: 124, scope: !3053)
!3056 = !DILocation(line: 253, column: 130, scope: !3053)
!3057 = !DILocation(line: 253, column: 106, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3053, file: !66, discriminator: 1)
!3059 = !DILocation(line: 253, column: 7, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3053, file: !66, discriminator: 2)
!3061 = !DILocation(line: 255, column: 7, scope: !3053)
!3062 = !DILocation(line: 255, column: 13, scope: !3053)
!3063 = !DILocation(line: 255, column: 22, scope: !3053)
!3064 = !DILocation(line: 256, column: 24, scope: !3053)
!3065 = !DILocation(line: 256, column: 7, scope: !3053)
!3066 = !DILocation(line: 257, column: 4, scope: !3053)
!3067 = !DILocation(line: 258, column: 17, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3048, file: !66, line: 257, column: 11)
!3069 = !DILocation(line: 258, column: 7, scope: !3068)
!3070 = !DILocation(line: 260, column: 1, scope: !3040)
!3071 = distinct !DISubprogram(name: "GetConnName", scope: !66, file: !66, line: 222, type: !3072, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!99, !64}
!3074 = !DILocalVariable(name: "conn", arg: 1, scope: !3071, file: !66, line: 222, type: !64)
!3075 = !DILocation(line: 222, column: 23, scope: !3071)
!3076 = !DILocation(line: 224, column: 11, scope: !3071)
!3077 = !DILocation(line: 224, column: 17, scope: !3071)
!3078 = !DILocation(line: 224, column: 4, scope: !3071)
!3079 = distinct !DISubprogram(name: "StopRecvFromConn", scope: !66, file: !66, line: 544, type: !2951, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3080 = !DILocalVariable(name: "conn", arg: 1, scope: !3079, file: !66, line: 544, type: !64)
!3081 = !DILocation(line: 544, column: 28, scope: !3079)
!3082 = !DILocalVariable(name: "res", scope: !3079, file: !66, line: 546, type: !82)
!3083 = !DILocation(line: 546, column: 8, scope: !3079)
!3084 = !DILocation(line: 547, column: 112, scope: !3079)
!3085 = !DILocation(line: 547, column: 118, scope: !3079)
!3086 = !DILocation(line: 547, column: 94, scope: !3079)
!3087 = !DILocation(line: 547, column: 4, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3079, file: !66, discriminator: 1)
!3089 = !DILocation(line: 549, column: 35, scope: !3079)
!3090 = !DILocation(line: 549, column: 41, scope: !3079)
!3091 = !DILocation(line: 549, column: 10, scope: !3079)
!3092 = !DILocation(line: 549, column: 8, scope: !3079)
!3093 = !DILocation(line: 551, column: 4, scope: !3079)
!3094 = !DILocation(line: 551, column: 10, scope: !3079)
!3095 = !DILocation(line: 551, column: 22, scope: !3079)
!3096 = !DILocation(line: 552, column: 1, scope: !3079)
!3097 = distinct !DISubprogram(name: "SendToConn", scope: !66, file: !66, line: 574, type: !3098, isLocal: true, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!91, !64, !99, !82}
!3100 = !DILocalVariable(name: "dst", arg: 1, scope: !3097, file: !66, line: 574, type: !64)
!3101 = !DILocation(line: 574, column: 22, scope: !3097)
!3102 = !DILocalVariable(name: "buf", arg: 2, scope: !3097, file: !66, line: 575, type: !99)
!3103 = !DILocation(line: 575, column: 18, scope: !3097)
!3104 = !DILocalVariable(name: "len", arg: 3, scope: !3097, file: !66, line: 576, type: !82)
!3105 = !DILocation(line: 576, column: 16, scope: !3097)
!3106 = !DILocalVariable(name: "src", scope: !3097, file: !66, line: 578, type: !64)
!3107 = !DILocation(line: 578, column: 14, scope: !3097)
!3108 = !DILocation(line: 578, column: 20, scope: !3097)
!3109 = !DILocation(line: 578, column: 25, scope: !3097)
!3110 = !DILocalVariable(name: "res", scope: !3097, file: !66, line: 579, type: !82)
!3111 = !DILocation(line: 579, column: 8, scope: !3097)
!3112 = !DILocation(line: 581, column: 4, scope: !3097)
!3113 = !DILocation(line: 583, column: 27, scope: !3097)
!3114 = !DILocation(line: 583, column: 32, scope: !3097)
!3115 = !DILocation(line: 583, column: 39, scope: !3097)
!3116 = !DILocation(line: 583, column: 44, scope: !3097)
!3117 = !DILocation(line: 583, column: 49, scope: !3097)
!3118 = !DILocation(line: 583, column: 54, scope: !3097)
!3119 = !DILocation(line: 583, column: 62, scope: !3097)
!3120 = !DILocation(line: 583, column: 10, scope: !3097)
!3121 = !DILocation(line: 583, column: 8, scope: !3097)
!3122 = !DILocation(line: 585, column: 8, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3097, file: !66, line: 585, column: 8)
!3124 = !DILocation(line: 585, column: 12, scope: !3123)
!3125 = !DILocation(line: 585, column: 8, scope: !3097)
!3126 = !DILocation(line: 586, column: 140, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !66, line: 585, column: 18)
!3128 = !DILocation(line: 586, column: 145, scope: !3127)
!3129 = !DILocation(line: 586, column: 122, scope: !3127)
!3130 = !DILocation(line: 586, column: 176, scope: !3127)
!3131 = !DILocation(line: 586, column: 153, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3127, file: !66, discriminator: 1)
!3133 = !DILocation(line: 586, column: 7, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3127, file: !66, discriminator: 2)
!3135 = !DILocation(line: 589, column: 12, scope: !3127)
!3136 = !DILocation(line: 589, column: 7, scope: !3127)
!3137 = !DILocation(line: 590, column: 17, scope: !3127)
!3138 = !DILocation(line: 590, column: 7, scope: !3127)
!3139 = !DILocation(line: 591, column: 7, scope: !3127)
!3140 = !DILocation(line: 594, column: 83, scope: !3097)
!3141 = !DILocation(line: 594, column: 106, scope: !3097)
!3142 = !DILocation(line: 594, column: 111, scope: !3097)
!3143 = !DILocation(line: 594, column: 88, scope: !3097)
!3144 = !DILocation(line: 594, column: 4, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3097, file: !66, discriminator: 1)
!3146 = !DILocation(line: 597, column: 25, scope: !3097)
!3147 = !DILocation(line: 597, column: 4, scope: !3097)
!3148 = !DILocation(line: 597, column: 9, scope: !3097)
!3149 = !DILocation(line: 597, column: 22, scope: !3097)
!3150 = !DILocation(line: 598, column: 99, scope: !3097)
!3151 = !DILocation(line: 598, column: 104, scope: !3097)
!3152 = !DILocation(line: 598, column: 81, scope: !3097)
!3153 = !DILocation(line: 598, column: 112, scope: !3097)
!3154 = !DILocation(line: 598, column: 117, scope: !3097)
!3155 = !DILocation(line: 598, column: 4, scope: !3145)
!3156 = !DILocation(line: 601, column: 10, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3097, file: !66, line: 601, column: 8)
!3158 = !DILocation(line: 601, column: 15, scope: !3157)
!3159 = !DILocation(line: 601, column: 28, scope: !3157)
!3160 = !DILocation(line: 601, column: 32, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !3157, file: !66, discriminator: 1)
!3162 = !DILocation(line: 601, column: 37, scope: !3161)
!3163 = !DILocation(line: 601, column: 62, scope: !3161)
!3164 = !DILocation(line: 601, column: 50, scope: !3161)
!3165 = !DILocation(line: 601, column: 8, scope: !3161)
!3166 = !DILocation(line: 602, column: 24, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !66, line: 601, column: 80)
!3168 = !DILocation(line: 602, column: 7, scope: !3167)
!3169 = !DILocation(line: 603, column: 7, scope: !3167)
!3170 = !DILocation(line: 606, column: 4, scope: !3097)
!3171 = !DILocation(line: 607, column: 1, scope: !3097)
!3172 = !DILocalVariable(name: "dataDir", scope: !1868, file: !66, line: 1189, type: !127)
!3173 = !DILocation(line: 1189, column: 16, scope: !1868)
!3174 = !DILocation(line: 1191, column: 8, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !1868, file: !66, line: 1191, column: 8)
!3176 = !DILocation(line: 1191, column: 8, scope: !1868)
!3177 = !DILocation(line: 1192, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !66, line: 1191, column: 18)
!3179 = !DILocation(line: 1195, column: 14, scope: !1868)
!3180 = !DILocation(line: 1195, column: 12, scope: !1868)
!3181 = !DILocation(line: 1196, column: 8, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !1868, file: !66, line: 1196, column: 8)
!3183 = !DILocation(line: 1196, column: 8, scope: !1868)
!3184 = !DILocation(line: 1197, column: 58, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !66, line: 1196, column: 17)
!3186 = !DILocation(line: 1197, column: 18, scope: !3185)
!3187 = !DILocation(line: 1197, column: 16, scope: !3185)
!3188 = !DILocation(line: 1199, column: 4, scope: !3185)
!3189 = !DILocation(line: 1196, column: 8, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3182, file: !66, discriminator: 1)
!3191 = !DILocation(line: 1202, column: 11, scope: !1868)
!3192 = !DILocation(line: 1202, column: 4, scope: !1868)
!3193 = !DILocalVariable(name: "dataDir", scope: !1874, file: !66, line: 1228, type: !127)
!3194 = !DILocation(line: 1228, column: 16, scope: !1874)
!3195 = !DILocation(line: 1230, column: 8, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !1874, file: !66, line: 1230, column: 8)
!3197 = !DILocation(line: 1230, column: 8, scope: !1874)
!3198 = !DILocation(line: 1231, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !66, line: 1230, column: 17)
!3200 = !DILocation(line: 1234, column: 14, scope: !1874)
!3201 = !DILocation(line: 1234, column: 12, scope: !1874)
!3202 = !DILocation(line: 1235, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !1874, file: !66, line: 1235, column: 8)
!3204 = !DILocation(line: 1235, column: 8, scope: !1874)
!3205 = !DILocation(line: 1236, column: 56, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !66, line: 1235, column: 17)
!3207 = !DILocation(line: 1236, column: 17, scope: !3206)
!3208 = !DILocation(line: 1236, column: 15, scope: !3206)
!3209 = !DILocation(line: 1238, column: 4, scope: !3206)
!3210 = !DILocation(line: 1235, column: 8, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3203, file: !66, discriminator: 1)
!3212 = !DILocation(line: 1241, column: 11, scope: !1874)
!3213 = !DILocation(line: 1241, column: 4, scope: !1874)
!3214 = !DILocalVariable(name: "dataDir", scope: !1876, file: !66, line: 1267, type: !127)
!3215 = !DILocation(line: 1267, column: 16, scope: !1876)
!3216 = !DILocation(line: 1269, column: 8, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !1876, file: !66, line: 1269, column: 8)
!3218 = !DILocation(line: 1269, column: 8, scope: !1876)
!3219 = !DILocation(line: 1270, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !66, line: 1269, column: 18)
!3221 = !DILocation(line: 1273, column: 14, scope: !1876)
!3222 = !DILocation(line: 1273, column: 12, scope: !1876)
!3223 = !DILocation(line: 1274, column: 8, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !1876, file: !66, line: 1274, column: 8)
!3225 = !DILocation(line: 1274, column: 8, scope: !1876)
!3226 = !DILocation(line: 1275, column: 49, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !66, line: 1274, column: 17)
!3228 = !DILocation(line: 1275, column: 18, scope: !3227)
!3229 = !DILocation(line: 1275, column: 16, scope: !3227)
!3230 = !DILocation(line: 1276, column: 4, scope: !3227)
!3231 = !DILocation(line: 1274, column: 8, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3224, file: !66, discriminator: 1)
!3233 = !DILocation(line: 1279, column: 11, scope: !1876)
!3234 = !DILocation(line: 1279, column: 4, scope: !1876)
!3235 = !DILocalVariable(name: "confPath", scope: !1872, file: !66, line: 1149, type: !99)
!3236 = !DILocation(line: 1149, column: 10, scope: !1872)
!3237 = !DILocation(line: 1151, column: 8, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !1872, file: !66, line: 1151, column: 8)
!3239 = !DILocation(line: 1151, column: 8, scope: !1872)
!3240 = !DILocation(line: 1152, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !66, line: 1151, column: 22)
!3242 = !DILocation(line: 1155, column: 15, scope: !1872)
!3243 = !DILocation(line: 1155, column: 13, scope: !1872)
!3244 = !DILocation(line: 1156, column: 8, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !1872, file: !66, line: 1156, column: 8)
!3246 = !DILocation(line: 1156, column: 8, scope: !1872)
!3247 = !DILocation(line: 1157, column: 60, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !66, line: 1156, column: 18)
!3249 = !DILocation(line: 1157, column: 22, scope: !3248)
!3250 = !DILocation(line: 1157, column: 20, scope: !3248)
!3251 = !DILocation(line: 1158, column: 4, scope: !3248)
!3252 = !DILocation(line: 1156, column: 8, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3245, file: !66, discriminator: 1)
!3254 = !DILocation(line: 1161, column: 9, scope: !1872)
!3255 = !DILocation(line: 1161, column: 4, scope: !1872)
!3256 = !DILocation(line: 1163, column: 11, scope: !1872)
!3257 = !DILocation(line: 1163, column: 4, scope: !1872)
!3258 = distinct !DISubprogram(name: "SendVmxConnectRequest", scope: !66, file: !66, line: 629, type: !3259, isLocal: true, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!91}
!3261 = !DILocalVariable(name: "asock", scope: !3258, file: !66, line: 631, type: !74)
!3262 = !DILocation(line: 631, column: 17, scope: !3258)
!3263 = !DILocation(line: 631, column: 35, scope: !3258)
!3264 = !DILocalVariable(name: "ok", scope: !3258, file: !66, line: 632, type: !91)
!3265 = !DILocation(line: 632, column: 13, scope: !3258)
!3266 = !DILocalVariable(name: "addr", scope: !3258, file: !66, line: 633, type: !3267)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_vm", file: !3268, line: 420, size: 128, align: 32, elements: !3269)
!3268 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmci_sockets.h", directory: "/home/lichi/Desktop/open-vm-tools/line1410")
!3269 = !{!3270, !3271, !3272, !3273, !3274}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "svm_family", scope: !3267, file: !3268, line: 426, baseType: !120, size: 16, align: 16)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "svm_reserved1", scope: !3267, file: !3268, line: 429, baseType: !122, size: 16, align: 16, offset: 16)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "svm_port", scope: !3267, file: !3268, line: 433, baseType: !129, size: 32, align: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "svm_cid", scope: !3267, file: !3268, line: 436, baseType: !129, size: 32, align: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "svm_zero", scope: !3267, file: !3268, line: 439, baseType: !464, size: 32, align: 8, offset: 96)
!3275 = !DILocation(line: 633, column: 23, scope: !3258)
!3276 = !DILocalVariable(name: "len", scope: !3258, file: !66, line: 634, type: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !117, line: 33, baseType: !3278)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !1293, line: 189, baseType: !129)
!3279 = !DILocation(line: 634, column: 14, scope: !3258)
!3280 = !DILocalVariable(name: "port", scope: !3258, file: !66, line: 635, type: !82)
!3281 = !DILocation(line: 635, column: 8, scope: !3258)
!3282 = !DILocalVariable(name: "fd", scope: !3258, file: !66, line: 636, type: !82)
!3283 = !DILocation(line: 636, column: 8, scope: !3258)
!3284 = !DILocalVariable(name: "msg", scope: !3258, file: !66, line: 637, type: !151)
!3285 = !DILocation(line: 637, column: 11, scope: !3258)
!3286 = !DILocation(line: 639, column: 4, scope: !3258)
!3287 = !DILocation(line: 643, column: 27, scope: !3258)
!3288 = !DILocation(line: 643, column: 9, scope: !3258)
!3289 = !DILocation(line: 643, column: 7, scope: !3258)
!3290 = !DILocation(line: 647, column: 20, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3258, file: !66, line: 647, column: 8)
!3292 = !DILocation(line: 647, column: 24, scope: !3291)
!3293 = !DILocation(line: 647, column: 8, scope: !3291)
!3294 = !DILocation(line: 647, column: 56, scope: !3291)
!3295 = !DILocation(line: 647, column: 8, scope: !3258)
!3296 = !DILocation(line: 648, column: 8, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3291, file: !66, line: 647, column: 65)
!3298 = !DILocation(line: 648, column: 7, scope: !3297)
!3299 = !DILocation(line: 648, column: 7, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3297, file: !66, discriminator: 1)
!3301 = !DILocation(line: 649, column: 7, scope: !3297)
!3302 = !DILocation(line: 652, column: 16, scope: !3258)
!3303 = !DILocation(line: 652, column: 9, scope: !3258)
!3304 = !DILocation(line: 654, column: 55, scope: !3258)
!3305 = !DILocation(line: 654, column: 10, scope: !3258)
!3306 = !DILocation(line: 654, column: 8, scope: !3258)
!3307 = !DILocation(line: 655, column: 35, scope: !3258)
!3308 = !DILocation(line: 655, column: 40, scope: !3258)
!3309 = !DILocation(line: 655, column: 45, scope: !3258)
!3310 = !DILocation(line: 655, column: 57, scope: !3258)
!3311 = !DILocation(line: 655, column: 50, scope: !3258)
!3312 = !DILocation(line: 655, column: 9, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3258, file: !66, discriminator: 1)
!3314 = !DILocation(line: 655, column: 7, scope: !3258)
!3315 = !DILocation(line: 656, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3258, file: !66, line: 656, column: 8)
!3317 = !DILocation(line: 656, column: 8, scope: !3258)
!3318 = !DILocation(line: 657, column: 7, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !66, line: 656, column: 13)
!3320 = !DILocation(line: 658, column: 4, scope: !3319)
!3321 = !DILocation(line: 659, column: 11, scope: !3258)
!3322 = !DILocation(line: 659, column: 4, scope: !3258)
!3323 = !DILocation(line: 661, column: 11, scope: !3258)
!3324 = !DILocation(line: 661, column: 4, scope: !3258)
!3325 = !DILocation(line: 662, column: 1, scope: !3258)
!3326 = distinct !DISubprogram(name: "RmqClientConnRecvedCb", scope: !66, file: !66, line: 768, type: !80, isLocal: true, isDefinition: true, scopeLine: 772, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3327 = !DILocalVariable(name: "buf", arg: 1, scope: !3326, file: !66, line: 768, type: !63)
!3328 = !DILocation(line: 768, column: 29, scope: !3326)
!3329 = !DILocalVariable(name: "len", arg: 2, scope: !3326, file: !66, line: 769, type: !82)
!3330 = !DILocation(line: 769, column: 27, scope: !3326)
!3331 = !DILocalVariable(name: "asock", arg: 3, scope: !3326, file: !66, line: 770, type: !74)
!3332 = !DILocation(line: 770, column: 36, scope: !3326)
!3333 = !DILocalVariable(name: "clientData", arg: 4, scope: !3326, file: !66, line: 771, type: !63)
!3334 = !DILocation(line: 771, column: 29, scope: !3326)
!3335 = !DILocalVariable(name: "conn", scope: !3326, file: !66, line: 773, type: !64)
!3336 = !DILocation(line: 773, column: 14, scope: !3326)
!3337 = !DILocation(line: 773, column: 33, scope: !3326)
!3338 = !DILocation(line: 773, column: 21, scope: !3326)
!3339 = !DILocation(line: 775, column: 4, scope: !3326)
!3340 = !DILocation(line: 777, column: 95, scope: !3326)
!3341 = !DILocation(line: 777, column: 118, scope: !3326)
!3342 = !DILocation(line: 777, column: 124, scope: !3326)
!3343 = !DILocation(line: 777, column: 100, scope: !3326)
!3344 = !DILocation(line: 777, column: 4, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3326, file: !66, discriminator: 1)
!3346 = !DILocation(line: 780, column: 26, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3326, file: !66, line: 780, column: 8)
!3348 = !DILocation(line: 780, column: 32, scope: !3347)
!3349 = !DILocation(line: 780, column: 38, scope: !3347)
!3350 = !DILocation(line: 780, column: 47, scope: !3347)
!3351 = !DILocation(line: 780, column: 8, scope: !3347)
!3352 = !DILocation(line: 780, column: 8, scope: !3326)
!3353 = !DILocation(line: 781, column: 30, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3347, file: !66, line: 780, column: 53)
!3355 = !DILocation(line: 781, column: 7, scope: !3354)
!3356 = !DILocation(line: 782, column: 4, scope: !3354)
!3357 = !DILocation(line: 783, column: 1, scope: !3326)
!3358 = distinct !DISubprogram(name: "SendToVmxRmqProxy", scope: !66, file: !66, line: 682, type: !3098, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3359 = !DILocalVariable(name: "cli", arg: 1, scope: !3358, file: !66, line: 682, type: !64)
!3360 = !DILocation(line: 682, column: 29, scope: !3358)
!3361 = !DILocalVariable(name: "buf", arg: 2, scope: !3358, file: !66, line: 683, type: !99)
!3362 = !DILocation(line: 683, column: 25, scope: !3358)
!3363 = !DILocalVariable(name: "len", arg: 3, scope: !3358, file: !66, line: 684, type: !82)
!3364 = !DILocation(line: 684, column: 23, scope: !3358)
!3365 = !DILocalVariable(name: "map", scope: !3358, file: !66, line: 686, type: !2052)
!3366 = !DILocation(line: 686, column: 12, scope: !3358)
!3367 = !DILocalVariable(name: "res", scope: !3358, file: !66, line: 687, type: !2066)
!3368 = !DILocation(line: 687, column: 14, scope: !3358)
!3369 = !DILocalVariable(name: "newBuf", scope: !3358, file: !66, line: 688, type: !99)
!3370 = !DILocation(line: 688, column: 10, scope: !3358)
!3371 = !DILocalVariable(name: "serBuf", scope: !3358, file: !66, line: 689, type: !99)
!3372 = !DILocation(line: 689, column: 10, scope: !3358)
!3373 = !DILocalVariable(name: "bufLen", scope: !3358, file: !66, line: 690, type: !82)
!3374 = !DILocation(line: 690, column: 8, scope: !3358)
!3375 = !DILocalVariable(name: "mapCreated", scope: !3358, file: !66, line: 691, type: !91)
!3376 = !DILocation(line: 691, column: 13, scope: !3358)
!3377 = !DILocalVariable(name: "ver", scope: !3358, file: !66, line: 692, type: !99)
!3378 = !DILocation(line: 692, column: 10, scope: !3358)
!3379 = !DILocation(line: 694, column: 4, scope: !3358)
!3380 = !DILocation(line: 696, column: 10, scope: !3358)
!3381 = !DILocation(line: 696, column: 8, scope: !3358)
!3382 = !DILocation(line: 697, column: 8, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 697, column: 8)
!3384 = !DILocation(line: 697, column: 12, scope: !3383)
!3385 = !DILocation(line: 697, column: 8, scope: !3358)
!3386 = !DILocation(line: 698, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3383, file: !66, line: 697, column: 30)
!3388 = !DILocation(line: 701, column: 15, scope: !3358)
!3389 = !DILocation(line: 703, column: 10, scope: !3358)
!3390 = !DILocation(line: 703, column: 8, scope: !3358)
!3391 = !DILocation(line: 705, column: 8, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 705, column: 8)
!3393 = !DILocation(line: 705, column: 12, scope: !3392)
!3394 = !DILocation(line: 705, column: 8, scope: !3358)
!3395 = !DILocation(line: 706, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !66, line: 705, column: 30)
!3397 = !DILocation(line: 709, column: 10, scope: !3358)
!3398 = !DILocation(line: 709, column: 8, scope: !3358)
!3399 = !DILocation(line: 710, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 710, column: 8)
!3401 = !DILocation(line: 710, column: 12, scope: !3400)
!3402 = !DILocation(line: 710, column: 8, scope: !3358)
!3403 = !DILocation(line: 711, column: 11, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !66, line: 710, column: 20)
!3405 = !DILocation(line: 712, column: 7, scope: !3404)
!3406 = !DILocation(line: 714, column: 63, scope: !3358)
!3407 = !DILocation(line: 714, column: 10, scope: !3358)
!3408 = !DILocation(line: 714, column: 8, scope: !3358)
!3409 = !DILocation(line: 715, column: 8, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 715, column: 8)
!3411 = !DILocation(line: 715, column: 12, scope: !3410)
!3412 = !DILocation(line: 715, column: 8, scope: !3358)
!3413 = !DILocation(line: 716, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3410, file: !66, line: 715, column: 30)
!3415 = !DILocation(line: 719, column: 20, scope: !3358)
!3416 = !DILocation(line: 719, column: 13, scope: !3358)
!3417 = !DILocation(line: 719, column: 11, scope: !3358)
!3418 = !DILocation(line: 720, column: 8, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 720, column: 8)
!3420 = !DILocation(line: 720, column: 15, scope: !3419)
!3421 = !DILocation(line: 720, column: 8, scope: !3358)
!3422 = !DILocation(line: 721, column: 7, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3419, file: !66, line: 720, column: 23)
!3424 = !DILocation(line: 722, column: 7, scope: !3423)
!3425 = !DILocation(line: 724, column: 11, scope: !3358)
!3426 = !DILocation(line: 724, column: 19, scope: !3358)
!3427 = !DILocation(line: 724, column: 24, scope: !3358)
!3428 = !DILocation(line: 724, column: 4, scope: !3358)
!3429 = !DILocation(line: 725, column: 58, scope: !3358)
!3430 = !DILocation(line: 726, column: 28, scope: !3358)
!3431 = !DILocation(line: 725, column: 10, scope: !3358)
!3432 = !DILocation(line: 725, column: 8, scope: !3358)
!3433 = !DILocation(line: 727, column: 8, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 727, column: 8)
!3435 = !DILocation(line: 727, column: 12, scope: !3434)
!3436 = !DILocation(line: 727, column: 8, scope: !3358)
!3437 = !DILocation(line: 728, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3434, file: !66, line: 727, column: 30)
!3439 = !DILocation(line: 731, column: 10, scope: !3358)
!3440 = !DILocation(line: 731, column: 8, scope: !3358)
!3441 = !DILocation(line: 732, column: 8, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 732, column: 8)
!3443 = !DILocation(line: 732, column: 12, scope: !3442)
!3444 = !DILocation(line: 732, column: 8, scope: !3358)
!3445 = !DILocation(line: 733, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3442, file: !66, line: 732, column: 30)
!3447 = !DILocation(line: 736, column: 4, scope: !3358)
!3448 = !DILocation(line: 737, column: 22, scope: !3358)
!3449 = !DILocation(line: 737, column: 27, scope: !3358)
!3450 = !DILocation(line: 737, column: 35, scope: !3358)
!3451 = !DILocation(line: 737, column: 43, scope: !3358)
!3452 = !DILocation(line: 737, column: 11, scope: !3358)
!3453 = !DILocation(line: 737, column: 4, scope: !3358)
!3454 = !DILocation(line: 740, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3358, file: !66, line: 740, column: 8)
!3456 = !DILocation(line: 740, column: 8, scope: !3358)
!3457 = !DILocation(line: 741, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !66, line: 740, column: 20)
!3459 = !DILocation(line: 742, column: 4, scope: !3458)
!3460 = !DILocation(line: 743, column: 144, scope: !3358)
!3461 = !DILocation(line: 743, column: 149, scope: !3358)
!3462 = !DILocation(line: 743, column: 126, scope: !3358)
!3463 = !DILocation(line: 743, column: 157, scope: !3358)
!3464 = !DILocation(line: 743, column: 4, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3358, file: !66, discriminator: 1)
!3466 = !DILocation(line: 746, column: 14, scope: !3358)
!3467 = !DILocation(line: 746, column: 4, scope: !3358)
!3468 = !DILocation(line: 747, column: 4, scope: !3358)
!3469 = !DILocation(line: 748, column: 1, scope: !3358)
!3470 = distinct !DISubprogram(name: "GRabbitmqProxyDisableMessageTunnelling", scope: !66, file: !66, line: 1736, type: !1705, isLocal: true, isDefinition: true, scopeLine: 1737, isOptimized: false, unit: !0, variables: !193)
!3471 = !DILocation(line: 1738, column: 4, scope: !3470)
!3472 = !DILocation(line: 1740, column: 18, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !66, line: 1740, column: 8)
!3474 = !DILocation(line: 1740, column: 8, scope: !3473)
!3475 = !DILocation(line: 1740, column: 8, scope: !3470)
!3476 = !DILocation(line: 1741, column: 35, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3473, file: !66, line: 1740, column: 33)
!3478 = !DILocation(line: 1741, column: 7, scope: !3477)
!3479 = !DILocation(line: 1742, column: 31, scope: !3477)
!3480 = !DILocation(line: 1743, column: 4, scope: !3477)
!3481 = !DILocation(line: 1745, column: 18, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !66, line: 1745, column: 8)
!3483 = !DILocation(line: 1745, column: 8, scope: !3482)
!3484 = !DILocation(line: 1745, column: 8, scope: !3470)
!3485 = !DILocation(line: 1746, column: 35, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !66, line: 1745, column: 33)
!3487 = !DILocation(line: 1746, column: 7, scope: !3486)
!3488 = !DILocation(line: 1747, column: 31, scope: !3486)
!3489 = !DILocation(line: 1748, column: 4, scope: !3486)
!3490 = !DILocation(line: 1750, column: 4, scope: !3470)
!3491 = !DILocation(line: 1750, column: 21, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3470, file: !66, discriminator: 1)
!3493 = !DILocation(line: 1750, column: 33, scope: !3492)
!3494 = !DILocation(line: 1750, column: 4, scope: !3492)
!3495 = !DILocalVariable(name: "cli", scope: !3496, file: !66, line: 1751, type: !64)
!3496 = distinct !DILexicalBlock(scope: !3470, file: !66, line: 1750, column: 41)
!3497 = !DILocation(line: 1751, column: 17, scope: !3496)
!3498 = !DILocation(line: 1751, column: 46, scope: !3496)
!3499 = !DILocation(line: 1751, column: 59, scope: !3496)
!3500 = !DILocation(line: 1751, column: 23, scope: !3496)
!3501 = !DILocation(line: 1752, column: 17, scope: !3496)
!3502 = !DILocation(line: 1752, column: 7, scope: !3496)
!3503 = !DILocation(line: 1750, column: 4, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3470, file: !66, discriminator: 2)
!3505 = distinct !{!3505, !3490}
!3506 = !DILocation(line: 1755, column: 39, scope: !3470)
!3507 = !DILocation(line: 1756, column: 1, scope: !3470)
!3508 = distinct !DISubprogram(name: "GRabbitmqProxyEnableMessageTunnelling", scope: !66, file: !66, line: 1776, type: !1705, isLocal: true, isDefinition: true, scopeLine: 1777, isOptimized: false, unit: !0, variables: !193)
!3509 = !DILocalVariable(name: "vcUuid", scope: !3508, file: !66, line: 1778, type: !99)
!3510 = !DILocation(line: 1778, column: 11, scope: !3508)
!3511 = !DILocation(line: 1780, column: 4, scope: !3508)
!3512 = !DILocation(line: 1782, column: 18, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !66, line: 1782, column: 8)
!3514 = !DILocation(line: 1782, column: 8, scope: !3513)
!3515 = !DILocation(line: 1782, column: 8, scope: !3508)
!3516 = !DILocation(line: 1783, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !66, line: 1782, column: 44)
!3518 = !DILocation(line: 1786, column: 13, scope: !3508)
!3519 = !DILocation(line: 1786, column: 11, scope: !3508)
!3520 = !DILocation(line: 1788, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3508, file: !66, line: 1788, column: 8)
!3522 = !DILocation(line: 1788, column: 8, scope: !3508)
!3523 = !DILocation(line: 1789, column: 7, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !66, line: 1788, column: 17)
!3525 = !DILocation(line: 1790, column: 7, scope: !3524)
!3526 = !DILocation(line: 1793, column: 25, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3508, file: !66, line: 1793, column: 8)
!3528 = !DILocation(line: 1793, column: 9, scope: !3527)
!3529 = !DILocation(line: 1793, column: 8, scope: !3508)
!3530 = !DILocation(line: 1795, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !66, line: 1794, column: 4)
!3532 = !DILocation(line: 1796, column: 12, scope: !3531)
!3533 = !DILocation(line: 1796, column: 7, scope: !3531)
!3534 = !DILocation(line: 1797, column: 7, scope: !3531)
!3535 = !DILocation(line: 1800, column: 9, scope: !3508)
!3536 = !DILocation(line: 1800, column: 4, scope: !3508)
!3537 = !DILocation(line: 1802, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3508, file: !66, line: 1802, column: 8)
!3539 = !DILocation(line: 1802, column: 33, scope: !3538)
!3540 = !DILocation(line: 1802, column: 37, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3538, file: !66, discriminator: 1)
!3542 = !DILocation(line: 1802, column: 8, scope: !3541)
!3543 = !DILocation(line: 1803, column: 7, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3538, file: !66, line: 1802, column: 62)
!3545 = !DILocation(line: 1804, column: 7, scope: !3544)
!3546 = !DILocation(line: 1805, column: 7, scope: !3544)
!3547 = !DILocation(line: 1808, column: 39, scope: !3508)
!3548 = !DILocation(line: 1809, column: 1, scope: !3508)
!3549 = !DILocation(line: 1809, column: 1, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3508, file: !66, discriminator: 1)
!3551 = distinct !DISubprogram(name: "GetVmVcUuidFromVmx", scope: !66, file: !66, line: 1590, type: !3552, isLocal: true, isDefinition: true, scopeLine: 1591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!99}
!3554 = !DILocalVariable(name: "vcUuid", scope: !3551, file: !66, line: 1592, type: !99)
!3555 = !DILocation(line: 1592, column: 10, scope: !3551)
!3556 = !DILocalVariable(name: "reply", scope: !3551, file: !66, line: 1593, type: !99)
!3557 = !DILocation(line: 1593, column: 10, scope: !3551)
!3558 = !DILocalVariable(name: "replyLen", scope: !3551, file: !66, line: 1594, type: !338)
!3559 = !DILocation(line: 1594, column: 11, scope: !3551)
!3560 = !DILocalVariable(name: "ok", scope: !3551, file: !66, line: 1595, type: !91)
!3561 = !DILocation(line: 1595, column: 13, scope: !3551)
!3562 = !DILocalVariable(name: "msg", scope: !3551, file: !66, line: 1596, type: !151)
!3563 = !DILocation(line: 1596, column: 11, scope: !3551)
!3564 = !DILocation(line: 1599, column: 35, scope: !3551)
!3565 = !DILocation(line: 1599, column: 40, scope: !3551)
!3566 = !DILocation(line: 1599, column: 45, scope: !3551)
!3567 = !DILocation(line: 1599, column: 57, scope: !3551)
!3568 = !DILocation(line: 1599, column: 50, scope: !3551)
!3569 = !DILocation(line: 1599, column: 9, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3551, file: !66, discriminator: 1)
!3571 = !DILocation(line: 1599, column: 7, scope: !3551)
!3572 = !DILocation(line: 1601, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3551, file: !66, line: 1601, column: 8)
!3574 = !DILocation(line: 1601, column: 8, scope: !3551)
!3575 = !DILocation(line: 1602, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !66, line: 1601, column: 13)
!3577 = !DILocation(line: 1604, column: 7, scope: !3576)
!3578 = !DILocation(line: 1607, column: 8, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3551, file: !66, line: 1607, column: 8)
!3580 = !DILocation(line: 1607, column: 17, scope: !3579)
!3581 = !DILocation(line: 1607, column: 8, scope: !3551)
!3582 = !DILocation(line: 1608, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !66, line: 1607, column: 23)
!3584 = !DILocation(line: 1610, column: 7, scope: !3583)
!3585 = !DILocation(line: 1613, column: 30, scope: !3551)
!3586 = !DILocation(line: 1613, column: 39, scope: !3551)
!3587 = !DILocation(line: 1613, column: 13, scope: !3551)
!3588 = !DILocation(line: 1613, column: 11, scope: !3551)
!3589 = !DILocation(line: 1614, column: 15, scope: !3551)
!3590 = !DILocation(line: 1614, column: 23, scope: !3551)
!3591 = !DILocation(line: 1614, column: 30, scope: !3551)
!3592 = !DILocation(line: 1614, column: 39, scope: !3551)
!3593 = !DILocation(line: 1614, column: 4, scope: !3551)
!3594 = !DILocation(line: 1616, column: 96, scope: !3551)
!3595 = !DILocation(line: 1616, column: 4, scope: !3551)
!3596 = !DILocation(line: 1619, column: 11, scope: !3551)
!3597 = !DILocation(line: 1619, column: 4, scope: !3551)
!3598 = !DILocation(line: 1620, column: 1, scope: !3551)
!3599 = distinct !DISubprogram(name: "PublishVmVcUuid", scope: !66, file: !66, line: 1679, type: !3600, isLocal: true, isDefinition: true, scopeLine: 1680, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!91, !127}
!3602 = !DILocalVariable(name: "vcUuid", arg: 1, scope: !3599, file: !66, line: 1679, type: !127)
!3603 = !DILocation(line: 1679, column: 29, scope: !3599)
!3604 = !DILocalVariable(name: "status", scope: !3599, file: !66, line: 1681, type: !91)
!3605 = !DILocation(line: 1681, column: 13, scope: !3599)
!3606 = !DILocalVariable(name: "err", scope: !3599, file: !66, line: 1682, type: !1995)
!3607 = !DILocation(line: 1682, column: 12, scope: !3599)
!3608 = !DILocalVariable(name: "filename", scope: !3599, file: !66, line: 1683, type: !99)
!3609 = !DILocation(line: 1683, column: 10, scope: !3599)
!3610 = !DILocalVariable(name: "dir", scope: !3599, file: !66, line: 1684, type: !127)
!3611 = !DILocation(line: 1684, column: 16, scope: !3599)
!3612 = !DILocation(line: 1684, column: 22, scope: !3599)
!3613 = !DILocation(line: 1686, column: 9, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3599, file: !66, line: 1686, column: 8)
!3615 = !DILocation(line: 1686, column: 8, scope: !3599)
!3616 = !DILocation(line: 1687, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !66, line: 1686, column: 14)
!3618 = !DILocation(line: 1688, column: 7, scope: !3617)
!3619 = !DILocation(line: 1691, column: 29, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3599, file: !66, line: 1691, column: 8)
!3621 = !DILocation(line: 1691, column: 8, scope: !3620)
!3622 = !DILocation(line: 1691, column: 40, scope: !3620)
!3623 = !DILocation(line: 1691, column: 8, scope: !3599)
!3624 = !DILocation(line: 1692, column: 85, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3620, file: !66, line: 1691, column: 45)
!3626 = !DILocation(line: 1692, column: 7, scope: !3625)
!3627 = !DILocation(line: 1693, column: 7, scope: !3625)
!3628 = !DILocation(line: 1696, column: 49, scope: !3599)
!3629 = !DILocation(line: 1696, column: 15, scope: !3599)
!3630 = !DILocation(line: 1696, column: 13, scope: !3599)
!3631 = !DILocation(line: 1697, column: 4, scope: !3599)
!3632 = distinct !{!3632, !3631}
!3633 = !DILocation(line: 1697, column: 13, scope: !3634)
!3634 = !DILexicalBlockFile(scope: !3635, file: !66, discriminator: 1)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !66, line: 1697, column: 13)
!3636 = distinct !DILexicalBlock(scope: !3599, file: !66, line: 1697, column: 7)
!3637 = !DILocation(line: 1697, column: 13, scope: !3638)
!3638 = !DILexicalBlockFile(scope: !3636, file: !66, discriminator: 2)
!3639 = !DILocation(line: 1697, column: 30, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !3635, file: !66, discriminator: 3)
!3641 = !DILocation(line: 1697, column: 147, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3636, file: !66, discriminator: 4)
!3643 = !DILocation(line: 1699, column: 24, scope: !3599)
!3644 = !DILocation(line: 1699, column: 34, scope: !3599)
!3645 = !DILocation(line: 1699, column: 4, scope: !3599)
!3646 = !DILocation(line: 1700, column: 8, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3599, file: !66, line: 1700, column: 8)
!3648 = !DILocation(line: 1700, column: 12, scope: !3647)
!3649 = !DILocation(line: 1700, column: 8, scope: !3599)
!3650 = !DILocation(line: 1701, column: 98, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !66, line: 1700, column: 20)
!3652 = !DILocation(line: 1701, column: 108, scope: !3651)
!3653 = !DILocation(line: 1701, column: 113, scope: !3651)
!3654 = !DILocation(line: 1701, column: 7, scope: !3651)
!3655 = !DILocation(line: 1703, column: 7, scope: !3651)
!3656 = !DILocation(line: 1706, column: 11, scope: !3599)
!3657 = !DILocation(line: 1706, column: 4, scope: !3599)
!3658 = !DILocation(line: 1710, column: 8, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3599, file: !66, line: 1710, column: 8)
!3660 = !DILocation(line: 1710, column: 8, scope: !3599)
!3661 = !DILocation(line: 1711, column: 20, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3659, file: !66, line: 1710, column: 13)
!3663 = !DILocation(line: 1711, column: 7, scope: !3662)
!3664 = !DILocation(line: 1712, column: 4, scope: !3662)
!3665 = !DILocation(line: 1713, column: 11, scope: !3599)
!3666 = !DILocation(line: 1713, column: 4, scope: !3599)
!3667 = !DILocation(line: 1715, column: 11, scope: !3599)
!3668 = !DILocation(line: 1715, column: 4, scope: !3599)
!3669 = distinct !DISubprogram(name: "CreateVmxListenSocket", scope: !66, file: !66, line: 1464, type: !3259, isLocal: true, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3670 = !DILocalVariable(name: "res", scope: !3669, file: !66, line: 1466, type: !82)
!3671 = !DILocation(line: 1466, column: 8, scope: !3669)
!3672 = !DILocalVariable(name: "asock", scope: !3669, file: !66, line: 1467, type: !74)
!3673 = !DILocation(line: 1467, column: 17, scope: !3669)
!3674 = !DILocation(line: 1469, column: 4, scope: !3669)
!3675 = !DILocation(line: 1471, column: 35, scope: !3669)
!3676 = !DILocation(line: 1471, column: 12, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3669, file: !66, discriminator: 1)
!3678 = !DILocation(line: 1471, column: 10, scope: !3669)
!3679 = !DILocation(line: 1475, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3669, file: !66, line: 1475, column: 8)
!3681 = !DILocation(line: 1475, column: 14, scope: !3680)
!3682 = !DILocation(line: 1475, column: 21, scope: !3680)
!3683 = !DILocation(line: 1475, column: 24, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3680, file: !66, discriminator: 1)
!3685 = !DILocation(line: 1475, column: 28, scope: !3684)
!3686 = !DILocation(line: 1475, column: 8, scope: !3684)
!3687 = !DILocation(line: 1476, column: 141, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3680, file: !66, line: 1475, column: 34)
!3689 = !DILocation(line: 1476, column: 118, scope: !3688)
!3690 = !DILocation(line: 1476, column: 7, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3688, file: !66, discriminator: 1)
!3692 = !DILocation(line: 1478, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3688, file: !66, line: 1478, column: 11)
!3694 = !DILocation(line: 1478, column: 17, scope: !3693)
!3695 = !DILocation(line: 1478, column: 11, scope: !3688)
!3696 = !DILocation(line: 1479, column: 28, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !66, line: 1478, column: 25)
!3698 = !DILocation(line: 1479, column: 10, scope: !3697)
!3699 = !DILocation(line: 1480, column: 7, scope: !3697)
!3700 = !DILocation(line: 1481, column: 7, scope: !3688)
!3701 = !DILocation(line: 1484, column: 30, scope: !3669)
!3702 = !DILocation(line: 1484, column: 28, scope: !3669)
!3703 = !DILocation(line: 1486, column: 4, scope: !3669)
!3704 = !DILocation(line: 1487, column: 1, scope: !3669)
!3705 = distinct !DISubprogram(name: "CreateRmqListenSocket", scope: !66, file: !66, line: 1507, type: !3259, isLocal: true, isDefinition: true, scopeLine: 1508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3706 = !DILocalVariable(name: "defaultPort", scope: !3705, file: !66, line: 1509, type: !82)
!3707 = !DILocation(line: 1509, column: 8, scope: !3705)
!3708 = !DILocalVariable(name: "port", scope: !3705, file: !66, line: 1510, type: !82)
!3709 = !DILocation(line: 1510, column: 8, scope: !3705)
!3710 = !DILocalVariable(name: "res", scope: !3705, file: !66, line: 1511, type: !82)
!3711 = !DILocation(line: 1511, column: 8, scope: !3705)
!3712 = !DILocalVariable(name: "asock", scope: !3705, file: !66, line: 1512, type: !74)
!3713 = !DILocation(line: 1512, column: 17, scope: !3705)
!3714 = !DILocation(line: 1514, column: 4, scope: !3705)
!3715 = !DILocation(line: 1516, column: 32, scope: !3705)
!3716 = !DILocation(line: 1516, column: 11, scope: !3705)
!3717 = !DILocation(line: 1516, column: 9, scope: !3705)
!3718 = !DILocation(line: 1518, column: 8, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3705, file: !66, line: 1518, column: 8)
!3720 = !DILocation(line: 1518, column: 8, scope: !3705)
!3721 = !DILocation(line: 1519, column: 39, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !66, line: 1518, column: 54)
!3723 = !DILocation(line: 1519, column: 15, scope: !3722)
!3724 = !DILocation(line: 1519, column: 13, scope: !3722)
!3725 = !DILocation(line: 1521, column: 4, scope: !3722)
!3726 = !DILocation(line: 1522, column: 42, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3719, file: !66, line: 1521, column: 11)
!3728 = !DILocation(line: 1522, column: 15, scope: !3727)
!3729 = !DILocation(line: 1522, column: 13, scope: !3727)
!3730 = !DILocation(line: 1526, column: 8, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3705, file: !66, line: 1526, column: 8)
!3732 = !DILocation(line: 1526, column: 14, scope: !3731)
!3733 = !DILocation(line: 1526, column: 21, scope: !3731)
!3734 = !DILocation(line: 1526, column: 24, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3731, file: !66, discriminator: 1)
!3736 = !DILocation(line: 1526, column: 28, scope: !3735)
!3737 = !DILocation(line: 1526, column: 8, scope: !3735)
!3738 = !DILocation(line: 1527, column: 137, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3731, file: !66, line: 1526, column: 34)
!3740 = !DILocation(line: 1527, column: 114, scope: !3739)
!3741 = !DILocation(line: 1527, column: 7, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3739, file: !66, discriminator: 1)
!3743 = !DILocation(line: 1529, column: 11, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3739, file: !66, line: 1529, column: 11)
!3745 = !DILocation(line: 1529, column: 17, scope: !3744)
!3746 = !DILocation(line: 1529, column: 11, scope: !3739)
!3747 = !DILocation(line: 1530, column: 28, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !66, line: 1529, column: 25)
!3749 = !DILocation(line: 1530, column: 10, scope: !3748)
!3750 = !DILocation(line: 1531, column: 7, scope: !3748)
!3751 = !DILocation(line: 1532, column: 7, scope: !3739)
!3752 = !DILocation(line: 1535, column: 30, scope: !3705)
!3753 = !DILocation(line: 1535, column: 28, scope: !3705)
!3754 = !DILocation(line: 1537, column: 4, scope: !3705)
!3755 = !DILocation(line: 1538, column: 1, scope: !3705)
!3756 = !DILocalVariable(name: "proxyDataDir", scope: !1878, file: !66, line: 1645, type: !127)
!3757 = !DILocation(line: 1645, column: 16, scope: !1878)
!3758 = !DILocation(line: 1647, column: 8, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !1878, file: !66, line: 1647, column: 8)
!3760 = !DILocation(line: 1647, column: 8, scope: !1878)
!3761 = !DILocation(line: 1648, column: 7, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3759, file: !66, line: 1647, column: 21)
!3763 = !DILocation(line: 1651, column: 19, scope: !1878)
!3764 = !DILocation(line: 1651, column: 17, scope: !1878)
!3765 = !DILocation(line: 1652, column: 8, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !1878, file: !66, line: 1652, column: 8)
!3767 = !DILocation(line: 1652, column: 8, scope: !1878)
!3768 = !DILocation(line: 1653, column: 53, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !66, line: 1652, column: 22)
!3770 = !DILocation(line: 1653, column: 21, scope: !3769)
!3771 = !DILocation(line: 1653, column: 19, scope: !3769)
!3772 = !DILocation(line: 1654, column: 4, scope: !3769)
!3773 = !DILocation(line: 1652, column: 8, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3766, file: !66, discriminator: 1)
!3775 = !DILocation(line: 1657, column: 11, scope: !1878)
!3776 = !DILocation(line: 1657, column: 4, scope: !1878)
!3777 = distinct !DISubprogram(name: "VMCISock_GetLocalCID", scope: !3268, file: !3268, line: 804, type: !3778, isLocal: true, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !193)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!129}
!3780 = !DILocalVariable(name: "fd", scope: !3777, file: !3268, line: 806, type: !82)
!3781 = !DILocation(line: 806, column: 11, scope: !3777)
!3782 = !DILocalVariable(name: "contextId", scope: !3777, file: !3268, line: 807, type: !129)
!3783 = !DILocation(line: 807, column: 20, scope: !3777)
!3784 = !DILocation(line: 809, column: 12, scope: !3777)
!3785 = !DILocation(line: 809, column: 10, scope: !3777)
!3786 = !DILocation(line: 810, column: 11, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3777, file: !3268, line: 810, column: 11)
!3788 = !DILocation(line: 810, column: 14, scope: !3787)
!3789 = !DILocation(line: 810, column: 11, scope: !3777)
!3790 = !DILocation(line: 811, column: 15, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !3268, line: 810, column: 19)
!3792 = !DILocation(line: 811, column: 13, scope: !3791)
!3793 = !DILocation(line: 812, column: 14, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !3268, line: 812, column: 14)
!3795 = !DILocation(line: 812, column: 17, scope: !3794)
!3796 = !DILocation(line: 812, column: 14, scope: !3791)
!3797 = !DILocation(line: 813, column: 13, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !3268, line: 812, column: 22)
!3799 = !DILocation(line: 815, column: 7, scope: !3791)
!3800 = !DILocation(line: 817, column: 17, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3777, file: !3268, line: 817, column: 11)
!3802 = !DILocation(line: 817, column: 11, scope: !3801)
!3803 = !DILocation(line: 817, column: 39, scope: !3801)
!3804 = !DILocation(line: 817, column: 11, scope: !3777)
!3805 = !DILocation(line: 818, column: 20, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !3268, line: 817, column: 44)
!3807 = !DILocation(line: 819, column: 7, scope: !3806)
!3808 = !DILocation(line: 821, column: 13, scope: !3777)
!3809 = !DILocation(line: 821, column: 7, scope: !3777)
!3810 = !DILocation(line: 822, column: 14, scope: !3777)
!3811 = !DILocation(line: 822, column: 7, scope: !3777)
!3812 = !DILocation(line: 823, column: 4, scope: !3777)
