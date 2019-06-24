; ModuleID = './[inter]keepalived--check--check_parser.o.i'
source_filename = "./[inter]keepalived--check--check_parser.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vector = type { i32, i32, i8** }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._check_data = type { i8, %struct._ssl_data*, %struct._list*, %struct._list* }
%struct._ssl_data = type { i32, i32, %struct.ssl_ctx_st*, %struct.ssl_method_st*, i8*, i8*, i8*, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.3, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.stack_st_SSL_CIPHER = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
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
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
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
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, {}*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.0, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.0 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
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
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.srtp_protection_profile_st = type { i8*, i64 }
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
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl3_enc_method = type opaque
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.5, %struct._thread_event*, %union.anon.7 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.7 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wrr\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"wlc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lblc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ovf\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lblcr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"sed\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"nq\00", align 1
@lvs_schedulers = global [14 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [4 x i8] c"SSL\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"virtual_server_group\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"virtual_server\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ip_family\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"delay_before_retry\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"warmup\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"delay_loop\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"inhibit_on_failure\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"lb_algo\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"lvs_sched\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"hashed\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"flag-1\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"flag-2\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"flag-3\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"sh-port\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"sh-fallback\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"lb_kind\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"lvs_method\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"persistence_engine\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"persistence_timeout\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"persistence_granularity\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ha_suspend\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"smtp_alert\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"virtualhost\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"quorum_up\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"quorum_down\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"quorum\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"hysteresis\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"sorry_server\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"sorry_server_inhibit\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"sorry_server_lvs_method\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"real_server\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"uthreshold\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"lthreshold\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"notify_up\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"notify_down\00", align 1
@reload = external global i8, align 1
@keywords = external global %struct._vector*, align 8
@garp_delay = common global %struct._list* null, align 8
@check_data = external global %struct._check_data*, align 8
@.str.59 = private unnamed_addr constant [42 x i8] c"SSL context already specified - replacing\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"SSL password already specified - replacing\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"SSL cafile already specified - replacing\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"SSL certfile already specified - replacing\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"SSL keyfile already specified - replacing\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"virtual server group %s has no entries - removing\00", align 1
@global_data = external global %struct._data*, align 8
@.str.65 = private unnamed_addr constant [90 x i8] c"Address family of virtual server and sorry server %s don't match - skipping sorry server.\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"unknown address family %s\00", align 1
@.str.69 = private unnamed_addr constant [64 x i8] c"Virtual server specified family %s conflicts with server family\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"retry value invalid - %s\00", align 1
@.str.71 = private unnamed_addr constant [58 x i8] c"virtual server delay before retry '%s' invalid - ignoring\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"virtual server warmup '%s' invalid - ignoring\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"virtual server delay loop '%s' invalid - ignoring\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"Invalid lvs_scheduler '%s' - ignoring\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"mh-port\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"mh-fallback\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"%s only applies to sh scheduler - ignoring\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"NAT\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"DR\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"TUN\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"PARSER : unknown [%s] routing method.\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"persistence_timeout invalid\00", align 1
@.str.83 = private unnamed_addr constant [52 x i8] c"Invalid IPv6 persistence_granularity specified - %s\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"Invalid IPv4 persistence_granularity specified - %s\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"IPv4 persistence_granularity netmask is not solid - %s\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"SCTP\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"Unknown protocol %s - ignoring\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"Invalid virtual_server smtp_alert parameter %s\00", align 1
@.str.91 = private unnamed_addr constant [54 x i8] c"(%s) quorum_up script already specified - ignoring %s\00", align 1
@.str.92 = private unnamed_addr constant [56 x i8] c"(%s) quorum_down script already specified - ignoring %s\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"Quorum %s must be in [1, %u]. Setting to 1.\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"Hysteresis %s must be in [0, %u] - ignoring\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"Virtual server weight %s is outside range 1-65535\00", align 1
@.str.96 = private unnamed_addr constant [66 x i8] c"Ignoring sorry_server inhibit used before or without sorry_server\00", align 1
@.str.97 = private unnamed_addr constant [50 x i8] c"sorry_server forwarding used without sorry_server\00", align 1
@.str.98 = private unnamed_addr constant [54 x i8] c"PARSER : unknown [%s] routing method for real server.\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"Real server weight %s is outside range 1-65535\00", align 1
@.str.100 = private unnamed_addr constant [47 x i8] c"Invalid real_server uthreshold '%s' - ignoring\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"Invalid real_server lthreshold '%s' - ignoring\00", align 1
@.str.102 = private unnamed_addr constant [40 x i8] c"Invalid inhibit_on_failure parameter %s\00", align 1
@.str.103 = private unnamed_addr constant [54 x i8] c"(%s) notify_up script already specified - ignoring %s\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"(%s) notify_down script already specified - ignoring %s\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Invalid alpha parameter %s\00", align 1
@.str.107 = private unnamed_addr constant [55 x i8] c"real server delay_before_retry '%s' invalid - ignoring\00", align 1
@.str.108 = private unnamed_addr constant [43 x i8] c"real server warmup '%s' invalid - ignoring\00", align 1
@.str.109 = private unnamed_addr constant [47 x i8] c"real server delay_loop '%s' invalid - ignoring\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c"Invalid real_server smtp_alert parameter %s\00", align 1
@.str.111 = private unnamed_addr constant [88 x i8] c"Address family of virtual server and real server %s don't match - skipping real server.\00", align 1

; Function Attrs: nounwind uwtable
define void @init_check_keywords(i1 zeroext) #0 !dbg !148 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !153, metadata !154), !dbg !155
  %4 = load i8, i8* %2, align 1, !dbg !156
  %5 = trunc i8 %4 to i1, !dbg !156
  call void @install_keyword_root(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), void (%struct._vector*)* @ssl_handler, i1 zeroext %5), !dbg !157
  call void @install_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), void (%struct._vector*)* @sslpass_handler), !dbg !158
  call void @install_keyword(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), void (%struct._vector*)* @sslca_handler), !dbg !159
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), void (%struct._vector*)* @sslcert_handler), !dbg !160
  call void @install_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), void (%struct._vector*)* @sslkey_handler), !dbg !161
  %6 = load i8, i8* %2, align 1, !dbg !162
  %7 = trunc i8 %6 to i1, !dbg !162
  call void @install_keyword_root(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), void (%struct._vector*)* @vsg_handler, i1 zeroext %7), !dbg !163
  %8 = load i8, i8* %2, align 1, !dbg !164
  %9 = trunc i8 %8 to i1, !dbg !164
  call void @install_keyword_root(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), void (%struct._vector*)* @vs_handler, i1 zeroext %9), !dbg !165
  call void @install_root_end_handler(void ()* @vs_end_handler), !dbg !166
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (%struct._vector*)* @ip_family_handler), !dbg !167
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), void (%struct._vector*)* @vs_retry_handler), !dbg !168
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), void (%struct._vector*)* @vs_delay_before_retry_handler), !dbg !169
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), void (%struct._vector*)* @vs_warmup_handler), !dbg !170
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), void (%struct._vector*)* @vs_delay_handler), !dbg !171
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void (%struct._vector*)* @vs_inhibit_handler), !dbg !172
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void (%struct._vector*)* @lbalgo_handler), !dbg !173
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), void (%struct._vector*)* @lbalgo_handler), !dbg !174
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !175
  call void @install_keyword(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !176
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !177
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !178
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !179
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !180
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), void (%struct._vector*)* @lbflags_handler), !dbg !181
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void (%struct._vector*)* @forwarding_handler), !dbg !182
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), void (%struct._vector*)* @forwarding_handler), !dbg !183
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), void (%struct._vector*)* @pengine_handler), !dbg !184
  call void @install_keyword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), void (%struct._vector*)* @pto_handler), !dbg !185
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), void (%struct._vector*)* @pgr_handler), !dbg !186
  call void @install_keyword(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), void (%struct._vector*)* @proto_handler), !dbg !187
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), void (%struct._vector*)* @hasuspend_handler), !dbg !188
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), void (%struct._vector*)* @vs_smtp_alert_handler), !dbg !189
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), void (%struct._vector*)* @vs_virtualhost_handler), !dbg !190
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), void (%struct._vector*)* @vs_alpha_handler), !dbg !191
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), void (%struct._vector*)* @omega_handler), !dbg !192
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), void (%struct._vector*)* @quorum_up_handler), !dbg !193
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), void (%struct._vector*)* @quorum_down_handler), !dbg !194
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), void (%struct._vector*)* @quorum_handler), !dbg !195
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), void (%struct._vector*)* @hysteresis_handler), !dbg !196
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), void (%struct._vector*)* @vs_weight_handler), !dbg !197
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), void (%struct._vector*)* @ssvr_handler), !dbg !198
  call void @install_keyword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), void (%struct._vector*)* @ssvri_handler), !dbg !199
  call void @install_keyword(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), void (%struct._vector*)* @ss_forwarding_handler), !dbg !200
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), void (%struct._vector*)* @rs_handler), !dbg !201
  call void @install_sublevel(), !dbg !202
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), void (%struct._vector*)* @rs_weight_handler), !dbg !203
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), void (%struct._vector*)* @rs_forwarding_handler), !dbg !204
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), void (%struct._vector*)* @uthreshold_handler), !dbg !205
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), void (%struct._vector*)* @lthreshold_handler), !dbg !206
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void (%struct._vector*)* @rs_inhibit_handler), !dbg !207
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), void (%struct._vector*)* @notify_up_handler), !dbg !208
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), void (%struct._vector*)* @notify_down_handler), !dbg !209
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), void (%struct._vector*)* @rs_alpha_handler), !dbg !210
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), void (%struct._vector*)* @rs_retry_handler), !dbg !211
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), void (%struct._vector*)* @rs_delay_before_retry_handler), !dbg !212
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), void (%struct._vector*)* @rs_warmup_handler), !dbg !213
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), void (%struct._vector*)* @rs_delay_handler), !dbg !214
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), void (%struct._vector*)* @rs_smtp_alert_handler), !dbg !215
  call void @install_keyword(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), void (%struct._vector*)* @rs_virtualhost_handler), !dbg !216
  call void @install_sublevel_end_handler(void ()* @rs_end_handler), !dbg !217
  call void @install_checkers_keyword(), !dbg !218
  call void @install_sublevel_end(), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @install_keyword_root(i8*, void (%struct._vector*)*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @ssl_handler(%struct._vector*) #0 !dbg !221 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !233, metadata !154), !dbg !234
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !235
  %4 = icmp ne %struct._vector* %3, null, !dbg !235
  br i1 %4, label %6, label %5, !dbg !237

; <label>:5:                                      ; preds = %1
  br label %16, !dbg !238

; <label>:6:                                      ; preds = %1
  %7 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !239
  %8 = getelementptr inbounds %struct._check_data, %struct._check_data* %7, i32 0, i32 1, !dbg !241
  %9 = load %struct._ssl_data*, %struct._ssl_data** %8, align 8, !dbg !241
  %10 = icmp ne %struct._ssl_data* %9, null, !dbg !239
  br i1 %10, label %11, label %12, !dbg !242

; <label>:11:                                     ; preds = %6
  call void @free_ssl(), !dbg !243
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0)), !dbg !245
  br label %12, !dbg !246

; <label>:12:                                     ; preds = %11, %6
  %13 = call %struct._ssl_data* @alloc_ssl(), !dbg !247
  %14 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !248
  %15 = getelementptr inbounds %struct._check_data, %struct._check_data* %14, i32 0, i32 1, !dbg !249
  store %struct._ssl_data* %13, %struct._ssl_data** %15, align 8, !dbg !250
  br label %16, !dbg !251

; <label>:16:                                     ; preds = %12, %5
  ret void, !dbg !252
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #2

; Function Attrs: nounwind uwtable
define internal void @sslpass_handler(%struct._vector*) #0 !dbg !254 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !255, metadata !154), !dbg !256
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !257
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 1, !dbg !259
  %5 = load %struct._ssl_data*, %struct._ssl_data** %4, align 8, !dbg !259
  %6 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %5, i32 0, i32 4, !dbg !260
  %7 = load i8*, i8** %6, align 8, !dbg !260
  %8 = icmp ne i8* %7, null, !dbg !257
  br i1 %8, label %9, label %19, !dbg !261

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.60, i32 0, i32 0)), !dbg !262
  %10 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !264
  %11 = getelementptr inbounds %struct._check_data, %struct._check_data* %10, i32 0, i32 1, !dbg !265
  %12 = load %struct._ssl_data*, %struct._ssl_data** %11, align 8, !dbg !265
  %13 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %12, i32 0, i32 4, !dbg !266
  %14 = load i8*, i8** %13, align 8, !dbg !266
  call void @free(i8* %14) #7, !dbg !267
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !268
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 1, !dbg !269
  %17 = load %struct._ssl_data*, %struct._ssl_data** %16, align 8, !dbg !269
  %18 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %17, i32 0, i32 4, !dbg !270
  store i8* null, i8** %18, align 8, !dbg !271
  br label %19, !dbg !272

; <label>:19:                                     ; preds = %9, %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !273
  %21 = call i8* @set_value(%struct._vector* %20), !dbg !274
  %22 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !275
  %23 = getelementptr inbounds %struct._check_data, %struct._check_data* %22, i32 0, i32 1, !dbg !276
  %24 = load %struct._ssl_data*, %struct._ssl_data** %23, align 8, !dbg !276
  %25 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %24, i32 0, i32 4, !dbg !277
  store i8* %21, i8** %25, align 8, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind uwtable
define internal void @sslca_handler(%struct._vector*) #0 !dbg !280 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !281, metadata !154), !dbg !282
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !283
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 1, !dbg !285
  %5 = load %struct._ssl_data*, %struct._ssl_data** %4, align 8, !dbg !285
  %6 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %5, i32 0, i32 5, !dbg !286
  %7 = load i8*, i8** %6, align 8, !dbg !286
  %8 = icmp ne i8* %7, null, !dbg !283
  br i1 %8, label %9, label %19, !dbg !287

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0)), !dbg !288
  %10 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !290
  %11 = getelementptr inbounds %struct._check_data, %struct._check_data* %10, i32 0, i32 1, !dbg !291
  %12 = load %struct._ssl_data*, %struct._ssl_data** %11, align 8, !dbg !291
  %13 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %12, i32 0, i32 5, !dbg !292
  %14 = load i8*, i8** %13, align 8, !dbg !292
  call void @free(i8* %14) #7, !dbg !293
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !294
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 1, !dbg !295
  %17 = load %struct._ssl_data*, %struct._ssl_data** %16, align 8, !dbg !295
  %18 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %17, i32 0, i32 5, !dbg !296
  store i8* null, i8** %18, align 8, !dbg !297
  br label %19, !dbg !298

; <label>:19:                                     ; preds = %9, %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !299
  %21 = call i8* @set_value(%struct._vector* %20), !dbg !300
  %22 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !301
  %23 = getelementptr inbounds %struct._check_data, %struct._check_data* %22, i32 0, i32 1, !dbg !302
  %24 = load %struct._ssl_data*, %struct._ssl_data** %23, align 8, !dbg !302
  %25 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %24, i32 0, i32 5, !dbg !303
  store i8* %21, i8** %25, align 8, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind uwtable
define internal void @sslcert_handler(%struct._vector*) #0 !dbg !306 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !307, metadata !154), !dbg !308
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !309
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 1, !dbg !311
  %5 = load %struct._ssl_data*, %struct._ssl_data** %4, align 8, !dbg !311
  %6 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %5, i32 0, i32 6, !dbg !312
  %7 = load i8*, i8** %6, align 8, !dbg !312
  %8 = icmp ne i8* %7, null, !dbg !309
  br i1 %8, label %9, label %19, !dbg !313

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0)), !dbg !314
  %10 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !316
  %11 = getelementptr inbounds %struct._check_data, %struct._check_data* %10, i32 0, i32 1, !dbg !317
  %12 = load %struct._ssl_data*, %struct._ssl_data** %11, align 8, !dbg !317
  %13 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %12, i32 0, i32 6, !dbg !318
  %14 = load i8*, i8** %13, align 8, !dbg !318
  call void @free(i8* %14) #7, !dbg !319
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !320
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 1, !dbg !321
  %17 = load %struct._ssl_data*, %struct._ssl_data** %16, align 8, !dbg !321
  %18 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %17, i32 0, i32 6, !dbg !322
  store i8* null, i8** %18, align 8, !dbg !323
  br label %19, !dbg !324

; <label>:19:                                     ; preds = %9, %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !325
  %21 = call i8* @set_value(%struct._vector* %20), !dbg !326
  %22 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !327
  %23 = getelementptr inbounds %struct._check_data, %struct._check_data* %22, i32 0, i32 1, !dbg !328
  %24 = load %struct._ssl_data*, %struct._ssl_data** %23, align 8, !dbg !328
  %25 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %24, i32 0, i32 6, !dbg !329
  store i8* %21, i8** %25, align 8, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: nounwind uwtable
define internal void @sslkey_handler(%struct._vector*) #0 !dbg !332 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !333, metadata !154), !dbg !334
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !335
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 1, !dbg !337
  %5 = load %struct._ssl_data*, %struct._ssl_data** %4, align 8, !dbg !337
  %6 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %5, i32 0, i32 7, !dbg !338
  %7 = load i8*, i8** %6, align 8, !dbg !338
  %8 = icmp ne i8* %7, null, !dbg !335
  br i1 %8, label %9, label %19, !dbg !339

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i32 0, i32 0)), !dbg !340
  %10 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !342
  %11 = getelementptr inbounds %struct._check_data, %struct._check_data* %10, i32 0, i32 1, !dbg !343
  %12 = load %struct._ssl_data*, %struct._ssl_data** %11, align 8, !dbg !343
  %13 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %12, i32 0, i32 7, !dbg !344
  %14 = load i8*, i8** %13, align 8, !dbg !344
  call void @free(i8* %14) #7, !dbg !345
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !346
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 1, !dbg !347
  %17 = load %struct._ssl_data*, %struct._ssl_data** %16, align 8, !dbg !347
  %18 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %17, i32 0, i32 7, !dbg !348
  store i8* null, i8** %18, align 8, !dbg !349
  br label %19, !dbg !350

; <label>:19:                                     ; preds = %9, %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !351
  %21 = call i8* @set_value(%struct._vector* %20), !dbg !352
  %22 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !353
  %23 = getelementptr inbounds %struct._check_data, %struct._check_data* %22, i32 0, i32 1, !dbg !354
  %24 = load %struct._ssl_data*, %struct._ssl_data** %23, align 8, !dbg !354
  %25 = getelementptr inbounds %struct._ssl_data, %struct._ssl_data* %24, i32 0, i32 7, !dbg !355
  store i8* %21, i8** %25, align 8, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: nounwind uwtable
define internal void @vsg_handler(%struct._vector*) #0 !dbg !358 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server_group*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !359, metadata !154), !dbg !360
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %3, metadata !361, metadata !154), !dbg !370
  %4 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !371
  %5 = icmp ne %struct._vector* %4, null, !dbg !371
  br i1 %5, label %7, label %6, !dbg !373

; <label>:6:                                      ; preds = %1
  br label %69, !dbg !374

; <label>:7:                                      ; preds = %1
  %8 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !375
  %9 = call i8* @strvec_slot(%struct._vector* %8, i64 1), !dbg !376
  call void @alloc_vsg(i8* %9), !dbg !377
  %10 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !379
  %11 = call i8* @strvec_slot(%struct._vector* %10, i64 0), !dbg !380
  call void @alloc_value_block(void (%struct._vector*)* @alloc_vsg_entry, i8* %11), !dbg !381
  %12 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !382
  %13 = getelementptr inbounds %struct._check_data, %struct._check_data* %12, i32 0, i32 2, !dbg !383
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !383
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1, !dbg !384
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !384
  %17 = getelementptr inbounds %struct._element, %struct._element* %16, i32 0, i32 2, !dbg !385
  %18 = load i8*, i8** %17, align 8, !dbg !385
  %19 = bitcast i8* %18 to %struct._virtual_server_group*, !dbg !386
  store %struct._virtual_server_group* %19, %struct._virtual_server_group** %3, align 8, !dbg !387
  %20 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !388
  %21 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %20, i32 0, i32 2, !dbg !390
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !390
  %23 = icmp eq %struct._list* %22, null, !dbg !391
  br i1 %23, label %38, label %24, !dbg !392

; <label>:24:                                     ; preds = %7
  %25 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !393
  %26 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %25, i32 0, i32 2, !dbg !395
  %27 = load %struct._list*, %struct._list** %26, align 8, !dbg !395
  %28 = getelementptr inbounds %struct._list, %struct._list* %27, i32 0, i32 0, !dbg !396
  %29 = load %struct._element*, %struct._element** %28, align 8, !dbg !396
  %30 = icmp eq %struct._element* %29, null, !dbg !397
  br i1 %30, label %31, label %69, !dbg !398

; <label>:31:                                     ; preds = %24
  %32 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !399
  %33 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %32, i32 0, i32 2, !dbg !401
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !401
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 1, !dbg !402
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !402
  %37 = icmp eq %struct._element* %36, null, !dbg !403
  br i1 %37, label %38, label %69, !dbg !404

; <label>:38:                                     ; preds = %31, %7
  %39 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !405
  %40 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %39, i32 0, i32 1, !dbg !407
  %41 = load %struct._list*, %struct._list** %40, align 8, !dbg !407
  %42 = icmp eq %struct._list* %41, null, !dbg !408
  br i1 %42, label %57, label %43, !dbg !409

; <label>:43:                                     ; preds = %38
  %44 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !410
  %45 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %44, i32 0, i32 1, !dbg !412
  %46 = load %struct._list*, %struct._list** %45, align 8, !dbg !412
  %47 = getelementptr inbounds %struct._list, %struct._list* %46, i32 0, i32 0, !dbg !413
  %48 = load %struct._element*, %struct._element** %47, align 8, !dbg !413
  %49 = icmp eq %struct._element* %48, null, !dbg !414
  br i1 %49, label %50, label %69, !dbg !415

; <label>:50:                                     ; preds = %43
  %51 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !416
  %52 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %51, i32 0, i32 1, !dbg !418
  %53 = load %struct._list*, %struct._list** %52, align 8, !dbg !418
  %54 = getelementptr inbounds %struct._list, %struct._list* %53, i32 0, i32 1, !dbg !419
  %55 = load %struct._element*, %struct._element** %54, align 8, !dbg !419
  %56 = icmp eq %struct._element* %55, null, !dbg !420
  br i1 %56, label %57, label %69, !dbg !421

; <label>:57:                                     ; preds = %50, %38
  %58 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !422
  %59 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %58, i32 0, i32 0, !dbg !424
  %60 = load i8*, i8** %59, align 8, !dbg !424
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i32 0, i32 0), i8* %60), !dbg !425
  %61 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !426
  %62 = getelementptr inbounds %struct._check_data, %struct._check_data* %61, i32 0, i32 2, !dbg !427
  %63 = load %struct._list*, %struct._list** %62, align 8, !dbg !427
  %64 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !428
  %65 = getelementptr inbounds %struct._check_data, %struct._check_data* %64, i32 0, i32 2, !dbg !429
  %66 = load %struct._list*, %struct._list** %65, align 8, !dbg !429
  %67 = getelementptr inbounds %struct._list, %struct._list* %66, i32 0, i32 1, !dbg !430
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !430
  call void @free_list_element(%struct._list* %63, %struct._element* %68), !dbg !431
  br label %69, !dbg !432

; <label>:69:                                     ; preds = %6, %57, %50, %43, %31, %24
  ret void, !dbg !433
}

; Function Attrs: nounwind uwtable
define internal void @vs_handler(%struct._vector*) #0 !dbg !434 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !435, metadata !154), !dbg !436
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !437
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 49, !dbg !438
  store i8 1, i8* %4, align 8, !dbg !439
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !440
  %6 = icmp ne %struct._vector* %5, null, !dbg !440
  br i1 %6, label %8, label %7, !dbg !442

; <label>:7:                                      ; preds = %1
  br label %21, !dbg !443

; <label>:8:                                      ; preds = %1
  %9 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !444
  %10 = call i8* @strvec_slot(%struct._vector* %9, i64 1), !dbg !445
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !446
  %12 = getelementptr inbounds %struct._vector, %struct._vector* %11, i32 0, i32 1, !dbg !447
  %13 = load i32, i32* %12, align 4, !dbg !447
  %14 = icmp uge i32 %13, 3, !dbg !448
  br i1 %14, label %15, label %18, !dbg !449

; <label>:15:                                     ; preds = %8
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !450
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 2), !dbg !452
  br label %19, !dbg !453

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !454

; <label>:19:                                     ; preds = %18, %15
  %20 = phi i8* [ %17, %15 ], [ null, %18 ], !dbg !456
  call void @alloc_vs(i8* %10, i8* %20), !dbg !458
  br label %21, !dbg !459

; <label>:21:                                     ; preds = %19, %7
  ret void, !dbg !460
}

declare void @install_root_end_handler(void ()*) #2

; Function Attrs: nounwind uwtable
define internal void @vs_end_handler() #0 !dbg !461 {
  %1 = alloca %struct._virtual_server*, align 8
  %2 = alloca %struct._real_server*, align 8
  %3 = alloca %struct._element*, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %1, metadata !464, metadata !154), !dbg !558
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !559
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !560
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !560
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !561
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !561
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !562
  %10 = load i8*, i8** %9, align 8, !dbg !562
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !563
  store %struct._virtual_server* %11, %struct._virtual_server** %1, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata %struct._real_server** %2, metadata !564, metadata !154), !dbg !565
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !566, metadata !154), !dbg !568
  %12 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !569
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 4, !dbg !571
  %14 = load %struct._real_server*, %struct._real_server** %13, align 8, !dbg !571
  %15 = icmp ne %struct._real_server* %14, null, !dbg !569
  br i1 %15, label %16, label %67, !dbg !572

; <label>:16:                                     ; preds = %0
  %17 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !573
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 4, !dbg !575
  %19 = load %struct._real_server*, %struct._real_server** %18, align 8, !dbg !575
  %20 = getelementptr inbounds %struct._real_server, %struct._real_server* %19, i32 0, i32 4, !dbg !576
  %21 = load i32, i32* %20, align 4, !dbg !576
  %22 = icmp ne i32 %21, 2, !dbg !577
  br i1 %22, label %23, label %67, !dbg !578

; <label>:23:                                     ; preds = %16
  %24 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !580
  %25 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %24, i32 0, i32 5, !dbg !583
  %26 = load i16, i16* %25, align 8, !dbg !583
  %27 = zext i16 %26 to i32, !dbg !580
  %28 = icmp eq i32 %27, 0, !dbg !584
  br i1 %28, label %29, label %38, !dbg !585

; <label>:29:                                     ; preds = %23
  %30 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !586
  %31 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %30, i32 0, i32 4, !dbg !587
  %32 = load %struct._real_server*, %struct._real_server** %31, align 8, !dbg !587
  %33 = getelementptr inbounds %struct._real_server, %struct._real_server* %32, i32 0, i32 0, !dbg !588
  %34 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %33, i32 0, i32 0, !dbg !589
  %35 = load i16, i16* %34, align 8, !dbg !589
  %36 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !590
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 5, !dbg !591
  store i16 %35, i16* %37, align 8, !dbg !592
  br label %66, !dbg !590

; <label>:38:                                     ; preds = %23
  %39 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !593
  %40 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %39, i32 0, i32 5, !dbg !595
  %41 = load i16, i16* %40, align 8, !dbg !595
  %42 = zext i16 %41 to i32, !dbg !593
  %43 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !596
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 4, !dbg !597
  %45 = load %struct._real_server*, %struct._real_server** %44, align 8, !dbg !597
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 0, !dbg !598
  %47 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %46, i32 0, i32 0, !dbg !599
  %48 = load i16, i16* %47, align 8, !dbg !599
  %49 = zext i16 %48 to i32, !dbg !596
  %50 = icmp ne i32 %42, %49, !dbg !600
  br i1 %50, label %51, label %65, !dbg !601

; <label>:51:                                     ; preds = %38
  %52 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !602
  %53 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %52, i32 0, i32 4, !dbg !604
  %54 = load %struct._real_server*, %struct._real_server** %53, align 8, !dbg !604
  %55 = getelementptr inbounds %struct._real_server, %struct._real_server* %54, i32 0, i32 0, !dbg !605
  %56 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %55), !dbg !606
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.65, i32 0, i32 0), i8* %56), !dbg !607
  %57 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !609
  %58 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %57, i32 0, i32 4, !dbg !610
  %59 = load %struct._real_server*, %struct._real_server** %58, align 8, !dbg !610
  %60 = bitcast %struct._real_server* %59 to i8*, !dbg !609
  call void @free(i8* %60) #7, !dbg !611
  %61 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !612
  %62 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %61, i32 0, i32 4, !dbg !613
  store %struct._real_server* null, %struct._real_server** %62, align 8, !dbg !614
  %63 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !615
  %64 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %63, i32 0, i32 4, !dbg !616
  store %struct._real_server* null, %struct._real_server** %64, align 8, !dbg !617
  br label %65, !dbg !618

; <label>:65:                                     ; preds = %51, %38
  br label %66

; <label>:66:                                     ; preds = %65, %29
  br label %67, !dbg !619

; <label>:67:                                     ; preds = %66, %16, %0
  %68 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !620
  %69 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %68, i32 0, i32 5, !dbg !622
  %70 = load i16, i16* %69, align 8, !dbg !622
  %71 = zext i16 %70 to i32, !dbg !620
  %72 = icmp eq i32 %71, 0, !dbg !623
  br i1 %72, label %73, label %171, !dbg !624

; <label>:73:                                     ; preds = %67
  %74 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !625
  %75 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %74, i32 0, i32 4, !dbg !628
  %76 = load %struct._real_server*, %struct._real_server** %75, align 8, !dbg !628
  %77 = icmp ne %struct._real_server* %76, null, !dbg !625
  br i1 %77, label %78, label %87, !dbg !629

; <label>:78:                                     ; preds = %73
  %79 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !630
  %80 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %79, i32 0, i32 4, !dbg !631
  %81 = load %struct._real_server*, %struct._real_server** %80, align 8, !dbg !631
  %82 = getelementptr inbounds %struct._real_server, %struct._real_server* %81, i32 0, i32 0, !dbg !632
  %83 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %82, i32 0, i32 0, !dbg !633
  %84 = load i16, i16* %83, align 8, !dbg !633
  %85 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !634
  %86 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %85, i32 0, i32 5, !dbg !635
  store i16 %84, i16* %86, align 8, !dbg !636
  br label %87, !dbg !634

; <label>:87:                                     ; preds = %78, %73
  %88 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !637
  %89 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %88, i32 0, i32 17, !dbg !639
  %90 = load %struct._list*, %struct._list** %89, align 8, !dbg !639
  %91 = icmp eq %struct._list* %90, null, !dbg !640
  br i1 %91, label %161, label %92, !dbg !641

; <label>:92:                                     ; preds = %87
  %93 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !642
  %94 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %93, i32 0, i32 17, !dbg !644
  %95 = load %struct._list*, %struct._list** %94, align 8, !dbg !644
  %96 = getelementptr inbounds %struct._list, %struct._list* %95, i32 0, i32 0, !dbg !645
  %97 = load %struct._element*, %struct._element** %96, align 8, !dbg !645
  %98 = icmp eq %struct._element* %97, null, !dbg !646
  br i1 %98, label %99, label %106, !dbg !647

; <label>:99:                                     ; preds = %92
  %100 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !648
  %101 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %100, i32 0, i32 17, !dbg !650
  %102 = load %struct._list*, %struct._list** %101, align 8, !dbg !650
  %103 = getelementptr inbounds %struct._list, %struct._list* %102, i32 0, i32 1, !dbg !651
  %104 = load %struct._element*, %struct._element** %103, align 8, !dbg !651
  %105 = icmp eq %struct._element* %104, null, !dbg !652
  br i1 %105, label %161, label %106, !dbg !653

; <label>:106:                                    ; preds = %99, %92
  %107 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !654
  %108 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %107, i32 0, i32 17, !dbg !657
  %109 = load %struct._list*, %struct._list** %108, align 8, !dbg !657
  %110 = icmp ne %struct._list* %109, null, !dbg !658
  br i1 %110, label %112, label %111, !dbg !659

; <label>:111:                                    ; preds = %106
  br label %118, !dbg !660

; <label>:112:                                    ; preds = %106
  %113 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !662
  %114 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %113, i32 0, i32 17, !dbg !664
  %115 = load %struct._list*, %struct._list** %114, align 8, !dbg !664
  %116 = getelementptr inbounds %struct._list, %struct._list* %115, i32 0, i32 0, !dbg !665
  %117 = load %struct._element*, %struct._element** %116, align 8, !dbg !665
  br label %118, !dbg !666

; <label>:118:                                    ; preds = %112, %111
  %119 = phi %struct._element* [ null, %111 ], [ %117, %112 ], !dbg !667
  store %struct._element* %119, %struct._element** %3, align 8, !dbg !669
  br label %120, !dbg !670

; <label>:120:                                    ; preds = %156, %118
  %121 = load %struct._element*, %struct._element** %3, align 8, !dbg !671
  %122 = icmp ne %struct._element* %121, null, !dbg !674
  br i1 %122, label %123, label %160, !dbg !674

