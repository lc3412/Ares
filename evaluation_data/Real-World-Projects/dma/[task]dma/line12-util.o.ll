; ModuleID = './line12-util.o.i'
source_filename = "./line12-util.o.i"
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.strlist = type { %struct.stritem* }
%struct.stritem = type { %struct.anon.4, i8* }
%struct.anon.4 = type { %struct.stritem* }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.sigaction = type { %union.anon.5, %struct.__sigset_t, i32, void ()* }
%union.anon.5 = type { void (i32)* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@hostname.name = internal global [65 x i8] zeroinitializer, align 16
@hostname.initialized = internal global i32 0, align 4
@config = external global %struct.config, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_.-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown-hostname\00", align 1
@setlogident.tag = internal global [50 x i8] zeroinitializer, align 16
@logident_base = external global i8*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%s: Unknown error\0A\00", align 1
@useruid = external global i32, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@username = external global [50 x i8], align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"uid=%ld\00", align 1
@tmpfs = external global %struct.strlist, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"can not set signal handler: %m\00", align 1
@sigbuf = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@sigbuf_valid = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"can not remove signal handler: %m\00", align 1
@rfc822date.str = internal global [50 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [19 x i8] c"%a, %d %b %Y %T %z\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"(date fail)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hostname() #0 !dbg !33 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !85, metadata !86), !dbg !87
  %4 = load i32, i32* @hostname.initialized, align 4, !dbg !88
  %5 = icmp ne i32 %4, 0, !dbg !88
  br i1 %5, label %6, label %7, !dbg !90

; <label>:6:                                      ; preds = %0
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %1, align 8, !dbg !91
  br label %119, !dbg !91

; <label>:7:                                      ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !92
  %9 = icmp eq i8* %8, null, !dbg !94
  br i1 %9, label %14, label %10, !dbg !95

; <label>:10:                                     ; preds = %7
  %11 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !96
  %12 = load i8, i8* %11, align 1, !dbg !98
  %13 = icmp ne i8 %12, 0, !dbg !98
  br i1 %13, label %15, label %14, !dbg !99

; <label>:14:                                     ; preds = %10, %7
  br label %76, !dbg !100

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !101
  %17 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !103
  %18 = load i8, i8* %17, align 1, !dbg !103
  %19 = sext i8 %18 to i32, !dbg !103
  %20 = icmp eq i32 %19, 47, !dbg !104
  br i1 %20, label %21, label %73, !dbg !105

; <label>:21:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !106, metadata !86), !dbg !162
  %22 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !163
  %23 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !164
  store %struct._IO_FILE* %23, %struct._IO_FILE** %3, align 8, !dbg !165
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !166
  %25 = icmp eq %struct._IO_FILE* %24, null, !dbg !168
  br i1 %25, label %26, label %27, !dbg !169

; <label>:26:                                     ; preds = %21
  br label %76, !dbg !170

; <label>:27:                                     ; preds = %21
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !171
  %29 = call i8* @fgets(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i32 65, %struct._IO_FILE* %28), !dbg !172
  store i8* %29, i8** %2, align 8, !dbg !173
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !174
  %31 = call i32 @fclose(%struct._IO_FILE* %30), !dbg !175
  %32 = load i8*, i8** %2, align 8, !dbg !176
  %33 = icmp eq i8* %32, null, !dbg !178
  br i1 %33, label %34, label %35, !dbg !179

; <label>:34:                                     ; preds = %27
  br label %76, !dbg !180

; <label>:35:                                     ; preds = %27
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %2, align 8, !dbg !181
  br label %36, !dbg !183

; <label>:36:                                     ; preds = %64, %35
  %37 = load i8*, i8** %2, align 8, !dbg !184
  %38 = load i8, i8* %37, align 1, !dbg !187
  %39 = sext i8 %38 to i32, !dbg !187
  %40 = icmp ne i32 %39, 0, !dbg !188
  br i1 %40, label %41, label %61, !dbg !189

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %2, align 8, !dbg !190
  %43 = load i8, i8* %42, align 1, !dbg !192
  %44 = sext i8 %43 to i32, !dbg !193
  %45 = sext i32 %44 to i64, !dbg !190
  %46 = call i16** @__ctype_b_loc() #1, !dbg !194
  %47 = load i16*, i16** %46, align 8, !dbg !195
  %48 = getelementptr inbounds i16, i16* %47, i64 %45, !dbg !190
  %49 = load i16, i16* %48, align 2, !dbg !190
  %50 = zext i16 %49 to i32, !dbg !190
  %51 = and i32 %50, 8, !dbg !196
  %52 = icmp ne i32 %51, 0, !dbg !196
  br i1 %52, label %59, label %53, !dbg !197

; <label>:53:                                     ; preds = %41
  %54 = load i8*, i8** %2, align 8, !dbg !198
  %55 = load i8, i8* %54, align 1, !dbg !200
  %56 = sext i8 %55 to i32, !dbg !200
  %57 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %56) #9, !dbg !201
  %58 = icmp ne i8* %57, null, !dbg !202
  br label %59, !dbg !202

; <label>:59:                                     ; preds = %53, %41
  %60 = phi i1 [ true, %41 ], [ %58, %53 ]
  br label %61

; <label>:61:                                     ; preds = %59, %36
  %62 = phi i1 [ false, %36 ], [ %60, %59 ]
  br i1 %62, label %63, label %67, !dbg !203

; <label>:63:                                     ; preds = %61
  br label %64, !dbg !205

; <label>:64:                                     ; preds = %63
  %65 = load i8*, i8** %2, align 8, !dbg !207
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !207
  store i8* %66, i8** %2, align 8, !dbg !207
  br label %36, !dbg !209, !llvm.loop !210

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %2, align 8, !dbg !212
  store i8 0, i8* %68, align 1, !dbg !213
  %69 = load i8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), align 16, !dbg !214
  %70 = icmp ne i8 %69, 0, !dbg !214
  br i1 %70, label %72, label %71, !dbg !216

; <label>:71:                                     ; preds = %67
  br label %76, !dbg !217

; <label>:72:                                     ; preds = %67
  store i32 1, i32* @hostname.initialized, align 4, !dbg !218
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %1, align 8, !dbg !219
  br label %119, !dbg !219

; <label>:73:                                     ; preds = %15
  %74 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !220
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i64 65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %74) #6, !dbg !222
  store i32 1, i32* @hostname.initialized, align 4, !dbg !223
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %1, align 8, !dbg !224
  br label %119, !dbg !224

; <label>:76:                                     ; preds = %71, %34, %26, %14
  %77 = call i32 @gethostname(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i64 65) #6, !dbg !225
  %78 = icmp ne i32 %77, 0, !dbg !227
  br i1 %78, label %79, label %80, !dbg !228

; <label>:79:                                     ; preds = %76
  store i8 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), align 16, !dbg !229
  br label %80, !dbg !230

; <label>:80:                                     ; preds = %79, %76
  store i8 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i64 0, i64 64), align 16, !dbg !231
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %2, align 8, !dbg !232
  br label %81, !dbg !234

; <label>:81:                                     ; preds = %109, %80
  %82 = load i8*, i8** %2, align 8, !dbg !235
  %83 = load i8, i8* %82, align 1, !dbg !238
  %84 = sext i8 %83 to i32, !dbg !238
  %85 = icmp ne i32 %84, 0, !dbg !239
  br i1 %85, label %86, label %106, !dbg !240

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %2, align 8, !dbg !241
  %88 = load i8, i8* %87, align 1, !dbg !243
  %89 = sext i8 %88 to i32, !dbg !244
  %90 = sext i32 %89 to i64, !dbg !241
  %91 = call i16** @__ctype_b_loc() #1, !dbg !245
  %92 = load i16*, i16** %91, align 8, !dbg !246
  %93 = getelementptr inbounds i16, i16* %92, i64 %90, !dbg !241
  %94 = load i16, i16* %93, align 2, !dbg !241
  %95 = zext i16 %94 to i32, !dbg !241
  %96 = and i32 %95, 8, !dbg !247
  %97 = icmp ne i32 %96, 0, !dbg !247
  br i1 %97, label %104, label %98, !dbg !248

; <label>:98:                                     ; preds = %86
  %99 = load i8*, i8** %2, align 8, !dbg !249
  %100 = load i8, i8* %99, align 1, !dbg !251
  %101 = sext i8 %100 to i32, !dbg !251
  %102 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %101) #9, !dbg !252
  %103 = icmp ne i8* %102, null, !dbg !253
  br label %104, !dbg !253

; <label>:104:                                    ; preds = %98, %86
  %105 = phi i1 [ true, %86 ], [ %103, %98 ]
  br label %106

; <label>:106:                                    ; preds = %104, %81
  %107 = phi i1 [ false, %81 ], [ %105, %104 ]
  br i1 %107, label %108, label %112, !dbg !254

; <label>:108:                                    ; preds = %106
  br label %109, !dbg !256

; <label>:109:                                    ; preds = %108
  %110 = load i8*, i8** %2, align 8, !dbg !258
  %111 = getelementptr inbounds i8, i8* %110, i32 1, !dbg !258
  store i8* %111, i8** %2, align 8, !dbg !258
  br label %81, !dbg !260, !llvm.loop !261

; <label>:112:                                    ; preds = %106
  %113 = load i8*, i8** %2, align 8, !dbg !263
  store i8 0, i8* %113, align 1, !dbg !264
  %114 = load i8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), align 16, !dbg !265
  %115 = icmp ne i8 %114, 0, !dbg !265
  br i1 %115, label %118, label %116, !dbg !267

; <label>:116:                                    ; preds = %112
  %117 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i64 65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !268
  br label %118, !dbg !268

; <label>:118:                                    ; preds = %116, %112
  store i32 1, i32* @hostname.initialized, align 4, !dbg !269
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @hostname.name, i32 0, i32 0), i8** %1, align 8, !dbg !270
  br label %119, !dbg !270

; <label>:119:                                    ; preds = %118, %73, %72, %6
  %120 = load i8*, i8** %1, align 8, !dbg !271
  ret i8* %120, !dbg !271
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @setlogident(i8*, ...) #0 !dbg !46 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [50 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !272, metadata !86), !dbg !273
  %5 = load i8*, i8** @logident_base, align 8, !dbg !274
  %6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @setlogident.tag, i32 0, i32 0), i64 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %5) #6, !dbg !275
  %7 = load i8*, i8** %2, align 8, !dbg !276
  %8 = icmp ne i8* %7, null, !dbg !278
  br i1 %8, label %9, label %21, !dbg !279

; <label>:9:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !280, metadata !86), !dbg !294
  call void @llvm.dbg.declare(metadata [50 x i8]* %4, metadata !295, metadata !86), !dbg !296
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !297
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !297
  call void @llvm.va_start(i8* %11), !dbg !297
  %12 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i32 0, i32 0, !dbg !298
  %13 = load i8*, i8** %2, align 8, !dbg !299
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !300
  %15 = call i32 @vsnprintf(i8* %12, i64 50, i8* %13, %struct.__va_list_tag* %14) #6, !dbg !301
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !302
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !302
  call void @llvm.va_end(i8* %17), !dbg !302
  %18 = load i8*, i8** @logident_base, align 8, !dbg !303
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i32 0, i32 0, !dbg !304
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @setlogident.tag, i32 0, i32 0), i64 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %18, i8* %19) #6, !dbg !305
  br label %21, !dbg !306

