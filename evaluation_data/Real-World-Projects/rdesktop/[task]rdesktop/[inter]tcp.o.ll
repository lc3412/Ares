; ModuleID = './[inter]tcp.o.i'
source_filename = "./[inter]tcp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
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
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type { %struct.stack_st }
%struct.stack_st_GENERAL_NAME = type { %struct.stack_st }
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type { %struct.stack_st }
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
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
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
%struct.fd_set = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr = type { i16, [14 x i8] }

@g_server_address = global %struct.sockaddr_in* null, align 8
@g_tcp_port_rdp = global i32 3389, align 4
@tcp_init.cur_stream_id = internal global i32 0, align 4
@g_out = internal global [1 x %struct.stream] zeroinitializer, align 16
@g_network_error = external global i32, align 4
@g_ssl = internal global %struct.ssl_st* null, align 8
@g_sock = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tcp_send(), SSL_write() failed with %d: %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"tcp_send(), send() failed: %s\00", align 1
@g_in = internal global %struct.stream zeroinitializer, align 8
@g_run_ui = internal global i32 0, align 4
@g_exit_mainloop = external global i32, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"tcp_recv(), remote peer initiated ssl shutdown\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tcp_recv()\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"tcp_recv(), SSL_read() failed with %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"tcp_recv(), recv() failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"rcp_recv(), connection closed by peer\00", align 1
@g_ssl_initialized = internal global i32 0, align 4
@g_ssl_ctx = internal global %struct.ssl_ctx_st* null, align 8
@.str.7 = private unnamed_addr constant [68 x i8] c"tcp_tls_connect(), SSL_CTX_new() failed to create TLS v1.0 context\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"tcp_tls_connect(), SSL_new() failed\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"tcp_tls_connect(), SSL_set_fd() failed\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"tcp_tls_connect()\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"tcp_tls_get_server_pubkey(), SSL_get_peer_certificate() failed\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"tcp_tls_get_server_pubkey(), X509_get_pubkey() failed\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"tcp_tls_get_server_pubkey(), i2d_PublicKey() failed\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"tcp_connect(), unable to resolve host '%s'\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"tcp_connect(), socket() failed: %s\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"tcp_connect(), trying %s (%s)\00", align 1
@g_reconnect_loop = external global i32, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"tcp_connect(), connect() failed: %s\00", align 1
@g_last_server_name = internal global i8* null, align 8
@tcp_get_address.ipaddr = internal global [32 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: nounwind uwtable
define %struct.stream* @tcp_init(i32) #0 !dbg !111 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1845, metadata !1846), !dbg !1847
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !1848, metadata !1846), !dbg !1849
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !1849
  %4 = load i32, i32* @tcp_init.cur_stream_id, align 4, !dbg !1850
  %5 = sext i32 %4 to i64, !dbg !1851
  %6 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %5, !dbg !1851
  store %struct.stream* %6, %struct.stream** %3, align 8, !dbg !1852
  %7 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1853
  %8 = load i32, i32* %2, align 4, !dbg !1854
  call void @s_realloc(%struct.stream* %7, i32 %8), !dbg !1855
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1856
  call void @s_reset(%struct.stream* %9), !dbg !1857
  %10 = load i32, i32* @tcp_init.cur_stream_id, align 4, !dbg !1858
  %11 = add nsw i32 %10, 1, !dbg !1859
  %12 = srem i32 %11, 1, !dbg !1860
  store i32 %12, i32* @tcp_init.cur_stream_id, align 4, !dbg !1861
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1862
  ret %struct.stream* %13, !dbg !1863
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @s_realloc(%struct.stream*, i32) #2

declare void @s_reset(%struct.stream*) #2

; Function Attrs: nounwind uwtable
define void @tcp_send(%struct.stream*) #0 !dbg !1864 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1867, metadata !1846), !dbg !1868
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1869, metadata !1846), !dbg !1870
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1871, metadata !1846), !dbg !1872
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1873
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 1, !dbg !1874
  %9 = load i8*, i8** %8, align 8, !dbg !1874
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1875
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 2, !dbg !1876
  %12 = load i8*, i8** %11, align 8, !dbg !1876
  %13 = ptrtoint i8* %9 to i64, !dbg !1877
  %14 = ptrtoint i8* %12 to i64, !dbg !1877
  %15 = sub i64 %13, %14, !dbg !1877
  %16 = trunc i64 %15 to i32, !dbg !1873
  store i32 %16, i32* %4, align 4, !dbg !1872
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1878, metadata !1846), !dbg !1879
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1880, metadata !1846), !dbg !1881
  store i32 0, i32* %6, align 4, !dbg !1881
  %17 = load i32, i32* @g_network_error, align 4, !dbg !1882
  %18 = icmp eq i32 %17, 1, !dbg !1884
  br i1 %18, label %19, label %20, !dbg !1885

; <label>:19:                                     ; preds = %1
  br label %100, !dbg !1886

; <label>:20:                                     ; preds = %1
  br label %21, !dbg !1887

; <label>:21:                                     ; preds = %96, %20
  %22 = load i32, i32* %6, align 4, !dbg !1888
  %23 = load i32, i32* %4, align 4, !dbg !1890
  %24 = icmp slt i32 %22, %23, !dbg !1891
  br i1 %24, label %25, label %100, !dbg !1892

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !1893
  %27 = icmp ne %struct.ssl_st* %26, null, !dbg !1893
  br i1 %27, label %28, label %64, !dbg !1896

; <label>:28:                                     ; preds = %25
  %29 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !1897
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1899
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 2, !dbg !1900
  %32 = load i8*, i8** %31, align 8, !dbg !1900
  %33 = load i32, i32* %6, align 4, !dbg !1901
  %34 = sext i32 %33 to i64, !dbg !1902
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !1902
  %36 = load i32, i32* %4, align 4, !dbg !1903
  %37 = load i32, i32* %6, align 4, !dbg !1904
  %38 = sub nsw i32 %36, %37, !dbg !1905
  %39 = call i32 @SSL_write(%struct.ssl_st* %29, i8* %35, i32 %38), !dbg !1906
  store i32 %39, i32* %5, align 4, !dbg !1907
  %40 = load i32, i32* %5, align 4, !dbg !1908
  %41 = icmp sle i32 %40, 0, !dbg !1910
  br i1 %41, label %42, label %63, !dbg !1911

; <label>:42:                                     ; preds = %28
  %43 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !1912
  %44 = load i32, i32* %5, align 4, !dbg !1914
  %45 = call i32 @SSL_get_error(%struct.ssl_st* %43, i32 %44), !dbg !1915
  store i32 %45, i32* %3, align 4, !dbg !1916
  %46 = load i32, i32* %5, align 4, !dbg !1917
  %47 = icmp slt i32 %46, 0, !dbg !1919
  br i1 %47, label %48, label %57, !dbg !1920

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %3, align 4, !dbg !1921
  %50 = icmp eq i32 %49, 2, !dbg !1923
  br i1 %50, label %54, label %51, !dbg !1924

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %3, align 4, !dbg !1925
  %53 = icmp eq i32 %52, 3, !dbg !1926
  br i1 %53, label %54, label %57, !dbg !1927

; <label>:54:                                     ; preds = %51, %48
  %55 = load i32, i32* @g_sock, align 4, !dbg !1929
  %56 = call i32 @tcp_can_send(i32 %55, i32 100), !dbg !1931
  store i32 0, i32* %5, align 4, !dbg !1932
  br label %62, !dbg !1933

; <label>:57:                                     ; preds = %51, %42
  %58 = load i32, i32* %3, align 4, !dbg !1934
  %59 = call i32* @__errno_location() #1, !dbg !1936
  %60 = load i32, i32* %59, align 4, !dbg !1937
  %61 = call i8* @strerror(i32 %60) #7, !dbg !1938
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %58, i8* %61), !dbg !1940
  store i32 1, i32* @g_network_error, align 4, !dbg !1941
  br label %100, !dbg !1942

; <label>:62:                                     ; preds = %54
  br label %63, !dbg !1943

; <label>:63:                                     ; preds = %62, %28
  br label %96, !dbg !1944

; <label>:64:                                     ; preds = %25
  %65 = load i32, i32* @g_sock, align 4, !dbg !1945
  %66 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1947
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 2, !dbg !1948
  %68 = load i8*, i8** %67, align 8, !dbg !1948
  %69 = load i32, i32* %6, align 4, !dbg !1949
  %70 = sext i32 %69 to i64, !dbg !1950
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !1950
  %72 = load i32, i32* %4, align 4, !dbg !1951
  %73 = load i32, i32* %6, align 4, !dbg !1952
  %74 = sub nsw i32 %72, %73, !dbg !1953
  %75 = sext i32 %74 to i64, !dbg !1951
  %76 = call i64 @send(i32 %65, i8* %71, i64 %75, i32 0), !dbg !1954
  %77 = trunc i64 %76 to i32, !dbg !1954
  store i32 %77, i32* %5, align 4, !dbg !1955
  %78 = load i32, i32* %5, align 4, !dbg !1956
  %79 = icmp sle i32 %78, 0, !dbg !1958
  br i1 %79, label %80, label %95, !dbg !1959

; <label>:80:                                     ; preds = %64
  %81 = load i32, i32* %5, align 4, !dbg !1960
  %82 = icmp eq i32 %81, -1, !dbg !1963
  br i1 %82, label %83, label %90, !dbg !1964

; <label>:83:                                     ; preds = %80
  %84 = call i32* @__errno_location() #1, !dbg !1965
  %85 = load i32, i32* %84, align 4, !dbg !1967
  %86 = icmp eq i32 %85, 11, !dbg !1968
  br i1 %86, label %87, label %90, !dbg !1969

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* @g_sock, align 4, !dbg !1970
  %89 = call i32 @tcp_can_send(i32 %88, i32 100), !dbg !1972
  store i32 0, i32* %5, align 4, !dbg !1973
  br label %94, !dbg !1974

; <label>:90:                                     ; preds = %83, %80
  %91 = call i32* @__errno_location() #1, !dbg !1975
  %92 = load i32, i32* %91, align 4, !dbg !1977
  %93 = call i8* @strerror(i32 %92) #7, !dbg !1978
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* %93), !dbg !1980
  store i32 1, i32* @g_network_error, align 4, !dbg !1981
  br label %100, !dbg !1982

; <label>:94:                                     ; preds = %87
  br label %95, !dbg !1983

; <label>:95:                                     ; preds = %94, %64
  br label %96

; <label>:96:                                     ; preds = %95, %63
  %97 = load i32, i32* %5, align 4, !dbg !1984
  %98 = load i32, i32* %6, align 4, !dbg !1985
  %99 = add nsw i32 %98, %97, !dbg !1985
  store i32 %99, i32* %6, align 4, !dbg !1985
  br label %21, !dbg !1986, !llvm.loop !1988

; <label>:100:                                    ; preds = %19, %57, %90, %21
  ret void, !dbg !1989
}

declare i32 @SSL_write(%struct.ssl_st*, i8*, i32) #2

declare i32 @SSL_get_error(%struct.ssl_st*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tcp_can_send(i32, i32) #0 !dbg !1990 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1993, metadata !1846), !dbg !1994
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1995, metadata !1846), !dbg !1996
  call void @llvm.dbg.declare(metadata %struct.fd_set* %6, metadata !1997, metadata !1846), !dbg !2003
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !2004, metadata !1846), !dbg !2005
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2006, metadata !1846), !dbg !2007
  %11 = load i32, i32* %5, align 4, !dbg !2008
  %12 = sdiv i32 %11, 1000, !dbg !2009
  %13 = sext i32 %12 to i64, !dbg !2008
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2010
  store i64 %13, i64* %14, align 8, !dbg !2011
  %15 = load i32, i32* %5, align 4, !dbg !2012
  %16 = mul nsw i32 %15, 1000, !dbg !2013
  %17 = srem i32 %16, 1000000, !dbg !2014
  %18 = sext i32 %17 to i64, !dbg !2015
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !2016
  store i64 %18, i64* %19, align 8, !dbg !2017
  br label %20, !dbg !2018, !llvm.loop !2019

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2020, metadata !1846), !dbg !2022
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2023, metadata !1846), !dbg !2024
  %21 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0, !dbg !2025
  %22 = getelementptr inbounds [16 x i64], [16 x i64]* %21, i64 0, i64 0, !dbg !2027
  %23 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %22) #7, !dbg !2028, !srcloc !2029
  %24 = extractvalue { i64, i64* } %23, 0, !dbg !2028
  %25 = extractvalue { i64, i64* } %23, 1, !dbg !2028
  %26 = trunc i64 %24 to i32, !dbg !2028
  store i32 %26, i32* %9, align 4, !dbg !2028
  %27 = ptrtoint i64* %25 to i64, !dbg !2028
  %28 = trunc i64 %27 to i32, !dbg !2028
  store i32 %28, i32* %10, align 4, !dbg !2028
  br label %29, !dbg !2030

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %4, align 4, !dbg !2031
  %31 = srem i32 %30, 64, !dbg !2032
  %32 = zext i32 %31 to i64, !dbg !2033
  %33 = shl i64 1, %32, !dbg !2033
  %34 = load i32, i32* %4, align 4, !dbg !2031
  %35 = sdiv i32 %34, 64, !dbg !2032
  %36 = sext i32 %35 to i64, !dbg !2034
  %37 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i32 0, i32 0, !dbg !2035
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %37, i64 0, i64 %36, !dbg !2034
  %39 = load i64, i64* %38, align 8, !dbg !2036
  %40 = or i64 %39, %33, !dbg !2036
  store i64 %40, i64* %38, align 8, !dbg !2036
  %41 = load i32, i32* %4, align 4, !dbg !2037
  %42 = add nsw i32 %41, 1, !dbg !2038
  %43 = call i32 @select(i32 %42, %struct.fd_set* null, %struct.fd_set* %6, %struct.fd_set* null, %struct.timeval* %7), !dbg !2039
  store i32 %43, i32* %8, align 4, !dbg !2040
  %44 = load i32, i32* %8, align 4, !dbg !2041
  %45 = icmp sgt i32 %44, 0, !dbg !2043
  br i1 %45, label %46, label %47, !dbg !2044

; <label>:46:                                     ; preds = %29
  store i32 1, i32* %3, align 4, !dbg !2045
  br label %48, !dbg !2045

; <label>:47:                                     ; preds = %29
  store i32 0, i32* %3, align 4, !dbg !2047
  br label %48, !dbg !2047

; <label>:48:                                     ; preds = %47, %46
  %49 = load i32, i32* %3, align 4, !dbg !2048
  ret i32 %49, !dbg !2048
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @send(i32, i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define %struct.stream* @tcp_recv(%struct.stream*, i32) #0 !dbg !2049 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !2052, metadata !1846), !dbg !2053
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2054, metadata !1846), !dbg !2055
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2056, metadata !1846), !dbg !2057
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2058, metadata !1846), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2060, metadata !1846), !dbg !2061
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2062, metadata !1846), !dbg !2063
  store i32 0, i32* %9, align 4, !dbg !2063
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2064, metadata !1846), !dbg !2065
  %11 = load i32, i32* @g_network_error, align 4, !dbg !2066
  %12 = icmp eq i32 %11, 1, !dbg !2068
  br i1 %12, label %13, label %14, !dbg !2069

; <label>:13:                                     ; preds = %2
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2070
  br label %198, !dbg !2070

; <label>:14:                                     ; preds = %2
  %15 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2071
  %16 = icmp eq %struct.stream* %15, null, !dbg !2073
  br i1 %16, label %17, label %29, !dbg !2074

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %5, align 4, !dbg !2075
  %19 = load i32, i32* getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 3), align 8, !dbg !2078
  %20 = icmp ugt i32 %18, %19, !dbg !2079
  br i1 %20, label %21, label %27, !dbg !2080

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2081
  %23 = load i32, i32* %5, align 4, !dbg !2083
  %24 = zext i32 %23 to i64, !dbg !2083
  %25 = call i8* @xrealloc(i8* %22, i64 %24), !dbg !2084
  store i8* %25, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2085
  %26 = load i32, i32* %5, align 4, !dbg !2086
  store i32 %26, i32* getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 3), align 8, !dbg !2087
  br label %27, !dbg !2088

; <label>:27:                                     ; preds = %21, %17
  %28 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2089
  store i8* %28, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 0), align 8, !dbg !2090
  store i8* %28, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 1), align 8, !dbg !2091
  store %struct.stream* @g_in, %struct.stream** %4, align 8, !dbg !2092
  br label %97, !dbg !2093

; <label>:29:                                     ; preds = %14
  %30 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2094
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 1, !dbg !2096
  %32 = load i8*, i8** %31, align 8, !dbg !2096
  %33 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2097
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 2, !dbg !2098
  %35 = load i8*, i8** %34, align 8, !dbg !2098
  %36 = ptrtoint i8* %32 to i64, !dbg !2099
  %37 = ptrtoint i8* %35 to i64, !dbg !2099
  %38 = sub i64 %36, %37, !dbg !2099
  %39 = load i32, i32* %5, align 4, !dbg !2100
  %40 = zext i32 %39 to i64, !dbg !2100
  %41 = add nsw i64 %38, %40, !dbg !2101
  %42 = trunc i64 %41 to i32, !dbg !2102
  store i32 %42, i32* %6, align 4, !dbg !2103
  %43 = load i32, i32* %6, align 4, !dbg !2104
  %44 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2106
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 3, !dbg !2107
  %46 = load i32, i32* %45, align 8, !dbg !2107
  %47 = icmp ugt i32 %43, %46, !dbg !2108
  br i1 %47, label %48, label %96, !dbg !2109

; <label>:48:                                     ; preds = %29
  %49 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2110
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !2112
  %51 = load i8*, i8** %50, align 8, !dbg !2112
  %52 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2113
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 2, !dbg !2114
  %54 = load i8*, i8** %53, align 8, !dbg !2114
  %55 = ptrtoint i8* %51 to i64, !dbg !2115
  %56 = ptrtoint i8* %54 to i64, !dbg !2115
  %57 = sub i64 %55, %56, !dbg !2115
  %58 = trunc i64 %57 to i32, !dbg !2110
  store i32 %58, i32* %8, align 4, !dbg !2116
  %59 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2117
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 1, !dbg !2118
  %61 = load i8*, i8** %60, align 8, !dbg !2118
  %62 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2119
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 2, !dbg !2120
  %64 = load i8*, i8** %63, align 8, !dbg !2120
  %65 = ptrtoint i8* %61 to i64, !dbg !2121
  %66 = ptrtoint i8* %64 to i64, !dbg !2121
  %67 = sub i64 %65, %66, !dbg !2121
  %68 = trunc i64 %67 to i32, !dbg !2117
  store i32 %68, i32* %7, align 4, !dbg !2122
  %69 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2123
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 2, !dbg !2124
  %71 = load i8*, i8** %70, align 8, !dbg !2124
  %72 = load i32, i32* %6, align 4, !dbg !2125
  %73 = zext i32 %72 to i64, !dbg !2125
  %74 = call i8* @xrealloc(i8* %71, i64 %73), !dbg !2126
  %75 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2127
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 2, !dbg !2128
  store i8* %74, i8** %76, align 8, !dbg !2129
  %77 = load i32, i32* %6, align 4, !dbg !2130
  %78 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2131
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 3, !dbg !2132
  store i32 %77, i32* %79, align 8, !dbg !2133
  %80 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2134
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 2, !dbg !2135
  %82 = load i8*, i8** %81, align 8, !dbg !2135
  %83 = load i32, i32* %8, align 4, !dbg !2136
  %84 = zext i32 %83 to i64, !dbg !2137
  %85 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !2137
  %86 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2138
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !2139
  store i8* %85, i8** %87, align 8, !dbg !2140
  %88 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2141
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 2, !dbg !2142
  %90 = load i8*, i8** %89, align 8, !dbg !2142
  %91 = load i32, i32* %7, align 4, !dbg !2143
  %92 = zext i32 %91 to i64, !dbg !2144
  %93 = getelementptr inbounds i8, i8* %90, i64 %92, !dbg !2144
  %94 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2145
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %94, i32 0, i32 1, !dbg !2146
  store i8* %93, i8** %95, align 8, !dbg !2147
  br label %96, !dbg !2148

; <label>:96:                                     ; preds = %48, %29
  br label %97

; <label>:97:                                     ; preds = %96, %27
  br label %98, !dbg !2149

; <label>:98:                                     ; preds = %186, %97
  %99 = load i32, i32* %5, align 4, !dbg !2150
  %100 = icmp ugt i32 %99, 0, !dbg !2152
  br i1 %100, label %101, label %196, !dbg !2153

; <label>:101:                                    ; preds = %98
  %102 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2154
  %103 = icmp ne %struct.ssl_st* %102, null, !dbg !2154
  br i1 %103, label %104, label %108, !dbg !2157

; <label>:104:                                    ; preds = %101
  %105 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2158
  %106 = call i32 @SSL_pending(%struct.ssl_st* %105), !dbg !2160
  %107 = icmp sle i32 %106, 0, !dbg !2161
  br i1 %107, label %108, label %117, !dbg !2162

; <label>:108:                                    ; preds = %104, %101
  %109 = load i32, i32* @g_run_ui, align 4, !dbg !2163
  %110 = icmp ne i32 %109, 0, !dbg !2163
  br i1 %110, label %111, label %117, !dbg !2165

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* @g_sock, align 4, !dbg !2166
  call void @ui_select(i32 %112), !dbg !2168
  %113 = load i32, i32* @g_exit_mainloop, align 4, !dbg !2169
  %114 = icmp eq i32 %113, 1, !dbg !2171
  br i1 %114, label %115, label %116, !dbg !2172

; <label>:115:                                    ; preds = %111
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2173
  br label %198, !dbg !2173

; <label>:116:                                    ; preds = %111
  br label %117, !dbg !2174

; <label>:117:                                    ; preds = %116, %108, %104
  %118 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2175
  %119 = icmp ne %struct.ssl_st* %118, null, !dbg !2175
  br i1 %119, label %120, label %156, !dbg !2177

; <label>:120:                                    ; preds = %117
  %121 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2178
  %122 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2180
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 1, !dbg !2181
  %124 = load i8*, i8** %123, align 8, !dbg !2181
  %125 = load i32, i32* %5, align 4, !dbg !2182
  %126 = call i32 @SSL_read(%struct.ssl_st* %121, i8* %124, i32 %125), !dbg !2183
  store i32 %126, i32* %9, align 4, !dbg !2184
  %127 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2185
  %128 = load i32, i32* %9, align 4, !dbg !2186
  %129 = call i32 @SSL_get_error(%struct.ssl_st* %127, i32 %128), !dbg !2187
  store i32 %129, i32* %10, align 4, !dbg !2188
  %130 = load i32, i32* %10, align 4, !dbg !2189
  %131 = icmp eq i32 %130, 1, !dbg !2191
  br i1 %131, label %132, label %139, !dbg !2192

; <label>:132:                                    ; preds = %120
  %133 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2193
  %134 = call i32 @SSL_get_shutdown(%struct.ssl_st* %133), !dbg !2196
  %135 = and i32 %134, 2, !dbg !2197
  %136 = icmp ne i32 %135, 0, !dbg !2197
  br i1 %136, label %137, label %138, !dbg !2198

; <label>:137:                                    ; preds = %132
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0)), !dbg !2199
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2201
  br label %198, !dbg !2201

; <label>:138:                                    ; preds = %132
  call void @rdssl_log_ssl_errors(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !2202
  store i32 1, i32* @g_network_error, align 4, !dbg !2203
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2204
  br label %198, !dbg !2204

; <label>:139:                                    ; preds = %120
  %140 = load i32, i32* %10, align 4, !dbg !2205
  %141 = icmp eq i32 %140, 2, !dbg !2207
  br i1 %141, label %145, label %142, !dbg !2208

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %10, align 4, !dbg !2209
  %144 = icmp eq i32 %143, 3, !dbg !2211
  br i1 %144, label %145, label %146, !dbg !2212

; <label>:145:                                    ; preds = %142, %139
  store i32 0, i32* %9, align 4, !dbg !2213
  br label %155, !dbg !2215

; <label>:146:                                    ; preds = %142
  %147 = load i32, i32* %10, align 4, !dbg !2216
  %148 = icmp ne i32 %147, 0, !dbg !2218
  br i1 %148, label %149, label %154, !dbg !2219

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* %10, align 4, !dbg !2220
  %151 = call i32* @__errno_location() #1, !dbg !2222
  %152 = load i32, i32* %151, align 4, !dbg !2223
  %153 = call i8* @strerror(i32 %152) #7, !dbg !2224
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %150, i8* %153), !dbg !2226
  store i32 1, i32* @g_network_error, align 4, !dbg !2227
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2228
  br label %198, !dbg !2228

; <label>:154:                                    ; preds = %146
  br label %155

; <label>:155:                                    ; preds = %154, %145
  br label %186, !dbg !2229

; <label>:156:                                    ; preds = %117
  %157 = load i32, i32* @g_sock, align 4, !dbg !2230
  %158 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2232
  %159 = getelementptr inbounds %struct.stream, %struct.stream* %158, i32 0, i32 1, !dbg !2233
  %160 = load i8*, i8** %159, align 8, !dbg !2233
  %161 = load i32, i32* %5, align 4, !dbg !2234
  %162 = zext i32 %161 to i64, !dbg !2234
  %163 = call i64 @recv(i32 %157, i8* %160, i64 %162, i32 0), !dbg !2235
  %164 = trunc i64 %163 to i32, !dbg !2235
  store i32 %164, i32* %9, align 4, !dbg !2236
  %165 = load i32, i32* %9, align 4, !dbg !2237
  %166 = icmp slt i32 %165, 0, !dbg !2239
  br i1 %166, label %167, label %180, !dbg !2240

; <label>:167:                                    ; preds = %156
  %168 = load i32, i32* %9, align 4, !dbg !2241
  %169 = icmp eq i32 %168, -1, !dbg !2244
  br i1 %169, label %170, label %175, !dbg !2245

; <label>:170:                                    ; preds = %167
  %171 = call i32* @__errno_location() #1, !dbg !2246
  %172 = load i32, i32* %171, align 4, !dbg !2248
  %173 = icmp eq i32 %172, 11, !dbg !2249
  br i1 %173, label %174, label %175, !dbg !2250

; <label>:174:                                    ; preds = %170
  store i32 0, i32* %9, align 4, !dbg !2251
  br label %179, !dbg !2253

; <label>:175:                                    ; preds = %170, %167
  %176 = call i32* @__errno_location() #1, !dbg !2254
  %177 = load i32, i32* %176, align 4, !dbg !2256
  %178 = call i8* @strerror(i32 %177) #7, !dbg !2257
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* %178), !dbg !2259
  store i32 1, i32* @g_network_error, align 4, !dbg !2260
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2261
  br label %198, !dbg !2261