; <label>:123:                                    ; preds = %120
  %124 = load %struct._element*, %struct._element** %3, align 8, !dbg !675
  %125 = getelementptr inbounds %struct._element, %struct._element* %124, i32 0, i32 2, !dbg !677
  %126 = load i8*, i8** %125, align 8, !dbg !677
  %127 = bitcast i8* %126 to %struct._real_server*, !dbg !678
  store %struct._real_server* %127, %struct._real_server** %2, align 8, !dbg !679
  %128 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !680
  %129 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %128, i32 0, i32 5, !dbg !682
  %130 = load i16, i16* %129, align 8, !dbg !682
  %131 = zext i16 %130 to i32, !dbg !680
  %132 = icmp eq i32 %131, 0, !dbg !683
  br i1 %132, label %133, label %140, !dbg !684

; <label>:133:                                    ; preds = %123
  %134 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !685
  %135 = getelementptr inbounds %struct._real_server, %struct._real_server* %134, i32 0, i32 0, !dbg !686
  %136 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %135, i32 0, i32 0, !dbg !687
  %137 = load i16, i16* %136, align 8, !dbg !687
  %138 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !688
  %139 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %138, i32 0, i32 5, !dbg !689
  store i16 %137, i16* %139, align 8, !dbg !690
  br label %155, !dbg !688

; <label>:140:                                    ; preds = %123
  %141 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !691
  %142 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %141, i32 0, i32 5, !dbg !693
  %143 = load i16, i16* %142, align 8, !dbg !693
  %144 = zext i16 %143 to i32, !dbg !691
  %145 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !694
  %146 = getelementptr inbounds %struct._real_server, %struct._real_server* %145, i32 0, i32 0, !dbg !695
  %147 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %146, i32 0, i32 0, !dbg !696
  %148 = load i16, i16* %147, align 8, !dbg !696
  %149 = zext i16 %148 to i32, !dbg !694
  %150 = icmp ne i32 %144, %149, !dbg !697
  br i1 %150, label %151, label %154, !dbg !698

; <label>:151:                                    ; preds = %140
  %152 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !699
  %153 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %152, i32 0, i32 5, !dbg !701
  store i16 0, i16* %153, align 8, !dbg !702
  br label %160, !dbg !703

; <label>:154:                                    ; preds = %140
  br label %155

; <label>:155:                                    ; preds = %154, %133
  br label %156, !dbg !704

; <label>:156:                                    ; preds = %155
  %157 = load %struct._element*, %struct._element** %3, align 8, !dbg !705
  %158 = getelementptr inbounds %struct._element, %struct._element* %157, i32 0, i32 0, !dbg !707
  %159 = load %struct._element*, %struct._element** %158, align 8, !dbg !707
  store %struct._element* %159, %struct._element** %3, align 8, !dbg !708
  br label %120, !dbg !709, !llvm.loop !710

; <label>:160:                                    ; preds = %151, %120
  br label %161, !dbg !712

; <label>:161:                                    ; preds = %160, %99, %87
  %162 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !713
  %163 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %162, i32 0, i32 5, !dbg !715
  %164 = load i16, i16* %163, align 8, !dbg !715
  %165 = zext i16 %164 to i32, !dbg !713
  %166 = icmp eq i32 %165, 0, !dbg !716
  br i1 %166, label %167, label %170, !dbg !717

; <label>:167:                                    ; preds = %161
  %168 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !718
  %169 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %168, i32 0, i32 5, !dbg !720
  store i16 2, i16* %169, align 8, !dbg !721
  br label %170, !dbg !722

; <label>:170:                                    ; preds = %167, %161
  br label %171, !dbg !723

; <label>:171:                                    ; preds = %170, %67
  ret void, !dbg !724
}

; Function Attrs: nounwind uwtable
define internal void @ip_family_handler(%struct._vector*) #0 !dbg !725 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i16, align 2
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !726, metadata !154), !dbg !727
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !728, metadata !154), !dbg !729
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !730
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !731
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !731
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !732
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !732
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !733
  %11 = load i8*, i8** %10, align 8, !dbg !733
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !734
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !729
  call void @llvm.dbg.declare(metadata i16* %4, metadata !735, metadata !154), !dbg !736
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !737
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !739
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0)) #8, !dbg !740
  %16 = icmp ne i32 %15, 0, !dbg !742
  br i1 %16, label %18, label %17, !dbg !743

; <label>:17:                                     ; preds = %1
  store i16 2, i16* %4, align 2, !dbg !744
  br label %28, !dbg !745

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !746
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !748
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)) #8, !dbg !749
  %22 = icmp ne i32 %21, 0, !dbg !751
  br i1 %22, label %24, label %23, !dbg !752

; <label>:23:                                     ; preds = %18
  store i16 10, i16* %4, align 2, !dbg !753
  br label %27, !dbg !755

; <label>:24:                                     ; preds = %18
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !756
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !758
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i8* %26), !dbg !759
  br label %49, !dbg !761

; <label>:27:                                     ; preds = %23
  br label %28

; <label>:28:                                     ; preds = %27, %17
  %29 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !762
  %30 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %29, i32 0, i32 5, !dbg !764
  %31 = load i16, i16* %30, align 8, !dbg !764
  %32 = zext i16 %31 to i32, !dbg !762
  %33 = icmp ne i32 %32, 0, !dbg !765
  br i1 %33, label %34, label %45, !dbg !766

; <label>:34:                                     ; preds = %28
  %35 = load i16, i16* %4, align 2, !dbg !767
  %36 = zext i16 %35 to i32, !dbg !767
  %37 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !768
  %38 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %37, i32 0, i32 5, !dbg !769
  %39 = load i16, i16* %38, align 8, !dbg !769
  %40 = zext i16 %39 to i32, !dbg !768
  %41 = icmp ne i32 %36, %40, !dbg !770
  br i1 %41, label %42, label %45, !dbg !771

; <label>:42:                                     ; preds = %34
  %43 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !773
  %44 = call i8* @strvec_slot(%struct._vector* %43, i64 1), !dbg !775
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.69, i32 0, i32 0), i8* %44), !dbg !776
  br label %49, !dbg !778

; <label>:45:                                     ; preds = %34, %28
  %46 = load i16, i16* %4, align 2, !dbg !779
  %47 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !780
  %48 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %47, i32 0, i32 5, !dbg !781
  store i16 %46, i16* %48, align 8, !dbg !782
  br label %49, !dbg !783

; <label>:49:                                     ; preds = %45, %42, %24
  ret void, !dbg !784
}

; Function Attrs: nounwind uwtable
define internal void @vs_retry_handler(%struct._vector*) #0 !dbg !785 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !786, metadata !154), !dbg !787
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !788, metadata !154), !dbg !789
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !790
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !791
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !791
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !792
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !792
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !793
  %11 = load i8*, i8** %10, align 8, !dbg !793
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !794
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i32* %4, metadata !795, metadata !154), !dbg !796
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !797
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 -1, i1 zeroext false), !dbg !799
  br i1 %14, label %18, label %15, !dbg !800

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !801
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !803
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i32 0, i32 0), i8* %17), !dbg !804
  br label %22, !dbg !806

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %4, align 4, !dbg !807
  %20 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !808
  %21 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %20, i32 0, i32 24, !dbg !809
  store i32 %19, i32* %21, align 8, !dbg !810
  br label %22, !dbg !811

; <label>:22:                                     ; preds = %18, %15
  ret void, !dbg !812
}

; Function Attrs: nounwind uwtable
define internal void @vs_delay_before_retry_handler(%struct._vector*) #0 !dbg !814 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !815, metadata !154), !dbg !816
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !817, metadata !154), !dbg !818
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !819
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !820
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !820
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !821
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !821
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !822
  %11 = load i8*, i8** %10, align 8, !dbg !822
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !823
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !818
  call void @llvm.dbg.declare(metadata i64* %4, metadata !824, metadata !154), !dbg !825
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !826
  %14 = call zeroext i1 @read_timer(%struct._vector* %13, i64 1, i64* %4, i64 0, i64 0, i1 zeroext true), !dbg !828
  br i1 %14, label %15, label %19, !dbg !829

; <label>:15:                                     ; preds = %1
  %16 = load i64, i64* %4, align 8, !dbg !830
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !831
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 25, !dbg !832
  store i64 %16, i64* %18, align 8, !dbg !833
  br label %22, !dbg !831

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !834
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !835
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i32 0, i32 0), i8* %21), !dbg !836
  br label %22

; <label>:22:                                     ; preds = %19, %15
  ret void, !dbg !838
}

; Function Attrs: nounwind uwtable
define internal void @vs_warmup_handler(%struct._vector*) #0 !dbg !839 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !840, metadata !154), !dbg !841
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !842, metadata !154), !dbg !843
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !844
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !845
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !845
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !846
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !846
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !847
  %11 = load i8*, i8** %10, align 8, !dbg !847
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !848
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !843
  call void @llvm.dbg.declare(metadata i64* %4, metadata !849, metadata !154), !dbg !850
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !851
  %14 = call zeroext i1 @read_timer(%struct._vector* %13, i64 1, i64* %4, i64 0, i64 0, i1 zeroext true), !dbg !853
  br i1 %14, label %15, label %19, !dbg !854

; <label>:15:                                     ; preds = %1
  %16 = load i64, i64* %4, align 8, !dbg !855
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !856
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 23, !dbg !857
  store i64 %16, i64* %18, align 8, !dbg !858
  br label %22, !dbg !856

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !859
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !860
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.72, i32 0, i32 0), i8* %21), !dbg !861
  br label %22

; <label>:22:                                     ; preds = %19, %15
  ret void, !dbg !863
}

; Function Attrs: nounwind uwtable
define internal void @vs_delay_handler(%struct._vector*) #0 !dbg !864 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !865, metadata !154), !dbg !866
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !867, metadata !154), !dbg !868
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !869
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !870
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !870
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !871
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !871
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !872
  %11 = load i8*, i8** %10, align 8, !dbg !872
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !873
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata i64* %4, metadata !874, metadata !154), !dbg !875
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !876
  %14 = call zeroext i1 @read_timer(%struct._vector* %13, i64 1, i64* %4, i64 1, i64 0, i1 zeroext true), !dbg !878
  br i1 %14, label %15, label %19, !dbg !879

; <label>:15:                                     ; preds = %1
  %16 = load i64, i64* %4, align 8, !dbg !880
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !881
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 22, !dbg !882
  store i64 %16, i64* %18, align 8, !dbg !883
  br label %22, !dbg !881

; <label>:19:                                     ; preds = %1
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !884
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !885
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i32 0, i32 0), i8* %21), !dbg !886
  br label %22

; <label>:22:                                     ; preds = %19, %15
  ret void, !dbg !888
}

; Function Attrs: nounwind uwtable
define internal void @vs_inhibit_handler(%struct._vector*) #0 !dbg !889 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !890, metadata !154), !dbg !891
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !892, metadata !154), !dbg !893
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !894
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !895
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !895
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !896
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !896
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !897
  %10 = load i8*, i8** %9, align 8, !dbg !897
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !898
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !893
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !899
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 21, !dbg !900
  store i8 1, i8* %13, align 2, !dbg !901
  ret void, !dbg !902
}

; Function Attrs: nounwind uwtable
define internal void @lbalgo_handler(%struct._vector*) #0 !dbg !903 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !904, metadata !154), !dbg !905
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !906, metadata !154), !dbg !907
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !908
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !909
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !909
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !910
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !910
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !911
  %12 = load i8*, i8** %11, align 8, !dbg !911
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !912
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !907
  call void @llvm.dbg.declare(metadata i8** %4, metadata !913, metadata !154), !dbg !914
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !915
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !916
  store i8* %15, i8** %4, align 8, !dbg !914
  call void @llvm.dbg.declare(metadata i32* %5, metadata !917, metadata !154), !dbg !918
  store i32 0, i32* %5, align 4, !dbg !919
  br label %16, !dbg !921

; <label>:16:                                     ; preds = %33, %1
  %17 = load i32, i32* %5, align 4, !dbg !922
  %18 = sext i32 %17 to i64, !dbg !925
  %19 = getelementptr inbounds [14 x i8*], [14 x i8*]* @lvs_schedulers, i64 0, i64 %18, !dbg !925
  %20 = load i8*, i8** %19, align 8, !dbg !925
  %21 = icmp ne i8* %20, null, !dbg !925
  br i1 %21, label %22, label %30, !dbg !926

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %4, align 8, !dbg !927
  %24 = load i32, i32* %5, align 4, !dbg !929
  %25 = sext i32 %24 to i64, !dbg !930
  %26 = getelementptr inbounds [14 x i8*], [14 x i8*]* @lvs_schedulers, i64 0, i64 %25, !dbg !930
  %27 = load i8*, i8** %26, align 8, !dbg !930
  %28 = call i32 @strcmp(i8* %23, i8* %27) #8, !dbg !931
  %29 = icmp ne i32 %28, 0, !dbg !932
  br label %30

; <label>:30:                                     ; preds = %22, %16
  %31 = phi i1 [ false, %16 ], [ %29, %22 ]
  br i1 %31, label %32, label %36, !dbg !933

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !935

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4, !dbg !937
  %35 = add nsw i32 %34, 1, !dbg !937
  store i32 %35, i32* %5, align 4, !dbg !937
  br label %16, !dbg !939, !llvm.loop !940

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %5, align 4, !dbg !942
  %38 = sext i32 %37 to i64, !dbg !944
  %39 = getelementptr inbounds [14 x i8*], [14 x i8*]* @lvs_schedulers, i64 0, i64 %38, !dbg !944
  %40 = load i8*, i8** %39, align 8, !dbg !944
  %41 = icmp ne i8* %40, null, !dbg !944
  br i1 %41, label %42, label %46, !dbg !945

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %4, align 8, !dbg !946
  %44 = call i64 @strlen(i8* %43) #8, !dbg !948
  %45 = icmp uge i64 %44, 16, !dbg !949
  br i1 %45, label %46, label %49, !dbg !950

; <label>:46:                                     ; preds = %42, %36
  %47 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !951
  %48 = call i8* @strvec_slot(%struct._vector* %47, i64 1), !dbg !953
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.74, i32 0, i32 0), i8* %48), !dbg !954
  br label %55, !dbg !956

; <label>:49:                                     ; preds = %42
  %50 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !957
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 9, !dbg !958
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %51, i32 0, i32 0, !dbg !957
  %53 = load i8*, i8** %4, align 8, !dbg !959
  %54 = call i8* @strcpy(i8* %52, i8* %53) #7, !dbg !960
  br label %55, !dbg !961

; <label>:55:                                     ; preds = %49, %46
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define internal void @lbflags_handler(%struct._vector*) #0 !dbg !964 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !965, metadata !154), !dbg !966
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !967, metadata !154), !dbg !968
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !969
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !970
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !970
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !971
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !971
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !972
  %11 = load i8*, i8** %10, align 8, !dbg !972
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !973
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !968
  call void @llvm.dbg.declare(metadata i8** %4, metadata !974, metadata !154), !dbg !975
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !976
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 0), !dbg !977
  store i8* %14, i8** %4, align 8, !dbg !975
  %15 = load i8*, i8** %4, align 8, !dbg !978
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !980
  %17 = icmp ne i32 %16, 0, !dbg !980
  br i1 %17, label %23, label %18, !dbg !981

; <label>:18:                                     ; preds = %1
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !982
  %20 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %19, i32 0, i32 10, !dbg !983
  %21 = load i32, i32* %20, align 4, !dbg !984
  %22 = or i32 %21, 2, !dbg !984
  store i32 %22, i32* %20, align 4, !dbg !984
  br label %117, !dbg !982

; <label>:23:                                     ; preds = %1
  %24 = load i8*, i8** %4, align 8, !dbg !985
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !987
  %26 = icmp ne i32 %25, 0, !dbg !987
  br i1 %26, label %32, label %27, !dbg !988

; <label>:27:                                     ; preds = %23
  %28 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !989
  %29 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %28, i32 0, i32 10, !dbg !990
  %30 = load i32, i32* %29, align 4, !dbg !991
  %31 = or i32 %30, 4, !dbg !991
  store i32 %31, i32* %29, align 4, !dbg !991
  br label %116, !dbg !989

; <label>:32:                                     ; preds = %23
  %33 = load i8*, i8** %4, align 8, !dbg !992
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !994
  %35 = icmp ne i32 %34, 0, !dbg !994
  br i1 %35, label %41, label %36, !dbg !995

; <label>:36:                                     ; preds = %32
  %37 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !996
  %38 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %37, i32 0, i32 10, !dbg !997
  %39 = load i32, i32* %38, align 4, !dbg !998
  %40 = or i32 %39, 8, !dbg !998
  store i32 %40, i32* %38, align 4, !dbg !998
  br label %115, !dbg !996

; <label>:41:                                     ; preds = %32
  %42 = load i8*, i8** %4, align 8, !dbg !999
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #8, !dbg !1001
  %44 = icmp ne i32 %43, 0, !dbg !1001
  br i1 %44, label %50, label %45, !dbg !1002

; <label>:45:                                     ; preds = %41
  %46 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1003
  %47 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %46, i32 0, i32 10, !dbg !1004
  %48 = load i32, i32* %47, align 4, !dbg !1005
  %49 = or i32 %48, 16, !dbg !1005
  store i32 %49, i32* %47, align 4, !dbg !1005
  br label %114, !dbg !1003

; <label>:50:                                     ; preds = %41
  %51 = load i8*, i8** %4, align 8, !dbg !1006
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #8, !dbg !1008
  %53 = icmp ne i32 %52, 0, !dbg !1008
  br i1 %53, label %59, label %54, !dbg !1009

; <label>:54:                                     ; preds = %50
  %55 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1010
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 10, !dbg !1011
  %57 = load i32, i32* %56, align 4, !dbg !1012
  %58 = or i32 %57, 32, !dbg !1012
  store i32 %58, i32* %56, align 4, !dbg !1012
  br label %113, !dbg !1010

; <label>:59:                                     ; preds = %50
  %60 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1013
  %61 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %60, i32 0, i32 9, !dbg !1015
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %61, i32 0, i32 0, !dbg !1013
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !1016
  %64 = icmp ne i32 %63, 0, !dbg !1016
  br i1 %64, label %84, label %65, !dbg !1017

; <label>:65:                                     ; preds = %59
  %66 = load i8*, i8** %4, align 8, !dbg !1018
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #8, !dbg !1021
  %68 = icmp ne i32 %67, 0, !dbg !1021
  br i1 %68, label %74, label %69, !dbg !1022

; <label>:69:                                     ; preds = %65
  %70 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1023
  %71 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %70, i32 0, i32 10, !dbg !1024
  %72 = load i32, i32* %71, align 4, !dbg !1025
  %73 = or i32 %72, 16, !dbg !1025
  store i32 %73, i32* %71, align 4, !dbg !1025
  br label %74, !dbg !1023

; <label>:74:                                     ; preds = %69, %65
  %75 = load i8*, i8** %4, align 8, !dbg !1026
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1028
  %77 = icmp ne i32 %76, 0, !dbg !1028
  br i1 %77, label %83, label %78, !dbg !1029

; <label>:78:                                     ; preds = %74
  %79 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1030
  %80 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %79, i32 0, i32 10, !dbg !1031
  %81 = load i32, i32* %80, align 4, !dbg !1032
  %82 = or i32 %81, 8, !dbg !1032
  store i32 %82, i32* %80, align 4, !dbg !1032
  br label %83, !dbg !1030

; <label>:83:                                     ; preds = %78, %74
  br label %112, !dbg !1033

; <label>:84:                                     ; preds = %59
  %85 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1034
  %86 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %85, i32 0, i32 9, !dbg !1036
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %86, i32 0, i32 0, !dbg !1034
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !1037
  %89 = icmp ne i32 %88, 0, !dbg !1037
  br i1 %89, label %109, label %90, !dbg !1038

; <label>:90:                                     ; preds = %84
  %91 = load i8*, i8** %4, align 8, !dbg !1039
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0)) #8, !dbg !1042
  %93 = icmp ne i32 %92, 0, !dbg !1042
  br i1 %93, label %99, label %94, !dbg !1043

; <label>:94:                                     ; preds = %90
  %95 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1044
  %96 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %95, i32 0, i32 10, !dbg !1045
  %97 = load i32, i32* %96, align 4, !dbg !1046
  %98 = or i32 %97, 16, !dbg !1046
  store i32 %98, i32* %96, align 4, !dbg !1046
  br label %99, !dbg !1044

; <label>:99:                                     ; preds = %94, %90
  %100 = load i8*, i8** %4, align 8, !dbg !1047
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0)) #8, !dbg !1049
  %102 = icmp ne i32 %101, 0, !dbg !1049
  br i1 %102, label %108, label %103, !dbg !1050

; <label>:103:                                    ; preds = %99
  %104 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1051
  %105 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %104, i32 0, i32 10, !dbg !1052
  %106 = load i32, i32* %105, align 4, !dbg !1053
  %107 = or i32 %106, 8, !dbg !1053
  store i32 %107, i32* %105, align 4, !dbg !1053
  br label %108, !dbg !1051

; <label>:108:                                    ; preds = %103, %99
  br label %111, !dbg !1054

; <label>:109:                                    ; preds = %84
  %110 = load i8*, i8** %4, align 8, !dbg !1055
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.77, i32 0, i32 0), i8* %110), !dbg !1056
  br label %111

; <label>:111:                                    ; preds = %109, %108
  br label %112

; <label>:112:                                    ; preds = %111, %83
  br label %113

; <label>:113:                                    ; preds = %112, %54
  br label %114

; <label>:114:                                    ; preds = %113, %45
  br label %115

; <label>:115:                                    ; preds = %114, %36
  br label %116

; <label>:116:                                    ; preds = %115, %27
  br label %117

; <label>:117:                                    ; preds = %116, %18
  ret void, !dbg !1057
}

; Function Attrs: nounwind uwtable
define internal void @forwarding_handler(%struct._vector*) #0 !dbg !1058 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1059, metadata !154), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1061, metadata !154), !dbg !1062
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1063
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1064
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1064
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1065
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1065
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1066
  %11 = load i8*, i8** %10, align 8, !dbg !1066
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1067
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1062
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1068, metadata !154), !dbg !1069
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1070
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !1071
  store i8* %14, i8** %4, align 8, !dbg !1069
  %15 = load i8*, i8** %4, align 8, !dbg !1072
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !1074
  %17 = icmp ne i32 %16, 0, !dbg !1074
  br i1 %17, label %21, label %18, !dbg !1075

; <label>:18:                                     ; preds = %1
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1076
  %20 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %19, i32 0, i32 13, !dbg !1077
  store i32 0, i32* %20, align 4, !dbg !1078
  br label %39, !dbg !1076

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %4, align 8, !dbg !1079
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !1081
  %24 = icmp ne i32 %23, 0, !dbg !1081
  br i1 %24, label %28, label %25, !dbg !1082

; <label>:25:                                     ; preds = %21
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1083
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 13, !dbg !1084
  store i32 3, i32* %27, align 4, !dbg !1085
  br label %38, !dbg !1083

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %4, align 8, !dbg !1086
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !1088
  %31 = icmp ne i32 %30, 0, !dbg !1088
  br i1 %31, label %35, label %32, !dbg !1089

; <label>:32:                                     ; preds = %28
  %33 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1090
  %34 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %33, i32 0, i32 13, !dbg !1091
  store i32 2, i32* %34, align 4, !dbg !1092
  br label %37, !dbg !1090

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %4, align 8, !dbg !1093
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0), i8* %36), !dbg !1094
  br label %37

; <label>:37:                                     ; preds = %35, %32
  br label %38

; <label>:38:                                     ; preds = %37, %25
  br label %39

; <label>:39:                                     ; preds = %38, %18
  ret void, !dbg !1095
}

; Function Attrs: nounwind uwtable
define internal void @pengine_handler(%struct._vector*) #0 !dbg !1096 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1097, metadata !154), !dbg !1098
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1099, metadata !154), !dbg !1100
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1101
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1102
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1102
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1103
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1103
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1104
  %12 = load i8*, i8** %11, align 8, !dbg !1104
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1105
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1106, metadata !154), !dbg !1107
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1108
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1109
  store i8* %15, i8** %4, align 8, !dbg !1107
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1110, metadata !154), !dbg !1111
  store i64 16, i64* %5, align 8, !dbg !1111
  %16 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1112
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 12, !dbg !1113
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i32 0, i32 0, !dbg !1112
  %19 = load i8*, i8** %4, align 8, !dbg !1114
  %20 = load i64, i64* %5, align 8, !dbg !1115
  %21 = sub i64 %20, 1, !dbg !1116
  %22 = call i8* @strncpy(i8* %18, i8* %19, i64 %21) #7, !dbg !1117
  %23 = load i64, i64* %5, align 8, !dbg !1118
  %24 = sub i64 %23, 1, !dbg !1119
  %25 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1120
  %26 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %25, i32 0, i32 12, !dbg !1121
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 %24, !dbg !1120
  store i8 0, i8* %27, align 1, !dbg !1122
  ret void, !dbg !1123
}

; Function Attrs: nounwind uwtable
define internal void @pto_handler(%struct._vector*) #0 !dbg !1124 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1125, metadata !154), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1127, metadata !154), !dbg !1128
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1129
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1130
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1130
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1131
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1131
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1132
  %11 = load i8*, i8** %10, align 8, !dbg !1132
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1133
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1128
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1134, metadata !154), !dbg !1135
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1136
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !1138
  %15 = load i32, i32* %14, align 4, !dbg !1138
  %16 = icmp ult i32 %15, 2, !dbg !1139
  br i1 %16, label %17, label %20, !dbg !1140

; <label>:17:                                     ; preds = %1
  %18 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1141
  %19 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %18, i32 0, i32 11, !dbg !1143
  store i32 360, i32* %19, align 8, !dbg !1144
  br label %28, !dbg !1145

; <label>:20:                                     ; preds = %1
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1146
  %22 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %21, i64 1, i32* %4, i32 1, i32 -1, i1 zeroext false), !dbg !1148
  br i1 %22, label %24, label %23, !dbg !1149

; <label>:23:                                     ; preds = %20
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.82, i32 0, i32 0)), !dbg !1150
  br label %28, !dbg !1152

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !1153
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1154
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 11, !dbg !1155
  store i32 %25, i32* %27, align 8, !dbg !1156
  br label %28, !dbg !1157

; <label>:28:                                     ; preds = %24, %23, %17
  ret void, !dbg !1158
}

; Function Attrs: nounwind uwtable
define internal void @pgr_handler(%struct._vector*) #0 !dbg !1160 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1161, metadata !154), !dbg !1162
  call void @llvm.dbg.declare(metadata %struct.in_addr* %3, metadata !1163, metadata !154), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1169, metadata !154), !dbg !1170
  %8 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1171
  %9 = getelementptr inbounds %struct._check_data, %struct._check_data* %8, i32 0, i32 3, !dbg !1172
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !1172
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 1, !dbg !1173
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !1173
  %13 = getelementptr inbounds %struct._element, %struct._element* %12, i32 0, i32 2, !dbg !1174
  %14 = load i8*, i8** %13, align 8, !dbg !1174
  %15 = bitcast i8* %14 to %struct._virtual_server*, !dbg !1175
  store %struct._virtual_server* %15, %struct._virtual_server** %4, align 8, !dbg !1170
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1176, metadata !154), !dbg !1177
  %16 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1178
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 5, !dbg !1179
  %18 = load i16, i16* %17, align 8, !dbg !1179
  store i16 %18, i16* %5, align 2, !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1180, metadata !154), !dbg !1181
  %19 = load i16, i16* %5, align 2, !dbg !1182
  %20 = zext i16 %19 to i32, !dbg !1182
  %21 = icmp eq i32 %20, 0, !dbg !1184
  br i1 %21, label %22, label %29, !dbg !1185

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1186
  %24 = call i8* @strvec_slot(%struct._vector* %23, i64 1), !dbg !1187
  %25 = call i8* @strchr(i8* %24, i32 46) #8, !dbg !1188
  %26 = icmp ne i8* %25, null, !dbg !1190
  %27 = select i1 %26, i32 2, i32 10, !dbg !1190
  %28 = trunc i32 %27 to i16, !dbg !1190
  store i16 %28, i16* %5, align 2, !dbg !1191
  br label %29, !dbg !1192

; <label>:29:                                     ; preds = %22, %1
  %30 = load i16, i16* %5, align 2, !dbg !1193
  %31 = zext i16 %30 to i32, !dbg !1193
  %32 = icmp eq i32 %31, 10, !dbg !1195
  br i1 %32, label %33, label %43, !dbg !1196

; <label>:33:                                     ; preds = %29
  %34 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1197
  %35 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %34, i64 1, i32* %6, i32 1, i32 128, i1 zeroext false), !dbg !1200
  br i1 %35, label %39, label %36, !dbg !1201

; <label>:36:                                     ; preds = %33
  %37 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1202
  %38 = call i8* @strvec_slot(%struct._vector* %37, i64 1), !dbg !1204
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.83, i32 0, i32 0), i8* %38), !dbg !1205
  br label %93, !dbg !1207

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %6, align 4, !dbg !1208
  %41 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1209
  %42 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %41, i32 0, i32 14, !dbg !1210
  store i32 %40, i32* %42, align 8, !dbg !1211
  br label %75, !dbg !1212

; <label>:43:                                     ; preds = %29
  %44 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1213
  %45 = call i8* @strvec_slot(%struct._vector* %44, i64 1), !dbg !1216
  %46 = call i32 @inet_aton(i8* %45, %struct.in_addr* %3) #7, !dbg !1217
  %47 = icmp ne i32 %46, 0, !dbg !1219
  br i1 %47, label %51, label %48, !dbg !1220

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1221
  %50 = call i8* @strvec_slot(%struct._vector* %49, i64 1), !dbg !1223
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.84, i32 0, i32 0), i8* %50), !dbg !1224
  br label %93, !dbg !1226

; <label>:51:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1227, metadata !154), !dbg !1228
  %52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0, !dbg !1229
  %53 = load i32, i32* %52, align 4, !dbg !1229
  %54 = call i32 @ntohl(i32 %53) #1, !dbg !1230
  store i32 %54, i32* %7, align 4, !dbg !1228
  br label %55, !dbg !1231

; <label>:55:                                     ; preds = %60, %51
  %56 = load i32, i32* %7, align 4, !dbg !1232
  %57 = and i32 %56, 1, !dbg !1234
  %58 = icmp ne i32 %57, 0, !dbg !1235
  %59 = xor i1 %58, true, !dbg !1235
  br i1 %59, label %60, label %64, !dbg !1236

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %7, align 4, !dbg !1237
  %62 = lshr i32 %61, 1, !dbg !1238
  %63 = or i32 %62, -2147483648, !dbg !1239
  store i32 %63, i32* %7, align 4, !dbg !1240
  br label %55, !dbg !1241, !llvm.loop !1243

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %7, align 4, !dbg !1244
  %66 = icmp ne i32 %65, -1, !dbg !1246
  br i1 %66, label %67, label %70, !dbg !1247

; <label>:67:                                     ; preds = %64
  %68 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1248
  %69 = call i8* @strvec_slot(%struct._vector* %68, i64 1), !dbg !1250
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i32 0, i32 0), i8* %69), !dbg !1251
  br label %93, !dbg !1253

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0, !dbg !1254
  %72 = load i32, i32* %71, align 4, !dbg !1254
  %73 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1255
  %74 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %73, i32 0, i32 14, !dbg !1256
  store i32 %72, i32* %74, align 8, !dbg !1257
  br label %75

; <label>:75:                                     ; preds = %70, %39
  %76 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1258
  %77 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %76, i32 0, i32 5, !dbg !1260
  %78 = load i16, i16* %77, align 8, !dbg !1260
  %79 = zext i16 %78 to i32, !dbg !1258
  %80 = icmp eq i32 %79, 0, !dbg !1261
  br i1 %80, label %81, label %85, !dbg !1262

; <label>:81:                                     ; preds = %75
  %82 = load i16, i16* %5, align 2, !dbg !1263
  %83 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1264
  %84 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %83, i32 0, i32 5, !dbg !1265
  store i16 %82, i16* %84, align 8, !dbg !1266
  br label %85, !dbg !1264

; <label>:85:                                     ; preds = %81, %75
  %86 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1267
  %87 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %86, i32 0, i32 11, !dbg !1269
  %88 = load i32, i32* %87, align 8, !dbg !1269
  %89 = icmp ne i32 %88, 0, !dbg !1267
  br i1 %89, label %93, label %90, !dbg !1270

; <label>:90:                                     ; preds = %85
  %91 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1271
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 11, !dbg !1272
  store i32 360, i32* %92, align 8, !dbg !1273
  br label %93, !dbg !1271

; <label>:93:                                     ; preds = %36, %48, %67, %90, %85
  ret void, !dbg !1274
}

