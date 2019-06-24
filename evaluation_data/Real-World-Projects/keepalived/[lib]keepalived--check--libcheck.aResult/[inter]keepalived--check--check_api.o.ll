; ModuleID = './[inter]keepalived--check--check_api.o.i'
source_filename = "./[inter]keepalived--check--check_api.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._check_data = type { i8, %struct._ssl_data*, %struct._list*, %struct._list* }
%struct._ssl_data = type { i32, i32, %struct.ssl_ctx_st*, %struct.ssl_method_st*, i8*, i8*, i8*, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.6, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
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
%struct.asn1_type_st = type { i32, %union.anon.4 }
%union.anon.4 = type { i8* }
%struct.AUTHORITY_KEYID_st = type opaque
%struct.ISSUING_DIST_POINT_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.5, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.5 = type { i8* }
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
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon.1 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.2, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.2 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.3 }
%union.anon.3 = type { void (i32, i32, i8*)* }
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
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, {}*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { %struct.rb_node }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct.in6_addr = type { %union.anon.7 }
%union.anon.7 = type { [4 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct._vector = type { i32, i32, i8** }
%struct._virtual_server_group_entry = type { i8, %union.anon.8, i8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.sockaddr_storage, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"     Dest = %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"     Bind to = %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"     Bind i/f = %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"     Mark = %u\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"     Timeout = %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"   Connection\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"   Alpha is %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"   Delay loop = %lu\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"   Retry count = %u\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"   Retry delay = %lu\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"   Warmup = %lu\00", align 1
@check_data = external global %struct._check_data*, align 8
@checkers_queue = common global %struct._list* null, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"Checker link local address %s requires a bind_if\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"connect_ip\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"connect_port\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"bindto\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"bind_port\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"bind_if\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"fwmark\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"delay_before_retry\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"warmup\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"delay_loop\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"------< Health checkers >------\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"%sctivating healthchecker for service %s for VS %s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"Dea\00", align 1
@master = external global %struct._thread_master*, align 8
@debug = external global i64, align 8
@.str.30 = private unnamed_addr constant [35 x i8] c"Netlink reflector reports IP %s %s\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@using_ha_suspend = external global i8, align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"%sing healthchecker for service %s for VS %s\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Activat\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Suspend\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.36 = private unnamed_addr constant [41 x i8] c"Invalid connect_ip address %s - ignoring\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"connect_ip address %s does not match address family of bindto - skipping\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"Invalid checker connect_port '%s'\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Invalid bindto address %s - ignoring\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"bindto address %s does not match address family of connect_ip - skipping\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Invalid checker bind_port '%s'\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Interface name %s is too long - ignoring\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"connect_timeout %s invalid - ignoring\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Invalid fwmark connection value '%s'\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Invalid retry connection value '%s'\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"Invalid delay_before_retry connection value '%s'\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"Invalid warmup connection value '%s'\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"delay_loop '%s' is invalid - ignoring\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Invalid alpha parameter %s\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c" %s -> %s\00", align 1

; Function Attrs: nounwind uwtable
define void @dump_connection_opts(%struct._IO_FILE*, i8*) #0 !dbg !429 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._conn_opts*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !431, metadata !432), !dbg !433
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !434, metadata !432), !dbg !435
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %5, metadata !436, metadata !432), !dbg !437
  %6 = load i8*, i8** %4, align 8, !dbg !438
  %7 = bitcast i8* %6 to %struct._conn_opts*, !dbg !438
  store %struct._conn_opts* %7, %struct._conn_opts** %5, align 8, !dbg !437
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !439
  %9 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !440
  %10 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %9, i32 0, i32 0, !dbg !441
  %11 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %10), !dbg !442
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %11), !dbg !443
  %12 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !445
  %13 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %12, i32 0, i32 1, !dbg !447
  %14 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0, !dbg !448
  %15 = load i16, i16* %14, align 8, !dbg !448
  %16 = icmp ne i16 %15, 0, !dbg !445
  br i1 %16, label %17, label %22, !dbg !449

; <label>:17:                                     ; preds = %2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !450
  %19 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !451
  %20 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %19, i32 0, i32 1, !dbg !452
  %21 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %20), !dbg !453
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %21), !dbg !454
  br label %22, !dbg !456

; <label>:22:                                     ; preds = %17, %2
  %23 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !457
  %24 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %23, i32 0, i32 2, !dbg !459
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0, !dbg !457
  %26 = load i8, i8* %25, align 8, !dbg !457
  %27 = icmp ne i8 %26, 0, !dbg !457
  br i1 %27, label %28, label %33, !dbg !460

; <label>:28:                                     ; preds = %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !461
  %30 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !462
  %31 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %30, i32 0, i32 2, !dbg !463
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i32 0, i32 0, !dbg !462
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* %32), !dbg !464
  br label %33, !dbg !464

; <label>:33:                                     ; preds = %28, %22
  %34 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !465
  %35 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %34, i32 0, i32 4, !dbg !467
  %36 = load i32, i32* %35, align 4, !dbg !467
  %37 = icmp ne i32 %36, 0, !dbg !468
  br i1 %37, label %38, label %43, !dbg !469

; <label>:38:                                     ; preds = %33
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !470
  %40 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !471
  %41 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %40, i32 0, i32 4, !dbg !472
  %42 = load i32, i32* %41, align 4, !dbg !472
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 %42), !dbg !473
  br label %43, !dbg !473

; <label>:43:                                     ; preds = %38, %33
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !474
  %45 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !475
  %46 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %45, i32 0, i32 3, !dbg !476
  %47 = load i32, i32* %46, align 8, !dbg !476
  %48 = udiv i32 %47, 1000000, !dbg !477
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %48), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #2

declare i8* @inet_sockaddrtopair(%struct.sockaddr_storage*) #2

; Function Attrs: nounwind uwtable
define void @dump_checker_opts(%struct._IO_FILE*, i8*) #0 !dbg !480 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._conn_opts*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !481, metadata !432), !dbg !482
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !483, metadata !432), !dbg !484
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !485, metadata !432), !dbg !486
  %7 = load i8*, i8** %4, align 8, !dbg !487
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !487
  store %struct._checker* %8, %struct._checker** %5, align 8, !dbg !486
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %6, metadata !488, metadata !432), !dbg !489
  %9 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !490
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 10, !dbg !491
  %11 = load %struct._conn_opts*, %struct._conn_opts** %10, align 8, !dbg !491
  store %struct._conn_opts* %11, %struct._conn_opts** %6, align 8, !dbg !489
  %12 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !492
  %13 = icmp ne %struct._conn_opts* %12, null, !dbg !492
  br i1 %13, label %14, label %19, !dbg !494

; <label>:14:                                     ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !495
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !497
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !498
  %17 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !499
  %18 = bitcast %struct._conn_opts* %17 to i8*, !dbg !499
  call void @dump_connection_opts(%struct._IO_FILE* %16, i8* %18), !dbg !500
  br label %19, !dbg !501

; <label>:19:                                     ; preds = %14, %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !502
  %21 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !503
  %22 = getelementptr inbounds %struct._checker, %struct._checker* %21, i32 0, i32 11, !dbg !504
  %23 = load i32, i32* %22, align 8, !dbg !504
  %24 = icmp ne i32 %23, 0, !dbg !503
  %25 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), !dbg !503
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %25), !dbg !505
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !506
  %27 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !507
  %28 = getelementptr inbounds %struct._checker, %struct._checker* %27, i32 0, i32 12, !dbg !508
  %29 = load i64, i64* %28, align 8, !dbg !508
  %30 = udiv i64 %29, 1000000, !dbg !509
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i64 %30), !dbg !510
  %31 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !511
  %32 = getelementptr inbounds %struct._checker, %struct._checker* %31, i32 0, i32 14, !dbg !513
  %33 = load i32, i32* %32, align 8, !dbg !513
  %34 = icmp ne i32 %33, 0, !dbg !511
  br i1 %34, label %35, label %45, !dbg !514

; <label>:35:                                     ; preds = %19
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !515
  %37 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !517
  %38 = getelementptr inbounds %struct._checker, %struct._checker* %37, i32 0, i32 14, !dbg !518
  %39 = load i32, i32* %38, align 8, !dbg !518
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 %39), !dbg !519
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !520
  %41 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !521
  %42 = getelementptr inbounds %struct._checker, %struct._checker* %41, i32 0, i32 15, !dbg !522
  %43 = load i64, i64* %42, align 8, !dbg !522
  %44 = udiv i64 %43, 1000000, !dbg !523
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i64 %44), !dbg !524
  br label %45, !dbg !525

; <label>:45:                                     ; preds = %35, %19
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !526
  %47 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !527
  %48 = getelementptr inbounds %struct._checker, %struct._checker* %47, i32 0, i32 13, !dbg !528
  %49 = load i64, i64* %48, align 8, !dbg !528
  %50 = udiv i64 %49, 1000000, !dbg !529
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i64 %50), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nounwind uwtable
define %struct._checker* @queue_checker(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, i8*, %struct._conn_opts*) #0 !dbg !532 {
  %7 = alloca void (i8*)*, align 8
  %8 = alloca void (%struct._IO_FILE*, i8*)*, align 8
  %9 = alloca i32 (%struct._thread*)*, align 8
  %10 = alloca i1 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._conn_opts*, align 8
  %13 = alloca %struct._virtual_server*, align 8
  %14 = alloca %struct._real_server*, align 8
  %15 = alloca %struct._checker*, align 8
  store void (i8*)* %0, void (i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %7, metadata !538, metadata !432), !dbg !539
  store void (%struct._IO_FILE*, i8*)* %1, void (%struct._IO_FILE*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata void (%struct._IO_FILE*, i8*)** %8, metadata !540, metadata !432), !dbg !541
  store i32 (%struct._thread*)* %2, i32 (%struct._thread*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %9, metadata !542, metadata !432), !dbg !543
  store i1 (i8*, i8*)* %3, i1 (i8*, i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata i1 (i8*, i8*)** %10, metadata !544, metadata !432), !dbg !545
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !546, metadata !432), !dbg !547
  store %struct._conn_opts* %5, %struct._conn_opts** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %12, metadata !548, metadata !432), !dbg !549
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %13, metadata !550, metadata !432), !dbg !551
  %16 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !552
  %17 = getelementptr inbounds %struct._check_data, %struct._check_data* %16, i32 0, i32 3, !dbg !553
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !553
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 1, !dbg !554
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !554
  %21 = getelementptr inbounds %struct._element, %struct._element* %20, i32 0, i32 2, !dbg !555
  %22 = load i8*, i8** %21, align 8, !dbg !555
  %23 = bitcast i8* %22 to %struct._virtual_server*, !dbg !556
  store %struct._virtual_server* %23, %struct._virtual_server** %13, align 8, !dbg !551
  call void @llvm.dbg.declare(metadata %struct._real_server** %14, metadata !557, metadata !432), !dbg !558
  %24 = load %struct._virtual_server*, %struct._virtual_server** %13, align 8, !dbg !559
  %25 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %24, i32 0, i32 17, !dbg !560
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !560
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 1, !dbg !561
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !561
  %29 = getelementptr inbounds %struct._element, %struct._element* %28, i32 0, i32 2, !dbg !562
  %30 = load i8*, i8** %29, align 8, !dbg !562
  %31 = bitcast i8* %30 to %struct._real_server*, !dbg !563
  store %struct._real_server* %31, %struct._real_server** %14, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata %struct._checker** %15, metadata !564, metadata !432), !dbg !565
  %32 = call i8* @zalloc(i64 128), !dbg !566
  %33 = bitcast i8* %32 to %struct._checker*, !dbg !567
  store %struct._checker* %33, %struct._checker** %15, align 8, !dbg !565
  %34 = load %struct._conn_opts*, %struct._conn_opts** %12, align 8, !dbg !568
  %35 = icmp ne %struct._conn_opts* %34, null, !dbg !568
  br i1 %35, label %36, label %45, !dbg !570

; <label>:36:                                     ; preds = %6
  %37 = load %struct._conn_opts*, %struct._conn_opts** %12, align 8, !dbg !571
  %38 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %37, i32 0, i32 0, !dbg !573
  %39 = load %struct._real_server*, %struct._real_server** %14, align 8, !dbg !574
  %40 = getelementptr inbounds %struct._real_server, %struct._real_server* %39, i32 0, i32 0, !dbg !575
  %41 = bitcast %struct.sockaddr_storage* %38 to i8*, !dbg !575
  %42 = bitcast %struct.sockaddr_storage* %40 to i8*, !dbg !575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 128, i32 8, i1 false), !dbg !575
  %43 = load %struct._conn_opts*, %struct._conn_opts** %12, align 8, !dbg !576
  %44 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %43, i32 0, i32 3, !dbg !577
  store i32 5000000, i32* %44, align 8, !dbg !578
  br label %45, !dbg !579

; <label>:45:                                     ; preds = %36, %6
  %46 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !580
  %47 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !581
  %48 = getelementptr inbounds %struct._checker, %struct._checker* %47, i32 0, i32 0, !dbg !582
  store void (i8*)* %46, void (i8*)** %48, align 8, !dbg !583
  %49 = load void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, i8*)** %8, align 8, !dbg !584
  %50 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !585
  %51 = getelementptr inbounds %struct._checker, %struct._checker* %50, i32 0, i32 1, !dbg !586
  store void (%struct._IO_FILE*, i8*)* %49, void (%struct._IO_FILE*, i8*)** %51, align 8, !dbg !587
  %52 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %9, align 8, !dbg !588
  %53 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !589
  %54 = getelementptr inbounds %struct._checker, %struct._checker* %53, i32 0, i32 2, !dbg !590
  store i32 (%struct._thread*)* %52, i32 (%struct._thread*)** %54, align 8, !dbg !591
  %55 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %10, align 8, !dbg !592
  %56 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !593
  %57 = getelementptr inbounds %struct._checker, %struct._checker* %56, i32 0, i32 3, !dbg !594
  store i1 (i8*, i8*)* %55, i1 (i8*, i8*)** %57, align 8, !dbg !595
  %58 = load %struct._virtual_server*, %struct._virtual_server** %13, align 8, !dbg !596
  %59 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !597
  %60 = getelementptr inbounds %struct._checker, %struct._checker* %59, i32 0, i32 4, !dbg !598
  store %struct._virtual_server* %58, %struct._virtual_server** %60, align 8, !dbg !599
  %61 = load %struct._real_server*, %struct._real_server** %14, align 8, !dbg !600
  %62 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !601
  %63 = getelementptr inbounds %struct._checker, %struct._checker* %62, i32 0, i32 5, !dbg !602
  store %struct._real_server* %61, %struct._real_server** %63, align 8, !dbg !603
  %64 = load i8*, i8** %11, align 8, !dbg !604
  %65 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !605
  %66 = getelementptr inbounds %struct._checker, %struct._checker* %65, i32 0, i32 6, !dbg !606
  store i8* %64, i8** %66, align 8, !dbg !607
  %67 = load %struct._conn_opts*, %struct._conn_opts** %12, align 8, !dbg !608
  %68 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !609
  %69 = getelementptr inbounds %struct._checker, %struct._checker* %68, i32 0, i32 10, !dbg !610
  store %struct._conn_opts* %67, %struct._conn_opts** %69, align 8, !dbg !611
  %70 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !612
  %71 = getelementptr inbounds %struct._checker, %struct._checker* %70, i32 0, i32 7, !dbg !613
  store i8 1, i8* %71, align 8, !dbg !614
  %72 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !615
  %73 = getelementptr inbounds %struct._checker, %struct._checker* %72, i32 0, i32 11, !dbg !616
  store i32 -1, i32* %73, align 8, !dbg !617
  %74 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !618
  %75 = getelementptr inbounds %struct._checker, %struct._checker* %74, i32 0, i32 12, !dbg !619
  store i64 -1, i64* %75, align 8, !dbg !620
  %76 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !621
  %77 = getelementptr inbounds %struct._checker, %struct._checker* %76, i32 0, i32 13, !dbg !622
  store i64 -1, i64* %77, align 8, !dbg !623
  %78 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !624
  %79 = getelementptr inbounds %struct._checker, %struct._checker* %78, i32 0, i32 14, !dbg !625
  store i32 -1, i32* %79, align 8, !dbg !626
  %80 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !627
  %81 = getelementptr inbounds %struct._checker, %struct._checker* %80, i32 0, i32 15, !dbg !628
  store i64 -1, i64* %81, align 8, !dbg !629
  %82 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !630
  %83 = getelementptr inbounds %struct._checker, %struct._checker* %82, i32 0, i32 16, !dbg !631
  store i32 0, i32* %83, align 8, !dbg !632
  %84 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !633
  %85 = getelementptr inbounds %struct._checker, %struct._checker* %84, i32 0, i32 8, !dbg !634
  store i8 1, i8* %85, align 1, !dbg !635
  %86 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !636
  %87 = getelementptr inbounds %struct._checker, %struct._checker* %86, i32 0, i32 18, !dbg !637
  store i64 1000000, i64* %87, align 8, !dbg !638
  %88 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !639
  %89 = getelementptr inbounds %struct._checker, %struct._checker* %88, i32 0, i32 17, !dbg !640
  store i32 1, i32* %89, align 4, !dbg !641
  %90 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !642
  %91 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !643
  %92 = bitcast %struct._checker* %91 to i8*, !dbg !643
  call void @list_add(%struct._list* %90, i8* %92), !dbg !644
  %93 = load %struct._checker*, %struct._checker** %15, align 8, !dbg !645
  ret %struct._checker* %93, !dbg !646
}

declare i8* @zalloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dequeue_new_checker() #0 !dbg !647 {
  %1 = alloca %struct._checker*, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %1, metadata !650, metadata !432), !dbg !651
  %2 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !652
  %3 = getelementptr inbounds %struct._list, %struct._list* %2, i32 0, i32 1, !dbg !653
  %4 = load %struct._element*, %struct._element** %3, align 8, !dbg !653
  %5 = getelementptr inbounds %struct._element, %struct._element* %4, i32 0, i32 2, !dbg !654
  %6 = load i8*, i8** %5, align 8, !dbg !654
  %7 = bitcast i8* %6 to %struct._checker*, !dbg !655
  store %struct._checker* %7, %struct._checker** %1, align 8, !dbg !651
  %8 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !656
  %9 = getelementptr inbounds %struct._checker, %struct._checker* %8, i32 0, i32 8, !dbg !658
  %10 = load i8, i8* %9, align 1, !dbg !658
  %11 = trunc i8 %10 to i1, !dbg !658
  br i1 %11, label %14, label %12, !dbg !659

; <label>:12:                                     ; preds = %0
  %13 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !660
  call void @set_checker_state(%struct._checker* %13, i1 zeroext true), !dbg !661
  br label %14, !dbg !661

; <label>:14:                                     ; preds = %12, %0
  %15 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !662
  %16 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !663
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !664
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !664
  call void @free_list_element(%struct._list* %15, %struct._element* %18), !dbg !665
  ret void, !dbg !666
}

declare void @set_checker_state(%struct._checker*, i1 zeroext) #2

declare void @free_list_element(%struct._list*, %struct._element*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @check_conn_opts(%struct._conn_opts*) #0 !dbg !667 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._conn_opts*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  store %struct._conn_opts* %0, %struct._conn_opts** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !670, metadata !432), !dbg !671
  %6 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !672
  %7 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %6, i32 0, i32 0, !dbg !674
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0, !dbg !675
  %9 = load i16, i16* %8, align 8, !dbg !675
  %10 = zext i16 %9 to i32, !dbg !672
  %11 = icmp eq i32 %10, 10, !dbg !676
  br i1 %11, label %12, label %39, !dbg !677

; <label>:12:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %4, metadata !678, metadata !432), !dbg !680
  %13 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !681
  %14 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %13, i32 0, i32 0, !dbg !682
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*, !dbg !683
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 3, !dbg !683
  store %struct.in6_addr* %16, %struct.in6_addr** %4, align 8, !dbg !680
  %17 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !684
  %18 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %17, i32 0, i32 0, !dbg !685
  %19 = bitcast %union.anon.7* %18 to [4 x i32]*, !dbg !686
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0, !dbg !684
  %21 = load i32, i32* %20, align 4, !dbg !684
  %22 = call i32 @htonl(i32 -4194304) #1, !dbg !687
  %23 = and i32 %21, %22, !dbg !688
  %24 = call i32 @htonl(i32 -25165824) #1, !dbg !689
  %25 = icmp eq i32 %23, %24, !dbg !691
  %26 = zext i1 %25 to i32, !dbg !691
  store i32 %26, i32* %5, align 4, !dbg !692
  %27 = load i32, i32* %5, align 4, !dbg !693
  %28 = icmp ne i32 %27, 0, !dbg !694
  br i1 %28, label %29, label %39, !dbg !695

; <label>:29:                                     ; preds = %12
  %30 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !696
  %31 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %30, i32 0, i32 2, !dbg !697
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %31, i64 0, i64 0, !dbg !696
  %33 = load i8, i8* %32, align 8, !dbg !696
  %34 = icmp ne i8 %33, 0, !dbg !696
  br i1 %34, label %39, label %35, !dbg !698

; <label>:35:                                     ; preds = %29
  %36 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !700
  %37 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %36, i32 0, i32 0, !dbg !702
  %38 = call i8* @inet_sockaddrtos(%struct.sockaddr_storage* %37), !dbg !703
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* %38), !dbg !704
  store i1 false, i1* %2, align 1, !dbg !706
  br label %40, !dbg !706

; <label>:39:                                     ; preds = %29, %12, %1
  store i1 true, i1* %2, align 1, !dbg !707
  br label %40, !dbg !707

; <label>:40:                                     ; preds = %39, %35
  %41 = load i1, i1* %2, align 1, !dbg !708
  ret i1 %41, !dbg !708
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #4

declare void @report_config_error(i32, i8*, ...) #2

declare i8* @inet_sockaddrtos(%struct.sockaddr_storage*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @compare_conn_opts(%struct._conn_opts*, %struct._conn_opts*) #0 !dbg !709 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._conn_opts*, align 8
  %5 = alloca %struct._conn_opts*, align 8
  store %struct._conn_opts* %0, %struct._conn_opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %4, metadata !712, metadata !432), !dbg !713
  store %struct._conn_opts* %1, %struct._conn_opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %5, metadata !714, metadata !432), !dbg !715
  %6 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !716
  %7 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !718
  %8 = icmp eq %struct._conn_opts* %6, %7, !dbg !719
  br i1 %8, label %9, label %10, !dbg !720

; <label>:9:                                      ; preds = %2
  store i1 true, i1* %3, align 1, !dbg !721
  br label %60, !dbg !721

; <label>:10:                                     ; preds = %2
  %11 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !722
  %12 = icmp ne %struct._conn_opts* %11, null, !dbg !722
  br i1 %12, label %13, label %16, !dbg !724

; <label>:13:                                     ; preds = %10
  %14 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !725
  %15 = icmp ne %struct._conn_opts* %14, null, !dbg !725
  br i1 %15, label %17, label %16, !dbg !727

; <label>:16:                                     ; preds = %13, %10
  store i1 false, i1* %3, align 1, !dbg !728
  br label %60, !dbg !728

; <label>:17:                                     ; preds = %13
  %18 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !729
  %19 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %18, i32 0, i32 0, !dbg !731
  %20 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !732
  %21 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %20, i32 0, i32 0, !dbg !733
  %22 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %19, %struct.sockaddr_storage* %21), !dbg !734
  br i1 %22, label %24, label %23, !dbg !735

; <label>:23:                                     ; preds = %17
  store i1 false, i1* %3, align 1, !dbg !736
  br label %60, !dbg !736

; <label>:24:                                     ; preds = %17
  %25 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !737
  %26 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %25, i32 0, i32 1, !dbg !739
  %27 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !740
  %28 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %27, i32 0, i32 1, !dbg !741
  %29 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %26, %struct.sockaddr_storage* %28), !dbg !742
  br i1 %29, label %31, label %30, !dbg !743

; <label>:30:                                     ; preds = %24
  store i1 false, i1* %3, align 1, !dbg !744
  br label %60, !dbg !744

; <label>:31:                                     ; preds = %24
  %32 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !745
  %33 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %32, i32 0, i32 2, !dbg !747
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %33, i32 0, i32 0, !dbg !745
  %35 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !748
  %36 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %35, i32 0, i32 2, !dbg !749
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %36, i32 0, i32 0, !dbg !748
  %38 = call i32 @strcmp(i8* %34, i8* %37) #8, !dbg !750
  %39 = icmp ne i32 %38, 0, !dbg !750
  br i1 %39, label %40, label %41, !dbg !751

; <label>:40:                                     ; preds = %31
  store i1 false, i1* %3, align 1, !dbg !752
  br label %60, !dbg !752

; <label>:41:                                     ; preds = %31
  %42 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !753
  %43 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %42, i32 0, i32 3, !dbg !755
  %44 = load i32, i32* %43, align 8, !dbg !755
  %45 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !756
  %46 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %45, i32 0, i32 3, !dbg !757
  %47 = load i32, i32* %46, align 8, !dbg !757
  %48 = icmp ne i32 %44, %47, !dbg !758
  br i1 %48, label %49, label %50, !dbg !759

; <label>:49:                                     ; preds = %41
  store i1 false, i1* %3, align 1, !dbg !760
  br label %60, !dbg !760

; <label>:50:                                     ; preds = %41
  %51 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !761
  %52 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %51, i32 0, i32 4, !dbg !763
  %53 = load i32, i32* %52, align 4, !dbg !763
  %54 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !764
  %55 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %54, i32 0, i32 4, !dbg !765
  %56 = load i32, i32* %55, align 4, !dbg !765
  %57 = icmp ne i32 %53, %56, !dbg !766
  br i1 %57, label %58, label %59, !dbg !767

; <label>:58:                                     ; preds = %50
  store i1 false, i1* %3, align 1, !dbg !768
  br label %60, !dbg !768

; <label>:59:                                     ; preds = %50
  store i1 true, i1* %3, align 1, !dbg !769
  br label %60, !dbg !769

; <label>:60:                                     ; preds = %59, %58, %49, %40, %30, %23, %16, %9
  %61 = load i1, i1* %3, align 1, !dbg !770
  ret i1 %61, !dbg !770
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @sockstorage_equal(%struct.sockaddr_storage*, %struct.sockaddr_storage*) #5 !dbg !771 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !777, metadata !432), !dbg !778
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %5, metadata !779, metadata !432), !dbg !780
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !781
  %11 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0, !dbg !783
  %12 = load i16, i16* %11, align 8, !dbg !783
  %13 = zext i16 %12 to i32, !dbg !781
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !784
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0, !dbg !785
  %16 = load i16, i16* %15, align 8, !dbg !785
  %17 = zext i16 %16 to i32, !dbg !784
  %18 = icmp ne i32 %13, %17, !dbg !786
  br i1 %18, label %19, label %20, !dbg !787

; <label>:19:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !788
  br label %91, !dbg !788

; <label>:20:                                     ; preds = %2
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !789
  %22 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %21, i32 0, i32 0, !dbg !791
  %23 = load i16, i16* %22, align 8, !dbg !791
  %24 = zext i16 %23 to i32, !dbg !789
  %25 = icmp eq i32 %24, 10, !dbg !792
  br i1 %25, label %26, label %49, !dbg !793

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %6, metadata !794, metadata !432), !dbg !796
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !797
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr_in6*, !dbg !798
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %6, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %7, metadata !799, metadata !432), !dbg !800
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !801
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in6*, !dbg !802
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %7, align 8, !dbg !800
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !803
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 3, !dbg !805
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8, !dbg !806
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 3, !dbg !807
  %35 = call i32 @__ip6_addr_equal(%struct.in6_addr* %32, %struct.in6_addr* %34), !dbg !808
  %36 = icmp ne i32 %35, 0, !dbg !808
  br i1 %36, label %37, label %48, !dbg !809

; <label>:37:                                     ; preds = %26
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !810
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1, !dbg !811
  %40 = load i16, i16* %39, align 2, !dbg !811
  %41 = zext i16 %40 to i32, !dbg !810
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8, !dbg !812
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1, !dbg !813
  %44 = load i16, i16* %43, align 2, !dbg !813
  %45 = zext i16 %44 to i32, !dbg !812
  %46 = icmp eq i32 %41, %45, !dbg !814
  br i1 %46, label %47, label %48, !dbg !815

; <label>:47:                                     ; preds = %37
  store i1 true, i1* %3, align 1, !dbg !817
  br label %91, !dbg !817

; <label>:48:                                     ; preds = %37, %26
  br label %90, !dbg !818

; <label>:49:                                     ; preds = %20
  %50 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !819
  %51 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %50, i32 0, i32 0, !dbg !822
  %52 = load i16, i16* %51, align 8, !dbg !822
  %53 = zext i16 %52 to i32, !dbg !819
  %54 = icmp eq i32 %53, 2, !dbg !823
  br i1 %54, label %55, label %81, !dbg !819

; <label>:55:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %8, metadata !824, metadata !432), !dbg !826
  %56 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !827
  %57 = bitcast %struct.sockaddr_storage* %56 to %struct.sockaddr_in*, !dbg !828
  store %struct.sockaddr_in* %57, %struct.sockaddr_in** %8, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %9, metadata !829, metadata !432), !dbg !830
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !831
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr_in*, !dbg !832
  store %struct.sockaddr_in* %59, %struct.sockaddr_in** %9, align 8, !dbg !830
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8, !dbg !833
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 2, !dbg !835
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0, !dbg !836
  %63 = load i32, i32* %62, align 4, !dbg !836
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8, !dbg !837
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 2, !dbg !838
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %65, i32 0, i32 0, !dbg !839
  %67 = load i32, i32* %66, align 4, !dbg !839
  %68 = icmp eq i32 %63, %67, !dbg !840
  br i1 %68, label %69, label %80, !dbg !841

; <label>:69:                                     ; preds = %55
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8, !dbg !842
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 1, !dbg !843
  %72 = load i16, i16* %71, align 2, !dbg !843
  %73 = zext i16 %72 to i32, !dbg !842
  %74 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8, !dbg !844
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %74, i32 0, i32 1, !dbg !845
  %76 = load i16, i16* %75, align 2, !dbg !845
  %77 = zext i16 %76 to i32, !dbg !844
  %78 = icmp eq i32 %73, %77, !dbg !846
  br i1 %78, label %79, label %80, !dbg !847

; <label>:79:                                     ; preds = %69
  store i1 true, i1* %3, align 1, !dbg !849
  br label %91, !dbg !849

; <label>:80:                                     ; preds = %69, %55
  br label %89, !dbg !850

; <label>:81:                                     ; preds = %49
  %82 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !851
  %83 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %82, i32 0, i32 0, !dbg !854
  %84 = load i16, i16* %83, align 8, !dbg !854
  %85 = zext i16 %84 to i32, !dbg !851
  %86 = icmp eq i32 %85, 0, !dbg !855
  br i1 %86, label %87, label %88, !dbg !851

; <label>:87:                                     ; preds = %81
  store i1 true, i1* %3, align 1, !dbg !856
  br label %91, !dbg !856

; <label>:88:                                     ; preds = %81
  br label %89

; <label>:89:                                     ; preds = %88, %80
  br label %90

; <label>:90:                                     ; preds = %89, %48
  store i1 false, i1* %3, align 1, !dbg !857
  br label %91, !dbg !857