; <label>:179:                                    ; preds = %174
  br label %185, !dbg !2262

; <label>:180:                                    ; preds = %156
  %181 = load i32, i32* %9, align 4, !dbg !2263
  %182 = icmp eq i32 %181, 0, !dbg !2265
  br i1 %182, label %183, label %184, !dbg !2266

; <label>:183:                                    ; preds = %180
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0)), !dbg !2267
  store %struct.stream* null, %struct.stream** %3, align 8, !dbg !2269
  br label %198, !dbg !2269

; <label>:184:                                    ; preds = %180
  br label %185

; <label>:185:                                    ; preds = %184, %179
  br label %186

; <label>:186:                                    ; preds = %185, %155
  %187 = load i32, i32* %9, align 4, !dbg !2270
  %188 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2271
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %188, i32 0, i32 1, !dbg !2272
  %190 = load i8*, i8** %189, align 8, !dbg !2273
  %191 = sext i32 %187 to i64, !dbg !2273
  %192 = getelementptr inbounds i8, i8* %190, i64 %191, !dbg !2273
  store i8* %192, i8** %189, align 8, !dbg !2273
  %193 = load i32, i32* %9, align 4, !dbg !2274
  %194 = load i32, i32* %5, align 4, !dbg !2275
  %195 = sub i32 %194, %193, !dbg !2275
  store i32 %195, i32* %5, align 4, !dbg !2275
  br label %98, !dbg !2276, !llvm.loop !2278

; <label>:196:                                    ; preds = %98
  %197 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !2279
  store %struct.stream* %197, %struct.stream** %3, align 8, !dbg !2280
  br label %198, !dbg !2280

; <label>:198:                                    ; preds = %196, %183, %175, %149, %138, %137, %115, %13
  %199 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2281
  ret %struct.stream* %199, !dbg !2281
}

declare i8* @xrealloc(i8*, i64) #2

declare i32 @SSL_pending(%struct.ssl_st*) #2

declare void @ui_select(i32) #2

declare i32 @SSL_read(%struct.ssl_st*, i8*, i32) #2

declare i32 @SSL_get_shutdown(%struct.ssl_st*) #2

declare void @rdssl_log_ssl_errors(i8*) #2

declare i64 @recv(i32, i8*, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @tcp_tls_connect() #0 !dbg !2282 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2285, metadata !1846), !dbg !2286
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2287, metadata !1846), !dbg !2288
  %4 = load i32, i32* @g_ssl_initialized, align 4, !dbg !2289
  %5 = icmp ne i32 %4, 0, !dbg !2289
  br i1 %5, label %8, label %6, !dbg !2291

; <label>:6:                                      ; preds = %0
  call void @SSL_load_error_strings(), !dbg !2292
  %7 = call i32 @SSL_library_init(), !dbg !2294
  store i32 1, i32* @g_ssl_initialized, align 4, !dbg !2295
  br label %8, !dbg !2296

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2297
  %10 = icmp eq %struct.ssl_ctx_st* %9, null, !dbg !2299
  br i1 %10, label %11, label %26, !dbg !2300

; <label>:11:                                     ; preds = %8
  %12 = call %struct.ssl_method_st* @TLSv1_client_method(), !dbg !2301
  %13 = call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* %12), !dbg !2303
  store %struct.ssl_ctx_st* %13, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2305
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2306
  %15 = icmp eq %struct.ssl_ctx_st* %14, null, !dbg !2308
  br i1 %15, label %16, label %18, !dbg !2309

; <label>:16:                                     ; preds = %11
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0)), !dbg !2310
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2312
  br label %60, !dbg !2313

; <label>:18:                                     ; preds = %11
  store i64 0, i64* %3, align 8, !dbg !2314
  %19 = load i64, i64* %3, align 8, !dbg !2315
  %20 = or i64 %19, 131072, !dbg !2315
  store i64 %20, i64* %3, align 8, !dbg !2315
  %21 = load i64, i64* %3, align 8, !dbg !2316
  %22 = or i64 %21, 2048, !dbg !2316
  store i64 %22, i64* %3, align 8, !dbg !2316
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2317
  %24 = load i64, i64* %3, align 8, !dbg !2317
  %25 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %23, i32 32, i64 %24, i8* null), !dbg !2317
  br label %26, !dbg !2318

; <label>:26:                                     ; preds = %18, %8
  %27 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2319
  %28 = icmp ne %struct.ssl_st* %27, null, !dbg !2319
  br i1 %28, label %29, label %31, !dbg !2321

; <label>:29:                                     ; preds = %26
  %30 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2322
  call void @SSL_free(%struct.ssl_st* %30), !dbg !2323
  br label %31, !dbg !2323

; <label>:31:                                     ; preds = %29, %26
  %32 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2324
  %33 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* %32), !dbg !2325
  store %struct.ssl_st* %33, %struct.ssl_st** @g_ssl, align 8, !dbg !2326
  %34 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2327
  %35 = icmp eq %struct.ssl_st* %34, null, !dbg !2329
  br i1 %35, label %36, label %38, !dbg !2330

; <label>:36:                                     ; preds = %31
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)), !dbg !2331
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2333
  br label %60, !dbg !2334

; <label>:38:                                     ; preds = %31
  %39 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2335
  %40 = load i32, i32* @g_sock, align 4, !dbg !2337
  %41 = call i32 @SSL_set_fd(%struct.ssl_st* %39, i32 %40), !dbg !2338
  %42 = icmp slt i32 %41, 1, !dbg !2339
  br i1 %42, label %43, label %45, !dbg !2340

; <label>:43:                                     ; preds = %38
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0)), !dbg !2341
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2343
  br label %60, !dbg !2344

; <label>:45:                                     ; preds = %38
  br label %46, !dbg !2345, !llvm.loop !2346

; <label>:46:                                     ; preds = %49, %45
  %47 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2347
  %48 = call i32 @SSL_connect(%struct.ssl_st* %47), !dbg !2349
  store i32 %48, i32* %2, align 4, !dbg !2350
  br label %49, !dbg !2351

; <label>:49:                                     ; preds = %46
  %50 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2352
  %51 = load i32, i32* %2, align 4, !dbg !2353
  %52 = call i32 @SSL_get_error(%struct.ssl_st* %50, i32 %51), !dbg !2354
  %53 = icmp eq i32 %52, 2, !dbg !2355
  br i1 %53, label %46, label %54, !dbg !2356, !llvm.loop !2346

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %2, align 4, !dbg !2358
  %56 = icmp slt i32 %55, 0, !dbg !2361
  br i1 %56, label %57, label %59, !dbg !2358

; <label>:57:                                     ; preds = %54
  call void @rdssl_log_ssl_errors(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)), !dbg !2362
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2364
  br label %60, !dbg !2365

; <label>:59:                                     ; preds = %54
  store i32 1, i32* %1, align 4, !dbg !2366
  br label %71, !dbg !2366

; <label>:60:                                     ; preds = %57, %43, %36, %16
  %61 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2367
  %62 = icmp ne %struct.ssl_st* %61, null, !dbg !2367
  br i1 %62, label %63, label %65, !dbg !2369

; <label>:63:                                     ; preds = %60
  %64 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2370
  call void @SSL_free(%struct.ssl_st* %64), !dbg !2371
  br label %65, !dbg !2371

; <label>:65:                                     ; preds = %63, %60
  %66 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2372
  %67 = icmp ne %struct.ssl_ctx_st* %66, null, !dbg !2372
  br i1 %67, label %68, label %70, !dbg !2374

; <label>:68:                                     ; preds = %65
  %69 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2375
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %69), !dbg !2376
  br label %70, !dbg !2376

; <label>:70:                                     ; preds = %68, %65
  store %struct.ssl_st* null, %struct.ssl_st** @g_ssl, align 8, !dbg !2377
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2378
  store i32 0, i32* %1, align 4, !dbg !2379
  br label %71, !dbg !2379

; <label>:71:                                     ; preds = %70, %59
  %72 = load i32, i32* %1, align 4, !dbg !2380
  ret i32 %72, !dbg !2380
}

declare void @SSL_load_error_strings() #2

declare i32 @SSL_library_init() #2

declare %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st*) #2

declare %struct.ssl_method_st* @TLSv1_client_method() #2

declare i32 @assert(...) #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st*, i32, i64, i8*) #2

declare void @SSL_free(%struct.ssl_st*) #2

declare %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st*) #2

declare i32 @SSL_set_fd(%struct.ssl_st*, i32) #2

declare i32 @SSL_connect(%struct.ssl_st*) #2

declare void @SSL_CTX_free(%struct.ssl_ctx_st*) #2

; Function Attrs: nounwind uwtable
define i32 @tcp_tls_get_server_pubkey(%struct.stream*) #0 !dbg !2381 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %struct.x509_st*, align 8
  %4 = alloca %struct.evp_pkey_st*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !2384, metadata !1846), !dbg !2385
  call void @llvm.dbg.declare(metadata %struct.x509_st** %3, metadata !2386, metadata !1846), !dbg !2387
  store %struct.x509_st* null, %struct.x509_st** %3, align 8, !dbg !2387
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %4, metadata !2388, metadata !1846), !dbg !2389
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %4, align 8, !dbg !2389
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2390
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !2391
  store i8* null, i8** %6, align 8, !dbg !2392
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2393
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 2, !dbg !2394
  store i8* null, i8** %8, align 8, !dbg !2395
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2396
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 3, !dbg !2397
  store i32 0, i32* %10, align 8, !dbg !2398
  %11 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2399
  %12 = icmp eq %struct.ssl_st* %11, null, !dbg !2401
  br i1 %12, label %13, label %14, !dbg !2402

; <label>:13:                                     ; preds = %1
  br label %64, !dbg !2403

; <label>:14:                                     ; preds = %1
  %15 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2404
  %16 = call %struct.x509_st* @SSL_get_peer_certificate(%struct.ssl_st* %15), !dbg !2405
  store %struct.x509_st* %16, %struct.x509_st** %3, align 8, !dbg !2406
  %17 = load %struct.x509_st*, %struct.x509_st** %3, align 8, !dbg !2407
  %18 = icmp eq %struct.x509_st* %17, null, !dbg !2409
  br i1 %18, label %19, label %20, !dbg !2410

; <label>:19:                                     ; preds = %14
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i32 0, i32 0)), !dbg !2411
  br label %64, !dbg !2413

; <label>:20:                                     ; preds = %14
  %21 = load %struct.x509_st*, %struct.x509_st** %3, align 8, !dbg !2414
  %22 = call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* %21), !dbg !2415
  store %struct.evp_pkey_st* %22, %struct.evp_pkey_st** %4, align 8, !dbg !2416
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !2417
  %24 = icmp eq %struct.evp_pkey_st* %23, null, !dbg !2419
  br i1 %24, label %25, label %26, !dbg !2420

; <label>:25:                                     ; preds = %20
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0)), !dbg !2421
  br label %64, !dbg !2423

; <label>:26:                                     ; preds = %20
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !2424
  %28 = call i32 @i2d_PublicKey(%struct.evp_pkey_st* %27, i8** null), !dbg !2425
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2426
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 3, !dbg !2427
  store i32 %28, i32* %30, align 8, !dbg !2428
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2429
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 3, !dbg !2431
  %33 = load i32, i32* %32, align 8, !dbg !2431
  %34 = icmp ult i32 %33, 1, !dbg !2432
  br i1 %34, label %35, label %36, !dbg !2433

; <label>:35:                                     ; preds = %26
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0)), !dbg !2434
  br label %64, !dbg !2436

; <label>:36:                                     ; preds = %26
  %37 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2437
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 3, !dbg !2438
  %39 = load i32, i32* %38, align 8, !dbg !2438
  %40 = call i8* @xmalloc(i32 %39), !dbg !2439
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2440
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !2441
  store i8* %40, i8** %42, align 8, !dbg !2442
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2443
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 2, !dbg !2444
  store i8* %40, i8** %44, align 8, !dbg !2445
  %45 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !2446
  %46 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2447
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !2448
  %48 = call i32 @i2d_PublicKey(%struct.evp_pkey_st* %45, i8** %47), !dbg !2449
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2450
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 2, !dbg !2451
  %51 = load i8*, i8** %50, align 8, !dbg !2451
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2452
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !2453
  store i8* %51, i8** %53, align 8, !dbg !2454
  %54 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2455
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !2456
  %56 = load i8*, i8** %55, align 8, !dbg !2456
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2457
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 3, !dbg !2458
  %59 = load i32, i32* %58, align 8, !dbg !2458
  %60 = zext i32 %59 to i64, !dbg !2459
  %61 = getelementptr inbounds i8, i8* %56, i64 %60, !dbg !2459
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2460
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 1, !dbg !2461
  store i8* %61, i8** %63, align 8, !dbg !2462
  br label %64, !dbg !2460

; <label>:64:                                     ; preds = %36, %35, %25, %19, %13
  %65 = load %struct.x509_st*, %struct.x509_st** %3, align 8, !dbg !2463
  %66 = icmp ne %struct.x509_st* %65, null, !dbg !2463
  br i1 %66, label %67, label %69, !dbg !2465

; <label>:67:                                     ; preds = %64
  %68 = load %struct.x509_st*, %struct.x509_st** %3, align 8, !dbg !2466
  call void @X509_free(%struct.x509_st* %68), !dbg !2467
  br label %69, !dbg !2467

; <label>:69:                                     ; preds = %67, %64
  %70 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !2468
  %71 = icmp ne %struct.evp_pkey_st* %70, null, !dbg !2468
  br i1 %71, label %72, label %74, !dbg !2470

; <label>:72:                                     ; preds = %69
  %73 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !2471
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %73), !dbg !2472
  br label %74, !dbg !2472

; <label>:74:                                     ; preds = %72, %69
  %75 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !2473
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 3, !dbg !2474
  %77 = load i32, i32* %76, align 8, !dbg !2474
  %78 = icmp ne i32 %77, 0, !dbg !2475
  %79 = zext i1 %78 to i32, !dbg !2475
  ret i32 %79, !dbg !2476
}

declare %struct.x509_st* @SSL_get_peer_certificate(%struct.ssl_st*) #2

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st*) #2

declare i32 @i2d_PublicKey(%struct.evp_pkey_st*, i8**) #2

declare i8* @xmalloc(i32) #2

declare void @X509_free(%struct.x509_st*) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #2

; Function Attrs: nounwind uwtable
define i32 @tcp_connect(i8*) #0 !dbg !2477 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1025 x i8], align 16
  %8 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2480, metadata !1846), !dbg !2481
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2482, metadata !1846), !dbg !2486
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2487, metadata !1846), !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2489, metadata !1846), !dbg !2490
  call void @llvm.dbg.declare(metadata [1025 x i8]* %7, metadata !2491, metadata !1846), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.hostent** %8, metadata !2496, metadata !1846), !dbg !2506
  store %struct.hostent* null, %struct.hostent** %8, align 8, !dbg !2506
  %9 = load i8*, i8** %3, align 8, !dbg !2507
  %10 = call i32 @tcp_connect_resolve_hostname(i8* %9), !dbg !2509
  %11 = icmp ne i32 %10, 0, !dbg !2509
  br i1 %11, label %12, label %51, !dbg !2510

; <label>:12:                                     ; preds = %1
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2511
  %14 = icmp ne %struct.sockaddr_in* %13, null, !dbg !2514
  br i1 %14, label %15, label %18, !dbg !2515

; <label>:15:                                     ; preds = %12
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2516
  %17 = bitcast %struct.sockaddr_in* %16 to i8*, !dbg !2516
  call void @xfree(i8* %17), !dbg !2517
  br label %18, !dbg !2517

; <label>:18:                                     ; preds = %15, %12
  %19 = call i8* @xmalloc(i32 16), !dbg !2518
  %20 = bitcast i8* %19 to %struct.sockaddr_in*, !dbg !2518
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2519
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2520
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0, !dbg !2521
  store i16 2, i16* %22, align 4, !dbg !2522
  %23 = load i32, i32* @g_tcp_port_rdp, align 4, !dbg !2523
  %24 = trunc i32 %23 to i16, !dbg !2524
  %25 = call zeroext i16 @htons(i16 zeroext %24) #1, !dbg !2525
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2526
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1, !dbg !2527
  store i16 %25, i16* %27, align 2, !dbg !2528
  %28 = load i8*, i8** %3, align 8, !dbg !2529
  %29 = call %struct.hostent* @gethostbyname(i8* %28), !dbg !2531
  store %struct.hostent* %29, %struct.hostent** %8, align 8, !dbg !2532
  %30 = icmp ne %struct.hostent* %29, null, !dbg !2533
  br i1 %30, label %31, label %40, !dbg !2534

; <label>:31:                                     ; preds = %18
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2535
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2, !dbg !2537
  %34 = bitcast %struct.in_addr* %33 to i8*, !dbg !2538
  %35 = load %struct.hostent*, %struct.hostent** %8, align 8, !dbg !2539
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 4, !dbg !2540
  %37 = load i8**, i8*** %36, align 8, !dbg !2540
  %38 = getelementptr inbounds i8*, i8** %37, i64 0, !dbg !2539
  %39 = load i8*, i8** %38, align 8, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %39, i64 4, i32 1, i1 false), !dbg !2538
  br label %50, !dbg !2541

; <label>:40:                                     ; preds = %18
  %41 = load i8*, i8** %3, align 8, !dbg !2542
  %42 = call i32 @inet_addr(i8* %41) #7, !dbg !2544
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2545
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 2, !dbg !2546
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0, !dbg !2547
  store i32 %42, i32* %45, align 4, !dbg !2548
  %46 = icmp eq i32 %42, -1, !dbg !2549
  br i1 %46, label %47, label %49, !dbg !2550

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %3, align 8, !dbg !2551
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0), i8* %48), !dbg !2553
  store i32 0, i32* %2, align 4, !dbg !2554
  br label %134, !dbg !2554

; <label>:49:                                     ; preds = %40
  br label %50

; <label>:50:                                     ; preds = %49, %31
  br label %51, !dbg !2555

; <label>:51:                                     ; preds = %50, %1
  %52 = call i32 @socket(i32 2, i32 1, i32 0) #7, !dbg !2556
  store i32 %52, i32* @g_sock, align 4, !dbg !2558
  %53 = icmp slt i32 %52, 0, !dbg !2559
  br i1 %53, label %54, label %58, !dbg !2560

; <label>:54:                                     ; preds = %51
  %55 = call i32* @__errno_location() #1, !dbg !2561
  %56 = load i32, i32* %55, align 4, !dbg !2563
  %57 = call i8* @strerror(i32 %56) #7, !dbg !2564
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i8* %57), !dbg !2566
  store i32 0, i32* %2, align 4, !dbg !2568
  br label %134, !dbg !2568

; <label>:58:                                     ; preds = %51
  %59 = load i8*, i8** %3, align 8, !dbg !2569
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2570
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0, !dbg !2571
  %62 = load i16, i16* %61, align 4, !dbg !2571
  %63 = zext i16 %62 to i32, !dbg !2570
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2572
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 2, !dbg !2573
  %66 = bitcast %struct.in_addr* %65 to i8*, !dbg !2574
  %67 = getelementptr inbounds [1025 x i8], [1025 x i8]* %7, i32 0, i32 0, !dbg !2575
  %68 = call i8* @inet_ntop(i32 %63, i8* %66, i8* %67, i32 1025) #7, !dbg !2576
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %59, i8* %68), !dbg !2577
  %69 = load i32, i32* @g_sock, align 4, !dbg !2578
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2580
  %71 = bitcast %struct.sockaddr_in* %70 to %struct.sockaddr*, !dbg !2581
  %72 = call i32 @connect(i32 %69, %struct.sockaddr* %71, i32 16), !dbg !2582
  %73 = icmp slt i32 %72, 0, !dbg !2583
  br i1 %73, label %74, label %84, !dbg !2584

; <label>:74:                                     ; preds = %58
  %75 = load i32, i32* @g_reconnect_loop, align 4, !dbg !2585
  %76 = icmp ne i32 %75, 0, !dbg !2585
  br i1 %76, label %81, label %77, !dbg !2588

; <label>:77:                                     ; preds = %74
  %78 = call i32* @__errno_location() #1, !dbg !2589
  %79 = load i32, i32* %78, align 4, !dbg !2590
  %80 = call i8* @strerror(i32 %79) #7, !dbg !2591
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i8* %80), !dbg !2593
  br label %81, !dbg !2595

; <label>:81:                                     ; preds = %77, %74
  %82 = load i32, i32* @g_sock, align 4, !dbg !2596
  %83 = call i32 @close(i32 %82), !dbg !2597
  store i32 -1, i32* @g_sock, align 4, !dbg !2598
  store i32 0, i32* %2, align 4, !dbg !2599
  br label %134, !dbg !2599

; <label>:84:                                     ; preds = %58
  store i32 1, i32* %5, align 4, !dbg !2600
  store i32 4, i32* %4, align 4, !dbg !2601
  %85 = load i32, i32* @g_sock, align 4, !dbg !2602
  %86 = bitcast i32* %5 to i8*, !dbg !2603
  %87 = load i32, i32* %4, align 4, !dbg !2604
  %88 = call i32 @setsockopt(i32 %85, i32 6, i32 1, i8* %86, i32 %87) #7, !dbg !2605
  %89 = load i32, i32* @g_sock, align 4, !dbg !2606
  %90 = bitcast i32* %5 to i8*, !dbg !2608
  %91 = call i32 @getsockopt(i32 %89, i32 1, i32 8, i8* %90, i32* %4) #7, !dbg !2609
  %92 = icmp eq i32 %91, 0, !dbg !2610
  br i1 %92, label %93, label %102, !dbg !2611

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* %5, align 4, !dbg !2612
  %95 = icmp ult i32 %94, 16384, !dbg !2615
  br i1 %95, label %96, label %101, !dbg !2616

; <label>:96:                                     ; preds = %93
  store i32 16384, i32* %5, align 4, !dbg !2617
  store i32 4, i32* %4, align 4, !dbg !2619
  %97 = load i32, i32* @g_sock, align 4, !dbg !2620
  %98 = bitcast i32* %5 to i8*, !dbg !2621
  %99 = load i32, i32* %4, align 4, !dbg !2622
  %100 = call i32 @setsockopt(i32 %97, i32 1, i32 8, i8* %98, i32 %99) #7, !dbg !2623
  br label %101, !dbg !2624

; <label>:101:                                    ; preds = %96, %93
  br label %102, !dbg !2625

; <label>:102:                                    ; preds = %101, %84
  store i32 4096, i32* getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 3), align 8, !dbg !2626
  %103 = load i32, i32* getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 3), align 8, !dbg !2627
  %104 = call i8* @xmalloc(i32 %103), !dbg !2628
  store i8* %104, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2629
  store i32 0, i32* %6, align 4, !dbg !2630
  br label %105, !dbg !2632

; <label>:105:                                    ; preds = %123, %102
  %106 = load i32, i32* %6, align 4, !dbg !2633
  %107 = icmp slt i32 %106, 1, !dbg !2636
  br i1 %107, label %108, label %126, !dbg !2637

; <label>:108:                                    ; preds = %105
  %109 = load i32, i32* %6, align 4, !dbg !2638
  %110 = sext i32 %109 to i64, !dbg !2640
  %111 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %110, !dbg !2640
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 3, !dbg !2641
  store i32 4096, i32* %112, align 8, !dbg !2642
  %113 = load i32, i32* %6, align 4, !dbg !2643
  %114 = sext i32 %113 to i64, !dbg !2644
  %115 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %114, !dbg !2644
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 3, !dbg !2645
  %117 = load i32, i32* %116, align 8, !dbg !2645
  %118 = call i8* @xmalloc(i32 %117), !dbg !2646
  %119 = load i32, i32* %6, align 4, !dbg !2647
  %120 = sext i32 %119 to i64, !dbg !2648
  %121 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %120, !dbg !2648
  %122 = getelementptr inbounds %struct.stream, %struct.stream* %121, i32 0, i32 2, !dbg !2649
  store i8* %118, i8** %122, align 8, !dbg !2650
  br label %123, !dbg !2651

; <label>:123:                                    ; preds = %108
  %124 = load i32, i32* %6, align 4, !dbg !2652
  %125 = add nsw i32 %124, 1, !dbg !2652
  store i32 %125, i32* %6, align 4, !dbg !2652
  br label %105, !dbg !2654, !llvm.loop !2655

; <label>:126:                                    ; preds = %105
  %127 = load i8*, i8** @g_last_server_name, align 8, !dbg !2657
  %128 = icmp ne i8* %127, null, !dbg !2657
  br i1 %128, label %129, label %131, !dbg !2659

; <label>:129:                                    ; preds = %126
  %130 = load i8*, i8** @g_last_server_name, align 8, !dbg !2660
  call void @xfree(i8* %130), !dbg !2661
  br label %131, !dbg !2661

; <label>:131:                                    ; preds = %129, %126
  %132 = load i8*, i8** %3, align 8, !dbg !2662
  %133 = call noalias i8* @strdup(i8* %132) #7, !dbg !2663
  store i8* %133, i8** @g_last_server_name, align 8, !dbg !2664
  store i32 1, i32* %2, align 4, !dbg !2665
  br label %134, !dbg !2665

; <label>:134:                                    ; preds = %131, %81, %54, %47
  %135 = load i32, i32* %2, align 4, !dbg !2666
  ret i32 %135, !dbg !2666
}

; Function Attrs: nounwind uwtable
define internal i32 @tcp_connect_resolve_hostname(i8*) #0 !dbg !2667 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2670, metadata !1846), !dbg !2671
  %3 = load %struct.sockaddr_in*, %struct.sockaddr_in** @g_server_address, align 8, !dbg !2672
  %4 = icmp eq %struct.sockaddr_in* %3, null, !dbg !2673
  br i1 %4, label %13, label %5, !dbg !2674

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** @g_last_server_name, align 8, !dbg !2675
  %7 = icmp eq i8* %6, null, !dbg !2676
  br i1 %7, label %13, label %8, !dbg !2677

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @g_last_server_name, align 8, !dbg !2678
  %10 = load i8*, i8** %2, align 8, !dbg !2679
  %11 = call i32 @strcmp(i8* %9, i8* %10) #8, !dbg !2680
  %12 = icmp ne i32 %11, 0, !dbg !2681
  br label %13, !dbg !2682

; <label>:13:                                     ; preds = %8, %5, %1
  %14 = phi i1 [ true, %5 ], [ true, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32, !dbg !2684
  ret i32 %15, !dbg !2686
}