; Function Attrs: nounwind uwtable
define internal void @proto_handler(%struct._vector*) #0 !dbg !1275 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1276, metadata !154), !dbg !1277
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1278, metadata !154), !dbg !1279
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1280
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1281
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1281
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1282
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1282
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1283
  %11 = load i8*, i8** %10, align 8, !dbg !1283
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1284
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1279
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1285, metadata !154), !dbg !1286
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1287
  %14 = call i8* @strvec_slot(%struct._vector* %13, i64 1), !dbg !1288
  store i8* %14, i8** %4, align 8, !dbg !1286
  %15 = load i8*, i8** %4, align 8, !dbg !1289
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !1291
  %17 = icmp ne i32 %16, 0, !dbg !1291
  br i1 %17, label %21, label %18, !dbg !1292

; <label>:18:                                     ; preds = %1
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1293
  %20 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %19, i32 0, i32 6, !dbg !1294
  store i16 6, i16* %20, align 2, !dbg !1295
  br label %39, !dbg !1293

; <label>:21:                                     ; preds = %1
  %22 = load i8*, i8** %4, align 8, !dbg !1296
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !1298
  %24 = icmp ne i32 %23, 0, !dbg !1298
  br i1 %24, label %28, label %25, !dbg !1299

; <label>:25:                                     ; preds = %21
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1300
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 6, !dbg !1301
  store i16 132, i16* %27, align 2, !dbg !1302
  br label %38, !dbg !1300

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %4, align 8, !dbg !1303
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !1305
  %31 = icmp ne i32 %30, 0, !dbg !1305
  br i1 %31, label %35, label %32, !dbg !1306

; <label>:32:                                     ; preds = %28
  %33 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1307
  %34 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %33, i32 0, i32 6, !dbg !1308
  store i16 17, i16* %34, align 2, !dbg !1309
  br label %37, !dbg !1307

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %4, align 8, !dbg !1310
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0), i8* %36), !dbg !1311
  br label %37

; <label>:37:                                     ; preds = %35, %32
  br label %38

; <label>:38:                                     ; preds = %37, %25
  br label %39

; <label>:39:                                     ; preds = %38, %18
  ret void, !dbg !1312
}

; Function Attrs: nounwind uwtable
define internal void @hasuspend_handler(%struct._vector*) #0 !dbg !1313 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1314, metadata !154), !dbg !1315
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1316, metadata !154), !dbg !1317
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1318
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1319
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1319
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1320
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1320
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1321
  %10 = load i8*, i8** %9, align 8, !dbg !1321
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1322
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1317
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1323
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 7, !dbg !1324
  store i8 1, i8* %13, align 4, !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: nounwind uwtable
define internal void @vs_smtp_alert_handler(%struct._vector*) #0 !dbg !1327 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1328, metadata !154), !dbg !1329
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1330, metadata !154), !dbg !1331
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1332
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1333
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1333
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1334
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1334
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1335
  %11 = load i8*, i8** %10, align 8, !dbg !1335
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1336
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1337, metadata !154), !dbg !1338
  store i32 1, i32* %4, align 4, !dbg !1338
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1339
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !1341
  %15 = load i32, i32* %14, align 4, !dbg !1341
  %16 = icmp uge i32 %15, 2, !dbg !1342
  br i1 %16, label %17, label %27, !dbg !1343

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1344
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !1346
  %20 = call i32 @check_true_false(i8* %19), !dbg !1347
  store i32 %20, i32* %4, align 4, !dbg !1349
  %21 = load i32, i32* %4, align 4, !dbg !1350
  %22 = icmp eq i32 %21, -1, !dbg !1352
  br i1 %22, label %23, label %26, !dbg !1353

; <label>:23:                                     ; preds = %17
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1354
  %25 = call i8* @strvec_slot(%struct._vector* %24, i64 1), !dbg !1356
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.90, i32 0, i32 0), i8* %25), !dbg !1357
  br label %31, !dbg !1359

; <label>:26:                                     ; preds = %17
  br label %27, !dbg !1360

; <label>:27:                                     ; preds = %26, %1
  %28 = load i32, i32* %4, align 4, !dbg !1361
  %29 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1362
  %30 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %29, i32 0, i32 30, !dbg !1363
  store i32 %28, i32* %30, align 8, !dbg !1364
  br label %31, !dbg !1365

; <label>:31:                                     ; preds = %27, %23
  ret void, !dbg !1366
}

; Function Attrs: nounwind uwtable
define internal void @vs_virtualhost_handler(%struct._vector*) #0 !dbg !1368 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1369, metadata !154), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1371, metadata !154), !dbg !1372
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1373
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1374
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1374
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1375
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1375
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1376
  %10 = load i8*, i8** %9, align 8, !dbg !1376
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1377
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1372
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1378
  %13 = call i8* @set_value(%struct._vector* %12), !dbg !1379
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1380
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 15, !dbg !1381
  store i8* %13, i8** %15, align 8, !dbg !1382
  ret void, !dbg !1383
}

; Function Attrs: nounwind uwtable
define internal void @vs_alpha_handler(%struct._vector*) #0 !dbg !1384 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1385, metadata !154), !dbg !1386
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1387, metadata !154), !dbg !1388
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1389
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1390
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1390
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1391
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1391
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1392
  %10 = load i8*, i8** %9, align 8, !dbg !1392
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1393
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1388
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1394
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 19, !dbg !1395
  store i8 1, i8* %13, align 4, !dbg !1396
  ret void, !dbg !1397
}

; Function Attrs: nounwind uwtable
define internal void @omega_handler(%struct._vector*) #0 !dbg !1398 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1399, metadata !154), !dbg !1400
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1401, metadata !154), !dbg !1402
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1403
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1404
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1404
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1405
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1405
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1406
  %10 = load i8*, i8** %9, align 8, !dbg !1406
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1407
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1402
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1408
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 20, !dbg !1409
  store i8 1, i8* %13, align 1, !dbg !1410
  ret void, !dbg !1411
}

; Function Attrs: nounwind uwtable
define internal void @quorum_up_handler(%struct._vector*) #0 !dbg !1412 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1413, metadata !154), !dbg !1414
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1415, metadata !154), !dbg !1416
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1417
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1418
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1418
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1419
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1419
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1420
  %10 = load i8*, i8** %9, align 8, !dbg !1420
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1421
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1416
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1422
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 26, !dbg !1424
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !1424
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !1422
  br i1 %15, label %16, label %22, !dbg !1425

; <label>:16:                                     ; preds = %1
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1426
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 0, !dbg !1428
  %19 = load i8*, i8** %18, align 8, !dbg !1428
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1429
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !1430
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.91, i32 0, i32 0), i8* %19, i8* %21), !dbg !1431
  br label %27, !dbg !1433

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1434
  %24 = call %struct._notify_script* @set_check_notify_script(%struct._vector* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !1435
  %25 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1436
  %26 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %25, i32 0, i32 26, !dbg !1437
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !1438
  br label %27, !dbg !1439

; <label>:27:                                     ; preds = %22, %16
  ret void, !dbg !1440
}

; Function Attrs: nounwind uwtable
define internal void @quorum_down_handler(%struct._vector*) #0 !dbg !1442 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1443, metadata !154), !dbg !1444
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1445, metadata !154), !dbg !1446
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1447
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1448
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1448
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1449
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1449
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1450
  %10 = load i8*, i8** %9, align 8, !dbg !1450
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1451
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1446
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1452
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 27, !dbg !1454
  %14 = load %struct._notify_script*, %struct._notify_script** %13, align 8, !dbg !1454
  %15 = icmp ne %struct._notify_script* %14, null, !dbg !1452
  br i1 %15, label %16, label %22, !dbg !1455

; <label>:16:                                     ; preds = %1
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1456
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 0, !dbg !1458
  %19 = load i8*, i8** %18, align 8, !dbg !1458
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1459
  %21 = call i8* @strvec_slot(%struct._vector* %20, i64 1), !dbg !1460
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i32 0, i32 0), i8* %19, i8* %21), !dbg !1461
  br label %27, !dbg !1463

; <label>:22:                                     ; preds = %1
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1464
  %24 = call %struct._notify_script* @set_check_notify_script(%struct._vector* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)), !dbg !1465
  %25 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1466
  %26 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %25, i32 0, i32 27, !dbg !1467
  store %struct._notify_script* %24, %struct._notify_script** %26, align 8, !dbg !1468
  br label %27, !dbg !1469

; <label>:27:                                     ; preds = %22, %16
  ret void, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal void @quorum_handler(%struct._vector*) #0 !dbg !1472 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1473, metadata !154), !dbg !1474
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1475, metadata !154), !dbg !1476
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1477
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1478
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1478
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1479
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1479
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1480
  %11 = load i8*, i8** %10, align 8, !dbg !1480
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1481
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1476
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1482, metadata !154), !dbg !1483
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1484
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 -1, i1 zeroext true), !dbg !1486
  br i1 %14, label %18, label %15, !dbg !1487

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1488
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1490
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.93, i32 0, i32 0), i8* %17, i32 -1), !dbg !1491
  store i32 1, i32* %4, align 4, !dbg !1493
  br label %18, !dbg !1494

; <label>:18:                                     ; preds = %15, %1
  %19 = load i32, i32* %4, align 4, !dbg !1495
  %20 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1496
  %21 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %20, i32 0, i32 28, !dbg !1497
  store i32 %19, i32* %21, align 8, !dbg !1498
  ret void, !dbg !1499
}

; Function Attrs: nounwind uwtable
define internal void @hysteresis_handler(%struct._vector*) #0 !dbg !1500 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1501, metadata !154), !dbg !1502
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1503, metadata !154), !dbg !1504
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1505
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1506
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1506
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1507
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1507
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1508
  %11 = load i8*, i8** %10, align 8, !dbg !1508
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1509
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1504
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1510, metadata !154), !dbg !1511
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1512
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !1514
  br i1 %14, label %18, label %15, !dbg !1515

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1516
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1518
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i32 0, i32 0), i8* %17, i32 -1), !dbg !1519
  br label %22, !dbg !1521

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %4, align 4, !dbg !1522
  %20 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1523
  %21 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %20, i32 0, i32 29, !dbg !1524
  store i32 %19, i32* %21, align 4, !dbg !1525
  br label %22, !dbg !1526

; <label>:22:                                     ; preds = %18, %15
  ret void, !dbg !1527
}

; Function Attrs: nounwind uwtable
define internal void @vs_weight_handler(%struct._vector*) #0 !dbg !1529 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1530, metadata !154), !dbg !1531
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1532, metadata !154), !dbg !1533
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1534
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1535
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1535
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1536
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1536
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1537
  %11 = load i8*, i8** %10, align 8, !dbg !1537
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1538
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1533
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1539, metadata !154), !dbg !1540
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1541
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 65535, i1 zeroext true), !dbg !1543
  br i1 %14, label %18, label %15, !dbg !1544

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1545
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1547
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.95, i32 0, i32 0), i8* %17), !dbg !1548
  br label %22, !dbg !1550

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %4, align 4, !dbg !1551
  %20 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1552
  %21 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %20, i32 0, i32 16, !dbg !1553
  store i32 %19, i32* %21, align 8, !dbg !1554
  br label %22, !dbg !1555

; <label>:22:                                     ; preds = %18, %15
  ret void, !dbg !1556
}

; Function Attrs: nounwind uwtable
define internal void @ssvr_handler(%struct._vector*) #0 !dbg !1558 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1559, metadata !154), !dbg !1560
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1561
  %4 = call i8* @strvec_slot(%struct._vector* %3, i64 1), !dbg !1562
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1563
  %6 = call i8* @strvec_slot(%struct._vector* %5, i64 2), !dbg !1564
  call void @alloc_ssvr(i8* %4, i8* %6), !dbg !1566
  ret void, !dbg !1568
}

; Function Attrs: nounwind uwtable
define internal void @ssvri_handler(%struct._vector*) #0 !dbg !1569 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1570, metadata !154), !dbg !1571
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1572, metadata !154), !dbg !1573
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1574
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1575
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1575
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1576
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1576
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1577
  %10 = load i8*, i8** %9, align 8, !dbg !1577
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1578
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1573
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1579
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 4, !dbg !1581
  %14 = load %struct._real_server*, %struct._real_server** %13, align 8, !dbg !1581
  %15 = icmp ne %struct._real_server* %14, null, !dbg !1579
  br i1 %15, label %16, label %21, !dbg !1582

; <label>:16:                                     ; preds = %1
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1583
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 4, !dbg !1584
  %19 = load %struct._real_server*, %struct._real_server** %18, align 8, !dbg !1584
  %20 = getelementptr inbounds %struct._real_server, %struct._real_server* %19, i32 0, i32 7, !dbg !1585
  store i32 1, i32* %20, align 8, !dbg !1586
  br label %22, !dbg !1583

; <label>:21:                                     ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.96, i32 0, i32 0)), !dbg !1587
  br label %22

; <label>:22:                                     ; preds = %21, %16
  ret void, !dbg !1588
}

; Function Attrs: nounwind uwtable
define internal void @ss_forwarding_handler(%struct._vector*) #0 !dbg !1589 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1590, metadata !154), !dbg !1591
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1592, metadata !154), !dbg !1593
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1594
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !1595
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1595
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !1596
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1596
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !1597
  %10 = load i8*, i8** %9, align 8, !dbg !1597
  %11 = bitcast i8* %10 to %struct._virtual_server*, !dbg !1598
  store %struct._virtual_server* %11, %struct._virtual_server** %3, align 8, !dbg !1593
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1599
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 4, !dbg !1601
  %14 = load %struct._real_server*, %struct._real_server** %13, align 8, !dbg !1601
  %15 = icmp ne %struct._real_server* %14, null, !dbg !1599
  br i1 %15, label %16, label %21, !dbg !1602

; <label>:16:                                     ; preds = %1
  %17 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1603
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 4, !dbg !1604
  %19 = load %struct._real_server*, %struct._real_server** %18, align 8, !dbg !1604
  %20 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1605
  call void @svr_forwarding_handler(%struct._real_server* %19, %struct._vector* %20), !dbg !1606
  br label %22, !dbg !1606

; <label>:21:                                     ; preds = %1
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.97, i32 0, i32 0)), !dbg !1607
  br label %22

; <label>:22:                                     ; preds = %21, %16
  ret void, !dbg !1608
}

; Function Attrs: nounwind uwtable
define internal void @rs_handler(%struct._vector*) #0 !dbg !1609 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1610, metadata !154), !dbg !1611
  %3 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1612
  %4 = call i8* @strvec_slot(%struct._vector* %3, i64 1), !dbg !1613
  %5 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1614
  %6 = call i8* @strvec_slot(%struct._vector* %5, i64 2), !dbg !1615
  call void @alloc_rs(i8* %4, i8* %6), !dbg !1617
  ret void, !dbg !1619
}

declare void @install_sublevel() #2

; Function Attrs: nounwind uwtable
define internal void @rs_weight_handler(%struct._vector*) #0 !dbg !1620 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1621, metadata !154), !dbg !1622
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1623, metadata !154), !dbg !1624
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1625
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1626
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1626
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1627
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1627
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1628
  %12 = load i8*, i8** %11, align 8, !dbg !1628
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1629
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1624
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1630, metadata !154), !dbg !1631
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1632
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1633
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1633
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1634
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1634
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1635
  %20 = load i8*, i8** %19, align 8, !dbg !1635
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1636
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1637, metadata !154), !dbg !1638
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1639
  %23 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %22, i64 1, i32* %5, i32 1, i32 65535, i1 zeroext true), !dbg !1641
  br i1 %23, label %27, label %24, !dbg !1642

; <label>:24:                                     ; preds = %1
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1643
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !1645
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.99, i32 0, i32 0), i8* %26), !dbg !1646
  br label %34, !dbg !1648

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %5, align 4, !dbg !1649
  %29 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1650
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 1, !dbg !1651
  store i32 %28, i32* %30, align 8, !dbg !1652
  %31 = load i32, i32* %5, align 4, !dbg !1653
  %32 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1654
  %33 = getelementptr inbounds %struct._real_server, %struct._real_server* %32, i32 0, i32 2, !dbg !1655
  store i32 %31, i32* %33, align 4, !dbg !1656
  br label %34, !dbg !1657

; <label>:34:                                     ; preds = %27, %24
  ret void, !dbg !1658
}

; Function Attrs: nounwind uwtable
define internal void @rs_forwarding_handler(%struct._vector*) #0 !dbg !1660 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1661, metadata !154), !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1663, metadata !154), !dbg !1664
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1665
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1666
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1666
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1667
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1667
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1668
  %11 = load i8*, i8** %10, align 8, !dbg !1668
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1669
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1664
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1670, metadata !154), !dbg !1671
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1672
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 17, !dbg !1673
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !1673
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !1674
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !1674
  %18 = getelementptr inbounds %struct._element, %struct._element* %17, i32 0, i32 2, !dbg !1675
  %19 = load i8*, i8** %18, align 8, !dbg !1675
  %20 = bitcast i8* %19 to %struct._real_server*, !dbg !1676
  store %struct._real_server* %20, %struct._real_server** %4, align 8, !dbg !1671
  %21 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1677
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1678
  call void @svr_forwarding_handler(%struct._real_server* %21, %struct._vector* %22), !dbg !1679
  ret void, !dbg !1680
}

; Function Attrs: nounwind uwtable
define internal void @uthreshold_handler(%struct._vector*) #0 !dbg !1681 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1682, metadata !154), !dbg !1683
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1684, metadata !154), !dbg !1685
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1686
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1687
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1687
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1688
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1688
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1689
  %12 = load i8*, i8** %11, align 8, !dbg !1689
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1690
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1685
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1691, metadata !154), !dbg !1692
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1693
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1694
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1694
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1695
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1695
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1696
  %20 = load i8*, i8** %19, align 8, !dbg !1696
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1697
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1692
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1698, metadata !154), !dbg !1699
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1700
  %23 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %22, i64 1, i32* %5, i32 0, i32 -1, i1 zeroext true), !dbg !1702
  br i1 %23, label %27, label %24, !dbg !1703

; <label>:24:                                     ; preds = %1
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1704
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !1706
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.100, i32 0, i32 0), i8* %26), !dbg !1707
  br label %31, !dbg !1709

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %5, align 4, !dbg !1710
  %29 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1711
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 5, !dbg !1712
  store i32 %28, i32* %30, align 8, !dbg !1713
  br label %31, !dbg !1714

; <label>:31:                                     ; preds = %27, %24
  ret void, !dbg !1715
}

; Function Attrs: nounwind uwtable
define internal void @lthreshold_handler(%struct._vector*) #0 !dbg !1717 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1718, metadata !154), !dbg !1719
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1720, metadata !154), !dbg !1721
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1722
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1723
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1723
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1724
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1724
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1725
  %12 = load i8*, i8** %11, align 8, !dbg !1725
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1726
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1721
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1727, metadata !154), !dbg !1728
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1729
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1730
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1730
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1731
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1731
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1732
  %20 = load i8*, i8** %19, align 8, !dbg !1732
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1733
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1728
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1734, metadata !154), !dbg !1735
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1736
  %23 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %22, i64 1, i32* %5, i32 0, i32 -1, i1 zeroext true), !dbg !1738
  br i1 %23, label %27, label %24, !dbg !1739

; <label>:24:                                     ; preds = %1
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1740
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !1742
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.101, i32 0, i32 0), i8* %26), !dbg !1743
  br label %31, !dbg !1745

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %5, align 4, !dbg !1746
  %29 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1747
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 6, !dbg !1748
  store i32 %28, i32* %30, align 4, !dbg !1749
  br label %31, !dbg !1750

; <label>:31:                                     ; preds = %27, %24
  ret void, !dbg !1751
}

; Function Attrs: nounwind uwtable
define internal void @rs_inhibit_handler(%struct._vector*) #0 !dbg !1753 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1754, metadata !154), !dbg !1755
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1756, metadata !154), !dbg !1757
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1758
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1759
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1759
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1760
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1760
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1761
  %12 = load i8*, i8** %11, align 8, !dbg !1761
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1762
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1757
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1763, metadata !154), !dbg !1764
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1765
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1766
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1766
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1767
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1767
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1768
  %20 = load i8*, i8** %19, align 8, !dbg !1768
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1769
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1764
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1770, metadata !154), !dbg !1771
  store i32 1, i32* %5, align 4, !dbg !1771
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1772
  %23 = getelementptr inbounds %struct._vector, %struct._vector* %22, i32 0, i32 1, !dbg !1774
  %24 = load i32, i32* %23, align 4, !dbg !1774
  %25 = icmp uge i32 %24, 2, !dbg !1775
  br i1 %25, label %26, label %36, !dbg !1776

; <label>:26:                                     ; preds = %1
  %27 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1777
  %28 = call i8* @strvec_slot(%struct._vector* %27, i64 1), !dbg !1779
  %29 = call i32 @check_true_false(i8* %28), !dbg !1780
  store i32 %29, i32* %5, align 4, !dbg !1782
  %30 = load i32, i32* %5, align 4, !dbg !1783
  %31 = icmp eq i32 %30, -1, !dbg !1785
  br i1 %31, label %32, label %35, !dbg !1786

; <label>:32:                                     ; preds = %26
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1787
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !1789
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.102, i32 0, i32 0), i8* %34), !dbg !1790
  br label %40, !dbg !1792

; <label>:35:                                     ; preds = %26
  br label %36, !dbg !1793

; <label>:36:                                     ; preds = %35, %1
  %37 = load i32, i32* %5, align 4, !dbg !1794
  %38 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1795
  %39 = getelementptr inbounds %struct._real_server, %struct._real_server* %38, i32 0, i32 7, !dbg !1796
  store i32 %37, i32* %39, align 8, !dbg !1797
  br label %40, !dbg !1798

; <label>:40:                                     ; preds = %36, %32
  ret void, !dbg !1799
}

; Function Attrs: nounwind uwtable
define internal void @notify_up_handler(%struct._vector*) #0 !dbg !1801 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1802, metadata !154), !dbg !1803
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1804, metadata !154), !dbg !1805
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1806
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1807
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1807
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1808
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1808
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1809
  %11 = load i8*, i8** %10, align 8, !dbg !1809
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1810
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1805
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1811, metadata !154), !dbg !1812
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1813
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 17, !dbg !1814
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !1814
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !1815
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !1815
  %18 = getelementptr inbounds %struct._element, %struct._element* %17, i32 0, i32 2, !dbg !1816
  %19 = load i8*, i8** %18, align 8, !dbg !1816
  %20 = bitcast i8* %19 to %struct._real_server*, !dbg !1817
  store %struct._real_server* %20, %struct._real_server** %4, align 8, !dbg !1812
  %21 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1818
  %22 = getelementptr inbounds %struct._real_server, %struct._real_server* %21, i32 0, i32 8, !dbg !1820
  %23 = load %struct._notify_script*, %struct._notify_script** %22, align 8, !dbg !1820
  %24 = icmp ne %struct._notify_script* %23, null, !dbg !1818
  br i1 %24, label %25, label %31, !dbg !1821

; <label>:25:                                     ; preds = %1
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1822
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 0, !dbg !1824
  %28 = load i8*, i8** %27, align 8, !dbg !1824
  %29 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1825
  %30 = call i8* @strvec_slot(%struct._vector* %29, i64 1), !dbg !1826
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.103, i32 0, i32 0), i8* %28, i8* %30), !dbg !1827
  br label %36, !dbg !1829

; <label>:31:                                     ; preds = %1
  %32 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1830
  %33 = call %struct._notify_script* @set_check_notify_script(%struct._vector* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0)), !dbg !1831
  %34 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1832
  %35 = getelementptr inbounds %struct._real_server, %struct._real_server* %34, i32 0, i32 8, !dbg !1833
  store %struct._notify_script* %33, %struct._notify_script** %35, align 8, !dbg !1834
  br label %36, !dbg !1835

; <label>:36:                                     ; preds = %31, %25
  ret void, !dbg !1836
}

; Function Attrs: nounwind uwtable
define internal void @notify_down_handler(%struct._vector*) #0 !dbg !1838 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1839, metadata !154), !dbg !1840
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1841, metadata !154), !dbg !1842
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1843
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !1844
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !1844
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !1845
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !1845
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !1846
  %11 = load i8*, i8** %10, align 8, !dbg !1846
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !1847
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !1842
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1848, metadata !154), !dbg !1849
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1850
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 17, !dbg !1851
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !1851
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !1852
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !1852
  %18 = getelementptr inbounds %struct._element, %struct._element* %17, i32 0, i32 2, !dbg !1853
  %19 = load i8*, i8** %18, align 8, !dbg !1853
  %20 = bitcast i8* %19 to %struct._real_server*, !dbg !1854
  store %struct._real_server* %20, %struct._real_server** %4, align 8, !dbg !1849
  %21 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1855
  %22 = getelementptr inbounds %struct._real_server, %struct._real_server* %21, i32 0, i32 9, !dbg !1857
  %23 = load %struct._notify_script*, %struct._notify_script** %22, align 8, !dbg !1857
  %24 = icmp ne %struct._notify_script* %23, null, !dbg !1855
  br i1 %24, label %25, label %31, !dbg !1858

; <label>:25:                                     ; preds = %1
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1859
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 0, !dbg !1861
  %28 = load i8*, i8** %27, align 8, !dbg !1861
  %29 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1862
  %30 = call i8* @strvec_slot(%struct._vector* %29, i64 1), !dbg !1863
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.105, i32 0, i32 0), i8* %28, i8* %30), !dbg !1864
  br label %36, !dbg !1866

; <label>:31:                                     ; preds = %1
  %32 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1867
  %33 = call %struct._notify_script* @set_check_notify_script(%struct._vector* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0)), !dbg !1868
  %34 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1869
  %35 = getelementptr inbounds %struct._real_server, %struct._real_server* %34, i32 0, i32 9, !dbg !1870
  store %struct._notify_script* %33, %struct._notify_script** %35, align 8, !dbg !1871
  br label %36, !dbg !1872

; <label>:36:                                     ; preds = %31, %25
  ret void, !dbg !1873
}

; Function Attrs: nounwind uwtable
define internal void @rs_alpha_handler(%struct._vector*) #0 !dbg !1875 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1876, metadata !154), !dbg !1877
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1878, metadata !154), !dbg !1879
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1880
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1881
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1881
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1882
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1882
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1883
  %12 = load i8*, i8** %11, align 8, !dbg !1883
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1884
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1879
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1885, metadata !154), !dbg !1886
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1887
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1888
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1888
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1889
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1889
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1890
  %20 = load i8*, i8** %19, align 8, !dbg !1890
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1891
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1892, metadata !154), !dbg !1893
  store i32 1, i32* %5, align 4, !dbg !1893
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1894
  %23 = getelementptr inbounds %struct._vector, %struct._vector* %22, i32 0, i32 1, !dbg !1896
  %24 = load i32, i32* %23, align 4, !dbg !1896
  %25 = icmp uge i32 %24, 2, !dbg !1897
  br i1 %25, label %26, label %36, !dbg !1898

; <label>:26:                                     ; preds = %1
  %27 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1899
  %28 = call i8* @strvec_slot(%struct._vector* %27, i64 1), !dbg !1901
  %29 = call i32 @check_true_false(i8* %28), !dbg !1902
  store i32 %29, i32* %5, align 4, !dbg !1904
  %30 = load i32, i32* %5, align 4, !dbg !1905
  %31 = icmp eq i32 %30, -1, !dbg !1907
  br i1 %31, label %32, label %35, !dbg !1908

; <label>:32:                                     ; preds = %26
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1909
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !1911
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0), i8* %34), !dbg !1912
  br label %40, !dbg !1914

; <label>:35:                                     ; preds = %26
  br label %36, !dbg !1915

; <label>:36:                                     ; preds = %35, %1
  %37 = load i32, i32* %5, align 4, !dbg !1916
  %38 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1917
  %39 = getelementptr inbounds %struct._real_server, %struct._real_server* %38, i32 0, i32 10, !dbg !1918
  store i32 %37, i32* %39, align 8, !dbg !1919
  br label %40, !dbg !1920

; <label>:40:                                     ; preds = %36, %32
  ret void, !dbg !1921
}

; Function Attrs: nounwind uwtable
define internal void @rs_retry_handler(%struct._vector*) #0 !dbg !1923 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1924, metadata !154), !dbg !1925
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1926, metadata !154), !dbg !1927
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1928
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1929
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1929
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1930
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1930
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1931
  %12 = load i8*, i8** %11, align 8, !dbg !1931
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1932
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1933, metadata !154), !dbg !1934
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1935
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1936
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1936
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1937
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1937
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1938
  %20 = load i8*, i8** %19, align 8, !dbg !1938
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1939
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1934
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1940, metadata !154), !dbg !1941
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1942
  %23 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %22, i64 1, i32* %5, i32 1, i32 -1, i1 zeroext false), !dbg !1944
  br i1 %23, label %27, label %24, !dbg !1945

; <label>:24:                                     ; preds = %1
  %25 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1946
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !1948
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i32 0, i32 0), i8* %26), !dbg !1949
  br label %31, !dbg !1951

; <label>:27:                                     ; preds = %1
  %28 = load i32, i32* %5, align 4, !dbg !1952
  %29 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1953
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 13, !dbg !1954
  store i32 %28, i32* %30, align 8, !dbg !1955
  br label %31, !dbg !1956

; <label>:31:                                     ; preds = %27, %24
  ret void, !dbg !1957
}

; Function Attrs: nounwind uwtable
define internal void @rs_delay_before_retry_handler(%struct._vector*) #0 !dbg !1959 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1960, metadata !154), !dbg !1961
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1962, metadata !154), !dbg !1963
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1964
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1965
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1965
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1966
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1966
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1967
  %12 = load i8*, i8** %11, align 8, !dbg !1967
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !1968
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1963
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1969, metadata !154), !dbg !1970
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1971
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !1972
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1972
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !1973
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1973
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !1974
  %20 = load i8*, i8** %19, align 8, !dbg !1974
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !1975
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !1970
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1976, metadata !154), !dbg !1977
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1978
  %23 = call zeroext i1 @read_timer(%struct._vector* %22, i64 1, i64* %5, i64 0, i64 0, i1 zeroext true), !dbg !1980
  br i1 %23, label %24, label %28, !dbg !1981

; <label>:24:                                     ; preds = %1
  %25 = load i64, i64* %5, align 8, !dbg !1982
  %26 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1983
  %27 = getelementptr inbounds %struct._real_server, %struct._real_server* %26, i32 0, i32 14, !dbg !1984
  store i64 %25, i64* %27, align 8, !dbg !1985
  br label %31, !dbg !1983

; <label>:28:                                     ; preds = %1
  %29 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1986
  %30 = call i8* @strvec_slot(%struct._vector* %29, i64 1), !dbg !1987
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.107, i32 0, i32 0), i8* %30), !dbg !1988
  br label %31

; <label>:31:                                     ; preds = %28, %24
  ret void, !dbg !1990
}

; Function Attrs: nounwind uwtable
define internal void @rs_warmup_handler(%struct._vector*) #0 !dbg !1991 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1992, metadata !154), !dbg !1993
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1994, metadata !154), !dbg !1995
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1996
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1997
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1997
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !1998
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !1998
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !1999
  %12 = load i8*, i8** %11, align 8, !dbg !1999
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !2000
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !1995
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2001, metadata !154), !dbg !2002
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2003
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !2004
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !2004
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !2005
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !2005
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !2006
  %20 = load i8*, i8** %19, align 8, !dbg !2006
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !2007
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !2002
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2008, metadata !154), !dbg !2009
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2010
  %23 = call zeroext i1 @read_timer(%struct._vector* %22, i64 1, i64* %5, i64 0, i64 0, i1 zeroext true), !dbg !2012
  br i1 %23, label %24, label %28, !dbg !2013

; <label>:24:                                     ; preds = %1
  %25 = load i64, i64* %5, align 8, !dbg !2014
  %26 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2015
  %27 = getelementptr inbounds %struct._real_server, %struct._real_server* %26, i32 0, i32 12, !dbg !2016
  store i64 %25, i64* %27, align 8, !dbg !2017
  br label %31, !dbg !2015

; <label>:28:                                     ; preds = %1
  %29 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2018
  %30 = call i8* @strvec_slot(%struct._vector* %29, i64 1), !dbg !2019
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.108, i32 0, i32 0), i8* %30), !dbg !2020
  br label %31

; <label>:31:                                     ; preds = %28, %24
  ret void, !dbg !2022
}

; Function Attrs: nounwind uwtable
define internal void @rs_delay_handler(%struct._vector*) #0 !dbg !2023 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2024, metadata !154), !dbg !2025
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !2026, metadata !154), !dbg !2027
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2028
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !2029
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !2029
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !2030
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !2030
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !2031
  %12 = load i8*, i8** %11, align 8, !dbg !2031
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !2032
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2033, metadata !154), !dbg !2034
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2035
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !2036
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !2036
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !2037
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !2037
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !2038
  %20 = load i8*, i8** %19, align 8, !dbg !2038
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !2039
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2040, metadata !154), !dbg !2041
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2042
  %23 = call zeroext i1 @read_timer(%struct._vector* %22, i64 1, i64* %5, i64 1, i64 0, i1 zeroext true), !dbg !2044
  br i1 %23, label %24, label %28, !dbg !2045

; <label>:24:                                     ; preds = %1
  %25 = load i64, i64* %5, align 8, !dbg !2046
  %26 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2047
  %27 = getelementptr inbounds %struct._real_server, %struct._real_server* %26, i32 0, i32 11, !dbg !2048
  store i64 %25, i64* %27, align 8, !dbg !2049
  br label %31, !dbg !2047