; <label>:91:                                     ; preds = %90, %87, %79, %47, %19
  %92 = load i1, i1* %3, align 1, !dbg !858
  ret i1 %92, !dbg !858
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define void @checker_set_dst_port(%struct.sockaddr_storage*, i16 zeroext) #0 !dbg !859 {
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %3, metadata !863, metadata !432), !dbg !864
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !865, metadata !432), !dbg !866
  %7 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !867
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0, !dbg !869
  %9 = load i16, i16* %8, align 8, !dbg !869
  %10 = zext i16 %9 to i32, !dbg !867
  %11 = icmp eq i32 %10, 10, !dbg !870
  br i1 %11, label %12, label %18, !dbg !871

; <label>:12:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %5, metadata !872, metadata !432), !dbg !874
  %13 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !875
  %14 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in6*, !dbg !876
  store %struct.sockaddr_in6* %14, %struct.sockaddr_in6** %5, align 8, !dbg !874
  %15 = load i16, i16* %4, align 2, !dbg !877
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8, !dbg !878
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1, !dbg !879
  store i16 %15, i16* %17, align 2, !dbg !880
  br label %24, !dbg !881

; <label>:18:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %6, metadata !882, metadata !432), !dbg !884
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8, !dbg !885
  %20 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr_in*, !dbg !886
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %6, align 8, !dbg !884
  %21 = load i16, i16* %4, align 2, !dbg !887
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8, !dbg !888
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1, !dbg !889
  store i16 %21, i16* %23, align 2, !dbg !890
  br label %24

; <label>:24:                                     ; preds = %18, %12
  ret void, !dbg !891
}

; Function Attrs: nounwind uwtable
define void @install_checker_common_keywords(i1 zeroext) #0 !dbg !892 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !895, metadata !432), !dbg !896
  %4 = load i8, i8* %2, align 1, !dbg !897
  %5 = trunc i8 %4 to i1, !dbg !897
  br i1 %5, label %6, label %7, !dbg !899

; <label>:6:                                      ; preds = %1
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (%struct._vector*)* @co_ip_handler), !dbg !900
  call void @install_keyword(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void (%struct._vector*)* @co_port_handler), !dbg !902
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), void (%struct._vector*)* @co_srcip_handler), !dbg !903
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (%struct._vector*)* @co_srcport_handler), !dbg !904
  call void @install_keyword(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void (%struct._vector*)* @co_srcif_handler), !dbg !905
  call void @install_keyword(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (%struct._vector*)* @co_timeout_handler), !dbg !906
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), void (%struct._vector*)* @co_fwmark_handler), !dbg !907
  br label %7, !dbg !908

; <label>:7:                                      ; preds = %6, %1
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), void (%struct._vector*)* @retry_handler), !dbg !909
  call void @install_keyword(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), void (%struct._vector*)* @delay_before_retry_handler), !dbg !910
  call void @install_keyword(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), void (%struct._vector*)* @warmup_handler), !dbg !911
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), void (%struct._vector*)* @delay_handler), !dbg !912
  call void @install_keyword(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), void (%struct._vector*)* @alpha_handler), !dbg !913
  ret void, !dbg !914
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #2

; Function Attrs: nounwind uwtable
define internal void @co_ip_handler(%struct._vector*) #0 !dbg !915 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !927, metadata !432), !dbg !928
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !929, metadata !432), !dbg !930
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !931
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !932
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !932
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !933
  %8 = load i8*, i8** %7, align 8, !dbg !933
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !934
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 10, !dbg !935
  %11 = load %struct._conn_opts*, %struct._conn_opts** %10, align 8, !dbg !935
  store %struct._conn_opts* %11, %struct._conn_opts** %3, align 8, !dbg !930
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !936
  %13 = call i8* @strvec_slot(%struct._vector* %12, i64 1), !dbg !938
  %14 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !939
  %15 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %14, i32 0, i32 0, !dbg !940
  %16 = call i32 @inet_stosockaddr(i8* %13, i8* null, %struct.sockaddr_storage* %15), !dbg !941
  %17 = icmp ne i32 %16, 0, !dbg !943
  br i1 %17, label %18, label %21, !dbg !944

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !945
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !946
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0), i8* %20), !dbg !947
  br label %47, !dbg !948

; <label>:21:                                     ; preds = %1
  %22 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !949
  %23 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %22, i32 0, i32 1, !dbg !951
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %23, i32 0, i32 0, !dbg !952
  %25 = load i16, i16* %24, align 8, !dbg !952
  %26 = zext i16 %25 to i32, !dbg !949
  %27 = icmp ne i32 %26, 0, !dbg !953
  br i1 %27, label %28, label %46, !dbg !954

; <label>:28:                                     ; preds = %21
  %29 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !955
  %30 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %29, i32 0, i32 1, !dbg !956
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %30, i32 0, i32 0, !dbg !957
  %32 = load i16, i16* %31, align 8, !dbg !957
  %33 = zext i16 %32 to i32, !dbg !955
  %34 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !958
  %35 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %34, i32 0, i32 0, !dbg !959
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0, !dbg !960
  %37 = load i16, i16* %36, align 8, !dbg !960
  %38 = zext i16 %37 to i32, !dbg !958
  %39 = icmp ne i32 %33, %38, !dbg !961
  br i1 %39, label %40, label %46, !dbg !962

; <label>:40:                                     ; preds = %28
  %41 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !963
  %42 = call i8* @strvec_slot(%struct._vector* %41, i64 1), !dbg !965
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.37, i32 0, i32 0), i8* %42), !dbg !966
  %43 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !968
  %44 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %43, i32 0, i32 0, !dbg !969
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %44, i32 0, i32 0, !dbg !970
  store i16 0, i16* %45, align 8, !dbg !971
  br label %46, !dbg !972

; <label>:46:                                     ; preds = %40, %28, %21
  br label %47

; <label>:47:                                     ; preds = %46, %18
  ret void, !dbg !973
}

; Function Attrs: nounwind uwtable
define internal void @co_port_handler(%struct._vector*) #0 !dbg !974 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !975, metadata !432), !dbg !976
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !977, metadata !432), !dbg !978
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !979
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !980
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !980
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !981
  %9 = load i8*, i8** %8, align 8, !dbg !981
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !982
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !983
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !983
  store %struct._conn_opts* %12, %struct._conn_opts** %3, align 8, !dbg !978
  call void @llvm.dbg.declare(metadata i32* %4, metadata !984, metadata !432), !dbg !985
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !986
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 65535, i1 zeroext true), !dbg !988
  br i1 %14, label %18, label %15, !dbg !989

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !990
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !992
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0), i8* %17), !dbg !993
  br label %24, !dbg !995

; <label>:18:                                     ; preds = %1
  %19 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !996
  %20 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %19, i32 0, i32 0, !dbg !997
  %21 = load i32, i32* %4, align 4, !dbg !998
  %22 = trunc i32 %21 to i16, !dbg !998
  %23 = call zeroext i16 @htons(i16 zeroext %22) #1, !dbg !999
  call void @checker_set_dst_port(%struct.sockaddr_storage* %20, i16 zeroext %23), !dbg !1000
  br label %24, !dbg !1002

; <label>:24:                                     ; preds = %18, %15
  ret void, !dbg !1003
}

; Function Attrs: nounwind uwtable
define internal void @co_srcip_handler(%struct._vector*) #0 !dbg !1004 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1005, metadata !432), !dbg !1006
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !1007, metadata !432), !dbg !1008
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1009
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !1010
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !1010
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !1011
  %8 = load i8*, i8** %7, align 8, !dbg !1011
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !1012
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 10, !dbg !1013
  %11 = load %struct._conn_opts*, %struct._conn_opts** %10, align 8, !dbg !1013
  store %struct._conn_opts* %11, %struct._conn_opts** %3, align 8, !dbg !1008
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1014
  %13 = call i8* @strvec_slot(%struct._vector* %12, i64 1), !dbg !1016
  %14 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1017
  %15 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %14, i32 0, i32 1, !dbg !1018
  %16 = call i32 @inet_stosockaddr(i8* %13, i8* null, %struct.sockaddr_storage* %15), !dbg !1019
  %17 = icmp ne i32 %16, 0, !dbg !1021
  br i1 %17, label %18, label %21, !dbg !1022

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1023
  %20 = call i8* @strvec_slot(%struct._vector* %19, i64 1), !dbg !1024
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* %20), !dbg !1025
  br label %47, !dbg !1026

; <label>:21:                                     ; preds = %1
  %22 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1027
  %23 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %22, i32 0, i32 0, !dbg !1029
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %23, i32 0, i32 0, !dbg !1030
  %25 = load i16, i16* %24, align 8, !dbg !1030
  %26 = zext i16 %25 to i32, !dbg !1027
  %27 = icmp ne i32 %26, 0, !dbg !1031
  br i1 %27, label %28, label %46, !dbg !1032

; <label>:28:                                     ; preds = %21
  %29 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1033
  %30 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %29, i32 0, i32 0, !dbg !1034
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %30, i32 0, i32 0, !dbg !1035
  %32 = load i16, i16* %31, align 8, !dbg !1035
  %33 = zext i16 %32 to i32, !dbg !1033
  %34 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1036
  %35 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %34, i32 0, i32 1, !dbg !1037
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0, !dbg !1038
  %37 = load i16, i16* %36, align 8, !dbg !1038
  %38 = zext i16 %37 to i32, !dbg !1036
  %39 = icmp ne i32 %33, %38, !dbg !1039
  br i1 %39, label %40, label %46, !dbg !1040

; <label>:40:                                     ; preds = %28
  %41 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1041
  %42 = call i8* @strvec_slot(%struct._vector* %41, i64 1), !dbg !1043
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i32 0, i32 0), i8* %42), !dbg !1044
  %43 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1046
  %44 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %43, i32 0, i32 1, !dbg !1047
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %44, i32 0, i32 0, !dbg !1048
  store i16 0, i16* %45, align 8, !dbg !1049
  br label %46, !dbg !1050

; <label>:46:                                     ; preds = %40, %28, %21
  br label %47

; <label>:47:                                     ; preds = %46, %18
  ret void, !dbg !1051
}

; Function Attrs: nounwind uwtable
define internal void @co_srcport_handler(%struct._vector*) #0 !dbg !1052 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1053, metadata !432), !dbg !1054
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !1055, metadata !432), !dbg !1056
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1057
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1058
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1058
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1059
  %9 = load i8*, i8** %8, align 8, !dbg !1059
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1060
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !1061
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !1061
  store %struct._conn_opts* %12, %struct._conn_opts** %3, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1062, metadata !432), !dbg !1063
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1064
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 1, i32 65535, i1 zeroext true), !dbg !1066
  br i1 %14, label %18, label %15, !dbg !1067

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1068
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1070
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), i8* %17), !dbg !1071
  br label %24, !dbg !1073

; <label>:18:                                     ; preds = %1
  %19 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1074
  %20 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %19, i32 0, i32 1, !dbg !1075
  %21 = load i32, i32* %4, align 4, !dbg !1076
  %22 = trunc i32 %21 to i16, !dbg !1076
  %23 = call zeroext i16 @htons(i16 zeroext %22) #1, !dbg !1077
  call void @checker_set_dst_port(%struct.sockaddr_storage* %20, i16 zeroext %23), !dbg !1078
  br label %24, !dbg !1080

; <label>:24:                                     ; preds = %18, %15
  ret void, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal void @co_srcif_handler(%struct._vector*) #0 !dbg !1082 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1083, metadata !432), !dbg !1084
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !1085, metadata !432), !dbg !1086
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1087
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !1088
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !1088
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !1089
  %8 = load i8*, i8** %7, align 8, !dbg !1089
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !1090
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 10, !dbg !1091
  %11 = load %struct._conn_opts*, %struct._conn_opts** %10, align 8, !dbg !1091
  store %struct._conn_opts* %11, %struct._conn_opts** %3, align 8, !dbg !1086
  %12 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1092
  %13 = call i8* @strvec_slot(%struct._vector* %12, i64 1), !dbg !1094
  %14 = call i64 @strlen(i8* %13) #8, !dbg !1095
  %15 = icmp ugt i64 %14, 15, !dbg !1097
  br i1 %15, label %16, label %19, !dbg !1098

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1099
  %18 = call i8* @strvec_slot(%struct._vector* %17, i64 1), !dbg !1101
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i8* %18), !dbg !1102
  br label %26, !dbg !1104

; <label>:19:                                     ; preds = %1
  %20 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1105
  %21 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %20, i32 0, i32 2, !dbg !1106
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i32 0, i32 0, !dbg !1105
  %23 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1107
  %24 = call i8* @strvec_slot(%struct._vector* %23, i64 1), !dbg !1108
  %25 = call i8* @strcpy(i8* %22, i8* %24) #9, !dbg !1109
  br label %26, !dbg !1111

; <label>:26:                                     ; preds = %19, %16
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define internal void @co_timeout_handler(%struct._vector*) #0 !dbg !1113 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  %4 = alloca i64, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1114, metadata !432), !dbg !1115
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !1116, metadata !432), !dbg !1117
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1118
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1119
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1119
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1120
  %9 = load i8*, i8** %8, align 8, !dbg !1120
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1121
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !1122
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !1122
  store %struct._conn_opts* %12, %struct._conn_opts** %3, align 8, !dbg !1117
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1123, metadata !432), !dbg !1124
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1125
  %14 = call zeroext i1 @read_timer(%struct._vector* %13, i64 1, i64* %4, i64 1, i64 4294, i1 zeroext true), !dbg !1127
  br i1 %14, label %18, label %15, !dbg !1128

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1129
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1131
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %17), !dbg !1132
  br label %23, !dbg !1134

; <label>:18:                                     ; preds = %1
  %19 = load i64, i64* %4, align 8, !dbg !1135
  %20 = trunc i64 %19 to i32, !dbg !1135
  %21 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1136
  %22 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %21, i32 0, i32 3, !dbg !1137
  store i32 %20, i32* %22, align 8, !dbg !1138
  br label %23, !dbg !1139

; <label>:23:                                     ; preds = %18, %15
  ret void, !dbg !1140
}

; Function Attrs: nounwind uwtable
define internal void @co_fwmark_handler(%struct._vector*) #0 !dbg !1142 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._conn_opts*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1143, metadata !432), !dbg !1144
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %3, metadata !1145, metadata !432), !dbg !1146
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1147
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1148
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1148
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1149
  %9 = load i8*, i8** %8, align 8, !dbg !1149
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1150
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !1151
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !1151
  store %struct._conn_opts* %12, %struct._conn_opts** %3, align 8, !dbg !1146
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1152, metadata !432), !dbg !1153
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1154
  %14 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %13, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !1156
  br i1 %14, label %18, label %15, !dbg !1157

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1158
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1160
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0), i8* %17), !dbg !1161
  br label %22, !dbg !1163

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %4, align 4, !dbg !1164
  %20 = load %struct._conn_opts*, %struct._conn_opts** %3, align 8, !dbg !1165
  %21 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %20, i32 0, i32 4, !dbg !1166
  store i32 %19, i32* %21, align 4, !dbg !1167
  br label %22, !dbg !1168

; <label>:22:                                     ; preds = %18, %15
  ret void, !dbg !1169
}

; Function Attrs: nounwind uwtable
define internal void @retry_handler(%struct._vector*) #0 !dbg !1171 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1172, metadata !432), !dbg !1173
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1174, metadata !432), !dbg !1175
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1176
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1177
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1177
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1178
  %9 = load i8*, i8** %8, align 8, !dbg !1178
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1179
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1180, metadata !432), !dbg !1181
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1182
  %12 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %11, i64 1, i32* %4, i32 0, i32 -1, i1 zeroext true), !dbg !1184
  br i1 %12, label %16, label %13, !dbg !1185

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1186
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1188
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8* %15), !dbg !1189
  br label %20, !dbg !1191

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %4, align 4, !dbg !1192
  %18 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1193
  %19 = getelementptr inbounds %struct._checker, %struct._checker* %18, i32 0, i32 14, !dbg !1194
  store i32 %17, i32* %19, align 8, !dbg !1195
  br label %20, !dbg !1196

; <label>:20:                                     ; preds = %16, %13
  ret void, !dbg !1197
}

; Function Attrs: nounwind uwtable
define internal void @delay_before_retry_handler(%struct._vector*) #0 !dbg !1199 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1200, metadata !432), !dbg !1201
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1202, metadata !432), !dbg !1203
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1204
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1205
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1205
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1206
  %9 = load i8*, i8** %8, align 8, !dbg !1206
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1207
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1208, metadata !432), !dbg !1209
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1210
  %12 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %11, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !1212
  br i1 %12, label %16, label %13, !dbg !1213

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1214
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1216
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.46, i32 0, i32 0), i8* %15), !dbg !1217
  br label %22, !dbg !1219

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %4, align 4, !dbg !1220
  %18 = mul i32 %17, 1000000, !dbg !1221
  %19 = zext i32 %18 to i64, !dbg !1220
  %20 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1222
  %21 = getelementptr inbounds %struct._checker, %struct._checker* %20, i32 0, i32 15, !dbg !1223
  store i64 %19, i64* %21, align 8, !dbg !1224
  br label %22, !dbg !1225

; <label>:22:                                     ; preds = %16, %13
  ret void, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal void @warmup_handler(%struct._vector*) #0 !dbg !1228 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1229, metadata !432), !dbg !1230
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1231, metadata !432), !dbg !1232
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1233
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1234
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1234
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1235
  %9 = load i8*, i8** %8, align 8, !dbg !1235
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1236
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1232
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1237, metadata !432), !dbg !1238
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1239
  %12 = call zeroext i1 @read_unsigned_strvec(%struct._vector* %11, i64 1, i32* %4, i32 0, i32 4294, i1 zeroext true), !dbg !1241
  br i1 %12, label %16, label %13, !dbg !1242

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1243
  %15 = call i8* @strvec_slot(%struct._vector* %14, i64 1), !dbg !1245
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i32 0, i32 0), i8* %15), !dbg !1246
  br label %22, !dbg !1248

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %4, align 4, !dbg !1249
  %18 = mul i32 %17, 1000000, !dbg !1250
  %19 = zext i32 %18 to i64, !dbg !1249
  %20 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1251
  %21 = getelementptr inbounds %struct._checker, %struct._checker* %20, i32 0, i32 13, !dbg !1252
  store i64 %19, i64* %21, align 8, !dbg !1253
  br label %22, !dbg !1254

; <label>:22:                                     ; preds = %16, %13
  ret void, !dbg !1255
}

; Function Attrs: nounwind uwtable
define internal void @delay_handler(%struct._vector*) #0 !dbg !1257 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._checker*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1258, metadata !432), !dbg !1259
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1260, metadata !432), !dbg !1261
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1262, metadata !432), !dbg !1263
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1264
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1265
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1265
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1266
  %9 = load i8*, i8** %8, align 8, !dbg !1266
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1267
  store %struct._checker* %10, %struct._checker** %4, align 8, !dbg !1263
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1268
  %12 = call zeroext i1 @read_timer(%struct._vector* %11, i64 1, i64* %3, i64 1, i64 0, i1 zeroext true), !dbg !1270
  br i1 %12, label %13, label %17, !dbg !1271

; <label>:13:                                     ; preds = %1
  %14 = load i64, i64* %3, align 8, !dbg !1272
  %15 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1273
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 12, !dbg !1274
  store i64 %14, i64* %16, align 8, !dbg !1275
  br label %20, !dbg !1273

; <label>:17:                                     ; preds = %1
  %18 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1276
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !1277
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %19), !dbg !1278
  br label %20

; <label>:20:                                     ; preds = %17, %13
  ret void, !dbg !1280
}

; Function Attrs: nounwind uwtable
define internal void @alpha_handler(%struct._vector*) #0 !dbg !1281 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !1282, metadata !432), !dbg !1283
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1284, metadata !432), !dbg !1285
  %5 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1286
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1, !dbg !1287
  %7 = load %struct._element*, %struct._element** %6, align 8, !dbg !1287
  %8 = getelementptr inbounds %struct._element, %struct._element* %7, i32 0, i32 2, !dbg !1288
  %9 = load i8*, i8** %8, align 8, !dbg !1288
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1289
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1290, metadata !432), !dbg !1291
  store i32 1, i32* %4, align 4, !dbg !1291
  %11 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1292
  %12 = getelementptr inbounds %struct._vector, %struct._vector* %11, i32 0, i32 1, !dbg !1294
  %13 = load i32, i32* %12, align 4, !dbg !1294
  %14 = icmp uge i32 %13, 2, !dbg !1295
  br i1 %14, label %15, label %25, !dbg !1296

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1297
  %17 = call i8* @strvec_slot(%struct._vector* %16, i64 1), !dbg !1299
  %18 = call i32 @check_true_false(i8* %17), !dbg !1300
  store i32 %18, i32* %4, align 4, !dbg !1302
  %19 = load i32, i32* %4, align 4, !dbg !1303
  %20 = icmp eq i32 %19, -1, !dbg !1305
  br i1 %20, label %21, label %24, !dbg !1306

; <label>:21:                                     ; preds = %15
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !1307
  %23 = call i8* @strvec_slot(%struct._vector* %22, i64 1), !dbg !1309
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i8* %23), !dbg !1310
  br label %29, !dbg !1312

; <label>:24:                                     ; preds = %15
  br label %25, !dbg !1313

; <label>:25:                                     ; preds = %24, %1
  %26 = load i32, i32* %4, align 4, !dbg !1314
  %27 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1315
  %28 = getelementptr inbounds %struct._checker, %struct._checker* %27, i32 0, i32 11, !dbg !1316
  store i32 %26, i32* %28, align 8, !dbg !1317
  br label %29, !dbg !1318

; <label>:29:                                     ; preds = %25, %21
  ret void, !dbg !1319
}

; Function Attrs: nounwind uwtable
define void @dump_checkers_queue(%struct._IO_FILE*) #0 !dbg !1321 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1324, metadata !432), !dbg !1325
  %3 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1326
  %4 = icmp eq %struct._list* %3, null, !dbg !1328
  br i1 %4, label %19, label %5, !dbg !1329

; <label>:5:                                      ; preds = %1
  %6 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1330
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 0, !dbg !1332
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !1332
  %9 = icmp eq %struct._element* %8, null, !dbg !1333
  br i1 %9, label %10, label %15, !dbg !1334

; <label>:10:                                     ; preds = %5
  %11 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1335
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i32 0, i32 1, !dbg !1337
  %13 = load %struct._element*, %struct._element** %12, align 8, !dbg !1337
  %14 = icmp eq %struct._element* %13, null, !dbg !1338
  br i1 %14, label %19, label %15, !dbg !1339

; <label>:15:                                     ; preds = %10, %5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1340
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0)), !dbg !1342
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1343
  %18 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1344
  call void @dump_list(%struct._IO_FILE* %17, %struct._list* %18), !dbg !1345
  br label %19, !dbg !1346

; <label>:19:                                     ; preds = %15, %10, %1
  ret void, !dbg !1347
}

declare void @dump_list(%struct._IO_FILE*, %struct._list*) #2

; Function Attrs: nounwind uwtable
define void @init_checkers_queue() #0 !dbg !1348 {
  %1 = call %struct._list* @alloc_list(void (i8*)* @free_checker, void (%struct._IO_FILE*, i8*)* @dump_checker), !dbg !1349
  store %struct._list* %1, %struct._list** @checkers_queue, align 8, !dbg !1350
  ret void, !dbg !1351
}

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @free_checker(i8*) #0 !dbg !1352 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._checker*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1353, metadata !432), !dbg !1354
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1355, metadata !432), !dbg !1356
  %4 = load i8*, i8** %2, align 8, !dbg !1357
  %5 = bitcast i8* %4 to %struct._checker*, !dbg !1357
  store %struct._checker* %5, %struct._checker** %3, align 8, !dbg !1356
  %6 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1358
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 0, !dbg !1359
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !1359
  %9 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1360
  %10 = bitcast %struct._checker* %9 to i8*, !dbg !1360
  call void %8(i8* %10), !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: nounwind uwtable
define internal void @dump_checker(%struct._IO_FILE*, i8*) #0 !dbg !1363 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1364, metadata !432), !dbg !1365
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1366, metadata !432), !dbg !1367
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !1368, metadata !432), !dbg !1369
  %8 = load i8*, i8** %4, align 8, !dbg !1370
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !1370
  store %struct._checker* %9, %struct._checker** %5, align 8, !dbg !1369
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1371, metadata !432), !dbg !1372
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1373, metadata !432), !dbg !1374
  %10 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1375
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 4, !dbg !1376
  %12 = load %struct._virtual_server*, %struct._virtual_server** %11, align 8, !dbg !1376
  %13 = call i8* @format_vs(%struct._virtual_server* %12), !dbg !1377
  store i8* %13, i8** %6, align 8, !dbg !1378
  %14 = load i8*, i8** %6, align 8, !dbg !1379
  %15 = call i64 @strlen(i8* %14) #8, !dbg !1380
  %16 = add i64 %15, 1, !dbg !1381
  %17 = call i8* @zalloc(i64 %16), !dbg !1382
  store i8* %17, i8** %7, align 8, !dbg !1384
  %18 = load i8*, i8** %7, align 8, !dbg !1385
  %19 = load i8*, i8** %6, align 8, !dbg !1386
  %20 = call i8* @strcpy(i8* %18, i8* %19) #9, !dbg !1387
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1388
  %22 = load i8*, i8** %7, align 8, !dbg !1389
  %23 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1390
  %24 = getelementptr inbounds %struct._checker, %struct._checker* %23, i32 0, i32 5, !dbg !1391
  %25 = load %struct._real_server*, %struct._real_server** %24, align 8, !dbg !1391
  %26 = getelementptr inbounds %struct._real_server, %struct._real_server* %25, i32 0, i32 0, !dbg !1392
  %27 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1393
  %28 = getelementptr inbounds %struct._checker, %struct._checker* %27, i32 0, i32 4, !dbg !1394
  %29 = load %struct._virtual_server*, %struct._virtual_server** %28, align 8, !dbg !1394
  %30 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %29, i32 0, i32 6, !dbg !1395
  %31 = load i16, i16* %30, align 2, !dbg !1395
  %32 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %26, i16 zeroext %31), !dbg !1396
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* %22, i8* %32), !dbg !1397
  %33 = load i8*, i8** %7, align 8, !dbg !1398
  call void @free(i8* %33) #9, !dbg !1399
  store i8* null, i8** %7, align 8, !dbg !1400
  %34 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1401
  %35 = getelementptr inbounds %struct._checker, %struct._checker* %34, i32 0, i32 1, !dbg !1402
  %36 = load void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, i8*)** %35, align 8, !dbg !1402
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1403
  %38 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1404
  %39 = bitcast %struct._checker* %38 to i8*, !dbg !1404
  call void %36(%struct._IO_FILE* %37, i8* %39), !dbg !1405
  ret void, !dbg !1406
}

; Function Attrs: nounwind uwtable
define void @free_vs_checkers(%struct._virtual_server*) #0 !dbg !1407 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._checker*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !1410, metadata !432), !dbg !1411
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !1412, metadata !432), !dbg !1414
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1415, metadata !432), !dbg !1416
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !1417, metadata !432), !dbg !1418
  %6 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1419
  %7 = icmp eq %struct._list* %6, null, !dbg !1421
  br i1 %7, label %18, label %8, !dbg !1422

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1423
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 0, !dbg !1425
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !1425
  %12 = icmp eq %struct._element* %11, null, !dbg !1426
  br i1 %12, label %13, label %19, !dbg !1427

; <label>:13:                                     ; preds = %8
  %14 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1428
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1, !dbg !1430
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !1430
  %17 = icmp eq %struct._element* %16, null, !dbg !1431
  br i1 %17, label %18, label %19, !dbg !1432

; <label>:18:                                     ; preds = %13, %1
  br label %51, !dbg !1433

; <label>:19:                                     ; preds = %13, %8
  %20 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1434
  %21 = icmp ne %struct._list* %20, null, !dbg !1436
  br i1 %21, label %23, label %22, !dbg !1437

; <label>:22:                                     ; preds = %19
  br label %27, !dbg !1438

; <label>:23:                                     ; preds = %19
  %24 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1440
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !1442
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !1442
  br label %27, !dbg !1443

; <label>:27:                                     ; preds = %23, %22
  %28 = phi %struct._element* [ null, %22 ], [ %26, %23 ], !dbg !1444
  store %struct._element* %28, %struct._element** %3, align 8, !dbg !1446
  br label %29, !dbg !1447

; <label>:29:                                     ; preds = %49, %27
  %30 = load %struct._element*, %struct._element** %3, align 8, !dbg !1448
  %31 = icmp ne %struct._element* %30, null, !dbg !1451
  br i1 %31, label %32, label %51, !dbg !1451

; <label>:32:                                     ; preds = %29
  %33 = load %struct._element*, %struct._element** %3, align 8, !dbg !1452
  %34 = getelementptr inbounds %struct._element, %struct._element* %33, i32 0, i32 0, !dbg !1454
  %35 = load %struct._element*, %struct._element** %34, align 8, !dbg !1454
  store %struct._element* %35, %struct._element** %4, align 8, !dbg !1455
  %36 = load %struct._element*, %struct._element** %3, align 8, !dbg !1456
  %37 = getelementptr inbounds %struct._element, %struct._element* %36, i32 0, i32 2, !dbg !1457
  %38 = load i8*, i8** %37, align 8, !dbg !1457
  %39 = bitcast i8* %38 to %struct._checker*, !dbg !1458
  store %struct._checker* %39, %struct._checker** %5, align 8, !dbg !1459
  %40 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1460
  %41 = getelementptr inbounds %struct._checker, %struct._checker* %40, i32 0, i32 4, !dbg !1462
  %42 = load %struct._virtual_server*, %struct._virtual_server** %41, align 8, !dbg !1462
  %43 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !1463
  %44 = icmp ne %struct._virtual_server* %42, %43, !dbg !1464
  br i1 %44, label %45, label %46, !dbg !1465

; <label>:45:                                     ; preds = %32
  br label %49, !dbg !1466

; <label>:46:                                     ; preds = %32
  %47 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1467
  %48 = load %struct._element*, %struct._element** %3, align 8, !dbg !1468
  call void @free_list_element(%struct._list* %47, %struct._element* %48), !dbg !1469
  br label %49, !dbg !1470

; <label>:49:                                     ; preds = %46, %45
  %50 = load %struct._element*, %struct._element** %4, align 8, !dbg !1471
  store %struct._element* %50, %struct._element** %3, align 8, !dbg !1473
  br label %29, !dbg !1474, !llvm.loop !1475

; <label>:51:                                     ; preds = %18, %29
  ret void, !dbg !1477
}

; Function Attrs: nounwind uwtable
define void @free_checkers_queue() #0 !dbg !1478 {
  %1 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1479
  %2 = icmp ne %struct._list* %1, null, !dbg !1479
  br i1 %2, label %4, label %3, !dbg !1481

; <label>:3:                                      ; preds = %0
  br label %5, !dbg !1482

; <label>:4:                                      ; preds = %0
  call void @free_list(%struct._list** @checkers_queue), !dbg !1483
  br label %5, !dbg !1484

; <label>:5:                                      ; preds = %4, %3
  ret void, !dbg !1485
}

declare void @free_list(%struct._list**) #2

; Function Attrs: nounwind uwtable
define void @register_checkers_thread() #0 !dbg !1487 {
  %1 = alloca %struct._checker*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %1, metadata !1488, metadata !432), !dbg !1489
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !1490, metadata !432), !dbg !1491
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1492, metadata !432), !dbg !1493
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1494
  %5 = icmp ne %struct._list* %4, null, !dbg !1496
  br i1 %5, label %6, label %16, !dbg !1496

