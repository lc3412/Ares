; ModuleID = './line61-network-openssl.o.i'
source_filename = "./line61-network-openssl.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32 }
%struct.stack_st_X509_OBJECT = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.stack_st_X509_LOOKUP = type { %struct.stack_st }
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i64, i64, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.X509_VERIFY_PARAM_ID_st* }
%struct.stack_st_ASN1_OBJECT = type { %struct.stack_st }
%struct.X509_VERIFY_PARAM_ID_st = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st }
%struct.stack_st_X509_CRL = type { %struct.stack_st }
%struct.stack_st_X509 = type { %struct.stack_st }
%struct.X509_POLICY_TREE_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
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
%struct.stack_st_X509_ALGOR = type { %struct.stack_st }
%struct.X509_crl_st = type { %struct.X509_crl_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, [20 x i8], %struct.stack_st_GENERAL_NAMES*, %struct.x509_crl_method_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.GIOSSLChannel = type { %struct._GIOChannel, i32, %struct._GIOChannel*, %struct.ssl_st*, %struct.ssl_ctx_st*, i8, %struct._SERVER_REC*, i32 }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ssl3_enc_method = type opaque
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
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
%struct.bn_gencb_st = type { i32, i8*, %union.anon.1 }
%union.anon.1 = type { void (i32, i32, i8*)* }
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
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
%struct.stack_st_SSL_CIPHER = type { %struct.stack_st }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.cert_st = type opaque
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i8*, i8*, i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st_SSL_CIPHER*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i8*, i64, i8*, i8*, i64, i64, i8* }
%struct.sess_cert_st = type opaque
%struct.stack_st_X509_NAME = type { %struct.stack_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._TLS_REC = type { i8*, i8*, i64, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i64, %struct._GSList* }
%struct._TLS_CERT_REC = type { %struct._GSList*, %struct._GSList* }
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct._TLS_CERT_ENTRY_REC = type { i8*, i8* }
%struct.ec_group_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }

@store = internal global %struct.x509_store_st* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Could not initialize OpenSSL: X509_STORE_new() failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not load default certificates\00", align 1
@ssl_inited = internal global i32 0, align 4
@__func__.net_start_ssl = private unnamed_addr constant [14 x i8] c"net_start_ssl\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SSL handshake failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"server closed connection\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"server closed connection unexpectedly\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"unknown SSL error\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"TLS server supplied no certificate\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"TLS server supplied no certificate public key\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Unable to generate certificate fingerprint\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"tls handshake finished\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"  Pinned certificate mismatch\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  Pinned public key mismatch\00", align 1
@__func__.irssi_ssl_get_iochannel = private unnamed_addr constant [24 x i8] c"irssi_ssl_get_iochannel\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"handle != NULL\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for SSL context\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"No valid SSL cipher suite could be selected\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"The client certificate is expired\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Loading of client certificate '%s' failed: %s\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Loading of private key '%s' failed: %s\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Private key does not match the certificate\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Could not find client certificate '%s'\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"Could not load CA list for verifying TLS server certificate\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Failed to allocate SSL structure\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Failed to associate socket to SSL stream\00", align 1
@irssi_ssl_channel_funcs = internal global %struct._GIOFuncs { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)* @irssi_ssl_read, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)* @irssi_ssl_write, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)* @irssi_ssl_seek, i32 (%struct._GIOChannel*, %struct._GError**)* @irssi_ssl_close, %struct._GSource* (%struct._GIOChannel*, i32)* @irssi_ssl_create_watch, void (%struct._GIOChannel*)* @irssi_ssl_free, i32 (%struct._GIOChannel*, i32, %struct._GError**)* @irssi_ssl_set_flags, i32 (%struct._GIOChannel*)* @irssi_ssl_get_flags }, align 8
@.str.25 = private unnamed_addr constant [18 x i8] c"network-openssl.c\00", align 1
@__func__.X509_STORE_up_ref = private unnamed_addr constant [18 x i8] c"X509_STORE_up_ref\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"n > 1\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"SSL read error: %s\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"SSL write error: %s\00", align 1
@__func__.set_cipher_info = private unnamed_addr constant [16 x i8] c"set_cipher_info\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"tls != NULL\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"ssl != NULL\00", align 1
@__func__.set_pubkey_info = private unnamed_addr constant [16 x i8] c"set_pubkey_info\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"cert != NULL\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@__func__.set_peer_cert_chain_info = private unnamed_addr constant [25 x i8] c"set_peer_cert_chain_info\00", align 1
@__func__.set_server_temporary_key_info = private unnamed_addr constant [30 x i8] c"set_server_temporary_key_info\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ECDH: %s\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"Could not verify TLS servers certificate: %s\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"None of the Subject Alt Names in the certificate match hostname '%s'\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c"SSL certificate common name '%s' doesn't match host name '%s'\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"No subjectAltNames and no valid common name in certificate\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"Invalid ASN1 value type in subjectAltName\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Internal NUL in subjectAltName\00", align 1
@__func__.tls_text_name = private unnamed_addr constant [14 x i8] c"tls_text_name\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"entry != NULL\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"entry_str != NULL\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Error decoding ASN.1 type=%d\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"NUL character in hostname in certificate\00", align 1

; Function Attrs: nounwind uwtable
define i32 @irssi_ssl_init() #0 !dbg !2179 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2183, metadata !2184), !dbg !2185
  %3 = call i32 @SSL_library_init(), !dbg !2186
  call void @SSL_load_error_strings(), !dbg !2187
  call void @OPENSSL_add_all_algorithms_noconf(), !dbg !2188
  %4 = call %struct.x509_store_st* @X509_STORE_new(), !dbg !2189
  store %struct.x509_store_st* %4, %struct.x509_store_st** @store, align 8, !dbg !2190
  %5 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2191
  %6 = icmp eq %struct.x509_store_st* %5, null, !dbg !2193
  br i1 %6, label %7, label %11, !dbg !2194

; <label>:7:                                      ; preds = %0
  br label %8, !dbg !2195, !llvm.loop !2197

; <label>:8:                                      ; preds = %7
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0)), !dbg !2198
  br label %9, !dbg !2201

; <label>:9:                                      ; preds = %9, %8
  br label %9, !dbg !2202, !llvm.loop !2206
                                                  ; No predecessors!
  store i32 0, i32* %1, align 4, !dbg !2208
  br label %19, !dbg !2208

; <label>:11:                                     ; preds = %0
  %12 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2209
  %13 = call i32 @X509_STORE_set_default_paths(%struct.x509_store_st* %12), !dbg !2210
  store i32 %13, i32* %2, align 4, !dbg !2211
  %14 = load i32, i32* %2, align 4, !dbg !2212
  %15 = icmp eq i32 %14, 0, !dbg !2214
  br i1 %15, label %16, label %18, !dbg !2215

; <label>:16:                                     ; preds = %11
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)), !dbg !2216
  %17 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2218
  call void @X509_STORE_free(%struct.x509_store_st* %17), !dbg !2219
  store %struct.x509_store_st* null, %struct.x509_store_st** @store, align 8, !dbg !2220
  br label %18, !dbg !2221

; <label>:18:                                     ; preds = %16, %11
  store i32 1, i32* @ssl_inited, align 4, !dbg !2222
  store i32 1, i32* %1, align 4, !dbg !2223
  br label %19, !dbg !2223

; <label>:19:                                     ; preds = %18, %10
  %20 = load i32, i32* %1, align 4, !dbg !2224
  ret i32 %20, !dbg !2224
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @SSL_library_init() #2

declare void @SSL_load_error_strings() #2

declare void @OPENSSL_add_all_algorithms_noconf() #2

declare %struct.x509_store_st* @X509_STORE_new() #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @X509_STORE_set_default_paths(%struct.x509_store_st*) #2

declare void @X509_STORE_free(%struct.x509_store_st*) #2

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_connect_ip_ssl(%struct._IPADDR*, i32, %struct._IPADDR*, %struct._SERVER_REC*) #0 !dbg !2225 {
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IPADDR*, align 8
  %9 = alloca %struct._SERVER_REC*, align 8
  %10 = alloca %struct._GIOChannel*, align 8
  %11 = alloca %struct._GIOChannel*, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !2228, metadata !2184), !dbg !2229
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2230, metadata !2184), !dbg !2231
  store %struct._IPADDR* %2, %struct._IPADDR** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %8, metadata !2232, metadata !2184), !dbg !2233
  store %struct._SERVER_REC* %3, %struct._SERVER_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %9, metadata !2234, metadata !2184), !dbg !2235
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %10, metadata !2236, metadata !2184), !dbg !2237
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %11, metadata !2238, metadata !2184), !dbg !2239
  %12 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2240
  %13 = load i32, i32* %7, align 4, !dbg !2241
  %14 = load %struct._IPADDR*, %struct._IPADDR** %8, align 8, !dbg !2242
  %15 = call %struct._GIOChannel* @net_connect_ip(%struct._IPADDR* %12, i32 %13, %struct._IPADDR* %14), !dbg !2243
  store %struct._GIOChannel* %15, %struct._GIOChannel** %10, align 8, !dbg !2244
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %10, align 8, !dbg !2245
  %17 = icmp eq %struct._GIOChannel* %16, null, !dbg !2247
  br i1 %17, label %18, label %19, !dbg !2248

; <label>:18:                                     ; preds = %4
  store %struct._GIOChannel* null, %struct._GIOChannel** %5, align 8, !dbg !2249
  br label %30, !dbg !2249

; <label>:19:                                     ; preds = %4
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %10, align 8, !dbg !2250
  %21 = load i32, i32* %7, align 4, !dbg !2251
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !2252
  %23 = call %struct._GIOChannel* @irssi_ssl_get_iochannel(%struct._GIOChannel* %20, i32 %21, %struct._SERVER_REC* %22), !dbg !2253
  store %struct._GIOChannel* %23, %struct._GIOChannel** %11, align 8, !dbg !2254
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !2255
  %25 = icmp eq %struct._GIOChannel* %24, null, !dbg !2257
  br i1 %25, label %26, label %28, !dbg !2258

; <label>:26:                                     ; preds = %19
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %10, align 8, !dbg !2259
  call void @g_io_channel_unref(%struct._GIOChannel* %27), !dbg !2260
  br label %28, !dbg !2260

; <label>:28:                                     ; preds = %26, %19
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !2261
  store %struct._GIOChannel* %29, %struct._GIOChannel** %5, align 8, !dbg !2262
  br label %30, !dbg !2262

; <label>:30:                                     ; preds = %28, %18
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2263
  ret %struct._GIOChannel* %31, !dbg !2263
}

declare %struct._GIOChannel* @net_connect_ip(%struct._IPADDR*, i32, %struct._IPADDR*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GIOChannel* @irssi_ssl_get_iochannel(%struct._GIOChannel*, i32, %struct._SERVER_REC*) #0 !dbg !2264 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca %struct.GIOSSLChannel*, align 8
  %9 = alloca %struct._GIOChannel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssl_st*, align 8
  %12 = alloca %struct.ssl_ctx_st*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct._IO_FILE*, align 8
  %23 = alloca %struct.x509_st*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !2267, metadata !2184), !dbg !2268
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2269, metadata !2184), !dbg !2270
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2271, metadata !2184), !dbg !2272
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %8, metadata !2273, metadata !2184), !dbg !2274
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %9, metadata !2275, metadata !2184), !dbg !2276
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2277, metadata !2184), !dbg !2278
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %11, metadata !2279, metadata !2184), !dbg !2280
  call void @llvm.dbg.declare(metadata %struct.ssl_ctx_st** %12, metadata !2281, metadata !2184), !dbg !2282
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %12, align 8, !dbg !2282
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2283, metadata !2184), !dbg !2284
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2285
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 3, !dbg !2286
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %27, align 8, !dbg !2286
  %29 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %28, i32 0, i32 19, !dbg !2287
  %30 = load i8*, i8** %29, align 8, !dbg !2287
  store i8* %30, i8** %13, align 8, !dbg !2284
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2288, metadata !2184), !dbg !2289
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2290
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 3, !dbg !2291
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %32, align 8, !dbg !2291
  %34 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %33, i32 0, i32 20, !dbg !2292
  %35 = load i8*, i8** %34, align 8, !dbg !2292
  store i8* %35, i8** %14, align 8, !dbg !2289
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2293, metadata !2184), !dbg !2294
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2295
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 3, !dbg !2296
  %38 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %37, align 8, !dbg !2296
  %39 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %38, i32 0, i32 21, !dbg !2297
  %40 = load i8*, i8** %39, align 8, !dbg !2297
  store i8* %40, i8** %15, align 8, !dbg !2294
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2298, metadata !2184), !dbg !2299
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2300
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 3, !dbg !2301
  %43 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %42, align 8, !dbg !2301
  %44 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %43, i32 0, i32 22, !dbg !2302
  %45 = load i8*, i8** %44, align 8, !dbg !2302
  store i8* %45, i8** %16, align 8, !dbg !2299
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2303, metadata !2184), !dbg !2304
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2305
  %47 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %46, i32 0, i32 3, !dbg !2306
  %48 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %47, align 8, !dbg !2306
  %49 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %48, i32 0, i32 23, !dbg !2307
  %50 = load i8*, i8** %49, align 8, !dbg !2307
  store i8* %50, i8** %17, align 8, !dbg !2304
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2308, metadata !2184), !dbg !2309
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2310
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 3, !dbg !2311
  %53 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %52, align 8, !dbg !2311
  %54 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %53, i32 0, i32 24, !dbg !2312
  %55 = load i8*, i8** %54, align 8, !dbg !2312
  store i8* %55, i8** %18, align 8, !dbg !2309
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2313, metadata !2184), !dbg !2314
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2315
  %57 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %56, i32 0, i32 3, !dbg !2316
  %58 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %57, align 8, !dbg !2316
  %59 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %58, i32 0, i32 28, !dbg !2317
  %60 = load i8, i8* %59, align 8, !dbg !2317
  %61 = lshr i8 %60, 6, !dbg !2317
  %62 = and i8 %61, 1, !dbg !2317
  %63 = zext i8 %62 to i32, !dbg !2317
  store i32 %63, i32* %19, align 4, !dbg !2314
  br label %64, !dbg !2318, !llvm.loop !2319

; <label>:64:                                     ; preds = %3
  %65 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2320
  %66 = icmp ne %struct._GIOChannel* %65, null, !dbg !2324
  br i1 %66, label %67, label %68, !dbg !2320

; <label>:67:                                     ; preds = %64
  br label %69, !dbg !2325

; <label>:68:                                     ; preds = %64
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irssi_ssl_get_iochannel, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)), !dbg !2328
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2331
  br label %350, !dbg !2331

; <label>:69:                                     ; preds = %67
  br label %70, !dbg !2332

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* @ssl_inited, align 4, !dbg !2334
  %72 = icmp ne i32 %71, 0, !dbg !2334
  br i1 %72, label %77, label %73, !dbg !2336

; <label>:73:                                     ; preds = %70
  %74 = call i32 @irssi_ssl_init(), !dbg !2337
  %75 = icmp ne i32 %74, 0, !dbg !2337
  br i1 %75, label %77, label %76, !dbg !2339

; <label>:76:                                     ; preds = %73
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2340
  br label %350, !dbg !2340

; <label>:77:                                     ; preds = %73, %70
  %78 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2341
  %79 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %78), !dbg !2343
  store i32 %79, i32* %10, align 4, !dbg !2344
  %80 = icmp ne i32 %79, 0, !dbg !2344
  br i1 %80, label %82, label %81, !dbg !2345

; <label>:81:                                     ; preds = %77
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2346
  br label %350, !dbg !2346

; <label>:82:                                     ; preds = %77
  call void @ERR_clear_error(), !dbg !2347
  %83 = call %struct.ssl_method_st* @SSLv23_client_method(), !dbg !2348
  %84 = call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* %83), !dbg !2349
  store %struct.ssl_ctx_st* %84, %struct.ssl_ctx_st** %12, align 8, !dbg !2351
  %85 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2352
  %86 = icmp eq %struct.ssl_ctx_st* %85, null, !dbg !2354
  br i1 %86, label %87, label %91, !dbg !2355

; <label>:87:                                     ; preds = %82
  br label %88, !dbg !2356, !llvm.loop !2358

; <label>:88:                                     ; preds = %87
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0)), !dbg !2359
  br label %89, !dbg !2362

; <label>:89:                                     ; preds = %89, %88
  br label %89, !dbg !2363, !llvm.loop !2367
                                                  ; No predecessors!
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2369
  br label %350, !dbg !2369

; <label>:91:                                     ; preds = %82
  %92 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2370
  %93 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %92, i32 32, i64 50331648, i8* null), !dbg !2370
  %94 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2371
  call void @SSL_CTX_set_default_passwd_cb(%struct.ssl_ctx_st* %94, i32 (i8*, i32, i32, i8*)* @get_pem_password_callback), !dbg !2372
  %95 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2373
  %96 = load i8*, i8** %15, align 8, !dbg !2374
  call void @SSL_CTX_set_default_passwd_cb_userdata(%struct.ssl_ctx_st* %95, i8* %96), !dbg !2375
  %97 = load i8*, i8** %18, align 8, !dbg !2376
  %98 = icmp ne i8* %97, null, !dbg !2378
  br i1 %98, label %99, label %112, !dbg !2379

; <label>:99:                                     ; preds = %91
  %100 = load i8*, i8** %18, align 8, !dbg !2380
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !2380
  %102 = load i8, i8* %101, align 1, !dbg !2380
  %103 = sext i8 %102 to i32, !dbg !2380
  %104 = icmp ne i32 %103, 0, !dbg !2382
  br i1 %104, label %105, label %112, !dbg !2383

; <label>:105:                                    ; preds = %99
  %106 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2384
  %107 = load i8*, i8** %18, align 8, !dbg !2387
  %108 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* %106, i8* %107), !dbg !2388
  %109 = icmp ne i32 %108, 1, !dbg !2389
  br i1 %109, label %110, label %111, !dbg !2390

; <label>:110:                                    ; preds = %105
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0)), !dbg !2391
  br label %111, !dbg !2391

; <label>:111:                                    ; preds = %110, %105
  br label %112, !dbg !2392

; <label>:112:                                    ; preds = %111, %99, %91
  %113 = load i8*, i8** %13, align 8, !dbg !2393
  %114 = icmp ne i8* %113, null, !dbg !2393
  br i1 %114, label %115, label %217, !dbg !2395

; <label>:115:                                    ; preds = %112
  %116 = load i8*, i8** %13, align 8, !dbg !2396
  %117 = load i8, i8* %116, align 1, !dbg !2398
  %118 = sext i8 %117 to i32, !dbg !2398
  %119 = icmp ne i32 %118, 0, !dbg !2398
  br i1 %119, label %120, label %217, !dbg !2399

; <label>:120:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata i8** %20, metadata !2400, metadata !2184), !dbg !2402
  store i8* null, i8** %20, align 8, !dbg !2402
  call void @llvm.dbg.declare(metadata i8** %21, metadata !2403, metadata !2184), !dbg !2404
  store i8* null, i8** %21, align 8, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %22, metadata !2405, metadata !2184), !dbg !2457
  %121 = load i8*, i8** %13, align 8, !dbg !2458
  %122 = call i8* @convert_home(i8* %121), !dbg !2459
  store i8* %122, i8** %20, align 8, !dbg !2460
  %123 = load i8*, i8** %14, align 8, !dbg !2461
  %124 = icmp ne i8* %123, null, !dbg !2461
  br i1 %124, label %125, label %133, !dbg !2463

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %14, align 8, !dbg !2464
  %127 = load i8, i8* %126, align 1, !dbg !2466
  %128 = sext i8 %127 to i32, !dbg !2466
  %129 = icmp ne i32 %128, 0, !dbg !2466
  br i1 %129, label %130, label %133, !dbg !2467

; <label>:130:                                    ; preds = %125
  %131 = load i8*, i8** %14, align 8, !dbg !2468
  %132 = call i8* @convert_home(i8* %131), !dbg !2469
  store i8* %132, i8** %21, align 8, !dbg !2470
  br label %133, !dbg !2471

; <label>:133:                                    ; preds = %130, %125, %120
  %134 = load i8*, i8** %20, align 8, !dbg !2472
  %135 = call %struct._IO_FILE* @fopen(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)), !dbg !2474
  store %struct._IO_FILE* %135, %struct._IO_FILE** %22, align 8, !dbg !2475
  %136 = icmp ne %struct._IO_FILE* %135, null, !dbg !2475
  br i1 %136, label %137, label %212, !dbg !2476

; <label>:137:                                    ; preds = %133
  call void @llvm.dbg.declare(metadata %struct.x509_st** %23, metadata !2477, metadata !2184), !dbg !2479
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8, !dbg !2480
  %139 = load i8*, i8** %15, align 8, !dbg !2481
  %140 = call %struct.x509_st* @PEM_read_X509(%struct._IO_FILE* %138, %struct.x509_st** null, i32 (i8*, i32, i32, i8*)* @get_pem_password_callback, i8* %139), !dbg !2482
  store %struct.x509_st* %140, %struct.x509_st** %23, align 8, !dbg !2483
  %141 = load %struct.x509_st*, %struct.x509_st** %23, align 8, !dbg !2484
  %142 = icmp ne %struct.x509_st* %141, null, !dbg !2486
  br i1 %142, label %143, label %205, !dbg !2487

; <label>:143:                                    ; preds = %137
  %144 = load %struct.x509_st*, %struct.x509_st** %23, align 8, !dbg !2488
  %145 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %144, i32 0, i32 0, !dbg !2491
  %146 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %145, align 8, !dbg !2491
  %147 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %146, i32 0, i32 4, !dbg !2492
  %148 = load %struct.X509_val_st*, %struct.X509_val_st** %147, align 8, !dbg !2492
  %149 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %148, i32 0, i32 1, !dbg !2493
  %150 = load %struct.asn1_string_st*, %struct.asn1_string_st** %149, align 8, !dbg !2493
  %151 = call i32 @X509_cmp_current_time(%struct.asn1_string_st* %150), !dbg !2494
  %152 = icmp sle i32 %151, 0, !dbg !2495
  br i1 %152, label %163, label %153, !dbg !2496

; <label>:153:                                    ; preds = %143
  %154 = load %struct.x509_st*, %struct.x509_st** %23, align 8, !dbg !2497
  %155 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %154, i32 0, i32 0, !dbg !2498
  %156 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %155, align 8, !dbg !2498
  %157 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %156, i32 0, i32 4, !dbg !2499
  %158 = load %struct.X509_val_st*, %struct.X509_val_st** %157, align 8, !dbg !2499
  %159 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %158, i32 0, i32 0, !dbg !2500
  %160 = load %struct.asn1_string_st*, %struct.asn1_string_st** %159, align 8, !dbg !2500
  %161 = call i32 @X509_cmp_current_time(%struct.asn1_string_st* %160), !dbg !2501
  %162 = icmp sge i32 %161, 0, !dbg !2502
  br i1 %162, label %163, label %164, !dbg !2503

; <label>:163:                                    ; preds = %153, %143
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0)), !dbg !2505
  br label %164, !dbg !2505

; <label>:164:                                    ; preds = %163, %153
  call void @ERR_clear_error(), !dbg !2506
  %165 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2507
  %166 = load %struct.x509_st*, %struct.x509_st** %23, align 8, !dbg !2509
  %167 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* %165, %struct.x509_st* %166), !dbg !2510
  %168 = icmp ne i32 %167, 0, !dbg !2510
  br i1 %168, label %173, label %169, !dbg !2511

; <label>:169:                                    ; preds = %164
  %170 = load i8*, i8** %13, align 8, !dbg !2512
  %171 = call i64 @ERR_get_error(), !dbg !2513
  %172 = call i8* @ERR_reason_error_string(i64 %171), !dbg !2514
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i8* %170, i8* %172), !dbg !2516
  br label %203, !dbg !2518

; <label>:173:                                    ; preds = %164
  %174 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2519
  %175 = load i8*, i8** %21, align 8, !dbg !2521
  %176 = icmp ne i8* %175, null, !dbg !2521
  br i1 %176, label %177, label %179, !dbg !2521

; <label>:177:                                    ; preds = %173
  %178 = load i8*, i8** %21, align 8, !dbg !2522
  br label %181, !dbg !2524

; <label>:179:                                    ; preds = %173
  %180 = load i8*, i8** %20, align 8, !dbg !2525
  br label %181, !dbg !2527

; <label>:181:                                    ; preds = %179, %177
  %182 = phi i8* [ %178, %177 ], [ %180, %179 ], !dbg !2528
  %183 = call i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* %174, i8* %182, i32 1), !dbg !2530
  %184 = icmp ne i32 %183, 0, !dbg !2530
  br i1 %184, label %196, label %185, !dbg !2531

; <label>:185:                                    ; preds = %181
  %186 = load i8*, i8** %14, align 8, !dbg !2532
  %187 = icmp ne i8* %186, null, !dbg !2532
  br i1 %187, label %188, label %190, !dbg !2532

; <label>:188:                                    ; preds = %185
  %189 = load i8*, i8** %14, align 8, !dbg !2533
  br label %192, !dbg !2534

; <label>:190:                                    ; preds = %185
  %191 = load i8*, i8** %13, align 8, !dbg !2535
  br label %192, !dbg !2536

; <label>:192:                                    ; preds = %190, %188
  %193 = phi i8* [ %189, %188 ], [ %191, %190 ], !dbg !2537
  %194 = call i64 @ERR_get_error(), !dbg !2538
  %195 = call i8* @ERR_reason_error_string(i64 %194), !dbg !2539
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0), i8* %193, i8* %195), !dbg !2541
  br label %202, !dbg !2543

; <label>:196:                                    ; preds = %181
  %197 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2544
  %198 = call i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* %197), !dbg !2546
  %199 = icmp ne i32 %198, 0, !dbg !2546
  br i1 %199, label %201, label %200, !dbg !2547

; <label>:200:                                    ; preds = %196
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0)), !dbg !2548
  br label %201, !dbg !2548

; <label>:201:                                    ; preds = %200, %196
  br label %202

; <label>:202:                                    ; preds = %201, %192
  br label %203

; <label>:203:                                    ; preds = %202, %169
  %204 = load %struct.x509_st*, %struct.x509_st** %23, align 8, !dbg !2549
  call void @X509_free(%struct.x509_st* %204), !dbg !2550
  br label %209, !dbg !2551

; <label>:205:                                    ; preds = %137
  %206 = load i8*, i8** %13, align 8, !dbg !2552
  %207 = call i64 @ERR_get_error(), !dbg !2553
  %208 = call i8* @ERR_reason_error_string(i64 %207), !dbg !2554
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i8* %206, i8* %208), !dbg !2556
  br label %209

; <label>:209:                                    ; preds = %205, %203
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8, !dbg !2558
  %211 = call i32 @fclose(%struct._IO_FILE* %210), !dbg !2559
  br label %214, !dbg !2560

; <label>:212:                                    ; preds = %133
  %213 = load i8*, i8** %20, align 8, !dbg !2561
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i8* %213), !dbg !2562
  br label %214

; <label>:214:                                    ; preds = %212, %209
  %215 = load i8*, i8** %20, align 8, !dbg !2563
  call void @g_free(i8* %215), !dbg !2564
  %216 = load i8*, i8** %21, align 8, !dbg !2565
  call void @g_free(i8* %216), !dbg !2566
  br label %217, !dbg !2567

; <label>:217:                                    ; preds = %214, %115, %112
  %218 = load i8*, i8** %16, align 8, !dbg !2568
  %219 = icmp ne i8* %218, null, !dbg !2568
  br i1 %219, label %220, label %225, !dbg !2570

; <label>:220:                                    ; preds = %217
  %221 = load i8*, i8** %16, align 8, !dbg !2571
  %222 = load i8, i8* %221, align 1, !dbg !2573
  %223 = sext i8 %222 to i32, !dbg !2573
  %224 = icmp ne i32 %223, 0, !dbg !2573
  br i1 %224, label %233, label %225, !dbg !2574

; <label>:225:                                    ; preds = %220, %217
  %226 = load i8*, i8** %17, align 8, !dbg !2575
  %227 = icmp ne i8* %226, null, !dbg !2575
  br i1 %227, label %228, label %268, !dbg !2577

; <label>:228:                                    ; preds = %225
  %229 = load i8*, i8** %17, align 8, !dbg !2578
  %230 = load i8, i8* %229, align 1, !dbg !2580
  %231 = sext i8 %230 to i32, !dbg !2580
  %232 = icmp ne i32 %231, 0, !dbg !2580
  br i1 %232, label %233, label %268, !dbg !2581

; <label>:233:                                    ; preds = %228, %220
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2582, metadata !2184), !dbg !2584
  store i8* null, i8** %24, align 8, !dbg !2584
  call void @llvm.dbg.declare(metadata i8** %25, metadata !2585, metadata !2184), !dbg !2586
  store i8* null, i8** %25, align 8, !dbg !2586
  %234 = load i8*, i8** %16, align 8, !dbg !2587
  %235 = icmp ne i8* %234, null, !dbg !2587
  br i1 %235, label %236, label %244, !dbg !2589

; <label>:236:                                    ; preds = %233
  %237 = load i8*, i8** %16, align 8, !dbg !2590
  %238 = load i8, i8* %237, align 1, !dbg !2592
  %239 = sext i8 %238 to i32, !dbg !2592
  %240 = icmp ne i32 %239, 0, !dbg !2592
  br i1 %240, label %241, label %244, !dbg !2593

; <label>:241:                                    ; preds = %236
  %242 = load i8*, i8** %16, align 8, !dbg !2594
  %243 = call i8* @convert_home(i8* %242), !dbg !2595
  store i8* %243, i8** %24, align 8, !dbg !2596
  br label %244, !dbg !2597

; <label>:244:                                    ; preds = %241, %236, %233
  %245 = load i8*, i8** %17, align 8, !dbg !2598
  %246 = icmp ne i8* %245, null, !dbg !2598
  br i1 %246, label %247, label %255, !dbg !2600

; <label>:247:                                    ; preds = %244
  %248 = load i8*, i8** %17, align 8, !dbg !2601
  %249 = load i8, i8* %248, align 1, !dbg !2603
  %250 = sext i8 %249 to i32, !dbg !2603
  %251 = icmp ne i32 %250, 0, !dbg !2603
  br i1 %251, label %252, label %255, !dbg !2604

; <label>:252:                                    ; preds = %247
  %253 = load i8*, i8** %17, align 8, !dbg !2605
  %254 = call i8* @convert_home(i8* %253), !dbg !2606
  store i8* %254, i8** %25, align 8, !dbg !2607
  br label %255, !dbg !2608

; <label>:255:                                    ; preds = %252, %247, %244
  %256 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2609
  %257 = load i8*, i8** %24, align 8, !dbg !2611
  %258 = load i8*, i8** %25, align 8, !dbg !2612
  %259 = call i32 @SSL_CTX_load_verify_locations(%struct.ssl_ctx_st* %256, i8* %257, i8* %258), !dbg !2613
  %260 = icmp ne i32 %259, 0, !dbg !2613
  br i1 %260, label %265, label %261, !dbg !2614

; <label>:261:                                    ; preds = %255
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i32 0, i32 0)), !dbg !2615
  %262 = load i8*, i8** %24, align 8, !dbg !2617
  call void @g_free(i8* %262), !dbg !2618
  %263 = load i8*, i8** %25, align 8, !dbg !2619
  call void @g_free(i8* %263), !dbg !2620
  %264 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2621
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %264), !dbg !2622
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2623
  br label %350, !dbg !2623

; <label>:265:                                    ; preds = %255
  %266 = load i8*, i8** %24, align 8, !dbg !2624
  call void @g_free(i8* %266), !dbg !2625
  %267 = load i8*, i8** %25, align 8, !dbg !2626
  call void @g_free(i8* %267), !dbg !2627
  store i32 1, i32* %19, align 4, !dbg !2628
  br label %277, !dbg !2629

; <label>:268:                                    ; preds = %228, %225
  %269 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2630
  %270 = icmp ne %struct.x509_store_st* %269, null, !dbg !2632
  br i1 %270, label %271, label %276, !dbg !2633

; <label>:271:                                    ; preds = %268
  %272 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2634
  %273 = call i32 @X509_STORE_up_ref(%struct.x509_store_st* %272), !dbg !2636
  %274 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2637
  %275 = load %struct.x509_store_st*, %struct.x509_store_st** @store, align 8, !dbg !2638
  call void @SSL_CTX_set_cert_store(%struct.ssl_ctx_st* %274, %struct.x509_store_st* %275), !dbg !2639
  br label %276, !dbg !2640

; <label>:276:                                    ; preds = %271, %268
  br label %277

; <label>:277:                                    ; preds = %276, %265
  %278 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2641
  %279 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* %278), !dbg !2643
  store %struct.ssl_st* %279, %struct.ssl_st** %11, align 8, !dbg !2644
  %280 = icmp ne %struct.ssl_st* %279, null, !dbg !2644
  br i1 %280, label %283, label %281, !dbg !2645

; <label>:281:                                    ; preds = %277
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0)), !dbg !2646
  %282 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2648
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %282), !dbg !2649
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2650
  br label %350, !dbg !2650

; <label>:283:                                    ; preds = %277
  %284 = load %struct.ssl_st*, %struct.ssl_st** %11, align 8, !dbg !2651
  %285 = load i32, i32* %10, align 4, !dbg !2653
  %286 = call i32 @SSL_set_fd(%struct.ssl_st* %284, i32 %285), !dbg !2654
  %287 = icmp ne i32 %286, 0, !dbg !2654
  br i1 %287, label %291, label %288, !dbg !2655

; <label>:288:                                    ; preds = %283
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0)), !dbg !2656
  %289 = load %struct.ssl_st*, %struct.ssl_st** %11, align 8, !dbg !2658
  call void @SSL_free(%struct.ssl_st* %289), !dbg !2659
  %290 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2660
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %290), !dbg !2661
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !2662
  br label %350, !dbg !2662

; <label>:291:                                    ; preds = %283
  %292 = load %struct.ssl_st*, %struct.ssl_st** %11, align 8, !dbg !2663
  %293 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2663
  %294 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %293, i32 0, i32 3, !dbg !2664
  %295 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %294, align 8, !dbg !2664
  %296 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %295, i32 0, i32 10, !dbg !2665
  %297 = load i8*, i8** %296, align 8, !dbg !2665
  %298 = call i64 @SSL_ctrl(%struct.ssl_st* %292, i32 55, i64 0, i8* %297), !dbg !2663
  %299 = load %struct.ssl_st*, %struct.ssl_st** %11, align 8, !dbg !2666
  %300 = call i64 @SSL_ctrl(%struct.ssl_st* %299, i32 33, i64 3, i8* null), !dbg !2666
  %301 = call noalias i8* @g_malloc0_n(i64 1, i64 168), !dbg !2667
  %302 = bitcast i8* %301 to %struct.GIOSSLChannel*, !dbg !2668
  store %struct.GIOSSLChannel* %302, %struct.GIOSSLChannel** %8, align 8, !dbg !2669
  %303 = load i32, i32* %10, align 4, !dbg !2670
  %304 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2671
  %305 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %304, i32 0, i32 1, !dbg !2672
  store i32 %303, i32* %305, align 8, !dbg !2673
  %306 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2674
  %307 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2675
  %308 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %307, i32 0, i32 2, !dbg !2676
  store %struct._GIOChannel* %306, %struct._GIOChannel** %308, align 8, !dbg !2677
  %309 = load %struct.ssl_st*, %struct.ssl_st** %11, align 8, !dbg !2678
  %310 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2679
  %311 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %310, i32 0, i32 3, !dbg !2680
  store %struct.ssl_st* %309, %struct.ssl_st** %311, align 8, !dbg !2681
  %312 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %12, align 8, !dbg !2682
  %313 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2683
  %314 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %313, i32 0, i32 4, !dbg !2684
  store %struct.ssl_ctx_st* %312, %struct.ssl_ctx_st** %314, align 8, !dbg !2685
  %315 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2686
  %316 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2687
  %317 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %316, i32 0, i32 6, !dbg !2688
  store %struct._SERVER_REC* %315, %struct._SERVER_REC** %317, align 8, !dbg !2689
  %318 = load i32, i32* %6, align 4, !dbg !2690
  %319 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2691
  %320 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %319, i32 0, i32 7, !dbg !2692
  store i32 %318, i32* %320, align 8, !dbg !2693
  %321 = load i32, i32* %19, align 4, !dbg !2694
  %322 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2695
  %323 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %322, i32 0, i32 5, !dbg !2696
  %324 = trunc i32 %321 to i8, !dbg !2697
  %325 = load i8, i8* %323, align 8, !dbg !2697
  %326 = and i8 %324, 1, !dbg !2697
  %327 = and i8 %325, -2, !dbg !2697
  %328 = or i8 %327, %326, !dbg !2697
  store i8 %328, i8* %323, align 8, !dbg !2697
  %329 = zext i8 %326 to i32, !dbg !2697
  %330 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %8, align 8, !dbg !2698
  %331 = bitcast %struct.GIOSSLChannel* %330 to %struct._GIOChannel*, !dbg !2699
  store %struct._GIOChannel* %331, %struct._GIOChannel** %9, align 8, !dbg !2700
  %332 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2701
  %333 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %332, i32 0, i32 1, !dbg !2702
  store %struct._GIOFuncs* @irssi_ssl_channel_funcs, %struct._GIOFuncs** %333, align 8, !dbg !2703
  %334 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2704
  call void @g_io_channel_init(%struct._GIOChannel* %334), !dbg !2705
  %335 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2706
  %336 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %335, i32 0, i32 12, !dbg !2707
  %337 = load i8, i8* %336, align 2, !dbg !2708
  %338 = and i8 %337, -17, !dbg !2708
  %339 = or i8 %338, 16, !dbg !2708
  store i8 %339, i8* %336, align 2, !dbg !2708
  %340 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2709
  %341 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %340, i32 0, i32 12, !dbg !2710
  %342 = load i8, i8* %341, align 2, !dbg !2711
  %343 = and i8 %342, -9, !dbg !2711
  %344 = or i8 %343, 8, !dbg !2711
  store i8 %344, i8* %341, align 2, !dbg !2711
  %345 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2712
  %346 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %345, i32 0, i32 12, !dbg !2713
  %347 = load i8, i8* %346, align 2, !dbg !2714
  %348 = and i8 %347, -2, !dbg !2714
  store i8 %348, i8* %346, align 2, !dbg !2714
  %349 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !2715
  store %struct._GIOChannel* %349, %struct._GIOChannel** %4, align 8, !dbg !2716
  br label %350, !dbg !2716

; <label>:350:                                    ; preds = %291, %288, %281, %261, %90, %81, %76, %68
  %351 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2717
  ret %struct._GIOChannel* %351, !dbg !2717
}

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_start_ssl(%struct._SERVER_REC*) #0 !dbg !2718 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._GIOChannel*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2721, metadata !2184), !dbg !2722
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !2723, metadata !2184), !dbg !2724
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !2725, metadata !2184), !dbg !2726
  br label %6, !dbg !2727, !llvm.loop !2728

; <label>:6:                                      ; preds = %1
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2729
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !2733
  br i1 %8, label %9, label %10, !dbg !2729

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2734

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.net_start_ssl, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !2737
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !2740
  br label %30, !dbg !2740

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2741

; <label>:12:                                     ; preds = %11
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2743
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 9, !dbg !2744
  %15 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %14, align 8, !dbg !2744
  %16 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %15), !dbg !2745
  store %struct._GIOChannel* %16, %struct._GIOChannel** %4, align 8, !dbg !2746
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2747
  %18 = icmp eq %struct._GIOChannel* %17, null, !dbg !2749
  br i1 %18, label %19, label %20, !dbg !2750

; <label>:19:                                     ; preds = %12
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !2751
  br label %30, !dbg !2751

; <label>:20:                                     ; preds = %12
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2752
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2753
  %23 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %22, i32 0, i32 3, !dbg !2754
  %24 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %23, align 8, !dbg !2754
  %25 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %24, i32 0, i32 11, !dbg !2755
  %26 = load i32, i32* %25, align 8, !dbg !2755
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2756
  %28 = call %struct._GIOChannel* @irssi_ssl_get_iochannel(%struct._GIOChannel* %21, i32 %26, %struct._SERVER_REC* %27), !dbg !2757
  store %struct._GIOChannel* %28, %struct._GIOChannel** %5, align 8, !dbg !2758
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2759
  store %struct._GIOChannel* %29, %struct._GIOChannel** %2, align 8, !dbg !2760
  br label %30, !dbg !2760

; <label>:30:                                     ; preds = %20, %19, %10
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !2761
  ret %struct._GIOChannel* %31, !dbg !2761
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

; Function Attrs: nounwind uwtable
define i32 @irssi_ssl_handshake(%struct._GIOChannel*) #0 !dbg !2762 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct.GIOSSLChannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.x509_st*, align 8
  %9 = alloca %struct.X509_pubkey_st*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct._TLS_REC*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !2765, metadata !2184), !dbg !2766
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %4, metadata !2767, metadata !2184), !dbg !2768
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !2769
  %21 = bitcast %struct._GIOChannel* %20 to %struct.GIOSSLChannel*, !dbg !2770
  store %struct.GIOSSLChannel* %21, %struct.GIOSSLChannel** %4, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2771, metadata !2184), !dbg !2772
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2773, metadata !2184), !dbg !2774
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2775, metadata !2184), !dbg !2776
  store i8* null, i8** %7, align 8, !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.x509_st** %8, metadata !2777, metadata !2184), !dbg !2778
  store %struct.x509_st* null, %struct.x509_st** %8, align 8, !dbg !2778
  call void @llvm.dbg.declare(metadata %struct.X509_pubkey_st** %9, metadata !2779, metadata !2184), !dbg !2780
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %9, align 8, !dbg !2780
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2781, metadata !2184), !dbg !2782
  store i32 0, i32* %10, align 4, !dbg !2782
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2783, metadata !2184), !dbg !2784
  store i8* null, i8** %11, align 8, !dbg !2784
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2785, metadata !2184), !dbg !2786
  store i8* null, i8** %12, align 8, !dbg !2786
  call void @llvm.dbg.declare(metadata [64 x i8]* %13, metadata !2787, metadata !2184), !dbg !2788
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2789, metadata !2184), !dbg !2790
  call void @llvm.dbg.declare(metadata [64 x i8]* %15, metadata !2791, metadata !2184), !dbg !2792
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2793, metadata !2184), !dbg !2794
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2795, metadata !2184), !dbg !2796
  %22 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2797
  %23 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %22, i32 0, i32 6, !dbg !2798
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %23, align 8, !dbg !2798
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 3, !dbg !2799
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %25, align 8, !dbg !2799
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 25, !dbg !2800
  %28 = load i8*, i8** %27, align 8, !dbg !2800
  store i8* %28, i8** %17, align 8, !dbg !2796
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2801, metadata !2184), !dbg !2802
  %29 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2803
  %30 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %29, i32 0, i32 6, !dbg !2804
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %30, align 8, !dbg !2804
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 3, !dbg !2805
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %32, align 8, !dbg !2805
  %34 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %33, i32 0, i32 26, !dbg !2806
  %35 = load i8*, i8** %34, align 8, !dbg !2806
  store i8* %35, i8** %18, align 8, !dbg !2802
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %19, metadata !2807, metadata !2184), !dbg !2827
  store %struct._TLS_REC* null, %struct._TLS_REC** %19, align 8, !dbg !2827
  call void @ERR_clear_error(), !dbg !2828
  %36 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2829
  %37 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %36, i32 0, i32 3, !dbg !2830
  %38 = load %struct.ssl_st*, %struct.ssl_st** %37, align 8, !dbg !2830
  %39 = call i32 @SSL_connect(%struct.ssl_st* %38), !dbg !2831
  store i32 %39, i32* %5, align 4, !dbg !2832
  %40 = load i32, i32* %5, align 4, !dbg !2833
  %41 = icmp sle i32 %40, 0, !dbg !2835
  br i1 %41, label %42, label %86, !dbg !2836

; <label>:42:                                     ; preds = %1
  %43 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2837
  %44 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %43, i32 0, i32 3, !dbg !2839
  %45 = load %struct.ssl_st*, %struct.ssl_st** %44, align 8, !dbg !2839
  %46 = load i32, i32* %5, align 4, !dbg !2840
  %47 = call i32 @SSL_get_error(%struct.ssl_st* %45, i32 %46), !dbg !2841
  store i32 %47, i32* %6, align 4, !dbg !2842
  %48 = load i32, i32* %6, align 4, !dbg !2843
  switch i32 %48, label %76 [
    i32 2, label %49
    i32 3, label %50
    i32 6, label %51
    i32 5, label %52
  ], !dbg !2844

; <label>:49:                                     ; preds = %42
  store i32 1, i32* %2, align 4, !dbg !2845
  br label %233, !dbg !2845

; <label>:50:                                     ; preds = %42
  store i32 3, i32* %2, align 4, !dbg !2847
  br label %233, !dbg !2847

; <label>:51:                                     ; preds = %42
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)), !dbg !2848
  store i32 -1, i32* %2, align 4, !dbg !2849
  br label %233, !dbg !2849

; <label>:52:                                     ; preds = %42
  %53 = call i64 @ERR_get_error(), !dbg !2850
  %54 = call i8* @ERR_reason_error_string(i64 %53), !dbg !2851
  store i8* %54, i8** %7, align 8, !dbg !2853
  %55 = load i8*, i8** %7, align 8, !dbg !2854
  %56 = icmp eq i8* %55, null, !dbg !2856
  br i1 %56, label %57, label %68, !dbg !2857

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %5, align 4, !dbg !2858
  %59 = icmp eq i32 %58, -1, !dbg !2860
  br i1 %59, label %60, label %68, !dbg !2861

; <label>:60:                                     ; preds = %57
  %61 = call i32* @__errno_location() #1, !dbg !2862
  %62 = load i32, i32* %61, align 4, !dbg !2864
  %63 = icmp ne i32 %62, 0, !dbg !2865
  br i1 %63, label %64, label %68, !dbg !2866

; <label>:64:                                     ; preds = %60
  %65 = call i32* @__errno_location() #1, !dbg !2867
  %66 = load i32, i32* %65, align 4, !dbg !2868
  %67 = call i8* @strerror(i32 %66) #8, !dbg !2869
  store i8* %67, i8** %7, align 8, !dbg !2870
  br label %68, !dbg !2871

; <label>:68:                                     ; preds = %64, %60, %57, %52
  %69 = load i8*, i8** %7, align 8, !dbg !2872
  %70 = icmp ne i8* %69, null, !dbg !2873
  br i1 %70, label %71, label %73, !dbg !2872

; <label>:71:                                     ; preds = %68
  %72 = load i8*, i8** %7, align 8, !dbg !2874
  br label %74, !dbg !2875

; <label>:73:                                     ; preds = %68
  br label %74, !dbg !2876

; <label>:74:                                     ; preds = %73, %71
  %75 = phi i8* [ %72, %71 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), %73 ], !dbg !2878
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* %75), !dbg !2880
  store i32 -1, i32* %2, align 4, !dbg !2881
  br label %233, !dbg !2881

; <label>:76:                                     ; preds = %42
  %77 = call i64 @ERR_get_error(), !dbg !2882
  %78 = call i8* @ERR_reason_error_string(i64 %77), !dbg !2883
  store i8* %78, i8** %7, align 8, !dbg !2884
  %79 = load i8*, i8** %7, align 8, !dbg !2885
  %80 = icmp ne i8* %79, null, !dbg !2886
  br i1 %80, label %81, label %83, !dbg !2885

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %7, align 8, !dbg !2887
  br label %84, !dbg !2888

; <label>:83:                                     ; preds = %76
  br label %84, !dbg !2889

; <label>:84:                                     ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), %83 ], !dbg !2890
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* %85), !dbg !2891
  store i32 -1, i32* %2, align 4, !dbg !2892
  br label %233, !dbg !2892

; <label>:86:                                     ; preds = %1
  %87 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2893
  %88 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %87, i32 0, i32 3, !dbg !2894
  %89 = load %struct.ssl_st*, %struct.ssl_st** %88, align 8, !dbg !2894
  %90 = call %struct.x509_st* @SSL_get_peer_certificate(%struct.ssl_st* %89), !dbg !2895
  store %struct.x509_st* %90, %struct.x509_st** %8, align 8, !dbg !2896
  %91 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !2897
  %92 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %91, i32 0, i32 0, !dbg !2898
  %93 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %92, align 8, !dbg !2898
  %94 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %93, i32 0, i32 6, !dbg !2899
  %95 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %94, align 8, !dbg !2899
  store %struct.X509_pubkey_st* %95, %struct.X509_pubkey_st** %9, align 8, !dbg !2900
  %96 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !2901
  %97 = icmp eq %struct.x509_st* %96, null, !dbg !2903
  br i1 %97, label %98, label %99, !dbg !2904

; <label>:98:                                     ; preds = %86
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)), !dbg !2905
  store i32 0, i32* %5, align 4, !dbg !2907
  br label %226, !dbg !2908

; <label>:99:                                     ; preds = %86
  %100 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %9, align 8, !dbg !2909
  %101 = icmp eq %struct.X509_pubkey_st* %100, null, !dbg !2911
  br i1 %101, label %102, label %103, !dbg !2912

; <label>:102:                                    ; preds = %99
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0)), !dbg !2913
  store i32 0, i32* %5, align 4, !dbg !2915
  br label %226, !dbg !2916

; <label>:103:                                    ; preds = %99
  %104 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !2917
  %105 = call %struct.env_md_st* @EVP_sha256(), !dbg !2919
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !2920
  %107 = call i32 @X509_digest(%struct.x509_st* %104, %struct.env_md_st* %105, i8* %106, i32* %16), !dbg !2921
  %108 = icmp ne i32 %107, 0, !dbg !2923
  br i1 %108, label %110, label %109, !dbg !2924

; <label>:109:                                    ; preds = %103
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0)), !dbg !2925
  store i32 0, i32* %5, align 4, !dbg !2927
  br label %226, !dbg !2928

; <label>:110:                                    ; preds = %103
  %111 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %9, align 8, !dbg !2929
  %112 = call i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* %111, i8** null), !dbg !2930
  store i32 %112, i32* %10, align 4, !dbg !2931
  %113 = load i32, i32* %10, align 4, !dbg !2932
  %114 = sext i32 %113 to i64, !dbg !2933
  %115 = call noalias i8* @g_malloc_n(i64 %114, i64 1), !dbg !2934
  store i8* %115, i8** %12, align 8, !dbg !2935
  store i8* %115, i8** %11, align 8, !dbg !2936
  %116 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %9, align 8, !dbg !2937
  %117 = call i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* %116, i8** %12), !dbg !2938
  %118 = load i8*, i8** %11, align 8, !dbg !2939
  %119 = load i32, i32* %10, align 4, !dbg !2940
  %120 = sext i32 %119 to i64, !dbg !2940
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 0, !dbg !2941
  %122 = call %struct.env_md_st* @EVP_sha256(), !dbg !2942
  %123 = call i32 @EVP_Digest(i8* %118, i64 %120, i8* %121, i32* %14, %struct.env_md_st* %122, %struct.engine_st* null), !dbg !2943
  %124 = call %struct._TLS_REC* (...) @tls_create_rec(), !dbg !2945
  store %struct._TLS_REC* %124, %struct._TLS_REC** %19, align 8, !dbg !2946
  %125 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2947
  %126 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2948
  %127 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %126, i32 0, i32 3, !dbg !2949
  %128 = load %struct.ssl_st*, %struct.ssl_st** %127, align 8, !dbg !2949
  call void @set_cipher_info(%struct._TLS_REC* %125, %struct.ssl_st* %128), !dbg !2950
  %129 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2951
  %130 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !2952
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i32 0, i32 0, !dbg !2953
  %132 = load i32, i32* %16, align 4, !dbg !2954
  %133 = zext i32 %132 to i64, !dbg !2954
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i32 0, i32 0, !dbg !2955
  %135 = load i32, i32* %14, align 4, !dbg !2956
  %136 = zext i32 %135 to i64, !dbg !2956
  call void @set_pubkey_info(%struct._TLS_REC* %129, %struct.x509_st* %130, i8* %131, i64 %133, i8* %134, i64 %136), !dbg !2957
  %137 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2958
  %138 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2959
  %139 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %138, i32 0, i32 3, !dbg !2960
  %140 = load %struct.ssl_st*, %struct.ssl_st** %139, align 8, !dbg !2960
  call void @set_peer_cert_chain_info(%struct._TLS_REC* %137, %struct.ssl_st* %140), !dbg !2961
  %141 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2962
  %142 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2963
  %143 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %142, i32 0, i32 3, !dbg !2964
  %144 = load %struct.ssl_st*, %struct.ssl_st** %143, align 8, !dbg !2964
  call void @set_server_temporary_key_info(%struct._TLS_REC* %141, %struct.ssl_st* %144), !dbg !2965
  %145 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !2966
  %146 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %145, i32 0, i32 6, !dbg !2967
  %147 = load %struct._SERVER_REC*, %struct._SERVER_REC** %146, align 8, !dbg !2967
  %148 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2968
  %149 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct._SERVER_REC* %147, %struct._TLS_REC* %148), !dbg !2969
  store i32 1, i32* %5, align 4, !dbg !2970
  %150 = load i8*, i8** %17, align 8, !dbg !2971
  %151 = icmp ne i8* %150, null, !dbg !2973
  br i1 %151, label %152, label %170, !dbg !2974

; <label>:152:                                    ; preds = %110
  %153 = load i8*, i8** %17, align 8, !dbg !2975
  %154 = getelementptr inbounds i8, i8* %153, i64 0, !dbg !2975
  %155 = load i8, i8* %154, align 1, !dbg !2975
  %156 = sext i8 %155 to i32, !dbg !2975
  %157 = icmp ne i32 %156, 0, !dbg !2977
  br i1 %157, label %158, label %170, !dbg !2978

; <label>:158:                                    ; preds = %152
  %159 = load i8*, i8** %17, align 8, !dbg !2979
  %160 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !2981
  %161 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %160, i32 0, i32 7, !dbg !2982
  %162 = load i8*, i8** %161, align 8, !dbg !2982
  %163 = call i32 @g_ascii_strcasecmp(i8* %159, i8* %162), !dbg !2983
  %164 = icmp eq i32 %163, 0, !dbg !2984
  %165 = zext i1 %164 to i32, !dbg !2984
  store i32 %165, i32* %5, align 4, !dbg !2985
  %166 = load i32, i32* %5, align 4, !dbg !2986
  %167 = icmp ne i32 %166, 0, !dbg !2986
  br i1 %167, label %169, label %168, !dbg !2988

; <label>:168:                                    ; preds = %158
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)), !dbg !2989
  br label %226, !dbg !2991

; <label>:169:                                    ; preds = %158
  br label %170, !dbg !2992

; <label>:170:                                    ; preds = %169, %152, %110
  %171 = load i8*, i8** %18, align 8, !dbg !2993
  %172 = icmp ne i8* %171, null, !dbg !2995
  br i1 %172, label %173, label %191, !dbg !2996

; <label>:173:                                    ; preds = %170
  %174 = load i8*, i8** %18, align 8, !dbg !2997
  %175 = getelementptr inbounds i8, i8* %174, i64 0, !dbg !2997
  %176 = load i8, i8* %175, align 1, !dbg !2997
  %177 = sext i8 %176 to i32, !dbg !2997
  %178 = icmp ne i32 %177, 0, !dbg !2999
  br i1 %178, label %179, label %191, !dbg !3000

; <label>:179:                                    ; preds = %173
  %180 = load i8*, i8** %18, align 8, !dbg !3001
  %181 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !3003
  %182 = getelementptr inbounds %struct._TLS_REC, %struct._TLS_REC* %181, i32 0, i32 4, !dbg !3004
  %183 = load i8*, i8** %182, align 8, !dbg !3004
  %184 = call i32 @g_ascii_strcasecmp(i8* %180, i8* %183), !dbg !3005
  %185 = icmp eq i32 %184, 0, !dbg !3006
  %186 = zext i1 %185 to i32, !dbg !3006
  store i32 %186, i32* %5, align 4, !dbg !3007
  %187 = load i32, i32* %5, align 4, !dbg !3008
  %188 = icmp ne i32 %187, 0, !dbg !3008
  br i1 %188, label %190, label %189, !dbg !3010

; <label>:189:                                    ; preds = %179
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)), !dbg !3011
  br label %226, !dbg !3013

; <label>:190:                                    ; preds = %179
  br label %191, !dbg !3014

; <label>:191:                                    ; preds = %190, %173, %170
  %192 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3015
  %193 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %192, i32 0, i32 5, !dbg !3017
  %194 = load i8, i8* %193, align 8, !dbg !3017
  %195 = and i8 %194, 1, !dbg !3017
  %196 = zext i8 %195 to i32, !dbg !3017
  %197 = icmp ne i32 %196, 0, !dbg !3015
  br i1 %197, label %198, label %225, !dbg !3018

; <label>:198:                                    ; preds = %191
  %199 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3019
  %200 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %199, i32 0, i32 3, !dbg !3021
  %201 = load %struct.ssl_st*, %struct.ssl_st** %200, align 8, !dbg !3021
  %202 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3022
  %203 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %202, i32 0, i32 4, !dbg !3023
  %204 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %203, align 8, !dbg !3023
  %205 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3024
  %206 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %205, i32 0, i32 6, !dbg !3025
  %207 = load %struct._SERVER_REC*, %struct._SERVER_REC** %206, align 8, !dbg !3025
  %208 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %207, i32 0, i32 3, !dbg !3026
  %209 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %208, align 8, !dbg !3026
  %210 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %209, i32 0, i32 10, !dbg !3027
  %211 = load i8*, i8** %210, align 8, !dbg !3027
  %212 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3028
  %213 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %212, i32 0, i32 7, !dbg !3029
  %214 = load i32, i32* %213, align 8, !dbg !3029
  %215 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3030
  %216 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %4, align 8, !dbg !3031
  %217 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %216, i32 0, i32 6, !dbg !3032
  %218 = load %struct._SERVER_REC*, %struct._SERVER_REC** %217, align 8, !dbg !3032
  %219 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !3033
  %220 = call i32 @irssi_ssl_verify(%struct.ssl_st* %201, %struct.ssl_ctx_st* %204, i8* %211, i32 %214, %struct.x509_st* %215, %struct._SERVER_REC* %218, %struct._TLS_REC* %219), !dbg !3034
  store i32 %220, i32* %5, align 4, !dbg !3035
  %221 = load i32, i32* %5, align 4, !dbg !3036
  %222 = icmp ne i32 %221, 0, !dbg !3036
  br i1 %222, label %224, label %223, !dbg !3038

; <label>:223:                                    ; preds = %198
  br label %226, !dbg !3039

; <label>:224:                                    ; preds = %198
  br label %225, !dbg !3041

; <label>:225:                                    ; preds = %224, %191
  br label %226, !dbg !3042

; <label>:226:                                    ; preds = %225, %223, %189, %168, %109, %102, %98
  %227 = load %struct._TLS_REC*, %struct._TLS_REC** %19, align 8, !dbg !3044
  call void @tls_rec_free(%struct._TLS_REC* %227), !dbg !3045
  %228 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3046
  call void @X509_free(%struct.x509_st* %228), !dbg !3047
  %229 = load i8*, i8** %11, align 8, !dbg !3048
  call void @g_free(i8* %229), !dbg !3049
  %230 = load i32, i32* %5, align 4, !dbg !3050
  %231 = icmp ne i32 %230, 0, !dbg !3050
  %232 = select i1 %231, i32 0, i32 -1, !dbg !3050
  store i32 %232, i32* %2, align 4, !dbg !3051
  br label %233, !dbg !3051

; <label>:233:                                    ; preds = %226, %84, %74, %51, %50, %49
  %234 = load i32, i32* %2, align 4, !dbg !3052
  ret i32 %234, !dbg !3052
}

declare void @ERR_clear_error() #2

declare i32 @SSL_connect(%struct.ssl_st*) #2

declare i32 @SSL_get_error(%struct.ssl_st*, i32) #2

declare i8* @ERR_reason_error_string(i64) #2

declare i64 @ERR_get_error() #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare %struct.x509_st* @SSL_get_peer_certificate(%struct.ssl_st*) #2

declare i32 @X509_digest(%struct.x509_st*, %struct.env_md_st*, i8*, i32*) #2

declare %struct.env_md_st* @EVP_sha256() #2

declare i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st*, i8**) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i32 @EVP_Digest(i8*, i64, i8*, i32*, %struct.env_md_st*, %struct.engine_st*) #2

declare %struct._TLS_REC* @tls_create_rec(...) #2

; Function Attrs: nounwind uwtable
define internal void @set_cipher_info(%struct._TLS_REC*, %struct.ssl_st*) #0 !dbg !3053 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca %struct.ssl_st*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !3056, metadata !2184), !dbg !3057
  store %struct.ssl_st* %1, %struct.ssl_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %4, metadata !3058, metadata !2184), !dbg !3059
  br label %5, !dbg !3060, !llvm.loop !3061

; <label>:5:                                      ; preds = %2
  %6 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3062
  %7 = icmp ne %struct._TLS_REC* %6, null, !dbg !3066
  br i1 %7, label %8, label %9, !dbg !3062

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3067

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.set_cipher_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !3070
  br label %31, !dbg !3073

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3074

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !3076, !llvm.loop !3077

; <label>:12:                                     ; preds = %11
  %13 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3078
  %14 = icmp ne %struct.ssl_st* %13, null, !dbg !3082
  br i1 %14, label %15, label %16, !dbg !3078

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !3083

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.set_cipher_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)), !dbg !3086
  br label %31, !dbg !3089

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !3090

; <label>:18:                                     ; preds = %17
  %19 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3092
  %20 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3093
  %21 = call i8* @SSL_get_version(%struct.ssl_st* %20), !dbg !3094
  call void @tls_rec_set_protocol_version(%struct._TLS_REC* %19, i8* %21), !dbg !3095
  %22 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3097
  %23 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3098
  %24 = call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* %23), !dbg !3099
  %25 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* %24), !dbg !3100
  call void @tls_rec_set_cipher(%struct._TLS_REC* %22, i8* %25), !dbg !3101
  %26 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3103
  %27 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3104
  %28 = call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* %27), !dbg !3105
  %29 = call i32 @SSL_CIPHER_get_bits(%struct.ssl_cipher_st* %28, i32* null), !dbg !3106
  %30 = sext i32 %29 to i64, !dbg !3104
  call void @tls_rec_set_cipher_size(%struct._TLS_REC* %26, i64 %30), !dbg !3107
  br label %31, !dbg !3108

; <label>:31:                                     ; preds = %18, %16, %9
  ret void, !dbg !3109
}

; Function Attrs: nounwind uwtable
define internal void @set_pubkey_info(%struct._TLS_REC*, %struct.x509_st*, i8*, i64, i8*, i64) #0 !dbg !3110 {
  %7 = alloca %struct._TLS_REC*, align 8
  %8 = alloca %struct.x509_st*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.evp_pkey_st*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.bio_st*, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i64, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %7, metadata !3113, metadata !2184), !dbg !3114
  store %struct.x509_st* %1, %struct.x509_st** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %8, metadata !3115, metadata !2184), !dbg !3116
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3117, metadata !2184), !dbg !3118
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3119, metadata !2184), !dbg !3120
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3121, metadata !2184), !dbg !3122
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3123, metadata !2184), !dbg !3124
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %13, metadata !3125, metadata !2184), !dbg !3126
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %13, align 8, !dbg !3126
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3127, metadata !2184), !dbg !3128
  store i8* null, i8** %14, align 8, !dbg !3128
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3129, metadata !2184), !dbg !3130
  store i8* null, i8** %15, align 8, !dbg !3130
  call void @llvm.dbg.declare(metadata %struct.bio_st** %16, metadata !3131, metadata !2184), !dbg !3132
  store %struct.bio_st* null, %struct.bio_st** %16, align 8, !dbg !3132
  call void @llvm.dbg.declare(metadata [128 x i8]* %17, metadata !3133, metadata !2184), !dbg !3135
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3136, metadata !2184), !dbg !3137
  br label %19, !dbg !3138, !llvm.loop !3139

; <label>:19:                                     ; preds = %6
  %20 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3140
  %21 = icmp ne %struct._TLS_REC* %20, null, !dbg !3144
  br i1 %21, label %22, label %23, !dbg !3140

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !3145

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.set_pubkey_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !3148
  br label %107, !dbg !3151

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !3152

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !3154, !llvm.loop !3155

; <label>:26:                                     ; preds = %25
  %27 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3156
  %28 = icmp ne %struct.x509_st* %27, null, !dbg !3160
  br i1 %28, label %29, label %30, !dbg !3156

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !3161

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.set_pubkey_info, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)), !dbg !3164
  br label %107, !dbg !3167

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !3168

; <label>:32:                                     ; preds = %31
  %33 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3170
  %34 = call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* %33), !dbg !3171
  store %struct.evp_pkey_st* %34, %struct.evp_pkey_st** %13, align 8, !dbg !3172
  %35 = load i8*, i8** %9, align 8, !dbg !3173
  %36 = load i64, i64* %10, align 8, !dbg !3174
  %37 = call i8* @binary_to_hex(i8* %35, i64 %36), !dbg !3175
  store i8* %37, i8** %14, align 8, !dbg !3176
  %38 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3177
  %39 = load i8*, i8** %14, align 8, !dbg !3178
  call void @tls_rec_set_certificate_fingerprint(%struct._TLS_REC* %38, i8* %39), !dbg !3179
  %40 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3180
  call void @tls_rec_set_certificate_fingerprint_algorithm(%struct._TLS_REC* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)), !dbg !3181
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !3182
  %42 = call i32 @EVP_PKEY_id(%struct.evp_pkey_st* %41), !dbg !3183
  switch i32 %42, label %49 [
    i32 6, label %43
    i32 116, label %45
    i32 408, label %47
  ], !dbg !3184

; <label>:43:                                     ; preds = %32
  %44 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3185
  call void @tls_rec_set_public_key_algorithm(%struct._TLS_REC* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)), !dbg !3187
  br label %51, !dbg !3188

; <label>:45:                                     ; preds = %32
  %46 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3189
  call void @tls_rec_set_public_key_algorithm(%struct._TLS_REC* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)), !dbg !3190
  br label %51, !dbg !3191

; <label>:47:                                     ; preds = %32
  %48 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3192
  call void @tls_rec_set_public_key_algorithm(%struct._TLS_REC* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)), !dbg !3193
  br label %51, !dbg !3194

; <label>:49:                                     ; preds = %32
  %50 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3195
  call void @tls_rec_set_public_key_algorithm(%struct._TLS_REC* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !3196
  br label %51, !dbg !3197

; <label>:51:                                     ; preds = %49, %47, %45, %43
  %52 = load i8*, i8** %11, align 8, !dbg !3198
  %53 = load i64, i64* %12, align 8, !dbg !3199
  %54 = call i8* @binary_to_hex(i8* %52, i64 %53), !dbg !3200
  store i8* %54, i8** %15, align 8, !dbg !3201
  %55 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3202
  %56 = load i8*, i8** %15, align 8, !dbg !3203
  call void @tls_rec_set_public_key_fingerprint(%struct._TLS_REC* %55, i8* %56), !dbg !3204
  %57 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3205
  %58 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !3206
  %59 = call i32 @EVP_PKEY_bits(%struct.evp_pkey_st* %58), !dbg !3207
  %60 = sext i32 %59 to i64, !dbg !3207
  call void @tls_rec_set_public_key_size(%struct._TLS_REC* %57, i64 %60), !dbg !3208
  %61 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3210
  call void @tls_rec_set_public_key_fingerprint_algorithm(%struct._TLS_REC* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)), !dbg !3211
  %62 = call %struct.bio_method_st* @BIO_s_mem(), !dbg !3212
  %63 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* %62), !dbg !3213
  store %struct.bio_st* %63, %struct.bio_st** %16, align 8, !dbg !3214
  %64 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3215
  %65 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3216
  %66 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %65, i32 0, i32 0, !dbg !3217
  %67 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %66, align 8, !dbg !3217
  %68 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %67, i32 0, i32 4, !dbg !3218
  %69 = load %struct.X509_val_st*, %struct.X509_val_st** %68, align 8, !dbg !3218
  %70 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %69, i32 0, i32 0, !dbg !3219
  %71 = load %struct.asn1_string_st*, %struct.asn1_string_st** %70, align 8, !dbg !3219
  %72 = call i32 @ASN1_TIME_print(%struct.bio_st* %64, %struct.asn1_string_st* %71), !dbg !3220
  %73 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3221
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !3222
  %75 = call i32 @BIO_read(%struct.bio_st* %73, i8* %74, i32 128), !dbg !3223
  %76 = sext i32 %75 to i64, !dbg !3223
  store i64 %76, i64* %18, align 8, !dbg !3224
  %77 = load i64, i64* %18, align 8, !dbg !3225
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 %77, !dbg !3226
  store i8 0, i8* %78, align 1, !dbg !3227
  %79 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3228
  %80 = call i32 @BIO_free(%struct.bio_st* %79), !dbg !3229
  %81 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3230
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !3231
  call void @tls_rec_set_not_before(%struct._TLS_REC* %81, i8* %82), !dbg !3232
  %83 = call %struct.bio_method_st* @BIO_s_mem(), !dbg !3233
  %84 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* %83), !dbg !3234
  store %struct.bio_st* %84, %struct.bio_st** %16, align 8, !dbg !3235
  %85 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3236
  %86 = load %struct.x509_st*, %struct.x509_st** %8, align 8, !dbg !3237
  %87 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %86, i32 0, i32 0, !dbg !3238
  %88 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %87, align 8, !dbg !3238
  %89 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %88, i32 0, i32 4, !dbg !3239
  %90 = load %struct.X509_val_st*, %struct.X509_val_st** %89, align 8, !dbg !3239
  %91 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %90, i32 0, i32 1, !dbg !3240
  %92 = load %struct.asn1_string_st*, %struct.asn1_string_st** %91, align 8, !dbg !3240
  %93 = call i32 @ASN1_TIME_print(%struct.bio_st* %85, %struct.asn1_string_st* %92), !dbg !3241
  %94 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3242
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !3243
  %96 = call i32 @BIO_read(%struct.bio_st* %94, i8* %95, i32 128), !dbg !3244
  %97 = sext i32 %96 to i64, !dbg !3244
  store i64 %97, i64* %18, align 8, !dbg !3245
  %98 = load i64, i64* %18, align 8, !dbg !3246
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 %98, !dbg !3247
  store i8 0, i8* %99, align 1, !dbg !3248
  %100 = load %struct.bio_st*, %struct.bio_st** %16, align 8, !dbg !3249
  %101 = call i32 @BIO_free(%struct.bio_st* %100), !dbg !3250
  %102 = load %struct._TLS_REC*, %struct._TLS_REC** %7, align 8, !dbg !3251
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i32 0, i32 0, !dbg !3252
  call void @tls_rec_set_not_after(%struct._TLS_REC* %102, i8* %103), !dbg !3253
  %104 = load i8*, i8** %14, align 8, !dbg !3254
  call void @g_free(i8* %104), !dbg !3255
  %105 = load i8*, i8** %15, align 8, !dbg !3256
  call void @g_free(i8* %105), !dbg !3257
  %106 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !3258
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %106), !dbg !3259
  br label %107, !dbg !3260

; <label>:107:                                    ; preds = %51, %30, %23
  ret void, !dbg !3261
}

; Function Attrs: nounwind uwtable
define internal void @set_peer_cert_chain_info(%struct._TLS_REC*, %struct.ssl_st*) #0 !dbg !3262 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca %struct.ssl_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stack_st_X509*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._TLS_CERT_REC*, align 8
  %12 = alloca %struct.X509_name_st*, align 8
  %13 = alloca %struct.X509_name_entry_st*, align 8
  %14 = alloca %struct._TLS_CERT_ENTRY_REC*, align 8
  %15 = alloca %struct.asn1_string_st*, align 8
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !3263, metadata !2184), !dbg !3264
  store %struct.ssl_st* %1, %struct.ssl_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %4, metadata !3265, metadata !2184), !dbg !3266
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3267, metadata !2184), !dbg !3268
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3269, metadata !2184), !dbg !3270
  store i8* null, i8** %6, align 8, !dbg !3270
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3271, metadata !2184), !dbg !3272
  store i8* null, i8** %7, align 8, !dbg !3272
  call void @llvm.dbg.declare(metadata %struct.stack_st_X509** %8, metadata !3273, metadata !2184), !dbg !3274
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %8, align 8, !dbg !3274
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3275, metadata !2184), !dbg !3276
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3277, metadata !2184), !dbg !3278
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_REC** %11, metadata !3279, metadata !2184), !dbg !3286
  store %struct._TLS_CERT_REC* null, %struct._TLS_CERT_REC** %11, align 8, !dbg !3286
  call void @llvm.dbg.declare(metadata %struct.X509_name_st** %12, metadata !3287, metadata !2184), !dbg !3288
  store %struct.X509_name_st* null, %struct.X509_name_st** %12, align 8, !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.X509_name_entry_st** %13, metadata !3289, metadata !2184), !dbg !3298
  store %struct.X509_name_entry_st* null, %struct.X509_name_entry_st** %13, align 8, !dbg !3298
  call void @llvm.dbg.declare(metadata %struct._TLS_CERT_ENTRY_REC** %14, metadata !3299, metadata !2184), !dbg !3306
  store %struct._TLS_CERT_ENTRY_REC* null, %struct._TLS_CERT_ENTRY_REC** %14, align 8, !dbg !3306
  call void @llvm.dbg.declare(metadata %struct.asn1_string_st** %15, metadata !3307, metadata !2184), !dbg !3308
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %15, align 8, !dbg !3308
  br label %16, !dbg !3309, !llvm.loop !3310

; <label>:16:                                     ; preds = %2
  %17 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3311
  %18 = icmp ne %struct._TLS_REC* %17, null, !dbg !3315
  br i1 %18, label %19, label %20, !dbg !3311

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !3316

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.set_peer_cert_chain_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !3319
  br label %127, !dbg !3322

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3323

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !3325, !llvm.loop !3326

; <label>:23:                                     ; preds = %22
  %24 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3327
  %25 = icmp ne %struct.ssl_st* %24, null, !dbg !3331
  br i1 %25, label %26, label %27, !dbg !3327

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !3332

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.set_peer_cert_chain_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)), !dbg !3335
  br label %127, !dbg !3338

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !3339

; <label>:29:                                     ; preds = %28
  %30 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3341
  %31 = call %struct.stack_st_X509* @SSL_get_peer_cert_chain(%struct.ssl_st* %30), !dbg !3342
  store %struct.stack_st_X509* %31, %struct.stack_st_X509** %8, align 8, !dbg !3343
  %32 = load %struct.stack_st_X509*, %struct.stack_st_X509** %8, align 8, !dbg !3344
  %33 = icmp eq %struct.stack_st_X509* %32, null, !dbg !3346
  br i1 %33, label %34, label %35, !dbg !3347

; <label>:34:                                     ; preds = %29
  br label %127, !dbg !3348

; <label>:35:                                     ; preds = %29
  store i32 0, i32* %9, align 4, !dbg !3349
  br label %36, !dbg !3351

; <label>:36:                                     ; preds = %124, %35
  %37 = load i32, i32* %9, align 4, !dbg !3352
  %38 = load %struct.stack_st_X509*, %struct.stack_st_X509** %8, align 8, !dbg !3355
  %39 = bitcast %struct.stack_st_X509* %38 to %struct.stack_st*, !dbg !3356
  %40 = call i32 @sk_num(%struct.stack_st* %39), !dbg !3355
  %41 = icmp slt i32 %37, %40, !dbg !3357
  br i1 %41, label %42, label %127, !dbg !3358

; <label>:42:                                     ; preds = %36
  %43 = call %struct._TLS_CERT_REC* (...) @tls_cert_create_rec(), !dbg !3359
  store %struct._TLS_CERT_REC* %43, %struct._TLS_CERT_REC** %11, align 8, !dbg !3361
  %44 = load %struct.stack_st_X509*, %struct.stack_st_X509** %8, align 8, !dbg !3362
  %45 = bitcast %struct.stack_st_X509* %44 to %struct.stack_st*, !dbg !3363
  %46 = load i32, i32* %9, align 4, !dbg !3362
  %47 = call i8* @sk_value(%struct.stack_st* %45, i32 %46), !dbg !3364
  %48 = bitcast i8* %47 to %struct.x509_st*, !dbg !3365
  %49 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* %48), !dbg !3366
  store %struct.X509_name_st* %49, %struct.X509_name_st** %12, align 8, !dbg !3368
  store i32 0, i32* %10, align 4, !dbg !3369
  br label %50, !dbg !3371

; <label>:50:                                     ; preds = %79, %42
  %51 = load i32, i32* %10, align 4, !dbg !3372
  %52 = load %struct.X509_name_st*, %struct.X509_name_st** %12, align 8, !dbg !3375
  %53 = call i32 @X509_NAME_entry_count(%struct.X509_name_st* %52), !dbg !3376
  %54 = icmp slt i32 %51, %53, !dbg !3377
  br i1 %54, label %55, label %82, !dbg !3378

; <label>:55:                                     ; preds = %50
  %56 = load %struct.X509_name_st*, %struct.X509_name_st** %12, align 8, !dbg !3379
  %57 = load i32, i32* %10, align 4, !dbg !3381
  %58 = call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* %56, i32 %57), !dbg !3382
  store %struct.X509_name_entry_st* %58, %struct.X509_name_entry_st** %13, align 8, !dbg !3383
  %59 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %13, align 8, !dbg !3384
  %60 = call %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* %59), !dbg !3385
  %61 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* %60), !dbg !3386
  store i32 %61, i32* %5, align 4, !dbg !3388
  %62 = load i32, i32* %5, align 4, !dbg !3389
  %63 = call i8* @OBJ_nid2sn(i32 %62), !dbg !3390
  store i8* %63, i8** %6, align 8, !dbg !3391
  %64 = load i8*, i8** %6, align 8, !dbg !3392
  %65 = icmp eq i8* %64, null, !dbg !3394
  br i1 %65, label %66, label %69, !dbg !3395

; <label>:66:                                     ; preds = %55
  %67 = load i32, i32* %5, align 4, !dbg !3396
  %68 = call i8* @OBJ_nid2ln(i32 %67), !dbg !3397
  store i8* %68, i8** %6, align 8, !dbg !3398
  br label %69, !dbg !3399

; <label>:69:                                     ; preds = %66, %55
  %70 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %13, align 8, !dbg !3400
  %71 = call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* %70), !dbg !3401
  store %struct.asn1_string_st* %71, %struct.asn1_string_st** %15, align 8, !dbg !3402
  %72 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !dbg !3403
  %73 = call i8* @ASN1_STRING_data(%struct.asn1_string_st* %72), !dbg !3404
  store i8* %73, i8** %7, align 8, !dbg !3405
  %74 = load i8*, i8** %6, align 8, !dbg !3406
  %75 = load i8*, i8** %7, align 8, !dbg !3407
  %76 = call %struct._TLS_CERT_ENTRY_REC* @tls_cert_entry_create_rec(i8* %74, i8* %75), !dbg !3408
  store %struct._TLS_CERT_ENTRY_REC* %76, %struct._TLS_CERT_ENTRY_REC** %14, align 8, !dbg !3409
  %77 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %11, align 8, !dbg !3410
  %78 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %14, align 8, !dbg !3411
  call void @tls_cert_rec_append_subject_entry(%struct._TLS_CERT_REC* %77, %struct._TLS_CERT_ENTRY_REC* %78), !dbg !3412
  br label %79, !dbg !3413

; <label>:79:                                     ; preds = %69
  %80 = load i32, i32* %10, align 4, !dbg !3414
  %81 = add nsw i32 %80, 1, !dbg !3414
  store i32 %81, i32* %10, align 4, !dbg !3414
  br label %50, !dbg !3416, !llvm.loop !3417

; <label>:82:                                     ; preds = %50
  %83 = load %struct.stack_st_X509*, %struct.stack_st_X509** %8, align 8, !dbg !3419
  %84 = bitcast %struct.stack_st_X509* %83 to %struct.stack_st*, !dbg !3420
  %85 = load i32, i32* %9, align 4, !dbg !3419
  %86 = call i8* @sk_value(%struct.stack_st* %84, i32 %85), !dbg !3421
  %87 = bitcast i8* %86 to %struct.x509_st*, !dbg !3422
  %88 = call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* %87), !dbg !3423
  store %struct.X509_name_st* %88, %struct.X509_name_st** %12, align 8, !dbg !3424
  store i32 0, i32* %10, align 4, !dbg !3425
  br label %89, !dbg !3427

; <label>:89:                                     ; preds = %118, %82
  %90 = load i32, i32* %10, align 4, !dbg !3428
  %91 = load %struct.X509_name_st*, %struct.X509_name_st** %12, align 8, !dbg !3431
  %92 = call i32 @X509_NAME_entry_count(%struct.X509_name_st* %91), !dbg !3432
  %93 = icmp slt i32 %90, %92, !dbg !3433
  br i1 %93, label %94, label %121, !dbg !3434

; <label>:94:                                     ; preds = %89
  %95 = load %struct.X509_name_st*, %struct.X509_name_st** %12, align 8, !dbg !3435
  %96 = load i32, i32* %10, align 4, !dbg !3437
  %97 = call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* %95, i32 %96), !dbg !3438
  store %struct.X509_name_entry_st* %97, %struct.X509_name_entry_st** %13, align 8, !dbg !3439
  %98 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %13, align 8, !dbg !3440
  %99 = call %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* %98), !dbg !3441
  %100 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* %99), !dbg !3442
  store i32 %100, i32* %5, align 4, !dbg !3444
  %101 = load i32, i32* %5, align 4, !dbg !3445
  %102 = call i8* @OBJ_nid2sn(i32 %101), !dbg !3446
  store i8* %102, i8** %6, align 8, !dbg !3447
  %103 = load i8*, i8** %6, align 8, !dbg !3448
  %104 = icmp eq i8* %103, null, !dbg !3450
  br i1 %104, label %105, label %108, !dbg !3451

; <label>:105:                                    ; preds = %94
  %106 = load i32, i32* %5, align 4, !dbg !3452
  %107 = call i8* @OBJ_nid2ln(i32 %106), !dbg !3453
  store i8* %107, i8** %6, align 8, !dbg !3454
  br label %108, !dbg !3455

; <label>:108:                                    ; preds = %105, %94
  %109 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %13, align 8, !dbg !3456
  %110 = call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* %109), !dbg !3457
  store %struct.asn1_string_st* %110, %struct.asn1_string_st** %15, align 8, !dbg !3458
  %111 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !dbg !3459
  %112 = call i8* @ASN1_STRING_data(%struct.asn1_string_st* %111), !dbg !3460
  store i8* %112, i8** %7, align 8, !dbg !3461
  %113 = load i8*, i8** %6, align 8, !dbg !3462
  %114 = load i8*, i8** %7, align 8, !dbg !3463
  %115 = call %struct._TLS_CERT_ENTRY_REC* @tls_cert_entry_create_rec(i8* %113, i8* %114), !dbg !3464
  store %struct._TLS_CERT_ENTRY_REC* %115, %struct._TLS_CERT_ENTRY_REC** %14, align 8, !dbg !3465
  %116 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %11, align 8, !dbg !3466
  %117 = load %struct._TLS_CERT_ENTRY_REC*, %struct._TLS_CERT_ENTRY_REC** %14, align 8, !dbg !3467
  call void @tls_cert_rec_append_issuer_entry(%struct._TLS_CERT_REC* %116, %struct._TLS_CERT_ENTRY_REC* %117), !dbg !3468
  br label %118, !dbg !3469

; <label>:118:                                    ; preds = %108
  %119 = load i32, i32* %10, align 4, !dbg !3470
  %120 = add nsw i32 %119, 1, !dbg !3470
  store i32 %120, i32* %10, align 4, !dbg !3470
  br label %89, !dbg !3472, !llvm.loop !3473

; <label>:121:                                    ; preds = %89
  %122 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3475
  %123 = load %struct._TLS_CERT_REC*, %struct._TLS_CERT_REC** %11, align 8, !dbg !3476
  call void @tls_rec_append_cert(%struct._TLS_REC* %122, %struct._TLS_CERT_REC* %123), !dbg !3477
  br label %124, !dbg !3478

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %9, align 4, !dbg !3479
  %126 = add nsw i32 %125, 1, !dbg !3479
  store i32 %126, i32* %9, align 4, !dbg !3479
  br label %36, !dbg !3481, !llvm.loop !3482

; <label>:127:                                    ; preds = %20, %27, %34, %36
  ret void, !dbg !3484
}

; Function Attrs: nounwind uwtable
define internal void @set_server_temporary_key_info(%struct._TLS_REC*, %struct.ssl_st*) #0 !dbg !3485 {
  %3 = alloca %struct._TLS_REC*, align 8
  %4 = alloca %struct.ssl_st*, align 8
  %5 = alloca %struct.evp_pkey_st*, align 8
  %6 = alloca %struct.ec_key_st*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._TLS_REC* %0, %struct._TLS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %3, metadata !3486, metadata !2184), !dbg !3487
  store %struct.ssl_st* %1, %struct.ssl_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %4, metadata !3488, metadata !2184), !dbg !3489
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %5, metadata !3490, metadata !2184), !dbg !3491
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %5, align 8, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.ec_key_st** %6, metadata !3492, metadata !2184), !dbg !3493
  store %struct.ec_key_st* null, %struct.ec_key_st** %6, align 8, !dbg !3493
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3494, metadata !2184), !dbg !3495
  store i8* null, i8** %7, align 8, !dbg !3495
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3496, metadata !2184), !dbg !3497
  store i8* null, i8** %8, align 8, !dbg !3497
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3498, metadata !2184), !dbg !3499
  br label %10, !dbg !3500, !llvm.loop !3501

; <label>:10:                                     ; preds = %2
  %11 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3502
  %12 = icmp ne %struct._TLS_REC* %11, null, !dbg !3506
  br i1 %12, label %13, label %14, !dbg !3502

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !3507

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.set_server_temporary_key_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !3510
  br label %69, !dbg !3513

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !3514

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !3516, !llvm.loop !3517

; <label>:17:                                     ; preds = %16
  %18 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3518
  %19 = icmp ne %struct.ssl_st* %18, null, !dbg !3522
  br i1 %19, label %20, label %21, !dbg !3518

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !3523

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.set_server_temporary_key_info, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)), !dbg !3526
  br label %69, !dbg !3529

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !3530

; <label>:23:                                     ; preds = %22
  %24 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !3532
  %25 = bitcast %struct.evp_pkey_st** %5 to i8*, !dbg !3532
  %26 = call i64 @SSL_ctrl(%struct.ssl_st* %24, i32 109, i64 0, i8* %25), !dbg !3532
  %27 = icmp ne i64 %26, 0, !dbg !3532
  br i1 %27, label %28, label %69, !dbg !3534

; <label>:28:                                     ; preds = %23
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3535
  %30 = call i32 @EVP_PKEY_id(%struct.evp_pkey_st* %29), !dbg !3537
  switch i32 %30, label %61 [
    i32 28, label %31
    i32 408, label %37
  ], !dbg !3538

; <label>:31:                                     ; preds = %28
  %32 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3539
  call void @tls_rec_set_ephemeral_key_algorithm(%struct._TLS_REC* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)), !dbg !3541
  %33 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3542
  %34 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3543
  %35 = call i32 @EVP_PKEY_bits(%struct.evp_pkey_st* %34), !dbg !3544
  %36 = sext i32 %35 to i64, !dbg !3544
  call void @tls_rec_set_ephemeral_key_size(%struct._TLS_REC* %33, i64 %36), !dbg !3545
  br label %67, !dbg !3547

; <label>:37:                                     ; preds = %28
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3548
  %39 = call %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st* %38), !dbg !3549
  store %struct.ec_key_st* %39, %struct.ec_key_st** %6, align 8, !dbg !3550
  %40 = load %struct.ec_key_st*, %struct.ec_key_st** %6, align 8, !dbg !3551
  %41 = call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* %40), !dbg !3552
  %42 = call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* %41), !dbg !3553
  store i32 %42, i32* %9, align 4, !dbg !3554
  %43 = load %struct.ec_key_st*, %struct.ec_key_st** %6, align 8, !dbg !3555
  call void @EC_KEY_free(%struct.ec_key_st* %43), !dbg !3556
  %44 = load i32, i32* %9, align 4, !dbg !3557
  %45 = call i8* @OBJ_nid2sn(i32 %44), !dbg !3558
  store i8* %45, i8** %8, align 8, !dbg !3559
  %46 = load i8*, i8** %8, align 8, !dbg !3560
  %47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* %46), !dbg !3561
  store i8* %47, i8** %7, align 8, !dbg !3562
  %48 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3563
  %49 = load i8*, i8** %7, align 8, !dbg !3564
  call void @tls_rec_set_ephemeral_key_algorithm(%struct._TLS_REC* %48, i8* %49), !dbg !3565
  %50 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3566
  %51 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3567
  %52 = call i32 @EVP_PKEY_bits(%struct.evp_pkey_st* %51), !dbg !3568
  %53 = sext i32 %52 to i64, !dbg !3568
  call void @tls_rec_set_ephemeral_key_size(%struct._TLS_REC* %50, i64 %53), !dbg !3569
  br label %54, !dbg !3570, !llvm.loop !3571

; <label>:54:                                     ; preds = %37
  %55 = load i8*, i8** %7, align 8, !dbg !3572
  %56 = icmp ne i8* %55, null, !dbg !3572
  br i1 %56, label %57, label %59, !dbg !3572

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %7, align 8, !dbg !3576
  call void @g_free(i8* %58), !dbg !3579
  store i8* null, i8** %7, align 8, !dbg !3580
  br label %59, !dbg !3581

; <label>:59:                                     ; preds = %57, %54
  br label %60, !dbg !3582

; <label>:60:                                     ; preds = %59
  br label %67, !dbg !3584

; <label>:61:                                     ; preds = %28
  %62 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3585
  call void @tls_rec_set_ephemeral_key_algorithm(%struct._TLS_REC* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !3586
  %63 = load %struct._TLS_REC*, %struct._TLS_REC** %3, align 8, !dbg !3587
  %64 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3588
  %65 = call i32 @EVP_PKEY_bits(%struct.evp_pkey_st* %64), !dbg !3589
  %66 = sext i32 %65 to i64, !dbg !3589
  call void @tls_rec_set_ephemeral_key_size(%struct._TLS_REC* %63, i64 %66), !dbg !3590
  br label %67, !dbg !3591

; <label>:67:                                     ; preds = %61, %60, %31
  %68 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !3592
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %68), !dbg !3593
  br label %69, !dbg !3594

; <label>:69:                                     ; preds = %14, %21, %67, %23
  ret void, !dbg !3595
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_verify(%struct.ssl_st*, %struct.ssl_ctx_st*, i8*, i32, %struct.x509_st*, %struct._SERVER_REC*, %struct._TLS_REC*) #0 !dbg !3596 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssl_st*, align 8
  %10 = alloca %struct.ssl_ctx_st*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.x509_st*, align 8
  %14 = alloca %struct._SERVER_REC*, align 8
  %15 = alloca %struct._TLS_REC*, align 8
  %16 = alloca i64, align 8
  store %struct.ssl_st* %0, %struct.ssl_st** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %9, metadata !3599, metadata !2184), !dbg !3600
  store %struct.ssl_ctx_st* %1, %struct.ssl_ctx_st** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_ctx_st** %10, metadata !3601, metadata !2184), !dbg !3602
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3603, metadata !2184), !dbg !3604
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3605, metadata !2184), !dbg !3606
  store %struct.x509_st* %4, %struct.x509_st** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %13, metadata !3607, metadata !2184), !dbg !3608
  store %struct._SERVER_REC* %5, %struct._SERVER_REC** %14, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %14, metadata !3609, metadata !2184), !dbg !3610
  store %struct._TLS_REC* %6, %struct._TLS_REC** %15, align 8
  call void @llvm.dbg.declare(metadata %struct._TLS_REC** %15, metadata !3611, metadata !2184), !dbg !3612
  call void @llvm.dbg.declare(metadata i64* %16, metadata !3613, metadata !2184), !dbg !3614
  %17 = load %struct.ssl_st*, %struct.ssl_st** %9, align 8, !dbg !3615
  %18 = call i64 @SSL_get_verify_result(%struct.ssl_st* %17), !dbg !3616
  store i64 %18, i64* %16, align 8, !dbg !3617
  %19 = load i64, i64* %16, align 8, !dbg !3618
  %20 = icmp ne i64 %19, 0, !dbg !3620
  br i1 %20, label %21, label %24, !dbg !3621

; <label>:21:                                     ; preds = %7
  %22 = load i64, i64* %16, align 8, !dbg !3622
  %23 = call i8* @X509_verify_cert_error_string(i64 %22), !dbg !3624
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0), i8* %23), !dbg !3625
  store i32 0, i32* %8, align 4, !dbg !3627
  br label %32, !dbg !3627

; <label>:24:                                     ; preds = %7
  %25 = load %struct.x509_st*, %struct.x509_st** %13, align 8, !dbg !3628
  %26 = load i8*, i8** %11, align 8, !dbg !3630
  %27 = call i32 @irssi_ssl_verify_hostname(%struct.x509_st* %25, i8* %26), !dbg !3631
  %28 = icmp ne i32 %27, 0, !dbg !3631
  br i1 %28, label %30, label %29, !dbg !3632

; <label>:29:                                     ; preds = %24
  store i32 0, i32* %8, align 4, !dbg !3633
  br label %32, !dbg !3633

; <label>:30:                                     ; preds = %24
  br label %31

; <label>:31:                                     ; preds = %30
  store i32 1, i32* %8, align 4, !dbg !3635
  br label %32, !dbg !3635

; <label>:32:                                     ; preds = %31, %29, %21
  %33 = load i32, i32* %8, align 4, !dbg !3636
  ret i32 %33, !dbg !3636
}

declare void @tls_rec_free(%struct._TLS_REC*) #2

declare void @X509_free(%struct.x509_st*) #2

declare void @g_free(i8*) #2

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

declare %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st*) #2

declare %struct.ssl_method_st* @SSLv23_client_method() #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st*, i32, i64, i8*) #2

declare void @SSL_CTX_set_default_passwd_cb(%struct.ssl_ctx_st*, i32 (i8*, i32, i32, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_pem_password_callback(i8*, i32, i32, i8*) #0 !dbg !3637 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3638, metadata !2184), !dbg !3639
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3640, metadata !2184), !dbg !3641
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3642, metadata !2184), !dbg !3643
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3644, metadata !2184), !dbg !3645
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3646, metadata !2184), !dbg !3647
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3648, metadata !2184), !dbg !3649
  %12 = load i8*, i8** %9, align 8, !dbg !3650
  %13 = icmp eq i8* %12, null, !dbg !3652
  br i1 %13, label %14, label %15, !dbg !3653

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %5, align 4, !dbg !3654
  br label %31, !dbg !3654

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %9, align 8, !dbg !3655
  store i8* %16, i8** %10, align 8, !dbg !3656
  %17 = load i8*, i8** %9, align 8, !dbg !3657
  %18 = call i64 @strlen(i8* %17) #9, !dbg !3658
  store i64 %18, i64* %11, align 8, !dbg !3659
  %19 = load i64, i64* %11, align 8, !dbg !3660
  %20 = load i32, i32* %7, align 4, !dbg !3662
  %21 = sext i32 %20 to i64, !dbg !3662
  %22 = icmp ugt i64 %19, %21, !dbg !3663
  br i1 %22, label %23, label %24, !dbg !3664

; <label>:23:                                     ; preds = %15
  store i32 0, i32* %5, align 4, !dbg !3665
  br label %31, !dbg !3665

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %6, align 8, !dbg !3666
  %26 = load i8*, i8** %10, align 8, !dbg !3667
  %27 = load i64, i64* %11, align 8, !dbg !3668
  %28 = add i64 %27, 1, !dbg !3669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %28, i32 1, i1 false), !dbg !3670
  %29 = load i64, i64* %11, align 8, !dbg !3671
  %30 = trunc i64 %29 to i32, !dbg !3671
  store i32 %30, i32* %5, align 4, !dbg !3672
  br label %31, !dbg !3672

; <label>:31:                                     ; preds = %24, %23, %14
  %32 = load i32, i32* %5, align 4, !dbg !3673
  ret i32 %32, !dbg !3673
}

declare void @SSL_CTX_set_default_passwd_cb_userdata(%struct.ssl_ctx_st*, i8*) #2

declare i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st*, i8*) #2

declare i8* @convert_home(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare %struct.x509_st* @PEM_read_X509(%struct._IO_FILE*, %struct.x509_st**, i32 (i8*, i32, i32, i8*)*, i8*) #2

declare i32 @X509_cmp_current_time(%struct.asn1_string_st*) #2

declare i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st*, %struct.x509_st*) #2

declare i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st*, i8*, i32) #2

declare i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @SSL_CTX_load_verify_locations(%struct.ssl_ctx_st*, i8*, i8*) #2

declare void @SSL_CTX_free(%struct.ssl_ctx_st*) #2

; Function Attrs: nounwind uwtable
define internal i32 @X509_STORE_up_ref(%struct.x509_store_st*) #0 !dbg !3674 {
  %2 = alloca %struct.x509_store_st*, align 8
  %3 = alloca i32, align 4
  store %struct.x509_store_st* %0, %struct.x509_store_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_store_st** %2, metadata !3677, metadata !2184), !dbg !3678
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3679, metadata !2184), !dbg !3680
  %4 = load %struct.x509_store_st*, %struct.x509_store_st** %2, align 8, !dbg !3681
  %5 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %4, i32 0, i32 16, !dbg !3682
  %6 = call i32 @CRYPTO_add_lock(i32* %5, i32 1, i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 57), !dbg !3683
  store i32 %6, i32* %3, align 4, !dbg !3684
  br label %7, !dbg !3685, !llvm.loop !3686

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !3687
  %9 = icmp sgt i32 %8, 1, !dbg !3691
  br i1 %9, label %10, label %11, !dbg !3687

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !3692

; <label>:11:                                     ; preds = %7
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.X509_STORE_up_ref, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #10, !dbg !3694
  unreachable, !dbg !3694

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !3696

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %3, align 4, !dbg !3698
  %15 = icmp sgt i32 %14, 1, !dbg !3699
  %16 = select i1 %15, i32 1, i32 0, !dbg !3700
  ret i32 %16, !dbg !3701
}

declare void @SSL_CTX_set_cert_store(%struct.ssl_ctx_st*, %struct.x509_store_st*) #2

declare %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st*) #2

declare i32 @SSL_set_fd(%struct.ssl_st*, i32) #2

declare void @SSL_free(%struct.ssl_st*) #2

declare i64 @SSL_ctrl(%struct.ssl_st*, i32, i64, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare void @g_io_channel_init(%struct._GIOChannel*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @CRYPTO_add_lock(i32*, i32, i32, i8*, i32) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_read(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #0 !dbg !3702 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct._GError**, align 8
  %12 = alloca %struct.GIOSSLChannel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !3703, metadata !2184), !dbg !3704
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3705, metadata !2184), !dbg !3706
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3707, metadata !2184), !dbg !3708
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !3709, metadata !2184), !dbg !3710
  store %struct._GError** %4, %struct._GError*** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %11, metadata !3711, metadata !2184), !dbg !3712
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %12, metadata !3713, metadata !2184), !dbg !3714
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !3715
  %18 = bitcast %struct._GIOChannel* %17 to %struct.GIOSSLChannel*, !dbg !3716
  store %struct.GIOSSLChannel* %18, %struct.GIOSSLChannel** %12, align 8, !dbg !3714
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3717, metadata !2184), !dbg !3718
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3719, metadata !2184), !dbg !3720
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3721, metadata !2184), !dbg !3722
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3723, metadata !2184), !dbg !3724
  call void @ERR_clear_error(), !dbg !3725
  %19 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %12, align 8, !dbg !3726
  %20 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %19, i32 0, i32 3, !dbg !3727
  %21 = load %struct.ssl_st*, %struct.ssl_st** %20, align 8, !dbg !3727
  %22 = load i8*, i8** %8, align 8, !dbg !3728
  %23 = load i64, i64* %9, align 8, !dbg !3729
  %24 = trunc i64 %23 to i32, !dbg !3729
  %25 = call i32 @SSL_read(%struct.ssl_st* %21, i8* %22, i32 %24), !dbg !3730
  store i32 %25, i32* %13, align 4, !dbg !3731
  %26 = load i32, i32* %13, align 4, !dbg !3732
  %27 = icmp sle i32 %26, 0, !dbg !3734
  br i1 %27, label %28, label %82, !dbg !3735

; <label>:28:                                     ; preds = %5
  %29 = load i64*, i64** %10, align 8, !dbg !3736
  store i64 0, i64* %29, align 8, !dbg !3738
  %30 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %12, align 8, !dbg !3739
  %31 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %30, i32 0, i32 3, !dbg !3740
  %32 = load %struct.ssl_st*, %struct.ssl_st** %31, align 8, !dbg !3740
  %33 = load i32, i32* %13, align 4, !dbg !3741
  %34 = call i32 @SSL_get_error(%struct.ssl_st* %32, i32 %33), !dbg !3742
  store i32 %34, i32* %14, align 4, !dbg !3743
  %35 = load i32, i32* %14, align 4, !dbg !3744
  %36 = icmp eq i32 %35, 2, !dbg !3746
  br i1 %36, label %40, label %37, !dbg !3747

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %14, align 4, !dbg !3748
  %39 = icmp eq i32 %38, 3, !dbg !3750
  br i1 %39, label %40, label %41, !dbg !3751

; <label>:40:                                     ; preds = %37, %28
  store i32 3, i32* %6, align 4, !dbg !3752
  br label %86, !dbg !3752

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %14, align 4, !dbg !3753
  %43 = icmp eq i32 %42, 6, !dbg !3755
  br i1 %43, label %44, label %45, !dbg !3756

; <label>:44:                                     ; preds = %41
  store i32 2, i32* %6, align 4, !dbg !3757
  br label %86, !dbg !3757

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %14, align 4, !dbg !3758
  %47 = icmp eq i32 %46, 5, !dbg !3760
  br i1 %47, label %48, label %65, !dbg !3761

; <label>:48:                                     ; preds = %45
  %49 = call i64 @ERR_get_error(), !dbg !3762
  %50 = call i8* @ERR_reason_error_string(i64 %49), !dbg !3764
  store i8* %50, i8** %15, align 8, !dbg !3766
  %51 = load i8*, i8** %15, align 8, !dbg !3767
  %52 = icmp eq i8* %51, null, !dbg !3769
  br i1 %52, label %53, label %60, !dbg !3770

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %13, align 4, !dbg !3771
  %55 = icmp eq i32 %54, -1, !dbg !3773
  br i1 %55, label %56, label %60, !dbg !3774

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno_location() #1, !dbg !3775
  %58 = load i32, i32* %57, align 4, !dbg !3776
  %59 = call i8* @strerror(i32 %58) #8, !dbg !3777
  store i8* %59, i8** %15, align 8, !dbg !3778
  br label %60, !dbg !3779

; <label>:60:                                     ; preds = %56, %53, %48
  %61 = load i8*, i8** %15, align 8, !dbg !3780
  %62 = icmp eq i8* %61, null, !dbg !3782
  br i1 %62, label %63, label %64, !dbg !3783

; <label>:63:                                     ; preds = %60
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8** %15, align 8, !dbg !3784
  br label %64, !dbg !3785

; <label>:64:                                     ; preds = %63, %60
  br label %72, !dbg !3786

; <label>:65:                                     ; preds = %45
  %66 = call i64 @ERR_get_error(), !dbg !3787
  %67 = call i8* @ERR_reason_error_string(i64 %66), !dbg !3789
  store i8* %67, i8** %15, align 8, !dbg !3791
  %68 = load i8*, i8** %15, align 8, !dbg !3792
  %69 = icmp eq i8* %68, null, !dbg !3794
  br i1 %69, label %70, label %71, !dbg !3795

; <label>:70:                                     ; preds = %65
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8** %15, align 8, !dbg !3796
  br label %71, !dbg !3797

; <label>:71:                                     ; preds = %70, %65
  br label %72

; <label>:72:                                     ; preds = %71, %64
  br label %73

; <label>:73:                                     ; preds = %72
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i8*, i8** %15, align 8, !dbg !3798
  %76 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* %75), !dbg !3799
  store i8* %76, i8** %16, align 8, !dbg !3800
  %77 = call i32 @g_io_channel_error_quark(), !dbg !3801
  %78 = load i8*, i8** %16, align 8, !dbg !3802
  %79 = call %struct._GError* @g_error_new_literal(i32 %77, i32 8, i8* %78), !dbg !3803
  %80 = load %struct._GError**, %struct._GError*** %11, align 8, !dbg !3805
  store %struct._GError* %79, %struct._GError** %80, align 8, !dbg !3806
  %81 = load i8*, i8** %16, align 8, !dbg !3807
  call void @g_free(i8* %81), !dbg !3808
  store i32 0, i32* %6, align 4, !dbg !3809
  br label %86, !dbg !3809

; <label>:82:                                     ; preds = %5
  %83 = load i32, i32* %13, align 4, !dbg !3810
  %84 = sext i32 %83 to i64, !dbg !3810
  %85 = load i64*, i64** %10, align 8, !dbg !3812
  store i64 %84, i64* %85, align 8, !dbg !3813
  store i32 1, i32* %6, align 4, !dbg !3814
  br label %86, !dbg !3814

; <label>:86:                                     ; preds = %82, %74, %44, %40
  %87 = load i32, i32* %6, align 4, !dbg !3815
  ret i32 %87, !dbg !3815
}

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_write(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #0 !dbg !3816 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct._GError**, align 8
  %12 = alloca %struct.GIOSSLChannel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !3817, metadata !2184), !dbg !3818
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3819, metadata !2184), !dbg !3820
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3821, metadata !2184), !dbg !3822
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !3823, metadata !2184), !dbg !3824
  store %struct._GError** %4, %struct._GError*** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %11, metadata !3825, metadata !2184), !dbg !3826
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %12, metadata !3827, metadata !2184), !dbg !3828
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !3829
  %18 = bitcast %struct._GIOChannel* %17 to %struct.GIOSSLChannel*, !dbg !3830
  store %struct.GIOSSLChannel* %18, %struct.GIOSSLChannel** %12, align 8, !dbg !3828
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3831, metadata !2184), !dbg !3832
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3833, metadata !2184), !dbg !3834
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3835, metadata !2184), !dbg !3836
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3837, metadata !2184), !dbg !3838
  call void @ERR_clear_error(), !dbg !3839
  %19 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %12, align 8, !dbg !3840
  %20 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %19, i32 0, i32 3, !dbg !3841
  %21 = load %struct.ssl_st*, %struct.ssl_st** %20, align 8, !dbg !3841
  %22 = load i8*, i8** %8, align 8, !dbg !3842
  %23 = load i64, i64* %9, align 8, !dbg !3843
  %24 = trunc i64 %23 to i32, !dbg !3843
  %25 = call i32 @SSL_write(%struct.ssl_st* %21, i8* %22, i32 %24), !dbg !3844
  store i32 %25, i32* %13, align 4, !dbg !3845
  %26 = load i32, i32* %13, align 4, !dbg !3846
  %27 = icmp sle i32 %26, 0, !dbg !3848
  br i1 %27, label %28, label %82, !dbg !3849

; <label>:28:                                     ; preds = %5
  %29 = load i64*, i64** %10, align 8, !dbg !3850
  store i64 0, i64* %29, align 8, !dbg !3852
  %30 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %12, align 8, !dbg !3853
  %31 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %30, i32 0, i32 3, !dbg !3854
  %32 = load %struct.ssl_st*, %struct.ssl_st** %31, align 8, !dbg !3854
  %33 = load i32, i32* %13, align 4, !dbg !3855
  %34 = call i32 @SSL_get_error(%struct.ssl_st* %32, i32 %33), !dbg !3856
  store i32 %34, i32* %14, align 4, !dbg !3857
  %35 = load i32, i32* %14, align 4, !dbg !3858
  %36 = icmp eq i32 %35, 2, !dbg !3860
  br i1 %36, label %40, label %37, !dbg !3861

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %14, align 4, !dbg !3862
  %39 = icmp eq i32 %38, 3, !dbg !3864
  br i1 %39, label %40, label %41, !dbg !3865

; <label>:40:                                     ; preds = %37, %28
  store i32 3, i32* %6, align 4, !dbg !3866
  br label %86, !dbg !3866

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %14, align 4, !dbg !3867
  %43 = icmp eq i32 %42, 6, !dbg !3869
  br i1 %43, label %44, label %45, !dbg !3870

; <label>:44:                                     ; preds = %41
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 8, !dbg !3871
  br label %73, !dbg !3872

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %14, align 4, !dbg !3873
  %47 = icmp eq i32 %46, 5, !dbg !3875
  br i1 %47, label %48, label %65, !dbg !3876

; <label>:48:                                     ; preds = %45
  %49 = call i64 @ERR_get_error(), !dbg !3877
  %50 = call i8* @ERR_reason_error_string(i64 %49), !dbg !3879
  store i8* %50, i8** %15, align 8, !dbg !3881
  %51 = load i8*, i8** %15, align 8, !dbg !3882
  %52 = icmp eq i8* %51, null, !dbg !3884
  br i1 %52, label %53, label %60, !dbg !3885

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %13, align 4, !dbg !3886
  %55 = icmp eq i32 %54, -1, !dbg !3888
  br i1 %55, label %56, label %60, !dbg !3889

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno_location() #1, !dbg !3890
  %58 = load i32, i32* %57, align 4, !dbg !3891
  %59 = call i8* @strerror(i32 %58) #8, !dbg !3892
  store i8* %59, i8** %15, align 8, !dbg !3893
  br label %60, !dbg !3894

; <label>:60:                                     ; preds = %56, %53, %48
  %61 = load i8*, i8** %15, align 8, !dbg !3895
  %62 = icmp eq i8* %61, null, !dbg !3897
  br i1 %62, label %63, label %64, !dbg !3898

; <label>:63:                                     ; preds = %60
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8** %15, align 8, !dbg !3899
  br label %64, !dbg !3900

; <label>:64:                                     ; preds = %63, %60
  br label %72, !dbg !3901

; <label>:65:                                     ; preds = %45
  %66 = call i64 @ERR_get_error(), !dbg !3902
  %67 = call i8* @ERR_reason_error_string(i64 %66), !dbg !3904
  store i8* %67, i8** %15, align 8, !dbg !3906
  %68 = load i8*, i8** %15, align 8, !dbg !3907
  %69 = icmp eq i8* %68, null, !dbg !3909
  br i1 %69, label %70, label %71, !dbg !3910

; <label>:70:                                     ; preds = %65
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8** %15, align 8, !dbg !3911
  br label %71, !dbg !3912

; <label>:71:                                     ; preds = %70, %65
  br label %72

; <label>:72:                                     ; preds = %71, %64
  br label %73

; <label>:73:                                     ; preds = %72, %44
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i8*, i8** %15, align 8, !dbg !3913
  %76 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* %75), !dbg !3914
  store i8* %76, i8** %16, align 8, !dbg !3915
  %77 = call i32 @g_io_channel_error_quark(), !dbg !3916
  %78 = load i8*, i8** %16, align 8, !dbg !3917
  %79 = call %struct._GError* @g_error_new_literal(i32 %77, i32 8, i8* %78), !dbg !3918
  %80 = load %struct._GError**, %struct._GError*** %11, align 8, !dbg !3920
  store %struct._GError* %79, %struct._GError** %80, align 8, !dbg !3921
  %81 = load i8*, i8** %16, align 8, !dbg !3922
  call void @g_free(i8* %81), !dbg !3923
  store i32 0, i32* %6, align 4, !dbg !3924
  br label %86, !dbg !3924

; <label>:82:                                     ; preds = %5
  %83 = load i32, i32* %13, align 4, !dbg !3925
  %84 = sext i32 %83 to i64, !dbg !3925
  %85 = load i64*, i64** %10, align 8, !dbg !3927
  store i64 %84, i64* %85, align 8, !dbg !3928
  store i32 1, i32* %6, align 4, !dbg !3929
  br label %86, !dbg !3929

; <label>:86:                                     ; preds = %82, %74, %40
  %87 = load i32, i32* %6, align 4, !dbg !3930
  ret i32 %87, !dbg !3930
}

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_seek(%struct._GIOChannel*, i64, i32, %struct._GError**) #0 !dbg !3931 {
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GError**, align 8
  %9 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !3932, metadata !2184), !dbg !3933
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3934, metadata !2184), !dbg !3935
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3936, metadata !2184), !dbg !3937
  store %struct._GError** %3, %struct._GError*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %8, metadata !3938, metadata !2184), !dbg !3939
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %9, metadata !3940, metadata !2184), !dbg !3941
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !3942
  %11 = bitcast %struct._GIOChannel* %10 to %struct.GIOSSLChannel*, !dbg !3943
  store %struct.GIOSSLChannel* %11, %struct.GIOSSLChannel** %9, align 8, !dbg !3941
  %12 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %9, align 8, !dbg !3944
  %13 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %12, i32 0, i32 2, !dbg !3945
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** %13, align 8, !dbg !3945
  %15 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %14, i32 0, i32 1, !dbg !3946
  %16 = load %struct._GIOFuncs*, %struct._GIOFuncs** %15, align 8, !dbg !3946
  %17 = getelementptr inbounds %struct._GIOFuncs, %struct._GIOFuncs* %16, i32 0, i32 2, !dbg !3947
  %18 = load i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)** %17, align 8, !dbg !3947
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !3948
  %20 = load i64, i64* %6, align 8, !dbg !3949
  %21 = load i32, i32* %7, align 4, !dbg !3950
  %22 = load %struct._GError**, %struct._GError*** %8, align 8, !dbg !3951
  %23 = call i32 %18(%struct._GIOChannel* %19, i64 %20, i32 %21, %struct._GError** %22), !dbg !3944
  ret i32 %23, !dbg !3952
}

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_close(%struct._GIOChannel*, %struct._GError**) #0 !dbg !3953 {
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct._GError**, align 8
  %5 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !3954, metadata !2184), !dbg !3955
  store %struct._GError** %1, %struct._GError*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %4, metadata !3956, metadata !2184), !dbg !3957
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %5, metadata !3958, metadata !2184), !dbg !3959
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !3960
  %7 = bitcast %struct._GIOChannel* %6 to %struct.GIOSSLChannel*, !dbg !3961
  store %struct.GIOSSLChannel* %7, %struct.GIOSSLChannel** %5, align 8, !dbg !3959
  %8 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %5, align 8, !dbg !3962
  %9 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %8, i32 0, i32 2, !dbg !3963
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !3963
  %11 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %10, i32 0, i32 1, !dbg !3964
  %12 = load %struct._GIOFuncs*, %struct._GIOFuncs** %11, align 8, !dbg !3964
  %13 = getelementptr inbounds %struct._GIOFuncs, %struct._GIOFuncs* %12, i32 0, i32 3, !dbg !3965
  %14 = load i32 (%struct._GIOChannel*, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)** %13, align 8, !dbg !3965
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !3966
  %16 = load %struct._GError**, %struct._GError*** %4, align 8, !dbg !3967
  %17 = call i32 %14(%struct._GIOChannel* %15, %struct._GError** %16), !dbg !3962
  ret i32 %17, !dbg !3968
}

; Function Attrs: nounwind uwtable
define internal %struct._GSource* @irssi_ssl_create_watch(%struct._GIOChannel*, i32) #0 !dbg !3969 {
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !3970, metadata !2184), !dbg !3971
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3972, metadata !2184), !dbg !3973
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %5, metadata !3974, metadata !2184), !dbg !3975
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !3976
  %7 = bitcast %struct._GIOChannel* %6 to %struct.GIOSSLChannel*, !dbg !3977
  store %struct.GIOSSLChannel* %7, %struct.GIOSSLChannel** %5, align 8, !dbg !3975
  %8 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %5, align 8, !dbg !3978
  %9 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %8, i32 0, i32 2, !dbg !3979
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %9, align 8, !dbg !3979
  %11 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %10, i32 0, i32 1, !dbg !3980
  %12 = load %struct._GIOFuncs*, %struct._GIOFuncs** %11, align 8, !dbg !3980
  %13 = getelementptr inbounds %struct._GIOFuncs, %struct._GIOFuncs* %12, i32 0, i32 4, !dbg !3981
  %14 = load %struct._GSource* (%struct._GIOChannel*, i32)*, %struct._GSource* (%struct._GIOChannel*, i32)** %13, align 8, !dbg !3981
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !3982
  %16 = load i32, i32* %4, align 4, !dbg !3983
  %17 = call %struct._GSource* %14(%struct._GIOChannel* %15, i32 %16), !dbg !3978
  ret %struct._GSource* %17, !dbg !3984
}

; Function Attrs: nounwind uwtable
define internal void @irssi_ssl_free(%struct._GIOChannel*) #0 !dbg !3985 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %2, metadata !3986, metadata !2184), !dbg !3987
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %3, metadata !3988, metadata !2184), !dbg !3989
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !3990
  %5 = bitcast %struct._GIOChannel* %4 to %struct.GIOSSLChannel*, !dbg !3991
  store %struct.GIOSSLChannel* %5, %struct.GIOSSLChannel** %3, align 8, !dbg !3989
  %6 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %3, align 8, !dbg !3992
  %7 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %6, i32 0, i32 2, !dbg !3993
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !3993
  call void @g_io_channel_unref(%struct._GIOChannel* %8), !dbg !3994
  %9 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %3, align 8, !dbg !3995
  %10 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %9, i32 0, i32 3, !dbg !3996
  %11 = load %struct.ssl_st*, %struct.ssl_st** %10, align 8, !dbg !3996
  call void @SSL_free(%struct.ssl_st* %11), !dbg !3997
  %12 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %3, align 8, !dbg !3998
  %13 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %12, i32 0, i32 4, !dbg !3999
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %13, align 8, !dbg !3999
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %14), !dbg !4000
  %15 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %3, align 8, !dbg !4001
  %16 = bitcast %struct.GIOSSLChannel* %15 to i8*, !dbg !4001
  call void @g_free(i8* %16), !dbg !4002
  ret void, !dbg !4003
}

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_set_flags(%struct._GIOChannel*, i32, %struct._GError**) #0 !dbg !4004 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GError**, align 8
  %7 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !4005, metadata !2184), !dbg !4006
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4007, metadata !2184), !dbg !4008
  store %struct._GError** %2, %struct._GError*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %6, metadata !4009, metadata !2184), !dbg !4010
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %7, metadata !4011, metadata !2184), !dbg !4012
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !4013
  %9 = bitcast %struct._GIOChannel* %8 to %struct.GIOSSLChannel*, !dbg !4014
  store %struct.GIOSSLChannel* %9, %struct.GIOSSLChannel** %7, align 8, !dbg !4012
  %10 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %7, align 8, !dbg !4015
  %11 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %10, i32 0, i32 2, !dbg !4016
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !4016
  %13 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %12, i32 0, i32 1, !dbg !4017
  %14 = load %struct._GIOFuncs*, %struct._GIOFuncs** %13, align 8, !dbg !4017
  %15 = getelementptr inbounds %struct._GIOFuncs, %struct._GIOFuncs* %14, i32 0, i32 6, !dbg !4018
  %16 = load i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)** %15, align 8, !dbg !4018
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !4019
  %18 = load i32, i32* %5, align 4, !dbg !4020
  %19 = load %struct._GError**, %struct._GError*** %6, align 8, !dbg !4021
  %20 = call i32 %16(%struct._GIOChannel* %17, i32 %18, %struct._GError** %19), !dbg !4015
  ret i32 %20, !dbg !4022
}

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_get_flags(%struct._GIOChannel*) #0 !dbg !4023 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca %struct.GIOSSLChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %2, metadata !4024, metadata !2184), !dbg !4025
  call void @llvm.dbg.declare(metadata %struct.GIOSSLChannel** %3, metadata !4026, metadata !2184), !dbg !4027
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !4028
  %5 = bitcast %struct._GIOChannel* %4 to %struct.GIOSSLChannel*, !dbg !4029
  store %struct.GIOSSLChannel* %5, %struct.GIOSSLChannel** %3, align 8, !dbg !4027
  %6 = load %struct.GIOSSLChannel*, %struct.GIOSSLChannel** %3, align 8, !dbg !4030
  %7 = getelementptr inbounds %struct.GIOSSLChannel, %struct.GIOSSLChannel* %6, i32 0, i32 2, !dbg !4031
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !4031
  %9 = getelementptr inbounds %struct._GIOChannel, %struct._GIOChannel* %8, i32 0, i32 1, !dbg !4032
  %10 = load %struct._GIOFuncs*, %struct._GIOFuncs** %9, align 8, !dbg !4032
  %11 = getelementptr inbounds %struct._GIOFuncs, %struct._GIOFuncs* %10, i32 0, i32 7, !dbg !4033
  %12 = load i32 (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*)** %11, align 8, !dbg !4033
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !4034
  %14 = call i32 %12(%struct._GIOChannel* %13), !dbg !4030
  ret i32 %14, !dbg !4035
}

declare i32 @SSL_read(%struct.ssl_st*, i8*, i32) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare %struct._GError* @g_error_new_literal(i32, i32, i8*) #2

declare i32 @g_io_channel_error_quark() #2

declare i32 @SSL_write(%struct.ssl_st*, i8*, i32) #2

declare void @tls_rec_set_protocol_version(%struct._TLS_REC*, i8*) #2

declare i8* @SSL_get_version(%struct.ssl_st*) #2

declare void @tls_rec_set_cipher(%struct._TLS_REC*, i8*) #2

declare i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st*) #2

declare %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st*) #2

declare void @tls_rec_set_cipher_size(%struct._TLS_REC*, i64) #2

declare i32 @SSL_CIPHER_get_bits(%struct.ssl_cipher_st*, i32*) #2

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st*) #2

declare i8* @binary_to_hex(i8*, i64) #2

declare void @tls_rec_set_certificate_fingerprint(%struct._TLS_REC*, i8*) #2

declare void @tls_rec_set_certificate_fingerprint_algorithm(%struct._TLS_REC*, i8*) #2

declare i32 @EVP_PKEY_id(%struct.evp_pkey_st*) #2

declare void @tls_rec_set_public_key_algorithm(%struct._TLS_REC*, i8*) #2

declare void @tls_rec_set_public_key_fingerprint(%struct._TLS_REC*, i8*) #2

declare void @tls_rec_set_public_key_size(%struct._TLS_REC*, i64) #2

declare i32 @EVP_PKEY_bits(%struct.evp_pkey_st*) #2

declare void @tls_rec_set_public_key_fingerprint_algorithm(%struct._TLS_REC*, i8*) #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st*) #2

declare %struct.bio_method_st* @BIO_s_mem() #2

declare i32 @ASN1_TIME_print(%struct.bio_st*, %struct.asn1_string_st*) #2

declare i32 @BIO_read(%struct.bio_st*, i8*, i32) #2

declare i32 @BIO_free(%struct.bio_st*) #2

declare void @tls_rec_set_not_before(%struct._TLS_REC*, i8*) #2

declare void @tls_rec_set_not_after(%struct._TLS_REC*, i8*) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #2

declare %struct.stack_st_X509* @SSL_get_peer_cert_chain(%struct.ssl_st*) #2

declare i32 @sk_num(%struct.stack_st*) #2

declare %struct._TLS_CERT_REC* @tls_cert_create_rec(...) #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st*) #2

declare i8* @sk_value(%struct.stack_st*, i32) #2

declare i32 @X509_NAME_entry_count(%struct.X509_name_st*) #2

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st*, i32) #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st*) #2

declare %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st*) #2

declare i8* @OBJ_nid2sn(i32) #2

declare i8* @OBJ_nid2ln(i32) #2

declare %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st*) #2

declare i8* @ASN1_STRING_data(%struct.asn1_string_st*) #2

declare %struct._TLS_CERT_ENTRY_REC* @tls_cert_entry_create_rec(i8*, i8*) #2

declare void @tls_cert_rec_append_subject_entry(%struct._TLS_CERT_REC*, %struct._TLS_CERT_ENTRY_REC*) #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st*) #2

declare void @tls_cert_rec_append_issuer_entry(%struct._TLS_CERT_REC*, %struct._TLS_CERT_ENTRY_REC*) #2

declare void @tls_rec_append_cert(%struct._TLS_REC*, %struct._TLS_CERT_REC*) #2

declare void @tls_rec_set_ephemeral_key_algorithm(%struct._TLS_REC*, i8*) #2

declare void @tls_rec_set_ephemeral_key_size(%struct._TLS_REC*, i64) #2

declare %struct.ec_key_st* @EVP_PKEY_get1_EC_KEY(%struct.evp_pkey_st*) #2

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st*) #2

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st*) #2

declare void @EC_KEY_free(%struct.ec_key_st*) #2

declare i64 @SSL_get_verify_result(%struct.ssl_st*) #2

declare i8* @X509_verify_cert_error_string(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @irssi_ssl_verify_hostname(%struct.x509_st*, i8*) #0 !dbg !4036 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x509_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.GENERAL_NAME_st*, align 8
  %13 = alloca %struct.stack_st_GENERAL_NAME*, align 8
  store %struct.x509_st* %0, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !4039, metadata !2184), !dbg !4040
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4041, metadata !2184), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4043, metadata !2184), !dbg !4044
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4045, metadata !2184), !dbg !4046
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4047, metadata !2184), !dbg !4048
  store i32 0, i32* %8, align 4, !dbg !4048
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4049, metadata !2184), !dbg !4050
  store i32 0, i32* %9, align 4, !dbg !4050
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4051, metadata !2184), !dbg !4052
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4053, metadata !2184), !dbg !4054
  call void @llvm.dbg.declare(metadata %struct.GENERAL_NAME_st** %12, metadata !4055, metadata !2184), !dbg !4058
  call void @llvm.dbg.declare(metadata %struct.stack_st_GENERAL_NAME** %13, metadata !4059, metadata !2184), !dbg !4060
  %14 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !4061
  %15 = call i8* @X509_get_ext_d2i(%struct.x509_st* %14, i32 85, i32* null, i32* null), !dbg !4062
  %16 = bitcast i8* %15 to %struct.stack_st_GENERAL_NAME*, !dbg !4062
  store %struct.stack_st_GENERAL_NAME* %16, %struct.stack_st_GENERAL_NAME** %13, align 8, !dbg !4063
  %17 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %13, align 8, !dbg !4064
  %18 = icmp ne %struct.stack_st_GENERAL_NAME* %17, null, !dbg !4064
  br i1 %18, label %19, label %65, !dbg !4066

; <label>:19:                                     ; preds = %2
  %20 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %13, align 8, !dbg !4067
  %21 = bitcast %struct.stack_st_GENERAL_NAME* %20 to %struct.stack_st*, !dbg !4069
  %22 = call i32 @sk_num(%struct.stack_st* %21), !dbg !4067
  store i32 %22, i32* %7, align 4, !dbg !4070
  store i32 0, i32* %6, align 4, !dbg !4071
  br label %23, !dbg !4073

; <label>:23:                                     ; preds = %59, %19
  %24 = load i32, i32* %6, align 4, !dbg !4074
  %25 = load i32, i32* %7, align 4, !dbg !4077
  %26 = icmp slt i32 %24, %25, !dbg !4078
  br i1 %26, label %27, label %31, !dbg !4079

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %8, align 4, !dbg !4080
  %29 = icmp ne i32 %28, 0, !dbg !4082
  %30 = xor i1 %29, true, !dbg !4082
  br label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %62, !dbg !4083

; <label>:33:                                     ; preds = %31
  %34 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %13, align 8, !dbg !4085
  %35 = bitcast %struct.stack_st_GENERAL_NAME* %34 to %struct.stack_st*, !dbg !4087
  %36 = load i32, i32* %6, align 4, !dbg !4085
  %37 = call i8* @sk_value(%struct.stack_st* %35, i32 %36), !dbg !4088
  %38 = bitcast i8* %37 to %struct.GENERAL_NAME_st*, !dbg !4089
  store %struct.GENERAL_NAME_st* %38, %struct.GENERAL_NAME_st** %12, align 8, !dbg !4090
  %39 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %12, align 8, !dbg !4091
  %40 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %39, i32 0, i32 0, !dbg !4093
  %41 = load i32, i32* %40, align 8, !dbg !4093
  %42 = icmp ne i32 %41, 2, !dbg !4094
  br i1 %42, label %43, label %44, !dbg !4095

; <label>:43:                                     ; preds = %33
  br label %59, !dbg !4096

; <label>:44:                                     ; preds = %33
  store i32 1, i32* %9, align 4, !dbg !4097
  %45 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %12, align 8, !dbg !4098
  %46 = call i8* @tls_dns_name(%struct.GENERAL_NAME_st* %45), !dbg !4099
  store i8* %46, i8** %10, align 8, !dbg !4100
  %47 = load i8*, i8** %10, align 8, !dbg !4101
  %48 = icmp ne i8* %47, null, !dbg !4101
  br i1 %48, label %49, label %58, !dbg !4103

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %10, align 8, !dbg !4104
  %51 = load i8, i8* %50, align 1, !dbg !4106
  %52 = sext i8 %51 to i32, !dbg !4106
  %53 = icmp ne i32 %52, 0, !dbg !4106
  br i1 %53, label %54, label %58, !dbg !4107

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %10, align 8, !dbg !4108
  %56 = load i8*, i8** %5, align 8, !dbg !4110
  %57 = call i32 @match_hostname(i8* %55, i8* %56), !dbg !4111
  store i32 %57, i32* %8, align 4, !dbg !4112
  br label %58, !dbg !4113

; <label>:58:                                     ; preds = %54, %49, %44
  br label %59, !dbg !4114

; <label>:59:                                     ; preds = %58, %43
  %60 = load i32, i32* %6, align 4, !dbg !4115
  %61 = add nsw i32 %60, 1, !dbg !4115
  store i32 %61, i32* %6, align 4, !dbg !4115
  br label %23, !dbg !4117, !llvm.loop !4118

; <label>:62:                                     ; preds = %31
  %63 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %13, align 8, !dbg !4120
  %64 = bitcast %struct.stack_st_GENERAL_NAME* %63 to %struct.stack_st*, !dbg !4121
  call void @sk_pop_free(%struct.stack_st* %64, void (i8*)* bitcast (void (%struct.GENERAL_NAME_st*)* @GENERAL_NAME_free to void (i8*)*)), !dbg !4120
  br label %65, !dbg !4122

; <label>:65:                                     ; preds = %62, %2
  %66 = load i32, i32* %9, align 4, !dbg !4123
  %67 = icmp ne i32 %66, 0, !dbg !4123
  br i1 %67, label %68, label %75, !dbg !4125

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %8, align 4, !dbg !4126
  %70 = icmp ne i32 %69, 0, !dbg !4126
  br i1 %70, label %73, label %71, !dbg !4129

; <label>:71:                                     ; preds = %68
  %72 = load i8*, i8** %5, align 8, !dbg !4130
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i32 0, i32 0), i8* %72), !dbg !4132
  br label %73, !dbg !4133

; <label>:73:                                     ; preds = %71, %68
  %74 = load i32, i32* %8, align 4, !dbg !4134
  store i32 %74, i32* %3, align 4, !dbg !4135
  br label %101, !dbg !4135

; <label>:75:                                     ; preds = %65
  %76 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !4136
  %77 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* %76), !dbg !4138
  %78 = call i8* @tls_text_name(%struct.X509_name_st* %77, i32 13), !dbg !4139
  store i8* %78, i8** %11, align 8, !dbg !4141
  %79 = load i8*, i8** %11, align 8, !dbg !4142
  %80 = icmp ne i8* %79, null, !dbg !4142
  br i1 %80, label %81, label %96, !dbg !4144

; <label>:81:                                     ; preds = %75
  %82 = load i8*, i8** %11, align 8, !dbg !4145
  %83 = load i8, i8* %82, align 1, !dbg !4147
  %84 = sext i8 %83 to i32, !dbg !4147
  %85 = icmp ne i32 %84, 0, !dbg !4147
  br i1 %85, label %86, label %96, !dbg !4148

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %11, align 8, !dbg !4149
  %88 = load i8*, i8** %5, align 8, !dbg !4151
  %89 = call i32 @match_hostname(i8* %87, i8* %88), !dbg !4152
  store i32 %89, i32* %8, align 4, !dbg !4153
  %90 = load i32, i32* %8, align 4, !dbg !4154
  %91 = icmp ne i32 %90, 0, !dbg !4154
  br i1 %91, label %95, label %92, !dbg !4156

; <label>:92:                                     ; preds = %86
  %93 = load i8*, i8** %11, align 8, !dbg !4157
  %94 = load i8*, i8** %5, align 8, !dbg !4159
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i32 0, i32 0), i8* %93, i8* %94), !dbg !4160
  br label %95, !dbg !4161

; <label>:95:                                     ; preds = %92, %86
  br label %97, !dbg !4162

; <label>:96:                                     ; preds = %81, %75
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.42, i32 0, i32 0)), !dbg !4163
  br label %97

; <label>:97:                                     ; preds = %96, %95
  %98 = load i8*, i8** %11, align 8, !dbg !4165
  call void @free(i8* %98) #8, !dbg !4166
  br label %99

; <label>:99:                                     ; preds = %97
  %100 = load i32, i32* %8, align 4, !dbg !4167
  store i32 %100, i32* %3, align 4, !dbg !4168
  br label %101, !dbg !4168

; <label>:101:                                    ; preds = %99, %73
  %102 = load i32, i32* %3, align 4, !dbg !4169
  ret i32 %102, !dbg !4169
}

declare i8* @X509_get_ext_d2i(%struct.x509_st*, i32, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i8* @tls_dns_name(%struct.GENERAL_NAME_st*) #0 !dbg !4170 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GENERAL_NAME_st*, align 8
  %4 = alloca i8*, align 8
  store %struct.GENERAL_NAME_st* %0, %struct.GENERAL_NAME_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GENERAL_NAME_st** %3, metadata !4173, metadata !2184), !dbg !4174
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4175, metadata !2184), !dbg !4176
  %5 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %3, align 8, !dbg !4177
  %6 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %5, i32 0, i32 1, !dbg !4179
  %7 = bitcast %union.anon.6* %6 to %struct.asn1_string_st**, !dbg !4180
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %7, align 8, !dbg !4180
  %9 = call i32 @ASN1_STRING_type(%struct.asn1_string_st* %8), !dbg !4181
  %10 = icmp ne i32 %9, 22, !dbg !4182
  br i1 %10, label %11, label %12, !dbg !4183

; <label>:11:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0)), !dbg !4184
  store i8* null, i8** %2, align 8, !dbg !4186
  br label %29, !dbg !4186

; <label>:12:                                     ; preds = %1
  %13 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %3, align 8, !dbg !4187
  %14 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %13, i32 0, i32 1, !dbg !4188
  %15 = bitcast %union.anon.6* %14 to %struct.asn1_string_st**, !dbg !4189
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %15, align 8, !dbg !4189
  %17 = call i8* @ASN1_STRING_data(%struct.asn1_string_st* %16), !dbg !4190
  store i8* %17, i8** %4, align 8, !dbg !4191
  %18 = load i8*, i8** %4, align 8, !dbg !4192
  %19 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %3, align 8, !dbg !4194
  %20 = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %19, i32 0, i32 1, !dbg !4195
  %21 = bitcast %union.anon.6* %20 to %struct.asn1_string_st**, !dbg !4196
  %22 = load %struct.asn1_string_st*, %struct.asn1_string_st** %21, align 8, !dbg !4196
  %23 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* %22), !dbg !4197
  %24 = call i32 @has_internal_nul(i8* %18, i32 %23), !dbg !4198
  %25 = icmp ne i32 %24, 0, !dbg !4200
  br i1 %25, label %26, label %27, !dbg !4201

; <label>:26:                                     ; preds = %12
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i32 0, i32 0)), !dbg !4202
  store i8* null, i8** %2, align 8, !dbg !4204
  br label %29, !dbg !4204

; <label>:27:                                     ; preds = %12
  %28 = load i8*, i8** %4, align 8, !dbg !4205
  store i8* %28, i8** %2, align 8, !dbg !4206
  br label %29, !dbg !4206

; <label>:29:                                     ; preds = %27, %26, %11
  %30 = load i8*, i8** %2, align 8, !dbg !4207
  ret i8* %30, !dbg !4207
}

; Function Attrs: nounwind uwtable
define internal i32 @match_hostname(i8*, i8*) #0 !dbg !4208 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4211, metadata !2184), !dbg !4212
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4213, metadata !2184), !dbg !4214
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4215, metadata !2184), !dbg !4216
  %7 = load i8*, i8** %4, align 8, !dbg !4217
  %8 = load i8*, i8** %5, align 8, !dbg !4219
  %9 = call i32 @strcasecmp(i8* %7, i8* %8) #9, !dbg !4220
  %10 = icmp ne i32 %9, 0, !dbg !4220
  br i1 %10, label %12, label %11, !dbg !4221

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !4222
  br label %46, !dbg !4222

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !4224
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !4224
  %15 = load i8, i8* %14, align 1, !dbg !4224
  %16 = sext i8 %15 to i32, !dbg !4224
  %17 = icmp eq i32 %16, 42, !dbg !4226
  br i1 %17, label %18, label %44, !dbg !4227

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !4228
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !4228
  %21 = load i8, i8* %20, align 1, !dbg !4228
  %22 = sext i8 %21 to i32, !dbg !4228
  %23 = icmp eq i32 %22, 46, !dbg !4230
  br i1 %23, label %24, label %44, !dbg !4231

; <label>:24:                                     ; preds = %18
  %25 = load i8*, i8** %4, align 8, !dbg !4232
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4232
  %27 = load i8, i8* %26, align 1, !dbg !4232
  %28 = sext i8 %27 to i32, !dbg !4232
  %29 = icmp ne i32 %28, 0, !dbg !4234
  br i1 %29, label %30, label %44, !dbg !4235

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %5, align 8, !dbg !4236
  %32 = call i8* @strchr(i8* %31, i32 46) #9, !dbg !4238
  store i8* %32, i8** %6, align 8, !dbg !4239
  %33 = load i8*, i8** %6, align 8, !dbg !4240
  %34 = icmp ne i8* %33, null, !dbg !4242
  br i1 %34, label %35, label %43, !dbg !4243

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %6, align 8, !dbg !4244
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !4246
  %38 = load i8*, i8** %4, align 8, !dbg !4247
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !4248
  %40 = call i32 @strcasecmp(i8* %37, i8* %39) #9, !dbg !4249
  %41 = icmp ne i32 %40, 0, !dbg !4249
  br i1 %41, label %43, label %42, !dbg !4250

; <label>:42:                                     ; preds = %35
  store i32 1, i32* %3, align 4, !dbg !4251
  br label %46, !dbg !4251

; <label>:43:                                     ; preds = %35, %30
  br label %44, !dbg !4253

; <label>:44:                                     ; preds = %43, %24, %18, %12
  br label %45

; <label>:45:                                     ; preds = %44
  store i32 0, i32* %3, align 4, !dbg !4254
  br label %46, !dbg !4254

; <label>:46:                                     ; preds = %45, %42, %11
  %47 = load i32, i32* %3, align 4, !dbg !4255
  ret i32 %47, !dbg !4255
}

declare void @sk_pop_free(%struct.stack_st*, void (i8*)*) #2

declare void @GENERAL_NAME_free(%struct.GENERAL_NAME_st*) #2

; Function Attrs: nounwind uwtable
define internal i8* @tls_text_name(%struct.X509_name_st*, i32) #0 !dbg !4256 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.X509_name_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.X509_name_entry_st*, align 8
  %8 = alloca %struct.asn1_string_st*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.X509_name_st* %0, %struct.X509_name_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.X509_name_st** %4, metadata !4259, metadata !2184), !dbg !4260
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4261, metadata !2184), !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4263, metadata !2184), !dbg !4264
  call void @llvm.dbg.declare(metadata %struct.X509_name_entry_st** %7, metadata !4265, metadata !2184), !dbg !4266
  call void @llvm.dbg.declare(metadata %struct.asn1_string_st** %8, metadata !4267, metadata !2184), !dbg !4268
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4269, metadata !2184), !dbg !4270
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4271, metadata !2184), !dbg !4272
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4273, metadata !2184), !dbg !4274
  %12 = load %struct.X509_name_st*, %struct.X509_name_st** %4, align 8, !dbg !4275
  %13 = icmp eq %struct.X509_name_st* %12, null, !dbg !4277
  br i1 %13, label %19, label %14, !dbg !4278

; <label>:14:                                     ; preds = %2
  %15 = load %struct.X509_name_st*, %struct.X509_name_st** %4, align 8, !dbg !4279
  %16 = load i32, i32* %5, align 4, !dbg !4281
  %17 = call i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st* %15, i32 %16, i32 -1), !dbg !4282
  store i32 %17, i32* %6, align 4, !dbg !4283
  %18 = icmp slt i32 %17, 0, !dbg !4284
  br i1 %18, label %19, label %20, !dbg !4285

; <label>:19:                                     ; preds = %14, %2
  store i8* null, i8** %3, align 8, !dbg !4286
  br label %58, !dbg !4286

; <label>:20:                                     ; preds = %14
  %21 = load %struct.X509_name_st*, %struct.X509_name_st** %4, align 8, !dbg !4288
  %22 = load i32, i32* %6, align 4, !dbg !4289
  %23 = call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* %21, i32 %22), !dbg !4290
  store %struct.X509_name_entry_st* %23, %struct.X509_name_entry_st** %7, align 8, !dbg !4291
  br label %24, !dbg !4292, !llvm.loop !4293

; <label>:24:                                     ; preds = %20
  %25 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %7, align 8, !dbg !4294
  %26 = icmp ne %struct.X509_name_entry_st* %25, null, !dbg !4298
  br i1 %26, label %27, label %28, !dbg !4294

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !4299

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tls_text_name, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0)), !dbg !4302
  store i8* null, i8** %3, align 8, !dbg !4305
  br label %58, !dbg !4305

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !4306

; <label>:30:                                     ; preds = %29
  %31 = load %struct.X509_name_entry_st*, %struct.X509_name_entry_st** %7, align 8, !dbg !4308
  %32 = call %struct.asn1_string_st* @X509_NAME_ENTRY_get_data(%struct.X509_name_entry_st* %31), !dbg !4309
  store %struct.asn1_string_st* %32, %struct.asn1_string_st** %8, align 8, !dbg !4310
  br label %33, !dbg !4311, !llvm.loop !4312

; <label>:33:                                     ; preds = %30
  %34 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !dbg !4313
  %35 = icmp ne %struct.asn1_string_st* %34, null, !dbg !4317
  br i1 %35, label %36, label %37, !dbg !4313

; <label>:36:                                     ; preds = %33
  br label %38, !dbg !4318

; <label>:37:                                     ; preds = %33
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tls_text_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)), !dbg !4321
  store i8* null, i8** %3, align 8, !dbg !4324
  br label %58, !dbg !4324

; <label>:38:                                     ; preds = %36
  br label %39, !dbg !4325

; <label>:39:                                     ; preds = %38
  %40 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !dbg !4327
  %41 = call i32 @ASN1_STRING_to_UTF8(i8** %10, %struct.asn1_string_st* %40), !dbg !4329
  store i32 %41, i32* %9, align 4, !dbg !4330
  %42 = icmp slt i32 %41, 0, !dbg !4331
  br i1 %42, label %43, label %46, !dbg !4332

; <label>:43:                                     ; preds = %39
  %44 = load %struct.asn1_string_st*, %struct.asn1_string_st** %8, align 8, !dbg !4333
  %45 = call i32 @ASN1_STRING_type(%struct.asn1_string_st* %44), !dbg !4335
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i32 %45), !dbg !4336
  store i8* null, i8** %3, align 8, !dbg !4338
  br label %58, !dbg !4338

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %10, align 8, !dbg !4339
  %48 = load i32, i32* %9, align 4, !dbg !4341
  %49 = call i32 @has_internal_nul(i8* %47, i32 %48), !dbg !4342
  %50 = icmp ne i32 %49, 0, !dbg !4342
  br i1 %50, label %51, label %53, !dbg !4343

; <label>:51:                                     ; preds = %46
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0)), !dbg !4344
  %52 = load i8*, i8** %10, align 8, !dbg !4346
  call void @CRYPTO_free(i8* %52), !dbg !4346
  store i8* null, i8** %3, align 8, !dbg !4347
  br label %58, !dbg !4347

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %10, align 8, !dbg !4348
  %55 = call noalias i8* @g_strdup(i8* %54), !dbg !4349
  store i8* %55, i8** %11, align 8, !dbg !4350
  %56 = load i8*, i8** %10, align 8, !dbg !4351
  call void @CRYPTO_free(i8* %56), !dbg !4351
  %57 = load i8*, i8** %11, align 8, !dbg !4352
  store i8* %57, i8** %3, align 8, !dbg !4353
  br label %58, !dbg !4353

; <label>:58:                                     ; preds = %53, %51, %43, %37, %28, %19
  %59 = load i8*, i8** %3, align 8, !dbg !4354
  ret i8* %59, !dbg !4354
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @ASN1_STRING_type(%struct.asn1_string_st*) #2

; Function Attrs: nounwind uwtable
define internal i32 @has_internal_nul(i8*, i32) #0 !dbg !4355 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4358, metadata !2184), !dbg !4359
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4360, metadata !2184), !dbg !4361
  br label %5, !dbg !4362

; <label>:5:                                      ; preds = %19, %2
  %6 = load i32, i32* %4, align 4, !dbg !4363
  %7 = icmp sgt i32 %6, 0, !dbg !4365
  br i1 %7, label %8, label %17, !dbg !4366

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !4367
  %10 = sub nsw i32 %9, 1, !dbg !4369
  %11 = sext i32 %10 to i64, !dbg !4370
  %12 = load i8*, i8** %3, align 8, !dbg !4370
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !4370
  %14 = load i8, i8* %13, align 1, !dbg !4370
  %15 = sext i8 %14 to i32, !dbg !4370
  %16 = icmp eq i32 %15, 0, !dbg !4371
  br label %17

; <label>:17:                                     ; preds = %8, %5
  %18 = phi i1 [ false, %5 ], [ %16, %8 ]
  br i1 %18, label %19, label %22, !dbg !4372

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %4, align 4, !dbg !4374
  %21 = add nsw i32 %20, -1, !dbg !4374
  store i32 %21, i32* %4, align 4, !dbg !4374
  br label %5, !dbg !4375, !llvm.loop !4377

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8, !dbg !4378
  %24 = call i64 @strlen(i8* %23) #9, !dbg !4379
  %25 = load i32, i32* %4, align 4, !dbg !4380
  %26 = sext i32 %25 to i64, !dbg !4380
  %27 = icmp ne i64 %24, %26, !dbg !4381
  %28 = zext i1 %27 to i32, !dbg !4381
  ret i32 %28, !dbg !4382
}

declare i32 @ASN1_STRING_length(%struct.asn1_string_st*) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i32 @X509_NAME_get_index_by_NID(%struct.X509_name_st*, i32, i32) #2

declare i32 @ASN1_STRING_to_UTF8(i8**, %struct.asn1_string_st*) #2

declare void @CRYPTO_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2176, !2177}
!llvm.ident = !{!2178}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !58, globals: !2172)
!1 = !DIFile(filename: "line61-network-openssl.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !22, !27, !36, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 69, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!19 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!20 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!21 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 77, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!25 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!26 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 31, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "G_IO_IN", value: 1)
!31 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!32 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!33 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!34 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!35 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 84, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!39 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!40 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!41 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!42 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!43 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!44 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!45 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!46 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 54, size: 32, align: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57}
!49 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_FBIG", value: 0)
!50 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_INVAL", value: 1)
!51 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_IO", value: 2)
!52 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_ISDIR", value: 3)
!53 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_NOSPC", value: 4)
!54 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_NXIO", value: 5)
!55 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_OVERFLOW", value: 6)
!56 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_PIPE", value: 7)
!57 = !DIEnumerator(name: "G_IO_CHANNEL_ERROR_FAILED", value: 8)
!58 = !{!59, !60, !64, !66, !307, !203, !88, !2133, !401, !2134, !2169}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOSSLChannel", file: !68, line: 76, baseType: !69)
!68 = !DIFile(filename: "network-openssl.c", directory: "/home/lichi/Desktop/irssi/task1")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 66, size: 1344, align: 64, elements: !70)
!70 = !{!71, !255, !256, !257, !1951, !1952, !1953, !2132}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !69, file: !68, line: 68, baseType: !72, size: 896, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !16, line: 41, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !16, line: 97, size: 896, align: 64, elements: !74)
!74 = !{!75, !78, !222, !223, !228, !229, !230, !231, !232, !241, !242, !243, !247, !248, !249, !250, !251, !252, !253, !254}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !73, file: !16, line: 100, baseType: !76, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !62, line: 49, baseType: !77)
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !73, file: !16, line: 101, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !16, line: 42, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !16, line: 131, size: 512, align: 64, elements: !82)
!82 = !{!83, !106, !112, !119, !123, !209, !213, !218}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !81, file: !16, line: 133, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88, !60, !89, !92, !93}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !16, line: 75, baseType: !15)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !90, line: 66, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !96, line: 42, baseType: !97)
!96 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !96, line: 44, size: 128, align: 64, elements: !98)
!98 = !{!99, !104, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !97, file: !96, line: 46, baseType: !100, size: 32, align: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !101, line: 36, baseType: !102)
!101 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !90, line: 45, baseType: !103)
!103 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !97, file: !96, line: 47, baseType: !76, size: 32, align: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !97, file: !96, line: 48, baseType: !60, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !81, file: !16, line: 138, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!87, !88, !110, !89, !92, !93}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !81, file: !16, line: 143, baseType: !113, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!87, !88, !116, !118, !93}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !90, line: 51, baseType: !117)
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !16, line: 82, baseType: !22)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !81, file: !16, line: 147, baseType: !120, size: 64, align: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!87, !88, !93}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !81, file: !16, line: 149, baseType: !124, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !88, !208}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !28, line: 64, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !28, line: 171, size: 768, align: 64, elements: !130)
!130 = !{!131, !133, !154, !183, !185, !189, !190, !191, !192, !200, !201, !202, !204}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !129, file: !28, line: 174, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !62, line: 77, baseType: !59)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !129, file: !28, line: 175, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !28, line: 77, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !28, line: 196, size: 192, align: 64, elements: !137)
!137 = !{!138, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !136, file: !28, line: 198, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !132}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !136, file: !28, line: 199, baseType: !139, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !136, file: !28, line: 200, baseType: !144, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !132, !127, !147, !153}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !28, line: 155, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !132}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !62, line: 50, baseType: !76)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !129, file: !28, line: 177, baseType: !155, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !28, line: 130, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !28, line: 214, size: 384, align: 64, elements: !159)
!159 = !{!160, !165, !169, !173, !177, !178}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !158, file: !28, line: 216, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!152, !127, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !158, file: !28, line: 218, baseType: !166, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!152, !127}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !158, file: !28, line: 219, baseType: !170, size: 64, align: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!152, !127, !148, !132}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !158, file: !28, line: 222, baseType: !174, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !127}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !158, file: !28, line: 226, baseType: !148, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !158, file: !28, line: 227, baseType: !179, size: 64, align: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !28, line: 212, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !129, file: !28, line: 178, baseType: !184, size: 32, align: 32, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !62, line: 55, baseType: !103)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !129, file: !28, line: 180, baseType: !186, size: 64, align: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !28, line: 48, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !28, line: 48, flags: DIFlagFwdDecl)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !129, file: !28, line: 182, baseType: !76, size: 32, align: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !28, line: 183, baseType: !184, size: 32, align: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !129, file: !28, line: 184, baseType: !184, size: 32, align: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !129, file: !28, line: 186, baseType: !193, size: 64, align: 64, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !195, line: 37, baseType: !196)
!195 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !195, line: 39, size: 128, align: 64, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !196, file: !195, line: 41, baseType: !132, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !195, line: 42, baseType: !193, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !28, line: 188, baseType: !127, size: 64, align: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !28, line: 189, baseType: !127, size: 64, align: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !28, line: 191, baseType: !203, size: 64, align: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !129, file: !28, line: 193, baseType: !205, size: 64, align: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !28, line: 65, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !28, line: 65, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !28, line: 39, baseType: !27)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !81, file: !16, line: 151, baseType: !210, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !88}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !81, file: !16, line: 152, baseType: !214, size: 64, align: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!87, !88, !217, !93}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !16, line: 95, baseType: !36)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !81, file: !16, line: 155, baseType: !219, size: 64, align: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!217, !88}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !73, file: !16, line: 103, baseType: !60, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !73, file: !16, line: 104, baseType: !224, size: 64, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !225, line: 77, baseType: !226)
!225 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !225, line: 77, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !73, file: !16, line: 105, baseType: !224, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !73, file: !16, line: 106, baseType: !60, size: 64, align: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !73, file: !16, line: 107, baseType: !184, size: 32, align: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !73, file: !16, line: 109, baseType: !89, size: 64, align: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !73, file: !16, line: 110, baseType: !233, size: 64, align: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !235, line: 39, baseType: !236)
!235 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !235, line: 41, size: 192, align: 64, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !236, file: !235, line: 43, baseType: !60, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !236, file: !235, line: 44, baseType: !89, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !236, file: !235, line: 45, baseType: !89, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !73, file: !16, line: 111, baseType: !233, size: 64, align: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !73, file: !16, line: 112, baseType: !233, size: 64, align: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !73, file: !16, line: 113, baseType: !244, size: 48, align: 8, offset: 704)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 48, align: 8, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 6)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !73, file: !16, line: 117, baseType: !184, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !73, file: !16, line: 118, baseType: !184, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !73, file: !16, line: 119, baseType: !184, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !73, file: !16, line: 120, baseType: !184, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !73, file: !16, line: 121, baseType: !184, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !73, file: !16, line: 122, baseType: !184, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !73, file: !16, line: 124, baseType: !132, size: 64, align: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !73, file: !16, line: 125, baseType: !132, size: 64, align: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !69, file: !68, line: 69, baseType: !76, size: 32, align: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "giochan", scope: !69, file: !68, line: 70, baseType: !88, size: 64, align: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !69, file: !68, line: 71, baseType: !258, size: 64, align: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !260, line: 178, baseType: !261)
!260 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/irssi/task1")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !262, line: 1422, size: 6592, align: 64, elements: !263)
!262 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/irssi/task1")
!263 = !{!264, !265, !266, !1480, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1610, !1765, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1891, !1892, !1893, !1894, !1895, !1896, !1899, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1919, !1924, !1925, !1932, !1933, !1934, !1935, !1936, !1937, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !261, file: !262, line: 1427, baseType: !77, size: 32, align: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !262, line: 1429, baseType: !77, size: 32, align: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !261, file: !262, line: 1431, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !262, line: 374, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !262, line: 438, size: 1856, align: 64, elements: !271)
!271 = !{!272, !273, !277, !281, !282, !283, !284, !288, !289, !295, !296, !297, !298, !303, !309, !313, !314, !318, !1438, !1442, !1446, !1450, !1454, !1458, !1464, !1468, !1471, !1472, !1476}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !270, file: !262, line: 439, baseType: !77, size: 32, align: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !270, file: !262, line: 440, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!77, !258}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !270, file: !262, line: 441, baseType: !278, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !258}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !270, file: !262, line: 442, baseType: !278, size: 64, align: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !270, file: !262, line: 443, baseType: !274, size: 64, align: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !270, file: !262, line: 444, baseType: !274, size: 64, align: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !270, file: !262, line: 445, baseType: !285, size: 64, align: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!77, !258, !59, !77}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !270, file: !262, line: 446, baseType: !285, size: 64, align: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !270, file: !262, line: 447, baseType: !290, size: 64, align: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!77, !258, !293, !77}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !270, file: !262, line: 448, baseType: !274, size: 64, align: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !270, file: !262, line: 449, baseType: !274, size: 64, align: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !270, file: !262, line: 450, baseType: !274, size: 64, align: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !270, file: !262, line: 451, baseType: !299, size: 64, align: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!117, !258, !77, !77, !77, !117, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !270, file: !262, line: 453, baseType: !304, size: 64, align: 64, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!77, !258, !77, !307, !77, !77}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !270, file: !262, line: 455, baseType: !310, size: 64, align: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!77, !258, !77, !293, !77}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !270, file: !262, line: 456, baseType: !274, size: 64, align: 64, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !270, file: !262, line: 457, baseType: !315, size: 64, align: 64, offset: 1024)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!117, !258, !77, !117, !59}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !270, file: !262, line: 458, baseType: !319, size: 64, align: 64, offset: 1088)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!117, !322, !77, !117, !59}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !260, line: 179, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !262, line: 925, size: 6400, align: 64, elements: !325)
!325 = !{!326, !327, !345, !346, !1046, !1051, !1052, !1118, !1119, !1120, !1121, !1128, !1133, !1137, !1151, !1152, !1156, !1157, !1163, !1164, !1169, !1173, !1177, !1178, !1238, !1239, !1240, !1241, !1246, !1252, !1257, !1258, !1259, !1260, !1263, !1264, !1268, !1269, !1270, !1271, !1272, !1273, !1278, !1279, !1280, !1281, !1282, !1286, !1287, !1291, !1292, !1293, !1363, !1367, !1368, !1372, !1373, !1374, !1378, !1382, !1383, !1386, !1387, !1410, !1415, !1416, !1421, !1422, !1427, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !324, file: !262, line: 926, baseType: !267, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !324, file: !262, line: 927, baseType: !328, size: 64, align: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !262, line: 380, size: 256, align: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !329, file: !262, line: 380, baseType: !332, size: 256, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !333, line: 72, baseType: !334)
!333 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !333, line: 66, size: 256, align: 64, elements: !335)
!335 = !{!336, !337, !339, !340, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !334, file: !333, line: 67, baseType: !77, size: 32, align: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !334, file: !333, line: 68, baseType: !338, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !334, file: !333, line: 69, baseType: !77, size: 32, align: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !334, file: !333, line: 70, baseType: !77, size: 32, align: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !334, file: !333, line: 71, baseType: !342, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!77, !293, !293}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !324, file: !262, line: 929, baseType: !328, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !324, file: !262, line: 930, baseType: !347, size: 64, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !349, line: 186, size: 1152, align: 64, elements: !350)
!349 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/irssi/task1")
!350 = !{!351, !352, !357, !362, !388, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !348, file: !349, line: 188, baseType: !77, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !348, file: !349, line: 189, baseType: !353, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !349, line: 137, size: 256, align: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !354, file: !349, line: 137, baseType: !332, size: 256, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !348, file: !349, line: 191, baseType: !358, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !349, line: 136, size: 256, align: 64, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !359, file: !349, line: 136, baseType: !332, size: 256, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !348, file: !349, line: 192, baseType: !363, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !349, line: 177, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !349, line: 167, size: 512, align: 64, elements: !366)
!366 = !{!367, !368, !373, !374, !375, !376, !377, !378, !384}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !349, line: 168, baseType: !203, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !365, file: !349, line: 169, baseType: !369, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !370, line: 75, baseType: !371)
!370 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !372, line: 139, baseType: !117)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !365, file: !349, line: 170, baseType: !91, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !349, line: 171, baseType: !91, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !365, file: !349, line: 172, baseType: !77, size: 32, align: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !365, file: !349, line: 173, baseType: !77, size: 32, align: 32, offset: 288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !365, file: !349, line: 174, baseType: !77, size: 32, align: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !365, file: !349, line: 175, baseType: !379, size: 64, align: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !381, line: 801, size: 256, align: 64, elements: !382)
!381 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/irssi/task1")
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !380, file: !381, line: 801, baseType: !332, size: 256, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !365, file: !349, line: 176, baseType: !385, size: 64, align: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !349, line: 159, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !349, line: 159, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !348, file: !349, line: 195, baseType: !389, size: 64, align: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!77, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !260, line: 162, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !349, line: 236, size: 1984, align: 64, elements: !395)
!395 = !{!396, !399, !400, !905, !910, !915, !916, !917, !918, !922, !927, !931, !932, !999, !1003, !1007, !1008, !1012, !1016, !1017, !1018, !1019, !1020, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !394, file: !349, line: 237, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !260, line: 161, baseType: !348)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !394, file: !349, line: 239, baseType: !77, size: 32, align: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !394, file: !349, line: 242, baseType: !401, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !260, line: 154, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !404, line: 270, size: 1472, align: 64, elements: !405)
!404 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/irssi/task1")
!405 = !{!406, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !865, !869, !874, !876, !887, !891}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !403, file: !404, line: 271, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !404, line: 254, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !404, line: 242, size: 832, align: 64, elements: !410)
!410 = !{!411, !420, !421, !501, !525, !534, !535, !824, !825, !826, !831}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !409, file: !404, line: 243, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !260, line: 83, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !381, line: 247, size: 192, align: 64, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !414, file: !381, line: 248, baseType: !77, size: 32, align: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !381, line: 249, baseType: !77, size: 32, align: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !414, file: !381, line: 250, baseType: !307, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !381, line: 256, baseType: !117, size: 64, align: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !409, file: !404, line: 244, baseType: !412, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !409, file: !404, line: 245, baseType: !422, size: 64, align: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !260, line: 155, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !404, line: 143, size: 128, align: 64, elements: !425)
!425 = !{!426, !439}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !424, file: !404, line: 144, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !260, line: 103, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !381, line: 218, size: 320, align: 64, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !438}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !429, file: !381, line: 219, baseType: !64, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !429, file: !381, line: 219, baseType: !64, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !429, file: !381, line: 220, baseType: !77, size: 32, align: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !429, file: !381, line: 221, baseType: !77, size: 32, align: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !429, file: !381, line: 222, baseType: !436, size: 64, align: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !381, line: 223, baseType: !77, size: 32, align: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !424, file: !404, line: 145, baseType: !440, size: 64, align: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !381, line: 561, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !381, line: 532, size: 128, align: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !381, line: 533, baseType: !77, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !442, file: !381, line: 560, baseType: !446, size: 64, align: 64, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !381, line: 534, size: 64, align: 64, elements: !447)
!447 = !{!448, !449, !451, !454, !455, !456, !459, !462, !465, !468, !471, !474, !477, !480, !483, !486, !489, !492, !495, !496, !497}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !446, file: !381, line: 535, baseType: !203, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !446, file: !381, line: 536, baseType: !450, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !260, line: 99, baseType: !77)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !446, file: !381, line: 537, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !260, line: 98, baseType: !414)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !446, file: !381, line: 538, baseType: !427, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !446, file: !381, line: 539, baseType: !412, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !446, file: !381, line: 540, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !260, line: 84, baseType: !414)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !446, file: !381, line: 541, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !260, line: 85, baseType: !414)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !446, file: !381, line: 542, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !260, line: 86, baseType: !414)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !446, file: !381, line: 543, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !260, line: 87, baseType: !414)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !446, file: !381, line: 544, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !260, line: 88, baseType: !414)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !446, file: !381, line: 545, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !260, line: 89, baseType: !414)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !446, file: !381, line: 546, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !260, line: 90, baseType: !414)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !446, file: !381, line: 547, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !260, line: 92, baseType: !414)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !446, file: !381, line: 548, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !260, line: 91, baseType: !414)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !446, file: !381, line: 549, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !260, line: 93, baseType: !414)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !446, file: !381, line: 550, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !260, line: 95, baseType: !414)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !446, file: !381, line: 551, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !260, line: 96, baseType: !414)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !446, file: !381, line: 552, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !260, line: 97, baseType: !414)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !446, file: !381, line: 557, baseType: !452, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !446, file: !381, line: 558, baseType: !452, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !446, file: !381, line: 559, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !381, line: 307, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !381, line: 307, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !409, file: !404, line: 246, baseType: !502, size: 64, align: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !260, line: 159, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !404, line: 179, size: 320, align: 64, elements: !505)
!505 = !{!506, !511, !512, !523, !524}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !504, file: !404, line: 180, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !404, line: 175, size: 256, align: 64, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !508, file: !404, line: 175, baseType: !332, size: 256, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !504, file: !404, line: 181, baseType: !77, size: 32, align: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !504, file: !404, line: 183, baseType: !513, size: 64, align: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !260, line: 127, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !516, line: 77, size: 192, align: 64, elements: !517)
!516 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!517 = !{!518, !521, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !515, file: !516, line: 78, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !520, line: 216, baseType: !91)
!520 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !516, line: 79, baseType: !203, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !515, file: !516, line: 80, baseType: !519, size: 64, align: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !504, file: !404, line: 188, baseType: !307, size: 64, align: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !504, file: !404, line: 189, baseType: !77, size: 32, align: 32, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !409, file: !404, line: 247, baseType: !526, size: 64, align: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !404, line: 155, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !404, line: 152, size: 128, align: 64, elements: !529)
!529 = !{!530, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !528, file: !404, line: 153, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !260, line: 94, baseType: !414)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !528, file: !404, line: 154, baseType: !531, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !409, file: !404, line: 248, baseType: !502, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !409, file: !404, line: 249, baseType: !536, size: 64, align: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !260, line: 160, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !404, line: 157, size: 192, align: 64, elements: !539)
!539 = !{!540, !541, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !538, file: !404, line: 158, baseType: !422, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !538, file: !404, line: 159, baseType: !460, size: 64, align: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !538, file: !404, line: 160, baseType: !543, size: 64, align: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !260, line: 133, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !546, line: 129, size: 448, align: 64, elements: !547)
!546 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/irssi/task1")
!547 = !{!548, !549, !550, !551, !556, !560, !818, !819}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !545, file: !546, line: 130, baseType: !77, size: 32, align: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !545, file: !546, line: 131, baseType: !77, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !545, file: !546, line: 132, baseType: !77, size: 32, align: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !545, file: !546, line: 133, baseType: !552, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !260, line: 135, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !260, line: 135, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !545, file: !546, line: 134, baseType: !557, size: 64, align: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !260, line: 177, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !260, line: 177, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !545, file: !546, line: 149, baseType: !561, size: 64, align: 64, offset: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !546, line: 135, size: 64, align: 64, elements: !562)
!562 = !{!563, !564, !694, !762, !815}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !561, file: !546, line: 136, baseType: !203, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !561, file: !546, line: 138, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !567, line: 132, size: 1344, align: 64, elements: !568)
!567 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/irssi/task1")
!568 = !{!569, !570, !571, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !683, !684, !685, !686, !687, !688, !689, !693}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !566, file: !567, line: 137, baseType: !77, size: 32, align: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !566, file: !567, line: 138, baseType: !117, size: 64, align: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !566, file: !567, line: 139, baseType: !572, size: 64, align: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !260, line: 147, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !567, line: 85, size: 896, align: 64, elements: !576)
!576 = !{!577, !578, !584, !585, !586, !587, !607, !624, !628, !629, !630, !631, !638, !642}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !567, line: 86, baseType: !64, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !575, file: !567, line: 87, baseType: !579, size: 64, align: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!77, !77, !436, !307, !582, !77}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !260, line: 146, baseType: !566)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !575, file: !567, line: 89, baseType: !579, size: 64, align: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !575, file: !567, line: 91, baseType: !579, size: 64, align: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !575, file: !567, line: 93, baseType: !579, size: 64, align: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !575, file: !567, line: 96, baseType: !588, size: 64, align: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!77, !591, !602, !582, !604}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !260, line: 120, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !594, line: 313, size: 192, align: 64, elements: !595)
!594 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/irssi/task1")
!595 = !{!596, !598, !599, !600, !601}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !593, file: !594, line: 314, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !593, file: !594, line: 316, baseType: !77, size: 32, align: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !593, file: !594, line: 318, baseType: !77, size: 32, align: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !593, file: !594, line: 319, baseType: !77, size: 32, align: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !594, line: 320, baseType: !77, size: 32, align: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !260, line: 121, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !260, line: 121, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !575, file: !567, line: 98, baseType: !608, size: 64, align: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!77, !591, !602, !602, !602, !604, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !260, line: 123, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !594, line: 324, size: 832, align: 64, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !623}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !613, file: !594, line: 325, baseType: !77, size: 32, align: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !613, file: !594, line: 326, baseType: !592, size: 192, align: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !613, file: !594, line: 327, baseType: !592, size: 192, align: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !613, file: !594, line: 328, baseType: !592, size: 192, align: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !613, file: !594, line: 330, baseType: !620, size: 128, align: 64, offset: 640)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, align: 64, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 2)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !594, line: 333, baseType: !77, size: 32, align: 32, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !575, file: !567, line: 101, baseType: !625, size: 64, align: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!77, !582}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !575, file: !567, line: 103, baseType: !625, size: 64, align: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !567, line: 105, baseType: !77, size: 32, align: 32, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !575, file: !567, line: 107, baseType: !203, size: 64, align: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !575, file: !567, line: 116, baseType: !632, size: 64, align: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!77, !77, !436, !103, !307, !635, !636}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !575, file: !567, line: 120, baseType: !639, size: 64, align: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!77, !77, !436, !103, !436, !103, !636}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !575, file: !567, line: 129, baseType: !643, size: 64, align: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!77, !582, !77, !591, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !260, line: 125, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !594, line: 349, size: 192, align: 64, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !648, file: !594, line: 350, baseType: !103, size: 32, align: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !648, file: !594, line: 351, baseType: !59, size: 64, align: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !648, file: !594, line: 357, baseType: !653, size: 64, align: 64, offset: 128)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !594, line: 352, size: 64, align: 64, elements: !654)
!654 = !{!655, !659}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !653, file: !594, line: 354, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !77, !77, !59}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !653, file: !594, line: 356, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!77, !77, !77, !646}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !566, file: !567, line: 141, baseType: !557, size: 64, align: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !566, file: !567, line: 142, baseType: !591, size: 64, align: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !566, file: !567, line: 143, baseType: !591, size: 64, align: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !566, file: !567, line: 144, baseType: !591, size: 64, align: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !566, file: !567, line: 145, baseType: !591, size: 64, align: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !566, file: !567, line: 146, baseType: !591, size: 64, align: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !566, file: !567, line: 147, baseType: !591, size: 64, align: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !566, file: !567, line: 148, baseType: !591, size: 64, align: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !566, file: !567, line: 149, baseType: !591, size: 64, align: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !566, file: !567, line: 151, baseType: !673, size: 128, align: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !260, line: 195, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !675, line: 292, size: 128, align: 64, elements: !676)
!675 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/irssi/task1")
!676 = !{!677, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !674, file: !675, line: 293, baseType: !678, size: 64, align: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !675, line: 297, size: 256, align: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !679, file: !675, line: 297, baseType: !332, size: 256, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !674, file: !675, line: 295, baseType: !77, size: 32, align: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !566, file: !567, line: 152, baseType: !77, size: 32, align: 32, offset: 896)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !567, line: 153, baseType: !77, size: 32, align: 32, offset: 928)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !566, file: !567, line: 155, baseType: !611, size: 64, align: 64, offset: 960)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !566, file: !567, line: 156, baseType: !611, size: 64, align: 64, offset: 1024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !566, file: !567, line: 157, baseType: !611, size: 64, align: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !566, file: !567, line: 162, baseType: !203, size: 64, align: 64, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !566, file: !567, line: 163, baseType: !690, size: 64, align: 64, offset: 1216)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !260, line: 122, baseType: !692)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !260, line: 122, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !566, file: !567, line: 164, baseType: !690, size: 64, align: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !561, file: !546, line: 141, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !697, line: 155, size: 1088, align: 64, elements: !698)
!697 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/irssi/task1")
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !761}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !696, file: !697, line: 160, baseType: !77, size: 32, align: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !696, file: !697, line: 161, baseType: !117, size: 64, align: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !696, file: !697, line: 162, baseType: !77, size: 32, align: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !696, file: !697, line: 163, baseType: !591, size: 64, align: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !696, file: !697, line: 164, baseType: !591, size: 64, align: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !696, file: !697, line: 165, baseType: !591, size: 64, align: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !696, file: !697, line: 166, baseType: !591, size: 64, align: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !696, file: !697, line: 167, baseType: !591, size: 64, align: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !696, file: !697, line: 168, baseType: !591, size: 64, align: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !696, file: !697, line: 169, baseType: !591, size: 64, align: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !697, line: 170, baseType: !77, size: 32, align: 32, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !696, file: !697, line: 172, baseType: !611, size: 64, align: 64, offset: 704)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !696, file: !697, line: 173, baseType: !77, size: 32, align: 32, offset: 768)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !696, file: !697, line: 174, baseType: !673, size: 128, align: 64, offset: 832)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !696, file: !697, line: 175, baseType: !714, size: 64, align: 64, offset: 960)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !260, line: 144, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !697, line: 129, size: 768, align: 64, elements: !718)
!718 = !{!719, !720, !732, !737, !741, !745, !749, !753, !754, !755, !756, !760}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !697, line: 130, baseType: !64, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !717, file: !697, line: 131, baseType: !721, size: 64, align: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !436, !77, !730}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !697, line: 127, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !697, line: 124, size: 128, align: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !726, file: !697, line: 125, baseType: !591, size: 64, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !726, file: !697, line: 126, baseType: !591, size: 64, align: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !260, line: 143, baseType: !696)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !717, file: !697, line: 132, baseType: !733, size: 64, align: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!77, !730, !604, !736, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !717, file: !697, line: 134, baseType: !738, size: 64, align: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!77, !436, !77, !724, !730}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !717, file: !697, line: 136, baseType: !742, size: 64, align: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64, align: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!77, !730, !591, !591, !591, !591, !591, !591, !604, !611}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !717, file: !697, line: 140, baseType: !746, size: 64, align: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!77, !730, !591, !591, !602, !602, !604, !611}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !717, file: !697, line: 142, baseType: !750, size: 64, align: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!77, !730}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !717, file: !697, line: 143, baseType: !750, size: 64, align: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !697, line: 144, baseType: !77, size: 32, align: 32, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !717, file: !697, line: 145, baseType: !203, size: 64, align: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !717, file: !697, line: 147, baseType: !757, size: 64, align: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!77, !730, !77, !436, !77, !302, !597, !646}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !717, file: !697, line: 152, baseType: !750, size: 64, align: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !696, file: !697, line: 177, baseType: !557, size: 64, align: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !561, file: !546, line: 144, baseType: !763, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !765, line: 135, size: 1152, align: 64, elements: !766)
!765 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/irssi/task1")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !814}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !764, file: !765, line: 140, baseType: !77, size: 32, align: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !764, file: !765, line: 141, baseType: !77, size: 32, align: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !764, file: !765, line: 142, baseType: !591, size: 64, align: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !764, file: !765, line: 143, baseType: !591, size: 64, align: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !764, file: !765, line: 144, baseType: !117, size: 64, align: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !764, file: !765, line: 145, baseType: !591, size: 64, align: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !764, file: !765, line: 146, baseType: !591, size: 64, align: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 147, baseType: !77, size: 32, align: 32, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !764, file: !765, line: 148, baseType: !611, size: 64, align: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !764, file: !765, line: 150, baseType: !591, size: 64, align: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !764, file: !765, line: 151, baseType: !591, size: 64, align: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !764, file: !765, line: 152, baseType: !307, size: 64, align: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !764, file: !765, line: 153, baseType: !77, size: 32, align: 32, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !764, file: !765, line: 154, baseType: !591, size: 64, align: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !764, file: !765, line: 155, baseType: !77, size: 32, align: 32, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !764, file: !765, line: 156, baseType: !673, size: 128, align: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !764, file: !765, line: 157, baseType: !784, size: 64, align: 64, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !260, line: 141, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !765, line: 117, size: 576, align: 64, elements: !788)
!788 = !{!789, !790, !796, !800, !806, !807, !808, !809, !810}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !787, file: !765, line: 118, baseType: !64, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !787, file: !765, line: 120, baseType: !791, size: 64, align: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!77, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !260, line: 140, baseType: !764)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !787, file: !765, line: 121, baseType: !797, size: 64, align: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!77, !307, !602, !794}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !787, file: !765, line: 123, baseType: !801, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!77, !804, !591, !602, !602, !602, !604, !611}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !787, file: !765, line: 126, baseType: !791, size: 64, align: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !787, file: !765, line: 127, baseType: !791, size: 64, align: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !765, line: 128, baseType: !77, size: 32, align: 32, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !787, file: !765, line: 129, baseType: !203, size: 64, align: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !787, file: !765, line: 131, baseType: !811, size: 64, align: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64, align: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!77, !794, !77, !77, !646}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !764, file: !765, line: 158, baseType: !557, size: 64, align: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !561, file: !546, line: 147, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !546, line: 147, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !545, file: !546, line: 150, baseType: !77, size: 32, align: 32, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !545, file: !546, line: 151, baseType: !820, size: 64, align: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !404, line: 223, size: 256, align: 64, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !821, file: !404, line: 223, baseType: !332, size: 256, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !409, file: !404, line: 250, baseType: !460, size: 64, align: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !409, file: !404, line: 251, baseType: !460, size: 64, align: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !409, file: !404, line: 252, baseType: !827, size: 64, align: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64, align: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !404, line: 204, size: 256, align: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !828, file: !404, line: 204, baseType: !332, size: 256, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !409, file: !404, line: 253, baseType: !832, size: 192, align: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !381, line: 269, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !381, line: 265, size: 192, align: 64, elements: !834)
!834 = !{!835, !836, !837}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !833, file: !381, line: 266, baseType: !307, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !833, file: !381, line: 267, baseType: !117, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !833, file: !381, line: 268, baseType: !77, size: 32, align: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !403, file: !404, line: 272, baseType: !422, size: 64, align: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !403, file: !404, line: 273, baseType: !460, size: 64, align: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !403, file: !404, line: 274, baseType: !77, size: 32, align: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !403, file: !404, line: 275, baseType: !77, size: 32, align: 32, offset: 224)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !404, line: 276, baseType: !203, size: 64, align: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !403, file: !404, line: 277, baseType: !673, size: 128, align: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !403, file: !404, line: 279, baseType: !117, size: 64, align: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !403, file: !404, line: 280, baseType: !117, size: 64, align: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !403, file: !404, line: 281, baseType: !91, size: 64, align: 64, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !403, file: !404, line: 282, baseType: !91, size: 64, align: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !403, file: !404, line: 283, baseType: !91, size: 64, align: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !403, file: !404, line: 284, baseType: !91, size: 64, align: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !403, file: !404, line: 285, baseType: !463, size: 64, align: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !403, file: !404, line: 286, baseType: !852, size: 64, align: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !260, line: 186, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !855, line: 262, size: 192, align: 64, elements: !856)
!855 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/irssi/task1")
!856 = !{!857, !858, !864}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !854, file: !855, line: 263, baseType: !463, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !854, file: !855, line: 264, baseType: !859, size: 64, align: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !855, line: 209, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !855, line: 220, size: 256, align: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !861, file: !855, line: 220, baseType: !332, size: 256, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !854, file: !855, line: 265, baseType: !412, size: 64, align: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !403, file: !404, line: 287, baseType: !866, size: 64, align: 64, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !260, line: 184, baseType: !868)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !260, line: 184, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !403, file: !404, line: 288, baseType: !870, size: 64, align: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64, align: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !855, line: 259, size: 256, align: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !871, file: !855, line: 259, baseType: !332, size: 256, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !403, file: !404, line: 289, baseType: !875, size: 64, align: 64, offset: 1088)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !403, file: !404, line: 290, baseType: !877, size: 64, align: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !260, line: 189, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !855, line: 332, size: 128, align: 64, elements: !880)
!880 = !{!881, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !879, file: !855, line: 333, baseType: !882, size: 64, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !855, line: 330, size: 256, align: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !883, file: !855, line: 330, baseType: !332, size: 256, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !879, file: !855, line: 334, baseType: !882, size: 64, align: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !403, file: !404, line: 296, baseType: !888, size: 160, align: 8, offset: 1216)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 160, align: 8, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 20)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !403, file: !404, line: 298, baseType: !892, size: 64, align: 64, offset: 1408)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !404, line: 268, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !404, line: 262, size: 320, align: 64, elements: !895)
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !894, file: !404, line: 263, baseType: !379, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !894, file: !404, line: 264, baseType: !379, size: 64, align: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !894, file: !404, line: 265, baseType: !493, size: 64, align: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !894, file: !404, line: 266, baseType: !463, size: 64, align: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !894, file: !404, line: 267, baseType: !901, size: 64, align: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !381, line: 170, size: 256, align: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !902, file: !381, line: 170, baseType: !332, size: 256, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !394, file: !349, line: 244, baseType: !906, size: 64, align: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64, align: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !404, line: 301, size: 256, align: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !907, file: !404, line: 301, baseType: !332, size: 256, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !394, file: !349, line: 246, baseType: !911, size: 64, align: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, align: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !404, line: 476, size: 256, align: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !912, file: !404, line: 476, baseType: !332, size: 256, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !394, file: !349, line: 247, baseType: !363, size: 64, align: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !394, file: !349, line: 249, baseType: !59, size: 64, align: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !394, file: !349, line: 252, baseType: !389, size: 64, align: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !394, file: !349, line: 254, baseType: !919, size: 64, align: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64, align: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!77, !77, !392}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !394, file: !349, line: 256, baseType: !923, size: 64, align: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!77, !926, !392, !401}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !394, file: !349, line: 258, baseType: !928, size: 64, align: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64, align: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!77, !392, !401, !401}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !394, file: !349, line: 260, baseType: !389, size: 64, align: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !394, file: !349, line: 262, baseType: !933, size: 64, align: 64, offset: 768)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, align: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!77, !392, !936, !401}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64, align: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64, align: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !260, line: 156, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !404, line: 452, size: 960, align: 64, elements: !940)
!940 = !{!941, !958, !959, !960, !961, !962, !963, !985, !986, !987, !988, !989, !990, !993, !998}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !939, file: !404, line: 454, baseType: !942, size: 64, align: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64, align: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !404, line: 450, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !404, line: 441, size: 640, align: 64, elements: !945)
!945 = !{!946, !947, !948, !949, !950, !951, !956, !957}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !944, file: !404, line: 442, baseType: !412, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !944, file: !404, line: 443, baseType: !422, size: 64, align: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !944, file: !404, line: 444, baseType: !502, size: 64, align: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !944, file: !404, line: 445, baseType: !531, size: 64, align: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !944, file: !404, line: 446, baseType: !531, size: 64, align: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !944, file: !404, line: 447, baseType: !952, size: 64, align: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !404, line: 438, size: 256, align: 64, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !953, file: !404, line: 438, baseType: !332, size: 256, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !944, file: !404, line: 448, baseType: !827, size: 64, align: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !944, file: !404, line: 449, baseType: !832, size: 192, align: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !939, file: !404, line: 455, baseType: !422, size: 64, align: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !939, file: !404, line: 456, baseType: !460, size: 64, align: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !939, file: !404, line: 457, baseType: !77, size: 32, align: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !404, line: 458, baseType: !77, size: 32, align: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !939, file: !404, line: 460, baseType: !852, size: 64, align: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !939, file: !404, line: 461, baseType: !964, size: 64, align: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !260, line: 188, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !855, line: 356, size: 256, align: 64, elements: !967)
!967 = !{!968, !980, !981, !982, !983, !984}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !966, file: !855, line: 357, baseType: !969, size: 64, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !855, line: 234, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !855, line: 226, size: 192, align: 64, elements: !972)
!972 = !{!973, !974, !979}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !971, file: !855, line: 227, baseType: !77, size: 32, align: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !971, file: !855, line: 231, baseType: !975, size: 64, align: 64, offset: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !855, line: 228, size: 64, align: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !975, file: !855, line: 229, baseType: !859, size: 64, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !975, file: !855, line: 230, baseType: !507, size: 64, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !971, file: !855, line: 233, baseType: !502, size: 64, align: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !966, file: !855, line: 358, baseType: !77, size: 32, align: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !966, file: !855, line: 359, baseType: !77, size: 32, align: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !966, file: !855, line: 360, baseType: !460, size: 64, align: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !966, file: !855, line: 361, baseType: !77, size: 32, align: 32, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !966, file: !855, line: 362, baseType: !77, size: 32, align: 32, offset: 224)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !939, file: !404, line: 463, baseType: !77, size: 32, align: 32, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !939, file: !404, line: 464, baseType: !77, size: 32, align: 32, offset: 416)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !939, file: !404, line: 466, baseType: !412, size: 64, align: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !939, file: !404, line: 467, baseType: !412, size: 64, align: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !939, file: !404, line: 469, baseType: !888, size: 160, align: 8, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !939, file: !404, line: 471, baseType: !991, size: 64, align: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, align: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !404, line: 471, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !939, file: !404, line: 472, baseType: !994, size: 64, align: 64, offset: 832)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !260, line: 157, baseType: !997)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !260, line: 157, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !939, file: !404, line: 473, baseType: !59, size: 64, align: 64, offset: 896)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !394, file: !349, line: 264, baseType: !1000, size: 64, align: 64, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64, align: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!77, !392, !937}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !394, file: !349, line: 266, baseType: !1004, size: 64, align: 64, offset: 896)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64, align: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!77, !392, !937, !401}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !394, file: !349, line: 267, baseType: !389, size: 64, align: 64, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !394, file: !349, line: 268, baseType: !1009, size: 64, align: 64, offset: 1024)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64, align: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!906, !392, !502}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !394, file: !349, line: 269, baseType: !1013, size: 64, align: 64, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!911, !392, !502}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !394, file: !349, line: 270, baseType: !389, size: 64, align: 64, offset: 1152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !394, file: !349, line: 273, baseType: !77, size: 32, align: 32, offset: 1216)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !394, file: !349, line: 275, baseType: !77, size: 32, align: 32, offset: 1248)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !394, file: !349, line: 277, baseType: !906, size: 64, align: 64, offset: 1280)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !394, file: !349, line: 279, baseType: !1021, size: 64, align: 64, offset: 1344)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64, align: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !260, line: 183, baseType: !1023)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !260, line: 183, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !394, file: !349, line: 281, baseType: !77, size: 32, align: 32, offset: 1408)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !394, file: !349, line: 283, baseType: !77, size: 32, align: 32, offset: 1440)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !394, file: !349, line: 284, baseType: !77, size: 32, align: 32, offset: 1472)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !394, file: !349, line: 285, baseType: !401, size: 64, align: 64, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !394, file: !349, line: 287, baseType: !401, size: 64, align: 64, offset: 1600)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !394, file: !349, line: 289, baseType: !937, size: 64, align: 64, offset: 1664)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !394, file: !349, line: 291, baseType: !77, size: 32, align: 32, offset: 1728)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !394, file: !349, line: 293, baseType: !103, size: 32, align: 32, offset: 1760)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !394, file: !349, line: 295, baseType: !392, size: 64, align: 64, offset: 1792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !394, file: !349, line: 296, baseType: !673, size: 128, align: 64, offset: 1856)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !348, file: !349, line: 197, baseType: !919, size: 64, align: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !348, file: !349, line: 199, baseType: !923, size: 64, align: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !348, file: !349, line: 201, baseType: !928, size: 64, align: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !348, file: !349, line: 203, baseType: !389, size: 64, align: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !348, file: !349, line: 205, baseType: !933, size: 64, align: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !348, file: !349, line: 207, baseType: !1000, size: 64, align: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !348, file: !349, line: 209, baseType: !1004, size: 64, align: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !348, file: !349, line: 210, baseType: !1009, size: 64, align: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !348, file: !349, line: 211, baseType: !1013, size: 64, align: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !348, file: !349, line: 212, baseType: !389, size: 64, align: 64, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !348, file: !349, line: 213, baseType: !673, size: 128, align: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !348, file: !349, line: 214, baseType: !77, size: 32, align: 32, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !324, file: !262, line: 931, baseType: !1047, size: 64, align: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64, align: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !262, line: 923, size: 32, align: 32, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1048, file: !262, line: 923, baseType: !77, size: 32, align: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !324, file: !262, line: 936, baseType: !91, size: 64, align: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !324, file: !262, line: 937, baseType: !1053, size: 64, align: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64, align: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !262, line: 498, size: 2816, align: 64, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1062, !1063, !1067, !1068, !1072, !1073, !1074, !1075, !1076, !1077, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !1054, file: !262, line: 499, baseType: !77, size: 32, align: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !1054, file: !262, line: 502, baseType: !103, size: 32, align: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !1054, file: !262, line: 503, baseType: !1059, size: 64, align: 8, offset: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, align: 8, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 8)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !1054, file: !262, line: 504, baseType: !77, size: 32, align: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !1054, file: !262, line: 505, baseType: !1064, size: 384, align: 8, offset: 160)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 384, align: 8, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 48)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1054, file: !262, line: 507, baseType: !103, size: 32, align: 32, offset: 544)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !1054, file: !262, line: 508, baseType: !1069, size: 256, align: 8, offset: 576)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, align: 8, elements: !1070)
!1070 = !{!1071}
!1071 = !DISubrange(count: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1054, file: !262, line: 514, baseType: !103, size: 32, align: 32, offset: 832)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1054, file: !262, line: 515, baseType: !1069, size: 256, align: 8, offset: 864)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1054, file: !262, line: 521, baseType: !203, size: 64, align: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !1054, file: !262, line: 522, baseType: !203, size: 64, align: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !1054, file: !262, line: 529, baseType: !77, size: 32, align: 32, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !1054, file: !262, line: 531, baseType: !1078, size: 64, align: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64, align: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !262, line: 531, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1054, file: !262, line: 538, baseType: !401, size: 64, align: 64, offset: 1408)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !1054, file: !262, line: 543, baseType: !117, size: 64, align: 64, offset: 1472)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1054, file: !262, line: 544, baseType: !77, size: 32, align: 32, offset: 1536)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1054, file: !262, line: 545, baseType: !117, size: 64, align: 64, offset: 1600)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1054, file: !262, line: 546, baseType: !117, size: 64, align: 64, offset: 1664)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !1054, file: !262, line: 547, baseType: !103, size: 32, align: 32, offset: 1728)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1054, file: !262, line: 548, baseType: !1087, size: 64, align: 64, offset: 1792)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !262, line: 375, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !262, line: 418, size: 704, align: 64, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1090, file: !262, line: 419, baseType: !77, size: 32, align: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1090, file: !262, line: 420, baseType: !64, size: 64, align: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1090, file: !262, line: 421, baseType: !91, size: 64, align: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !1090, file: !262, line: 426, baseType: !91, size: 64, align: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !1090, file: !262, line: 427, baseType: !91, size: 64, align: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !1090, file: !262, line: 428, baseType: !91, size: 64, align: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !1090, file: !262, line: 429, baseType: !91, size: 64, align: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !1090, file: !262, line: 430, baseType: !91, size: 64, align: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !1090, file: !262, line: 431, baseType: !91, size: 64, align: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !1090, file: !262, line: 432, baseType: !91, size: 64, align: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !1090, file: !262, line: 433, baseType: !77, size: 32, align: 32, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !1090, file: !262, line: 434, baseType: !77, size: 32, align: 32, offset: 672)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !1054, file: !262, line: 549, baseType: !91, size: 64, align: 64, offset: 1856)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !1054, file: !262, line: 551, baseType: !328, size: 64, align: 64, offset: 1920)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1054, file: !262, line: 552, baseType: !673, size: 128, align: 64, offset: 1984)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1054, file: !262, line: 557, baseType: !1053, size: 64, align: 64, offset: 2112)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !262, line: 557, baseType: !1053, size: 64, align: 64, offset: 2176)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !1054, file: !262, line: 559, baseType: !203, size: 64, align: 64, offset: 2240)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1054, file: !262, line: 561, baseType: !519, size: 64, align: 64, offset: 2304)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1054, file: !262, line: 562, baseType: !307, size: 64, align: 64, offset: 2368)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1054, file: !262, line: 563, baseType: !519, size: 64, align: 64, offset: 2432)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1054, file: !262, line: 564, baseType: !307, size: 64, align: 64, offset: 2496)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !1054, file: !262, line: 567, baseType: !307, size: 64, align: 64, offset: 2560)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !1054, file: !262, line: 568, baseType: !519, size: 64, align: 64, offset: 2624)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !1054, file: !262, line: 569, baseType: !117, size: 64, align: 64, offset: 2688)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !1054, file: !262, line: 572, baseType: !203, size: 64, align: 64, offset: 2752)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !324, file: !262, line: 938, baseType: !1053, size: 64, align: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !324, file: !262, line: 944, baseType: !77, size: 32, align: 32, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !324, file: !262, line: 950, baseType: !117, size: 64, align: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !324, file: !262, line: 960, baseType: !1122, size: 64, align: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64, align: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!77, !1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !262, line: 376, baseType: !1054)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !324, file: !262, line: 961, baseType: !1129, size: 64, align: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64, align: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1132, !1126}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !324, file: !262, line: 962, baseType: !1134, size: 64, align: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64, align: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1126, !1125, !307, !77, !302}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !324, file: !262, line: 980, baseType: !1138, size: 352, align: 32, offset: 832)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !262, line: 964, size: 352, align: 32, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1138, file: !262, line: 965, baseType: !77, size: 32, align: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1138, file: !262, line: 966, baseType: !77, size: 32, align: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1138, file: !262, line: 967, baseType: !77, size: 32, align: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1138, file: !262, line: 968, baseType: !77, size: 32, align: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1138, file: !262, line: 969, baseType: !77, size: 32, align: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1138, file: !262, line: 970, baseType: !77, size: 32, align: 32, offset: 160)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1138, file: !262, line: 971, baseType: !77, size: 32, align: 32, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1138, file: !262, line: 972, baseType: !77, size: 32, align: 32, offset: 224)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1138, file: !262, line: 973, baseType: !77, size: 32, align: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1138, file: !262, line: 974, baseType: !77, size: 32, align: 32, offset: 288)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1138, file: !262, line: 975, baseType: !77, size: 32, align: 32, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !324, file: !262, line: 982, baseType: !77, size: 32, align: 32, offset: 1184)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !324, file: !262, line: 985, baseType: !1153, size: 64, align: 64, offset: 1216)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64, align: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!77, !392, !59}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !324, file: !262, line: 986, baseType: !59, size: 64, align: 64, offset: 1280)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !324, file: !262, line: 993, baseType: !1158, size: 64, align: 64, offset: 1344)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64, align: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1160, line: 389, baseType: !1161)
!1160 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/irssi/task1")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!77, !203, !77, !77, !59}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !324, file: !262, line: 996, baseType: !59, size: 64, align: 64, offset: 1408)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !324, file: !262, line: 999, baseType: !1165, size: 64, align: 64, offset: 1472)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64, align: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!77, !258, !926, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !324, file: !262, line: 1002, baseType: !1170, size: 64, align: 64, offset: 1536)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64, align: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!77, !258, !307, !635}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !324, file: !262, line: 1006, baseType: !1174, size: 64, align: 64, offset: 1600)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64, align: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!77, !258, !307, !103}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !324, file: !262, line: 1009, baseType: !673, size: 128, align: 64, offset: 1664)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !324, file: !262, line: 1011, baseType: !1179, size: 64, align: 64, offset: 1792)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !260, line: 131, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !546, line: 160, size: 960, align: 64, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1208, !1209, !1213, !1219, !1220, !1224, !1228, !1232, !1233, !1234}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1182, file: !546, line: 161, baseType: !77, size: 32, align: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !1182, file: !546, line: 162, baseType: !77, size: 32, align: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !1182, file: !546, line: 163, baseType: !77, size: 32, align: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !546, line: 164, baseType: !91, size: 64, align: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1182, file: !546, line: 165, baseType: !1189, size: 64, align: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64, align: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!77, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64, align: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !260, line: 132, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !546, line: 268, size: 384, align: 64, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1204}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1194, file: !546, line: 269, baseType: !1179, size: 64, align: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1194, file: !546, line: 270, baseType: !557, size: 64, align: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !546, line: 272, baseType: !91, size: 64, align: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !1194, file: !546, line: 273, baseType: !59, size: 64, align: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !1194, file: !546, line: 275, baseType: !1201, size: 64, align: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !260, line: 138, baseType: !1203)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !260, line: 138, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1194, file: !546, line: 277, baseType: !1205, size: 64, align: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64, align: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!77, !1192, !293, !519}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1182, file: !546, line: 166, baseType: !1205, size: 64, align: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1182, file: !546, line: 167, baseType: !1210, size: 64, align: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, align: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!77, !1192, !307}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1182, file: !546, line: 168, baseType: !1214, size: 64, align: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64, align: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!77, !1192, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1182, file: !546, line: 169, baseType: !1189, size: 64, align: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1182, file: !546, line: 171, baseType: !1221, size: 64, align: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64, align: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!77, !77, !436, !103, !307, !635, !59}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1182, file: !546, line: 173, baseType: !1225, size: 64, align: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64, align: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!77, !77, !436, !103, !436, !103, !59}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !1182, file: !546, line: 176, baseType: !1229, size: 160, align: 32, offset: 640)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, align: 32, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 5)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1182, file: !546, line: 177, baseType: !77, size: 32, align: 32, offset: 800)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1182, file: !546, line: 178, baseType: !77, size: 32, align: 32, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !1182, file: !546, line: 180, baseType: !1235, size: 64, align: 64, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64, align: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!77, !1192, !77, !77, !59}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !324, file: !262, line: 1012, baseType: !1179, size: 64, align: 64, offset: 1856)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !324, file: !262, line: 1013, baseType: !1179, size: 64, align: 64, offset: 1920)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !324, file: !262, line: 1015, baseType: !906, size: 64, align: 64, offset: 1984)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !324, file: !262, line: 1016, baseType: !1242, size: 64, align: 64, offset: 2048)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64, align: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !262, line: 922, size: 256, align: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1243, file: !262, line: 922, baseType: !332, size: 256, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !324, file: !262, line: 1021, baseType: !1247, size: 64, align: 64, offset: 2112)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64, align: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1250, !77, !77}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !324, file: !262, line: 1024, baseType: !1253, size: 64, align: 64, offset: 2176)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !404, line: 192, size: 256, align: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1254, file: !404, line: 192, baseType: !332, size: 256, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !324, file: !262, line: 1031, baseType: !91, size: 64, align: 64, offset: 2240)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !324, file: !262, line: 1032, baseType: !91, size: 64, align: 64, offset: 2304)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !324, file: !262, line: 1033, baseType: !117, size: 64, align: 64, offset: 2368)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !324, file: !262, line: 1035, baseType: !1261, size: 64, align: 64, offset: 2432)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64, align: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !262, line: 1035, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !324, file: !262, line: 1036, baseType: !77, size: 32, align: 32, offset: 2496)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !324, file: !262, line: 1039, baseType: !1265, size: 64, align: 64, offset: 2560)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64, align: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !77, !77, !77, !293, !519, !258, !59}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !324, file: !262, line: 1041, baseType: !59, size: 64, align: 64, offset: 2624)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !324, file: !262, line: 1043, baseType: !77, size: 32, align: 32, offset: 2688)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !324, file: !262, line: 1044, baseType: !103, size: 32, align: 32, offset: 2720)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !324, file: !262, line: 1045, baseType: !1069, size: 256, align: 8, offset: 2752)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !324, file: !262, line: 1047, baseType: !919, size: 64, align: 64, offset: 3008)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !324, file: !262, line: 1050, baseType: !1274, size: 64, align: 64, offset: 3072)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !262, line: 905, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64, align: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!77, !1250, !307, !635}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !324, file: !262, line: 1052, baseType: !363, size: 64, align: 64, offset: 3136)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !324, file: !262, line: 1059, baseType: !77, size: 32, align: 32, offset: 3200)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !324, file: !262, line: 1065, baseType: !103, size: 32, align: 32, offset: 3232)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !324, file: !262, line: 1071, baseType: !557, size: 64, align: 64, offset: 3264)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !324, file: !262, line: 1076, baseType: !1283, size: 64, align: 64, offset: 3328)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64, align: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!77, !258, !302, !59}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !324, file: !262, line: 1077, baseType: !59, size: 64, align: 64, offset: 3392)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !324, file: !262, line: 1079, baseType: !1288, size: 128, align: 8, offset: 3456)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, align: 8, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 16)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !324, file: !262, line: 1080, baseType: !1288, size: 128, align: 8, offset: 3584)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !324, file: !262, line: 1081, baseType: !1288, size: 128, align: 8, offset: 3712)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !324, file: !262, line: 1083, baseType: !1294, size: 64, align: 64, offset: 3840)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, align: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!77, !258, !307, !307, !1297, !1349, !77}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !260, line: 130, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !546, line: 449, size: 1344, align: 64, elements: !1300)
!1300 = !{!1301, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1299, file: !546, line: 450, baseType: !1302, size: 64, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !260, line: 129, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !546, line: 308, size: 704, align: 64, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1316, !1320, !1324, !1325, !1329, !1330, !1334}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1305, file: !546, line: 309, baseType: !77, size: 32, align: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1305, file: !546, line: 310, baseType: !77, size: 32, align: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1305, file: !546, line: 312, baseType: !77, size: 32, align: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !1305, file: !546, line: 313, baseType: !77, size: 32, align: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !546, line: 315, baseType: !91, size: 64, align: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1305, file: !546, line: 317, baseType: !1313, size: 64, align: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64, align: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!77, !1297, !436, !436, !77}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !1305, file: !546, line: 320, baseType: !1317, size: 64, align: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64, align: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!77, !1297, !307, !436, !519}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1305, file: !546, line: 323, baseType: !1321, size: 64, align: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64, align: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!77, !1297}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1305, file: !546, line: 325, baseType: !77, size: 32, align: 32, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !1305, file: !546, line: 327, baseType: !1326, size: 64, align: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64, align: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!77, !1297, !440}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !1305, file: !546, line: 329, baseType: !1326, size: 64, align: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1305, file: !546, line: 331, baseType: !1331, size: 64, align: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64, align: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!77, !1297, !77, !77, !59}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1305, file: !546, line: 333, baseType: !59, size: 64, align: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1299, file: !546, line: 451, baseType: !557, size: 64, align: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !1299, file: !546, line: 453, baseType: !77, size: 32, align: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !1299, file: !546, line: 454, baseType: !77, size: 32, align: 32, offset: 160)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !1299, file: !546, line: 455, baseType: !1288, size: 128, align: 8, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1299, file: !546, line: 456, baseType: !1288, size: 128, align: 8, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1299, file: !546, line: 457, baseType: !1069, size: 256, align: 8, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1299, file: !546, line: 458, baseType: !77, size: 32, align: 32, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1299, file: !546, line: 459, baseType: !59, size: 64, align: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1299, file: !546, line: 460, baseType: !77, size: 32, align: 32, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !546, line: 461, baseType: !91, size: 64, align: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !1299, file: !546, line: 462, baseType: !59, size: 64, align: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !1299, file: !546, line: 463, baseType: !77, size: 32, align: 32, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !1299, file: !546, line: 464, baseType: !77, size: 32, align: 32, offset: 1056)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1299, file: !546, line: 465, baseType: !1069, size: 256, align: 8, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64, align: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1351, line: 82, baseType: !1352)
!1351 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/irssi/task1")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1351, line: 75, size: 2304, align: 64, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1352, file: !1351, line: 76, baseType: !1179, size: 64, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1352, file: !1351, line: 77, baseType: !1193, size: 384, align: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1352, file: !1351, line: 78, baseType: !1193, size: 384, align: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1352, file: !1351, line: 79, baseType: !1193, size: 384, align: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1352, file: !1351, line: 80, baseType: !103, size: 32, align: 32, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1352, file: !1351, line: 81, baseType: !1360, size: 1024, align: 8, offset: 1248)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 1024, align: 8, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !324, file: !262, line: 1090, baseType: !1364, size: 64, align: 64, offset: 3904)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!77, !258, !59}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !324, file: !262, line: 1091, baseType: !59, size: 64, align: 64, offset: 3968)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !324, file: !262, line: 1094, baseType: !1369, size: 64, align: 64, offset: 4032)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64, align: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!77, !258, !59, !519, !59}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !324, file: !262, line: 1096, baseType: !59, size: 64, align: 64, offset: 4096)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !324, file: !262, line: 1100, baseType: !203, size: 64, align: 64, offset: 4160)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !324, file: !262, line: 1101, baseType: !1375, size: 64, align: 64, offset: 4224)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64, align: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!103, !258, !64, !203, !103, !307, !103}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !324, file: !262, line: 1106, baseType: !1379, size: 64, align: 64, offset: 4288)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64, align: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!103, !258, !64, !307, !103}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !324, file: !262, line: 1113, baseType: !103, size: 32, align: 32, offset: 4352)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !324, file: !262, line: 1114, baseType: !1384, size: 64, align: 64, offset: 4416)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64, align: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !262, line: 1114, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !324, file: !262, line: 1115, baseType: !1384, size: 64, align: 64, offset: 4480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !324, file: !262, line: 1118, baseType: !1388, size: 1024, align: 64, offset: 4544)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !262, line: 864, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !262, line: 849, size: 1024, align: 64, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1389, file: !262, line: 851, baseType: !59, size: 64, align: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1389, file: !262, line: 853, baseType: !1283, size: 64, align: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1389, file: !262, line: 855, baseType: !1364, size: 64, align: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1389, file: !262, line: 857, baseType: !1395, size: 64, align: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64, align: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!203, !258, !59}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1389, file: !262, line: 858, baseType: !203, size: 64, align: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1389, file: !262, line: 859, baseType: !591, size: 64, align: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1389, file: !262, line: 859, baseType: !591, size: 64, align: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1389, file: !262, line: 859, baseType: !591, size: 64, align: 64, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1389, file: !262, line: 859, baseType: !591, size: 64, align: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1389, file: !262, line: 859, baseType: !591, size: 64, align: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1389, file: !262, line: 860, baseType: !591, size: 64, align: 64, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1389, file: !262, line: 860, baseType: !591, size: 64, align: 64, offset: 704)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1389, file: !262, line: 860, baseType: !591, size: 64, align: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1389, file: !262, line: 861, baseType: !203, size: 64, align: 64, offset: 832)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1389, file: !262, line: 862, baseType: !77, size: 32, align: 32, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1389, file: !262, line: 863, baseType: !91, size: 64, align: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !324, file: !262, line: 1131, baseType: !1411, size: 64, align: 64, offset: 5568)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64, align: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!77, !258, !1414, !635, !59}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !324, file: !262, line: 1133, baseType: !59, size: 64, align: 64, offset: 5632)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !324, file: !262, line: 1138, baseType: !1417, size: 64, align: 64, offset: 5696)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64, align: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!77, !258, !1420, !307, !436, !103, !59}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !324, file: !262, line: 1142, baseType: !59, size: 64, align: 64, offset: 5760)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !324, file: !262, line: 1145, baseType: !1423, size: 64, align: 64, offset: 5824)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64, align: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !262, line: 388, size: 256, align: 64, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1424, file: !262, line: 388, baseType: !332, size: 256, align: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !324, file: !262, line: 1162, baseType: !1428, size: 64, align: 64, offset: 5888)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64, align: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!77, !258, !1414, !307, !436, !103, !59}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !324, file: !262, line: 1167, baseType: !59, size: 64, align: 64, offset: 5952)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !324, file: !262, line: 1173, baseType: !307, size: 64, align: 64, offset: 6016)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !324, file: !262, line: 1174, baseType: !103, size: 32, align: 32, offset: 6080)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !324, file: !262, line: 1178, baseType: !519, size: 64, align: 64, offset: 6144)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !324, file: !262, line: 1179, baseType: !307, size: 64, align: 64, offset: 6208)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !324, file: !262, line: 1180, baseType: !519, size: 64, align: 64, offset: 6272)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !324, file: !262, line: 1181, baseType: !307, size: 64, align: 64, offset: 6336)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !270, file: !262, line: 459, baseType: !1439, size: 64, align: 64, offset: 1152)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64, align: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!1087, !436}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !270, file: !262, line: 460, baseType: !1443, size: 64, align: 64, offset: 1216)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64, align: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!77, !1087, !307}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !270, file: !262, line: 461, baseType: !1447, size: 64, align: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64, align: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!77, !1250}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !270, file: !262, line: 462, baseType: !1451, size: 64, align: 64, offset: 1344)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64, align: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!77}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !270, file: !262, line: 463, baseType: !1455, size: 64, align: 64, offset: 1408)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64, align: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1087, !103}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !270, file: !262, line: 464, baseType: !1459, size: 64, align: 64, offset: 1472)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64, align: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1462, !77}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !270, file: !262, line: 465, baseType: !1465, size: 64, align: 64, offset: 1536)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64, align: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!117}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !270, file: !262, line: 466, baseType: !1469, size: 64, align: 64, offset: 1600)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64, align: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !262, line: 466, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !270, file: !262, line: 467, baseType: !1451, size: 64, align: 64, offset: 1664)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !270, file: !262, line: 468, baseType: !1473, size: 64, align: 64, offset: 1728)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64, align: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!117, !258, !77, !180}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !270, file: !262, line: 469, baseType: !1477, size: 64, align: 64, offset: 1792)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64, align: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!117, !322, !77, !180}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !261, file: !262, line: 1438, baseType: !1481, size: 64, align: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64, align: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !1483, line: 238, baseType: !1484)
!1483 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/irssi/task1")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !1483, line: 325, size: 896, align: 64, elements: !1485)
!1485 = !{!1486, !1524, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1484, file: !1483, line: 326, baseType: !1487, size: 64, align: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64, align: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !1483, line: 323, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !1483, line: 312, size: 640, align: 64, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1497, !1501, !1505, !1506, !1510, !1514, !1515}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1489, file: !1483, line: 313, baseType: !77, size: 32, align: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !1483, line: 314, baseType: !64, size: 64, align: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !1489, file: !1483, line: 315, baseType: !1494, size: 64, align: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64, align: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!77, !1481, !64, !77}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !1489, file: !1483, line: 316, baseType: !1498, size: 64, align: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64, align: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!77, !1481, !203, !77}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !1489, file: !1483, line: 317, baseType: !1502, size: 64, align: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64, align: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!77, !1481, !64}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !1489, file: !1483, line: 318, baseType: !1498, size: 64, align: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1489, file: !1483, line: 319, baseType: !1507, size: 64, align: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64, align: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!117, !1481, !77, !117, !59}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1489, file: !1483, line: 320, baseType: !1511, size: 64, align: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64, align: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!77, !1481}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1489, file: !1483, line: 321, baseType: !1511, size: 64, align: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1489, file: !1483, line: 322, baseType: !1516, size: 64, align: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64, align: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!117, !1481, !77, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !1483, line: 309, baseType: !1521)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !1523, !77, !64, !77, !117, !117}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1484, file: !1483, line: 328, baseType: !1525, size: 64, align: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64, align: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!117, !1523, !77, !64, !77, !117, !117}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !1484, file: !1483, line: 329, baseType: !203, size: 64, align: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1484, file: !1483, line: 330, baseType: !77, size: 32, align: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1484, file: !1483, line: 331, baseType: !77, size: 32, align: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1483, line: 332, baseType: !77, size: 32, align: 32, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !1484, file: !1483, line: 333, baseType: !77, size: 32, align: 32, offset: 288)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1484, file: !1483, line: 334, baseType: !77, size: 32, align: 32, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1484, file: !1483, line: 335, baseType: !59, size: 64, align: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !1484, file: !1483, line: 336, baseType: !1523, size: 64, align: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !1484, file: !1483, line: 337, baseType: !1523, size: 64, align: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1484, file: !1483, line: 338, baseType: !77, size: 32, align: 32, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !1484, file: !1483, line: 339, baseType: !91, size: 64, align: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !1484, file: !1483, line: 340, baseType: !91, size: 64, align: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1484, file: !1483, line: 341, baseType: !673, size: 128, align: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !261, file: !262, line: 1440, baseType: !1481, size: 64, align: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !261, file: !262, line: 1442, baseType: !1481, size: 64, align: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !261, file: !262, line: 1455, baseType: !77, size: 32, align: 32, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !261, file: !262, line: 1457, baseType: !77, size: 32, align: 32, offset: 352)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !261, file: !262, line: 1458, baseType: !274, size: 64, align: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !261, file: !262, line: 1467, baseType: !77, size: 32, align: 32, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !261, file: !262, line: 1474, baseType: !77, size: 32, align: 32, offset: 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !261, file: !262, line: 1476, baseType: !77, size: 32, align: 32, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !261, file: !262, line: 1478, baseType: !77, size: 32, align: 32, offset: 544)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !262, line: 1480, baseType: !77, size: 32, align: 32, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !261, file: !262, line: 1482, baseType: !77, size: 32, align: 32, offset: 608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !261, file: !262, line: 1483, baseType: !513, size: 64, align: 64, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !261, file: !262, line: 1484, baseType: !59, size: 64, align: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !261, file: !262, line: 1486, baseType: !77, size: 32, align: 32, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !261, file: !262, line: 1487, baseType: !77, size: 32, align: 32, offset: 800)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !261, file: !262, line: 1489, baseType: !307, size: 64, align: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !261, file: !262, line: 1490, baseType: !103, size: 32, align: 32, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !261, file: !262, line: 1491, baseType: !1559, size: 64, align: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64, align: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !1561, line: 163, size: 2752, align: 64, elements: !1562)
!1561 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/irssi/task1")
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !1560, file: !1561, line: 164, baseType: !77, size: 32, align: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !1560, file: !1561, line: 165, baseType: !77, size: 32, align: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1560, file: !1561, line: 166, baseType: !77, size: 32, align: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !1560, file: !1561, line: 167, baseType: !77, size: 32, align: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1560, file: !1561, line: 171, baseType: !103, size: 32, align: 32, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1560, file: !1561, line: 172, baseType: !77, size: 32, align: 32, offset: 160)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1560, file: !1561, line: 173, baseType: !436, size: 64, align: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !1560, file: !1561, line: 174, baseType: !77, size: 32, align: 32, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !1560, file: !1561, line: 175, baseType: !77, size: 32, align: 32, offset: 288)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1560, file: !1561, line: 176, baseType: !77, size: 32, align: 32, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !1560, file: !1561, line: 178, baseType: !77, size: 32, align: 32, offset: 352)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !1560, file: !1561, line: 179, baseType: !77, size: 32, align: 32, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1560, file: !1561, line: 180, baseType: !307, size: 64, align: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1560, file: !1561, line: 181, baseType: !307, size: 64, align: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !1560, file: !1561, line: 182, baseType: !307, size: 64, align: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1560, file: !1561, line: 184, baseType: !103, size: 32, align: 32, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !1560, file: !1561, line: 185, baseType: !103, size: 32, align: 32, offset: 672)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !1560, file: !1561, line: 186, baseType: !77, size: 32, align: 32, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !1560, file: !1561, line: 187, baseType: !103, size: 32, align: 32, offset: 736)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !1560, file: !1561, line: 188, baseType: !77, size: 32, align: 32, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !1560, file: !1561, line: 189, baseType: !307, size: 64, align: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !1560, file: !1561, line: 190, baseType: !307, size: 64, align: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !1560, file: !1561, line: 191, baseType: !307, size: 64, align: 64, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !1560, file: !1561, line: 192, baseType: !307, size: 64, align: 64, offset: 1024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !1560, file: !1561, line: 193, baseType: !307, size: 64, align: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !1560, file: !1561, line: 195, baseType: !103, size: 32, align: 32, offset: 1152)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !1560, file: !1561, line: 196, baseType: !1069, size: 256, align: 8, offset: 1184)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1560, file: !1561, line: 197, baseType: !103, size: 32, align: 32, offset: 1440)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !1560, file: !1561, line: 198, baseType: !1288, size: 128, align: 8, offset: 1472)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !1560, file: !1561, line: 199, baseType: !103, size: 32, align: 32, offset: 1600)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !1560, file: !1561, line: 200, baseType: !1064, size: 384, align: 8, offset: 1632)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1560, file: !1561, line: 201, baseType: !91, size: 64, align: 64, offset: 2048)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1560, file: !1561, line: 202, baseType: !91, size: 64, align: 64, offset: 2112)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1560, file: !1561, line: 215, baseType: !1597, size: 576, align: 32, offset: 2176)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !1561, line: 203, size: 576, align: 32, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1597, file: !1561, line: 204, baseType: !103, size: 32, align: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !1597, file: !1561, line: 205, baseType: !103, size: 32, align: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !1597, file: !1561, line: 206, baseType: !103, size: 32, align: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !1597, file: !1561, line: 207, baseType: !103, size: 32, align: 32, offset: 96)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !1597, file: !1561, line: 208, baseType: !103, size: 32, align: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1597, file: !1561, line: 209, baseType: !103, size: 32, align: 32, offset: 160)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !1597, file: !1561, line: 210, baseType: !1069, size: 256, align: 8, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !1597, file: !1561, line: 211, baseType: !103, size: 32, align: 32, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1597, file: !1561, line: 212, baseType: !103, size: 32, align: 32, offset: 480)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !1597, file: !1561, line: 213, baseType: !103, size: 32, align: 32, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !1597, file: !1561, line: 214, baseType: !103, size: 32, align: 32, offset: 544)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !261, file: !262, line: 1492, baseType: !1611, size: 64, align: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64, align: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !1613, line: 481, size: 9728, align: 64, elements: !1614)
!1613 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/irssi/task1")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1639, !1640, !1652, !1653, !1655, !1656, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1612, file: !1613, line: 482, baseType: !117, size: 64, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !1612, file: !1613, line: 483, baseType: !77, size: 32, align: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1612, file: !1613, line: 484, baseType: !1059, size: 64, align: 8, offset: 96)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !1612, file: !1613, line: 485, baseType: !77, size: 32, align: 32, offset: 160)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !1612, file: !1613, line: 486, baseType: !1620, size: 512, align: 8, offset: 192)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 512, align: 8, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1612, file: !1613, line: 487, baseType: !1059, size: 64, align: 8, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !1612, file: !1613, line: 488, baseType: !77, size: 32, align: 32, offset: 768)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !1612, file: !1613, line: 489, baseType: !1620, size: 512, align: 8, offset: 800)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !1612, file: !1613, line: 490, baseType: !1069, size: 256, align: 8, offset: 1312)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !1612, file: !1613, line: 491, baseType: !1069, size: 256, align: 8, offset: 1568)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !1612, file: !1613, line: 493, baseType: !77, size: 32, align: 32, offset: 1824)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !1612, file: !1613, line: 494, baseType: !77, size: 32, align: 32, offset: 1856)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !1612, file: !1613, line: 496, baseType: !77, size: 32, align: 32, offset: 1888)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1612, file: !1613, line: 497, baseType: !1632, size: 192, align: 64, offset: 1920)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !1613, line: 447, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !1613, line: 438, size: 192, align: 64, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1633, file: !1613, line: 440, baseType: !307, size: 64, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1633, file: !1613, line: 442, baseType: !519, size: 64, align: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1633, file: !1613, line: 444, baseType: !77, size: 32, align: 32, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1633, file: !1613, line: 446, baseType: !77, size: 32, align: 32, offset: 160)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1612, file: !1613, line: 498, baseType: !1632, size: 192, align: 64, offset: 2112)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !1612, file: !1613, line: 499, baseType: !1641, size: 448, align: 64, offset: 2304)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !1613, line: 436, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !1613, line: 403, size: 448, align: 64, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1642, file: !1613, line: 407, baseType: !77, size: 32, align: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1642, file: !1613, line: 411, baseType: !103, size: 32, align: 32, offset: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !1642, file: !1613, line: 415, baseType: !103, size: 32, align: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1642, file: !1613, line: 419, baseType: !307, size: 64, align: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1642, file: !1613, line: 423, baseType: !307, size: 64, align: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1642, file: !1613, line: 427, baseType: !307, size: 64, align: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1642, file: !1613, line: 431, baseType: !91, size: 64, align: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !1642, file: !1613, line: 435, baseType: !1059, size: 64, align: 8, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !1612, file: !1613, line: 500, baseType: !1641, size: 448, align: 64, offset: 2752)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1612, file: !1613, line: 505, baseType: !1654, size: 16, align: 8, offset: 3200)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 16, align: 8, elements: !621)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1612, file: !1613, line: 506, baseType: !103, size: 32, align: 32, offset: 3232)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1612, file: !1613, line: 507, baseType: !1657, size: 32, align: 8, offset: 3264)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 32, align: 8, elements: !1658)
!1658 = !{!1659}
!1659 = !DISubrange(count: 4)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1612, file: !1613, line: 508, baseType: !103, size: 32, align: 32, offset: 3296)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1612, file: !1613, line: 510, baseType: !103, size: 32, align: 32, offset: 3328)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1612, file: !1613, line: 511, baseType: !77, size: 32, align: 32, offset: 3360)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !1612, file: !1613, line: 512, baseType: !77, size: 32, align: 32, offset: 3392)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1612, file: !1613, line: 513, baseType: !77, size: 32, align: 32, offset: 3424)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1612, file: !1613, line: 514, baseType: !436, size: 64, align: 64, offset: 3456)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !1612, file: !1613, line: 516, baseType: !1481, size: 64, align: 64, offset: 3520)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !1612, file: !1613, line: 521, baseType: !1668, size: 64, align: 64, offset: 3584)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !1612, file: !1613, line: 527, baseType: !77, size: 32, align: 32, offset: 3648)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !1612, file: !1613, line: 528, baseType: !77, size: 32, align: 32, offset: 3680)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !1612, file: !1613, line: 529, baseType: !77, size: 32, align: 32, offset: 3712)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !1612, file: !1613, line: 534, baseType: !77, size: 32, align: 32, offset: 3744)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !1612, file: !1613, line: 535, baseType: !1654, size: 16, align: 8, offset: 3776)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !1612, file: !1613, line: 540, baseType: !77, size: 32, align: 32, offset: 3808)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !1612, file: !1613, line: 541, baseType: !77, size: 32, align: 32, offset: 3840)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !1612, file: !1613, line: 542, baseType: !77, size: 32, align: 32, offset: 3872)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !1612, file: !1613, line: 543, baseType: !77, size: 32, align: 32, offset: 3904)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !1612, file: !1613, line: 549, baseType: !59, size: 64, align: 64, offset: 3968)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !1612, file: !1613, line: 550, baseType: !519, size: 64, align: 64, offset: 4032)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !1612, file: !1613, line: 551, baseType: !59, size: 64, align: 64, offset: 4096)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !1612, file: !1613, line: 552, baseType: !519, size: 64, align: 64, offset: 4160)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1612, file: !1613, line: 592, baseType: !1683, size: 4224, align: 64, offset: 4224)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1613, line: 553, size: 4224, align: 64, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1698, !1699, !1700, !1701, !1702, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1755}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !1683, file: !1613, line: 555, baseType: !1360, size: 1024, align: 8)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !1683, file: !1613, line: 557, baseType: !1360, size: 1024, align: 8, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !1683, file: !1613, line: 558, baseType: !77, size: 32, align: 32, offset: 2048)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !1683, file: !1613, line: 559, baseType: !1360, size: 1024, align: 8, offset: 2080)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !1683, file: !1613, line: 560, baseType: !77, size: 32, align: 32, offset: 3104)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !1683, file: !1613, line: 561, baseType: !91, size: 64, align: 64, offset: 3136)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !1683, file: !1613, line: 562, baseType: !77, size: 32, align: 32, offset: 3200)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !1683, file: !1613, line: 564, baseType: !1087, size: 64, align: 64, offset: 3264)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1683, file: !1613, line: 566, baseType: !794, size: 64, align: 64, offset: 3328)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !1683, file: !1613, line: 569, baseType: !1695, size: 64, align: 64, offset: 3392)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !1697, line: 741, baseType: !817)
!1697 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !1683, file: !1613, line: 572, baseType: !77, size: 32, align: 32, offset: 3456)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !1683, file: !1613, line: 573, baseType: !77, size: 32, align: 32, offset: 3488)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !1683, file: !1613, line: 575, baseType: !77, size: 32, align: 32, offset: 3520)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !1683, file: !1613, line: 576, baseType: !77, size: 32, align: 32, offset: 3552)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !1683, file: !1613, line: 577, baseType: !1703, size: 72, align: 8, offset: 3584)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 72, align: 8, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 9)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !1683, file: !1613, line: 578, baseType: !1253, size: 64, align: 64, offset: 3712)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !1683, file: !1613, line: 579, baseType: !77, size: 32, align: 32, offset: 3776)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !1683, file: !1613, line: 580, baseType: !77, size: 32, align: 32, offset: 3808)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !1683, file: !1613, line: 581, baseType: !307, size: 64, align: 64, offset: 3840)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !1683, file: !1613, line: 582, baseType: !1302, size: 64, align: 64, offset: 3904)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !1683, file: !1613, line: 583, baseType: !1179, size: 64, align: 64, offset: 3968)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !1683, file: !1613, line: 584, baseType: !77, size: 32, align: 32, offset: 4032)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !1683, file: !1613, line: 585, baseType: !77, size: 32, align: 32, offset: 4064)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !1683, file: !1613, line: 587, baseType: !1715, size: 64, align: 64, offset: 4096)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64, align: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !262, line: 908, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !262, line: 912, size: 192, align: 64, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1718, file: !262, line: 913, baseType: !77, size: 32, align: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1718, file: !262, line: 914, baseType: !64, size: 64, align: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1718, file: !262, line: 916, baseType: !1723, size: 64, align: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64, align: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !1725, line: 29, baseType: !1726)
!1725 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/irssi/task1")
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !1725, line: 13, size: 512, align: 64, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1744, !1748, !1752, !1753, !1754}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1726, file: !1725, line: 14, baseType: !77, size: 32, align: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1726, file: !1725, line: 15, baseType: !64, size: 64, align: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1726, file: !1725, line: 16, baseType: !1731, size: 64, align: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64, align: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!77, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !1725, line: 11, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !1725, line: 31, size: 448, align: 64, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1736, file: !1725, line: 32, baseType: !1723, size: 64, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !1736, file: !1725, line: 33, baseType: !91, size: 64, align: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !1736, file: !1725, line: 34, baseType: !91, size: 64, align: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !1736, file: !1725, line: 35, baseType: !91, size: 64, align: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !1736, file: !1725, line: 36, baseType: !91, size: 64, align: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1736, file: !1725, line: 37, baseType: !673, size: 128, align: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1726, file: !1725, line: 17, baseType: !1745, size: 64, align: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64, align: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1734}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1726, file: !1725, line: 18, baseType: !1749, size: 64, align: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64, align: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!77, !1734, !307, !103, !307, !103}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !1726, file: !1725, line: 21, baseType: !1749, size: 64, align: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1726, file: !1725, line: 27, baseType: !1465, size: 64, align: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1726, file: !1725, line: 28, baseType: !1465, size: 64, align: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !1683, file: !1613, line: 591, baseType: !77, size: 32, align: 32, offset: 4160)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !1612, file: !1613, line: 595, baseType: !1620, size: 512, align: 8, offset: 8448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !1612, file: !1613, line: 596, baseType: !308, size: 8, align: 8, offset: 8960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !1612, file: !1613, line: 597, baseType: !1620, size: 512, align: 8, offset: 8968)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !1612, file: !1613, line: 598, baseType: !308, size: 8, align: 8, offset: 9480)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !1612, file: !1613, line: 599, baseType: !77, size: 32, align: 32, offset: 9504)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !1612, file: !1613, line: 605, baseType: !77, size: 32, align: 32, offset: 9536)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !1612, file: !1613, line: 615, baseType: !63, size: 8, align: 8, offset: 9568)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !1612, file: !1613, line: 628, baseType: !307, size: 64, align: 64, offset: 9600)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !1612, file: !1613, line: 629, baseType: !103, size: 32, align: 32, offset: 9664)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !261, file: !262, line: 1493, baseType: !1766, size: 64, align: 64, offset: 1088)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64, align: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !1768, line: 182, size: 7168, align: 64, elements: !1769)
!1768 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/irssi/task1")
!1769 = !{!1770, !1771, !1775, !1776, !1777, !1779, !1780, !1786, !1787, !1788, !1789, !1790, !1791, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1825, !1826, !1832, !1839, !1840, !1841, !1842, !1846, !1847, !1848}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !1767, file: !1768, line: 183, baseType: !103, size: 32, align: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1767, file: !1768, line: 184, baseType: !1772, size: 2048, align: 8, offset: 32)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 2048, align: 8, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !1767, file: !1768, line: 185, baseType: !1772, size: 2048, align: 8, offset: 2080)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !1767, file: !1768, line: 186, baseType: !103, size: 32, align: 32, offset: 4128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !1767, file: !1768, line: 192, baseType: !1778, size: 16, align: 16, offset: 4160)
!1778 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !1767, file: !1768, line: 193, baseType: !1778, size: 16, align: 16, offset: 4176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1767, file: !1768, line: 195, baseType: !1781, size: 128, align: 64, offset: 4224)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !1768, line: 133, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !1768, line: 128, size: 128, align: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1782, file: !1768, line: 129, baseType: !91, size: 64, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !1782, file: !1768, line: 131, baseType: !1059, size: 64, align: 8, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !1767, file: !1768, line: 197, baseType: !1781, size: 128, align: 64, offset: 4352)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !1767, file: !1768, line: 199, baseType: !1778, size: 16, align: 16, offset: 4480)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !1767, file: !1768, line: 200, baseType: !1778, size: 16, align: 16, offset: 4496)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !1767, file: !1768, line: 201, baseType: !1778, size: 16, align: 16, offset: 4512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !1767, file: !1768, line: 203, baseType: !1059, size: 64, align: 8, offset: 4528)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !1767, file: !1768, line: 205, baseType: !1792, size: 128, align: 64, offset: 4608)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !1768, line: 174, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !1768, line: 171, size: 128, align: 64, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1793, file: !1768, line: 172, baseType: !1778, size: 16, align: 16)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1793, file: !1768, line: 173, baseType: !1797, size: 64, align: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !1798, line: 70, baseType: !1799)
!1798 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/irssi/task1")
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64, align: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !1798, line: 70, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !1767, file: !1768, line: 206, baseType: !1792, size: 128, align: 64, offset: 4736)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !1767, file: !1768, line: 208, baseType: !1797, size: 64, align: 64, offset: 4864)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !1767, file: !1768, line: 210, baseType: !1797, size: 64, align: 64, offset: 4928)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !1767, file: !1768, line: 216, baseType: !1792, size: 128, align: 64, offset: 4992)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1767, file: !1768, line: 218, baseType: !103, size: 32, align: 32, offset: 5120)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !1767, file: !1768, line: 219, baseType: !103, size: 32, align: 32, offset: 5152)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1767, file: !1768, line: 220, baseType: !103, size: 32, align: 32, offset: 5184)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !1767, file: !1768, line: 221, baseType: !1809, size: 704, align: 64, offset: 5248)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !1768, line: 147, size: 704, align: 64, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1809, file: !1768, line: 148, baseType: !308, size: 8, align: 8)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !1809, file: !1768, line: 149, baseType: !91, size: 64, align: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1809, file: !1768, line: 150, baseType: !1778, size: 16, align: 16, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !1809, file: !1768, line: 151, baseType: !91, size: 64, align: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !1809, file: !1768, line: 152, baseType: !91, size: 64, align: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !1809, file: !1768, line: 153, baseType: !103, size: 32, align: 32, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !1809, file: !1768, line: 154, baseType: !1818, size: 320, align: 64, offset: 384)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !1768, line: 135, size: 320, align: 64, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823, !1824}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !1818, file: !1768, line: 136, baseType: !1297, size: 64, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !1818, file: !1768, line: 137, baseType: !1192, size: 64, align: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1818, file: !1768, line: 139, baseType: !1734, size: 64, align: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1818, file: !1768, line: 143, baseType: !1126, size: 64, align: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1818, file: !1768, line: 144, baseType: !1778, size: 16, align: 16, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !1767, file: !1768, line: 222, baseType: !1809, size: 704, align: 64, offset: 5952)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1767, file: !1768, line: 223, baseType: !1827, size: 96, align: 32, offset: 6656)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !1768, line: 162, size: 96, align: 32, elements: !1828)
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1827, file: !1768, line: 164, baseType: !103, size: 32, align: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1827, file: !1768, line: 166, baseType: !103, size: 32, align: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1827, file: !1768, line: 168, baseType: !103, size: 32, align: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !1767, file: !1768, line: 227, baseType: !1833, size: 128, align: 64, offset: 6784)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1834, line: 30, size: 128, align: 64, elements: !1835)
!1834 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1833, file: !1834, line: 32, baseType: !371, size: 64, align: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1833, file: !1834, line: 33, baseType: !1838, size: 64, align: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !372, line: 141, baseType: !117)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !1767, file: !1768, line: 229, baseType: !1778, size: 16, align: 16, offset: 6912)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1767, file: !1768, line: 234, baseType: !1654, size: 16, align: 8, offset: 6928)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1767, file: !1768, line: 235, baseType: !103, size: 32, align: 32, offset: 6944)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1767, file: !1768, line: 236, baseType: !1843, size: 96, align: 8, offset: 6976)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 96, align: 8, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 12)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1767, file: !1768, line: 237, baseType: !103, size: 32, align: 32, offset: 7072)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !1767, file: !1768, line: 238, baseType: !103, size: 32, align: 32, offset: 7104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !1767, file: !1768, line: 243, baseType: !103, size: 32, align: 32, offset: 7136)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !261, file: !262, line: 1494, baseType: !77, size: 32, align: 32, offset: 1152)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !261, file: !262, line: 1497, baseType: !1265, size: 64, align: 64, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !261, file: !262, line: 1499, baseType: !59, size: 64, align: 64, offset: 1280)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !261, file: !262, line: 1500, baseType: !77, size: 32, align: 32, offset: 1344)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !261, file: !262, line: 1501, baseType: !363, size: 64, align: 64, offset: 1408)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !261, file: !262, line: 1507, baseType: !328, size: 64, align: 64, offset: 1472)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !261, file: !262, line: 1508, baseType: !328, size: 64, align: 64, offset: 1536)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !261, file: !262, line: 1513, baseType: !77, size: 32, align: 32, offset: 1600)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !261, file: !262, line: 1514, baseType: !1297, size: 64, align: 64, offset: 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !261, file: !262, line: 1515, baseType: !1192, size: 64, align: 64, offset: 1728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !261, file: !262, line: 1517, baseType: !1734, size: 64, align: 64, offset: 1792)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !261, file: !262, line: 1521, baseType: !1297, size: 64, align: 64, offset: 1856)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !261, file: !262, line: 1522, baseType: !1192, size: 64, align: 64, offset: 1920)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !261, file: !262, line: 1524, baseType: !1734, size: 64, align: 64, offset: 1984)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !261, file: !262, line: 1531, baseType: !1261, size: 64, align: 64, offset: 2048)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !261, file: !262, line: 1536, baseType: !103, size: 32, align: 32, offset: 2112)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !261, file: !262, line: 1537, baseType: !1069, size: 256, align: 8, offset: 2144)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !261, file: !262, line: 1539, baseType: !1126, size: 64, align: 64, offset: 2432)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !261, file: !262, line: 1541, baseType: !1274, size: 64, align: 64, offset: 2496)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !261, file: !262, line: 1547, baseType: !77, size: 32, align: 32, offset: 2560)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !261, file: !262, line: 1549, baseType: !919, size: 64, align: 64, offset: 2624)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !261, file: !262, line: 1551, baseType: !1247, size: 64, align: 64, offset: 2688)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !261, file: !262, line: 1553, baseType: !77, size: 32, align: 32, offset: 2752)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !261, file: !262, line: 1555, baseType: !77, size: 32, align: 32, offset: 2784)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !261, file: !262, line: 1561, baseType: !1375, size: 64, align: 64, offset: 2816)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !261, file: !262, line: 1566, baseType: !1379, size: 64, align: 64, offset: 2880)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !261, file: !262, line: 1570, baseType: !322, size: 64, align: 64, offset: 2944)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !261, file: !262, line: 1575, baseType: !77, size: 32, align: 32, offset: 3008)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !261, file: !262, line: 1577, baseType: !117, size: 64, align: 64, offset: 3072)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !261, file: !262, line: 1578, baseType: !673, size: 128, align: 64, offset: 3136)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !261, file: !262, line: 1580, baseType: !1253, size: 64, align: 64, offset: 3264)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !261, file: !262, line: 1581, baseType: !77, size: 32, align: 32, offset: 3328)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !261, file: !262, line: 1583, baseType: !91, size: 64, align: 64, offset: 3392)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !261, file: !262, line: 1585, baseType: !91, size: 64, align: 64, offset: 3456)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !261, file: !262, line: 1586, baseType: !117, size: 64, align: 64, offset: 3520)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !261, file: !262, line: 1587, baseType: !77, size: 32, align: 32, offset: 3584)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !261, file: !262, line: 1589, baseType: !77, size: 32, align: 32, offset: 3616)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !261, file: !262, line: 1590, baseType: !103, size: 32, align: 32, offset: 3648)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !261, file: !262, line: 1593, baseType: !1888, size: 64, align: 64, offset: 3712)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64, align: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !258, !77, !77, !307, !77, !59}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !261, file: !262, line: 1595, baseType: !59, size: 64, align: 64, offset: 3776)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !261, file: !262, line: 1596, baseType: !203, size: 64, align: 64, offset: 3840)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !261, file: !262, line: 1603, baseType: !77, size: 32, align: 32, offset: 3904)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !261, file: !262, line: 1606, baseType: !77, size: 32, align: 32, offset: 3936)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !261, file: !262, line: 1608, baseType: !77, size: 32, align: 32, offset: 3968)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !261, file: !262, line: 1610, baseType: !1897, size: 64, align: 64, offset: 4032)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64, align: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !262, line: 1610, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !261, file: !262, line: 1611, baseType: !1900, size: 64, align: 64, offset: 4096)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64, align: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !404, line: 202, baseType: !828)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !261, file: !262, line: 1613, baseType: !307, size: 64, align: 64, offset: 4160)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !261, file: !262, line: 1614, baseType: !77, size: 32, align: 32, offset: 4224)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !261, file: !262, line: 1616, baseType: !77, size: 32, align: 32, offset: 4256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !261, file: !262, line: 1618, baseType: !519, size: 64, align: 64, offset: 4288)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !261, file: !262, line: 1620, baseType: !307, size: 64, align: 64, offset: 4352)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !261, file: !262, line: 1621, baseType: !519, size: 64, align: 64, offset: 4416)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !261, file: !262, line: 1623, baseType: !307, size: 64, align: 64, offset: 4480)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !261, file: !262, line: 1629, baseType: !59, size: 64, align: 64, offset: 4544)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !261, file: !262, line: 1630, baseType: !519, size: 64, align: 64, offset: 4608)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !261, file: !262, line: 1632, baseType: !1912, size: 64, align: 64, offset: 4672)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !262, line: 373, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1915, line: 802, size: 128, align: 64, elements: !1916)
!1915 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/irssi/task1")
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1914, file: !1915, line: 803, baseType: !1778, size: 16, align: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1914, file: !1915, line: 804, baseType: !59, size: 64, align: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !261, file: !262, line: 1634, baseType: !1920, size: 64, align: 64, offset: 4736)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !262, line: 390, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64, align: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!77, !258, !436, !77, !59}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !261, file: !262, line: 1635, baseType: !59, size: 64, align: 64, offset: 4800)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !261, file: !262, line: 1637, baseType: !1926, size: 64, align: 64, offset: 4864)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !262, line: 393, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64, align: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!77, !258, !59, !302, !328, !1930, !59}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64, align: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64, align: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !261, file: !262, line: 1638, baseType: !59, size: 64, align: 64, offset: 4928)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !261, file: !262, line: 1639, baseType: !322, size: 64, align: 64, offset: 4992)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !261, file: !262, line: 1648, baseType: !307, size: 64, align: 64, offset: 5056)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !261, file: !262, line: 1649, baseType: !308, size: 8, align: 8, offset: 5120)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !261, file: !262, line: 1653, baseType: !1423, size: 64, align: 64, offset: 5184)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !261, file: !262, line: 1655, baseType: !1938, size: 64, align: 64, offset: 5248)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !262, line: 386, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !262, line: 383, size: 128, align: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !262, line: 384, baseType: !64, size: 64, align: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1940, file: !262, line: 385, baseType: !91, size: 64, align: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !261, file: !262, line: 1662, baseType: !103, size: 32, align: 32, offset: 5312)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !261, file: !262, line: 1664, baseType: !103, size: 32, align: 32, offset: 5344)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !261, file: !262, line: 1666, baseType: !103, size: 32, align: 32, offset: 5376)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !261, file: !262, line: 1675, baseType: !77, size: 32, align: 32, offset: 5408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !261, file: !262, line: 1678, baseType: !1388, size: 1024, align: 64, offset: 5440)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !261, file: !262, line: 1685, baseType: !307, size: 64, align: 64, offset: 6464)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !261, file: !262, line: 1686, baseType: !103, size: 32, align: 32, offset: 6528)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !69, file: !68, line: 72, baseType: !322, size: 64, align: 64, offset: 1088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !69, file: !68, line: 73, baseType: !103, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !69, file: !68, line: 74, baseType: !1954, size: 64, align: 64, offset: 1216)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64, align: 64)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !1956, line: 107, baseType: !1957)
!1956 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !1958, line: 30, size: 2240, align: 64, elements: !1959)
!1958 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!1959 = !{!1960, !1962, !1963, !1964, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2057, !2058, !2060, !2061, !2062, !2066, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2085, !2086, !2087, !2088, !2089, !2093, !2097, !2101, !2105, !2109, !2113, !2120, !2127, !2131}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1957, file: !1961, line: 3, baseType: !77, size: 32, align: 32)
!1961 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1957, file: !1961, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1957, file: !1961, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !1957, file: !1961, line: 8, baseType: !1965, size: 64, align: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !1956, line: 113, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !1958, line: 25, size: 1920, align: 64, elements: !1968)
!1968 = !{!1969, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1967, file: !1970, line: 3, baseType: !77, size: 32, align: 32)
!1970 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1967, file: !1970, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1967, file: !1970, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !1967, file: !1970, line: 9, baseType: !203, size: 64, align: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !1967, file: !1970, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !1967, file: !1970, line: 11, baseType: !203, size: 64, align: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !1967, file: !1970, line: 11, baseType: !203, size: 64, align: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !1967, file: !1970, line: 11, baseType: !203, size: 64, align: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1967, file: !1970, line: 13, baseType: !1778, size: 16, align: 16, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1967, file: !1970, line: 14, baseType: !203, size: 64, align: 64, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1967, file: !1970, line: 15, baseType: !203, size: 64, align: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1967, file: !1970, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1967, file: !1970, line: 17, baseType: !203, size: 64, align: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1967, file: !1970, line: 19, baseType: !1984, size: 64, align: 64, offset: 768)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64, align: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !1956, line: 99, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !1987, line: 22, size: 160, align: 32, elements: !1988)
!1987 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1986, file: !1987, line: 23, baseType: !1778, size: 16, align: 16)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1986, file: !1987, line: 24, baseType: !1991, size: 128, align: 32, offset: 32)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !1992, line: 211, size: 128, align: 32, elements: !1993)
!1992 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1991, file: !1992, line: 220, baseType: !1995, size: 128, align: 32)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1992, line: 213, size: 128, align: 32, elements: !1996)
!1996 = !{!1997, !2001, !2004}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1995, file: !1992, line: 215, baseType: !1998, size: 128, align: 8)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 128, align: 8, elements: !1289)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !2000, line: 48, baseType: !308)
!2000 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1995, file: !1992, line: 217, baseType: !2002, size: 128, align: 16)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2003, size: 128, align: 16, elements: !1060)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !2000, line: 49, baseType: !1778)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1995, file: !1992, line: 218, baseType: !2005, size: 128, align: 32)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2006, size: 128, align: 32, elements: !1658)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !2000, line: 51, baseType: !103)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1967, file: !1970, line: 19, baseType: !1984, size: 64, align: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1967, file: !1970, line: 21, baseType: !203, size: 64, align: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1967, file: !1970, line: 22, baseType: !203, size: 64, align: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !1967, file: !1970, line: 23, baseType: !203, size: 64, align: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !1967, file: !1970, line: 24, baseType: !203, size: 64, align: 64, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !1967, file: !1970, line: 26, baseType: !203, size: 64, align: 64, offset: 1152)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !1967, file: !1970, line: 27, baseType: !203, size: 64, align: 64, offset: 1216)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !1967, file: !1970, line: 28, baseType: !203, size: 64, align: 64, offset: 1280)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !1967, file: !1970, line: 29, baseType: !203, size: 64, align: 64, offset: 1344)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !1967, file: !1970, line: 30, baseType: !203, size: 64, align: 64, offset: 1408)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !1967, file: !1970, line: 31, baseType: !203, size: 64, align: 64, offset: 1472)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !1967, file: !1970, line: 32, baseType: !203, size: 64, align: 64, offset: 1536)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !1967, file: !1970, line: 33, baseType: !203, size: 64, align: 64, offset: 1600)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !1967, file: !1970, line: 35, baseType: !88, size: 64, align: 64, offset: 1664)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !1967, file: !1970, line: 38, baseType: !103, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !1967, file: !1970, line: 39, baseType: !103, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !1967, file: !1970, line: 40, baseType: !103, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !1967, file: !1970, line: 41, baseType: !103, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !1967, file: !1970, line: 42, baseType: !103, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !1967, file: !1970, line: 43, baseType: !103, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !1967, file: !1970, line: 44, baseType: !103, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !1967, file: !1970, line: 45, baseType: !103, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1967, file: !1970, line: 46, baseType: !203, size: 64, align: 64, offset: 1792)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !1967, file: !1970, line: 47, baseType: !203, size: 64, align: 64, offset: 1856)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1957, file: !1961, line: 9, baseType: !369, size: 64, align: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !1957, file: !1961, line: 10, baseType: !369, size: 64, align: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1957, file: !1961, line: 12, baseType: !203, size: 64, align: 64, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1957, file: !1961, line: 13, baseType: !203, size: 64, align: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !1957, file: !1961, line: 15, baseType: !103, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !1957, file: !1961, line: 16, baseType: !103, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !1957, file: !1961, line: 17, baseType: !103, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !1957, file: !1961, line: 18, baseType: !103, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !1957, file: !1961, line: 19, baseType: !103, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1957, file: !1961, line: 21, baseType: !2041, size: 64, align: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !1956, line: 102, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !2044, line: 7, size: 384, align: 64, elements: !2045)
!2044 = !DIFile(filename: "net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!2045 = !{!2046, !2047, !2051, !2052, !2053, !2054, !2055, !2056}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2043, file: !2044, line: 8, baseType: !88, size: 64, align: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !2043, file: !2044, line: 9, baseType: !2048, size: 64, align: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64, align: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !1956, line: 101, baseType: !2050)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !1956, line: 101, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !2043, file: !2044, line: 11, baseType: !77, size: 32, align: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !2043, file: !2044, line: 12, baseType: !77, size: 32, align: 32, offset: 160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !2043, file: !2044, line: 13, baseType: !77, size: 32, align: 32, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2043, file: !2044, line: 14, baseType: !203, size: 64, align: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !2043, file: !2044, line: 15, baseType: !77, size: 32, align: 32, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2043, file: !2044, line: 16, baseType: !103, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !1957, file: !1961, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !1957, file: !1961, line: 25, baseType: !2059, size: 128, align: 64, offset: 640)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, align: 64, elements: !621)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !1957, file: !1961, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !1957, file: !1961, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !1957, file: !1961, line: 29, baseType: !2063, size: 64, align: 64, offset: 832)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !1956, line: 103, baseType: !2065)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !1956, line: 103, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1957, file: !1961, line: 30, baseType: !2067, size: 64, align: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64, align: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !2069, line: 37, baseType: !2070)
!2069 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !2069, line: 37, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1957, file: !1961, line: 32, baseType: !203, size: 64, align: 64, offset: 960)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !1957, file: !1961, line: 33, baseType: !203, size: 64, align: 64, offset: 1024)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !1957, file: !1961, line: 34, baseType: !203, size: 64, align: 64, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !1957, file: !1961, line: 35, baseType: !103, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !1957, file: !1961, line: 36, baseType: !103, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !1957, file: !1961, line: 37, baseType: !103, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !1957, file: !1961, line: 38, baseType: !103, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !1957, file: !1961, line: 40, baseType: !2079, size: 128, align: 64, offset: 1216)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !62, line: 504, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !62, line: 506, size: 128, align: 64, elements: !2081)
!2081 = !{!2082, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2080, file: !62, line: 508, baseType: !2083, size: 64, align: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !62, line: 48, baseType: !117)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2080, file: !62, line: 509, baseType: !2083, size: 64, align: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !1957, file: !1961, line: 41, baseType: !369, size: 64, align: 64, offset: 1344)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !1957, file: !1961, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1957, file: !1961, line: 44, baseType: !193, size: 64, align: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !1957, file: !1961, line: 45, baseType: !193, size: 64, align: 64, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !1957, file: !1961, line: 53, baseType: !2090, size: 64, align: 64, offset: 1600)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64, align: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !1954, !64, !77}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !1957, file: !1961, line: 55, baseType: !2094, size: 64, align: 64, offset: 1664)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64, align: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!77, !1954, !63}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !1957, file: !1961, line: 57, baseType: !2098, size: 64, align: 64, offset: 1728)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64, align: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!77, !1954, !64}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !1957, file: !1961, line: 60, baseType: !2102, size: 64, align: 64, offset: 1792)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64, align: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!64, !1954}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !1957, file: !1961, line: 62, baseType: !2106, size: 64, align: 64, offset: 1856)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64, align: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !1954, !64, !64, !77}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !1957, file: !1961, line: 65, baseType: !2110, size: 64, align: 64, offset: 1920)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64, align: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!338, !1954, !64, !64}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !1957, file: !1961, line: 69, baseType: !2114, size: 64, align: 64, offset: 1984)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64, align: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!2117, !1954, !64}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64, align: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !1956, line: 109, baseType: !2119)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !1956, line: 109, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !1957, file: !1961, line: 70, baseType: !2121, size: 64, align: 64, offset: 2048)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64, align: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !1954, !64}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64, align: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !1956, line: 110, baseType: !2126)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !1956, line: 110, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !1957, file: !1961, line: 71, baseType: !2128, size: 64, align: 64, offset: 2112)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64, align: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!77, !64, !64}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !1957, file: !1961, line: 73, baseType: !2128, size: 64, align: 64, offset: 2176)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !69, file: !68, line: 75, baseType: !77, size: 32, align: 32, offset: 1280)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAME", file: !855, line: 207, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GENERAL_NAME_st", file: !855, line: 177, size: 128, align: 64, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2136, file: !855, line: 187, baseType: !77, size: 32, align: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2136, file: !855, line: 206, baseType: !2140, size: 64, align: 64, offset: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2136, file: !855, line: 188, size: 64, align: 64, elements: !2141)
!2141 = !{!2142, !2143, !2150, !2151, !2152, !2153, !2154, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2140, file: !855, line: 189, baseType: !203, size: 64, align: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "otherName", scope: !2140, file: !855, line: 190, baseType: !2144, size: 64, align: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "OTHERNAME", file: !855, line: 170, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otherName_st", file: !855, line: 167, size: 128, align: 64, elements: !2147)
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !2146, file: !855, line: 168, baseType: !427, size: 64, align: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2146, file: !855, line: 169, baseType: !440, size: 64, align: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rfc822Name", scope: !2140, file: !855, line: 191, baseType: !472, size: 64, align: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dNSName", scope: !2140, file: !855, line: 192, baseType: !472, size: 64, align: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "x400Address", scope: !2140, file: !855, line: 193, baseType: !440, size: 64, align: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "directoryName", scope: !2140, file: !855, line: 194, baseType: !502, size: 64, align: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ediPartyName", scope: !2140, file: !855, line: 195, baseType: !2155, size: 64, align: 64)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64, align: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "EDIPARTYNAME", file: !855, line: 175, baseType: !2157)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EDIPartyName_st", file: !855, line: 172, size: 128, align: 64, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nameAssigner", scope: !2157, file: !855, line: 173, baseType: !452, size: 64, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "partyName", scope: !2157, file: !855, line: 174, baseType: !452, size: 64, align: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "uniformResourceIdentifier", scope: !2140, file: !855, line: 196, baseType: !472, size: 64, align: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "iPAddress", scope: !2140, file: !855, line: 197, baseType: !463, size: 64, align: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "registeredID", scope: !2140, file: !855, line: 198, baseType: !427, size: 64, align: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2140, file: !855, line: 200, baseType: !463, size: 64, align: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dirn", scope: !2140, file: !855, line: 201, baseType: !502, size: 64, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ia5", scope: !2140, file: !855, line: 202, baseType: !472, size: 64, align: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rid", scope: !2140, file: !855, line: 204, baseType: !427, size: 64, align: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2140, file: !855, line: 205, baseType: !440, size: 64, align: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64, align: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !59}
!2172 = !{!2173, !2174, !2175}
!2173 = distinct !DIGlobalVariable(name: "store", scope: !0, file: !68, line: 81, type: !397, isLocal: true, isDefinition: true, variable: %struct.x509_store_st** @store)
!2174 = distinct !DIGlobalVariable(name: "ssl_inited", scope: !0, file: !68, line: 78, type: !77, isLocal: true, isDefinition: true, variable: i32* @ssl_inited)
!2175 = distinct !DIGlobalVariable(name: "irssi_ssl_channel_funcs", scope: !0, file: !68, line: 376, type: !80, isLocal: true, isDefinition: true, variable: %struct._GIOFuncs* @irssi_ssl_channel_funcs)
!2176 = !{i32 2, !"Dwarf Version", i32 4}
!2177 = !{i32 2, !"Debug Info Version", i32 3}
!2178 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!2179 = distinct !DISubprogram(name: "irssi_ssl_init", scope: !68, file: !68, line: 387, type: !2180, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!152}
!2182 = !{}
!2183 = !DILocalVariable(name: "success", scope: !2179, file: !68, line: 390, type: !77)
!2184 = !DIExpression()
!2185 = !DILocation(line: 390, column: 6, scope: !2179)
!2186 = !DILocation(line: 399, column: 2, scope: !2179)
!2187 = !DILocation(line: 400, column: 2, scope: !2179)
!2188 = !DILocation(line: 401, column: 1, scope: !2179)
!2189 = !DILocation(line: 405, column: 10, scope: !2179)
!2190 = !DILocation(line: 405, column: 8, scope: !2179)
!2191 = !DILocation(line: 406, column: 6, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2179, file: !68, line: 406, column: 6)
!2193 = !DILocation(line: 406, column: 12, scope: !2192)
!2194 = !DILocation(line: 406, column: 6, scope: !2179)
!2195 = !DILocation(line: 407, column: 3, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !68, line: 406, column: 20)
!2197 = distinct !{!2197, !2195}
!2198 = !DILocation(line: 407, column: 8, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2200, file: !68, discriminator: 1)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !68, line: 407, column: 6)
!2201 = !DILocation(line: 407, column: 106, scope: !2199)
!2202 = !DILocation(line: 407, column: 106, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !68, discriminator: 2)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !68, line: 407, column: 106)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !68, line: 407, column: 106)
!2206 = distinct !{!2206, !2207}
!2207 = !DILocation(line: 407, column: 106, scope: !2200)
!2208 = !DILocation(line: 408, column: 3, scope: !2196)
!2209 = !DILocation(line: 411, column: 41, scope: !2179)
!2210 = !DILocation(line: 411, column: 12, scope: !2179)
!2211 = !DILocation(line: 411, column: 10, scope: !2179)
!2212 = !DILocation(line: 412, column: 6, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2179, file: !68, line: 412, column: 6)
!2214 = !DILocation(line: 412, column: 14, scope: !2213)
!2215 = !DILocation(line: 412, column: 6, scope: !2179)
!2216 = !DILocation(line: 413, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !68, line: 412, column: 20)
!2218 = !DILocation(line: 414, column: 19, scope: !2217)
!2219 = !DILocation(line: 414, column: 3, scope: !2217)
!2220 = !DILocation(line: 415, column: 9, scope: !2217)
!2221 = !DILocation(line: 417, column: 2, scope: !2217)
!2222 = !DILocation(line: 420, column: 13, scope: !2179)
!2223 = !DILocation(line: 422, column: 2, scope: !2179)
!2224 = !DILocation(line: 423, column: 1, scope: !2179)
!2225 = distinct !DISubprogram(name: "net_connect_ip_ssl", scope: !68, file: !68, line: 785, type: !2226, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!88, !1984, !77, !1984, !1954}
!2228 = !DILocalVariable(name: "ip", arg: 1, scope: !2225, file: !68, line: 785, type: !1984)
!2229 = !DILocation(line: 785, column: 40, scope: !2225)
!2230 = !DILocalVariable(name: "port", arg: 2, scope: !2225, file: !68, line: 785, type: !77)
!2231 = !DILocation(line: 785, column: 48, scope: !2225)
!2232 = !DILocalVariable(name: "my_ip", arg: 3, scope: !2225, file: !68, line: 785, type: !1984)
!2233 = !DILocation(line: 785, column: 62, scope: !2225)
!2234 = !DILocalVariable(name: "server", arg: 4, scope: !2225, file: !68, line: 785, type: !1954)
!2235 = !DILocation(line: 785, column: 81, scope: !2225)
!2236 = !DILocalVariable(name: "handle", scope: !2225, file: !68, line: 787, type: !88)
!2237 = !DILocation(line: 787, column: 14, scope: !2225)
!2238 = !DILocalVariable(name: "ssl_handle", scope: !2225, file: !68, line: 787, type: !88)
!2239 = !DILocation(line: 787, column: 23, scope: !2225)
!2240 = !DILocation(line: 789, column: 26, scope: !2225)
!2241 = !DILocation(line: 789, column: 30, scope: !2225)
!2242 = !DILocation(line: 789, column: 36, scope: !2225)
!2243 = !DILocation(line: 789, column: 11, scope: !2225)
!2244 = !DILocation(line: 789, column: 9, scope: !2225)
!2245 = !DILocation(line: 790, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2225, file: !68, line: 790, column: 6)
!2247 = !DILocation(line: 790, column: 13, scope: !2246)
!2248 = !DILocation(line: 790, column: 6, scope: !2225)
!2249 = !DILocation(line: 791, column: 3, scope: !2246)
!2250 = !DILocation(line: 792, column: 39, scope: !2225)
!2251 = !DILocation(line: 792, column: 47, scope: !2225)
!2252 = !DILocation(line: 792, column: 53, scope: !2225)
!2253 = !DILocation(line: 792, column: 15, scope: !2225)
!2254 = !DILocation(line: 792, column: 13, scope: !2225)
!2255 = !DILocation(line: 793, column: 6, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2225, file: !68, line: 793, column: 6)
!2257 = !DILocation(line: 793, column: 17, scope: !2256)
!2258 = !DILocation(line: 793, column: 6, scope: !2225)
!2259 = !DILocation(line: 794, column: 22, scope: !2256)
!2260 = !DILocation(line: 794, column: 3, scope: !2256)
!2261 = !DILocation(line: 795, column: 9, scope: !2225)
!2262 = !DILocation(line: 795, column: 2, scope: !2225)
!2263 = !DILocation(line: 796, column: 1, scope: !2225)
!2264 = distinct !DISubprogram(name: "irssi_ssl_get_iochannel", scope: !68, file: !68, line: 443, type: !2265, isLocal: true, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!88, !88, !77, !1954}
!2267 = !DILocalVariable(name: "handle", arg: 1, scope: !2264, file: !68, line: 443, type: !88)
!2268 = !DILocation(line: 443, column: 56, scope: !2264)
!2269 = !DILocalVariable(name: "port", arg: 2, scope: !2264, file: !68, line: 443, type: !77)
!2270 = !DILocation(line: 443, column: 68, scope: !2264)
!2271 = !DILocalVariable(name: "server", arg: 3, scope: !2264, file: !68, line: 443, type: !1954)
!2272 = !DILocation(line: 443, column: 86, scope: !2264)
!2273 = !DILocalVariable(name: "chan", scope: !2264, file: !68, line: 445, type: !66)
!2274 = !DILocation(line: 445, column: 17, scope: !2264)
!2275 = !DILocalVariable(name: "gchan", scope: !2264, file: !68, line: 446, type: !88)
!2276 = !DILocation(line: 446, column: 14, scope: !2264)
!2277 = !DILocalVariable(name: "fd", scope: !2264, file: !68, line: 447, type: !77)
!2278 = !DILocation(line: 447, column: 6, scope: !2264)
!2279 = !DILocalVariable(name: "ssl", scope: !2264, file: !68, line: 448, type: !258)
!2280 = !DILocation(line: 448, column: 7, scope: !2264)
!2281 = !DILocalVariable(name: "ctx", scope: !2264, file: !68, line: 449, type: !322)
!2282 = !DILocation(line: 449, column: 11, scope: !2264)
!2283 = !DILocalVariable(name: "mycert", scope: !2264, file: !68, line: 451, type: !64)
!2284 = !DILocation(line: 451, column: 14, scope: !2264)
!2285 = !DILocation(line: 451, column: 23, scope: !2264)
!2286 = !DILocation(line: 451, column: 31, scope: !2264)
!2287 = !DILocation(line: 451, column: 40, scope: !2264)
!2288 = !DILocalVariable(name: "mypkey", scope: !2264, file: !68, line: 452, type: !64)
!2289 = !DILocation(line: 452, column: 14, scope: !2264)
!2290 = !DILocation(line: 452, column: 23, scope: !2264)
!2291 = !DILocation(line: 452, column: 31, scope: !2264)
!2292 = !DILocation(line: 452, column: 40, scope: !2264)
!2293 = !DILocalVariable(name: "mypass", scope: !2264, file: !68, line: 453, type: !64)
!2294 = !DILocation(line: 453, column: 14, scope: !2264)
!2295 = !DILocation(line: 453, column: 23, scope: !2264)
!2296 = !DILocation(line: 453, column: 31, scope: !2264)
!2297 = !DILocation(line: 453, column: 40, scope: !2264)
!2298 = !DILocalVariable(name: "cafile", scope: !2264, file: !68, line: 454, type: !64)
!2299 = !DILocation(line: 454, column: 14, scope: !2264)
!2300 = !DILocation(line: 454, column: 23, scope: !2264)
!2301 = !DILocation(line: 454, column: 31, scope: !2264)
!2302 = !DILocation(line: 454, column: 40, scope: !2264)
!2303 = !DILocalVariable(name: "capath", scope: !2264, file: !68, line: 455, type: !64)
!2304 = !DILocation(line: 455, column: 14, scope: !2264)
!2305 = !DILocation(line: 455, column: 23, scope: !2264)
!2306 = !DILocation(line: 455, column: 31, scope: !2264)
!2307 = !DILocation(line: 455, column: 40, scope: !2264)
!2308 = !DILocalVariable(name: "ciphers", scope: !2264, file: !68, line: 456, type: !64)
!2309 = !DILocation(line: 456, column: 14, scope: !2264)
!2310 = !DILocation(line: 456, column: 24, scope: !2264)
!2311 = !DILocation(line: 456, column: 32, scope: !2264)
!2312 = !DILocation(line: 456, column: 41, scope: !2264)
!2313 = !DILocalVariable(name: "verify", scope: !2264, file: !68, line: 457, type: !152)
!2314 = !DILocation(line: 457, column: 11, scope: !2264)
!2315 = !DILocation(line: 457, column: 20, scope: !2264)
!2316 = !DILocation(line: 457, column: 28, scope: !2264)
!2317 = !DILocation(line: 457, column: 37, scope: !2264)
!2318 = !DILocation(line: 459, column: 2, scope: !2264)
!2319 = distinct !{!2319, !2318}
!2320 = !DILocation(line: 459, column: 10, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2322, file: !68, discriminator: 1)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !68, line: 459, column: 10)
!2323 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 459, column: 4)
!2324 = !DILocation(line: 459, column: 17, scope: !2321)
!2325 = !DILocation(line: 459, column: 5, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2327, file: !68, discriminator: 2)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !68, line: 459, column: 3)
!2328 = !DILocation(line: 459, column: 14, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2330, file: !68, discriminator: 3)
!2330 = distinct !DILexicalBlock(scope: !2322, file: !68, line: 459, column: 12)
!2331 = !DILocation(line: 459, column: 101, scope: !2329)
!2332 = !DILocation(line: 459, column: 7, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2323, file: !68, discriminator: 4)
!2334 = !DILocation(line: 461, column: 6, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 461, column: 5)
!2336 = !DILocation(line: 461, column: 17, scope: !2335)
!2337 = !DILocation(line: 461, column: 21, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2335, file: !68, discriminator: 1)
!2339 = !DILocation(line: 461, column: 5, scope: !2338)
!2340 = !DILocation(line: 462, column: 3, scope: !2335)
!2341 = !DILocation(line: 464, column: 37, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 464, column: 5)
!2343 = !DILocation(line: 464, column: 12, scope: !2342)
!2344 = !DILocation(line: 464, column: 10, scope: !2342)
!2345 = !DILocation(line: 464, column: 5, scope: !2264)
!2346 = !DILocation(line: 465, column: 3, scope: !2342)
!2347 = !DILocation(line: 467, column: 2, scope: !2264)
!2348 = !DILocation(line: 468, column: 20, scope: !2264)
!2349 = !DILocation(line: 468, column: 8, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2264, file: !68, discriminator: 1)
!2351 = !DILocation(line: 468, column: 6, scope: !2264)
!2352 = !DILocation(line: 469, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 469, column: 6)
!2354 = !DILocation(line: 469, column: 10, scope: !2353)
!2355 = !DILocation(line: 469, column: 6, scope: !2264)
!2356 = !DILocation(line: 470, column: 3, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !68, line: 469, column: 18)
!2358 = distinct !{!2358, !2356}
!2359 = !DILocation(line: 470, column: 8, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !68, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !68, line: 470, column: 6)
!2362 = !DILocation(line: 470, column: 94, scope: !2360)
!2363 = !DILocation(line: 470, column: 94, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2365, file: !68, discriminator: 2)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !68, line: 470, column: 94)
!2366 = distinct !DILexicalBlock(scope: !2361, file: !68, line: 470, column: 94)
!2367 = distinct !{!2367, !2368}
!2368 = !DILocation(line: 470, column: 94, scope: !2361)
!2369 = !DILocation(line: 471, column: 3, scope: !2357)
!2370 = !DILocation(line: 473, column: 1, scope: !2264)
!2371 = !DILocation(line: 474, column: 32, scope: !2264)
!2372 = !DILocation(line: 474, column: 2, scope: !2264)
!2373 = !DILocation(line: 475, column: 41, scope: !2264)
!2374 = !DILocation(line: 475, column: 54, scope: !2264)
!2375 = !DILocation(line: 475, column: 2, scope: !2264)
!2376 = !DILocation(line: 477, column: 6, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 477, column: 6)
!2378 = !DILocation(line: 477, column: 14, scope: !2377)
!2379 = !DILocation(line: 477, column: 21, scope: !2377)
!2380 = !DILocation(line: 477, column: 24, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2377, file: !68, discriminator: 1)
!2382 = !DILocation(line: 477, column: 35, scope: !2381)
!2383 = !DILocation(line: 477, column: 6, scope: !2381)
!2384 = !DILocation(line: 478, column: 31, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !68, line: 478, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2377, file: !68, line: 477, column: 44)
!2387 = !DILocation(line: 478, column: 36, scope: !2385)
!2388 = !DILocation(line: 478, column: 7, scope: !2385)
!2389 = !DILocation(line: 478, column: 45, scope: !2385)
!2390 = !DILocation(line: 478, column: 7, scope: !2386)
!2391 = !DILocation(line: 479, column: 4, scope: !2385)
!2392 = !DILocation(line: 480, column: 2, scope: !2386)
!2393 = !DILocation(line: 482, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 482, column: 6)
!2395 = !DILocation(line: 482, column: 13, scope: !2394)
!2396 = !DILocation(line: 482, column: 17, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2394, file: !68, discriminator: 1)
!2398 = !DILocation(line: 482, column: 16, scope: !2397)
!2399 = !DILocation(line: 482, column: 6, scope: !2397)
!2400 = !DILocalVariable(name: "scert", scope: !2401, file: !68, line: 483, type: !203)
!2401 = distinct !DILexicalBlock(scope: !2394, file: !68, line: 482, column: 25)
!2402 = !DILocation(line: 483, column: 9, scope: !2401)
!2403 = !DILocalVariable(name: "spkey", scope: !2401, file: !68, line: 483, type: !203)
!2404 = !DILocation(line: 483, column: 23, scope: !2401)
!2405 = !DILocalVariable(name: "fp", scope: !2401, file: !68, line: 484, type: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64, align: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2408, line: 48, baseType: !2409)
!2408 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2410, line: 241, size: 1728, align: 64, elements: !2411)
!2410 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/irssi/task1")
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2432, !2433, !2434, !2435, !2437, !2438, !2440, !2444, !2447, !2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2409, file: !2410, line: 242, baseType: !77, size: 32, align: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2409, file: !2410, line: 247, baseType: !203, size: 64, align: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2409, file: !2410, line: 248, baseType: !203, size: 64, align: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2409, file: !2410, line: 249, baseType: !203, size: 64, align: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2409, file: !2410, line: 250, baseType: !203, size: 64, align: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2409, file: !2410, line: 251, baseType: !203, size: 64, align: 64, offset: 320)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2409, file: !2410, line: 252, baseType: !203, size: 64, align: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2409, file: !2410, line: 253, baseType: !203, size: 64, align: 64, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2409, file: !2410, line: 254, baseType: !203, size: 64, align: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2409, file: !2410, line: 256, baseType: !203, size: 64, align: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2409, file: !2410, line: 257, baseType: !203, size: 64, align: 64, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2409, file: !2410, line: 258, baseType: !203, size: 64, align: 64, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2409, file: !2410, line: 260, baseType: !2425, size: 64, align: 64, offset: 768)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64, align: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2410, line: 156, size: 192, align: 64, elements: !2427)
!2427 = !{!2428, !2429, !2431}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2426, file: !2410, line: 157, baseType: !2425, size: 64, align: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2426, file: !2410, line: 158, baseType: !2430, size: 64, align: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64, align: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2426, file: !2410, line: 162, baseType: !77, size: 32, align: 32, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2409, file: !2410, line: 262, baseType: !2430, size: 64, align: 64, offset: 832)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2409, file: !2410, line: 264, baseType: !77, size: 32, align: 32, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2409, file: !2410, line: 268, baseType: !77, size: 32, align: 32, offset: 928)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2409, file: !2410, line: 270, baseType: !2436, size: 64, align: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !372, line: 131, baseType: !117)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2409, file: !2410, line: 274, baseType: !1778, size: 16, align: 16, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2409, file: !2410, line: 275, baseType: !2439, size: 8, align: 8, offset: 1040)
!2439 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2409, file: !2410, line: 276, baseType: !2441, size: 8, align: 8, offset: 1048)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 8, align: 8, elements: !2442)
!2442 = !{!2443}
!2443 = !DISubrange(count: 1)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2409, file: !2410, line: 280, baseType: !2445, size: 64, align: 64, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64, align: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2410, line: 150, baseType: null)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2409, file: !2410, line: 289, baseType: !2448, size: 64, align: 64, offset: 1152)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !372, line: 132, baseType: !117)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2409, file: !2410, line: 297, baseType: !59, size: 64, align: 64, offset: 1216)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2409, file: !2410, line: 298, baseType: !59, size: 64, align: 64, offset: 1280)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2409, file: !2410, line: 299, baseType: !59, size: 64, align: 64, offset: 1344)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2409, file: !2410, line: 300, baseType: !59, size: 64, align: 64, offset: 1408)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2409, file: !2410, line: 302, baseType: !519, size: 64, align: 64, offset: 1472)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2409, file: !2410, line: 303, baseType: !77, size: 32, align: 32, offset: 1536)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2409, file: !2410, line: 305, baseType: !2456, size: 160, align: 8, offset: 1568)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, align: 8, elements: !889)
!2457 = !DILocation(line: 484, column: 9, scope: !2401)
!2458 = !DILocation(line: 485, column: 24, scope: !2401)
!2459 = !DILocation(line: 485, column: 11, scope: !2401)
!2460 = !DILocation(line: 485, column: 9, scope: !2401)
!2461 = !DILocation(line: 486, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2401, file: !68, line: 486, column: 7)
!2463 = !DILocation(line: 486, column: 14, scope: !2462)
!2464 = !DILocation(line: 486, column: 18, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2462, file: !68, discriminator: 1)
!2466 = !DILocation(line: 486, column: 17, scope: !2465)
!2467 = !DILocation(line: 486, column: 7, scope: !2465)
!2468 = !DILocation(line: 487, column: 25, scope: !2462)
!2469 = !DILocation(line: 487, column: 12, scope: !2462)
!2470 = !DILocation(line: 487, column: 10, scope: !2462)
!2471 = !DILocation(line: 487, column: 4, scope: !2462)
!2472 = !DILocation(line: 489, column: 19, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2401, file: !68, line: 489, column: 7)
!2474 = !DILocation(line: 489, column: 13, scope: !2473)
!2475 = !DILocation(line: 489, column: 11, scope: !2473)
!2476 = !DILocation(line: 489, column: 7, scope: !2401)
!2477 = !DILocalVariable(name: "cert", scope: !2478, file: !68, line: 490, type: !401)
!2478 = distinct !DILexicalBlock(scope: !2473, file: !68, line: 489, column: 33)
!2479 = !DILocation(line: 490, column: 10, scope: !2478)
!2480 = !DILocation(line: 494, column: 25, scope: !2478)
!2481 = !DILocation(line: 494, column: 69, scope: !2478)
!2482 = !DILocation(line: 494, column: 11, scope: !2478)
!2483 = !DILocation(line: 494, column: 9, scope: !2478)
!2484 = !DILocation(line: 495, column: 8, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !68, line: 495, column: 8)
!2486 = !DILocation(line: 495, column: 13, scope: !2485)
!2487 = !DILocation(line: 495, column: 8, scope: !2478)
!2488 = !DILocation(line: 497, column: 30, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !68, line: 497, column: 9)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !68, line: 495, column: 21)
!2491 = !DILocation(line: 497, column: 33, scope: !2489)
!2492 = !DILocation(line: 497, column: 44, scope: !2489)
!2493 = !DILocation(line: 497, column: 54, scope: !2489)
!2494 = !DILocation(line: 497, column: 9, scope: !2489)
!2495 = !DILocation(line: 497, column: 55, scope: !2489)
!2496 = !DILocation(line: 497, column: 60, scope: !2489)
!2497 = !DILocation(line: 498, column: 30, scope: !2489)
!2498 = !DILocation(line: 498, column: 33, scope: !2489)
!2499 = !DILocation(line: 498, column: 44, scope: !2489)
!2500 = !DILocation(line: 498, column: 54, scope: !2489)
!2501 = !DILocation(line: 498, column: 9, scope: !2489)
!2502 = !DILocation(line: 498, column: 56, scope: !2489)
!2503 = !DILocation(line: 497, column: 9, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2490, file: !68, discriminator: 1)
!2505 = !DILocation(line: 499, column: 6, scope: !2489)
!2506 = !DILocation(line: 501, column: 5, scope: !2490)
!2507 = !DILocation(line: 502, column: 35, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2490, file: !68, line: 502, column: 9)
!2509 = !DILocation(line: 502, column: 40, scope: !2508)
!2510 = !DILocation(line: 502, column: 11, scope: !2508)
!2511 = !DILocation(line: 502, column: 9, scope: !2490)
!2512 = !DILocation(line: 503, column: 97, scope: !2508)
!2513 = !DILocation(line: 503, column: 129, scope: !2508)
!2514 = !DILocation(line: 503, column: 105, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2508, file: !68, discriminator: 1)
!2516 = !DILocation(line: 503, column: 6, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2508, file: !68, discriminator: 2)
!2518 = !DILocation(line: 503, column: 6, scope: !2508)
!2519 = !DILocation(line: 504, column: 44, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2508, file: !68, line: 504, column: 14)
!2521 = !DILocation(line: 504, column: 49, scope: !2520)
!2522 = !DILocation(line: 504, column: 57, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2520, file: !68, discriminator: 1)
!2524 = !DILocation(line: 504, column: 49, scope: !2523)
!2525 = !DILocation(line: 504, column: 65, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2520, file: !68, discriminator: 2)
!2527 = !DILocation(line: 504, column: 49, scope: !2526)
!2528 = !DILocation(line: 504, column: 49, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2520, file: !68, discriminator: 3)
!2530 = !DILocation(line: 504, column: 16, scope: !2529)
!2531 = !DILocation(line: 504, column: 14, scope: !2529)
!2532 = !DILocation(line: 505, column: 90, scope: !2520)
!2533 = !DILocation(line: 505, column: 99, scope: !2523)
!2534 = !DILocation(line: 505, column: 90, scope: !2523)
!2535 = !DILocation(line: 505, column: 108, scope: !2526)
!2536 = !DILocation(line: 505, column: 90, scope: !2526)
!2537 = !DILocation(line: 505, column: 90, scope: !2529)
!2538 = !DILocation(line: 505, column: 140, scope: !2529)
!2539 = !DILocation(line: 505, column: 116, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2529, file: !68, discriminator: 4)
!2541 = !DILocation(line: 505, column: 6, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2529, file: !68, discriminator: 5)
!2543 = !DILocation(line: 505, column: 6, scope: !2529)
!2544 = !DILocation(line: 506, column: 42, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2520, file: !68, line: 506, column: 14)
!2546 = !DILocation(line: 506, column: 16, scope: !2545)
!2547 = !DILocation(line: 506, column: 14, scope: !2520)
!2548 = !DILocation(line: 507, column: 6, scope: !2545)
!2549 = !DILocation(line: 509, column: 15, scope: !2490)
!2550 = !DILocation(line: 509, column: 5, scope: !2490)
!2551 = !DILocation(line: 510, column: 4, scope: !2490)
!2552 = !DILocation(line: 511, column: 96, scope: !2485)
!2553 = !DILocation(line: 511, column: 128, scope: !2485)
!2554 = !DILocation(line: 511, column: 104, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2485, file: !68, discriminator: 1)
!2556 = !DILocation(line: 511, column: 5, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2485, file: !68, discriminator: 2)
!2558 = !DILocation(line: 513, column: 11, scope: !2478)
!2559 = !DILocation(line: 513, column: 4, scope: !2478)
!2560 = !DILocation(line: 514, column: 3, scope: !2478)
!2561 = !DILocation(line: 515, column: 88, scope: !2473)
!2562 = !DILocation(line: 515, column: 4, scope: !2473)
!2563 = !DILocation(line: 516, column: 10, scope: !2401)
!2564 = !DILocation(line: 516, column: 3, scope: !2401)
!2565 = !DILocation(line: 517, column: 10, scope: !2401)
!2566 = !DILocation(line: 517, column: 3, scope: !2401)
!2567 = !DILocation(line: 518, column: 2, scope: !2401)
!2568 = !DILocation(line: 520, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 520, column: 6)
!2570 = !DILocation(line: 520, column: 14, scope: !2569)
!2571 = !DILocation(line: 520, column: 18, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2569, file: !68, discriminator: 1)
!2573 = !DILocation(line: 520, column: 17, scope: !2572)
!2574 = !DILocation(line: 520, column: 26, scope: !2572)
!2575 = !DILocation(line: 520, column: 30, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2569, file: !68, discriminator: 2)
!2577 = !DILocation(line: 520, column: 37, scope: !2576)
!2578 = !DILocation(line: 520, column: 41, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2569, file: !68, discriminator: 3)
!2580 = !DILocation(line: 520, column: 40, scope: !2579)
!2581 = !DILocation(line: 520, column: 6, scope: !2579)
!2582 = !DILocalVariable(name: "scafile", scope: !2583, file: !68, line: 521, type: !203)
!2583 = distinct !DILexicalBlock(scope: !2569, file: !68, line: 520, column: 50)
!2584 = !DILocation(line: 521, column: 9, scope: !2583)
!2585 = !DILocalVariable(name: "scapath", scope: !2583, file: !68, line: 522, type: !203)
!2586 = !DILocation(line: 522, column: 9, scope: !2583)
!2587 = !DILocation(line: 523, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !68, line: 523, column: 7)
!2589 = !DILocation(line: 523, column: 14, scope: !2588)
!2590 = !DILocation(line: 523, column: 18, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2588, file: !68, discriminator: 1)
!2592 = !DILocation(line: 523, column: 17, scope: !2591)
!2593 = !DILocation(line: 523, column: 7, scope: !2591)
!2594 = !DILocation(line: 524, column: 27, scope: !2588)
!2595 = !DILocation(line: 524, column: 14, scope: !2588)
!2596 = !DILocation(line: 524, column: 12, scope: !2588)
!2597 = !DILocation(line: 524, column: 4, scope: !2588)
!2598 = !DILocation(line: 525, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2583, file: !68, line: 525, column: 7)
!2600 = !DILocation(line: 525, column: 14, scope: !2599)
!2601 = !DILocation(line: 525, column: 18, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2599, file: !68, discriminator: 1)
!2603 = !DILocation(line: 525, column: 17, scope: !2602)
!2604 = !DILocation(line: 525, column: 7, scope: !2602)
!2605 = !DILocation(line: 526, column: 27, scope: !2599)
!2606 = !DILocation(line: 526, column: 14, scope: !2599)
!2607 = !DILocation(line: 526, column: 12, scope: !2599)
!2608 = !DILocation(line: 526, column: 4, scope: !2599)
!2609 = !DILocation(line: 527, column: 39, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2583, file: !68, line: 527, column: 7)
!2611 = !DILocation(line: 527, column: 44, scope: !2610)
!2612 = !DILocation(line: 527, column: 53, scope: !2610)
!2613 = !DILocation(line: 527, column: 9, scope: !2610)
!2614 = !DILocation(line: 527, column: 7, scope: !2583)
!2615 = !DILocation(line: 528, column: 4, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !68, line: 527, column: 63)
!2617 = !DILocation(line: 529, column: 11, scope: !2616)
!2618 = !DILocation(line: 529, column: 4, scope: !2616)
!2619 = !DILocation(line: 530, column: 11, scope: !2616)
!2620 = !DILocation(line: 530, column: 4, scope: !2616)
!2621 = !DILocation(line: 531, column: 17, scope: !2616)
!2622 = !DILocation(line: 531, column: 4, scope: !2616)
!2623 = !DILocation(line: 532, column: 4, scope: !2616)
!2624 = !DILocation(line: 534, column: 10, scope: !2583)
!2625 = !DILocation(line: 534, column: 3, scope: !2583)
!2626 = !DILocation(line: 535, column: 10, scope: !2583)
!2627 = !DILocation(line: 535, column: 3, scope: !2583)
!2628 = !DILocation(line: 536, column: 10, scope: !2583)
!2629 = !DILocation(line: 537, column: 2, scope: !2583)
!2630 = !DILocation(line: 539, column: 13, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2569, file: !68, line: 539, column: 13)
!2632 = !DILocation(line: 539, column: 19, scope: !2631)
!2633 = !DILocation(line: 539, column: 13, scope: !2569)
!2634 = !DILocation(line: 543, column: 21, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !68, line: 539, column: 27)
!2636 = !DILocation(line: 543, column: 3, scope: !2635)
!2637 = !DILocation(line: 544, column: 26, scope: !2635)
!2638 = !DILocation(line: 544, column: 31, scope: !2635)
!2639 = !DILocation(line: 544, column: 3, scope: !2635)
!2640 = !DILocation(line: 545, column: 2, scope: !2635)
!2641 = !DILocation(line: 553, column: 21, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 553, column: 5)
!2643 = !DILocation(line: 553, column: 13, scope: !2642)
!2644 = !DILocation(line: 553, column: 11, scope: !2642)
!2645 = !DILocation(line: 553, column: 5, scope: !2264)
!2646 = !DILocation(line: 555, column: 3, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !68, line: 554, column: 2)
!2648 = !DILocation(line: 556, column: 16, scope: !2647)
!2649 = !DILocation(line: 556, column: 3, scope: !2647)
!2650 = !DILocation(line: 557, column: 3, scope: !2647)
!2651 = !DILocation(line: 560, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2264, file: !68, line: 560, column: 5)
!2653 = !DILocation(line: 560, column: 22, scope: !2652)
!2654 = !DILocation(line: 560, column: 6, scope: !2652)
!2655 = !DILocation(line: 560, column: 5, scope: !2264)
!2656 = !DILocation(line: 562, column: 3, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !68, line: 561, column: 2)
!2658 = !DILocation(line: 563, column: 12, scope: !2657)
!2659 = !DILocation(line: 563, column: 3, scope: !2657)
!2660 = !DILocation(line: 564, column: 16, scope: !2657)
!2661 = !DILocation(line: 564, column: 3, scope: !2657)
!2662 = !DILocation(line: 565, column: 3, scope: !2657)
!2663 = !DILocation(line: 569, column: 1, scope: !2264)
!2664 = !DILocation(line: 569, column: 9, scope: !2264)
!2665 = !DILocation(line: 569, column: 18, scope: !2264)
!2666 = !DILocation(line: 572, column: 1, scope: !2264)
!2667 = !DILocation(line: 575, column: 28, scope: !2264)
!2668 = !DILocation(line: 575, column: 10, scope: !2264)
!2669 = !DILocation(line: 575, column: 7, scope: !2264)
!2670 = !DILocation(line: 576, column: 13, scope: !2264)
!2671 = !DILocation(line: 576, column: 2, scope: !2264)
!2672 = !DILocation(line: 576, column: 8, scope: !2264)
!2673 = !DILocation(line: 576, column: 11, scope: !2264)
!2674 = !DILocation(line: 577, column: 18, scope: !2264)
!2675 = !DILocation(line: 577, column: 2, scope: !2264)
!2676 = !DILocation(line: 577, column: 8, scope: !2264)
!2677 = !DILocation(line: 577, column: 16, scope: !2264)
!2678 = !DILocation(line: 578, column: 14, scope: !2264)
!2679 = !DILocation(line: 578, column: 2, scope: !2264)
!2680 = !DILocation(line: 578, column: 8, scope: !2264)
!2681 = !DILocation(line: 578, column: 12, scope: !2264)
!2682 = !DILocation(line: 579, column: 14, scope: !2264)
!2683 = !DILocation(line: 579, column: 2, scope: !2264)
!2684 = !DILocation(line: 579, column: 8, scope: !2264)
!2685 = !DILocation(line: 579, column: 12, scope: !2264)
!2686 = !DILocation(line: 580, column: 17, scope: !2264)
!2687 = !DILocation(line: 580, column: 2, scope: !2264)
!2688 = !DILocation(line: 580, column: 8, scope: !2264)
!2689 = !DILocation(line: 580, column: 15, scope: !2264)
!2690 = !DILocation(line: 581, column: 15, scope: !2264)
!2691 = !DILocation(line: 581, column: 2, scope: !2264)
!2692 = !DILocation(line: 581, column: 8, scope: !2264)
!2693 = !DILocation(line: 581, column: 13, scope: !2264)
!2694 = !DILocation(line: 582, column: 17, scope: !2264)
!2695 = !DILocation(line: 582, column: 2, scope: !2264)
!2696 = !DILocation(line: 582, column: 8, scope: !2264)
!2697 = !DILocation(line: 582, column: 15, scope: !2264)
!2698 = !DILocation(line: 584, column: 24, scope: !2264)
!2699 = !DILocation(line: 584, column: 10, scope: !2264)
!2700 = !DILocation(line: 584, column: 8, scope: !2264)
!2701 = !DILocation(line: 585, column: 2, scope: !2264)
!2702 = !DILocation(line: 585, column: 9, scope: !2264)
!2703 = !DILocation(line: 585, column: 15, scope: !2264)
!2704 = !DILocation(line: 586, column: 20, scope: !2264)
!2705 = !DILocation(line: 586, column: 2, scope: !2264)
!2706 = !DILocation(line: 587, column: 23, scope: !2264)
!2707 = !DILocation(line: 587, column: 30, scope: !2264)
!2708 = !DILocation(line: 587, column: 43, scope: !2264)
!2709 = !DILocation(line: 587, column: 2, scope: !2264)
!2710 = !DILocation(line: 587, column: 9, scope: !2264)
!2711 = !DILocation(line: 587, column: 21, scope: !2264)
!2712 = !DILocation(line: 588, column: 2, scope: !2264)
!2713 = !DILocation(line: 588, column: 9, scope: !2264)
!2714 = !DILocation(line: 588, column: 20, scope: !2264)
!2715 = !DILocation(line: 590, column: 9, scope: !2264)
!2716 = !DILocation(line: 590, column: 2, scope: !2264)
!2717 = !DILocation(line: 591, column: 1, scope: !2264)
!2718 = distinct !DISubprogram(name: "net_start_ssl", scope: !68, file: !68, line: 798, type: !2719, isLocal: false, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!88, !1954}
!2721 = !DILocalVariable(name: "server", arg: 1, scope: !2718, file: !68, line: 798, type: !1954)
!2722 = !DILocation(line: 798, column: 39, scope: !2718)
!2723 = !DILocalVariable(name: "handle", scope: !2718, file: !68, line: 800, type: !88)
!2724 = !DILocation(line: 800, column: 14, scope: !2718)
!2725 = !DILocalVariable(name: "ssl_handle", scope: !2718, file: !68, line: 800, type: !88)
!2726 = !DILocation(line: 800, column: 23, scope: !2718)
!2727 = !DILocation(line: 802, column: 2, scope: !2718)
!2728 = distinct !{!2728, !2727}
!2729 = !DILocation(line: 802, column: 10, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2731, file: !68, discriminator: 1)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !68, line: 802, column: 10)
!2732 = distinct !DILexicalBlock(scope: !2718, file: !68, line: 802, column: 4)
!2733 = !DILocation(line: 802, column: 17, scope: !2730)
!2734 = !DILocation(line: 802, column: 5, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2736, file: !68, discriminator: 2)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !68, line: 802, column: 3)
!2737 = !DILocation(line: 802, column: 14, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2739, file: !68, discriminator: 3)
!2739 = distinct !DILexicalBlock(scope: !2731, file: !68, line: 802, column: 12)
!2740 = !DILocation(line: 802, column: 101, scope: !2738)
!2741 = !DILocation(line: 802, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2732, file: !68, discriminator: 4)
!2743 = !DILocation(line: 804, column: 33, scope: !2718)
!2744 = !DILocation(line: 804, column: 41, scope: !2718)
!2745 = !DILocation(line: 804, column: 11, scope: !2718)
!2746 = !DILocation(line: 804, column: 9, scope: !2718)
!2747 = !DILocation(line: 805, column: 6, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2718, file: !68, line: 805, column: 6)
!2749 = !DILocation(line: 805, column: 13, scope: !2748)
!2750 = !DILocation(line: 805, column: 6, scope: !2718)
!2751 = !DILocation(line: 806, column: 3, scope: !2748)
!2752 = !DILocation(line: 808, column: 39, scope: !2718)
!2753 = !DILocation(line: 808, column: 47, scope: !2718)
!2754 = !DILocation(line: 808, column: 55, scope: !2718)
!2755 = !DILocation(line: 808, column: 64, scope: !2718)
!2756 = !DILocation(line: 808, column: 70, scope: !2718)
!2757 = !DILocation(line: 808, column: 15, scope: !2718)
!2758 = !DILocation(line: 808, column: 13, scope: !2718)
!2759 = !DILocation(line: 809, column: 9, scope: !2718)
!2760 = !DILocation(line: 809, column: 2, scope: !2718)
!2761 = !DILocation(line: 810, column: 1, scope: !2718)
!2762 = distinct !DISubprogram(name: "irssi_ssl_handshake", scope: !68, file: !68, line: 813, type: !2763, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!77, !88}
!2765 = !DILocalVariable(name: "handle", arg: 1, scope: !2762, file: !68, line: 813, type: !88)
!2766 = !DILocation(line: 813, column: 37, scope: !2762)
!2767 = !DILocalVariable(name: "chan", scope: !2762, file: !68, line: 815, type: !66)
!2768 = !DILocation(line: 815, column: 17, scope: !2762)
!2769 = !DILocation(line: 815, column: 41, scope: !2762)
!2770 = !DILocation(line: 815, column: 24, scope: !2762)
!2771 = !DILocalVariable(name: "ret", scope: !2762, file: !68, line: 816, type: !77)
!2772 = !DILocation(line: 816, column: 6, scope: !2762)
!2773 = !DILocalVariable(name: "err", scope: !2762, file: !68, line: 816, type: !77)
!2774 = !DILocation(line: 816, column: 11, scope: !2762)
!2775 = !DILocalVariable(name: "errstr", scope: !2762, file: !68, line: 817, type: !64)
!2776 = !DILocation(line: 817, column: 14, scope: !2762)
!2777 = !DILocalVariable(name: "cert", scope: !2762, file: !68, line: 818, type: !401)
!2778 = !DILocation(line: 818, column: 8, scope: !2762)
!2779 = !DILocalVariable(name: "pubkey", scope: !2762, file: !68, line: 819, type: !536)
!2780 = !DILocation(line: 819, column: 15, scope: !2762)
!2781 = !DILocalVariable(name: "pubkey_size", scope: !2762, file: !68, line: 820, type: !77)
!2782 = !DILocation(line: 820, column: 6, scope: !2762)
!2783 = !DILocalVariable(name: "pubkey_der", scope: !2762, file: !68, line: 821, type: !307)
!2784 = !DILocation(line: 821, column: 17, scope: !2762)
!2785 = !DILocalVariable(name: "pubkey_der_tmp", scope: !2762, file: !68, line: 822, type: !307)
!2786 = !DILocation(line: 822, column: 17, scope: !2762)
!2787 = !DILocalVariable(name: "pubkey_fingerprint", scope: !2762, file: !68, line: 823, type: !1620)
!2788 = !DILocation(line: 823, column: 16, scope: !2762)
!2789 = !DILocalVariable(name: "pubkey_fingerprint_size", scope: !2762, file: !68, line: 824, type: !103)
!2790 = !DILocation(line: 824, column: 15, scope: !2762)
!2791 = !DILocalVariable(name: "cert_fingerprint", scope: !2762, file: !68, line: 825, type: !1620)
!2792 = !DILocation(line: 825, column: 16, scope: !2762)
!2793 = !DILocalVariable(name: "cert_fingerprint_size", scope: !2762, file: !68, line: 826, type: !103)
!2794 = !DILocation(line: 826, column: 15, scope: !2762)
!2795 = !DILocalVariable(name: "pinned_cert_fingerprint", scope: !2762, file: !68, line: 827, type: !64)
!2796 = !DILocation(line: 827, column: 14, scope: !2762)
!2797 = !DILocation(line: 827, column: 40, scope: !2762)
!2798 = !DILocation(line: 827, column: 46, scope: !2762)
!2799 = !DILocation(line: 827, column: 54, scope: !2762)
!2800 = !DILocation(line: 827, column: 63, scope: !2762)
!2801 = !DILocalVariable(name: "pinned_pubkey_fingerprint", scope: !2762, file: !68, line: 828, type: !64)
!2802 = !DILocation(line: 828, column: 14, scope: !2762)
!2803 = !DILocation(line: 828, column: 42, scope: !2762)
!2804 = !DILocation(line: 828, column: 48, scope: !2762)
!2805 = !DILocation(line: 828, column: 56, scope: !2762)
!2806 = !DILocation(line: 828, column: 65, scope: !2762)
!2807 = !DILocalVariable(name: "tls", scope: !2762, file: !68, line: 829, type: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64, align: 64)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_REC", file: !2810, line: 26, baseType: !2811)
!2810 = !DIFile(filename: "tls.h", directory: "/home/lichi/Desktop/irssi/task1")
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_REC", file: !2810, line: 30, size: 896, align: 64, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !2811, file: !2810, line: 31, baseType: !203, size: 64, align: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !2811, file: !2810, line: 32, baseType: !203, size: 64, align: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_size", scope: !2811, file: !2810, line: 33, baseType: !519, size: 64, align: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_algorithm", scope: !2811, file: !2810, line: 35, baseType: !203, size: 64, align: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint", scope: !2811, file: !2810, line: 36, baseType: !203, size: 64, align: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_fingerprint_algorithm", scope: !2811, file: !2810, line: 37, baseType: !203, size: 64, align: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "public_key_size", scope: !2811, file: !2810, line: 38, baseType: !519, size: 64, align: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint", scope: !2811, file: !2810, line: 40, baseType: !203, size: 64, align: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "certificate_fingerprint_algorithm", scope: !2811, file: !2810, line: 41, baseType: !203, size: 64, align: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "not_after", scope: !2811, file: !2810, line: 43, baseType: !203, size: 64, align: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "not_before", scope: !2811, file: !2810, line: 44, baseType: !203, size: 64, align: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_algorithm", scope: !2811, file: !2810, line: 46, baseType: !203, size: 64, align: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ephemeral_key_size", scope: !2811, file: !2810, line: 47, baseType: !519, size: 64, align: 64, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "certs", scope: !2811, file: !2810, line: 49, baseType: !193, size: 64, align: 64, offset: 832)
!2827 = !DILocation(line: 829, column: 11, scope: !2762)
!2828 = !DILocation(line: 831, column: 2, scope: !2762)
!2829 = !DILocation(line: 832, column: 20, scope: !2762)
!2830 = !DILocation(line: 832, column: 26, scope: !2762)
!2831 = !DILocation(line: 832, column: 8, scope: !2762)
!2832 = !DILocation(line: 832, column: 6, scope: !2762)
!2833 = !DILocation(line: 833, column: 6, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 833, column: 6)
!2835 = !DILocation(line: 833, column: 10, scope: !2834)
!2836 = !DILocation(line: 833, column: 6, scope: !2762)
!2837 = !DILocation(line: 834, column: 23, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !68, line: 833, column: 16)
!2839 = !DILocation(line: 834, column: 29, scope: !2838)
!2840 = !DILocation(line: 834, column: 34, scope: !2838)
!2841 = !DILocation(line: 834, column: 9, scope: !2838)
!2842 = !DILocation(line: 834, column: 7, scope: !2838)
!2843 = !DILocation(line: 835, column: 11, scope: !2838)
!2844 = !DILocation(line: 835, column: 3, scope: !2838)
!2845 = !DILocation(line: 837, column: 5, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !68, line: 835, column: 16)
!2847 = !DILocation(line: 839, column: 5, scope: !2846)
!2848 = !DILocation(line: 841, column: 5, scope: !2846)
!2849 = !DILocation(line: 842, column: 5, scope: !2846)
!2850 = !DILocation(line: 844, column: 38, scope: !2846)
!2851 = !DILocation(line: 844, column: 14, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2846, file: !68, discriminator: 1)
!2853 = !DILocation(line: 844, column: 12, scope: !2846)
!2854 = !DILocation(line: 845, column: 9, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2846, file: !68, line: 845, column: 9)
!2856 = !DILocation(line: 845, column: 16, scope: !2855)
!2857 = !DILocation(line: 845, column: 23, scope: !2855)
!2858 = !DILocation(line: 845, column: 26, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2855, file: !68, discriminator: 1)
!2860 = !DILocation(line: 845, column: 30, scope: !2859)
!2861 = !DILocation(line: 845, column: 36, scope: !2859)
!2862 = !DILocation(line: 845, column: 41, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2855, file: !68, discriminator: 2)
!2864 = !DILocation(line: 845, column: 40, scope: !2863)
!2865 = !DILocation(line: 845, column: 39, scope: !2863)
!2866 = !DILocation(line: 845, column: 9, scope: !2863)
!2867 = !DILocation(line: 846, column: 25, scope: !2855)
!2868 = !DILocation(line: 846, column: 24, scope: !2855)
!2869 = !DILocation(line: 846, column: 15, scope: !2859)
!2870 = !DILocation(line: 846, column: 13, scope: !2855)
!2871 = !DILocation(line: 846, column: 6, scope: !2855)
!2872 = !DILocation(line: 847, column: 75, scope: !2846)
!2873 = !DILocation(line: 847, column: 82, scope: !2846)
!2874 = !DILocation(line: 847, column: 6, scope: !2852)
!2875 = !DILocation(line: 847, column: 75, scope: !2852)
!2876 = !DILocation(line: 847, column: 75, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2846, file: !68, discriminator: 2)
!2878 = !DILocation(line: 847, column: 75, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2846, file: !68, discriminator: 3)
!2880 = !DILocation(line: 847, column: 5, scope: !2879)
!2881 = !DILocation(line: 848, column: 5, scope: !2846)
!2882 = !DILocation(line: 850, column: 38, scope: !2846)
!2883 = !DILocation(line: 850, column: 14, scope: !2852)
!2884 = !DILocation(line: 850, column: 12, scope: !2846)
!2885 = !DILocation(line: 851, column: 75, scope: !2846)
!2886 = !DILocation(line: 851, column: 82, scope: !2846)
!2887 = !DILocation(line: 851, column: 6, scope: !2852)
!2888 = !DILocation(line: 851, column: 75, scope: !2852)
!2889 = !DILocation(line: 851, column: 75, scope: !2877)
!2890 = !DILocation(line: 851, column: 75, scope: !2879)
!2891 = !DILocation(line: 851, column: 5, scope: !2879)
!2892 = !DILocation(line: 852, column: 5, scope: !2846)
!2893 = !DILocation(line: 856, column: 34, scope: !2762)
!2894 = !DILocation(line: 856, column: 40, scope: !2762)
!2895 = !DILocation(line: 856, column: 9, scope: !2762)
!2896 = !DILocation(line: 856, column: 7, scope: !2762)
!2897 = !DILocation(line: 857, column: 10, scope: !2762)
!2898 = !DILocation(line: 857, column: 13, scope: !2762)
!2899 = !DILocation(line: 857, column: 24, scope: !2762)
!2900 = !DILocation(line: 857, column: 9, scope: !2762)
!2901 = !DILocation(line: 859, column: 6, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 859, column: 6)
!2903 = !DILocation(line: 859, column: 11, scope: !2902)
!2904 = !DILocation(line: 859, column: 6, scope: !2762)
!2905 = !DILocation(line: 860, column: 3, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !68, line: 859, column: 19)
!2907 = !DILocation(line: 861, column: 7, scope: !2906)
!2908 = !DILocation(line: 862, column: 3, scope: !2906)
!2909 = !DILocation(line: 865, column: 6, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 865, column: 6)
!2911 = !DILocation(line: 865, column: 13, scope: !2910)
!2912 = !DILocation(line: 865, column: 6, scope: !2762)
!2913 = !DILocation(line: 866, column: 3, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !68, line: 865, column: 21)
!2915 = !DILocation(line: 867, column: 7, scope: !2914)
!2916 = !DILocation(line: 868, column: 3, scope: !2914)
!2917 = !DILocation(line: 871, column: 20, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 871, column: 6)
!2919 = !DILocation(line: 871, column: 26, scope: !2918)
!2920 = !DILocation(line: 871, column: 40, scope: !2918)
!2921 = !DILocation(line: 871, column: 8, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2918, file: !68, discriminator: 1)
!2923 = !DILocation(line: 871, column: 8, scope: !2918)
!2924 = !DILocation(line: 871, column: 6, scope: !2762)
!2925 = !DILocation(line: 872, column: 3, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2918, file: !68, line: 871, column: 83)
!2927 = !DILocation(line: 873, column: 7, scope: !2926)
!2928 = !DILocation(line: 874, column: 3, scope: !2926)
!2929 = !DILocation(line: 877, column: 32, scope: !2762)
!2930 = !DILocation(line: 877, column: 16, scope: !2762)
!2931 = !DILocation(line: 877, column: 14, scope: !2762)
!2932 = !DILocation(line: 878, column: 64, scope: !2762)
!2933 = !DILocation(line: 878, column: 63, scope: !2762)
!2934 = !DILocation(line: 878, column: 51, scope: !2762)
!2935 = !DILocation(line: 878, column: 30, scope: !2762)
!2936 = !DILocation(line: 878, column: 13, scope: !2762)
!2937 = !DILocation(line: 879, column: 18, scope: !2762)
!2938 = !DILocation(line: 879, column: 2, scope: !2762)
!2939 = !DILocation(line: 881, column: 13, scope: !2762)
!2940 = !DILocation(line: 881, column: 25, scope: !2762)
!2941 = !DILocation(line: 881, column: 38, scope: !2762)
!2942 = !DILocation(line: 881, column: 84, scope: !2762)
!2943 = !DILocation(line: 881, column: 2, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2762, file: !68, discriminator: 1)
!2945 = !DILocation(line: 883, column: 8, scope: !2762)
!2946 = !DILocation(line: 883, column: 6, scope: !2762)
!2947 = !DILocation(line: 884, column: 18, scope: !2762)
!2948 = !DILocation(line: 884, column: 23, scope: !2762)
!2949 = !DILocation(line: 884, column: 29, scope: !2762)
!2950 = !DILocation(line: 884, column: 2, scope: !2762)
!2951 = !DILocation(line: 885, column: 18, scope: !2762)
!2952 = !DILocation(line: 885, column: 23, scope: !2762)
!2953 = !DILocation(line: 885, column: 29, scope: !2762)
!2954 = !DILocation(line: 885, column: 47, scope: !2762)
!2955 = !DILocation(line: 885, column: 70, scope: !2762)
!2956 = !DILocation(line: 885, column: 90, scope: !2762)
!2957 = !DILocation(line: 885, column: 2, scope: !2762)
!2958 = !DILocation(line: 886, column: 27, scope: !2762)
!2959 = !DILocation(line: 886, column: 32, scope: !2762)
!2960 = !DILocation(line: 886, column: 38, scope: !2762)
!2961 = !DILocation(line: 886, column: 2, scope: !2762)
!2962 = !DILocation(line: 887, column: 32, scope: !2762)
!2963 = !DILocation(line: 887, column: 37, scope: !2762)
!2964 = !DILocation(line: 887, column: 43, scope: !2762)
!2965 = !DILocation(line: 887, column: 2, scope: !2762)
!2966 = !DILocation(line: 890, column: 43, scope: !2762)
!2967 = !DILocation(line: 890, column: 49, scope: !2762)
!2968 = !DILocation(line: 890, column: 57, scope: !2762)
!2969 = !DILocation(line: 890, column: 2, scope: !2762)
!2970 = !DILocation(line: 892, column: 6, scope: !2762)
!2971 = !DILocation(line: 894, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 894, column: 6)
!2973 = !DILocation(line: 894, column: 30, scope: !2972)
!2974 = !DILocation(line: 894, column: 37, scope: !2972)
!2975 = !DILocation(line: 894, column: 40, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2972, file: !68, discriminator: 1)
!2977 = !DILocation(line: 894, column: 67, scope: !2976)
!2978 = !DILocation(line: 894, column: 6, scope: !2976)
!2979 = !DILocation(line: 895, column: 28, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2972, file: !68, line: 894, column: 76)
!2981 = !DILocation(line: 895, column: 53, scope: !2980)
!2982 = !DILocation(line: 895, column: 58, scope: !2980)
!2983 = !DILocation(line: 895, column: 9, scope: !2980)
!2984 = !DILocation(line: 895, column: 83, scope: !2980)
!2985 = !DILocation(line: 895, column: 7, scope: !2980)
!2986 = !DILocation(line: 897, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !68, line: 897, column: 7)
!2988 = !DILocation(line: 897, column: 7, scope: !2980)
!2989 = !DILocation(line: 898, column: 4, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !68, line: 897, column: 14)
!2991 = !DILocation(line: 899, column: 4, scope: !2990)
!2992 = !DILocation(line: 901, column: 2, scope: !2980)
!2993 = !DILocation(line: 903, column: 6, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 903, column: 6)
!2995 = !DILocation(line: 903, column: 32, scope: !2994)
!2996 = !DILocation(line: 903, column: 39, scope: !2994)
!2997 = !DILocation(line: 903, column: 42, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2994, file: !68, discriminator: 1)
!2999 = !DILocation(line: 903, column: 71, scope: !2998)
!3000 = !DILocation(line: 903, column: 6, scope: !2998)
!3001 = !DILocation(line: 904, column: 28, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2994, file: !68, line: 903, column: 80)
!3003 = !DILocation(line: 904, column: 55, scope: !3002)
!3004 = !DILocation(line: 904, column: 60, scope: !3002)
!3005 = !DILocation(line: 904, column: 9, scope: !3002)
!3006 = !DILocation(line: 904, column: 84, scope: !3002)
!3007 = !DILocation(line: 904, column: 7, scope: !3002)
!3008 = !DILocation(line: 906, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3002, file: !68, line: 906, column: 7)
!3010 = !DILocation(line: 906, column: 7, scope: !3002)
!3011 = !DILocation(line: 907, column: 4, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !68, line: 906, column: 14)
!3013 = !DILocation(line: 908, column: 4, scope: !3012)
!3014 = !DILocation(line: 910, column: 2, scope: !3002)
!3015 = !DILocation(line: 912, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2762, file: !68, line: 912, column: 6)
!3017 = !DILocation(line: 912, column: 12, scope: !3016)
!3018 = !DILocation(line: 912, column: 6, scope: !2762)
!3019 = !DILocation(line: 913, column: 26, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !68, line: 912, column: 20)
!3021 = !DILocation(line: 913, column: 32, scope: !3020)
!3022 = !DILocation(line: 913, column: 37, scope: !3020)
!3023 = !DILocation(line: 913, column: 43, scope: !3020)
!3024 = !DILocation(line: 913, column: 48, scope: !3020)
!3025 = !DILocation(line: 913, column: 54, scope: !3020)
!3026 = !DILocation(line: 913, column: 62, scope: !3020)
!3027 = !DILocation(line: 913, column: 71, scope: !3020)
!3028 = !DILocation(line: 913, column: 80, scope: !3020)
!3029 = !DILocation(line: 913, column: 86, scope: !3020)
!3030 = !DILocation(line: 913, column: 92, scope: !3020)
!3031 = !DILocation(line: 913, column: 98, scope: !3020)
!3032 = !DILocation(line: 913, column: 104, scope: !3020)
!3033 = !DILocation(line: 913, column: 112, scope: !3020)
!3034 = !DILocation(line: 913, column: 9, scope: !3020)
!3035 = !DILocation(line: 913, column: 7, scope: !3020)
!3036 = !DILocation(line: 915, column: 9, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3020, file: !68, line: 915, column: 7)
!3038 = !DILocation(line: 915, column: 7, scope: !3020)
!3039 = !DILocation(line: 917, column: 4, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !68, line: 915, column: 14)
!3041 = !DILocation(line: 919, column: 2, scope: !3020)
!3042 = !DILocation(line: 912, column: 12, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3016, file: !68, discriminator: 1)
!3044 = !DILocation(line: 922, column: 15, scope: !2762)
!3045 = !DILocation(line: 922, column: 2, scope: !2762)
!3046 = !DILocation(line: 923, column: 12, scope: !2762)
!3047 = !DILocation(line: 923, column: 2, scope: !2762)
!3048 = !DILocation(line: 924, column: 9, scope: !2762)
!3049 = !DILocation(line: 924, column: 2, scope: !2762)
!3050 = !DILocation(line: 926, column: 9, scope: !2762)
!3051 = !DILocation(line: 926, column: 2, scope: !2762)
!3052 = !DILocation(line: 927, column: 1, scope: !2762)
!3053 = distinct !DISubprogram(name: "set_cipher_info", scope: !68, file: !68, line: 593, type: !3054, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !2808, !258}
!3056 = !DILocalVariable(name: "tls", arg: 1, scope: !3053, file: !68, line: 593, type: !2808)
!3057 = !DILocation(line: 593, column: 38, scope: !3053)
!3058 = !DILocalVariable(name: "ssl", arg: 2, scope: !3053, file: !68, line: 593, type: !258)
!3059 = !DILocation(line: 593, column: 48, scope: !3053)
!3060 = !DILocation(line: 595, column: 2, scope: !3053)
!3061 = distinct !{!3061, !3060}
!3062 = !DILocation(line: 595, column: 10, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3064, file: !68, discriminator: 1)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !68, line: 595, column: 10)
!3065 = distinct !DILexicalBlock(scope: !3053, file: !68, line: 595, column: 4)
!3066 = !DILocation(line: 595, column: 14, scope: !3063)
!3067 = !DILocation(line: 595, column: 5, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3069, file: !68, discriminator: 2)
!3069 = distinct !DILexicalBlock(scope: !3064, file: !68, line: 595, column: 3)
!3070 = !DILocation(line: 595, column: 14, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3072, file: !68, discriminator: 3)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !68, line: 595, column: 12)
!3073 = !DILocation(line: 595, column: 98, scope: !3071)
!3074 = !DILocation(line: 595, column: 109, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3065, file: !68, discriminator: 4)
!3076 = !DILocation(line: 596, column: 2, scope: !3053)
!3077 = distinct !{!3077, !3076}
!3078 = !DILocation(line: 596, column: 10, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3080, file: !68, discriminator: 1)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !68, line: 596, column: 10)
!3081 = distinct !DILexicalBlock(scope: !3053, file: !68, line: 596, column: 4)
!3082 = !DILocation(line: 596, column: 14, scope: !3079)
!3083 = !DILocation(line: 596, column: 5, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3085, file: !68, discriminator: 2)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !68, line: 596, column: 3)
!3086 = !DILocation(line: 596, column: 14, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3088, file: !68, discriminator: 3)
!3088 = distinct !DILexicalBlock(scope: !3080, file: !68, line: 596, column: 12)
!3089 = !DILocation(line: 596, column: 98, scope: !3087)
!3090 = !DILocation(line: 596, column: 109, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !3081, file: !68, discriminator: 4)
!3092 = !DILocation(line: 598, column: 31, scope: !3053)
!3093 = !DILocation(line: 598, column: 52, scope: !3053)
!3094 = !DILocation(line: 598, column: 36, scope: !3053)
!3095 = !DILocation(line: 598, column: 2, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3053, file: !68, discriminator: 1)
!3097 = !DILocation(line: 600, column: 21, scope: !3053)
!3098 = !DILocation(line: 600, column: 69, scope: !3053)
!3099 = !DILocation(line: 600, column: 46, scope: !3053)
!3100 = !DILocation(line: 600, column: 26, scope: !3096)
!3101 = !DILocation(line: 600, column: 2, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3053, file: !68, discriminator: 2)
!3103 = !DILocation(line: 601, column: 26, scope: !3053)
!3104 = !DILocation(line: 601, column: 30, scope: !3053)
!3105 = !DILocation(line: 601, column: 50, scope: !3053)
!3106 = !DILocation(line: 601, column: 30, scope: !3096)
!3107 = !DILocation(line: 601, column: 2, scope: !3102)
!3108 = !DILocation(line: 602, column: 1, scope: !3053)
!3109 = !DILocation(line: 602, column: 1, scope: !3096)
!3110 = distinct !DISubprogram(name: "set_pubkey_info", scope: !68, file: !68, line: 604, type: !3111, isLocal: true, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !2808, !401, !307, !519, !307, !519}
!3113 = !DILocalVariable(name: "tls", arg: 1, scope: !3110, file: !68, line: 604, type: !2808)
!3114 = !DILocation(line: 604, column: 38, scope: !3110)
!3115 = !DILocalVariable(name: "cert", arg: 2, scope: !3110, file: !68, line: 604, type: !401)
!3116 = !DILocation(line: 604, column: 49, scope: !3110)
!3117 = !DILocalVariable(name: "cert_fingerprint", arg: 3, scope: !3110, file: !68, line: 604, type: !307)
!3118 = !DILocation(line: 604, column: 70, scope: !3110)
!3119 = !DILocalVariable(name: "cert_fingerprint_size", arg: 4, scope: !3110, file: !68, line: 604, type: !519)
!3120 = !DILocation(line: 604, column: 95, scope: !3110)
!3121 = !DILocalVariable(name: "public_key_fingerprint", arg: 5, scope: !3110, file: !68, line: 604, type: !307)
!3122 = !DILocation(line: 604, column: 133, scope: !3110)
!3123 = !DILocalVariable(name: "public_key_fingerprint_size", arg: 6, scope: !3110, file: !68, line: 604, type: !519)
!3124 = !DILocation(line: 604, column: 164, scope: !3110)
!3125 = !DILocalVariable(name: "pubkey", scope: !3110, file: !68, line: 606, type: !543)
!3126 = !DILocation(line: 606, column: 12, scope: !3110)
!3127 = !DILocalVariable(name: "cert_fingerprint_hex", scope: !3110, file: !68, line: 607, type: !203)
!3128 = !DILocation(line: 607, column: 8, scope: !3110)
!3129 = !DILocalVariable(name: "public_key_fingerprint_hex", scope: !3110, file: !68, line: 608, type: !203)
!3130 = !DILocation(line: 608, column: 8, scope: !3110)
!3131 = !DILocalVariable(name: "bio", scope: !3110, file: !68, line: 610, type: !1481)
!3132 = !DILocation(line: 610, column: 7, scope: !3110)
!3133 = !DILocalVariable(name: "buffer", scope: !3110, file: !68, line: 611, type: !3134)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1024, align: 8, elements: !1361)
!3135 = !DILocation(line: 611, column: 7, scope: !3110)
!3136 = !DILocalVariable(name: "length", scope: !3110, file: !68, line: 612, type: !519)
!3137 = !DILocation(line: 612, column: 9, scope: !3110)
!3138 = !DILocation(line: 614, column: 2, scope: !3110)
!3139 = distinct !{!3139, !3138}
!3140 = !DILocation(line: 614, column: 10, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3142, file: !68, discriminator: 1)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !68, line: 614, column: 10)
!3143 = distinct !DILexicalBlock(scope: !3110, file: !68, line: 614, column: 4)
!3144 = !DILocation(line: 614, column: 14, scope: !3141)
!3145 = !DILocation(line: 614, column: 5, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3147, file: !68, discriminator: 2)
!3147 = distinct !DILexicalBlock(scope: !3142, file: !68, line: 614, column: 3)
!3148 = !DILocation(line: 614, column: 14, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !68, discriminator: 3)
!3150 = distinct !DILexicalBlock(scope: !3142, file: !68, line: 614, column: 12)
!3151 = !DILocation(line: 614, column: 98, scope: !3149)
!3152 = !DILocation(line: 614, column: 109, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3143, file: !68, discriminator: 4)
!3154 = !DILocation(line: 615, column: 2, scope: !3110)
!3155 = distinct !{!3155, !3154}
!3156 = !DILocation(line: 615, column: 10, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3158, file: !68, discriminator: 1)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !68, line: 615, column: 10)
!3159 = distinct !DILexicalBlock(scope: !3110, file: !68, line: 615, column: 4)
!3160 = !DILocation(line: 615, column: 15, scope: !3157)
!3161 = !DILocation(line: 615, column: 5, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3163, file: !68, discriminator: 2)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !68, line: 615, column: 3)
!3164 = !DILocation(line: 615, column: 14, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3166, file: !68, discriminator: 3)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !68, line: 615, column: 12)
!3167 = !DILocation(line: 615, column: 99, scope: !3165)
!3168 = !DILocation(line: 615, column: 110, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3159, file: !68, discriminator: 4)
!3170 = !DILocation(line: 617, column: 27, scope: !3110)
!3171 = !DILocation(line: 617, column: 11, scope: !3110)
!3172 = !DILocation(line: 617, column: 9, scope: !3110)
!3173 = !DILocation(line: 619, column: 39, scope: !3110)
!3174 = !DILocation(line: 619, column: 57, scope: !3110)
!3175 = !DILocation(line: 619, column: 25, scope: !3110)
!3176 = !DILocation(line: 619, column: 23, scope: !3110)
!3177 = !DILocation(line: 620, column: 38, scope: !3110)
!3178 = !DILocation(line: 620, column: 43, scope: !3110)
!3179 = !DILocation(line: 620, column: 2, scope: !3110)
!3180 = !DILocation(line: 621, column: 48, scope: !3110)
!3181 = !DILocation(line: 621, column: 2, scope: !3110)
!3182 = !DILocation(line: 624, column: 22, scope: !3110)
!3183 = !DILocation(line: 624, column: 10, scope: !3110)
!3184 = !DILocation(line: 624, column: 2, scope: !3110)
!3185 = !DILocation(line: 626, column: 37, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3110, file: !68, line: 624, column: 31)
!3187 = !DILocation(line: 626, column: 4, scope: !3186)
!3188 = !DILocation(line: 627, column: 4, scope: !3186)
!3189 = !DILocation(line: 630, column: 37, scope: !3186)
!3190 = !DILocation(line: 630, column: 4, scope: !3186)
!3191 = !DILocation(line: 631, column: 4, scope: !3186)
!3192 = !DILocation(line: 634, column: 37, scope: !3186)
!3193 = !DILocation(line: 634, column: 4, scope: !3186)
!3194 = !DILocation(line: 635, column: 4, scope: !3186)
!3195 = !DILocation(line: 638, column: 37, scope: !3186)
!3196 = !DILocation(line: 638, column: 4, scope: !3186)
!3197 = !DILocation(line: 639, column: 4, scope: !3186)
!3198 = !DILocation(line: 642, column: 45, scope: !3110)
!3199 = !DILocation(line: 642, column: 69, scope: !3110)
!3200 = !DILocation(line: 642, column: 31, scope: !3110)
!3201 = !DILocation(line: 642, column: 29, scope: !3110)
!3202 = !DILocation(line: 643, column: 37, scope: !3110)
!3203 = !DILocation(line: 643, column: 42, scope: !3110)
!3204 = !DILocation(line: 643, column: 2, scope: !3110)
!3205 = !DILocation(line: 644, column: 30, scope: !3110)
!3206 = !DILocation(line: 644, column: 49, scope: !3110)
!3207 = !DILocation(line: 644, column: 35, scope: !3110)
!3208 = !DILocation(line: 644, column: 2, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3110, file: !68, discriminator: 1)
!3210 = !DILocation(line: 645, column: 47, scope: !3110)
!3211 = !DILocation(line: 645, column: 2, scope: !3110)
!3212 = !DILocation(line: 648, column: 16, scope: !3110)
!3213 = !DILocation(line: 648, column: 8, scope: !3209)
!3214 = !DILocation(line: 648, column: 6, scope: !3110)
!3215 = !DILocation(line: 649, column: 18, scope: !3110)
!3216 = !DILocation(line: 649, column: 22, scope: !3110)
!3217 = !DILocation(line: 649, column: 25, scope: !3110)
!3218 = !DILocation(line: 649, column: 36, scope: !3110)
!3219 = !DILocation(line: 649, column: 46, scope: !3110)
!3220 = !DILocation(line: 649, column: 2, scope: !3110)
!3221 = !DILocation(line: 650, column: 20, scope: !3110)
!3222 = !DILocation(line: 650, column: 25, scope: !3110)
!3223 = !DILocation(line: 650, column: 11, scope: !3110)
!3224 = !DILocation(line: 650, column: 9, scope: !3110)
!3225 = !DILocation(line: 651, column: 9, scope: !3110)
!3226 = !DILocation(line: 651, column: 2, scope: !3110)
!3227 = !DILocation(line: 651, column: 17, scope: !3110)
!3228 = !DILocation(line: 652, column: 11, scope: !3110)
!3229 = !DILocation(line: 652, column: 2, scope: !3110)
!3230 = !DILocation(line: 653, column: 25, scope: !3110)
!3231 = !DILocation(line: 653, column: 30, scope: !3110)
!3232 = !DILocation(line: 653, column: 2, scope: !3110)
!3233 = !DILocation(line: 656, column: 16, scope: !3110)
!3234 = !DILocation(line: 656, column: 8, scope: !3209)
!3235 = !DILocation(line: 656, column: 6, scope: !3110)
!3236 = !DILocation(line: 657, column: 18, scope: !3110)
!3237 = !DILocation(line: 657, column: 22, scope: !3110)
!3238 = !DILocation(line: 657, column: 25, scope: !3110)
!3239 = !DILocation(line: 657, column: 36, scope: !3110)
!3240 = !DILocation(line: 657, column: 46, scope: !3110)
!3241 = !DILocation(line: 657, column: 2, scope: !3110)
!3242 = !DILocation(line: 658, column: 20, scope: !3110)
!3243 = !DILocation(line: 658, column: 25, scope: !3110)
!3244 = !DILocation(line: 658, column: 11, scope: !3110)
!3245 = !DILocation(line: 658, column: 9, scope: !3110)
!3246 = !DILocation(line: 659, column: 9, scope: !3110)
!3247 = !DILocation(line: 659, column: 2, scope: !3110)
!3248 = !DILocation(line: 659, column: 17, scope: !3110)
!3249 = !DILocation(line: 660, column: 11, scope: !3110)
!3250 = !DILocation(line: 660, column: 2, scope: !3110)
!3251 = !DILocation(line: 661, column: 24, scope: !3110)
!3252 = !DILocation(line: 661, column: 29, scope: !3110)
!3253 = !DILocation(line: 661, column: 2, scope: !3110)
!3254 = !DILocation(line: 663, column: 9, scope: !3110)
!3255 = !DILocation(line: 663, column: 2, scope: !3110)
!3256 = !DILocation(line: 664, column: 9, scope: !3110)
!3257 = !DILocation(line: 664, column: 2, scope: !3110)
!3258 = !DILocation(line: 665, column: 16, scope: !3110)
!3259 = !DILocation(line: 665, column: 2, scope: !3110)
!3260 = !DILocation(line: 666, column: 1, scope: !3110)
!3261 = !DILocation(line: 666, column: 1, scope: !3209)
!3262 = distinct !DISubprogram(name: "set_peer_cert_chain_info", scope: !68, file: !68, line: 668, type: !3054, isLocal: true, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3263 = !DILocalVariable(name: "tls", arg: 1, scope: !3262, file: !68, line: 668, type: !2808)
!3264 = !DILocation(line: 668, column: 47, scope: !3262)
!3265 = !DILocalVariable(name: "ssl", arg: 2, scope: !3262, file: !68, line: 668, type: !258)
!3266 = !DILocation(line: 668, column: 57, scope: !3262)
!3267 = !DILocalVariable(name: "nid", scope: !3262, file: !68, line: 670, type: !77)
!3268 = !DILocation(line: 670, column: 6, scope: !3262)
!3269 = !DILocalVariable(name: "key", scope: !3262, file: !68, line: 671, type: !203)
!3270 = !DILocation(line: 671, column: 8, scope: !3262)
!3271 = !DILocalVariable(name: "value", scope: !3262, file: !68, line: 672, type: !203)
!3272 = !DILocation(line: 672, column: 8, scope: !3262)
!3273 = !DILocalVariable(name: "chain", scope: !3262, file: !68, line: 673, type: !906)
!3274 = !DILocation(line: 673, column: 17, scope: !3262)
!3275 = !DILocalVariable(name: "i", scope: !3262, file: !68, line: 674, type: !77)
!3276 = !DILocation(line: 674, column: 6, scope: !3262)
!3277 = !DILocalVariable(name: "j", scope: !3262, file: !68, line: 675, type: !77)
!3278 = !DILocation(line: 675, column: 6, scope: !3262)
!3279 = !DILocalVariable(name: "cert_rec", scope: !3262, file: !68, line: 676, type: !3280)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64, align: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_REC", file: !2810, line: 27, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_REC", file: !2810, line: 52, size: 128, align: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !3282, file: !2810, line: 53, baseType: !193, size: 64, align: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !3282, file: !2810, line: 54, baseType: !193, size: 64, align: 64, offset: 64)
!3286 = !DILocation(line: 676, column: 16, scope: !3262)
!3287 = !DILocalVariable(name: "name", scope: !3262, file: !68, line: 677, type: !502)
!3288 = !DILocation(line: 677, column: 13, scope: !3262)
!3289 = !DILocalVariable(name: "entry", scope: !3262, file: !68, line: 678, type: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64, align: 64)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME_ENTRY", file: !404, line: 173, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_entry_st", file: !404, line: 168, size: 192, align: 64, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !3292, file: !404, line: 169, baseType: !427, size: 64, align: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3292, file: !404, line: 170, baseType: !452, size: 64, align: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3292, file: !404, line: 171, baseType: !77, size: 32, align: 32, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3292, file: !404, line: 172, baseType: !77, size: 32, align: 32, offset: 160)
!3298 = !DILocation(line: 678, column: 19, scope: !3262)
!3299 = !DILocalVariable(name: "tls_cert_entry_rec", scope: !3262, file: !68, line: 679, type: !3300)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_CERT_ENTRY_REC", file: !2810, line: 28, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TLS_CERT_ENTRY_REC", file: !2810, line: 57, size: 128, align: 64, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3302, file: !2810, line: 58, baseType: !203, size: 64, align: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3302, file: !2810, line: 59, baseType: !203, size: 64, align: 64, offset: 64)
!3306 = !DILocation(line: 679, column: 22, scope: !3262)
!3307 = !DILocalVariable(name: "data", scope: !3262, file: !68, line: 680, type: !452)
!3308 = !DILocation(line: 680, column: 15, scope: !3262)
!3309 = !DILocation(line: 682, column: 2, scope: !3262)
!3310 = distinct !{!3310, !3309}
!3311 = !DILocation(line: 682, column: 10, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3313, file: !68, discriminator: 1)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !68, line: 682, column: 10)
!3314 = distinct !DILexicalBlock(scope: !3262, file: !68, line: 682, column: 4)
!3315 = !DILocation(line: 682, column: 14, scope: !3312)
!3316 = !DILocation(line: 682, column: 5, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3318, file: !68, discriminator: 2)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !68, line: 682, column: 3)
!3319 = !DILocation(line: 682, column: 14, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3321, file: !68, discriminator: 3)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !68, line: 682, column: 12)
!3322 = !DILocation(line: 682, column: 98, scope: !3320)
!3323 = !DILocation(line: 682, column: 109, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3314, file: !68, discriminator: 4)
!3325 = !DILocation(line: 683, column: 2, scope: !3262)
!3326 = distinct !{!3326, !3325}
!3327 = !DILocation(line: 683, column: 10, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !3329, file: !68, discriminator: 1)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !68, line: 683, column: 10)
!3330 = distinct !DILexicalBlock(scope: !3262, file: !68, line: 683, column: 4)
!3331 = !DILocation(line: 683, column: 14, scope: !3328)
!3332 = !DILocation(line: 683, column: 5, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3334, file: !68, discriminator: 2)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !68, line: 683, column: 3)
!3335 = !DILocation(line: 683, column: 14, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !3337, file: !68, discriminator: 3)
!3337 = distinct !DILexicalBlock(scope: !3329, file: !68, line: 683, column: 12)
!3338 = !DILocation(line: 683, column: 98, scope: !3336)
!3339 = !DILocation(line: 683, column: 109, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3330, file: !68, discriminator: 4)
!3341 = !DILocation(line: 685, column: 34, scope: !3262)
!3342 = !DILocation(line: 685, column: 10, scope: !3262)
!3343 = !DILocation(line: 685, column: 8, scope: !3262)
!3344 = !DILocation(line: 687, column: 6, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3262, file: !68, line: 687, column: 6)
!3346 = !DILocation(line: 687, column: 12, scope: !3345)
!3347 = !DILocation(line: 687, column: 6, scope: !3262)
!3348 = !DILocation(line: 688, column: 3, scope: !3345)
!3349 = !DILocation(line: 690, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3262, file: !68, line: 690, column: 2)
!3351 = !DILocation(line: 690, column: 7, scope: !3350)
!3352 = !DILocation(line: 690, column: 14, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !3354, file: !68, discriminator: 1)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !68, line: 690, column: 2)
!3355 = !DILocation(line: 690, column: 17, scope: !3353)
!3356 = !DILocation(line: 690, column: 25, scope: !3353)
!3357 = !DILocation(line: 690, column: 16, scope: !3353)
!3358 = !DILocation(line: 690, column: 2, scope: !3353)
!3359 = !DILocation(line: 691, column: 14, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3354, file: !68, line: 690, column: 42)
!3361 = !DILocation(line: 691, column: 12, scope: !3360)
!3362 = !DILocation(line: 694, column: 31, scope: !3360)
!3363 = !DILocation(line: 694, column: 50, scope: !3360)
!3364 = !DILocation(line: 694, column: 40, scope: !3360)
!3365 = !DILocation(line: 694, column: 32, scope: !3360)
!3366 = !DILocation(line: 694, column: 10, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3360, file: !68, discriminator: 1)
!3368 = !DILocation(line: 694, column: 8, scope: !3360)
!3369 = !DILocation(line: 696, column: 10, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3360, file: !68, line: 696, column: 3)
!3371 = !DILocation(line: 696, column: 8, scope: !3370)
!3372 = !DILocation(line: 696, column: 15, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3374, file: !68, discriminator: 1)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !68, line: 696, column: 3)
!3375 = !DILocation(line: 696, column: 41, scope: !3373)
!3376 = !DILocation(line: 696, column: 19, scope: !3373)
!3377 = !DILocation(line: 696, column: 17, scope: !3373)
!3378 = !DILocation(line: 696, column: 3, scope: !3373)
!3379 = !DILocation(line: 697, column: 32, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !68, line: 696, column: 53)
!3381 = !DILocation(line: 697, column: 38, scope: !3380)
!3382 = !DILocation(line: 697, column: 12, scope: !3380)
!3383 = !DILocation(line: 697, column: 10, scope: !3380)
!3384 = !DILocation(line: 699, column: 49, scope: !3380)
!3385 = !DILocation(line: 699, column: 22, scope: !3380)
!3386 = !DILocation(line: 699, column: 10, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3380, file: !68, discriminator: 1)
!3388 = !DILocation(line: 699, column: 8, scope: !3380)
!3389 = !DILocation(line: 700, column: 29, scope: !3380)
!3390 = !DILocation(line: 700, column: 18, scope: !3380)
!3391 = !DILocation(line: 700, column: 8, scope: !3380)
!3392 = !DILocation(line: 702, column: 8, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3380, file: !68, line: 702, column: 8)
!3394 = !DILocation(line: 702, column: 12, scope: !3393)
!3395 = !DILocation(line: 702, column: 8, scope: !3380)
!3396 = !DILocation(line: 703, column: 30, scope: !3393)
!3397 = !DILocation(line: 703, column: 19, scope: !3393)
!3398 = !DILocation(line: 703, column: 9, scope: !3393)
!3399 = !DILocation(line: 703, column: 5, scope: !3393)
!3400 = !DILocation(line: 705, column: 36, scope: !3380)
!3401 = !DILocation(line: 705, column: 11, scope: !3380)
!3402 = !DILocation(line: 705, column: 9, scope: !3380)
!3403 = !DILocation(line: 706, column: 37, scope: !3380)
!3404 = !DILocation(line: 706, column: 20, scope: !3380)
!3405 = !DILocation(line: 706, column: 10, scope: !3380)
!3406 = !DILocation(line: 708, column: 51, scope: !3380)
!3407 = !DILocation(line: 708, column: 56, scope: !3380)
!3408 = !DILocation(line: 708, column: 25, scope: !3380)
!3409 = !DILocation(line: 708, column: 23, scope: !3380)
!3410 = !DILocation(line: 709, column: 38, scope: !3380)
!3411 = !DILocation(line: 709, column: 48, scope: !3380)
!3412 = !DILocation(line: 709, column: 4, scope: !3380)
!3413 = !DILocation(line: 710, column: 3, scope: !3380)
!3414 = !DILocation(line: 696, column: 49, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3374, file: !68, discriminator: 2)
!3416 = !DILocation(line: 696, column: 3, scope: !3415)
!3417 = distinct !{!3417, !3418}
!3418 = !DILocation(line: 696, column: 3, scope: !3360)
!3419 = !DILocation(line: 713, column: 30, scope: !3360)
!3420 = !DILocation(line: 713, column: 49, scope: !3360)
!3421 = !DILocation(line: 713, column: 39, scope: !3360)
!3422 = !DILocation(line: 713, column: 31, scope: !3360)
!3423 = !DILocation(line: 713, column: 10, scope: !3367)
!3424 = !DILocation(line: 713, column: 8, scope: !3360)
!3425 = !DILocation(line: 715, column: 10, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3360, file: !68, line: 715, column: 3)
!3427 = !DILocation(line: 715, column: 8, scope: !3426)
!3428 = !DILocation(line: 715, column: 15, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3430, file: !68, discriminator: 1)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !68, line: 715, column: 3)
!3431 = !DILocation(line: 715, column: 41, scope: !3429)
!3432 = !DILocation(line: 715, column: 19, scope: !3429)
!3433 = !DILocation(line: 715, column: 17, scope: !3429)
!3434 = !DILocation(line: 715, column: 3, scope: !3429)
!3435 = !DILocation(line: 716, column: 32, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3430, file: !68, line: 715, column: 53)
!3437 = !DILocation(line: 716, column: 38, scope: !3436)
!3438 = !DILocation(line: 716, column: 12, scope: !3436)
!3439 = !DILocation(line: 716, column: 10, scope: !3436)
!3440 = !DILocation(line: 718, column: 49, scope: !3436)
!3441 = !DILocation(line: 718, column: 22, scope: !3436)
!3442 = !DILocation(line: 718, column: 10, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3436, file: !68, discriminator: 1)
!3444 = !DILocation(line: 718, column: 8, scope: !3436)
!3445 = !DILocation(line: 719, column: 29, scope: !3436)
!3446 = !DILocation(line: 719, column: 18, scope: !3436)
!3447 = !DILocation(line: 719, column: 8, scope: !3436)
!3448 = !DILocation(line: 721, column: 8, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3436, file: !68, line: 721, column: 8)
!3450 = !DILocation(line: 721, column: 12, scope: !3449)
!3451 = !DILocation(line: 721, column: 8, scope: !3436)
!3452 = !DILocation(line: 722, column: 30, scope: !3449)
!3453 = !DILocation(line: 722, column: 19, scope: !3449)
!3454 = !DILocation(line: 722, column: 9, scope: !3449)
!3455 = !DILocation(line: 722, column: 5, scope: !3449)
!3456 = !DILocation(line: 724, column: 36, scope: !3436)
!3457 = !DILocation(line: 724, column: 11, scope: !3436)
!3458 = !DILocation(line: 724, column: 9, scope: !3436)
!3459 = !DILocation(line: 725, column: 37, scope: !3436)
!3460 = !DILocation(line: 725, column: 20, scope: !3436)
!3461 = !DILocation(line: 725, column: 10, scope: !3436)
!3462 = !DILocation(line: 727, column: 51, scope: !3436)
!3463 = !DILocation(line: 727, column: 56, scope: !3436)
!3464 = !DILocation(line: 727, column: 25, scope: !3436)
!3465 = !DILocation(line: 727, column: 23, scope: !3436)
!3466 = !DILocation(line: 728, column: 37, scope: !3436)
!3467 = !DILocation(line: 728, column: 47, scope: !3436)
!3468 = !DILocation(line: 728, column: 4, scope: !3436)
!3469 = !DILocation(line: 729, column: 3, scope: !3436)
!3470 = !DILocation(line: 715, column: 49, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3430, file: !68, discriminator: 2)
!3472 = !DILocation(line: 715, column: 3, scope: !3471)
!3473 = distinct !{!3473, !3474}
!3474 = !DILocation(line: 715, column: 3, scope: !3360)
!3475 = !DILocation(line: 731, column: 23, scope: !3360)
!3476 = !DILocation(line: 731, column: 28, scope: !3360)
!3477 = !DILocation(line: 731, column: 3, scope: !3360)
!3478 = !DILocation(line: 732, column: 2, scope: !3360)
!3479 = !DILocation(line: 690, column: 38, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3354, file: !68, discriminator: 2)
!3481 = !DILocation(line: 690, column: 2, scope: !3480)
!3482 = distinct !{!3482, !3483}
!3483 = !DILocation(line: 690, column: 2, scope: !3262)
!3484 = !DILocation(line: 733, column: 1, scope: !3262)
!3485 = distinct !DISubprogram(name: "set_server_temporary_key_info", scope: !68, file: !68, line: 735, type: !3054, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3486 = !DILocalVariable(name: "tls", arg: 1, scope: !3485, file: !68, line: 735, type: !2808)
!3487 = !DILocation(line: 735, column: 52, scope: !3485)
!3488 = !DILocalVariable(name: "ssl", arg: 2, scope: !3485, file: !68, line: 735, type: !258)
!3489 = !DILocation(line: 735, column: 62, scope: !3485)
!3490 = !DILocalVariable(name: "ephemeral_key", scope: !3485, file: !68, line: 739, type: !543)
!3491 = !DILocation(line: 739, column: 12, scope: !3485)
!3492 = !DILocalVariable(name: "ec_key", scope: !3485, file: !68, line: 743, type: !1695)
!3493 = !DILocation(line: 743, column: 10, scope: !3485)
!3494 = !DILocalVariable(name: "ephemeral_key_algorithm", scope: !3485, file: !68, line: 745, type: !203)
!3495 = !DILocation(line: 745, column: 8, scope: !3485)
!3496 = !DILocalVariable(name: "cname", scope: !3485, file: !68, line: 746, type: !203)
!3497 = !DILocation(line: 746, column: 8, scope: !3485)
!3498 = !DILocalVariable(name: "nid", scope: !3485, file: !68, line: 747, type: !77)
!3499 = !DILocation(line: 747, column: 6, scope: !3485)
!3500 = !DILocation(line: 749, column: 2, scope: !3485)
!3501 = distinct !{!3501, !3500}
!3502 = !DILocation(line: 749, column: 10, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3504, file: !68, discriminator: 1)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !68, line: 749, column: 10)
!3505 = distinct !DILexicalBlock(scope: !3485, file: !68, line: 749, column: 4)
!3506 = !DILocation(line: 749, column: 14, scope: !3503)
!3507 = !DILocation(line: 749, column: 5, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3509, file: !68, discriminator: 2)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !68, line: 749, column: 3)
!3510 = !DILocation(line: 749, column: 14, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3512, file: !68, discriminator: 3)
!3512 = distinct !DILexicalBlock(scope: !3504, file: !68, line: 749, column: 12)
!3513 = !DILocation(line: 749, column: 98, scope: !3511)
!3514 = !DILocation(line: 749, column: 109, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3505, file: !68, discriminator: 4)
!3516 = !DILocation(line: 750, column: 2, scope: !3485)
!3517 = distinct !{!3517, !3516}
!3518 = !DILocation(line: 750, column: 10, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3520, file: !68, discriminator: 1)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !68, line: 750, column: 10)
!3521 = distinct !DILexicalBlock(scope: !3485, file: !68, line: 750, column: 4)
!3522 = !DILocation(line: 750, column: 14, scope: !3519)
!3523 = !DILocation(line: 750, column: 5, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3525, file: !68, discriminator: 2)
!3525 = distinct !DILexicalBlock(scope: !3520, file: !68, line: 750, column: 3)
!3526 = !DILocation(line: 750, column: 14, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3528, file: !68, discriminator: 3)
!3528 = distinct !DILexicalBlock(scope: !3520, file: !68, line: 750, column: 12)
!3529 = !DILocation(line: 750, column: 98, scope: !3527)
!3530 = !DILocation(line: 750, column: 109, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3521, file: !68, discriminator: 4)
!3532 = !DILocation(line: 752, column: 5, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3485, file: !68, line: 752, column: 5)
!3534 = !DILocation(line: 752, column: 5, scope: !3485)
!3535 = !DILocation(line: 753, column: 23, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !68, line: 752, column: 50)
!3537 = !DILocation(line: 753, column: 11, scope: !3536)
!3538 = !DILocation(line: 753, column: 3, scope: !3536)
!3539 = !DILocation(line: 755, column: 41, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !68, line: 753, column: 39)
!3541 = !DILocation(line: 755, column: 5, scope: !3540)
!3542 = !DILocation(line: 756, column: 36, scope: !3540)
!3543 = !DILocation(line: 756, column: 55, scope: !3540)
!3544 = !DILocation(line: 756, column: 41, scope: !3540)
!3545 = !DILocation(line: 756, column: 5, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3540, file: !68, discriminator: 1)
!3547 = !DILocation(line: 757, column: 5, scope: !3540)
!3548 = !DILocation(line: 761, column: 35, scope: !3540)
!3549 = !DILocation(line: 761, column: 14, scope: !3540)
!3550 = !DILocation(line: 761, column: 12, scope: !3540)
!3551 = !DILocation(line: 762, column: 53, scope: !3540)
!3552 = !DILocation(line: 762, column: 35, scope: !3540)
!3553 = !DILocation(line: 762, column: 11, scope: !3546)
!3554 = !DILocation(line: 762, column: 9, scope: !3540)
!3555 = !DILocation(line: 763, column: 17, scope: !3540)
!3556 = !DILocation(line: 763, column: 5, scope: !3540)
!3557 = !DILocation(line: 764, column: 32, scope: !3540)
!3558 = !DILocation(line: 764, column: 21, scope: !3540)
!3559 = !DILocation(line: 764, column: 11, scope: !3540)
!3560 = !DILocation(line: 765, column: 59, scope: !3540)
!3561 = !DILocation(line: 765, column: 31, scope: !3540)
!3562 = !DILocation(line: 765, column: 29, scope: !3540)
!3563 = !DILocation(line: 767, column: 41, scope: !3540)
!3564 = !DILocation(line: 767, column: 46, scope: !3540)
!3565 = !DILocation(line: 767, column: 5, scope: !3540)
!3566 = !DILocation(line: 768, column: 36, scope: !3540)
!3567 = !DILocation(line: 768, column: 55, scope: !3540)
!3568 = !DILocation(line: 768, column: 41, scope: !3540)
!3569 = !DILocation(line: 768, column: 5, scope: !3546)
!3570 = !DILocation(line: 770, column: 5, scope: !3540)
!3571 = distinct !{!3571, !3570}
!3572 = !DILocation(line: 770, column: 14, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3574, file: !68, discriminator: 1)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !68, line: 770, column: 14)
!3575 = distinct !DILexicalBlock(scope: !3540, file: !68, line: 770, column: 8)
!3576 = !DILocation(line: 770, column: 48, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3578, file: !68, discriminator: 2)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !68, line: 770, column: 39)
!3579 = !DILocation(line: 770, column: 41, scope: !3577)
!3580 = !DILocation(line: 770, column: 100, scope: !3577)
!3581 = !DILocation(line: 770, column: 6, scope: !3577)
!3582 = !DILocation(line: 770, column: 8, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3575, file: !68, discriminator: 3)
!3584 = !DILocation(line: 771, column: 5, scope: !3540)
!3585 = !DILocation(line: 775, column: 41, scope: !3540)
!3586 = !DILocation(line: 775, column: 5, scope: !3540)
!3587 = !DILocation(line: 776, column: 36, scope: !3540)
!3588 = !DILocation(line: 776, column: 55, scope: !3540)
!3589 = !DILocation(line: 776, column: 41, scope: !3540)
!3590 = !DILocation(line: 776, column: 5, scope: !3546)
!3591 = !DILocation(line: 777, column: 5, scope: !3540)
!3592 = !DILocation(line: 780, column: 17, scope: !3536)
!3593 = !DILocation(line: 780, column: 3, scope: !3536)
!3594 = !DILocation(line: 781, column: 2, scope: !3536)
!3595 = !DILocation(line: 783, column: 1, scope: !3485)
!3596 = distinct !DISubprogram(name: "irssi_ssl_verify", scope: !68, file: !68, line: 235, type: !3597, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!152, !258, !322, !64, !77, !401, !1954, !2808}
!3599 = !DILocalVariable(name: "ssl", arg: 1, scope: !3596, file: !68, line: 235, type: !258)
!3600 = !DILocation(line: 235, column: 39, scope: !3596)
!3601 = !DILocalVariable(name: "ctx", arg: 2, scope: !3596, file: !68, line: 235, type: !322)
!3602 = !DILocation(line: 235, column: 53, scope: !3596)
!3603 = !DILocalVariable(name: "hostname", arg: 3, scope: !3596, file: !68, line: 235, type: !64)
!3604 = !DILocation(line: 235, column: 70, scope: !3596)
!3605 = !DILocalVariable(name: "port", arg: 4, scope: !3596, file: !68, line: 235, type: !77)
!3606 = !DILocation(line: 235, column: 84, scope: !3596)
!3607 = !DILocalVariable(name: "cert", arg: 5, scope: !3596, file: !68, line: 235, type: !401)
!3608 = !DILocation(line: 235, column: 96, scope: !3596)
!3609 = !DILocalVariable(name: "server", arg: 6, scope: !3596, file: !68, line: 235, type: !1954)
!3610 = !DILocation(line: 235, column: 114, scope: !3596)
!3611 = !DILocalVariable(name: "tls_rec", arg: 7, scope: !3596, file: !68, line: 235, type: !2808)
!3612 = !DILocation(line: 235, column: 131, scope: !3596)
!3613 = !DILocalVariable(name: "result", scope: !3596, file: !68, line: 237, type: !117)
!3614 = !DILocation(line: 237, column: 7, scope: !3596)
!3615 = !DILocation(line: 239, column: 33, scope: !3596)
!3616 = !DILocation(line: 239, column: 11, scope: !3596)
!3617 = !DILocation(line: 239, column: 9, scope: !3596)
!3618 = !DILocation(line: 240, column: 6, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3596, file: !68, line: 240, column: 6)
!3620 = !DILocation(line: 240, column: 13, scope: !3619)
!3621 = !DILocation(line: 240, column: 6, scope: !3596)
!3622 = !DILocation(line: 241, column: 123, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3619, file: !68, line: 240, column: 26)
!3624 = !DILocation(line: 241, column: 93, scope: !3623)
!3625 = !DILocation(line: 241, column: 3, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3623, file: !68, discriminator: 1)
!3627 = !DILocation(line: 242, column: 3, scope: !3623)
!3628 = !DILocation(line: 243, column: 41, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3619, file: !68, line: 243, column: 13)
!3630 = !DILocation(line: 243, column: 47, scope: !3629)
!3631 = !DILocation(line: 243, column: 15, scope: !3629)
!3632 = !DILocation(line: 243, column: 13, scope: !3619)
!3633 = !DILocation(line: 244, column: 3, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3629, file: !68, line: 243, column: 57)
!3635 = !DILocation(line: 246, column: 2, scope: !3596)
!3636 = !DILocation(line: 247, column: 1, scope: !3596)
!3637 = distinct !DISubprogram(name: "get_pem_password_callback", scope: !68, file: !68, line: 425, type: !1161, isLocal: true, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3638 = !DILocalVariable(name: "buffer", arg: 1, scope: !3637, file: !68, line: 425, type: !203)
!3639 = !DILocation(line: 425, column: 44, scope: !3637)
!3640 = !DILocalVariable(name: "max_length", arg: 2, scope: !3637, file: !68, line: 425, type: !77)
!3641 = !DILocation(line: 425, column: 56, scope: !3637)
!3642 = !DILocalVariable(name: "rwflag", arg: 3, scope: !3637, file: !68, line: 425, type: !77)
!3643 = !DILocation(line: 425, column: 72, scope: !3637)
!3644 = !DILocalVariable(name: "pass", arg: 4, scope: !3637, file: !68, line: 425, type: !59)
!3645 = !DILocation(line: 425, column: 86, scope: !3637)
!3646 = !DILocalVariable(name: "password", scope: !3637, file: !68, line: 427, type: !203)
!3647 = !DILocation(line: 427, column: 8, scope: !3637)
!3648 = !DILocalVariable(name: "length", scope: !3637, file: !68, line: 428, type: !519)
!3649 = !DILocation(line: 428, column: 9, scope: !3637)
!3650 = !DILocation(line: 430, column: 6, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3637, file: !68, line: 430, column: 6)
!3652 = !DILocation(line: 430, column: 11, scope: !3651)
!3653 = !DILocation(line: 430, column: 6, scope: !3637)
!3654 = !DILocation(line: 431, column: 3, scope: !3651)
!3655 = !DILocation(line: 433, column: 21, scope: !3637)
!3656 = !DILocation(line: 433, column: 11, scope: !3637)
!3657 = !DILocation(line: 434, column: 18, scope: !3637)
!3658 = !DILocation(line: 434, column: 11, scope: !3637)
!3659 = !DILocation(line: 434, column: 9, scope: !3637)
!3660 = !DILocation(line: 436, column: 6, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3637, file: !68, line: 436, column: 6)
!3662 = !DILocation(line: 436, column: 15, scope: !3661)
!3663 = !DILocation(line: 436, column: 13, scope: !3661)
!3664 = !DILocation(line: 436, column: 6, scope: !3637)
!3665 = !DILocation(line: 437, column: 3, scope: !3661)
!3666 = !DILocation(line: 439, column: 9, scope: !3637)
!3667 = !DILocation(line: 439, column: 17, scope: !3637)
!3668 = !DILocation(line: 439, column: 27, scope: !3637)
!3669 = !DILocation(line: 439, column: 34, scope: !3637)
!3670 = !DILocation(line: 439, column: 2, scope: !3637)
!3671 = !DILocation(line: 440, column: 9, scope: !3637)
!3672 = !DILocation(line: 440, column: 2, scope: !3637)
!3673 = !DILocation(line: 441, column: 1, scope: !3637)
!3674 = distinct !DISubprogram(name: "X509_STORE_up_ref", scope: !68, file: !68, line: 53, type: !3675, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!77, !397}
!3677 = !DILocalVariable(name: "vfy", arg: 1, scope: !3674, file: !68, line: 53, type: !397)
!3678 = !DILocation(line: 53, column: 42, scope: !3674)
!3679 = !DILocalVariable(name: "n", scope: !3674, file: !68, line: 55, type: !77)
!3680 = !DILocation(line: 55, column: 9, scope: !3674)
!3681 = !DILocation(line: 57, column: 9, scope: !3674)
!3682 = !DILocation(line: 57, column: 14, scope: !3674)
!3683 = !DILocation(line: 57, column: 8, scope: !3674)
!3684 = !DILocation(line: 57, column: 7, scope: !3674)
!3685 = !DILocation(line: 58, column: 5, scope: !3674)
!3686 = distinct !{!3686, !3685}
!3687 = !DILocation(line: 58, column: 14, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3689, file: !68, discriminator: 1)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !68, line: 58, column: 14)
!3690 = distinct !DILexicalBlock(scope: !3674, file: !68, line: 58, column: 8)
!3691 = !DILocation(line: 58, column: 16, scope: !3688)
!3692 = !DILocation(line: 58, column: 14, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3690, file: !68, discriminator: 2)
!3694 = !DILocation(line: 58, column: 28, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3689, file: !68, discriminator: 3)
!3696 = !DILocation(line: 58, column: 131, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3690, file: !68, discriminator: 4)
!3698 = !DILocation(line: 60, column: 13, scope: !3674)
!3699 = !DILocation(line: 60, column: 15, scope: !3674)
!3700 = !DILocation(line: 60, column: 12, scope: !3674)
!3701 = !DILocation(line: 60, column: 5, scope: !3674)
!3702 = distinct !DISubprogram(name: "irssi_ssl_read", scope: !68, file: !68, line: 249, type: !85, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3703 = !DILocalVariable(name: "handle", arg: 1, scope: !3702, file: !68, line: 249, type: !88)
!3704 = !DILocation(line: 249, column: 45, scope: !3702)
!3705 = !DILocalVariable(name: "buf", arg: 2, scope: !3702, file: !68, line: 249, type: !60)
!3706 = !DILocation(line: 249, column: 60, scope: !3702)
!3707 = !DILocalVariable(name: "len", arg: 3, scope: !3702, file: !68, line: 249, type: !89)
!3708 = !DILocation(line: 249, column: 71, scope: !3702)
!3709 = !DILocalVariable(name: "ret", arg: 4, scope: !3702, file: !68, line: 249, type: !92)
!3710 = !DILocation(line: 249, column: 83, scope: !3702)
!3711 = !DILocalVariable(name: "gerr", arg: 5, scope: !3702, file: !68, line: 249, type: !93)
!3712 = !DILocation(line: 249, column: 97, scope: !3702)
!3713 = !DILocalVariable(name: "chan", scope: !3702, file: !68, line: 251, type: !66)
!3714 = !DILocation(line: 251, column: 17, scope: !3702)
!3715 = !DILocation(line: 251, column: 41, scope: !3702)
!3716 = !DILocation(line: 251, column: 24, scope: !3702)
!3717 = !DILocalVariable(name: "ret1", scope: !3702, file: !68, line: 252, type: !76)
!3718 = !DILocation(line: 252, column: 7, scope: !3702)
!3719 = !DILocalVariable(name: "err", scope: !3702, file: !68, line: 252, type: !76)
!3720 = !DILocation(line: 252, column: 13, scope: !3702)
!3721 = !DILocalVariable(name: "errstr", scope: !3702, file: !68, line: 253, type: !64)
!3722 = !DILocation(line: 253, column: 14, scope: !3702)
!3723 = !DILocalVariable(name: "errmsg", scope: !3702, file: !68, line: 254, type: !60)
!3724 = !DILocation(line: 254, column: 9, scope: !3702)
!3725 = !DILocation(line: 256, column: 2, scope: !3702)
!3726 = !DILocation(line: 257, column: 18, scope: !3702)
!3727 = !DILocation(line: 257, column: 24, scope: !3702)
!3728 = !DILocation(line: 257, column: 29, scope: !3702)
!3729 = !DILocation(line: 257, column: 34, scope: !3702)
!3730 = !DILocation(line: 257, column: 9, scope: !3702)
!3731 = !DILocation(line: 257, column: 7, scope: !3702)
!3732 = !DILocation(line: 258, column: 5, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3702, file: !68, line: 258, column: 5)
!3734 = !DILocation(line: 258, column: 10, scope: !3733)
!3735 = !DILocation(line: 258, column: 5, scope: !3702)
!3736 = !DILocation(line: 260, column: 4, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3733, file: !68, line: 259, column: 2)
!3738 = !DILocation(line: 260, column: 8, scope: !3737)
!3739 = !DILocation(line: 261, column: 23, scope: !3737)
!3740 = !DILocation(line: 261, column: 29, scope: !3737)
!3741 = !DILocation(line: 261, column: 34, scope: !3737)
!3742 = !DILocation(line: 261, column: 9, scope: !3737)
!3743 = !DILocation(line: 261, column: 7, scope: !3737)
!3744 = !DILocation(line: 262, column: 6, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3737, file: !68, line: 262, column: 6)
!3746 = !DILocation(line: 262, column: 10, scope: !3745)
!3747 = !DILocation(line: 262, column: 32, scope: !3745)
!3748 = !DILocation(line: 262, column: 35, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3745, file: !68, discriminator: 1)
!3750 = !DILocation(line: 262, column: 39, scope: !3749)
!3751 = !DILocation(line: 262, column: 6, scope: !3749)
!3752 = !DILocation(line: 263, column: 4, scope: !3745)
!3753 = !DILocation(line: 264, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3745, file: !68, line: 264, column: 11)
!3755 = !DILocation(line: 264, column: 15, scope: !3754)
!3756 = !DILocation(line: 264, column: 11, scope: !3745)
!3757 = !DILocation(line: 265, column: 4, scope: !3754)
!3758 = !DILocation(line: 266, column: 12, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3754, file: !68, line: 266, column: 12)
!3760 = !DILocation(line: 266, column: 16, scope: !3759)
!3761 = !DILocation(line: 266, column: 12, scope: !3754)
!3762 = !DILocation(line: 268, column: 37, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3759, file: !68, line: 267, column: 3)
!3764 = !DILocation(line: 268, column: 13, scope: !3765)
!3765 = !DILexicalBlockFile(scope: !3763, file: !68, discriminator: 1)
!3766 = !DILocation(line: 268, column: 11, scope: !3763)
!3767 = !DILocation(line: 269, column: 8, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3763, file: !68, line: 269, column: 8)
!3769 = !DILocation(line: 269, column: 15, scope: !3768)
!3770 = !DILocation(line: 269, column: 22, scope: !3768)
!3771 = !DILocation(line: 269, column: 25, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !3768, file: !68, discriminator: 1)
!3773 = !DILocation(line: 269, column: 30, scope: !3772)
!3774 = !DILocation(line: 269, column: 8, scope: !3772)
!3775 = !DILocation(line: 270, column: 24, scope: !3768)
!3776 = !DILocation(line: 270, column: 23, scope: !3768)
!3777 = !DILocation(line: 270, column: 14, scope: !3772)
!3778 = !DILocation(line: 270, column: 12, scope: !3768)
!3779 = !DILocation(line: 270, column: 5, scope: !3768)
!3780 = !DILocation(line: 271, column: 8, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3763, file: !68, line: 271, column: 8)
!3782 = !DILocation(line: 271, column: 15, scope: !3781)
!3783 = !DILocation(line: 271, column: 8, scope: !3763)
!3784 = !DILocation(line: 272, column: 12, scope: !3781)
!3785 = !DILocation(line: 272, column: 5, scope: !3781)
!3786 = !DILocation(line: 273, column: 3, scope: !3763)
!3787 = !DILocation(line: 276, column: 37, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3759, file: !68, line: 275, column: 3)
!3789 = !DILocation(line: 276, column: 13, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !3788, file: !68, discriminator: 1)
!3791 = !DILocation(line: 276, column: 11, scope: !3788)
!3792 = !DILocation(line: 277, column: 8, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3788, file: !68, line: 277, column: 8)
!3794 = !DILocation(line: 277, column: 15, scope: !3793)
!3795 = !DILocation(line: 277, column: 8, scope: !3788)
!3796 = !DILocation(line: 278, column: 12, scope: !3793)
!3797 = !DILocation(line: 278, column: 5, scope: !3793)
!3798 = !DILocation(line: 280, column: 50, scope: !3737)
!3799 = !DILocation(line: 280, column: 12, scope: !3737)
!3800 = !DILocation(line: 280, column: 10, scope: !3737)
!3801 = !DILocation(line: 281, column: 31, scope: !3737)
!3802 = !DILocation(line: 282, column: 10, scope: !3737)
!3803 = !DILocation(line: 281, column: 11, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3737, file: !68, discriminator: 1)
!3805 = !DILocation(line: 281, column: 4, scope: !3737)
!3806 = !DILocation(line: 281, column: 9, scope: !3737)
!3807 = !DILocation(line: 283, column: 10, scope: !3737)
!3808 = !DILocation(line: 283, column: 3, scope: !3737)
!3809 = !DILocation(line: 284, column: 3, scope: !3737)
!3810 = !DILocation(line: 288, column: 10, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3733, file: !68, line: 287, column: 2)
!3812 = !DILocation(line: 288, column: 4, scope: !3811)
!3813 = !DILocation(line: 288, column: 8, scope: !3811)
!3814 = !DILocation(line: 289, column: 3, scope: !3811)
!3815 = !DILocation(line: 293, column: 1, scope: !3702)
!3816 = distinct !DISubprogram(name: "irssi_ssl_write", scope: !68, file: !68, line: 295, type: !108, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3817 = !DILocalVariable(name: "handle", arg: 1, scope: !3816, file: !68, line: 295, type: !88)
!3818 = !DILocation(line: 295, column: 46, scope: !3816)
!3819 = !DILocalVariable(name: "buf", arg: 2, scope: !3816, file: !68, line: 295, type: !110)
!3820 = !DILocation(line: 295, column: 67, scope: !3816)
!3821 = !DILocalVariable(name: "len", arg: 3, scope: !3816, file: !68, line: 295, type: !89)
!3822 = !DILocation(line: 295, column: 78, scope: !3816)
!3823 = !DILocalVariable(name: "ret", arg: 4, scope: !3816, file: !68, line: 295, type: !92)
!3824 = !DILocation(line: 295, column: 90, scope: !3816)
!3825 = !DILocalVariable(name: "gerr", arg: 5, scope: !3816, file: !68, line: 295, type: !93)
!3826 = !DILocation(line: 295, column: 104, scope: !3816)
!3827 = !DILocalVariable(name: "chan", scope: !3816, file: !68, line: 297, type: !66)
!3828 = !DILocation(line: 297, column: 17, scope: !3816)
!3829 = !DILocation(line: 297, column: 41, scope: !3816)
!3830 = !DILocation(line: 297, column: 24, scope: !3816)
!3831 = !DILocalVariable(name: "ret1", scope: !3816, file: !68, line: 298, type: !76)
!3832 = !DILocation(line: 298, column: 7, scope: !3816)
!3833 = !DILocalVariable(name: "err", scope: !3816, file: !68, line: 298, type: !76)
!3834 = !DILocation(line: 298, column: 13, scope: !3816)
!3835 = !DILocalVariable(name: "errstr", scope: !3816, file: !68, line: 299, type: !64)
!3836 = !DILocation(line: 299, column: 14, scope: !3816)
!3837 = !DILocalVariable(name: "errmsg", scope: !3816, file: !68, line: 300, type: !60)
!3838 = !DILocation(line: 300, column: 9, scope: !3816)
!3839 = !DILocation(line: 302, column: 2, scope: !3816)
!3840 = !DILocation(line: 303, column: 19, scope: !3816)
!3841 = !DILocation(line: 303, column: 25, scope: !3816)
!3842 = !DILocation(line: 303, column: 44, scope: !3816)
!3843 = !DILocation(line: 303, column: 49, scope: !3816)
!3844 = !DILocation(line: 303, column: 9, scope: !3816)
!3845 = !DILocation(line: 303, column: 7, scope: !3816)
!3846 = !DILocation(line: 304, column: 5, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3816, file: !68, line: 304, column: 5)
!3848 = !DILocation(line: 304, column: 10, scope: !3847)
!3849 = !DILocation(line: 304, column: 5, scope: !3816)
!3850 = !DILocation(line: 306, column: 4, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !68, line: 305, column: 2)
!3852 = !DILocation(line: 306, column: 8, scope: !3851)
!3853 = !DILocation(line: 307, column: 23, scope: !3851)
!3854 = !DILocation(line: 307, column: 29, scope: !3851)
!3855 = !DILocation(line: 307, column: 34, scope: !3851)
!3856 = !DILocation(line: 307, column: 9, scope: !3851)
!3857 = !DILocation(line: 307, column: 7, scope: !3851)
!3858 = !DILocation(line: 308, column: 6, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3851, file: !68, line: 308, column: 6)
!3860 = !DILocation(line: 308, column: 10, scope: !3859)
!3861 = !DILocation(line: 308, column: 32, scope: !3859)
!3862 = !DILocation(line: 308, column: 35, scope: !3863)
!3863 = !DILexicalBlockFile(scope: !3859, file: !68, discriminator: 1)
!3864 = !DILocation(line: 308, column: 39, scope: !3863)
!3865 = !DILocation(line: 308, column: 6, scope: !3863)
!3866 = !DILocation(line: 309, column: 4, scope: !3859)
!3867 = !DILocation(line: 310, column: 11, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3859, file: !68, line: 310, column: 11)
!3869 = !DILocation(line: 310, column: 15, scope: !3868)
!3870 = !DILocation(line: 310, column: 11, scope: !3859)
!3871 = !DILocation(line: 311, column: 11, scope: !3868)
!3872 = !DILocation(line: 311, column: 4, scope: !3868)
!3873 = !DILocation(line: 312, column: 12, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3868, file: !68, line: 312, column: 12)
!3875 = !DILocation(line: 312, column: 16, scope: !3874)
!3876 = !DILocation(line: 312, column: 12, scope: !3868)
!3877 = !DILocation(line: 314, column: 37, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !68, line: 313, column: 3)
!3879 = !DILocation(line: 314, column: 13, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3878, file: !68, discriminator: 1)
!3881 = !DILocation(line: 314, column: 11, scope: !3878)
!3882 = !DILocation(line: 315, column: 8, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3878, file: !68, line: 315, column: 8)
!3884 = !DILocation(line: 315, column: 15, scope: !3883)
!3885 = !DILocation(line: 315, column: 22, scope: !3883)
!3886 = !DILocation(line: 315, column: 25, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3883, file: !68, discriminator: 1)
!3888 = !DILocation(line: 315, column: 30, scope: !3887)
!3889 = !DILocation(line: 315, column: 8, scope: !3887)
!3890 = !DILocation(line: 316, column: 24, scope: !3883)
!3891 = !DILocation(line: 316, column: 23, scope: !3883)
!3892 = !DILocation(line: 316, column: 14, scope: !3887)
!3893 = !DILocation(line: 316, column: 12, scope: !3883)
!3894 = !DILocation(line: 316, column: 5, scope: !3883)
!3895 = !DILocation(line: 317, column: 8, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3878, file: !68, line: 317, column: 8)
!3897 = !DILocation(line: 317, column: 15, scope: !3896)
!3898 = !DILocation(line: 317, column: 8, scope: !3878)
!3899 = !DILocation(line: 318, column: 12, scope: !3896)
!3900 = !DILocation(line: 318, column: 5, scope: !3896)
!3901 = !DILocation(line: 319, column: 3, scope: !3878)
!3902 = !DILocation(line: 322, column: 37, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3874, file: !68, line: 321, column: 3)
!3904 = !DILocation(line: 322, column: 13, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3903, file: !68, discriminator: 1)
!3906 = !DILocation(line: 322, column: 11, scope: !3903)
!3907 = !DILocation(line: 323, column: 8, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3903, file: !68, line: 323, column: 8)
!3909 = !DILocation(line: 323, column: 15, scope: !3908)
!3910 = !DILocation(line: 323, column: 8, scope: !3903)
!3911 = !DILocation(line: 324, column: 12, scope: !3908)
!3912 = !DILocation(line: 324, column: 5, scope: !3908)
!3913 = !DILocation(line: 326, column: 51, scope: !3851)
!3914 = !DILocation(line: 326, column: 12, scope: !3851)
!3915 = !DILocation(line: 326, column: 10, scope: !3851)
!3916 = !DILocation(line: 327, column: 31, scope: !3851)
!3917 = !DILocation(line: 328, column: 10, scope: !3851)
!3918 = !DILocation(line: 327, column: 11, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !3851, file: !68, discriminator: 1)
!3920 = !DILocation(line: 327, column: 4, scope: !3851)
!3921 = !DILocation(line: 327, column: 9, scope: !3851)
!3922 = !DILocation(line: 329, column: 10, scope: !3851)
!3923 = !DILocation(line: 329, column: 3, scope: !3851)
!3924 = !DILocation(line: 330, column: 3, scope: !3851)
!3925 = !DILocation(line: 334, column: 10, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3847, file: !68, line: 333, column: 2)
!3927 = !DILocation(line: 334, column: 4, scope: !3926)
!3928 = !DILocation(line: 334, column: 8, scope: !3926)
!3929 = !DILocation(line: 335, column: 3, scope: !3926)
!3930 = !DILocation(line: 339, column: 1, scope: !3816)
!3931 = distinct !DISubprogram(name: "irssi_ssl_seek", scope: !68, file: !68, line: 341, type: !114, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3932 = !DILocalVariable(name: "handle", arg: 1, scope: !3931, file: !68, line: 341, type: !88)
!3933 = !DILocation(line: 341, column: 45, scope: !3931)
!3934 = !DILocalVariable(name: "offset", arg: 2, scope: !3931, file: !68, line: 341, type: !116)
!3935 = !DILocation(line: 341, column: 60, scope: !3931)
!3936 = !DILocalVariable(name: "type", arg: 3, scope: !3931, file: !68, line: 341, type: !118)
!3937 = !DILocation(line: 341, column: 78, scope: !3931)
!3938 = !DILocalVariable(name: "gerr", arg: 4, scope: !3931, file: !68, line: 341, type: !93)
!3939 = !DILocation(line: 341, column: 93, scope: !3931)
!3940 = !DILocalVariable(name: "chan", scope: !3931, file: !68, line: 343, type: !66)
!3941 = !DILocation(line: 343, column: 17, scope: !3931)
!3942 = !DILocation(line: 343, column: 41, scope: !3931)
!3943 = !DILocation(line: 343, column: 24, scope: !3931)
!3944 = !DILocation(line: 345, column: 9, scope: !3931)
!3945 = !DILocation(line: 345, column: 15, scope: !3931)
!3946 = !DILocation(line: 345, column: 24, scope: !3931)
!3947 = !DILocation(line: 345, column: 31, scope: !3931)
!3948 = !DILocation(line: 345, column: 39, scope: !3931)
!3949 = !DILocation(line: 345, column: 47, scope: !3931)
!3950 = !DILocation(line: 345, column: 55, scope: !3931)
!3951 = !DILocation(line: 345, column: 61, scope: !3931)
!3952 = !DILocation(line: 345, column: 2, scope: !3931)
!3953 = distinct !DISubprogram(name: "irssi_ssl_close", scope: !68, file: !68, line: 348, type: !121, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3954 = !DILocalVariable(name: "handle", arg: 1, scope: !3953, file: !68, line: 348, type: !88)
!3955 = !DILocation(line: 348, column: 46, scope: !3953)
!3956 = !DILocalVariable(name: "gerr", arg: 2, scope: !3953, file: !68, line: 348, type: !93)
!3957 = !DILocation(line: 348, column: 63, scope: !3953)
!3958 = !DILocalVariable(name: "chan", scope: !3953, file: !68, line: 350, type: !66)
!3959 = !DILocation(line: 350, column: 17, scope: !3953)
!3960 = !DILocation(line: 350, column: 41, scope: !3953)
!3961 = !DILocation(line: 350, column: 24, scope: !3953)
!3962 = !DILocation(line: 352, column: 9, scope: !3953)
!3963 = !DILocation(line: 352, column: 15, scope: !3953)
!3964 = !DILocation(line: 352, column: 24, scope: !3953)
!3965 = !DILocation(line: 352, column: 31, scope: !3953)
!3966 = !DILocation(line: 352, column: 40, scope: !3953)
!3967 = !DILocation(line: 352, column: 48, scope: !3953)
!3968 = !DILocation(line: 352, column: 2, scope: !3953)
!3969 = distinct !DISubprogram(name: "irssi_ssl_create_watch", scope: !68, file: !68, line: 355, type: !125, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3970 = !DILocalVariable(name: "handle", arg: 1, scope: !3969, file: !68, line: 355, type: !88)
!3971 = !DILocation(line: 355, column: 52, scope: !3969)
!3972 = !DILocalVariable(name: "cond", arg: 2, scope: !3969, file: !68, line: 355, type: !208)
!3973 = !DILocation(line: 355, column: 73, scope: !3969)
!3974 = !DILocalVariable(name: "chan", scope: !3969, file: !68, line: 357, type: !66)
!3975 = !DILocation(line: 357, column: 17, scope: !3969)
!3976 = !DILocation(line: 357, column: 41, scope: !3969)
!3977 = !DILocation(line: 357, column: 24, scope: !3969)
!3978 = !DILocation(line: 359, column: 9, scope: !3969)
!3979 = !DILocation(line: 359, column: 15, scope: !3969)
!3980 = !DILocation(line: 359, column: 24, scope: !3969)
!3981 = !DILocation(line: 359, column: 31, scope: !3969)
!3982 = !DILocation(line: 359, column: 47, scope: !3969)
!3983 = !DILocation(line: 359, column: 55, scope: !3969)
!3984 = !DILocation(line: 359, column: 2, scope: !3969)
!3985 = distinct !DISubprogram(name: "irssi_ssl_free", scope: !68, file: !68, line: 84, type: !211, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!3986 = !DILocalVariable(name: "handle", arg: 1, scope: !3985, file: !68, line: 84, type: !88)
!3987 = !DILocation(line: 84, column: 40, scope: !3985)
!3988 = !DILocalVariable(name: "chan", scope: !3985, file: !68, line: 86, type: !66)
!3989 = !DILocation(line: 86, column: 17, scope: !3985)
!3990 = !DILocation(line: 86, column: 41, scope: !3985)
!3991 = !DILocation(line: 86, column: 24, scope: !3985)
!3992 = !DILocation(line: 87, column: 21, scope: !3985)
!3993 = !DILocation(line: 87, column: 27, scope: !3985)
!3994 = !DILocation(line: 87, column: 2, scope: !3985)
!3995 = !DILocation(line: 88, column: 11, scope: !3985)
!3996 = !DILocation(line: 88, column: 17, scope: !3985)
!3997 = !DILocation(line: 88, column: 2, scope: !3985)
!3998 = !DILocation(line: 89, column: 15, scope: !3985)
!3999 = !DILocation(line: 89, column: 21, scope: !3985)
!4000 = !DILocation(line: 89, column: 2, scope: !3985)
!4001 = !DILocation(line: 90, column: 9, scope: !3985)
!4002 = !DILocation(line: 90, column: 2, scope: !3985)
!4003 = !DILocation(line: 91, column: 1, scope: !3985)
!4004 = distinct !DISubprogram(name: "irssi_ssl_set_flags", scope: !68, file: !68, line: 362, type: !215, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4005 = !DILocalVariable(name: "handle", arg: 1, scope: !4004, file: !68, line: 362, type: !88)
!4006 = !DILocation(line: 362, column: 50, scope: !4004)
!4007 = !DILocalVariable(name: "flags", arg: 2, scope: !4004, file: !68, line: 362, type: !217)
!4008 = !DILocation(line: 362, column: 67, scope: !4004)
!4009 = !DILocalVariable(name: "gerr", arg: 3, scope: !4004, file: !68, line: 362, type: !93)
!4010 = !DILocation(line: 362, column: 83, scope: !4004)
!4011 = !DILocalVariable(name: "chan", scope: !4004, file: !68, line: 364, type: !66)
!4012 = !DILocation(line: 364, column: 20, scope: !4004)
!4013 = !DILocation(line: 364, column: 44, scope: !4004)
!4014 = !DILocation(line: 364, column: 27, scope: !4004)
!4015 = !DILocation(line: 366, column: 12, scope: !4004)
!4016 = !DILocation(line: 366, column: 18, scope: !4004)
!4017 = !DILocation(line: 366, column: 27, scope: !4004)
!4018 = !DILocation(line: 366, column: 34, scope: !4004)
!4019 = !DILocation(line: 366, column: 47, scope: !4004)
!4020 = !DILocation(line: 366, column: 55, scope: !4004)
!4021 = !DILocation(line: 366, column: 62, scope: !4004)
!4022 = !DILocation(line: 366, column: 5, scope: !4004)
!4023 = distinct !DISubprogram(name: "irssi_ssl_get_flags", scope: !68, file: !68, line: 369, type: !220, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4024 = !DILocalVariable(name: "handle", arg: 1, scope: !4023, file: !68, line: 369, type: !88)
!4025 = !DILocation(line: 369, column: 49, scope: !4023)
!4026 = !DILocalVariable(name: "chan", scope: !4023, file: !68, line: 371, type: !66)
!4027 = !DILocation(line: 371, column: 20, scope: !4023)
!4028 = !DILocation(line: 371, column: 44, scope: !4023)
!4029 = !DILocation(line: 371, column: 27, scope: !4023)
!4030 = !DILocation(line: 373, column: 12, scope: !4023)
!4031 = !DILocation(line: 373, column: 18, scope: !4023)
!4032 = !DILocation(line: 373, column: 27, scope: !4023)
!4033 = !DILocation(line: 373, column: 34, scope: !4023)
!4034 = !DILocation(line: 373, column: 47, scope: !4023)
!4035 = !DILocation(line: 373, column: 5, scope: !4023)
!4036 = distinct !DISubprogram(name: "irssi_ssl_verify_hostname", scope: !68, file: !68, line: 181, type: !4037, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!152, !401, !64}
!4039 = !DILocalVariable(name: "cert", arg: 1, scope: !4036, file: !68, line: 181, type: !401)
!4040 = !DILocation(line: 181, column: 49, scope: !4036)
!4041 = !DILocalVariable(name: "hostname", arg: 2, scope: !4036, file: !68, line: 181, type: !64)
!4042 = !DILocation(line: 181, column: 67, scope: !4036)
!4043 = !DILocalVariable(name: "gen_index", scope: !4036, file: !68, line: 183, type: !77)
!4044 = !DILocation(line: 183, column: 6, scope: !4036)
!4045 = !DILocalVariable(name: "gen_count", scope: !4036, file: !68, line: 183, type: !77)
!4046 = !DILocation(line: 183, column: 17, scope: !4036)
!4047 = !DILocalVariable(name: "matched", scope: !4036, file: !68, line: 184, type: !152)
!4048 = !DILocation(line: 184, column: 11, scope: !4036)
!4049 = !DILocalVariable(name: "has_dns_name", scope: !4036, file: !68, line: 184, type: !152)
!4050 = !DILocation(line: 184, column: 26, scope: !4036)
!4051 = !DILocalVariable(name: "cert_dns_name", scope: !4036, file: !68, line: 185, type: !64)
!4052 = !DILocation(line: 185, column: 14, scope: !4036)
!4053 = !DILocalVariable(name: "cert_subject_cn", scope: !4036, file: !68, line: 186, type: !203)
!4054 = !DILocation(line: 186, column: 8, scope: !4036)
!4055 = !DILocalVariable(name: "gn", scope: !4036, file: !68, line: 187, type: !4056)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64, align: 64)
!4057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!4058 = !DILocation(line: 187, column: 22, scope: !4036)
!4059 = !DILocalVariable(name: "gens", scope: !4036, file: !68, line: 188, type: !875)
!4060 = !DILocation(line: 188, column: 26, scope: !4036)
!4061 = !DILocation(line: 191, column: 26, scope: !4036)
!4062 = !DILocation(line: 191, column: 9, scope: !4036)
!4063 = !DILocation(line: 191, column: 7, scope: !4036)
!4064 = !DILocation(line: 192, column: 6, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4036, file: !68, line: 192, column: 6)
!4066 = !DILocation(line: 192, column: 6, scope: !4036)
!4067 = !DILocation(line: 193, column: 14, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4065, file: !68, line: 192, column: 12)
!4069 = !DILocation(line: 193, column: 22, scope: !4068)
!4070 = !DILocation(line: 193, column: 13, scope: !4068)
!4071 = !DILocation(line: 194, column: 18, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4068, file: !68, line: 194, column: 3)
!4073 = !DILocation(line: 194, column: 8, scope: !4072)
!4074 = !DILocation(line: 194, column: 23, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4076, file: !68, discriminator: 1)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !68, line: 194, column: 3)
!4077 = !DILocation(line: 194, column: 35, scope: !4075)
!4078 = !DILocation(line: 194, column: 33, scope: !4075)
!4079 = !DILocation(line: 194, column: 45, scope: !4075)
!4080 = !DILocation(line: 194, column: 49, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4076, file: !68, discriminator: 2)
!4082 = !DILocation(line: 194, column: 48, scope: !4081)
!4083 = !DILocation(line: 194, column: 3, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4072, file: !68, discriminator: 3)
!4085 = !DILocation(line: 195, column: 8, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4076, file: !68, line: 194, column: 71)
!4087 = !DILocation(line: 195, column: 35, scope: !4086)
!4088 = !DILocation(line: 195, column: 25, scope: !4086)
!4089 = !DILocation(line: 195, column: 9, scope: !4086)
!4090 = !DILocation(line: 195, column: 7, scope: !4086)
!4091 = !DILocation(line: 196, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4086, file: !68, line: 196, column: 8)
!4093 = !DILocation(line: 196, column: 12, scope: !4092)
!4094 = !DILocation(line: 196, column: 17, scope: !4092)
!4095 = !DILocation(line: 196, column: 8, scope: !4086)
!4096 = !DILocation(line: 197, column: 5, scope: !4092)
!4097 = !DILocation(line: 202, column: 17, scope: !4086)
!4098 = !DILocation(line: 203, column: 33, scope: !4086)
!4099 = !DILocation(line: 203, column: 20, scope: !4086)
!4100 = !DILocation(line: 203, column: 18, scope: !4086)
!4101 = !DILocation(line: 204, column: 8, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4086, file: !68, line: 204, column: 8)
!4103 = !DILocation(line: 204, column: 22, scope: !4102)
!4104 = !DILocation(line: 204, column: 26, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4102, file: !68, discriminator: 1)
!4106 = !DILocation(line: 204, column: 25, scope: !4105)
!4107 = !DILocation(line: 204, column: 8, scope: !4105)
!4108 = !DILocation(line: 205, column: 30, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4102, file: !68, line: 204, column: 41)
!4110 = !DILocation(line: 205, column: 45, scope: !4109)
!4111 = !DILocation(line: 205, column: 15, scope: !4109)
!4112 = !DILocation(line: 205, column: 13, scope: !4109)
!4113 = !DILocation(line: 206, column: 4, scope: !4109)
!4114 = !DILocation(line: 207, column: 3, scope: !4086)
!4115 = !DILocation(line: 194, column: 58, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4076, file: !68, discriminator: 4)
!4117 = !DILocation(line: 194, column: 3, scope: !4116)
!4118 = distinct !{!4118, !4119}
!4119 = !DILocation(line: 194, column: 3, scope: !4068)
!4120 = !DILocation(line: 210, column: 2, scope: !4068)
!4121 = !DILocation(line: 210, column: 15, scope: !4068)
!4122 = !DILocation(line: 211, column: 2, scope: !4068)
!4123 = !DILocation(line: 213, column: 6, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4036, file: !68, line: 213, column: 6)
!4125 = !DILocation(line: 213, column: 6, scope: !4036)
!4126 = !DILocation(line: 214, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !68, line: 214, column: 7)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !68, line: 213, column: 20)
!4129 = !DILocation(line: 214, column: 7, scope: !4128)
!4130 = !DILocation(line: 216, column: 118, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !68, line: 214, column: 18)
!4132 = !DILocation(line: 216, column: 4, scope: !4131)
!4133 = !DILocation(line: 217, column: 3, scope: !4131)
!4134 = !DILocation(line: 218, column: 10, scope: !4128)
!4135 = !DILocation(line: 218, column: 3, scope: !4128)
!4136 = !DILocation(line: 220, column: 57, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4124, file: !68, line: 219, column: 9)
!4138 = !DILocation(line: 220, column: 35, scope: !4137)
!4139 = !DILocation(line: 220, column: 21, scope: !4140)
!4140 = !DILexicalBlockFile(scope: !4137, file: !68, discriminator: 1)
!4141 = !DILocation(line: 220, column: 19, scope: !4137)
!4142 = !DILocation(line: 221, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4137, file: !68, line: 221, column: 7)
!4144 = !DILocation(line: 221, column: 23, scope: !4143)
!4145 = !DILocation(line: 221, column: 27, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4143, file: !68, discriminator: 1)
!4147 = !DILocation(line: 221, column: 26, scope: !4146)
!4148 = !DILocation(line: 221, column: 7, scope: !4146)
!4149 = !DILocation(line: 222, column: 29, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4143, file: !68, line: 221, column: 44)
!4151 = !DILocation(line: 222, column: 46, scope: !4150)
!4152 = !DILocation(line: 222, column: 14, scope: !4150)
!4153 = !DILocation(line: 222, column: 12, scope: !4150)
!4154 = !DILocation(line: 223, column: 10, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4150, file: !68, line: 223, column: 8)
!4156 = !DILocation(line: 223, column: 8, scope: !4150)
!4157 = !DILocation(line: 224, column: 112, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4155, file: !68, line: 223, column: 19)
!4159 = !DILocation(line: 224, column: 129, scope: !4158)
!4160 = !DILocation(line: 224, column: 5, scope: !4158)
!4161 = !DILocation(line: 225, column: 4, scope: !4158)
!4162 = !DILocation(line: 226, column: 3, scope: !4150)
!4163 = !DILocation(line: 227, column: 4, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4143, file: !68, line: 226, column: 10)
!4165 = !DILocation(line: 229, column: 8, scope: !4137)
!4166 = !DILocation(line: 229, column: 3, scope: !4137)
!4167 = !DILocation(line: 232, column: 9, scope: !4036)
!4168 = !DILocation(line: 232, column: 2, scope: !4036)
!4169 = !DILocation(line: 233, column: 1, scope: !4036)
!4170 = distinct !DISubprogram(name: "tls_dns_name", scope: !68, file: !68, line: 102, type: !4171, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!64, !4056}
!4173 = !DILocalVariable(name: "gn", arg: 1, scope: !4170, file: !68, line: 102, type: !4056)
!4174 = !DILocation(line: 102, column: 54, scope: !4170)
!4175 = !DILocalVariable(name: "dnsname", scope: !4170, file: !68, line: 104, type: !64)
!4176 = !DILocation(line: 104, column: 14, scope: !4170)
!4177 = !DILocation(line: 108, column: 23, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4170, file: !68, line: 108, column: 6)
!4179 = !DILocation(line: 108, column: 27, scope: !4178)
!4180 = !DILocation(line: 108, column: 29, scope: !4178)
!4181 = !DILocation(line: 108, column: 6, scope: !4178)
!4182 = !DILocation(line: 108, column: 34, scope: !4178)
!4183 = !DILocation(line: 108, column: 6, scope: !4170)
!4184 = !DILocation(line: 109, column: 3, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4178, file: !68, line: 108, column: 54)
!4186 = !DILocation(line: 110, column: 3, scope: !4185)
!4187 = !DILocation(line: 114, column: 38, scope: !4170)
!4188 = !DILocation(line: 114, column: 42, scope: !4170)
!4189 = !DILocation(line: 114, column: 44, scope: !4170)
!4190 = !DILocation(line: 114, column: 21, scope: !4170)
!4191 = !DILocation(line: 114, column: 10, scope: !4170)
!4192 = !DILocation(line: 116, column: 23, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4170, file: !68, line: 116, column: 6)
!4194 = !DILocation(line: 116, column: 51, scope: !4193)
!4195 = !DILocation(line: 116, column: 55, scope: !4193)
!4196 = !DILocation(line: 116, column: 57, scope: !4193)
!4197 = !DILocation(line: 116, column: 32, scope: !4193)
!4198 = !DILocation(line: 116, column: 6, scope: !4199)
!4199 = !DILexicalBlockFile(scope: !4193, file: !68, discriminator: 1)
!4200 = !DILocation(line: 116, column: 6, scope: !4193)
!4201 = !DILocation(line: 116, column: 6, scope: !4170)
!4202 = !DILocation(line: 117, column: 3, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4193, file: !68, line: 116, column: 64)
!4204 = !DILocation(line: 118, column: 3, scope: !4203)
!4205 = !DILocation(line: 121, column: 9, scope: !4170)
!4206 = !DILocation(line: 121, column: 2, scope: !4170)
!4207 = !DILocation(line: 122, column: 1, scope: !4170)
!4208 = distinct !DISubprogram(name: "match_hostname", scope: !68, file: !68, line: 164, type: !4209, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!152, !64, !64}
!4211 = !DILocalVariable(name: "cert_hostname", arg: 1, scope: !4208, file: !68, line: 164, type: !64)
!4212 = !DILocation(line: 164, column: 44, scope: !4208)
!4213 = !DILocalVariable(name: "hostname", arg: 2, scope: !4208, file: !68, line: 164, type: !64)
!4214 = !DILocation(line: 164, column: 71, scope: !4208)
!4215 = !DILocalVariable(name: "hostname_left", scope: !4208, file: !68, line: 166, type: !64)
!4216 = !DILocation(line: 166, column: 14, scope: !4208)
!4217 = !DILocation(line: 168, column: 18, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4208, file: !68, line: 168, column: 6)
!4219 = !DILocation(line: 168, column: 33, scope: !4218)
!4220 = !DILocation(line: 168, column: 7, scope: !4218)
!4221 = !DILocation(line: 168, column: 6, scope: !4208)
!4222 = !DILocation(line: 169, column: 3, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4218, file: !68, line: 168, column: 44)
!4224 = !DILocation(line: 170, column: 13, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4218, file: !68, line: 170, column: 13)
!4226 = !DILocation(line: 170, column: 30, scope: !4225)
!4227 = !DILocation(line: 170, column: 37, scope: !4225)
!4228 = !DILocation(line: 170, column: 40, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4225, file: !68, discriminator: 1)
!4230 = !DILocation(line: 170, column: 57, scope: !4229)
!4231 = !DILocation(line: 170, column: 64, scope: !4229)
!4232 = !DILocation(line: 170, column: 67, scope: !4233)
!4233 = !DILexicalBlockFile(scope: !4225, file: !68, discriminator: 2)
!4234 = !DILocation(line: 170, column: 84, scope: !4233)
!4235 = !DILocation(line: 170, column: 13, scope: !4233)
!4236 = !DILocation(line: 172, column: 26, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4225, file: !68, line: 170, column: 90)
!4238 = !DILocation(line: 172, column: 19, scope: !4237)
!4239 = !DILocation(line: 172, column: 17, scope: !4237)
!4240 = !DILocation(line: 173, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !68, line: 173, column: 7)
!4242 = !DILocation(line: 173, column: 21, scope: !4241)
!4243 = !DILocation(line: 173, column: 28, scope: !4241)
!4244 = !DILocation(line: 173, column: 44, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4241, file: !68, discriminator: 1)
!4246 = !DILocation(line: 173, column: 58, scope: !4245)
!4247 = !DILocation(line: 173, column: 63, scope: !4245)
!4248 = !DILocation(line: 173, column: 77, scope: !4245)
!4249 = !DILocation(line: 173, column: 33, scope: !4245)
!4250 = !DILocation(line: 173, column: 7, scope: !4245)
!4251 = !DILocation(line: 174, column: 4, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4241, file: !68, line: 173, column: 83)
!4253 = !DILocation(line: 176, column: 2, scope: !4237)
!4254 = !DILocation(line: 177, column: 2, scope: !4208)
!4255 = !DILocation(line: 178, column: 1, scope: !4208)
!4256 = distinct !DISubprogram(name: "tls_text_name", scope: !68, file: !68, line: 125, type: !4257, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!203, !502, !77}
!4259 = !DILocalVariable(name: "name", arg: 1, scope: !4256, file: !68, line: 125, type: !502)
!4260 = !DILocation(line: 125, column: 39, scope: !4256)
!4261 = !DILocalVariable(name: "nid", arg: 2, scope: !4256, file: !68, line: 125, type: !77)
!4262 = !DILocation(line: 125, column: 49, scope: !4256)
!4263 = !DILocalVariable(name: "pos", scope: !4256, file: !68, line: 127, type: !77)
!4264 = !DILocation(line: 127, column: 6, scope: !4256)
!4265 = !DILocalVariable(name: "entry", scope: !4256, file: !68, line: 128, type: !3290)
!4266 = !DILocation(line: 128, column: 19, scope: !4256)
!4267 = !DILocalVariable(name: "entry_str", scope: !4256, file: !68, line: 129, type: !452)
!4268 = !DILocation(line: 129, column: 15, scope: !4256)
!4269 = !DILocalVariable(name: "utf8_length", scope: !4256, file: !68, line: 130, type: !77)
!4270 = !DILocation(line: 130, column: 6, scope: !4256)
!4271 = !DILocalVariable(name: "utf8_value", scope: !4256, file: !68, line: 131, type: !307)
!4272 = !DILocation(line: 131, column: 17, scope: !4256)
!4273 = !DILocalVariable(name: "result", scope: !4256, file: !68, line: 132, type: !203)
!4274 = !DILocation(line: 132, column: 8, scope: !4256)
!4275 = !DILocation(line: 134, column: 6, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4256, file: !68, line: 134, column: 6)
!4277 = !DILocation(line: 134, column: 11, scope: !4276)
!4278 = !DILocation(line: 134, column: 16, scope: !4276)
!4279 = !DILocation(line: 134, column: 53, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4276, file: !68, discriminator: 1)
!4281 = !DILocation(line: 134, column: 59, scope: !4280)
!4282 = !DILocation(line: 134, column: 26, scope: !4280)
!4283 = !DILocation(line: 134, column: 24, scope: !4280)
!4284 = !DILocation(line: 134, column: 69, scope: !4280)
!4285 = !DILocation(line: 134, column: 6, scope: !4280)
!4286 = !DILocation(line: 135, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4276, file: !68, line: 134, column: 74)
!4288 = !DILocation(line: 138, column: 30, scope: !4256)
!4289 = !DILocation(line: 138, column: 36, scope: !4256)
!4290 = !DILocation(line: 138, column: 10, scope: !4256)
!4291 = !DILocation(line: 138, column: 8, scope: !4256)
!4292 = !DILocation(line: 139, column: 2, scope: !4256)
!4293 = distinct !{!4293, !4292}
!4294 = !DILocation(line: 139, column: 10, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4296, file: !68, discriminator: 1)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !68, line: 139, column: 10)
!4297 = distinct !DILexicalBlock(scope: !4256, file: !68, line: 139, column: 4)
!4298 = !DILocation(line: 139, column: 16, scope: !4295)
!4299 = !DILocation(line: 139, column: 5, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4301, file: !68, discriminator: 2)
!4301 = distinct !DILexicalBlock(scope: !4296, file: !68, line: 139, column: 3)
!4302 = !DILocation(line: 139, column: 14, scope: !4303)
!4303 = !DILexicalBlockFile(scope: !4304, file: !68, discriminator: 3)
!4304 = distinct !DILexicalBlock(scope: !4296, file: !68, line: 139, column: 12)
!4305 = !DILocation(line: 139, column: 100, scope: !4303)
!4306 = !DILocation(line: 139, column: 7, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !4297, file: !68, discriminator: 4)
!4308 = !DILocation(line: 140, column: 39, scope: !4256)
!4309 = !DILocation(line: 140, column: 14, scope: !4256)
!4310 = !DILocation(line: 140, column: 12, scope: !4256)
!4311 = !DILocation(line: 141, column: 2, scope: !4256)
!4312 = distinct !{!4312, !4311}
!4313 = !DILocation(line: 141, column: 10, scope: !4314)
!4314 = !DILexicalBlockFile(scope: !4315, file: !68, discriminator: 1)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !68, line: 141, column: 10)
!4316 = distinct !DILexicalBlock(scope: !4256, file: !68, line: 141, column: 4)
!4317 = !DILocation(line: 141, column: 20, scope: !4314)
!4318 = !DILocation(line: 141, column: 5, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !4320, file: !68, discriminator: 2)
!4320 = distinct !DILexicalBlock(scope: !4315, file: !68, line: 141, column: 3)
!4321 = !DILocation(line: 141, column: 14, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4323, file: !68, discriminator: 3)
!4323 = distinct !DILexicalBlock(scope: !4315, file: !68, line: 141, column: 12)
!4324 = !DILocation(line: 141, column: 104, scope: !4322)
!4325 = !DILocation(line: 141, column: 7, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4316, file: !68, discriminator: 4)
!4327 = !DILocation(line: 146, column: 54, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4256, file: !68, line: 146, column: 6)
!4329 = !DILocation(line: 146, column: 21, scope: !4328)
!4330 = !DILocation(line: 146, column: 19, scope: !4328)
!4331 = !DILocation(line: 146, column: 66, scope: !4328)
!4332 = !DILocation(line: 146, column: 6, scope: !4256)
!4333 = !DILocation(line: 147, column: 94, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4328, file: !68, line: 146, column: 71)
!4335 = !DILocation(line: 147, column: 77, scope: !4334)
!4336 = !DILocation(line: 147, column: 3, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4334, file: !68, discriminator: 1)
!4338 = !DILocation(line: 148, column: 3, scope: !4334)
!4339 = !DILocation(line: 151, column: 31, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4256, file: !68, line: 151, column: 6)
!4341 = !DILocation(line: 151, column: 43, scope: !4340)
!4342 = !DILocation(line: 151, column: 6, scope: !4340)
!4343 = !DILocation(line: 151, column: 6, scope: !4256)
!4344 = !DILocation(line: 152, column: 3, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4340, file: !68, line: 151, column: 57)
!4346 = !DILocation(line: 153, column: 2, scope: !4345)
!4347 = !DILocation(line: 154, column: 3, scope: !4345)
!4348 = !DILocation(line: 157, column: 29, scope: !4256)
!4349 = !DILocation(line: 157, column: 11, scope: !4256)
!4350 = !DILocation(line: 157, column: 9, scope: !4256)
!4351 = !DILocation(line: 158, column: 1, scope: !4256)
!4352 = !DILocation(line: 159, column: 9, scope: !4256)
!4353 = !DILocation(line: 159, column: 2, scope: !4256)
!4354 = !DILocation(line: 160, column: 1, scope: !4256)
!4355 = distinct !DISubprogram(name: "has_internal_nul", scope: !68, file: !68, line: 94, type: !4356, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2182)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!152, !64, !77}
!4358 = !DILocalVariable(name: "str", arg: 1, scope: !4355, file: !68, line: 94, type: !64)
!4359 = !DILocation(line: 94, column: 46, scope: !4355)
!4360 = !DILocalVariable(name: "len", arg: 2, scope: !4355, file: !68, line: 94, type: !77)
!4361 = !DILocation(line: 94, column: 55, scope: !4355)
!4362 = !DILocation(line: 96, column: 2, scope: !4355)
!4363 = !DILocation(line: 96, column: 9, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !4355, file: !68, discriminator: 1)
!4365 = !DILocation(line: 96, column: 13, scope: !4364)
!4366 = !DILocation(line: 96, column: 17, scope: !4364)
!4367 = !DILocation(line: 96, column: 24, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !4355, file: !68, discriminator: 2)
!4369 = !DILocation(line: 96, column: 27, scope: !4368)
!4370 = !DILocation(line: 96, column: 20, scope: !4368)
!4371 = !DILocation(line: 96, column: 31, scope: !4368)
!4372 = !DILocation(line: 96, column: 2, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !4355, file: !68, discriminator: 3)
!4374 = !DILocation(line: 97, column: 6, scope: !4355)
!4375 = !DILocation(line: 96, column: 2, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !4355, file: !68, discriminator: 4)
!4377 = distinct !{!4377, !4362}
!4378 = !DILocation(line: 98, column: 16, scope: !4355)
!4379 = !DILocation(line: 98, column: 9, scope: !4355)
!4380 = !DILocation(line: 98, column: 24, scope: !4355)
!4381 = !DILocation(line: 98, column: 21, scope: !4355)
!4382 = !DILocation(line: 98, column: 2, scope: !4355)