; <label>:28:                                     ; preds = %1
  %29 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2050
  %30 = call i8* @strvec_slot(%struct._vector* %29, i64 1), !dbg !2051
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.109, i32 0, i32 0), i8* %30), !dbg !2052
  br label %31

; <label>:31:                                     ; preds = %28, %24
  ret void, !dbg !2054
}

; Function Attrs: nounwind uwtable
define internal void @rs_smtp_alert_handler(%struct._vector*) #0 !dbg !2055 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2056, metadata !154), !dbg !2057
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !2058, metadata !154), !dbg !2059
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2060
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !2061
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !2061
  %9 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 1, !dbg !2062
  %10 = load %struct._element*, %struct._element** %9, align 8, !dbg !2062
  %11 = getelementptr inbounds %struct._element, %struct._element* %10, i32 0, i32 2, !dbg !2063
  %12 = load i8*, i8** %11, align 8, !dbg !2063
  %13 = bitcast i8* %12 to %struct._virtual_server*, !dbg !2064
  store %struct._virtual_server* %13, %struct._virtual_server** %3, align 8, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2065, metadata !154), !dbg !2066
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2067
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 17, !dbg !2068
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !2068
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !2069
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !2069
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !2070
  %20 = load i8*, i8** %19, align 8, !dbg !2070
  %21 = bitcast i8* %20 to %struct._real_server*, !dbg !2071
  store %struct._real_server* %21, %struct._real_server** %4, align 8, !dbg !2066
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2072, metadata !154), !dbg !2073
  store i32 1, i32* %5, align 4, !dbg !2073
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2074
  %23 = getelementptr inbounds %struct._vector, %struct._vector* %22, i32 0, i32 1, !dbg !2076
  %24 = load i32, i32* %23, align 4, !dbg !2076
  %25 = icmp uge i32 %24, 2, !dbg !2077
  br i1 %25, label %26, label %36, !dbg !2078

; <label>:26:                                     ; preds = %1
  %27 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2079
  %28 = call i8* @strvec_slot(%struct._vector* %27, i64 1), !dbg !2081
  %29 = call i32 @check_true_false(i8* %28), !dbg !2082
  store i32 %29, i32* %5, align 4, !dbg !2084
  %30 = load i32, i32* %5, align 4, !dbg !2085
  %31 = icmp eq i32 %30, -1, !dbg !2087
  br i1 %31, label %32, label %35, !dbg !2088

; <label>:32:                                     ; preds = %26
  %33 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2089
  %34 = call i8* @strvec_slot(%struct._vector* %33, i64 1), !dbg !2091
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.110, i32 0, i32 0), i8* %34), !dbg !2092
  br label %40, !dbg !2094

; <label>:35:                                     ; preds = %26
  br label %36, !dbg !2095

; <label>:36:                                     ; preds = %35, %1
  %37 = load i32, i32* %5, align 4, !dbg !2096
  %38 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2097
  %39 = getelementptr inbounds %struct._real_server, %struct._real_server* %38, i32 0, i32 15, !dbg !2098
  store i32 %37, i32* %39, align 8, !dbg !2099
  br label %40, !dbg !2100

; <label>:40:                                     ; preds = %36, %32
  ret void, !dbg !2101
}

; Function Attrs: nounwind uwtable
define internal void @rs_virtualhost_handler(%struct._vector*) #0 !dbg !2103 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !2104, metadata !154), !dbg !2105
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !2106, metadata !154), !dbg !2107
  %5 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2108
  %6 = getelementptr inbounds %struct._check_data, %struct._check_data* %5, i32 0, i32 3, !dbg !2109
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2109
  %8 = getelementptr inbounds %struct._list, %struct._list* %7, i32 0, i32 1, !dbg !2110
  %9 = load %struct._element*, %struct._element** %8, align 8, !dbg !2110
  %10 = getelementptr inbounds %struct._element, %struct._element* %9, i32 0, i32 2, !dbg !2111
  %11 = load i8*, i8** %10, align 8, !dbg !2111
  %12 = bitcast i8* %11 to %struct._virtual_server*, !dbg !2112
  store %struct._virtual_server* %12, %struct._virtual_server** %3, align 8, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2113, metadata !154), !dbg !2114
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2115
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 17, !dbg !2116
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !2116
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1, !dbg !2117
  %17 = load %struct._element*, %struct._element** %16, align 8, !dbg !2117
  %18 = getelementptr inbounds %struct._element, %struct._element* %17, i32 0, i32 2, !dbg !2118
  %19 = load i8*, i8** %18, align 8, !dbg !2118
  %20 = bitcast i8* %19 to %struct._real_server*, !dbg !2119
  store %struct._real_server* %20, %struct._real_server** %4, align 8, !dbg !2114
  %21 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !2120
  %22 = call i8* @set_value(%struct._vector* %21), !dbg !2121
  %23 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2122
  %24 = getelementptr inbounds %struct._real_server, %struct._real_server* %23, i32 0, i32 20, !dbg !2123
  store i8* %22, i8** %24, align 8, !dbg !2124
  ret void, !dbg !2125
}

declare void @install_sublevel_end_handler(void ()*) #2

; Function Attrs: nounwind uwtable
define internal void @rs_end_handler() #0 !dbg !2126 {
  %1 = alloca %struct._virtual_server*, align 8
  %2 = alloca %struct._real_server*, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %1, metadata !2127, metadata !154), !dbg !2128
  call void @llvm.dbg.declare(metadata %struct._real_server** %2, metadata !2129, metadata !154), !dbg !2130
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2131
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 3, !dbg !2133
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !2133
  %6 = icmp eq %struct._list* %5, null, !dbg !2134
  br i1 %6, label %21, label %7, !dbg !2135

; <label>:7:                                      ; preds = %0
  %8 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2136
  %9 = getelementptr inbounds %struct._check_data, %struct._check_data* %8, i32 0, i32 3, !dbg !2138
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !2138
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 0, !dbg !2139
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !2139
  %13 = icmp eq %struct._element* %12, null, !dbg !2140
  br i1 %13, label %14, label %22, !dbg !2141

; <label>:14:                                     ; preds = %7
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2142
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 3, !dbg !2144
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !2144
  %18 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 1, !dbg !2145
  %19 = load %struct._element*, %struct._element** %18, align 8, !dbg !2145
  %20 = icmp eq %struct._element* %19, null, !dbg !2146
  br i1 %20, label %21, label %22, !dbg !2147

; <label>:21:                                     ; preds = %14, %0
  br label %101, !dbg !2148

; <label>:22:                                     ; preds = %14, %7
  %23 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2149
  %24 = getelementptr inbounds %struct._check_data, %struct._check_data* %23, i32 0, i32 3, !dbg !2150
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !2150
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 1, !dbg !2151
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !2151
  %28 = getelementptr inbounds %struct._element, %struct._element* %27, i32 0, i32 2, !dbg !2152
  %29 = load i8*, i8** %28, align 8, !dbg !2152
  %30 = bitcast i8* %29 to %struct._virtual_server*, !dbg !2153
  store %struct._virtual_server* %30, %struct._virtual_server** %1, align 8, !dbg !2154
  %31 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2155
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 17, !dbg !2157
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !2157
  %34 = icmp eq %struct._list* %33, null, !dbg !2158
  br i1 %34, label %49, label %35, !dbg !2159

; <label>:35:                                     ; preds = %22
  %36 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2160
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 17, !dbg !2162
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !2162
  %39 = getelementptr inbounds %struct._list, %struct._list* %38, i32 0, i32 0, !dbg !2163
  %40 = load %struct._element*, %struct._element** %39, align 8, !dbg !2163
  %41 = icmp eq %struct._element* %40, null, !dbg !2164
  br i1 %41, label %42, label %50, !dbg !2165

; <label>:42:                                     ; preds = %35
  %43 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2166
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 17, !dbg !2168
  %45 = load %struct._list*, %struct._list** %44, align 8, !dbg !2168
  %46 = getelementptr inbounds %struct._list, %struct._list* %45, i32 0, i32 1, !dbg !2169
  %47 = load %struct._element*, %struct._element** %46, align 8, !dbg !2169
  %48 = icmp eq %struct._element* %47, null, !dbg !2170
  br i1 %48, label %49, label %50, !dbg !2171

; <label>:49:                                     ; preds = %42, %22
  br label %101, !dbg !2172

; <label>:50:                                     ; preds = %42, %35
  %51 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2173
  %52 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %51, i32 0, i32 17, !dbg !2174
  %53 = load %struct._list*, %struct._list** %52, align 8, !dbg !2174
  %54 = getelementptr inbounds %struct._list, %struct._list* %53, i32 0, i32 1, !dbg !2175
  %55 = load %struct._element*, %struct._element** %54, align 8, !dbg !2175
  %56 = getelementptr inbounds %struct._element, %struct._element* %55, i32 0, i32 2, !dbg !2176
  %57 = load i8*, i8** %56, align 8, !dbg !2176
  %58 = bitcast i8* %57 to %struct._real_server*, !dbg !2177
  store %struct._real_server* %58, %struct._real_server** %2, align 8, !dbg !2178
  %59 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !2179
  %60 = getelementptr inbounds %struct._real_server, %struct._real_server* %59, i32 0, i32 4, !dbg !2181
  %61 = load i32, i32* %60, align 4, !dbg !2181
  %62 = icmp ne i32 %61, 2, !dbg !2182
  br i1 %62, label %63, label %101, !dbg !2183

; <label>:63:                                     ; preds = %50
  %64 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2184
  %65 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %64, i32 0, i32 5, !dbg !2187
  %66 = load i16, i16* %65, align 8, !dbg !2187
  %67 = zext i16 %66 to i32, !dbg !2184
  %68 = icmp eq i32 %67, 0, !dbg !2188
  br i1 %68, label %69, label %76, !dbg !2189

; <label>:69:                                     ; preds = %63
  %70 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !2190
  %71 = getelementptr inbounds %struct._real_server, %struct._real_server* %70, i32 0, i32 0, !dbg !2191
  %72 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %71, i32 0, i32 0, !dbg !2192
  %73 = load i16, i16* %72, align 8, !dbg !2192
  %74 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2193
  %75 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %74, i32 0, i32 5, !dbg !2194
  store i16 %73, i16* %75, align 8, !dbg !2195
  br label %100, !dbg !2193

; <label>:76:                                     ; preds = %63
  %77 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2196
  %78 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %77, i32 0, i32 5, !dbg !2198
  %79 = load i16, i16* %78, align 8, !dbg !2198
  %80 = zext i16 %79 to i32, !dbg !2196
  %81 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !2199
  %82 = getelementptr inbounds %struct._real_server, %struct._real_server* %81, i32 0, i32 0, !dbg !2200
  %83 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %82, i32 0, i32 0, !dbg !2201
  %84 = load i16, i16* %83, align 8, !dbg !2201
  %85 = zext i16 %84 to i32, !dbg !2199
  %86 = icmp ne i32 %80, %85, !dbg !2202
  br i1 %86, label %87, label %99, !dbg !2203

; <label>:87:                                     ; preds = %76
  %88 = load %struct._real_server*, %struct._real_server** %2, align 8, !dbg !2204
  %89 = getelementptr inbounds %struct._real_server, %struct._real_server* %88, i32 0, i32 0, !dbg !2206
  %90 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %89), !dbg !2207
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.111, i32 0, i32 0), i8* %90), !dbg !2208
  %91 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2210
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 17, !dbg !2211
  %93 = load %struct._list*, %struct._list** %92, align 8, !dbg !2211
  %94 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !2212
  %95 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %94, i32 0, i32 17, !dbg !2213
  %96 = load %struct._list*, %struct._list** %95, align 8, !dbg !2213
  %97 = getelementptr inbounds %struct._list, %struct._list* %96, i32 0, i32 1, !dbg !2214
  %98 = load %struct._element*, %struct._element** %97, align 8, !dbg !2214
  call void @free_list_element(%struct._list* %93, %struct._element* %98), !dbg !2215
  br label %99, !dbg !2216

; <label>:99:                                     ; preds = %87, %76
  br label %100

; <label>:100:                                    ; preds = %99, %69
  br label %101, !dbg !2217

; <label>:101:                                    ; preds = %21, %49, %100, %50
  ret void, !dbg !2218
}

declare void @install_checkers_keyword() #2

declare void @install_sublevel_end() #2

; Function Attrs: nounwind uwtable
define %struct._vector* @check_init_keywords() #0 !dbg !2219 {
  %1 = load i8, i8* @reload, align 1, !dbg !2222
  %2 = trunc i8 %1 to i1, !dbg !2222
  call void @init_global_keywords(i1 zeroext %2), !dbg !2223
  call void @init_check_keywords(i1 zeroext true), !dbg !2224
  call void @init_vrrp_keywords(i1 zeroext false), !dbg !2225
  %3 = load %struct._vector*, %struct._vector** @keywords, align 8, !dbg !2226
  ret %struct._vector* %3, !dbg !2227
}

declare void @init_global_keywords(i1 zeroext) #2

declare void @init_vrrp_keywords(i1 zeroext) #2

declare void @free_ssl() #2

declare void @report_config_error(i32, i8*, ...) #2

declare %struct._ssl_data* @alloc_ssl() #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i8* @set_value(%struct._vector*) #2

declare void @alloc_vsg(i8*) #2

declare i8* @strvec_slot(%struct._vector*, i64) #2

declare void @alloc_value_block(void (%struct._vector*)*, i8*) #2

declare void @alloc_vsg_entry(%struct._vector*) #2

declare void @free_list_element(%struct._list*, %struct._element*) #2

declare void @alloc_vs(i8*, i8*) #2

declare i8* @inet_sockaddrtos(%struct.sockaddr_storage*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare zeroext i1 @read_unsigned_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

declare zeroext i1 @read_timer(%struct._vector*, i64, i64*, i64, i64, i1 zeroext) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @inet_aton(i8*, %struct.in_addr*) #3

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #4

declare i32 @check_true_false(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._notify_script* @set_check_notify_script(%struct._vector*, i8*) #6 !dbg !2228 {
  %3 = alloca %struct._vector*, align 8
  %4 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %3, metadata !2233, metadata !154), !dbg !2234
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2235, metadata !154), !dbg !2236
  %5 = load i8*, i8** %4, align 8, !dbg !2237
  %6 = call %struct._notify_script* @notify_script_init(i32 0, i8* %5), !dbg !2238
  ret %struct._notify_script* %6, !dbg !2239
}

declare %struct._notify_script* @notify_script_init(i32, i8*) #2

declare void @alloc_ssvr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @svr_forwarding_handler(%struct._real_server*, %struct._vector*) #0 !dbg !2240 {
  %3 = alloca %struct._real_server*, align 8
  %4 = alloca %struct._vector*, align 8
  %5 = alloca i8*, align 8
  store %struct._real_server* %0, %struct._real_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %3, metadata !2243, metadata !154), !dbg !2244
  store %struct._vector* %1, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2245, metadata !154), !dbg !2246
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2247, metadata !154), !dbg !2248
  %6 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2249
  %7 = call i8* @strvec_slot(%struct._vector* %6, i64 1), !dbg !2250
  store i8* %7, i8** %5, align 8, !dbg !2248
  %8 = load i8*, i8** %5, align 8, !dbg !2251
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0)) #8, !dbg !2253
  %10 = icmp ne i32 %9, 0, !dbg !2253
  br i1 %10, label %14, label %11, !dbg !2254

; <label>:11:                                     ; preds = %2
  %12 = load %struct._real_server*, %struct._real_server** %3, align 8, !dbg !2255
  %13 = getelementptr inbounds %struct._real_server, %struct._real_server* %12, i32 0, i32 4, !dbg !2256
  store i32 0, i32* %13, align 4, !dbg !2257
  br label %32, !dbg !2255

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %5, align 8, !dbg !2258
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0)) #8, !dbg !2260
  %17 = icmp ne i32 %16, 0, !dbg !2260
  br i1 %17, label %21, label %18, !dbg !2261

; <label>:18:                                     ; preds = %14
  %19 = load %struct._real_server*, %struct._real_server** %3, align 8, !dbg !2262
  %20 = getelementptr inbounds %struct._real_server, %struct._real_server* %19, i32 0, i32 4, !dbg !2263
  store i32 3, i32* %20, align 4, !dbg !2264
  br label %31, !dbg !2262

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %5, align 8, !dbg !2265
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0)) #8, !dbg !2267
  %24 = icmp ne i32 %23, 0, !dbg !2267
  br i1 %24, label %28, label %25, !dbg !2268

; <label>:25:                                     ; preds = %21
  %26 = load %struct._real_server*, %struct._real_server** %3, align 8, !dbg !2269
  %27 = getelementptr inbounds %struct._real_server, %struct._real_server* %26, i32 0, i32 4, !dbg !2270
  store i32 2, i32* %27, align 4, !dbg !2271
  br label %30, !dbg !2269

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %5, align 8, !dbg !2272
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i32 0, i32 0), i8* %29), !dbg !2273
  br label %30

; <label>:30:                                     ; preds = %28, %25
  br label %31

; <label>:31:                                     ; preds = %30, %18
  br label %32

; <label>:32:                                     ; preds = %31, %11
  ret void, !dbg !2274
}