; <label>:6:                                      ; preds = %0
  %7 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1497
  %8 = icmp ne %struct._list* %7, null, !dbg !1499
  br i1 %8, label %10, label %9, !dbg !1500

; <label>:9:                                      ; preds = %6
  br label %14, !dbg !1501

; <label>:10:                                     ; preds = %6
  %11 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1503
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i32 0, i32 0, !dbg !1505
  %13 = load %struct._element*, %struct._element** %12, align 8, !dbg !1505
  br label %14, !dbg !1506

; <label>:14:                                     ; preds = %10, %9
  %15 = phi %struct._element* [ null, %9 ], [ %13, %10 ], !dbg !1507
  br label %17, !dbg !1509

; <label>:16:                                     ; preds = %0
  br label %17, !dbg !1510

; <label>:17:                                     ; preds = %16, %14
  %18 = phi %struct._element* [ %15, %14 ], [ null, %16 ], !dbg !1512
  store %struct._element* %18, %struct._element** %2, align 8, !dbg !1514
  br label %19, !dbg !1515

; <label>:19:                                     ; preds = %93, %17
  %20 = load %struct._element*, %struct._element** %2, align 8, !dbg !1516
  %21 = icmp ne %struct._element* %20, null, !dbg !1519
  br i1 %21, label %22, label %27, !dbg !1520

; <label>:22:                                     ; preds = %19
  %23 = load %struct._element*, %struct._element** %2, align 8, !dbg !1521
  %24 = getelementptr inbounds %struct._element, %struct._element* %23, i32 0, i32 2, !dbg !1523
  %25 = load i8*, i8** %24, align 8, !dbg !1523
  %26 = bitcast i8* %25 to %struct._checker*, !dbg !1524
  store %struct._checker* %26, %struct._checker** %1, align 8, !dbg !1525
  br label %27

; <label>:27:                                     ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ true, %22 ]
  br i1 %28, label %29, label %97, !dbg !1526

; <label>:29:                                     ; preds = %27
  %30 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1528
  %31 = getelementptr inbounds %struct._checker, %struct._checker* %30, i32 0, i32 2, !dbg !1531
  %32 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %31, align 8, !dbg !1531
  %33 = icmp ne i32 (%struct._thread*)* %32, null, !dbg !1528
  br i1 %33, label %34, label %92, !dbg !1532

; <label>:34:                                     ; preds = %29
  %35 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1533
  %36 = getelementptr inbounds %struct._checker, %struct._checker* %35, i32 0, i32 4, !dbg !1536
  %37 = load %struct._virtual_server*, %struct._virtual_server** %36, align 8, !dbg !1536
  %38 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %37, i32 0, i32 7, !dbg !1537
  %39 = load i8, i8* %38, align 4, !dbg !1537
  %40 = trunc i8 %39 to i1, !dbg !1537
  br i1 %40, label %41, label %51, !dbg !1538

; <label>:41:                                     ; preds = %34
  %42 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1539
  %43 = getelementptr inbounds %struct._checker, %struct._checker* %42, i32 0, i32 4, !dbg !1541
  %44 = load %struct._virtual_server*, %struct._virtual_server** %43, align 8, !dbg !1541
  %45 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %44, i32 0, i32 8, !dbg !1542
  %46 = load i32, i32* %45, align 8, !dbg !1542
  %47 = icmp ne i32 %46, 0, !dbg !1539
  br i1 %47, label %51, label %48, !dbg !1543

; <label>:48:                                     ; preds = %41
  %49 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1544
  %50 = getelementptr inbounds %struct._checker, %struct._checker* %49, i32 0, i32 7, !dbg !1545
  store i8 0, i8* %50, align 8, !dbg !1546
  br label %51, !dbg !1544

; <label>:51:                                     ; preds = %48, %41, %34
  %52 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1547
  %53 = getelementptr inbounds %struct._checker, %struct._checker* %52, i32 0, i32 7, !dbg !1548
  %54 = load i8, i8* %53, align 8, !dbg !1548
  %55 = trunc i8 %54 to i1, !dbg !1548
  %56 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), !dbg !1547
  %57 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1549
  %58 = getelementptr inbounds %struct._checker, %struct._checker* %57, i32 0, i32 5, !dbg !1550
  %59 = load %struct._real_server*, %struct._real_server** %58, align 8, !dbg !1550
  %60 = getelementptr inbounds %struct._real_server, %struct._real_server* %59, i32 0, i32 0, !dbg !1551
  %61 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1552
  %62 = getelementptr inbounds %struct._checker, %struct._checker* %61, i32 0, i32 4, !dbg !1553
  %63 = load %struct._virtual_server*, %struct._virtual_server** %62, align 8, !dbg !1553
  %64 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %63, i32 0, i32 6, !dbg !1554
  %65 = load i16, i16* %64, align 2, !dbg !1554
  %66 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %60, i16 zeroext %65), !dbg !1555
  %67 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1556
  %68 = getelementptr inbounds %struct._checker, %struct._checker* %67, i32 0, i32 4, !dbg !1557
  %69 = load %struct._virtual_server*, %struct._virtual_server** %68, align 8, !dbg !1557
  %70 = call i8* @format_vs(%struct._virtual_server* %69), !dbg !1558
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0), i8* %56, i8* %66, i8* %70), !dbg !1560
  %71 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1561
  %72 = getelementptr inbounds %struct._checker, %struct._checker* %71, i32 0, i32 13, !dbg !1562
  %73 = load i64, i64* %72, align 8, !dbg !1562
  store i64 %73, i64* %3, align 8, !dbg !1563
  %74 = load i64, i64* %3, align 8, !dbg !1564
  %75 = icmp ne i64 %74, 0, !dbg !1564
  br i1 %75, label %76, label %82, !dbg !1566

; <label>:76:                                     ; preds = %51
  %77 = load i64, i64* %3, align 8, !dbg !1567
  %78 = call i32 @rand() #9, !dbg !1568
  %79 = zext i32 %78 to i64, !dbg !1569
  %80 = mul i64 %77, %79, !dbg !1570
  %81 = udiv i64 %80, 2147483647, !dbg !1571
  store i64 %81, i64* %3, align 8, !dbg !1572
  br label %82, !dbg !1573

; <label>:82:                                     ; preds = %76, %51
  %83 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1574
  %84 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1575
  %85 = getelementptr inbounds %struct._checker, %struct._checker* %84, i32 0, i32 2, !dbg !1576
  %86 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %85, align 8, !dbg !1576
  %87 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !1577
  %88 = bitcast %struct._checker* %87 to i8*, !dbg !1577
  %89 = load i64, i64* %3, align 8, !dbg !1578
  %90 = add i64 1000000, %89, !dbg !1579
  %91 = call %struct._thread* @thread_add_timer(%struct._thread_master* %83, i32 (%struct._thread*)* %86, i8* %88, i64 %90), !dbg !1580
  br label %92, !dbg !1581

; <label>:92:                                     ; preds = %82, %29
  br label %93, !dbg !1582

; <label>:93:                                     ; preds = %92
  %94 = load %struct._element*, %struct._element** %2, align 8, !dbg !1583
  %95 = getelementptr inbounds %struct._element, %struct._element* %94, i32 0, i32 0, !dbg !1585
  %96 = load %struct._element*, %struct._element** %95, align 8, !dbg !1585
  store %struct._element* %96, %struct._element** %2, align 8, !dbg !1586
  br label %19, !dbg !1587, !llvm.loop !1588

; <label>:97:                                     ; preds = %27
  ret void, !dbg !1590
}

declare void @log_message(i32, i8*, ...) #2

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #2

declare i8* @format_vs(%struct._virtual_server*) #2

; Function Attrs: nounwind
declare i32 @rand() #7

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @update_checker_activity(i16 zeroext, i8*, i1 zeroext) #0 !dbg !1591 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._checker*, align 8
  %8 = alloca %struct._virtual_server*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._element*, align 8
  %11 = alloca [46 x i8], align 16
  %12 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1594, metadata !432), !dbg !1595
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1596, metadata !432), !dbg !1597
  %13 = zext i1 %2 to i8
  store i8 %13, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1598, metadata !432), !dbg !1599
  call void @llvm.dbg.declare(metadata %struct._checker** %7, metadata !1600, metadata !432), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %8, metadata !1602, metadata !432), !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !1604, metadata !432), !dbg !1605
  call void @llvm.dbg.declare(metadata %struct._element** %10, metadata !1606, metadata !432), !dbg !1607
  call void @llvm.dbg.declare(metadata [46 x i8]* %11, metadata !1608, metadata !432), !dbg !1612
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1613, metadata !432), !dbg !1614
  store i8 0, i8* %12, align 1, !dbg !1614
  %14 = call zeroext i1 @__test_bit(i32 10, i64* @debug), !dbg !1615
  br i1 %14, label %15, label %25, !dbg !1617

; <label>:15:                                     ; preds = %3
  %16 = load i16, i16* %4, align 2, !dbg !1618
  %17 = zext i16 %16 to i32, !dbg !1618
  %18 = load i8*, i8** %5, align 8, !dbg !1620
  %19 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1621
  %20 = call i8* @inet_ntop(i32 %17, i8* %18, i8* %19, i32 46) #9, !dbg !1622
  %21 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1623
  %22 = load i8, i8* %6, align 1, !dbg !1624
  %23 = trunc i8 %22 to i1, !dbg !1624
  %24 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), !dbg !1625
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0), i8* %21, i8* %24), !dbg !1626
  store i8 1, i8* %12, align 1, !dbg !1627
  br label %25, !dbg !1628

; <label>:25:                                     ; preds = %15, %3
  %26 = load i8, i8* @using_ha_suspend, align 1, !dbg !1629
  %27 = trunc i8 %26 to i1, !dbg !1629
  br i1 %27, label %29, label %28, !dbg !1631

; <label>:28:                                     ; preds = %25
  br label %210, !dbg !1632

; <label>:29:                                     ; preds = %25
  %30 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1633
  %31 = icmp eq %struct._list* %30, null, !dbg !1635
  br i1 %31, label %42, label %32, !dbg !1636

; <label>:32:                                     ; preds = %29
  %33 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1637
  %34 = getelementptr inbounds %struct._list, %struct._list* %33, i32 0, i32 0, !dbg !1639
  %35 = load %struct._element*, %struct._element** %34, align 8, !dbg !1639
  %36 = icmp eq %struct._element* %35, null, !dbg !1640
  br i1 %36, label %37, label %43, !dbg !1641

; <label>:37:                                     ; preds = %32
  %38 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1642
  %39 = getelementptr inbounds %struct._list, %struct._list* %38, i32 0, i32 1, !dbg !1644
  %40 = load %struct._element*, %struct._element** %39, align 8, !dbg !1644
  %41 = icmp eq %struct._element* %40, null, !dbg !1645
  br i1 %41, label %42, label %43, !dbg !1646

; <label>:42:                                     ; preds = %37, %29
  br label %210, !dbg !1647

; <label>:43:                                     ; preds = %37, %32
  %44 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1648
  %45 = getelementptr inbounds %struct._check_data, %struct._check_data* %44, i32 0, i32 3, !dbg !1650
  %46 = load %struct._list*, %struct._list** %45, align 8, !dbg !1650
  %47 = icmp ne %struct._list* %46, null, !dbg !1651
  br i1 %47, label %48, label %62, !dbg !1651

; <label>:48:                                     ; preds = %43
  %49 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1652
  %50 = getelementptr inbounds %struct._check_data, %struct._check_data* %49, i32 0, i32 3, !dbg !1654
  %51 = load %struct._list*, %struct._list** %50, align 8, !dbg !1654
  %52 = icmp ne %struct._list* %51, null, !dbg !1655
  br i1 %52, label %54, label %53, !dbg !1656

; <label>:53:                                     ; preds = %48
  br label %60, !dbg !1657

; <label>:54:                                     ; preds = %48
  %55 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1659
  %56 = getelementptr inbounds %struct._check_data, %struct._check_data* %55, i32 0, i32 3, !dbg !1661
  %57 = load %struct._list*, %struct._list** %56, align 8, !dbg !1661
  %58 = getelementptr inbounds %struct._list, %struct._list* %57, i32 0, i32 0, !dbg !1662
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !1662
  br label %60, !dbg !1663

; <label>:60:                                     ; preds = %54, %53
  %61 = phi %struct._element* [ null, %53 ], [ %59, %54 ], !dbg !1664
  br label %63, !dbg !1666

; <label>:62:                                     ; preds = %43
  br label %63, !dbg !1667

; <label>:63:                                     ; preds = %62, %60
  %64 = phi %struct._element* [ %61, %60 ], [ null, %62 ], !dbg !1669
  store %struct._element* %64, %struct._element** %9, align 8, !dbg !1671
  br label %65, !dbg !1672

; <label>:65:                                     ; preds = %206, %63
  %66 = load %struct._element*, %struct._element** %9, align 8, !dbg !1673
  %67 = icmp ne %struct._element* %66, null, !dbg !1676
  br i1 %67, label %68, label %73, !dbg !1677

; <label>:68:                                     ; preds = %65
  %69 = load %struct._element*, %struct._element** %9, align 8, !dbg !1678
  %70 = getelementptr inbounds %struct._element, %struct._element* %69, i32 0, i32 2, !dbg !1680
  %71 = load i8*, i8** %70, align 8, !dbg !1680
  %72 = bitcast i8* %71 to %struct._virtual_server*, !dbg !1681
  store %struct._virtual_server* %72, %struct._virtual_server** %8, align 8, !dbg !1682
  br label %73

; <label>:73:                                     ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ true, %68 ]
  br i1 %74, label %75, label %210, !dbg !1683

; <label>:75:                                     ; preds = %73
  %76 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1685
  %77 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %76, i32 0, i32 7, !dbg !1688
  %78 = load i8, i8* %77, align 4, !dbg !1688
  %79 = trunc i8 %78 to i1, !dbg !1688
  br i1 %79, label %81, label %80, !dbg !1689

; <label>:80:                                     ; preds = %75
  br label %206, !dbg !1690

; <label>:81:                                     ; preds = %75
  %82 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1691
  %83 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %82, i32 0, i32 5, !dbg !1693
  %84 = load i16, i16* %83, align 8, !dbg !1693
  %85 = zext i16 %84 to i32, !dbg !1691
  %86 = load i16, i16* %4, align 2, !dbg !1694
  %87 = zext i16 %86 to i32, !dbg !1694
  %88 = icmp ne i32 %85, %87, !dbg !1695
  br i1 %88, label %89, label %90, !dbg !1696

; <label>:89:                                     ; preds = %81
  br label %206, !dbg !1697

; <label>:90:                                     ; preds = %81
  %91 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1698
  %92 = load i8*, i8** %5, align 8, !dbg !1700
  %93 = call zeroext i1 @addr_matches(%struct._virtual_server* %91, i8* %92), !dbg !1701
  br i1 %93, label %95, label %94, !dbg !1702

; <label>:94:                                     ; preds = %90
  br label %206, !dbg !1703

; <label>:95:                                     ; preds = %90
  %96 = load i8, i8* %12, align 1, !dbg !1704
  %97 = trunc i8 %96 to i1, !dbg !1704
  br i1 %97, label %110, label %98, !dbg !1706

; <label>:98:                                     ; preds = %95
  %99 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !1707
  br i1 %99, label %100, label %110, !dbg !1708

; <label>:100:                                    ; preds = %98
  %101 = load i16, i16* %4, align 2, !dbg !1710
  %102 = zext i16 %101 to i32, !dbg !1710
  %103 = load i8*, i8** %5, align 8, !dbg !1712
  %104 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1713
  %105 = call i8* @inet_ntop(i32 %102, i8* %103, i8* %104, i32 46) #9, !dbg !1714
  %106 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1715
  %107 = load i8, i8* %6, align 1, !dbg !1716
  %108 = trunc i8 %107 to i1, !dbg !1716
  %109 = select i1 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), !dbg !1717
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0), i8* %106, i8* %109), !dbg !1718
  br label %110, !dbg !1719

; <label>:110:                                    ; preds = %100, %98, %95
  store i8 1, i8* %12, align 1, !dbg !1720
  %111 = load i8, i8* %6, align 1, !dbg !1721
  %112 = trunc i8 %111 to i1, !dbg !1721
  br i1 %112, label %113, label %118, !dbg !1723

; <label>:113:                                    ; preds = %110
  %114 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1724
  %115 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %114, i32 0, i32 8, !dbg !1725
  %116 = load i32, i32* %115, align 8, !dbg !1726
  %117 = add nsw i32 %116, 1, !dbg !1726
  store i32 %117, i32* %115, align 8, !dbg !1726
  br label %123, !dbg !1724

; <label>:118:                                    ; preds = %110
  %119 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1727
  %120 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %119, i32 0, i32 8, !dbg !1728
  %121 = load i32, i32* %120, align 8, !dbg !1729
  %122 = add nsw i32 %121, -1, !dbg !1729
  store i32 %122, i32* %120, align 8, !dbg !1729
  br label %123

; <label>:123:                                    ; preds = %118, %113
  %124 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1730
  %125 = icmp ne %struct._list* %124, null, !dbg !1732
  br i1 %125, label %126, label %136, !dbg !1732

; <label>:126:                                    ; preds = %123
  %127 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1733
  %128 = icmp ne %struct._list* %127, null, !dbg !1735
  br i1 %128, label %130, label %129, !dbg !1736

; <label>:129:                                    ; preds = %126
  br label %134, !dbg !1737

; <label>:130:                                    ; preds = %126
  %131 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !1739
  %132 = getelementptr inbounds %struct._list, %struct._list* %131, i32 0, i32 0, !dbg !1741
  %133 = load %struct._element*, %struct._element** %132, align 8, !dbg !1741
  br label %134, !dbg !1742

; <label>:134:                                    ; preds = %130, %129
  %135 = phi %struct._element* [ null, %129 ], [ %133, %130 ], !dbg !1743
  br label %137, !dbg !1745

; <label>:136:                                    ; preds = %123
  br label %137, !dbg !1746

; <label>:137:                                    ; preds = %136, %134
  %138 = phi %struct._element* [ %135, %134 ], [ null, %136 ], !dbg !1748
  store %struct._element* %138, %struct._element** %10, align 8, !dbg !1750
  br label %139, !dbg !1751

; <label>:139:                                    ; preds = %201, %137
  %140 = load %struct._element*, %struct._element** %10, align 8, !dbg !1752
  %141 = icmp ne %struct._element* %140, null, !dbg !1755
  br i1 %141, label %142, label %147, !dbg !1756

; <label>:142:                                    ; preds = %139
  %143 = load %struct._element*, %struct._element** %10, align 8, !dbg !1757
  %144 = getelementptr inbounds %struct._element, %struct._element* %143, i32 0, i32 2, !dbg !1759
  %145 = load i8*, i8** %144, align 8, !dbg !1759
  %146 = bitcast i8* %145 to %struct._checker*, !dbg !1760
  store %struct._checker* %146, %struct._checker** %7, align 8, !dbg !1761
  br label %147

; <label>:147:                                    ; preds = %142, %139
  %148 = phi i1 [ false, %139 ], [ true, %142 ]
  br i1 %148, label %149, label %205, !dbg !1762

; <label>:149:                                    ; preds = %147
  %150 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1764
  %151 = getelementptr inbounds %struct._checker, %struct._checker* %150, i32 0, i32 4, !dbg !1767
  %152 = load %struct._virtual_server*, %struct._virtual_server** %151, align 8, !dbg !1767
  %153 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1768
  %154 = icmp ne %struct._virtual_server* %152, %153, !dbg !1769
  br i1 %154, label %155, label %156, !dbg !1770

; <label>:155:                                    ; preds = %149
  br label %201, !dbg !1771

; <label>:156:                                    ; preds = %149
  %157 = load i8, i8* %6, align 1, !dbg !1772
  %158 = trunc i8 %157 to i1, !dbg !1772
  %159 = zext i1 %158 to i32, !dbg !1772
  %160 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1774
  %161 = getelementptr inbounds %struct._checker, %struct._checker* %160, i32 0, i32 7, !dbg !1775
  %162 = load i8, i8* %161, align 8, !dbg !1775
  %163 = trunc i8 %162 to i1, !dbg !1775
  %164 = zext i1 %163 to i32, !dbg !1774
  %165 = icmp ne i32 %159, %164, !dbg !1776
  br i1 %165, label %166, label %200, !dbg !1777

; <label>:166:                                    ; preds = %156
  %167 = load i8, i8* %6, align 1, !dbg !1778
  %168 = trunc i8 %167 to i1, !dbg !1778
  br i1 %168, label %174, label %169, !dbg !1779

; <label>:169:                                    ; preds = %166
  %170 = load %struct._virtual_server*, %struct._virtual_server** %8, align 8, !dbg !1780
  %171 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %170, i32 0, i32 8, !dbg !1782
  %172 = load i32, i32* %171, align 8, !dbg !1782
  %173 = icmp eq i32 %172, 0, !dbg !1783
  br i1 %173, label %174, label %200, !dbg !1784

; <label>:174:                                    ; preds = %169, %166
  %175 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1786
  %176 = getelementptr inbounds %struct._checker, %struct._checker* %175, i32 0, i32 7, !dbg !1788
  %177 = load i8, i8* %176, align 8, !dbg !1788
  %178 = trunc i8 %177 to i1, !dbg !1788
  %179 = xor i1 %178, true, !dbg !1789
  %180 = select i1 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), !dbg !1789
  %181 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1790
  %182 = getelementptr inbounds %struct._checker, %struct._checker* %181, i32 0, i32 5, !dbg !1791
  %183 = load %struct._real_server*, %struct._real_server** %182, align 8, !dbg !1791
  %184 = getelementptr inbounds %struct._real_server, %struct._real_server* %183, i32 0, i32 0, !dbg !1792
  %185 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1793
  %186 = getelementptr inbounds %struct._checker, %struct._checker* %185, i32 0, i32 4, !dbg !1794
  %187 = load %struct._virtual_server*, %struct._virtual_server** %186, align 8, !dbg !1794
  %188 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %187, i32 0, i32 6, !dbg !1795
  %189 = load i16, i16* %188, align 2, !dbg !1795
  %190 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %184, i16 zeroext %189), !dbg !1796
  %191 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1797
  %192 = getelementptr inbounds %struct._checker, %struct._checker* %191, i32 0, i32 4, !dbg !1798
  %193 = load %struct._virtual_server*, %struct._virtual_server** %192, align 8, !dbg !1798
  %194 = call i8* @format_vs(%struct._virtual_server* %193), !dbg !1799
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0), i8* %180, i8* %190, i8* %194), !dbg !1801
  %195 = load i8, i8* %6, align 1, !dbg !1802
  %196 = trunc i8 %195 to i1, !dbg !1802
  %197 = load %struct._checker*, %struct._checker** %7, align 8, !dbg !1803
  %198 = getelementptr inbounds %struct._checker, %struct._checker* %197, i32 0, i32 7, !dbg !1804
  %199 = zext i1 %196 to i8, !dbg !1805
  store i8 %199, i8* %198, align 8, !dbg !1805
  br label %200, !dbg !1806

; <label>:200:                                    ; preds = %174, %169, %156
  br label %201, !dbg !1807

; <label>:201:                                    ; preds = %200, %155
  %202 = load %struct._element*, %struct._element** %10, align 8, !dbg !1808
  %203 = getelementptr inbounds %struct._element, %struct._element* %202, i32 0, i32 0, !dbg !1810
  %204 = load %struct._element*, %struct._element** %203, align 8, !dbg !1810
  store %struct._element* %204, %struct._element** %10, align 8, !dbg !1811
  br label %139, !dbg !1812, !llvm.loop !1813

; <label>:205:                                    ; preds = %147
  br label %206, !dbg !1815

; <label>:206:                                    ; preds = %205, %94, %89, %80
  %207 = load %struct._element*, %struct._element** %9, align 8, !dbg !1816
  %208 = getelementptr inbounds %struct._element, %struct._element* %207, i32 0, i32 0, !dbg !1818
  %209 = load %struct._element*, %struct._element** %208, align 8, !dbg !1818
  store %struct._element* %209, %struct._element** %9, align 8, !dbg !1819
  br label %65, !dbg !1820, !llvm.loop !1821

; <label>:210:                                    ; preds = %28, %42, %73
  ret void, !dbg !1823
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #5 !dbg !1824 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1829, metadata !432), !dbg !1830
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1831, metadata !432), !dbg !1832
  %5 = load i32, i32* %3, align 4, !dbg !1833
  %6 = zext i32 %5 to i64, !dbg !1834
  %7 = udiv i64 %6, 64, !dbg !1835
  %8 = load i64*, i64** %4, align 8, !dbg !1836
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1836
  %10 = load i64, i64* %9, align 8, !dbg !1836
  %11 = load i32, i32* %3, align 4, !dbg !1837
  %12 = zext i32 %11 to i64, !dbg !1838
  %13 = urem i64 %12, 64, !dbg !1839
  %14 = shl i64 1, %13, !dbg !1840
  %15 = and i64 %10, %14, !dbg !1841
  %16 = icmp ne i64 %15, 0, !dbg !1842
  %17 = xor i1 %16, true, !dbg !1842
  %18 = xor i1 %17, true, !dbg !1843
  ret i1 %18, !dbg !1844
}

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #7

; Function Attrs: nounwind uwtable
define internal zeroext i1 @addr_matches(%struct._virtual_server*, i8*) #0 !dbg !1845 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._virtual_server_group_entry*, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_storage, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in_addr, align 4
  %15 = alloca %struct.in6_addr, align 4
  store %struct._virtual_server* %0, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1850, metadata !432), !dbg !1851
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1852, metadata !432), !dbg !1853
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1854, metadata !432), !dbg !1855
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %7, metadata !1856, metadata !432), !dbg !1880
  %16 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1881
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 2, !dbg !1883
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 0, !dbg !1884
  %19 = load i16, i16* %18, align 8, !dbg !1884
  %20 = zext i16 %19 to i32, !dbg !1881
  %21 = icmp ne i32 %20, 0, !dbg !1885
  br i1 %21, label %22, label %49, !dbg !1886

; <label>:22:                                     ; preds = %2
  %23 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1887
  %24 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %23, i32 0, i32 2, !dbg !1890
  %25 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %24, i32 0, i32 0, !dbg !1891
  %26 = load i16, i16* %25, align 8, !dbg !1891
  %27 = zext i16 %26 to i32, !dbg !1887
  %28 = icmp eq i32 %27, 10, !dbg !1892
  br i1 %28, label %29, label %35, !dbg !1893

; <label>:29:                                     ; preds = %22
  %30 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1894
  %31 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %30, i32 0, i32 2, !dbg !1895
  %32 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr_in6*, !dbg !1896
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 3, !dbg !1896
  %34 = bitcast %struct.in6_addr* %33 to i8*, !dbg !1897
  store i8* %34, i8** %6, align 8, !dbg !1898
  br label %41, !dbg !1899

; <label>:35:                                     ; preds = %22
  %36 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1900
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 2, !dbg !1901
  %38 = bitcast %struct.sockaddr_storage* %37 to %struct.sockaddr_in*, !dbg !1902
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 2, !dbg !1902
  %40 = bitcast %struct.in_addr* %39 to i8*, !dbg !1903
  store i8* %40, i8** %6, align 8, !dbg !1904
  br label %41

; <label>:41:                                     ; preds = %35, %29
  %42 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1905
  %43 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %42, i32 0, i32 2, !dbg !1906
  %44 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %43, i32 0, i32 0, !dbg !1907
  %45 = load i16, i16* %44, align 8, !dbg !1907
  %46 = load i8*, i8** %6, align 8, !dbg !1908
  %47 = load i8*, i8** %5, align 8, !dbg !1909
  %48 = call zeroext i1 @inaddr_equal(i16 zeroext %45, i8* %46, i8* %47), !dbg !1910
  store i1 %48, i1* %3, align 1, !dbg !1911
  br label %254, !dbg !1911

; <label>:49:                                     ; preds = %2
  %50 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1912
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 1, !dbg !1914
  %52 = load %struct._virtual_server_group*, %struct._virtual_server_group** %51, align 8, !dbg !1914
  %53 = icmp ne %struct._virtual_server_group* %52, null, !dbg !1912
  br i1 %53, label %55, label %54, !dbg !1915

; <label>:54:                                     ; preds = %49
  store i1 false, i1* %3, align 1, !dbg !1916
  br label %254, !dbg !1916

; <label>:55:                                     ; preds = %49
  %56 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1917
  %57 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %56, i32 0, i32 1, !dbg !1919
  %58 = load %struct._virtual_server_group*, %struct._virtual_server_group** %57, align 8, !dbg !1919
  %59 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %58, i32 0, i32 1, !dbg !1920
  %60 = load %struct._list*, %struct._list** %59, align 8, !dbg !1920
  %61 = icmp ne %struct._list* %60, null, !dbg !1917
  br i1 %61, label %62, label %253, !dbg !1921

; <label>:62:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !1922, metadata !432), !dbg !1924
  call void @llvm.dbg.declare(metadata %struct.in_addr* %9, metadata !1925, metadata !432), !dbg !1926
  %63 = bitcast %struct.in_addr* %9 to i8*, !dbg !1926
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 4, i32 4, i1 false), !dbg !1926
  call void @llvm.dbg.declare(metadata %struct.in6_addr* %10, metadata !1927, metadata !432), !dbg !1928
  %64 = bitcast %struct.in6_addr* %10 to i8*, !dbg !1928
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 16, i32 4, i1 false), !dbg !1928
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1929, metadata !432), !dbg !1930
  %65 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1931
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 5, !dbg !1933
  %67 = load i16, i16* %66, align 8, !dbg !1933
  %68 = zext i16 %67 to i32, !dbg !1931
  %69 = icmp eq i32 %68, 2, !dbg !1934
  br i1 %69, label %70, label %83, !dbg !1935

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %5, align 8, !dbg !1936
  %72 = bitcast i8* %71 to %struct.in_addr*, !dbg !1938
  %73 = bitcast %struct.in_addr* %9 to i8*, !dbg !1939
  %74 = bitcast %struct.in_addr* %72 to i8*, !dbg !1939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 4, i32 4, i1 false), !dbg !1939
  %75 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0, !dbg !1940
  %76 = load i32, i32* %75, align 4, !dbg !1940
  %77 = call i32 @ntohl(i32 %76) #1, !dbg !1941
  %78 = and i32 %77, 255, !dbg !1942
  store i32 %78, i32* %11, align 4, !dbg !1943
  %79 = call i32 @htonl(i32 -256) #1, !dbg !1944
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0, !dbg !1945
  %81 = load i32, i32* %80, align 4, !dbg !1946
  %82 = and i32 %81, %79, !dbg !1946
  store i32 %82, i32* %80, align 4, !dbg !1946
  br label %97, !dbg !1947

; <label>:83:                                     ; preds = %62
  %84 = load i8*, i8** %5, align 8, !dbg !1948
  %85 = bitcast i8* %84 to %struct.in6_addr*, !dbg !1950
  %86 = bitcast %struct.in6_addr* %10 to i8*, !dbg !1951
  %87 = bitcast %struct.in6_addr* %85 to i8*, !dbg !1951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 16, i32 4, i1 false), !dbg !1951
  %88 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !1952
  %89 = bitcast %union.anon.7* %88 to [8 x i16]*, !dbg !1953
  %90 = getelementptr inbounds [8 x i16], [8 x i16]* %89, i64 0, i64 7, !dbg !1954
  %91 = load i16, i16* %90, align 2, !dbg !1954
  %92 = call zeroext i16 @ntohs(i16 zeroext %91) #1, !dbg !1955
  %93 = zext i16 %92 to i32, !dbg !1955
  store i32 %93, i32* %11, align 4, !dbg !1956
  %94 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !1957
  %95 = bitcast %union.anon.7* %94 to [8 x i16]*, !dbg !1958
  %96 = getelementptr inbounds [8 x i16], [8 x i16]* %95, i64 0, i64 7, !dbg !1959
  store i16 0, i16* %96, align 2, !dbg !1960
  br label %97