declare void @xfree(i8*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

declare %struct.hostent* @gethostbyname(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #3

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

; Function Attrs: nounwind uwtable
define void @tcp_disconnect() #0 !dbg !2687 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2688, metadata !1846), !dbg !2689
  %2 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2690
  %3 = icmp ne %struct.ssl_st* %2, null, !dbg !2690
  br i1 %3, label %4, label %13, !dbg !2692

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @g_network_error, align 4, !dbg !2693
  %6 = icmp ne i32 %5, 0, !dbg !2693
  br i1 %6, label %10, label %7, !dbg !2696

; <label>:7:                                      ; preds = %4
  %8 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2697
  %9 = call i32 @SSL_shutdown(%struct.ssl_st* %8), !dbg !2698
  br label %10, !dbg !2699

; <label>:10:                                     ; preds = %7, %4
  %11 = load %struct.ssl_st*, %struct.ssl_st** @g_ssl, align 8, !dbg !2700
  call void @SSL_free(%struct.ssl_st* %11), !dbg !2701
  store %struct.ssl_st* null, %struct.ssl_st** @g_ssl, align 8, !dbg !2702
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2703
  call void @SSL_CTX_free(%struct.ssl_ctx_st* %12), !dbg !2704
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** @g_ssl_ctx, align 8, !dbg !2705
  br label %13, !dbg !2706

; <label>:13:                                     ; preds = %10, %0
  %14 = load i32, i32* @g_sock, align 4, !dbg !2707
  %15 = call i32 @close(i32 %14), !dbg !2708
  store i32 -1, i32* @g_sock, align 4, !dbg !2709
  store i32 0, i32* getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 3), align 8, !dbg !2710
  %16 = load i8*, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2711
  call void @xfree(i8* %16), !dbg !2712
  store i8* null, i8** getelementptr inbounds (%struct.stream, %struct.stream* @g_in, i32 0, i32 2), align 8, !dbg !2713
  store i32 0, i32* %1, align 4, !dbg !2714
  br label %17, !dbg !2716

; <label>:17:                                     ; preds = %34, %13
  %18 = load i32, i32* %1, align 4, !dbg !2717
  %19 = icmp slt i32 %18, 1, !dbg !2720
  br i1 %19, label %20, label %37, !dbg !2721

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %1, align 4, !dbg !2722
  %22 = sext i32 %21 to i64, !dbg !2724
  %23 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %22, !dbg !2724
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 3, !dbg !2725
  store i32 0, i32* %24, align 8, !dbg !2726
  %25 = load i32, i32* %1, align 4, !dbg !2727
  %26 = sext i32 %25 to i64, !dbg !2728
  %27 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %26, !dbg !2728
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 2, !dbg !2729
  %29 = load i8*, i8** %28, align 8, !dbg !2729
  call void @xfree(i8* %29), !dbg !2730
  %30 = load i32, i32* %1, align 4, !dbg !2731
  %31 = sext i32 %30 to i64, !dbg !2732
  %32 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %31, !dbg !2732
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 2, !dbg !2733
  store i8* null, i8** %33, align 8, !dbg !2734
  br label %34, !dbg !2735

; <label>:34:                                     ; preds = %20
  %35 = load i32, i32* %1, align 4, !dbg !2736
  %36 = add nsw i32 %35, 1, !dbg !2736
  store i32 %36, i32* %1, align 4, !dbg !2736
  br label %17, !dbg !2738, !llvm.loop !2739

; <label>:37:                                     ; preds = %17
  ret void, !dbg !2741
}

declare i32 @SSL_shutdown(%struct.ssl_st*) #2

; Function Attrs: nounwind uwtable
define i8* @tcp_get_address() #0 !dbg !132 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %1, metadata !2742, metadata !1846), !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2744, metadata !1846), !dbg !2745
  store i32 16, i32* %2, align 4, !dbg !2745
  %4 = load i32, i32* @g_sock, align 4, !dbg !2746
  %5 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*, !dbg !2748
  %6 = call i32 @getsockname(i32 %4, %struct.sockaddr* %5, i32* %2) #7, !dbg !2749
  %7 = icmp eq i32 %6, 0, !dbg !2750
  br i1 %7, label %8, label %28, !dbg !2751

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2752, metadata !1846), !dbg !2754
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 2, !dbg !2755
  %10 = bitcast %struct.in_addr* %9 to i8*, !dbg !2756
  store i8* %10, i8** %3, align 8, !dbg !2754
  %11 = load i8*, i8** %3, align 8, !dbg !2757
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !2757
  %13 = load i8, i8* %12, align 1, !dbg !2757
  %14 = zext i8 %13 to i32, !dbg !2757
  %15 = load i8*, i8** %3, align 8, !dbg !2758
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2758
  %17 = load i8, i8* %16, align 1, !dbg !2758
  %18 = zext i8 %17 to i32, !dbg !2758
  %19 = load i8*, i8** %3, align 8, !dbg !2759
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !2759
  %21 = load i8, i8* %20, align 1, !dbg !2759
  %22 = zext i8 %21 to i32, !dbg !2759
  %23 = load i8*, i8** %3, align 8, !dbg !2760
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !2760
  %25 = load i8, i8* %24, align 1, !dbg !2760
  %26 = zext i8 %25 to i32, !dbg !2760
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @tcp_get_address.ipaddr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %14, i32 %18, i32 %22, i32 %26) #7, !dbg !2761
  br label %30, !dbg !2762

; <label>:28:                                     ; preds = %0
  %29 = call i8* @strcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @tcp_get_address.ipaddr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !2763
  br label %30

; <label>:30:                                     ; preds = %28, %8
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @tcp_get_address.ipaddr, i32 0, i32 0), !dbg !2764
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @tcp_is_connected() #0 !dbg !2765 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %2, metadata !2766, metadata !1846), !dbg !2767
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2768, metadata !1846), !dbg !2769
  store i32 16, i32* %3, align 4, !dbg !2769
  %4 = load i32, i32* @g_sock, align 4, !dbg !2770
  %5 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*, !dbg !2772
  %6 = call i32 @getpeername(i32 %4, %struct.sockaddr* %5, i32* %3) #7, !dbg !2773
  %7 = icmp ne i32 %6, 0, !dbg !2773
  br i1 %7, label %8, label %9, !dbg !2774

; <label>:8:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !2775
  br label %10, !dbg !2775

; <label>:9:                                      ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !2776
  br label %10, !dbg !2776

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* %1, align 4, !dbg !2777
  ret i32 %11, !dbg !2777
}

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind uwtable
define void @tcp_reset_state() #0 !dbg !2778 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2779, metadata !1846), !dbg !2780
  call void @s_reset(%struct.stream* @g_in), !dbg !2781
  store i32 0, i32* %1, align 4, !dbg !2782
  br label %2, !dbg !2784

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !2785
  %4 = icmp slt i32 %3, 1, !dbg !2788
  br i1 %4, label %5, label %12, !dbg !2789

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !2790
  %7 = sext i32 %6 to i64, !dbg !2792
  %8 = getelementptr inbounds [1 x %struct.stream], [1 x %struct.stream]* @g_out, i64 0, i64 %7, !dbg !2792
  call void @s_reset(%struct.stream* %8), !dbg !2793
  br label %9, !dbg !2794

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !2795
  %11 = add nsw i32 %10, 1, !dbg !2795
  store i32 %11, i32* %1, align 4, !dbg !2795
  br label %2, !dbg !2797, !llvm.loop !2798

; <label>:12:                                     ; preds = %2
  ret void, !dbg !2800
}