; <label>:21:                                     ; preds = %9, %1
  call void @closelog(), !dbg !307
  call void @openlog(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @setlogident.tag, i32 0, i32 0), i32 0, i32 16), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @closelog() #2

declare void @openlog(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @errlog(i32, i8*, ...) #0 !dbg !310 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca [200 x i8], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !313, metadata !86), !dbg !314
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !315, metadata !86), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %5, metadata !317, metadata !86), !dbg !318
  %8 = call i32* @__errno_location() #1, !dbg !319
  %9 = load i32, i32* %8, align 4, !dbg !320
  store i32 %9, i32* %5, align 4, !dbg !318
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !321, metadata !86), !dbg !322
  call void @llvm.dbg.declare(metadata [200 x i8]* %7, metadata !323, metadata !86), !dbg !327
  %10 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0, !dbg !328
  store i8 0, i8* %10, align 16, !dbg !329
  %11 = load i8*, i8** %4, align 8, !dbg !330
  %12 = icmp ne i8* %11, null, !dbg !332
  br i1 %12, label %13, label %22, !dbg !333

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !334
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !334
  call void @llvm.va_start(i8* %15), !dbg !334
  %16 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i32 0, i32 0, !dbg !336
  %17 = load i8*, i8** %4, align 8, !dbg !337
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !338
  %19 = call i32 @vsnprintf(i8* %16, i64 200, i8* %17, %struct.__va_list_tag* %18) #6, !dbg !339
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !340
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !340
  call void @llvm.va_end(i8* %21), !dbg !340
  br label %22, !dbg !341

; <label>:22:                                     ; preds = %13, %2
  %23 = load i32, i32* %5, align 4, !dbg !342
  %24 = call i32* @__errno_location() #1, !dbg !343
  store i32 %23, i32* %24, align 4, !dbg !344
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i32 0, i32 0, !dbg !345
  %26 = load i8, i8* %25, align 16, !dbg !345
  %27 = sext i8 %26 to i32, !dbg !345
  %28 = icmp ne i32 %27, 0, !dbg !347
  br i1 %28, label %29, label %37, !dbg !348

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i32 0, i32 0, !dbg !349
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %30), !dbg !351
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !352
  %32 = call i8* @getprogname(), !dbg !353
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i32 0, i32 0, !dbg !354
  %34 = load i32, i32* %5, align 4, !dbg !355
  %35 = call i8* @strerror(i32 %34) #6, !dbg !356
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %32, i8* %33, i8* %35), !dbg !358
  br label %43, !dbg !360

; <label>:37:                                     ; preds = %22
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !361
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !363
  %39 = call i8* @getprogname(), !dbg !364
  %40 = load i32, i32* %5, align 4, !dbg !365
  %41 = call i8* @strerror(i32 %40) #6, !dbg !366
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %39, i8* %41), !dbg !368
  br label %43

; <label>:43:                                     ; preds = %37, %29
  %44 = load i32, i32* %3, align 4, !dbg !370
  call void @exit(i32 %44) #10, !dbg !371
  unreachable, !dbg !371
                                                  ; No predecessors!
  ret void, !dbg !372
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @syslog(i32, i8*, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @getprogname() #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind uwtable
define void @errlogx(i32, i8*, ...) #0 !dbg !373 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca [200 x i8], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !374, metadata !86), !dbg !375
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !376, metadata !86), !dbg !377
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !378, metadata !86), !dbg !379
  call void @llvm.dbg.declare(metadata [200 x i8]* %6, metadata !380, metadata !86), !dbg !381
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0, !dbg !382
  store i8 0, i8* %7, align 16, !dbg !383
  %8 = load i8*, i8** %4, align 8, !dbg !384
  %9 = icmp ne i8* %8, null, !dbg !386
  br i1 %9, label %10, label %19, !dbg !387

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !388
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !388
  call void @llvm.va_start(i8* %12), !dbg !388
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i32 0, i32 0, !dbg !390
  %14 = load i8*, i8** %4, align 8, !dbg !391
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !392
  %16 = call i32 @vsnprintf(i8* %13, i64 200, i8* %14, %struct.__va_list_tag* %15) #6, !dbg !393
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !394
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !394
  call void @llvm.va_end(i8* %18), !dbg !394
  br label %19, !dbg !395

; <label>:19:                                     ; preds = %10, %2
  %20 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i32 0, i32 0, !dbg !396
  %21 = load i8, i8* %20, align 16, !dbg !396
  %22 = sext i8 %21 to i32, !dbg !396
  %23 = icmp ne i32 %22, 0, !dbg !398
  br i1 %23, label %24, label %30, !dbg !399

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i32 0, i32 0, !dbg !400
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %25), !dbg !402
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !403
  %27 = call i8* @getprogname(), !dbg !404
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i32 0, i32 0, !dbg !405
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %27, i8* %28), !dbg !406
  br label %34, !dbg !408

; <label>:30:                                     ; preds = %19
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)), !dbg !409
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !411
  %32 = call i8* @getprogname(), !dbg !412
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %32), !dbg !413
  br label %34

; <label>:34:                                     ; preds = %30, %24
  %35 = load i32, i32* %3, align 4, !dbg !415
  call void @exit(i32 %35) #10, !dbg !416
  unreachable, !dbg !416
                                                  ; No predecessors!
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define void @set_username() #0 !dbg !418 {
  %1 = alloca %struct.passwd*, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %1, metadata !421, metadata !86), !dbg !435
  %2 = call i32 @getuid() #6, !dbg !436
  store i32 %2, i32* @useruid, align 4, !dbg !437
  %3 = call i8* @getlogin(), !dbg !438
  %4 = load i32, i32* @useruid, align 4, !dbg !440
  %5 = call i32 @check_username(i8* %3, i32 %4), !dbg !441
  %6 = icmp ne i32 %5, 0, !dbg !443
  br i1 %6, label %7, label %8, !dbg !444

; <label>:7:                                      ; preds = %0
  br label %51, !dbg !445

; <label>:8:                                      ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !446
  %10 = load i32, i32* @useruid, align 4, !dbg !448
  %11 = call i32 @check_username(i8* %9, i32 %10), !dbg !449
  %12 = icmp ne i32 %11, 0, !dbg !451
  br i1 %12, label %13, label %14, !dbg !452

; <label>:13:                                     ; preds = %8
  br label %51, !dbg !453

; <label>:14:                                     ; preds = %8
  %15 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !454
  %16 = load i32, i32* @useruid, align 4, !dbg !456
  %17 = call i32 @check_username(i8* %15, i32 %16), !dbg !457
  %18 = icmp ne i32 %17, 0, !dbg !459
  br i1 %18, label %19, label %20, !dbg !460

; <label>:19:                                     ; preds = %14
  br label %51, !dbg !461

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* @useruid, align 4, !dbg !462
  %22 = call %struct.passwd* @getpwuid(i32 %21), !dbg !463
  store %struct.passwd* %22, %struct.passwd** %1, align 8, !dbg !464
  %23 = load %struct.passwd*, %struct.passwd** %1, align 8, !dbg !465
  %24 = icmp ne %struct.passwd* %23, null, !dbg !467
  br i1 %24, label %25, label %47, !dbg !468

; <label>:25:                                     ; preds = %20
  %26 = load %struct.passwd*, %struct.passwd** %1, align 8, !dbg !469
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0, !dbg !471
  %28 = load i8*, i8** %27, align 8, !dbg !471
  %29 = icmp ne i8* %28, null, !dbg !472
  br i1 %29, label %30, label %47, !dbg !473

; <label>:30:                                     ; preds = %25
  %31 = load %struct.passwd*, %struct.passwd** %1, align 8, !dbg !474
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 0, !dbg !476
  %33 = load i8*, i8** %32, align 8, !dbg !476
  %34 = getelementptr inbounds i8, i8* %33, i64 0, !dbg !474
  %35 = load i8, i8* %34, align 1, !dbg !474
  %36 = sext i8 %35 to i32, !dbg !474
  %37 = icmp ne i32 %36, 0, !dbg !477
  br i1 %37, label %38, label %47, !dbg !478

; <label>:38:                                     ; preds = %30
  %39 = load %struct.passwd*, %struct.passwd** %1, align 8, !dbg !479
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 0, !dbg !482
  %41 = load i8*, i8** %40, align 8, !dbg !482
  %42 = load i32, i32* @useruid, align 4, !dbg !483
  %43 = call i32 @check_username(i8* %41, i32 %42), !dbg !484
  %44 = icmp ne i32 %43, 0, !dbg !484
  br i1 %44, label %45, label %46, !dbg !485

; <label>:45:                                     ; preds = %38
  br label %51, !dbg !486

; <label>:46:                                     ; preds = %38
  br label %47, !dbg !487

; <label>:47:                                     ; preds = %46, %30, %25, %20
  %48 = load i32, i32* @useruid, align 4, !dbg !488
  %49 = zext i32 %48 to i64, !dbg !489
  %50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @username, i32 0, i32 0), i64 50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i64 %49) #6, !dbg !490
  br label %51, !dbg !491

; <label>:51:                                     ; preds = %47, %45, %19, %13, %7
  ret void, !dbg !492
}

; Function Attrs: nounwind
declare i32 @getuid() #5

; Function Attrs: nounwind uwtable
define internal i32 @check_username(i8*, i32) #0 !dbg !494 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !499, metadata !86), !dbg !500
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !501, metadata !86), !dbg !502
  call void @llvm.dbg.declare(metadata %struct.passwd** %6, metadata !503, metadata !86), !dbg !504
  %7 = load i8*, i8** %4, align 8, !dbg !505
  %8 = icmp eq i8* %7, null, !dbg !507
  br i1 %8, label %9, label %10, !dbg !508

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !509
  br label %25, !dbg !509

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !510
  %12 = call %struct.passwd* @getpwnam(i8* %11), !dbg !511
  store %struct.passwd* %12, %struct.passwd** %6, align 8, !dbg !512
  %13 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !513
  %14 = icmp eq %struct.passwd* %13, null, !dbg !515
  br i1 %14, label %21, label %15, !dbg !516

; <label>:15:                                     ; preds = %10
  %16 = load %struct.passwd*, %struct.passwd** %6, align 8, !dbg !517
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 2, !dbg !519
  %18 = load i32, i32* %17, align 8, !dbg !519
  %19 = load i32, i32* %5, align 4, !dbg !520
  %20 = icmp ne i32 %18, %19, !dbg !521
  br i1 %20, label %21, label %22, !dbg !522

; <label>:21:                                     ; preds = %15, %10
  store i32 0, i32* %3, align 4, !dbg !523
  br label %25, !dbg !523

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !524
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @username, i32 0, i32 0), i64 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %23) #6, !dbg !525
  store i32 1, i32* %3, align 4, !dbg !526
  br label %25, !dbg !526