; <label>:97:                                     ; preds = %83, %70
  %98 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1961
  %99 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %98, i32 0, i32 1, !dbg !1963
  %100 = load %struct._virtual_server_group*, %struct._virtual_server_group** %99, align 8, !dbg !1963
  %101 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %100, i32 0, i32 1, !dbg !1964
  %102 = load %struct._list*, %struct._list** %101, align 8, !dbg !1964
  %103 = icmp ne %struct._list* %102, null, !dbg !1965
  br i1 %103, label %105, label %104, !dbg !1966

; <label>:104:                                    ; preds = %97
  br label %113, !dbg !1967

; <label>:105:                                    ; preds = %97
  %106 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1969
  %107 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %106, i32 0, i32 1, !dbg !1971
  %108 = load %struct._virtual_server_group*, %struct._virtual_server_group** %107, align 8, !dbg !1971
  %109 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %108, i32 0, i32 1, !dbg !1972
  %110 = load %struct._list*, %struct._list** %109, align 8, !dbg !1972
  %111 = getelementptr inbounds %struct._list, %struct._list* %110, i32 0, i32 0, !dbg !1973
  %112 = load %struct._element*, %struct._element** %111, align 8, !dbg !1973
  br label %113, !dbg !1974

; <label>:113:                                    ; preds = %105, %104
  %114 = phi %struct._element* [ null, %104 ], [ %112, %105 ], !dbg !1975
  store %struct._element* %114, %struct._element** %8, align 8, !dbg !1977
  br label %115, !dbg !1978

; <label>:115:                                    ; preds = %248, %113
  %116 = load %struct._element*, %struct._element** %8, align 8, !dbg !1979
  %117 = icmp ne %struct._element* %116, null, !dbg !1982
  br i1 %117, label %118, label %252, !dbg !1982

; <label>:118:                                    ; preds = %115
  %119 = load %struct._element*, %struct._element** %8, align 8, !dbg !1983
  %120 = getelementptr inbounds %struct._element, %struct._element* %119, i32 0, i32 2, !dbg !1985
  %121 = load i8*, i8** %120, align 8, !dbg !1985
  %122 = bitcast i8* %121 to %struct._virtual_server_group_entry*, !dbg !1986
  store %struct._virtual_server_group_entry* %122, %struct._virtual_server_group_entry** %7, align 8, !dbg !1987
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %12, metadata !1988, metadata !432), !dbg !1989
  %123 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !1990
  %124 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %123, i32 0, i32 1, !dbg !1991
  %125 = bitcast %union.anon.8* %124 to %struct.anon.9*, !dbg !1991
  %126 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %125, i32 0, i32 0, !dbg !1991
  %127 = bitcast %struct.sockaddr_storage* %12 to i8*, !dbg !1991
  %128 = bitcast %struct.sockaddr_storage* %126 to i8*, !dbg !1991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 128, i32 8, i1 false), !dbg !1991
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1992, metadata !432), !dbg !1993
  %129 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !1994
  %130 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %129, i32 0, i32 1, !dbg !1996
  %131 = bitcast %union.anon.8* %130 to %struct.anon.9*, !dbg !1996
  %132 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %131, i32 0, i32 1, !dbg !1996
  %133 = load i32, i32* %132, align 8, !dbg !1996
  %134 = icmp ne i32 %133, 0, !dbg !1994
  br i1 %134, label %172, label %135, !dbg !1997

; <label>:135:                                    ; preds = %118
  %136 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !1998
  %137 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %136, i32 0, i32 1, !dbg !2001
  %138 = bitcast %union.anon.8* %137 to %struct.anon.9*, !dbg !2001
  %139 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %138, i32 0, i32 0, !dbg !2001
  %140 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %139, i32 0, i32 0, !dbg !2002
  %141 = load i16, i16* %140, align 8, !dbg !2002
  %142 = zext i16 %141 to i32, !dbg !1998
  %143 = icmp eq i32 %142, 10, !dbg !2003
  br i1 %143, label %144, label %152, !dbg !2004

; <label>:144:                                    ; preds = %135
  %145 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2005
  %146 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %145, i32 0, i32 1, !dbg !2006
  %147 = bitcast %union.anon.8* %146 to %struct.anon.9*, !dbg !2006
  %148 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %147, i32 0, i32 0, !dbg !2006
  %149 = bitcast %struct.sockaddr_storage* %148 to %struct.sockaddr_in6*, !dbg !2007
  %150 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %149, i32 0, i32 3, !dbg !2007
  %151 = bitcast %struct.in6_addr* %150 to i8*, !dbg !2008
  store i8* %151, i8** %6, align 8, !dbg !2009
  br label %160, !dbg !2010

; <label>:152:                                    ; preds = %135
  %153 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2011
  %154 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %153, i32 0, i32 1, !dbg !2012
  %155 = bitcast %union.anon.8* %154 to %struct.anon.9*, !dbg !2012
  %156 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %155, i32 0, i32 0, !dbg !2012
  %157 = bitcast %struct.sockaddr_storage* %156 to %struct.sockaddr_in*, !dbg !2013
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %157, i32 0, i32 2, !dbg !2013
  %159 = bitcast %struct.in_addr* %158 to i8*, !dbg !2014
  store i8* %159, i8** %6, align 8, !dbg !2015
  br label %160

; <label>:160:                                    ; preds = %152, %144
  %161 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2016
  %162 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %161, i32 0, i32 1, !dbg !2018
  %163 = bitcast %union.anon.8* %162 to %struct.anon.9*, !dbg !2018
  %164 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %163, i32 0, i32 0, !dbg !2018
  %165 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %164, i32 0, i32 0, !dbg !2019
  %166 = load i16, i16* %165, align 8, !dbg !2019
  %167 = load i8*, i8** %6, align 8, !dbg !2020
  %168 = load i8*, i8** %5, align 8, !dbg !2021
  %169 = call zeroext i1 @inaddr_equal(i16 zeroext %166, i8* %167, i8* %168), !dbg !2022
  br i1 %169, label %170, label %171, !dbg !2023

; <label>:170:                                    ; preds = %160
  store i1 true, i1* %3, align 1, !dbg !2024
  br label %254, !dbg !2024

; <label>:171:                                    ; preds = %160
  br label %247, !dbg !2025

; <label>:172:                                    ; preds = %118
  %173 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %12, i32 0, i32 0, !dbg !2026
  %174 = load i16, i16* %173, align 8, !dbg !2026
  %175 = zext i16 %174 to i32, !dbg !2029
  %176 = icmp eq i32 %175, 2, !dbg !2030
  br i1 %176, label %177, label %212, !dbg !2031

; <label>:177:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata %struct.in_addr* %14, metadata !2032, metadata !432), !dbg !2034
  %178 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in*, !dbg !2035
  %179 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %178, i32 0, i32 2, !dbg !2035
  %180 = bitcast %struct.in_addr* %14 to i8*, !dbg !2035
  %181 = bitcast %struct.in_addr* %179 to i8*, !dbg !2035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 4, i32 4, i1 false), !dbg !2035
  %182 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0, !dbg !2036
  %183 = load i32, i32* %182, align 4, !dbg !2036
  %184 = call i32 @ntohl(i32 %183) #1, !dbg !2037
  %185 = and i32 %184, 255, !dbg !2038
  store i32 %185, i32* %13, align 4, !dbg !2039
  %186 = load i32, i32* %11, align 4, !dbg !2040
  %187 = load i32, i32* %13, align 4, !dbg !2042
  %188 = icmp ult i32 %186, %187, !dbg !2043
  br i1 %188, label %199, label %189, !dbg !2044

; <label>:189:                                    ; preds = %177
  %190 = load i32, i32* %11, align 4, !dbg !2045
  %191 = load i32, i32* %13, align 4, !dbg !2047
  %192 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2048
  %193 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %192, i32 0, i32 1, !dbg !2049
  %194 = bitcast %union.anon.8* %193 to %struct.anon.9*, !dbg !2049
  %195 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %194, i32 0, i32 1, !dbg !2049
  %196 = load i32, i32* %195, align 8, !dbg !2049
  %197 = add i32 %191, %196, !dbg !2050
  %198 = icmp ugt i32 %190, %197, !dbg !2051
  br i1 %198, label %199, label %200, !dbg !2052

; <label>:199:                                    ; preds = %189, %177
  br label %248, !dbg !2053

; <label>:200:                                    ; preds = %189
  %201 = call i32 @htonl(i32 -256) #1, !dbg !2054
  %202 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0, !dbg !2055
  %203 = load i32, i32* %202, align 4, !dbg !2056
  %204 = and i32 %203, %201, !dbg !2056
  store i32 %204, i32* %202, align 4, !dbg !2056
  %205 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0, !dbg !2057
  %206 = load i32, i32* %205, align 4, !dbg !2057
  %207 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0, !dbg !2059
  %208 = load i32, i32* %207, align 4, !dbg !2059
  %209 = icmp ne i32 %206, %208, !dbg !2060
  br i1 %209, label %210, label %211, !dbg !2061

; <label>:210:                                    ; preds = %200
  br label %248, !dbg !2062

; <label>:211:                                    ; preds = %200
  br label %246, !dbg !2063

; <label>:212:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata %struct.in6_addr* %15, metadata !2064, metadata !432), !dbg !2066
  %213 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in6*, !dbg !2067
  %214 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %213, i32 0, i32 3, !dbg !2067
  %215 = bitcast %struct.in6_addr* %15 to i8*, !dbg !2067
  %216 = bitcast %struct.in6_addr* %214 to i8*, !dbg !2067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* %216, i64 16, i32 4, i1 false), !dbg !2067
  %217 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0, !dbg !2068
  %218 = bitcast %union.anon.7* %217 to [8 x i16]*, !dbg !2069
  %219 = getelementptr inbounds [8 x i16], [8 x i16]* %218, i64 0, i64 7, !dbg !2070
  %220 = load i16, i16* %219, align 2, !dbg !2070
  %221 = call zeroext i16 @ntohs(i16 zeroext %220) #1, !dbg !2071
  %222 = zext i16 %221 to i32, !dbg !2071
  store i32 %222, i32* %13, align 4, !dbg !2072
  %223 = load i32, i32* %11, align 4, !dbg !2073
  %224 = load i32, i32* %13, align 4, !dbg !2075
  %225 = icmp ult i32 %223, %224, !dbg !2076
  br i1 %225, label %236, label %226, !dbg !2077

; <label>:226:                                    ; preds = %212
  %227 = load i32, i32* %11, align 4, !dbg !2078
  %228 = load i32, i32* %13, align 4, !dbg !2080
  %229 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2081
  %230 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %229, i32 0, i32 1, !dbg !2082
  %231 = bitcast %union.anon.8* %230 to %struct.anon.9*, !dbg !2082
  %232 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %231, i32 0, i32 1, !dbg !2082
  %233 = load i32, i32* %232, align 8, !dbg !2082
  %234 = add i32 %228, %233, !dbg !2083
  %235 = icmp ugt i32 %227, %234, !dbg !2084
  br i1 %235, label %236, label %237, !dbg !2085

; <label>:236:                                    ; preds = %226, %212
  br label %248, !dbg !2086

; <label>:237:                                    ; preds = %226
  %238 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0, !dbg !2087
  %239 = bitcast %union.anon.7* %238 to [8 x i16]*, !dbg !2088
  %240 = getelementptr inbounds [8 x i16], [8 x i16]* %239, i64 0, i64 7, !dbg !2089
  store i16 0, i16* %240, align 2, !dbg !2090
  %241 = bitcast %struct.in6_addr* %15 to i8*, !dbg !2091
  %242 = bitcast %struct.in6_addr* %10 to i8*, !dbg !2093
  %243 = call zeroext i1 @inaddr_equal(i16 zeroext 10, i8* %241, i8* %242), !dbg !2094
  br i1 %243, label %245, label %244, !dbg !2095

; <label>:244:                                    ; preds = %237
  br label %248, !dbg !2096

; <label>:245:                                    ; preds = %237
  br label %246

; <label>:246:                                    ; preds = %245, %211
  store i1 true, i1* %3, align 1, !dbg !2097
  br label %254, !dbg !2097

; <label>:247:                                    ; preds = %171
  br label %248, !dbg !2098

; <label>:248:                                    ; preds = %247, %244, %236, %210, %199
  %249 = load %struct._element*, %struct._element** %8, align 8, !dbg !2099
  %250 = getelementptr inbounds %struct._element, %struct._element* %249, i32 0, i32 0, !dbg !2101
  %251 = load %struct._element*, %struct._element** %250, align 8, !dbg !2101
  store %struct._element* %251, %struct._element** %8, align 8, !dbg !2102
  br label %115, !dbg !2103, !llvm.loop !2104

; <label>:252:                                    ; preds = %115
  br label %253, !dbg !2106

; <label>:253:                                    ; preds = %252, %55
  store i1 false, i1* %3, align 1, !dbg !2107
  br label %254, !dbg !2107

; <label>:254:                                    ; preds = %253, %246, %170, %54, %41
  %255 = load i1, i1* %3, align 1, !dbg !2108
  ret i1 %255, !dbg !2108
}

; Function Attrs: nounwind uwtable
define void @install_checkers_keyword() #0 !dbg !2109 {
  call void @install_misc_check_keyword(), !dbg !2110
  call void @install_smtp_check_keyword(), !dbg !2111
  call void @install_tcp_check_keyword(), !dbg !2112
  call void @install_http_check_keyword(), !dbg !2113
  call void @install_ssl_check_keyword(), !dbg !2114
  call void @install_dns_check_keyword(), !dbg !2115
  ret void, !dbg !2116
}

declare void @install_misc_check_keyword() #2

declare void @install_smtp_check_keyword() #2

declare void @install_tcp_check_keyword() #2

declare void @install_http_check_keyword() #2

declare void @install_ssl_check_keyword() #2

declare void @install_dns_check_keyword() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ip6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #5 !dbg !2117 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !2120, metadata !432), !dbg !2121
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %4, metadata !2122, metadata !432), !dbg !2123
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !2124
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0, !dbg !2125
  %7 = bitcast %union.anon.7* %6 to [4 x i32]*, !dbg !2126
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !2124
  %9 = load i32, i32* %8, align 4, !dbg !2124
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !2127
  %11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !2128
  %12 = bitcast %union.anon.7* %11 to [4 x i32]*, !dbg !2129
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0, !dbg !2127
  %14 = load i32, i32* %13, align 4, !dbg !2127
  %15 = xor i32 %9, %14, !dbg !2130
  %16 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !2131
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0, !dbg !2132
  %18 = bitcast %union.anon.7* %17 to [4 x i32]*, !dbg !2133
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1, !dbg !2131
  %20 = load i32, i32* %19, align 4, !dbg !2131
  %21 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !2134
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0, !dbg !2135
  %23 = bitcast %union.anon.7* %22 to [4 x i32]*, !dbg !2136
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1, !dbg !2134
  %25 = load i32, i32* %24, align 4, !dbg !2134
  %26 = xor i32 %20, %25, !dbg !2137
  %27 = or i32 %15, %26, !dbg !2138
  %28 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !2139
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !2140
  %30 = bitcast %union.anon.7* %29 to [4 x i32]*, !dbg !2141
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 2, !dbg !2139
  %32 = load i32, i32* %31, align 4, !dbg !2139
  %33 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !2142
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %33, i32 0, i32 0, !dbg !2143
  %35 = bitcast %union.anon.7* %34 to [4 x i32]*, !dbg !2144
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 2, !dbg !2142
  %37 = load i32, i32* %36, align 4, !dbg !2142
  %38 = xor i32 %32, %37, !dbg !2145
  %39 = or i32 %27, %38, !dbg !2146
  %40 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !2147
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0, !dbg !2148
  %42 = bitcast %union.anon.7* %41 to [4 x i32]*, !dbg !2149
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3, !dbg !2147
  %44 = load i32, i32* %43, align 4, !dbg !2147
  %45 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !2150
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0, !dbg !2151
  %47 = bitcast %union.anon.7* %46 to [4 x i32]*, !dbg !2152
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 3, !dbg !2150
  %49 = load i32, i32* %48, align 4, !dbg !2150
  %50 = xor i32 %44, %49, !dbg !2153
  %51 = or i32 %39, %50, !dbg !2154
  %52 = icmp eq i32 %51, 0, !dbg !2155
  %53 = zext i1 %52 to i32, !dbg !2155
  ret i32 %53, !dbg !2156
}

declare i32 @inet_stosockaddr(i8*, i8*, %struct.sockaddr_storage*) #2

declare i8* @strvec_slot(%struct._vector*, i64) #2

declare zeroext i1 @read_unsigned_strvec(%struct._vector*, i64, i32*, i32, i32, i1 zeroext) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #7

declare zeroext i1 @read_timer(%struct._vector*, i64, i64*, i64, i64, i1 zeroext) #2

declare i32 @check_true_false(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @inaddr_equal(i16 zeroext, i8*, i8*) #5 !dbg !2157 {
  %4 = alloca i1, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.in_addr*, align 8
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2160, metadata !432), !dbg !2161
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2162, metadata !432), !dbg !2163
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2164, metadata !432), !dbg !2165
  %12 = load i16, i16* %5, align 2, !dbg !2166
  %13 = zext i16 %12 to i32, !dbg !2166
  %14 = icmp eq i32 %13, 10, !dbg !2168
  br i1 %14, label %15, label %26, !dbg !2169

; <label>:15:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %8, metadata !2170, metadata !432), !dbg !2172
  %16 = load i8*, i8** %6, align 8, !dbg !2173
  %17 = bitcast i8* %16 to %struct.in6_addr*, !dbg !2174
  store %struct.in6_addr* %17, %struct.in6_addr** %8, align 8, !dbg !2172
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %9, metadata !2175, metadata !432), !dbg !2176
  %18 = load i8*, i8** %7, align 8, !dbg !2177
  %19 = bitcast i8* %18 to %struct.in6_addr*, !dbg !2178
  store %struct.in6_addr* %19, %struct.in6_addr** %9, align 8, !dbg !2176
  %20 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8, !dbg !2179
  %21 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8, !dbg !2181
  %22 = call i32 @__ip6_addr_equal(%struct.in6_addr* %20, %struct.in6_addr* %21), !dbg !2182
  %23 = icmp ne i32 %22, 0, !dbg !2182
  br i1 %23, label %24, label %25, !dbg !2183

; <label>:24:                                     ; preds = %15
  store i1 true, i1* %4, align 1, !dbg !2184
  br label %46, !dbg !2184

; <label>:25:                                     ; preds = %15
  br label %45, !dbg !2185

; <label>:26:                                     ; preds = %3
  %27 = load i16, i16* %5, align 2, !dbg !2186
  %28 = zext i16 %27 to i32, !dbg !2186
  %29 = icmp eq i32 %28, 2, !dbg !2189
  br i1 %29, label %30, label %44, !dbg !2186

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.in_addr** %10, metadata !2190, metadata !432), !dbg !2192
  %31 = load i8*, i8** %6, align 8, !dbg !2193
  %32 = bitcast i8* %31 to %struct.in_addr*, !dbg !2194
  store %struct.in_addr* %32, %struct.in_addr** %10, align 8, !dbg !2192
  call void @llvm.dbg.declare(metadata %struct.in_addr** %11, metadata !2195, metadata !432), !dbg !2196
  %33 = load i8*, i8** %7, align 8, !dbg !2197
  %34 = bitcast i8* %33 to %struct.in_addr*, !dbg !2198
  store %struct.in_addr* %34, %struct.in_addr** %11, align 8, !dbg !2196
  %35 = load %struct.in_addr*, %struct.in_addr** %10, align 8, !dbg !2199
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %35, i32 0, i32 0, !dbg !2201
  %37 = load i32, i32* %36, align 4, !dbg !2201
  %38 = load %struct.in_addr*, %struct.in_addr** %11, align 8, !dbg !2202
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0, !dbg !2203
  %40 = load i32, i32* %39, align 4, !dbg !2203
  %41 = icmp eq i32 %37, %40, !dbg !2204
  br i1 %41, label %42, label %43, !dbg !2205

; <label>:42:                                     ; preds = %30
  store i1 true, i1* %4, align 1, !dbg !2206
  br label %46, !dbg !2206

; <label>:43:                                     ; preds = %30
  br label %44, !dbg !2207

; <label>:44:                                     ; preds = %43, %26
  br label %45

; <label>:45:                                     ; preds = %44, %25
  store i1 false, i1* %4, align 1, !dbg !2208
  br label %46, !dbg !2208