; Function Attrs: nounwind uwtable
define void @tcp_run_ui(i32) #0 !dbg !2801 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2804, metadata !1846), !dbg !2805
  %3 = load i32, i32* %2, align 4, !dbg !2806
  store i32 %3, i32* @g_run_ui, align 4, !dbg !2807
  ret void, !dbg !2808
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1842, !1843}
!llvm.ident = !{!1844}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !63, globals: !91)
!1 = !DIFile(filename: "[inter]tcp.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22, !34}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !23, line: 24, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33}
!25 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!26 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!27 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!28 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!29 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!30 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!31 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!32 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!33 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 40, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!37 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!38 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!39 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!40 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!41 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!42 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!43 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!44 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!45 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!46 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!47 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!48 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!49 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!50 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!51 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!52 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!53 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!54 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!55 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!56 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!57 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!58 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!59 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!60 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!61 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!62 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!63 = !{!64, !65, !69, !71, !75, !87, !90}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !67, line: 39, baseType: !68)
!67 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!68 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !67, line: 41, baseType: !70)
!70 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !35, line: 30, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !73, line: 51, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!74 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !77, line: 153, size: 128, align: 16, elements: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!78 = !{!79, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !76, file: !77, line: 155, baseType: !80, size: 16, align: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !81, line: 28, baseType: !70)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !76, file: !77, line: 156, baseType: !83, size: 112, align: 8, offset: 16)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 112, align: 8, elements: !85)
!84 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !{!86}
!86 = !DISubrange(count: 14)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !88, line: 54, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!89 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!90 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!91 = !{!92, !109, !110, !131, !139, !140, !141, !145, !1837, !1839, !1840, !1841}
!92 = distinct !DIGlobalVariable(name: "g_server_address", scope: !0, file: !93, line: 64, type: !94, isLocal: false, isDefinition: true, variable: %struct.sockaddr_in** @g_server_address)
!93 = !DIFile(filename: "tcp.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !35, line: 239, size: 128, align: 32, elements: !96)
!96 = !{!97, !98, !101, !105}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !95, file: !35, line: 241, baseType: !80, size: 16, align: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !95, file: !35, line: 242, baseType: !99, size: 16, align: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !35, line: 119, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !73, line: 49, baseType: !70)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !95, file: !35, line: 243, baseType: !102, size: 32, align: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !35, line: 31, size: 32, align: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !102, file: !35, line: 33, baseType: !71, size: 32, align: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !95, file: !35, line: 246, baseType: !106, size: 64, align: 8, offset: 64)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 8)
!109 = distinct !DIGlobalVariable(name: "g_tcp_port_rdp", scope: !0, file: !93, line: 75, type: !90, isLocal: false, isDefinition: true, variable: i32* @g_tcp_port_rdp)
!110 = distinct !DIGlobalVariable(name: "cur_stream_id", scope: !111, file: !93, line: 105, type: !90, isLocal: true, isDefinition: true, variable: i32* @tcp_init.cur_stream_id)
!111 = distinct !DISubprogram(name: "tcp_init", scope: !93, file: !93, line: 103, type: !112, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !129}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !115, line: 40, baseType: !116)
!115 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !115, line: 25, size: 576, align: 64, elements: !118)
!118 = !{!119, !121, !122, !123, !124, !125, !126, !127, !128}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !117, file: !115, line: 27, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !117, file: !115, line: 28, baseType: !120, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !117, file: !115, line: 29, baseType: !120, size: 64, align: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !117, file: !115, line: 30, baseType: !74, size: 32, align: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !117, file: !115, line: 33, baseType: !120, size: 64, align: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !117, file: !115, line: 34, baseType: !120, size: 64, align: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !117, file: !115, line: 35, baseType: !120, size: 64, align: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !117, file: !115, line: 36, baseType: !120, size: 64, align: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !117, file: !115, line: 37, baseType: !120, size: 64, align: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !67, line: 43, baseType: !74)
!130 = !{}
!131 = distinct !DIGlobalVariable(name: "ipaddr", scope: !132, file: !93, line: 646, type: !136, isLocal: true, isDefinition: true, variable: [32 x i8]* @tcp_get_address.ipaddr)
!132 = distinct !DISubprogram(name: "tcp_get_address", scope: !93, file: !93, line: 644, type: !133, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!133 = !DISubroutineType(types: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, align: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 32)
!139 = distinct !DIGlobalVariable(name: "g_sock", scope: !0, file: !93, line: 71, type: !90, isLocal: true, isDefinition: true, variable: i32* @g_sock)
!140 = distinct !DIGlobalVariable(name: "g_in", scope: !0, file: !93, line: 73, type: !117, isLocal: true, isDefinition: true, variable: %struct.stream* @g_in)
!141 = distinct !DIGlobalVariable(name: "g_out", scope: !0, file: !93, line: 74, type: !142, isLocal: true, isDefinition: true, variable: [1 x %struct.stream]* @g_out)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 576, align: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = distinct !DIGlobalVariable(name: "g_ssl", scope: !0, file: !93, line: 69, type: !146, isLocal: true, isDefinition: true, variable: %struct.ssl_st** @g_ssl)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !148, line: 178, baseType: !149)
!148 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !150, line: 1422, size: 6592, align: 64, elements: !151)
!150 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!151 = !{!152, !153, !154, !1367, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1497, !1652, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1777, !1778, !1779, !1780, !1781, !1782, !1785, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1805, !1810, !1811, !1818, !1819, !1820, !1821, !1822, !1823, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !149, file: !150, line: 1427, baseType: !90, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !150, line: 1429, baseType: !90, size: 32, align: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !149, file: !150, line: 1431, baseType: !155, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !150, line: 374, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !150, line: 438, size: 1856, align: 64, elements: !159)
!159 = !{!160, !161, !165, !169, !170, !171, !172, !176, !177, !183, !184, !185, !186, !191, !195, !199, !200, !204, !1322, !1326, !1330, !1334, !1338, !1342, !1348, !1352, !1355, !1356, !1363}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !158, file: !150, line: 439, baseType: !90, size: 32, align: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !158, file: !150, line: 440, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!90, !146}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !158, file: !150, line: 441, baseType: !166, size: 64, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !146}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !158, file: !150, line: 442, baseType: !166, size: 64, align: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !158, file: !150, line: 443, baseType: !162, size: 64, align: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !158, file: !150, line: 444, baseType: !162, size: 64, align: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !158, file: !150, line: 445, baseType: !173, size: 64, align: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!90, !146, !64, !90}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !158, file: !150, line: 446, baseType: !173, size: 64, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !158, file: !150, line: 447, baseType: !178, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!90, !146, !181, !90}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !158, file: !150, line: 448, baseType: !162, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !158, file: !150, line: 449, baseType: !162, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !158, file: !150, line: 450, baseType: !162, size: 64, align: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !158, file: !150, line: 451, baseType: !187, size: 64, align: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!89, !146, !90, !90, !90, !89, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !158, file: !150, line: 453, baseType: !192, size: 64, align: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!90, !146, !90, !120, !90, !90}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !158, file: !150, line: 455, baseType: !196, size: 64, align: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!90, !146, !90, !181, !90}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !158, file: !150, line: 456, baseType: !162, size: 64, align: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !158, file: !150, line: 457, baseType: !201, size: 64, align: 64, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!89, !146, !90, !89, !64}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !158, file: !150, line: 458, baseType: !205, size: 64, align: 64, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!89, !208, !90, !89, !64}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !148, line: 179, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !150, line: 925, size: 6400, align: 64, elements: !211)
!211 = !{!212, !213, !231, !232, !935, !940, !941, !1002, !1003, !1004, !1005, !1012, !1017, !1021, !1035, !1036, !1040, !1041, !1047, !1048, !1053, !1057, !1061, !1062, !1122, !1123, !1124, !1125, !1130, !1136, !1141, !1142, !1143, !1144, !1147, !1148, !1152, !1153, !1154, !1155, !1156, !1157, !1162, !1163, !1164, !1165, !1166, !1170, !1171, !1175, !1176, !1177, !1247, !1251, !1252, !1256, !1257, !1258, !1262, !1266, !1267, !1270, !1271, !1294, !1299, !1300, !1305, !1306, !1311, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !210, file: !150, line: 926, baseType: !155, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !210, file: !150, line: 927, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !150, line: 380, size: 256, align: 64, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !215, file: !150, line: 380, baseType: !218, size: 256, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !219, line: 72, baseType: !220)
!219 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !219, line: 66, size: 256, align: 64, elements: !221)
!221 = !{!222, !223, !225, !226, !227}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !220, file: !219, line: 67, baseType: !90, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !220, file: !219, line: 68, baseType: !224, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !220, file: !219, line: 69, baseType: !90, size: 32, align: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !220, file: !219, line: 70, baseType: !90, size: 32, align: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !220, file: !219, line: 71, baseType: !228, size: 64, align: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!90, !181, !181}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !210, file: !150, line: 929, baseType: !214, size: 64, align: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !210, file: !150, line: 930, baseType: !233, size: 64, align: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !235, line: 186, size: 1152, align: 64, elements: !236)
!235 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!236 = !{!237, !238, !243, !248, !275, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !234, file: !235, line: 188, baseType: !90, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !234, file: !235, line: 189, baseType: !239, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !235, line: 137, size: 256, align: 64, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !240, file: !235, line: 137, baseType: !218, size: 256, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !234, file: !235, line: 191, baseType: !244, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !235, line: 136, size: 256, align: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !245, file: !235, line: 136, baseType: !218, size: 256, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !234, file: !235, line: 192, baseType: !249, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !235, line: 177, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !235, line: 167, size: 512, align: 64, elements: !252)
!252 = !{!253, !254, !259, !261, !262, !263, !264, !265, !271}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !235, line: 168, baseType: !135, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !251, file: !235, line: 169, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !256, line: 75, baseType: !257)
!256 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !258, line: 139, baseType: !89)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !251, file: !235, line: 170, baseType: !260, size: 64, align: 64, offset: 128)
!260 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !235, line: 171, baseType: !260, size: 64, align: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !251, file: !235, line: 172, baseType: !90, size: 32, align: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !251, file: !235, line: 173, baseType: !90, size: 32, align: 32, offset: 288)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !251, file: !235, line: 174, baseType: !90, size: 32, align: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !251, file: !235, line: 175, baseType: !266, size: 64, align: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !268, line: 801, size: 256, align: 64, elements: !269)
!268 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !267, file: !268, line: 801, baseType: !218, size: 256, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !251, file: !235, line: 176, baseType: !272, size: 64, align: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !235, line: 159, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !235, line: 159, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !234, file: !235, line: 195, baseType: !276, size: 64, align: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!90, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !148, line: 162, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !235, line: 236, size: 1984, align: 64, elements: !282)
!282 = !{!283, !286, !287, !794, !799, !804, !805, !806, !807, !811, !816, !820, !821, !888, !892, !896, !897, !901, !905, !906, !907, !908, !909, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !281, file: !235, line: 237, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !148, line: 161, baseType: !234)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !281, file: !235, line: 239, baseType: !90, size: 32, align: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !281, file: !235, line: 242, baseType: !288, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !148, line: 154, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !291, line: 270, size: 1472, align: 64, elements: !292)
!291 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!292 = !{!293, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !754, !758, !763, !765, !776, !780}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !290, file: !291, line: 271, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !291, line: 254, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !291, line: 242, size: 832, align: 64, elements: !297)
!297 = !{!298, !307, !308, !390, !414, !423, !424, !713, !714, !715, !720}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !296, file: !291, line: 243, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !148, line: 83, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !268, line: 247, size: 192, align: 64, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !301, file: !268, line: 248, baseType: !90, size: 32, align: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !268, line: 249, baseType: !90, size: 32, align: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !301, file: !268, line: 250, baseType: !120, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !268, line: 256, baseType: !89, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !296, file: !291, line: 244, baseType: !299, size: 64, align: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !296, file: !291, line: 245, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !148, line: 155, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !291, line: 143, size: 128, align: 64, elements: !312)
!312 = !{!313, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !311, file: !291, line: 144, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !148, line: 103, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !268, line: 218, size: 320, align: 64, elements: !317)
!317 = !{!318, !321, !322, !323, !324, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !316, file: !268, line: 219, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !316, file: !268, line: 219, baseType: !319, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !316, file: !268, line: 220, baseType: !90, size: 32, align: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !316, file: !268, line: 221, baseType: !90, size: 32, align: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !316, file: !268, line: 222, baseType: !325, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !268, line: 223, baseType: !90, size: 32, align: 32, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !311, file: !291, line: 145, baseType: !329, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !268, line: 561, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !268, line: 532, size: 128, align: 64, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !268, line: 533, baseType: !90, size: 32, align: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !268, line: 560, baseType: !335, size: 64, align: 64, offset: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !268, line: 534, size: 64, align: 64, elements: !336)
!336 = !{!337, !338, !340, !343, !344, !345, !348, !351, !354, !357, !360, !363, !366, !369, !372, !375, !378, !381, !384, !385, !386}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !335, file: !268, line: 535, baseType: !135, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !335, file: !268, line: 536, baseType: !339, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !148, line: 99, baseType: !90)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !335, file: !268, line: 537, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !148, line: 98, baseType: !301)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !335, file: !268, line: 538, baseType: !314, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !335, file: !268, line: 539, baseType: !299, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !335, file: !268, line: 540, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !148, line: 84, baseType: !301)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !335, file: !268, line: 541, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !148, line: 85, baseType: !301)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !335, file: !268, line: 542, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !148, line: 86, baseType: !301)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !335, file: !268, line: 543, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !148, line: 87, baseType: !301)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !335, file: !268, line: 544, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !148, line: 88, baseType: !301)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !335, file: !268, line: 545, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !148, line: 89, baseType: !301)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !335, file: !268, line: 546, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !148, line: 90, baseType: !301)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !335, file: !268, line: 547, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !148, line: 92, baseType: !301)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !335, file: !268, line: 548, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !148, line: 91, baseType: !301)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !335, file: !268, line: 549, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !148, line: 93, baseType: !301)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !335, file: !268, line: 550, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !148, line: 95, baseType: !301)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !335, file: !268, line: 551, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !148, line: 96, baseType: !301)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !335, file: !268, line: 552, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !148, line: 97, baseType: !301)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !335, file: !268, line: 557, baseType: !341, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !335, file: !268, line: 558, baseType: !341, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !335, file: !268, line: 559, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !268, line: 307, baseType: !389)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !268, line: 307, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !296, file: !291, line: 246, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !148, line: 159, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !291, line: 179, size: 320, align: 64, elements: !394)
!394 = !{!395, !400, !401, !412, !413}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !393, file: !291, line: 180, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !291, line: 175, size: 256, align: 64, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !397, file: !291, line: 175, baseType: !218, size: 256, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !393, file: !291, line: 181, baseType: !90, size: 32, align: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !393, file: !291, line: 183, baseType: !402, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !148, line: 127, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !405, line: 77, size: 192, align: 64, elements: !406)
!405 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!406 = !{!407, !410, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !404, file: !405, line: 78, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !409, line: 216, baseType: !260)
!409 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !404, file: !405, line: 79, baseType: !135, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !404, file: !405, line: 80, baseType: !408, size: 64, align: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !393, file: !291, line: 188, baseType: !120, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !393, file: !291, line: 189, baseType: !90, size: 32, align: 32, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !296, file: !291, line: 247, baseType: !415, size: 64, align: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !291, line: 155, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !291, line: 152, size: 128, align: 64, elements: !418)
!418 = !{!419, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !417, file: !291, line: 153, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !148, line: 94, baseType: !301)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !417, file: !291, line: 154, baseType: !420, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !296, file: !291, line: 248, baseType: !391, size: 64, align: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !296, file: !291, line: 249, baseType: !425, size: 64, align: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !148, line: 160, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !291, line: 157, size: 192, align: 64, elements: !428)
!428 = !{!429, !430, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !427, file: !291, line: 158, baseType: !309, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !427, file: !291, line: 159, baseType: !349, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !427, file: !291, line: 160, baseType: !432, size: 64, align: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !148, line: 133, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !435, line: 129, size: 448, align: 64, elements: !436)
!435 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!436 = !{!437, !438, !439, !440, !445, !449, !707, !708}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !435, line: 130, baseType: !90, size: 32, align: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !434, file: !435, line: 131, baseType: !90, size: 32, align: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !434, file: !435, line: 132, baseType: !90, size: 32, align: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !434, file: !435, line: 133, baseType: !441, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !148, line: 135, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !148, line: 135, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !434, file: !435, line: 134, baseType: !446, size: 64, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !148, line: 177, baseType: !448)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !148, line: 177, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !434, file: !435, line: 149, baseType: !450, size: 64, align: 64, offset: 256)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !435, line: 135, size: 64, align: 64, elements: !451)
!451 = !{!452, !453, !583, !651, !704}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !450, file: !435, line: 136, baseType: !135, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !450, file: !435, line: 138, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !456, line: 132, size: 1344, align: 64, elements: !457)
!456 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!457 = !{!458, !459, !460, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !572, !573, !574, !575, !576, !577, !578, !582}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !455, file: !456, line: 137, baseType: !90, size: 32, align: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !455, file: !456, line: 138, baseType: !89, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !455, file: !456, line: 139, baseType: !461, size: 64, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !148, line: 147, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !456, line: 85, size: 896, align: 64, elements: !465)
!465 = !{!466, !467, !473, !474, !475, !476, !496, !513, !517, !518, !519, !520, !527, !531}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !456, line: 86, baseType: !319, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !464, file: !456, line: 87, baseType: !468, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!90, !90, !325, !120, !471, !90}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !148, line: 146, baseType: !455)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !464, file: !456, line: 89, baseType: !468, size: 64, align: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !464, file: !456, line: 91, baseType: !468, size: 64, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !464, file: !456, line: 93, baseType: !468, size: 64, align: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !464, file: !456, line: 96, baseType: !477, size: 64, align: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!90, !480, !491, !471, !493}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !148, line: 120, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !483, line: 313, size: 192, align: 64, elements: !484)
!483 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!484 = !{!485, !487, !488, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !482, file: !483, line: 314, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !482, file: !483, line: 316, baseType: !90, size: 32, align: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !482, file: !483, line: 318, baseType: !90, size: 32, align: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !482, file: !483, line: 319, baseType: !90, size: 32, align: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !483, line: 320, baseType: !90, size: 32, align: 32, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !148, line: 121, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !148, line: 121, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !464, file: !456, line: 98, baseType: !497, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!90, !480, !491, !491, !491, !493, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !148, line: 123, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !483, line: 324, size: 832, align: 64, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !512}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !502, file: !483, line: 325, baseType: !90, size: 32, align: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !502, file: !483, line: 326, baseType: !481, size: 192, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !502, file: !483, line: 327, baseType: !481, size: 192, align: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !502, file: !483, line: 328, baseType: !481, size: 192, align: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !502, file: !483, line: 330, baseType: !509, size: 128, align: 64, offset: 640)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, align: 64, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 2)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !483, line: 333, baseType: !90, size: 32, align: 32, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !464, file: !456, line: 101, baseType: !514, size: 64, align: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!90, !471}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !464, file: !456, line: 103, baseType: !514, size: 64, align: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !456, line: 105, baseType: !90, size: 32, align: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !464, file: !456, line: 107, baseType: !135, size: 64, align: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !464, file: !456, line: 116, baseType: !521, size: 64, align: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!90, !90, !325, !74, !120, !524, !525}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !464, file: !456, line: 120, baseType: !528, size: 64, align: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!90, !90, !325, !74, !325, !74, !525}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !464, file: !456, line: 129, baseType: !532, size: 64, align: 64, offset: 832)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!90, !471, !90, !480, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !148, line: 125, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !483, line: 349, size: 192, align: 64, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !537, file: !483, line: 350, baseType: !74, size: 32, align: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !537, file: !483, line: 351, baseType: !64, size: 64, align: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !537, file: !483, line: 357, baseType: !542, size: 64, align: 64, offset: 128)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !483, line: 352, size: 64, align: 64, elements: !543)
!543 = !{!544, !548}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !542, file: !483, line: 354, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !90, !90, !64}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !542, file: !483, line: 356, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!90, !90, !90, !535}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !455, file: !456, line: 141, baseType: !446, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !455, file: !456, line: 142, baseType: !480, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !455, file: !456, line: 143, baseType: !480, size: 64, align: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !455, file: !456, line: 144, baseType: !480, size: 64, align: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !455, file: !456, line: 145, baseType: !480, size: 64, align: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !455, file: !456, line: 146, baseType: !480, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !455, file: !456, line: 147, baseType: !480, size: 64, align: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !455, file: !456, line: 148, baseType: !480, size: 64, align: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !455, file: !456, line: 149, baseType: !480, size: 64, align: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !455, file: !456, line: 151, baseType: !562, size: 128, align: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !148, line: 195, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !564, line: 292, size: 128, align: 64, elements: !565)
!564 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!565 = !{!566, !571}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !563, file: !564, line: 293, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !564, line: 297, size: 256, align: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !568, file: !564, line: 297, baseType: !218, size: 256, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !563, file: !564, line: 295, baseType: !90, size: 32, align: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !455, file: !456, line: 152, baseType: !90, size: 32, align: 32, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 153, baseType: !90, size: 32, align: 32, offset: 928)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !455, file: !456, line: 155, baseType: !500, size: 64, align: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !455, file: !456, line: 156, baseType: !500, size: 64, align: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !455, file: !456, line: 157, baseType: !500, size: 64, align: 64, offset: 1088)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !455, file: !456, line: 162, baseType: !135, size: 64, align: 64, offset: 1152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !455, file: !456, line: 163, baseType: !579, size: 64, align: 64, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !148, line: 122, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !148, line: 122, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !455, file: !456, line: 164, baseType: !579, size: 64, align: 64, offset: 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !450, file: !435, line: 141, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !586, line: 155, size: 1088, align: 64, elements: !587)
!586 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !650}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !585, file: !586, line: 160, baseType: !90, size: 32, align: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !585, file: !586, line: 161, baseType: !89, size: 64, align: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !585, file: !586, line: 162, baseType: !90, size: 32, align: 32, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !585, file: !586, line: 163, baseType: !480, size: 64, align: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !585, file: !586, line: 164, baseType: !480, size: 64, align: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !585, file: !586, line: 165, baseType: !480, size: 64, align: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !585, file: !586, line: 166, baseType: !480, size: 64, align: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !585, file: !586, line: 167, baseType: !480, size: 64, align: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !585, file: !586, line: 168, baseType: !480, size: 64, align: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !585, file: !586, line: 169, baseType: !480, size: 64, align: 64, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !586, line: 170, baseType: !90, size: 32, align: 32, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !585, file: !586, line: 172, baseType: !500, size: 64, align: 64, offset: 704)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !585, file: !586, line: 173, baseType: !90, size: 32, align: 32, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !585, file: !586, line: 174, baseType: !562, size: 128, align: 64, offset: 832)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !585, file: !586, line: 175, baseType: !603, size: 64, align: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !148, line: 144, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !586, line: 129, size: 768, align: 64, elements: !607)
!607 = !{!608, !609, !621, !626, !630, !634, !638, !642, !643, !644, !645, !649}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !586, line: 130, baseType: !319, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !606, file: !586, line: 131, baseType: !610, size: 64, align: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!613, !325, !90, !619}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !586, line: 127, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !586, line: 124, size: 128, align: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !615, file: !586, line: 125, baseType: !480, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !615, file: !586, line: 126, baseType: !480, size: 64, align: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !148, line: 143, baseType: !585)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !606, file: !586, line: 132, baseType: !622, size: 64, align: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!90, !619, !493, !625, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !606, file: !586, line: 134, baseType: !627, size: 64, align: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!90, !325, !90, !613, !619}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !606, file: !586, line: 136, baseType: !631, size: 64, align: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!90, !619, !480, !480, !480, !480, !480, !480, !493, !500}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !606, file: !586, line: 140, baseType: !635, size: 64, align: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!90, !619, !480, !480, !491, !491, !493, !500}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !606, file: !586, line: 142, baseType: !639, size: 64, align: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!90, !619}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !606, file: !586, line: 143, baseType: !639, size: 64, align: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !586, line: 144, baseType: !90, size: 32, align: 32, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !606, file: !586, line: 145, baseType: !135, size: 64, align: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !606, file: !586, line: 147, baseType: !646, size: 64, align: 64, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!90, !619, !90, !325, !90, !190, !486, !535}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !606, file: !586, line: 152, baseType: !639, size: 64, align: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !585, file: !586, line: 177, baseType: !446, size: 64, align: 64, offset: 1024)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !450, file: !435, line: 144, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !654, line: 135, size: 1152, align: 64, elements: !655)
!654 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !703}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !653, file: !654, line: 140, baseType: !90, size: 32, align: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !653, file: !654, line: 141, baseType: !90, size: 32, align: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !653, file: !654, line: 142, baseType: !480, size: 64, align: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !653, file: !654, line: 143, baseType: !480, size: 64, align: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !653, file: !654, line: 144, baseType: !89, size: 64, align: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !653, file: !654, line: 145, baseType: !480, size: 64, align: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !653, file: !654, line: 146, baseType: !480, size: 64, align: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !654, line: 147, baseType: !90, size: 32, align: 32, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !653, file: !654, line: 148, baseType: !500, size: 64, align: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !653, file: !654, line: 150, baseType: !480, size: 64, align: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !653, file: !654, line: 151, baseType: !480, size: 64, align: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !653, file: !654, line: 152, baseType: !120, size: 64, align: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !653, file: !654, line: 153, baseType: !90, size: 32, align: 32, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !653, file: !654, line: 154, baseType: !480, size: 64, align: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !653, file: !654, line: 155, baseType: !90, size: 32, align: 32, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !653, file: !654, line: 156, baseType: !562, size: 128, align: 64, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !653, file: !654, line: 157, baseType: !673, size: 64, align: 64, offset: 1024)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !148, line: 141, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !654, line: 117, size: 576, align: 64, elements: !677)
!677 = !{!678, !679, !685, !689, !695, !696, !697, !698, !699}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !654, line: 118, baseType: !319, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !676, file: !654, line: 120, baseType: !680, size: 64, align: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!90, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !148, line: 140, baseType: !653)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !676, file: !654, line: 121, baseType: !686, size: 64, align: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!90, !120, !491, !683}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !676, file: !654, line: 123, baseType: !690, size: 64, align: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!90, !693, !480, !491, !491, !491, !493, !500}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !676, file: !654, line: 126, baseType: !680, size: 64, align: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !676, file: !654, line: 127, baseType: !680, size: 64, align: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !654, line: 128, baseType: !90, size: 32, align: 32, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !676, file: !654, line: 129, baseType: !135, size: 64, align: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !676, file: !654, line: 131, baseType: !700, size: 64, align: 64, offset: 512)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!90, !683, !90, !90, !535}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !653, file: !654, line: 158, baseType: !446, size: 64, align: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !450, file: !435, line: 147, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64, align: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !435, line: 147, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !434, file: !435, line: 150, baseType: !90, size: 32, align: 32, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !434, file: !435, line: 151, baseType: !709, size: 64, align: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !291, line: 223, size: 256, align: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !710, file: !291, line: 223, baseType: !218, size: 256, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !296, file: !291, line: 250, baseType: !349, size: 64, align: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !296, file: !291, line: 251, baseType: !349, size: 64, align: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !296, file: !291, line: 252, baseType: !716, size: 64, align: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !291, line: 204, size: 256, align: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !717, file: !291, line: 204, baseType: !218, size: 256, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !296, file: !291, line: 253, baseType: !721, size: 192, align: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !268, line: 269, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !268, line: 265, size: 192, align: 64, elements: !723)
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !722, file: !268, line: 266, baseType: !120, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !722, file: !268, line: 267, baseType: !89, size: 64, align: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !722, file: !268, line: 268, baseType: !90, size: 32, align: 32, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !290, file: !291, line: 272, baseType: !309, size: 64, align: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !290, file: !291, line: 273, baseType: !349, size: 64, align: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !290, file: !291, line: 274, baseType: !90, size: 32, align: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !290, file: !291, line: 275, baseType: !90, size: 32, align: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 276, baseType: !135, size: 64, align: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !290, file: !291, line: 277, baseType: !562, size: 128, align: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !290, file: !291, line: 279, baseType: !89, size: 64, align: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !290, file: !291, line: 280, baseType: !89, size: 64, align: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !290, file: !291, line: 281, baseType: !260, size: 64, align: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !290, file: !291, line: 282, baseType: !260, size: 64, align: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !290, file: !291, line: 283, baseType: !260, size: 64, align: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !290, file: !291, line: 284, baseType: !260, size: 64, align: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !290, file: !291, line: 285, baseType: !352, size: 64, align: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !290, file: !291, line: 286, baseType: !741, size: 64, align: 64, offset: 896)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !148, line: 186, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !744, line: 262, size: 192, align: 64, elements: !745)
!744 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!745 = !{!746, !747, !753}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !743, file: !744, line: 263, baseType: !352, size: 64, align: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !743, file: !744, line: 264, baseType: !748, size: 64, align: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !744, line: 209, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !744, line: 220, size: 256, align: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !750, file: !744, line: 220, baseType: !218, size: 256, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !743, file: !744, line: 265, baseType: !299, size: 64, align: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !290, file: !291, line: 287, baseType: !755, size: 64, align: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !148, line: 184, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !148, line: 184, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !290, file: !291, line: 288, baseType: !759, size: 64, align: 64, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !744, line: 259, size: 256, align: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !760, file: !744, line: 259, baseType: !218, size: 256, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !290, file: !291, line: 289, baseType: !764, size: 64, align: 64, offset: 1088)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !290, file: !291, line: 290, baseType: !766, size: 64, align: 64, offset: 1152)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !148, line: 189, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !744, line: 332, size: 128, align: 64, elements: !769)
!769 = !{!770, !775}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !768, file: !744, line: 333, baseType: !771, size: 64, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !744, line: 330, size: 256, align: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !772, file: !744, line: 330, baseType: !218, size: 256, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !768, file: !744, line: 334, baseType: !771, size: 64, align: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !290, file: !291, line: 296, baseType: !777, size: 160, align: 8, offset: 1216)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, align: 8, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 20)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !290, file: !291, line: 298, baseType: !781, size: 64, align: 64, offset: 1408)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !291, line: 268, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !291, line: 262, size: 320, align: 64, elements: !784)
!784 = !{!785, !786, !787, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !783, file: !291, line: 263, baseType: !266, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !783, file: !291, line: 264, baseType: !266, size: 64, align: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !783, file: !291, line: 265, baseType: !382, size: 64, align: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !783, file: !291, line: 266, baseType: !352, size: 64, align: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !783, file: !291, line: 267, baseType: !790, size: 64, align: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !268, line: 170, size: 256, align: 64, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !791, file: !268, line: 170, baseType: !218, size: 256, align: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !281, file: !235, line: 244, baseType: !795, size: 64, align: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !291, line: 301, size: 256, align: 64, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !796, file: !291, line: 301, baseType: !218, size: 256, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !281, file: !235, line: 246, baseType: !800, size: 64, align: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !291, line: 476, size: 256, align: 64, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !801, file: !291, line: 476, baseType: !218, size: 256, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !281, file: !235, line: 247, baseType: !249, size: 64, align: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !281, file: !235, line: 249, baseType: !64, size: 64, align: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !281, file: !235, line: 252, baseType: !276, size: 64, align: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !281, file: !235, line: 254, baseType: !808, size: 64, align: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64, align: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!90, !90, !279}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !281, file: !235, line: 256, baseType: !812, size: 64, align: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!90, !815, !279, !288}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !281, file: !235, line: 258, baseType: !817, size: 64, align: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64, align: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!90, !279, !288, !288}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !281, file: !235, line: 260, baseType: !276, size: 64, align: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !281, file: !235, line: 262, baseType: !822, size: 64, align: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!90, !279, !825, !288}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !148, line: 156, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !291, line: 452, size: 960, align: 64, elements: !829)
!829 = !{!830, !847, !848, !849, !850, !851, !852, !874, !875, !876, !877, !878, !879, !882, !887}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !828, file: !291, line: 454, baseType: !831, size: 64, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !291, line: 450, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !291, line: 441, size: 640, align: 64, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !845, !846}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !833, file: !291, line: 442, baseType: !299, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !833, file: !291, line: 443, baseType: !309, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !833, file: !291, line: 444, baseType: !391, size: 64, align: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !833, file: !291, line: 445, baseType: !420, size: 64, align: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !833, file: !291, line: 446, baseType: !420, size: 64, align: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !833, file: !291, line: 447, baseType: !841, size: 64, align: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !291, line: 438, size: 256, align: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !842, file: !291, line: 438, baseType: !218, size: 256, align: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !833, file: !291, line: 448, baseType: !716, size: 64, align: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !833, file: !291, line: 449, baseType: !721, size: 192, align: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !828, file: !291, line: 455, baseType: !309, size: 64, align: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !828, file: !291, line: 456, baseType: !349, size: 64, align: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !828, file: !291, line: 457, baseType: !90, size: 32, align: 32, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !828, file: !291, line: 458, baseType: !90, size: 32, align: 32, offset: 224)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !828, file: !291, line: 460, baseType: !741, size: 64, align: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !828, file: !291, line: 461, baseType: !853, size: 64, align: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !148, line: 188, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !744, line: 356, size: 256, align: 64, elements: !856)
!856 = !{!857, !869, !870, !871, !872, !873}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !855, file: !744, line: 357, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !744, line: 234, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !744, line: 226, size: 192, align: 64, elements: !861)
!861 = !{!862, !863, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !744, line: 227, baseType: !90, size: 32, align: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !860, file: !744, line: 231, baseType: !864, size: 64, align: 64, offset: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !744, line: 228, size: 64, align: 64, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !864, file: !744, line: 229, baseType: !748, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !864, file: !744, line: 230, baseType: !396, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !860, file: !744, line: 233, baseType: !391, size: 64, align: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !855, file: !744, line: 358, baseType: !90, size: 32, align: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !855, file: !744, line: 359, baseType: !90, size: 32, align: 32, offset: 96)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !855, file: !744, line: 360, baseType: !349, size: 64, align: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !855, file: !744, line: 361, baseType: !90, size: 32, align: 32, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !855, file: !744, line: 362, baseType: !90, size: 32, align: 32, offset: 224)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !828, file: !291, line: 463, baseType: !90, size: 32, align: 32, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !828, file: !291, line: 464, baseType: !90, size: 32, align: 32, offset: 416)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !828, file: !291, line: 466, baseType: !299, size: 64, align: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !828, file: !291, line: 467, baseType: !299, size: 64, align: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !828, file: !291, line: 469, baseType: !777, size: 160, align: 8, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !828, file: !291, line: 471, baseType: !880, size: 64, align: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !291, line: 471, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !828, file: !291, line: 472, baseType: !883, size: 64, align: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !148, line: 157, baseType: !886)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !148, line: 157, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !828, file: !291, line: 473, baseType: !64, size: 64, align: 64, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !281, file: !235, line: 264, baseType: !889, size: 64, align: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!90, !279, !826}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !281, file: !235, line: 266, baseType: !893, size: 64, align: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, align: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!90, !279, !826, !288}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !281, file: !235, line: 267, baseType: !276, size: 64, align: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !281, file: !235, line: 268, baseType: !898, size: 64, align: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64, align: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!795, !279, !391}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !281, file: !235, line: 269, baseType: !902, size: 64, align: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64, align: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!800, !279, !391}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !281, file: !235, line: 270, baseType: !276, size: 64, align: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !281, file: !235, line: 273, baseType: !90, size: 32, align: 32, offset: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !281, file: !235, line: 275, baseType: !90, size: 32, align: 32, offset: 1248)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !281, file: !235, line: 277, baseType: !795, size: 64, align: 64, offset: 1280)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !281, file: !235, line: 279, baseType: !910, size: 64, align: 64, offset: 1344)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !148, line: 183, baseType: !912)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !148, line: 183, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !281, file: !235, line: 281, baseType: !90, size: 32, align: 32, offset: 1408)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !281, file: !235, line: 283, baseType: !90, size: 32, align: 32, offset: 1440)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !281, file: !235, line: 284, baseType: !90, size: 32, align: 32, offset: 1472)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !281, file: !235, line: 285, baseType: !288, size: 64, align: 64, offset: 1536)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !281, file: !235, line: 287, baseType: !288, size: 64, align: 64, offset: 1600)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !281, file: !235, line: 289, baseType: !826, size: 64, align: 64, offset: 1664)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !281, file: !235, line: 291, baseType: !90, size: 32, align: 32, offset: 1728)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !281, file: !235, line: 293, baseType: !74, size: 32, align: 32, offset: 1760)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !281, file: !235, line: 295, baseType: !279, size: 64, align: 64, offset: 1792)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !281, file: !235, line: 296, baseType: !562, size: 128, align: 64, offset: 1856)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !234, file: !235, line: 197, baseType: !808, size: 64, align: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !234, file: !235, line: 199, baseType: !812, size: 64, align: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !234, file: !235, line: 201, baseType: !817, size: 64, align: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !234, file: !235, line: 203, baseType: !276, size: 64, align: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !234, file: !235, line: 205, baseType: !822, size: 64, align: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !234, file: !235, line: 207, baseType: !889, size: 64, align: 64, offset: 640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !234, file: !235, line: 209, baseType: !893, size: 64, align: 64, offset: 704)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !234, file: !235, line: 210, baseType: !898, size: 64, align: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !234, file: !235, line: 211, baseType: !902, size: 64, align: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !234, file: !235, line: 212, baseType: !276, size: 64, align: 64, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !234, file: !235, line: 213, baseType: !562, size: 128, align: 64, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !234, file: !235, line: 214, baseType: !90, size: 32, align: 32, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !210, file: !150, line: 931, baseType: !936, size: 64, align: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64, align: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !150, line: 923, size: 32, align: 32, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !937, file: !150, line: 923, baseType: !90, size: 32, align: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !210, file: !150, line: 936, baseType: !260, size: 64, align: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !210, file: !150, line: 937, baseType: !942, size: 64, align: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64, align: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !150, line: 498, size: 2816, align: 64, elements: !944)
!944 = !{!945, !946, !947, !948, !949, !953, !954, !956, !957, !958, !959, !960, !961, !964, !965, !966, !967, !968, !969, !970, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !943, file: !150, line: 499, baseType: !90, size: 32, align: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !943, file: !150, line: 502, baseType: !74, size: 32, align: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !943, file: !150, line: 503, baseType: !106, size: 64, align: 8, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !943, file: !150, line: 504, baseType: !90, size: 32, align: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !943, file: !150, line: 505, baseType: !950, size: 384, align: 8, offset: 160)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 384, align: 8, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 48)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !943, file: !150, line: 507, baseType: !74, size: 32, align: 32, offset: 544)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !943, file: !150, line: 508, baseType: !955, size: 256, align: 8, offset: 576)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, align: 8, elements: !137)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !943, file: !150, line: 514, baseType: !74, size: 32, align: 32, offset: 832)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !943, file: !150, line: 515, baseType: !955, size: 256, align: 8, offset: 864)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !943, file: !150, line: 521, baseType: !135, size: 64, align: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !943, file: !150, line: 522, baseType: !135, size: 64, align: 64, offset: 1216)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !943, file: !150, line: 529, baseType: !90, size: 32, align: 32, offset: 1280)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !943, file: !150, line: 531, baseType: !962, size: 64, align: 64, offset: 1344)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, align: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !150, line: 531, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !943, file: !150, line: 538, baseType: !288, size: 64, align: 64, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !943, file: !150, line: 543, baseType: !89, size: 64, align: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !943, file: !150, line: 544, baseType: !90, size: 32, align: 32, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !943, file: !150, line: 545, baseType: !89, size: 64, align: 64, offset: 1600)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !943, file: !150, line: 546, baseType: !89, size: 64, align: 64, offset: 1664)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !943, file: !150, line: 547, baseType: !74, size: 32, align: 32, offset: 1728)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !943, file: !150, line: 548, baseType: !971, size: 64, align: 64, offset: 1792)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !150, line: 375, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !150, line: 418, size: 704, align: 64, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !974, file: !150, line: 419, baseType: !90, size: 32, align: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !974, file: !150, line: 420, baseType: !319, size: 64, align: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !974, file: !150, line: 421, baseType: !260, size: 64, align: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !974, file: !150, line: 426, baseType: !260, size: 64, align: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !974, file: !150, line: 427, baseType: !260, size: 64, align: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !974, file: !150, line: 428, baseType: !260, size: 64, align: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !974, file: !150, line: 429, baseType: !260, size: 64, align: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !974, file: !150, line: 430, baseType: !260, size: 64, align: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !974, file: !150, line: 431, baseType: !260, size: 64, align: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !974, file: !150, line: 432, baseType: !260, size: 64, align: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !974, file: !150, line: 433, baseType: !90, size: 32, align: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !974, file: !150, line: 434, baseType: !90, size: 32, align: 32, offset: 672)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !943, file: !150, line: 549, baseType: !260, size: 64, align: 64, offset: 1856)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !943, file: !150, line: 551, baseType: !214, size: 64, align: 64, offset: 1920)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !943, file: !150, line: 552, baseType: !562, size: 128, align: 64, offset: 1984)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !943, file: !150, line: 557, baseType: !942, size: 64, align: 64, offset: 2112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !943, file: !150, line: 557, baseType: !942, size: 64, align: 64, offset: 2176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !943, file: !150, line: 559, baseType: !135, size: 64, align: 64, offset: 2240)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !943, file: !150, line: 561, baseType: !408, size: 64, align: 64, offset: 2304)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !943, file: !150, line: 562, baseType: !120, size: 64, align: 64, offset: 2368)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !943, file: !150, line: 563, baseType: !408, size: 64, align: 64, offset: 2432)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !943, file: !150, line: 564, baseType: !120, size: 64, align: 64, offset: 2496)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !943, file: !150, line: 567, baseType: !120, size: 64, align: 64, offset: 2560)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !943, file: !150, line: 568, baseType: !408, size: 64, align: 64, offset: 2624)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !943, file: !150, line: 569, baseType: !89, size: 64, align: 64, offset: 2688)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !943, file: !150, line: 572, baseType: !135, size: 64, align: 64, offset: 2752)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !210, file: !150, line: 938, baseType: !942, size: 64, align: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !210, file: !150, line: 944, baseType: !90, size: 32, align: 32, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !210, file: !150, line: 950, baseType: !89, size: 64, align: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !210, file: !150, line: 960, baseType: !1006, size: 64, align: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, align: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!90, !1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64, align: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !150, line: 376, baseType: !943)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !210, file: !150, line: 961, baseType: !1013, size: 64, align: 64, offset: 704)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64, align: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !1016, !1010}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !210, file: !150, line: 962, baseType: !1018, size: 64, align: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!1010, !1009, !120, !90, !190}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !210, file: !150, line: 980, baseType: !1022, size: 352, align: 32, offset: 832)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !150, line: 964, size: 352, align: 32, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1022, file: !150, line: 965, baseType: !90, size: 32, align: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1022, file: !150, line: 966, baseType: !90, size: 32, align: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1022, file: !150, line: 967, baseType: !90, size: 32, align: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1022, file: !150, line: 968, baseType: !90, size: 32, align: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1022, file: !150, line: 969, baseType: !90, size: 32, align: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1022, file: !150, line: 970, baseType: !90, size: 32, align: 32, offset: 160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1022, file: !150, line: 971, baseType: !90, size: 32, align: 32, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1022, file: !150, line: 972, baseType: !90, size: 32, align: 32, offset: 224)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1022, file: !150, line: 973, baseType: !90, size: 32, align: 32, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1022, file: !150, line: 974, baseType: !90, size: 32, align: 32, offset: 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1022, file: !150, line: 975, baseType: !90, size: 32, align: 32, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !210, file: !150, line: 982, baseType: !90, size: 32, align: 32, offset: 1184)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !210, file: !150, line: 985, baseType: !1037, size: 64, align: 64, offset: 1216)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64, align: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!90, !279, !64}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !210, file: !150, line: 986, baseType: !64, size: 64, align: 64, offset: 1280)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !210, file: !150, line: 993, baseType: !1042, size: 64, align: 64, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1044, line: 389, baseType: !1045)
!1044 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!90, !135, !90, !90, !64}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !210, file: !150, line: 996, baseType: !64, size: 64, align: 64, offset: 1408)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !210, file: !150, line: 999, baseType: !1049, size: 64, align: 64, offset: 1472)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!90, !146, !815, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !210, file: !150, line: 1002, baseType: !1054, size: 64, align: 64, offset: 1536)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64, align: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!90, !146, !120, !524}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !210, file: !150, line: 1006, baseType: !1058, size: 64, align: 64, offset: 1600)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64, align: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!90, !146, !120, !74}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !210, file: !150, line: 1009, baseType: !562, size: 128, align: 64, offset: 1664)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !210, file: !150, line: 1011, baseType: !1063, size: 64, align: 64, offset: 1792)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64, align: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !148, line: 131, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !435, line: 160, size: 960, align: 64, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1092, !1093, !1097, !1103, !1104, !1108, !1112, !1116, !1117, !1118}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !435, line: 161, baseType: !90, size: 32, align: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !1066, file: !435, line: 162, baseType: !90, size: 32, align: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !1066, file: !435, line: 163, baseType: !90, size: 32, align: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !435, line: 164, baseType: !260, size: 64, align: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1066, file: !435, line: 165, baseType: !1073, size: 64, align: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64, align: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!90, !1076}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64, align: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !148, line: 132, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !435, line: 268, size: 384, align: 64, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1088}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !1078, file: !435, line: 269, baseType: !1063, size: 64, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1078, file: !435, line: 270, baseType: !446, size: 64, align: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1078, file: !435, line: 272, baseType: !260, size: 64, align: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !1078, file: !435, line: 273, baseType: !64, size: 64, align: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !1078, file: !435, line: 275, baseType: !1085, size: 64, align: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !148, line: 138, baseType: !1087)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !148, line: 138, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1078, file: !435, line: 277, baseType: !1089, size: 64, align: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64, align: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!90, !1076, !181, !408}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1066, file: !435, line: 166, baseType: !1089, size: 64, align: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1066, file: !435, line: 167, baseType: !1094, size: 64, align: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64, align: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!90, !1076, !120}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1066, file: !435, line: 168, baseType: !1098, size: 64, align: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64, align: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!90, !1076, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1066, file: !435, line: 169, baseType: !1073, size: 64, align: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1066, file: !435, line: 171, baseType: !1105, size: 64, align: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64, align: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!90, !90, !325, !74, !120, !524, !64}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1066, file: !435, line: 173, baseType: !1109, size: 64, align: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!90, !90, !325, !74, !325, !74, !64}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !1066, file: !435, line: 176, baseType: !1113, size: 160, align: 32, offset: 640)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 160, align: 32, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 5)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1066, file: !435, line: 177, baseType: !90, size: 32, align: 32, offset: 800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1066, file: !435, line: 178, baseType: !90, size: 32, align: 32, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !1066, file: !435, line: 180, baseType: !1119, size: 64, align: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64, align: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!90, !1076, !90, !90, !64}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !210, file: !150, line: 1012, baseType: !1063, size: 64, align: 64, offset: 1856)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !210, file: !150, line: 1013, baseType: !1063, size: 64, align: 64, offset: 1920)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !210, file: !150, line: 1015, baseType: !795, size: 64, align: 64, offset: 1984)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !210, file: !150, line: 1016, baseType: !1126, size: 64, align: 64, offset: 2048)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64, align: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !150, line: 922, size: 256, align: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1127, file: !150, line: 922, baseType: !218, size: 256, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !210, file: !150, line: 1021, baseType: !1131, size: 64, align: 64, offset: 2112)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64, align: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1134, !90, !90}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64, align: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !210, file: !150, line: 1024, baseType: !1137, size: 64, align: 64, offset: 2176)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, align: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !291, line: 192, size: 256, align: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1138, file: !291, line: 192, baseType: !218, size: 256, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !210, file: !150, line: 1031, baseType: !260, size: 64, align: 64, offset: 2240)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !210, file: !150, line: 1032, baseType: !260, size: 64, align: 64, offset: 2304)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !210, file: !150, line: 1033, baseType: !89, size: 64, align: 64, offset: 2368)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !210, file: !150, line: 1035, baseType: !1145, size: 64, align: 64, offset: 2432)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64, align: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !150, line: 1035, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !210, file: !150, line: 1036, baseType: !90, size: 32, align: 32, offset: 2496)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !210, file: !150, line: 1039, baseType: !1149, size: 64, align: 64, offset: 2560)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64, align: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !90, !90, !90, !181, !408, !146, !64}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !210, file: !150, line: 1041, baseType: !64, size: 64, align: 64, offset: 2624)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !210, file: !150, line: 1043, baseType: !90, size: 32, align: 32, offset: 2688)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !210, file: !150, line: 1044, baseType: !74, size: 32, align: 32, offset: 2720)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !210, file: !150, line: 1045, baseType: !955, size: 256, align: 8, offset: 2752)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !210, file: !150, line: 1047, baseType: !808, size: 64, align: 64, offset: 3008)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !210, file: !150, line: 1050, baseType: !1158, size: 64, align: 64, offset: 3072)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !150, line: 905, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64, align: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!90, !1134, !120, !524}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !210, file: !150, line: 1052, baseType: !249, size: 64, align: 64, offset: 3136)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !210, file: !150, line: 1059, baseType: !90, size: 32, align: 32, offset: 3200)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !210, file: !150, line: 1065, baseType: !74, size: 32, align: 32, offset: 3232)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !210, file: !150, line: 1071, baseType: !446, size: 64, align: 64, offset: 3264)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !210, file: !150, line: 1076, baseType: !1167, size: 64, align: 64, offset: 3328)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64, align: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!90, !146, !190, !64}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !210, file: !150, line: 1077, baseType: !64, size: 64, align: 64, offset: 3392)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !210, file: !150, line: 1079, baseType: !1172, size: 128, align: 8, offset: 3456)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 128, align: 8, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 16)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !210, file: !150, line: 1080, baseType: !1172, size: 128, align: 8, offset: 3584)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !210, file: !150, line: 1081, baseType: !1172, size: 128, align: 8, offset: 3712)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !210, file: !150, line: 1083, baseType: !1178, size: 64, align: 64, offset: 3840)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64, align: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!90, !146, !120, !120, !1181, !1233, !90}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64, align: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !148, line: 130, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !435, line: 449, size: 1344, align: 64, elements: !1184)
!1184 = !{!1185, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1183, file: !435, line: 450, baseType: !1186, size: 64, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !148, line: 129, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !435, line: 308, size: 704, align: 64, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1200, !1204, !1208, !1209, !1213, !1214, !1218}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1189, file: !435, line: 309, baseType: !90, size: 32, align: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1189, file: !435, line: 310, baseType: !90, size: 32, align: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1189, file: !435, line: 312, baseType: !90, size: 32, align: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !1189, file: !435, line: 313, baseType: !90, size: 32, align: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1189, file: !435, line: 315, baseType: !260, size: 64, align: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1189, file: !435, line: 317, baseType: !1197, size: 64, align: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, align: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!90, !1181, !325, !325, !90}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !1189, file: !435, line: 320, baseType: !1201, size: 64, align: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64, align: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!90, !1181, !120, !325, !408}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1189, file: !435, line: 323, baseType: !1205, size: 64, align: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64, align: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!90, !1181}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1189, file: !435, line: 325, baseType: !90, size: 32, align: 32, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !1189, file: !435, line: 327, baseType: !1210, size: 64, align: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, align: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!90, !1181, !329}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !1189, file: !435, line: 329, baseType: !1210, size: 64, align: 64, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1189, file: !435, line: 331, baseType: !1215, size: 64, align: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64, align: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!90, !1181, !90, !90, !64}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1189, file: !435, line: 333, baseType: !64, size: 64, align: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1183, file: !435, line: 451, baseType: !446, size: 64, align: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !1183, file: !435, line: 453, baseType: !90, size: 32, align: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !1183, file: !435, line: 454, baseType: !90, size: 32, align: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !1183, file: !435, line: 455, baseType: !1172, size: 128, align: 8, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1183, file: !435, line: 456, baseType: !1172, size: 128, align: 8, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1183, file: !435, line: 457, baseType: !955, size: 256, align: 8, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1183, file: !435, line: 458, baseType: !90, size: 32, align: 32, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1183, file: !435, line: 459, baseType: !64, size: 64, align: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1183, file: !435, line: 460, baseType: !90, size: 32, align: 32, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !435, line: 461, baseType: !260, size: 64, align: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !1183, file: !435, line: 462, baseType: !64, size: 64, align: 64, offset: 960)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !1183, file: !435, line: 463, baseType: !90, size: 32, align: 32, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !1183, file: !435, line: 464, baseType: !90, size: 32, align: 32, offset: 1056)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1183, file: !435, line: 465, baseType: !955, size: 256, align: 8, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64, align: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1235, line: 82, baseType: !1236)
!1235 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1235, line: 75, size: 2304, align: 64, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1236, file: !1235, line: 76, baseType: !1063, size: 64, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1236, file: !1235, line: 77, baseType: !1077, size: 384, align: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1236, file: !1235, line: 78, baseType: !1077, size: 384, align: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1236, file: !1235, line: 79, baseType: !1077, size: 384, align: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1236, file: !1235, line: 80, baseType: !74, size: 32, align: 32, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1236, file: !1235, line: 81, baseType: !1244, size: 1024, align: 8, offset: 1248)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, align: 8, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !210, file: !150, line: 1090, baseType: !1248, size: 64, align: 64, offset: 3904)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, align: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!90, !146, !64}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !210, file: !150, line: 1091, baseType: !64, size: 64, align: 64, offset: 3968)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !210, file: !150, line: 1094, baseType: !1253, size: 64, align: 64, offset: 4032)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!90, !146, !64, !408, !64}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !210, file: !150, line: 1096, baseType: !64, size: 64, align: 64, offset: 4096)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !210, file: !150, line: 1100, baseType: !135, size: 64, align: 64, offset: 4160)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !210, file: !150, line: 1101, baseType: !1259, size: 64, align: 64, offset: 4224)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!74, !146, !319, !135, !74, !120, !74}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !210, file: !150, line: 1106, baseType: !1263, size: 64, align: 64, offset: 4288)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64, align: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!74, !146, !319, !120, !74}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !210, file: !150, line: 1113, baseType: !74, size: 32, align: 32, offset: 4352)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !210, file: !150, line: 1114, baseType: !1268, size: 64, align: 64, offset: 4416)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64, align: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !150, line: 1114, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !210, file: !150, line: 1115, baseType: !1268, size: 64, align: 64, offset: 4480)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !210, file: !150, line: 1118, baseType: !1272, size: 1024, align: 64, offset: 4544)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !150, line: 864, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !150, line: 849, size: 1024, align: 64, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1273, file: !150, line: 851, baseType: !64, size: 64, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1273, file: !150, line: 853, baseType: !1167, size: 64, align: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1273, file: !150, line: 855, baseType: !1248, size: 64, align: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1273, file: !150, line: 857, baseType: !1279, size: 64, align: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64, align: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!135, !146, !64}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1273, file: !150, line: 858, baseType: !135, size: 64, align: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1273, file: !150, line: 859, baseType: !480, size: 64, align: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1273, file: !150, line: 859, baseType: !480, size: 64, align: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1273, file: !150, line: 859, baseType: !480, size: 64, align: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1273, file: !150, line: 859, baseType: !480, size: 64, align: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1273, file: !150, line: 859, baseType: !480, size: 64, align: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1273, file: !150, line: 860, baseType: !480, size: 64, align: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1273, file: !150, line: 860, baseType: !480, size: 64, align: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1273, file: !150, line: 860, baseType: !480, size: 64, align: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1273, file: !150, line: 861, baseType: !135, size: 64, align: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1273, file: !150, line: 862, baseType: !90, size: 32, align: 32, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1273, file: !150, line: 863, baseType: !260, size: 64, align: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !210, file: !150, line: 1131, baseType: !1295, size: 64, align: 64, offset: 5568)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64, align: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!90, !146, !1298, !524, !64}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !210, file: !150, line: 1133, baseType: !64, size: 64, align: 64, offset: 5632)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !210, file: !150, line: 1138, baseType: !1301, size: 64, align: 64, offset: 5696)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64, align: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!90, !146, !1304, !120, !325, !74, !64}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !210, file: !150, line: 1142, baseType: !64, size: 64, align: 64, offset: 5760)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !210, file: !150, line: 1145, baseType: !1307, size: 64, align: 64, offset: 5824)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64, align: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !150, line: 388, size: 256, align: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1308, file: !150, line: 388, baseType: !218, size: 256, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !210, file: !150, line: 1162, baseType: !1312, size: 64, align: 64, offset: 5888)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64, align: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!90, !146, !1298, !120, !325, !74, !64}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !210, file: !150, line: 1167, baseType: !64, size: 64, align: 64, offset: 5952)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !210, file: !150, line: 1173, baseType: !120, size: 64, align: 64, offset: 6016)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !210, file: !150, line: 1174, baseType: !74, size: 32, align: 32, offset: 6080)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !210, file: !150, line: 1178, baseType: !408, size: 64, align: 64, offset: 6144)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !210, file: !150, line: 1179, baseType: !120, size: 64, align: 64, offset: 6208)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !210, file: !150, line: 1180, baseType: !408, size: 64, align: 64, offset: 6272)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !210, file: !150, line: 1181, baseType: !120, size: 64, align: 64, offset: 6336)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !158, file: !150, line: 459, baseType: !1323, size: 64, align: 64, offset: 1152)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64, align: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!971, !325}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !158, file: !150, line: 460, baseType: !1327, size: 64, align: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64, align: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!90, !971, !120}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !158, file: !150, line: 461, baseType: !1331, size: 64, align: 64, offset: 1280)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64, align: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!90, !1134}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !158, file: !150, line: 462, baseType: !1335, size: 64, align: 64, offset: 1344)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64, align: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!90}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !158, file: !150, line: 463, baseType: !1339, size: 64, align: 64, offset: 1408)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64, align: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!971, !74}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !158, file: !150, line: 464, baseType: !1343, size: 64, align: 64, offset: 1472)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64, align: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1346, !90}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !158, file: !150, line: 465, baseType: !1349, size: 64, align: 64, offset: 1536)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64, align: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!89}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !158, file: !150, line: 466, baseType: !1353, size: 64, align: 64, offset: 1600)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64, align: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !150, line: 466, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !158, file: !150, line: 467, baseType: !1335, size: 64, align: 64, offset: 1664)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !158, file: !150, line: 468, baseType: !1357, size: 64, align: 64, offset: 1728)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64, align: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!89, !146, !90, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64, align: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !158, file: !150, line: 469, baseType: !1364, size: 64, align: 64, offset: 1792)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!89, !208, !90, !1360}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !149, file: !150, line: 1438, baseType: !1368, size: 64, align: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !1370, line: 238, baseType: !1371)
!1370 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !1370, line: 325, size: 896, align: 64, elements: !1372)
!1372 = !{!1373, !1411, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1371, file: !1370, line: 326, baseType: !1374, size: 64, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !1370, line: 323, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !1370, line: 312, size: 640, align: 64, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1384, !1388, !1392, !1393, !1397, !1401, !1402}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1376, file: !1370, line: 313, baseType: !90, size: 32, align: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1376, file: !1370, line: 314, baseType: !319, size: 64, align: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !1376, file: !1370, line: 315, baseType: !1381, size: 64, align: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64, align: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!90, !1368, !319, !90}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !1376, file: !1370, line: 316, baseType: !1385, size: 64, align: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64, align: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!90, !1368, !135, !90}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !1376, file: !1370, line: 317, baseType: !1389, size: 64, align: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64, align: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!90, !1368, !319}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !1376, file: !1370, line: 318, baseType: !1385, size: 64, align: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1376, file: !1370, line: 319, baseType: !1394, size: 64, align: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64, align: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!89, !1368, !90, !89, !64}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1376, file: !1370, line: 320, baseType: !1398, size: 64, align: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64, align: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!90, !1368}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1376, file: !1370, line: 321, baseType: !1398, size: 64, align: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1376, file: !1370, line: 322, baseType: !1403, size: 64, align: 64, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64, align: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!89, !1368, !90, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !1370, line: 309, baseType: !1408)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410, !90, !319, !90, !89, !89}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1371, file: !1370, line: 328, baseType: !1412, size: 64, align: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64, align: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!89, !1410, !90, !319, !90, !89, !89}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !1371, file: !1370, line: 329, baseType: !135, size: 64, align: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1371, file: !1370, line: 330, baseType: !90, size: 32, align: 32, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1371, file: !1370, line: 331, baseType: !90, size: 32, align: 32, offset: 224)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1370, line: 332, baseType: !90, size: 32, align: 32, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !1371, file: !1370, line: 333, baseType: !90, size: 32, align: 32, offset: 288)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1371, file: !1370, line: 334, baseType: !90, size: 32, align: 32, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1371, file: !1370, line: 335, baseType: !64, size: 64, align: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !1371, file: !1370, line: 336, baseType: !1410, size: 64, align: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !1371, file: !1370, line: 337, baseType: !1410, size: 64, align: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1371, file: !1370, line: 338, baseType: !90, size: 32, align: 32, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !1371, file: !1370, line: 339, baseType: !260, size: 64, align: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !1371, file: !1370, line: 340, baseType: !260, size: 64, align: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1371, file: !1370, line: 341, baseType: !562, size: 128, align: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !149, file: !150, line: 1440, baseType: !1368, size: 64, align: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !149, file: !150, line: 1442, baseType: !1368, size: 64, align: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !149, file: !150, line: 1455, baseType: !90, size: 32, align: 32, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !149, file: !150, line: 1457, baseType: !90, size: 32, align: 32, offset: 352)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !149, file: !150, line: 1458, baseType: !162, size: 64, align: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !149, file: !150, line: 1467, baseType: !90, size: 32, align: 32, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !149, file: !150, line: 1474, baseType: !90, size: 32, align: 32, offset: 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !149, file: !150, line: 1476, baseType: !90, size: 32, align: 32, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !149, file: !150, line: 1478, baseType: !90, size: 32, align: 32, offset: 544)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !150, line: 1480, baseType: !90, size: 32, align: 32, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !149, file: !150, line: 1482, baseType: !90, size: 32, align: 32, offset: 608)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !149, file: !150, line: 1483, baseType: !402, size: 64, align: 64, offset: 640)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !149, file: !150, line: 1484, baseType: !64, size: 64, align: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !149, file: !150, line: 1486, baseType: !90, size: 32, align: 32, offset: 768)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !149, file: !150, line: 1487, baseType: !90, size: 32, align: 32, offset: 800)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !149, file: !150, line: 1489, baseType: !120, size: 64, align: 64, offset: 832)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !149, file: !150, line: 1490, baseType: !74, size: 32, align: 32, offset: 896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !149, file: !150, line: 1491, baseType: !1446, size: 64, align: 64, offset: 960)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64, align: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !1448, line: 163, size: 2752, align: 64, elements: !1449)
!1448 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !1447, file: !1448, line: 164, baseType: !90, size: 32, align: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !1447, file: !1448, line: 165, baseType: !90, size: 32, align: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1447, file: !1448, line: 166, baseType: !90, size: 32, align: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !1447, file: !1448, line: 167, baseType: !90, size: 32, align: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1447, file: !1448, line: 171, baseType: !74, size: 32, align: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1447, file: !1448, line: 172, baseType: !90, size: 32, align: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1447, file: !1448, line: 173, baseType: !325, size: 64, align: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !1447, file: !1448, line: 174, baseType: !90, size: 32, align: 32, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !1447, file: !1448, line: 175, baseType: !90, size: 32, align: 32, offset: 288)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1447, file: !1448, line: 176, baseType: !90, size: 32, align: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !1447, file: !1448, line: 178, baseType: !90, size: 32, align: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !1447, file: !1448, line: 179, baseType: !90, size: 32, align: 32, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1447, file: !1448, line: 180, baseType: !120, size: 64, align: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1447, file: !1448, line: 181, baseType: !120, size: 64, align: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !1447, file: !1448, line: 182, baseType: !120, size: 64, align: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1447, file: !1448, line: 184, baseType: !74, size: 32, align: 32, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !1447, file: !1448, line: 185, baseType: !74, size: 32, align: 32, offset: 672)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !1447, file: !1448, line: 186, baseType: !90, size: 32, align: 32, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !1447, file: !1448, line: 187, baseType: !74, size: 32, align: 32, offset: 736)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !1447, file: !1448, line: 188, baseType: !90, size: 32, align: 32, offset: 768)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !1447, file: !1448, line: 189, baseType: !120, size: 64, align: 64, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !1447, file: !1448, line: 190, baseType: !120, size: 64, align: 64, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !1447, file: !1448, line: 191, baseType: !120, size: 64, align: 64, offset: 960)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !1447, file: !1448, line: 192, baseType: !120, size: 64, align: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !1447, file: !1448, line: 193, baseType: !120, size: 64, align: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !1447, file: !1448, line: 195, baseType: !74, size: 32, align: 32, offset: 1152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !1447, file: !1448, line: 196, baseType: !955, size: 256, align: 8, offset: 1184)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1447, file: !1448, line: 197, baseType: !74, size: 32, align: 32, offset: 1440)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !1447, file: !1448, line: 198, baseType: !1172, size: 128, align: 8, offset: 1472)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !1447, file: !1448, line: 199, baseType: !74, size: 32, align: 32, offset: 1600)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !1447, file: !1448, line: 200, baseType: !950, size: 384, align: 8, offset: 1632)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1447, file: !1448, line: 201, baseType: !260, size: 64, align: 64, offset: 2048)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1447, file: !1448, line: 202, baseType: !260, size: 64, align: 64, offset: 2112)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1447, file: !1448, line: 215, baseType: !1484, size: 576, align: 32, offset: 2176)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !1448, line: 203, size: 576, align: 32, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1484, file: !1448, line: 204, baseType: !74, size: 32, align: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !1484, file: !1448, line: 205, baseType: !74, size: 32, align: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !1484, file: !1448, line: 206, baseType: !74, size: 32, align: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !1484, file: !1448, line: 207, baseType: !74, size: 32, align: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !1484, file: !1448, line: 208, baseType: !74, size: 32, align: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1484, file: !1448, line: 209, baseType: !74, size: 32, align: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !1484, file: !1448, line: 210, baseType: !955, size: 256, align: 8, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !1484, file: !1448, line: 211, baseType: !74, size: 32, align: 32, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1484, file: !1448, line: 212, baseType: !74, size: 32, align: 32, offset: 480)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !1484, file: !1448, line: 213, baseType: !74, size: 32, align: 32, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !1484, file: !1448, line: 214, baseType: !74, size: 32, align: 32, offset: 544)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !149, file: !150, line: 1492, baseType: !1498, size: 64, align: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64, align: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !1500, line: 481, size: 9728, align: 64, elements: !1501)
!1500 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1526, !1527, !1539, !1540, !1542, !1543, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1499, file: !1500, line: 482, baseType: !89, size: 64, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !1499, file: !1500, line: 483, baseType: !90, size: 32, align: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1499, file: !1500, line: 484, baseType: !106, size: 64, align: 8, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !1499, file: !1500, line: 485, baseType: !90, size: 32, align: 32, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !1499, file: !1500, line: 486, baseType: !1507, size: 512, align: 8, offset: 192)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 512, align: 8, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1499, file: !1500, line: 487, baseType: !106, size: 64, align: 8, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !1499, file: !1500, line: 488, baseType: !90, size: 32, align: 32, offset: 768)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !1499, file: !1500, line: 489, baseType: !1507, size: 512, align: 8, offset: 800)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !1499, file: !1500, line: 490, baseType: !955, size: 256, align: 8, offset: 1312)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !1499, file: !1500, line: 491, baseType: !955, size: 256, align: 8, offset: 1568)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !1499, file: !1500, line: 493, baseType: !90, size: 32, align: 32, offset: 1824)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !1499, file: !1500, line: 494, baseType: !90, size: 32, align: 32, offset: 1856)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !1499, file: !1500, line: 496, baseType: !90, size: 32, align: 32, offset: 1888)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1499, file: !1500, line: 497, baseType: !1519, size: 192, align: 64, offset: 1920)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !1500, line: 447, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !1500, line: 438, size: 192, align: 64, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1520, file: !1500, line: 440, baseType: !120, size: 64, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1520, file: !1500, line: 442, baseType: !408, size: 64, align: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1520, file: !1500, line: 444, baseType: !90, size: 32, align: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1520, file: !1500, line: 446, baseType: !90, size: 32, align: 32, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1499, file: !1500, line: 498, baseType: !1519, size: 192, align: 64, offset: 2112)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !1499, file: !1500, line: 499, baseType: !1528, size: 448, align: 64, offset: 2304)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !1500, line: 436, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !1500, line: 403, size: 448, align: 64, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1529, file: !1500, line: 407, baseType: !90, size: 32, align: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1529, file: !1500, line: 411, baseType: !74, size: 32, align: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !1529, file: !1500, line: 415, baseType: !74, size: 32, align: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1529, file: !1500, line: 419, baseType: !120, size: 64, align: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1529, file: !1500, line: 423, baseType: !120, size: 64, align: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1529, file: !1500, line: 427, baseType: !120, size: 64, align: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1529, file: !1500, line: 431, baseType: !260, size: 64, align: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !1529, file: !1500, line: 435, baseType: !106, size: 64, align: 8, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !1499, file: !1500, line: 500, baseType: !1528, size: 448, align: 64, offset: 2752)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1499, file: !1500, line: 505, baseType: !1541, size: 16, align: 8, offset: 3200)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, align: 8, elements: !510)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1499, file: !1500, line: 506, baseType: !74, size: 32, align: 32, offset: 3232)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1499, file: !1500, line: 507, baseType: !1544, size: 32, align: 8, offset: 3264)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, align: 8, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 4)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1499, file: !1500, line: 508, baseType: !74, size: 32, align: 32, offset: 3296)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1499, file: !1500, line: 510, baseType: !74, size: 32, align: 32, offset: 3328)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1499, file: !1500, line: 511, baseType: !90, size: 32, align: 32, offset: 3360)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !1499, file: !1500, line: 512, baseType: !90, size: 32, align: 32, offset: 3392)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1499, file: !1500, line: 513, baseType: !90, size: 32, align: 32, offset: 3424)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1499, file: !1500, line: 514, baseType: !325, size: 64, align: 64, offset: 3456)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !1499, file: !1500, line: 516, baseType: !1368, size: 64, align: 64, offset: 3520)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !1499, file: !1500, line: 521, baseType: !1555, size: 64, align: 64, offset: 3584)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !1499, file: !1500, line: 527, baseType: !90, size: 32, align: 32, offset: 3648)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !1499, file: !1500, line: 528, baseType: !90, size: 32, align: 32, offset: 3680)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !1499, file: !1500, line: 529, baseType: !90, size: 32, align: 32, offset: 3712)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !1499, file: !1500, line: 534, baseType: !90, size: 32, align: 32, offset: 3744)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !1499, file: !1500, line: 535, baseType: !1541, size: 16, align: 8, offset: 3776)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !1499, file: !1500, line: 540, baseType: !90, size: 32, align: 32, offset: 3808)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !1499, file: !1500, line: 541, baseType: !90, size: 32, align: 32, offset: 3840)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !1499, file: !1500, line: 542, baseType: !90, size: 32, align: 32, offset: 3872)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !1499, file: !1500, line: 543, baseType: !90, size: 32, align: 32, offset: 3904)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !1499, file: !1500, line: 549, baseType: !64, size: 64, align: 64, offset: 3968)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !1499, file: !1500, line: 550, baseType: !408, size: 64, align: 64, offset: 4032)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !1499, file: !1500, line: 551, baseType: !64, size: 64, align: 64, offset: 4096)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !1499, file: !1500, line: 552, baseType: !408, size: 64, align: 64, offset: 4160)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1499, file: !1500, line: 592, baseType: !1570, size: 4224, align: 64, offset: 4224)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1499, file: !1500, line: 553, size: 4224, align: 64, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1585, !1586, !1587, !1588, !1589, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1642}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !1570, file: !1500, line: 555, baseType: !1244, size: 1024, align: 8)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !1570, file: !1500, line: 557, baseType: !1244, size: 1024, align: 8, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !1570, file: !1500, line: 558, baseType: !90, size: 32, align: 32, offset: 2048)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !1570, file: !1500, line: 559, baseType: !1244, size: 1024, align: 8, offset: 2080)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !1570, file: !1500, line: 560, baseType: !90, size: 32, align: 32, offset: 3104)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !1570, file: !1500, line: 561, baseType: !260, size: 64, align: 64, offset: 3136)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !1570, file: !1500, line: 562, baseType: !90, size: 32, align: 32, offset: 3200)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !1570, file: !1500, line: 564, baseType: !971, size: 64, align: 64, offset: 3264)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1570, file: !1500, line: 566, baseType: !683, size: 64, align: 64, offset: 3328)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !1570, file: !1500, line: 569, baseType: !1582, size: 64, align: 64, offset: 3392)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64, align: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !1584, line: 741, baseType: !706)
!1584 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !1570, file: !1500, line: 572, baseType: !90, size: 32, align: 32, offset: 3456)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !1570, file: !1500, line: 573, baseType: !90, size: 32, align: 32, offset: 3488)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !1570, file: !1500, line: 575, baseType: !90, size: 32, align: 32, offset: 3520)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !1570, file: !1500, line: 576, baseType: !90, size: 32, align: 32, offset: 3552)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !1570, file: !1500, line: 577, baseType: !1590, size: 72, align: 8, offset: 3584)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 72, align: 8, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 9)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !1570, file: !1500, line: 578, baseType: !1137, size: 64, align: 64, offset: 3712)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !1570, file: !1500, line: 579, baseType: !90, size: 32, align: 32, offset: 3776)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !1570, file: !1500, line: 580, baseType: !90, size: 32, align: 32, offset: 3808)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !1570, file: !1500, line: 581, baseType: !120, size: 64, align: 64, offset: 3840)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !1570, file: !1500, line: 582, baseType: !1186, size: 64, align: 64, offset: 3904)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !1570, file: !1500, line: 583, baseType: !1063, size: 64, align: 64, offset: 3968)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !1570, file: !1500, line: 584, baseType: !90, size: 32, align: 32, offset: 4032)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !1570, file: !1500, line: 585, baseType: !90, size: 32, align: 32, offset: 4064)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !1570, file: !1500, line: 587, baseType: !1602, size: 64, align: 64, offset: 4096)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !150, line: 908, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !150, line: 912, size: 192, align: 64, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1605, file: !150, line: 913, baseType: !90, size: 32, align: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !150, line: 914, baseType: !319, size: 64, align: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1605, file: !150, line: 916, baseType: !1610, size: 64, align: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !1612, line: 29, baseType: !1613)
!1612 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !1612, line: 13, size: 512, align: 64, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1631, !1635, !1639, !1640, !1641}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1613, file: !1612, line: 14, baseType: !90, size: 32, align: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1613, file: !1612, line: 15, baseType: !319, size: 64, align: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1613, file: !1612, line: 16, baseType: !1618, size: 64, align: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64, align: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!90, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64, align: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !1612, line: 11, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !1612, line: 31, size: 448, align: 64, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1623, file: !1612, line: 32, baseType: !1610, size: 64, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !1623, file: !1612, line: 33, baseType: !260, size: 64, align: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !1623, file: !1612, line: 34, baseType: !260, size: 64, align: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !1623, file: !1612, line: 35, baseType: !260, size: 64, align: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !1623, file: !1612, line: 36, baseType: !260, size: 64, align: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1623, file: !1612, line: 37, baseType: !562, size: 128, align: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1613, file: !1612, line: 17, baseType: !1632, size: 64, align: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64, align: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1621}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1613, file: !1612, line: 18, baseType: !1636, size: 64, align: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64, align: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!90, !1621, !120, !74, !120, !74}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !1613, file: !1612, line: 21, baseType: !1636, size: 64, align: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1613, file: !1612, line: 27, baseType: !1349, size: 64, align: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1613, file: !1612, line: 28, baseType: !1349, size: 64, align: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !1570, file: !1500, line: 591, baseType: !90, size: 32, align: 32, offset: 4160)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !1499, file: !1500, line: 595, baseType: !1507, size: 512, align: 8, offset: 8448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !1499, file: !1500, line: 596, baseType: !68, size: 8, align: 8, offset: 8960)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !1499, file: !1500, line: 597, baseType: !1507, size: 512, align: 8, offset: 8968)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !1499, file: !1500, line: 598, baseType: !68, size: 8, align: 8, offset: 9480)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !1499, file: !1500, line: 599, baseType: !90, size: 32, align: 32, offset: 9504)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !1499, file: !1500, line: 605, baseType: !90, size: 32, align: 32, offset: 9536)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !1499, file: !1500, line: 615, baseType: !84, size: 8, align: 8, offset: 9568)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !1499, file: !1500, line: 628, baseType: !120, size: 64, align: 64, offset: 9600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !1499, file: !1500, line: 629, baseType: !74, size: 32, align: 32, offset: 9664)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !149, file: !150, line: 1493, baseType: !1653, size: 64, align: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64, align: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !1655, line: 182, size: 7168, align: 64, elements: !1656)
!1655 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1656 = !{!1657, !1658, !1662, !1663, !1664, !1665, !1666, !1672, !1673, !1674, !1675, !1676, !1677, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1711, !1712, !1718, !1725, !1726, !1727, !1728, !1732, !1733, !1734}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !1654, file: !1655, line: 183, baseType: !74, size: 32, align: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1654, file: !1655, line: 184, baseType: !1659, size: 2048, align: 8, offset: 32)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, align: 8, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !1654, file: !1655, line: 185, baseType: !1659, size: 2048, align: 8, offset: 2080)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !1654, file: !1655, line: 186, baseType: !74, size: 32, align: 32, offset: 4128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !1654, file: !1655, line: 192, baseType: !70, size: 16, align: 16, offset: 4160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !1654, file: !1655, line: 193, baseType: !70, size: 16, align: 16, offset: 4176)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1654, file: !1655, line: 195, baseType: !1667, size: 128, align: 64, offset: 4224)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !1655, line: 133, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !1655, line: 128, size: 128, align: 64, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1668, file: !1655, line: 129, baseType: !260, size: 64, align: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !1668, file: !1655, line: 131, baseType: !106, size: 64, align: 8, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !1654, file: !1655, line: 197, baseType: !1667, size: 128, align: 64, offset: 4352)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !1654, file: !1655, line: 199, baseType: !70, size: 16, align: 16, offset: 4480)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !1654, file: !1655, line: 200, baseType: !70, size: 16, align: 16, offset: 4496)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !1654, file: !1655, line: 201, baseType: !70, size: 16, align: 16, offset: 4512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !1654, file: !1655, line: 203, baseType: !106, size: 64, align: 8, offset: 4528)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !1654, file: !1655, line: 205, baseType: !1678, size: 128, align: 64, offset: 4608)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !1655, line: 174, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !1655, line: 171, size: 128, align: 64, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1679, file: !1655, line: 172, baseType: !70, size: 16, align: 16)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1679, file: !1655, line: 173, baseType: !1683, size: 64, align: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !1684, line: 70, baseType: !1685)
!1684 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64, align: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !1684, line: 70, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !1654, file: !1655, line: 206, baseType: !1678, size: 128, align: 64, offset: 4736)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !1654, file: !1655, line: 208, baseType: !1683, size: 64, align: 64, offset: 4864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !1654, file: !1655, line: 210, baseType: !1683, size: 64, align: 64, offset: 4928)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !1654, file: !1655, line: 216, baseType: !1678, size: 128, align: 64, offset: 4992)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1654, file: !1655, line: 218, baseType: !74, size: 32, align: 32, offset: 5120)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !1654, file: !1655, line: 219, baseType: !74, size: 32, align: 32, offset: 5152)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1654, file: !1655, line: 220, baseType: !74, size: 32, align: 32, offset: 5184)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !1654, file: !1655, line: 221, baseType: !1695, size: 704, align: 64, offset: 5248)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !1655, line: 147, size: 704, align: 64, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1695, file: !1655, line: 148, baseType: !68, size: 8, align: 8)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !1695, file: !1655, line: 149, baseType: !260, size: 64, align: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1695, file: !1655, line: 150, baseType: !70, size: 16, align: 16, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !1695, file: !1655, line: 151, baseType: !260, size: 64, align: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !1695, file: !1655, line: 152, baseType: !260, size: 64, align: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !1695, file: !1655, line: 153, baseType: !74, size: 32, align: 32, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !1695, file: !1655, line: 154, baseType: !1704, size: 320, align: 64, offset: 384)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !1655, line: 135, size: 320, align: 64, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !1704, file: !1655, line: 136, baseType: !1181, size: 64, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !1704, file: !1655, line: 137, baseType: !1076, size: 64, align: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1704, file: !1655, line: 139, baseType: !1621, size: 64, align: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1704, file: !1655, line: 143, baseType: !1010, size: 64, align: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1704, file: !1655, line: 144, baseType: !70, size: 16, align: 16, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !1654, file: !1655, line: 222, baseType: !1695, size: 704, align: 64, offset: 5952)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1654, file: !1655, line: 223, baseType: !1713, size: 96, align: 32, offset: 6656)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !1655, line: 162, size: 96, align: 32, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1713, file: !1655, line: 164, baseType: !74, size: 32, align: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1713, file: !1655, line: 166, baseType: !74, size: 32, align: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1713, file: !1655, line: 168, baseType: !74, size: 32, align: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !1654, file: !1655, line: 227, baseType: !1719, size: 128, align: 64, offset: 6784)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1720, line: 30, size: 128, align: 64, elements: !1721)
!1720 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1719, file: !1720, line: 32, baseType: !257, size: 64, align: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1719, file: !1720, line: 33, baseType: !1724, size: 64, align: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !258, line: 141, baseType: !89)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !1654, file: !1655, line: 229, baseType: !70, size: 16, align: 16, offset: 6912)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1654, file: !1655, line: 234, baseType: !1541, size: 16, align: 8, offset: 6928)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1654, file: !1655, line: 235, baseType: !74, size: 32, align: 32, offset: 6944)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1654, file: !1655, line: 236, baseType: !1729, size: 96, align: 8, offset: 6976)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 96, align: 8, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 12)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1654, file: !1655, line: 237, baseType: !74, size: 32, align: 32, offset: 7072)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !1654, file: !1655, line: 238, baseType: !74, size: 32, align: 32, offset: 7104)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !1654, file: !1655, line: 243, baseType: !74, size: 32, align: 32, offset: 7136)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !149, file: !150, line: 1494, baseType: !90, size: 32, align: 32, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !149, file: !150, line: 1497, baseType: !1149, size: 64, align: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !149, file: !150, line: 1499, baseType: !64, size: 64, align: 64, offset: 1280)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !149, file: !150, line: 1500, baseType: !90, size: 32, align: 32, offset: 1344)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !149, file: !150, line: 1501, baseType: !249, size: 64, align: 64, offset: 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !149, file: !150, line: 1507, baseType: !214, size: 64, align: 64, offset: 1472)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !149, file: !150, line: 1508, baseType: !214, size: 64, align: 64, offset: 1536)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !149, file: !150, line: 1513, baseType: !90, size: 32, align: 32, offset: 1600)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !149, file: !150, line: 1514, baseType: !1181, size: 64, align: 64, offset: 1664)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !149, file: !150, line: 1515, baseType: !1076, size: 64, align: 64, offset: 1728)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !149, file: !150, line: 1517, baseType: !1621, size: 64, align: 64, offset: 1792)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !149, file: !150, line: 1521, baseType: !1181, size: 64, align: 64, offset: 1856)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !149, file: !150, line: 1522, baseType: !1076, size: 64, align: 64, offset: 1920)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !149, file: !150, line: 1524, baseType: !1621, size: 64, align: 64, offset: 1984)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !149, file: !150, line: 1531, baseType: !1145, size: 64, align: 64, offset: 2048)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !149, file: !150, line: 1536, baseType: !74, size: 32, align: 32, offset: 2112)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !149, file: !150, line: 1537, baseType: !955, size: 256, align: 8, offset: 2144)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !149, file: !150, line: 1539, baseType: !1010, size: 64, align: 64, offset: 2432)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !149, file: !150, line: 1541, baseType: !1158, size: 64, align: 64, offset: 2496)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !149, file: !150, line: 1547, baseType: !90, size: 32, align: 32, offset: 2560)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !149, file: !150, line: 1549, baseType: !808, size: 64, align: 64, offset: 2624)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !149, file: !150, line: 1551, baseType: !1131, size: 64, align: 64, offset: 2688)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !149, file: !150, line: 1553, baseType: !90, size: 32, align: 32, offset: 2752)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !149, file: !150, line: 1555, baseType: !90, size: 32, align: 32, offset: 2784)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !149, file: !150, line: 1561, baseType: !1259, size: 64, align: 64, offset: 2816)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !149, file: !150, line: 1566, baseType: !1263, size: 64, align: 64, offset: 2880)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !149, file: !150, line: 1570, baseType: !208, size: 64, align: 64, offset: 2944)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !149, file: !150, line: 1575, baseType: !90, size: 32, align: 32, offset: 3008)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !149, file: !150, line: 1577, baseType: !89, size: 64, align: 64, offset: 3072)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !149, file: !150, line: 1578, baseType: !562, size: 128, align: 64, offset: 3136)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !149, file: !150, line: 1580, baseType: !1137, size: 64, align: 64, offset: 3264)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !149, file: !150, line: 1581, baseType: !90, size: 32, align: 32, offset: 3328)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !149, file: !150, line: 1583, baseType: !260, size: 64, align: 64, offset: 3392)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !149, file: !150, line: 1585, baseType: !260, size: 64, align: 64, offset: 3456)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !149, file: !150, line: 1586, baseType: !89, size: 64, align: 64, offset: 3520)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !149, file: !150, line: 1587, baseType: !90, size: 32, align: 32, offset: 3584)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !149, file: !150, line: 1589, baseType: !90, size: 32, align: 32, offset: 3616)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !149, file: !150, line: 1590, baseType: !74, size: 32, align: 32, offset: 3648)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !149, file: !150, line: 1593, baseType: !1774, size: 64, align: 64, offset: 3712)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64, align: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !146, !90, !90, !120, !90, !64}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !149, file: !150, line: 1595, baseType: !64, size: 64, align: 64, offset: 3776)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !149, file: !150, line: 1596, baseType: !135, size: 64, align: 64, offset: 3840)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !149, file: !150, line: 1603, baseType: !90, size: 32, align: 32, offset: 3904)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !149, file: !150, line: 1606, baseType: !90, size: 32, align: 32, offset: 3936)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !149, file: !150, line: 1608, baseType: !90, size: 32, align: 32, offset: 3968)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !149, file: !150, line: 1610, baseType: !1783, size: 64, align: 64, offset: 4032)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64, align: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !150, line: 1610, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !149, file: !150, line: 1611, baseType: !1786, size: 64, align: 64, offset: 4096)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !291, line: 202, baseType: !717)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !149, file: !150, line: 1613, baseType: !120, size: 64, align: 64, offset: 4160)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !149, file: !150, line: 1614, baseType: !90, size: 32, align: 32, offset: 4224)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !149, file: !150, line: 1616, baseType: !90, size: 32, align: 32, offset: 4256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !149, file: !150, line: 1618, baseType: !408, size: 64, align: 64, offset: 4288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !149, file: !150, line: 1620, baseType: !120, size: 64, align: 64, offset: 4352)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !149, file: !150, line: 1621, baseType: !408, size: 64, align: 64, offset: 4416)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !149, file: !150, line: 1623, baseType: !120, size: 64, align: 64, offset: 4480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !149, file: !150, line: 1629, baseType: !64, size: 64, align: 64, offset: 4544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !149, file: !150, line: 1630, baseType: !408, size: 64, align: 64, offset: 4608)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !149, file: !150, line: 1632, baseType: !1798, size: 64, align: 64, offset: 4672)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64, align: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !150, line: 373, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1801, line: 802, size: 128, align: 64, elements: !1802)
!1801 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1800, file: !1801, line: 803, baseType: !70, size: 16, align: 16)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1800, file: !1801, line: 804, baseType: !64, size: 64, align: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !149, file: !150, line: 1634, baseType: !1806, size: 64, align: 64, offset: 4736)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !150, line: 390, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64, align: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!90, !146, !325, !90, !64}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !149, file: !150, line: 1635, baseType: !64, size: 64, align: 64, offset: 4800)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !149, file: !150, line: 1637, baseType: !1812, size: 64, align: 64, offset: 4864)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !150, line: 393, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64, align: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!90, !146, !64, !190, !214, !1816, !64}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !149, file: !150, line: 1638, baseType: !64, size: 64, align: 64, offset: 4928)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !149, file: !150, line: 1639, baseType: !208, size: 64, align: 64, offset: 4992)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !149, file: !150, line: 1648, baseType: !120, size: 64, align: 64, offset: 5056)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !149, file: !150, line: 1649, baseType: !68, size: 8, align: 8, offset: 5120)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !149, file: !150, line: 1653, baseType: !1307, size: 64, align: 64, offset: 5184)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !149, file: !150, line: 1655, baseType: !1824, size: 64, align: 64, offset: 5248)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !150, line: 386, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !150, line: 383, size: 128, align: 64, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !150, line: 384, baseType: !319, size: 64, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1826, file: !150, line: 385, baseType: !260, size: 64, align: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !149, file: !150, line: 1662, baseType: !74, size: 32, align: 32, offset: 5312)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !149, file: !150, line: 1664, baseType: !74, size: 32, align: 32, offset: 5344)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !149, file: !150, line: 1666, baseType: !74, size: 32, align: 32, offset: 5376)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !149, file: !150, line: 1675, baseType: !90, size: 32, align: 32, offset: 5408)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !149, file: !150, line: 1678, baseType: !1272, size: 1024, align: 64, offset: 5440)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !149, file: !150, line: 1685, baseType: !120, size: 64, align: 64, offset: 6464)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !149, file: !150, line: 1686, baseType: !74, size: 32, align: 32, offset: 6528)
!1837 = distinct !DIGlobalVariable(name: "g_run_ui", scope: !0, file: !93, line: 72, type: !1838, isLocal: true, isDefinition: true, variable: i32* @g_run_ui)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !67, line: 28, baseType: !90)
!1839 = distinct !DIGlobalVariable(name: "g_ssl_initialized", scope: !0, file: !93, line: 68, type: !1838, isLocal: true, isDefinition: true, variable: i32* @g_ssl_initialized)
!1840 = distinct !DIGlobalVariable(name: "g_ssl_ctx", scope: !0, file: !93, line: 70, type: !208, isLocal: true, isDefinition: true, variable: %struct.ssl_ctx_st** @g_ssl_ctx)
!1841 = distinct !DIGlobalVariable(name: "g_last_server_name", scope: !0, file: !93, line: 67, type: !135, isLocal: true, isDefinition: true, variable: i8** @g_last_server_name)
!1842 = !{i32 2, !"Dwarf Version", i32 4}
!1843 = !{i32 2, !"Debug Info Version", i32 3}
!1844 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!1845 = !DILocalVariable(name: "maxlen", arg: 1, scope: !111, file: !93, line: 103, type: !129)
!1846 = !DIExpression()
!1847 = !DILocation(line: 103, column: 17, scope: !111)
!1848 = !DILocalVariable(name: "result", scope: !111, file: !93, line: 106, type: !114)
!1849 = !DILocation(line: 106, column: 9, scope: !111)
!1850 = !DILocation(line: 111, column: 18, scope: !111)
!1851 = !DILocation(line: 111, column: 12, scope: !111)
!1852 = !DILocation(line: 111, column: 9, scope: !111)
!1853 = !DILocation(line: 112, column: 12, scope: !111)
!1854 = !DILocation(line: 112, column: 20, scope: !111)
!1855 = !DILocation(line: 112, column: 2, scope: !111)
!1856 = !DILocation(line: 113, column: 10, scope: !111)
!1857 = !DILocation(line: 113, column: 2, scope: !111)
!1858 = !DILocation(line: 114, column: 19, scope: !111)
!1859 = !DILocation(line: 114, column: 33, scope: !111)
!1860 = !DILocation(line: 114, column: 38, scope: !111)
!1861 = !DILocation(line: 114, column: 16, scope: !111)
!1862 = !DILocation(line: 118, column: 9, scope: !111)
!1863 = !DILocation(line: 118, column: 2, scope: !111)
!1864 = distinct !DISubprogram(name: "tcp_send", scope: !93, file: !93, line: 123, type: !1865, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !114}
!1867 = !DILocalVariable(name: "s", arg: 1, scope: !1864, file: !93, line: 123, type: !114)
!1868 = !DILocation(line: 123, column: 17, scope: !1864)
!1869 = !DILocalVariable(name: "ssl_err", scope: !1864, file: !93, line: 125, type: !90)
!1870 = !DILocation(line: 125, column: 6, scope: !1864)
!1871 = !DILocalVariable(name: "length", scope: !1864, file: !93, line: 126, type: !90)
!1872 = !DILocation(line: 126, column: 6, scope: !1864)
!1873 = !DILocation(line: 126, column: 15, scope: !1864)
!1874 = !DILocation(line: 126, column: 18, scope: !1864)
!1875 = !DILocation(line: 126, column: 24, scope: !1864)
!1876 = !DILocation(line: 126, column: 27, scope: !1864)
!1877 = !DILocation(line: 126, column: 22, scope: !1864)
!1878 = !DILocalVariable(name: "sent", scope: !1864, file: !93, line: 127, type: !90)
!1879 = !DILocation(line: 127, column: 6, scope: !1864)
!1880 = !DILocalVariable(name: "total", scope: !1864, file: !93, line: 127, type: !90)
!1881 = !DILocation(line: 127, column: 12, scope: !1864)
!1882 = !DILocation(line: 129, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1864, file: !93, line: 129, column: 6)
!1884 = !DILocation(line: 129, column: 22, scope: !1883)
!1885 = !DILocation(line: 129, column: 6, scope: !1864)
!1886 = !DILocation(line: 130, column: 3, scope: !1883)
!1887 = !DILocation(line: 135, column: 2, scope: !1864)
!1888 = !DILocation(line: 135, column: 9, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1864, file: !93, discriminator: 1)
!1890 = !DILocation(line: 135, column: 17, scope: !1889)
!1891 = !DILocation(line: 135, column: 15, scope: !1889)
!1892 = !DILocation(line: 135, column: 2, scope: !1889)
!1893 = !DILocation(line: 137, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !93, line: 137, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1864, file: !93, line: 136, column: 2)
!1896 = !DILocation(line: 137, column: 7, scope: !1895)
!1897 = !DILocation(line: 139, column: 21, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !93, line: 138, column: 3)
!1899 = !DILocation(line: 139, column: 28, scope: !1898)
!1900 = !DILocation(line: 139, column: 31, scope: !1898)
!1901 = !DILocation(line: 139, column: 38, scope: !1898)
!1902 = !DILocation(line: 139, column: 36, scope: !1898)
!1903 = !DILocation(line: 139, column: 45, scope: !1898)
!1904 = !DILocation(line: 139, column: 54, scope: !1898)
!1905 = !DILocation(line: 139, column: 52, scope: !1898)
!1906 = !DILocation(line: 139, column: 11, scope: !1898)
!1907 = !DILocation(line: 139, column: 9, scope: !1898)
!1908 = !DILocation(line: 140, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1898, file: !93, line: 140, column: 8)
!1910 = !DILocation(line: 140, column: 13, scope: !1909)
!1911 = !DILocation(line: 140, column: 8, scope: !1898)
!1912 = !DILocation(line: 142, column: 29, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !93, line: 141, column: 4)
!1914 = !DILocation(line: 142, column: 36, scope: !1913)
!1915 = !DILocation(line: 142, column: 15, scope: !1913)
!1916 = !DILocation(line: 142, column: 13, scope: !1913)
!1917 = !DILocation(line: 143, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !93, line: 143, column: 9)
!1919 = !DILocation(line: 143, column: 14, scope: !1918)
!1920 = !DILocation(line: 143, column: 18, scope: !1918)
!1921 = !DILocation(line: 143, column: 22, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1918, file: !93, discriminator: 1)
!1923 = !DILocation(line: 143, column: 30, scope: !1922)
!1924 = !DILocation(line: 143, column: 52, scope: !1922)
!1925 = !DILocation(line: 144, column: 8, scope: !1918)
!1926 = !DILocation(line: 144, column: 16, scope: !1918)
!1927 = !DILocation(line: 143, column: 9, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1913, file: !93, discriminator: 2)
!1929 = !DILocation(line: 146, column: 19, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 145, column: 5)
!1931 = !DILocation(line: 146, column: 6, scope: !1930)
!1932 = !DILocation(line: 147, column: 11, scope: !1930)
!1933 = !DILocation(line: 148, column: 5, scope: !1930)
!1934 = !DILocation(line: 156, column: 13, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 150, column: 5)
!1936 = !DILocation(line: 156, column: 23, scope: !1935)
!1937 = !DILocation(line: 156, column: 22, scope: !1935)
!1938 = !DILocation(line: 156, column: 22, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1935, file: !93, discriminator: 1)
!1940 = !DILocation(line: 154, column: 6, scope: !1935)
!1941 = !DILocation(line: 157, column: 22, scope: !1935)
!1942 = !DILocation(line: 158, column: 6, scope: !1935)
!1943 = !DILocation(line: 160, column: 4, scope: !1913)
!1944 = !DILocation(line: 161, column: 3, scope: !1898)
!1945 = !DILocation(line: 164, column: 16, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1894, file: !93, line: 163, column: 3)
!1947 = !DILocation(line: 164, column: 24, scope: !1946)
!1948 = !DILocation(line: 164, column: 27, scope: !1946)
!1949 = !DILocation(line: 164, column: 34, scope: !1946)
!1950 = !DILocation(line: 164, column: 32, scope: !1946)
!1951 = !DILocation(line: 164, column: 41, scope: !1946)
!1952 = !DILocation(line: 164, column: 50, scope: !1946)
!1953 = !DILocation(line: 164, column: 48, scope: !1946)
!1954 = !DILocation(line: 164, column: 11, scope: !1946)
!1955 = !DILocation(line: 164, column: 9, scope: !1946)
!1956 = !DILocation(line: 165, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1946, file: !93, line: 165, column: 8)
!1958 = !DILocation(line: 165, column: 13, scope: !1957)
!1959 = !DILocation(line: 165, column: 8, scope: !1946)
!1960 = !DILocation(line: 167, column: 9, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !93, line: 167, column: 9)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !93, line: 166, column: 4)
!1963 = !DILocation(line: 167, column: 14, scope: !1961)
!1964 = !DILocation(line: 167, column: 20, scope: !1961)
!1965 = !DILocation(line: 167, column: 24, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1961, file: !93, discriminator: 1)
!1967 = !DILocation(line: 167, column: 23, scope: !1966)
!1968 = !DILocation(line: 167, column: 22, scope: !1966)
!1969 = !DILocation(line: 167, column: 9, scope: !1966)
!1970 = !DILocation(line: 169, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1961, file: !93, line: 168, column: 5)
!1972 = !DILocation(line: 169, column: 6, scope: !1971)
!1973 = !DILocation(line: 170, column: 11, scope: !1971)
!1974 = !DILocation(line: 171, column: 5, scope: !1971)
!1975 = !DILocation(line: 178, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1961, file: !93, line: 173, column: 5)
!1977 = !DILocation(line: 178, column: 13, scope: !1976)
!1978 = !DILocation(line: 178, column: 13, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1976, file: !93, discriminator: 1)
!1980 = !DILocation(line: 177, column: 6, scope: !1976)
!1981 = !DILocation(line: 179, column: 22, scope: !1976)
!1982 = !DILocation(line: 180, column: 6, scope: !1976)
!1983 = !DILocation(line: 182, column: 4, scope: !1962)
!1984 = !DILocation(line: 184, column: 12, scope: !1895)
!1985 = !DILocation(line: 184, column: 9, scope: !1895)
!1986 = !DILocation(line: 135, column: 2, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1864, file: !93, discriminator: 2)
!1988 = distinct !{!1988, !1887}
!1989 = !DILocation(line: 189, column: 1, scope: !1864)
!1990 = distinct !DISubprogram(name: "tcp_can_send", scope: !93, file: !93, line: 83, type: !1991, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1838, !90, !90}
!1993 = !DILocalVariable(name: "sck", arg: 1, scope: !1990, file: !93, line: 83, type: !90)
!1994 = !DILocation(line: 83, column: 18, scope: !1990)
!1995 = !DILocalVariable(name: "millis", arg: 2, scope: !1990, file: !93, line: 83, type: !90)
!1996 = !DILocation(line: 83, column: 27, scope: !1990)
!1997 = !DILocalVariable(name: "wfds", scope: !1990, file: !93, line: 85, type: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !88, line: 75, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 64, size: 1024, align: 64, elements: !2000)
!2000 = !{!2001}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__fds_bits", scope: !1999, file: !88, line: 72, baseType: !2002, size: 1024, align: 64)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, align: 64, elements: !1173)
!2003 = !DILocation(line: 85, column: 9, scope: !1990)
!2004 = !DILocalVariable(name: "time", scope: !1990, file: !93, line: 86, type: !1719)
!2005 = !DILocation(line: 86, column: 17, scope: !1990)
!2006 = !DILocalVariable(name: "sel_count", scope: !1990, file: !93, line: 87, type: !90)
!2007 = !DILocation(line: 87, column: 6, scope: !1990)
!2008 = !DILocation(line: 89, column: 16, scope: !1990)
!2009 = !DILocation(line: 89, column: 23, scope: !1990)
!2010 = !DILocation(line: 89, column: 7, scope: !1990)
!2011 = !DILocation(line: 89, column: 14, scope: !1990)
!2012 = !DILocation(line: 90, column: 18, scope: !1990)
!2013 = !DILocation(line: 90, column: 25, scope: !1990)
!2014 = !DILocation(line: 90, column: 33, scope: !1990)
!2015 = !DILocation(line: 90, column: 17, scope: !1990)
!2016 = !DILocation(line: 90, column: 7, scope: !1990)
!2017 = !DILocation(line: 90, column: 15, scope: !1990)
!2018 = !DILocation(line: 91, column: 1, scope: !1990)
!2019 = distinct !{!2019, !2018}
!2020 = !DILocalVariable(name: "__d0", scope: !2021, file: !93, line: 91, type: !90)
!2021 = distinct !DILexicalBlock(scope: !1990, file: !93, line: 91, column: 4)
!2022 = !DILocation(line: 91, column: 10, scope: !2021)
!2023 = !DILocalVariable(name: "__d1", scope: !2021, file: !93, line: 91, type: !90)
!2024 = !DILocation(line: 91, column: 16, scope: !2021)
!2025 = !DILocation(line: 91, column: 4, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2021, file: !93, discriminator: 1)
!2027 = !DILocation(line: 91, column: 153, scope: !2026)
!2028 = !DILocation(line: 91, column: 22, scope: !2026)
!2029 = !{i32 444585}
!2030 = !DILocation(line: 91, column: 33, scope: !2026)
!2031 = !DILocation(line: 92, column: 1, scope: !1990)
!2032 = !DILocation(line: 92, column: 3, scope: !1990)
!2033 = !DILocation(line: 92, column: 59, scope: !1990)
!2034 = !DILocation(line: 92, column: 10, scope: !1990)
!2035 = !DILocation(line: 92, column: 4, scope: !1990)
!2036 = !DILocation(line: 92, column: 38, scope: !1990)
!2037 = !DILocation(line: 93, column: 21, scope: !1990)
!2038 = !DILocation(line: 93, column: 25, scope: !1990)
!2039 = !DILocation(line: 93, column: 14, scope: !1990)
!2040 = !DILocation(line: 93, column: 12, scope: !1990)
!2041 = !DILocation(line: 94, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1990, file: !93, line: 94, column: 6)
!2043 = !DILocation(line: 94, column: 16, scope: !2042)
!2044 = !DILocation(line: 94, column: 6, scope: !1990)
!2045 = !DILocation(line: 96, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !93, line: 95, column: 2)
!2047 = !DILocation(line: 98, column: 2, scope: !1990)
!2048 = !DILocation(line: 99, column: 1, scope: !1990)
!2049 = distinct !DISubprogram(name: "tcp_recv", scope: !93, file: !93, line: 193, type: !2050, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!114, !114, !129}
!2052 = !DILocalVariable(name: "s", arg: 1, scope: !2049, file: !93, line: 193, type: !114)
!2053 = !DILocation(line: 193, column: 17, scope: !2049)
!2054 = !DILocalVariable(name: "length", arg: 2, scope: !2049, file: !93, line: 193, type: !129)
!2055 = !DILocation(line: 193, column: 27, scope: !2049)
!2056 = !DILocalVariable(name: "new_length", scope: !2049, file: !93, line: 195, type: !129)
!2057 = !DILocation(line: 195, column: 9, scope: !2049)
!2058 = !DILocalVariable(name: "end_offset", scope: !2049, file: !93, line: 195, type: !129)
!2059 = !DILocation(line: 195, column: 21, scope: !2049)
!2060 = !DILocalVariable(name: "p_offset", scope: !2049, file: !93, line: 195, type: !129)
!2061 = !DILocation(line: 195, column: 33, scope: !2049)
!2062 = !DILocalVariable(name: "rcvd", scope: !2049, file: !93, line: 196, type: !90)
!2063 = !DILocation(line: 196, column: 6, scope: !2049)
!2064 = !DILocalVariable(name: "ssl_err", scope: !2049, file: !93, line: 196, type: !90)
!2065 = !DILocation(line: 196, column: 16, scope: !2049)
!2066 = !DILocation(line: 198, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2049, file: !93, line: 198, column: 6)
!2068 = !DILocation(line: 198, column: 22, scope: !2067)
!2069 = !DILocation(line: 198, column: 6, scope: !2049)
!2070 = !DILocation(line: 199, column: 3, scope: !2067)
!2071 = !DILocation(line: 201, column: 6, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2049, file: !93, line: 201, column: 6)
!2073 = !DILocation(line: 201, column: 8, scope: !2072)
!2074 = !DILocation(line: 201, column: 6, scope: !2049)
!2075 = !DILocation(line: 204, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !93, line: 204, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !93, line: 202, column: 2)
!2078 = !DILocation(line: 204, column: 21, scope: !2076)
!2079 = !DILocation(line: 204, column: 14, scope: !2076)
!2080 = !DILocation(line: 204, column: 7, scope: !2077)
!2081 = !DILocation(line: 206, column: 40, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2076, file: !93, line: 205, column: 3)
!2083 = !DILocation(line: 206, column: 46, scope: !2082)
!2084 = !DILocation(line: 206, column: 26, scope: !2082)
!2085 = !DILocation(line: 206, column: 14, scope: !2082)
!2086 = !DILocation(line: 207, column: 16, scope: !2082)
!2087 = !DILocation(line: 207, column: 14, scope: !2082)
!2088 = !DILocation(line: 208, column: 3, scope: !2082)
!2089 = !DILocation(line: 209, column: 28, scope: !2077)
!2090 = !DILocation(line: 209, column: 21, scope: !2077)
!2091 = !DILocation(line: 209, column: 12, scope: !2077)
!2092 = !DILocation(line: 210, column: 5, scope: !2077)
!2093 = !DILocation(line: 211, column: 2, scope: !2077)
!2094 = !DILocation(line: 215, column: 17, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2072, file: !93, line: 213, column: 2)
!2096 = !DILocation(line: 215, column: 20, scope: !2095)
!2097 = !DILocation(line: 215, column: 26, scope: !2095)
!2098 = !DILocation(line: 215, column: 29, scope: !2095)
!2099 = !DILocation(line: 215, column: 24, scope: !2095)
!2100 = !DILocation(line: 215, column: 37, scope: !2095)
!2101 = !DILocation(line: 215, column: 35, scope: !2095)
!2102 = !DILocation(line: 215, column: 16, scope: !2095)
!2103 = !DILocation(line: 215, column: 14, scope: !2095)
!2104 = !DILocation(line: 216, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2095, file: !93, line: 216, column: 7)
!2106 = !DILocation(line: 216, column: 20, scope: !2105)
!2107 = !DILocation(line: 216, column: 23, scope: !2105)
!2108 = !DILocation(line: 216, column: 18, scope: !2105)
!2109 = !DILocation(line: 216, column: 7, scope: !2095)
!2110 = !DILocation(line: 218, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !93, line: 217, column: 3)
!2112 = !DILocation(line: 218, column: 18, scope: !2111)
!2113 = !DILocation(line: 218, column: 22, scope: !2111)
!2114 = !DILocation(line: 218, column: 25, scope: !2111)
!2115 = !DILocation(line: 218, column: 20, scope: !2111)
!2116 = !DILocation(line: 218, column: 13, scope: !2111)
!2117 = !DILocation(line: 219, column: 17, scope: !2111)
!2118 = !DILocation(line: 219, column: 20, scope: !2111)
!2119 = !DILocation(line: 219, column: 26, scope: !2111)
!2120 = !DILocation(line: 219, column: 29, scope: !2111)
!2121 = !DILocation(line: 219, column: 24, scope: !2111)
!2122 = !DILocation(line: 219, column: 15, scope: !2111)
!2123 = !DILocation(line: 220, column: 33, scope: !2111)
!2124 = !DILocation(line: 220, column: 36, scope: !2111)
!2125 = !DILocation(line: 220, column: 42, scope: !2111)
!2126 = !DILocation(line: 220, column: 24, scope: !2111)
!2127 = !DILocation(line: 220, column: 4, scope: !2111)
!2128 = !DILocation(line: 220, column: 7, scope: !2111)
!2129 = !DILocation(line: 220, column: 12, scope: !2111)
!2130 = !DILocation(line: 221, column: 14, scope: !2111)
!2131 = !DILocation(line: 221, column: 4, scope: !2111)
!2132 = !DILocation(line: 221, column: 7, scope: !2111)
!2133 = !DILocation(line: 221, column: 12, scope: !2111)
!2134 = !DILocation(line: 222, column: 11, scope: !2111)
!2135 = !DILocation(line: 222, column: 14, scope: !2111)
!2136 = !DILocation(line: 222, column: 21, scope: !2111)
!2137 = !DILocation(line: 222, column: 19, scope: !2111)
!2138 = !DILocation(line: 222, column: 4, scope: !2111)
!2139 = !DILocation(line: 222, column: 7, scope: !2111)
!2140 = !DILocation(line: 222, column: 9, scope: !2111)
!2141 = !DILocation(line: 223, column: 13, scope: !2111)
!2142 = !DILocation(line: 223, column: 16, scope: !2111)
!2143 = !DILocation(line: 223, column: 23, scope: !2111)
!2144 = !DILocation(line: 223, column: 21, scope: !2111)
!2145 = !DILocation(line: 223, column: 4, scope: !2111)
!2146 = !DILocation(line: 223, column: 7, scope: !2111)
!2147 = !DILocation(line: 223, column: 11, scope: !2111)
!2148 = !DILocation(line: 224, column: 3, scope: !2111)
!2149 = !DILocation(line: 227, column: 2, scope: !2049)
!2150 = !DILocation(line: 227, column: 9, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2049, file: !93, discriminator: 1)
!2152 = !DILocation(line: 227, column: 16, scope: !2151)
!2153 = !DILocation(line: 227, column: 2, scope: !2151)
!2154 = !DILocation(line: 229, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !93, line: 229, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2049, file: !93, line: 228, column: 2)
!2157 = !DILocation(line: 229, column: 15, scope: !2155)
!2158 = !DILocation(line: 229, column: 30, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2155, file: !93, discriminator: 1)
!2160 = !DILocation(line: 229, column: 18, scope: !2159)
!2161 = !DILocation(line: 229, column: 37, scope: !2159)
!2162 = !DILocation(line: 229, column: 43, scope: !2159)
!2163 = !DILocation(line: 229, column: 46, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2155, file: !93, discriminator: 2)
!2165 = !DILocation(line: 229, column: 7, scope: !2164)
!2166 = !DILocation(line: 231, column: 14, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2155, file: !93, line: 230, column: 3)
!2168 = !DILocation(line: 231, column: 4, scope: !2167)
!2169 = !DILocation(line: 235, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !93, line: 235, column: 8)
!2171 = !DILocation(line: 235, column: 24, scope: !2170)
!2172 = !DILocation(line: 235, column: 8, scope: !2167)
!2173 = !DILocation(line: 236, column: 5, scope: !2170)
!2174 = !DILocation(line: 237, column: 3, scope: !2167)
!2175 = !DILocation(line: 239, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2156, file: !93, line: 239, column: 7)
!2177 = !DILocation(line: 239, column: 7, scope: !2156)
!2178 = !DILocation(line: 241, column: 20, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !93, line: 240, column: 3)
!2180 = !DILocation(line: 241, column: 27, scope: !2179)
!2181 = !DILocation(line: 241, column: 30, scope: !2179)
!2182 = !DILocation(line: 241, column: 35, scope: !2179)
!2183 = !DILocation(line: 241, column: 11, scope: !2179)
!2184 = !DILocation(line: 241, column: 9, scope: !2179)
!2185 = !DILocation(line: 242, column: 28, scope: !2179)
!2186 = !DILocation(line: 242, column: 35, scope: !2179)
!2187 = !DILocation(line: 242, column: 14, scope: !2179)
!2188 = !DILocation(line: 242, column: 12, scope: !2179)
!2189 = !DILocation(line: 244, column: 8, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !93, line: 244, column: 8)
!2191 = !DILocation(line: 244, column: 16, scope: !2190)
!2192 = !DILocation(line: 244, column: 8, scope: !2179)
!2193 = !DILocation(line: 246, column: 26, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !93, line: 246, column: 9)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !93, line: 245, column: 4)
!2196 = !DILocation(line: 246, column: 9, scope: !2194)
!2197 = !DILocation(line: 246, column: 33, scope: !2194)
!2198 = !DILocation(line: 246, column: 9, scope: !2195)
!2199 = !DILocation(line: 248, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2194, file: !93, line: 247, column: 5)
!2201 = !DILocation(line: 250, column: 6, scope: !2200)
!2202 = !DILocation(line: 253, column: 5, scope: !2195)
!2203 = !DILocation(line: 254, column: 21, scope: !2195)
!2204 = !DILocation(line: 255, column: 5, scope: !2195)
!2205 = !DILocation(line: 258, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2179, file: !93, line: 258, column: 8)
!2207 = !DILocation(line: 258, column: 16, scope: !2206)
!2208 = !DILocation(line: 258, column: 38, scope: !2206)
!2209 = !DILocation(line: 258, column: 41, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2206, file: !93, discriminator: 1)
!2211 = !DILocation(line: 258, column: 49, scope: !2210)
!2212 = !DILocation(line: 258, column: 8, scope: !2210)
!2213 = !DILocation(line: 260, column: 10, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2206, file: !93, line: 259, column: 4)
!2215 = !DILocation(line: 261, column: 4, scope: !2214)
!2216 = !DILocation(line: 262, column: 13, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2206, file: !93, line: 262, column: 13)
!2218 = !DILocation(line: 262, column: 21, scope: !2217)
!2219 = !DILocation(line: 262, column: 13, scope: !2206)
!2220 = !DILocation(line: 265, column: 12, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !93, line: 263, column: 4)
!2222 = !DILocation(line: 265, column: 22, scope: !2221)
!2223 = !DILocation(line: 265, column: 21, scope: !2221)
!2224 = !DILocation(line: 265, column: 21, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2221, file: !93, discriminator: 1)
!2226 = !DILocation(line: 264, column: 5, scope: !2221)
!2227 = !DILocation(line: 266, column: 21, scope: !2221)
!2228 = !DILocation(line: 267, column: 5, scope: !2221)
!2229 = !DILocation(line: 270, column: 3, scope: !2179)
!2230 = !DILocation(line: 273, column: 16, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2176, file: !93, line: 272, column: 3)
!2232 = !DILocation(line: 273, column: 24, scope: !2231)
!2233 = !DILocation(line: 273, column: 27, scope: !2231)
!2234 = !DILocation(line: 273, column: 32, scope: !2231)
!2235 = !DILocation(line: 273, column: 11, scope: !2231)
!2236 = !DILocation(line: 273, column: 9, scope: !2231)
!2237 = !DILocation(line: 274, column: 8, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2231, file: !93, line: 274, column: 8)
!2239 = !DILocation(line: 274, column: 13, scope: !2238)
!2240 = !DILocation(line: 274, column: 8, scope: !2231)
!2241 = !DILocation(line: 276, column: 9, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !93, line: 276, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !93, line: 275, column: 4)
!2244 = !DILocation(line: 276, column: 14, scope: !2242)
!2245 = !DILocation(line: 276, column: 20, scope: !2242)
!2246 = !DILocation(line: 276, column: 24, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2242, file: !93, discriminator: 1)
!2248 = !DILocation(line: 276, column: 23, scope: !2247)
!2249 = !DILocation(line: 276, column: 22, scope: !2247)
!2250 = !DILocation(line: 276, column: 9, scope: !2247)
!2251 = !DILocation(line: 278, column: 11, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2242, file: !93, line: 277, column: 5)
!2253 = !DILocation(line: 279, column: 5, scope: !2252)
!2254 = !DILocation(line: 283, column: 14, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2242, file: !93, line: 281, column: 5)
!2256 = !DILocation(line: 283, column: 13, scope: !2255)
!2257 = !DILocation(line: 283, column: 13, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2255, file: !93, discriminator: 1)
!2259 = !DILocation(line: 282, column: 6, scope: !2255)
!2260 = !DILocation(line: 284, column: 22, scope: !2255)
!2261 = !DILocation(line: 285, column: 6, scope: !2255)
!2262 = !DILocation(line: 287, column: 4, scope: !2243)
!2263 = !DILocation(line: 288, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2238, file: !93, line: 288, column: 13)
!2265 = !DILocation(line: 288, column: 18, scope: !2264)
!2266 = !DILocation(line: 288, column: 13, scope: !2238)
!2267 = !DILocation(line: 290, column: 5, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !93, line: 289, column: 4)
!2269 = !DILocation(line: 291, column: 5, scope: !2268)
!2270 = !DILocation(line: 295, column: 13, scope: !2156)
!2271 = !DILocation(line: 295, column: 3, scope: !2156)
!2272 = !DILocation(line: 295, column: 6, scope: !2156)
!2273 = !DILocation(line: 295, column: 10, scope: !2156)
!2274 = !DILocation(line: 296, column: 13, scope: !2156)
!2275 = !DILocation(line: 296, column: 10, scope: !2156)
!2276 = !DILocation(line: 227, column: 2, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2049, file: !93, discriminator: 2)
!2278 = distinct !{!2278, !2149}
!2279 = !DILocation(line: 299, column: 9, scope: !2049)
!2280 = !DILocation(line: 299, column: 2, scope: !2049)
!2281 = !DILocation(line: 300, column: 1, scope: !2049)
!2282 = distinct !DISubprogram(name: "tcp_tls_connect", scope: !93, file: !93, line: 304, type: !2283, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!1838}
!2285 = !DILocalVariable(name: "err", scope: !2282, file: !93, line: 306, type: !90)
!2286 = !DILocation(line: 306, column: 6, scope: !2282)
!2287 = !DILocalVariable(name: "options", scope: !2282, file: !93, line: 307, type: !89)
!2288 = !DILocation(line: 307, column: 7, scope: !2282)
!2289 = !DILocation(line: 309, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 309, column: 6)
!2291 = !DILocation(line: 309, column: 6, scope: !2282)
!2292 = !DILocation(line: 311, column: 3, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !93, line: 310, column: 2)
!2294 = !DILocation(line: 312, column: 3, scope: !2293)
!2295 = !DILocation(line: 313, column: 21, scope: !2293)
!2296 = !DILocation(line: 314, column: 2, scope: !2293)
!2297 = !DILocation(line: 317, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 317, column: 6)
!2299 = !DILocation(line: 317, column: 16, scope: !2298)
!2300 = !DILocation(line: 317, column: 6, scope: !2282)
!2301 = !DILocation(line: 319, column: 27, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !93, line: 318, column: 2)
!2303 = !DILocation(line: 319, column: 15, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2302, file: !93, discriminator: 1)
!2305 = !DILocation(line: 319, column: 13, scope: !2302)
!2306 = !DILocation(line: 320, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !93, line: 320, column: 7)
!2308 = !DILocation(line: 320, column: 17, scope: !2307)
!2309 = !DILocation(line: 320, column: 7, scope: !2302)
!2310 = !DILocation(line: 322, column: 4, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !93, line: 321, column: 3)
!2312 = !DILocation(line: 324, column: 1, scope: !2311)
!2313 = !DILocation(line: 325, column: 4, scope: !2311)
!2314 = !DILocation(line: 328, column: 11, scope: !2302)
!2315 = !DILocation(line: 330, column: 11, scope: !2302)
!2316 = !DILocation(line: 331, column: 11, scope: !2302)
!2317 = !DILocation(line: 332, column: 2, scope: !2302)
!2318 = !DILocation(line: 333, column: 2, scope: !2302)
!2319 = !DILocation(line: 336, column: 6, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 336, column: 6)
!2321 = !DILocation(line: 336, column: 6, scope: !2282)
!2322 = !DILocation(line: 337, column: 12, scope: !2320)
!2323 = !DILocation(line: 337, column: 3, scope: !2320)
!2324 = !DILocation(line: 340, column: 18, scope: !2282)
!2325 = !DILocation(line: 340, column: 10, scope: !2282)
!2326 = !DILocation(line: 340, column: 8, scope: !2282)
!2327 = !DILocation(line: 341, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 341, column: 6)
!2329 = !DILocation(line: 341, column: 12, scope: !2328)
!2330 = !DILocation(line: 341, column: 6, scope: !2282)
!2331 = !DILocation(line: 343, column: 3, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !93, line: 342, column: 2)
!2333 = !DILocation(line: 344, column: 1, scope: !2332)
!2334 = !DILocation(line: 345, column: 3, scope: !2332)
!2335 = !DILocation(line: 348, column: 17, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 348, column: 6)
!2337 = !DILocation(line: 348, column: 24, scope: !2336)
!2338 = !DILocation(line: 348, column: 6, scope: !2336)
!2339 = !DILocation(line: 348, column: 32, scope: !2336)
!2340 = !DILocation(line: 348, column: 6, scope: !2282)
!2341 = !DILocation(line: 350, column: 3, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2336, file: !93, line: 349, column: 2)
!2343 = !DILocation(line: 351, column: 1, scope: !2342)
!2344 = !DILocation(line: 352, column: 3, scope: !2342)
!2345 = !DILocation(line: 355, column: 2, scope: !2282)
!2346 = distinct !{!2346, !2345}
!2347 = !DILocation(line: 357, column: 21, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 356, column: 2)
!2349 = !DILocation(line: 357, column: 9, scope: !2348)
!2350 = !DILocation(line: 357, column: 7, scope: !2348)
!2351 = !DILocation(line: 358, column: 2, scope: !2348)
!2352 = !DILocation(line: 359, column: 23, scope: !2282)
!2353 = !DILocation(line: 359, column: 30, scope: !2282)
!2354 = !DILocation(line: 359, column: 9, scope: !2282)
!2355 = !DILocation(line: 359, column: 35, scope: !2282)
!2356 = !DILocation(line: 358, column: 2, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2348, file: !93, discriminator: 1)
!2358 = !DILocation(line: 359, column: 6, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !93, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 359, column: 6)
!2361 = !DILocation(line: 359, column: 10, scope: !2359)
!2362 = !DILocation(line: 361, column: 3, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !93, line: 360, column: 2)
!2364 = !DILocation(line: 362, column: 1, scope: !2363)
!2365 = !DILocation(line: 363, column: 3, scope: !2363)
!2366 = !DILocation(line: 366, column: 2, scope: !2282)
!2367 = !DILocation(line: 369, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 369, column: 6)
!2369 = !DILocation(line: 369, column: 6, scope: !2282)
!2370 = !DILocation(line: 370, column: 12, scope: !2368)
!2371 = !DILocation(line: 370, column: 3, scope: !2368)
!2372 = !DILocation(line: 371, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2282, file: !93, line: 371, column: 6)
!2374 = !DILocation(line: 371, column: 6, scope: !2282)
!2375 = !DILocation(line: 372, column: 16, scope: !2373)
!2376 = !DILocation(line: 372, column: 3, scope: !2373)
!2377 = !DILocation(line: 374, column: 8, scope: !2282)
!2378 = !DILocation(line: 374, column: 12, scope: !2282)
!2379 = !DILocation(line: 375, column: 2, scope: !2282)
!2380 = !DILocation(line: 376, column: 1, scope: !2282)
!2381 = distinct !DISubprogram(name: "tcp_tls_get_server_pubkey", scope: !93, file: !93, line: 380, type: !2382, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!1838, !114}
!2384 = !DILocalVariable(name: "s", arg: 1, scope: !2381, file: !93, line: 380, type: !114)
!2385 = !DILocation(line: 380, column: 34, scope: !2381)
!2386 = !DILocalVariable(name: "cert", scope: !2381, file: !93, line: 382, type: !288)
!2387 = !DILocation(line: 382, column: 8, scope: !2381)
!2388 = !DILocalVariable(name: "pkey", scope: !2381, file: !93, line: 383, type: !432)
!2389 = !DILocation(line: 383, column: 12, scope: !2381)
!2390 = !DILocation(line: 385, column: 12, scope: !2381)
!2391 = !DILocation(line: 385, column: 15, scope: !2381)
!2392 = !DILocation(line: 385, column: 17, scope: !2381)
!2393 = !DILocation(line: 385, column: 2, scope: !2381)
!2394 = !DILocation(line: 385, column: 5, scope: !2381)
!2395 = !DILocation(line: 385, column: 10, scope: !2381)
!2396 = !DILocation(line: 386, column: 2, scope: !2381)
!2397 = !DILocation(line: 386, column: 5, scope: !2381)
!2398 = !DILocation(line: 386, column: 10, scope: !2381)
!2399 = !DILocation(line: 388, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 388, column: 6)
!2401 = !DILocation(line: 388, column: 12, scope: !2400)
!2402 = !DILocation(line: 388, column: 6, scope: !2381)
!2403 = !DILocation(line: 389, column: 3, scope: !2400)
!2404 = !DILocation(line: 391, column: 34, scope: !2381)
!2405 = !DILocation(line: 391, column: 9, scope: !2381)
!2406 = !DILocation(line: 391, column: 7, scope: !2381)
!2407 = !DILocation(line: 392, column: 6, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 392, column: 6)
!2409 = !DILocation(line: 392, column: 11, scope: !2408)
!2410 = !DILocation(line: 392, column: 6, scope: !2381)
!2411 = !DILocation(line: 394, column: 3, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !93, line: 393, column: 2)
!2413 = !DILocation(line: 396, column: 3, scope: !2412)
!2414 = !DILocation(line: 399, column: 25, scope: !2381)
!2415 = !DILocation(line: 399, column: 9, scope: !2381)
!2416 = !DILocation(line: 399, column: 7, scope: !2381)
!2417 = !DILocation(line: 400, column: 6, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 400, column: 6)
!2419 = !DILocation(line: 400, column: 11, scope: !2418)
!2420 = !DILocation(line: 400, column: 6, scope: !2381)
!2421 = !DILocation(line: 402, column: 3, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !93, line: 401, column: 2)
!2423 = !DILocation(line: 403, column: 3, scope: !2422)
!2424 = !DILocation(line: 406, column: 26, scope: !2381)
!2425 = !DILocation(line: 406, column: 12, scope: !2381)
!2426 = !DILocation(line: 406, column: 2, scope: !2381)
!2427 = !DILocation(line: 406, column: 5, scope: !2381)
!2428 = !DILocation(line: 406, column: 10, scope: !2381)
!2429 = !DILocation(line: 407, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 407, column: 6)
!2431 = !DILocation(line: 407, column: 9, scope: !2430)
!2432 = !DILocation(line: 407, column: 14, scope: !2430)
!2433 = !DILocation(line: 407, column: 6, scope: !2381)
!2434 = !DILocation(line: 409, column: 3, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2430, file: !93, line: 408, column: 2)
!2436 = !DILocation(line: 410, column: 3, scope: !2435)
!2437 = !DILocation(line: 413, column: 27, scope: !2381)
!2438 = !DILocation(line: 413, column: 30, scope: !2381)
!2439 = !DILocation(line: 413, column: 19, scope: !2381)
!2440 = !DILocation(line: 413, column: 12, scope: !2381)
!2441 = !DILocation(line: 413, column: 15, scope: !2381)
!2442 = !DILocation(line: 413, column: 17, scope: !2381)
!2443 = !DILocation(line: 413, column: 2, scope: !2381)
!2444 = !DILocation(line: 413, column: 5, scope: !2381)
!2445 = !DILocation(line: 413, column: 10, scope: !2381)
!2446 = !DILocation(line: 414, column: 16, scope: !2381)
!2447 = !DILocation(line: 414, column: 23, scope: !2381)
!2448 = !DILocation(line: 414, column: 26, scope: !2381)
!2449 = !DILocation(line: 414, column: 2, scope: !2381)
!2450 = !DILocation(line: 415, column: 9, scope: !2381)
!2451 = !DILocation(line: 415, column: 12, scope: !2381)
!2452 = !DILocation(line: 415, column: 2, scope: !2381)
!2453 = !DILocation(line: 415, column: 5, scope: !2381)
!2454 = !DILocation(line: 415, column: 7, scope: !2381)
!2455 = !DILocation(line: 416, column: 11, scope: !2381)
!2456 = !DILocation(line: 416, column: 14, scope: !2381)
!2457 = !DILocation(line: 416, column: 18, scope: !2381)
!2458 = !DILocation(line: 416, column: 21, scope: !2381)
!2459 = !DILocation(line: 416, column: 16, scope: !2381)
!2460 = !DILocation(line: 416, column: 2, scope: !2381)
!2461 = !DILocation(line: 416, column: 5, scope: !2381)
!2462 = !DILocation(line: 416, column: 9, scope: !2381)
!2463 = !DILocation(line: 419, column: 6, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 419, column: 6)
!2465 = !DILocation(line: 419, column: 6, scope: !2381)
!2466 = !DILocation(line: 420, column: 13, scope: !2464)
!2467 = !DILocation(line: 420, column: 3, scope: !2464)
!2468 = !DILocation(line: 421, column: 6, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2381, file: !93, line: 421, column: 6)
!2470 = !DILocation(line: 421, column: 6, scope: !2381)
!2471 = !DILocation(line: 422, column: 17, scope: !2469)
!2472 = !DILocation(line: 422, column: 3, scope: !2469)
!2473 = !DILocation(line: 423, column: 10, scope: !2381)
!2474 = !DILocation(line: 423, column: 13, scope: !2381)
!2475 = !DILocation(line: 423, column: 18, scope: !2381)
!2476 = !DILocation(line: 423, column: 2, scope: !2381)
!2477 = distinct !DISubprogram(name: "tcp_connect", scope: !93, file: !93, line: 446, type: !2478, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!1838, !135}
!2480 = !DILocalVariable(name: "server", arg: 1, scope: !2477, file: !93, line: 446, type: !135)
!2481 = !DILocation(line: 446, column: 19, scope: !2477)
!2482 = !DILocalVariable(name: "option_len", scope: !2477, file: !93, line: 448, type: !2483)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !2484, line: 277, baseType: !2485)
!2484 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !258, line: 189, baseType: !74)
!2486 = !DILocation(line: 448, column: 12, scope: !2477)
!2487 = !DILocalVariable(name: "option_value", scope: !2477, file: !93, line: 449, type: !129)
!2488 = !DILocation(line: 449, column: 9, scope: !2477)
!2489 = !DILocalVariable(name: "i", scope: !2477, file: !93, line: 450, type: !90)
!2490 = !DILocation(line: 450, column: 6, scope: !2477)
!2491 = !DILocalVariable(name: "buf", scope: !2477, file: !93, line: 451, type: !2492)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 8200, align: 8, elements: !2493)
!2493 = !{!2494}
!2494 = !DISubrange(count: 1025)
!2495 = !DILocation(line: 451, column: 7, scope: !2477)
!2496 = !DILocalVariable(name: "nslookup", scope: !2477, file: !93, line: 536, type: !2497)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64, align: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !2499, line: 100, size: 256, align: 64, elements: !2500)
!2499 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2500 = !{!2501, !2502, !2503, !2504, !2505}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !2498, file: !2499, line: 102, baseType: !135, size: 64, align: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !2498, file: !2499, line: 103, baseType: !224, size: 64, align: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !2498, file: !2499, line: 104, baseType: !90, size: 32, align: 32, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !2498, file: !2499, line: 105, baseType: !90, size: 32, align: 32, offset: 160)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !2498, file: !2499, line: 106, baseType: !224, size: 64, align: 64, offset: 192)
!2506 = !DILocation(line: 536, column: 18, scope: !2477)
!2507 = !DILocation(line: 538, column: 35, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 538, column: 6)
!2509 = !DILocation(line: 538, column: 6, scope: !2508)
!2510 = !DILocation(line: 538, column: 6, scope: !2477)
!2511 = !DILocation(line: 540, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !93, line: 540, column: 7)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !93, line: 539, column: 2)
!2514 = !DILocation(line: 540, column: 24, scope: !2512)
!2515 = !DILocation(line: 540, column: 7, scope: !2513)
!2516 = !DILocation(line: 541, column: 10, scope: !2512)
!2517 = !DILocation(line: 541, column: 4, scope: !2512)
!2518 = !DILocation(line: 542, column: 22, scope: !2513)
!2519 = !DILocation(line: 542, column: 20, scope: !2513)
!2520 = !DILocation(line: 543, column: 3, scope: !2513)
!2521 = !DILocation(line: 543, column: 21, scope: !2513)
!2522 = !DILocation(line: 543, column: 32, scope: !2513)
!2523 = !DILocation(line: 544, column: 47, scope: !2513)
!2524 = !DILocation(line: 544, column: 38, scope: !2513)
!2525 = !DILocation(line: 544, column: 32, scope: !2513)
!2526 = !DILocation(line: 544, column: 3, scope: !2513)
!2527 = !DILocation(line: 544, column: 21, scope: !2513)
!2528 = !DILocation(line: 544, column: 30, scope: !2513)
!2529 = !DILocation(line: 546, column: 33, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2513, file: !93, line: 546, column: 7)
!2531 = !DILocation(line: 546, column: 19, scope: !2530)
!2532 = !DILocation(line: 546, column: 17, scope: !2530)
!2533 = !DILocation(line: 546, column: 42, scope: !2530)
!2534 = !DILocation(line: 546, column: 7, scope: !2513)
!2535 = !DILocation(line: 548, column: 12, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !93, line: 547, column: 3)
!2537 = !DILocation(line: 548, column: 30, scope: !2536)
!2538 = !DILocation(line: 548, column: 4, scope: !2536)
!2539 = !DILocation(line: 548, column: 40, scope: !2536)
!2540 = !DILocation(line: 548, column: 49, scope: !2536)
!2541 = !DILocation(line: 550, column: 3, scope: !2536)
!2542 = !DILocation(line: 551, column: 59, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2530, file: !93, line: 551, column: 12)
!2544 = !DILocation(line: 551, column: 49, scope: !2543)
!2545 = !DILocation(line: 551, column: 13, scope: !2543)
!2546 = !DILocation(line: 551, column: 31, scope: !2543)
!2547 = !DILocation(line: 551, column: 40, scope: !2543)
!2548 = !DILocation(line: 551, column: 47, scope: !2543)
!2549 = !DILocation(line: 551, column: 68, scope: !2543)
!2550 = !DILocation(line: 551, column: 12, scope: !2530)
!2551 = !DILocation(line: 553, column: 70, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2543, file: !93, line: 552, column: 3)
!2553 = !DILocation(line: 553, column: 4, scope: !2552)
!2554 = !DILocation(line: 554, column: 4, scope: !2552)
!2555 = !DILocation(line: 556, column: 2, scope: !2513)
!2556 = !DILocation(line: 558, column: 16, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 558, column: 6)
!2558 = !DILocation(line: 558, column: 14, scope: !2557)
!2559 = !DILocation(line: 558, column: 48, scope: !2557)
!2560 = !DILocation(line: 558, column: 6, scope: !2477)
!2561 = !DILocation(line: 560, column: 62, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !93, line: 559, column: 2)
!2563 = !DILocation(line: 560, column: 61, scope: !2562)
!2564 = !DILocation(line: 560, column: 61, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2562, file: !93, discriminator: 1)
!2566 = !DILocation(line: 560, column: 3, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2562, file: !93, discriminator: 2)
!2568 = !DILocation(line: 561, column: 3, scope: !2562)
!2569 = !DILocation(line: 565, column: 9, scope: !2477)
!2570 = !DILocation(line: 565, column: 27, scope: !2477)
!2571 = !DILocation(line: 565, column: 45, scope: !2477)
!2572 = !DILocation(line: 566, column: 7, scope: !2477)
!2573 = !DILocation(line: 566, column: 25, scope: !2477)
!2574 = !DILocation(line: 566, column: 6, scope: !2477)
!2575 = !DILocation(line: 567, column: 6, scope: !2477)
!2576 = !DILocation(line: 565, column: 17, scope: !2477)
!2577 = !DILocation(line: 564, column: 2, scope: !2477)
!2578 = !DILocation(line: 569, column: 14, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 569, column: 6)
!2580 = !DILocation(line: 569, column: 42, scope: !2579)
!2581 = !DILocation(line: 569, column: 22, scope: !2579)
!2582 = !DILocation(line: 569, column: 6, scope: !2579)
!2583 = !DILocation(line: 569, column: 85, scope: !2579)
!2584 = !DILocation(line: 569, column: 6, scope: !2477)
!2585 = !DILocation(line: 571, column: 8, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !93, line: 571, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2579, file: !93, line: 570, column: 2)
!2588 = !DILocation(line: 571, column: 7, scope: !2587)
!2589 = !DILocation(line: 572, column: 64, scope: !2586)
!2590 = !DILocation(line: 572, column: 63, scope: !2586)
!2591 = !DILocation(line: 572, column: 63, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2586, file: !93, discriminator: 1)
!2593 = !DILocation(line: 572, column: 4, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2586, file: !93, discriminator: 2)
!2595 = !DILocation(line: 572, column: 4, scope: !2586)
!2596 = !DILocation(line: 574, column: 9, scope: !2587)
!2597 = !DILocation(line: 574, column: 3, scope: !2587)
!2598 = !DILocation(line: 575, column: 10, scope: !2587)
!2599 = !DILocation(line: 576, column: 3, scope: !2587)
!2600 = !DILocation(line: 581, column: 15, scope: !2477)
!2601 = !DILocation(line: 582, column: 13, scope: !2477)
!2602 = !DILocation(line: 583, column: 13, scope: !2477)
!2603 = !DILocation(line: 583, column: 46, scope: !2477)
!2604 = !DILocation(line: 583, column: 70, scope: !2477)
!2605 = !DILocation(line: 583, column: 2, scope: !2477)
!2606 = !DILocation(line: 585, column: 17, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 585, column: 6)
!2608 = !DILocation(line: 585, column: 47, scope: !2607)
!2609 = !DILocation(line: 585, column: 6, scope: !2607)
!2610 = !DILocation(line: 585, column: 84, scope: !2607)
!2611 = !DILocation(line: 585, column: 6, scope: !2477)
!2612 = !DILocation(line: 587, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !93, line: 587, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2607, file: !93, line: 586, column: 2)
!2615 = !DILocation(line: 587, column: 20, scope: !2613)
!2616 = !DILocation(line: 587, column: 7, scope: !2614)
!2617 = !DILocation(line: 589, column: 17, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !93, line: 588, column: 3)
!2619 = !DILocation(line: 590, column: 15, scope: !2618)
!2620 = !DILocation(line: 591, column: 15, scope: !2618)
!2621 = !DILocation(line: 591, column: 45, scope: !2618)
!2622 = !DILocation(line: 592, column: 8, scope: !2618)
!2623 = !DILocation(line: 591, column: 4, scope: !2618)
!2624 = !DILocation(line: 593, column: 3, scope: !2618)
!2625 = !DILocation(line: 594, column: 2, scope: !2614)
!2626 = !DILocation(line: 596, column: 12, scope: !2477)
!2627 = !DILocation(line: 597, column: 37, scope: !2477)
!2628 = !DILocation(line: 597, column: 24, scope: !2477)
!2629 = !DILocation(line: 597, column: 12, scope: !2477)
!2630 = !DILocation(line: 599, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 599, column: 2)
!2632 = !DILocation(line: 599, column: 7, scope: !2631)
!2633 = !DILocation(line: 599, column: 14, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !93, discriminator: 1)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !93, line: 599, column: 2)
!2636 = !DILocation(line: 599, column: 16, scope: !2634)
!2637 = !DILocation(line: 599, column: 2, scope: !2634)
!2638 = !DILocation(line: 601, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !93, line: 600, column: 2)
!2640 = !DILocation(line: 601, column: 3, scope: !2639)
!2641 = !DILocation(line: 601, column: 12, scope: !2639)
!2642 = !DILocation(line: 601, column: 17, scope: !2639)
!2643 = !DILocation(line: 602, column: 43, scope: !2639)
!2644 = !DILocation(line: 602, column: 37, scope: !2639)
!2645 = !DILocation(line: 602, column: 46, scope: !2639)
!2646 = !DILocation(line: 602, column: 29, scope: !2639)
!2647 = !DILocation(line: 602, column: 9, scope: !2639)
!2648 = !DILocation(line: 602, column: 3, scope: !2639)
!2649 = !DILocation(line: 602, column: 12, scope: !2639)
!2650 = !DILocation(line: 602, column: 17, scope: !2639)
!2651 = !DILocation(line: 603, column: 2, scope: !2639)
!2652 = !DILocation(line: 599, column: 22, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2635, file: !93, discriminator: 2)
!2654 = !DILocation(line: 599, column: 2, scope: !2653)
!2655 = distinct !{!2655, !2656}
!2656 = !DILocation(line: 599, column: 2, scope: !2477)
!2657 = !DILocation(line: 606, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2477, file: !93, line: 606, column: 6)
!2659 = !DILocation(line: 606, column: 6, scope: !2477)
!2660 = !DILocation(line: 607, column: 9, scope: !2658)
!2661 = !DILocation(line: 607, column: 3, scope: !2658)
!2662 = !DILocation(line: 608, column: 30, scope: !2477)
!2663 = !DILocation(line: 608, column: 23, scope: !2477)
!2664 = !DILocation(line: 608, column: 21, scope: !2477)
!2665 = !DILocation(line: 609, column: 2, scope: !2477)
!2666 = !DILocation(line: 610, column: 1, scope: !2477)
!2667 = distinct !DISubprogram(name: "tcp_connect_resolve_hostname", scope: !93, file: !93, line: 428, type: !2668, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!1838, !319}
!2670 = !DILocalVariable(name: "server", arg: 1, scope: !2667, file: !93, line: 428, type: !319)
!2671 = !DILocation(line: 428, column: 42, scope: !2667)
!2672 = !DILocation(line: 430, column: 10, scope: !2667)
!2673 = !DILocation(line: 430, column: 27, scope: !2667)
!2674 = !DILocation(line: 430, column: 34, scope: !2667)
!2675 = !DILocation(line: 431, column: 3, scope: !2667)
!2676 = !DILocation(line: 431, column: 22, scope: !2667)
!2677 = !DILocation(line: 431, column: 29, scope: !2667)
!2678 = !DILocation(line: 432, column: 10, scope: !2667)
!2679 = !DILocation(line: 432, column: 30, scope: !2667)
!2680 = !DILocation(line: 432, column: 3, scope: !2667)
!2681 = !DILocation(line: 432, column: 38, scope: !2667)
!2682 = !DILocation(line: 431, column: 29, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2667, file: !93, discriminator: 1)
!2684 = !DILocation(line: 431, column: 29, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2667, file: !93, discriminator: 2)
!2686 = !DILocation(line: 430, column: 2, scope: !2683)
!2687 = distinct !DISubprogram(name: "tcp_disconnect", scope: !93, file: !93, line: 614, type: !1361, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2688 = !DILocalVariable(name: "i", scope: !2687, file: !93, line: 616, type: !90)
!2689 = !DILocation(line: 616, column: 6, scope: !2687)
!2690 = !DILocation(line: 618, column: 6, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2687, file: !93, line: 618, column: 6)
!2692 = !DILocation(line: 618, column: 6, scope: !2687)
!2693 = !DILocation(line: 620, column: 8, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !93, line: 620, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !93, line: 619, column: 2)
!2696 = !DILocation(line: 620, column: 7, scope: !2695)
!2697 = !DILocation(line: 621, column: 24, scope: !2694)
!2698 = !DILocation(line: 621, column: 11, scope: !2694)
!2699 = !DILocation(line: 621, column: 4, scope: !2694)
!2700 = !DILocation(line: 622, column: 12, scope: !2695)
!2701 = !DILocation(line: 622, column: 3, scope: !2695)
!2702 = !DILocation(line: 623, column: 9, scope: !2695)
!2703 = !DILocation(line: 624, column: 16, scope: !2695)
!2704 = !DILocation(line: 624, column: 3, scope: !2695)
!2705 = !DILocation(line: 625, column: 13, scope: !2695)
!2706 = !DILocation(line: 626, column: 2, scope: !2695)
!2707 = !DILocation(line: 628, column: 8, scope: !2687)
!2708 = !DILocation(line: 628, column: 2, scope: !2687)
!2709 = !DILocation(line: 629, column: 9, scope: !2687)
!2710 = !DILocation(line: 631, column: 12, scope: !2687)
!2711 = !DILocation(line: 632, column: 13, scope: !2687)
!2712 = !DILocation(line: 632, column: 2, scope: !2687)
!2713 = !DILocation(line: 633, column: 12, scope: !2687)
!2714 = !DILocation(line: 635, column: 9, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2687, file: !93, line: 635, column: 2)
!2716 = !DILocation(line: 635, column: 7, scope: !2715)
!2717 = !DILocation(line: 635, column: 14, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2719, file: !93, discriminator: 1)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !93, line: 635, column: 2)
!2720 = !DILocation(line: 635, column: 16, scope: !2718)
!2721 = !DILocation(line: 635, column: 2, scope: !2718)
!2722 = !DILocation(line: 637, column: 9, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !93, line: 636, column: 2)
!2724 = !DILocation(line: 637, column: 3, scope: !2723)
!2725 = !DILocation(line: 637, column: 12, scope: !2723)
!2726 = !DILocation(line: 637, column: 17, scope: !2723)
!2727 = !DILocation(line: 638, column: 15, scope: !2723)
!2728 = !DILocation(line: 638, column: 9, scope: !2723)
!2729 = !DILocation(line: 638, column: 18, scope: !2723)
!2730 = !DILocation(line: 638, column: 3, scope: !2723)
!2731 = !DILocation(line: 639, column: 9, scope: !2723)
!2732 = !DILocation(line: 639, column: 3, scope: !2723)
!2733 = !DILocation(line: 639, column: 12, scope: !2723)
!2734 = !DILocation(line: 639, column: 17, scope: !2723)
!2735 = !DILocation(line: 640, column: 2, scope: !2723)
!2736 = !DILocation(line: 635, column: 22, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2719, file: !93, discriminator: 2)
!2738 = !DILocation(line: 635, column: 2, scope: !2737)
!2739 = distinct !{!2739, !2740}
!2740 = !DILocation(line: 635, column: 2, scope: !2687)
!2741 = !DILocation(line: 641, column: 1, scope: !2687)
!2742 = !DILocalVariable(name: "sockaddr", scope: !132, file: !93, line: 647, type: !95)
!2743 = !DILocation(line: 647, column: 21, scope: !132)
!2744 = !DILocalVariable(name: "len", scope: !132, file: !93, line: 648, type: !2483)
!2745 = !DILocation(line: 648, column: 12, scope: !132)
!2746 = !DILocation(line: 649, column: 18, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !132, file: !93, line: 649, column: 6)
!2748 = !DILocation(line: 649, column: 26, scope: !2747)
!2749 = !DILocation(line: 649, column: 6, scope: !2747)
!2750 = !DILocation(line: 649, column: 63, scope: !2747)
!2751 = !DILocation(line: 649, column: 6, scope: !132)
!2752 = !DILocalVariable(name: "ip", scope: !2753, file: !93, line: 651, type: !65)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !93, line: 650, column: 2)
!2754 = !DILocation(line: 651, column: 10, scope: !2753)
!2755 = !DILocation(line: 651, column: 36, scope: !2753)
!2756 = !DILocation(line: 651, column: 15, scope: !2753)
!2757 = !DILocation(line: 652, column: 34, scope: !2753)
!2758 = !DILocation(line: 652, column: 41, scope: !2753)
!2759 = !DILocation(line: 652, column: 48, scope: !2753)
!2760 = !DILocation(line: 652, column: 55, scope: !2753)
!2761 = !DILocation(line: 652, column: 3, scope: !2753)
!2762 = !DILocation(line: 653, column: 2, scope: !2753)
!2763 = !DILocation(line: 655, column: 3, scope: !2747)
!2764 = !DILocation(line: 656, column: 2, scope: !132)
!2765 = distinct !DISubprogram(name: "tcp_is_connected", scope: !93, file: !93, line: 660, type: !2283, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2766 = !DILocalVariable(name: "sockaddr", scope: !2765, file: !93, line: 662, type: !95)
!2767 = !DILocation(line: 662, column: 21, scope: !2765)
!2768 = !DILocalVariable(name: "len", scope: !2765, file: !93, line: 663, type: !2483)
!2769 = !DILocation(line: 663, column: 12, scope: !2765)
!2770 = !DILocation(line: 664, column: 18, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2765, file: !93, line: 664, column: 6)
!2772 = !DILocation(line: 664, column: 26, scope: !2771)
!2773 = !DILocation(line: 664, column: 6, scope: !2771)
!2774 = !DILocation(line: 664, column: 6, scope: !2765)
!2775 = !DILocation(line: 665, column: 3, scope: !2771)
!2776 = !DILocation(line: 666, column: 2, scope: !2765)
!2777 = !DILocation(line: 667, column: 1, scope: !2765)
!2778 = distinct !DISubprogram(name: "tcp_reset_state", scope: !93, file: !93, line: 672, type: !1361, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2779 = !DILocalVariable(name: "i", scope: !2778, file: !93, line: 674, type: !90)
!2780 = !DILocation(line: 674, column: 6, scope: !2778)
!2781 = !DILocation(line: 677, column: 2, scope: !2778)
!2782 = !DILocation(line: 680, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !93, line: 680, column: 2)
!2784 = !DILocation(line: 680, column: 7, scope: !2783)
!2785 = !DILocation(line: 680, column: 14, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2787, file: !93, discriminator: 1)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !93, line: 680, column: 2)
!2788 = !DILocation(line: 680, column: 16, scope: !2786)
!2789 = !DILocation(line: 680, column: 2, scope: !2786)
!2790 = !DILocation(line: 682, column: 18, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !93, line: 681, column: 2)
!2792 = !DILocation(line: 682, column: 12, scope: !2791)
!2793 = !DILocation(line: 682, column: 3, scope: !2791)
!2794 = !DILocation(line: 683, column: 2, scope: !2791)
!2795 = !DILocation(line: 680, column: 22, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2787, file: !93, discriminator: 2)
!2797 = !DILocation(line: 680, column: 2, scope: !2796)
!2798 = distinct !{!2798, !2799}
!2799 = !DILocation(line: 680, column: 2, scope: !2778)
!2800 = !DILocation(line: 684, column: 1, scope: !2778)
!2801 = distinct !DISubprogram(name: "tcp_run_ui", scope: !93, file: !93, line: 687, type: !2802, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !130)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !1838}
!2804 = !DILocalVariable(name: "run", arg: 1, scope: !2801, file: !93, line: 687, type: !1838)
!2805 = !DILocation(line: 687, column: 20, scope: !2801)
!2806 = !DILocation(line: 689, column: 13, scope: !2801)
!2807 = !DILocation(line: 689, column: 11, scope: !2801)
!2808 = !DILocation(line: 690, column: 1, scope: !2801)