; <label>:25:                                     ; preds = %22, %21, %9
  %26 = load i32, i32* %3, align 4, !dbg !527
  ret i32 %26, !dbg !527
}

declare i8* @getlogin() #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

declare %struct.passwd* @getpwuid(i32) #2

; Function Attrs: nounwind uwtable
define void @deltmp() #0 !dbg !528 {
  %1 = alloca %struct.stritem*, align 8
  call void @llvm.dbg.declare(metadata %struct.stritem** %1, metadata !529, metadata !86), !dbg !539
  %2 = load %struct.stritem*, %struct.stritem** getelementptr inbounds (%struct.strlist, %struct.strlist* @tmpfs, i32 0, i32 0), align 8, !dbg !540
  store %struct.stritem* %2, %struct.stritem** %1, align 8, !dbg !542
  br label %3, !dbg !543

; <label>:3:                                      ; preds = %11, %0
  %4 = load %struct.stritem*, %struct.stritem** %1, align 8, !dbg !544
  %5 = icmp ne %struct.stritem* %4, null, !dbg !544
  br i1 %5, label %6, label %16, !dbg !544

; <label>:6:                                      ; preds = %3
  %7 = load %struct.stritem*, %struct.stritem** %1, align 8, !dbg !547
  %8 = getelementptr inbounds %struct.stritem, %struct.stritem* %7, i32 0, i32 1, !dbg !549
  %9 = load i8*, i8** %8, align 8, !dbg !549
  %10 = call i32 @unlink(i8* %9) #6, !dbg !550
  br label %11, !dbg !551

; <label>:11:                                     ; preds = %6
  %12 = load %struct.stritem*, %struct.stritem** %1, align 8, !dbg !552
  %13 = getelementptr inbounds %struct.stritem, %struct.stritem* %12, i32 0, i32 0, !dbg !552
  %14 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %13, i32 0, i32 0, !dbg !554
  %15 = load %struct.stritem*, %struct.stritem** %14, align 8, !dbg !554
  store %struct.stritem* %15, %struct.stritem** %1, align 8, !dbg !555
  br label %3, !dbg !552, !llvm.loop !556

; <label>:16:                                     ; preds = %3
  ret void, !dbg !558
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @do_timeout(i32, i32) #0 !dbg !559 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !562, metadata !86), !dbg !563
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !564, metadata !86), !dbg !565
  call void @llvm.dbg.declare(metadata %struct.sigaction* %5, metadata !566, metadata !86), !dbg !652
  call void @llvm.dbg.declare(metadata i32* %6, metadata !653, metadata !86), !dbg !654
  store i32 0, i32* %6, align 4, !dbg !654
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1, !dbg !655
  %8 = call i32 @sigemptyset(%struct.__sigset_t* %7) #6, !dbg !656
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2, !dbg !657
  store i32 0, i32* %9, align 8, !dbg !658
  %10 = load i32, i32* %3, align 4, !dbg !659
  %11 = icmp ne i32 %10, 0, !dbg !659
  br i1 %11, label %12, label %30, !dbg !661

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0, !dbg !662
  %14 = bitcast %union.anon.5* %13 to void (i32)**, !dbg !664
  store void (i32)* @sigalrm_handler, void (i32)** %14, align 8, !dbg !665
  %15 = call i32 @sigaction(i32 14, %struct.sigaction* %5, %struct.sigaction* null) #6, !dbg !666
  %16 = icmp ne i32 %15, 0, !dbg !668
  br i1 %16, label %17, label %18, !dbg !669

; <label>:17:                                     ; preds = %12
  call void (i32, i8*, ...) @syslog(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0)), !dbg !670
  br label %18, !dbg !670

; <label>:18:                                     ; preds = %17, %12
  %19 = load i32, i32* %4, align 4, !dbg !671
  %20 = icmp ne i32 %19, 0, !dbg !671
  br i1 %20, label %21, label %27, !dbg !673

; <label>:21:                                     ; preds = %18
  %22 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @sigbuf, i32 0, i32 0), i32 1) #11, !dbg !674
  store i32 %22, i32* %6, align 4, !dbg !676
  %23 = load i32, i32* %6, align 4, !dbg !677
  %24 = icmp ne i32 %23, 0, !dbg !677
  br i1 %24, label %25, label %26, !dbg !679

; <label>:25:                                     ; preds = %21
  br label %31, !dbg !680

; <label>:26:                                     ; preds = %21
  store i32 1, i32* @sigbuf_valid, align 4, !dbg !681
  br label %27, !dbg !682

; <label>:27:                                     ; preds = %26, %18
  %28 = load i32, i32* %3, align 4, !dbg !683
  %29 = call i32 @alarm(i32 %28) #6, !dbg !684
  br label %39, !dbg !685

; <label>:30:                                     ; preds = %2
  br label %31, !dbg !686

; <label>:31:                                     ; preds = %30, %25
  %32 = call i32 @alarm(i32 0) #6, !dbg !688
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0, !dbg !690
  %34 = bitcast %union.anon.5* %33 to void (i32)**, !dbg !691
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %34, align 8, !dbg !692
  %35 = call i32 @sigaction(i32 14, %struct.sigaction* %5, %struct.sigaction* null) #6, !dbg !693
  %36 = icmp ne i32 %35, 0, !dbg !695
  br i1 %36, label %37, label %38, !dbg !696

; <label>:37:                                     ; preds = %31
  call void (i32, i8*, ...) @syslog(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)), !dbg !697
  br label %38, !dbg !697

; <label>:38:                                     ; preds = %37, %31
  store i32 0, i32* @sigbuf_valid, align 4, !dbg !698
  br label %39

; <label>:39:                                     ; preds = %38, %27
  %40 = load i32, i32* %6, align 4, !dbg !699
  ret i32 %40, !dbg !700
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #5

; Function Attrs: nounwind uwtable
define internal void @sigalrm_handler(i32) #0 !dbg !701 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !702, metadata !86), !dbg !703
  %3 = load i32, i32* %2, align 4, !dbg !704
  %4 = load i32, i32* @sigbuf_valid, align 4, !dbg !705
  %5 = icmp ne i32 %4, 0, !dbg !705
  br i1 %5, label %6, label %7, !dbg !707

; <label>:6:                                      ; preds = %1
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @sigbuf, i32 0, i32 0), i32 1) #10, !dbg !708
  unreachable, !dbg !708

; <label>:7:                                      ; preds = %1
  ret void, !dbg !709
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #5

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #8

; Function Attrs: nounwind
declare i32 @alarm(i32) #5

; Function Attrs: nounwind uwtable
define i32 @open_locked(i8*, i32, ...) #0 !dbg !710 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !713, metadata !86), !dbg !714
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !715, metadata !86), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %6, metadata !717, metadata !86), !dbg !718
  store i32 0, i32* %6, align 4, !dbg !718
  %10 = load i32, i32* %5, align 4, !dbg !719
  %11 = and i32 %10, 64, !dbg !721
  %12 = icmp ne i32 %11, 0, !dbg !721
  br i1 %12, label %13, label %36, !dbg !722

; <label>:13:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !723, metadata !86), !dbg !725
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !726
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !726
  call void @llvm.va_start(i8* %15), !dbg !726
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !727
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 0, !dbg !727
  %18 = load i32, i32* %17, align 16, !dbg !727
  %19 = icmp ule i32 %18, 40, !dbg !727
  br i1 %19, label %20, label %26, !dbg !727

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 3, !dbg !728
  %22 = load i8*, i8** %21, align 16, !dbg !728
  %23 = getelementptr i8, i8* %22, i32 %18, !dbg !728
  %24 = bitcast i8* %23 to i32*, !dbg !728
  %25 = add i32 %18, 8, !dbg !728
  store i32 %25, i32* %17, align 16, !dbg !728
  br label %31, !dbg !728

; <label>:26:                                     ; preds = %13
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 2, !dbg !730
  %28 = load i8*, i8** %27, align 8, !dbg !730
  %29 = bitcast i8* %28 to i32*, !dbg !730
  %30 = getelementptr i8, i8* %28, i32 8, !dbg !730
  store i8* %30, i8** %27, align 8, !dbg !730
  br label %31, !dbg !730

; <label>:31:                                     ; preds = %26, %20
  %32 = phi i32* [ %24, %20 ], [ %29, %26 ], !dbg !732
  %33 = load i32, i32* %32, align 4, !dbg !732
  store i32 %33, i32* %6, align 4, !dbg !734
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !735
  %35 = bitcast %struct.__va_list_tag* %34 to i8*, !dbg !735
  call void @llvm.va_end(i8* %35), !dbg !735
  br label %36, !dbg !736

; <label>:36:                                     ; preds = %31, %2
  call void @llvm.dbg.declare(metadata i32* %8, metadata !737, metadata !86), !dbg !738
  call void @llvm.dbg.declare(metadata i32* %9, metadata !739, metadata !86), !dbg !740
  %37 = load i8*, i8** %4, align 8, !dbg !741
  %38 = load i32, i32* %5, align 4, !dbg !742
  %39 = load i32, i32* %6, align 4, !dbg !743
  %40 = call i32 (i8*, i32, ...) @open(i8* %37, i32 %38, i32 %39), !dbg !744
  store i32 %40, i32* %8, align 4, !dbg !745
  %41 = load i32, i32* %8, align 4, !dbg !746
  %42 = icmp slt i32 %41, 0, !dbg !748
  br i1 %42, label %43, label %45, !dbg !749

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %8, align 4, !dbg !750
  store i32 %44, i32* %3, align 4, !dbg !751
  br label %63, !dbg !751

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %8, align 4, !dbg !752
  %47 = load i32, i32* %5, align 4, !dbg !754
  %48 = and i32 %47, 2048, !dbg !755
  %49 = icmp ne i32 %48, 0, !dbg !756
  %50 = select i1 %49, i32 4, i32 0, !dbg !756
  %51 = or i32 2, %50, !dbg !757
  %52 = call i32 @flock(i32 %46, i32 %51) #6, !dbg !758
  %53 = icmp slt i32 %52, 0, !dbg !759
  br i1 %53, label %54, label %61, !dbg !760

; <label>:54:                                     ; preds = %45
  %55 = call i32* @__errno_location() #1, !dbg !761
  %56 = load i32, i32* %55, align 4, !dbg !763
  store i32 %56, i32* %9, align 4, !dbg !764
  %57 = load i32, i32* %8, align 4, !dbg !765
  %58 = call i32 @close(i32 %57), !dbg !766
  %59 = load i32, i32* %9, align 4, !dbg !767
  %60 = call i32* @__errno_location() #1, !dbg !768
  store i32 %59, i32* %60, align 4, !dbg !769
  store i32 -1, i32* %3, align 4, !dbg !770
  br label %63, !dbg !770

; <label>:61:                                     ; preds = %45
  %62 = load i32, i32* %8, align 4, !dbg !771
  store i32 %62, i32* %3, align 4, !dbg !772
  br label %63, !dbg !772