; <label>:46:                                     ; preds = %45, %42, %24
  %47 = load i1, i1* %4, align 1, !dbg !2209
  ret i1 %47, !dbg !2209
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!426, !427}
!llvm.ident = !{!428}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !55, globals: !421)
!1 = !DIFile(filename: "[inter]keepalived--check--check_api.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !24, !40}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "THREAD_READ", value: 0)
!7 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!8 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!9 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!10 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!11 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!12 = !DIEnumerator(name: "THREAD_READY", value: 6)
!13 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!14 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!15 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!16 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!17 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!18 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!19 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!20 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!21 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!22 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!23 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 44, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!27 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!28 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!29 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!30 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!31 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!32 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!33 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!34 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!35 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!36 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!37 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!38 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!39 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !41, line: 53, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!43 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!44 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!45 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!46 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!47 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!48 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!49 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!50 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!51 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!52 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!53 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!54 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!55 = !{!56, !378, !398, !407, !65, !186, !79, !419, !420}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !58, line: 60, baseType: !59)
!58 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !58, line: 40, size: 1024, align: 64, elements: !60)
!60 = !{!61, !66, !132, !247, !251, !354, !355, !356, !357, !358, !359, !370, !371, !372, !373, !374, !375, !376, !377}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !59, file: !58, line: 41, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !59, file: !58, line: 42, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !65}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !72, line: 48, baseType: !73)
!72 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !74, line: 241, size: 1728, align: 64, elements: !75)
!74 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!75 = !{!76, !78, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !99, !100, !101, !102, !106, !108, !110, !114, !117, !119, !120, !121, !122, !123, !127, !128}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !74, line: 242, baseType: !77, size: 32, align: 32)
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !73, file: !74, line: 247, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !73, file: !74, line: 248, baseType: !79, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !73, file: !74, line: 249, baseType: !79, size: 64, align: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !73, file: !74, line: 250, baseType: !79, size: 64, align: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !73, file: !74, line: 251, baseType: !79, size: 64, align: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !73, file: !74, line: 252, baseType: !79, size: 64, align: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !73, file: !74, line: 253, baseType: !79, size: 64, align: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !73, file: !74, line: 254, baseType: !79, size: 64, align: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !73, file: !74, line: 256, baseType: !79, size: 64, align: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !73, file: !74, line: 257, baseType: !79, size: 64, align: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !73, file: !74, line: 258, baseType: !79, size: 64, align: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !73, file: !74, line: 260, baseType: !92, size: 64, align: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !74, line: 156, size: 192, align: 64, elements: !94)
!94 = !{!95, !96, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !93, file: !74, line: 157, baseType: !92, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !93, file: !74, line: 158, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !93, file: !74, line: 162, baseType: !77, size: 32, align: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !73, file: !74, line: 262, baseType: !97, size: 64, align: 64, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !73, file: !74, line: 264, baseType: !77, size: 32, align: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !73, file: !74, line: 268, baseType: !77, size: 32, align: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !73, file: !74, line: 270, baseType: !103, size: 64, align: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 131, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!105 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !73, file: !74, line: 274, baseType: !107, size: 16, align: 16, offset: 1024)
!107 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !73, file: !74, line: 275, baseType: !109, size: 8, align: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !73, file: !74, line: 276, baseType: !111, size: 8, align: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !73, file: !74, line: 280, baseType: !115, size: 64, align: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !74, line: 150, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !74, line: 289, baseType: !118, size: 64, align: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 132, baseType: !105)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !73, file: !74, line: 297, baseType: !65, size: 64, align: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !73, file: !74, line: 298, baseType: !65, size: 64, align: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !73, file: !74, line: 299, baseType: !65, size: 64, align: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !73, file: !74, line: 300, baseType: !65, size: 64, align: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !73, file: !74, line: 302, baseType: !124, size: 64, align: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 216, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !73, file: !74, line: 303, baseType: !77, size: 32, align: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !73, file: !74, line: 305, baseType: !129, size: 160, align: 8, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !59, file: !58, line: 43, baseType: !133, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!77, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !138)
!138 = !{!139, !140, !142, !215, !216, !217, !227, !240, !242}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !4, line: 79, baseType: !126, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !4, line: 80, baseType: !141, size: 32, align: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !137, file: !4, line: 81, baseType: !143, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !145)
!145 = !{!146, !158, !159, !160, !161, !169, !170, !171, !189, !190, !193, !206, !207, !208, !209, !210, !211, !212, !213}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !144, file: !4, line: 113, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !148, line: 109, baseType: !149)
!148 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !148, line: 106, size: 64, align: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !149, file: !148, line: 108, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !148, line: 97, size: 192, align: 64, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !153, file: !148, line: 99, baseType: !126, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !153, file: !148, line: 102, baseType: !152, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !153, file: !148, line: 103, baseType: !152, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !144, file: !4, line: 114, baseType: !147, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !144, file: !4, line: 115, baseType: !147, size: 64, align: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !144, file: !4, line: 116, baseType: !147, size: 64, align: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !144, file: !4, line: 117, baseType: !162, size: 128, align: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !163, line: 62, baseType: !164)
!163 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !163, line: 60, size: 128, align: 64, elements: !165)
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !163, line: 61, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !163, line: 61, baseType: !167, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !144, file: !4, line: 121, baseType: !162, size: 128, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !144, file: !4, line: 122, baseType: !162, size: 128, align: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !144, file: !4, line: 124, baseType: !172, size: 64, align: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !173, line: 31, baseType: !174)
!173 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !173, line: 39, size: 320, align: 64, elements: !176)
!176 = !{!177, !184, !185, !187, !188}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !175, file: !173, line: 40, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !173, line: 33, size: 192, align: 64, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !173, line: 34, baseType: !178, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !179, file: !173, line: 35, baseType: !178, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !179, file: !173, line: 36, baseType: !65, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !175, file: !173, line: 41, baseType: !178, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !175, file: !173, line: 42, baseType: !186, size: 32, align: 32, offset: 128)
!186 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !175, file: !173, line: 43, baseType: !62, size: 64, align: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !175, file: !173, line: 44, baseType: !67, size: 64, align: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !144, file: !4, line: 127, baseType: !147, size: 64, align: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !144, file: !4, line: 128, baseType: !191, size: 64, align: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !144, file: !4, line: 129, baseType: !194, size: 64, align: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !197)
!197 = !{!198, !201, !202, !203, !204}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !196, file: !4, line: 103, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !137)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !196, file: !4, line: 104, baseType: !199, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !4, line: 105, baseType: !126, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !196, file: !4, line: 106, baseType: !77, size: 32, align: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !196, file: !4, line: 108, baseType: !205, size: 192, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !148, line: 104, baseType: !153)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !144, file: !4, line: 130, baseType: !186, size: 32, align: 32, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !144, file: !4, line: 131, baseType: !186, size: 32, align: 32, offset: 928)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !144, file: !4, line: 132, baseType: !77, size: 32, align: 32, offset: 960)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !144, file: !4, line: 135, baseType: !77, size: 32, align: 32, offset: 992)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !144, file: !4, line: 136, baseType: !199, size: 64, align: 64, offset: 1024)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !144, file: !4, line: 146, baseType: !126, size: 64, align: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !144, file: !4, line: 147, baseType: !126, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !144, file: !4, line: 148, baseType: !214, size: 8, align: 8, offset: 1216)
!214 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !137, file: !4, line: 82, baseType: !133, size: 64, align: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !137, file: !4, line: 83, baseType: !65, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !137, file: !4, line: 84, baseType: !218, size: 128, align: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !219, line: 31, baseType: !220)
!219 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !221, line: 30, size: 128, align: 64, elements: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !220, file: !221, line: 32, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !104, line: 139, baseType: !105)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !220, file: !221, line: 33, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !104, line: 141, baseType: !105)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !137, file: !4, line: 92, baseType: !228, size: 64, align: 32, offset: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !4, line: 85, size: 64, align: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !228, file: !4, line: 86, baseType: !77, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !228, file: !4, line: 87, baseType: !77, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !228, file: !4, line: 91, baseType: !233, size: 64, align: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !4, line: 88, size: 64, align: 32, elements: !234)
!234 = !{!235, !239}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !233, file: !4, line: 89, baseType: !236, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !237, line: 98, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !104, line: 133, baseType: !77)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !233, file: !4, line: 90, baseType: !77, size: 32, align: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !137, file: !4, line: 93, baseType: !241, size: 64, align: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !4, line: 95, baseType: !243, size: 192, align: 64, offset: 576)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !4, line: 95, size: 192, align: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !243, file: !4, line: 96, baseType: !205, size: 192, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !4, line: 97, baseType: !162, size: 128, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !59, file: !58, line: 44, baseType: !248, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!214, !65, !65}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !59, file: !58, line: 45, baseType: !252, size: 64, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !254, line: 180, baseType: !255)
!254 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !254, line: 131, size: 2560, align: 64, elements: !256)
!256 = !{!257, !258, !266, !278, !281, !322, !324, !325, !326, !327, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !255, file: !254, line: 132, baseType: !79, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !255, file: !254, line: 133, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !254, line: 128, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !254, line: 124, size: 192, align: 64, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !261, file: !254, line: 125, baseType: !79, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !261, file: !254, line: 126, baseType: !172, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !261, file: !254, line: 127, baseType: !172, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !255, file: !254, line: 134, baseType: !267, size: 1024, align: 64, offset: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !268, line: 166, size: 1024, align: 64, elements: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!269 = !{!270, !273, !277}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !267, file: !268, line: 168, baseType: !271, size: 16, align: 16)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !272, line: 28, baseType: !107)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !267, file: !268, line: 169, baseType: !274, size: 944, align: 8, offset: 16)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 944, align: 8, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 118)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !267, file: !268, line: 170, baseType: !126, size: 64, align: 64, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !255, file: !254, line: 135, baseType: !279, size: 32, align: 32, offset: 1152)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !280, line: 51, baseType: !186)
!280 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !255, file: !254, line: 136, baseType: !282, size: 64, align: 64, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !254, line: 102, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !254, line: 62, size: 1920, align: 64, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !284, file: !254, line: 63, baseType: !267, size: 1024, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !284, file: !254, line: 64, baseType: !77, size: 32, align: 32, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !284, file: !254, line: 65, baseType: !77, size: 32, align: 32, offset: 1056)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !284, file: !254, line: 66, baseType: !77, size: 32, align: 32, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !284, file: !254, line: 68, baseType: !186, size: 32, align: 32, offset: 1120)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !284, file: !254, line: 69, baseType: !279, size: 32, align: 32, offset: 1152)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !284, file: !254, line: 70, baseType: !279, size: 32, align: 32, offset: 1184)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !284, file: !254, line: 71, baseType: !77, size: 32, align: 32, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !284, file: !254, line: 74, baseType: !295, size: 64, align: 64, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !297, line: 65, baseType: !298)
!297 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !297, line: 59, size: 192, align: 64, elements: !299)
!299 = !{!300, !302, !303, !304, !307}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !298, file: !297, line: 60, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !298, file: !297, line: 61, baseType: !77, size: 32, align: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !297, line: 62, baseType: !77, size: 32, align: 32, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !298, file: !297, line: 63, baseType: !305, size: 32, align: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !237, line: 80, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !104, line: 125, baseType: !186)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !298, file: !297, line: 64, baseType: !308, size: 32, align: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !237, line: 65, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !104, line: 126, baseType: !186)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !284, file: !254, line: 75, baseType: !295, size: 64, align: 64, offset: 1344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !284, file: !254, line: 76, baseType: !77, size: 32, align: 32, offset: 1408)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !284, file: !254, line: 77, baseType: !126, size: 64, align: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !284, file: !254, line: 78, baseType: !126, size: 64, align: 64, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !284, file: !254, line: 79, baseType: !186, size: 32, align: 32, offset: 1600)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !284, file: !254, line: 80, baseType: !126, size: 64, align: 64, offset: 1664)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !284, file: !254, line: 81, baseType: !77, size: 32, align: 32, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !284, file: !254, line: 83, baseType: !214, size: 8, align: 8, offset: 1760)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !284, file: !254, line: 84, baseType: !186, size: 32, align: 32, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !284, file: !254, line: 85, baseType: !214, size: 8, align: 8, offset: 1824)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !284, file: !254, line: 86, baseType: !214, size: 8, align: 8, offset: 1832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !284, file: !254, line: 87, baseType: !79, size: 64, align: 64, offset: 1856)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !255, file: !254, line: 137, baseType: !323, size: 16, align: 16, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !280, line: 49, baseType: !107)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !255, file: !254, line: 138, baseType: !323, size: 16, align: 16, offset: 1296)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !255, file: !254, line: 139, baseType: !214, size: 8, align: 8, offset: 1312)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !255, file: !254, line: 140, baseType: !77, size: 32, align: 32, offset: 1344)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !255, file: !254, line: 142, baseType: !328, size: 128, align: 8, offset: 1376)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, align: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !254, line: 143, baseType: !279, size: 32, align: 32, offset: 1504)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !255, file: !254, line: 144, baseType: !279, size: 32, align: 32, offset: 1536)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !255, file: !254, line: 146, baseType: !328, size: 128, align: 8, offset: 1568)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !255, file: !254, line: 148, baseType: !186, size: 32, align: 32, offset: 1696)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !255, file: !254, line: 149, baseType: !279, size: 32, align: 32, offset: 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !255, file: !254, line: 151, baseType: !79, size: 64, align: 64, offset: 1792)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !255, file: !254, line: 153, baseType: !77, size: 32, align: 32, offset: 1856)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !255, file: !254, line: 154, baseType: !172, size: 64, align: 64, offset: 1920)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !255, file: !254, line: 155, baseType: !77, size: 32, align: 32, offset: 1984)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !255, file: !254, line: 156, baseType: !214, size: 8, align: 8, offset: 2016)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !255, file: !254, line: 157, baseType: !214, size: 8, align: 8, offset: 2024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !255, file: !254, line: 158, baseType: !214, size: 8, align: 8, offset: 2032)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !255, file: !254, line: 160, baseType: !126, size: 64, align: 64, offset: 2048)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !255, file: !254, line: 161, baseType: !126, size: 64, align: 64, offset: 2112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !255, file: !254, line: 162, baseType: !186, size: 32, align: 32, offset: 2176)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !255, file: !254, line: 163, baseType: !126, size: 64, align: 64, offset: 2240)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !255, file: !254, line: 164, baseType: !295, size: 64, align: 64, offset: 2304)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !255, file: !254, line: 165, baseType: !295, size: 64, align: 64, offset: 2368)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !255, file: !254, line: 166, baseType: !186, size: 32, align: 32, offset: 2432)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !255, file: !254, line: 167, baseType: !186, size: 32, align: 32, offset: 2464)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !255, file: !254, line: 168, baseType: !77, size: 32, align: 32, offset: 2496)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !255, file: !254, line: 169, baseType: !214, size: 8, align: 8, offset: 2528)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !255, file: !254, line: 170, baseType: !214, size: 8, align: 8, offset: 2536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !59, file: !58, line: 46, baseType: !282, size: 64, align: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !58, line: 47, baseType: !65, size: 64, align: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !59, file: !58, line: 48, baseType: !214, size: 8, align: 8, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !59, file: !58, line: 49, baseType: !214, size: 8, align: 8, offset: 456)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !59, file: !58, line: 50, baseType: !214, size: 8, align: 8, offset: 464)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !59, file: !58, line: 51, baseType: !360, size: 64, align: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !362, line: 50, baseType: !363)
!362 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !362, line: 42, size: 2240, align: 64, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !363, file: !362, line: 43, baseType: !267, size: 1024, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !363, file: !362, line: 44, baseType: !267, size: 1024, align: 64, offset: 1024)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !363, file: !362, line: 45, baseType: !328, size: 128, align: 8, offset: 2048)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !363, file: !362, line: 46, baseType: !186, size: 32, align: 32, offset: 2176)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !363, file: !362, line: 48, baseType: !186, size: 32, align: 32, offset: 2208)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !59, file: !58, line: 52, baseType: !77, size: 32, align: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !59, file: !58, line: 53, baseType: !126, size: 64, align: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !59, file: !58, line: 54, baseType: !126, size: 64, align: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !59, file: !58, line: 55, baseType: !186, size: 32, align: 32, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !59, file: !58, line: 56, baseType: !126, size: 64, align: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !59, file: !58, line: 57, baseType: !186, size: 32, align: 32, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !59, file: !58, line: 58, baseType: !186, size: 32, align: 32, offset: 928)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !59, file: !58, line: 59, baseType: !126, size: 64, align: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !381, line: 211, size: 128, align: 32, elements: !382)
!381 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !380, file: !381, line: 220, baseType: !384, size: 128, align: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 213, size: 128, align: 32, elements: !385)
!385 = !{!386, !390, !394}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !384, file: !381, line: 215, baseType: !387, size: 128, align: 8)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, align: 8, elements: !329)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !280, line: 48, baseType: !389)
!389 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !384, file: !381, line: 217, baseType: !391, size: 128, align: 16)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, align: 16, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 8)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !384, file: !381, line: 218, baseType: !395, size: 128, align: 32)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, align: 32, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 4)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !381, line: 254, size: 224, align: 32, elements: !400)
!400 = !{!401, !402, !404, !405, !406}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !399, file: !381, line: 256, baseType: !271, size: 16, align: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !399, file: !381, line: 257, baseType: !403, size: 16, align: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !381, line: 119, baseType: !323)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !399, file: !381, line: 258, baseType: !279, size: 32, align: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !399, file: !381, line: 259, baseType: !380, size: 128, align: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !399, file: !381, line: 260, baseType: !279, size: 32, align: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !381, line: 239, size: 128, align: 32, elements: !409)
!409 = !{!410, !411, !412, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !408, file: !381, line: 241, baseType: !271, size: 16, align: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !408, file: !381, line: 242, baseType: !403, size: 16, align: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !408, file: !381, line: 243, baseType: !413, size: 32, align: 32, offset: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !381, line: 31, size: 32, align: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !413, file: !381, line: 33, baseType: !416, size: 32, align: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !381, line: 30, baseType: !279)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !408, file: !381, line: 246, baseType: !418, size: 64, align: 8, offset: 64)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, align: 8, elements: !392)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!421 = !{!422, !424}
!422 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !423, line: 150, type: !172, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!423 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!424 = distinct !DIGlobalVariable(name: "checkers_queue", scope: !0, file: !425, line: 53, type: !172, isLocal: false, isDefinition: true, variable: %struct._list** @checkers_queue)
!425 = !DIFile(filename: "check_api.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!426 = !{i32 2, !"Dwarf Version", i32 4}
!427 = !{i32 2, !"Debug Info Version", i32 3}
!428 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!429 = distinct !DISubprogram(name: "dump_connection_opts", scope: !425, file: !425, line: 82, type: !68, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!430 = !{}
!431 = !DILocalVariable(name: "fp", arg: 1, scope: !429, file: !425, line: 82, type: !70)
!432 = !DIExpression()
!433 = !DILocation(line: 82, column: 28, scope: !429)
!434 = !DILocalVariable(name: "data", arg: 2, scope: !429, file: !425, line: 82, type: !65)
!435 = !DILocation(line: 82, column: 38, scope: !429)
!436 = !DILocalVariable(name: "conn", scope: !429, file: !425, line: 84, type: !360)
!437 = !DILocation(line: 84, column: 15, scope: !429)
!438 = !DILocation(line: 84, column: 22, scope: !429)
!439 = !DILocation(line: 86, column: 13, scope: !429)
!440 = !DILocation(line: 86, column: 56, scope: !429)
!441 = !DILocation(line: 86, column: 62, scope: !429)
!442 = !DILocation(line: 86, column: 35, scope: !429)
!443 = !DILocation(line: 86, column: 2, scope: !444)
!444 = !DILexicalBlockFile(scope: !429, file: !425, discriminator: 1)
!445 = !DILocation(line: 87, column: 6, scope: !446)
!446 = distinct !DILexicalBlock(scope: !429, file: !425, line: 87, column: 6)
!447 = !DILocation(line: 87, column: 12, scope: !446)
!448 = !DILocation(line: 87, column: 19, scope: !446)
!449 = !DILocation(line: 87, column: 6, scope: !429)
!450 = !DILocation(line: 88, column: 14, scope: !446)
!451 = !DILocation(line: 88, column: 60, scope: !446)
!452 = !DILocation(line: 88, column: 66, scope: !446)
!453 = !DILocation(line: 88, column: 39, scope: !446)
!454 = !DILocation(line: 88, column: 3, scope: !455)
!455 = !DILexicalBlockFile(scope: !446, file: !425, discriminator: 1)
!456 = !DILocation(line: 88, column: 3, scope: !446)
!457 = !DILocation(line: 89, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !429, file: !425, line: 89, column: 6)
!459 = !DILocation(line: 89, column: 12, scope: !458)
!460 = !DILocation(line: 89, column: 6, scope: !429)
!461 = !DILocation(line: 90, column: 14, scope: !458)
!462 = !DILocation(line: 90, column: 40, scope: !458)
!463 = !DILocation(line: 90, column: 46, scope: !458)
!464 = !DILocation(line: 90, column: 3, scope: !458)
!465 = !DILocation(line: 92, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !429, file: !425, line: 92, column: 6)
!467 = !DILocation(line: 92, column: 12, scope: !466)
!468 = !DILocation(line: 92, column: 19, scope: !466)
!469 = !DILocation(line: 92, column: 6, scope: !429)
!470 = !DILocation(line: 93, column: 14, scope: !466)
!471 = !DILocation(line: 93, column: 36, scope: !466)
!472 = !DILocation(line: 93, column: 42, scope: !466)
!473 = !DILocation(line: 93, column: 3, scope: !466)
!474 = !DILocation(line: 95, column: 13, scope: !429)
!475 = !DILocation(line: 95, column: 38, scope: !429)
!476 = !DILocation(line: 95, column: 44, scope: !429)
!477 = !DILocation(line: 95, column: 57, scope: !429)
!478 = !DILocation(line: 95, column: 2, scope: !429)
!479 = !DILocation(line: 96, column: 1, scope: !429)
!480 = distinct !DISubprogram(name: "dump_checker_opts", scope: !425, file: !425, line: 99, type: !68, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!481 = !DILocalVariable(name: "fp", arg: 1, scope: !480, file: !425, line: 99, type: !70)
!482 = !DILocation(line: 99, column: 25, scope: !480)
!483 = !DILocalVariable(name: "data", arg: 2, scope: !480, file: !425, line: 99, type: !65)
!484 = !DILocation(line: 99, column: 35, scope: !480)
!485 = !DILocalVariable(name: "checker", scope: !480, file: !425, line: 101, type: !56)
!486 = !DILocation(line: 101, column: 13, scope: !480)
!487 = !DILocation(line: 101, column: 23, scope: !480)
!488 = !DILocalVariable(name: "conn", scope: !480, file: !425, line: 102, type: !360)
!489 = !DILocation(line: 102, column: 15, scope: !480)
!490 = !DILocation(line: 102, column: 22, scope: !480)
!491 = !DILocation(line: 102, column: 31, scope: !480)
!492 = !DILocation(line: 104, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !480, file: !425, line: 104, column: 6)
!494 = !DILocation(line: 104, column: 6, scope: !480)
!495 = !DILocation(line: 105, column: 14, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !425, line: 104, column: 12)
!497 = !DILocation(line: 105, column: 3, scope: !496)
!498 = !DILocation(line: 106, column: 24, scope: !496)
!499 = !DILocation(line: 106, column: 28, scope: !496)
!500 = !DILocation(line: 106, column: 3, scope: !496)
!501 = !DILocation(line: 107, column: 2, scope: !496)
!502 = !DILocation(line: 109, column: 13, scope: !480)
!503 = !DILocation(line: 109, column: 35, scope: !480)
!504 = !DILocation(line: 109, column: 44, scope: !480)
!505 = !DILocation(line: 109, column: 2, scope: !480)
!506 = !DILocation(line: 110, column: 13, scope: !480)
!507 = !DILocation(line: 110, column: 41, scope: !480)
!508 = !DILocation(line: 110, column: 50, scope: !480)
!509 = !DILocation(line: 110, column: 61, scope: !480)
!510 = !DILocation(line: 110, column: 2, scope: !480)
!511 = !DILocation(line: 111, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !480, file: !425, line: 111, column: 6)
!513 = !DILocation(line: 111, column: 15, scope: !512)
!514 = !DILocation(line: 111, column: 6, scope: !480)
!515 = !DILocation(line: 112, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !425, line: 111, column: 22)
!517 = !DILocation(line: 112, column: 42, scope: !516)
!518 = !DILocation(line: 112, column: 51, scope: !516)
!519 = !DILocation(line: 112, column: 3, scope: !516)
!520 = !DILocation(line: 113, column: 14, scope: !516)
!521 = !DILocation(line: 113, column: 43, scope: !516)
!522 = !DILocation(line: 113, column: 52, scope: !516)
!523 = !DILocation(line: 113, column: 71, scope: !516)
!524 = !DILocation(line: 113, column: 3, scope: !516)
!525 = !DILocation(line: 114, column: 2, scope: !516)
!526 = !DILocation(line: 115, column: 13, scope: !480)
!527 = !DILocation(line: 115, column: 36, scope: !480)
!528 = !DILocation(line: 115, column: 45, scope: !480)
!529 = !DILocation(line: 115, column: 52, scope: !480)
!530 = !DILocation(line: 115, column: 2, scope: !480)
!531 = !DILocation(line: 116, column: 1, scope: !480)
!532 = distinct !DISubprogram(name: "queue_checker", scope: !425, file: !425, line: 120, type: !533, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!533 = !DISubroutineType(types: !534)
!534 = !{!56, !62, !67, !535, !248, !65, !360}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!77, !199}
!538 = !DILocalVariable(name: "free_func", arg: 1, scope: !532, file: !425, line: 120, type: !62)
!539 = !DILocation(line: 120, column: 22, scope: !532)
!540 = !DILocalVariable(name: "dump_func", arg: 2, scope: !532, file: !425, line: 120, type: !67)
!541 = !DILocation(line: 120, column: 50, scope: !532)
!542 = !DILocalVariable(name: "launch", arg: 3, scope: !532, file: !425, line: 121, type: !535)
!543 = !DILocation(line: 121, column: 16, scope: !532)
!544 = !DILocalVariable(name: "compare", arg: 4, scope: !532, file: !425, line: 122, type: !248)
!545 = !DILocation(line: 122, column: 16, scope: !532)
!546 = !DILocalVariable(name: "data", arg: 5, scope: !532, file: !425, line: 123, type: !65)
!547 = !DILocation(line: 123, column: 16, scope: !532)
!548 = !DILocalVariable(name: "co", arg: 6, scope: !532, file: !425, line: 124, type: !360)
!549 = !DILocation(line: 124, column: 23, scope: !532)
!550 = !DILocalVariable(name: "vs", scope: !532, file: !425, line: 126, type: !252)
!551 = !DILocation(line: 126, column: 20, scope: !532)
!552 = !DILocation(line: 126, column: 27, scope: !532)
!553 = !DILocation(line: 126, column: 39, scope: !532)
!554 = !DILocation(line: 126, column: 44, scope: !532)
!555 = !DILocation(line: 126, column: 50, scope: !532)
!556 = !DILocation(line: 126, column: 25, scope: !532)
!557 = !DILocalVariable(name: "rs", scope: !532, file: !425, line: 127, type: !282)
!558 = !DILocation(line: 127, column: 17, scope: !532)
!559 = !DILocation(line: 127, column: 24, scope: !532)
!560 = !DILocation(line: 127, column: 28, scope: !532)
!561 = !DILocation(line: 127, column: 33, scope: !532)
!562 = !DILocation(line: 127, column: 39, scope: !532)
!563 = !DILocation(line: 127, column: 22, scope: !532)
!564 = !DILocalVariable(name: "checker", scope: !532, file: !425, line: 128, type: !56)
!565 = !DILocation(line: 128, column: 13, scope: !532)
!566 = !DILocation(line: 128, column: 38, scope: !532)
!567 = !DILocation(line: 128, column: 23, scope: !532)
!568 = !DILocation(line: 131, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !532, file: !425, line: 131, column: 6)
!570 = !DILocation(line: 131, column: 6, scope: !532)
!571 = !DILocation(line: 132, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !425, line: 131, column: 10)
!573 = !DILocation(line: 132, column: 7, scope: !572)
!574 = !DILocation(line: 132, column: 13, scope: !572)
!575 = !DILocation(line: 132, column: 17, scope: !572)
!576 = !DILocation(line: 133, column: 3, scope: !572)
!577 = !DILocation(line: 133, column: 7, scope: !572)
!578 = !DILocation(line: 133, column: 21, scope: !572)
!579 = !DILocation(line: 134, column: 2, scope: !572)
!580 = !DILocation(line: 136, column: 23, scope: !532)
!581 = !DILocation(line: 136, column: 2, scope: !532)
!582 = !DILocation(line: 136, column: 11, scope: !532)
!583 = !DILocation(line: 136, column: 21, scope: !532)
!584 = !DILocation(line: 137, column: 23, scope: !532)
!585 = !DILocation(line: 137, column: 2, scope: !532)
!586 = !DILocation(line: 137, column: 11, scope: !532)
!587 = !DILocation(line: 137, column: 21, scope: !532)
!588 = !DILocation(line: 138, column: 20, scope: !532)
!589 = !DILocation(line: 138, column: 2, scope: !532)
!590 = !DILocation(line: 138, column: 11, scope: !532)
!591 = !DILocation(line: 138, column: 18, scope: !532)
!592 = !DILocation(line: 139, column: 21, scope: !532)
!593 = !DILocation(line: 139, column: 2, scope: !532)
!594 = !DILocation(line: 139, column: 11, scope: !532)
!595 = !DILocation(line: 139, column: 19, scope: !532)
!596 = !DILocation(line: 140, column: 16, scope: !532)
!597 = !DILocation(line: 140, column: 2, scope: !532)
!598 = !DILocation(line: 140, column: 11, scope: !532)
!599 = !DILocation(line: 140, column: 14, scope: !532)
!600 = !DILocation(line: 141, column: 16, scope: !532)
!601 = !DILocation(line: 141, column: 2, scope: !532)
!602 = !DILocation(line: 141, column: 11, scope: !532)
!603 = !DILocation(line: 141, column: 14, scope: !532)
!604 = !DILocation(line: 142, column: 18, scope: !532)
!605 = !DILocation(line: 142, column: 2, scope: !532)
!606 = !DILocation(line: 142, column: 11, scope: !532)
!607 = !DILocation(line: 142, column: 16, scope: !532)
!608 = !DILocation(line: 143, column: 16, scope: !532)
!609 = !DILocation(line: 143, column: 2, scope: !532)
!610 = !DILocation(line: 143, column: 11, scope: !532)
!611 = !DILocation(line: 143, column: 14, scope: !532)
!612 = !DILocation(line: 144, column: 2, scope: !532)
!613 = !DILocation(line: 144, column: 11, scope: !532)
!614 = !DILocation(line: 144, column: 19, scope: !532)
!615 = !DILocation(line: 145, column: 2, scope: !532)
!616 = !DILocation(line: 145, column: 11, scope: !532)
!617 = !DILocation(line: 145, column: 17, scope: !532)
!618 = !DILocation(line: 146, column: 2, scope: !532)
!619 = !DILocation(line: 146, column: 11, scope: !532)
!620 = !DILocation(line: 146, column: 22, scope: !532)
!621 = !DILocation(line: 147, column: 2, scope: !532)
!622 = !DILocation(line: 147, column: 11, scope: !532)
!623 = !DILocation(line: 147, column: 18, scope: !532)
!624 = !DILocation(line: 148, column: 2, scope: !532)
!625 = !DILocation(line: 148, column: 11, scope: !532)
!626 = !DILocation(line: 148, column: 17, scope: !532)
!627 = !DILocation(line: 149, column: 2, scope: !532)
!628 = !DILocation(line: 149, column: 11, scope: !532)
!629 = !DILocation(line: 149, column: 30, scope: !532)
!630 = !DILocation(line: 150, column: 2, scope: !532)
!631 = !DILocation(line: 150, column: 11, scope: !532)
!632 = !DILocation(line: 150, column: 20, scope: !532)
!633 = !DILocation(line: 151, column: 2, scope: !532)
!634 = !DILocation(line: 151, column: 11, scope: !532)
!635 = !DILocation(line: 151, column: 17, scope: !532)
!636 = !DILocation(line: 152, column: 2, scope: !532)
!637 = !DILocation(line: 152, column: 11, scope: !532)
!638 = !DILocation(line: 152, column: 38, scope: !532)
!639 = !DILocation(line: 153, column: 2, scope: !532)
!640 = !DILocation(line: 153, column: 11, scope: !532)
!641 = !DILocation(line: 153, column: 25, scope: !532)
!642 = !DILocation(line: 156, column: 11, scope: !532)
!643 = !DILocation(line: 156, column: 27, scope: !532)
!644 = !DILocation(line: 156, column: 2, scope: !532)
!645 = !DILocation(line: 158, column: 9, scope: !532)
!646 = !DILocation(line: 158, column: 2, scope: !532)
!647 = distinct !DISubprogram(name: "dequeue_new_checker", scope: !425, file: !425, line: 162, type: !648, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!648 = !DISubroutineType(types: !649)
!649 = !{null}
!650 = !DILocalVariable(name: "checker", scope: !647, file: !425, line: 164, type: !56)
!651 = !DILocation(line: 164, column: 13, scope: !647)
!652 = !DILocation(line: 164, column: 25, scope: !647)
!653 = !DILocation(line: 164, column: 41, scope: !647)
!654 = !DILocation(line: 164, column: 48, scope: !647)
!655 = !DILocation(line: 164, column: 23, scope: !647)
!656 = !DILocation(line: 166, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !647, file: !425, line: 166, column: 6)
!658 = !DILocation(line: 166, column: 16, scope: !657)
!659 = !DILocation(line: 166, column: 6, scope: !647)
!660 = !DILocation(line: 167, column: 21, scope: !657)
!661 = !DILocation(line: 167, column: 3, scope: !657)
!662 = !DILocation(line: 169, column: 20, scope: !647)
!663 = !DILocation(line: 169, column: 36, scope: !647)
!664 = !DILocation(line: 169, column: 52, scope: !647)
!665 = !DILocation(line: 169, column: 2, scope: !647)
!666 = !DILocation(line: 170, column: 1, scope: !647)
!667 = distinct !DISubprogram(name: "check_conn_opts", scope: !425, file: !425, line: 173, type: !668, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!668 = !DISubroutineType(types: !669)
!669 = !{!214, !360}
!670 = !DILocalVariable(name: "co", arg: 1, scope: !667, file: !425, line: 173, type: !360)
!671 = !DILocation(line: 173, column: 30, scope: !667)
!672 = !DILocation(line: 175, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !667, file: !425, line: 175, column: 6)
!674 = !DILocation(line: 175, column: 10, scope: !673)
!675 = !DILocation(line: 175, column: 14, scope: !673)
!676 = !DILocation(line: 175, column: 24, scope: !673)
!677 = !DILocation(line: 175, column: 35, scope: !673)
!678 = !DILocalVariable(name: "__a", scope: !679, file: !425, line: 176, type: !378)
!679 = distinct !DILexicalBlock(scope: !673, file: !425, line: 176, column: 21)
!680 = !DILocation(line: 176, column: 46, scope: !679)
!681 = !DILocation(line: 176, column: 30, scope: !679)
!682 = !DILocation(line: 176, column: 34, scope: !679)
!683 = !DILocation(line: 176, column: 40, scope: !679)
!684 = !DILocation(line: 176, column: 9, scope: !679)
!685 = !DILocation(line: 176, column: 14, scope: !679)
!686 = !DILocation(line: 176, column: 22, scope: !679)
!687 = !DILocation(line: 176, column: 39, scope: !679)
!688 = !DILocation(line: 176, column: 37, scope: !679)
!689 = !DILocation(line: 176, column: 62, scope: !690)
!690 = !DILexicalBlockFile(scope: !679, file: !425, discriminator: 1)
!691 = !DILocation(line: 176, column: 59, scope: !679)
!692 = !DILocation(line: 176, column: 23, scope: !679)
!693 = !DILocation(line: 176, column: 82, scope: !679)
!694 = !DILocation(line: 176, column: 20, scope: !673)
!695 = !DILocation(line: 176, column: 73, scope: !673)
!696 = !DILocation(line: 177, column: 7, scope: !673)
!697 = !DILocation(line: 177, column: 11, scope: !673)
!698 = !DILocation(line: 175, column: 6, scope: !699)
!699 = !DILexicalBlockFile(scope: !667, file: !425, discriminator: 1)
!700 = !DILocation(line: 178, column: 115, scope: !701)
!701 = distinct !DILexicalBlock(scope: !673, file: !425, line: 177, column: 23)
!702 = !DILocation(line: 178, column: 119, scope: !701)
!703 = !DILocation(line: 178, column: 97, scope: !701)
!704 = !DILocation(line: 178, column: 3, scope: !705)
!705 = !DILexicalBlockFile(scope: !701, file: !425, discriminator: 1)
!706 = !DILocation(line: 179, column: 3, scope: !701)
!707 = !DILocation(line: 182, column: 2, scope: !667)
!708 = !DILocation(line: 183, column: 1, scope: !667)
!709 = distinct !DISubprogram(name: "compare_conn_opts", scope: !425, file: !425, line: 186, type: !710, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!710 = !DISubroutineType(types: !711)
!711 = !{!214, !360, !360}
!712 = !DILocalVariable(name: "a", arg: 1, scope: !709, file: !425, line: 186, type: !360)
!713 = !DILocation(line: 186, column: 32, scope: !709)
!714 = !DILocalVariable(name: "b", arg: 2, scope: !709, file: !425, line: 186, type: !360)
!715 = !DILocation(line: 186, column: 48, scope: !709)
!716 = !DILocation(line: 188, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !425, line: 188, column: 6)
!718 = !DILocation(line: 188, column: 11, scope: !717)
!719 = !DILocation(line: 188, column: 8, scope: !717)
!720 = !DILocation(line: 188, column: 6, scope: !709)
!721 = !DILocation(line: 189, column: 3, scope: !717)
!722 = !DILocation(line: 191, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !709, file: !425, line: 191, column: 6)
!724 = !DILocation(line: 191, column: 9, scope: !723)
!725 = !DILocation(line: 191, column: 13, scope: !726)
!726 = !DILexicalBlockFile(scope: !723, file: !425, discriminator: 1)
!727 = !DILocation(line: 191, column: 6, scope: !726)
!728 = !DILocation(line: 192, column: 3, scope: !723)
!729 = !DILocation(line: 193, column: 26, scope: !730)
!730 = distinct !DILexicalBlock(scope: !709, file: !425, line: 193, column: 6)
!731 = !DILocation(line: 193, column: 29, scope: !730)
!732 = !DILocation(line: 193, column: 35, scope: !730)
!733 = !DILocation(line: 193, column: 38, scope: !730)
!734 = !DILocation(line: 193, column: 7, scope: !730)
!735 = !DILocation(line: 193, column: 6, scope: !709)
!736 = !DILocation(line: 194, column: 3, scope: !730)
!737 = !DILocation(line: 195, column: 26, scope: !738)
!738 = distinct !DILexicalBlock(scope: !709, file: !425, line: 195, column: 6)
!739 = !DILocation(line: 195, column: 29, scope: !738)
!740 = !DILocation(line: 195, column: 38, scope: !738)
!741 = !DILocation(line: 195, column: 41, scope: !738)
!742 = !DILocation(line: 195, column: 7, scope: !738)
!743 = !DILocation(line: 195, column: 6, scope: !709)
!744 = !DILocation(line: 196, column: 3, scope: !738)
!745 = !DILocation(line: 197, column: 13, scope: !746)
!746 = distinct !DILexicalBlock(scope: !709, file: !425, line: 197, column: 6)
!747 = !DILocation(line: 197, column: 16, scope: !746)
!748 = !DILocation(line: 197, column: 25, scope: !746)
!749 = !DILocation(line: 197, column: 28, scope: !746)
!750 = !DILocation(line: 197, column: 6, scope: !746)
!751 = !DILocation(line: 197, column: 6, scope: !709)
!752 = !DILocation(line: 198, column: 3, scope: !746)
!753 = !DILocation(line: 199, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !709, file: !425, line: 199, column: 6)
!755 = !DILocation(line: 199, column: 9, scope: !754)
!756 = !DILocation(line: 199, column: 26, scope: !754)
!757 = !DILocation(line: 199, column: 29, scope: !754)
!758 = !DILocation(line: 199, column: 23, scope: !754)
!759 = !DILocation(line: 199, column: 6, scope: !709)
!760 = !DILocation(line: 200, column: 3, scope: !754)
!761 = !DILocation(line: 202, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !709, file: !425, line: 202, column: 6)
!763 = !DILocation(line: 202, column: 9, scope: !762)
!764 = !DILocation(line: 202, column: 19, scope: !762)
!765 = !DILocation(line: 202, column: 22, scope: !762)
!766 = !DILocation(line: 202, column: 16, scope: !762)
!767 = !DILocation(line: 202, column: 6, scope: !709)
!768 = !DILocation(line: 203, column: 3, scope: !762)
!769 = !DILocation(line: 206, column: 2, scope: !709)
!770 = !DILocation(line: 207, column: 1, scope: !709)
!771 = distinct !DISubprogram(name: "sockstorage_equal", scope: !772, file: !772, line: 69, type: !773, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!772 = !DIFile(filename: "../../lib/utils.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!773 = !DISubroutineType(types: !774)
!774 = !{!214, !775, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!777 = !DILocalVariable(name: "s1", arg: 1, scope: !771, file: !772, line: 69, type: !775)
!778 = !DILocation(line: 69, column: 68, scope: !771)
!779 = !DILocalVariable(name: "s2", arg: 2, scope: !771, file: !772, line: 70, type: !775)
!780 = !DILocation(line: 70, column: 40, scope: !771)
!781 = !DILocation(line: 72, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !771, file: !772, line: 72, column: 6)
!783 = !DILocation(line: 72, column: 10, scope: !782)
!784 = !DILocation(line: 72, column: 23, scope: !782)
!785 = !DILocation(line: 72, column: 27, scope: !782)
!786 = !DILocation(line: 72, column: 20, scope: !782)
!787 = !DILocation(line: 72, column: 6, scope: !771)
!788 = !DILocation(line: 73, column: 3, scope: !782)
!789 = !DILocation(line: 75, column: 6, scope: !790)
!790 = distinct !DILexicalBlock(scope: !771, file: !772, line: 75, column: 6)
!791 = !DILocation(line: 75, column: 10, scope: !790)
!792 = !DILocation(line: 75, column: 20, scope: !790)
!793 = !DILocation(line: 75, column: 6, scope: !771)
!794 = !DILocalVariable(name: "a1", scope: !795, file: !772, line: 76, type: !398)
!795 = distinct !DILexicalBlock(scope: !790, file: !772, line: 75, column: 32)
!796 = !DILocation(line: 76, column: 24, scope: !795)
!797 = !DILocation(line: 76, column: 53, scope: !795)
!798 = !DILocation(line: 76, column: 29, scope: !795)
!799 = !DILocalVariable(name: "a2", scope: !795, file: !772, line: 77, type: !398)
!800 = !DILocation(line: 77, column: 24, scope: !795)
!801 = !DILocation(line: 77, column: 53, scope: !795)
!802 = !DILocation(line: 77, column: 29, scope: !795)
!803 = !DILocation(line: 80, column: 25, scope: !804)
!804 = distinct !DILexicalBlock(scope: !795, file: !772, line: 80, column: 7)
!805 = !DILocation(line: 80, column: 29, scope: !804)
!806 = !DILocation(line: 80, column: 41, scope: !804)
!807 = !DILocation(line: 80, column: 45, scope: !804)
!808 = !DILocation(line: 80, column: 7, scope: !804)
!809 = !DILocation(line: 80, column: 56, scope: !804)
!810 = !DILocation(line: 81, column: 8, scope: !804)
!811 = !DILocation(line: 81, column: 12, scope: !804)
!812 = !DILocation(line: 81, column: 25, scope: !804)
!813 = !DILocation(line: 81, column: 29, scope: !804)
!814 = !DILocation(line: 81, column: 22, scope: !804)
!815 = !DILocation(line: 80, column: 7, scope: !816)
!816 = !DILexicalBlockFile(scope: !795, file: !772, discriminator: 1)
!817 = !DILocation(line: 82, column: 4, scope: !804)
!818 = !DILocation(line: 83, column: 2, scope: !795)
!819 = !DILocation(line: 83, column: 13, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !772, discriminator: 1)
!821 = distinct !DILexicalBlock(scope: !790, file: !772, line: 83, column: 13)
!822 = !DILocation(line: 83, column: 17, scope: !820)
!823 = !DILocation(line: 83, column: 27, scope: !820)
!824 = !DILocalVariable(name: "a1", scope: !825, file: !772, line: 84, type: !407)
!825 = distinct !DILexicalBlock(scope: !821, file: !772, line: 83, column: 38)
!826 = !DILocation(line: 84, column: 23, scope: !825)
!827 = !DILocation(line: 84, column: 51, scope: !825)
!828 = !DILocation(line: 84, column: 28, scope: !825)
!829 = !DILocalVariable(name: "a2", scope: !825, file: !772, line: 85, type: !407)
!830 = !DILocation(line: 85, column: 23, scope: !825)
!831 = !DILocation(line: 85, column: 51, scope: !825)
!832 = !DILocation(line: 85, column: 28, scope: !825)
!833 = !DILocation(line: 87, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !772, line: 87, column: 7)
!835 = !DILocation(line: 87, column: 12, scope: !834)
!836 = !DILocation(line: 87, column: 21, scope: !834)
!837 = !DILocation(line: 87, column: 31, scope: !834)
!838 = !DILocation(line: 87, column: 35, scope: !834)
!839 = !DILocation(line: 87, column: 44, scope: !834)
!840 = !DILocation(line: 87, column: 28, scope: !834)
!841 = !DILocation(line: 87, column: 52, scope: !834)
!842 = !DILocation(line: 88, column: 8, scope: !834)
!843 = !DILocation(line: 88, column: 12, scope: !834)
!844 = !DILocation(line: 88, column: 24, scope: !834)
!845 = !DILocation(line: 88, column: 28, scope: !834)
!846 = !DILocation(line: 88, column: 21, scope: !834)
!847 = !DILocation(line: 87, column: 7, scope: !848)
!848 = !DILexicalBlockFile(scope: !825, file: !772, discriminator: 1)
!849 = !DILocation(line: 89, column: 4, scope: !834)
!850 = !DILocation(line: 90, column: 2, scope: !825)
!851 = !DILocation(line: 90, column: 13, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !772, discriminator: 1)
!853 = distinct !DILexicalBlock(scope: !821, file: !772, line: 90, column: 13)
!854 = !DILocation(line: 90, column: 17, scope: !852)
!855 = !DILocation(line: 90, column: 27, scope: !852)
!856 = !DILocation(line: 91, column: 3, scope: !853)
!857 = !DILocation(line: 93, column: 2, scope: !771)
!858 = !DILocation(line: 94, column: 1, scope: !771)
!859 = distinct !DISubprogram(name: "checker_set_dst_port", scope: !425, file: !425, line: 210, type: !860, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !862, !323}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!863 = !DILocalVariable(name: "dst", arg: 1, scope: !859, file: !425, line: 210, type: !862)
!864 = !DILocation(line: 210, column: 47, scope: !859)
!865 = !DILocalVariable(name: "port", arg: 2, scope: !859, file: !425, line: 210, type: !323)
!866 = !DILocation(line: 210, column: 61, scope: !859)
!867 = !DILocation(line: 214, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !425, line: 214, column: 6)
!869 = !DILocation(line: 214, column: 11, scope: !868)
!870 = !DILocation(line: 214, column: 21, scope: !868)
!871 = !DILocation(line: 214, column: 6, scope: !859)
!872 = !DILocalVariable(name: "addr6", scope: !873, file: !425, line: 215, type: !398)
!873 = distinct !DILexicalBlock(scope: !868, file: !425, line: 214, column: 33)
!874 = !DILocation(line: 215, column: 24, scope: !873)
!875 = !DILocation(line: 215, column: 56, scope: !873)
!876 = !DILocation(line: 215, column: 32, scope: !873)
!877 = !DILocation(line: 216, column: 22, scope: !873)
!878 = !DILocation(line: 216, column: 3, scope: !873)
!879 = !DILocation(line: 216, column: 10, scope: !873)
!880 = !DILocation(line: 216, column: 20, scope: !873)
!881 = !DILocation(line: 217, column: 2, scope: !873)
!882 = !DILocalVariable(name: "addr4", scope: !883, file: !425, line: 218, type: !407)
!883 = distinct !DILexicalBlock(scope: !868, file: !425, line: 217, column: 9)
!884 = !DILocation(line: 218, column: 23, scope: !883)
!885 = !DILocation(line: 218, column: 54, scope: !883)
!886 = !DILocation(line: 218, column: 31, scope: !883)
!887 = !DILocation(line: 219, column: 21, scope: !883)
!888 = !DILocation(line: 219, column: 3, scope: !883)
!889 = !DILocation(line: 219, column: 10, scope: !883)
!890 = !DILocation(line: 219, column: 19, scope: !883)
!891 = !DILocation(line: 221, column: 1, scope: !859)
!892 = distinct !DISubprogram(name: "install_checker_common_keywords", scope: !425, file: !425, line: 397, type: !893, isLocal: false, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !214}
!895 = !DILocalVariable(name: "connection_keywords", arg: 1, scope: !892, file: !425, line: 397, type: !214)
!896 = !DILocation(line: 397, column: 37, scope: !892)
!897 = !DILocation(line: 399, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !425, line: 399, column: 6)
!899 = !DILocation(line: 399, column: 6, scope: !892)
!900 = !DILocation(line: 400, column: 3, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !425, line: 399, column: 27)
!902 = !DILocation(line: 401, column: 3, scope: !901)
!903 = !DILocation(line: 402, column: 3, scope: !901)
!904 = !DILocation(line: 403, column: 3, scope: !901)
!905 = !DILocation(line: 404, column: 3, scope: !901)
!906 = !DILocation(line: 405, column: 3, scope: !901)
!907 = !DILocation(line: 407, column: 3, scope: !901)
!908 = !DILocation(line: 409, column: 2, scope: !901)
!909 = !DILocation(line: 410, column: 2, scope: !892)
!910 = !DILocation(line: 411, column: 2, scope: !892)
!911 = !DILocation(line: 412, column: 2, scope: !892)
!912 = !DILocation(line: 413, column: 2, scope: !892)
!913 = !DILocation(line: 414, column: 2, scope: !892)
!914 = !DILocation(line: 415, column: 1, scope: !892)
!915 = distinct !DISubprogram(name: "co_ip_handler", scope: !425, file: !425, line: 225, type: !916, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !920, line: 34, baseType: !921)
!920 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !920, line: 30, size: 128, align: 64, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !921, file: !920, line: 31, baseType: !186, size: 32, align: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !921, file: !920, line: 32, baseType: !186, size: 32, align: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !921, file: !920, line: 33, baseType: !926, size: 64, align: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!927 = !DILocalVariable(name: "strvec", arg: 1, scope: !915, file: !425, line: 225, type: !918)
!928 = !DILocation(line: 225, column: 25, scope: !915)
!929 = !DILocalVariable(name: "co", scope: !915, file: !425, line: 227, type: !360)
!930 = !DILocation(line: 227, column: 15, scope: !915)
!931 = !DILocation(line: 227, column: 38, scope: !915)
!932 = !DILocation(line: 227, column: 55, scope: !915)
!933 = !DILocation(line: 227, column: 61, scope: !915)
!934 = !DILocation(line: 227, column: 22, scope: !915)
!935 = !DILocation(line: 227, column: 70, scope: !915)
!936 = !DILocation(line: 229, column: 35, scope: !937)
!937 = distinct !DILexicalBlock(scope: !915, file: !425, line: 229, column: 6)
!938 = !DILocation(line: 229, column: 23, scope: !937)
!939 = !DILocation(line: 229, column: 53, scope: !937)
!940 = !DILocation(line: 229, column: 57, scope: !937)
!941 = !DILocation(line: 229, column: 6, scope: !942)
!942 = !DILexicalBlockFile(scope: !937, file: !425, discriminator: 1)
!943 = !DILocation(line: 229, column: 6, scope: !937)
!944 = !DILocation(line: 229, column: 6, scope: !915)
!945 = !DILocation(line: 230, column: 109, scope: !937)
!946 = !DILocation(line: 230, column: 97, scope: !937)
!947 = !DILocation(line: 230, column: 3, scope: !942)
!948 = !DILocation(line: 230, column: 3, scope: !937)
!949 = !DILocation(line: 231, column: 11, scope: !950)
!950 = distinct !DILexicalBlock(scope: !937, file: !425, line: 231, column: 11)
!951 = !DILocation(line: 231, column: 15, scope: !950)
!952 = !DILocation(line: 231, column: 22, scope: !950)
!953 = !DILocation(line: 231, column: 32, scope: !950)
!954 = !DILocation(line: 231, column: 44, scope: !950)
!955 = !DILocation(line: 232, column: 4, scope: !950)
!956 = !DILocation(line: 232, column: 8, scope: !950)
!957 = !DILocation(line: 232, column: 15, scope: !950)
!958 = !DILocation(line: 232, column: 28, scope: !950)
!959 = !DILocation(line: 232, column: 32, scope: !950)
!960 = !DILocation(line: 232, column: 36, scope: !950)
!961 = !DILocation(line: 232, column: 25, scope: !950)
!962 = !DILocation(line: 231, column: 11, scope: !942)
!963 = !DILocation(line: 233, column: 141, scope: !964)
!964 = distinct !DILexicalBlock(scope: !950, file: !425, line: 232, column: 47)
!965 = !DILocation(line: 233, column: 129, scope: !964)
!966 = !DILocation(line: 233, column: 3, scope: !967)
!967 = !DILexicalBlockFile(scope: !964, file: !425, discriminator: 1)
!968 = !DILocation(line: 234, column: 3, scope: !964)
!969 = !DILocation(line: 234, column: 7, scope: !964)
!970 = !DILocation(line: 234, column: 11, scope: !964)
!971 = !DILocation(line: 234, column: 21, scope: !964)
!972 = !DILocation(line: 235, column: 2, scope: !964)
!973 = !DILocation(line: 236, column: 1, scope: !915)
!974 = distinct !DISubprogram(name: "co_port_handler", scope: !425, file: !425, line: 240, type: !916, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!975 = !DILocalVariable(name: "strvec", arg: 1, scope: !974, file: !425, line: 240, type: !918)
!976 = !DILocation(line: 240, column: 27, scope: !974)
!977 = !DILocalVariable(name: "co", scope: !974, file: !425, line: 242, type: !360)
!978 = !DILocation(line: 242, column: 15, scope: !974)
!979 = !DILocation(line: 242, column: 38, scope: !974)
!980 = !DILocation(line: 242, column: 55, scope: !974)
!981 = !DILocation(line: 242, column: 61, scope: !974)
!982 = !DILocation(line: 242, column: 22, scope: !974)
!983 = !DILocation(line: 242, column: 70, scope: !974)
!984 = !DILocalVariable(name: "port", scope: !974, file: !425, line: 243, type: !186)
!985 = !DILocation(line: 243, column: 11, scope: !974)
!986 = !DILocation(line: 245, column: 28, scope: !987)
!987 = distinct !DILexicalBlock(scope: !974, file: !425, line: 245, column: 6)
!988 = !DILocation(line: 245, column: 7, scope: !987)
!989 = !DILocation(line: 245, column: 6, scope: !974)
!990 = !DILocation(line: 246, column: 102, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !425, line: 245, column: 62)
!992 = !DILocation(line: 246, column: 90, scope: !991)
!993 = !DILocation(line: 246, column: 3, scope: !994)
!994 = !DILexicalBlockFile(scope: !991, file: !425, discriminator: 1)
!995 = !DILocation(line: 247, column: 3, scope: !991)
!996 = !DILocation(line: 250, column: 24, scope: !974)
!997 = !DILocation(line: 250, column: 28, scope: !974)
!998 = !DILocation(line: 250, column: 39, scope: !974)
!999 = !DILocation(line: 250, column: 33, scope: !974)
!1000 = !DILocation(line: 250, column: 2, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !974, file: !425, discriminator: 1)
!1002 = !DILocation(line: 251, column: 1, scope: !974)
!1003 = !DILocation(line: 251, column: 1, scope: !1001)
!1004 = distinct !DISubprogram(name: "co_srcip_handler", scope: !425, file: !425, line: 255, type: !916, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1005 = !DILocalVariable(name: "strvec", arg: 1, scope: !1004, file: !425, line: 255, type: !918)
!1006 = !DILocation(line: 255, column: 28, scope: !1004)
!1007 = !DILocalVariable(name: "co", scope: !1004, file: !425, line: 257, type: !360)
!1008 = !DILocation(line: 257, column: 15, scope: !1004)
!1009 = !DILocation(line: 257, column: 38, scope: !1004)
!1010 = !DILocation(line: 257, column: 55, scope: !1004)
!1011 = !DILocation(line: 257, column: 61, scope: !1004)
!1012 = !DILocation(line: 257, column: 22, scope: !1004)
!1013 = !DILocation(line: 257, column: 70, scope: !1004)
!1014 = !DILocation(line: 258, column: 35, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1004, file: !425, line: 258, column: 6)
!1016 = !DILocation(line: 258, column: 23, scope: !1015)
!1017 = !DILocation(line: 258, column: 53, scope: !1015)
!1018 = !DILocation(line: 258, column: 57, scope: !1015)
!1019 = !DILocation(line: 258, column: 6, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1015, file: !425, discriminator: 1)
!1021 = !DILocation(line: 258, column: 6, scope: !1015)
!1022 = !DILocation(line: 258, column: 6, scope: !1004)
!1023 = !DILocation(line: 259, column: 105, scope: !1015)
!1024 = !DILocation(line: 259, column: 93, scope: !1015)
!1025 = !DILocation(line: 259, column: 3, scope: !1020)
!1026 = !DILocation(line: 259, column: 3, scope: !1015)
!1027 = !DILocation(line: 260, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1015, file: !425, line: 260, column: 11)
!1029 = !DILocation(line: 260, column: 15, scope: !1028)
!1030 = !DILocation(line: 260, column: 19, scope: !1028)
!1031 = !DILocation(line: 260, column: 29, scope: !1028)
!1032 = !DILocation(line: 260, column: 41, scope: !1028)
!1033 = !DILocation(line: 261, column: 4, scope: !1028)
!1034 = !DILocation(line: 261, column: 8, scope: !1028)
!1035 = !DILocation(line: 261, column: 12, scope: !1028)
!1036 = !DILocation(line: 261, column: 25, scope: !1028)
!1037 = !DILocation(line: 261, column: 29, scope: !1028)
!1038 = !DILocation(line: 261, column: 36, scope: !1028)
!1039 = !DILocation(line: 261, column: 22, scope: !1028)
!1040 = !DILocation(line: 260, column: 11, scope: !1020)
!1041 = !DILocation(line: 262, column: 141, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1028, file: !425, line: 261, column: 47)
!1043 = !DILocation(line: 262, column: 129, scope: !1042)
!1044 = !DILocation(line: 262, column: 3, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1042, file: !425, discriminator: 1)
!1046 = !DILocation(line: 263, column: 3, scope: !1042)
!1047 = !DILocation(line: 263, column: 7, scope: !1042)
!1048 = !DILocation(line: 263, column: 14, scope: !1042)
!1049 = !DILocation(line: 263, column: 24, scope: !1042)
!1050 = !DILocation(line: 264, column: 2, scope: !1042)
!1051 = !DILocation(line: 265, column: 1, scope: !1004)
!1052 = distinct !DISubprogram(name: "co_srcport_handler", scope: !425, file: !425, line: 269, type: !916, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1053 = !DILocalVariable(name: "strvec", arg: 1, scope: !1052, file: !425, line: 269, type: !918)
!1054 = !DILocation(line: 269, column: 30, scope: !1052)
!1055 = !DILocalVariable(name: "co", scope: !1052, file: !425, line: 271, type: !360)
!1056 = !DILocation(line: 271, column: 15, scope: !1052)
!1057 = !DILocation(line: 271, column: 38, scope: !1052)
!1058 = !DILocation(line: 271, column: 55, scope: !1052)
!1059 = !DILocation(line: 271, column: 61, scope: !1052)
!1060 = !DILocation(line: 271, column: 22, scope: !1052)
!1061 = !DILocation(line: 271, column: 70, scope: !1052)
!1062 = !DILocalVariable(name: "port", scope: !1052, file: !425, line: 272, type: !186)
!1063 = !DILocation(line: 272, column: 11, scope: !1052)
!1064 = !DILocation(line: 274, column: 28, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1052, file: !425, line: 274, column: 6)
!1066 = !DILocation(line: 274, column: 7, scope: !1065)
!1067 = !DILocation(line: 274, column: 6, scope: !1052)
!1068 = !DILocation(line: 275, column: 99, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !425, line: 274, column: 62)
!1070 = !DILocation(line: 275, column: 87, scope: !1069)
!1071 = !DILocation(line: 275, column: 3, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1069, file: !425, discriminator: 1)
!1073 = !DILocation(line: 276, column: 3, scope: !1069)
!1074 = !DILocation(line: 279, column: 24, scope: !1052)
!1075 = !DILocation(line: 279, column: 28, scope: !1052)
!1076 = !DILocation(line: 279, column: 42, scope: !1052)
!1077 = !DILocation(line: 279, column: 36, scope: !1052)
!1078 = !DILocation(line: 279, column: 2, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1052, file: !425, discriminator: 1)
!1080 = !DILocation(line: 280, column: 1, scope: !1052)
!1081 = !DILocation(line: 280, column: 1, scope: !1079)
!1082 = distinct !DISubprogram(name: "co_srcif_handler", scope: !425, file: !425, line: 284, type: !916, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1083 = !DILocalVariable(name: "strvec", arg: 1, scope: !1082, file: !425, line: 284, type: !918)
!1084 = !DILocation(line: 284, column: 28, scope: !1082)
!1085 = !DILocalVariable(name: "co", scope: !1082, file: !425, line: 287, type: !360)
!1086 = !DILocation(line: 287, column: 15, scope: !1082)
!1087 = !DILocation(line: 287, column: 38, scope: !1082)
!1088 = !DILocation(line: 287, column: 55, scope: !1082)
!1089 = !DILocation(line: 287, column: 61, scope: !1082)
!1090 = !DILocation(line: 287, column: 22, scope: !1082)
!1091 = !DILocation(line: 287, column: 70, scope: !1082)
!1092 = !DILocation(line: 289, column: 25, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1082, file: !425, line: 289, column: 6)
!1094 = !DILocation(line: 289, column: 13, scope: !1093)
!1095 = !DILocation(line: 289, column: 6, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !425, discriminator: 1)
!1097 = !DILocation(line: 289, column: 37, scope: !1093)
!1098 = !DILocation(line: 289, column: 6, scope: !1082)
!1099 = !DILocation(line: 290, column: 109, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !425, line: 289, column: 64)
!1101 = !DILocation(line: 290, column: 97, scope: !1100)
!1102 = !DILocation(line: 290, column: 3, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1100, file: !425, discriminator: 1)
!1104 = !DILocation(line: 291, column: 3, scope: !1100)
!1105 = !DILocation(line: 293, column: 9, scope: !1082)
!1106 = !DILocation(line: 293, column: 13, scope: !1082)
!1107 = !DILocation(line: 293, column: 34, scope: !1082)
!1108 = !DILocation(line: 293, column: 22, scope: !1082)
!1109 = !DILocation(line: 293, column: 2, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1082, file: !425, discriminator: 1)
!1111 = !DILocation(line: 294, column: 1, scope: !1082)
!1112 = !DILocation(line: 294, column: 1, scope: !1110)
!1113 = distinct !DISubprogram(name: "co_timeout_handler", scope: !425, file: !425, line: 298, type: !916, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1114 = !DILocalVariable(name: "strvec", arg: 1, scope: !1113, file: !425, line: 298, type: !918)
!1115 = !DILocation(line: 298, column: 30, scope: !1113)
!1116 = !DILocalVariable(name: "co", scope: !1113, file: !425, line: 300, type: !360)
!1117 = !DILocation(line: 300, column: 15, scope: !1113)
!1118 = !DILocation(line: 300, column: 38, scope: !1113)
!1119 = !DILocation(line: 300, column: 55, scope: !1113)
!1120 = !DILocation(line: 300, column: 61, scope: !1113)
!1121 = !DILocation(line: 300, column: 22, scope: !1113)
!1122 = !DILocation(line: 300, column: 70, scope: !1113)
!1123 = !DILocalVariable(name: "timer", scope: !1113, file: !425, line: 301, type: !126)
!1124 = !DILocation(line: 301, column: 16, scope: !1113)
!1125 = !DILocation(line: 303, column: 18, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1113, file: !425, line: 303, column: 6)
!1127 = !DILocation(line: 303, column: 7, scope: !1126)
!1128 = !DILocation(line: 303, column: 6, scope: !1113)
!1129 = !DILocation(line: 304, column: 106, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !425, line: 303, column: 67)
!1131 = !DILocation(line: 304, column: 94, scope: !1130)
!1132 = !DILocation(line: 304, column: 3, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1130, file: !425, discriminator: 1)
!1134 = !DILocation(line: 305, column: 3, scope: !1130)
!1135 = !DILocation(line: 307, column: 22, scope: !1113)
!1136 = !DILocation(line: 307, column: 2, scope: !1113)
!1137 = !DILocation(line: 307, column: 6, scope: !1113)
!1138 = !DILocation(line: 307, column: 20, scope: !1113)
!1139 = !DILocation(line: 308, column: 1, scope: !1113)
!1140 = !DILocation(line: 308, column: 1, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1113, file: !425, discriminator: 1)
!1142 = distinct !DISubprogram(name: "co_fwmark_handler", scope: !425, file: !425, line: 313, type: !916, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1143 = !DILocalVariable(name: "strvec", arg: 1, scope: !1142, file: !425, line: 313, type: !918)
!1144 = !DILocation(line: 313, column: 29, scope: !1142)
!1145 = !DILocalVariable(name: "co", scope: !1142, file: !425, line: 315, type: !360)
!1146 = !DILocation(line: 315, column: 15, scope: !1142)
!1147 = !DILocation(line: 315, column: 38, scope: !1142)
!1148 = !DILocation(line: 315, column: 55, scope: !1142)
!1149 = !DILocation(line: 315, column: 61, scope: !1142)
!1150 = !DILocation(line: 315, column: 22, scope: !1142)
!1151 = !DILocation(line: 315, column: 70, scope: !1142)
!1152 = !DILocalVariable(name: "fwmark", scope: !1142, file: !425, line: 316, type: !186)
!1153 = !DILocation(line: 316, column: 11, scope: !1142)
!1154 = !DILocation(line: 318, column: 28, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1142, file: !425, line: 318, column: 6)
!1156 = !DILocation(line: 318, column: 7, scope: !1155)
!1157 = !DILocation(line: 318, column: 6, scope: !1142)
!1158 = !DILocation(line: 319, column: 105, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !425, line: 318, column: 67)
!1160 = !DILocation(line: 319, column: 93, scope: !1159)
!1161 = !DILocation(line: 319, column: 3, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1159, file: !425, discriminator: 1)
!1163 = !DILocation(line: 320, column: 3, scope: !1159)
!1164 = !DILocation(line: 322, column: 15, scope: !1142)
!1165 = !DILocation(line: 322, column: 2, scope: !1142)
!1166 = !DILocation(line: 322, column: 6, scope: !1142)
!1167 = !DILocation(line: 322, column: 13, scope: !1142)
!1168 = !DILocation(line: 323, column: 1, scope: !1142)
!1169 = !DILocation(line: 323, column: 1, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1142, file: !425, discriminator: 1)
!1171 = distinct !DISubprogram(name: "retry_handler", scope: !425, file: !425, line: 327, type: !916, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1172 = !DILocalVariable(name: "strvec", arg: 1, scope: !1171, file: !425, line: 327, type: !918)
!1173 = !DILocation(line: 327, column: 25, scope: !1171)
!1174 = !DILocalVariable(name: "checker", scope: !1171, file: !425, line: 329, type: !56)
!1175 = !DILocation(line: 329, column: 13, scope: !1171)
!1176 = !DILocation(line: 329, column: 26, scope: !1171)
!1177 = !DILocation(line: 329, column: 43, scope: !1171)
!1178 = !DILocation(line: 329, column: 49, scope: !1171)
!1179 = !DILocation(line: 329, column: 23, scope: !1171)
!1180 = !DILocalVariable(name: "retry", scope: !1171, file: !425, line: 330, type: !186)
!1181 = !DILocation(line: 330, column: 11, scope: !1171)
!1182 = !DILocation(line: 332, column: 28, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1171, file: !425, line: 332, column: 6)
!1184 = !DILocation(line: 332, column: 7, scope: !1183)
!1185 = !DILocation(line: 332, column: 6, scope: !1171)
!1186 = !DILocation(line: 333, column: 104, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !425, line: 332, column: 66)
!1188 = !DILocation(line: 333, column: 92, scope: !1187)
!1189 = !DILocation(line: 333, column: 3, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1187, file: !425, discriminator: 1)
!1191 = !DILocation(line: 334, column: 3, scope: !1187)
!1192 = !DILocation(line: 337, column: 19, scope: !1171)
!1193 = !DILocation(line: 337, column: 2, scope: !1171)
!1194 = !DILocation(line: 337, column: 11, scope: !1171)
!1195 = !DILocation(line: 337, column: 17, scope: !1171)
!1196 = !DILocation(line: 338, column: 1, scope: !1171)
!1197 = !DILocation(line: 338, column: 1, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1171, file: !425, discriminator: 1)
!1199 = distinct !DISubprogram(name: "delay_before_retry_handler", scope: !425, file: !425, line: 341, type: !916, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1200 = !DILocalVariable(name: "strvec", arg: 1, scope: !1199, file: !425, line: 341, type: !918)
!1201 = !DILocation(line: 341, column: 38, scope: !1199)
!1202 = !DILocalVariable(name: "checker", scope: !1199, file: !425, line: 343, type: !56)
!1203 = !DILocation(line: 343, column: 13, scope: !1199)
!1204 = !DILocation(line: 343, column: 26, scope: !1199)
!1205 = !DILocation(line: 343, column: 43, scope: !1199)
!1206 = !DILocation(line: 343, column: 49, scope: !1199)
!1207 = !DILocation(line: 343, column: 23, scope: !1199)
!1208 = !DILocalVariable(name: "delay", scope: !1199, file: !425, line: 344, type: !186)
!1209 = !DILocation(line: 344, column: 11, scope: !1199)
!1210 = !DILocation(line: 346, column: 28, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !425, line: 346, column: 6)
!1212 = !DILocation(line: 346, column: 7, scope: !1211)
!1213 = !DILocation(line: 346, column: 6, scope: !1199)
!1214 = !DILocation(line: 347, column: 117, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !425, line: 346, column: 77)
!1216 = !DILocation(line: 347, column: 105, scope: !1215)
!1217 = !DILocation(line: 347, column: 3, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1215, file: !425, discriminator: 1)
!1219 = !DILocation(line: 348, column: 3, scope: !1215)
!1220 = !DILocation(line: 351, column: 32, scope: !1199)
!1221 = !DILocation(line: 351, column: 38, scope: !1199)
!1222 = !DILocation(line: 351, column: 2, scope: !1199)
!1223 = !DILocation(line: 351, column: 11, scope: !1199)
!1224 = !DILocation(line: 351, column: 30, scope: !1199)
!1225 = !DILocation(line: 352, column: 1, scope: !1199)
!1226 = !DILocation(line: 352, column: 1, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1199, file: !425, discriminator: 1)
!1228 = distinct !DISubprogram(name: "warmup_handler", scope: !425, file: !425, line: 356, type: !916, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1229 = !DILocalVariable(name: "strvec", arg: 1, scope: !1228, file: !425, line: 356, type: !918)
!1230 = !DILocation(line: 356, column: 26, scope: !1228)
!1231 = !DILocalVariable(name: "checker", scope: !1228, file: !425, line: 358, type: !56)
!1232 = !DILocation(line: 358, column: 13, scope: !1228)
!1233 = !DILocation(line: 358, column: 26, scope: !1228)
!1234 = !DILocation(line: 358, column: 43, scope: !1228)
!1235 = !DILocation(line: 358, column: 49, scope: !1228)
!1236 = !DILocation(line: 358, column: 23, scope: !1228)
!1237 = !DILocalVariable(name: "warmup", scope: !1228, file: !425, line: 359, type: !186)
!1238 = !DILocation(line: 359, column: 11, scope: !1228)
!1239 = !DILocation(line: 361, column: 28, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1228, file: !425, line: 361, column: 6)
!1241 = !DILocation(line: 361, column: 7, scope: !1240)
!1242 = !DILocation(line: 361, column: 6, scope: !1228)
!1243 = !DILocation(line: 362, column: 105, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !425, line: 361, column: 78)
!1245 = !DILocation(line: 362, column: 93, scope: !1244)
!1246 = !DILocation(line: 362, column: 3, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1244, file: !425, discriminator: 1)
!1248 = !DILocation(line: 363, column: 3, scope: !1244)
!1249 = !DILocation(line: 366, column: 20, scope: !1228)
!1250 = !DILocation(line: 366, column: 27, scope: !1228)
!1251 = !DILocation(line: 366, column: 2, scope: !1228)
!1252 = !DILocation(line: 366, column: 11, scope: !1228)
!1253 = !DILocation(line: 366, column: 18, scope: !1228)
!1254 = !DILocation(line: 367, column: 1, scope: !1228)
!1255 = !DILocation(line: 367, column: 1, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1228, file: !425, discriminator: 1)
!1257 = distinct !DISubprogram(name: "delay_handler", scope: !425, file: !425, line: 370, type: !916, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1258 = !DILocalVariable(name: "strvec", arg: 1, scope: !1257, file: !425, line: 370, type: !918)
!1259 = !DILocation(line: 370, column: 25, scope: !1257)
!1260 = !DILocalVariable(name: "delay_loop", scope: !1257, file: !425, line: 372, type: !126)
!1261 = !DILocation(line: 372, column: 16, scope: !1257)
!1262 = !DILocalVariable(name: "checker", scope: !1257, file: !425, line: 373, type: !56)
!1263 = !DILocation(line: 373, column: 13, scope: !1257)
!1264 = !DILocation(line: 373, column: 26, scope: !1257)
!1265 = !DILocation(line: 373, column: 43, scope: !1257)
!1266 = !DILocation(line: 373, column: 49, scope: !1257)
!1267 = !DILocation(line: 373, column: 23, scope: !1257)
!1268 = !DILocation(line: 375, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1257, file: !425, line: 375, column: 6)
!1270 = !DILocation(line: 375, column: 6, scope: !1269)
!1271 = !DILocation(line: 375, column: 6, scope: !1257)
!1272 = !DILocation(line: 376, column: 25, scope: !1269)
!1273 = !DILocation(line: 376, column: 3, scope: !1269)
!1274 = !DILocation(line: 376, column: 12, scope: !1269)
!1275 = !DILocation(line: 376, column: 23, scope: !1269)
!1276 = !DILocation(line: 378, column: 106, scope: !1269)
!1277 = !DILocation(line: 378, column: 94, scope: !1269)
!1278 = !DILocation(line: 378, column: 3, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1269, file: !425, discriminator: 1)
!1280 = !DILocation(line: 379, column: 1, scope: !1257)
!1281 = distinct !DISubprogram(name: "alpha_handler", scope: !425, file: !425, line: 382, type: !916, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1282 = !DILocalVariable(name: "strvec", arg: 1, scope: !1281, file: !425, line: 382, type: !918)
!1283 = !DILocation(line: 382, column: 25, scope: !1281)
!1284 = !DILocalVariable(name: "checker", scope: !1281, file: !425, line: 384, type: !56)
!1285 = !DILocation(line: 384, column: 13, scope: !1281)
!1286 = !DILocation(line: 384, column: 26, scope: !1281)
!1287 = !DILocation(line: 384, column: 43, scope: !1281)
!1288 = !DILocation(line: 384, column: 49, scope: !1281)
!1289 = !DILocation(line: 384, column: 23, scope: !1281)
!1290 = !DILocalVariable(name: "res", scope: !1281, file: !425, line: 385, type: !77)
!1291 = !DILocation(line: 385, column: 6, scope: !1281)
!1292 = !DILocation(line: 387, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1281, file: !425, line: 387, column: 6)
!1294 = !DILocation(line: 387, column: 17, scope: !1293)
!1295 = !DILocation(line: 387, column: 28, scope: !1293)
!1296 = !DILocation(line: 387, column: 6, scope: !1281)
!1297 = !DILocation(line: 388, column: 38, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !425, line: 387, column: 34)
!1299 = !DILocation(line: 388, column: 26, scope: !1298)
!1300 = !DILocation(line: 388, column: 9, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1298, file: !425, discriminator: 1)
!1302 = !DILocation(line: 388, column: 7, scope: !1298)
!1303 = !DILocation(line: 389, column: 7, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !425, line: 389, column: 7)
!1305 = !DILocation(line: 389, column: 11, scope: !1304)
!1306 = !DILocation(line: 389, column: 7, scope: !1298)
!1307 = !DILocation(line: 390, column: 96, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !425, line: 389, column: 18)
!1309 = !DILocation(line: 390, column: 84, scope: !1308)
!1310 = !DILocation(line: 390, column: 4, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1308, file: !425, discriminator: 1)
!1312 = !DILocation(line: 391, column: 4, scope: !1308)
!1313 = !DILocation(line: 393, column: 2, scope: !1298)
!1314 = !DILocation(line: 394, column: 19, scope: !1281)
!1315 = !DILocation(line: 394, column: 2, scope: !1281)
!1316 = !DILocation(line: 394, column: 11, scope: !1281)
!1317 = !DILocation(line: 394, column: 17, scope: !1281)
!1318 = !DILocation(line: 395, column: 1, scope: !1281)
!1319 = !DILocation(line: 395, column: 1, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1281, file: !425, discriminator: 1)
!1321 = distinct !DISubprogram(name: "dump_checkers_queue", scope: !425, file: !425, line: 419, type: !1322, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !70}
!1324 = !DILocalVariable(name: "fp", arg: 1, scope: !1321, file: !425, line: 419, type: !70)
!1325 = !DILocation(line: 419, column: 27, scope: !1321)
!1326 = !DILocation(line: 421, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !425, line: 421, column: 6)
!1328 = !DILocation(line: 421, column: 25, scope: !1327)
!1329 = !DILocation(line: 421, column: 6, scope: !1327)
!1330 = !DILocation(line: 421, column: 11, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1327, file: !425, discriminator: 1)
!1332 = !DILocation(line: 421, column: 28, scope: !1331)
!1333 = !DILocation(line: 421, column: 33, scope: !1331)
!1334 = !DILocation(line: 421, column: 6, scope: !1331)
!1335 = !DILocation(line: 421, column: 10, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1327, file: !425, discriminator: 2)
!1337 = !DILocation(line: 421, column: 27, scope: !1336)
!1338 = !DILocation(line: 421, column: 32, scope: !1336)
!1339 = !DILocation(line: 421, column: 6, scope: !1336)
!1340 = !DILocation(line: 422, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1327, file: !425, line: 421, column: 10)
!1342 = !DILocation(line: 422, column: 3, scope: !1341)
!1343 = !DILocation(line: 423, column: 13, scope: !1341)
!1344 = !DILocation(line: 423, column: 17, scope: !1341)
!1345 = !DILocation(line: 423, column: 3, scope: !1341)
!1346 = !DILocation(line: 424, column: 2, scope: !1341)
!1347 = !DILocation(line: 425, column: 1, scope: !1321)
!1348 = distinct !DISubprogram(name: "init_checkers_queue", scope: !425, file: !425, line: 429, type: !648, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1349 = !DILocation(line: 431, column: 19, scope: !1348)
!1350 = !DILocation(line: 431, column: 17, scope: !1348)
!1351 = !DILocation(line: 432, column: 1, scope: !1348)
!1352 = distinct !DISubprogram(name: "free_checker", scope: !425, file: !425, line: 57, type: !63, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1353 = !DILocalVariable(name: "data", arg: 1, scope: !1352, file: !425, line: 57, type: !65)
!1354 = !DILocation(line: 57, column: 20, scope: !1352)
!1355 = !DILocalVariable(name: "checker", scope: !1352, file: !425, line: 59, type: !56)
!1356 = !DILocation(line: 59, column: 13, scope: !1352)
!1357 = !DILocation(line: 59, column: 23, scope: !1352)
!1358 = !DILocation(line: 60, column: 4, scope: !1352)
!1359 = !DILocation(line: 60, column: 13, scope: !1352)
!1360 = !DILocation(line: 60, column: 25, scope: !1352)
!1361 = !DILocation(line: 60, column: 2, scope: !1352)
!1362 = !DILocation(line: 61, column: 1, scope: !1352)
!1363 = distinct !DISubprogram(name: "dump_checker", scope: !425, file: !425, line: 65, type: !68, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1364 = !DILocalVariable(name: "fp", arg: 1, scope: !1363, file: !425, line: 65, type: !70)
!1365 = !DILocation(line: 65, column: 20, scope: !1363)
!1366 = !DILocalVariable(name: "data", arg: 2, scope: !1363, file: !425, line: 65, type: !65)
!1367 = !DILocation(line: 65, column: 30, scope: !1363)
!1368 = !DILocalVariable(name: "checker", scope: !1363, file: !425, line: 67, type: !56)
!1369 = !DILocation(line: 67, column: 13, scope: !1363)
!1370 = !DILocation(line: 67, column: 23, scope: !1363)
!1371 = !DILocalVariable(name: "vs_ret", scope: !1363, file: !425, line: 68, type: !79)
!1372 = !DILocation(line: 68, column: 8, scope: !1363)
!1373 = !DILocalVariable(name: "vs_sav", scope: !1363, file: !425, line: 69, type: !79)
!1374 = !DILocation(line: 69, column: 8, scope: !1363)
!1375 = !DILocation(line: 71, column: 23, scope: !1363)
!1376 = !DILocation(line: 71, column: 32, scope: !1363)
!1377 = !DILocation(line: 71, column: 12, scope: !1363)
!1378 = !DILocation(line: 71, column: 9, scope: !1363)
!1379 = !DILocation(line: 72, column: 26, scope: !1363)
!1380 = !DILocation(line: 72, column: 19, scope: !1363)
!1381 = !DILocation(line: 72, column: 34, scope: !1363)
!1382 = !DILocation(line: 72, column: 12, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1363, file: !425, discriminator: 1)
!1384 = !DILocation(line: 72, column: 9, scope: !1363)
!1385 = !DILocation(line: 73, column: 9, scope: !1363)
!1386 = !DILocation(line: 73, column: 17, scope: !1363)
!1387 = !DILocation(line: 73, column: 2, scope: !1363)
!1388 = !DILocation(line: 75, column: 13, scope: !1363)
!1389 = !DILocation(line: 75, column: 30, scope: !1363)
!1390 = !DILocation(line: 75, column: 63, scope: !1363)
!1391 = !DILocation(line: 75, column: 73, scope: !1363)
!1392 = !DILocation(line: 75, column: 78, scope: !1363)
!1393 = !DILocation(line: 75, column: 86, scope: !1363)
!1394 = !DILocation(line: 75, column: 96, scope: !1363)
!1395 = !DILocation(line: 75, column: 101, scope: !1363)
!1396 = !DILocation(line: 75, column: 39, scope: !1363)
!1397 = !DILocation(line: 75, column: 2, scope: !1383)
!1398 = !DILocation(line: 76, column: 8, scope: !1363)
!1399 = !DILocation(line: 76, column: 3, scope: !1363)
!1400 = !DILocation(line: 76, column: 26, scope: !1363)
!1401 = !DILocation(line: 78, column: 4, scope: !1363)
!1402 = !DILocation(line: 78, column: 13, scope: !1363)
!1403 = !DILocation(line: 78, column: 25, scope: !1363)
!1404 = !DILocation(line: 78, column: 29, scope: !1363)
!1405 = !DILocation(line: 78, column: 2, scope: !1363)
!1406 = !DILocation(line: 79, column: 1, scope: !1363)
!1407 = distinct !DISubprogram(name: "free_vs_checkers", scope: !425, file: !425, line: 436, type: !1408, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !252}
!1410 = !DILocalVariable(name: "vs", arg: 1, scope: !1407, file: !425, line: 436, type: !252)
!1411 = !DILocation(line: 436, column: 36, scope: !1407)
!1412 = !DILocalVariable(name: "e", scope: !1407, file: !425, line: 438, type: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !173, line: 30, baseType: !178)
!1414 = !DILocation(line: 438, column: 10, scope: !1407)
!1415 = !DILocalVariable(name: "next", scope: !1407, file: !425, line: 439, type: !1413)
!1416 = !DILocation(line: 439, column: 10, scope: !1407)
!1417 = !DILocalVariable(name: "checker", scope: !1407, file: !425, line: 440, type: !56)
!1418 = !DILocation(line: 440, column: 13, scope: !1407)
!1419 = !DILocation(line: 442, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1407, file: !425, line: 442, column: 6)
!1421 = !DILocation(line: 442, column: 24, scope: !1420)
!1422 = !DILocation(line: 442, column: 5, scope: !1420)
!1423 = !DILocation(line: 442, column: 10, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1420, file: !425, discriminator: 1)
!1425 = !DILocation(line: 442, column: 27, scope: !1424)
!1426 = !DILocation(line: 442, column: 32, scope: !1424)
!1427 = !DILocation(line: 442, column: 5, scope: !1424)
!1428 = !DILocation(line: 442, column: 9, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1420, file: !425, discriminator: 2)
!1430 = !DILocation(line: 442, column: 26, scope: !1429)
!1431 = !DILocation(line: 442, column: 31, scope: !1429)
!1432 = !DILocation(line: 442, column: 6, scope: !1429)
!1433 = !DILocation(line: 443, column: 3, scope: !1420)
!1434 = !DILocation(line: 445, column: 14, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1407, file: !425, line: 445, column: 2)
!1436 = !DILocation(line: 445, column: 13, scope: !1435)
!1437 = !DILocation(line: 445, column: 12, scope: !1435)
!1438 = !DILocation(line: 445, column: 12, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1435, file: !425, discriminator: 1)
!1440 = !DILocation(line: 445, column: 13, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1435, file: !425, discriminator: 2)
!1442 = !DILocation(line: 445, column: 30, scope: !1441)
!1443 = !DILocation(line: 445, column: 12, scope: !1441)
!1444 = !DILocation(line: 445, column: 12, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1435, file: !425, discriminator: 3)
!1446 = !DILocation(line: 445, column: 9, scope: !1445)
!1447 = !DILocation(line: 445, column: 7, scope: !1445)
!1448 = !DILocation(line: 445, column: 37, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1450, file: !425, discriminator: 4)
!1450 = distinct !DILexicalBlock(scope: !1435, file: !425, line: 445, column: 2)
!1451 = !DILocation(line: 445, column: 2, scope: !1449)
!1452 = !DILocation(line: 446, column: 10, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !425, line: 445, column: 50)
!1454 = !DILocation(line: 446, column: 13, scope: !1453)
!1455 = !DILocation(line: 446, column: 8, scope: !1453)
!1456 = !DILocation(line: 448, column: 15, scope: !1453)
!1457 = !DILocation(line: 448, column: 19, scope: !1453)
!1458 = !DILocation(line: 448, column: 13, scope: !1453)
!1459 = !DILocation(line: 448, column: 11, scope: !1453)
!1460 = !DILocation(line: 449, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1453, file: !425, line: 449, column: 7)
!1462 = !DILocation(line: 449, column: 16, scope: !1461)
!1463 = !DILocation(line: 449, column: 22, scope: !1461)
!1464 = !DILocation(line: 449, column: 19, scope: !1461)
!1465 = !DILocation(line: 449, column: 7, scope: !1453)
!1466 = !DILocation(line: 450, column: 4, scope: !1461)
!1467 = !DILocation(line: 452, column: 21, scope: !1453)
!1468 = !DILocation(line: 452, column: 37, scope: !1453)
!1469 = !DILocation(line: 452, column: 3, scope: !1453)
!1470 = !DILocation(line: 453, column: 2, scope: !1453)
!1471 = !DILocation(line: 445, column: 44, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1450, file: !425, discriminator: 5)
!1473 = !DILocation(line: 445, column: 42, scope: !1472)
!1474 = !DILocation(line: 445, column: 2, scope: !1472)
!1475 = distinct !{!1475, !1476}
!1476 = !DILocation(line: 445, column: 2, scope: !1407)
!1477 = !DILocation(line: 454, column: 1, scope: !1407)
!1478 = distinct !DISubprogram(name: "free_checkers_queue", scope: !425, file: !425, line: 458, type: !648, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1479 = !DILocation(line: 460, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !425, line: 460, column: 6)
!1481 = !DILocation(line: 460, column: 6, scope: !1478)
!1482 = !DILocation(line: 461, column: 3, scope: !1480)
!1483 = !DILocation(line: 463, column: 2, scope: !1478)
!1484 = !DILocation(line: 464, column: 1, scope: !1478)
!1485 = !DILocation(line: 464, column: 1, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1478, file: !425, discriminator: 1)
!1487 = distinct !DISubprogram(name: "register_checkers_thread", scope: !425, file: !425, line: 468, type: !648, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1488 = !DILocalVariable(name: "checker", scope: !1487, file: !425, line: 470, type: !56)
!1489 = !DILocation(line: 470, column: 13, scope: !1487)
!1490 = !DILocalVariable(name: "e", scope: !1487, file: !425, line: 471, type: !1413)
!1491 = !DILocation(line: 471, column: 10, scope: !1487)
!1492 = !DILocalVariable(name: "warmup", scope: !1487, file: !425, line: 472, type: !126)
!1493 = !DILocation(line: 472, column: 16, scope: !1487)
!1494 = !DILocation(line: 474, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1487, file: !425, line: 474, column: 2)
!1496 = !DILocation(line: 474, column: 14, scope: !1495)
!1497 = !DILocation(line: 474, column: 36, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 1)
!1499 = !DILocation(line: 474, column: 35, scope: !1498)
!1500 = !DILocation(line: 474, column: 34, scope: !1498)
!1501 = !DILocation(line: 474, column: 34, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 2)
!1503 = !DILocation(line: 474, column: 4, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 3)
!1505 = !DILocation(line: 474, column: 21, scope: !1504)
!1506 = !DILocation(line: 474, column: 34, scope: !1504)
!1507 = !DILocation(line: 474, column: 34, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 4)
!1509 = !DILocation(line: 474, column: 14, scope: !1508)
!1510 = !DILocation(line: 474, column: 14, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 5)
!1512 = !DILocation(line: 474, column: 14, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 6)
!1514 = !DILocation(line: 474, column: 11, scope: !1513)
!1515 = !DILocation(line: 474, column: 7, scope: !1513)
!1516 = !DILocation(line: 474, column: 5, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !425, discriminator: 7)
!1518 = distinct !DILexicalBlock(scope: !1495, file: !425, line: 474, column: 2)
!1519 = !DILocation(line: 474, column: 4, scope: !1517)
!1520 = !DILocation(line: 474, column: 8, scope: !1517)
!1521 = !DILocation(line: 474, column: 26, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1518, file: !425, discriminator: 8)
!1523 = !DILocation(line: 474, column: 30, scope: !1522)
!1524 = !DILocation(line: 474, column: 24, scope: !1522)
!1525 = !DILocation(line: 474, column: 22, scope: !1522)
!1526 = !DILocation(line: 474, column: 2, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1495, file: !425, discriminator: 9)
!1528 = !DILocation(line: 475, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !425, line: 475, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !425, line: 474, column: 60)
!1531 = !DILocation(line: 475, column: 16, scope: !1529)
!1532 = !DILocation(line: 475, column: 7, scope: !1530)
!1533 = !DILocation(line: 477, column: 8, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !425, line: 477, column: 8)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !425, line: 476, column: 3)
!1536 = !DILocation(line: 477, column: 17, scope: !1534)
!1537 = !DILocation(line: 477, column: 21, scope: !1534)
!1538 = !DILocation(line: 477, column: 32, scope: !1534)
!1539 = !DILocation(line: 477, column: 36, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1534, file: !425, discriminator: 1)
!1541 = !DILocation(line: 477, column: 45, scope: !1540)
!1542 = !DILocation(line: 477, column: 49, scope: !1540)
!1543 = !DILocation(line: 477, column: 8, scope: !1540)
!1544 = !DILocation(line: 478, column: 5, scope: !1534)
!1545 = !DILocation(line: 478, column: 14, scope: !1534)
!1546 = !DILocation(line: 478, column: 22, scope: !1534)
!1547 = !DILocation(line: 481, column: 12, scope: !1535)
!1548 = !DILocation(line: 481, column: 21, scope: !1535)
!1549 = !DILocation(line: 481, column: 68, scope: !1535)
!1550 = !DILocation(line: 481, column: 77, scope: !1535)
!1551 = !DILocation(line: 481, column: 82, scope: !1535)
!1552 = !DILocation(line: 481, column: 89, scope: !1535)
!1553 = !DILocation(line: 481, column: 98, scope: !1535)
!1554 = !DILocation(line: 481, column: 103, scope: !1535)
!1555 = !DILocation(line: 481, column: 45, scope: !1535)
!1556 = !DILocation(line: 481, column: 131, scope: !1535)
!1557 = !DILocation(line: 481, column: 140, scope: !1535)
!1558 = !DILocation(line: 481, column: 120, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1535, file: !425, discriminator: 1)
!1560 = !DILocation(line: 480, column: 4, scope: !1535)
!1561 = !DILocation(line: 487, column: 13, scope: !1535)
!1562 = !DILocation(line: 487, column: 22, scope: !1535)
!1563 = !DILocation(line: 487, column: 11, scope: !1535)
!1564 = !DILocation(line: 488, column: 8, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1535, file: !425, line: 488, column: 8)
!1566 = !DILocation(line: 488, column: 8, scope: !1535)
!1567 = !DILocation(line: 489, column: 14, scope: !1565)
!1568 = !DILocation(line: 489, column: 33, scope: !1565)
!1569 = !DILocation(line: 489, column: 23, scope: !1565)
!1570 = !DILocation(line: 489, column: 21, scope: !1565)
!1571 = !DILocation(line: 489, column: 40, scope: !1565)
!1572 = !DILocation(line: 489, column: 12, scope: !1565)
!1573 = !DILocation(line: 489, column: 5, scope: !1565)
!1574 = !DILocation(line: 490, column: 21, scope: !1535)
!1575 = !DILocation(line: 490, column: 29, scope: !1535)
!1576 = !DILocation(line: 490, column: 38, scope: !1535)
!1577 = !DILocation(line: 490, column: 46, scope: !1535)
!1578 = !DILocation(line: 491, column: 18, scope: !1535)
!1579 = !DILocation(line: 491, column: 16, scope: !1535)
!1580 = !DILocation(line: 490, column: 4, scope: !1535)
!1581 = !DILocation(line: 492, column: 3, scope: !1535)
!1582 = !DILocation(line: 493, column: 2, scope: !1530)
!1583 = !DILocation(line: 474, column: 49, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1518, file: !425, discriminator: 10)
!1585 = !DILocation(line: 474, column: 53, scope: !1584)
!1586 = !DILocation(line: 474, column: 46, scope: !1584)
!1587 = !DILocation(line: 474, column: 2, scope: !1584)
!1588 = distinct !{!1588, !1589}
!1589 = !DILocation(line: 474, column: 2, scope: !1487)
!1590 = !DILocation(line: 502, column: 1, scope: !1487)
!1591 = distinct !DISubprogram(name: "update_checker_activity", scope: !425, file: !425, line: 590, type: !1592, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !271, !65, !214}
!1594 = !DILocalVariable(name: "family", arg: 1, scope: !1591, file: !425, line: 590, type: !271)
!1595 = !DILocation(line: 590, column: 37, scope: !1591)
!1596 = !DILocalVariable(name: "address", arg: 2, scope: !1591, file: !425, line: 590, type: !65)
!1597 = !DILocation(line: 590, column: 51, scope: !1591)
!1598 = !DILocalVariable(name: "enable", arg: 3, scope: !1591, file: !425, line: 590, type: !214)
!1599 = !DILocation(line: 590, column: 64, scope: !1591)
!1600 = !DILocalVariable(name: "checker", scope: !1591, file: !425, line: 592, type: !56)
!1601 = !DILocation(line: 592, column: 13, scope: !1591)
!1602 = !DILocalVariable(name: "vs", scope: !1591, file: !425, line: 593, type: !252)
!1603 = !DILocation(line: 593, column: 20, scope: !1591)
!1604 = !DILocalVariable(name: "e", scope: !1591, file: !425, line: 594, type: !1413)
!1605 = !DILocation(line: 594, column: 10, scope: !1591)
!1606 = !DILocalVariable(name: "e1", scope: !1591, file: !425, line: 594, type: !1413)
!1607 = !DILocation(line: 594, column: 13, scope: !1591)
!1608 = !DILocalVariable(name: "addr_str", scope: !1591, file: !425, line: 595, type: !1609)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 368, align: 8, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 46)
!1612 = !DILocation(line: 595, column: 7, scope: !1591)
!1613 = !DILocalVariable(name: "address_logged", scope: !1591, file: !425, line: 596, type: !214)
!1614 = !DILocation(line: 596, column: 6, scope: !1591)
!1615 = !DILocation(line: 598, column: 6, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1591, file: !425, line: 598, column: 6)
!1617 = !DILocation(line: 598, column: 6, scope: !1591)
!1618 = !DILocation(line: 599, column: 13, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !425, line: 598, column: 47)
!1620 = !DILocation(line: 599, column: 21, scope: !1619)
!1621 = !DILocation(line: 599, column: 30, scope: !1619)
!1622 = !DILocation(line: 599, column: 3, scope: !1619)
!1623 = !DILocation(line: 601, column: 11, scope: !1619)
!1624 = !DILocation(line: 601, column: 22, scope: !1619)
!1625 = !DILocation(line: 601, column: 21, scope: !1619)
!1626 = !DILocation(line: 600, column: 3, scope: !1619)
!1627 = !DILocation(line: 602, column: 18, scope: !1619)
!1628 = !DILocation(line: 603, column: 2, scope: !1619)
!1629 = !DILocation(line: 605, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1591, file: !425, line: 605, column: 6)
!1631 = !DILocation(line: 605, column: 6, scope: !1591)
!1632 = !DILocation(line: 606, column: 3, scope: !1630)
!1633 = !DILocation(line: 608, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1591, file: !425, line: 608, column: 6)
!1635 = !DILocation(line: 608, column: 24, scope: !1634)
!1636 = !DILocation(line: 608, column: 5, scope: !1634)
!1637 = !DILocation(line: 608, column: 10, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1634, file: !425, discriminator: 1)
!1639 = !DILocation(line: 608, column: 27, scope: !1638)
!1640 = !DILocation(line: 608, column: 32, scope: !1638)
!1641 = !DILocation(line: 608, column: 5, scope: !1638)
!1642 = !DILocation(line: 608, column: 9, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1634, file: !425, discriminator: 2)
!1644 = !DILocation(line: 608, column: 26, scope: !1643)
!1645 = !DILocation(line: 608, column: 31, scope: !1643)
!1646 = !DILocation(line: 608, column: 6, scope: !1643)
!1647 = !DILocation(line: 609, column: 3, scope: !1634)
!1648 = !DILocation(line: 612, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1591, file: !425, line: 612, column: 2)
!1650 = !DILocation(line: 612, column: 27, scope: !1649)
!1651 = !DILocation(line: 612, column: 14, scope: !1649)
!1652 = !DILocation(line: 612, column: 36, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 1)
!1654 = !DILocation(line: 612, column: 48, scope: !1653)
!1655 = !DILocation(line: 612, column: 35, scope: !1653)
!1656 = !DILocation(line: 612, column: 34, scope: !1653)
!1657 = !DILocation(line: 612, column: 34, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 2)
!1659 = !DILocation(line: 612, column: 4, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 3)
!1661 = !DILocation(line: 612, column: 16, scope: !1660)
!1662 = !DILocation(line: 612, column: 21, scope: !1660)
!1663 = !DILocation(line: 612, column: 34, scope: !1660)
!1664 = !DILocation(line: 612, column: 34, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 4)
!1666 = !DILocation(line: 612, column: 14, scope: !1665)
!1667 = !DILocation(line: 612, column: 14, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 5)
!1669 = !DILocation(line: 612, column: 14, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 6)
!1671 = !DILocation(line: 612, column: 11, scope: !1670)
!1672 = !DILocation(line: 612, column: 7, scope: !1670)
!1673 = !DILocation(line: 612, column: 5, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !425, discriminator: 7)
!1675 = distinct !DILexicalBlock(scope: !1649, file: !425, line: 612, column: 2)
!1676 = !DILocation(line: 612, column: 4, scope: !1674)
!1677 = !DILocation(line: 612, column: 8, scope: !1674)
!1678 = !DILocation(line: 612, column: 21, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1675, file: !425, discriminator: 8)
!1680 = !DILocation(line: 612, column: 25, scope: !1679)
!1681 = !DILocation(line: 612, column: 19, scope: !1679)
!1682 = !DILocation(line: 612, column: 17, scope: !1679)
!1683 = !DILocation(line: 612, column: 2, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1649, file: !425, discriminator: 9)
!1685 = !DILocation(line: 613, column: 8, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 613, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1675, file: !425, line: 612, column: 55)
!1688 = !DILocation(line: 613, column: 12, scope: !1686)
!1689 = !DILocation(line: 613, column: 7, scope: !1687)
!1690 = !DILocation(line: 614, column: 4, scope: !1686)
!1691 = !DILocation(line: 617, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 617, column: 7)
!1693 = !DILocation(line: 617, column: 11, scope: !1692)
!1694 = !DILocation(line: 617, column: 17, scope: !1692)
!1695 = !DILocation(line: 617, column: 14, scope: !1692)
!1696 = !DILocation(line: 617, column: 7, scope: !1687)
!1697 = !DILocation(line: 618, column: 4, scope: !1692)
!1698 = !DILocation(line: 620, column: 21, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 620, column: 7)
!1700 = !DILocation(line: 620, column: 25, scope: !1699)
!1701 = !DILocation(line: 620, column: 8, scope: !1699)
!1702 = !DILocation(line: 620, column: 7, scope: !1687)
!1703 = !DILocation(line: 621, column: 4, scope: !1699)
!1704 = !DILocation(line: 623, column: 8, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 623, column: 7)
!1706 = !DILocation(line: 623, column: 23, scope: !1705)
!1707 = !DILocation(line: 624, column: 7, scope: !1705)
!1708 = !DILocation(line: 623, column: 7, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1687, file: !425, discriminator: 1)
!1710 = !DILocation(line: 625, column: 14, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !425, line: 624, column: 43)
!1712 = !DILocation(line: 625, column: 22, scope: !1711)
!1713 = !DILocation(line: 625, column: 31, scope: !1711)
!1714 = !DILocation(line: 625, column: 4, scope: !1711)
!1715 = !DILocation(line: 627, column: 12, scope: !1711)
!1716 = !DILocation(line: 627, column: 23, scope: !1711)
!1717 = !DILocation(line: 627, column: 22, scope: !1711)
!1718 = !DILocation(line: 626, column: 4, scope: !1711)
!1719 = !DILocation(line: 628, column: 3, scope: !1711)
!1720 = !DILocation(line: 629, column: 18, scope: !1687)
!1721 = !DILocation(line: 634, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 634, column: 7)
!1723 = !DILocation(line: 634, column: 7, scope: !1687)
!1724 = !DILocation(line: 635, column: 4, scope: !1722)
!1725 = !DILocation(line: 635, column: 8, scope: !1722)
!1726 = !DILocation(line: 635, column: 29, scope: !1722)
!1727 = !DILocation(line: 637, column: 4, scope: !1722)
!1728 = !DILocation(line: 637, column: 8, scope: !1722)
!1729 = !DILocation(line: 637, column: 29, scope: !1722)
!1730 = !DILocation(line: 640, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1687, file: !425, line: 640, column: 3)
!1732 = !DILocation(line: 640, column: 16, scope: !1731)
!1733 = !DILocation(line: 640, column: 38, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 1)
!1735 = !DILocation(line: 640, column: 37, scope: !1734)
!1736 = !DILocation(line: 640, column: 36, scope: !1734)
!1737 = !DILocation(line: 640, column: 36, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 2)
!1739 = !DILocation(line: 640, column: 5, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 3)
!1741 = !DILocation(line: 640, column: 22, scope: !1740)
!1742 = !DILocation(line: 640, column: 36, scope: !1740)
!1743 = !DILocation(line: 640, column: 36, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 4)
!1745 = !DILocation(line: 640, column: 16, scope: !1744)
!1746 = !DILocation(line: 640, column: 16, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 5)
!1748 = !DILocation(line: 640, column: 16, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 6)
!1750 = !DILocation(line: 640, column: 13, scope: !1749)
!1751 = !DILocation(line: 640, column: 8, scope: !1749)
!1752 = !DILocation(line: 640, column: 6, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !425, discriminator: 7)
!1754 = distinct !DILexicalBlock(scope: !1731, file: !425, line: 640, column: 3)
!1755 = !DILocation(line: 640, column: 5, scope: !1753)
!1756 = !DILocation(line: 640, column: 10, scope: !1753)
!1757 = !DILocation(line: 640, column: 28, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1754, file: !425, discriminator: 8)
!1759 = !DILocation(line: 640, column: 33, scope: !1758)
!1760 = !DILocation(line: 640, column: 26, scope: !1758)
!1761 = !DILocation(line: 640, column: 24, scope: !1758)
!1762 = !DILocation(line: 640, column: 3, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1731, file: !425, discriminator: 9)
!1764 = !DILocation(line: 641, column: 8, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !425, line: 641, column: 8)
!1766 = distinct !DILexicalBlock(scope: !1754, file: !425, line: 640, column: 65)
!1767 = !DILocation(line: 641, column: 17, scope: !1765)
!1768 = !DILocation(line: 641, column: 23, scope: !1765)
!1769 = !DILocation(line: 641, column: 20, scope: !1765)
!1770 = !DILocation(line: 641, column: 8, scope: !1766)
!1771 = !DILocation(line: 642, column: 5, scope: !1765)
!1772 = !DILocation(line: 644, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !425, line: 644, column: 8)
!1774 = !DILocation(line: 644, column: 18, scope: !1773)
!1775 = !DILocation(line: 644, column: 27, scope: !1773)
!1776 = !DILocation(line: 644, column: 15, scope: !1773)
!1777 = !DILocation(line: 644, column: 35, scope: !1773)
!1778 = !DILocation(line: 645, column: 9, scope: !1773)
!1779 = !DILocation(line: 645, column: 16, scope: !1773)
!1780 = !DILocation(line: 645, column: 19, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1773, file: !425, discriminator: 1)
!1782 = !DILocation(line: 645, column: 23, scope: !1781)
!1783 = !DILocation(line: 645, column: 45, scope: !1781)
!1784 = !DILocation(line: 644, column: 8, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1766, file: !425, discriminator: 1)
!1786 = !DILocation(line: 647, column: 9, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1773, file: !425, line: 645, column: 52)
!1788 = !DILocation(line: 647, column: 18, scope: !1787)
!1789 = !DILocation(line: 647, column: 8, scope: !1787)
!1790 = !DILocation(line: 648, column: 32, scope: !1787)
!1791 = !DILocation(line: 648, column: 41, scope: !1787)
!1792 = !DILocation(line: 648, column: 46, scope: !1787)
!1793 = !DILocation(line: 648, column: 53, scope: !1787)
!1794 = !DILocation(line: 648, column: 62, scope: !1787)
!1795 = !DILocation(line: 648, column: 67, scope: !1787)
!1796 = !DILocation(line: 648, column: 9, scope: !1787)
!1797 = !DILocation(line: 648, column: 95, scope: !1787)
!1798 = !DILocation(line: 648, column: 104, scope: !1787)
!1799 = !DILocation(line: 648, column: 84, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1787, file: !425, discriminator: 1)
!1801 = !DILocation(line: 646, column: 5, scope: !1787)
!1802 = !DILocation(line: 649, column: 24, scope: !1787)
!1803 = !DILocation(line: 649, column: 5, scope: !1787)
!1804 = !DILocation(line: 649, column: 14, scope: !1787)
!1805 = !DILocation(line: 649, column: 22, scope: !1787)
!1806 = !DILocation(line: 650, column: 4, scope: !1787)
!1807 = !DILocation(line: 651, column: 3, scope: !1766)
!1808 = !DILocation(line: 640, column: 53, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1754, file: !425, discriminator: 10)
!1810 = !DILocation(line: 640, column: 58, scope: !1809)
!1811 = !DILocation(line: 640, column: 50, scope: !1809)
!1812 = !DILocation(line: 640, column: 3, scope: !1809)
!1813 = distinct !{!1813, !1814}
!1814 = !DILocation(line: 640, column: 3, scope: !1687)
!1815 = !DILocation(line: 652, column: 2, scope: !1687)
!1816 = !DILocation(line: 612, column: 44, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1675, file: !425, discriminator: 10)
!1818 = !DILocation(line: 612, column: 48, scope: !1817)
!1819 = !DILocation(line: 612, column: 41, scope: !1817)
!1820 = !DILocation(line: 612, column: 2, scope: !1817)
!1821 = distinct !{!1821, !1822}
!1822 = !DILocation(line: 612, column: 2, scope: !1591)
!1823 = !DILocation(line: 653, column: 1, scope: !1591)
!1824 = distinct !DISubprogram(name: "__test_bit", scope: !41, file: !41, line: 47, type: !1825, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!214, !186, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1829 = !DILocalVariable(name: "idx", arg: 1, scope: !1824, file: !41, line: 47, type: !186)
!1830 = !DILocation(line: 47, column: 39, scope: !1824)
!1831 = !DILocalVariable(name: "bmap", arg: 2, scope: !1824, file: !41, line: 47, type: !1827)
!1832 = !DILocation(line: 47, column: 65, scope: !1824)
!1833 = !DILocation(line: 49, column: 19, scope: !1824)
!1834 = !DILocation(line: 49, column: 18, scope: !1824)
!1835 = !DILocation(line: 49, column: 24, scope: !1824)
!1836 = !DILocation(line: 49, column: 12, scope: !1824)
!1837 = !DILocation(line: 49, column: 68, scope: !1824)
!1838 = !DILocation(line: 49, column: 67, scope: !1824)
!1839 = !DILocation(line: 49, column: 73, scope: !1824)
!1840 = !DILocation(line: 49, column: 63, scope: !1824)
!1841 = !DILocation(line: 49, column: 56, scope: !1824)
!1842 = !DILocation(line: 49, column: 10, scope: !1824)
!1843 = !DILocation(line: 49, column: 9, scope: !1824)
!1844 = !DILocation(line: 49, column: 2, scope: !1824)
!1845 = distinct !DISubprogram(name: "addr_matches", scope: !425, file: !425, line: 506, type: !1846, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!214, !1848, !65}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!1850 = !DILocalVariable(name: "vs", arg: 1, scope: !1845, file: !425, line: 506, type: !1848)
!1851 = !DILocation(line: 506, column: 38, scope: !1845)
!1852 = !DILocalVariable(name: "address", arg: 2, scope: !1845, file: !425, line: 506, type: !65)
!1853 = !DILocation(line: 506, column: 48, scope: !1845)
!1854 = !DILocalVariable(name: "addr", scope: !1845, file: !425, line: 508, type: !65)
!1855 = !DILocation(line: 508, column: 8, scope: !1845)
!1856 = !DILocalVariable(name: "vsg_entry", scope: !1845, file: !425, line: 509, type: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_entry_t", file: !254, line: 122, baseType: !1859)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group_entry", file: !254, line: 105, size: 1280, align: 64, elements: !1860)
!1860 = !{!1861, !1862, !1879}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "is_fwmark", scope: !1859, file: !254, line: 106, baseType: !214, size: 8, align: 8)
!1862 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !254, line: 107, baseType: !1863, size: 1152, align: 64, offset: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !254, line: 107, size: 1152, align: 64, elements: !1864)
!1864 = !{!1865, !1873}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !254, line: 108, baseType: !1866, size: 1152, align: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !254, line: 108, size: 1152, align: 64, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1866, file: !254, line: 109, baseType: !267, size: 1024, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1866, file: !254, line: 110, baseType: !279, size: 32, align: 32, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_alive", scope: !1866, file: !254, line: 111, baseType: !186, size: 32, align: 32, offset: 1056)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "udp_alive", scope: !1866, file: !254, line: 112, baseType: !186, size: 32, align: 32, offset: 1088)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sctp_alive", scope: !1866, file: !254, line: 113, baseType: !186, size: 32, align: 32, offset: 1120)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !254, line: 115, baseType: !1874, size: 96, align: 32)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !254, line: 115, size: 96, align: 32, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !1874, file: !254, line: 116, baseType: !279, size: 32, align: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fwm4_alive", scope: !1874, file: !254, line: 117, baseType: !186, size: 32, align: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "fwm6_alive", scope: !1874, file: !254, line: 118, baseType: !186, size: 32, align: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !1859, file: !254, line: 121, baseType: !214, size: 8, align: 8, offset: 1216)
!1880 = !DILocation(line: 509, column: 32, scope: !1845)
!1881 = !DILocation(line: 511, column: 6, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 511, column: 6)
!1883 = !DILocation(line: 511, column: 10, scope: !1882)
!1884 = !DILocation(line: 511, column: 15, scope: !1882)
!1885 = !DILocation(line: 511, column: 25, scope: !1882)
!1886 = !DILocation(line: 511, column: 6, scope: !1845)
!1887 = !DILocation(line: 512, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !425, line: 512, column: 7)
!1889 = distinct !DILexicalBlock(scope: !1882, file: !425, line: 511, column: 38)
!1890 = !DILocation(line: 512, column: 11, scope: !1888)
!1891 = !DILocation(line: 512, column: 16, scope: !1888)
!1892 = !DILocation(line: 512, column: 26, scope: !1888)
!1893 = !DILocation(line: 512, column: 7, scope: !1889)
!1894 = !DILocation(line: 513, column: 46, scope: !1888)
!1895 = !DILocation(line: 513, column: 50, scope: !1888)
!1896 = !DILocation(line: 513, column: 57, scope: !1888)
!1897 = !DILocation(line: 513, column: 11, scope: !1888)
!1898 = !DILocation(line: 513, column: 9, scope: !1888)
!1899 = !DILocation(line: 513, column: 4, scope: !1888)
!1900 = !DILocation(line: 515, column: 45, scope: !1888)
!1901 = !DILocation(line: 515, column: 49, scope: !1888)
!1902 = !DILocation(line: 515, column: 56, scope: !1888)
!1903 = !DILocation(line: 515, column: 11, scope: !1888)
!1904 = !DILocation(line: 515, column: 9, scope: !1888)
!1905 = !DILocation(line: 517, column: 23, scope: !1889)
!1906 = !DILocation(line: 517, column: 27, scope: !1889)
!1907 = !DILocation(line: 517, column: 32, scope: !1889)
!1908 = !DILocation(line: 517, column: 43, scope: !1889)
!1909 = !DILocation(line: 517, column: 49, scope: !1889)
!1910 = !DILocation(line: 517, column: 10, scope: !1889)
!1911 = !DILocation(line: 517, column: 3, scope: !1889)
!1912 = !DILocation(line: 520, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 520, column: 6)
!1914 = !DILocation(line: 520, column: 11, scope: !1913)
!1915 = !DILocation(line: 520, column: 6, scope: !1845)
!1916 = !DILocation(line: 521, column: 3, scope: !1913)
!1917 = !DILocation(line: 523, column: 6, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1845, file: !425, line: 523, column: 6)
!1919 = !DILocation(line: 523, column: 10, scope: !1918)
!1920 = !DILocation(line: 523, column: 15, scope: !1918)
!1921 = !DILocation(line: 523, column: 6, scope: !1845)
!1922 = !DILocalVariable(name: "e", scope: !1923, file: !425, line: 524, type: !1413)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !425, line: 523, column: 27)
!1924 = !DILocation(line: 524, column: 11, scope: !1923)
!1925 = !DILocalVariable(name: "mask_addr", scope: !1923, file: !425, line: 525, type: !413)
!1926 = !DILocation(line: 525, column: 18, scope: !1923)
!1927 = !DILocalVariable(name: "mask_addr6", scope: !1923, file: !425, line: 526, type: !380)
!1928 = !DILocation(line: 526, column: 19, scope: !1923)
!1929 = !DILocalVariable(name: "addr_base", scope: !1923, file: !425, line: 527, type: !186)
!1930 = !DILocation(line: 527, column: 12, scope: !1923)
!1931 = !DILocation(line: 529, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !425, line: 529, column: 7)
!1933 = !DILocation(line: 529, column: 11, scope: !1932)
!1934 = !DILocation(line: 529, column: 14, scope: !1932)
!1935 = !DILocation(line: 529, column: 7, scope: !1923)
!1936 = !DILocation(line: 530, column: 34, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !425, line: 529, column: 25)
!1938 = !DILocation(line: 530, column: 17, scope: !1937)
!1939 = !DILocation(line: 530, column: 16, scope: !1937)
!1940 = !DILocation(line: 531, column: 32, scope: !1937)
!1941 = !DILocation(line: 531, column: 16, scope: !1937)
!1942 = !DILocation(line: 531, column: 40, scope: !1937)
!1943 = !DILocation(line: 531, column: 14, scope: !1937)
!1944 = !DILocation(line: 532, column: 24, scope: !1937)
!1945 = !DILocation(line: 532, column: 14, scope: !1937)
!1946 = !DILocation(line: 532, column: 21, scope: !1937)
!1947 = !DILocation(line: 533, column: 3, scope: !1937)
!1948 = !DILocation(line: 535, column: 36, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1932, file: !425, line: 534, column: 8)
!1950 = !DILocation(line: 535, column: 18, scope: !1949)
!1951 = !DILocation(line: 535, column: 17, scope: !1949)
!1952 = !DILocation(line: 536, column: 32, scope: !1949)
!1953 = !DILocation(line: 536, column: 40, scope: !1949)
!1954 = !DILocation(line: 536, column: 22, scope: !1949)
!1955 = !DILocation(line: 536, column: 16, scope: !1949)
!1956 = !DILocation(line: 536, column: 14, scope: !1949)
!1957 = !DILocation(line: 537, column: 14, scope: !1949)
!1958 = !DILocation(line: 537, column: 22, scope: !1949)
!1959 = !DILocation(line: 537, column: 4, scope: !1949)
!1960 = !DILocation(line: 537, column: 27, scope: !1949)
!1961 = !DILocation(line: 540, column: 15, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1923, file: !425, line: 540, column: 3)
!1963 = !DILocation(line: 540, column: 19, scope: !1962)
!1964 = !DILocation(line: 540, column: 24, scope: !1962)
!1965 = !DILocation(line: 540, column: 14, scope: !1962)
!1966 = !DILocation(line: 540, column: 13, scope: !1962)
!1967 = !DILocation(line: 540, column: 13, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1962, file: !425, discriminator: 1)
!1969 = !DILocation(line: 540, column: 14, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1962, file: !425, discriminator: 2)
!1971 = !DILocation(line: 540, column: 18, scope: !1970)
!1972 = !DILocation(line: 540, column: 23, scope: !1970)
!1973 = !DILocation(line: 540, column: 36, scope: !1970)
!1974 = !DILocation(line: 540, column: 13, scope: !1970)
!1975 = !DILocation(line: 540, column: 13, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1962, file: !425, discriminator: 3)
!1977 = !DILocation(line: 540, column: 10, scope: !1976)
!1978 = !DILocation(line: 540, column: 8, scope: !1976)
!1979 = !DILocation(line: 540, column: 43, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1981, file: !425, discriminator: 4)
!1981 = distinct !DILexicalBlock(scope: !1962, file: !425, line: 540, column: 3)
!1982 = !DILocation(line: 540, column: 3, scope: !1980)
!1983 = !DILocation(line: 541, column: 18, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !425, line: 540, column: 65)
!1985 = !DILocation(line: 541, column: 22, scope: !1984)
!1986 = !DILocation(line: 541, column: 16, scope: !1984)
!1987 = !DILocation(line: 541, column: 14, scope: !1984)
!1988 = !DILocalVariable(name: "range_addr", scope: !1984, file: !425, line: 542, type: !267)
!1989 = !DILocation(line: 542, column: 28, scope: !1984)
!1990 = !DILocation(line: 542, column: 41, scope: !1984)
!1991 = !DILocation(line: 542, column: 52, scope: !1984)
!1992 = !DILocalVariable(name: "ra_base", scope: !1984, file: !425, line: 543, type: !279)
!1993 = !DILocation(line: 543, column: 13, scope: !1984)
!1994 = !DILocation(line: 545, column: 9, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1984, file: !425, line: 545, column: 8)
!1996 = !DILocation(line: 545, column: 20, scope: !1995)
!1997 = !DILocation(line: 545, column: 8, scope: !1984)
!1998 = !DILocation(line: 546, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !425, line: 546, column: 9)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !425, line: 545, column: 27)
!2001 = !DILocation(line: 546, column: 20, scope: !1999)
!2002 = !DILocation(line: 546, column: 25, scope: !1999)
!2003 = !DILocation(line: 546, column: 35, scope: !1999)
!2004 = !DILocation(line: 546, column: 9, scope: !2000)
!2005 = !DILocation(line: 547, column: 48, scope: !1999)
!2006 = !DILocation(line: 547, column: 59, scope: !1999)
!2007 = !DILocation(line: 547, column: 66, scope: !1999)
!2008 = !DILocation(line: 547, column: 13, scope: !1999)
!2009 = !DILocation(line: 547, column: 11, scope: !1999)
!2010 = !DILocation(line: 547, column: 6, scope: !1999)
!2011 = !DILocation(line: 549, column: 47, scope: !1999)
!2012 = !DILocation(line: 549, column: 58, scope: !1999)
!2013 = !DILocation(line: 549, column: 65, scope: !1999)
!2014 = !DILocation(line: 549, column: 13, scope: !1999)
!2015 = !DILocation(line: 549, column: 11, scope: !1999)
!2016 = !DILocation(line: 551, column: 22, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2000, file: !425, line: 551, column: 9)
!2018 = !DILocation(line: 551, column: 33, scope: !2017)
!2019 = !DILocation(line: 551, column: 38, scope: !2017)
!2020 = !DILocation(line: 551, column: 49, scope: !2017)
!2021 = !DILocation(line: 551, column: 55, scope: !2017)
!2022 = !DILocation(line: 551, column: 9, scope: !2017)
!2023 = !DILocation(line: 551, column: 9, scope: !2000)
!2024 = !DILocation(line: 552, column: 6, scope: !2017)
!2025 = !DILocation(line: 553, column: 4, scope: !2000)
!2026 = !DILocation(line: 555, column: 20, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !425, line: 555, column: 9)
!2028 = distinct !DILexicalBlock(scope: !1995, file: !425, line: 554, column: 9)
!2029 = !DILocation(line: 555, column: 9, scope: !2027)
!2030 = !DILocation(line: 555, column: 30, scope: !2027)
!2031 = !DILocation(line: 555, column: 9, scope: !2028)
!2032 = !DILocalVariable(name: "ra", scope: !2033, file: !425, line: 556, type: !413)
!2033 = distinct !DILexicalBlock(scope: !2027, file: !425, line: 555, column: 41)
!2034 = !DILocation(line: 556, column: 21, scope: !2033)
!2035 = !DILocation(line: 558, column: 48, scope: !2033)
!2036 = !DILocation(line: 559, column: 25, scope: !2033)
!2037 = !DILocation(line: 559, column: 16, scope: !2033)
!2038 = !DILocation(line: 559, column: 33, scope: !2033)
!2039 = !DILocation(line: 559, column: 14, scope: !2033)
!2040 = !DILocation(line: 561, column: 10, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2033, file: !425, line: 561, column: 10)
!2042 = !DILocation(line: 561, column: 22, scope: !2041)
!2043 = !DILocation(line: 561, column: 20, scope: !2041)
!2044 = !DILocation(line: 561, column: 30, scope: !2041)
!2045 = !DILocation(line: 561, column: 33, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2041, file: !425, discriminator: 1)
!2047 = !DILocation(line: 561, column: 45, scope: !2046)
!2048 = !DILocation(line: 561, column: 55, scope: !2046)
!2049 = !DILocation(line: 561, column: 66, scope: !2046)
!2050 = !DILocation(line: 561, column: 53, scope: !2046)
!2051 = !DILocation(line: 561, column: 43, scope: !2046)
!2052 = !DILocation(line: 561, column: 10, scope: !2046)
!2053 = !DILocation(line: 562, column: 7, scope: !2041)
!2054 = !DILocation(line: 564, column: 19, scope: !2033)
!2055 = !DILocation(line: 564, column: 9, scope: !2033)
!2056 = !DILocation(line: 564, column: 16, scope: !2033)
!2057 = !DILocation(line: 565, column: 13, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2033, file: !425, line: 565, column: 10)
!2059 = !DILocation(line: 565, column: 33, scope: !2058)
!2060 = !DILocation(line: 565, column: 20, scope: !2058)
!2061 = !DILocation(line: 565, column: 10, scope: !2033)
!2062 = !DILocation(line: 566, column: 7, scope: !2058)
!2063 = !DILocation(line: 567, column: 5, scope: !2033)
!2064 = !DILocalVariable(name: "ra", scope: !2065, file: !425, line: 570, type: !380)
!2065 = distinct !DILexicalBlock(scope: !2027, file: !425, line: 569, column: 5)
!2066 = !DILocation(line: 570, column: 22, scope: !2065)
!2067 = !DILocation(line: 570, column: 65, scope: !2065)
!2068 = !DILocation(line: 571, column: 24, scope: !2065)
!2069 = !DILocation(line: 571, column: 32, scope: !2065)
!2070 = !DILocation(line: 571, column: 22, scope: !2065)
!2071 = !DILocation(line: 571, column: 16, scope: !2065)
!2072 = !DILocation(line: 571, column: 14, scope: !2065)
!2073 = !DILocation(line: 573, column: 10, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2065, file: !425, line: 573, column: 10)
!2075 = !DILocation(line: 573, column: 22, scope: !2074)
!2076 = !DILocation(line: 573, column: 20, scope: !2074)
!2077 = !DILocation(line: 573, column: 30, scope: !2074)
!2078 = !DILocation(line: 573, column: 33, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2074, file: !425, discriminator: 1)
!2080 = !DILocation(line: 573, column: 45, scope: !2079)
!2081 = !DILocation(line: 573, column: 55, scope: !2079)
!2082 = !DILocation(line: 573, column: 66, scope: !2079)
!2083 = !DILocation(line: 573, column: 53, scope: !2079)
!2084 = !DILocation(line: 573, column: 43, scope: !2079)
!2085 = !DILocation(line: 573, column: 10, scope: !2079)
!2086 = !DILocation(line: 574, column: 7, scope: !2074)
!2087 = !DILocation(line: 576, column: 8, scope: !2065)
!2088 = !DILocation(line: 576, column: 16, scope: !2065)
!2089 = !DILocation(line: 576, column: 6, scope: !2065)
!2090 = !DILocation(line: 576, column: 21, scope: !2065)
!2091 = !DILocation(line: 577, column: 33, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2065, file: !425, line: 577, column: 10)
!2093 = !DILocation(line: 577, column: 38, scope: !2092)
!2094 = !DILocation(line: 577, column: 11, scope: !2092)
!2095 = !DILocation(line: 577, column: 10, scope: !2065)
!2096 = !DILocation(line: 578, column: 7, scope: !2092)
!2097 = !DILocation(line: 581, column: 5, scope: !2028)
!2098 = !DILocation(line: 583, column: 3, scope: !1984)
!2099 = !DILocation(line: 540, column: 54, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !1981, file: !425, discriminator: 5)
!2101 = !DILocation(line: 540, column: 58, scope: !2100)
!2102 = !DILocation(line: 540, column: 51, scope: !2100)
!2103 = !DILocation(line: 540, column: 3, scope: !2100)
!2104 = distinct !{!2104, !2105}
!2105 = !DILocation(line: 540, column: 3, scope: !1923)
!2106 = !DILocation(line: 584, column: 2, scope: !1923)
!2107 = !DILocation(line: 586, column: 2, scope: !1845)
!2108 = !DILocation(line: 587, column: 1, scope: !1845)
!2109 = distinct !DISubprogram(name: "install_checkers_keyword", scope: !425, file: !425, line: 657, type: !648, isLocal: false, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!2110 = !DILocation(line: 659, column: 2, scope: !2109)
!2111 = !DILocation(line: 660, column: 2, scope: !2109)
!2112 = !DILocation(line: 661, column: 2, scope: !2109)
!2113 = !DILocation(line: 662, column: 2, scope: !2109)
!2114 = !DILocation(line: 663, column: 2, scope: !2109)
!2115 = !DILocation(line: 664, column: 2, scope: !2109)
!2116 = !DILocation(line: 668, column: 1, scope: !2109)
!2117 = distinct !DISubprogram(name: "__ip6_addr_equal", scope: !772, file: !772, line: 60, type: !2118, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!77, !378, !378}
!2120 = !DILocalVariable(name: "a1", arg: 1, scope: !2117, file: !772, line: 60, type: !378)
!2121 = !DILocation(line: 60, column: 59, scope: !2117)
!2122 = !DILocalVariable(name: "a2", arg: 2, scope: !2117, file: !772, line: 61, type: !378)
!2123 = !DILocation(line: 61, column: 31, scope: !2117)
!2124 = !DILocation(line: 63, column: 12, scope: !2117)
!2125 = !DILocation(line: 63, column: 15, scope: !2117)
!2126 = !DILocation(line: 63, column: 23, scope: !2117)
!2127 = !DILocation(line: 63, column: 30, scope: !2117)
!2128 = !DILocation(line: 63, column: 34, scope: !2117)
!2129 = !DILocation(line: 63, column: 42, scope: !2117)
!2130 = !DILocation(line: 63, column: 28, scope: !2117)
!2131 = !DILocation(line: 64, column: 5, scope: !2117)
!2132 = !DILocation(line: 64, column: 8, scope: !2117)
!2133 = !DILocation(line: 64, column: 16, scope: !2117)
!2134 = !DILocation(line: 64, column: 23, scope: !2117)
!2135 = !DILocation(line: 64, column: 27, scope: !2117)
!2136 = !DILocation(line: 64, column: 35, scope: !2117)
!2137 = !DILocation(line: 64, column: 21, scope: !2117)
!2138 = !DILocation(line: 63, column: 48, scope: !2117)
!2139 = !DILocation(line: 65, column: 5, scope: !2117)
!2140 = !DILocation(line: 65, column: 8, scope: !2117)
!2141 = !DILocation(line: 65, column: 16, scope: !2117)
!2142 = !DILocation(line: 65, column: 23, scope: !2117)
!2143 = !DILocation(line: 65, column: 27, scope: !2117)
!2144 = !DILocation(line: 65, column: 35, scope: !2117)
!2145 = !DILocation(line: 65, column: 21, scope: !2117)
!2146 = !DILocation(line: 64, column: 41, scope: !2117)
!2147 = !DILocation(line: 66, column: 5, scope: !2117)
!2148 = !DILocation(line: 66, column: 8, scope: !2117)
!2149 = !DILocation(line: 66, column: 16, scope: !2117)
!2150 = !DILocation(line: 66, column: 23, scope: !2117)
!2151 = !DILocation(line: 66, column: 27, scope: !2117)
!2152 = !DILocation(line: 66, column: 35, scope: !2117)
!2153 = !DILocation(line: 66, column: 21, scope: !2117)
!2154 = !DILocation(line: 65, column: 41, scope: !2117)
!2155 = !DILocation(line: 66, column: 42, scope: !2117)
!2156 = !DILocation(line: 63, column: 2, scope: !2117)
!2157 = distinct !DISubprogram(name: "inaddr_equal", scope: !772, file: !772, line: 96, type: !2158, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !430)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!214, !271, !65, !65}
!2160 = !DILocalVariable(name: "family", arg: 1, scope: !2157, file: !772, line: 96, type: !271)
!2161 = !DILocation(line: 96, column: 44, scope: !2157)
!2162 = !DILocalVariable(name: "addr1", arg: 2, scope: !2157, file: !772, line: 96, type: !65)
!2163 = !DILocation(line: 96, column: 58, scope: !2157)
!2164 = !DILocalVariable(name: "addr2", arg: 3, scope: !2157, file: !772, line: 96, type: !65)
!2165 = !DILocation(line: 96, column: 71, scope: !2157)
!2166 = !DILocation(line: 98, column: 6, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2157, file: !772, line: 98, column: 6)
!2168 = !DILocation(line: 98, column: 13, scope: !2167)
!2169 = !DILocation(line: 98, column: 6, scope: !2157)
!2170 = !DILocalVariable(name: "a1", scope: !2171, file: !772, line: 99, type: !420)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !772, line: 98, column: 25)
!2172 = !DILocation(line: 99, column: 20, scope: !2171)
!2173 = !DILocation(line: 99, column: 45, scope: !2171)
!2174 = !DILocation(line: 99, column: 25, scope: !2171)
!2175 = !DILocalVariable(name: "a2", scope: !2171, file: !772, line: 100, type: !420)
!2176 = !DILocation(line: 100, column: 20, scope: !2171)
!2177 = !DILocation(line: 100, column: 45, scope: !2171)
!2178 = !DILocation(line: 100, column: 25, scope: !2171)
!2179 = !DILocation(line: 102, column: 24, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2171, file: !772, line: 102, column: 7)
!2181 = !DILocation(line: 102, column: 28, scope: !2180)
!2182 = !DILocation(line: 102, column: 7, scope: !2180)
!2183 = !DILocation(line: 102, column: 7, scope: !2171)
!2184 = !DILocation(line: 103, column: 4, scope: !2180)
!2185 = !DILocation(line: 104, column: 2, scope: !2171)
!2186 = !DILocation(line: 104, column: 13, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !772, discriminator: 1)
!2188 = distinct !DILexicalBlock(scope: !2167, file: !772, line: 104, column: 13)
!2189 = !DILocation(line: 104, column: 20, scope: !2187)
!2190 = !DILocalVariable(name: "a1", scope: !2191, file: !772, line: 105, type: !419)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !772, line: 104, column: 31)
!2192 = !DILocation(line: 105, column: 19, scope: !2191)
!2193 = !DILocation(line: 105, column: 43, scope: !2191)
!2194 = !DILocation(line: 105, column: 24, scope: !2191)
!2195 = !DILocalVariable(name: "a2", scope: !2191, file: !772, line: 106, type: !419)
!2196 = !DILocation(line: 106, column: 19, scope: !2191)
!2197 = !DILocation(line: 106, column: 43, scope: !2191)
!2198 = !DILocation(line: 106, column: 24, scope: !2191)
!2199 = !DILocation(line: 108, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2191, file: !772, line: 108, column: 7)
!2201 = !DILocation(line: 108, column: 11, scope: !2200)
!2202 = !DILocation(line: 108, column: 21, scope: !2200)
!2203 = !DILocation(line: 108, column: 25, scope: !2200)
!2204 = !DILocation(line: 108, column: 18, scope: !2200)
!2205 = !DILocation(line: 108, column: 7, scope: !2191)
!2206 = !DILocation(line: 109, column: 4, scope: !2200)
!2207 = !DILocation(line: 110, column: 2, scope: !2191)
!2208 = !DILocation(line: 112, column: 2, scope: !2157)
!2209 = !DILocation(line: 113, column: 1, scope: !2157)