declare void @alloc_rs(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!145, !146}
!llvm.ident = !{!147}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, globals: !55)
!1 = !DIFile(filename: "[inter]keepalived--check--check_parser.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!7 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!8 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!9 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!10 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!11 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!12 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!13 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!14 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!15 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!16 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!17 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!18 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 40, size: 32, align: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!22 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!23 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!24 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!25 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!26 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!27 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!28 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!29 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!30 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!31 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!32 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!33 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!34 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!35 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!36 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!37 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!38 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!39 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!40 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!41 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!42 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!43 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!44 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!45 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!46 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!47 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!48 = !{!49, !50, !52, !54}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 51, baseType: !54)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!54 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!55 = !{!56, !61}
!56 = distinct !DIGlobalVariable(name: "lvs_schedulers", scope: !0, file: !57, line: 50, type: !58, isLocal: false, isDefinition: true, variable: [14 x i8*]* @lvs_schedulers)
!57 = !DIFile(filename: "check_parser.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 896, align: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 14)
!61 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !62, line: 150, type: !63, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!62 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !64, line: 31, baseType: !65)
!64 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !64, line: 39, size: 320, align: 64, elements: !67)
!67 = !{!68, !75, !76, !77, !81}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !66, file: !64, line: 40, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !64, line: 33, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !64, line: 34, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !64, line: 35, baseType: !69, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !70, file: !64, line: 36, baseType: !49, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !66, file: !64, line: 41, baseType: !69, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !66, file: !64, line: 42, baseType: !54, size: 32, align: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !66, file: !64, line: 43, baseType: !78, size: 64, align: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !49}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !66, file: !64, line: 44, baseType: !82, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !49}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 48, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 241, size: 1728, align: 64, elements: !90)
!89 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!90 = !{!91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !112, !113, !114, !115, !119, !121, !123, !127, !130, !132, !133, !134, !135, !136, !140, !141}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 242, baseType: !92, size: 32, align: 32)
!92 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 247, baseType: !50, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 248, baseType: !50, size: 64, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 249, baseType: !50, size: 64, align: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 250, baseType: !50, size: 64, align: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 251, baseType: !50, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 252, baseType: !50, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 253, baseType: !50, size: 64, align: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 254, baseType: !50, size: 64, align: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 256, baseType: !50, size: 64, align: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 257, baseType: !50, size: 64, align: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 258, baseType: !50, size: 64, align: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 260, baseType: !105, size: 64, align: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 156, size: 192, align: 64, elements: !107)
!107 = !{!108, !109, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !106, file: !89, line: 157, baseType: !105, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !106, file: !89, line: 158, baseType: !110, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !106, file: !89, line: 162, baseType: !92, size: 32, align: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 262, baseType: !110, size: 64, align: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 264, baseType: !92, size: 32, align: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 268, baseType: !92, size: 32, align: 32, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 270, baseType: !116, size: 64, align: 64, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !117, line: 131, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!118 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 274, baseType: !120, size: 16, align: 16, offset: 1024)
!120 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 275, baseType: !122, size: 8, align: 8, offset: 1040)
!122 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 276, baseType: !124, size: 8, align: 8, offset: 1048)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 280, baseType: !128, size: 64, align: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 150, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 289, baseType: !131, size: 64, align: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !117, line: 132, baseType: !118)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !88, file: !89, line: 297, baseType: !49, size: 64, align: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !88, file: !89, line: 298, baseType: !49, size: 64, align: 64, offset: 1280)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !88, file: !89, line: 299, baseType: !49, size: 64, align: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !88, file: !89, line: 300, baseType: !49, size: 64, align: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 302, baseType: !137, size: 64, align: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 216, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!139 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 303, baseType: !92, size: 32, align: 32, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 305, baseType: !142, size: 160, align: 8, offset: 1568)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, align: 8, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 20)
!145 = !{i32 2, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!148 = distinct !DISubprogram(name: "init_check_keywords", scope: !57, file: !57, line: 786, type: !149, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151}
!151 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!152 = !{}
!153 = !DILocalVariable(name: "active", arg: 1, scope: !148, file: !57, line: 786, type: !151)
!154 = !DIExpression()
!155 = !DILocation(line: 786, column: 25, scope: !148)
!156 = !DILocation(line: 789, column: 44, scope: !148)
!157 = !DILocation(line: 789, column: 2, scope: !148)
!158 = !DILocation(line: 790, column: 2, scope: !148)
!159 = !DILocation(line: 791, column: 2, scope: !148)
!160 = !DILocation(line: 792, column: 2, scope: !148)
!161 = !DILocation(line: 793, column: 2, scope: !148)
!162 = !DILocation(line: 796, column: 61, scope: !148)
!163 = !DILocation(line: 796, column: 2, scope: !148)
!164 = !DILocation(line: 797, column: 54, scope: !148)
!165 = !DILocation(line: 797, column: 2, scope: !148)
!166 = !DILocation(line: 798, column: 2, scope: !148)
!167 = !DILocation(line: 799, column: 2, scope: !148)
!168 = !DILocation(line: 800, column: 2, scope: !148)
!169 = !DILocation(line: 801, column: 2, scope: !148)
!170 = !DILocation(line: 802, column: 2, scope: !148)
!171 = !DILocation(line: 803, column: 2, scope: !148)
!172 = !DILocation(line: 804, column: 2, scope: !148)
!173 = !DILocation(line: 805, column: 2, scope: !148)
!174 = !DILocation(line: 806, column: 2, scope: !148)
!175 = !DILocation(line: 808, column: 2, scope: !148)
!176 = !DILocation(line: 810, column: 2, scope: !148)
!177 = !DILocation(line: 813, column: 2, scope: !148)
!178 = !DILocation(line: 814, column: 2, scope: !148)
!179 = !DILocation(line: 815, column: 2, scope: !148)
!180 = !DILocation(line: 816, column: 2, scope: !148)
!181 = !DILocation(line: 817, column: 2, scope: !148)
!182 = !DILocation(line: 819, column: 2, scope: !148)
!183 = !DILocation(line: 820, column: 2, scope: !148)
!184 = !DILocation(line: 822, column: 2, scope: !148)
!185 = !DILocation(line: 824, column: 2, scope: !148)
!186 = !DILocation(line: 825, column: 2, scope: !148)
!187 = !DILocation(line: 826, column: 2, scope: !148)
!188 = !DILocation(line: 827, column: 2, scope: !148)
!189 = !DILocation(line: 828, column: 2, scope: !148)
!190 = !DILocation(line: 829, column: 2, scope: !148)
!191 = !DILocation(line: 832, column: 2, scope: !148)
!192 = !DILocation(line: 833, column: 2, scope: !148)
!193 = !DILocation(line: 834, column: 2, scope: !148)
!194 = !DILocation(line: 835, column: 2, scope: !148)
!195 = !DILocation(line: 836, column: 2, scope: !148)
!196 = !DILocation(line: 837, column: 2, scope: !148)
!197 = !DILocation(line: 838, column: 2, scope: !148)
!198 = !DILocation(line: 841, column: 2, scope: !148)
!199 = !DILocation(line: 842, column: 2, scope: !148)
!200 = !DILocation(line: 843, column: 2, scope: !148)
!201 = !DILocation(line: 844, column: 2, scope: !148)
!202 = !DILocation(line: 845, column: 2, scope: !148)
!203 = !DILocation(line: 846, column: 2, scope: !148)
!204 = !DILocation(line: 847, column: 2, scope: !148)
!205 = !DILocation(line: 848, column: 2, scope: !148)
!206 = !DILocation(line: 849, column: 2, scope: !148)
!207 = !DILocation(line: 850, column: 2, scope: !148)
!208 = !DILocation(line: 851, column: 2, scope: !148)
!209 = !DILocation(line: 852, column: 2, scope: !148)
!210 = !DILocation(line: 853, column: 2, scope: !148)
!211 = !DILocation(line: 854, column: 2, scope: !148)
!212 = !DILocation(line: 855, column: 2, scope: !148)
!213 = !DILocation(line: 856, column: 2, scope: !148)
!214 = !DILocation(line: 857, column: 2, scope: !148)
!215 = !DILocation(line: 858, column: 2, scope: !148)
!216 = !DILocation(line: 859, column: 2, scope: !148)
!217 = !DILocation(line: 861, column: 2, scope: !148)
!218 = !DILocation(line: 864, column: 2, scope: !148)
!219 = !DILocation(line: 865, column: 2, scope: !148)
!220 = !DILocation(line: 866, column: 1, scope: !148)
!221 = distinct !DISubprogram(name: "ssl_handler", scope: !57, file: !57, line: 55, type: !222, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !226, line: 34, baseType: !227)
!226 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !226, line: 30, size: 128, align: 64, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !227, file: !226, line: 31, baseType: !54, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !227, file: !226, line: 32, baseType: !54, size: 32, align: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !227, file: !226, line: 33, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!233 = !DILocalVariable(name: "strvec", arg: 1, scope: !221, file: !57, line: 55, type: !224)
!234 = !DILocation(line: 55, column: 23, scope: !221)
!235 = !DILocation(line: 57, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !221, file: !57, line: 57, column: 6)
!237 = !DILocation(line: 57, column: 6, scope: !221)
!238 = !DILocation(line: 58, column: 3, scope: !236)
!239 = !DILocation(line: 60, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !221, file: !57, line: 60, column: 6)
!241 = !DILocation(line: 60, column: 18, scope: !240)
!242 = !DILocation(line: 60, column: 6, scope: !221)
!243 = !DILocation(line: 61, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !57, line: 60, column: 23)
!245 = !DILocation(line: 62, column: 3, scope: !244)
!246 = !DILocation(line: 63, column: 2, scope: !244)
!247 = !DILocation(line: 64, column: 20, scope: !221)
!248 = !DILocation(line: 64, column: 2, scope: !221)
!249 = !DILocation(line: 64, column: 14, scope: !221)
!250 = !DILocation(line: 64, column: 18, scope: !221)
!251 = !DILocation(line: 65, column: 1, scope: !221)
!252 = !DILocation(line: 65, column: 1, scope: !253)
!253 = !DILexicalBlockFile(scope: !221, file: !57, discriminator: 1)
!254 = distinct !DISubprogram(name: "sslpass_handler", scope: !57, file: !57, line: 67, type: !222, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!255 = !DILocalVariable(name: "strvec", arg: 1, scope: !254, file: !57, line: 67, type: !224)
!256 = !DILocation(line: 67, column: 27, scope: !254)
!257 = !DILocation(line: 69, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !57, line: 69, column: 6)
!259 = !DILocation(line: 69, column: 18, scope: !258)
!260 = !DILocation(line: 69, column: 23, scope: !258)
!261 = !DILocation(line: 69, column: 6, scope: !254)
!262 = !DILocation(line: 70, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !57, line: 69, column: 33)
!264 = !DILocation(line: 71, column: 9, scope: !263)
!265 = !DILocation(line: 71, column: 21, scope: !263)
!266 = !DILocation(line: 71, column: 26, scope: !263)
!267 = !DILocation(line: 71, column: 4, scope: !263)
!268 = !DILocation(line: 71, column: 38, scope: !263)
!269 = !DILocation(line: 71, column: 50, scope: !263)
!270 = !DILocation(line: 71, column: 55, scope: !263)
!271 = !DILocation(line: 71, column: 65, scope: !263)
!272 = !DILocation(line: 72, column: 2, scope: !263)
!273 = !DILocation(line: 73, column: 40, scope: !254)
!274 = !DILocation(line: 73, column: 30, scope: !254)
!275 = !DILocation(line: 73, column: 2, scope: !254)
!276 = !DILocation(line: 73, column: 14, scope: !254)
!277 = !DILocation(line: 73, column: 19, scope: !254)
!278 = !DILocation(line: 73, column: 28, scope: !254)
!279 = !DILocation(line: 74, column: 1, scope: !254)
!280 = distinct !DISubprogram(name: "sslca_handler", scope: !57, file: !57, line: 76, type: !222, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!281 = !DILocalVariable(name: "strvec", arg: 1, scope: !280, file: !57, line: 76, type: !224)
!282 = !DILocation(line: 76, column: 25, scope: !280)
!283 = !DILocation(line: 78, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !57, line: 78, column: 6)
!285 = !DILocation(line: 78, column: 18, scope: !284)
!286 = !DILocation(line: 78, column: 23, scope: !284)
!287 = !DILocation(line: 78, column: 6, scope: !280)
!288 = !DILocation(line: 79, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !57, line: 78, column: 31)
!290 = !DILocation(line: 80, column: 9, scope: !289)
!291 = !DILocation(line: 80, column: 21, scope: !289)
!292 = !DILocation(line: 80, column: 26, scope: !289)
!293 = !DILocation(line: 80, column: 4, scope: !289)
!294 = !DILocation(line: 80, column: 36, scope: !289)
!295 = !DILocation(line: 80, column: 48, scope: !289)
!296 = !DILocation(line: 80, column: 53, scope: !289)
!297 = !DILocation(line: 80, column: 61, scope: !289)
!298 = !DILocation(line: 81, column: 2, scope: !289)
!299 = !DILocation(line: 82, column: 38, scope: !280)
!300 = !DILocation(line: 82, column: 28, scope: !280)
!301 = !DILocation(line: 82, column: 2, scope: !280)
!302 = !DILocation(line: 82, column: 14, scope: !280)
!303 = !DILocation(line: 82, column: 19, scope: !280)
!304 = !DILocation(line: 82, column: 26, scope: !280)
!305 = !DILocation(line: 83, column: 1, scope: !280)
!306 = distinct !DISubprogram(name: "sslcert_handler", scope: !57, file: !57, line: 85, type: !222, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!307 = !DILocalVariable(name: "strvec", arg: 1, scope: !306, file: !57, line: 85, type: !224)
!308 = !DILocation(line: 85, column: 27, scope: !306)
!309 = !DILocation(line: 87, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !57, line: 87, column: 6)
!311 = !DILocation(line: 87, column: 18, scope: !310)
!312 = !DILocation(line: 87, column: 23, scope: !310)
!313 = !DILocation(line: 87, column: 6, scope: !306)
!314 = !DILocation(line: 88, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !57, line: 87, column: 33)
!316 = !DILocation(line: 89, column: 9, scope: !315)
!317 = !DILocation(line: 89, column: 21, scope: !315)
!318 = !DILocation(line: 89, column: 26, scope: !315)
!319 = !DILocation(line: 89, column: 4, scope: !315)
!320 = !DILocation(line: 89, column: 38, scope: !315)
!321 = !DILocation(line: 89, column: 50, scope: !315)
!322 = !DILocation(line: 89, column: 55, scope: !315)
!323 = !DILocation(line: 89, column: 65, scope: !315)
!324 = !DILocation(line: 90, column: 2, scope: !315)
!325 = !DILocation(line: 91, column: 40, scope: !306)
!326 = !DILocation(line: 91, column: 30, scope: !306)
!327 = !DILocation(line: 91, column: 2, scope: !306)
!328 = !DILocation(line: 91, column: 14, scope: !306)
!329 = !DILocation(line: 91, column: 19, scope: !306)
!330 = !DILocation(line: 91, column: 28, scope: !306)
!331 = !DILocation(line: 92, column: 1, scope: !306)
!332 = distinct !DISubprogram(name: "sslkey_handler", scope: !57, file: !57, line: 94, type: !222, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!333 = !DILocalVariable(name: "strvec", arg: 1, scope: !332, file: !57, line: 94, type: !224)
!334 = !DILocation(line: 94, column: 26, scope: !332)
!335 = !DILocation(line: 96, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !57, line: 96, column: 6)
!337 = !DILocation(line: 96, column: 18, scope: !336)
!338 = !DILocation(line: 96, column: 23, scope: !336)
!339 = !DILocation(line: 96, column: 6, scope: !332)
!340 = !DILocation(line: 97, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !57, line: 96, column: 32)
!342 = !DILocation(line: 98, column: 9, scope: !341)
!343 = !DILocation(line: 98, column: 21, scope: !341)
!344 = !DILocation(line: 98, column: 26, scope: !341)
!345 = !DILocation(line: 98, column: 4, scope: !341)
!346 = !DILocation(line: 98, column: 37, scope: !341)
!347 = !DILocation(line: 98, column: 49, scope: !341)
!348 = !DILocation(line: 98, column: 54, scope: !341)
!349 = !DILocation(line: 98, column: 63, scope: !341)
!350 = !DILocation(line: 99, column: 2, scope: !341)
!351 = !DILocation(line: 100, column: 39, scope: !332)
!352 = !DILocation(line: 100, column: 29, scope: !332)
!353 = !DILocation(line: 100, column: 2, scope: !332)
!354 = !DILocation(line: 100, column: 14, scope: !332)
!355 = !DILocation(line: 100, column: 19, scope: !332)
!356 = !DILocation(line: 100, column: 27, scope: !332)
!357 = !DILocation(line: 101, column: 1, scope: !332)
!358 = distinct !DISubprogram(name: "vsg_handler", scope: !57, file: !57, line: 105, type: !222, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!359 = !DILocalVariable(name: "strvec", arg: 1, scope: !358, file: !57, line: 105, type: !224)
!360 = !DILocation(line: 105, column: 23, scope: !358)
!361 = !DILocalVariable(name: "vsg", scope: !358, file: !57, line: 107, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !364, line: 128, baseType: !365)
!364 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !364, line: 124, size: 192, align: 64, elements: !366)
!366 = !{!367, !368, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !365, file: !364, line: 125, baseType: !50, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !365, file: !364, line: 126, baseType: !63, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !365, file: !364, line: 127, baseType: !63, size: 64, align: 64, offset: 128)
!370 = !DILocation(line: 107, column: 26, scope: !358)
!371 = !DILocation(line: 109, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !358, file: !57, line: 109, column: 6)
!373 = !DILocation(line: 109, column: 6, scope: !358)
!374 = !DILocation(line: 110, column: 3, scope: !372)
!375 = !DILocation(line: 113, column: 24, scope: !358)
!376 = !DILocation(line: 113, column: 12, scope: !358)
!377 = !DILocation(line: 113, column: 2, scope: !378)
!378 = !DILexicalBlockFile(scope: !358, file: !57, discriminator: 1)
!379 = !DILocation(line: 114, column: 49, scope: !358)
!380 = !DILocation(line: 114, column: 37, scope: !358)
!381 = !DILocation(line: 114, column: 2, scope: !378)
!382 = !DILocation(line: 117, column: 10, scope: !358)
!383 = !DILocation(line: 117, column: 22, scope: !358)
!384 = !DILocation(line: 117, column: 33, scope: !358)
!385 = !DILocation(line: 117, column: 39, scope: !358)
!386 = !DILocation(line: 117, column: 8, scope: !358)
!387 = !DILocation(line: 117, column: 6, scope: !358)
!388 = !DILocation(line: 118, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !358, file: !57, line: 118, column: 6)
!390 = !DILocation(line: 118, column: 13, scope: !389)
!391 = !DILocation(line: 118, column: 22, scope: !389)
!392 = !DILocation(line: 118, column: 5, scope: !389)
!393 = !DILocation(line: 118, column: 10, scope: !394)
!394 = !DILexicalBlockFile(scope: !389, file: !57, discriminator: 1)
!395 = !DILocation(line: 118, column: 15, scope: !394)
!396 = !DILocation(line: 118, column: 25, scope: !394)
!397 = !DILocation(line: 118, column: 30, scope: !394)
!398 = !DILocation(line: 118, column: 5, scope: !394)
!399 = !DILocation(line: 118, column: 9, scope: !400)
!400 = !DILexicalBlockFile(scope: !389, file: !57, discriminator: 2)
!401 = !DILocation(line: 118, column: 14, scope: !400)
!402 = !DILocation(line: 118, column: 24, scope: !400)
!403 = !DILocation(line: 118, column: 29, scope: !400)
!404 = !DILocation(line: 118, column: 8, scope: !400)
!405 = !DILocation(line: 118, column: 13, scope: !406)
!406 = !DILexicalBlockFile(scope: !389, file: !57, discriminator: 3)
!407 = !DILocation(line: 118, column: 18, scope: !406)
!408 = !DILocation(line: 118, column: 30, scope: !406)
!409 = !DILocation(line: 118, column: 35, scope: !406)
!410 = !DILocation(line: 118, column: 40, scope: !411)
!411 = !DILexicalBlockFile(scope: !389, file: !57, discriminator: 4)
!412 = !DILocation(line: 118, column: 45, scope: !411)
!413 = !DILocation(line: 118, column: 58, scope: !411)
!414 = !DILocation(line: 118, column: 63, scope: !411)
!415 = !DILocation(line: 118, column: 35, scope: !411)
!416 = !DILocation(line: 118, column: 39, scope: !417)
!417 = !DILexicalBlockFile(scope: !389, file: !57, discriminator: 5)
!418 = !DILocation(line: 118, column: 44, scope: !417)
!419 = !DILocation(line: 118, column: 57, scope: !417)
!420 = !DILocation(line: 118, column: 62, scope: !417)
!421 = !DILocation(line: 118, column: 6, scope: !417)
!422 = !DILocation(line: 119, column: 98, scope: !423)
!423 = distinct !DILexicalBlock(scope: !389, file: !57, line: 118, column: 39)
!424 = !DILocation(line: 119, column: 103, scope: !423)
!425 = !DILocation(line: 119, column: 3, scope: !423)
!426 = !DILocation(line: 120, column: 21, scope: !423)
!427 = !DILocation(line: 120, column: 33, scope: !423)
!428 = !DILocation(line: 120, column: 43, scope: !423)
!429 = !DILocation(line: 120, column: 55, scope: !423)
!430 = !DILocation(line: 120, column: 65, scope: !423)
!431 = !DILocation(line: 120, column: 3, scope: !423)
!432 = !DILocation(line: 121, column: 2, scope: !423)
!433 = !DILocation(line: 122, column: 1, scope: !358)
!434 = distinct !DISubprogram(name: "vs_handler", scope: !57, file: !57, line: 124, type: !222, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!435 = !DILocalVariable(name: "strvec", arg: 1, scope: !434, file: !57, line: 124, type: !224)
!436 = !DILocation(line: 124, column: 22, scope: !434)
!437 = !DILocation(line: 126, column: 2, scope: !434)
!438 = !DILocation(line: 126, column: 15, scope: !434)
!439 = !DILocation(line: 126, column: 35, scope: !434)
!440 = !DILocation(line: 129, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !57, line: 129, column: 6)
!442 = !DILocation(line: 129, column: 6, scope: !434)
!443 = !DILocation(line: 130, column: 3, scope: !441)
!444 = !DILocation(line: 132, column: 23, scope: !434)
!445 = !DILocation(line: 132, column: 11, scope: !434)
!446 = !DILocation(line: 132, column: 37, scope: !434)
!447 = !DILocation(line: 132, column: 46, scope: !434)
!448 = !DILocation(line: 132, column: 57, scope: !434)
!449 = !DILocation(line: 132, column: 35, scope: !434)
!450 = !DILocation(line: 132, column: 76, scope: !451)
!451 = !DILexicalBlockFile(scope: !434, file: !57, discriminator: 1)
!452 = !DILocation(line: 132, column: 64, scope: !451)
!453 = !DILocation(line: 132, column: 35, scope: !451)
!454 = !DILocation(line: 132, column: 35, scope: !455)
!455 = !DILexicalBlockFile(scope: !434, file: !57, discriminator: 2)
!456 = !DILocation(line: 132, column: 35, scope: !457)
!457 = !DILexicalBlockFile(scope: !434, file: !57, discriminator: 3)
!458 = !DILocation(line: 132, column: 2, scope: !457)
!459 = !DILocation(line: 133, column: 1, scope: !434)
!460 = !DILocation(line: 133, column: 1, scope: !451)
!461 = distinct !DISubprogram(name: "vs_end_handler", scope: !57, file: !57, line: 135, type: !462, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!462 = !DISubroutineType(types: !463)
!463 = !{null}
!464 = !DILocalVariable(name: "vs", scope: !461, file: !57, line: 137, type: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !364, line: 180, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !364, line: 131, size: 2560, align: 64, elements: !468)
!468 = !{!469, !470, !471, !483, !484, !526, !528, !529, !530, !531, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !467, file: !364, line: 132, baseType: !50, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !467, file: !364, line: 133, baseType: !362, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !467, file: !364, line: 134, baseType: !472, size: 1024, align: 64, offset: 128)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !473, line: 166, size: 1024, align: 64, elements: !474)
!473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!474 = !{!475, !478, !482}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !472, file: !473, line: 168, baseType: !476, size: 16, align: 16)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !477, line: 28, baseType: !120)
!477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !472, file: !473, line: 169, baseType: !479, size: 944, align: 8, offset: 16)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 944, align: 8, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 118)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !472, file: !473, line: 170, baseType: !139, size: 64, align: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !467, file: !364, line: 135, baseType: !52, size: 32, align: 32, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !467, file: !364, line: 136, baseType: !485, size: 64, align: 64, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !364, line: 102, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !364, line: 62, size: 1920, align: 64, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !487, file: !364, line: 63, baseType: !472, size: 1024, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !487, file: !364, line: 64, baseType: !92, size: 32, align: 32, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !487, file: !364, line: 65, baseType: !92, size: 32, align: 32, offset: 1056)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !487, file: !364, line: 66, baseType: !92, size: 32, align: 32, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !487, file: !364, line: 68, baseType: !54, size: 32, align: 32, offset: 1120)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !487, file: !364, line: 69, baseType: !52, size: 32, align: 32, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !487, file: !364, line: 70, baseType: !52, size: 32, align: 32, offset: 1184)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !487, file: !364, line: 71, baseType: !92, size: 32, align: 32, offset: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !487, file: !364, line: 74, baseType: !498, size: 64, align: 64, offset: 1280)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !500, line: 65, baseType: !501)
!500 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !500, line: 59, size: 192, align: 64, elements: !502)
!502 = !{!503, !505, !506, !507, !511}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !501, file: !500, line: 60, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !501, file: !500, line: 61, baseType: !92, size: 32, align: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !500, line: 62, baseType: !92, size: 32, align: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !501, file: !500, line: 63, baseType: !508, size: 32, align: 32, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !509, line: 80, baseType: !510)
!509 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !117, line: 125, baseType: !54)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !501, file: !500, line: 64, baseType: !512, size: 32, align: 32, offset: 160)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !509, line: 65, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !117, line: 126, baseType: !54)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !487, file: !364, line: 75, baseType: !498, size: 64, align: 64, offset: 1344)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !487, file: !364, line: 76, baseType: !92, size: 32, align: 32, offset: 1408)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !487, file: !364, line: 77, baseType: !139, size: 64, align: 64, offset: 1472)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !487, file: !364, line: 78, baseType: !139, size: 64, align: 64, offset: 1536)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !487, file: !364, line: 79, baseType: !54, size: 32, align: 32, offset: 1600)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !487, file: !364, line: 80, baseType: !139, size: 64, align: 64, offset: 1664)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !487, file: !364, line: 81, baseType: !92, size: 32, align: 32, offset: 1728)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !487, file: !364, line: 83, baseType: !151, size: 8, align: 8, offset: 1760)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !487, file: !364, line: 84, baseType: !54, size: 32, align: 32, offset: 1792)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !487, file: !364, line: 85, baseType: !151, size: 8, align: 8, offset: 1824)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !487, file: !364, line: 86, baseType: !151, size: 8, align: 8, offset: 1832)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !487, file: !364, line: 87, baseType: !50, size: 64, align: 64, offset: 1856)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !467, file: !364, line: 137, baseType: !527, size: 16, align: 16, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 49, baseType: !120)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !467, file: !364, line: 138, baseType: !527, size: 16, align: 16, offset: 1296)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !467, file: !364, line: 139, baseType: !151, size: 8, align: 8, offset: 1312)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !467, file: !364, line: 140, baseType: !92, size: 32, align: 32, offset: 1344)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !467, file: !364, line: 142, baseType: !532, size: 128, align: 8, offset: 1376)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 8, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !364, line: 143, baseType: !52, size: 32, align: 32, offset: 1504)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !467, file: !364, line: 144, baseType: !52, size: 32, align: 32, offset: 1536)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !467, file: !364, line: 146, baseType: !532, size: 128, align: 8, offset: 1568)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !467, file: !364, line: 148, baseType: !54, size: 32, align: 32, offset: 1696)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !467, file: !364, line: 149, baseType: !52, size: 32, align: 32, offset: 1728)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !467, file: !364, line: 151, baseType: !50, size: 64, align: 64, offset: 1792)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !467, file: !364, line: 153, baseType: !92, size: 32, align: 32, offset: 1856)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !467, file: !364, line: 154, baseType: !63, size: 64, align: 64, offset: 1920)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !467, file: !364, line: 155, baseType: !92, size: 32, align: 32, offset: 1984)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !467, file: !364, line: 156, baseType: !151, size: 8, align: 8, offset: 2016)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !467, file: !364, line: 157, baseType: !151, size: 8, align: 8, offset: 2024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !467, file: !364, line: 158, baseType: !151, size: 8, align: 8, offset: 2032)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !467, file: !364, line: 160, baseType: !139, size: 64, align: 64, offset: 2048)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !467, file: !364, line: 161, baseType: !139, size: 64, align: 64, offset: 2112)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !467, file: !364, line: 162, baseType: !54, size: 32, align: 32, offset: 2176)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !467, file: !364, line: 163, baseType: !139, size: 64, align: 64, offset: 2240)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !467, file: !364, line: 164, baseType: !498, size: 64, align: 64, offset: 2304)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !467, file: !364, line: 165, baseType: !498, size: 64, align: 64, offset: 2368)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !467, file: !364, line: 166, baseType: !54, size: 32, align: 32, offset: 2432)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !467, file: !364, line: 167, baseType: !54, size: 32, align: 32, offset: 2464)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !467, file: !364, line: 168, baseType: !92, size: 32, align: 32, offset: 2496)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !467, file: !364, line: 169, baseType: !151, size: 8, align: 8, offset: 2528)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !467, file: !364, line: 170, baseType: !151, size: 8, align: 8, offset: 2536)
!558 = !DILocation(line: 137, column: 20, scope: !461)
!559 = !DILocation(line: 137, column: 27, scope: !461)
!560 = !DILocation(line: 137, column: 39, scope: !461)
!561 = !DILocation(line: 137, column: 44, scope: !461)
!562 = !DILocation(line: 137, column: 50, scope: !461)
!563 = !DILocation(line: 137, column: 25, scope: !461)
!564 = !DILocalVariable(name: "rs", scope: !461, file: !57, line: 138, type: !485)
!565 = !DILocation(line: 138, column: 17, scope: !461)
!566 = !DILocalVariable(name: "e", scope: !461, file: !57, line: 139, type: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !64, line: 30, baseType: !69)
!568 = !DILocation(line: 139, column: 10, scope: !461)
!569 = !DILocation(line: 143, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !461, file: !57, line: 143, column: 6)
!571 = !DILocation(line: 143, column: 10, scope: !570)
!572 = !DILocation(line: 145, column: 9, scope: !570)
!573 = !DILocation(line: 145, column: 12, scope: !574)
!574 = !DILexicalBlockFile(scope: !570, file: !57, discriminator: 1)
!575 = !DILocation(line: 145, column: 16, scope: !574)
!576 = !DILocation(line: 145, column: 23, scope: !574)
!577 = !DILocation(line: 145, column: 41, scope: !574)
!578 = !DILocation(line: 143, column: 6, scope: !579)
!579 = !DILexicalBlockFile(scope: !461, file: !57, discriminator: 1)
!580 = !DILocation(line: 149, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !57, line: 149, column: 7)
!582 = distinct !DILexicalBlock(scope: !570, file: !57, line: 148, column: 2)
!583 = !DILocation(line: 149, column: 11, scope: !581)
!584 = !DILocation(line: 149, column: 14, scope: !581)
!585 = !DILocation(line: 149, column: 7, scope: !582)
!586 = !DILocation(line: 150, column: 13, scope: !581)
!587 = !DILocation(line: 150, column: 17, scope: !581)
!588 = !DILocation(line: 150, column: 24, scope: !581)
!589 = !DILocation(line: 150, column: 29, scope: !581)
!590 = !DILocation(line: 150, column: 4, scope: !581)
!591 = !DILocation(line: 150, column: 8, scope: !581)
!592 = !DILocation(line: 150, column: 11, scope: !581)
!593 = !DILocation(line: 151, column: 12, scope: !594)
!594 = distinct !DILexicalBlock(scope: !581, file: !57, line: 151, column: 12)
!595 = !DILocation(line: 151, column: 16, scope: !594)
!596 = !DILocation(line: 151, column: 22, scope: !594)
!597 = !DILocation(line: 151, column: 26, scope: !594)
!598 = !DILocation(line: 151, column: 33, scope: !594)
!599 = !DILocation(line: 151, column: 38, scope: !594)
!600 = !DILocation(line: 151, column: 19, scope: !594)
!601 = !DILocation(line: 151, column: 12, scope: !581)
!602 = !DILocation(line: 152, column: 157, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !57, line: 151, column: 49)
!604 = !DILocation(line: 152, column: 161, scope: !603)
!605 = !DILocation(line: 152, column: 168, scope: !603)
!606 = !DILocation(line: 152, column: 139, scope: !603)
!607 = !DILocation(line: 152, column: 4, scope: !608)
!608 = !DILexicalBlockFile(scope: !603, file: !57, discriminator: 1)
!609 = !DILocation(line: 153, column: 10, scope: !603)
!610 = !DILocation(line: 153, column: 14, scope: !603)
!611 = !DILocation(line: 153, column: 5, scope: !603)
!612 = !DILocation(line: 153, column: 23, scope: !603)
!613 = !DILocation(line: 153, column: 27, scope: !603)
!614 = !DILocation(line: 153, column: 34, scope: !603)
!615 = !DILocation(line: 154, column: 4, scope: !603)
!616 = !DILocation(line: 154, column: 8, scope: !603)
!617 = !DILocation(line: 154, column: 14, scope: !603)
!618 = !DILocation(line: 155, column: 3, scope: !603)
!619 = !DILocation(line: 156, column: 2, scope: !582)
!620 = !DILocation(line: 158, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !461, file: !57, line: 158, column: 6)
!622 = !DILocation(line: 158, column: 10, scope: !621)
!623 = !DILocation(line: 158, column: 13, scope: !621)
!624 = !DILocation(line: 158, column: 6, scope: !461)
!625 = !DILocation(line: 168, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !57, line: 168, column: 7)
!627 = distinct !DILexicalBlock(scope: !621, file: !57, line: 158, column: 26)
!628 = !DILocation(line: 168, column: 11, scope: !626)
!629 = !DILocation(line: 168, column: 7, scope: !627)
!630 = !DILocation(line: 169, column: 13, scope: !626)
!631 = !DILocation(line: 169, column: 17, scope: !626)
!632 = !DILocation(line: 169, column: 24, scope: !626)
!633 = !DILocation(line: 169, column: 29, scope: !626)
!634 = !DILocation(line: 169, column: 4, scope: !626)
!635 = !DILocation(line: 169, column: 8, scope: !626)
!636 = !DILocation(line: 169, column: 11, scope: !626)
!637 = !DILocation(line: 171, column: 10, scope: !638)
!638 = distinct !DILexicalBlock(scope: !627, file: !57, line: 171, column: 7)
!639 = !DILocation(line: 171, column: 14, scope: !638)
!640 = !DILocation(line: 171, column: 18, scope: !638)
!641 = !DILocation(line: 171, column: 7, scope: !638)
!642 = !DILocation(line: 171, column: 12, scope: !643)
!643 = !DILexicalBlockFile(scope: !638, file: !57, discriminator: 1)
!644 = !DILocation(line: 171, column: 16, scope: !643)
!645 = !DILocation(line: 171, column: 21, scope: !643)
!646 = !DILocation(line: 171, column: 26, scope: !643)
!647 = !DILocation(line: 171, column: 7, scope: !643)
!648 = !DILocation(line: 171, column: 11, scope: !649)
!649 = !DILexicalBlockFile(scope: !638, file: !57, discriminator: 2)
!650 = !DILocation(line: 171, column: 15, scope: !649)
!651 = !DILocation(line: 171, column: 20, scope: !649)
!652 = !DILocation(line: 171, column: 25, scope: !649)
!653 = !DILocation(line: 171, column: 7, scope: !649)
!654 = !DILocation(line: 172, column: 16, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !57, line: 172, column: 4)
!656 = distinct !DILexicalBlock(scope: !638, file: !57, line: 171, column: 11)
!657 = !DILocation(line: 172, column: 20, scope: !655)
!658 = !DILocation(line: 172, column: 15, scope: !655)
!659 = !DILocation(line: 172, column: 14, scope: !655)
!660 = !DILocation(line: 172, column: 14, scope: !661)
!661 = !DILexicalBlockFile(scope: !655, file: !57, discriminator: 1)
!662 = !DILocation(line: 172, column: 15, scope: !663)
!663 = !DILexicalBlockFile(scope: !655, file: !57, discriminator: 2)
!664 = !DILocation(line: 172, column: 19, scope: !663)
!665 = !DILocation(line: 172, column: 24, scope: !663)
!666 = !DILocation(line: 172, column: 14, scope: !663)
!667 = !DILocation(line: 172, column: 14, scope: !668)
!668 = !DILexicalBlockFile(scope: !655, file: !57, discriminator: 3)
!669 = !DILocation(line: 172, column: 11, scope: !668)
!670 = !DILocation(line: 172, column: 9, scope: !668)
!671 = !DILocation(line: 172, column: 31, scope: !672)
!672 = !DILexicalBlockFile(scope: !673, file: !57, discriminator: 4)
!673 = distinct !DILexicalBlock(scope: !655, file: !57, line: 172, column: 4)
!674 = !DILocation(line: 172, column: 4, scope: !672)
!675 = !DILocation(line: 173, column: 12, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !57, line: 172, column: 53)
!677 = !DILocation(line: 173, column: 16, scope: !676)
!678 = !DILocation(line: 173, column: 10, scope: !676)
!679 = !DILocation(line: 173, column: 8, scope: !676)
!680 = !DILocation(line: 174, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !57, line: 174, column: 9)
!682 = !DILocation(line: 174, column: 13, scope: !681)
!683 = !DILocation(line: 174, column: 16, scope: !681)
!684 = !DILocation(line: 174, column: 9, scope: !676)
!685 = !DILocation(line: 175, column: 15, scope: !681)
!686 = !DILocation(line: 175, column: 19, scope: !681)
!687 = !DILocation(line: 175, column: 24, scope: !681)
!688 = !DILocation(line: 175, column: 6, scope: !681)
!689 = !DILocation(line: 175, column: 10, scope: !681)
!690 = !DILocation(line: 175, column: 13, scope: !681)
!691 = !DILocation(line: 176, column: 14, scope: !692)
!692 = distinct !DILexicalBlock(scope: !681, file: !57, line: 176, column: 14)
!693 = !DILocation(line: 176, column: 18, scope: !692)
!694 = !DILocation(line: 176, column: 24, scope: !692)
!695 = !DILocation(line: 176, column: 28, scope: !692)
!696 = !DILocation(line: 176, column: 33, scope: !692)
!697 = !DILocation(line: 176, column: 21, scope: !692)
!698 = !DILocation(line: 176, column: 14, scope: !681)
!699 = !DILocation(line: 177, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !57, line: 176, column: 44)
!701 = !DILocation(line: 177, column: 10, scope: !700)
!702 = !DILocation(line: 177, column: 13, scope: !700)
!703 = !DILocation(line: 178, column: 6, scope: !700)
!704 = !DILocation(line: 180, column: 4, scope: !676)
!705 = !DILocation(line: 172, column: 42, scope: !706)
!706 = !DILexicalBlockFile(scope: !673, file: !57, discriminator: 5)
!707 = !DILocation(line: 172, column: 46, scope: !706)
!708 = !DILocation(line: 172, column: 39, scope: !706)
!709 = !DILocation(line: 172, column: 4, scope: !706)
!710 = distinct !{!710, !711}
!711 = !DILocation(line: 172, column: 4, scope: !656)
!712 = !DILocation(line: 181, column: 3, scope: !656)
!713 = !DILocation(line: 183, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !627, file: !57, line: 183, column: 7)
!715 = !DILocation(line: 183, column: 11, scope: !714)
!716 = !DILocation(line: 183, column: 14, scope: !714)
!717 = !DILocation(line: 183, column: 7, scope: !627)
!718 = !DILocation(line: 186, column: 4, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !57, line: 183, column: 27)
!720 = !DILocation(line: 186, column: 8, scope: !719)
!721 = !DILocation(line: 186, column: 11, scope: !719)
!722 = !DILocation(line: 187, column: 3, scope: !719)
!723 = !DILocation(line: 188, column: 2, scope: !627)
!724 = !DILocation(line: 189, column: 1, scope: !461)
!725 = distinct !DISubprogram(name: "ip_family_handler", scope: !57, file: !57, line: 191, type: !222, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!726 = !DILocalVariable(name: "strvec", arg: 1, scope: !725, file: !57, line: 191, type: !224)
!727 = !DILocation(line: 191, column: 29, scope: !725)
!728 = !DILocalVariable(name: "vs", scope: !725, file: !57, line: 193, type: !465)
!729 = !DILocation(line: 193, column: 20, scope: !725)
!730 = !DILocation(line: 193, column: 27, scope: !725)
!731 = !DILocation(line: 193, column: 39, scope: !725)
!732 = !DILocation(line: 193, column: 44, scope: !725)
!733 = !DILocation(line: 193, column: 50, scope: !725)
!734 = !DILocation(line: 193, column: 25, scope: !725)
!735 = !DILocalVariable(name: "af", scope: !725, file: !57, line: 194, type: !527)
!736 = !DILocation(line: 194, column: 11, scope: !725)
!737 = !DILocation(line: 196, column: 26, scope: !738)
!738 = distinct !DILexicalBlock(scope: !725, file: !57, line: 196, column: 6)
!739 = !DILocation(line: 196, column: 14, scope: !738)
!740 = !DILocation(line: 196, column: 7, scope: !741)
!741 = !DILexicalBlockFile(scope: !738, file: !57, discriminator: 1)
!742 = !DILocation(line: 196, column: 7, scope: !738)
!743 = !DILocation(line: 196, column: 6, scope: !725)
!744 = !DILocation(line: 197, column: 6, scope: !738)
!745 = !DILocation(line: 197, column: 3, scope: !738)
!746 = !DILocation(line: 198, column: 31, scope: !747)
!747 = distinct !DILexicalBlock(scope: !738, file: !57, line: 198, column: 11)
!748 = !DILocation(line: 198, column: 19, scope: !747)
!749 = !DILocation(line: 198, column: 12, scope: !750)
!750 = !DILexicalBlockFile(scope: !747, file: !57, discriminator: 1)
!751 = !DILocation(line: 198, column: 12, scope: !747)
!752 = !DILocation(line: 198, column: 11, scope: !738)
!753 = !DILocation(line: 204, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !747, file: !57, line: 198, column: 53)
!755 = !DILocation(line: 205, column: 2, scope: !754)
!756 = !DILocation(line: 207, column: 94, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !57, line: 206, column: 7)
!758 = !DILocation(line: 207, column: 82, scope: !757)
!759 = !DILocation(line: 207, column: 3, scope: !760)
!760 = !DILexicalBlockFile(scope: !757, file: !57, discriminator: 1)
!761 = !DILocation(line: 208, column: 3, scope: !757)
!762 = !DILocation(line: 211, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !725, file: !57, line: 211, column: 6)
!764 = !DILocation(line: 211, column: 10, scope: !763)
!765 = !DILocation(line: 211, column: 13, scope: !763)
!766 = !DILocation(line: 211, column: 25, scope: !763)
!767 = !DILocation(line: 212, column: 6, scope: !763)
!768 = !DILocation(line: 212, column: 12, scope: !763)
!769 = !DILocation(line: 212, column: 16, scope: !763)
!770 = !DILocation(line: 212, column: 9, scope: !763)
!771 = !DILocation(line: 211, column: 6, scope: !772)
!772 = !DILexicalBlockFile(scope: !725, file: !57, discriminator: 1)
!773 = !DILocation(line: 213, column: 132, scope: !774)
!774 = distinct !DILexicalBlock(scope: !763, file: !57, line: 212, column: 20)
!775 = !DILocation(line: 213, column: 120, scope: !774)
!776 = !DILocation(line: 213, column: 3, scope: !777)
!777 = !DILexicalBlockFile(scope: !774, file: !57, discriminator: 1)
!778 = !DILocation(line: 214, column: 3, scope: !774)
!779 = !DILocation(line: 217, column: 11, scope: !725)
!780 = !DILocation(line: 217, column: 2, scope: !725)
!781 = !DILocation(line: 217, column: 6, scope: !725)
!782 = !DILocation(line: 217, column: 9, scope: !725)
!783 = !DILocation(line: 218, column: 1, scope: !725)
!784 = !DILocation(line: 218, column: 1, scope: !772)
!785 = distinct !DISubprogram(name: "vs_retry_handler", scope: !57, file: !57, line: 242, type: !222, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!786 = !DILocalVariable(name: "strvec", arg: 1, scope: !785, file: !57, line: 242, type: !224)
!787 = !DILocation(line: 242, column: 28, scope: !785)
!788 = !DILocalVariable(name: "vs", scope: !785, file: !57, line: 244, type: !465)
!789 = !DILocation(line: 244, column: 20, scope: !785)
!790 = !DILocation(line: 244, column: 27, scope: !785)
!791 = !DILocation(line: 244, column: 39, scope: !785)
!792 = !DILocation(line: 244, column: 44, scope: !785)
!793 = !DILocation(line: 244, column: 50, scope: !785)
!794 = !DILocation(line: 244, column: 25, scope: !785)
!795 = !DILocalVariable(name: "retry", scope: !785, file: !57, line: 245, type: !54)
!796 = !DILocation(line: 245, column: 11, scope: !785)
!797 = !DILocation(line: 247, column: 28, scope: !798)
!798 = distinct !DILexicalBlock(scope: !785, file: !57, line: 247, column: 6)
!799 = !DILocation(line: 247, column: 7, scope: !798)
!800 = !DILocation(line: 247, column: 6, scope: !785)
!801 = !DILocation(line: 248, column: 93, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !57, line: 247, column: 69)
!803 = !DILocation(line: 248, column: 81, scope: !802)
!804 = !DILocation(line: 248, column: 3, scope: !805)
!805 = !DILexicalBlockFile(scope: !802, file: !57, discriminator: 1)
!806 = !DILocation(line: 249, column: 3, scope: !802)
!807 = !DILocation(line: 251, column: 14, scope: !785)
!808 = !DILocation(line: 251, column: 2, scope: !785)
!809 = !DILocation(line: 251, column: 6, scope: !785)
!810 = !DILocation(line: 251, column: 12, scope: !785)
!811 = !DILocation(line: 252, column: 1, scope: !785)
!812 = !DILocation(line: 252, column: 1, scope: !813)
!813 = !DILexicalBlockFile(scope: !785, file: !57, discriminator: 1)
!814 = distinct !DISubprogram(name: "vs_delay_before_retry_handler", scope: !57, file: !57, line: 231, type: !222, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!815 = !DILocalVariable(name: "strvec", arg: 1, scope: !814, file: !57, line: 231, type: !224)
!816 = !DILocation(line: 231, column: 41, scope: !814)
!817 = !DILocalVariable(name: "vs", scope: !814, file: !57, line: 233, type: !465)
!818 = !DILocation(line: 233, column: 20, scope: !814)
!819 = !DILocation(line: 233, column: 27, scope: !814)
!820 = !DILocation(line: 233, column: 39, scope: !814)
!821 = !DILocation(line: 233, column: 44, scope: !814)
!822 = !DILocation(line: 233, column: 50, scope: !814)
!823 = !DILocation(line: 233, column: 25, scope: !814)
!824 = !DILocalVariable(name: "delay", scope: !814, file: !57, line: 234, type: !139)
!825 = !DILocation(line: 234, column: 16, scope: !814)
!826 = !DILocation(line: 236, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !814, file: !57, line: 236, column: 6)
!828 = !DILocation(line: 236, column: 6, scope: !827)
!829 = !DILocation(line: 236, column: 6, scope: !814)
!830 = !DILocation(line: 237, column: 28, scope: !827)
!831 = !DILocation(line: 237, column: 3, scope: !827)
!832 = !DILocation(line: 237, column: 7, scope: !827)
!833 = !DILocation(line: 237, column: 26, scope: !827)
!834 = !DILocation(line: 239, column: 126, scope: !827)
!835 = !DILocation(line: 239, column: 114, scope: !827)
!836 = !DILocation(line: 239, column: 3, scope: !837)
!837 = !DILexicalBlockFile(scope: !827, file: !57, discriminator: 1)
!838 = !DILocation(line: 240, column: 1, scope: !814)
!839 = distinct !DISubprogram(name: "vs_warmup_handler", scope: !57, file: !57, line: 254, type: !222, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!840 = !DILocalVariable(name: "strvec", arg: 1, scope: !839, file: !57, line: 254, type: !224)
!841 = !DILocation(line: 254, column: 29, scope: !839)
!842 = !DILocalVariable(name: "vs", scope: !839, file: !57, line: 256, type: !465)
!843 = !DILocation(line: 256, column: 20, scope: !839)
!844 = !DILocation(line: 256, column: 27, scope: !839)
!845 = !DILocation(line: 256, column: 39, scope: !839)
!846 = !DILocation(line: 256, column: 44, scope: !839)
!847 = !DILocation(line: 256, column: 50, scope: !839)
!848 = !DILocation(line: 256, column: 25, scope: !839)
!849 = !DILocalVariable(name: "delay", scope: !839, file: !57, line: 257, type: !139)
!850 = !DILocation(line: 257, column: 16, scope: !839)
!851 = !DILocation(line: 259, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !839, file: !57, line: 259, column: 6)
!853 = !DILocation(line: 259, column: 6, scope: !852)
!854 = !DILocation(line: 259, column: 6, scope: !839)
!855 = !DILocation(line: 260, column: 16, scope: !852)
!856 = !DILocation(line: 260, column: 3, scope: !852)
!857 = !DILocation(line: 260, column: 7, scope: !852)
!858 = !DILocation(line: 260, column: 14, scope: !852)
!859 = !DILocation(line: 262, column: 114, scope: !852)
!860 = !DILocation(line: 262, column: 102, scope: !852)
!861 = !DILocation(line: 262, column: 3, scope: !862)
!862 = !DILexicalBlockFile(scope: !852, file: !57, discriminator: 1)
!863 = !DILocation(line: 263, column: 1, scope: !839)
!864 = distinct !DISubprogram(name: "vs_delay_handler", scope: !57, file: !57, line: 220, type: !222, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!865 = !DILocalVariable(name: "strvec", arg: 1, scope: !864, file: !57, line: 220, type: !224)
!866 = !DILocation(line: 220, column: 28, scope: !864)
!867 = !DILocalVariable(name: "vs", scope: !864, file: !57, line: 222, type: !465)
!868 = !DILocation(line: 222, column: 20, scope: !864)
!869 = !DILocation(line: 222, column: 27, scope: !864)
!870 = !DILocation(line: 222, column: 39, scope: !864)
!871 = !DILocation(line: 222, column: 44, scope: !864)
!872 = !DILocation(line: 222, column: 50, scope: !864)
!873 = !DILocation(line: 222, column: 25, scope: !864)
!874 = !DILocalVariable(name: "delay", scope: !864, file: !57, line: 223, type: !139)
!875 = !DILocation(line: 223, column: 16, scope: !864)
!876 = !DILocation(line: 225, column: 17, scope: !877)
!877 = distinct !DILexicalBlock(scope: !864, file: !57, line: 225, column: 6)
!878 = !DILocation(line: 225, column: 6, scope: !877)
!879 = !DILocation(line: 225, column: 6, scope: !864)
!880 = !DILocation(line: 226, column: 20, scope: !877)
!881 = !DILocation(line: 226, column: 3, scope: !877)
!882 = !DILocation(line: 226, column: 7, scope: !877)
!883 = !DILocation(line: 226, column: 18, scope: !877)
!884 = !DILocation(line: 228, column: 118, scope: !877)
!885 = !DILocation(line: 228, column: 106, scope: !877)
!886 = !DILocation(line: 228, column: 3, scope: !887)
!887 = !DILexicalBlockFile(scope: !877, file: !57, discriminator: 1)
!888 = !DILocation(line: 229, column: 1, scope: !864)
!889 = distinct !DISubprogram(name: "vs_inhibit_handler", scope: !57, file: !57, line: 578, type: !222, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!890 = !DILocalVariable(name: "strvec", arg: 1, scope: !889, file: !57, line: 578, type: !224)
!891 = !DILocation(line: 578, column: 54, scope: !889)
!892 = !DILocalVariable(name: "vs", scope: !889, file: !57, line: 580, type: !465)
!893 = !DILocation(line: 580, column: 20, scope: !889)
!894 = !DILocation(line: 580, column: 27, scope: !889)
!895 = !DILocation(line: 580, column: 39, scope: !889)
!896 = !DILocation(line: 580, column: 44, scope: !889)
!897 = !DILocation(line: 580, column: 50, scope: !889)
!898 = !DILocation(line: 580, column: 25, scope: !889)
!899 = !DILocation(line: 581, column: 2, scope: !889)
!900 = !DILocation(line: 581, column: 6, scope: !889)
!901 = !DILocation(line: 581, column: 14, scope: !889)
!902 = !DILocation(line: 582, column: 1, scope: !889)
!903 = distinct !DISubprogram(name: "lbalgo_handler", scope: !57, file: !57, line: 265, type: !222, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!904 = !DILocalVariable(name: "strvec", arg: 1, scope: !903, file: !57, line: 265, type: !224)
!905 = !DILocation(line: 265, column: 26, scope: !903)
!906 = !DILocalVariable(name: "vs", scope: !903, file: !57, line: 267, type: !465)
!907 = !DILocation(line: 267, column: 20, scope: !903)
!908 = !DILocation(line: 267, column: 27, scope: !903)
!909 = !DILocation(line: 267, column: 39, scope: !903)
!910 = !DILocation(line: 267, column: 44, scope: !903)
!911 = !DILocation(line: 267, column: 50, scope: !903)
!912 = !DILocation(line: 267, column: 25, scope: !903)
!913 = !DILocalVariable(name: "str", scope: !903, file: !57, line: 268, type: !50)
!914 = !DILocation(line: 268, column: 8, scope: !903)
!915 = !DILocation(line: 268, column: 26, scope: !903)
!916 = !DILocation(line: 268, column: 14, scope: !903)
!917 = !DILocalVariable(name: "i", scope: !903, file: !57, line: 269, type: !92)
!918 = !DILocation(line: 269, column: 6, scope: !903)
!919 = !DILocation(line: 272, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !903, file: !57, line: 272, column: 2)
!921 = !DILocation(line: 272, column: 7, scope: !920)
!922 = !DILocation(line: 272, column: 29, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !57, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !920, file: !57, line: 272, column: 2)
!925 = !DILocation(line: 272, column: 14, scope: !923)
!926 = !DILocation(line: 272, column: 32, scope: !923)
!927 = !DILocation(line: 272, column: 42, scope: !928)
!928 = !DILexicalBlockFile(scope: !924, file: !57, discriminator: 2)
!929 = !DILocation(line: 272, column: 62, scope: !928)
!930 = !DILocation(line: 272, column: 47, scope: !928)
!931 = !DILocation(line: 272, column: 35, scope: !928)
!932 = !DILocation(line: 272, column: 32, scope: !928)
!933 = !DILocation(line: 272, column: 2, scope: !934)
!934 = !DILexicalBlockFile(scope: !920, file: !57, discriminator: 3)
!935 = !DILocation(line: 272, column: 2, scope: !936)
!936 = !DILexicalBlockFile(scope: !920, file: !57, discriminator: 4)
!937 = !DILocation(line: 272, column: 68, scope: !938)
!938 = !DILexicalBlockFile(scope: !924, file: !57, discriminator: 5)
!939 = !DILocation(line: 272, column: 2, scope: !938)
!940 = distinct !{!940, !941}
!941 = !DILocation(line: 272, column: 2, scope: !903)
!942 = !DILocation(line: 274, column: 22, scope: !943)
!943 = distinct !DILexicalBlock(scope: !903, file: !57, line: 274, column: 6)
!944 = !DILocation(line: 274, column: 7, scope: !943)
!945 = !DILocation(line: 274, column: 25, scope: !943)
!946 = !DILocation(line: 274, column: 35, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !57, discriminator: 1)
!948 = !DILocation(line: 274, column: 28, scope: !947)
!949 = !DILocation(line: 274, column: 40, scope: !947)
!950 = !DILocation(line: 274, column: 6, scope: !947)
!951 = !DILocation(line: 275, column: 106, scope: !952)
!952 = distinct !DILexicalBlock(scope: !943, file: !57, line: 274, column: 62)
!953 = !DILocation(line: 275, column: 94, scope: !952)
!954 = !DILocation(line: 275, column: 3, scope: !955)
!955 = !DILexicalBlockFile(scope: !952, file: !57, discriminator: 1)
!956 = !DILocation(line: 276, column: 3, scope: !952)
!957 = !DILocation(line: 279, column: 9, scope: !903)
!958 = !DILocation(line: 279, column: 13, scope: !903)
!959 = !DILocation(line: 279, column: 20, scope: !903)
!960 = !DILocation(line: 279, column: 2, scope: !903)
!961 = !DILocation(line: 280, column: 1, scope: !903)
!962 = !DILocation(line: 280, column: 1, scope: !963)
!963 = !DILexicalBlockFile(scope: !903, file: !57, discriminator: 1)
!964 = distinct !DISubprogram(name: "lbflags_handler", scope: !57, file: !57, line: 283, type: !222, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!965 = !DILocalVariable(name: "strvec", arg: 1, scope: !964, file: !57, line: 283, type: !224)
!966 = !DILocation(line: 283, column: 27, scope: !964)
!967 = !DILocalVariable(name: "vs", scope: !964, file: !57, line: 285, type: !465)
!968 = !DILocation(line: 285, column: 20, scope: !964)
!969 = !DILocation(line: 285, column: 27, scope: !964)
!970 = !DILocation(line: 285, column: 39, scope: !964)
!971 = !DILocation(line: 285, column: 44, scope: !964)
!972 = !DILocation(line: 285, column: 50, scope: !964)
!973 = !DILocation(line: 285, column: 25, scope: !964)
!974 = !DILocalVariable(name: "str", scope: !964, file: !57, line: 286, type: !50)
!975 = !DILocation(line: 286, column: 8, scope: !964)
!976 = !DILocation(line: 286, column: 26, scope: !964)
!977 = !DILocation(line: 286, column: 14, scope: !964)
!978 = !DILocation(line: 288, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !964, file: !57, line: 288, column: 6)
!980 = !DILocation(line: 288, column: 7, scope: !979)
!981 = !DILocation(line: 288, column: 6, scope: !964)
!982 = !DILocation(line: 289, column: 3, scope: !979)
!983 = !DILocation(line: 289, column: 7, scope: !979)
!984 = !DILocation(line: 289, column: 13, scope: !979)
!985 = !DILocation(line: 291, column: 19, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !57, line: 291, column: 11)
!987 = !DILocation(line: 291, column: 12, scope: !986)
!988 = !DILocation(line: 291, column: 11, scope: !979)
!989 = !DILocation(line: 292, column: 3, scope: !986)
!990 = !DILocation(line: 292, column: 7, scope: !986)
!991 = !DILocation(line: 292, column: 13, scope: !986)
!992 = !DILocation(line: 295, column: 19, scope: !993)
!993 = distinct !DILexicalBlock(scope: !986, file: !57, line: 295, column: 11)
!994 = !DILocation(line: 295, column: 12, scope: !993)
!995 = !DILocation(line: 295, column: 11, scope: !986)
!996 = !DILocation(line: 296, column: 3, scope: !993)
!997 = !DILocation(line: 296, column: 7, scope: !993)
!998 = !DILocation(line: 296, column: 13, scope: !993)
!999 = !DILocation(line: 297, column: 19, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !57, line: 297, column: 11)
!1001 = !DILocation(line: 297, column: 12, scope: !1000)
!1002 = !DILocation(line: 297, column: 11, scope: !993)
!1003 = !DILocation(line: 298, column: 3, scope: !1000)
!1004 = !DILocation(line: 298, column: 7, scope: !1000)
!1005 = !DILocation(line: 298, column: 13, scope: !1000)
!1006 = !DILocation(line: 299, column: 19, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !57, line: 299, column: 11)
!1008 = !DILocation(line: 299, column: 12, scope: !1007)
!1009 = !DILocation(line: 299, column: 11, scope: !1000)
!1010 = !DILocation(line: 300, column: 3, scope: !1007)
!1011 = !DILocation(line: 300, column: 7, scope: !1007)
!1012 = !DILocation(line: 300, column: 13, scope: !1007)
!1013 = !DILocation(line: 301, column: 19, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !57, line: 301, column: 11)
!1015 = !DILocation(line: 301, column: 23, scope: !1014)
!1016 = !DILocation(line: 301, column: 12, scope: !1014)
!1017 = !DILocation(line: 301, column: 11, scope: !1007)
!1018 = !DILocation(line: 304, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !57, line: 304, column: 7)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !57, line: 302, column: 2)
!1021 = !DILocation(line: 304, column: 8, scope: !1019)
!1022 = !DILocation(line: 304, column: 7, scope: !1020)
!1023 = !DILocation(line: 305, column: 4, scope: !1019)
!1024 = !DILocation(line: 305, column: 8, scope: !1019)
!1025 = !DILocation(line: 305, column: 14, scope: !1019)
!1026 = !DILocation(line: 306, column: 15, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !57, line: 306, column: 7)
!1028 = !DILocation(line: 306, column: 8, scope: !1027)
!1029 = !DILocation(line: 306, column: 7, scope: !1020)
!1030 = !DILocation(line: 307, column: 4, scope: !1027)
!1031 = !DILocation(line: 307, column: 8, scope: !1027)
!1032 = !DILocation(line: 307, column: 14, scope: !1027)
!1033 = !DILocation(line: 308, column: 2, scope: !1020)
!1034 = !DILocation(line: 309, column: 19, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1014, file: !57, line: 309, column: 11)
!1036 = !DILocation(line: 309, column: 23, scope: !1035)
!1037 = !DILocation(line: 309, column: 12, scope: !1035)
!1038 = !DILocation(line: 309, column: 11, scope: !1014)
!1039 = !DILocation(line: 312, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !57, line: 312, column: 7)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !57, line: 310, column: 2)
!1042 = !DILocation(line: 312, column: 8, scope: !1040)
!1043 = !DILocation(line: 312, column: 7, scope: !1041)
!1044 = !DILocation(line: 313, column: 4, scope: !1040)
!1045 = !DILocation(line: 313, column: 8, scope: !1040)
!1046 = !DILocation(line: 313, column: 14, scope: !1040)
!1047 = !DILocation(line: 314, column: 15, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !57, line: 314, column: 7)
!1049 = !DILocation(line: 314, column: 8, scope: !1048)
!1050 = !DILocation(line: 314, column: 7, scope: !1041)
!1051 = !DILocation(line: 315, column: 4, scope: !1048)
!1052 = !DILocation(line: 315, column: 8, scope: !1048)
!1053 = !DILocation(line: 315, column: 14, scope: !1048)
!1054 = !DILocation(line: 316, column: 2, scope: !1041)
!1055 = !DILocation(line: 318, column: 91, scope: !1035)
!1056 = !DILocation(line: 318, column: 3, scope: !1035)
!1057 = !DILocation(line: 320, column: 1, scope: !964)
!1058 = distinct !DISubprogram(name: "forwarding_handler", scope: !57, file: !57, line: 323, type: !222, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1059 = !DILocalVariable(name: "strvec", arg: 1, scope: !1058, file: !57, line: 323, type: !224)
!1060 = !DILocation(line: 323, column: 30, scope: !1058)
!1061 = !DILocalVariable(name: "vs", scope: !1058, file: !57, line: 325, type: !465)
!1062 = !DILocation(line: 325, column: 20, scope: !1058)
!1063 = !DILocation(line: 325, column: 27, scope: !1058)
!1064 = !DILocation(line: 325, column: 39, scope: !1058)
!1065 = !DILocation(line: 325, column: 44, scope: !1058)
!1066 = !DILocation(line: 325, column: 50, scope: !1058)
!1067 = !DILocation(line: 325, column: 25, scope: !1058)
!1068 = !DILocalVariable(name: "str", scope: !1058, file: !57, line: 326, type: !50)
!1069 = !DILocation(line: 326, column: 8, scope: !1058)
!1070 = !DILocation(line: 326, column: 26, scope: !1058)
!1071 = !DILocation(line: 326, column: 14, scope: !1058)
!1072 = !DILocation(line: 328, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1058, file: !57, line: 328, column: 6)
!1074 = !DILocation(line: 328, column: 7, scope: !1073)
!1075 = !DILocation(line: 328, column: 6, scope: !1058)
!1076 = !DILocation(line: 329, column: 3, scope: !1073)
!1077 = !DILocation(line: 329, column: 7, scope: !1073)
!1078 = !DILocation(line: 329, column: 25, scope: !1073)
!1079 = !DILocation(line: 330, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !57, line: 330, column: 11)
!1081 = !DILocation(line: 330, column: 12, scope: !1080)
!1082 = !DILocation(line: 330, column: 11, scope: !1073)
!1083 = !DILocation(line: 331, column: 3, scope: !1080)
!1084 = !DILocation(line: 331, column: 7, scope: !1080)
!1085 = !DILocation(line: 331, column: 25, scope: !1080)
!1086 = !DILocation(line: 332, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1080, file: !57, line: 332, column: 11)
!1088 = !DILocation(line: 332, column: 12, scope: !1087)
!1089 = !DILocation(line: 332, column: 11, scope: !1080)
!1090 = !DILocation(line: 333, column: 3, scope: !1087)
!1091 = !DILocation(line: 333, column: 7, scope: !1087)
!1092 = !DILocation(line: 333, column: 25, scope: !1087)
!1093 = !DILocation(line: 335, column: 86, scope: !1087)
!1094 = !DILocation(line: 335, column: 3, scope: !1087)
!1095 = !DILocation(line: 336, column: 1, scope: !1058)
!1096 = distinct !DISubprogram(name: "pengine_handler", scope: !57, file: !57, line: 357, type: !222, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1097 = !DILocalVariable(name: "strvec", arg: 1, scope: !1096, file: !57, line: 357, type: !224)
!1098 = !DILocation(line: 357, column: 27, scope: !1096)
!1099 = !DILocalVariable(name: "vs", scope: !1096, file: !57, line: 359, type: !465)
!1100 = !DILocation(line: 359, column: 20, scope: !1096)
!1101 = !DILocation(line: 359, column: 27, scope: !1096)
!1102 = !DILocation(line: 359, column: 39, scope: !1096)
!1103 = !DILocation(line: 359, column: 44, scope: !1096)
!1104 = !DILocation(line: 359, column: 50, scope: !1096)
!1105 = !DILocation(line: 359, column: 25, scope: !1096)
!1106 = !DILocalVariable(name: "str", scope: !1096, file: !57, line: 360, type: !50)
!1107 = !DILocation(line: 360, column: 8, scope: !1096)
!1108 = !DILocation(line: 360, column: 26, scope: !1096)
!1109 = !DILocation(line: 360, column: 14, scope: !1096)
!1110 = !DILocalVariable(name: "size", scope: !1096, file: !57, line: 361, type: !137)
!1111 = !DILocation(line: 361, column: 9, scope: !1096)
!1112 = !DILocation(line: 363, column: 10, scope: !1096)
!1113 = !DILocation(line: 363, column: 14, scope: !1096)
!1114 = !DILocation(line: 363, column: 23, scope: !1096)
!1115 = !DILocation(line: 363, column: 28, scope: !1096)
!1116 = !DILocation(line: 363, column: 33, scope: !1096)
!1117 = !DILocation(line: 363, column: 2, scope: !1096)
!1118 = !DILocation(line: 364, column: 14, scope: !1096)
!1119 = !DILocation(line: 364, column: 19, scope: !1096)
!1120 = !DILocation(line: 364, column: 2, scope: !1096)
!1121 = !DILocation(line: 364, column: 6, scope: !1096)
!1122 = !DILocation(line: 364, column: 24, scope: !1096)
!1123 = !DILocation(line: 365, column: 1, scope: !1096)
!1124 = distinct !DISubprogram(name: "pto_handler", scope: !57, file: !57, line: 338, type: !222, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1125 = !DILocalVariable(name: "strvec", arg: 1, scope: !1124, file: !57, line: 338, type: !224)
!1126 = !DILocation(line: 338, column: 23, scope: !1124)
!1127 = !DILocalVariable(name: "vs", scope: !1124, file: !57, line: 340, type: !465)
!1128 = !DILocation(line: 340, column: 20, scope: !1124)
!1129 = !DILocation(line: 340, column: 27, scope: !1124)
!1130 = !DILocation(line: 340, column: 39, scope: !1124)
!1131 = !DILocation(line: 340, column: 44, scope: !1124)
!1132 = !DILocation(line: 340, column: 50, scope: !1124)
!1133 = !DILocation(line: 340, column: 25, scope: !1124)
!1134 = !DILocalVariable(name: "timeout", scope: !1124, file: !57, line: 341, type: !54)
!1135 = !DILocation(line: 341, column: 11, scope: !1124)
!1136 = !DILocation(line: 343, column: 8, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !57, line: 343, column: 6)
!1138 = !DILocation(line: 343, column: 17, scope: !1137)
!1139 = !DILocation(line: 343, column: 28, scope: !1137)
!1140 = !DILocation(line: 343, column: 6, scope: !1124)
!1141 = !DILocation(line: 344, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !57, line: 343, column: 33)
!1143 = !DILocation(line: 344, column: 7, scope: !1142)
!1144 = !DILocation(line: 344, column: 27, scope: !1142)
!1145 = !DILocation(line: 345, column: 3, scope: !1142)
!1146 = !DILocation(line: 348, column: 28, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1124, file: !57, line: 348, column: 6)
!1148 = !DILocation(line: 348, column: 7, scope: !1147)
!1149 = !DILocation(line: 348, column: 6, scope: !1124)
!1150 = !DILocation(line: 349, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !57, line: 348, column: 71)
!1152 = !DILocation(line: 350, column: 3, scope: !1151)
!1153 = !DILocation(line: 353, column: 38, scope: !1124)
!1154 = !DILocation(line: 353, column: 2, scope: !1124)
!1155 = !DILocation(line: 353, column: 6, scope: !1124)
!1156 = !DILocation(line: 353, column: 26, scope: !1124)
!1157 = !DILocation(line: 354, column: 1, scope: !1124)
!1158 = !DILocation(line: 354, column: 1, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1124, file: !57, discriminator: 1)
!1160 = distinct !DISubprogram(name: "pgr_handler", scope: !57, file: !57, line: 368, type: !222, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1161 = !DILocalVariable(name: "strvec", arg: 1, scope: !1160, file: !57, line: 368, type: !224)
!1162 = !DILocation(line: 368, column: 23, scope: !1160)
!1163 = !DILocalVariable(name: "addr", scope: !1160, file: !57, line: 370, type: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !20, line: 31, size: 32, align: 32, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1164, file: !20, line: 33, baseType: !1167, size: 32, align: 32)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !20, line: 30, baseType: !52)
!1168 = !DILocation(line: 370, column: 17, scope: !1160)
!1169 = !DILocalVariable(name: "vs", scope: !1160, file: !57, line: 371, type: !465)
!1170 = !DILocation(line: 371, column: 20, scope: !1160)
!1171 = !DILocation(line: 371, column: 27, scope: !1160)
!1172 = !DILocation(line: 371, column: 39, scope: !1160)
!1173 = !DILocation(line: 371, column: 44, scope: !1160)
!1174 = !DILocation(line: 371, column: 50, scope: !1160)
!1175 = !DILocation(line: 371, column: 25, scope: !1160)
!1176 = !DILocalVariable(name: "af", scope: !1160, file: !57, line: 372, type: !527)
!1177 = !DILocation(line: 372, column: 11, scope: !1160)
!1178 = !DILocation(line: 372, column: 16, scope: !1160)
!1179 = !DILocation(line: 372, column: 20, scope: !1160)
!1180 = !DILocalVariable(name: "granularity", scope: !1160, file: !57, line: 373, type: !54)
!1181 = !DILocation(line: 373, column: 11, scope: !1160)
!1182 = !DILocation(line: 375, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1160, file: !57, line: 375, column: 6)
!1184 = !DILocation(line: 375, column: 9, scope: !1183)
!1185 = !DILocation(line: 375, column: 6, scope: !1160)
!1186 = !DILocation(line: 376, column: 27, scope: !1183)
!1187 = !DILocation(line: 376, column: 15, scope: !1183)
!1188 = !DILocation(line: 376, column: 8, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1183, file: !57, discriminator: 1)
!1190 = !DILocation(line: 376, column: 8, scope: !1183)
!1191 = !DILocation(line: 376, column: 6, scope: !1183)
!1192 = !DILocation(line: 376, column: 3, scope: !1183)
!1193 = !DILocation(line: 378, column: 6, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1160, file: !57, line: 378, column: 6)
!1195 = !DILocation(line: 378, column: 9, scope: !1194)
!1196 = !DILocation(line: 378, column: 6, scope: !1160)
!1197 = !DILocation(line: 379, column: 29, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !57, line: 379, column: 7)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !57, line: 378, column: 21)
!1200 = !DILocation(line: 379, column: 8, scope: !1198)
!1201 = !DILocation(line: 379, column: 7, scope: !1199)
!1202 = !DILocation(line: 380, column: 121, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !57, line: 379, column: 69)
!1204 = !DILocation(line: 380, column: 109, scope: !1203)
!1205 = !DILocation(line: 380, column: 4, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1203, file: !57, discriminator: 1)
!1207 = !DILocation(line: 381, column: 4, scope: !1203)
!1208 = !DILocation(line: 383, column: 33, scope: !1199)
!1209 = !DILocation(line: 383, column: 3, scope: !1199)
!1210 = !DILocation(line: 383, column: 7, scope: !1199)
!1211 = !DILocation(line: 383, column: 31, scope: !1199)
!1212 = !DILocation(line: 384, column: 2, scope: !1199)
!1213 = !DILocation(line: 385, column: 30, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !57, line: 385, column: 7)
!1215 = distinct !DILexicalBlock(scope: !1194, file: !57, line: 384, column: 9)
!1216 = !DILocation(line: 385, column: 18, scope: !1214)
!1217 = !DILocation(line: 385, column: 8, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1214, file: !57, discriminator: 1)
!1219 = !DILocation(line: 385, column: 8, scope: !1214)
!1220 = !DILocation(line: 385, column: 7, scope: !1215)
!1221 = !DILocation(line: 386, column: 121, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !57, line: 385, column: 50)
!1223 = !DILocation(line: 386, column: 109, scope: !1222)
!1224 = !DILocation(line: 386, column: 4, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1222, file: !57, discriminator: 1)
!1226 = !DILocation(line: 387, column: 4, scope: !1222)
!1227 = !DILocalVariable(name: "haddr", scope: !1215, file: !57, line: 391, type: !52)
!1228 = !DILocation(line: 391, column: 12, scope: !1215)
!1229 = !DILocation(line: 391, column: 31, scope: !1215)
!1230 = !DILocation(line: 391, column: 20, scope: !1215)
!1231 = !DILocation(line: 392, column: 3, scope: !1215)
!1232 = !DILocation(line: 392, column: 12, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1215, file: !57, discriminator: 1)
!1234 = !DILocation(line: 392, column: 18, scope: !1233)
!1235 = !DILocation(line: 392, column: 10, scope: !1233)
!1236 = !DILocation(line: 392, column: 3, scope: !1233)
!1237 = !DILocation(line: 393, column: 13, scope: !1215)
!1238 = !DILocation(line: 393, column: 19, scope: !1215)
!1239 = !DILocation(line: 393, column: 25, scope: !1215)
!1240 = !DILocation(line: 393, column: 10, scope: !1215)
!1241 = !DILocation(line: 392, column: 3, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1215, file: !57, discriminator: 2)
!1243 = distinct !{!1243, !1231}
!1244 = !DILocation(line: 394, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1215, file: !57, line: 394, column: 7)
!1246 = !DILocation(line: 394, column: 13, scope: !1245)
!1247 = !DILocation(line: 394, column: 7, scope: !1215)
!1248 = !DILocation(line: 395, column: 124, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !57, line: 394, column: 28)
!1250 = !DILocation(line: 395, column: 112, scope: !1249)
!1251 = !DILocation(line: 395, column: 4, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1249, file: !57, discriminator: 1)
!1253 = !DILocation(line: 396, column: 4, scope: !1249)
!1254 = !DILocation(line: 399, column: 38, scope: !1215)
!1255 = !DILocation(line: 399, column: 3, scope: !1215)
!1256 = !DILocation(line: 399, column: 7, scope: !1215)
!1257 = !DILocation(line: 399, column: 31, scope: !1215)
!1258 = !DILocation(line: 402, column: 6, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1160, file: !57, line: 402, column: 6)
!1260 = !DILocation(line: 402, column: 10, scope: !1259)
!1261 = !DILocation(line: 402, column: 13, scope: !1259)
!1262 = !DILocation(line: 402, column: 6, scope: !1160)
!1263 = !DILocation(line: 403, column: 12, scope: !1259)
!1264 = !DILocation(line: 403, column: 3, scope: !1259)
!1265 = !DILocation(line: 403, column: 7, scope: !1259)
!1266 = !DILocation(line: 403, column: 10, scope: !1259)
!1267 = !DILocation(line: 405, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1160, file: !57, line: 405, column: 6)
!1269 = !DILocation(line: 405, column: 11, scope: !1268)
!1270 = !DILocation(line: 405, column: 6, scope: !1160)
!1271 = !DILocation(line: 406, column: 3, scope: !1268)
!1272 = !DILocation(line: 406, column: 7, scope: !1268)
!1273 = !DILocation(line: 406, column: 27, scope: !1268)
!1274 = !DILocation(line: 407, column: 1, scope: !1160)
!1275 = distinct !DISubprogram(name: "proto_handler", scope: !57, file: !57, line: 409, type: !222, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1276 = !DILocalVariable(name: "strvec", arg: 1, scope: !1275, file: !57, line: 409, type: !224)
!1277 = !DILocation(line: 409, column: 25, scope: !1275)
!1278 = !DILocalVariable(name: "vs", scope: !1275, file: !57, line: 411, type: !465)
!1279 = !DILocation(line: 411, column: 20, scope: !1275)
!1280 = !DILocation(line: 411, column: 27, scope: !1275)
!1281 = !DILocation(line: 411, column: 39, scope: !1275)
!1282 = !DILocation(line: 411, column: 44, scope: !1275)
!1283 = !DILocation(line: 411, column: 50, scope: !1275)
!1284 = !DILocation(line: 411, column: 25, scope: !1275)
!1285 = !DILocalVariable(name: "str", scope: !1275, file: !57, line: 412, type: !50)
!1286 = !DILocation(line: 412, column: 8, scope: !1275)
!1287 = !DILocation(line: 412, column: 26, scope: !1275)
!1288 = !DILocation(line: 412, column: 14, scope: !1275)
!1289 = !DILocation(line: 414, column: 18, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1275, file: !57, line: 414, column: 6)
!1291 = !DILocation(line: 414, column: 7, scope: !1290)
!1292 = !DILocation(line: 414, column: 6, scope: !1275)
!1293 = !DILocation(line: 415, column: 3, scope: !1290)
!1294 = !DILocation(line: 415, column: 7, scope: !1290)
!1295 = !DILocation(line: 415, column: 20, scope: !1290)
!1296 = !DILocation(line: 416, column: 23, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !57, line: 416, column: 11)
!1298 = !DILocation(line: 416, column: 12, scope: !1297)
!1299 = !DILocation(line: 416, column: 11, scope: !1290)
!1300 = !DILocation(line: 417, column: 3, scope: !1297)
!1301 = !DILocation(line: 417, column: 7, scope: !1297)
!1302 = !DILocation(line: 417, column: 20, scope: !1297)
!1303 = !DILocation(line: 418, column: 23, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !57, line: 418, column: 11)
!1305 = !DILocation(line: 418, column: 12, scope: !1304)
!1306 = !DILocation(line: 418, column: 11, scope: !1297)
!1307 = !DILocation(line: 419, column: 3, scope: !1304)
!1308 = !DILocation(line: 419, column: 7, scope: !1304)
!1309 = !DILocation(line: 419, column: 20, scope: !1304)
!1310 = !DILocation(line: 421, column: 79, scope: !1304)
!1311 = !DILocation(line: 421, column: 3, scope: !1304)
!1312 = !DILocation(line: 422, column: 1, scope: !1275)
!1313 = distinct !DISubprogram(name: "hasuspend_handler", scope: !57, file: !57, line: 424, type: !222, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1314 = !DILocalVariable(name: "strvec", arg: 1, scope: !1313, file: !57, line: 424, type: !224)
!1315 = !DILocation(line: 424, column: 53, scope: !1313)
!1316 = !DILocalVariable(name: "vs", scope: !1313, file: !57, line: 426, type: !465)
!1317 = !DILocation(line: 426, column: 20, scope: !1313)
!1318 = !DILocation(line: 426, column: 27, scope: !1313)
!1319 = !DILocation(line: 426, column: 39, scope: !1313)
!1320 = !DILocation(line: 426, column: 44, scope: !1313)
!1321 = !DILocation(line: 426, column: 50, scope: !1313)
!1322 = !DILocation(line: 426, column: 25, scope: !1313)
!1323 = !DILocation(line: 427, column: 2, scope: !1313)
!1324 = !DILocation(line: 427, column: 6, scope: !1313)
!1325 = !DILocation(line: 427, column: 17, scope: !1313)
!1326 = !DILocation(line: 428, column: 1, scope: !1313)
!1327 = distinct !DISubprogram(name: "vs_smtp_alert_handler", scope: !57, file: !57, line: 431, type: !222, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1328 = !DILocalVariable(name: "strvec", arg: 1, scope: !1327, file: !57, line: 431, type: !224)
!1329 = !DILocation(line: 431, column: 33, scope: !1327)
!1330 = !DILocalVariable(name: "vs", scope: !1327, file: !57, line: 433, type: !465)
!1331 = !DILocation(line: 433, column: 20, scope: !1327)
!1332 = !DILocation(line: 433, column: 27, scope: !1327)
!1333 = !DILocation(line: 433, column: 39, scope: !1327)
!1334 = !DILocation(line: 433, column: 44, scope: !1327)
!1335 = !DILocation(line: 433, column: 50, scope: !1327)
!1336 = !DILocation(line: 433, column: 25, scope: !1327)
!1337 = !DILocalVariable(name: "res", scope: !1327, file: !57, line: 434, type: !92)
!1338 = !DILocation(line: 434, column: 6, scope: !1327)
!1339 = !DILocation(line: 436, column: 8, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1327, file: !57, line: 436, column: 6)
!1341 = !DILocation(line: 436, column: 17, scope: !1340)
!1342 = !DILocation(line: 436, column: 28, scope: !1340)
!1343 = !DILocation(line: 436, column: 6, scope: !1327)
!1344 = !DILocation(line: 437, column: 38, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !57, line: 436, column: 34)
!1346 = !DILocation(line: 437, column: 26, scope: !1345)
!1347 = !DILocation(line: 437, column: 9, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1345, file: !57, discriminator: 1)
!1349 = !DILocation(line: 437, column: 7, scope: !1345)
!1350 = !DILocation(line: 438, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !57, line: 438, column: 7)
!1352 = !DILocation(line: 438, column: 11, scope: !1351)
!1353 = !DILocation(line: 438, column: 7, scope: !1345)
!1354 = !DILocation(line: 439, column: 116, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !57, line: 438, column: 18)
!1356 = !DILocation(line: 439, column: 104, scope: !1355)
!1357 = !DILocation(line: 439, column: 4, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1355, file: !57, discriminator: 1)
!1359 = !DILocation(line: 440, column: 4, scope: !1355)
!1360 = !DILocation(line: 442, column: 2, scope: !1345)
!1361 = !DILocation(line: 443, column: 19, scope: !1327)
!1362 = !DILocation(line: 443, column: 2, scope: !1327)
!1363 = !DILocation(line: 443, column: 6, scope: !1327)
!1364 = !DILocation(line: 443, column: 17, scope: !1327)
!1365 = !DILocation(line: 444, column: 1, scope: !1327)
!1366 = !DILocation(line: 444, column: 1, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1327, file: !57, discriminator: 1)
!1368 = distinct !DISubprogram(name: "vs_virtualhost_handler", scope: !57, file: !57, line: 447, type: !222, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1369 = !DILocalVariable(name: "strvec", arg: 1, scope: !1368, file: !57, line: 447, type: !224)
!1370 = !DILocation(line: 447, column: 34, scope: !1368)
!1371 = !DILocalVariable(name: "vs", scope: !1368, file: !57, line: 449, type: !465)
!1372 = !DILocation(line: 449, column: 20, scope: !1368)
!1373 = !DILocation(line: 449, column: 27, scope: !1368)
!1374 = !DILocation(line: 449, column: 39, scope: !1368)
!1375 = !DILocation(line: 449, column: 44, scope: !1368)
!1376 = !DILocation(line: 449, column: 50, scope: !1368)
!1377 = !DILocation(line: 449, column: 25, scope: !1368)
!1378 = !DILocation(line: 450, column: 30, scope: !1368)
!1379 = !DILocation(line: 450, column: 20, scope: !1368)
!1380 = !DILocation(line: 450, column: 2, scope: !1368)
!1381 = !DILocation(line: 450, column: 6, scope: !1368)
!1382 = !DILocation(line: 450, column: 18, scope: !1368)
!1383 = !DILocation(line: 451, column: 1, scope: !1368)
!1384 = distinct !DISubprogram(name: "vs_alpha_handler", scope: !57, file: !57, line: 715, type: !222, isLocal: true, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1385 = !DILocalVariable(name: "strvec", arg: 1, scope: !1384, file: !57, line: 715, type: !224)
!1386 = !DILocation(line: 715, column: 52, scope: !1384)
!1387 = !DILocalVariable(name: "vs", scope: !1384, file: !57, line: 717, type: !465)
!1388 = !DILocation(line: 717, column: 20, scope: !1384)
!1389 = !DILocation(line: 717, column: 27, scope: !1384)
!1390 = !DILocation(line: 717, column: 39, scope: !1384)
!1391 = !DILocation(line: 717, column: 44, scope: !1384)
!1392 = !DILocation(line: 717, column: 50, scope: !1384)
!1393 = !DILocation(line: 717, column: 25, scope: !1384)
!1394 = !DILocation(line: 718, column: 2, scope: !1384)
!1395 = !DILocation(line: 718, column: 6, scope: !1384)
!1396 = !DILocation(line: 718, column: 12, scope: !1384)
!1397 = !DILocation(line: 719, column: 1, scope: !1384)
!1398 = distinct !DISubprogram(name: "omega_handler", scope: !57, file: !57, line: 721, type: !222, isLocal: true, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1399 = !DILocalVariable(name: "strvec", arg: 1, scope: !1398, file: !57, line: 721, type: !224)
!1400 = !DILocation(line: 721, column: 49, scope: !1398)
!1401 = !DILocalVariable(name: "vs", scope: !1398, file: !57, line: 723, type: !465)
!1402 = !DILocation(line: 723, column: 20, scope: !1398)
!1403 = !DILocation(line: 723, column: 27, scope: !1398)
!1404 = !DILocation(line: 723, column: 39, scope: !1398)
!1405 = !DILocation(line: 723, column: 44, scope: !1398)
!1406 = !DILocation(line: 723, column: 50, scope: !1398)
!1407 = !DILocation(line: 723, column: 25, scope: !1398)
!1408 = !DILocation(line: 724, column: 2, scope: !1398)
!1409 = !DILocation(line: 724, column: 6, scope: !1398)
!1410 = !DILocation(line: 724, column: 12, scope: !1398)
!1411 = !DILocation(line: 725, column: 1, scope: !1398)
!1412 = distinct !DISubprogram(name: "quorum_up_handler", scope: !57, file: !57, line: 727, type: !222, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1413 = !DILocalVariable(name: "strvec", arg: 1, scope: !1412, file: !57, line: 727, type: !224)
!1414 = !DILocation(line: 727, column: 29, scope: !1412)
!1415 = !DILocalVariable(name: "vs", scope: !1412, file: !57, line: 729, type: !465)
!1416 = !DILocation(line: 729, column: 20, scope: !1412)
!1417 = !DILocation(line: 729, column: 27, scope: !1412)
!1418 = !DILocation(line: 729, column: 39, scope: !1412)
!1419 = !DILocation(line: 729, column: 44, scope: !1412)
!1420 = !DILocation(line: 729, column: 50, scope: !1412)
!1421 = !DILocation(line: 729, column: 25, scope: !1412)
!1422 = !DILocation(line: 730, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1412, file: !57, line: 730, column: 6)
!1424 = !DILocation(line: 730, column: 10, scope: !1423)
!1425 = !DILocation(line: 730, column: 6, scope: !1412)
!1426 = !DILocation(line: 731, column: 102, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !57, line: 730, column: 28)
!1428 = !DILocation(line: 731, column: 106, scope: !1427)
!1429 = !DILocation(line: 731, column: 135, scope: !1427)
!1430 = !DILocation(line: 731, column: 123, scope: !1427)
!1431 = !DILocation(line: 731, column: 3, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1427, file: !57, discriminator: 1)
!1433 = !DILocation(line: 732, column: 3, scope: !1427)
!1434 = !DILocation(line: 734, column: 49, scope: !1412)
!1435 = !DILocation(line: 734, column: 25, scope: !1412)
!1436 = !DILocation(line: 734, column: 2, scope: !1412)
!1437 = !DILocation(line: 734, column: 6, scope: !1412)
!1438 = !DILocation(line: 734, column: 23, scope: !1412)
!1439 = !DILocation(line: 735, column: 1, scope: !1412)
!1440 = !DILocation(line: 735, column: 1, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1412, file: !57, discriminator: 1)
!1442 = distinct !DISubprogram(name: "quorum_down_handler", scope: !57, file: !57, line: 737, type: !222, isLocal: true, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1443 = !DILocalVariable(name: "strvec", arg: 1, scope: !1442, file: !57, line: 737, type: !224)
!1444 = !DILocation(line: 737, column: 31, scope: !1442)
!1445 = !DILocalVariable(name: "vs", scope: !1442, file: !57, line: 739, type: !465)
!1446 = !DILocation(line: 739, column: 20, scope: !1442)
!1447 = !DILocation(line: 739, column: 27, scope: !1442)
!1448 = !DILocation(line: 739, column: 39, scope: !1442)
!1449 = !DILocation(line: 739, column: 44, scope: !1442)
!1450 = !DILocation(line: 739, column: 50, scope: !1442)
!1451 = !DILocation(line: 739, column: 25, scope: !1442)
!1452 = !DILocation(line: 740, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1442, file: !57, line: 740, column: 6)
!1454 = !DILocation(line: 740, column: 10, scope: !1453)
!1455 = !DILocation(line: 740, column: 6, scope: !1442)
!1456 = !DILocation(line: 741, column: 104, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !57, line: 740, column: 30)
!1458 = !DILocation(line: 741, column: 108, scope: !1457)
!1459 = !DILocation(line: 741, column: 137, scope: !1457)
!1460 = !DILocation(line: 741, column: 125, scope: !1457)
!1461 = !DILocation(line: 741, column: 3, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1457, file: !57, discriminator: 1)
!1463 = !DILocation(line: 742, column: 3, scope: !1457)
!1464 = !DILocation(line: 744, column: 51, scope: !1442)
!1465 = !DILocation(line: 744, column: 27, scope: !1442)
!1466 = !DILocation(line: 744, column: 2, scope: !1442)
!1467 = !DILocation(line: 744, column: 6, scope: !1442)
!1468 = !DILocation(line: 744, column: 25, scope: !1442)
!1469 = !DILocation(line: 745, column: 1, scope: !1442)
!1470 = !DILocation(line: 745, column: 1, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1442, file: !57, discriminator: 1)
!1472 = distinct !DISubprogram(name: "quorum_handler", scope: !57, file: !57, line: 747, type: !222, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1473 = !DILocalVariable(name: "strvec", arg: 1, scope: !1472, file: !57, line: 747, type: !224)
!1474 = !DILocation(line: 747, column: 26, scope: !1472)
!1475 = !DILocalVariable(name: "vs", scope: !1472, file: !57, line: 749, type: !465)
!1476 = !DILocation(line: 749, column: 20, scope: !1472)
!1477 = !DILocation(line: 749, column: 27, scope: !1472)
!1478 = !DILocation(line: 749, column: 39, scope: !1472)
!1479 = !DILocation(line: 749, column: 44, scope: !1472)
!1480 = !DILocation(line: 749, column: 50, scope: !1472)
!1481 = !DILocation(line: 749, column: 25, scope: !1472)
!1482 = !DILocalVariable(name: "quorum", scope: !1472, file: !57, line: 750, type: !54)
!1483 = !DILocation(line: 750, column: 11, scope: !1472)
!1484 = !DILocation(line: 752, column: 28, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1472, file: !57, line: 752, column: 6)
!1486 = !DILocation(line: 752, column: 7, scope: !1485)
!1487 = !DILocation(line: 752, column: 6, scope: !1472)
!1488 = !DILocation(line: 753, column: 112, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !57, line: 752, column: 67)
!1490 = !DILocation(line: 753, column: 100, scope: !1489)
!1491 = !DILocation(line: 753, column: 3, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1489, file: !57, discriminator: 1)
!1493 = !DILocation(line: 754, column: 10, scope: !1489)
!1494 = !DILocation(line: 755, column: 2, scope: !1489)
!1495 = !DILocation(line: 757, column: 15, scope: !1472)
!1496 = !DILocation(line: 757, column: 2, scope: !1472)
!1497 = !DILocation(line: 757, column: 6, scope: !1472)
!1498 = !DILocation(line: 757, column: 13, scope: !1472)
!1499 = !DILocation(line: 758, column: 1, scope: !1472)
!1500 = distinct !DISubprogram(name: "hysteresis_handler", scope: !57, file: !57, line: 760, type: !222, isLocal: true, isDefinition: true, scopeLine: 761, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1501 = !DILocalVariable(name: "strvec", arg: 1, scope: !1500, file: !57, line: 760, type: !224)
!1502 = !DILocation(line: 760, column: 30, scope: !1500)
!1503 = !DILocalVariable(name: "vs", scope: !1500, file: !57, line: 762, type: !465)
!1504 = !DILocation(line: 762, column: 20, scope: !1500)
!1505 = !DILocation(line: 762, column: 27, scope: !1500)
!1506 = !DILocation(line: 762, column: 39, scope: !1500)
!1507 = !DILocation(line: 762, column: 44, scope: !1500)
!1508 = !DILocation(line: 762, column: 50, scope: !1500)
!1509 = !DILocation(line: 762, column: 25, scope: !1500)
!1510 = !DILocalVariable(name: "hysteresis", scope: !1500, file: !57, line: 763, type: !54)
!1511 = !DILocation(line: 763, column: 11, scope: !1500)
!1512 = !DILocation(line: 765, column: 28, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1500, file: !57, line: 765, column: 6)
!1514 = !DILocation(line: 765, column: 7, scope: !1513)
!1515 = !DILocation(line: 765, column: 6, scope: !1500)
!1516 = !DILocation(line: 766, column: 112, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !57, line: 765, column: 71)
!1518 = !DILocation(line: 766, column: 100, scope: !1517)
!1519 = !DILocation(line: 766, column: 3, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1517, file: !57, discriminator: 1)
!1521 = !DILocation(line: 767, column: 3, scope: !1517)
!1522 = !DILocation(line: 770, column: 19, scope: !1500)
!1523 = !DILocation(line: 770, column: 2, scope: !1500)
!1524 = !DILocation(line: 770, column: 6, scope: !1500)
!1525 = !DILocation(line: 770, column: 17, scope: !1500)
!1526 = !DILocation(line: 771, column: 1, scope: !1500)
!1527 = !DILocation(line: 771, column: 1, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1500, file: !57, discriminator: 1)
!1529 = distinct !DISubprogram(name: "vs_weight_handler", scope: !57, file: !57, line: 773, type: !222, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1530 = !DILocalVariable(name: "strvec", arg: 1, scope: !1529, file: !57, line: 773, type: !224)
!1531 = !DILocation(line: 773, column: 29, scope: !1529)
!1532 = !DILocalVariable(name: "vs", scope: !1529, file: !57, line: 775, type: !465)
!1533 = !DILocation(line: 775, column: 20, scope: !1529)
!1534 = !DILocation(line: 775, column: 27, scope: !1529)
!1535 = !DILocation(line: 775, column: 39, scope: !1529)
!1536 = !DILocation(line: 775, column: 44, scope: !1529)
!1537 = !DILocation(line: 775, column: 50, scope: !1529)
!1538 = !DILocation(line: 775, column: 25, scope: !1529)
!1539 = !DILocalVariable(name: "weight", scope: !1529, file: !57, line: 776, type: !54)
!1540 = !DILocation(line: 776, column: 11, scope: !1529)
!1541 = !DILocation(line: 778, column: 28, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1529, file: !57, line: 778, column: 6)
!1543 = !DILocation(line: 778, column: 7, scope: !1542)
!1544 = !DILocation(line: 778, column: 6, scope: !1529)
!1545 = !DILocation(line: 779, column: 118, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !57, line: 778, column: 64)
!1547 = !DILocation(line: 779, column: 106, scope: !1546)
!1548 = !DILocation(line: 779, column: 3, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1546, file: !57, discriminator: 1)
!1550 = !DILocation(line: 780, column: 3, scope: !1546)
!1551 = !DILocation(line: 782, column: 15, scope: !1529)
!1552 = !DILocation(line: 782, column: 2, scope: !1529)
!1553 = !DILocation(line: 782, column: 6, scope: !1529)
!1554 = !DILocation(line: 782, column: 13, scope: !1529)
!1555 = !DILocation(line: 783, column: 1, scope: !1529)
!1556 = !DILocation(line: 783, column: 1, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1529, file: !57, discriminator: 1)
!1558 = distinct !DISubprogram(name: "ssvr_handler", scope: !57, file: !57, line: 469, type: !222, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1559 = !DILocalVariable(name: "strvec", arg: 1, scope: !1558, file: !57, line: 469, type: !224)
!1560 = !DILocation(line: 469, column: 24, scope: !1558)
!1561 = !DILocation(line: 471, column: 25, scope: !1558)
!1562 = !DILocation(line: 471, column: 13, scope: !1558)
!1563 = !DILocation(line: 471, column: 49, scope: !1558)
!1564 = !DILocation(line: 471, column: 37, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1558, file: !57, discriminator: 1)
!1566 = !DILocation(line: 471, column: 2, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1558, file: !57, discriminator: 2)
!1568 = !DILocation(line: 472, column: 1, scope: !1558)
!1569 = distinct !DISubprogram(name: "ssvri_handler", scope: !57, file: !57, line: 474, type: !222, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1570 = !DILocalVariable(name: "strvec", arg: 1, scope: !1569, file: !57, line: 474, type: !224)
!1571 = !DILocation(line: 474, column: 49, scope: !1569)
!1572 = !DILocalVariable(name: "vs", scope: !1569, file: !57, line: 476, type: !465)
!1573 = !DILocation(line: 476, column: 20, scope: !1569)
!1574 = !DILocation(line: 476, column: 27, scope: !1569)
!1575 = !DILocation(line: 476, column: 39, scope: !1569)
!1576 = !DILocation(line: 476, column: 44, scope: !1569)
!1577 = !DILocation(line: 476, column: 50, scope: !1569)
!1578 = !DILocation(line: 476, column: 25, scope: !1569)
!1579 = !DILocation(line: 477, column: 6, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !57, line: 477, column: 6)
!1581 = !DILocation(line: 477, column: 10, scope: !1580)
!1582 = !DILocation(line: 477, column: 6, scope: !1569)
!1583 = !DILocation(line: 478, column: 3, scope: !1580)
!1584 = !DILocation(line: 478, column: 7, scope: !1580)
!1585 = !DILocation(line: 478, column: 14, scope: !1580)
!1586 = !DILocation(line: 478, column: 22, scope: !1580)
!1587 = !DILocation(line: 480, column: 3, scope: !1580)
!1588 = !DILocation(line: 481, column: 1, scope: !1569)
!1589 = distinct !DISubprogram(name: "ss_forwarding_handler", scope: !57, file: !57, line: 483, type: !222, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1590 = !DILocalVariable(name: "strvec", arg: 1, scope: !1589, file: !57, line: 483, type: !224)
!1591 = !DILocation(line: 483, column: 33, scope: !1589)
!1592 = !DILocalVariable(name: "vs", scope: !1589, file: !57, line: 485, type: !465)
!1593 = !DILocation(line: 485, column: 20, scope: !1589)
!1594 = !DILocation(line: 485, column: 27, scope: !1589)
!1595 = !DILocation(line: 485, column: 39, scope: !1589)
!1596 = !DILocation(line: 485, column: 44, scope: !1589)
!1597 = !DILocation(line: 485, column: 50, scope: !1589)
!1598 = !DILocation(line: 485, column: 25, scope: !1589)
!1599 = !DILocation(line: 487, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1589, file: !57, line: 487, column: 6)
!1601 = !DILocation(line: 487, column: 10, scope: !1600)
!1602 = !DILocation(line: 487, column: 6, scope: !1589)
!1603 = !DILocation(line: 488, column: 26, scope: !1600)
!1604 = !DILocation(line: 488, column: 30, scope: !1600)
!1605 = !DILocation(line: 488, column: 37, scope: !1600)
!1606 = !DILocation(line: 488, column: 3, scope: !1600)
!1607 = !DILocation(line: 490, column: 3, scope: !1600)
!1608 = !DILocation(line: 491, column: 1, scope: !1589)
!1609 = distinct !DISubprogram(name: "rs_handler", scope: !57, file: !57, line: 495, type: !222, isLocal: true, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1610 = !DILocalVariable(name: "strvec", arg: 1, scope: !1609, file: !57, line: 495, type: !224)
!1611 = !DILocation(line: 495, column: 22, scope: !1609)
!1612 = !DILocation(line: 497, column: 23, scope: !1609)
!1613 = !DILocation(line: 497, column: 11, scope: !1609)
!1614 = !DILocation(line: 497, column: 47, scope: !1609)
!1615 = !DILocation(line: 497, column: 35, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1609, file: !57, discriminator: 1)
!1617 = !DILocation(line: 497, column: 2, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1609, file: !57, discriminator: 2)
!1619 = !DILocation(line: 498, column: 1, scope: !1609)
!1620 = distinct !DISubprogram(name: "rs_weight_handler", scope: !57, file: !57, line: 530, type: !222, isLocal: true, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1621 = !DILocalVariable(name: "strvec", arg: 1, scope: !1620, file: !57, line: 530, type: !224)
!1622 = !DILocation(line: 530, column: 29, scope: !1620)
!1623 = !DILocalVariable(name: "vs", scope: !1620, file: !57, line: 532, type: !465)
!1624 = !DILocation(line: 532, column: 20, scope: !1620)
!1625 = !DILocation(line: 532, column: 27, scope: !1620)
!1626 = !DILocation(line: 532, column: 39, scope: !1620)
!1627 = !DILocation(line: 532, column: 44, scope: !1620)
!1628 = !DILocation(line: 532, column: 50, scope: !1620)
!1629 = !DILocation(line: 532, column: 25, scope: !1620)
!1630 = !DILocalVariable(name: "rs", scope: !1620, file: !57, line: 533, type: !485)
!1631 = !DILocation(line: 533, column: 17, scope: !1620)
!1632 = !DILocation(line: 533, column: 24, scope: !1620)
!1633 = !DILocation(line: 533, column: 28, scope: !1620)
!1634 = !DILocation(line: 533, column: 33, scope: !1620)
!1635 = !DILocation(line: 533, column: 39, scope: !1620)
!1636 = !DILocation(line: 533, column: 22, scope: !1620)
!1637 = !DILocalVariable(name: "weight", scope: !1620, file: !57, line: 534, type: !54)
!1638 = !DILocation(line: 534, column: 11, scope: !1620)
!1639 = !DILocation(line: 536, column: 28, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1620, file: !57, line: 536, column: 6)
!1641 = !DILocation(line: 536, column: 7, scope: !1640)
!1642 = !DILocation(line: 536, column: 6, scope: !1620)
!1643 = !DILocation(line: 537, column: 115, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !57, line: 536, column: 64)
!1645 = !DILocation(line: 537, column: 103, scope: !1644)
!1646 = !DILocation(line: 537, column: 3, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1644, file: !57, discriminator: 1)
!1648 = !DILocation(line: 538, column: 3, scope: !1644)
!1649 = !DILocation(line: 540, column: 15, scope: !1620)
!1650 = !DILocation(line: 540, column: 2, scope: !1620)
!1651 = !DILocation(line: 540, column: 6, scope: !1620)
!1652 = !DILocation(line: 540, column: 13, scope: !1620)
!1653 = !DILocation(line: 541, column: 16, scope: !1620)
!1654 = !DILocation(line: 541, column: 2, scope: !1620)
!1655 = !DILocation(line: 541, column: 6, scope: !1620)
!1656 = !DILocation(line: 541, column: 14, scope: !1620)
!1657 = !DILocation(line: 542, column: 1, scope: !1620)
!1658 = !DILocation(line: 542, column: 1, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1620, file: !57, discriminator: 1)
!1660 = distinct !DISubprogram(name: "rs_forwarding_handler", scope: !57, file: !57, line: 544, type: !222, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1661 = !DILocalVariable(name: "strvec", arg: 1, scope: !1660, file: !57, line: 544, type: !224)
!1662 = !DILocation(line: 544, column: 33, scope: !1660)
!1663 = !DILocalVariable(name: "vs", scope: !1660, file: !57, line: 546, type: !465)
!1664 = !DILocation(line: 546, column: 20, scope: !1660)
!1665 = !DILocation(line: 546, column: 27, scope: !1660)
!1666 = !DILocation(line: 546, column: 39, scope: !1660)
!1667 = !DILocation(line: 546, column: 44, scope: !1660)
!1668 = !DILocation(line: 546, column: 50, scope: !1660)
!1669 = !DILocation(line: 546, column: 25, scope: !1660)
!1670 = !DILocalVariable(name: "rs", scope: !1660, file: !57, line: 547, type: !485)
!1671 = !DILocation(line: 547, column: 17, scope: !1660)
!1672 = !DILocation(line: 547, column: 24, scope: !1660)
!1673 = !DILocation(line: 547, column: 28, scope: !1660)
!1674 = !DILocation(line: 547, column: 33, scope: !1660)
!1675 = !DILocation(line: 547, column: 39, scope: !1660)
!1676 = !DILocation(line: 547, column: 22, scope: !1660)
!1677 = !DILocation(line: 549, column: 25, scope: !1660)
!1678 = !DILocation(line: 549, column: 29, scope: !1660)
!1679 = !DILocation(line: 549, column: 2, scope: !1660)
!1680 = !DILocation(line: 550, column: 1, scope: !1660)
!1681 = distinct !DISubprogram(name: "uthreshold_handler", scope: !57, file: !57, line: 552, type: !222, isLocal: true, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1682 = !DILocalVariable(name: "strvec", arg: 1, scope: !1681, file: !57, line: 552, type: !224)
!1683 = !DILocation(line: 552, column: 30, scope: !1681)
!1684 = !DILocalVariable(name: "vs", scope: !1681, file: !57, line: 554, type: !465)
!1685 = !DILocation(line: 554, column: 20, scope: !1681)
!1686 = !DILocation(line: 554, column: 27, scope: !1681)
!1687 = !DILocation(line: 554, column: 39, scope: !1681)
!1688 = !DILocation(line: 554, column: 44, scope: !1681)
!1689 = !DILocation(line: 554, column: 50, scope: !1681)
!1690 = !DILocation(line: 554, column: 25, scope: !1681)
!1691 = !DILocalVariable(name: "rs", scope: !1681, file: !57, line: 555, type: !485)
!1692 = !DILocation(line: 555, column: 17, scope: !1681)
!1693 = !DILocation(line: 555, column: 24, scope: !1681)
!1694 = !DILocation(line: 555, column: 28, scope: !1681)
!1695 = !DILocation(line: 555, column: 33, scope: !1681)
!1696 = !DILocation(line: 555, column: 39, scope: !1681)
!1697 = !DILocation(line: 555, column: 22, scope: !1681)
!1698 = !DILocalVariable(name: "threshold", scope: !1681, file: !57, line: 556, type: !54)
!1699 = !DILocation(line: 556, column: 11, scope: !1681)
!1700 = !DILocation(line: 558, column: 28, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1681, file: !57, line: 558, column: 6)
!1702 = !DILocation(line: 558, column: 7, scope: !1701)
!1703 = !DILocation(line: 558, column: 6, scope: !1681)
!1704 = !DILocation(line: 559, column: 115, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !57, line: 558, column: 70)
!1706 = !DILocation(line: 559, column: 103, scope: !1705)
!1707 = !DILocation(line: 559, column: 3, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1705, file: !57, discriminator: 1)
!1709 = !DILocation(line: 560, column: 3, scope: !1705)
!1710 = !DILocation(line: 562, column: 20, scope: !1681)
!1711 = !DILocation(line: 562, column: 2, scope: !1681)
!1712 = !DILocation(line: 562, column: 6, scope: !1681)
!1713 = !DILocation(line: 562, column: 18, scope: !1681)
!1714 = !DILocation(line: 563, column: 1, scope: !1681)
!1715 = !DILocation(line: 563, column: 1, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1681, file: !57, discriminator: 1)
!1717 = distinct !DISubprogram(name: "lthreshold_handler", scope: !57, file: !57, line: 565, type: !222, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1718 = !DILocalVariable(name: "strvec", arg: 1, scope: !1717, file: !57, line: 565, type: !224)
!1719 = !DILocation(line: 565, column: 30, scope: !1717)
!1720 = !DILocalVariable(name: "vs", scope: !1717, file: !57, line: 567, type: !465)
!1721 = !DILocation(line: 567, column: 20, scope: !1717)
!1722 = !DILocation(line: 567, column: 27, scope: !1717)
!1723 = !DILocation(line: 567, column: 39, scope: !1717)
!1724 = !DILocation(line: 567, column: 44, scope: !1717)
!1725 = !DILocation(line: 567, column: 50, scope: !1717)
!1726 = !DILocation(line: 567, column: 25, scope: !1717)
!1727 = !DILocalVariable(name: "rs", scope: !1717, file: !57, line: 568, type: !485)
!1728 = !DILocation(line: 568, column: 17, scope: !1717)
!1729 = !DILocation(line: 568, column: 24, scope: !1717)
!1730 = !DILocation(line: 568, column: 28, scope: !1717)
!1731 = !DILocation(line: 568, column: 33, scope: !1717)
!1732 = !DILocation(line: 568, column: 39, scope: !1717)
!1733 = !DILocation(line: 568, column: 22, scope: !1717)
!1734 = !DILocalVariable(name: "threshold", scope: !1717, file: !57, line: 569, type: !54)
!1735 = !DILocation(line: 569, column: 11, scope: !1717)
!1736 = !DILocation(line: 571, column: 28, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !57, line: 571, column: 6)
!1738 = !DILocation(line: 571, column: 7, scope: !1737)
!1739 = !DILocation(line: 571, column: 6, scope: !1717)
!1740 = !DILocation(line: 572, column: 115, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !57, line: 571, column: 70)
!1742 = !DILocation(line: 572, column: 103, scope: !1741)
!1743 = !DILocation(line: 572, column: 3, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1741, file: !57, discriminator: 1)
!1745 = !DILocation(line: 573, column: 3, scope: !1741)
!1746 = !DILocation(line: 575, column: 20, scope: !1717)
!1747 = !DILocation(line: 575, column: 2, scope: !1717)
!1748 = !DILocation(line: 575, column: 6, scope: !1717)
!1749 = !DILocation(line: 575, column: 18, scope: !1717)
!1750 = !DILocation(line: 576, column: 1, scope: !1717)
!1751 = !DILocation(line: 576, column: 1, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1717, file: !57, discriminator: 1)
!1753 = distinct !DISubprogram(name: "rs_inhibit_handler", scope: !57, file: !57, line: 660, type: !222, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1754 = !DILocalVariable(name: "strvec", arg: 1, scope: !1753, file: !57, line: 660, type: !224)
!1755 = !DILocation(line: 660, column: 30, scope: !1753)
!1756 = !DILocalVariable(name: "vs", scope: !1753, file: !57, line: 662, type: !465)
!1757 = !DILocation(line: 662, column: 20, scope: !1753)
!1758 = !DILocation(line: 662, column: 27, scope: !1753)
!1759 = !DILocation(line: 662, column: 39, scope: !1753)
!1760 = !DILocation(line: 662, column: 44, scope: !1753)
!1761 = !DILocation(line: 662, column: 50, scope: !1753)
!1762 = !DILocation(line: 662, column: 25, scope: !1753)
!1763 = !DILocalVariable(name: "rs", scope: !1753, file: !57, line: 663, type: !485)
!1764 = !DILocation(line: 663, column: 17, scope: !1753)
!1765 = !DILocation(line: 663, column: 24, scope: !1753)
!1766 = !DILocation(line: 663, column: 28, scope: !1753)
!1767 = !DILocation(line: 663, column: 33, scope: !1753)
!1768 = !DILocation(line: 663, column: 39, scope: !1753)
!1769 = !DILocation(line: 663, column: 22, scope: !1753)
!1770 = !DILocalVariable(name: "res", scope: !1753, file: !57, line: 664, type: !92)
!1771 = !DILocation(line: 664, column: 6, scope: !1753)
!1772 = !DILocation(line: 666, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1753, file: !57, line: 666, column: 6)
!1774 = !DILocation(line: 666, column: 17, scope: !1773)
!1775 = !DILocation(line: 666, column: 28, scope: !1773)
!1776 = !DILocation(line: 666, column: 6, scope: !1753)
!1777 = !DILocation(line: 667, column: 38, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !57, line: 666, column: 34)
!1779 = !DILocation(line: 667, column: 26, scope: !1778)
!1780 = !DILocation(line: 667, column: 9, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1778, file: !57, discriminator: 1)
!1782 = !DILocation(line: 667, column: 7, scope: !1778)
!1783 = !DILocation(line: 668, column: 7, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !57, line: 668, column: 7)
!1785 = !DILocation(line: 668, column: 11, scope: !1784)
!1786 = !DILocation(line: 668, column: 7, scope: !1778)
!1787 = !DILocation(line: 669, column: 109, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !57, line: 668, column: 18)
!1789 = !DILocation(line: 669, column: 97, scope: !1788)
!1790 = !DILocation(line: 669, column: 4, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1788, file: !57, discriminator: 1)
!1792 = !DILocation(line: 670, column: 4, scope: !1788)
!1793 = !DILocation(line: 672, column: 2, scope: !1778)
!1794 = !DILocation(line: 673, column: 16, scope: !1753)
!1795 = !DILocation(line: 673, column: 2, scope: !1753)
!1796 = !DILocation(line: 673, column: 6, scope: !1753)
!1797 = !DILocation(line: 673, column: 14, scope: !1753)
!1798 = !DILocation(line: 674, column: 1, scope: !1753)
!1799 = !DILocation(line: 674, column: 1, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1753, file: !57, discriminator: 1)
!1801 = distinct !DISubprogram(name: "notify_up_handler", scope: !57, file: !57, line: 589, type: !222, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1802 = !DILocalVariable(name: "strvec", arg: 1, scope: !1801, file: !57, line: 589, type: !224)
!1803 = !DILocation(line: 589, column: 29, scope: !1801)
!1804 = !DILocalVariable(name: "vs", scope: !1801, file: !57, line: 591, type: !465)
!1805 = !DILocation(line: 591, column: 20, scope: !1801)
!1806 = !DILocation(line: 591, column: 27, scope: !1801)
!1807 = !DILocation(line: 591, column: 39, scope: !1801)
!1808 = !DILocation(line: 591, column: 44, scope: !1801)
!1809 = !DILocation(line: 591, column: 50, scope: !1801)
!1810 = !DILocation(line: 591, column: 25, scope: !1801)
!1811 = !DILocalVariable(name: "rs", scope: !1801, file: !57, line: 592, type: !485)
!1812 = !DILocation(line: 592, column: 17, scope: !1801)
!1813 = !DILocation(line: 592, column: 24, scope: !1801)
!1814 = !DILocation(line: 592, column: 28, scope: !1801)
!1815 = !DILocation(line: 592, column: 33, scope: !1801)
!1816 = !DILocation(line: 592, column: 39, scope: !1801)
!1817 = !DILocation(line: 592, column: 22, scope: !1801)
!1818 = !DILocation(line: 593, column: 6, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1801, file: !57, line: 593, column: 6)
!1820 = !DILocation(line: 593, column: 10, scope: !1819)
!1821 = !DILocation(line: 593, column: 6, scope: !1801)
!1822 = !DILocation(line: 594, column: 102, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !57, line: 593, column: 21)
!1824 = !DILocation(line: 594, column: 106, scope: !1823)
!1825 = !DILocation(line: 594, column: 135, scope: !1823)
!1826 = !DILocation(line: 594, column: 123, scope: !1823)
!1827 = !DILocation(line: 594, column: 3, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1823, file: !57, discriminator: 1)
!1829 = !DILocation(line: 595, column: 3, scope: !1823)
!1830 = !DILocation(line: 597, column: 42, scope: !1801)
!1831 = !DILocation(line: 597, column: 18, scope: !1801)
!1832 = !DILocation(line: 597, column: 2, scope: !1801)
!1833 = !DILocation(line: 597, column: 6, scope: !1801)
!1834 = !DILocation(line: 597, column: 16, scope: !1801)
!1835 = !DILocation(line: 598, column: 1, scope: !1801)
!1836 = !DILocation(line: 598, column: 1, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1801, file: !57, discriminator: 1)
!1838 = distinct !DISubprogram(name: "notify_down_handler", scope: !57, file: !57, line: 600, type: !222, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1839 = !DILocalVariable(name: "strvec", arg: 1, scope: !1838, file: !57, line: 600, type: !224)
!1840 = !DILocation(line: 600, column: 31, scope: !1838)
!1841 = !DILocalVariable(name: "vs", scope: !1838, file: !57, line: 602, type: !465)
!1842 = !DILocation(line: 602, column: 20, scope: !1838)
!1843 = !DILocation(line: 602, column: 27, scope: !1838)
!1844 = !DILocation(line: 602, column: 39, scope: !1838)
!1845 = !DILocation(line: 602, column: 44, scope: !1838)
!1846 = !DILocation(line: 602, column: 50, scope: !1838)
!1847 = !DILocation(line: 602, column: 25, scope: !1838)
!1848 = !DILocalVariable(name: "rs", scope: !1838, file: !57, line: 603, type: !485)
!1849 = !DILocation(line: 603, column: 17, scope: !1838)
!1850 = !DILocation(line: 603, column: 24, scope: !1838)
!1851 = !DILocation(line: 603, column: 28, scope: !1838)
!1852 = !DILocation(line: 603, column: 33, scope: !1838)
!1853 = !DILocation(line: 603, column: 39, scope: !1838)
!1854 = !DILocation(line: 603, column: 22, scope: !1838)
!1855 = !DILocation(line: 604, column: 6, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1838, file: !57, line: 604, column: 6)
!1857 = !DILocation(line: 604, column: 10, scope: !1856)
!1858 = !DILocation(line: 604, column: 6, scope: !1838)
!1859 = !DILocation(line: 605, column: 104, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !57, line: 604, column: 23)
!1861 = !DILocation(line: 605, column: 108, scope: !1860)
!1862 = !DILocation(line: 605, column: 137, scope: !1860)
!1863 = !DILocation(line: 605, column: 125, scope: !1860)
!1864 = !DILocation(line: 605, column: 3, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1860, file: !57, discriminator: 1)
!1866 = !DILocation(line: 606, column: 3, scope: !1860)
!1867 = !DILocation(line: 608, column: 44, scope: !1838)
!1868 = !DILocation(line: 608, column: 20, scope: !1838)
!1869 = !DILocation(line: 608, column: 2, scope: !1838)
!1870 = !DILocation(line: 608, column: 6, scope: !1838)
!1871 = !DILocation(line: 608, column: 18, scope: !1838)
!1872 = !DILocation(line: 609, column: 1, scope: !1838)
!1873 = !DILocation(line: 609, column: 1, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1838, file: !57, discriminator: 1)
!1875 = distinct !DISubprogram(name: "rs_alpha_handler", scope: !57, file: !57, line: 676, type: !222, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1876 = !DILocalVariable(name: "strvec", arg: 1, scope: !1875, file: !57, line: 676, type: !224)
!1877 = !DILocation(line: 676, column: 28, scope: !1875)
!1878 = !DILocalVariable(name: "vs", scope: !1875, file: !57, line: 678, type: !465)
!1879 = !DILocation(line: 678, column: 20, scope: !1875)
!1880 = !DILocation(line: 678, column: 27, scope: !1875)
!1881 = !DILocation(line: 678, column: 39, scope: !1875)
!1882 = !DILocation(line: 678, column: 44, scope: !1875)
!1883 = !DILocation(line: 678, column: 50, scope: !1875)
!1884 = !DILocation(line: 678, column: 25, scope: !1875)
!1885 = !DILocalVariable(name: "rs", scope: !1875, file: !57, line: 679, type: !485)
!1886 = !DILocation(line: 679, column: 17, scope: !1875)
!1887 = !DILocation(line: 679, column: 24, scope: !1875)
!1888 = !DILocation(line: 679, column: 28, scope: !1875)
!1889 = !DILocation(line: 679, column: 33, scope: !1875)
!1890 = !DILocation(line: 679, column: 39, scope: !1875)
!1891 = !DILocation(line: 679, column: 22, scope: !1875)
!1892 = !DILocalVariable(name: "res", scope: !1875, file: !57, line: 680, type: !92)
!1893 = !DILocation(line: 680, column: 6, scope: !1875)
!1894 = !DILocation(line: 682, column: 8, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1875, file: !57, line: 682, column: 6)
!1896 = !DILocation(line: 682, column: 17, scope: !1895)
!1897 = !DILocation(line: 682, column: 28, scope: !1895)
!1898 = !DILocation(line: 682, column: 6, scope: !1875)
!1899 = !DILocation(line: 683, column: 38, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !57, line: 682, column: 34)
!1901 = !DILocation(line: 683, column: 26, scope: !1900)
!1902 = !DILocation(line: 683, column: 9, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1900, file: !57, discriminator: 1)
!1904 = !DILocation(line: 683, column: 7, scope: !1900)
!1905 = !DILocation(line: 684, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1900, file: !57, line: 684, column: 7)
!1907 = !DILocation(line: 684, column: 11, scope: !1906)
!1908 = !DILocation(line: 684, column: 7, scope: !1900)
!1909 = !DILocation(line: 685, column: 96, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !57, line: 684, column: 18)
!1911 = !DILocation(line: 685, column: 84, scope: !1910)
!1912 = !DILocation(line: 685, column: 4, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1910, file: !57, discriminator: 1)
!1914 = !DILocation(line: 686, column: 4, scope: !1910)
!1915 = !DILocation(line: 688, column: 2, scope: !1900)
!1916 = !DILocation(line: 689, column: 14, scope: !1875)
!1917 = !DILocation(line: 689, column: 2, scope: !1875)
!1918 = !DILocation(line: 689, column: 6, scope: !1875)
!1919 = !DILocation(line: 689, column: 12, scope: !1875)
!1920 = !DILocation(line: 690, column: 1, scope: !1875)
!1921 = !DILocation(line: 690, column: 1, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1875, file: !57, discriminator: 1)
!1923 = distinct !DISubprogram(name: "rs_retry_handler", scope: !57, file: !57, line: 635, type: !222, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1924 = !DILocalVariable(name: "strvec", arg: 1, scope: !1923, file: !57, line: 635, type: !224)
!1925 = !DILocation(line: 635, column: 28, scope: !1923)
!1926 = !DILocalVariable(name: "vs", scope: !1923, file: !57, line: 637, type: !465)
!1927 = !DILocation(line: 637, column: 20, scope: !1923)
!1928 = !DILocation(line: 637, column: 27, scope: !1923)
!1929 = !DILocation(line: 637, column: 39, scope: !1923)
!1930 = !DILocation(line: 637, column: 44, scope: !1923)
!1931 = !DILocation(line: 637, column: 50, scope: !1923)
!1932 = !DILocation(line: 637, column: 25, scope: !1923)
!1933 = !DILocalVariable(name: "rs", scope: !1923, file: !57, line: 638, type: !485)
!1934 = !DILocation(line: 638, column: 17, scope: !1923)
!1935 = !DILocation(line: 638, column: 24, scope: !1923)
!1936 = !DILocation(line: 638, column: 28, scope: !1923)
!1937 = !DILocation(line: 638, column: 33, scope: !1923)
!1938 = !DILocation(line: 638, column: 39, scope: !1923)
!1939 = !DILocation(line: 638, column: 22, scope: !1923)
!1940 = !DILocalVariable(name: "retry", scope: !1923, file: !57, line: 639, type: !54)
!1941 = !DILocation(line: 639, column: 11, scope: !1923)
!1942 = !DILocation(line: 641, column: 28, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1923, file: !57, line: 641, column: 6)
!1944 = !DILocation(line: 641, column: 7, scope: !1943)
!1945 = !DILocation(line: 641, column: 6, scope: !1923)
!1946 = !DILocation(line: 642, column: 93, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !57, line: 641, column: 69)
!1948 = !DILocation(line: 642, column: 81, scope: !1947)
!1949 = !DILocation(line: 642, column: 3, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1947, file: !57, discriminator: 1)
!1951 = !DILocation(line: 643, column: 3, scope: !1947)
!1952 = !DILocation(line: 645, column: 24, scope: !1923)
!1953 = !DILocation(line: 645, column: 2, scope: !1923)
!1954 = !DILocation(line: 645, column: 6, scope: !1923)
!1955 = !DILocation(line: 645, column: 12, scope: !1923)
!1956 = !DILocation(line: 646, column: 1, scope: !1923)
!1957 = !DILocation(line: 646, column: 1, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1923, file: !57, discriminator: 1)
!1959 = distinct !DISubprogram(name: "rs_delay_before_retry_handler", scope: !57, file: !57, line: 623, type: !222, isLocal: true, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1960 = !DILocalVariable(name: "strvec", arg: 1, scope: !1959, file: !57, line: 623, type: !224)
!1961 = !DILocation(line: 623, column: 41, scope: !1959)
!1962 = !DILocalVariable(name: "vs", scope: !1959, file: !57, line: 625, type: !465)
!1963 = !DILocation(line: 625, column: 20, scope: !1959)
!1964 = !DILocation(line: 625, column: 27, scope: !1959)
!1965 = !DILocation(line: 625, column: 39, scope: !1959)
!1966 = !DILocation(line: 625, column: 44, scope: !1959)
!1967 = !DILocation(line: 625, column: 50, scope: !1959)
!1968 = !DILocation(line: 625, column: 25, scope: !1959)
!1969 = !DILocalVariable(name: "rs", scope: !1959, file: !57, line: 626, type: !485)
!1970 = !DILocation(line: 626, column: 17, scope: !1959)
!1971 = !DILocation(line: 626, column: 24, scope: !1959)
!1972 = !DILocation(line: 626, column: 28, scope: !1959)
!1973 = !DILocation(line: 626, column: 33, scope: !1959)
!1974 = !DILocation(line: 626, column: 39, scope: !1959)
!1975 = !DILocation(line: 626, column: 22, scope: !1959)
!1976 = !DILocalVariable(name: "delay", scope: !1959, file: !57, line: 627, type: !139)
!1977 = !DILocation(line: 627, column: 16, scope: !1959)
!1978 = !DILocation(line: 629, column: 17, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !57, line: 629, column: 6)
!1980 = !DILocation(line: 629, column: 6, scope: !1979)
!1981 = !DILocation(line: 629, column: 6, scope: !1959)
!1982 = !DILocation(line: 630, column: 28, scope: !1979)
!1983 = !DILocation(line: 630, column: 3, scope: !1979)
!1984 = !DILocation(line: 630, column: 7, scope: !1979)
!1985 = !DILocation(line: 630, column: 26, scope: !1979)
!1986 = !DILocation(line: 632, column: 123, scope: !1979)
!1987 = !DILocation(line: 632, column: 111, scope: !1979)
!1988 = !DILocation(line: 632, column: 3, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1979, file: !57, discriminator: 1)
!1990 = !DILocation(line: 633, column: 1, scope: !1959)
!1991 = distinct !DISubprogram(name: "rs_warmup_handler", scope: !57, file: !57, line: 648, type: !222, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!1992 = !DILocalVariable(name: "strvec", arg: 1, scope: !1991, file: !57, line: 648, type: !224)
!1993 = !DILocation(line: 648, column: 29, scope: !1991)
!1994 = !DILocalVariable(name: "vs", scope: !1991, file: !57, line: 650, type: !465)
!1995 = !DILocation(line: 650, column: 20, scope: !1991)
!1996 = !DILocation(line: 650, column: 27, scope: !1991)
!1997 = !DILocation(line: 650, column: 39, scope: !1991)
!1998 = !DILocation(line: 650, column: 44, scope: !1991)
!1999 = !DILocation(line: 650, column: 50, scope: !1991)
!2000 = !DILocation(line: 650, column: 25, scope: !1991)
!2001 = !DILocalVariable(name: "rs", scope: !1991, file: !57, line: 651, type: !485)
!2002 = !DILocation(line: 651, column: 17, scope: !1991)
!2003 = !DILocation(line: 651, column: 24, scope: !1991)
!2004 = !DILocation(line: 651, column: 28, scope: !1991)
!2005 = !DILocation(line: 651, column: 33, scope: !1991)
!2006 = !DILocation(line: 651, column: 39, scope: !1991)
!2007 = !DILocation(line: 651, column: 22, scope: !1991)
!2008 = !DILocalVariable(name: "delay", scope: !1991, file: !57, line: 652, type: !139)
!2009 = !DILocation(line: 652, column: 16, scope: !1991)
!2010 = !DILocation(line: 654, column: 17, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1991, file: !57, line: 654, column: 6)
!2012 = !DILocation(line: 654, column: 6, scope: !2011)
!2013 = !DILocation(line: 654, column: 6, scope: !1991)
!2014 = !DILocation(line: 655, column: 16, scope: !2011)
!2015 = !DILocation(line: 655, column: 3, scope: !2011)
!2016 = !DILocation(line: 655, column: 7, scope: !2011)
!2017 = !DILocation(line: 655, column: 14, scope: !2011)
!2018 = !DILocation(line: 657, column: 111, scope: !2011)
!2019 = !DILocation(line: 657, column: 99, scope: !2011)
!2020 = !DILocation(line: 657, column: 3, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2011, file: !57, discriminator: 1)
!2022 = !DILocation(line: 658, column: 1, scope: !1991)
!2023 = distinct !DISubprogram(name: "rs_delay_handler", scope: !57, file: !57, line: 611, type: !222, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2024 = !DILocalVariable(name: "strvec", arg: 1, scope: !2023, file: !57, line: 611, type: !224)
!2025 = !DILocation(line: 611, column: 28, scope: !2023)
!2026 = !DILocalVariable(name: "vs", scope: !2023, file: !57, line: 613, type: !465)
!2027 = !DILocation(line: 613, column: 20, scope: !2023)
!2028 = !DILocation(line: 613, column: 27, scope: !2023)
!2029 = !DILocation(line: 613, column: 39, scope: !2023)
!2030 = !DILocation(line: 613, column: 44, scope: !2023)
!2031 = !DILocation(line: 613, column: 50, scope: !2023)
!2032 = !DILocation(line: 613, column: 25, scope: !2023)
!2033 = !DILocalVariable(name: "rs", scope: !2023, file: !57, line: 614, type: !485)
!2034 = !DILocation(line: 614, column: 17, scope: !2023)
!2035 = !DILocation(line: 614, column: 24, scope: !2023)
!2036 = !DILocation(line: 614, column: 28, scope: !2023)
!2037 = !DILocation(line: 614, column: 33, scope: !2023)
!2038 = !DILocation(line: 614, column: 39, scope: !2023)
!2039 = !DILocation(line: 614, column: 22, scope: !2023)
!2040 = !DILocalVariable(name: "delay", scope: !2023, file: !57, line: 615, type: !139)
!2041 = !DILocation(line: 615, column: 16, scope: !2023)
!2042 = !DILocation(line: 617, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2023, file: !57, line: 617, column: 6)
!2044 = !DILocation(line: 617, column: 6, scope: !2043)
!2045 = !DILocation(line: 617, column: 6, scope: !2023)
!2046 = !DILocation(line: 618, column: 20, scope: !2043)
!2047 = !DILocation(line: 618, column: 3, scope: !2043)
!2048 = !DILocation(line: 618, column: 7, scope: !2043)
!2049 = !DILocation(line: 618, column: 18, scope: !2043)
!2050 = !DILocation(line: 620, column: 115, scope: !2043)
!2051 = !DILocation(line: 620, column: 103, scope: !2043)
!2052 = !DILocation(line: 620, column: 3, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2043, file: !57, discriminator: 1)
!2054 = !DILocation(line: 621, column: 1, scope: !2023)
!2055 = distinct !DISubprogram(name: "rs_smtp_alert_handler", scope: !57, file: !57, line: 692, type: !222, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2056 = !DILocalVariable(name: "strvec", arg: 1, scope: !2055, file: !57, line: 692, type: !224)
!2057 = !DILocation(line: 692, column: 33, scope: !2055)
!2058 = !DILocalVariable(name: "vs", scope: !2055, file: !57, line: 694, type: !465)
!2059 = !DILocation(line: 694, column: 20, scope: !2055)
!2060 = !DILocation(line: 694, column: 27, scope: !2055)
!2061 = !DILocation(line: 694, column: 39, scope: !2055)
!2062 = !DILocation(line: 694, column: 44, scope: !2055)
!2063 = !DILocation(line: 694, column: 50, scope: !2055)
!2064 = !DILocation(line: 694, column: 25, scope: !2055)
!2065 = !DILocalVariable(name: "rs", scope: !2055, file: !57, line: 695, type: !485)
!2066 = !DILocation(line: 695, column: 17, scope: !2055)
!2067 = !DILocation(line: 695, column: 24, scope: !2055)
!2068 = !DILocation(line: 695, column: 28, scope: !2055)
!2069 = !DILocation(line: 695, column: 33, scope: !2055)
!2070 = !DILocation(line: 695, column: 39, scope: !2055)
!2071 = !DILocation(line: 695, column: 22, scope: !2055)
!2072 = !DILocalVariable(name: "res", scope: !2055, file: !57, line: 696, type: !92)
!2073 = !DILocation(line: 696, column: 6, scope: !2055)
!2074 = !DILocation(line: 698, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2055, file: !57, line: 698, column: 6)
!2076 = !DILocation(line: 698, column: 17, scope: !2075)
!2077 = !DILocation(line: 698, column: 28, scope: !2075)
!2078 = !DILocation(line: 698, column: 6, scope: !2055)
!2079 = !DILocation(line: 699, column: 38, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !57, line: 698, column: 34)
!2081 = !DILocation(line: 699, column: 26, scope: !2080)
!2082 = !DILocation(line: 699, column: 9, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2080, file: !57, discriminator: 1)
!2084 = !DILocation(line: 699, column: 7, scope: !2080)
!2085 = !DILocation(line: 700, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !57, line: 700, column: 7)
!2087 = !DILocation(line: 700, column: 11, scope: !2086)
!2088 = !DILocation(line: 700, column: 7, scope: !2080)
!2089 = !DILocation(line: 701, column: 113, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !57, line: 700, column: 18)
!2091 = !DILocation(line: 701, column: 101, scope: !2090)
!2092 = !DILocation(line: 701, column: 4, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2090, file: !57, discriminator: 1)
!2094 = !DILocation(line: 702, column: 4, scope: !2090)
!2095 = !DILocation(line: 704, column: 2, scope: !2080)
!2096 = !DILocation(line: 705, column: 19, scope: !2055)
!2097 = !DILocation(line: 705, column: 2, scope: !2055)
!2098 = !DILocation(line: 705, column: 6, scope: !2055)
!2099 = !DILocation(line: 705, column: 17, scope: !2055)
!2100 = !DILocation(line: 706, column: 1, scope: !2055)
!2101 = !DILocation(line: 706, column: 1, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2055, file: !57, discriminator: 1)
!2103 = distinct !DISubprogram(name: "rs_virtualhost_handler", scope: !57, file: !57, line: 708, type: !222, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2104 = !DILocalVariable(name: "strvec", arg: 1, scope: !2103, file: !57, line: 708, type: !224)
!2105 = !DILocation(line: 708, column: 34, scope: !2103)
!2106 = !DILocalVariable(name: "vs", scope: !2103, file: !57, line: 710, type: !465)
!2107 = !DILocation(line: 710, column: 20, scope: !2103)
!2108 = !DILocation(line: 710, column: 27, scope: !2103)
!2109 = !DILocation(line: 710, column: 39, scope: !2103)
!2110 = !DILocation(line: 710, column: 44, scope: !2103)
!2111 = !DILocation(line: 710, column: 50, scope: !2103)
!2112 = !DILocation(line: 710, column: 25, scope: !2103)
!2113 = !DILocalVariable(name: "rs", scope: !2103, file: !57, line: 711, type: !485)
!2114 = !DILocation(line: 711, column: 17, scope: !2103)
!2115 = !DILocation(line: 711, column: 24, scope: !2103)
!2116 = !DILocation(line: 711, column: 28, scope: !2103)
!2117 = !DILocation(line: 711, column: 33, scope: !2103)
!2118 = !DILocation(line: 711, column: 39, scope: !2103)
!2119 = !DILocation(line: 711, column: 22, scope: !2103)
!2120 = !DILocation(line: 712, column: 30, scope: !2103)
!2121 = !DILocation(line: 712, column: 20, scope: !2103)
!2122 = !DILocation(line: 712, column: 2, scope: !2103)
!2123 = !DILocation(line: 712, column: 6, scope: !2103)
!2124 = !DILocation(line: 712, column: 18, scope: !2103)
!2125 = !DILocation(line: 713, column: 1, scope: !2103)
!2126 = distinct !DISubprogram(name: "rs_end_handler", scope: !57, file: !57, line: 500, type: !462, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2127 = !DILocalVariable(name: "vs", scope: !2126, file: !57, line: 502, type: !465)
!2128 = !DILocation(line: 502, column: 20, scope: !2126)
!2129 = !DILocalVariable(name: "rs", scope: !2126, file: !57, line: 503, type: !485)
!2130 = !DILocation(line: 503, column: 17, scope: !2126)
!2131 = !DILocation(line: 505, column: 8, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2126, file: !57, line: 505, column: 6)
!2133 = !DILocation(line: 505, column: 20, scope: !2132)
!2134 = !DILocation(line: 505, column: 24, scope: !2132)
!2135 = !DILocation(line: 505, column: 5, scope: !2132)
!2136 = !DILocation(line: 505, column: 10, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2132, file: !57, discriminator: 1)
!2138 = !DILocation(line: 505, column: 22, scope: !2137)
!2139 = !DILocation(line: 505, column: 27, scope: !2137)
!2140 = !DILocation(line: 505, column: 32, scope: !2137)
!2141 = !DILocation(line: 505, column: 5, scope: !2137)
!2142 = !DILocation(line: 505, column: 9, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2132, file: !57, discriminator: 2)
!2144 = !DILocation(line: 505, column: 21, scope: !2143)
!2145 = !DILocation(line: 505, column: 26, scope: !2143)
!2146 = !DILocation(line: 505, column: 31, scope: !2143)
!2147 = !DILocation(line: 505, column: 6, scope: !2143)
!2148 = !DILocation(line: 506, column: 3, scope: !2132)
!2149 = !DILocation(line: 508, column: 9, scope: !2126)
!2150 = !DILocation(line: 508, column: 21, scope: !2126)
!2151 = !DILocation(line: 508, column: 26, scope: !2126)
!2152 = !DILocation(line: 508, column: 32, scope: !2126)
!2153 = !DILocation(line: 508, column: 7, scope: !2126)
!2154 = !DILocation(line: 508, column: 5, scope: !2126)
!2155 = !DILocation(line: 510, column: 8, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2126, file: !57, line: 510, column: 6)
!2157 = !DILocation(line: 510, column: 12, scope: !2156)
!2158 = !DILocation(line: 510, column: 16, scope: !2156)
!2159 = !DILocation(line: 510, column: 5, scope: !2156)
!2160 = !DILocation(line: 510, column: 10, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2156, file: !57, discriminator: 1)
!2162 = !DILocation(line: 510, column: 14, scope: !2161)
!2163 = !DILocation(line: 510, column: 19, scope: !2161)
!2164 = !DILocation(line: 510, column: 24, scope: !2161)
!2165 = !DILocation(line: 510, column: 5, scope: !2161)
!2166 = !DILocation(line: 510, column: 9, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2156, file: !57, discriminator: 2)
!2168 = !DILocation(line: 510, column: 13, scope: !2167)
!2169 = !DILocation(line: 510, column: 18, scope: !2167)
!2170 = !DILocation(line: 510, column: 23, scope: !2167)
!2171 = !DILocation(line: 510, column: 6, scope: !2167)
!2172 = !DILocation(line: 511, column: 3, scope: !2156)
!2173 = !DILocation(line: 513, column: 9, scope: !2126)
!2174 = !DILocation(line: 513, column: 13, scope: !2126)
!2175 = !DILocation(line: 513, column: 18, scope: !2126)
!2176 = !DILocation(line: 513, column: 24, scope: !2126)
!2177 = !DILocation(line: 513, column: 7, scope: !2126)
!2178 = !DILocation(line: 513, column: 5, scope: !2126)
!2179 = !DILocation(line: 518, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2126, file: !57, line: 518, column: 6)
!2181 = !DILocation(line: 518, column: 10, scope: !2180)
!2182 = !DILocation(line: 518, column: 28, scope: !2180)
!2183 = !DILocation(line: 518, column: 6, scope: !2126)
!2184 = !DILocation(line: 521, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !57, line: 521, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !57, line: 520, column: 2)
!2187 = !DILocation(line: 521, column: 11, scope: !2185)
!2188 = !DILocation(line: 521, column: 14, scope: !2185)
!2189 = !DILocation(line: 521, column: 7, scope: !2186)
!2190 = !DILocation(line: 522, column: 13, scope: !2185)
!2191 = !DILocation(line: 522, column: 17, scope: !2185)
!2192 = !DILocation(line: 522, column: 22, scope: !2185)
!2193 = !DILocation(line: 522, column: 4, scope: !2185)
!2194 = !DILocation(line: 522, column: 8, scope: !2185)
!2195 = !DILocation(line: 522, column: 11, scope: !2185)
!2196 = !DILocation(line: 523, column: 12, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2185, file: !57, line: 523, column: 12)
!2198 = !DILocation(line: 523, column: 16, scope: !2197)
!2199 = !DILocation(line: 523, column: 22, scope: !2197)
!2200 = !DILocation(line: 523, column: 26, scope: !2197)
!2201 = !DILocation(line: 523, column: 31, scope: !2197)
!2202 = !DILocation(line: 523, column: 19, scope: !2197)
!2203 = !DILocation(line: 523, column: 12, scope: !2185)
!2204 = !DILocation(line: 524, column: 155, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2197, file: !57, line: 523, column: 42)
!2206 = !DILocation(line: 524, column: 159, scope: !2205)
!2207 = !DILocation(line: 524, column: 137, scope: !2205)
!2208 = !DILocation(line: 524, column: 4, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2205, file: !57, discriminator: 1)
!2210 = !DILocation(line: 525, column: 22, scope: !2205)
!2211 = !DILocation(line: 525, column: 26, scope: !2205)
!2212 = !DILocation(line: 525, column: 30, scope: !2205)
!2213 = !DILocation(line: 525, column: 34, scope: !2205)
!2214 = !DILocation(line: 525, column: 38, scope: !2205)
!2215 = !DILocation(line: 525, column: 4, scope: !2205)
!2216 = !DILocation(line: 526, column: 3, scope: !2205)
!2217 = !DILocation(line: 527, column: 2, scope: !2186)
!2218 = !DILocation(line: 528, column: 1, scope: !2126)
!2219 = distinct !DISubprogram(name: "check_init_keywords", scope: !57, file: !57, line: 869, type: !2220, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!224}
!2222 = !DILocation(line: 872, column: 23, scope: !2219)
!2223 = !DILocation(line: 872, column: 2, scope: !2219)
!2224 = !DILocation(line: 874, column: 2, scope: !2219)
!2225 = !DILocation(line: 876, column: 2, scope: !2219)
!2226 = !DILocation(line: 881, column: 9, scope: !2219)
!2227 = !DILocation(line: 881, column: 2, scope: !2219)
!2228 = distinct !DISubprogram(name: "set_check_notify_script", scope: !57, file: !57, line: 584, type: !2229, isLocal: true, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!498, !224, !2231}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64, align: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!2233 = !DILocalVariable(name: "strvec", arg: 1, scope: !2228, file: !57, line: 584, type: !224)
!2234 = !DILocation(line: 584, column: 59, scope: !2228)
!2235 = !DILocalVariable(name: "type", arg: 2, scope: !2228, file: !57, line: 584, type: !2231)
!2236 = !DILocation(line: 584, column: 79, scope: !2228)
!2237 = !DILocation(line: 586, column: 31, scope: !2228)
!2238 = !DILocation(line: 586, column: 9, scope: !2228)
!2239 = !DILocation(line: 586, column: 2, scope: !2228)
!2240 = distinct !DISubprogram(name: "svr_forwarding_handler", scope: !57, file: !57, line: 454, type: !2241, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !152)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !485, !224}
!2243 = !DILocalVariable(name: "rs", arg: 1, scope: !2240, file: !57, line: 454, type: !485)
!2244 = !DILocation(line: 454, column: 39, scope: !2240)
!2245 = !DILocalVariable(name: "strvec", arg: 2, scope: !2240, file: !57, line: 454, type: !224)
!2246 = !DILocation(line: 454, column: 53, scope: !2240)
!2247 = !DILocalVariable(name: "str", scope: !2240, file: !57, line: 456, type: !50)
!2248 = !DILocation(line: 456, column: 8, scope: !2240)
!2249 = !DILocation(line: 456, column: 26, scope: !2240)
!2250 = !DILocation(line: 456, column: 14, scope: !2240)
!2251 = !DILocation(line: 458, column: 14, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2240, file: !57, line: 458, column: 6)
!2253 = !DILocation(line: 458, column: 7, scope: !2252)
!2254 = !DILocation(line: 458, column: 6, scope: !2240)
!2255 = !DILocation(line: 459, column: 3, scope: !2252)
!2256 = !DILocation(line: 459, column: 7, scope: !2252)
!2257 = !DILocation(line: 459, column: 25, scope: !2252)
!2258 = !DILocation(line: 460, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !57, line: 460, column: 11)
!2260 = !DILocation(line: 460, column: 12, scope: !2259)
!2261 = !DILocation(line: 460, column: 11, scope: !2252)
!2262 = !DILocation(line: 461, column: 3, scope: !2259)
!2263 = !DILocation(line: 461, column: 7, scope: !2259)
!2264 = !DILocation(line: 461, column: 25, scope: !2259)
!2265 = !DILocation(line: 462, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2259, file: !57, line: 462, column: 11)
!2267 = !DILocation(line: 462, column: 12, scope: !2266)
!2268 = !DILocation(line: 462, column: 11, scope: !2259)
!2269 = !DILocation(line: 463, column: 3, scope: !2266)
!2270 = !DILocation(line: 463, column: 7, scope: !2266)
!2271 = !DILocation(line: 463, column: 25, scope: !2266)
!2272 = !DILocation(line: 465, column: 102, scope: !2266)
!2273 = !DILocation(line: 465, column: 3, scope: !2266)
!2274 = !DILocation(line: 466, column: 1, scope: !2240)