; <label>:63:                                     ; preds = %61, %54, %43
  %64 = load i32, i32* %3, align 4, !dbg !773
  ret i32 %64, !dbg !773
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #5

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define i8* @rfc822date() #0 !dbg !53 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !774, metadata !86), !dbg !775
  call void @llvm.dbg.declare(metadata i64* %2, metadata !776, metadata !86), !dbg !780
  %3 = call i64 @time(i64* null) #6, !dbg !781
  store i64 %3, i64* %2, align 8, !dbg !782
  %4 = call %struct.tm* @localtime(i64* %2) #6, !dbg !783
  %5 = call i64 @strftime(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @rfc822date.str, i32 0, i32 0), i64 50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), %struct.tm* %4) #6, !dbg !784
  store i64 %5, i64* %1, align 8, !dbg !785
  %6 = load i64, i64* %1, align 8, !dbg !786
  %7 = icmp eq i64 %6, 0, !dbg !788
  br i1 %7, label %8, label %10, !dbg !789

; <label>:8:                                      ; preds = %0
  %9 = call i8* @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @rfc822date.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #6, !dbg !790
  br label %10, !dbg !790

; <label>:10:                                     ; preds = %8, %0
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @rfc822date.str, i32 0, i32 0), !dbg !791
}

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #5

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @strprefixcmp(i8*, i8*) #0 !dbg !792 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !795, metadata !86), !dbg !796
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !797, metadata !86), !dbg !798
  %5 = load i8*, i8** %3, align 8, !dbg !799
  %6 = load i8*, i8** %4, align 8, !dbg !800
  %7 = load i8*, i8** %4, align 8, !dbg !801
  %8 = call i64 @strlen(i8* %7) #9, !dbg !802
  %9 = call i32 @strncasecmp(i8* %5, i8* %6, i64 %8) #9, !dbg !803
  ret i32 %9, !dbg !805
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @init_random() #0 !dbg !806 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !807, metadata !86), !dbg !808
  call void @llvm.dbg.declare(metadata i32* %2, metadata !809, metadata !86), !dbg !810
  %3 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 0), !dbg !811
  store i32 %3, i32* %2, align 4, !dbg !812
  %4 = load i32, i32* %2, align 4, !dbg !813
  %5 = icmp eq i32 %4, -1, !dbg !815
  br i1 %5, label %6, label %8, !dbg !816

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !817
  store i32 %7, i32* %2, align 4, !dbg !818
  br label %8, !dbg !819

; <label>:8:                                      ; preds = %6, %0
  %9 = load i32, i32* %2, align 4, !dbg !820
  %10 = icmp ne i32 %9, -1, !dbg !822
  br i1 %10, label %11, label %16, !dbg !823

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4, !dbg !824
  %13 = bitcast i32* %1 to i8*, !dbg !826
  %14 = call i64 @read(i32 %12, i8* %13, i64 4), !dbg !827
  %15 = icmp eq i64 %14, 4, !dbg !828
  br i1 %15, label %24, label %16, !dbg !829

; <label>:16:                                     ; preds = %11, %8
  %17 = call i64 @time(i64* null) #6, !dbg !830
  %18 = call i32 @getpid() #6, !dbg !831
  %19 = sext i32 %18 to i64, !dbg !832
  %20 = xor i64 %17, %19, !dbg !833
  %21 = ptrtoint i32* %1 to i64, !dbg !834
  %22 = add i64 %20, %21, !dbg !835
  %23 = trunc i64 %22 to i32, !dbg !836
  store i32 %23, i32* %1, align 4, !dbg !837
  br label %24, !dbg !838

; <label>:24:                                     ; preds = %16, %11
  %25 = load i32, i32* %1, align 4, !dbg !839
  call void @srandom(i32 %25) #6, !dbg !840
  %26 = load i32, i32* %2, align 4, !dbg !841
  %27 = icmp ne i32 %26, -1, !dbg !843
  br i1 %27, label %28, label %31, !dbg !844

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %2, align 4, !dbg !845
  %30 = call i32 @close(i32 %29), !dbg !846
  br label %31, !dbg !846

; <label>:31:                                     ; preds = %28, %24
  ret void, !dbg !847
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @getpid() #5

; Function Attrs: nounwind
declare void @srandom(i32) #5

declare %struct.passwd* @getpwnam(i8*) #2

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind returns_twice }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, globals: !31)
!1 = !DIFile(filename: "line12-util.o.i", directory: "/home/lichi/Desktop/dma/task1")
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
!18 = !{!19, !20, !21, !22, !23, !28}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !24, line: 85, baseType: !25)
!24 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/dma/task1")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !20}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !29, line: 122, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dma/task1")
!30 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!31 = !{!32, !44, !45, !52, !57, !81}
!32 = distinct !DIGlobalVariable(name: "name", scope: !33, file: !34, line: 57, type: !41, isLocal: true, isDefinition: true, variable: [65 x i8]* @hostname.name)
!33 = distinct !DISubprogram(name: "hostname", scope: !34, file: !34, line: 52, type: !35, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!34 = !DIFile(filename: "util.c", directory: "/home/lichi/Desktop/dma/task1")
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !{}
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 520, align: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 65)
!44 = distinct !DIGlobalVariable(name: "initialized", scope: !33, file: !34, line: 58, type: !20, isLocal: true, isDefinition: true, variable: i32* @hostname.initialized)
!45 = distinct !DIGlobalVariable(name: "tag", scope: !46, file: !34, line: 121, type: !49, isLocal: true, isDefinition: true, variable: [50 x i8]* @setlogident.tag)
!46 = distinct !DISubprogram(name: "setlogident", scope: !34, file: !34, line: 119, type: !47, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !37, null}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 400, align: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 50)
!52 = distinct !DIGlobalVariable(name: "str", scope: !53, file: !34, line: 310, type: !49, isLocal: true, isDefinition: true, variable: [50 x i8]* @rfc822date.str)
!53 = distinct !DISubprogram(name: "rfc822date", scope: !34, file: !34, line: 308, type: !54, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!54 = !DISubroutineType(types: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!57 = distinct !DIGlobalVariable(name: "sigbuf", scope: !0, file: !34, line: 231, type: !58, isLocal: true, isDefinition: true, variable: [1 x %struct.__jmp_buf_tag]* @sigbuf)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigjmp_buf", file: !59, line: 92, baseType: !60)
!59 = !DIFile(filename: "/usr/include/setjmp.h", directory: "/home/lichi/Desktop/dma/task1")
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1600, align: 64, elements: !79)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !59, line: 34, size: 1600, align: 64, elements: !62)
!62 = !{!63, !69, !70}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !61, file: !59, line: 40, baseType: !64, size: 512, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !65, line: 31, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "/home/lichi/Desktop/dma/task1")
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !61, file: !59, line: 41, baseType: !20, size: 32, align: 32, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !61, file: !59, line: 42, baseType: !71, size: 1024, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !72, line: 30, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/dma/task1")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 27, size: 1024, align: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !73, file: !72, line: 29, baseType: !76, size: 1024, align: 64)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 16)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = distinct !DIGlobalVariable(name: "sigbuf_valid", scope: !0, file: !34, line: 232, type: !20, isLocal: true, isDefinition: true, variable: i32* @sigbuf_valid)
!82 = !{i32 2, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!85 = !DILocalVariable(name: "s", scope: !33, file: !34, line: 59, type: !56)
!86 = !DIExpression()
!87 = !DILocation(line: 59, column: 8, scope: !33)
!88 = !DILocation(line: 61, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !33, file: !34, line: 61, column: 6)
!90 = !DILocation(line: 61, column: 6, scope: !33)
!91 = !DILocation(line: 62, column: 3, scope: !89)
!92 = !DILocation(line: 64, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !33, file: !34, line: 64, column: 6)
!94 = !DILocation(line: 64, column: 22, scope: !93)
!95 = !DILocation(line: 64, column: 29, scope: !93)
!96 = !DILocation(line: 64, column: 41, scope: !97)
!97 = !DILexicalBlockFile(scope: !93, file: !34, discriminator: 1)
!98 = !DILocation(line: 64, column: 33, scope: !97)
!99 = !DILocation(line: 64, column: 6, scope: !97)
!100 = !DILocation(line: 65, column: 3, scope: !93)
!101 = !DILocation(line: 67, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !33, file: !34, line: 67, column: 6)
!103 = !DILocation(line: 67, column: 6, scope: !102)
!104 = !DILocation(line: 67, column: 25, scope: !102)
!105 = !DILocation(line: 67, column: 6, scope: !33)
!106 = !DILocalVariable(name: "fp", scope: !107, file: !34, line: 72, type: !108)
!107 = distinct !DILexicalBlock(scope: !102, file: !34, line: 67, column: 33)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !110, line: 48, baseType: !111)
!110 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dma/task1")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !112, line: 241, size: 1728, align: 64, elements: !113)
!112 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dma/task1")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !134, !135, !136, !137, !140, !141, !143, !145, !148, !150, !151, !152, !153, !154, !157, !158}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !111, file: !112, line: 242, baseType: !20, size: 32, align: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !111, file: !112, line: 247, baseType: !56, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !111, file: !112, line: 248, baseType: !56, size: 64, align: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !111, file: !112, line: 249, baseType: !56, size: 64, align: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !111, file: !112, line: 250, baseType: !56, size: 64, align: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !111, file: !112, line: 251, baseType: !56, size: 64, align: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !111, file: !112, line: 252, baseType: !56, size: 64, align: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !111, file: !112, line: 253, baseType: !56, size: 64, align: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !111, file: !112, line: 254, baseType: !56, size: 64, align: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !111, file: !112, line: 256, baseType: !56, size: 64, align: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !111, file: !112, line: 257, baseType: !56, size: 64, align: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !111, file: !112, line: 258, baseType: !56, size: 64, align: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !111, file: !112, line: 260, baseType: !127, size: 64, align: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !112, line: 156, size: 192, align: 64, elements: !129)
!129 = !{!130, !131, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !128, file: !112, line: 157, baseType: !127, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !128, file: !112, line: 158, baseType: !132, size: 64, align: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !128, file: !112, line: 162, baseType: !20, size: 32, align: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !111, file: !112, line: 262, baseType: !132, size: 64, align: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !111, file: !112, line: 264, baseType: !20, size: 32, align: 32, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !111, file: !112, line: 268, baseType: !20, size: 32, align: 32, offset: 928)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !111, file: !112, line: 270, baseType: !138, size: 64, align: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !139, line: 131, baseType: !22)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task1")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !111, file: !112, line: 274, baseType: !21, size: 16, align: 16, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !111, file: !112, line: 275, baseType: !142, size: 8, align: 8, offset: 1040)
!142 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !111, file: !112, line: 276, baseType: !144, size: 8, align: 8, offset: 1048)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, align: 8, elements: !79)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !111, file: !112, line: 280, baseType: !146, size: 64, align: 64, offset: 1088)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !112, line: 150, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !111, file: !112, line: 289, baseType: !149, size: 64, align: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !139, line: 132, baseType: !22)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !111, file: !112, line: 297, baseType: !19, size: 64, align: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !111, file: !112, line: 298, baseType: !19, size: 64, align: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !111, file: !112, line: 299, baseType: !19, size: 64, align: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !111, file: !112, line: 300, baseType: !19, size: 64, align: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !111, file: !112, line: 302, baseType: !155, size: 64, align: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 216, baseType: !30)
!156 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !111, file: !112, line: 303, baseType: !20, size: 32, align: 32, offset: 1536)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !111, file: !112, line: 305, baseType: !159, size: 160, align: 8, offset: 1568)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, align: 8, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 20)
!162 = !DILocation(line: 72, column: 9, scope: !107)
!163 = !DILocation(line: 74, column: 21, scope: !107)
!164 = !DILocation(line: 74, column: 8, scope: !107)
!165 = !DILocation(line: 74, column: 6, scope: !107)
!166 = !DILocation(line: 75, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !107, file: !34, line: 75, column: 7)
!168 = !DILocation(line: 75, column: 10, scope: !167)
!169 = !DILocation(line: 75, column: 7, scope: !107)
!170 = !DILocation(line: 76, column: 4, scope: !167)
!171 = !DILocation(line: 78, column: 33, scope: !107)
!172 = !DILocation(line: 78, column: 7, scope: !107)
!173 = !DILocation(line: 78, column: 5, scope: !107)
!174 = !DILocation(line: 79, column: 10, scope: !107)
!175 = !DILocation(line: 79, column: 3, scope: !107)
!176 = !DILocation(line: 80, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !107, file: !34, line: 80, column: 7)
!178 = !DILocation(line: 80, column: 9, scope: !177)
!179 = !DILocation(line: 80, column: 7, scope: !107)
!180 = !DILocation(line: 81, column: 4, scope: !177)
!181 = !DILocation(line: 83, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !107, file: !34, line: 83, column: 3)
!183 = !DILocation(line: 83, column: 8, scope: !182)
!184 = !DILocation(line: 83, column: 19, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !34, discriminator: 1)
!186 = distinct !DILexicalBlock(scope: !182, file: !34, line: 83, column: 3)
!187 = !DILocation(line: 83, column: 18, scope: !185)
!188 = !DILocation(line: 83, column: 21, scope: !185)
!189 = !DILocation(line: 83, column: 26, scope: !185)
!190 = !DILocation(line: 83, column: 30, scope: !191)
!191 = !DILexicalBlockFile(scope: !186, file: !34, discriminator: 2)
!192 = !DILocation(line: 83, column: 29, scope: !191)
!193 = !DILocation(line: 83, column: 50, scope: !191)
!194 = !DILocation(line: 83, column: 32, scope: !191)
!195 = !DILocation(line: 83, column: 31, scope: !191)
!196 = !DILocation(line: 83, column: 33, scope: !191)
!197 = !DILocation(line: 83, column: 41, scope: !191)
!198 = !DILocation(line: 83, column: 59, scope: !199)
!199 = !DILexicalBlockFile(scope: !186, file: !34, discriminator: 3)
!200 = !DILocation(line: 83, column: 58, scope: !199)
!201 = !DILocation(line: 83, column: 44, scope: !199)
!202 = !DILocation(line: 83, column: 41, scope: !199)
!203 = !DILocation(line: 83, column: 3, scope: !204)
!204 = !DILexicalBlockFile(scope: !182, file: !34, discriminator: 4)
!205 = !DILocation(line: 83, column: 3, scope: !206)
!206 = !DILexicalBlockFile(scope: !182, file: !34, discriminator: 5)
!207 = !DILocation(line: 83, column: 64, scope: !208)
!208 = !DILexicalBlockFile(scope: !186, file: !34, discriminator: 6)
!209 = !DILocation(line: 83, column: 3, scope: !208)
!210 = distinct !{!210, !211}
!211 = !DILocation(line: 83, column: 3, scope: !107)
!212 = !DILocation(line: 85, column: 4, scope: !107)
!213 = !DILocation(line: 85, column: 6, scope: !107)
!214 = !DILocation(line: 87, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !107, file: !34, line: 87, column: 7)
!216 = !DILocation(line: 87, column: 7, scope: !107)
!217 = !DILocation(line: 88, column: 4, scope: !215)
!218 = !DILocation(line: 90, column: 15, scope: !107)
!219 = !DILocation(line: 91, column: 3, scope: !107)
!220 = !DILocation(line: 93, column: 45, scope: !221)
!221 = distinct !DILexicalBlock(scope: !102, file: !34, line: 92, column: 9)
!222 = !DILocation(line: 93, column: 3, scope: !221)
!223 = !DILocation(line: 94, column: 15, scope: !221)
!224 = !DILocation(line: 95, column: 3, scope: !221)
!225 = !DILocation(line: 99, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !33, file: !34, line: 99, column: 6)
!227 = !DILocation(line: 99, column: 38, scope: !226)
!228 = !DILocation(line: 99, column: 6, scope: !33)
!229 = !DILocation(line: 100, column: 9, scope: !226)
!230 = !DILocation(line: 100, column: 3, scope: !226)
!231 = !DILocation(line: 105, column: 25, scope: !33)
!232 = !DILocation(line: 107, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !33, file: !34, line: 107, column: 2)
!234 = !DILocation(line: 107, column: 7, scope: !233)
!235 = !DILocation(line: 107, column: 18, scope: !236)
!236 = !DILexicalBlockFile(scope: !237, file: !34, discriminator: 1)
!237 = distinct !DILexicalBlock(scope: !233, file: !34, line: 107, column: 2)
!238 = !DILocation(line: 107, column: 17, scope: !236)
!239 = !DILocation(line: 107, column: 20, scope: !236)
!240 = !DILocation(line: 107, column: 25, scope: !236)
!241 = !DILocation(line: 107, column: 29, scope: !242)
!242 = !DILexicalBlockFile(scope: !237, file: !34, discriminator: 2)
!243 = !DILocation(line: 107, column: 28, scope: !242)
!244 = !DILocation(line: 107, column: 49, scope: !242)
!245 = !DILocation(line: 107, column: 31, scope: !242)
!246 = !DILocation(line: 107, column: 30, scope: !242)
!247 = !DILocation(line: 107, column: 32, scope: !242)
!248 = !DILocation(line: 107, column: 40, scope: !242)
!249 = !DILocation(line: 107, column: 58, scope: !250)
!250 = !DILexicalBlockFile(scope: !237, file: !34, discriminator: 3)
!251 = !DILocation(line: 107, column: 57, scope: !250)
!252 = !DILocation(line: 107, column: 43, scope: !250)
!253 = !DILocation(line: 107, column: 40, scope: !250)
!254 = !DILocation(line: 107, column: 2, scope: !255)
!255 = !DILexicalBlockFile(scope: !233, file: !34, discriminator: 4)
!256 = !DILocation(line: 107, column: 2, scope: !257)
!257 = !DILexicalBlockFile(scope: !233, file: !34, discriminator: 5)
!258 = !DILocation(line: 107, column: 63, scope: !259)
!259 = !DILexicalBlockFile(scope: !237, file: !34, discriminator: 6)
!260 = !DILocation(line: 107, column: 2, scope: !259)
!261 = distinct !{!261, !262}
!262 = !DILocation(line: 107, column: 2, scope: !33)
!263 = !DILocation(line: 109, column: 3, scope: !33)
!264 = !DILocation(line: 109, column: 5, scope: !33)
!265 = !DILocation(line: 111, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !33, file: !34, line: 111, column: 6)
!267 = !DILocation(line: 111, column: 6, scope: !33)
!268 = !DILocation(line: 112, column: 3, scope: !266)
!269 = !DILocation(line: 114, column: 14, scope: !33)
!270 = !DILocation(line: 115, column: 2, scope: !33)
!271 = !DILocation(line: 116, column: 1, scope: !33)
!272 = !DILocalVariable(name: "fmt", arg: 1, scope: !46, file: !34, line: 119, type: !37)
!273 = !DILocation(line: 119, column: 25, scope: !46)
!274 = !DILocation(line: 123, column: 35, scope: !46)
!275 = !DILocation(line: 123, column: 2, scope: !46)
!276 = !DILocation(line: 124, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !46, file: !34, line: 124, column: 6)
!278 = !DILocation(line: 124, column: 10, scope: !277)
!279 = !DILocation(line: 124, column: 6, scope: !46)
!280 = !DILocalVariable(name: "ap", scope: !281, file: !34, line: 125, type: !282)
!281 = distinct !DILexicalBlock(scope: !277, file: !34, line: 124, column: 18)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !110, line: 79, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !284, line: 40, baseType: !285)
!284 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dma/task1")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 125, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 192, align: 64, elements: !79)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 125, size: 192, align: 64, elements: !288)
!288 = !{!289, !291, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !287, file: !1, line: 125, baseType: !290, size: 32, align: 32)
!290 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !287, file: !1, line: 125, baseType: !290, size: 32, align: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !287, file: !1, line: 125, baseType: !19, size: 64, align: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !287, file: !1, line: 125, baseType: !19, size: 64, align: 64, offset: 128)
!294 = !DILocation(line: 125, column: 11, scope: !281)
!295 = !DILocalVariable(name: "sufx", scope: !281, file: !34, line: 126, type: !49)
!296 = !DILocation(line: 126, column: 8, scope: !281)
!297 = !DILocation(line: 128, column: 2, scope: !281)
!298 = !DILocation(line: 129, column: 13, scope: !281)
!299 = !DILocation(line: 129, column: 33, scope: !281)
!300 = !DILocation(line: 129, column: 38, scope: !281)
!301 = !DILocation(line: 129, column: 3, scope: !281)
!302 = !DILocation(line: 130, column: 2, scope: !281)
!303 = !DILocation(line: 131, column: 40, scope: !281)
!304 = !DILocation(line: 131, column: 55, scope: !281)
!305 = !DILocation(line: 131, column: 3, scope: !281)
!306 = !DILocation(line: 132, column: 2, scope: !281)
!307 = !DILocation(line: 133, column: 2, scope: !46)
!308 = !DILocation(line: 134, column: 2, scope: !46)
!309 = !DILocation(line: 135, column: 1, scope: !46)
!310 = distinct !DISubprogram(name: "errlog", scope: !34, file: !34, line: 138, type: !311, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !20, !37, null}
!313 = !DILocalVariable(name: "exitcode", arg: 1, scope: !310, file: !34, line: 138, type: !20)
!314 = !DILocation(line: 138, column: 12, scope: !310)
!315 = !DILocalVariable(name: "fmt", arg: 2, scope: !310, file: !34, line: 138, type: !37)
!316 = !DILocation(line: 138, column: 34, scope: !310)
!317 = !DILocalVariable(name: "oerrno", scope: !310, file: !34, line: 140, type: !20)
!318 = !DILocation(line: 140, column: 6, scope: !310)
!319 = !DILocation(line: 140, column: 16, scope: !310)
!320 = !DILocation(line: 140, column: 15, scope: !310)
!321 = !DILocalVariable(name: "ap", scope: !310, file: !34, line: 141, type: !282)
!322 = !DILocation(line: 141, column: 10, scope: !310)
!323 = !DILocalVariable(name: "outs", scope: !310, file: !34, line: 142, type: !324)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1600, align: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 200)
!327 = !DILocation(line: 142, column: 7, scope: !310)
!328 = !DILocation(line: 144, column: 2, scope: !310)
!329 = !DILocation(line: 144, column: 10, scope: !310)
!330 = !DILocation(line: 145, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !310, file: !34, line: 145, column: 6)
!332 = !DILocation(line: 145, column: 10, scope: !331)
!333 = !DILocation(line: 145, column: 6, scope: !310)
!334 = !DILocation(line: 146, column: 2, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !34, line: 145, column: 18)
!336 = !DILocation(line: 147, column: 13, scope: !335)
!337 = !DILocation(line: 147, column: 33, scope: !335)
!338 = !DILocation(line: 147, column: 38, scope: !335)
!339 = !DILocation(line: 147, column: 3, scope: !335)
!340 = !DILocation(line: 148, column: 2, scope: !335)
!341 = !DILocation(line: 149, column: 2, scope: !335)
!342 = !DILocation(line: 151, column: 9, scope: !310)
!343 = !DILocation(line: 151, column: 3, scope: !310)
!344 = !DILocation(line: 151, column: 7, scope: !310)
!345 = !DILocation(line: 152, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !310, file: !34, line: 152, column: 6)
!347 = !DILocation(line: 152, column: 12, scope: !346)
!348 = !DILocation(line: 152, column: 6, scope: !310)
!349 = !DILocation(line: 153, column: 28, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !34, line: 152, column: 18)
!351 = !DILocation(line: 153, column: 3, scope: !350)
!352 = !DILocation(line: 154, column: 10, scope: !350)
!353 = !DILocation(line: 154, column: 34, scope: !350)
!354 = !DILocation(line: 154, column: 49, scope: !350)
!355 = !DILocation(line: 154, column: 64, scope: !350)
!356 = !DILocation(line: 154, column: 55, scope: !357)
!357 = !DILexicalBlockFile(scope: !350, file: !34, discriminator: 1)
!358 = !DILocation(line: 154, column: 3, scope: !359)
!359 = !DILexicalBlockFile(scope: !350, file: !34, discriminator: 2)
!360 = !DILocation(line: 155, column: 2, scope: !350)
!361 = !DILocation(line: 156, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !346, file: !34, line: 155, column: 9)
!363 = !DILocation(line: 157, column: 10, scope: !362)
!364 = !DILocation(line: 157, column: 30, scope: !362)
!365 = !DILocation(line: 157, column: 54, scope: !362)
!366 = !DILocation(line: 157, column: 45, scope: !367)
!367 = !DILexicalBlockFile(scope: !362, file: !34, discriminator: 1)
!368 = !DILocation(line: 157, column: 3, scope: !369)
!369 = !DILexicalBlockFile(scope: !362, file: !34, discriminator: 2)
!370 = !DILocation(line: 160, column: 7, scope: !310)
!371 = !DILocation(line: 160, column: 2, scope: !310)
!372 = !DILocation(line: 161, column: 1, scope: !310)
!373 = distinct !DISubprogram(name: "errlogx", scope: !34, file: !34, line: 164, type: !311, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!374 = !DILocalVariable(name: "exitcode", arg: 1, scope: !373, file: !34, line: 164, type: !20)
!375 = !DILocation(line: 164, column: 13, scope: !373)
!376 = !DILocalVariable(name: "fmt", arg: 2, scope: !373, file: !34, line: 164, type: !37)
!377 = !DILocation(line: 164, column: 35, scope: !373)
!378 = !DILocalVariable(name: "ap", scope: !373, file: !34, line: 166, type: !282)
!379 = !DILocation(line: 166, column: 10, scope: !373)
!380 = !DILocalVariable(name: "outs", scope: !373, file: !34, line: 167, type: !324)
!381 = !DILocation(line: 167, column: 7, scope: !373)
!382 = !DILocation(line: 169, column: 2, scope: !373)
!383 = !DILocation(line: 169, column: 10, scope: !373)
!384 = !DILocation(line: 170, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !373, file: !34, line: 170, column: 6)
!386 = !DILocation(line: 170, column: 10, scope: !385)
!387 = !DILocation(line: 170, column: 6, scope: !373)
!388 = !DILocation(line: 171, column: 2, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !34, line: 170, column: 18)
!390 = !DILocation(line: 172, column: 13, scope: !389)
!391 = !DILocation(line: 172, column: 33, scope: !389)
!392 = !DILocation(line: 172, column: 38, scope: !389)
!393 = !DILocation(line: 172, column: 3, scope: !389)
!394 = !DILocation(line: 173, column: 2, scope: !389)
!395 = !DILocation(line: 174, column: 2, scope: !389)
!396 = !DILocation(line: 176, column: 6, scope: !397)
!397 = distinct !DILexicalBlock(scope: !373, file: !34, line: 176, column: 6)
!398 = !DILocation(line: 176, column: 12, scope: !397)
!399 = !DILocation(line: 176, column: 6, scope: !373)
!400 = !DILocation(line: 177, column: 24, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !34, line: 176, column: 18)
!402 = !DILocation(line: 177, column: 3, scope: !401)
!403 = !DILocation(line: 178, column: 10, scope: !401)
!404 = !DILocation(line: 178, column: 30, scope: !401)
!405 = !DILocation(line: 178, column: 45, scope: !401)
!406 = !DILocation(line: 178, column: 3, scope: !407)
!407 = !DILexicalBlockFile(scope: !401, file: !34, discriminator: 1)
!408 = !DILocation(line: 179, column: 2, scope: !401)
!409 = !DILocation(line: 180, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !397, file: !34, line: 179, column: 9)
!411 = !DILocation(line: 181, column: 10, scope: !410)
!412 = !DILocation(line: 181, column: 41, scope: !410)
!413 = !DILocation(line: 181, column: 3, scope: !414)
!414 = !DILexicalBlockFile(scope: !410, file: !34, discriminator: 1)
!415 = !DILocation(line: 184, column: 7, scope: !373)
!416 = !DILocation(line: 184, column: 2, scope: !373)
!417 = !DILocation(line: 185, column: 1, scope: !373)
!418 = distinct !DISubprogram(name: "set_username", scope: !34, file: !34, line: 202, type: !419, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!419 = !DISubroutineType(types: !420)
!420 = !{null}
!421 = !DILocalVariable(name: "pwd", scope: !418, file: !34, line: 204, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !424, line: 49, size: 384, align: 64, elements: !425)
!424 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/dma/task1")
!425 = !{!426, !427, !428, !430, !432, !433, !434}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !423, file: !424, line: 51, baseType: !56, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !423, file: !424, line: 52, baseType: !56, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !423, file: !424, line: 53, baseType: !429, size: 32, align: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !139, line: 125, baseType: !290)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !423, file: !424, line: 54, baseType: !431, size: 32, align: 32, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !139, line: 126, baseType: !290)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !423, file: !424, line: 55, baseType: !56, size: 64, align: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !423, file: !424, line: 56, baseType: !56, size: 64, align: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !423, file: !424, line: 57, baseType: !56, size: 64, align: 64, offset: 320)
!435 = !DILocation(line: 204, column: 17, scope: !418)
!436 = !DILocation(line: 206, column: 12, scope: !418)
!437 = !DILocation(line: 206, column: 10, scope: !418)
!438 = !DILocation(line: 207, column: 21, scope: !439)
!439 = distinct !DILexicalBlock(scope: !418, file: !34, line: 207, column: 6)
!440 = !DILocation(line: 207, column: 33, scope: !439)
!441 = !DILocation(line: 207, column: 6, scope: !442)
!442 = !DILexicalBlockFile(scope: !439, file: !34, discriminator: 1)
!443 = !DILocation(line: 207, column: 6, scope: !439)
!444 = !DILocation(line: 207, column: 6, scope: !418)
!445 = !DILocation(line: 208, column: 3, scope: !439)
!446 = !DILocation(line: 209, column: 21, scope: !447)
!447 = distinct !DILexicalBlock(scope: !418, file: !34, line: 209, column: 6)
!448 = !DILocation(line: 209, column: 40, scope: !447)
!449 = !DILocation(line: 209, column: 6, scope: !450)
!450 = !DILexicalBlockFile(scope: !447, file: !34, discriminator: 1)
!451 = !DILocation(line: 209, column: 6, scope: !447)
!452 = !DILocation(line: 209, column: 6, scope: !418)
!453 = !DILocation(line: 210, column: 3, scope: !447)
!454 = !DILocation(line: 211, column: 21, scope: !455)
!455 = distinct !DILexicalBlock(scope: !418, file: !34, line: 211, column: 6)
!456 = !DILocation(line: 211, column: 37, scope: !455)
!457 = !DILocation(line: 211, column: 6, scope: !458)
!458 = !DILexicalBlockFile(scope: !455, file: !34, discriminator: 1)
!459 = !DILocation(line: 211, column: 6, scope: !455)
!460 = !DILocation(line: 211, column: 6, scope: !418)
!461 = !DILocation(line: 212, column: 3, scope: !455)
!462 = !DILocation(line: 213, column: 17, scope: !418)
!463 = !DILocation(line: 213, column: 8, scope: !418)
!464 = !DILocation(line: 213, column: 6, scope: !418)
!465 = !DILocation(line: 214, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !418, file: !34, line: 214, column: 6)
!467 = !DILocation(line: 214, column: 10, scope: !466)
!468 = !DILocation(line: 214, column: 17, scope: !466)
!469 = !DILocation(line: 214, column: 20, scope: !470)
!470 = !DILexicalBlockFile(scope: !466, file: !34, discriminator: 1)
!471 = !DILocation(line: 214, column: 25, scope: !470)
!472 = !DILocation(line: 214, column: 33, scope: !470)
!473 = !DILocation(line: 214, column: 41, scope: !470)
!474 = !DILocation(line: 214, column: 44, scope: !475)
!475 = !DILexicalBlockFile(scope: !466, file: !34, discriminator: 2)
!476 = !DILocation(line: 214, column: 49, scope: !475)
!477 = !DILocation(line: 214, column: 60, scope: !475)
!478 = !DILocation(line: 214, column: 6, scope: !475)
!479 = !DILocation(line: 215, column: 22, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !34, line: 215, column: 7)
!481 = distinct !DILexicalBlock(scope: !466, file: !34, line: 214, column: 69)
!482 = !DILocation(line: 215, column: 27, scope: !480)
!483 = !DILocation(line: 215, column: 36, scope: !480)
!484 = !DILocation(line: 215, column: 7, scope: !480)
!485 = !DILocation(line: 215, column: 7, scope: !481)
!486 = !DILocation(line: 216, column: 4, scope: !480)
!487 = !DILocation(line: 217, column: 2, scope: !481)
!488 = !DILocation(line: 218, column: 56, scope: !418)
!489 = !DILocation(line: 218, column: 50, scope: !418)
!490 = !DILocation(line: 218, column: 2, scope: !418)
!491 = !DILocation(line: 219, column: 1, scope: !418)
!492 = !DILocation(line: 219, column: 1, scope: !493)
!493 = !DILexicalBlockFile(scope: !418, file: !34, discriminator: 1)
!494 = distinct !DISubprogram(name: "check_username", scope: !34, file: !34, line: 188, type: !495, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!495 = !DISubroutineType(types: !496)
!496 = !{!20, !37, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !498, line: 80, baseType: !429)
!498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dma/task1")
!499 = !DILocalVariable(name: "name", arg: 1, scope: !494, file: !34, line: 188, type: !37)
!500 = !DILocation(line: 188, column: 28, scope: !494)
!501 = !DILocalVariable(name: "ckuid", arg: 2, scope: !494, file: !34, line: 188, type: !497)
!502 = !DILocation(line: 188, column: 40, scope: !494)
!503 = !DILocalVariable(name: "pwd", scope: !494, file: !34, line: 190, type: !422)
!504 = !DILocation(line: 190, column: 17, scope: !494)
!505 = !DILocation(line: 192, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !494, file: !34, line: 192, column: 6)
!507 = !DILocation(line: 192, column: 11, scope: !506)
!508 = !DILocation(line: 192, column: 6, scope: !494)
!509 = !DILocation(line: 193, column: 3, scope: !506)
!510 = !DILocation(line: 194, column: 17, scope: !494)
!511 = !DILocation(line: 194, column: 8, scope: !494)
!512 = !DILocation(line: 194, column: 6, scope: !494)
!513 = !DILocation(line: 195, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !494, file: !34, line: 195, column: 6)
!515 = !DILocation(line: 195, column: 10, scope: !514)
!516 = !DILocation(line: 195, column: 17, scope: !514)
!517 = !DILocation(line: 195, column: 20, scope: !518)
!518 = !DILexicalBlockFile(scope: !514, file: !34, discriminator: 1)
!519 = !DILocation(line: 195, column: 25, scope: !518)
!520 = !DILocation(line: 195, column: 35, scope: !518)
!521 = !DILocation(line: 195, column: 32, scope: !518)
!522 = !DILocation(line: 195, column: 6, scope: !518)
!523 = !DILocation(line: 196, column: 3, scope: !514)
!524 = !DILocation(line: 197, column: 45, scope: !494)
!525 = !DILocation(line: 197, column: 2, scope: !494)
!526 = !DILocation(line: 198, column: 2, scope: !494)
!527 = !DILocation(line: 199, column: 1, scope: !494)
!528 = distinct !DISubprogram(name: "deltmp", scope: !34, file: !34, line: 222, type: !419, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!529 = !DILocalVariable(name: "t", scope: !528, file: !34, line: 224, type: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stritem", file: !532, line: 92, size: 128, align: 64, elements: !533)
!532 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!533 = !{!534, !538}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !532, line: 93, baseType: !535, size: 64, align: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !532, line: 93, size: 64, align: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !535, file: !532, line: 93, baseType: !530, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !531, file: !532, line: 94, baseType: !56, size: 64, align: 64, offset: 64)
!539 = !DILocation(line: 224, column: 18, scope: !528)
!540 = !DILocation(line: 226, column: 4, scope: !541)
!541 = distinct !DILexicalBlock(scope: !528, file: !34, line: 226, column: 1)
!542 = !DILocation(line: 226, column: 3, scope: !541)
!543 = !DILocation(line: 226, column: 5, scope: !541)
!544 = !DILocation(line: 226, column: 1, scope: !545)
!545 = !DILexicalBlockFile(scope: !546, file: !34, discriminator: 1)
!546 = distinct !DILexicalBlock(scope: !541, file: !34, line: 226, column: 1)
!547 = !DILocation(line: 227, column: 10, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !34, line: 226, column: 32)
!549 = !DILocation(line: 227, column: 13, scope: !548)
!550 = !DILocation(line: 227, column: 3, scope: !548)
!551 = !DILocation(line: 228, column: 2, scope: !548)
!552 = !DILocation(line: 226, column: 1, scope: !553)
!553 = !DILexicalBlockFile(scope: !546, file: !34, discriminator: 2)
!554 = !DILocation(line: 226, column: 2, scope: !553)
!555 = !DILocation(line: 226, column: 3, scope: !553)
!556 = distinct !{!556, !557}
!557 = !DILocation(line: 226, column: 1, scope: !528)
!558 = !DILocation(line: 229, column: 1, scope: !528)
!559 = distinct !DISubprogram(name: "do_timeout", scope: !34, file: !34, line: 243, type: !560, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!560 = !DISubroutineType(types: !561)
!561 = !{!20, !20, !20}
!562 = !DILocalVariable(name: "timeout", arg: 1, scope: !559, file: !34, line: 243, type: !20)
!563 = !DILocation(line: 243, column: 16, scope: !559)
!564 = !DILocalVariable(name: "dojmp", arg: 2, scope: !559, file: !34, line: 243, type: !20)
!565 = !DILocation(line: 243, column: 29, scope: !559)
!566 = !DILocalVariable(name: "act", scope: !559, file: !34, line: 245, type: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !568, line: 24, size: 1216, align: 64, elements: !569)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/dma/task1")
!569 = !{!570, !648, !649, !650}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !567, file: !568, line: 35, baseType: !571, size: 64, align: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !568, line: 28, size: 64, align: 64, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !571, file: !568, line: 31, baseType: !23, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !571, file: !568, line: 33, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !20, !578, !19}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !580, line: 133, baseType: !581)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/dma/task1")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 62, size: 1024, align: 64, elements: !582)
!582 = !{!583, !584, !585, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !581, file: !580, line: 64, baseType: !20, size: 32, align: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !581, file: !580, line: 65, baseType: !20, size: 32, align: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !581, file: !580, line: 67, baseType: !20, size: 32, align: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !581, file: !580, line: 132, baseType: !587, size: 896, align: 64, offset: 128)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !580, line: 69, size: 896, align: 64, elements: !588)
!588 = !{!589, !593, !599, !610, !616, !626, !637, !642}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !587, file: !580, line: 71, baseType: !590, size: 896, align: 32)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 896, align: 32, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 28)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !587, file: !580, line: 78, baseType: !594, size: 64, align: 32)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 74, size: 64, align: 32, elements: !595)
!595 = !{!596, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !594, file: !580, line: 76, baseType: !597, size: 32, align: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !139, line: 133, baseType: !20)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !594, file: !580, line: 77, baseType: !429, size: 32, align: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !587, file: !580, line: 86, baseType: !600, size: 128, align: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 81, size: 128, align: 64, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !600, file: !580, line: 83, baseType: !20, size: 32, align: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !600, file: !580, line: 84, baseType: !20, size: 32, align: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !600, file: !580, line: 85, baseType: !605, size: 64, align: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !580, line: 36, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !580, line: 32, size: 64, align: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !606, file: !580, line: 34, baseType: !20, size: 32, align: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !606, file: !580, line: 35, baseType: !19, size: 64, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !587, file: !580, line: 94, baseType: !611, size: 128, align: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 89, size: 128, align: 64, elements: !612)
!612 = !{!613, !614, !615}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !611, file: !580, line: 91, baseType: !597, size: 32, align: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !611, file: !580, line: 92, baseType: !429, size: 32, align: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !611, file: !580, line: 93, baseType: !605, size: 64, align: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !587, file: !580, line: 104, baseType: !617, size: 256, align: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 97, size: 256, align: 64, elements: !618)
!618 = !{!619, !620, !621, !622, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !617, file: !580, line: 99, baseType: !597, size: 32, align: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !617, file: !580, line: 100, baseType: !429, size: 32, align: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !617, file: !580, line: 101, baseType: !20, size: 32, align: 32, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !617, file: !580, line: 102, baseType: !623, size: 64, align: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !580, line: 58, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !139, line: 135, baseType: !22)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !617, file: !580, line: 103, baseType: !623, size: 64, align: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !587, file: !580, line: 116, baseType: !627, size: 256, align: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 107, size: 256, align: 64, elements: !628)
!628 = !{!629, !630, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !627, file: !580, line: 109, baseType: !19, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !627, file: !580, line: 110, baseType: !631, size: 16, align: 16, offset: 64)
!631 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !627, file: !580, line: 115, baseType: !633, size: 128, align: 64, offset: 128)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !580, line: 111, size: 128, align: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !633, file: !580, line: 113, baseType: !19, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !633, file: !580, line: 114, baseType: !19, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !587, file: !580, line: 123, baseType: !638, size: 128, align: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 119, size: 128, align: 64, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !638, file: !580, line: 121, baseType: !22, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !638, file: !580, line: 122, baseType: !20, size: 32, align: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !587, file: !580, line: 131, baseType: !643, size: 128, align: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !580, line: 126, size: 128, align: 64, elements: !644)
!644 = !{!645, !646, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !643, file: !580, line: 128, baseType: !19, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !643, file: !580, line: 129, baseType: !20, size: 32, align: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !643, file: !580, line: 130, baseType: !290, size: 32, align: 32, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !567, file: !568, line: 43, baseType: !71, size: 1024, align: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !567, file: !568, line: 46, baseType: !20, size: 32, align: 32, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !567, file: !568, line: 49, baseType: !651, size: 64, align: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!652 = !DILocation(line: 245, column: 19, scope: !559)
!653 = !DILocalVariable(name: "ret", scope: !559, file: !34, line: 246, type: !20)
!654 = !DILocation(line: 246, column: 6, scope: !559)
!655 = !DILocation(line: 248, column: 19, scope: !559)
!656 = !DILocation(line: 248, column: 2, scope: !559)
!657 = !DILocation(line: 249, column: 6, scope: !559)
!658 = !DILocation(line: 249, column: 15, scope: !559)
!659 = !DILocation(line: 251, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !559, file: !34, line: 251, column: 6)
!661 = !DILocation(line: 251, column: 6, scope: !559)
!662 = !DILocation(line: 252, column: 6, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !34, line: 251, column: 15)
!664 = !DILocation(line: 252, column: 26, scope: !663)
!665 = !DILocation(line: 252, column: 17, scope: !663)
!666 = !DILocation(line: 253, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !34, line: 253, column: 7)
!668 = !DILocation(line: 253, column: 37, scope: !667)
!669 = !DILocation(line: 253, column: 7, scope: !663)
!670 = !DILocation(line: 254, column: 4, scope: !667)
!671 = !DILocation(line: 255, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !663, file: !34, line: 255, column: 7)
!673 = !DILocation(line: 255, column: 7, scope: !663)
!674 = !DILocation(line: 256, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !34, line: 255, column: 14)
!676 = !DILocation(line: 256, column: 8, scope: !675)
!677 = !DILocation(line: 257, column: 8, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !34, line: 257, column: 8)
!679 = !DILocation(line: 257, column: 8, scope: !675)
!680 = !DILocation(line: 258, column: 5, scope: !678)
!681 = !DILocation(line: 260, column: 17, scope: !675)
!682 = !DILocation(line: 261, column: 3, scope: !675)
!683 = !DILocation(line: 263, column: 9, scope: !663)
!684 = !DILocation(line: 263, column: 3, scope: !663)
!685 = !DILocation(line: 264, column: 2, scope: !663)
!686 = !DILocation(line: 264, column: 9, scope: !687)
!687 = !DILexicalBlockFile(scope: !660, file: !34, discriminator: 1)
!688 = !DILocation(line: 266, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !660, file: !34, line: 264, column: 9)
!690 = !DILocation(line: 268, column: 6, scope: !689)
!691 = !DILocation(line: 268, column: 26, scope: !689)
!692 = !DILocation(line: 268, column: 17, scope: !689)
!693 = !DILocation(line: 269, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !689, file: !34, line: 269, column: 7)
!695 = !DILocation(line: 269, column: 37, scope: !694)
!696 = !DILocation(line: 269, column: 7, scope: !689)
!697 = !DILocation(line: 270, column: 4, scope: !694)
!698 = !DILocation(line: 271, column: 16, scope: !689)
!699 = !DILocation(line: 274, column: 10, scope: !559)
!700 = !DILocation(line: 274, column: 2, scope: !559)
!701 = distinct !DISubprogram(name: "sigalrm_handler", scope: !34, file: !34, line: 235, type: !26, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!702 = !DILocalVariable(name: "signo", arg: 1, scope: !701, file: !34, line: 235, type: !20)
!703 = !DILocation(line: 235, column: 21, scope: !701)
!704 = !DILocation(line: 237, column: 8, scope: !701)
!705 = !DILocation(line: 238, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !34, line: 238, column: 6)
!707 = !DILocation(line: 238, column: 6, scope: !701)
!708 = !DILocation(line: 239, column: 3, scope: !706)
!709 = !DILocation(line: 240, column: 1, scope: !701)
!710 = distinct !DISubprogram(name: "open_locked", scope: !34, file: !34, line: 278, type: !711, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!711 = !DISubroutineType(types: !712)
!712 = !{!20, !37, !20, null}
!713 = !DILocalVariable(name: "fname", arg: 1, scope: !710, file: !34, line: 278, type: !37)
!714 = !DILocation(line: 278, column: 25, scope: !710)
!715 = !DILocalVariable(name: "flags", arg: 2, scope: !710, file: !34, line: 278, type: !20)
!716 = !DILocation(line: 278, column: 36, scope: !710)
!717 = !DILocalVariable(name: "mode", scope: !710, file: !34, line: 280, type: !20)
!718 = !DILocation(line: 280, column: 6, scope: !710)
!719 = !DILocation(line: 282, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !34, line: 282, column: 6)
!721 = !DILocation(line: 282, column: 12, scope: !720)
!722 = !DILocation(line: 282, column: 6, scope: !710)
!723 = !DILocalVariable(name: "ap", scope: !724, file: !34, line: 283, type: !282)
!724 = distinct !DILexicalBlock(scope: !720, file: !34, line: 282, column: 22)
!725 = !DILocation(line: 283, column: 11, scope: !724)
!726 = !DILocation(line: 284, column: 2, scope: !724)
!727 = !DILocation(line: 285, column: 9, scope: !724)
!728 = !DILocation(line: 285, column: 9, scope: !729)
!729 = !DILexicalBlockFile(scope: !724, file: !34, discriminator: 1)
!730 = !DILocation(line: 285, column: 9, scope: !731)
!731 = !DILexicalBlockFile(scope: !724, file: !34, discriminator: 2)
!732 = !DILocation(line: 285, column: 9, scope: !733)
!733 = !DILexicalBlockFile(scope: !724, file: !34, discriminator: 3)
!734 = !DILocation(line: 285, column: 8, scope: !733)
!735 = !DILocation(line: 286, column: 2, scope: !724)
!736 = !DILocation(line: 287, column: 2, scope: !724)
!737 = !DILocalVariable(name: "fd", scope: !710, file: !34, line: 290, type: !20)
!738 = !DILocation(line: 290, column: 6, scope: !710)
!739 = !DILocalVariable(name: "save_errno", scope: !710, file: !34, line: 290, type: !20)
!740 = !DILocation(line: 290, column: 10, scope: !710)
!741 = !DILocation(line: 292, column: 12, scope: !710)
!742 = !DILocation(line: 292, column: 19, scope: !710)
!743 = !DILocation(line: 292, column: 26, scope: !710)
!744 = !DILocation(line: 292, column: 7, scope: !710)
!745 = !DILocation(line: 292, column: 5, scope: !710)
!746 = !DILocation(line: 293, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !710, file: !34, line: 293, column: 6)
!748 = !DILocation(line: 293, column: 9, scope: !747)
!749 = !DILocation(line: 293, column: 6, scope: !710)
!750 = !DILocation(line: 294, column: 10, scope: !747)
!751 = !DILocation(line: 294, column: 3, scope: !747)
!752 = !DILocation(line: 295, column: 12, scope: !753)
!753 = distinct !DILexicalBlock(scope: !710, file: !34, line: 295, column: 6)
!754 = !DILocation(line: 295, column: 25, scope: !753)
!755 = !DILocation(line: 295, column: 31, scope: !753)
!756 = !DILocation(line: 295, column: 24, scope: !753)
!757 = !DILocation(line: 295, column: 22, scope: !753)
!758 = !DILocation(line: 295, column: 6, scope: !753)
!759 = !DILocation(line: 295, column: 59, scope: !753)
!760 = !DILocation(line: 295, column: 6, scope: !710)
!761 = !DILocation(line: 296, column: 17, scope: !762)
!762 = distinct !DILexicalBlock(scope: !753, file: !34, line: 295, column: 64)
!763 = !DILocation(line: 296, column: 16, scope: !762)
!764 = !DILocation(line: 296, column: 14, scope: !762)
!765 = !DILocation(line: 297, column: 9, scope: !762)
!766 = !DILocation(line: 297, column: 3, scope: !762)
!767 = !DILocation(line: 298, column: 10, scope: !762)
!768 = !DILocation(line: 298, column: 4, scope: !762)
!769 = !DILocation(line: 298, column: 8, scope: !762)
!770 = !DILocation(line: 299, column: 3, scope: !762)
!771 = !DILocation(line: 301, column: 9, scope: !710)
!772 = !DILocation(line: 301, column: 2, scope: !710)
!773 = !DILocation(line: 305, column: 1, scope: !710)
!774 = !DILocalVariable(name: "error", scope: !53, file: !34, line: 311, type: !155)
!775 = !DILocation(line: 311, column: 9, scope: !53)
!776 = !DILocalVariable(name: "now", scope: !53, file: !34, line: 312, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !778, line: 75, baseType: !779)
!778 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dma/task1")
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !139, line: 139, baseType: !22)
!780 = !DILocation(line: 312, column: 9, scope: !53)
!781 = !DILocation(line: 314, column: 8, scope: !53)
!782 = !DILocation(line: 314, column: 6, scope: !53)
!783 = !DILocation(line: 316, column: 10, scope: !53)
!784 = !DILocation(line: 315, column: 10, scope: !53)
!785 = !DILocation(line: 315, column: 8, scope: !53)
!786 = !DILocation(line: 317, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !53, file: !34, line: 317, column: 6)
!788 = !DILocation(line: 317, column: 12, scope: !787)
!789 = !DILocation(line: 317, column: 6, scope: !53)
!790 = !DILocation(line: 318, column: 3, scope: !787)
!791 = !DILocation(line: 319, column: 2, scope: !53)
!792 = distinct !DISubprogram(name: "strprefixcmp", scope: !34, file: !34, line: 323, type: !793, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!793 = !DISubroutineType(types: !794)
!794 = !{!20, !37, !37}
!795 = !DILocalVariable(name: "str", arg: 1, scope: !792, file: !34, line: 323, type: !37)
!796 = !DILocation(line: 323, column: 26, scope: !792)
!797 = !DILocalVariable(name: "prefix", arg: 2, scope: !792, file: !34, line: 323, type: !37)
!798 = !DILocation(line: 323, column: 43, scope: !792)
!799 = !DILocation(line: 325, column: 22, scope: !792)
!800 = !DILocation(line: 325, column: 27, scope: !792)
!801 = !DILocation(line: 325, column: 42, scope: !792)
!802 = !DILocation(line: 325, column: 35, scope: !792)
!803 = !DILocation(line: 325, column: 10, scope: !804)
!804 = !DILexicalBlockFile(scope: !792, file: !34, discriminator: 1)
!805 = !DILocation(line: 325, column: 2, scope: !792)
!806 = distinct !DISubprogram(name: "init_random", scope: !34, file: !34, line: 329, type: !419, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !40)
!807 = !DILocalVariable(name: "seed", scope: !806, file: !34, line: 331, type: !290)
!808 = !DILocation(line: 331, column: 15, scope: !806)
!809 = !DILocalVariable(name: "rf", scope: !806, file: !34, line: 332, type: !20)
!810 = !DILocation(line: 332, column: 6, scope: !806)
!811 = !DILocation(line: 334, column: 7, scope: !806)
!812 = !DILocation(line: 334, column: 5, scope: !806)
!813 = !DILocation(line: 335, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !806, file: !34, line: 335, column: 6)
!815 = !DILocation(line: 335, column: 9, scope: !814)
!816 = !DILocation(line: 335, column: 6, scope: !806)
!817 = !DILocation(line: 336, column: 8, scope: !814)
!818 = !DILocation(line: 336, column: 6, scope: !814)
!819 = !DILocation(line: 336, column: 3, scope: !814)
!820 = !DILocation(line: 338, column: 8, scope: !821)
!821 = distinct !DILexicalBlock(scope: !806, file: !34, line: 338, column: 6)
!822 = !DILocation(line: 338, column: 11, scope: !821)
!823 = !DILocation(line: 338, column: 17, scope: !821)
!824 = !DILocation(line: 338, column: 25, scope: !825)
!825 = !DILexicalBlockFile(scope: !821, file: !34, discriminator: 1)
!826 = !DILocation(line: 338, column: 29, scope: !825)
!827 = !DILocation(line: 338, column: 20, scope: !825)
!828 = !DILocation(line: 338, column: 50, scope: !825)
!829 = !DILocation(line: 338, column: 6, scope: !825)
!830 = !DILocation(line: 339, column: 11, scope: !821)
!831 = !DILocation(line: 339, column: 23, scope: !825)
!832 = !DILocation(line: 339, column: 23, scope: !821)
!833 = !DILocation(line: 339, column: 21, scope: !821)
!834 = !DILocation(line: 339, column: 35, scope: !821)
!835 = !DILocation(line: 339, column: 33, scope: !821)
!836 = !DILocation(line: 339, column: 10, scope: !821)
!837 = !DILocation(line: 339, column: 8, scope: !821)
!838 = !DILocation(line: 339, column: 3, scope: !821)
!839 = !DILocation(line: 341, column: 10, scope: !806)
!840 = !DILocation(line: 341, column: 2, scope: !806)
!841 = !DILocation(line: 343, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !806, file: !34, line: 343, column: 6)
!843 = !DILocation(line: 343, column: 9, scope: !842)
!844 = !DILocation(line: 343, column: 6, scope: !806)
!845 = !DILocation(line: 344, column: 9, scope: !842)
!846 = !DILocation(line: 344, column: 3, scope: !842)
!847 = !DILocation(line: 345, column: 1, scope: !806)
