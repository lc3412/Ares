; ModuleID = './[inter]keepalived--check--ipwrapper.o.i'
source_filename = "./[inter]keepalived--check--ipwrapper.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._thread = type { i64, i32, %struct._thread_master*, {}*, i8*, %struct.timeval, %union.anon.4, %struct._thread_event*, %union.anon.6 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32 }
%union.anon.6 = type { %struct.rb_node }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.10 }
%union.anon.10 = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct._virtual_server_group_entry = type { i8, %union.anon.7, i8 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.sockaddr_storage, i32, i32, i32, i32 }
%struct._smtp_rs = type { %struct._real_server*, %struct._virtual_server* }
%struct.anon.9 = type { i32, i32, i32 }

@check_data = external global %struct._check_data*, align 8
@.str = private unnamed_addr constant [57 x i8] c"Changing weight from %d to %d for %s service %s of VS %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@old_check_data = external global %struct._check_data*, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Removing Virtual Server Group [%s]\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Removing Virtual Server %s\00", align 1
@using_ha_suspend = external global i8, align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"Virtual server group %s specified but not configured - ignoring virtual server %s\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"Virtual server group %s has no configuration - ignoring virtual server %s\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"Virtual server group %s address family doesn't match virtual server %s - ignoring\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"%s %sservice %s from VS %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Shutting down\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Removing\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"(inhibited) \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"=> Shutting down <=\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"=> Removing <=\00", align 1
@master = external global %struct._thread_master*, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"=> %s %u+%u=%ld <= %ld <=\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Starting with quorum up\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Gained quorum\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Starting with quorum down\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Lost quorum\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@global_data = external global %struct._data*, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"VS %s %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"VS [%s:%d:%u] added into group %s\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Gained quorum %u+%u=%ld <= %ld for VS %s\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s sorry server %s from VS %s\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"%s %u-%u=%ld > %ld for VS %s\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"%s sorry server %s to VS %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"%s the pool for VS %s\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Adding alive servers to\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Removing alive servers from\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"RS %s %s %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"%sing service %s to VS %s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Enabl\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Disabl\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Remov\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"VS [%s:%d:%u] in group %s no longer exists\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"service %s no longer exist\00", align 1
@checkers_queue = external global %struct._list*, align 8
@.str.42 = private unnamed_addr constant [36 x i8] c"Removing sorry server %s from VS %s\00", align 1

; Function Attrs: nounwind uwtable
define void @clear_services() #0 !dbg !171 {
  %1 = alloca %struct._element*, align 8
  %2 = alloca %struct._virtual_server*, align 8
  call void @llvm.dbg.declare(metadata %struct._element** %1, metadata !176, metadata !178), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !180, metadata !178), !dbg !278
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !279
  %4 = icmp ne %struct._check_data* %3, null, !dbg !279
  br i1 %4, label %5, label %10, !dbg !281

; <label>:5:                                      ; preds = %0
  %6 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !282
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !284
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !284
  %9 = icmp ne %struct._list* %8, null, !dbg !282
  br i1 %9, label %11, label %10, !dbg !285

; <label>:10:                                     ; preds = %5, %0
  br label %49, !dbg !286

; <label>:11:                                     ; preds = %5
  %12 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !287
  %13 = getelementptr inbounds %struct._check_data, %struct._check_data* %12, i32 0, i32 3, !dbg !289
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !289
  %15 = icmp ne %struct._list* %14, null, !dbg !290
  br i1 %15, label %16, label %30, !dbg !290

; <label>:16:                                     ; preds = %11
  %17 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !291
  %18 = getelementptr inbounds %struct._check_data, %struct._check_data* %17, i32 0, i32 3, !dbg !293
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !293
  %20 = icmp ne %struct._list* %19, null, !dbg !294
  br i1 %20, label %22, label %21, !dbg !295

; <label>:21:                                     ; preds = %16
  br label %28, !dbg !296

; <label>:22:                                     ; preds = %16
  %23 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !298
  %24 = getelementptr inbounds %struct._check_data, %struct._check_data* %23, i32 0, i32 3, !dbg !300
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !300
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !301
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !301
  br label %28, !dbg !302

; <label>:28:                                     ; preds = %22, %21
  %29 = phi %struct._element* [ null, %21 ], [ %27, %22 ], !dbg !303
  br label %31, !dbg !305

; <label>:30:                                     ; preds = %11
  br label %31, !dbg !306

; <label>:31:                                     ; preds = %30, %28
  %32 = phi %struct._element* [ %29, %28 ], [ null, %30 ], !dbg !308
  store %struct._element* %32, %struct._element** %1, align 8, !dbg !310
  br label %33, !dbg !311

; <label>:33:                                     ; preds = %45, %31
  %34 = load %struct._element*, %struct._element** %1, align 8, !dbg !312
  %35 = icmp ne %struct._element* %34, null, !dbg !315
  br i1 %35, label %36, label %41, !dbg !316

; <label>:36:                                     ; preds = %33
  %37 = load %struct._element*, %struct._element** %1, align 8, !dbg !317
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 2, !dbg !319
  %39 = load i8*, i8** %38, align 8, !dbg !319
  %40 = bitcast i8* %39 to %struct._virtual_server*, !dbg !320
  store %struct._virtual_server* %40, %struct._virtual_server** %2, align 8, !dbg !321
  br label %41

; <label>:41:                                     ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ true, %36 ]
  br i1 %42, label %43, label %49, !dbg !322

; <label>:43:                                     ; preds = %41
  %44 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !324
  call void @clear_service_vs(%struct._virtual_server* %44, i1 zeroext true), !dbg !326
  br label %45, !dbg !327

; <label>:45:                                     ; preds = %43
  %46 = load %struct._element*, %struct._element** %1, align 8, !dbg !328
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 0, !dbg !330
  %48 = load %struct._element*, %struct._element** %47, align 8, !dbg !330
  store %struct._element* %48, %struct._element** %1, align 8, !dbg !331
  br label %33, !dbg !332, !llvm.loop !333

; <label>:49:                                     ; preds = %10, %41
  ret void, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @clear_service_vs(%struct._virtual_server*, i1 zeroext) #0 !dbg !336 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !339, metadata !178), !dbg !340
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !341, metadata !178), !dbg !342
  call void @llvm.dbg.declare(metadata i8* %5, metadata !343, metadata !178), !dbg !344
  %7 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !345
  %8 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %7, i32 0, i32 4, !dbg !347
  %9 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !347
  %10 = icmp ne %struct._real_server* %9, null, !dbg !345
  br i1 %10, label %11, label %46, !dbg !348

; <label>:11:                                     ; preds = %2
  %12 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !349
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 4, !dbg !351
  %14 = load %struct._real_server*, %struct._real_server** %13, align 8, !dbg !351
  %15 = getelementptr inbounds %struct._real_server, %struct._real_server* %14, i32 0, i32 18, !dbg !352
  %16 = load i8, i8* %15, align 4, !dbg !352
  %17 = trunc i8 %16 to i1, !dbg !352
  br i1 %17, label %18, label %46, !dbg !353

; <label>:18:                                     ; preds = %11
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !354
  %20 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %19, i32 0, i32 4, !dbg !356
  %21 = load %struct._real_server*, %struct._real_server** %20, align 8, !dbg !356
  %22 = getelementptr inbounds %struct._real_server, %struct._real_server* %21, i32 0, i32 7, !dbg !357
  %23 = load i32, i32* %22, align 8, !dbg !357
  %24 = icmp ne i32 %23, 0, !dbg !354
  %25 = zext i1 %24 to i8, !dbg !358
  store i8 %25, i8* %5, align 1, !dbg !358
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !359
  %27 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %26, i32 0, i32 4, !dbg !360
  %28 = load %struct._real_server*, %struct._real_server** %27, align 8, !dbg !360
  %29 = getelementptr inbounds %struct._real_server, %struct._real_server* %28, i32 0, i32 7, !dbg !361
  store i32 0, i32* %29, align 8, !dbg !362
  %30 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !363
  %31 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !364
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 4, !dbg !365
  %33 = load %struct._real_server*, %struct._real_server** %32, align 8, !dbg !365
  %34 = call i32 @ipvs_cmd(i32 1160, %struct._virtual_server* %30, %struct._real_server* %33), !dbg !366
  %35 = load i8, i8* %5, align 1, !dbg !367
  %36 = trunc i8 %35 to i1, !dbg !367
  %37 = zext i1 %36 to i32, !dbg !367
  %38 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !368
  %39 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %38, i32 0, i32 4, !dbg !369
  %40 = load %struct._real_server*, %struct._real_server** %39, align 8, !dbg !369
  %41 = getelementptr inbounds %struct._real_server, %struct._real_server* %40, i32 0, i32 7, !dbg !370
  store i32 %37, i32* %41, align 8, !dbg !371
  %42 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !372
  %43 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %42, i32 0, i32 4, !dbg !373
  %44 = load %struct._real_server*, %struct._real_server** %43, align 8, !dbg !373
  %45 = getelementptr inbounds %struct._real_server, %struct._real_server* %44, i32 0, i32 16, !dbg !374
  store i8 0, i8* %45, align 4, !dbg !375
  br label %46, !dbg !376

; <label>:46:                                     ; preds = %18, %11, %2
  %47 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !377
  %48 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !378
  %49 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %48, i32 0, i32 17, !dbg !379
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !379
  %51 = load i8, i8* %4, align 1, !dbg !380
  %52 = trunc i8 %51 to i1, !dbg !380
  call void @clear_service_rs(%struct._virtual_server* %47, %struct._list* %50, i1 zeroext %52), !dbg !381
  %53 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !382
  %54 = call i32 @ipvs_cmd(i32 1156, %struct._virtual_server* %53, %struct._real_server* null), !dbg !383
  %55 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !384
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 18, !dbg !385
  store i32 0, i32* %56, align 8, !dbg !386
  ret void, !dbg !387
}

; Function Attrs: nounwind uwtable
define void @set_quorum_states() #0 !dbg !388 {
  %1 = alloca %struct._virtual_server*, align 8
  %2 = alloca %struct._element*, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %1, metadata !389, metadata !178), !dbg !390
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !391, metadata !178), !dbg !392
  %3 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !393
  %4 = getelementptr inbounds %struct._check_data, %struct._check_data* %3, i32 0, i32 3, !dbg !395
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !395
  %6 = icmp eq %struct._list* %5, null, !dbg !396
  br i1 %6, label %21, label %7, !dbg !397

; <label>:7:                                      ; preds = %0
  %8 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !398
  %9 = getelementptr inbounds %struct._check_data, %struct._check_data* %8, i32 0, i32 3, !dbg !400
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !400
  %11 = getelementptr inbounds %struct._list, %struct._list* %10, i32 0, i32 0, !dbg !401
  %12 = load %struct._element*, %struct._element** %11, align 8, !dbg !401
  %13 = icmp eq %struct._element* %12, null, !dbg !402
  br i1 %13, label %14, label %22, !dbg !403

; <label>:14:                                     ; preds = %7
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !404
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 3, !dbg !406
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !406
  %18 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 1, !dbg !407
  %19 = load %struct._element*, %struct._element** %18, align 8, !dbg !407
  %20 = icmp eq %struct._element* %19, null, !dbg !408
  br i1 %20, label %21, label %22, !dbg !409

; <label>:21:                                     ; preds = %14, %0
  br label %62, !dbg !410

; <label>:22:                                     ; preds = %14, %7
  %23 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !411
  %24 = getelementptr inbounds %struct._check_data, %struct._check_data* %23, i32 0, i32 3, !dbg !413
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !413
  %26 = icmp ne %struct._list* %25, null, !dbg !414
  br i1 %26, label %28, label %27, !dbg !415

; <label>:27:                                     ; preds = %22
  br label %34, !dbg !416

; <label>:28:                                     ; preds = %22
  %29 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !418
  %30 = getelementptr inbounds %struct._check_data, %struct._check_data* %29, i32 0, i32 3, !dbg !420
  %31 = load %struct._list*, %struct._list** %30, align 8, !dbg !420
  %32 = getelementptr inbounds %struct._list, %struct._list* %31, i32 0, i32 0, !dbg !421
  %33 = load %struct._element*, %struct._element** %32, align 8, !dbg !421
  br label %34, !dbg !422

; <label>:34:                                     ; preds = %28, %27
  %35 = phi %struct._element* [ null, %27 ], [ %33, %28 ], !dbg !423
  store %struct._element* %35, %struct._element** %2, align 8, !dbg !425
  br label %36, !dbg !426

; <label>:36:                                     ; preds = %58, %34
  %37 = load %struct._element*, %struct._element** %2, align 8, !dbg !427
  %38 = icmp ne %struct._element* %37, null, !dbg !430
  br i1 %38, label %39, label %62, !dbg !430

; <label>:39:                                     ; preds = %36
  %40 = load %struct._element*, %struct._element** %2, align 8, !dbg !431
  %41 = getelementptr inbounds %struct._element, %struct._element* %40, i32 0, i32 2, !dbg !433
  %42 = load i8*, i8** %41, align 8, !dbg !433
  %43 = bitcast i8* %42 to %struct._virtual_server*, !dbg !434
  store %struct._virtual_server* %43, %struct._virtual_server** %1, align 8, !dbg !435
  %44 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !436
  %45 = call i64 @weigh_live_realservers(%struct._virtual_server* %44), !dbg !437
  %46 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !438
  %47 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %46, i32 0, i32 28, !dbg !439
  %48 = load i32, i32* %47, align 8, !dbg !439
  %49 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !440
  %50 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %49, i32 0, i32 29, !dbg !441
  %51 = load i32, i32* %50, align 4, !dbg !441
  %52 = add i32 %48, %51, !dbg !442
  %53 = zext i32 %52 to i64, !dbg !438
  %54 = icmp uge i64 %45, %53, !dbg !443
  %55 = load %struct._virtual_server*, %struct._virtual_server** %1, align 8, !dbg !444
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 31, !dbg !445
  %57 = zext i1 %54 to i8, !dbg !446
  store i8 %57, i8* %56, align 4, !dbg !446
  br label %58, !dbg !447

; <label>:58:                                     ; preds = %39
  %59 = load %struct._element*, %struct._element** %2, align 8, !dbg !448
  %60 = getelementptr inbounds %struct._element, %struct._element* %59, i32 0, i32 0, !dbg !450
  %61 = load %struct._element*, %struct._element** %60, align 8, !dbg !450
  store %struct._element* %61, %struct._element** %2, align 8, !dbg !451
  br label %36, !dbg !452, !llvm.loop !453

; <label>:62:                                     ; preds = %21, %36
  ret void, !dbg !455
}

; Function Attrs: nounwind uwtable
define internal i64 @weigh_live_realservers(%struct._virtual_server*) #0 !dbg !456 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i64, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !459, metadata !178), !dbg !460
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !461, metadata !178), !dbg !462
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !463, metadata !178), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %5, metadata !465, metadata !178), !dbg !466
  store i64 0, i64* %5, align 8, !dbg !466
  %6 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !467
  %7 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %6, i32 0, i32 17, !dbg !469
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !469
  %9 = icmp ne %struct._list* %8, null, !dbg !470
  br i1 %9, label %11, label %10, !dbg !471

; <label>:10:                                     ; preds = %1
  br label %17, !dbg !472

; <label>:11:                                     ; preds = %1
  %12 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !474
  %13 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %12, i32 0, i32 17, !dbg !476
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !476
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 0, !dbg !477
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !477
  br label %17, !dbg !478

; <label>:17:                                     ; preds = %11, %10
  %18 = phi %struct._element* [ null, %10 ], [ %16, %11 ], !dbg !479
  store %struct._element* %18, %struct._element** %3, align 8, !dbg !481
  br label %19, !dbg !482

; <label>:19:                                     ; preds = %39, %17
  %20 = load %struct._element*, %struct._element** %3, align 8, !dbg !483
  %21 = icmp ne %struct._element* %20, null, !dbg !486
  br i1 %21, label %22, label %43, !dbg !486

; <label>:22:                                     ; preds = %19
  %23 = load %struct._element*, %struct._element** %3, align 8, !dbg !487
  %24 = getelementptr inbounds %struct._element, %struct._element* %23, i32 0, i32 2, !dbg !489
  %25 = load i8*, i8** %24, align 8, !dbg !489
  %26 = bitcast i8* %25 to %struct._real_server*, !dbg !490
  store %struct._real_server* %26, %struct._real_server** %4, align 8, !dbg !491
  %27 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !492
  %28 = getelementptr inbounds %struct._real_server, %struct._real_server* %27, i32 0, i32 16, !dbg !494
  %29 = load i8, i8* %28, align 4, !dbg !494
  %30 = trunc i8 %29 to i1, !dbg !494
  br i1 %30, label %31, label %38, !dbg !495

; <label>:31:                                     ; preds = %22
  %32 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !496
  %33 = getelementptr inbounds %struct._real_server, %struct._real_server* %32, i32 0, i32 1, !dbg !497
  %34 = load i32, i32* %33, align 8, !dbg !497
  %35 = sext i32 %34 to i64, !dbg !496
  %36 = load i64, i64* %5, align 8, !dbg !498
  %37 = add nsw i64 %36, %35, !dbg !498
  store i64 %37, i64* %5, align 8, !dbg !498
  br label %38, !dbg !499

; <label>:38:                                     ; preds = %31, %22
  br label %39, !dbg !500

; <label>:39:                                     ; preds = %38
  %40 = load %struct._element*, %struct._element** %3, align 8, !dbg !501
  %41 = getelementptr inbounds %struct._element, %struct._element* %40, i32 0, i32 0, !dbg !503
  %42 = load %struct._element*, %struct._element** %41, align 8, !dbg !503
  store %struct._element* %42, %struct._element** %3, align 8, !dbg !504
  br label %19, !dbg !505, !llvm.loop !506

; <label>:43:                                     ; preds = %19
  %44 = load i64, i64* %5, align 8, !dbg !508
  ret i64 %44, !dbg !509
}

; Function Attrs: nounwind uwtable
define zeroext i1 @init_services() #0 !dbg !510 {
  %1 = alloca i1, align 1
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !513, metadata !178), !dbg !514
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !515, metadata !178), !dbg !516
  %4 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !517
  %5 = getelementptr inbounds %struct._check_data, %struct._check_data* %4, i32 0, i32 3, !dbg !519
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !519
  %7 = icmp ne %struct._list* %6, null, !dbg !520
  br i1 %7, label %8, label %22, !dbg !520

; <label>:8:                                      ; preds = %0
  %9 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !521
  %10 = getelementptr inbounds %struct._check_data, %struct._check_data* %9, i32 0, i32 3, !dbg !523
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !523
  %12 = icmp ne %struct._list* %11, null, !dbg !524
  br i1 %12, label %14, label %13, !dbg !525

; <label>:13:                                     ; preds = %8
  br label %20, !dbg !526

; <label>:14:                                     ; preds = %8
  %15 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !528
  %16 = getelementptr inbounds %struct._check_data, %struct._check_data* %15, i32 0, i32 3, !dbg !530
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !530
  %18 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 0, !dbg !531
  %19 = load %struct._element*, %struct._element** %18, align 8, !dbg !531
  br label %20, !dbg !532

; <label>:20:                                     ; preds = %14, %13
  %21 = phi %struct._element* [ null, %13 ], [ %19, %14 ], !dbg !533
  br label %23, !dbg !535

; <label>:22:                                     ; preds = %0
  br label %23, !dbg !536

; <label>:23:                                     ; preds = %22, %20
  %24 = phi %struct._element* [ %21, %20 ], [ null, %22 ], !dbg !538
  store %struct._element* %24, %struct._element** %2, align 8, !dbg !540
  br label %25, !dbg !541

; <label>:25:                                     ; preds = %40, %23
  %26 = load %struct._element*, %struct._element** %2, align 8, !dbg !542
  %27 = icmp ne %struct._element* %26, null, !dbg !545
  br i1 %27, label %28, label %33, !dbg !546

; <label>:28:                                     ; preds = %25
  %29 = load %struct._element*, %struct._element** %2, align 8, !dbg !547
  %30 = getelementptr inbounds %struct._element, %struct._element* %29, i32 0, i32 2, !dbg !549
  %31 = load i8*, i8** %30, align 8, !dbg !549
  %32 = bitcast i8* %31 to %struct._virtual_server*, !dbg !550
  store %struct._virtual_server* %32, %struct._virtual_server** %3, align 8, !dbg !551
  br label %33

; <label>:33:                                     ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ true, %28 ]
  br i1 %34, label %35, label %44, !dbg !552

; <label>:35:                                     ; preds = %33
  %36 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !554
  %37 = call zeroext i1 @init_service_vs(%struct._virtual_server* %36), !dbg !557
  br i1 %37, label %39, label %38, !dbg !558

; <label>:38:                                     ; preds = %35
  store i1 false, i1* %1, align 1, !dbg !559
  br label %45, !dbg !559

; <label>:39:                                     ; preds = %35
  br label %40, !dbg !560

; <label>:40:                                     ; preds = %39
  %41 = load %struct._element*, %struct._element** %2, align 8, !dbg !561
  %42 = getelementptr inbounds %struct._element, %struct._element* %41, i32 0, i32 0, !dbg !563
  %43 = load %struct._element*, %struct._element** %42, align 8, !dbg !563
  store %struct._element* %43, %struct._element** %2, align 8, !dbg !564
  br label %25, !dbg !565, !llvm.loop !566

; <label>:44:                                     ; preds = %33
  store i1 true, i1* %1, align 1, !dbg !568
  br label %45, !dbg !568

; <label>:45:                                     ; preds = %44, %38
  %46 = load i1, i1* %1, align 1, !dbg !569
  ret i1 %46, !dbg !569
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @init_service_vs(%struct._virtual_server*) #0 !dbg !570 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._virtual_server*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !573, metadata !178), !dbg !574
  %4 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !575
  %5 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %4, i32 0, i32 18, !dbg !577
  %6 = load i32, i32* %5, align 8, !dbg !577
  %7 = icmp ne i32 %6, 0, !dbg !578
  br i1 %7, label %8, label %13, !dbg !579

; <label>:8:                                      ; preds = %1
  %9 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !580
  %10 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %9, i32 0, i32 1, !dbg !582
  %11 = load %struct._virtual_server_group*, %struct._virtual_server_group** %10, align 8, !dbg !582
  %12 = icmp ne %struct._virtual_server_group* %11, null, !dbg !580
  br i1 %12, label %13, label %18, !dbg !583

; <label>:13:                                     ; preds = %8, %1
  %14 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !584
  %15 = call i32 @ipvs_cmd(i32 1154, %struct._virtual_server* %14, %struct._real_server* null), !dbg !586
  %16 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !587
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 18, !dbg !588
  store i32 1, i32* %17, align 8, !dbg !589
  br label %18, !dbg !590

; <label>:18:                                     ; preds = %13, %8
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !591
  %20 = call zeroext i1 @init_service_rs(%struct._virtual_server* %19), !dbg !593
  br i1 %20, label %22, label %21, !dbg !594

; <label>:21:                                     ; preds = %18
  store i1 false, i1* %2, align 1, !dbg !595
  br label %69, !dbg !595

; <label>:22:                                     ; preds = %18
  %23 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !596
  %24 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %23, i32 0, i32 32, !dbg !598
  %25 = load i8, i8* %24, align 1, !dbg !598
  %26 = trunc i8 %25 to i1, !dbg !598
  br i1 %26, label %27, label %34, !dbg !599

; <label>:27:                                     ; preds = %22
  %28 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !600
  %29 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %28, i32 0, i32 0, !dbg !602
  %30 = load i8*, i8** %29, align 8, !dbg !602
  %31 = icmp ne i8* %30, null, !dbg !600
  br i1 %31, label %32, label %34, !dbg !603

; <label>:32:                                     ; preds = %27
  %33 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !604
  call void @sync_service_vsg(%struct._virtual_server* %33), !dbg !606
  br label %34, !dbg !607

; <label>:34:                                     ; preds = %32, %27, %22
  %35 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !608
  call void @update_quorum_state(%struct._virtual_server* %35, i1 zeroext true), !dbg !609
  %36 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !610
  %37 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %36, i32 0, i32 4, !dbg !612
  %38 = load %struct._real_server*, %struct._real_server** %37, align 8, !dbg !612
  %39 = icmp ne %struct._real_server* %38, null, !dbg !610
  br i1 %39, label %40, label %68, !dbg !613

; <label>:40:                                     ; preds = %34
  %41 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !614
  %42 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %41, i32 0, i32 4, !dbg !616
  %43 = load %struct._real_server*, %struct._real_server** %42, align 8, !dbg !616
  %44 = getelementptr inbounds %struct._real_server, %struct._real_server* %43, i32 0, i32 7, !dbg !617
  %45 = load i32, i32* %44, align 8, !dbg !617
  %46 = icmp ne i32 %45, 0, !dbg !614
  br i1 %46, label %47, label %68, !dbg !618

; <label>:47:                                     ; preds = %40
  %48 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !619
  %49 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %48, i32 0, i32 4, !dbg !621
  %50 = load %struct._real_server*, %struct._real_server** %49, align 8, !dbg !621
  %51 = getelementptr inbounds %struct._real_server, %struct._real_server* %50, i32 0, i32 18, !dbg !622
  %52 = load i8, i8* %51, align 4, !dbg !622
  %53 = trunc i8 %52 to i1, !dbg !622
  br i1 %53, label %68, label %54, !dbg !623

; <label>:54:                                     ; preds = %47
  %55 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !624
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 4, !dbg !626
  %57 = load %struct._real_server*, %struct._real_server** %56, align 8, !dbg !626
  %58 = getelementptr inbounds %struct._real_server, %struct._real_server* %57, i32 0, i32 17, !dbg !627
  store i32 1, i32* %58, align 8, !dbg !628
  %59 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !629
  %60 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !630
  %61 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %60, i32 0, i32 4, !dbg !631
  %62 = load %struct._real_server*, %struct._real_server** %61, align 8, !dbg !631
  %63 = call i32 @ipvs_cmd(i32 1159, %struct._virtual_server* %59, %struct._real_server* %62), !dbg !632
  %64 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !633
  %65 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %64, i32 0, i32 4, !dbg !634
  %66 = load %struct._real_server*, %struct._real_server** %65, align 8, !dbg !634
  %67 = getelementptr inbounds %struct._real_server, %struct._real_server* %66, i32 0, i32 17, !dbg !635
  store i32 0, i32* %67, align 8, !dbg !636
  br label %68, !dbg !637

; <label>:68:                                     ; preds = %54, %47, %40, %34
  store i1 true, i1* %2, align 1, !dbg !638
  br label %69, !dbg !638

; <label>:69:                                     ; preds = %68, %21
  %70 = load i1, i1* %2, align 1, !dbg !639
  ret i1 %70, !dbg !639
}

; Function Attrs: nounwind uwtable
define void @update_svr_wgt(i32, %struct._virtual_server*, %struct._real_server*, i1 zeroext) #0 !dbg !640 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._virtual_server*, align 8
  %7 = alloca %struct._real_server*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !643, metadata !178), !dbg !644
  store %struct._virtual_server* %1, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !645, metadata !178), !dbg !646
  store %struct._real_server* %2, %struct._real_server** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %7, metadata !647, metadata !178), !dbg !648
  %9 = zext i1 %3 to i8
  store i8 %9, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !649, metadata !178), !dbg !650
  %10 = load i32, i32* %5, align 4, !dbg !651
  %11 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !653
  %12 = getelementptr inbounds %struct._real_server, %struct._real_server* %11, i32 0, i32 1, !dbg !654
  %13 = load i32, i32* %12, align 8, !dbg !654
  %14 = icmp ne i32 %10, %13, !dbg !655
  br i1 %14, label %15, label %72, !dbg !656

; <label>:15:                                     ; preds = %4
  %16 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !657
  %17 = getelementptr inbounds %struct._real_server, %struct._real_server* %16, i32 0, i32 1, !dbg !659
  %18 = load i32, i32* %17, align 8, !dbg !659
  %19 = load i32, i32* %5, align 4, !dbg !660
  %20 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !661
  %21 = getelementptr inbounds %struct._real_server, %struct._real_server* %20, i32 0, i32 16, !dbg !662
  %22 = load i8, i8* %21, align 4, !dbg !662
  %23 = trunc i8 %22 to i1, !dbg !662
  %24 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), !dbg !663
  %25 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !664
  %26 = getelementptr inbounds %struct._real_server, %struct._real_server* %25, i32 0, i32 0, !dbg !665
  %27 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !666
  %28 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %27, i32 0, i32 6, !dbg !667
  %29 = load i16, i16* %28, align 2, !dbg !667
  %30 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %26, i16 zeroext %29), !dbg !668
  %31 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !669
  %32 = call i8* @format_vs(%struct._virtual_server* %31), !dbg !670
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 %18, i32 %19, i8* %24, i8* %30, i8* %32), !dbg !671
  %33 = load i32, i32* %5, align 4, !dbg !672
  %34 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !673
  %35 = getelementptr inbounds %struct._real_server, %struct._real_server* %34, i32 0, i32 1, !dbg !674
  store i32 %33, i32* %35, align 8, !dbg !675
  %36 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !676
  %37 = getelementptr inbounds %struct._real_server, %struct._real_server* %36, i32 0, i32 18, !dbg !678
  %38 = load i8, i8* %37, align 4, !dbg !678
  %39 = trunc i8 %38 to i1, !dbg !678
  br i1 %39, label %40, label %66, !dbg !679

; <label>:40:                                     ; preds = %15
  %41 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !680
  %42 = getelementptr inbounds %struct._real_server, %struct._real_server* %41, i32 0, i32 16, !dbg !682
  %43 = load i8, i8* %42, align 4, !dbg !682
  %44 = trunc i8 %43 to i1, !dbg !682
  br i1 %44, label %45, label %66, !dbg !683

; <label>:45:                                     ; preds = %40
  %46 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !684
  %47 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %46, i32 0, i32 31, !dbg !685
  %48 = load i8, i8* %47, align 4, !dbg !685
  %49 = trunc i8 %48 to i1, !dbg !685
  br i1 %49, label %62, label %50, !dbg !686

; <label>:50:                                     ; preds = %45
  %51 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !687
  %52 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %51, i32 0, i32 4, !dbg !688
  %53 = load %struct._real_server*, %struct._real_server** %52, align 8, !dbg !688
  %54 = icmp ne %struct._real_server* %53, null, !dbg !687
  br i1 %54, label %55, label %62, !dbg !689

; <label>:55:                                     ; preds = %50
  %56 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !690
  %57 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %56, i32 0, i32 4, !dbg !692
  %58 = load %struct._real_server*, %struct._real_server** %57, align 8, !dbg !692
  %59 = getelementptr inbounds %struct._real_server, %struct._real_server* %58, i32 0, i32 16, !dbg !693
  %60 = load i8, i8* %59, align 4, !dbg !693
  %61 = trunc i8 %60 to i1, !dbg !693
  br i1 %61, label %66, label %62, !dbg !694

; <label>:62:                                     ; preds = %55, %50, %45
  %63 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !696
  %64 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !697
  %65 = call i32 @ipvs_cmd(i32 1161, %struct._virtual_server* %63, %struct._real_server* %64), !dbg !698
  br label %66, !dbg !698

; <label>:66:                                     ; preds = %62, %55, %40, %15
  %67 = load i8, i8* %8, align 1, !dbg !699
  %68 = trunc i8 %67 to i1, !dbg !699
  br i1 %68, label %69, label %71, !dbg !701

; <label>:69:                                     ; preds = %66
  %70 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !702
  call void @update_quorum_state(%struct._virtual_server* %70, i1 zeroext false), !dbg !703
  br label %71, !dbg !703

; <label>:71:                                     ; preds = %69, %66
  br label %72, !dbg !704

; <label>:72:                                     ; preds = %71, %4
  ret void, !dbg !705
}

declare void @log_message(i32, i8*, ...) #2

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #2

declare i8* @format_vs(%struct._virtual_server*) #2

declare i32 @ipvs_cmd(i32, %struct._virtual_server*, %struct._real_server*) #2

; Function Attrs: nounwind uwtable
define internal void @update_quorum_state(%struct._virtual_server*, i1 zeroext) #0 !dbg !706 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !707, metadata !178), !dbg !708
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !709, metadata !178), !dbg !710
  call void @llvm.dbg.declare(metadata i64* %5, metadata !711, metadata !178), !dbg !712
  %8 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !713
  %9 = call i64 @weigh_live_realservers(%struct._virtual_server* %8), !dbg !714
  store i64 %9, i64* %5, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata i64* %6, metadata !715, metadata !178), !dbg !716
  %10 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !717
  %11 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %10, i32 0, i32 28, !dbg !718
  %12 = load i32, i32* %11, align 8, !dbg !718
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !719
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 31, !dbg !720
  %15 = load i8, i8* %14, align 4, !dbg !720
  %16 = trunc i8 %15 to i1, !dbg !720
  %17 = select i1 %16, i32 -1, i32 1, !dbg !719
  %18 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !721
  %19 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %18, i32 0, i32 29, !dbg !722
  %20 = load i32, i32* %19, align 4, !dbg !722
  %21 = mul i32 %17, %20, !dbg !723
  %22 = add i32 %12, %21, !dbg !724
  %23 = zext i32 %22 to i64, !dbg !717
  store i64 %23, i64* %6, align 8, !dbg !725
  %24 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !726
  %25 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %24, i32 0, i32 31, !dbg !728
  %26 = load i8, i8* %25, align 4, !dbg !728
  %27 = trunc i8 %26 to i1, !dbg !728
  br i1 %27, label %90, label %28, !dbg !729

; <label>:28:                                     ; preds = %2
  %29 = load i64, i64* %5, align 8, !dbg !730
  %30 = load i64, i64* %6, align 8, !dbg !731
  %31 = icmp sge i64 %29, %30, !dbg !732
  br i1 %31, label %32, label %90, !dbg !733

; <label>:32:                                     ; preds = %28
  %33 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !735
  %34 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %33, i32 0, i32 31, !dbg !737
  store i8 1, i8* %34, align 4, !dbg !738
  %35 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !739
  %36 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %35, i32 0, i32 28, !dbg !740
  %37 = load i32, i32* %36, align 8, !dbg !740
  %38 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !741
  %39 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %38, i32 0, i32 29, !dbg !742
  %40 = load i32, i32* %39, align 4, !dbg !742
  %41 = load i64, i64* %6, align 8, !dbg !743
  %42 = load i64, i64* %5, align 8, !dbg !744
  %43 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !745
  %44 = call i8* @format_vs(%struct._virtual_server* %43), !dbg !746
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i32 %37, i32 %40, i64 %41, i64 %42, i8* %44), !dbg !747
  %45 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !748
  %46 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %45, i32 0, i32 4, !dbg !750
  %47 = load %struct._real_server*, %struct._real_server** %46, align 8, !dbg !750
  %48 = icmp ne %struct._real_server* %47, null, !dbg !748
  br i1 %48, label %49, label %84, !dbg !751

; <label>:49:                                     ; preds = %32
  %50 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !752
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 4, !dbg !754
  %52 = load %struct._real_server*, %struct._real_server** %51, align 8, !dbg !754
  %53 = getelementptr inbounds %struct._real_server, %struct._real_server* %52, i32 0, i32 16, !dbg !755
  %54 = load i8, i8* %53, align 4, !dbg !755
  %55 = trunc i8 %54 to i1, !dbg !755
  br i1 %55, label %56, label %84, !dbg !756

; <label>:56:                                     ; preds = %49
  %57 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !757
  call void @perform_quorum_state(%struct._virtual_server* %57, i1 zeroext true), !dbg !759
  %58 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !760
  %59 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %58, i32 0, i32 4, !dbg !761
  %60 = load %struct._real_server*, %struct._real_server** %59, align 8, !dbg !761
  %61 = getelementptr inbounds %struct._real_server, %struct._real_server* %60, i32 0, i32 7, !dbg !762
  %62 = load i32, i32* %61, align 8, !dbg !762
  %63 = icmp ne i32 %62, 0, !dbg !760
  %64 = select i1 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), !dbg !760
  %65 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !763
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 4, !dbg !764
  %67 = load %struct._real_server*, %struct._real_server** %66, align 8, !dbg !764
  %68 = getelementptr inbounds %struct._real_server, %struct._real_server* %67, i32 0, i32 0, !dbg !765
  %69 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !766
  %70 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %69, i32 0, i32 6, !dbg !767
  %71 = load i16, i16* %70, align 2, !dbg !767
  %72 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %68, i16 zeroext %71), !dbg !768
  %73 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !769
  %74 = call i8* @format_vs(%struct._virtual_server* %73), !dbg !770
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i8* %64, i8* %72, i8* %74), !dbg !771
  %75 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !772
  %76 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !773
  %77 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %76, i32 0, i32 4, !dbg !774
  %78 = load %struct._real_server*, %struct._real_server** %77, align 8, !dbg !774
  %79 = call i32 @ipvs_cmd(i32 1160, %struct._virtual_server* %75, %struct._real_server* %78), !dbg !775
  %80 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !776
  %81 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %80, i32 0, i32 4, !dbg !777
  %82 = load %struct._real_server*, %struct._real_server** %81, align 8, !dbg !777
  %83 = getelementptr inbounds %struct._real_server, %struct._real_server* %82, i32 0, i32 16, !dbg !778
  store i8 0, i8* %83, align 4, !dbg !779
  br label %84, !dbg !780

; <label>:84:                                     ; preds = %56, %49, %32
  %85 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !781
  %86 = load i8, i8* %4, align 1, !dbg !782
  %87 = trunc i8 %86 to i1, !dbg !782
  %88 = load i64, i64* %6, align 8, !dbg !783
  %89 = load i64, i64* %5, align 8, !dbg !784
  call void @do_vs_notifies(%struct._virtual_server* %85, i1 zeroext %87, i64 %88, i64 %89, i1 zeroext false), !dbg !785
  br label %184, !dbg !786

; <label>:90:                                     ; preds = %28, %2
  %91 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !787
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 31, !dbg !789
  %93 = load i8, i8* %92, align 4, !dbg !789
  %94 = trunc i8 %93 to i1, !dbg !789
  br i1 %94, label %95, label %102, !dbg !790

; <label>:95:                                     ; preds = %90
  %96 = load i64, i64* %5, align 8, !dbg !791
  %97 = icmp ne i64 %96, 0, !dbg !791
  br i1 %97, label %98, label %122, !dbg !792

; <label>:98:                                     ; preds = %95
  %99 = load i64, i64* %5, align 8, !dbg !793
  %100 = load i64, i64* %6, align 8, !dbg !795
  %101 = icmp slt i64 %99, %100, !dbg !796
  br i1 %101, label %122, label %102, !dbg !797

; <label>:102:                                    ; preds = %98, %90
  %103 = load i8, i8* %4, align 1, !dbg !798
  %104 = trunc i8 %103 to i1, !dbg !798
  br i1 %104, label %105, label %183, !dbg !799

; <label>:105:                                    ; preds = %102
  %106 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !800
  %107 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %106, i32 0, i32 31, !dbg !801
  %108 = load i8, i8* %107, align 4, !dbg !801
  %109 = trunc i8 %108 to i1, !dbg !801
  br i1 %109, label %183, label %110, !dbg !802

; <label>:110:                                    ; preds = %105
  %111 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !803
  %112 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %111, i32 0, i32 4, !dbg !804
  %113 = load %struct._real_server*, %struct._real_server** %112, align 8, !dbg !804
  %114 = icmp ne %struct._real_server* %113, null, !dbg !803
  br i1 %114, label %115, label %183, !dbg !805

; <label>:115:                                    ; preds = %110
  %116 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !806
  %117 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %116, i32 0, i32 4, !dbg !807
  %118 = load %struct._real_server*, %struct._real_server** %117, align 8, !dbg !807
  %119 = getelementptr inbounds %struct._real_server, %struct._real_server* %118, i32 0, i32 16, !dbg !808
  %120 = load i8, i8* %119, align 4, !dbg !808
  %121 = trunc i8 %120 to i1, !dbg !808
  br i1 %121, label %183, label %122, !dbg !809

; <label>:122:                                    ; preds = %115, %98, %95
  %123 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !811
  %124 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %123, i32 0, i32 31, !dbg !813
  store i8 0, i8* %124, align 4, !dbg !814
  %125 = load i8, i8* %4, align 1, !dbg !815
  %126 = trunc i8 %125 to i1, !dbg !815
  %127 = select i1 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), !dbg !815
  %128 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !816
  %129 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %128, i32 0, i32 28, !dbg !817
  %130 = load i32, i32* %129, align 8, !dbg !817
  %131 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !818
  %132 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %131, i32 0, i32 29, !dbg !819
  %133 = load i32, i32* %132, align 4, !dbg !819
  %134 = load i64, i64* %6, align 8, !dbg !820
  %135 = load i64, i64* %5, align 8, !dbg !821
  %136 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !822
  %137 = call i8* @format_vs(%struct._virtual_server* %136), !dbg !823
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* %127, i32 %130, i32 %133, i64 %134, i64 %135, i8* %137), !dbg !824
  %138 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !825
  %139 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %138, i32 0, i32 4, !dbg !827
  %140 = load %struct._real_server*, %struct._real_server** %139, align 8, !dbg !827
  %141 = icmp ne %struct._real_server* %140, null, !dbg !825
  br i1 %141, label %142, label %177, !dbg !828

; <label>:142:                                    ; preds = %122
  %143 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !829
  %144 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %143, i32 0, i32 4, !dbg !831
  %145 = load %struct._real_server*, %struct._real_server** %144, align 8, !dbg !831
  %146 = getelementptr inbounds %struct._real_server, %struct._real_server* %145, i32 0, i32 16, !dbg !832
  %147 = load i8, i8* %146, align 4, !dbg !832
  %148 = trunc i8 %147 to i1, !dbg !832
  br i1 %148, label %177, label %149, !dbg !833

; <label>:149:                                    ; preds = %142
  %150 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !834
  %151 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %150, i32 0, i32 4, !dbg !836
  %152 = load %struct._real_server*, %struct._real_server** %151, align 8, !dbg !836
  %153 = getelementptr inbounds %struct._real_server, %struct._real_server* %152, i32 0, i32 7, !dbg !837
  %154 = load i32, i32* %153, align 8, !dbg !837
  %155 = icmp ne i32 %154, 0, !dbg !834
  %156 = select i1 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), !dbg !834
  %157 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !838
  %158 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %157, i32 0, i32 4, !dbg !839
  %159 = load %struct._real_server*, %struct._real_server** %158, align 8, !dbg !839
  %160 = getelementptr inbounds %struct._real_server, %struct._real_server* %159, i32 0, i32 0, !dbg !840
  %161 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !841
  %162 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %161, i32 0, i32 6, !dbg !842
  %163 = load i16, i16* %162, align 2, !dbg !842
  %164 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %160, i16 zeroext %163), !dbg !843
  %165 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !844
  %166 = call i8* @format_vs(%struct._virtual_server* %165), !dbg !845
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0), i8* %156, i8* %164, i8* %166), !dbg !846
  %167 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !847
  %168 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !848
  %169 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %168, i32 0, i32 4, !dbg !849
  %170 = load %struct._real_server*, %struct._real_server** %169, align 8, !dbg !849
  %171 = call i32 @ipvs_cmd(i32 1159, %struct._virtual_server* %167, %struct._real_server* %170), !dbg !850
  %172 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !851
  %173 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %172, i32 0, i32 4, !dbg !852
  %174 = load %struct._real_server*, %struct._real_server** %173, align 8, !dbg !852
  %175 = getelementptr inbounds %struct._real_server, %struct._real_server* %174, i32 0, i32 16, !dbg !853
  store i8 1, i8* %175, align 4, !dbg !854
  %176 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !855
  call void @perform_quorum_state(%struct._virtual_server* %176, i1 zeroext false), !dbg !856
  br label %177, !dbg !857

; <label>:177:                                    ; preds = %149, %142, %122
  %178 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !858
  %179 = load i8, i8* %4, align 1, !dbg !859
  %180 = trunc i8 %179 to i1, !dbg !859
  %181 = load i64, i64* %6, align 8, !dbg !860
  %182 = load i64, i64* %5, align 8, !dbg !861
  call void @do_vs_notifies(%struct._virtual_server* %178, i1 zeroext %180, i64 %181, i64 %182, i1 zeroext false), !dbg !862
  br label %183, !dbg !863

; <label>:183:                                    ; preds = %177, %115, %110, %105, %102
  br label %184

; <label>:184:                                    ; preds = %84, %183
  ret void, !dbg !864
}

; Function Attrs: nounwind uwtable
define void @set_checker_state(%struct._checker*, i1 zeroext) #0 !dbg !865 {
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i8, align 1
  store %struct._checker* %0, %struct._checker** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1000, metadata !178), !dbg !1001
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1002, metadata !178), !dbg !1003
  %6 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1004
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 8, !dbg !1006
  %8 = load i8, i8* %7, align 1, !dbg !1006
  %9 = trunc i8 %8 to i1, !dbg !1006
  %10 = zext i1 %9 to i32, !dbg !1004
  %11 = load i8, i8* %4, align 1, !dbg !1007
  %12 = trunc i8 %11 to i1, !dbg !1007
  %13 = zext i1 %12 to i32, !dbg !1007
  %14 = icmp eq i32 %10, %13, !dbg !1008
  br i1 %14, label %15, label %16, !dbg !1009

; <label>:15:                                     ; preds = %2
  br label %46, !dbg !1010

; <label>:16:                                     ; preds = %2
  %17 = load i8, i8* %4, align 1, !dbg !1011
  %18 = trunc i8 %17 to i1, !dbg !1011
  %19 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1012
  %20 = getelementptr inbounds %struct._checker, %struct._checker* %19, i32 0, i32 8, !dbg !1013
  %21 = zext i1 %18 to i8, !dbg !1014
  store i8 %21, i8* %20, align 1, !dbg !1014
  %22 = load i8, i8* %4, align 1, !dbg !1015
  %23 = trunc i8 %22 to i1, !dbg !1015
  br i1 %23, label %31, label %24, !dbg !1017

; <label>:24:                                     ; preds = %16
  %25 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1018
  %26 = getelementptr inbounds %struct._checker, %struct._checker* %25, i32 0, i32 5, !dbg !1019
  %27 = load %struct._real_server*, %struct._real_server** %26, align 8, !dbg !1019
  %28 = getelementptr inbounds %struct._real_server, %struct._real_server* %27, i32 0, i32 17, !dbg !1020
  %29 = load i32, i32* %28, align 8, !dbg !1021
  %30 = add i32 %29, 1, !dbg !1021
  store i32 %30, i32* %28, align 8, !dbg !1021
  br label %46, !dbg !1018

; <label>:31:                                     ; preds = %16
  %32 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1022
  %33 = getelementptr inbounds %struct._checker, %struct._checker* %32, i32 0, i32 5, !dbg !1024
  %34 = load %struct._real_server*, %struct._real_server** %33, align 8, !dbg !1024
  %35 = getelementptr inbounds %struct._real_server, %struct._real_server* %34, i32 0, i32 17, !dbg !1025
  %36 = load i32, i32* %35, align 8, !dbg !1025
  %37 = icmp ne i32 %36, 0, !dbg !1022
  br i1 %37, label %38, label %45, !dbg !1026

; <label>:38:                                     ; preds = %31
  %39 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1027
  %40 = getelementptr inbounds %struct._checker, %struct._checker* %39, i32 0, i32 5, !dbg !1028
  %41 = load %struct._real_server*, %struct._real_server** %40, align 8, !dbg !1028
  %42 = getelementptr inbounds %struct._real_server, %struct._real_server* %41, i32 0, i32 17, !dbg !1029
  %43 = load i32, i32* %42, align 8, !dbg !1030
  %44 = add i32 %43, -1, !dbg !1030
  store i32 %44, i32* %42, align 8, !dbg !1030
  br label %45, !dbg !1027

; <label>:45:                                     ; preds = %38, %31
  br label %46

; <label>:46:                                     ; preds = %15, %45, %24
  ret void, !dbg !1031
}

; Function Attrs: nounwind uwtable
define void @update_svr_checker_state(i1 zeroext, %struct._checker*) #0 !dbg !1032 {
  %3 = alloca i8, align 1
  %4 = alloca %struct._checker*, align 8
  %5 = zext i1 %0 to i8
  store i8 %5, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1035, metadata !178), !dbg !1036
  store %struct._checker* %1, %struct._checker** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1037, metadata !178), !dbg !1038
  %6 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1039
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 8, !dbg !1041
  %8 = load i8, i8* %7, align 1, !dbg !1041
  %9 = trunc i8 %8 to i1, !dbg !1041
  %10 = zext i1 %9 to i32, !dbg !1039
  %11 = load i8, i8* %3, align 1, !dbg !1042
  %12 = trunc i8 %11 to i1, !dbg !1042
  %13 = zext i1 %12 to i32, !dbg !1042
  %14 = icmp eq i32 %10, %13, !dbg !1043
  br i1 %14, label %15, label %39, !dbg !1044

; <label>:15:                                     ; preds = %2
  %16 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1045
  %17 = getelementptr inbounds %struct._checker, %struct._checker* %16, i32 0, i32 9, !dbg !1048
  %18 = load i8, i8* %17, align 2, !dbg !1048
  %19 = trunc i8 %18 to i1, !dbg !1048
  br i1 %19, label %38, label %20, !dbg !1049

; <label>:20:                                     ; preds = %15
  %21 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1050
  %22 = getelementptr inbounds %struct._checker, %struct._checker* %21, i32 0, i32 11, !dbg !1053
  %23 = load i32, i32* %22, align 8, !dbg !1053
  %24 = icmp ne i32 %23, 0, !dbg !1050
  br i1 %24, label %28, label %25, !dbg !1054

; <label>:25:                                     ; preds = %20
  %26 = load i8, i8* %3, align 1, !dbg !1055
  %27 = trunc i8 %26 to i1, !dbg !1055
  br i1 %27, label %35, label %28, !dbg !1057

; <label>:28:                                     ; preds = %25, %20
  %29 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1058
  %30 = getelementptr inbounds %struct._checker, %struct._checker* %29, i32 0, i32 4, !dbg !1059
  %31 = load %struct._virtual_server*, %struct._virtual_server** %30, align 8, !dbg !1059
  %32 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1060
  %33 = getelementptr inbounds %struct._checker, %struct._checker* %32, i32 0, i32 5, !dbg !1061
  %34 = load %struct._real_server*, %struct._real_server** %33, align 8, !dbg !1061
  call void @do_rs_notifies(%struct._virtual_server* %31, %struct._real_server* %34, i1 zeroext false), !dbg !1062
  br label %35, !dbg !1062

; <label>:35:                                     ; preds = %28, %25
  %36 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1063
  %37 = getelementptr inbounds %struct._checker, %struct._checker* %36, i32 0, i32 9, !dbg !1064
  store i8 1, i8* %37, align 2, !dbg !1065
  br label %38, !dbg !1066

; <label>:38:                                     ; preds = %35, %15
  br label %74, !dbg !1067

; <label>:39:                                     ; preds = %2
  %40 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1068
  %41 = getelementptr inbounds %struct._checker, %struct._checker* %40, i32 0, i32 9, !dbg !1069
  store i8 1, i8* %41, align 2, !dbg !1070
  %42 = load i8, i8* %3, align 1, !dbg !1071
  %43 = trunc i8 %42 to i1, !dbg !1071
  br i1 %43, label %44, label %57, !dbg !1073

; <label>:44:                                     ; preds = %39
  %45 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1074
  %46 = getelementptr inbounds %struct._checker, %struct._checker* %45, i32 0, i32 5, !dbg !1077
  %47 = load %struct._real_server*, %struct._real_server** %46, align 8, !dbg !1077
  %48 = getelementptr inbounds %struct._real_server, %struct._real_server* %47, i32 0, i32 17, !dbg !1078
  %49 = load i32, i32* %48, align 8, !dbg !1078
  %50 = icmp ule i32 %49, 1, !dbg !1079
  br i1 %50, label %51, label %56, !dbg !1080

; <label>:51:                                     ; preds = %44
  %52 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1081
  %53 = call zeroext i1 @perform_svr_state(i1 zeroext true, %struct._checker* %52), !dbg !1084
  br i1 %53, label %55, label %54, !dbg !1085

; <label>:54:                                     ; preds = %51
  br label %74, !dbg !1086

; <label>:55:                                     ; preds = %51
  br label %56, !dbg !1087

; <label>:56:                                     ; preds = %55, %44
  br label %70, !dbg !1088

; <label>:57:                                     ; preds = %39
  %58 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1089
  %59 = getelementptr inbounds %struct._checker, %struct._checker* %58, i32 0, i32 5, !dbg !1092
  %60 = load %struct._real_server*, %struct._real_server** %59, align 8, !dbg !1092
  %61 = getelementptr inbounds %struct._real_server, %struct._real_server* %60, i32 0, i32 17, !dbg !1093
  %62 = load i32, i32* %61, align 8, !dbg !1093
  %63 = icmp eq i32 %62, 0, !dbg !1094
  br i1 %63, label %64, label %69, !dbg !1095

; <label>:64:                                     ; preds = %57
  %65 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1096
  %66 = call zeroext i1 @perform_svr_state(i1 zeroext false, %struct._checker* %65), !dbg !1099
  br i1 %66, label %68, label %67, !dbg !1100

; <label>:67:                                     ; preds = %64
  br label %74, !dbg !1101

; <label>:68:                                     ; preds = %64
  br label %69, !dbg !1102

; <label>:69:                                     ; preds = %68, %57
  br label %70

; <label>:70:                                     ; preds = %69, %56
  %71 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1103
  %72 = load i8, i8* %3, align 1, !dbg !1104
  %73 = trunc i8 %72 to i1, !dbg !1104
  call void @set_checker_state(%struct._checker* %71, i1 zeroext %73), !dbg !1105
  br label %74, !dbg !1106

; <label>:74:                                     ; preds = %70, %67, %54, %38
  ret void, !dbg !1107
}

; Function Attrs: nounwind uwtable
define internal void @do_rs_notifies(%struct._virtual_server*, %struct._real_server*, i1 zeroext) #0 !dbg !1109 {
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca %struct._real_server*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._notify_script*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1112, metadata !178), !dbg !1113
  store %struct._real_server* %1, %struct._real_server** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %5, metadata !1114, metadata !178), !dbg !1115
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1116, metadata !178), !dbg !1117
  call void @llvm.dbg.declare(metadata %struct._notify_script** %7, metadata !1118, metadata !178), !dbg !1119
  %9 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1120
  %10 = getelementptr inbounds %struct._real_server, %struct._real_server* %9, i32 0, i32 16, !dbg !1121
  %11 = load i8, i8* %10, align 4, !dbg !1121
  %12 = trunc i8 %11 to i1, !dbg !1121
  br i1 %12, label %13, label %17, !dbg !1120

; <label>:13:                                     ; preds = %3
  %14 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1122
  %15 = getelementptr inbounds %struct._real_server, %struct._real_server* %14, i32 0, i32 8, !dbg !1124
  %16 = load %struct._notify_script*, %struct._notify_script** %15, align 8, !dbg !1124
  br label %21, !dbg !1125

; <label>:17:                                     ; preds = %3
  %18 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1126
  %19 = getelementptr inbounds %struct._real_server, %struct._real_server* %18, i32 0, i32 9, !dbg !1128
  %20 = load %struct._notify_script*, %struct._notify_script** %19, align 8, !dbg !1128
  br label %21, !dbg !1129

; <label>:21:                                     ; preds = %17, %13
  %22 = phi %struct._notify_script* [ %16, %13 ], [ %20, %17 ], !dbg !1130
  store %struct._notify_script* %22, %struct._notify_script** %7, align 8, !dbg !1132
  %23 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !1133
  %24 = icmp ne %struct._notify_script* %23, null, !dbg !1133
  br i1 %24, label %25, label %36, !dbg !1135

; <label>:25:                                     ; preds = %21
  %26 = load i8, i8* %6, align 1, !dbg !1136
  %27 = trunc i8 %26 to i1, !dbg !1136
  br i1 %27, label %28, label %32, !dbg !1139

; <label>:28:                                     ; preds = %25
  %29 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1140
  %30 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !1141
  %31 = call i32 @system_call_script(%struct._thread_master* %29, i32 (%struct._thread*)* @child_killed_thread, i8* null, i64 1000000, %struct._notify_script* %30), !dbg !1142
  br label %35, !dbg !1142

; <label>:32:                                     ; preds = %25
  %33 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !1143
  %34 = call i32 @notify_exec(%struct._notify_script* %33), !dbg !1144
  br label %35

; <label>:35:                                     ; preds = %32, %28
  br label %36, !dbg !1145

; <label>:36:                                     ; preds = %35, %21
  %37 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1146
  %38 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1147
  call void @notify_fifo_rs(%struct._virtual_server* %37, %struct._real_server* %38), !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @perform_svr_state(i1 zeroext, %struct._checker*) #0 !dbg !1150 {
  %3 = alloca i1, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._virtual_server*, align 8
  %7 = alloca %struct._real_server*, align 8
  %8 = zext i1 %0 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1153, metadata !178), !dbg !1154
  store %struct._checker* %1, %struct._checker** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !1155, metadata !178), !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !1157, metadata !178), !dbg !1158
  %9 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1159
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 4, !dbg !1160
  %11 = load %struct._virtual_server*, %struct._virtual_server** %10, align 8, !dbg !1160
  store %struct._virtual_server* %11, %struct._virtual_server** %6, align 8, !dbg !1158
  call void @llvm.dbg.declare(metadata %struct._real_server** %7, metadata !1161, metadata !178), !dbg !1162
  %12 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1163
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 5, !dbg !1164
  %14 = load %struct._real_server*, %struct._real_server** %13, align 8, !dbg !1164
  store %struct._real_server* %14, %struct._real_server** %7, align 8, !dbg !1162
  %15 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1165
  %16 = getelementptr inbounds %struct._real_server, %struct._real_server* %15, i32 0, i32 16, !dbg !1167
  %17 = load i8, i8* %16, align 4, !dbg !1167
  %18 = trunc i8 %17 to i1, !dbg !1167
  %19 = zext i1 %18 to i32, !dbg !1168
  %20 = load i8, i8* %4, align 1, !dbg !1169
  %21 = trunc i8 %20 to i1, !dbg !1169
  %22 = zext i1 %21 to i32, !dbg !1169
  %23 = icmp eq i32 %19, %22, !dbg !1170
  br i1 %23, label %24, label %25, !dbg !1171

; <label>:24:                                     ; preds = %2
  store i1 true, i1* %3, align 1, !dbg !1172
  br label %85, !dbg !1172

; <label>:25:                                     ; preds = %2
  %26 = load i8, i8* %4, align 1, !dbg !1173
  %27 = trunc i8 %26 to i1, !dbg !1173
  br i1 %27, label %28, label %34, !dbg !1173

; <label>:28:                                     ; preds = %25
  %29 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1174
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 7, !dbg !1176
  %31 = load i32, i32* %30, align 8, !dbg !1176
  %32 = icmp ne i32 %31, 0, !dbg !1177
  %33 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), !dbg !1177
  br label %40, !dbg !1178

; <label>:34:                                     ; preds = %25
  %35 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1179
  %36 = getelementptr inbounds %struct._real_server, %struct._real_server* %35, i32 0, i32 7, !dbg !1180
  %37 = load i32, i32* %36, align 8, !dbg !1180
  %38 = icmp ne i32 %37, 0, !dbg !1181
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), !dbg !1181
  br label %40, !dbg !1182

; <label>:40:                                     ; preds = %34, %28
  %41 = phi i8* [ %33, %28 ], [ %39, %34 ], !dbg !1184
  %42 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1186
  %43 = getelementptr inbounds %struct._real_server, %struct._real_server* %42, i32 0, i32 0, !dbg !1187
  %44 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1188
  %45 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %44, i32 0, i32 6, !dbg !1189
  %46 = load i16, i16* %45, align 2, !dbg !1189
  %47 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %43, i16 zeroext %46), !dbg !1190
  %48 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1191
  %49 = call i8* @format_vs(%struct._virtual_server* %48), !dbg !1192
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i8* %41, i8* %47, i8* %49), !dbg !1193
  %50 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1194
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 31, !dbg !1196
  %52 = load i8, i8* %51, align 4, !dbg !1196
  %53 = trunc i8 %52 to i1, !dbg !1196
  br i1 %53, label %66, label %54, !dbg !1197

; <label>:54:                                     ; preds = %40
  %55 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1198
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 4, !dbg !1200
  %57 = load %struct._real_server*, %struct._real_server** %56, align 8, !dbg !1200
  %58 = icmp ne %struct._real_server* %57, null, !dbg !1198
  br i1 %58, label %59, label %66, !dbg !1201

; <label>:59:                                     ; preds = %54
  %60 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1202
  %61 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %60, i32 0, i32 4, !dbg !1204
  %62 = load %struct._real_server*, %struct._real_server** %61, align 8, !dbg !1204
  %63 = getelementptr inbounds %struct._real_server, %struct._real_server* %62, i32 0, i32 16, !dbg !1205
  %64 = load i8, i8* %63, align 4, !dbg !1205
  %65 = trunc i8 %64 to i1, !dbg !1205
  br i1 %65, label %76, label %66, !dbg !1206

; <label>:66:                                     ; preds = %59, %54, %40
  %67 = load i8, i8* %4, align 1, !dbg !1207
  %68 = trunc i8 %67 to i1, !dbg !1207
  %69 = select i1 %68, i32 1159, i32 1160, !dbg !1207
  %70 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1210
  %71 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1211
  %72 = call i32 @ipvs_cmd(i32 %69, %struct._virtual_server* %70, %struct._real_server* %71), !dbg !1212
  %73 = icmp ne i32 %72, 0, !dbg !1212
  br i1 %73, label %74, label %75, !dbg !1213

; <label>:74:                                     ; preds = %66
  store i1 false, i1* %3, align 1, !dbg !1214
  br label %85, !dbg !1214

; <label>:75:                                     ; preds = %66
  br label %76, !dbg !1215

; <label>:76:                                     ; preds = %75, %59
  %77 = load i8, i8* %4, align 1, !dbg !1216
  %78 = trunc i8 %77 to i1, !dbg !1216
  %79 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1217
  %80 = getelementptr inbounds %struct._real_server, %struct._real_server* %79, i32 0, i32 16, !dbg !1218
  %81 = zext i1 %78 to i8, !dbg !1219
  store i8 %81, i8* %80, align 4, !dbg !1219
  %82 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1220
  %83 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1221
  call void @do_rs_notifies(%struct._virtual_server* %82, %struct._real_server* %83, i1 zeroext false), !dbg !1222
  %84 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1223
  call void @update_quorum_state(%struct._virtual_server* %84, i1 zeroext false), !dbg !1224
  store i1 true, i1* %3, align 1, !dbg !1225
  br label %85, !dbg !1225

; <label>:85:                                     ; preds = %76, %74, %24
  %86 = load i1, i1* %3, align 1, !dbg !1226
  ret i1 %86, !dbg !1226
}

; Function Attrs: nounwind uwtable
define void @clear_diff_services(%struct._list*) #0 !dbg !1227 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca %struct._virtual_server*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !1230, metadata !178), !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !1232, metadata !178), !dbg !1233
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1234, metadata !178), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %5, metadata !1236, metadata !178), !dbg !1237
  %6 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !1238
  %7 = getelementptr inbounds %struct._check_data, %struct._check_data* %6, i32 0, i32 3, !dbg !1240
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1240
  %9 = icmp ne %struct._list* %8, null, !dbg !1241
  br i1 %9, label %10, label %24, !dbg !1241

; <label>:10:                                     ; preds = %1
  %11 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !1242
  %12 = getelementptr inbounds %struct._check_data, %struct._check_data* %11, i32 0, i32 3, !dbg !1244
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1244
  %14 = icmp ne %struct._list* %13, null, !dbg !1245
  br i1 %14, label %16, label %15, !dbg !1246

; <label>:15:                                     ; preds = %10
  br label %22, !dbg !1247

; <label>:16:                                     ; preds = %10
  %17 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !1249
  %18 = getelementptr inbounds %struct._check_data, %struct._check_data* %17, i32 0, i32 3, !dbg !1251
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !1251
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 0, !dbg !1252
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !1252
  br label %22, !dbg !1253

; <label>:22:                                     ; preds = %16, %15
  %23 = phi %struct._element* [ null, %15 ], [ %21, %16 ], !dbg !1254
  br label %25, !dbg !1256

; <label>:24:                                     ; preds = %1
  br label %25, !dbg !1257

; <label>:25:                                     ; preds = %24, %22
  %26 = phi %struct._element* [ %23, %22 ], [ null, %24 ], !dbg !1259
  store %struct._element* %26, %struct._element** %3, align 8, !dbg !1261
  br label %27, !dbg !1262

; <label>:27:                                     ; preds = %95, %25
  %28 = load %struct._element*, %struct._element** %3, align 8, !dbg !1263
  %29 = icmp ne %struct._element* %28, null, !dbg !1266
  br i1 %29, label %30, label %35, !dbg !1267

; <label>:30:                                     ; preds = %27
  %31 = load %struct._element*, %struct._element** %3, align 8, !dbg !1268
  %32 = getelementptr inbounds %struct._element, %struct._element* %31, i32 0, i32 2, !dbg !1270
  %33 = load i8*, i8** %32, align 8, !dbg !1270
  %34 = bitcast i8* %33 to %struct._virtual_server*, !dbg !1271
  store %struct._virtual_server* %34, %struct._virtual_server** %4, align 8, !dbg !1272
  br label %35

; <label>:35:                                     ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ true, %30 ]
  br i1 %36, label %37, label %99, !dbg !1273

; <label>:37:                                     ; preds = %35
  %38 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1275
  %39 = call %struct._virtual_server* @vs_exist(%struct._virtual_server* %38), !dbg !1277
  store %struct._virtual_server* %39, %struct._virtual_server** %5, align 8, !dbg !1278
  %40 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1279
  %41 = icmp ne %struct._virtual_server* %40, null, !dbg !1279
  br i1 %41, label %56, label %42, !dbg !1281

; <label>:42:                                     ; preds = %37
  %43 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1282
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 0, !dbg !1285
  %45 = load i8*, i8** %44, align 8, !dbg !1285
  %46 = icmp ne i8* %45, null, !dbg !1282
  br i1 %46, label %47, label %51, !dbg !1286

; <label>:47:                                     ; preds = %42
  %48 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1287
  %49 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %48, i32 0, i32 0, !dbg !1288
  %50 = load i8*, i8** %49, align 8, !dbg !1288
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %50), !dbg !1289
  br label %54, !dbg !1289

; <label>:51:                                     ; preds = %42
  %52 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1290
  %53 = call i8* @format_vs(%struct._virtual_server* %52), !dbg !1291
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %53), !dbg !1292
  br label %54

; <label>:54:                                     ; preds = %51, %47
  %55 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1294
  call void @clear_service_vs(%struct._virtual_server* %55, i1 zeroext false), !dbg !1295
  br label %94, !dbg !1296

; <label>:56:                                     ; preds = %37
  %57 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1297
  %58 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %57, i32 0, i32 18, !dbg !1299
  store i32 1, i32* %58, align 8, !dbg !1300
  %59 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1301
  %60 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %59, i32 0, i32 31, !dbg !1302
  %61 = load i8, i8* %60, align 4, !dbg !1302
  %62 = trunc i8 %61 to i1, !dbg !1302
  %63 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1303
  %64 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %63, i32 0, i32 31, !dbg !1304
  %65 = zext i1 %62 to i8, !dbg !1305
  store i8 %65, i8* %64, align 4, !dbg !1305
  %66 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1306
  %67 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %66, i32 0, i32 32, !dbg !1307
  store i8 1, i8* %67, align 1, !dbg !1308
  %68 = load i8, i8* @using_ha_suspend, align 1, !dbg !1309
  %69 = trunc i8 %68 to i1, !dbg !1309
  br i1 %69, label %70, label %76, !dbg !1311

; <label>:70:                                     ; preds = %56
  %71 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1312
  %72 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %71, i32 0, i32 8, !dbg !1313
  %73 = load i32, i32* %72, align 8, !dbg !1313
  %74 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1314
  %75 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %74, i32 0, i32 8, !dbg !1315
  store i32 %73, i32* %75, align 8, !dbg !1316
  br label %76, !dbg !1314

; <label>:76:                                     ; preds = %70, %56
  %77 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1317
  %78 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %77, i32 0, i32 0, !dbg !1319
  %79 = load i8*, i8** %78, align 8, !dbg !1319
  %80 = icmp ne i8* %79, null, !dbg !1317
  br i1 %80, label %81, label %84, !dbg !1320

; <label>:81:                                     ; preds = %76
  %82 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1321
  %83 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1322
  call void @clear_diff_vsg(%struct._virtual_server* %82, %struct._virtual_server* %83), !dbg !1323
  br label %84, !dbg !1323

; <label>:84:                                     ; preds = %81, %76
  %85 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1324
  %86 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %85, i32 0, i32 20, !dbg !1325
  store i8 1, i8* %86, align 1, !dbg !1326
  %87 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1327
  %88 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1328
  %89 = load %struct._list*, %struct._list** %2, align 8, !dbg !1329
  call void @clear_diff_rs(%struct._virtual_server* %87, %struct._virtual_server* %88, %struct._list* %89), !dbg !1330
  %90 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1331
  %91 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1332
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 4, !dbg !1333
  %93 = load %struct._real_server*, %struct._real_server** %92, align 8, !dbg !1333
  call void @clear_diff_s_srv(%struct._virtual_server* %90, %struct._real_server* %93), !dbg !1334
  br label %94

; <label>:94:                                     ; preds = %84, %54
  br label %95, !dbg !1335

; <label>:95:                                     ; preds = %94
  %96 = load %struct._element*, %struct._element** %3, align 8, !dbg !1336
  %97 = getelementptr inbounds %struct._element, %struct._element* %96, i32 0, i32 0, !dbg !1338
  %98 = load %struct._element*, %struct._element** %97, align 8, !dbg !1338
  store %struct._element* %98, %struct._element** %3, align 8, !dbg !1339
  br label %27, !dbg !1340, !llvm.loop !1341

; <label>:99:                                     ; preds = %35
  ret void, !dbg !1343
}

; Function Attrs: nounwind uwtable
define internal %struct._virtual_server* @vs_exist(%struct._virtual_server*) #0 !dbg !1344 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._virtual_server*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1347, metadata !178), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1349, metadata !178), !dbg !1350
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !1351, metadata !178), !dbg !1352
  %7 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1353
  %8 = getelementptr inbounds %struct._check_data, %struct._check_data* %7, i32 0, i32 3, !dbg !1354
  %9 = load %struct._list*, %struct._list** %8, align 8, !dbg !1354
  store %struct._list* %9, %struct._list** %5, align 8, !dbg !1352
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !1355, metadata !178), !dbg !1356
  %10 = load %struct._list*, %struct._list** %5, align 8, !dbg !1357
  %11 = icmp eq %struct._list* %10, null, !dbg !1359
  br i1 %11, label %22, label %12, !dbg !1360

; <label>:12:                                     ; preds = %1
  %13 = load %struct._list*, %struct._list** %5, align 8, !dbg !1361
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 0, !dbg !1363
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !1363
  %16 = icmp eq %struct._element* %15, null, !dbg !1364
  br i1 %16, label %17, label %23, !dbg !1365

; <label>:17:                                     ; preds = %12
  %18 = load %struct._list*, %struct._list** %5, align 8, !dbg !1366
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 1, !dbg !1368
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !1368
  %21 = icmp eq %struct._element* %20, null, !dbg !1369
  br i1 %21, label %22, label %23, !dbg !1370

; <label>:22:                                     ; preds = %17, %1
  store %struct._virtual_server* null, %struct._virtual_server** %2, align 8, !dbg !1371
  br label %273, !dbg !1371

; <label>:23:                                     ; preds = %17, %12
  %24 = load %struct._list*, %struct._list** %5, align 8, !dbg !1372
  %25 = icmp ne %struct._list* %24, null, !dbg !1374
  br i1 %25, label %27, label %26, !dbg !1375

; <label>:26:                                     ; preds = %23
  br label %31, !dbg !1376

; <label>:27:                                     ; preds = %23
  %28 = load %struct._list*, %struct._list** %5, align 8, !dbg !1378
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !1380
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !1380
  br label %31, !dbg !1381

; <label>:31:                                     ; preds = %27, %26
  %32 = phi %struct._element* [ null, %26 ], [ %30, %27 ], !dbg !1382
  store %struct._element* %32, %struct._element** %4, align 8, !dbg !1384
  br label %33, !dbg !1385

; <label>:33:                                     ; preds = %268, %31
  %34 = load %struct._element*, %struct._element** %4, align 8, !dbg !1386
  %35 = icmp ne %struct._element* %34, null, !dbg !1389
  br i1 %35, label %36, label %272, !dbg !1389

; <label>:36:                                     ; preds = %33
  %37 = load %struct._element*, %struct._element** %4, align 8, !dbg !1390
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 2, !dbg !1392
  %39 = load i8*, i8** %38, align 8, !dbg !1392
  %40 = bitcast i8* %39 to %struct._virtual_server*, !dbg !1393
  store %struct._virtual_server* %40, %struct._virtual_server** %6, align 8, !dbg !1394
  %41 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1395
  %42 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %41, i32 0, i32 2, !dbg !1397
  %43 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1398
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 2, !dbg !1399
  %45 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %42, %struct.sockaddr_storage* %44), !dbg !1400
  br i1 %45, label %46, label %267, !dbg !1401

; <label>:46:                                     ; preds = %36
  %47 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1402
  %48 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %47, i32 0, i32 3, !dbg !1404
  %49 = load i32, i32* %48, align 8, !dbg !1404
  %50 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1405
  %51 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %50, i32 0, i32 3, !dbg !1406
  %52 = load i32, i32* %51, align 8, !dbg !1406
  %53 = icmp eq i32 %49, %52, !dbg !1407
  br i1 %53, label %54, label %267, !dbg !1408

; <label>:54:                                     ; preds = %46
  %55 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1409
  %56 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %55, i32 0, i32 5, !dbg !1411
  %57 = load i16, i16* %56, align 8, !dbg !1411
  %58 = zext i16 %57 to i32, !dbg !1412
  %59 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1413
  %60 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %59, i32 0, i32 5, !dbg !1414
  %61 = load i16, i16* %60, align 8, !dbg !1414
  %62 = zext i16 %61 to i32, !dbg !1415
  %63 = icmp eq i32 %58, %62, !dbg !1416
  br i1 %63, label %64, label %267, !dbg !1417

; <label>:64:                                     ; preds = %54
  %65 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1418
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 6, !dbg !1420
  %67 = load i16, i16* %66, align 2, !dbg !1420
  %68 = zext i16 %67 to i32, !dbg !1421
  %69 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1422
  %70 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %69, i32 0, i32 6, !dbg !1423
  %71 = load i16, i16* %70, align 2, !dbg !1423
  %72 = zext i16 %71 to i32, !dbg !1424
  %73 = icmp eq i32 %68, %72, !dbg !1425
  br i1 %73, label %74, label %267, !dbg !1426

; <label>:74:                                     ; preds = %64
  %75 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1427
  %76 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %75, i32 0, i32 13, !dbg !1429
  %77 = load i32, i32* %76, align 4, !dbg !1429
  %78 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1430
  %79 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %78, i32 0, i32 13, !dbg !1431
  %80 = load i32, i32* %79, align 4, !dbg !1431
  %81 = icmp eq i32 %77, %80, !dbg !1432
  br i1 %81, label %82, label %267, !dbg !1433

; <label>:82:                                     ; preds = %74
  %83 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1434
  %84 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %83, i32 0, i32 14, !dbg !1436
  %85 = load i32, i32* %84, align 8, !dbg !1436
  %86 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1437
  %87 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %86, i32 0, i32 14, !dbg !1438
  %88 = load i32, i32* %87, align 8, !dbg !1438
  %89 = icmp eq i32 %85, %88, !dbg !1439
  br i1 %89, label %90, label %267, !dbg !1440

; <label>:90:                                     ; preds = %82
  %91 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1441
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 26, !dbg !1443
  %93 = load %struct._notify_script*, %struct._notify_script** %92, align 8, !dbg !1443
  %94 = icmp ne %struct._notify_script* %93, null, !dbg !1444
  %95 = xor i1 %94, true, !dbg !1444
  %96 = zext i1 %95 to i32, !dbg !1444
  %97 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1445
  %98 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %97, i32 0, i32 26, !dbg !1446
  %99 = load %struct._notify_script*, %struct._notify_script** %98, align 8, !dbg !1446
  %100 = icmp ne %struct._notify_script* %99, null, !dbg !1447
  %101 = xor i1 %100, true, !dbg !1447
  %102 = zext i1 %101 to i32, !dbg !1447
  %103 = icmp eq i32 %96, %102, !dbg !1448
  br i1 %103, label %104, label %267, !dbg !1449

; <label>:104:                                    ; preds = %90
  %105 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1450
  %106 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %105, i32 0, i32 26, !dbg !1452
  %107 = load %struct._notify_script*, %struct._notify_script** %106, align 8, !dbg !1452
  %108 = icmp ne %struct._notify_script* %107, null, !dbg !1453
  br i1 %108, label %109, label %141, !dbg !1454

; <label>:109:                                    ; preds = %104
  %110 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1455
  %111 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %110, i32 0, i32 26, !dbg !1457
  %112 = load %struct._notify_script*, %struct._notify_script** %111, align 8, !dbg !1457
  %113 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1458
  %114 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %113, i32 0, i32 26, !dbg !1459
  %115 = load %struct._notify_script*, %struct._notify_script** %114, align 8, !dbg !1459
  %116 = call zeroext i1 @notify_script_compare(%struct._notify_script* %112, %struct._notify_script* %115), !dbg !1460
  br i1 %116, label %267, label %117, !dbg !1461

; <label>:117:                                    ; preds = %109
  %118 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1462
  %119 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %118, i32 0, i32 26, !dbg !1464
  %120 = load %struct._notify_script*, %struct._notify_script** %119, align 8, !dbg !1464
  %121 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %120, i32 0, i32 3, !dbg !1465
  %122 = load i32, i32* %121, align 8, !dbg !1465
  %123 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1466
  %124 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %123, i32 0, i32 26, !dbg !1467
  %125 = load %struct._notify_script*, %struct._notify_script** %124, align 8, !dbg !1467
  %126 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %125, i32 0, i32 3, !dbg !1468
  %127 = load i32, i32* %126, align 8, !dbg !1468
  %128 = icmp eq i32 %122, %127, !dbg !1469
  br i1 %128, label %129, label %267, !dbg !1470

; <label>:129:                                    ; preds = %117
  %130 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1471
  %131 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %130, i32 0, i32 26, !dbg !1473
  %132 = load %struct._notify_script*, %struct._notify_script** %131, align 8, !dbg !1473
  %133 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %132, i32 0, i32 4, !dbg !1474
  %134 = load i32, i32* %133, align 4, !dbg !1474
  %135 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1475
  %136 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %135, i32 0, i32 26, !dbg !1476
  %137 = load %struct._notify_script*, %struct._notify_script** %136, align 8, !dbg !1476
  %138 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %137, i32 0, i32 4, !dbg !1477
  %139 = load i32, i32* %138, align 4, !dbg !1477
  %140 = icmp eq i32 %134, %139, !dbg !1478
  br i1 %140, label %141, label %267, !dbg !1479

; <label>:141:                                    ; preds = %129, %104
  %142 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1480
  %143 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %142, i32 0, i32 27, !dbg !1482
  %144 = load %struct._notify_script*, %struct._notify_script** %143, align 8, !dbg !1482
  %145 = icmp ne %struct._notify_script* %144, null, !dbg !1483
  %146 = xor i1 %145, true, !dbg !1483
  %147 = zext i1 %146 to i32, !dbg !1483
  %148 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1484
  %149 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %148, i32 0, i32 27, !dbg !1485
  %150 = load %struct._notify_script*, %struct._notify_script** %149, align 8, !dbg !1485
  %151 = icmp ne %struct._notify_script* %150, null, !dbg !1486
  %152 = xor i1 %151, true, !dbg !1486
  %153 = zext i1 %152 to i32, !dbg !1486
  %154 = icmp eq i32 %147, %153, !dbg !1487
  br i1 %154, label %155, label %267, !dbg !1488

; <label>:155:                                    ; preds = %141
  %156 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1489
  %157 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %156, i32 0, i32 27, !dbg !1491
  %158 = load %struct._notify_script*, %struct._notify_script** %157, align 8, !dbg !1491
  %159 = icmp ne %struct._notify_script* %158, null, !dbg !1492
  br i1 %159, label %160, label %192, !dbg !1493

; <label>:160:                                    ; preds = %155
  %161 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1494
  %162 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %161, i32 0, i32 27, !dbg !1496
  %163 = load %struct._notify_script*, %struct._notify_script** %162, align 8, !dbg !1496
  %164 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1497
  %165 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %164, i32 0, i32 27, !dbg !1498
  %166 = load %struct._notify_script*, %struct._notify_script** %165, align 8, !dbg !1498
  %167 = call zeroext i1 @notify_script_compare(%struct._notify_script* %163, %struct._notify_script* %166), !dbg !1499
  br i1 %167, label %267, label %168, !dbg !1500

; <label>:168:                                    ; preds = %160
  %169 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1501
  %170 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %169, i32 0, i32 27, !dbg !1503
  %171 = load %struct._notify_script*, %struct._notify_script** %170, align 8, !dbg !1503
  %172 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %171, i32 0, i32 3, !dbg !1504
  %173 = load i32, i32* %172, align 8, !dbg !1504
  %174 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1505
  %175 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %174, i32 0, i32 27, !dbg !1506
  %176 = load %struct._notify_script*, %struct._notify_script** %175, align 8, !dbg !1506
  %177 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %176, i32 0, i32 3, !dbg !1507
  %178 = load i32, i32* %177, align 8, !dbg !1507
  %179 = icmp eq i32 %173, %178, !dbg !1508
  br i1 %179, label %180, label %267, !dbg !1509

; <label>:180:                                    ; preds = %168
  %181 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1510
  %182 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %181, i32 0, i32 27, !dbg !1512
  %183 = load %struct._notify_script*, %struct._notify_script** %182, align 8, !dbg !1512
  %184 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %183, i32 0, i32 4, !dbg !1513
  %185 = load i32, i32* %184, align 4, !dbg !1513
  %186 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1514
  %187 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %186, i32 0, i32 27, !dbg !1515
  %188 = load %struct._notify_script*, %struct._notify_script** %187, align 8, !dbg !1515
  %189 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %188, i32 0, i32 4, !dbg !1516
  %190 = load i32, i32* %189, align 4, !dbg !1516
  %191 = icmp eq i32 %185, %190, !dbg !1517
  br i1 %191, label %192, label %267, !dbg !1518

; <label>:192:                                    ; preds = %180, %155
  %193 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1519
  %194 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %193, i32 0, i32 9, !dbg !1521
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* %194, i32 0, i32 0, !dbg !1522
  %196 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1523
  %197 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %196, i32 0, i32 9, !dbg !1524
  %198 = getelementptr inbounds [16 x i8], [16 x i8]* %197, i32 0, i32 0, !dbg !1525
  %199 = call i32 @strcmp(i8* %195, i8* %198) #7, !dbg !1526
  %200 = icmp ne i32 %199, 0, !dbg !1526
  br i1 %200, label %267, label %201, !dbg !1527

; <label>:201:                                    ; preds = %192
  %202 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1528
  %203 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %202, i32 0, i32 11, !dbg !1530
  %204 = load i32, i32* %203, align 8, !dbg !1530
  %205 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1531
  %206 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %205, i32 0, i32 11, !dbg !1532
  %207 = load i32, i32* %206, align 8, !dbg !1532
  %208 = icmp eq i32 %204, %207, !dbg !1533
  br i1 %208, label %209, label %267, !dbg !1534

; <label>:209:                                    ; preds = %201
  %210 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1535
  %211 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %210, i32 0, i32 0, !dbg !1537
  %212 = load i8*, i8** %211, align 8, !dbg !1537
  %213 = icmp ne i8* %212, null, !dbg !1538
  %214 = xor i1 %213, true, !dbg !1538
  %215 = zext i1 %214 to i32, !dbg !1538
  %216 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1539
  %217 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %216, i32 0, i32 0, !dbg !1540
  %218 = load i8*, i8** %217, align 8, !dbg !1540
  %219 = icmp ne i8* %218, null, !dbg !1541
  %220 = xor i1 %219, true, !dbg !1541
  %221 = zext i1 %220 to i32, !dbg !1541
  %222 = icmp eq i32 %215, %221, !dbg !1542
  br i1 %222, label %223, label %267, !dbg !1543

; <label>:223:                                    ; preds = %209
  %224 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1544
  %225 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %224, i32 0, i32 0, !dbg !1546
  %226 = load i8*, i8** %225, align 8, !dbg !1546
  %227 = icmp ne i8* %226, null, !dbg !1547
  br i1 %227, label %228, label %237, !dbg !1548

; <label>:228:                                    ; preds = %223
  %229 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1549
  %230 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %229, i32 0, i32 0, !dbg !1551
  %231 = load i8*, i8** %230, align 8, !dbg !1551
  %232 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1552
  %233 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %232, i32 0, i32 0, !dbg !1553
  %234 = load i8*, i8** %233, align 8, !dbg !1553
  %235 = call i32 @strcmp(i8* %231, i8* %234) #7, !dbg !1554
  %236 = icmp ne i32 %235, 0, !dbg !1554
  br i1 %236, label %267, label %237, !dbg !1555

; <label>:237:                                    ; preds = %228, %223
  %238 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1556
  %239 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %238, i32 0, i32 15, !dbg !1558
  %240 = load i8*, i8** %239, align 8, !dbg !1558
  %241 = icmp ne i8* %240, null, !dbg !1559
  %242 = xor i1 %241, true, !dbg !1559
  %243 = zext i1 %242 to i32, !dbg !1559
  %244 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1560
  %245 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %244, i32 0, i32 15, !dbg !1561
  %246 = load i8*, i8** %245, align 8, !dbg !1561
  %247 = icmp ne i8* %246, null, !dbg !1562
  %248 = xor i1 %247, true, !dbg !1562
  %249 = zext i1 %248 to i32, !dbg !1562
  %250 = icmp eq i32 %243, %249, !dbg !1563
  br i1 %250, label %251, label %267, !dbg !1564

; <label>:251:                                    ; preds = %237
  %252 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1565
  %253 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %252, i32 0, i32 15, !dbg !1567
  %254 = load i8*, i8** %253, align 8, !dbg !1567
  %255 = icmp ne i8* %254, null, !dbg !1568
  br i1 %255, label %256, label %265, !dbg !1569

; <label>:256:                                    ; preds = %251
  %257 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1570
  %258 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %257, i32 0, i32 15, !dbg !1572
  %259 = load i8*, i8** %258, align 8, !dbg !1572
  %260 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1573
  %261 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %260, i32 0, i32 15, !dbg !1574
  %262 = load i8*, i8** %261, align 8, !dbg !1574
  %263 = call i32 @strcmp(i8* %259, i8* %262) #7, !dbg !1575
  %264 = icmp ne i32 %263, 0, !dbg !1575
  br i1 %264, label %267, label %265, !dbg !1576

; <label>:265:                                    ; preds = %256, %251
  %266 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !1577
  store %struct._virtual_server* %266, %struct._virtual_server** %2, align 8, !dbg !1578
  br label %273, !dbg !1578

; <label>:267:                                    ; preds = %256, %237, %228, %209, %201, %192, %180, %168, %160, %141, %129, %117, %109, %90, %82, %74, %64, %54, %46, %36
  br label %268, !dbg !1579

; <label>:268:                                    ; preds = %267
  %269 = load %struct._element*, %struct._element** %4, align 8, !dbg !1580
  %270 = getelementptr inbounds %struct._element, %struct._element* %269, i32 0, i32 0, !dbg !1582
  %271 = load %struct._element*, %struct._element** %270, align 8, !dbg !1582
  store %struct._element* %271, %struct._element** %4, align 8, !dbg !1583
  br label %33, !dbg !1584, !llvm.loop !1585

; <label>:272:                                    ; preds = %33
  store %struct._virtual_server* null, %struct._virtual_server** %2, align 8, !dbg !1587
  br label %273, !dbg !1587

; <label>:273:                                    ; preds = %272, %265, %22
  %274 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !1588
  ret %struct._virtual_server* %274, !dbg !1588
}

; Function Attrs: nounwind uwtable
define internal void @clear_diff_vsg(%struct._virtual_server*, %struct._virtual_server*) #0 !dbg !1589 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca %struct._virtual_server_group*, align 8
  %6 = alloca %struct._virtual_server_group*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1592, metadata !178), !dbg !1593
  store %struct._virtual_server* %1, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1594, metadata !178), !dbg !1595
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %5, metadata !1596, metadata !178), !dbg !1597
  %7 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1598
  %8 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %7, i32 0, i32 1, !dbg !1599
  %9 = load %struct._virtual_server_group*, %struct._virtual_server_group** %8, align 8, !dbg !1599
  store %struct._virtual_server_group* %9, %struct._virtual_server_group** %5, align 8, !dbg !1597
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %6, metadata !1600, metadata !178), !dbg !1601
  %10 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1602
  %11 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %10, i32 0, i32 1, !dbg !1603
  %12 = load %struct._virtual_server_group*, %struct._virtual_server_group** %11, align 8, !dbg !1603
  store %struct._virtual_server_group* %12, %struct._virtual_server_group** %6, align 8, !dbg !1601
  %13 = load %struct._virtual_server_group*, %struct._virtual_server_group** %5, align 8, !dbg !1604
  %14 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %13, i32 0, i32 1, !dbg !1605
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !1605
  %16 = load %struct._virtual_server_group*, %struct._virtual_server_group** %6, align 8, !dbg !1606
  %17 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %16, i32 0, i32 1, !dbg !1607
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !1607
  %19 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1608
  call void @clear_diff_vsge(%struct._list* %15, %struct._list* %18, %struct._virtual_server* %19), !dbg !1609
  %20 = load %struct._virtual_server_group*, %struct._virtual_server_group** %5, align 8, !dbg !1610
  %21 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %20, i32 0, i32 2, !dbg !1611
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !1611
  %23 = load %struct._virtual_server_group*, %struct._virtual_server_group** %6, align 8, !dbg !1612
  %24 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %23, i32 0, i32 2, !dbg !1613
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1613
  %26 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1614
  call void @clear_diff_vsge(%struct._list* %22, %struct._list* %25, %struct._virtual_server* %26), !dbg !1615
  ret void, !dbg !1616
}

; Function Attrs: nounwind uwtable
define internal void @clear_diff_rs(%struct._virtual_server*, %struct._virtual_server*, %struct._list*) #0 !dbg !1617 {
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca %struct._virtual_server*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct._element*, align 8
  %8 = alloca %struct._real_server*, align 8
  %9 = alloca %struct._real_server*, align 8
  %10 = alloca %struct._list*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1620, metadata !178), !dbg !1621
  store %struct._virtual_server* %1, %struct._virtual_server** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %5, metadata !1622, metadata !178), !dbg !1623
  store %struct._list* %2, %struct._list** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !1624, metadata !178), !dbg !1625
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !1626, metadata !178), !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._real_server** %8, metadata !1628, metadata !178), !dbg !1629
  call void @llvm.dbg.declare(metadata %struct._real_server** %9, metadata !1630, metadata !178), !dbg !1631
  call void @llvm.dbg.declare(metadata %struct._list** %10, metadata !1632, metadata !178), !dbg !1633
  %11 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1634
  %12 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %11, i32 0, i32 17, !dbg !1636
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1636
  %14 = icmp eq %struct._list* %13, null, !dbg !1637
  br i1 %14, label %29, label %15, !dbg !1638

; <label>:15:                                     ; preds = %3
  %16 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1639
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 17, !dbg !1641
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !1641
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 0, !dbg !1642
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !1642
  %21 = icmp eq %struct._element* %20, null, !dbg !1643
  br i1 %21, label %22, label %30, !dbg !1644

; <label>:22:                                     ; preds = %15
  %23 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1645
  %24 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %23, i32 0, i32 17, !dbg !1647
  %25 = load %struct._list*, %struct._list** %24, align 8, !dbg !1647
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 1, !dbg !1648
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !1648
  %28 = icmp eq %struct._element* %27, null, !dbg !1649
  br i1 %28, label %29, label %30, !dbg !1650

; <label>:29:                                     ; preds = %22, %3
  br label %125, !dbg !1651

; <label>:30:                                     ; preds = %22, %15
  %31 = call %struct._list* @alloc_list(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null), !dbg !1652
  store %struct._list* %31, %struct._list** %10, align 8, !dbg !1653
  %32 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1654
  %33 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %32, i32 0, i32 17, !dbg !1656
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !1656
  %35 = icmp ne %struct._list* %34, null, !dbg !1657
  br i1 %35, label %36, label %50, !dbg !1657

; <label>:36:                                     ; preds = %30
  %37 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1658
  %38 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %37, i32 0, i32 17, !dbg !1660
  %39 = load %struct._list*, %struct._list** %38, align 8, !dbg !1660
  %40 = icmp ne %struct._list* %39, null, !dbg !1661
  br i1 %40, label %42, label %41, !dbg !1662

; <label>:41:                                     ; preds = %36
  br label %48, !dbg !1663

; <label>:42:                                     ; preds = %36
  %43 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1665
  %44 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %43, i32 0, i32 17, !dbg !1667
  %45 = load %struct._list*, %struct._list** %44, align 8, !dbg !1667
  %46 = getelementptr inbounds %struct._list, %struct._list* %45, i32 0, i32 0, !dbg !1668
  %47 = load %struct._element*, %struct._element** %46, align 8, !dbg !1668
  br label %48, !dbg !1669

; <label>:48:                                     ; preds = %42, %41
  %49 = phi %struct._element* [ null, %41 ], [ %47, %42 ], !dbg !1670
  br label %51, !dbg !1672

; <label>:50:                                     ; preds = %30
  br label %51, !dbg !1673

; <label>:51:                                     ; preds = %50, %48
  %52 = phi %struct._element* [ %49, %48 ], [ null, %50 ], !dbg !1675
  store %struct._element* %52, %struct._element** %7, align 8, !dbg !1677
  br label %53, !dbg !1678

; <label>:53:                                     ; preds = %118, %51
  %54 = load %struct._element*, %struct._element** %7, align 8, !dbg !1679
  %55 = icmp ne %struct._element* %54, null, !dbg !1682
  br i1 %55, label %56, label %61, !dbg !1683

; <label>:56:                                     ; preds = %53
  %57 = load %struct._element*, %struct._element** %7, align 8, !dbg !1684
  %58 = getelementptr inbounds %struct._element, %struct._element* %57, i32 0, i32 2, !dbg !1686
  %59 = load i8*, i8** %58, align 8, !dbg !1686
  %60 = bitcast i8* %59 to %struct._real_server*, !dbg !1687
  store %struct._real_server* %60, %struct._real_server** %8, align 8, !dbg !1688
  br label %61

; <label>:61:                                     ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ true, %56 ]
  br i1 %62, label %63, label %122, !dbg !1689

; <label>:63:                                     ; preds = %61
  %64 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1691
  %65 = load %struct._virtual_server*, %struct._virtual_server** %5, align 8, !dbg !1693
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 17, !dbg !1694
  %67 = load %struct._list*, %struct._list** %66, align 8, !dbg !1694
  %68 = call %struct._real_server* @rs_exist(%struct._real_server* %64, %struct._list* %67), !dbg !1695
  store %struct._real_server* %68, %struct._real_server** %9, align 8, !dbg !1696
  %69 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1697
  %70 = icmp ne %struct._real_server* %69, null, !dbg !1697
  br i1 %70, label %81, label %71, !dbg !1699

; <label>:71:                                     ; preds = %63
  %72 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1700
  %73 = getelementptr inbounds %struct._real_server, %struct._real_server* %72, i32 0, i32 0, !dbg !1702
  %74 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1703
  %75 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %74, i32 0, i32 6, !dbg !1704
  %76 = load i16, i16* %75, align 2, !dbg !1704
  %77 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %73, i16 zeroext %76), !dbg !1705
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i8* %77), !dbg !1706
  %78 = load %struct._list*, %struct._list** %10, align 8, !dbg !1707
  %79 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1708
  %80 = bitcast %struct._real_server* %79 to i8*, !dbg !1708
  call void @list_add(%struct._list* %78, i8* %80), !dbg !1709
  br label %117, !dbg !1710

; <label>:81:                                     ; preds = %63
  %82 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1711
  %83 = getelementptr inbounds %struct._real_server, %struct._real_server* %82, i32 0, i32 16, !dbg !1714
  %84 = load i8, i8* %83, align 4, !dbg !1714
  %85 = trunc i8 %84 to i1, !dbg !1714
  br i1 %85, label %86, label %94, !dbg !1715

; <label>:86:                                     ; preds = %81
  %87 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1716
  %88 = getelementptr inbounds %struct._real_server, %struct._real_server* %87, i32 0, i32 16, !dbg !1717
  %89 = load i8, i8* %88, align 4, !dbg !1717
  %90 = trunc i8 %89 to i1, !dbg !1717
  %91 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1718
  %92 = getelementptr inbounds %struct._real_server, %struct._real_server* %91, i32 0, i32 16, !dbg !1719
  %93 = zext i1 %90 to i8, !dbg !1720
  store i8 %93, i8* %92, align 4, !dbg !1720
  br label %94, !dbg !1718

; <label>:94:                                     ; preds = %86, %81
  %95 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1721
  %96 = getelementptr inbounds %struct._real_server, %struct._real_server* %95, i32 0, i32 18, !dbg !1722
  %97 = load i8, i8* %96, align 4, !dbg !1722
  %98 = trunc i8 %97 to i1, !dbg !1722
  %99 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1723
  %100 = getelementptr inbounds %struct._real_server, %struct._real_server* %99, i32 0, i32 18, !dbg !1724
  %101 = zext i1 %98 to i8, !dbg !1725
  store i8 %101, i8* %100, align 4, !dbg !1725
  %102 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1726
  %103 = getelementptr inbounds %struct._real_server, %struct._real_server* %102, i32 0, i32 1, !dbg !1727
  %104 = load i32, i32* %103, align 8, !dbg !1727
  %105 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1728
  %106 = getelementptr inbounds %struct._real_server, %struct._real_server* %105, i32 0, i32 1, !dbg !1729
  store i32 %104, i32* %106, align 8, !dbg !1730
  %107 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1731
  %108 = getelementptr inbounds %struct._real_server, %struct._real_server* %107, i32 0, i32 2, !dbg !1732
  %109 = load i32, i32* %108, align 4, !dbg !1732
  %110 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1733
  %111 = getelementptr inbounds %struct._real_server, %struct._real_server* %110, i32 0, i32 3, !dbg !1734
  store i32 %109, i32* %111, align 8, !dbg !1735
  %112 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1736
  %113 = getelementptr inbounds %struct._real_server, %struct._real_server* %112, i32 0, i32 19, !dbg !1737
  store i8 1, i8* %113, align 1, !dbg !1738
  %114 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !1739
  %115 = load %struct._real_server*, %struct._real_server** %9, align 8, !dbg !1740
  %116 = load %struct._list*, %struct._list** %6, align 8, !dbg !1741
  call void @migrate_checkers(%struct._real_server* %114, %struct._real_server* %115, %struct._list* %116), !dbg !1742
  br label %117

; <label>:117:                                    ; preds = %94, %71
  br label %118, !dbg !1743

; <label>:118:                                    ; preds = %117
  %119 = load %struct._element*, %struct._element** %7, align 8, !dbg !1744
  %120 = getelementptr inbounds %struct._element, %struct._element* %119, i32 0, i32 0, !dbg !1746
  %121 = load %struct._element*, %struct._element** %120, align 8, !dbg !1746
  store %struct._element* %121, %struct._element** %7, align 8, !dbg !1747
  br label %53, !dbg !1748, !llvm.loop !1749

; <label>:122:                                    ; preds = %61
  %123 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1751
  %124 = load %struct._list*, %struct._list** %10, align 8, !dbg !1752
  call void @clear_service_rs(%struct._virtual_server* %123, %struct._list* %124, i1 zeroext false), !dbg !1753
  call void @free_list(%struct._list** %10), !dbg !1754
  br label %125, !dbg !1755

; <label>:125:                                    ; preds = %122, %29
  ret void, !dbg !1756
}

; Function Attrs: nounwind uwtable
define internal void @clear_diff_s_srv(%struct._virtual_server*, %struct._real_server*) #0 !dbg !1758 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca %struct._real_server*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !1761, metadata !178), !dbg !1762
  store %struct._real_server* %1, %struct._real_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !1763, metadata !178), !dbg !1764
  call void @llvm.dbg.declare(metadata %struct._real_server** %5, metadata !1765, metadata !178), !dbg !1766
  %6 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1767
  %7 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %6, i32 0, i32 4, !dbg !1768
  %8 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !1768
  store %struct._real_server* %8, %struct._real_server** %5, align 8, !dbg !1766
  %9 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1769
  %10 = icmp ne %struct._real_server* %9, null, !dbg !1769
  br i1 %10, label %12, label %11, !dbg !1771

; <label>:11:                                     ; preds = %2
  br label %123, !dbg !1772

; <label>:12:                                     ; preds = %2
  %13 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1773
  %14 = icmp ne %struct._real_server* %13, null, !dbg !1773
  br i1 %14, label %15, label %84, !dbg !1775

; <label>:15:                                     ; preds = %12
  %16 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1776
  %17 = getelementptr inbounds %struct._real_server, %struct._real_server* %16, i32 0, i32 0, !dbg !1778
  %18 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1779
  %19 = getelementptr inbounds %struct._real_server, %struct._real_server* %18, i32 0, i32 0, !dbg !1780
  %20 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %17, %struct.sockaddr_storage* %19), !dbg !1781
  br i1 %20, label %21, label %84, !dbg !1782

; <label>:21:                                     ; preds = %15
  %22 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1783
  %23 = getelementptr inbounds %struct._real_server, %struct._real_server* %22, i32 0, i32 4, !dbg !1785
  %24 = load i32, i32* %23, align 4, !dbg !1785
  %25 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1786
  %26 = getelementptr inbounds %struct._real_server, %struct._real_server* %25, i32 0, i32 4, !dbg !1787
  %27 = load i32, i32* %26, align 4, !dbg !1787
  %28 = icmp eq i32 %24, %27, !dbg !1788
  br i1 %28, label %29, label %84, !dbg !1789

; <label>:29:                                     ; preds = %21
  %30 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1790
  %31 = getelementptr inbounds %struct._real_server, %struct._real_server* %30, i32 0, i32 20, !dbg !1792
  %32 = load i8*, i8** %31, align 8, !dbg !1792
  %33 = icmp ne i8* %32, null, !dbg !1793
  %34 = xor i1 %33, true, !dbg !1793
  %35 = zext i1 %34 to i32, !dbg !1793
  %36 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1794
  %37 = getelementptr inbounds %struct._real_server, %struct._real_server* %36, i32 0, i32 20, !dbg !1795
  %38 = load i8*, i8** %37, align 8, !dbg !1795
  %39 = icmp ne i8* %38, null, !dbg !1796
  %40 = xor i1 %39, true, !dbg !1796
  %41 = zext i1 %40 to i32, !dbg !1796
  %42 = icmp eq i32 %35, %41, !dbg !1797
  br i1 %42, label %43, label %84, !dbg !1798

; <label>:43:                                     ; preds = %29
  %44 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1799
  %45 = getelementptr inbounds %struct._real_server, %struct._real_server* %44, i32 0, i32 20, !dbg !1801
  %46 = load i8*, i8** %45, align 8, !dbg !1801
  %47 = icmp ne i8* %46, null, !dbg !1802
  br i1 %47, label %48, label %57, !dbg !1803

; <label>:48:                                     ; preds = %43
  %49 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1804
  %50 = getelementptr inbounds %struct._real_server, %struct._real_server* %49, i32 0, i32 20, !dbg !1806
  %51 = load i8*, i8** %50, align 8, !dbg !1806
  %52 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1807
  %53 = getelementptr inbounds %struct._real_server, %struct._real_server* %52, i32 0, i32 20, !dbg !1808
  %54 = load i8*, i8** %53, align 8, !dbg !1808
  %55 = call i32 @strcmp(i8* %51, i8* %54) #7, !dbg !1809
  %56 = icmp ne i32 %55, 0, !dbg !1809
  br i1 %56, label %84, label %57, !dbg !1810

; <label>:57:                                     ; preds = %48, %43
  %58 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1811
  %59 = getelementptr inbounds %struct._real_server, %struct._real_server* %58, i32 0, i32 16, !dbg !1813
  %60 = load i8, i8* %59, align 4, !dbg !1813
  %61 = trunc i8 %60 to i1, !dbg !1813
  %62 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1814
  %63 = getelementptr inbounds %struct._real_server, %struct._real_server* %62, i32 0, i32 16, !dbg !1815
  %64 = zext i1 %61 to i8, !dbg !1816
  store i8 %64, i8* %63, align 4, !dbg !1816
  %65 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1817
  %66 = getelementptr inbounds %struct._real_server, %struct._real_server* %65, i32 0, i32 18, !dbg !1818
  %67 = load i8, i8* %66, align 4, !dbg !1818
  %68 = trunc i8 %67 to i1, !dbg !1818
  %69 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1819
  %70 = getelementptr inbounds %struct._real_server, %struct._real_server* %69, i32 0, i32 18, !dbg !1820
  %71 = zext i1 %68 to i8, !dbg !1821
  store i8 %71, i8* %70, align 4, !dbg !1821
  %72 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1822
  %73 = getelementptr inbounds %struct._real_server, %struct._real_server* %72, i32 0, i32 1, !dbg !1823
  %74 = load i32, i32* %73, align 8, !dbg !1823
  %75 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1824
  %76 = getelementptr inbounds %struct._real_server, %struct._real_server* %75, i32 0, i32 1, !dbg !1825
  store i32 %74, i32* %76, align 8, !dbg !1826
  %77 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1827
  %78 = getelementptr inbounds %struct._real_server, %struct._real_server* %77, i32 0, i32 2, !dbg !1828
  %79 = load i32, i32* %78, align 4, !dbg !1828
  %80 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1829
  %81 = getelementptr inbounds %struct._real_server, %struct._real_server* %80, i32 0, i32 3, !dbg !1830
  store i32 %79, i32* %81, align 8, !dbg !1831
  %82 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !1832
  %83 = getelementptr inbounds %struct._real_server, %struct._real_server* %82, i32 0, i32 19, !dbg !1833
  store i8 1, i8* %83, align 1, !dbg !1834
  br label %123, !dbg !1835

; <label>:84:                                     ; preds = %48, %29, %21, %15, %12
  %85 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1836
  %86 = getelementptr inbounds %struct._real_server, %struct._real_server* %85, i32 0, i32 7, !dbg !1839
  %87 = load i32, i32* %86, align 8, !dbg !1839
  %88 = icmp ne i32 %87, 0, !dbg !1836
  br i1 %88, label %89, label %105, !dbg !1840

; <label>:89:                                     ; preds = %84
  %90 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1841
  %91 = getelementptr inbounds %struct._real_server, %struct._real_server* %90, i32 0, i32 16, !dbg !1844
  %92 = load i8, i8* %91, align 4, !dbg !1844
  %93 = trunc i8 %92 to i1, !dbg !1844
  br i1 %93, label %102, label %94, !dbg !1845

; <label>:94:                                     ; preds = %89
  %95 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1846
  %96 = getelementptr inbounds %struct._real_server, %struct._real_server* %95, i32 0, i32 18, !dbg !1848
  %97 = load i8, i8* %96, align 4, !dbg !1848
  %98 = trunc i8 %97 to i1, !dbg !1848
  br i1 %98, label %99, label %102, !dbg !1849

; <label>:99:                                     ; preds = %94
  %100 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1850
  %101 = getelementptr inbounds %struct._real_server, %struct._real_server* %100, i32 0, i32 16, !dbg !1851
  store i8 1, i8* %101, align 4, !dbg !1852
  br label %102, !dbg !1853

; <label>:102:                                    ; preds = %99, %94, %89
  %103 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1854
  %104 = getelementptr inbounds %struct._real_server, %struct._real_server* %103, i32 0, i32 7, !dbg !1855
  store i32 0, i32* %104, align 8, !dbg !1856
  br label %105, !dbg !1857

; <label>:105:                                    ; preds = %102, %84
  %106 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1858
  %107 = getelementptr inbounds %struct._real_server, %struct._real_server* %106, i32 0, i32 16, !dbg !1860
  %108 = load i8, i8* %107, align 4, !dbg !1860
  %109 = trunc i8 %108 to i1, !dbg !1860
  br i1 %109, label %110, label %122, !dbg !1861

; <label>:110:                                    ; preds = %105
  %111 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1862
  %112 = getelementptr inbounds %struct._real_server, %struct._real_server* %111, i32 0, i32 0, !dbg !1864
  %113 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1865
  %114 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %113, i32 0, i32 6, !dbg !1866
  %115 = load i16, i16* %114, align 2, !dbg !1866
  %116 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %112, i16 zeroext %115), !dbg !1867
  %117 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1868
  %118 = call i8* @format_vs(%struct._virtual_server* %117), !dbg !1869
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i32 0, i32 0), i8* %116, i8* %118), !dbg !1870
  %119 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !1871
  %120 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !1872
  %121 = call i32 @ipvs_cmd(i32 1160, %struct._virtual_server* %119, %struct._real_server* %120), !dbg !1873
  br label %122, !dbg !1874

; <label>:122:                                    ; preds = %110, %105
  br label %123

; <label>:123:                                    ; preds = %11, %122, %57
  ret void, !dbg !1875
}

; Function Attrs: nounwind uwtable
define void @link_vsg_to_vs() #0 !dbg !1876 {
  %1 = alloca %struct._element*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._virtual_server_group*, align 8
  %7 = alloca %struct._virtual_server_group_entry*, align 8
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._element** %1, metadata !1877, metadata !178), !dbg !1878
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !1879, metadata !178), !dbg !1880
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !1881, metadata !178), !dbg !1882
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !1883, metadata !178), !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1885, metadata !178), !dbg !1886
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %6, metadata !1887, metadata !178), !dbg !1888
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %7, metadata !1889, metadata !178), !dbg !1913
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1914, metadata !178), !dbg !1915
  %9 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1916
  %10 = getelementptr inbounds %struct._check_data, %struct._check_data* %9, i32 0, i32 3, !dbg !1918
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !1918
  %12 = icmp eq %struct._list* %11, null, !dbg !1919
  br i1 %12, label %27, label %13, !dbg !1920

; <label>:13:                                     ; preds = %0
  %14 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1921
  %15 = getelementptr inbounds %struct._check_data, %struct._check_data* %14, i32 0, i32 3, !dbg !1923
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1923
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 0, !dbg !1924
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1924
  %19 = icmp eq %struct._element* %18, null, !dbg !1925
  br i1 %19, label %20, label %28, !dbg !1926

; <label>:20:                                     ; preds = %13
  %21 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1927
  %22 = getelementptr inbounds %struct._check_data, %struct._check_data* %21, i32 0, i32 3, !dbg !1929
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1929
  %24 = getelementptr inbounds %struct._list, %struct._list* %23, i32 0, i32 1, !dbg !1930
  %25 = load %struct._element*, %struct._element** %24, align 8, !dbg !1930
  %26 = icmp eq %struct._element* %25, null, !dbg !1931
  br i1 %26, label %27, label %28, !dbg !1932

; <label>:27:                                     ; preds = %20, %0
  br label %319, !dbg !1933

; <label>:28:                                     ; preds = %20, %13
  %29 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1934
  %30 = getelementptr inbounds %struct._check_data, %struct._check_data* %29, i32 0, i32 3, !dbg !1936
  %31 = load %struct._list*, %struct._list** %30, align 8, !dbg !1936
  %32 = icmp ne %struct._list* %31, null, !dbg !1937
  br i1 %32, label %34, label %33, !dbg !1938

; <label>:33:                                     ; preds = %28
  br label %40, !dbg !1939

; <label>:34:                                     ; preds = %28
  %35 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1941
  %36 = getelementptr inbounds %struct._check_data, %struct._check_data* %35, i32 0, i32 3, !dbg !1943
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1943
  %38 = getelementptr inbounds %struct._list, %struct._list* %37, i32 0, i32 0, !dbg !1944
  %39 = load %struct._element*, %struct._element** %38, align 8, !dbg !1944
  br label %40, !dbg !1945

; <label>:40:                                     ; preds = %34, %33
  %41 = phi %struct._element* [ null, %33 ], [ %39, %34 ], !dbg !1946
  store %struct._element* %41, %struct._element** %1, align 8, !dbg !1948
  br label %42, !dbg !1949

; <label>:42:                                     ; preds = %220, %40
  %43 = load %struct._element*, %struct._element** %1, align 8, !dbg !1950
  %44 = icmp ne %struct._element* %43, null, !dbg !1953
  br i1 %44, label %45, label %222, !dbg !1953

; <label>:45:                                     ; preds = %42
  %46 = load %struct._element*, %struct._element** %1, align 8, !dbg !1954
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 0, !dbg !1956
  %48 = load %struct._element*, %struct._element** %47, align 8, !dbg !1956
  store %struct._element* %48, %struct._element** %3, align 8, !dbg !1957
  %49 = load %struct._element*, %struct._element** %1, align 8, !dbg !1958
  %50 = getelementptr inbounds %struct._element, %struct._element* %49, i32 0, i32 2, !dbg !1959
  %51 = load i8*, i8** %50, align 8, !dbg !1959
  %52 = bitcast i8* %51 to %struct._virtual_server*, !dbg !1960
  store %struct._virtual_server* %52, %struct._virtual_server** %4, align 8, !dbg !1961
  %53 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1962
  %54 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %53, i32 0, i32 0, !dbg !1964
  %55 = load i8*, i8** %54, align 8, !dbg !1964
  %56 = icmp ne i8* %55, null, !dbg !1962
  br i1 %56, label %57, label %219, !dbg !1965

; <label>:57:                                     ; preds = %45
  %58 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1966
  %59 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %58, i32 0, i32 0, !dbg !1968
  %60 = load i8*, i8** %59, align 8, !dbg !1968
  %61 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1969
  %62 = getelementptr inbounds %struct._check_data, %struct._check_data* %61, i32 0, i32 2, !dbg !1970
  %63 = load %struct._list*, %struct._list** %62, align 8, !dbg !1970
  %64 = call %struct._virtual_server_group* @ipvs_get_group_by_name(i8* %60, %struct._list* %63), !dbg !1971
  %65 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1972
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 1, !dbg !1973
  store %struct._virtual_server_group* %64, %struct._virtual_server_group** %66, align 8, !dbg !1974
  %67 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1975
  %68 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %67, i32 0, i32 1, !dbg !1977
  %69 = load %struct._virtual_server_group*, %struct._virtual_server_group** %68, align 8, !dbg !1977
  %70 = icmp ne %struct._virtual_server_group* %69, null, !dbg !1975
  br i1 %70, label %82, label %71, !dbg !1978

; <label>:71:                                     ; preds = %57
  %72 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1979
  %73 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %72, i32 0, i32 0, !dbg !1981
  %74 = load i8*, i8** %73, align 8, !dbg !1981
  %75 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1982
  %76 = call i8* @format_vs(%struct._virtual_server* %75), !dbg !1983
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0), i8* %74, i8* %76), !dbg !1984
  %77 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1986
  call void @free_vs_checkers(%struct._virtual_server* %77), !dbg !1987
  %78 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !1988
  %79 = getelementptr inbounds %struct._check_data, %struct._check_data* %78, i32 0, i32 3, !dbg !1989
  %80 = load %struct._list*, %struct._list** %79, align 8, !dbg !1989
  %81 = load %struct._element*, %struct._element** %1, align 8, !dbg !1990
  call void @free_list_element(%struct._list* %80, %struct._element* %81), !dbg !1991
  br label %220, !dbg !1992

; <label>:82:                                     ; preds = %57
  %83 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1993
  %84 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %83, i32 0, i32 1, !dbg !1995
  %85 = load %struct._virtual_server_group*, %struct._virtual_server_group** %84, align 8, !dbg !1995
  %86 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %85, i32 0, i32 1, !dbg !1996
  %87 = load %struct._list*, %struct._list** %86, align 8, !dbg !1996
  %88 = icmp eq %struct._list* %87, null, !dbg !1997
  br i1 %88, label %107, label %89, !dbg !1998

; <label>:89:                                     ; preds = %82
  %90 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !1999
  %91 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %90, i32 0, i32 1, !dbg !2001
  %92 = load %struct._virtual_server_group*, %struct._virtual_server_group** %91, align 8, !dbg !2001
  %93 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %92, i32 0, i32 1, !dbg !2002
  %94 = load %struct._list*, %struct._list** %93, align 8, !dbg !2002
  %95 = getelementptr inbounds %struct._list, %struct._list* %94, i32 0, i32 0, !dbg !2003
  %96 = load %struct._element*, %struct._element** %95, align 8, !dbg !2003
  %97 = icmp eq %struct._element* %96, null, !dbg !2004
  br i1 %97, label %98, label %143, !dbg !2005

; <label>:98:                                     ; preds = %89
  %99 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2006
  %100 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %99, i32 0, i32 1, !dbg !2008
  %101 = load %struct._virtual_server_group*, %struct._virtual_server_group** %100, align 8, !dbg !2008
  %102 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %101, i32 0, i32 1, !dbg !2009
  %103 = load %struct._list*, %struct._list** %102, align 8, !dbg !2009
  %104 = getelementptr inbounds %struct._list, %struct._list* %103, i32 0, i32 1, !dbg !2010
  %105 = load %struct._element*, %struct._element** %104, align 8, !dbg !2010
  %106 = icmp eq %struct._element* %105, null, !dbg !2011
  br i1 %106, label %107, label %143, !dbg !2012

; <label>:107:                                    ; preds = %98, %82
  %108 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2013
  %109 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %108, i32 0, i32 1, !dbg !2014
  %110 = load %struct._virtual_server_group*, %struct._virtual_server_group** %109, align 8, !dbg !2014
  %111 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %110, i32 0, i32 2, !dbg !2015
  %112 = load %struct._list*, %struct._list** %111, align 8, !dbg !2015
  %113 = icmp eq %struct._list* %112, null, !dbg !2016
  br i1 %113, label %132, label %114, !dbg !2017

; <label>:114:                                    ; preds = %107
  %115 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2018
  %116 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %115, i32 0, i32 1, !dbg !2019
  %117 = load %struct._virtual_server_group*, %struct._virtual_server_group** %116, align 8, !dbg !2019
  %118 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %117, i32 0, i32 2, !dbg !2020
  %119 = load %struct._list*, %struct._list** %118, align 8, !dbg !2020
  %120 = getelementptr inbounds %struct._list, %struct._list* %119, i32 0, i32 0, !dbg !2021
  %121 = load %struct._element*, %struct._element** %120, align 8, !dbg !2021
  %122 = icmp eq %struct._element* %121, null, !dbg !2022
  br i1 %122, label %123, label %143, !dbg !2023

; <label>:123:                                    ; preds = %114
  %124 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2024
  %125 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %124, i32 0, i32 1, !dbg !2025
  %126 = load %struct._virtual_server_group*, %struct._virtual_server_group** %125, align 8, !dbg !2025
  %127 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %126, i32 0, i32 2, !dbg !2026
  %128 = load %struct._list*, %struct._list** %127, align 8, !dbg !2026
  %129 = getelementptr inbounds %struct._list, %struct._list* %128, i32 0, i32 1, !dbg !2027
  %130 = load %struct._element*, %struct._element** %129, align 8, !dbg !2027
  %131 = icmp eq %struct._element* %130, null, !dbg !2028
  br i1 %131, label %132, label %143, !dbg !2029

; <label>:132:                                    ; preds = %123, %107
  %133 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2031
  %134 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %133, i32 0, i32 0, !dbg !2033
  %135 = load i8*, i8** %134, align 8, !dbg !2033
  %136 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2034
  %137 = call i8* @format_vs(%struct._virtual_server* %136), !dbg !2035
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i32 0, i32 0), i8* %135, i8* %137), !dbg !2036
  %138 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2038
  call void @free_vs_checkers(%struct._virtual_server* %138), !dbg !2039
  %139 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2040
  %140 = getelementptr inbounds %struct._check_data, %struct._check_data* %139, i32 0, i32 3, !dbg !2041
  %141 = load %struct._list*, %struct._list** %140, align 8, !dbg !2041
  %142 = load %struct._element*, %struct._element** %1, align 8, !dbg !2042
  call void @free_list_element(%struct._list* %141, %struct._element* %142), !dbg !2043
  br label %220, !dbg !2044

; <label>:143:                                    ; preds = %123, %114, %98, %89
  %144 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2045
  %145 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %144, i32 0, i32 1, !dbg !2047
  %146 = load %struct._virtual_server_group*, %struct._virtual_server_group** %145, align 8, !dbg !2047
  %147 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %146, i32 0, i32 1, !dbg !2048
  %148 = load %struct._list*, %struct._list** %147, align 8, !dbg !2048
  %149 = icmp eq %struct._list* %148, null, !dbg !2049
  br i1 %149, label %196, label %150, !dbg !2050

; <label>:150:                                    ; preds = %143
  %151 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2051
  %152 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %151, i32 0, i32 1, !dbg !2053
  %153 = load %struct._virtual_server_group*, %struct._virtual_server_group** %152, align 8, !dbg !2053
  %154 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %153, i32 0, i32 1, !dbg !2054
  %155 = load %struct._list*, %struct._list** %154, align 8, !dbg !2054
  %156 = getelementptr inbounds %struct._list, %struct._list* %155, i32 0, i32 0, !dbg !2055
  %157 = load %struct._element*, %struct._element** %156, align 8, !dbg !2055
  %158 = icmp eq %struct._element* %157, null, !dbg !2056
  br i1 %158, label %159, label %168, !dbg !2057

; <label>:159:                                    ; preds = %150
  %160 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2058
  %161 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %160, i32 0, i32 1, !dbg !2060
  %162 = load %struct._virtual_server_group*, %struct._virtual_server_group** %161, align 8, !dbg !2060
  %163 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %162, i32 0, i32 1, !dbg !2061
  %164 = load %struct._list*, %struct._list** %163, align 8, !dbg !2061
  %165 = getelementptr inbounds %struct._list, %struct._list* %164, i32 0, i32 1, !dbg !2062
  %166 = load %struct._element*, %struct._element** %165, align 8, !dbg !2062
  %167 = icmp eq %struct._element* %166, null, !dbg !2063
  br i1 %167, label %196, label %168, !dbg !2064

; <label>:168:                                    ; preds = %159, %150
  %169 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2065
  %170 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %169, i32 0, i32 1, !dbg !2067
  %171 = load %struct._virtual_server_group*, %struct._virtual_server_group** %170, align 8, !dbg !2067
  %172 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %171, i32 0, i32 1, !dbg !2068
  %173 = load %struct._list*, %struct._list** %172, align 8, !dbg !2068
  %174 = icmp ne %struct._list* %173, null, !dbg !2069
  br i1 %174, label %176, label %175, !dbg !2070

; <label>:175:                                    ; preds = %168
  br label %184, !dbg !2071

; <label>:176:                                    ; preds = %168
  %177 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2073
  %178 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %177, i32 0, i32 1, !dbg !2075
  %179 = load %struct._virtual_server_group*, %struct._virtual_server_group** %178, align 8, !dbg !2075
  %180 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %179, i32 0, i32 1, !dbg !2076
  %181 = load %struct._list*, %struct._list** %180, align 8, !dbg !2076
  %182 = getelementptr inbounds %struct._list, %struct._list* %181, i32 0, i32 0, !dbg !2077
  %183 = load %struct._element*, %struct._element** %182, align 8, !dbg !2077
  br label %184, !dbg !2078

; <label>:184:                                    ; preds = %176, %175
  %185 = phi %struct._element* [ null, %175 ], [ %183, %176 ], !dbg !2079
  %186 = getelementptr inbounds %struct._element, %struct._element* %185, i32 0, i32 2, !dbg !2081
  %187 = load i8*, i8** %186, align 8, !dbg !2081
  %188 = bitcast i8* %187 to %struct._virtual_server_group_entry*, !dbg !2082
  store %struct._virtual_server_group_entry* %188, %struct._virtual_server_group_entry** %7, align 8, !dbg !2083
  %189 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !2084
  %190 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %189, i32 0, i32 1, !dbg !2085
  %191 = bitcast %union.anon.7* %190 to %struct.anon.8*, !dbg !2085
  %192 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %191, i32 0, i32 0, !dbg !2085
  %193 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %192, i32 0, i32 0, !dbg !2086
  %194 = load i16, i16* %193, align 8, !dbg !2086
  %195 = zext i16 %194 to i32, !dbg !2084
  store i32 %195, i32* %5, align 4, !dbg !2087
  br label %197, !dbg !2088

; <label>:196:                                    ; preds = %159, %143
  store i32 0, i32* %5, align 4, !dbg !2089
  br label %197

; <label>:197:                                    ; preds = %196, %184
  %198 = load i32, i32* %5, align 4, !dbg !2091
  %199 = icmp ne i32 %198, 0, !dbg !2093
  br i1 %199, label %200, label %218, !dbg !2094

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %5, align 4, !dbg !2095
  %202 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2097
  %203 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %202, i32 0, i32 5, !dbg !2098
  %204 = load i16, i16* %203, align 8, !dbg !2098
  %205 = zext i16 %204 to i32, !dbg !2097
  %206 = icmp ne i32 %201, %205, !dbg !2099
  br i1 %206, label %207, label %218, !dbg !2100

; <label>:207:                                    ; preds = %200
  %208 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2101
  %209 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %208, i32 0, i32 0, !dbg !2103
  %210 = load i8*, i8** %209, align 8, !dbg !2103
  %211 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2104
  %212 = call i8* @format_vs(%struct._virtual_server* %211), !dbg !2105
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i32 0, i32 0), i8* %210, i8* %212), !dbg !2106
  %213 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2108
  call void @free_vs_checkers(%struct._virtual_server* %213), !dbg !2109
  %214 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2110
  %215 = getelementptr inbounds %struct._check_data, %struct._check_data* %214, i32 0, i32 3, !dbg !2111
  %216 = load %struct._list*, %struct._list** %215, align 8, !dbg !2111
  %217 = load %struct._element*, %struct._element** %1, align 8, !dbg !2112
  call void @free_list_element(%struct._list* %216, %struct._element* %217), !dbg !2113
  br label %218, !dbg !2114

; <label>:218:                                    ; preds = %207, %200, %197
  br label %219, !dbg !2115

; <label>:219:                                    ; preds = %218, %45
  br label %220, !dbg !2116

; <label>:220:                                    ; preds = %219, %132, %71
  %221 = load %struct._element*, %struct._element** %3, align 8, !dbg !2117
  store %struct._element* %221, %struct._element** %1, align 8, !dbg !2119
  br label %42, !dbg !2120, !llvm.loop !2121

; <label>:222:                                    ; preds = %42
  %223 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2123
  %224 = getelementptr inbounds %struct._check_data, %struct._check_data* %223, i32 0, i32 2, !dbg !2125
  %225 = load %struct._list*, %struct._list** %224, align 8, !dbg !2125
  %226 = icmp eq %struct._list* %225, null, !dbg !2126
  br i1 %226, label %241, label %227, !dbg !2127

; <label>:227:                                    ; preds = %222
  %228 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2128
  %229 = getelementptr inbounds %struct._check_data, %struct._check_data* %228, i32 0, i32 2, !dbg !2130
  %230 = load %struct._list*, %struct._list** %229, align 8, !dbg !2130
  %231 = getelementptr inbounds %struct._list, %struct._list* %230, i32 0, i32 0, !dbg !2131
  %232 = load %struct._element*, %struct._element** %231, align 8, !dbg !2131
  %233 = icmp eq %struct._element* %232, null, !dbg !2132
  br i1 %233, label %234, label %242, !dbg !2133

; <label>:234:                                    ; preds = %227
  %235 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2134
  %236 = getelementptr inbounds %struct._check_data, %struct._check_data* %235, i32 0, i32 2, !dbg !2136
  %237 = load %struct._list*, %struct._list** %236, align 8, !dbg !2136
  %238 = getelementptr inbounds %struct._list, %struct._list* %237, i32 0, i32 1, !dbg !2137
  %239 = load %struct._element*, %struct._element** %238, align 8, !dbg !2137
  %240 = icmp eq %struct._element* %239, null, !dbg !2138
  br i1 %240, label %241, label %242, !dbg !2139

; <label>:241:                                    ; preds = %234, %222
  br label %319, !dbg !2140

; <label>:242:                                    ; preds = %234, %227
  %243 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2141
  %244 = getelementptr inbounds %struct._check_data, %struct._check_data* %243, i32 0, i32 2, !dbg !2143
  %245 = load %struct._list*, %struct._list** %244, align 8, !dbg !2143
  %246 = icmp ne %struct._list* %245, null, !dbg !2144
  br i1 %246, label %248, label %247, !dbg !2145

; <label>:247:                                    ; preds = %242
  br label %254, !dbg !2146

; <label>:248:                                    ; preds = %242
  %249 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2148
  %250 = getelementptr inbounds %struct._check_data, %struct._check_data* %249, i32 0, i32 2, !dbg !2150
  %251 = load %struct._list*, %struct._list** %250, align 8, !dbg !2150
  %252 = getelementptr inbounds %struct._list, %struct._list* %251, i32 0, i32 0, !dbg !2151
  %253 = load %struct._element*, %struct._element** %252, align 8, !dbg !2151
  br label %254, !dbg !2152

; <label>:254:                                    ; preds = %248, %247
  %255 = phi %struct._element* [ null, %247 ], [ %253, %248 ], !dbg !2153
  store %struct._element* %255, %struct._element** %1, align 8, !dbg !2155
  br label %256, !dbg !2156

; <label>:256:                                    ; preds = %315, %254
  %257 = load %struct._element*, %struct._element** %1, align 8, !dbg !2157
  %258 = icmp ne %struct._element* %257, null, !dbg !2160
  br i1 %258, label %259, label %319, !dbg !2160

; <label>:259:                                    ; preds = %256
  store i32 0, i32* %8, align 4, !dbg !2161
  %260 = load %struct._element*, %struct._element** %1, align 8, !dbg !2163
  %261 = getelementptr inbounds %struct._element, %struct._element* %260, i32 0, i32 2, !dbg !2164
  %262 = load i8*, i8** %261, align 8, !dbg !2164
  %263 = bitcast i8* %262 to %struct._virtual_server_group*, !dbg !2165
  store %struct._virtual_server_group* %263, %struct._virtual_server_group** %6, align 8, !dbg !2166
  %264 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2167
  %265 = getelementptr inbounds %struct._check_data, %struct._check_data* %264, i32 0, i32 3, !dbg !2169
  %266 = load %struct._list*, %struct._list** %265, align 8, !dbg !2169
  %267 = icmp ne %struct._list* %266, null, !dbg !2170
  br i1 %267, label %269, label %268, !dbg !2171

; <label>:268:                                    ; preds = %259
  br label %275, !dbg !2172

; <label>:269:                                    ; preds = %259
  %270 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !2174
  %271 = getelementptr inbounds %struct._check_data, %struct._check_data* %270, i32 0, i32 3, !dbg !2176
  %272 = load %struct._list*, %struct._list** %271, align 8, !dbg !2176
  %273 = getelementptr inbounds %struct._list, %struct._list* %272, i32 0, i32 0, !dbg !2177
  %274 = load %struct._element*, %struct._element** %273, align 8, !dbg !2177
  br label %275, !dbg !2178

; <label>:275:                                    ; preds = %269, %268
  %276 = phi %struct._element* [ null, %268 ], [ %274, %269 ], !dbg !2179
  store %struct._element* %276, %struct._element** %2, align 8, !dbg !2181
  br label %277, !dbg !2182

; <label>:277:                                    ; preds = %310, %275
  %278 = load %struct._element*, %struct._element** %2, align 8, !dbg !2183
  %279 = icmp ne %struct._element* %278, null, !dbg !2186
  br i1 %279, label %280, label %314, !dbg !2186

; <label>:280:                                    ; preds = %277
  %281 = load %struct._element*, %struct._element** %2, align 8, !dbg !2187
  %282 = getelementptr inbounds %struct._element, %struct._element* %281, i32 0, i32 2, !dbg !2189
  %283 = load i8*, i8** %282, align 8, !dbg !2189
  %284 = bitcast i8* %283 to %struct._virtual_server*, !dbg !2190
  store %struct._virtual_server* %284, %struct._virtual_server** %4, align 8, !dbg !2191
  %285 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2192
  %286 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %285, i32 0, i32 0, !dbg !2194
  %287 = load i8*, i8** %286, align 8, !dbg !2194
  %288 = icmp ne i8* %287, null, !dbg !2192
  br i1 %288, label %290, label %289, !dbg !2195

; <label>:289:                                    ; preds = %280
  br label %310, !dbg !2196

; <label>:290:                                    ; preds = %280
  %291 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2197
  %292 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %291, i32 0, i32 0, !dbg !2199
  %293 = load i8*, i8** %292, align 8, !dbg !2199
  %294 = load %struct._virtual_server_group*, %struct._virtual_server_group** %6, align 8, !dbg !2200
  %295 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %294, i32 0, i32 0, !dbg !2201
  %296 = load i8*, i8** %295, align 8, !dbg !2201
  %297 = call i32 @strcmp(i8* %293, i8* %296) #7, !dbg !2202
  %298 = icmp ne i32 %297, 0, !dbg !2202
  br i1 %298, label %309, label %299, !dbg !2203

; <label>:299:                                    ; preds = %290
  %300 = load i32, i32* %8, align 4, !dbg !2204
  %301 = trunc i32 %300 to i16, !dbg !2204
  %302 = call zeroext i16 @htons(i16 zeroext %301) #1, !dbg !2206
  %303 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2207
  %304 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %303, i32 0, i32 2, !dbg !2208
  %305 = bitcast %struct.sockaddr_storage* %304 to %struct.sockaddr_in*, !dbg !2209
  %306 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %305, i32 0, i32 1, !dbg !2209
  store i16 %302, i16* %306, align 2, !dbg !2210
  %307 = load i32, i32* %8, align 4, !dbg !2211
  %308 = add i32 %307, 1, !dbg !2211
  store i32 %308, i32* %8, align 4, !dbg !2211
  br label %309, !dbg !2212

; <label>:309:                                    ; preds = %299, %290
  br label %310, !dbg !2213

; <label>:310:                                    ; preds = %309, %289
  %311 = load %struct._element*, %struct._element** %2, align 8, !dbg !2214
  %312 = getelementptr inbounds %struct._element, %struct._element* %311, i32 0, i32 0, !dbg !2216
  %313 = load %struct._element*, %struct._element** %312, align 8, !dbg !2216
  store %struct._element* %313, %struct._element** %2, align 8, !dbg !2217
  br label %277, !dbg !2218, !llvm.loop !2219

; <label>:314:                                    ; preds = %277
  br label %315, !dbg !2221

; <label>:315:                                    ; preds = %314
  %316 = load %struct._element*, %struct._element** %1, align 8, !dbg !2222
  %317 = getelementptr inbounds %struct._element, %struct._element* %316, i32 0, i32 0, !dbg !2224
  %318 = load %struct._element*, %struct._element** %317, align 8, !dbg !2224
  store %struct._element* %318, %struct._element** %1, align 8, !dbg !2225
  br label %256, !dbg !2226, !llvm.loop !2227

; <label>:319:                                    ; preds = %27, %241, %256
  ret void, !dbg !2229
}

declare %struct._virtual_server_group* @ipvs_get_group_by_name(i8*, %struct._list*) #2

declare void @free_vs_checkers(%struct._virtual_server*) #2

declare void @free_list_element(%struct._list*, %struct._element*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind uwtable
define internal void @clear_service_rs(%struct._virtual_server*, %struct._list*, i1 zeroext) #0 !dbg !2230 {
  %4 = alloca %struct._virtual_server*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._element*, align 8
  %8 = alloca %struct._real_server*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct._smtp_rs, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %4, metadata !2233, metadata !178), !dbg !2234
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !2235, metadata !178), !dbg !2236
  %13 = zext i1 %2 to i8
  store i8 %13, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2237, metadata !178), !dbg !2238
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !2239, metadata !178), !dbg !2240
  call void @llvm.dbg.declare(metadata %struct._real_server** %8, metadata !2241, metadata !178), !dbg !2242
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2243, metadata !178), !dbg !2244
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2245, metadata !178), !dbg !2246
  %14 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2247
  %15 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %14, i32 0, i32 28, !dbg !2248
  %16 = load i32, i32* %15, align 8, !dbg !2248
  %17 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2249
  %18 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %17, i32 0, i32 29, !dbg !2250
  %19 = load i32, i32* %18, align 4, !dbg !2250
  %20 = sub i32 %16, %19, !dbg !2251
  %21 = zext i32 %20 to i64, !dbg !2247
  store i64 %21, i64* %10, align 8, !dbg !2246
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2252, metadata !178), !dbg !2253
  call void @llvm.dbg.declare(metadata %struct._smtp_rs* %12, metadata !2254, metadata !178), !dbg !2260
  %22 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %12, i32 0, i32 0, !dbg !2261
  store %struct._real_server* null, %struct._real_server** %22, align 8, !dbg !2261
  %23 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %12, i32 0, i32 1, !dbg !2261
  %24 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2262
  store %struct._virtual_server* %24, %struct._virtual_server** %23, align 8, !dbg !2261
  %25 = load %struct._list*, %struct._list** %5, align 8, !dbg !2263
  %26 = icmp ne %struct._list* %25, null, !dbg !2265
  br i1 %26, label %27, label %37, !dbg !2265

; <label>:27:                                     ; preds = %3
  %28 = load %struct._list*, %struct._list** %5, align 8, !dbg !2266
  %29 = icmp ne %struct._list* %28, null, !dbg !2268
  br i1 %29, label %31, label %30, !dbg !2269

; <label>:30:                                     ; preds = %27
  br label %35, !dbg !2270

; <label>:31:                                     ; preds = %27
  %32 = load %struct._list*, %struct._list** %5, align 8, !dbg !2272
  %33 = getelementptr inbounds %struct._list, %struct._list* %32, i32 0, i32 0, !dbg !2274
  %34 = load %struct._element*, %struct._element** %33, align 8, !dbg !2274
  br label %35, !dbg !2275

; <label>:35:                                     ; preds = %31, %30
  %36 = phi %struct._element* [ null, %30 ], [ %34, %31 ], !dbg !2276
  br label %38, !dbg !2278

; <label>:37:                                     ; preds = %3
  br label %38, !dbg !2279

; <label>:38:                                     ; preds = %37, %35
  %39 = phi %struct._element* [ %36, %35 ], [ null, %37 ], !dbg !2281
  store %struct._element* %39, %struct._element** %7, align 8, !dbg !2283
  br label %40, !dbg !2284

; <label>:40:                                     ; preds = %138, %38
  %41 = load %struct._element*, %struct._element** %7, align 8, !dbg !2285
  %42 = icmp ne %struct._element* %41, null, !dbg !2288
  br i1 %42, label %43, label %48, !dbg !2289

; <label>:43:                                     ; preds = %40
  %44 = load %struct._element*, %struct._element** %7, align 8, !dbg !2290
  %45 = getelementptr inbounds %struct._element, %struct._element* %44, i32 0, i32 2, !dbg !2292
  %46 = load i8*, i8** %45, align 8, !dbg !2292
  %47 = bitcast i8* %46 to %struct._real_server*, !dbg !2293
  store %struct._real_server* %47, %struct._real_server** %8, align 8, !dbg !2294
  br label %48

; <label>:48:                                     ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ true, %43 ]
  br i1 %49, label %50, label %142, !dbg !2295

; <label>:50:                                     ; preds = %48
  %51 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2297
  %52 = getelementptr inbounds %struct._real_server, %struct._real_server* %51, i32 0, i32 18, !dbg !2300
  %53 = load i8, i8* %52, align 4, !dbg !2300
  %54 = trunc i8 %53 to i1, !dbg !2300
  br i1 %54, label %58, label %55, !dbg !2301

; <label>:55:                                     ; preds = %50
  %56 = load i8, i8* %6, align 1, !dbg !2302
  %57 = trunc i8 %56 to i1, !dbg !2302
  br i1 %57, label %58, label %83, !dbg !2304

; <label>:58:                                     ; preds = %55, %50
  %59 = load i8, i8* %6, align 1, !dbg !2305
  %60 = trunc i8 %59 to i1, !dbg !2305
  %61 = select i1 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), !dbg !2305
  %62 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2306
  %63 = getelementptr inbounds %struct._real_server, %struct._real_server* %62, i32 0, i32 7, !dbg !2307
  %64 = load i32, i32* %63, align 8, !dbg !2307
  %65 = icmp ne i32 %64, 0, !dbg !2306
  br i1 %65, label %66, label %72, !dbg !2308

; <label>:66:                                     ; preds = %58
  %67 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2309
  %68 = getelementptr inbounds %struct._real_server, %struct._real_server* %67, i32 0, i32 16, !dbg !2310
  %69 = load i8, i8* %68, align 4, !dbg !2310
  %70 = trunc i8 %69 to i1, !dbg !2310
  %71 = xor i1 %70, true, !dbg !2311
  br label %72

; <label>:72:                                     ; preds = %66, %58
  %73 = phi i1 [ false, %58 ], [ %71, %66 ]
  %74 = select i1 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), !dbg !2312
  %75 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2314
  %76 = getelementptr inbounds %struct._real_server, %struct._real_server* %75, i32 0, i32 0, !dbg !2315
  %77 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2316
  %78 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %77, i32 0, i32 6, !dbg !2317
  %79 = load i16, i16* %78, align 2, !dbg !2317
  %80 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %76, i16 zeroext %79), !dbg !2318
  %81 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2319
  %82 = call i8* @format_vs(%struct._virtual_server* %81), !dbg !2320
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %61, i8* %74, i8* %80, i8* %82), !dbg !2321
  br label %83, !dbg !2321

; <label>:83:                                     ; preds = %72, %55
  %84 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2322
  %85 = getelementptr inbounds %struct._real_server, %struct._real_server* %84, i32 0, i32 18, !dbg !2324
  %86 = load i8, i8* %85, align 4, !dbg !2324
  %87 = trunc i8 %86 to i1, !dbg !2324
  br i1 %87, label %89, label %88, !dbg !2325

; <label>:88:                                     ; preds = %83
  br label %138, !dbg !2326

; <label>:89:                                     ; preds = %83
  %90 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2327
  %91 = getelementptr inbounds %struct._real_server, %struct._real_server* %90, i32 0, i32 7, !dbg !2328
  %92 = load i32, i32* %91, align 8, !dbg !2328
  %93 = icmp ne i32 %92, 0, !dbg !2327
  %94 = zext i1 %93 to i8, !dbg !2329
  store i8 %94, i8* %11, align 1, !dbg !2329
  %95 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2330
  %96 = getelementptr inbounds %struct._real_server, %struct._real_server* %95, i32 0, i32 7, !dbg !2331
  store i32 0, i32* %96, align 8, !dbg !2332
  %97 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2333
  %98 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2334
  %99 = call i32 @ipvs_cmd(i32 1160, %struct._virtual_server* %97, %struct._real_server* %98), !dbg !2335
  %100 = load i8, i8* %11, align 1, !dbg !2336
  %101 = trunc i8 %100 to i1, !dbg !2336
  %102 = zext i1 %101 to i32, !dbg !2336
  %103 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2337
  %104 = getelementptr inbounds %struct._real_server, %struct._real_server* %103, i32 0, i32 7, !dbg !2338
  store i32 %102, i32* %104, align 8, !dbg !2339
  %105 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2340
  %106 = getelementptr inbounds %struct._real_server, %struct._real_server* %105, i32 0, i32 16, !dbg !2342
  %107 = load i8, i8* %106, align 4, !dbg !2342
  %108 = trunc i8 %107 to i1, !dbg !2342
  br i1 %108, label %110, label %109, !dbg !2343

; <label>:109:                                    ; preds = %89
  br label %138, !dbg !2344

; <label>:110:                                    ; preds = %89
  %111 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2345
  %112 = getelementptr inbounds %struct._real_server, %struct._real_server* %111, i32 0, i32 16, !dbg !2346
  store i8 0, i8* %112, align 4, !dbg !2347
  %113 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2348
  %114 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %113, i32 0, i32 20, !dbg !2350
  %115 = load i8, i8* %114, align 1, !dbg !2350
  %116 = trunc i8 %115 to i1, !dbg !2350
  br i1 %116, label %121, label %117, !dbg !2351

; <label>:117:                                    ; preds = %110
  %118 = load i8, i8* %6, align 1, !dbg !2352
  %119 = trunc i8 %118 to i1, !dbg !2352
  br i1 %119, label %120, label %121, !dbg !2354

; <label>:120:                                    ; preds = %117
  br label %138, !dbg !2355

; <label>:121:                                    ; preds = %117, %110
  %122 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2357
  %123 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2358
  %124 = load i8, i8* %6, align 1, !dbg !2359
  %125 = trunc i8 %124 to i1, !dbg !2359
  call void @do_rs_notifies(%struct._virtual_server* %122, %struct._real_server* %123, i1 zeroext %125), !dbg !2360
  %126 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2361
  %127 = getelementptr inbounds %struct._real_server, %struct._real_server* %126, i32 0, i32 15, !dbg !2363
  %128 = load i32, i32* %127, align 8, !dbg !2363
  %129 = icmp ne i32 %128, 0, !dbg !2361
  br i1 %129, label %130, label %137, !dbg !2364

; <label>:130:                                    ; preds = %121
  %131 = load %struct._real_server*, %struct._real_server** %8, align 8, !dbg !2365
  %132 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %12, i32 0, i32 0, !dbg !2367
  store %struct._real_server* %131, %struct._real_server** %132, align 8, !dbg !2368
  %133 = bitcast %struct._smtp_rs* %12 to i8*, !dbg !2369
  %134 = load i8, i8* %6, align 1, !dbg !2370
  %135 = trunc i8 %134 to i1, !dbg !2370
  %136 = select i1 %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), !dbg !2370
  call void @smtp_alert(i32 2, i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %136), !dbg !2371
  br label %137, !dbg !2372

; <label>:137:                                    ; preds = %130, %121
  br label %138, !dbg !2373

; <label>:138:                                    ; preds = %137, %120, %109, %88
  %139 = load %struct._element*, %struct._element** %7, align 8, !dbg !2374
  %140 = getelementptr inbounds %struct._element, %struct._element* %139, i32 0, i32 0, !dbg !2376
  %141 = load %struct._element*, %struct._element** %140, align 8, !dbg !2376
  store %struct._element* %141, %struct._element** %7, align 8, !dbg !2377
  br label %40, !dbg !2378, !llvm.loop !2379

; <label>:142:                                    ; preds = %48
  %143 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2381
  %144 = call i64 @weigh_live_realservers(%struct._virtual_server* %143), !dbg !2382
  store i64 %144, i64* %9, align 8, !dbg !2383
  %145 = load i8, i8* %6, align 1, !dbg !2384
  %146 = trunc i8 %145 to i1, !dbg !2384
  br i1 %146, label %159, label %147, !dbg !2386

; <label>:147:                                    ; preds = %142
  %148 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2387
  %149 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %148, i32 0, i32 31, !dbg !2388
  %150 = load i8, i8* %149, align 4, !dbg !2388
  %151 = trunc i8 %150 to i1, !dbg !2388
  br i1 %151, label %152, label %167, !dbg !2389

; <label>:152:                                    ; preds = %147
  %153 = load i64, i64* %9, align 8, !dbg !2390
  %154 = icmp ne i64 %153, 0, !dbg !2390
  br i1 %154, label %155, label %159, !dbg !2391

; <label>:155:                                    ; preds = %152
  %156 = load i64, i64* %9, align 8, !dbg !2392
  %157 = load i64, i64* %10, align 8, !dbg !2394
  %158 = icmp slt i64 %156, %157, !dbg !2395
  br i1 %158, label %159, label %167, !dbg !2396

; <label>:159:                                    ; preds = %155, %152, %142
  %160 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2398
  %161 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %160, i32 0, i32 31, !dbg !2400
  store i8 0, i8* %161, align 4, !dbg !2401
  %162 = load %struct._virtual_server*, %struct._virtual_server** %4, align 8, !dbg !2402
  %163 = load i64, i64* %10, align 8, !dbg !2403
  %164 = load i64, i64* %9, align 8, !dbg !2404
  %165 = load i8, i8* %6, align 1, !dbg !2405
  %166 = trunc i8 %165 to i1, !dbg !2405
  call void @do_vs_notifies(%struct._virtual_server* %162, i1 zeroext false, i64 %163, i64 %164, i1 zeroext %166), !dbg !2406
  br label %167, !dbg !2407

; <label>:167:                                    ; preds = %159, %155, %147
  ret void, !dbg !2408
}

declare void @smtp_alert(i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @do_vs_notifies(%struct._virtual_server*, i1 zeroext, i64, i64, i1 zeroext) #0 !dbg !2409 {
  %6 = alloca %struct._virtual_server*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct._notify_script*, align 8
  %12 = alloca [80 x i8], align 16
  store %struct._virtual_server* %0, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !2412, metadata !178), !dbg !2413
  %13 = zext i1 %1 to i8
  store i8 %13, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2414, metadata !178), !dbg !2415
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2416, metadata !178), !dbg !2417
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2418, metadata !178), !dbg !2419
  %14 = zext i1 %4 to i8
  store i8 %14, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2420, metadata !178), !dbg !2421
  call void @llvm.dbg.declare(metadata %struct._notify_script** %11, metadata !2422, metadata !178), !dbg !2423
  %15 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2424
  %16 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %15, i32 0, i32 31, !dbg !2425
  %17 = load i8, i8* %16, align 4, !dbg !2425
  %18 = trunc i8 %17 to i1, !dbg !2425
  br i1 %18, label %19, label %23, !dbg !2424

; <label>:19:                                     ; preds = %5
  %20 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2426
  %21 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %20, i32 0, i32 26, !dbg !2428
  %22 = load %struct._notify_script*, %struct._notify_script** %21, align 8, !dbg !2428
  br label %27, !dbg !2429

; <label>:23:                                     ; preds = %5
  %24 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2430
  %25 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %24, i32 0, i32 27, !dbg !2432
  %26 = load %struct._notify_script*, %struct._notify_script** %25, align 8, !dbg !2432
  br label %27, !dbg !2433

; <label>:27:                                     ; preds = %23, %19
  %28 = phi %struct._notify_script* [ %22, %19 ], [ %26, %23 ], !dbg !2434
  store %struct._notify_script* %28, %struct._notify_script** %11, align 8, !dbg !2436
  call void @llvm.dbg.declare(metadata [80 x i8]* %12, metadata !2437, metadata !178), !dbg !2441
  %29 = load i8, i8* %10, align 1, !dbg !2442
  %30 = trunc i8 %29 to i1, !dbg !2442
  br i1 %30, label %31, label %37, !dbg !2444

; <label>:31:                                     ; preds = %27
  %32 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2445
  %33 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %32, i32 0, i32 20, !dbg !2447
  %34 = load i8, i8* %33, align 1, !dbg !2447
  %35 = trunc i8 %34 to i1, !dbg !2447
  br i1 %35, label %37, label %36, !dbg !2448

; <label>:36:                                     ; preds = %31
  br label %97, !dbg !2449

; <label>:37:                                     ; preds = %31, %27
  %38 = load %struct._notify_script*, %struct._notify_script** %11, align 8, !dbg !2450
  %39 = icmp ne %struct._notify_script* %38, null, !dbg !2450
  br i1 %39, label %40, label %51, !dbg !2452

; <label>:40:                                     ; preds = %37
  %41 = load i8, i8* %10, align 1, !dbg !2453
  %42 = trunc i8 %41 to i1, !dbg !2453
  br i1 %42, label %43, label %47, !dbg !2456

; <label>:43:                                     ; preds = %40
  %44 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2457
  %45 = load %struct._notify_script*, %struct._notify_script** %11, align 8, !dbg !2458
  %46 = call i32 @system_call_script(%struct._thread_master* %44, i32 (%struct._thread*)* @child_killed_thread, i8* null, i64 1000000, %struct._notify_script* %45), !dbg !2459
  br label %50, !dbg !2459

; <label>:47:                                     ; preds = %40
  %48 = load %struct._notify_script*, %struct._notify_script** %11, align 8, !dbg !2460
  %49 = call i32 @notify_exec(%struct._notify_script* %48), !dbg !2461
  br label %50

; <label>:50:                                     ; preds = %47, %43
  br label %51, !dbg !2462

; <label>:51:                                     ; preds = %50, %37
  %52 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2463
  call void @notify_fifo_vs(%struct._virtual_server* %52), !dbg !2464
  %53 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2465
  %54 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %53, i32 0, i32 30, !dbg !2467
  %55 = load i32, i32* %54, align 8, !dbg !2467
  %56 = icmp ne i32 %55, 0, !dbg !2465
  br i1 %56, label %57, label %97, !dbg !2468

; <label>:57:                                     ; preds = %51
  %58 = load i8, i8* %10, align 1, !dbg !2469
  %59 = trunc i8 %58 to i1, !dbg !2469
  br i1 %59, label %60, label %63, !dbg !2472

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i32 0, i32 0, !dbg !2473
  %62 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !2474
  br label %88, !dbg !2474

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i32 0, i32 0, !dbg !2475
  %65 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2476
  %66 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %65, i32 0, i32 31, !dbg !2477
  %67 = load i8, i8* %66, align 4, !dbg !2477
  %68 = trunc i8 %67 to i1, !dbg !2477
  br i1 %68, label %69, label %73, !dbg !2476

; <label>:69:                                     ; preds = %63
  %70 = load i8, i8* %7, align 1, !dbg !2478
  %71 = trunc i8 %70 to i1, !dbg !2478
  %72 = select i1 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), !dbg !2478
  br label %77, !dbg !2479

; <label>:73:                                     ; preds = %63
  %74 = load i8, i8* %7, align 1, !dbg !2481
  %75 = trunc i8 %74 to i1, !dbg !2481
  %76 = select i1 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), !dbg !2481
  br label %77, !dbg !2482

; <label>:77:                                     ; preds = %73, %69
  %78 = phi i8* [ %72, %69 ], [ %76, %73 ], !dbg !2484
  %79 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2486
  %80 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %79, i32 0, i32 28, !dbg !2487
  %81 = load i32, i32* %80, align 8, !dbg !2487
  %82 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2488
  %83 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %82, i32 0, i32 29, !dbg !2489
  %84 = load i32, i32* %83, align 4, !dbg !2489
  %85 = load i64, i64* %8, align 8, !dbg !2490
  %86 = load i64, i64* %9, align 8, !dbg !2491
  %87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %64, i64 80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i8* %78, i32 %81, i32 %84, i64 %85, i64 %86) #8, !dbg !2492
  br label %88

; <label>:88:                                     ; preds = %77, %60
  %89 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2493
  %90 = bitcast %struct._virtual_server* %89 to i8*, !dbg !2493
  %91 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !2494
  %92 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %91, i32 0, i32 31, !dbg !2495
  %93 = load i8, i8* %92, align 4, !dbg !2495
  %94 = trunc i8 %93 to i1, !dbg !2495
  %95 = select i1 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), !dbg !2494
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i32 0, i32 0, !dbg !2496
  call void @smtp_alert(i32 1, i8* %90, i8* %95, i8* %96), !dbg !2497
  br label %97, !dbg !2498

; <label>:97:                                     ; preds = %36, %88, %51
  ret void, !dbg !2499
}

declare i32 @system_call_script(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64, %struct._notify_script*) #2

declare i32 @child_killed_thread(%struct._thread*) #2

declare i32 @notify_exec(%struct._notify_script*) #2

; Function Attrs: nounwind uwtable
define internal void @notify_fifo_vs(%struct._virtual_server*) #0 !dbg !2500 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !2503, metadata !178), !dbg !2504
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2505, metadata !178), !dbg !2506
  %7 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2507
  %8 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %7, i32 0, i32 31, !dbg !2508
  %9 = load i8, i8* %8, align 4, !dbg !2508
  %10 = trunc i8 %9 to i1, !dbg !2508
  %11 = select i1 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), !dbg !2507
  store i8* %11, i8** %3, align 8, !dbg !2506
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2509, metadata !178), !dbg !2510
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2511, metadata !178), !dbg !2512
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2513, metadata !178), !dbg !2514
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2515
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 54, !dbg !2517
  %14 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %13, i32 0, i32 1, !dbg !2518
  %15 = load i32, i32* %14, align 8, !dbg !2518
  %16 = icmp eq i32 %15, -1, !dbg !2519
  br i1 %16, label %17, label %24, !dbg !2520

; <label>:17:                                     ; preds = %1
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2521
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 56, !dbg !2522
  %20 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %19, i32 0, i32 1, !dbg !2523
  %21 = load i32, i32* %20, align 8, !dbg !2523
  %22 = icmp eq i32 %21, -1, !dbg !2524
  br i1 %22, label %23, label %24, !dbg !2525

; <label>:23:                                     ; preds = %17
  br label %81, !dbg !2527

; <label>:24:                                     ; preds = %17, %1
  %25 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2528
  %26 = call i8* @format_vs(%struct._virtual_server* %25), !dbg !2529
  store i8* %26, i8** %6, align 8, !dbg !2530
  %27 = load i8*, i8** %6, align 8, !dbg !2531
  %28 = call i64 @strlen(i8* %27) #7, !dbg !2532
  %29 = load i8*, i8** %3, align 8, !dbg !2533
  %30 = call i64 @strlen(i8* %29) #7, !dbg !2534
  %31 = add i64 %28, %30, !dbg !2535
  %32 = add i64 %31, 6, !dbg !2536
  store i64 %32, i64* %4, align 8, !dbg !2537
  %33 = load i64, i64* %4, align 8, !dbg !2538
  %34 = call i8* @zalloc(i64 %33), !dbg !2539
  store i8* %34, i8** %5, align 8, !dbg !2540
  %35 = load i8*, i8** %5, align 8, !dbg !2541
  %36 = icmp ne i8* %35, null, !dbg !2541
  br i1 %36, label %38, label %37, !dbg !2543

; <label>:37:                                     ; preds = %24
  br label %81, !dbg !2544

; <label>:38:                                     ; preds = %24
  %39 = load i8*, i8** %5, align 8, !dbg !2545
  %40 = load i64, i64* %4, align 8, !dbg !2546
  %41 = load i8*, i8** %6, align 8, !dbg !2547
  %42 = load i8*, i8** %3, align 8, !dbg !2548
  %43 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %41, i8* %42) #8, !dbg !2549
  %44 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2550
  %45 = getelementptr inbounds %struct._data, %struct._data* %44, i32 0, i32 54, !dbg !2552
  %46 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %45, i32 0, i32 1, !dbg !2553
  %47 = load i32, i32* %46, align 8, !dbg !2553
  %48 = icmp ne i32 %47, -1, !dbg !2554
  br i1 %48, label %49, label %61, !dbg !2555

; <label>:49:                                     ; preds = %38
  %50 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2556
  %51 = getelementptr inbounds %struct._data, %struct._data* %50, i32 0, i32 54, !dbg !2559
  %52 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %51, i32 0, i32 1, !dbg !2560
  %53 = load i32, i32* %52, align 8, !dbg !2560
  %54 = load i8*, i8** %5, align 8, !dbg !2561
  %55 = load i64, i64* %4, align 8, !dbg !2562
  %56 = sub i64 %55, 1, !dbg !2563
  %57 = call i64 @write(i32 %53, i8* %54, i64 %56), !dbg !2564
  %58 = icmp eq i64 %57, -1, !dbg !2565
  br i1 %58, label %59, label %60, !dbg !2566

; <label>:59:                                     ; preds = %49
  br label %60, !dbg !2567

; <label>:60:                                     ; preds = %59, %49
  br label %61, !dbg !2570

; <label>:61:                                     ; preds = %60, %38
  %62 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2571
  %63 = getelementptr inbounds %struct._data, %struct._data* %62, i32 0, i32 56, !dbg !2573
  %64 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %63, i32 0, i32 1, !dbg !2574
  %65 = load i32, i32* %64, align 8, !dbg !2574
  %66 = icmp ne i32 %65, -1, !dbg !2575
  br i1 %66, label %67, label %79, !dbg !2576

; <label>:67:                                     ; preds = %61
  %68 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2577
  %69 = getelementptr inbounds %struct._data, %struct._data* %68, i32 0, i32 56, !dbg !2580
  %70 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %69, i32 0, i32 1, !dbg !2581
  %71 = load i32, i32* %70, align 8, !dbg !2581
  %72 = load i8*, i8** %5, align 8, !dbg !2582
  %73 = load i64, i64* %4, align 8, !dbg !2583
  %74 = sub i64 %73, 1, !dbg !2584
  %75 = call i64 @write(i32 %71, i8* %72, i64 %74), !dbg !2585
  %76 = icmp eq i64 %75, -1, !dbg !2586
  br i1 %76, label %77, label %78, !dbg !2587

; <label>:77:                                     ; preds = %67
  br label %78, !dbg !2588

; <label>:78:                                     ; preds = %77, %67
  br label %79, !dbg !2591

; <label>:79:                                     ; preds = %78, %61
  %80 = load i8*, i8** %5, align 8, !dbg !2592
  call void @free(i8* %80) #8, !dbg !2593
  store i8* null, i8** %5, align 8, !dbg !2594
  br label %81, !dbg !2595

; <label>:81:                                     ; preds = %79, %37, %23
  ret void, !dbg !2596
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @zalloc(i64) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define internal zeroext i1 @init_service_rs(%struct._virtual_server*) #0 !dbg !2597 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._real_server*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !2598, metadata !178), !dbg !2599
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !2600, metadata !178), !dbg !2601
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2602, metadata !178), !dbg !2603
  %5 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2604
  %6 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %5, i32 0, i32 17, !dbg !2606
  %7 = load %struct._list*, %struct._list** %6, align 8, !dbg !2606
  %8 = icmp ne %struct._list* %7, null, !dbg !2607
  br i1 %8, label %9, label %23, !dbg !2607

; <label>:9:                                      ; preds = %1
  %10 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2608
  %11 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %10, i32 0, i32 17, !dbg !2610
  %12 = load %struct._list*, %struct._list** %11, align 8, !dbg !2610
  %13 = icmp ne %struct._list* %12, null, !dbg !2611
  br i1 %13, label %15, label %14, !dbg !2612

; <label>:14:                                     ; preds = %9
  br label %21, !dbg !2613

; <label>:15:                                     ; preds = %9
  %16 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2615
  %17 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %16, i32 0, i32 17, !dbg !2617
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !2617
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 0, !dbg !2618
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !2618
  br label %21, !dbg !2619

; <label>:21:                                     ; preds = %15, %14
  %22 = phi %struct._element* [ null, %14 ], [ %20, %15 ], !dbg !2620
  br label %24, !dbg !2622

; <label>:23:                                     ; preds = %1
  br label %24, !dbg !2623

; <label>:24:                                     ; preds = %23, %21
  %25 = phi %struct._element* [ %22, %21 ], [ null, %23 ], !dbg !2625
  store %struct._element* %25, %struct._element** %3, align 8, !dbg !2627
  br label %26, !dbg !2628

; <label>:26:                                     ; preds = %97, %24
  %27 = load %struct._element*, %struct._element** %3, align 8, !dbg !2629
  %28 = icmp ne %struct._element* %27, null, !dbg !2632
  br i1 %28, label %29, label %34, !dbg !2633

; <label>:29:                                     ; preds = %26
  %30 = load %struct._element*, %struct._element** %3, align 8, !dbg !2634
  %31 = getelementptr inbounds %struct._element, %struct._element* %30, i32 0, i32 2, !dbg !2636
  %32 = load i8*, i8** %31, align 8, !dbg !2636
  %33 = bitcast i8* %32 to %struct._real_server*, !dbg !2637
  store %struct._real_server* %33, %struct._real_server** %4, align 8, !dbg !2638
  br label %34

; <label>:34:                                     ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ true, %29 ]
  br i1 %35, label %36, label %101, !dbg !2639

; <label>:36:                                     ; preds = %34
  %37 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2641
  %38 = getelementptr inbounds %struct._real_server, %struct._real_server* %37, i32 0, i32 19, !dbg !2644
  %39 = load i8, i8* %38, align 1, !dbg !2644
  %40 = trunc i8 %39 to i1, !dbg !2644
  br i1 %40, label %41, label %56, !dbg !2645

; <label>:41:                                     ; preds = %36
  %42 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2646
  %43 = getelementptr inbounds %struct._real_server, %struct._real_server* %42, i32 0, i32 2, !dbg !2649
  %44 = load i32, i32* %43, align 4, !dbg !2649
  %45 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2650
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 3, !dbg !2651
  %47 = load i32, i32* %46, align 8, !dbg !2651
  %48 = icmp ne i32 %44, %47, !dbg !2652
  br i1 %48, label %49, label %55, !dbg !2653

; <label>:49:                                     ; preds = %41
  %50 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2654
  %51 = getelementptr inbounds %struct._real_server, %struct._real_server* %50, i32 0, i32 2, !dbg !2655
  %52 = load i32, i32* %51, align 4, !dbg !2655
  %53 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2656
  %54 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2657
  call void @update_svr_wgt(i32 %52, %struct._virtual_server* %53, %struct._real_server* %54, i1 zeroext false), !dbg !2658
  br label %55, !dbg !2658

; <label>:55:                                     ; preds = %49, %41
  br label %97, !dbg !2659

; <label>:56:                                     ; preds = %36
  %57 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2660
  %58 = getelementptr inbounds %struct._real_server, %struct._real_server* %57, i32 0, i32 17, !dbg !2662
  %59 = load i32, i32* %58, align 8, !dbg !2662
  %60 = icmp ne i32 %59, 0, !dbg !2660
  br i1 %60, label %66, label %61, !dbg !2663

; <label>:61:                                     ; preds = %56
  %62 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2664
  %63 = getelementptr inbounds %struct._real_server, %struct._real_server* %62, i32 0, i32 16, !dbg !2666
  %64 = load i8, i8* %63, align 4, !dbg !2666
  %65 = trunc i8 %64 to i1, !dbg !2666
  br i1 %65, label %66, label %76, !dbg !2667

; <label>:66:                                     ; preds = %61, %56
  %67 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2668
  %68 = getelementptr inbounds %struct._real_server, %struct._real_server* %67, i32 0, i32 7, !dbg !2669
  %69 = load i32, i32* %68, align 8, !dbg !2669
  %70 = icmp ne i32 %69, 0, !dbg !2668
  br i1 %70, label %71, label %96, !dbg !2670

; <label>:71:                                     ; preds = %66
  %72 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2671
  %73 = getelementptr inbounds %struct._real_server, %struct._real_server* %72, i32 0, i32 18, !dbg !2672
  %74 = load i8, i8* %73, align 4, !dbg !2672
  %75 = trunc i8 %74 to i1, !dbg !2672
  br i1 %75, label %96, label %76, !dbg !2673

; <label>:76:                                     ; preds = %71, %61
  %77 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2675
  %78 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2677
  %79 = call i32 @ipvs_cmd(i32 1159, %struct._virtual_server* %77, %struct._real_server* %78), !dbg !2678
  %80 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2679
  %81 = getelementptr inbounds %struct._real_server, %struct._real_server* %80, i32 0, i32 17, !dbg !2681
  %82 = load i32, i32* %81, align 8, !dbg !2681
  %83 = icmp ne i32 %82, 0, !dbg !2679
  br i1 %83, label %95, label %84, !dbg !2682

; <label>:84:                                     ; preds = %76
  %85 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2683
  %86 = getelementptr inbounds %struct._real_server, %struct._real_server* %85, i32 0, i32 16, !dbg !2685
  store i8 1, i8* %86, align 4, !dbg !2686
  %87 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2687
  %88 = getelementptr inbounds %struct._data, %struct._data* %87, i32 0, i32 65, !dbg !2689
  %89 = load i8, i8* %88, align 1, !dbg !2689
  %90 = trunc i8 %89 to i1, !dbg !2689
  br i1 %90, label %91, label %94, !dbg !2690

; <label>:91:                                     ; preds = %84
  %92 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2691
  %93 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2692
  call void @do_rs_notifies(%struct._virtual_server* %92, %struct._real_server* %93, i1 zeroext false), !dbg !2693
  br label %94, !dbg !2693

; <label>:94:                                     ; preds = %91, %84
  br label %95, !dbg !2694

; <label>:95:                                     ; preds = %94, %76
  br label %96, !dbg !2695

; <label>:96:                                     ; preds = %95, %71, %66
  br label %97, !dbg !2696

; <label>:97:                                     ; preds = %96, %55
  %98 = load %struct._element*, %struct._element** %3, align 8, !dbg !2697
  %99 = getelementptr inbounds %struct._element, %struct._element* %98, i32 0, i32 0, !dbg !2699
  %100 = load %struct._element*, %struct._element** %99, align 8, !dbg !2699
  store %struct._element* %100, %struct._element** %3, align 8, !dbg !2700
  br label %26, !dbg !2701, !llvm.loop !2702

; <label>:101:                                    ; preds = %34
  ret i1 true, !dbg !2704
}

; Function Attrs: nounwind uwtable
define internal void @sync_service_vsg(%struct._virtual_server*) #0 !dbg !2705 {
  %2 = alloca %struct._virtual_server*, align 8
  %3 = alloca %struct._virtual_server_group*, align 8
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._list**, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca [3 x %struct._list*], align 16
  store %struct._virtual_server* %0, %struct._virtual_server** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %2, metadata !2706, metadata !178), !dbg !2707
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group** %3, metadata !2708, metadata !178), !dbg !2709
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !2710, metadata !178), !dbg !2711
  call void @llvm.dbg.declare(metadata %struct._list*** %5, metadata !2712, metadata !178), !dbg !2714
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !2715, metadata !178), !dbg !2716
  %8 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2717
  %9 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %8, i32 0, i32 1, !dbg !2718
  %10 = load %struct._virtual_server_group*, %struct._virtual_server_group** %9, align 8, !dbg !2718
  store %struct._virtual_server_group* %10, %struct._virtual_server_group** %3, align 8, !dbg !2719
  call void @llvm.dbg.declare(metadata [3 x %struct._list*]* %7, metadata !2720, metadata !178), !dbg !2724
  %11 = getelementptr inbounds [3 x %struct._list*], [3 x %struct._list*]* %7, i64 0, i64 0, !dbg !2725
  %12 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !2726
  %13 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %12, i32 0, i32 1, !dbg !2727
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !2727
  store %struct._list* %14, %struct._list** %11, align 8, !dbg !2725
  %15 = getelementptr inbounds %struct._list*, %struct._list** %11, i64 1, !dbg !2725
  %16 = load %struct._virtual_server_group*, %struct._virtual_server_group** %3, align 8, !dbg !2728
  %17 = getelementptr inbounds %struct._virtual_server_group, %struct._virtual_server_group* %16, i32 0, i32 2, !dbg !2729
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !2729
  store %struct._list* %18, %struct._list** %15, align 8, !dbg !2725
  %19 = getelementptr inbounds %struct._list*, %struct._list** %15, i64 1, !dbg !2725
  store %struct._list* null, %struct._list** %19, align 8, !dbg !2725
  %20 = getelementptr inbounds [3 x %struct._list*], [3 x %struct._list*]* %7, i32 0, i32 0, !dbg !2730
  store %struct._list** %20, %struct._list*** %5, align 8, !dbg !2732
  br label %21, !dbg !2733

; <label>:21:                                     ; preds = %84, %1
  %22 = load %struct._list**, %struct._list*** %5, align 8, !dbg !2734
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !2737
  %24 = icmp ne %struct._list* %23, null, !dbg !2738
  br i1 %24, label %25, label %87, !dbg !2738

; <label>:25:                                     ; preds = %21
  %26 = load %struct._list**, %struct._list*** %5, align 8, !dbg !2739
  %27 = load %struct._list*, %struct._list** %26, align 8, !dbg !2741
  %28 = icmp ne %struct._list* %27, null, !dbg !2742
  br i1 %28, label %30, label %29, !dbg !2743

; <label>:29:                                     ; preds = %25
  br label %35, !dbg !2744

; <label>:30:                                     ; preds = %25
  %31 = load %struct._list**, %struct._list*** %5, align 8, !dbg !2746
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !2748
  %33 = getelementptr inbounds %struct._list, %struct._list* %32, i32 0, i32 0, !dbg !2749
  %34 = load %struct._element*, %struct._element** %33, align 8, !dbg !2749
  br label %35, !dbg !2750

; <label>:35:                                     ; preds = %30, %29
  %36 = phi %struct._element* [ null, %29 ], [ %34, %30 ], !dbg !2751
  store %struct._element* %36, %struct._element** %6, align 8, !dbg !2753
  br label %37, !dbg !2754

; <label>:37:                                     ; preds = %79, %35
  %38 = load %struct._element*, %struct._element** %6, align 8, !dbg !2755
  %39 = icmp ne %struct._element* %38, null, !dbg !2758
  br i1 %39, label %40, label %83, !dbg !2758

; <label>:40:                                     ; preds = %37
  %41 = load %struct._element*, %struct._element** %6, align 8, !dbg !2759
  %42 = getelementptr inbounds %struct._element, %struct._element* %41, i32 0, i32 2, !dbg !2761
  %43 = load i8*, i8** %42, align 8, !dbg !2761
  %44 = bitcast i8* %43 to %struct._virtual_server_group_entry*, !dbg !2762
  store %struct._virtual_server_group_entry* %44, %struct._virtual_server_group_entry** %4, align 8, !dbg !2763
  %45 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2764
  %46 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %45, i32 0, i32 32, !dbg !2766
  %47 = load i8, i8* %46, align 1, !dbg !2766
  %48 = trunc i8 %47 to i1, !dbg !2766
  br i1 %48, label %49, label %78, !dbg !2767

; <label>:49:                                     ; preds = %40
  %50 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2768
  %51 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %50, i32 0, i32 2, !dbg !2770
  %52 = load i8, i8* %51, align 8, !dbg !2770
  %53 = trunc i8 %52 to i1, !dbg !2770
  br i1 %53, label %78, label %54, !dbg !2771

; <label>:54:                                     ; preds = %49
  %55 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2772
  %56 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %55, i32 0, i32 1, !dbg !2774
  %57 = bitcast %union.anon.7* %56 to %struct.anon.8*, !dbg !2774
  %58 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %57, i32 0, i32 0, !dbg !2774
  %59 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2775
  %60 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %59, i32 0, i32 6, !dbg !2776
  %61 = load i16, i16* %60, align 2, !dbg !2776
  %62 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %58, i16 zeroext %61), !dbg !2777
  %63 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2778
  %64 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %63, i32 0, i32 1, !dbg !2779
  %65 = bitcast %union.anon.7* %64 to %struct.anon.8*, !dbg !2779
  %66 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %65, i32 0, i32 1, !dbg !2779
  %67 = load i32, i32* %66, align 8, !dbg !2779
  %68 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2780
  %69 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %68, i32 0, i32 1, !dbg !2781
  %70 = bitcast %union.anon.7* %69 to %struct.anon.9*, !dbg !2781
  %71 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %70, i32 0, i32 0, !dbg !2781
  %72 = load i32, i32* %71, align 8, !dbg !2781
  %73 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2782
  %74 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %73, i32 0, i32 0, !dbg !2783
  %75 = load i8*, i8** %74, align 8, !dbg !2783
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %62, i32 %67, i32 %72, i8* %75), !dbg !2784
  %76 = load %struct._virtual_server*, %struct._virtual_server** %2, align 8, !dbg !2785
  %77 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !2786
  call void @ipvs_group_sync_entry(%struct._virtual_server* %76, %struct._virtual_server_group_entry* %77), !dbg !2787
  br label %78, !dbg !2788

; <label>:78:                                     ; preds = %54, %49, %40
  br label %79, !dbg !2789

; <label>:79:                                     ; preds = %78
  %80 = load %struct._element*, %struct._element** %6, align 8, !dbg !2790
  %81 = getelementptr inbounds %struct._element, %struct._element* %80, i32 0, i32 0, !dbg !2792
  %82 = load %struct._element*, %struct._element** %81, align 8, !dbg !2792
  store %struct._element* %82, %struct._element** %6, align 8, !dbg !2793
  br label %37, !dbg !2794, !llvm.loop !2795

; <label>:83:                                     ; preds = %37
  br label %84, !dbg !2797

; <label>:84:                                     ; preds = %83
  %85 = load %struct._list**, %struct._list*** %5, align 8, !dbg !2798
  %86 = getelementptr inbounds %struct._list*, %struct._list** %85, i32 1, !dbg !2798
  store %struct._list** %86, %struct._list*** %5, align 8, !dbg !2798
  br label %21, !dbg !2800, !llvm.loop !2801

; <label>:87:                                     ; preds = %21
  ret void, !dbg !2803
}

declare void @ipvs_group_sync_entry(%struct._virtual_server*, %struct._virtual_server_group_entry*) #2

; Function Attrs: nounwind uwtable
define internal void @perform_quorum_state(%struct._virtual_server*, i1 zeroext) #0 !dbg !2804 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._real_server*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !2805, metadata !178), !dbg !2806
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2807, metadata !178), !dbg !2808
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !2809, metadata !178), !dbg !2810
  call void @llvm.dbg.declare(metadata %struct._real_server** %6, metadata !2811, metadata !178), !dbg !2812
  %8 = load i8, i8* %4, align 1, !dbg !2813
  %9 = trunc i8 %8 to i1, !dbg !2813
  %10 = select i1 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), !dbg !2813
  %11 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2814
  %12 = call i8* @format_vs(%struct._virtual_server* %11), !dbg !2815
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i8* %10, i8* %12), !dbg !2816
  %13 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2817
  %14 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %13, i32 0, i32 17, !dbg !2819
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !2819
  %16 = icmp ne %struct._list* %15, null, !dbg !2820
  br i1 %16, label %17, label %31, !dbg !2820

; <label>:17:                                     ; preds = %2
  %18 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2821
  %19 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %18, i32 0, i32 17, !dbg !2823
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !2823
  %21 = icmp ne %struct._list* %20, null, !dbg !2824
  br i1 %21, label %23, label %22, !dbg !2825

; <label>:22:                                     ; preds = %17
  br label %29, !dbg !2826

; <label>:23:                                     ; preds = %17
  %24 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2828
  %25 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %24, i32 0, i32 17, !dbg !2830
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !2830
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !2831
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !2831
  br label %29, !dbg !2832

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._element* [ null, %22 ], [ %28, %23 ], !dbg !2833
  br label %32, !dbg !2835

; <label>:31:                                     ; preds = %2
  br label %32, !dbg !2836

; <label>:32:                                     ; preds = %31, %29
  %33 = phi %struct._element* [ %30, %29 ], [ null, %31 ], !dbg !2838
  store %struct._element* %33, %struct._element** %5, align 8, !dbg !2840
  br label %34, !dbg !2841

; <label>:34:                                     ; preds = %65, %32
  %35 = load %struct._element*, %struct._element** %5, align 8, !dbg !2842
  %36 = icmp ne %struct._element* %35, null, !dbg !2845
  br i1 %36, label %37, label %42, !dbg !2846

; <label>:37:                                     ; preds = %34
  %38 = load %struct._element*, %struct._element** %5, align 8, !dbg !2847
  %39 = getelementptr inbounds %struct._element, %struct._element* %38, i32 0, i32 2, !dbg !2849
  %40 = load i8*, i8** %39, align 8, !dbg !2849
  %41 = bitcast i8* %40 to %struct._real_server*, !dbg !2850
  store %struct._real_server* %41, %struct._real_server** %6, align 8, !dbg !2851
  br label %42

; <label>:42:                                     ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ true, %37 ]
  br i1 %43, label %44, label %69, !dbg !2852

; <label>:44:                                     ; preds = %42
  %45 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !2854
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 16, !dbg !2857
  %47 = load i8, i8* %46, align 4, !dbg !2857
  %48 = trunc i8 %47 to i1, !dbg !2857
  br i1 %48, label %50, label %49, !dbg !2858

; <label>:49:                                     ; preds = %44
  br label %65, !dbg !2859

; <label>:50:                                     ; preds = %44
  %51 = load i8, i8* %4, align 1, !dbg !2860
  %52 = trunc i8 %51 to i1, !dbg !2860
  br i1 %52, label %53, label %56, !dbg !2862

; <label>:53:                                     ; preds = %50
  %54 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !2863
  %55 = getelementptr inbounds %struct._real_server, %struct._real_server* %54, i32 0, i32 16, !dbg !2864
  store i8 0, i8* %55, align 4, !dbg !2865
  br label %56, !dbg !2863

; <label>:56:                                     ; preds = %53, %50
  %57 = load i8, i8* %4, align 1, !dbg !2866
  %58 = trunc i8 %57 to i1, !dbg !2866
  %59 = select i1 %58, i32 1159, i32 1160, !dbg !2866
  %60 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2867
  %61 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !2868
  %62 = call i32 @ipvs_cmd(i32 %59, %struct._virtual_server* %60, %struct._real_server* %61), !dbg !2869
  %63 = load %struct._real_server*, %struct._real_server** %6, align 8, !dbg !2870
  %64 = getelementptr inbounds %struct._real_server, %struct._real_server* %63, i32 0, i32 16, !dbg !2871
  store i8 1, i8* %64, align 4, !dbg !2872
  br label %65, !dbg !2873

; <label>:65:                                     ; preds = %56, %49
  %66 = load %struct._element*, %struct._element** %5, align 8, !dbg !2874
  %67 = getelementptr inbounds %struct._element, %struct._element* %66, i32 0, i32 0, !dbg !2876
  %68 = load %struct._element*, %struct._element** %67, align 8, !dbg !2876
  store %struct._element* %68, %struct._element** %5, align 8, !dbg !2877
  br label %34, !dbg !2878, !llvm.loop !2879

; <label>:69:                                     ; preds = %42
  ret void, !dbg !2881
}

; Function Attrs: nounwind uwtable
define internal void @notify_fifo_rs(%struct._virtual_server*, %struct._real_server*) #0 !dbg !2882 {
  %3 = alloca %struct._virtual_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._virtual_server* %0, %struct._virtual_server** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %3, metadata !2883, metadata !178), !dbg !2884
  store %struct._real_server* %1, %struct._real_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !2885, metadata !178), !dbg !2886
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2887, metadata !178), !dbg !2888
  %11 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2889
  %12 = getelementptr inbounds %struct._real_server, %struct._real_server* %11, i32 0, i32 16, !dbg !2890
  %13 = load i8, i8* %12, align 4, !dbg !2890
  %14 = trunc i8 %13 to i1, !dbg !2890
  %15 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), !dbg !2889
  store i8* %15, i8** %5, align 8, !dbg !2888
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2891, metadata !178), !dbg !2892
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2893, metadata !178), !dbg !2894
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2895, metadata !178), !dbg !2896
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2897, metadata !178), !dbg !2898
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2899, metadata !178), !dbg !2900
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2901
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 54, !dbg !2903
  %18 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %17, i32 0, i32 1, !dbg !2904
  %19 = load i32, i32* %18, align 8, !dbg !2904
  %20 = icmp eq i32 %19, -1, !dbg !2905
  br i1 %20, label %21, label %28, !dbg !2906

; <label>:21:                                     ; preds = %2
  %22 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2907
  %23 = getelementptr inbounds %struct._data, %struct._data* %22, i32 0, i32 56, !dbg !2908
  %24 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %23, i32 0, i32 1, !dbg !2909
  %25 = load i32, i32* %24, align 8, !dbg !2909
  %26 = icmp eq i32 %25, -1, !dbg !2910
  br i1 %26, label %27, label %28, !dbg !2911

; <label>:27:                                     ; preds = %21
  br label %103, !dbg !2913

; <label>:28:                                     ; preds = %21, %2
  %29 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !2914
  %30 = getelementptr inbounds %struct._real_server, %struct._real_server* %29, i32 0, i32 0, !dbg !2915
  %31 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2916
  %32 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %31, i32 0, i32 6, !dbg !2917
  %33 = load i16, i16* %32, align 2, !dbg !2917
  %34 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %30, i16 zeroext %33), !dbg !2918
  store i8* %34, i8** %8, align 8, !dbg !2919
  %35 = load i8*, i8** %8, align 8, !dbg !2920
  %36 = call i64 @strlen(i8* %35) #7, !dbg !2921
  %37 = add i64 %36, 1, !dbg !2922
  %38 = call i8* @zalloc(i64 %37), !dbg !2923
  store i8* %38, i8** %9, align 8, !dbg !2924
  %39 = load i8*, i8** %9, align 8, !dbg !2925
  %40 = load i8*, i8** %8, align 8, !dbg !2926
  %41 = call i8* @strcpy(i8* %39, i8* %40) #8, !dbg !2927
  %42 = load %struct._virtual_server*, %struct._virtual_server** %3, align 8, !dbg !2928
  %43 = call i8* @format_vs(%struct._virtual_server* %42), !dbg !2929
  store i8* %43, i8** %10, align 8, !dbg !2930
  %44 = load i8*, i8** %9, align 8, !dbg !2931
  %45 = call i64 @strlen(i8* %44) #7, !dbg !2932
  %46 = load i8*, i8** %10, align 8, !dbg !2933
  %47 = call i64 @strlen(i8* %46) #7, !dbg !2934
  %48 = add i64 %45, %47, !dbg !2935
  %49 = load i8*, i8** %5, align 8, !dbg !2936
  %50 = call i64 @strlen(i8* %49) #7, !dbg !2937
  %51 = add i64 %48, %50, !dbg !2939
  %52 = add i64 %51, 7, !dbg !2940
  store i64 %52, i64* %6, align 8, !dbg !2941
  %53 = load i64, i64* %6, align 8, !dbg !2942
  %54 = call i8* @zalloc(i64 %53), !dbg !2943
  store i8* %54, i8** %7, align 8, !dbg !2944
  %55 = load i8*, i8** %7, align 8, !dbg !2945
  %56 = icmp ne i8* %55, null, !dbg !2945
  br i1 %56, label %58, label %57, !dbg !2947

; <label>:57:                                     ; preds = %28
  br label %103, !dbg !2948

; <label>:58:                                     ; preds = %28
  %59 = load i8*, i8** %7, align 8, !dbg !2949
  %60 = load i64, i64* %6, align 8, !dbg !2950
  %61 = load i8*, i8** %9, align 8, !dbg !2951
  %62 = load i8*, i8** %10, align 8, !dbg !2952
  %63 = load i8*, i8** %5, align 8, !dbg !2953
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* %61, i8* %62, i8* %63) #8, !dbg !2954
  %65 = load i8*, i8** %9, align 8, !dbg !2955
  call void @free(i8* %65) #8, !dbg !2956
  store i8* null, i8** %9, align 8, !dbg !2957
  %66 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2958
  %67 = getelementptr inbounds %struct._data, %struct._data* %66, i32 0, i32 54, !dbg !2960
  %68 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %67, i32 0, i32 1, !dbg !2961
  %69 = load i32, i32* %68, align 8, !dbg !2961
  %70 = icmp ne i32 %69, -1, !dbg !2962
  br i1 %70, label %71, label %83, !dbg !2963

; <label>:71:                                     ; preds = %58
  %72 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2964
  %73 = getelementptr inbounds %struct._data, %struct._data* %72, i32 0, i32 54, !dbg !2967
  %74 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %73, i32 0, i32 1, !dbg !2968
  %75 = load i32, i32* %74, align 8, !dbg !2968
  %76 = load i8*, i8** %7, align 8, !dbg !2969
  %77 = load i64, i64* %6, align 8, !dbg !2970
  %78 = sub i64 %77, 1, !dbg !2971
  %79 = call i64 @write(i32 %75, i8* %76, i64 %78), !dbg !2972
  %80 = icmp eq i64 %79, -1, !dbg !2973
  br i1 %80, label %81, label %82, !dbg !2974

; <label>:81:                                     ; preds = %71
  br label %82, !dbg !2975

; <label>:82:                                     ; preds = %81, %71
  br label %83, !dbg !2978

; <label>:83:                                     ; preds = %82, %58
  %84 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2979
  %85 = getelementptr inbounds %struct._data, %struct._data* %84, i32 0, i32 56, !dbg !2981
  %86 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %85, i32 0, i32 1, !dbg !2982
  %87 = load i32, i32* %86, align 8, !dbg !2982
  %88 = icmp ne i32 %87, -1, !dbg !2983
  br i1 %88, label %89, label %101, !dbg !2984

; <label>:89:                                     ; preds = %83
  %90 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2985
  %91 = getelementptr inbounds %struct._data, %struct._data* %90, i32 0, i32 56, !dbg !2988
  %92 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %91, i32 0, i32 1, !dbg !2989
  %93 = load i32, i32* %92, align 8, !dbg !2989
  %94 = load i8*, i8** %7, align 8, !dbg !2990
  %95 = load i64, i64* %6, align 8, !dbg !2991
  %96 = sub i64 %95, 1, !dbg !2992
  %97 = call i64 @write(i32 %93, i8* %94, i64 %96), !dbg !2993
  %98 = icmp eq i64 %97, -1, !dbg !2994
  br i1 %98, label %99, label %100, !dbg !2995

; <label>:99:                                     ; preds = %89
  br label %100, !dbg !2996

; <label>:100:                                    ; preds = %99, %89
  br label %101, !dbg !2999

; <label>:101:                                    ; preds = %100, %83
  %102 = load i8*, i8** %7, align 8, !dbg !3000
  call void @free(i8* %102) #8, !dbg !3001
  store i8* null, i8** %7, align 8, !dbg !3002
  br label %103, !dbg !3003

; <label>:103:                                    ; preds = %101, %57, %27
  ret void, !dbg !3004
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @sockstorage_equal(%struct.sockaddr_storage*, %struct.sockaddr_storage*) #6 !dbg !3005 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !3011, metadata !178), !dbg !3012
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %5, metadata !3013, metadata !178), !dbg !3014
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3015
  %11 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0, !dbg !3017
  %12 = load i16, i16* %11, align 8, !dbg !3017
  %13 = zext i16 %12 to i32, !dbg !3015
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !3018
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0, !dbg !3019
  %16 = load i16, i16* %15, align 8, !dbg !3019
  %17 = zext i16 %16 to i32, !dbg !3018
  %18 = icmp ne i32 %13, %17, !dbg !3020
  br i1 %18, label %19, label %20, !dbg !3021

; <label>:19:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !3022
  br label %91, !dbg !3022

; <label>:20:                                     ; preds = %2
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3023
  %22 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %21, i32 0, i32 0, !dbg !3025
  %23 = load i16, i16* %22, align 8, !dbg !3025
  %24 = zext i16 %23 to i32, !dbg !3023
  %25 = icmp eq i32 %24, 10, !dbg !3026
  br i1 %25, label %26, label %49, !dbg !3027

; <label>:26:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %6, metadata !3028, metadata !178), !dbg !3030
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3031
  %28 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr_in6*, !dbg !3032
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %6, align 8, !dbg !3030
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %7, metadata !3033, metadata !178), !dbg !3034
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !3035
  %30 = bitcast %struct.sockaddr_storage* %29 to %struct.sockaddr_in6*, !dbg !3036
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %7, align 8, !dbg !3034
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !3037
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 3, !dbg !3039
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8, !dbg !3040
  %34 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %33, i32 0, i32 3, !dbg !3041
  %35 = call i32 @__ip6_addr_equal(%struct.in6_addr* %32, %struct.in6_addr* %34), !dbg !3042
  %36 = icmp ne i32 %35, 0, !dbg !3042
  br i1 %36, label %37, label %48, !dbg !3043

; <label>:37:                                     ; preds = %26
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !3044
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1, !dbg !3045
  %40 = load i16, i16* %39, align 2, !dbg !3045
  %41 = zext i16 %40 to i32, !dbg !3044
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8, !dbg !3046
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1, !dbg !3047
  %44 = load i16, i16* %43, align 2, !dbg !3047
  %45 = zext i16 %44 to i32, !dbg !3046
  %46 = icmp eq i32 %41, %45, !dbg !3048
  br i1 %46, label %47, label %48, !dbg !3049

; <label>:47:                                     ; preds = %37
  store i1 true, i1* %3, align 1, !dbg !3051
  br label %91, !dbg !3051

; <label>:48:                                     ; preds = %37, %26
  br label %90, !dbg !3052

; <label>:49:                                     ; preds = %20
  %50 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3053
  %51 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %50, i32 0, i32 0, !dbg !3056
  %52 = load i16, i16* %51, align 8, !dbg !3056
  %53 = zext i16 %52 to i32, !dbg !3053
  %54 = icmp eq i32 %53, 2, !dbg !3057
  br i1 %54, label %55, label %81, !dbg !3053

; <label>:55:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %8, metadata !3058, metadata !178), !dbg !3060
  %56 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3061
  %57 = bitcast %struct.sockaddr_storage* %56 to %struct.sockaddr_in*, !dbg !3062
  store %struct.sockaddr_in* %57, %struct.sockaddr_in** %8, align 8, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %9, metadata !3063, metadata !178), !dbg !3064
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8, !dbg !3065
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr_in*, !dbg !3066
  store %struct.sockaddr_in* %59, %struct.sockaddr_in** %9, align 8, !dbg !3064
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8, !dbg !3067
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 2, !dbg !3069
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %61, i32 0, i32 0, !dbg !3070
  %63 = load i32, i32* %62, align 4, !dbg !3070
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8, !dbg !3071
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 2, !dbg !3072
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %65, i32 0, i32 0, !dbg !3073
  %67 = load i32, i32* %66, align 4, !dbg !3073
  %68 = icmp eq i32 %63, %67, !dbg !3074
  br i1 %68, label %69, label %80, !dbg !3075

; <label>:69:                                     ; preds = %55
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8, !dbg !3076
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 1, !dbg !3077
  %72 = load i16, i16* %71, align 2, !dbg !3077
  %73 = zext i16 %72 to i32, !dbg !3076
  %74 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8, !dbg !3078
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %74, i32 0, i32 1, !dbg !3079
  %76 = load i16, i16* %75, align 2, !dbg !3079
  %77 = zext i16 %76 to i32, !dbg !3078
  %78 = icmp eq i32 %73, %77, !dbg !3080
  br i1 %78, label %79, label %80, !dbg !3081

; <label>:79:                                     ; preds = %69
  store i1 true, i1* %3, align 1, !dbg !3083
  br label %91, !dbg !3083

; <label>:80:                                     ; preds = %69, %55
  br label %89, !dbg !3084

; <label>:81:                                     ; preds = %49
  %82 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !3085
  %83 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %82, i32 0, i32 0, !dbg !3088
  %84 = load i16, i16* %83, align 8, !dbg !3088
  %85 = zext i16 %84 to i32, !dbg !3085
  %86 = icmp eq i32 %85, 0, !dbg !3089
  br i1 %86, label %87, label %88, !dbg !3085

; <label>:87:                                     ; preds = %81
  store i1 true, i1* %3, align 1, !dbg !3090
  br label %91, !dbg !3090

; <label>:88:                                     ; preds = %81
  br label %89

; <label>:89:                                     ; preds = %88, %80
  br label %90

; <label>:90:                                     ; preds = %89, %48
  store i1 false, i1* %3, align 1, !dbg !3091
  br label %91, !dbg !3091

; <label>:91:                                     ; preds = %90, %87, %79, %47, %19
  %92 = load i1, i1* %3, align 1, !dbg !3092
  ret i1 %92, !dbg !3092
}

declare zeroext i1 @notify_script_compare(%struct._notify_script*, %struct._notify_script*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ip6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #6 !dbg !3093 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !3098, metadata !178), !dbg !3099
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %4, metadata !3100, metadata !178), !dbg !3101
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !3102
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0, !dbg !3103
  %7 = bitcast %union.anon.10* %6 to [4 x i32]*, !dbg !3104
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !3102
  %9 = load i32, i32* %8, align 4, !dbg !3102
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !3105
  %11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !3106
  %12 = bitcast %union.anon.10* %11 to [4 x i32]*, !dbg !3107
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0, !dbg !3105
  %14 = load i32, i32* %13, align 4, !dbg !3105
  %15 = xor i32 %9, %14, !dbg !3108
  %16 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !3109
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0, !dbg !3110
  %18 = bitcast %union.anon.10* %17 to [4 x i32]*, !dbg !3111
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1, !dbg !3109
  %20 = load i32, i32* %19, align 4, !dbg !3109
  %21 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !3112
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0, !dbg !3113
  %23 = bitcast %union.anon.10* %22 to [4 x i32]*, !dbg !3114
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1, !dbg !3112
  %25 = load i32, i32* %24, align 4, !dbg !3112
  %26 = xor i32 %20, %25, !dbg !3115
  %27 = or i32 %15, %26, !dbg !3116
  %28 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !3117
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !3118
  %30 = bitcast %union.anon.10* %29 to [4 x i32]*, !dbg !3119
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 2, !dbg !3117
  %32 = load i32, i32* %31, align 4, !dbg !3117
  %33 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !3120
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %33, i32 0, i32 0, !dbg !3121
  %35 = bitcast %union.anon.10* %34 to [4 x i32]*, !dbg !3122
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 2, !dbg !3120
  %37 = load i32, i32* %36, align 4, !dbg !3120
  %38 = xor i32 %32, %37, !dbg !3123
  %39 = or i32 %27, %38, !dbg !3124
  %40 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !3125
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0, !dbg !3126
  %42 = bitcast %union.anon.10* %41 to [4 x i32]*, !dbg !3127
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3, !dbg !3125
  %44 = load i32, i32* %43, align 4, !dbg !3125
  %45 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !3128
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0, !dbg !3129
  %47 = bitcast %union.anon.10* %46 to [4 x i32]*, !dbg !3130
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 3, !dbg !3128
  %49 = load i32, i32* %48, align 4, !dbg !3128
  %50 = xor i32 %44, %49, !dbg !3131
  %51 = or i32 %39, %50, !dbg !3132
  %52 = icmp eq i32 %51, 0, !dbg !3133
  %53 = zext i1 %52 to i32, !dbg !3133
  ret i32 %53, !dbg !3134
}

; Function Attrs: nounwind uwtable
define internal void @clear_diff_vsge(%struct._list*, %struct._list*, %struct._virtual_server*) #0 !dbg !3135 {
  %4 = alloca %struct._list*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._virtual_server*, align 8
  %7 = alloca %struct._virtual_server_group_entry*, align 8
  %8 = alloca %struct._virtual_server_group_entry*, align 8
  %9 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %4, metadata !3138, metadata !178), !dbg !3139
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !3140, metadata !178), !dbg !3141
  store %struct._virtual_server* %2, %struct._virtual_server** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %6, metadata !3142, metadata !178), !dbg !3143
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %7, metadata !3144, metadata !178), !dbg !3145
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %8, metadata !3146, metadata !178), !dbg !3147
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !3148, metadata !178), !dbg !3149
  %10 = load %struct._list*, %struct._list** %4, align 8, !dbg !3150
  %11 = icmp ne %struct._list* %10, null, !dbg !3152
  br i1 %11, label %13, label %12, !dbg !3153

; <label>:12:                                     ; preds = %3
  br label %17, !dbg !3154

; <label>:13:                                     ; preds = %3
  %14 = load %struct._list*, %struct._list** %4, align 8, !dbg !3156
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 0, !dbg !3158
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !3158
  br label %17, !dbg !3159

; <label>:17:                                     ; preds = %13, %12
  %18 = phi %struct._element* [ null, %12 ], [ %16, %13 ], !dbg !3160
  store %struct._element* %18, %struct._element** %9, align 8, !dbg !3162
  br label %19, !dbg !3163

; <label>:19:                                     ; preds = %105, %17
  %20 = load %struct._element*, %struct._element** %9, align 8, !dbg !3164
  %21 = icmp ne %struct._element* %20, null, !dbg !3167
  br i1 %21, label %22, label %109, !dbg !3167

; <label>:22:                                     ; preds = %19
  %23 = load %struct._element*, %struct._element** %9, align 8, !dbg !3168
  %24 = getelementptr inbounds %struct._element, %struct._element* %23, i32 0, i32 2, !dbg !3170
  %25 = load i8*, i8** %24, align 8, !dbg !3170
  %26 = bitcast i8* %25 to %struct._virtual_server_group_entry*, !dbg !3171
  store %struct._virtual_server_group_entry* %26, %struct._virtual_server_group_entry** %7, align 8, !dbg !3172
  %27 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3173
  %28 = load %struct._list*, %struct._list** %5, align 8, !dbg !3174
  %29 = call %struct._virtual_server_group_entry* @vsge_exist(%struct._virtual_server_group_entry* %27, %struct._list* %28), !dbg !3175
  store %struct._virtual_server_group_entry* %29, %struct._virtual_server_group_entry** %8, align 8, !dbg !3176
  %30 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3177
  %31 = icmp ne %struct._virtual_server_group_entry* %30, null, !dbg !3177
  br i1 %31, label %32, label %80, !dbg !3179

; <label>:32:                                     ; preds = %22
  %33 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3180
  %34 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %33, i32 0, i32 1, !dbg !3182
  %35 = bitcast %union.anon.7* %34 to %struct.anon.8*, !dbg !3182
  %36 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %35, i32 0, i32 2, !dbg !3182
  %37 = load i32, i32* %36, align 4, !dbg !3182
  %38 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3183
  %39 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %38, i32 0, i32 1, !dbg !3184
  %40 = bitcast %union.anon.7* %39 to %struct.anon.8*, !dbg !3184
  %41 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %40, i32 0, i32 2, !dbg !3184
  store i32 %37, i32* %41, align 4, !dbg !3185
  %42 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3186
  %43 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %42, i32 0, i32 1, !dbg !3187
  %44 = bitcast %union.anon.7* %43 to %struct.anon.8*, !dbg !3187
  %45 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %44, i32 0, i32 3, !dbg !3187
  %46 = load i32, i32* %45, align 8, !dbg !3187
  %47 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3188
  %48 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %47, i32 0, i32 1, !dbg !3189
  %49 = bitcast %union.anon.7* %48 to %struct.anon.8*, !dbg !3189
  %50 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %49, i32 0, i32 3, !dbg !3189
  store i32 %46, i32* %50, align 8, !dbg !3190
  %51 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3191
  %52 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %51, i32 0, i32 1, !dbg !3192
  %53 = bitcast %union.anon.7* %52 to %struct.anon.8*, !dbg !3192
  %54 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %53, i32 0, i32 4, !dbg !3192
  %55 = load i32, i32* %54, align 4, !dbg !3192
  %56 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3193
  %57 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %56, i32 0, i32 1, !dbg !3194
  %58 = bitcast %union.anon.7* %57 to %struct.anon.8*, !dbg !3194
  %59 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %58, i32 0, i32 4, !dbg !3194
  store i32 %55, i32* %59, align 4, !dbg !3195
  %60 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3196
  %61 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %60, i32 0, i32 1, !dbg !3197
  %62 = bitcast %union.anon.7* %61 to %struct.anon.9*, !dbg !3197
  %63 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %62, i32 0, i32 1, !dbg !3197
  %64 = load i32, i32* %63, align 4, !dbg !3197
  %65 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3198
  %66 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %65, i32 0, i32 1, !dbg !3199
  %67 = bitcast %union.anon.7* %66 to %struct.anon.9*, !dbg !3199
  %68 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %67, i32 0, i32 1, !dbg !3199
  store i32 %64, i32* %68, align 4, !dbg !3200
  %69 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3201
  %70 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %69, i32 0, i32 1, !dbg !3202
  %71 = bitcast %union.anon.7* %70 to %struct.anon.9*, !dbg !3202
  %72 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %71, i32 0, i32 2, !dbg !3202
  %73 = load i32, i32* %72, align 8, !dbg !3202
  %74 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3203
  %75 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %74, i32 0, i32 1, !dbg !3204
  %76 = bitcast %union.anon.7* %75 to %struct.anon.9*, !dbg !3204
  %77 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %76, i32 0, i32 2, !dbg !3204
  store i32 %73, i32* %77, align 8, !dbg !3205
  %78 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %8, align 8, !dbg !3206
  %79 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %78, i32 0, i32 2, !dbg !3207
  store i8 1, i8* %79, align 8, !dbg !3208
  br label %104, !dbg !3209

; <label>:80:                                     ; preds = %22
  %81 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3210
  %82 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %81, i32 0, i32 1, !dbg !3212
  %83 = bitcast %union.anon.7* %82 to %struct.anon.8*, !dbg !3212
  %84 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %83, i32 0, i32 0, !dbg !3212
  %85 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !3213
  %86 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %85, i32 0, i32 6, !dbg !3214
  %87 = load i16, i16* %86, align 2, !dbg !3214
  %88 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %84, i16 zeroext %87), !dbg !3215
  %89 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3216
  %90 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %89, i32 0, i32 1, !dbg !3217
  %91 = bitcast %union.anon.7* %90 to %struct.anon.8*, !dbg !3217
  %92 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %91, i32 0, i32 1, !dbg !3217
  %93 = load i32, i32* %92, align 8, !dbg !3217
  %94 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3218
  %95 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %94, i32 0, i32 1, !dbg !3219
  %96 = bitcast %union.anon.7* %95 to %struct.anon.9*, !dbg !3219
  %97 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %96, i32 0, i32 0, !dbg !3219
  %98 = load i32, i32* %97, align 8, !dbg !3219
  %99 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !3220
  %100 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %99, i32 0, i32 0, !dbg !3221
  %101 = load i8*, i8** %100, align 8, !dbg !3221
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i32 0, i32 0), i8* %88, i32 %93, i32 %98, i8* %101), !dbg !3222
  %102 = load %struct._virtual_server*, %struct._virtual_server** %6, align 8, !dbg !3223
  %103 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3224
  call void @ipvs_group_remove_entry(%struct._virtual_server* %102, %struct._virtual_server_group_entry* %103), !dbg !3225
  br label %104

; <label>:104:                                    ; preds = %80, %32
  br label %105, !dbg !3226

; <label>:105:                                    ; preds = %104
  %106 = load %struct._element*, %struct._element** %9, align 8, !dbg !3227
  %107 = getelementptr inbounds %struct._element, %struct._element* %106, i32 0, i32 0, !dbg !3229
  %108 = load %struct._element*, %struct._element** %107, align 8, !dbg !3229
  store %struct._element* %108, %struct._element** %9, align 8, !dbg !3230
  br label %19, !dbg !3231, !llvm.loop !3232

; <label>:109:                                    ; preds = %19
  ret void, !dbg !3234
}

; Function Attrs: nounwind uwtable
define internal %struct._virtual_server_group_entry* @vsge_exist(%struct._virtual_server_group_entry*, %struct._list*) #0 !dbg !3235 {
  %3 = alloca %struct._virtual_server_group_entry*, align 8
  %4 = alloca %struct._virtual_server_group_entry*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._virtual_server_group_entry*, align 8
  store %struct._virtual_server_group_entry* %0, %struct._virtual_server_group_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %4, metadata !3238, metadata !178), !dbg !3239
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !3240, metadata !178), !dbg !3241
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !3242, metadata !178), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct._virtual_server_group_entry** %7, metadata !3244, metadata !178), !dbg !3245
  %8 = load %struct._list*, %struct._list** %5, align 8, !dbg !3246
  %9 = icmp ne %struct._list* %8, null, !dbg !3248
  br i1 %9, label %11, label %10, !dbg !3249

; <label>:10:                                     ; preds = %2
  br label %15, !dbg !3250

; <label>:11:                                     ; preds = %2
  %12 = load %struct._list*, %struct._list** %5, align 8, !dbg !3252
  %13 = getelementptr inbounds %struct._list, %struct._list* %12, i32 0, i32 0, !dbg !3254
  %14 = load %struct._element*, %struct._element** %13, align 8, !dbg !3254
  br label %15, !dbg !3255

; <label>:15:                                     ; preds = %11, %10
  %16 = phi %struct._element* [ null, %10 ], [ %14, %11 ], !dbg !3256
  store %struct._element* %16, %struct._element** %6, align 8, !dbg !3258
  br label %17, !dbg !3259

; <label>:17:                                     ; preds = %61, %15
  %18 = load %struct._element*, %struct._element** %6, align 8, !dbg !3260
  %19 = icmp ne %struct._element* %18, null, !dbg !3263
  br i1 %19, label %20, label %65, !dbg !3263

; <label>:20:                                     ; preds = %17
  %21 = load %struct._element*, %struct._element** %6, align 8, !dbg !3264
  %22 = getelementptr inbounds %struct._element, %struct._element* %21, i32 0, i32 2, !dbg !3266
  %23 = load i8*, i8** %22, align 8, !dbg !3266
  %24 = bitcast i8* %23 to %struct._virtual_server_group_entry*, !dbg !3267
  store %struct._virtual_server_group_entry* %24, %struct._virtual_server_group_entry** %7, align 8, !dbg !3268
  %25 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !3269
  %26 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %25, i32 0, i32 1, !dbg !3271
  %27 = bitcast %union.anon.7* %26 to %struct.anon.8*, !dbg !3271
  %28 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %27, i32 0, i32 0, !dbg !3271
  %29 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3272
  %30 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %29, i32 0, i32 1, !dbg !3273
  %31 = bitcast %union.anon.7* %30 to %struct.anon.8*, !dbg !3273
  %32 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %31, i32 0, i32 0, !dbg !3273
  %33 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %28, %struct.sockaddr_storage* %32), !dbg !3274
  br i1 %33, label %34, label %60, !dbg !3275

; <label>:34:                                     ; preds = %20
  %35 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !3276
  %36 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %35, i32 0, i32 1, !dbg !3278
  %37 = bitcast %union.anon.7* %36 to %struct.anon.8*, !dbg !3278
  %38 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %37, i32 0, i32 1, !dbg !3278
  %39 = load i32, i32* %38, align 8, !dbg !3278
  %40 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3279
  %41 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %40, i32 0, i32 1, !dbg !3280
  %42 = bitcast %union.anon.7* %41 to %struct.anon.8*, !dbg !3280
  %43 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %42, i32 0, i32 1, !dbg !3280
  %44 = load i32, i32* %43, align 8, !dbg !3280
  %45 = icmp eq i32 %39, %44, !dbg !3281
  br i1 %45, label %46, label %60, !dbg !3282

; <label>:46:                                     ; preds = %34
  %47 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %4, align 8, !dbg !3283
  %48 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %47, i32 0, i32 1, !dbg !3285
  %49 = bitcast %union.anon.7* %48 to %struct.anon.9*, !dbg !3285
  %50 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %49, i32 0, i32 0, !dbg !3285
  %51 = load i32, i32* %50, align 8, !dbg !3285
  %52 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3286
  %53 = getelementptr inbounds %struct._virtual_server_group_entry, %struct._virtual_server_group_entry* %52, i32 0, i32 1, !dbg !3287
  %54 = bitcast %union.anon.7* %53 to %struct.anon.9*, !dbg !3287
  %55 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %54, i32 0, i32 0, !dbg !3287
  %56 = load i32, i32* %55, align 8, !dbg !3287
  %57 = icmp eq i32 %51, %56, !dbg !3288
  br i1 %57, label %58, label %60, !dbg !3289

; <label>:58:                                     ; preds = %46
  %59 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %7, align 8, !dbg !3290
  store %struct._virtual_server_group_entry* %59, %struct._virtual_server_group_entry** %3, align 8, !dbg !3291
  br label %66, !dbg !3291

; <label>:60:                                     ; preds = %46, %34, %20
  br label %61, !dbg !3292

; <label>:61:                                     ; preds = %60
  %62 = load %struct._element*, %struct._element** %6, align 8, !dbg !3293
  %63 = getelementptr inbounds %struct._element, %struct._element* %62, i32 0, i32 0, !dbg !3295
  %64 = load %struct._element*, %struct._element** %63, align 8, !dbg !3295
  store %struct._element* %64, %struct._element** %6, align 8, !dbg !3296
  br label %17, !dbg !3297, !llvm.loop !3298

; <label>:65:                                     ; preds = %17
  store %struct._virtual_server_group_entry* null, %struct._virtual_server_group_entry** %3, align 8, !dbg !3300
  br label %66, !dbg !3300

; <label>:66:                                     ; preds = %65, %58
  %67 = load %struct._virtual_server_group_entry*, %struct._virtual_server_group_entry** %3, align 8, !dbg !3301
  ret %struct._virtual_server_group_entry* %67, !dbg !3301
}

declare void @ipvs_group_remove_entry(%struct._virtual_server*, %struct._virtual_server_group_entry*) #2

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal %struct._real_server* @rs_exist(%struct._real_server*, %struct._list*) #0 !dbg !3302 {
  %3 = alloca %struct._real_server*, align 8
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._real_server*, align 8
  store %struct._real_server* %0, %struct._real_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !3305, metadata !178), !dbg !3306
  store %struct._list* %1, %struct._list** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !3307, metadata !178), !dbg !3308
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !3309, metadata !178), !dbg !3310
  call void @llvm.dbg.declare(metadata %struct._real_server** %7, metadata !3311, metadata !178), !dbg !3312
  %8 = load %struct._list*, %struct._list** %5, align 8, !dbg !3313
  %9 = icmp eq %struct._list* %8, null, !dbg !3315
  br i1 %9, label %20, label %10, !dbg !3316

; <label>:10:                                     ; preds = %2
  %11 = load %struct._list*, %struct._list** %5, align 8, !dbg !3317
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i32 0, i32 0, !dbg !3319
  %13 = load %struct._element*, %struct._element** %12, align 8, !dbg !3319
  %14 = icmp eq %struct._element* %13, null, !dbg !3320
  br i1 %14, label %15, label %21, !dbg !3321

; <label>:15:                                     ; preds = %10
  %16 = load %struct._list*, %struct._list** %5, align 8, !dbg !3322
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1, !dbg !3324
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !3324
  %19 = icmp eq %struct._element* %18, null, !dbg !3325
  br i1 %19, label %20, label %21, !dbg !3326

; <label>:20:                                     ; preds = %15, %2
  store %struct._real_server* null, %struct._real_server** %3, align 8, !dbg !3327
  br label %88, !dbg !3327

; <label>:21:                                     ; preds = %15, %10
  %22 = load %struct._list*, %struct._list** %5, align 8, !dbg !3328
  %23 = icmp ne %struct._list* %22, null, !dbg !3330
  br i1 %23, label %25, label %24, !dbg !3331

; <label>:24:                                     ; preds = %21
  br label %29, !dbg !3332

; <label>:25:                                     ; preds = %21
  %26 = load %struct._list*, %struct._list** %5, align 8, !dbg !3334
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !3336
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !3336
  br label %29, !dbg !3337

; <label>:29:                                     ; preds = %25, %24
  %30 = phi %struct._element* [ null, %24 ], [ %28, %25 ], !dbg !3338
  store %struct._element* %30, %struct._element** %6, align 8, !dbg !3340
  br label %31, !dbg !3341

; <label>:31:                                     ; preds = %83, %29
  %32 = load %struct._element*, %struct._element** %6, align 8, !dbg !3342
  %33 = icmp ne %struct._element* %32, null, !dbg !3345
  br i1 %33, label %34, label %87, !dbg !3345

; <label>:34:                                     ; preds = %31
  %35 = load %struct._element*, %struct._element** %6, align 8, !dbg !3346
  %36 = getelementptr inbounds %struct._element, %struct._element* %35, i32 0, i32 2, !dbg !3348
  %37 = load i8*, i8** %36, align 8, !dbg !3348
  %38 = bitcast i8* %37 to %struct._real_server*, !dbg !3349
  store %struct._real_server* %38, %struct._real_server** %7, align 8, !dbg !3350
  %39 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3351
  %40 = getelementptr inbounds %struct._real_server, %struct._real_server* %39, i32 0, i32 0, !dbg !3353
  %41 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !3354
  %42 = getelementptr inbounds %struct._real_server, %struct._real_server* %41, i32 0, i32 0, !dbg !3355
  %43 = call zeroext i1 @sockstorage_equal(%struct.sockaddr_storage* %40, %struct.sockaddr_storage* %42), !dbg !3356
  br i1 %43, label %44, label %82, !dbg !3357

; <label>:44:                                     ; preds = %34
  %45 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3358
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 4, !dbg !3360
  %47 = load i32, i32* %46, align 4, !dbg !3360
  %48 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !3361
  %49 = getelementptr inbounds %struct._real_server, %struct._real_server* %48, i32 0, i32 4, !dbg !3362
  %50 = load i32, i32* %49, align 4, !dbg !3362
  %51 = icmp eq i32 %47, %50, !dbg !3363
  br i1 %51, label %52, label %82, !dbg !3364

; <label>:52:                                     ; preds = %44
  %53 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3365
  %54 = getelementptr inbounds %struct._real_server, %struct._real_server* %53, i32 0, i32 20, !dbg !3367
  %55 = load i8*, i8** %54, align 8, !dbg !3367
  %56 = icmp ne i8* %55, null, !dbg !3368
  %57 = xor i1 %56, true, !dbg !3368
  %58 = zext i1 %57 to i32, !dbg !3368
  %59 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !3369
  %60 = getelementptr inbounds %struct._real_server, %struct._real_server* %59, i32 0, i32 20, !dbg !3370
  %61 = load i8*, i8** %60, align 8, !dbg !3370
  %62 = icmp ne i8* %61, null, !dbg !3371
  %63 = xor i1 %62, true, !dbg !3371
  %64 = zext i1 %63 to i32, !dbg !3371
  %65 = icmp eq i32 %58, %64, !dbg !3372
  br i1 %65, label %66, label %82, !dbg !3373

; <label>:66:                                     ; preds = %52
  %67 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3374
  %68 = getelementptr inbounds %struct._real_server, %struct._real_server* %67, i32 0, i32 20, !dbg !3376
  %69 = load i8*, i8** %68, align 8, !dbg !3376
  %70 = icmp ne i8* %69, null, !dbg !3377
  br i1 %70, label %71, label %80, !dbg !3378

; <label>:71:                                     ; preds = %66
  %72 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3379
  %73 = getelementptr inbounds %struct._real_server, %struct._real_server* %72, i32 0, i32 20, !dbg !3381
  %74 = load i8*, i8** %73, align 8, !dbg !3381
  %75 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !3382
  %76 = getelementptr inbounds %struct._real_server, %struct._real_server* %75, i32 0, i32 20, !dbg !3383
  %77 = load i8*, i8** %76, align 8, !dbg !3383
  %78 = call i32 @strcmp(i8* %74, i8* %77) #7, !dbg !3384
  %79 = icmp ne i32 %78, 0, !dbg !3384
  br i1 %79, label %82, label %80, !dbg !3385

; <label>:80:                                     ; preds = %71, %66
  %81 = load %struct._real_server*, %struct._real_server** %7, align 8, !dbg !3386
  store %struct._real_server* %81, %struct._real_server** %3, align 8, !dbg !3387
  br label %88, !dbg !3387

; <label>:82:                                     ; preds = %71, %52, %44, %34
  br label %83, !dbg !3388

; <label>:83:                                     ; preds = %82
  %84 = load %struct._element*, %struct._element** %6, align 8, !dbg !3389
  %85 = getelementptr inbounds %struct._element, %struct._element* %84, i32 0, i32 0, !dbg !3391
  %86 = load %struct._element*, %struct._element** %85, align 8, !dbg !3391
  store %struct._element* %86, %struct._element** %6, align 8, !dbg !3392
  br label %31, !dbg !3393, !llvm.loop !3394

; <label>:87:                                     ; preds = %31
  store %struct._real_server* null, %struct._real_server** %3, align 8, !dbg !3396
  br label %88, !dbg !3396

; <label>:88:                                     ; preds = %87, %80, %20
  %89 = load %struct._real_server*, %struct._real_server** %3, align 8, !dbg !3397
  ret %struct._real_server* %89, !dbg !3397
}

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @migrate_checkers(%struct._real_server*, %struct._real_server*, %struct._list*) #0 !dbg !3398 {
  %4 = alloca %struct._real_server*, align 8
  %5 = alloca %struct._real_server*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct._list*, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._checker*, align 8
  %11 = alloca %struct._checker*, align 8
  store %struct._real_server* %0, %struct._real_server** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %4, metadata !3401, metadata !178), !dbg !3402
  store %struct._real_server* %1, %struct._real_server** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._real_server** %5, metadata !3403, metadata !178), !dbg !3404
  store %struct._list* %2, %struct._list** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !3405, metadata !178), !dbg !3406
  call void @llvm.dbg.declare(metadata %struct._list** %7, metadata !3407, metadata !178), !dbg !3408
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !3409, metadata !178), !dbg !3410
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !3411, metadata !178), !dbg !3412
  call void @llvm.dbg.declare(metadata %struct._checker** %10, metadata !3413, metadata !178), !dbg !3414
  call void @llvm.dbg.declare(metadata %struct._checker** %11, metadata !3415, metadata !178), !dbg !3416
  %12 = call %struct._list* @alloc_list(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null), !dbg !3417
  store %struct._list* %12, %struct._list** %7, align 8, !dbg !3418
  %13 = load %struct._list*, %struct._list** %6, align 8, !dbg !3419
  %14 = icmp ne %struct._list* %13, null, !dbg !3421
  br i1 %14, label %15, label %25, !dbg !3421

; <label>:15:                                     ; preds = %3
  %16 = load %struct._list*, %struct._list** %6, align 8, !dbg !3422
  %17 = icmp ne %struct._list* %16, null, !dbg !3424
  br i1 %17, label %19, label %18, !dbg !3425

; <label>:18:                                     ; preds = %15
  br label %23, !dbg !3426

; <label>:19:                                     ; preds = %15
  %20 = load %struct._list*, %struct._list** %6, align 8, !dbg !3428
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 0, !dbg !3430
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !3430
  br label %23, !dbg !3431

; <label>:23:                                     ; preds = %19, %18
  %24 = phi %struct._element* [ null, %18 ], [ %22, %19 ], !dbg !3432
  br label %26, !dbg !3434

; <label>:25:                                     ; preds = %3
  br label %26, !dbg !3435

; <label>:26:                                     ; preds = %25, %23
  %27 = phi %struct._element* [ %24, %23 ], [ null, %25 ], !dbg !3437
  store %struct._element* %27, %struct._element** %8, align 8, !dbg !3439
  br label %28, !dbg !3440

; <label>:28:                                     ; preds = %49, %26
  %29 = load %struct._element*, %struct._element** %8, align 8, !dbg !3441
  %30 = icmp ne %struct._element* %29, null, !dbg !3444
  br i1 %30, label %31, label %36, !dbg !3445

; <label>:31:                                     ; preds = %28
  %32 = load %struct._element*, %struct._element** %8, align 8, !dbg !3446
  %33 = getelementptr inbounds %struct._element, %struct._element* %32, i32 0, i32 2, !dbg !3448
  %34 = load i8*, i8** %33, align 8, !dbg !3448
  %35 = bitcast i8* %34 to %struct._checker*, !dbg !3449
  store %struct._checker* %35, %struct._checker** %10, align 8, !dbg !3450
  br label %36

; <label>:36:                                     ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ true, %31 ]
  br i1 %37, label %38, label %53, !dbg !3451

; <label>:38:                                     ; preds = %36
  %39 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3453
  %40 = getelementptr inbounds %struct._checker, %struct._checker* %39, i32 0, i32 5, !dbg !3456
  %41 = load %struct._real_server*, %struct._real_server** %40, align 8, !dbg !3456
  %42 = load %struct._real_server*, %struct._real_server** %4, align 8, !dbg !3457
  %43 = icmp eq %struct._real_server* %41, %42, !dbg !3458
  br i1 %43, label %44, label %48, !dbg !3459

; <label>:44:                                     ; preds = %38
  %45 = load %struct._list*, %struct._list** %7, align 8, !dbg !3460
  %46 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3461
  %47 = bitcast %struct._checker* %46 to i8*, !dbg !3461
  call void @list_add(%struct._list* %45, i8* %47), !dbg !3462
  br label %48, !dbg !3462

; <label>:48:                                     ; preds = %44, %38
  br label %49, !dbg !3463

; <label>:49:                                     ; preds = %48
  %50 = load %struct._element*, %struct._element** %8, align 8, !dbg !3464
  %51 = getelementptr inbounds %struct._element, %struct._element* %50, i32 0, i32 0, !dbg !3466
  %52 = load %struct._element*, %struct._element** %51, align 8, !dbg !3466
  store %struct._element* %52, %struct._element** %8, align 8, !dbg !3467
  br label %28, !dbg !3468, !llvm.loop !3469

; <label>:53:                                     ; preds = %36
  %54 = load %struct._list*, %struct._list** %7, align 8, !dbg !3471
  %55 = icmp eq %struct._list* %54, null, !dbg !3473
  br i1 %55, label %197, label %56, !dbg !3474

; <label>:56:                                     ; preds = %53
  %57 = load %struct._list*, %struct._list** %7, align 8, !dbg !3475
  %58 = getelementptr inbounds %struct._list, %struct._list* %57, i32 0, i32 0, !dbg !3477
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !3477
  %60 = icmp eq %struct._element* %59, null, !dbg !3478
  br i1 %60, label %61, label %66, !dbg !3479

; <label>:61:                                     ; preds = %56
  %62 = load %struct._list*, %struct._list** %7, align 8, !dbg !3480
  %63 = getelementptr inbounds %struct._list, %struct._list* %62, i32 0, i32 1, !dbg !3482
  %64 = load %struct._element*, %struct._element** %63, align 8, !dbg !3482
  %65 = icmp eq %struct._element* %64, null, !dbg !3483
  br i1 %65, label %197, label %66, !dbg !3484

; <label>:66:                                     ; preds = %61, %56
  %67 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !3485
  %68 = icmp ne %struct._list* %67, null, !dbg !3488
  br i1 %68, label %69, label %79, !dbg !3488

; <label>:69:                                     ; preds = %66
  %70 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !3489
  %71 = icmp ne %struct._list* %70, null, !dbg !3491
  br i1 %71, label %73, label %72, !dbg !3492

; <label>:72:                                     ; preds = %69
  br label %77, !dbg !3493

; <label>:73:                                     ; preds = %69
  %74 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !3495
  %75 = getelementptr inbounds %struct._list, %struct._list* %74, i32 0, i32 0, !dbg !3497
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !3497
  br label %77, !dbg !3498

; <label>:77:                                     ; preds = %73, %72
  %78 = phi %struct._element* [ null, %72 ], [ %76, %73 ], !dbg !3499
  br label %80, !dbg !3501

; <label>:79:                                     ; preds = %66
  br label %80, !dbg !3502

; <label>:80:                                     ; preds = %79, %77
  %81 = phi %struct._element* [ %78, %77 ], [ null, %79 ], !dbg !3504
  store %struct._element* %81, %struct._element** %8, align 8, !dbg !3506
  br label %82, !dbg !3507

; <label>:82:                                     ; preds = %184, %80
  %83 = load %struct._element*, %struct._element** %8, align 8, !dbg !3508
  %84 = icmp ne %struct._element* %83, null, !dbg !3511
  br i1 %84, label %85, label %90, !dbg !3512

; <label>:85:                                     ; preds = %82
  %86 = load %struct._element*, %struct._element** %8, align 8, !dbg !3513
  %87 = getelementptr inbounds %struct._element, %struct._element* %86, i32 0, i32 2, !dbg !3515
  %88 = load i8*, i8** %87, align 8, !dbg !3515
  %89 = bitcast i8* %88 to %struct._checker*, !dbg !3516
  store %struct._checker* %89, %struct._checker** %11, align 8, !dbg !3517
  br label %90

; <label>:90:                                     ; preds = %85, %82
  %91 = phi i1 [ false, %82 ], [ true, %85 ]
  br i1 %91, label %92, label %188, !dbg !3518

; <label>:92:                                     ; preds = %90
  %93 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3520
  %94 = getelementptr inbounds %struct._checker, %struct._checker* %93, i32 0, i32 5, !dbg !3523
  %95 = load %struct._real_server*, %struct._real_server** %94, align 8, !dbg !3523
  %96 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !3524
  %97 = icmp ne %struct._real_server* %95, %96, !dbg !3525
  br i1 %97, label %103, label %98, !dbg !3526

; <label>:98:                                     ; preds = %92
  %99 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3527
  %100 = getelementptr inbounds %struct._checker, %struct._checker* %99, i32 0, i32 3, !dbg !3529
  %101 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %100, align 8, !dbg !3529
  %102 = icmp ne i1 (i8*, i8*)* %101, null, !dbg !3527
  br i1 %102, label %104, label %103, !dbg !3530

; <label>:103:                                    ; preds = %98, %92
  br label %184, !dbg !3531

; <label>:104:                                    ; preds = %98
  %105 = load %struct._list*, %struct._list** %7, align 8, !dbg !3532
  %106 = icmp ne %struct._list* %105, null, !dbg !3534
  br i1 %106, label %107, label %117, !dbg !3534

; <label>:107:                                    ; preds = %104
  %108 = load %struct._list*, %struct._list** %7, align 8, !dbg !3535
  %109 = icmp ne %struct._list* %108, null, !dbg !3537
  br i1 %109, label %111, label %110, !dbg !3538

; <label>:110:                                    ; preds = %107
  br label %115, !dbg !3539

; <label>:111:                                    ; preds = %107
  %112 = load %struct._list*, %struct._list** %7, align 8, !dbg !3541
  %113 = getelementptr inbounds %struct._list, %struct._list* %112, i32 0, i32 0, !dbg !3543
  %114 = load %struct._element*, %struct._element** %113, align 8, !dbg !3543
  br label %115, !dbg !3544

; <label>:115:                                    ; preds = %111, %110
  %116 = phi %struct._element* [ null, %110 ], [ %114, %111 ], !dbg !3545
  br label %118, !dbg !3547

; <label>:117:                                    ; preds = %104
  br label %118, !dbg !3548

; <label>:118:                                    ; preds = %117, %115
  %119 = phi %struct._element* [ %116, %115 ], [ null, %117 ], !dbg !3550
  store %struct._element* %119, %struct._element** %9, align 8, !dbg !3552
  br label %120, !dbg !3553

; <label>:120:                                    ; preds = %179, %118
  %121 = load %struct._element*, %struct._element** %9, align 8, !dbg !3554
  %122 = icmp ne %struct._element* %121, null, !dbg !3557
  br i1 %122, label %123, label %128, !dbg !3558

; <label>:123:                                    ; preds = %120
  %124 = load %struct._element*, %struct._element** %9, align 8, !dbg !3559
  %125 = getelementptr inbounds %struct._element, %struct._element* %124, i32 0, i32 2, !dbg !3561
  %126 = load i8*, i8** %125, align 8, !dbg !3561
  %127 = bitcast i8* %126 to %struct._checker*, !dbg !3562
  store %struct._checker* %127, %struct._checker** %10, align 8, !dbg !3563
  br label %128

; <label>:128:                                    ; preds = %123, %120
  %129 = phi i1 [ false, %120 ], [ true, %123 ]
  br i1 %129, label %130, label %183, !dbg !3564

; <label>:130:                                    ; preds = %128
  %131 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3566
  %132 = getelementptr inbounds %struct._checker, %struct._checker* %131, i32 0, i32 3, !dbg !3569
  %133 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %132, align 8, !dbg !3569
  %134 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3570
  %135 = getelementptr inbounds %struct._checker, %struct._checker* %134, i32 0, i32 3, !dbg !3571
  %136 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %135, align 8, !dbg !3571
  %137 = icmp eq i1 (i8*, i8*)* %133, %136, !dbg !3572
  br i1 %137, label %138, label %178, !dbg !3573

; <label>:138:                                    ; preds = %130
  %139 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3574
  %140 = getelementptr inbounds %struct._checker, %struct._checker* %139, i32 0, i32 3, !dbg !3576
  %141 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %140, align 8, !dbg !3576
  %142 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3577
  %143 = bitcast %struct._checker* %142 to i8*, !dbg !3577
  %144 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3578
  %145 = bitcast %struct._checker* %144 to i8*, !dbg !3578
  %146 = call zeroext i1 %141(i8* %143, i8* %145), !dbg !3574
  br i1 %146, label %147, label %178, !dbg !3579

; <label>:147:                                    ; preds = %138
  %148 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3580
  %149 = getelementptr inbounds %struct._checker, %struct._checker* %148, i32 0, i32 8, !dbg !3583
  %150 = load i8, i8* %149, align 1, !dbg !3583
  %151 = trunc i8 %150 to i1, !dbg !3583
  %152 = zext i1 %151 to i32, !dbg !3580
  %153 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3584
  %154 = getelementptr inbounds %struct._checker, %struct._checker* %153, i32 0, i32 8, !dbg !3585
  %155 = load i8, i8* %154, align 1, !dbg !3585
  %156 = trunc i8 %155 to i1, !dbg !3585
  %157 = zext i1 %156 to i32, !dbg !3584
  %158 = icmp ne i32 %152, %157, !dbg !3586
  br i1 %158, label %159, label %165, !dbg !3587

; <label>:159:                                    ; preds = %147
  %160 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3588
  %161 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3589
  %162 = getelementptr inbounds %struct._checker, %struct._checker* %161, i32 0, i32 8, !dbg !3590
  %163 = load i8, i8* %162, align 1, !dbg !3590
  %164 = trunc i8 %163 to i1, !dbg !3590
  call void @set_checker_state(%struct._checker* %160, i1 zeroext %164), !dbg !3591
  br label %165, !dbg !3591

; <label>:165:                                    ; preds = %159, %147
  %166 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3592
  %167 = getelementptr inbounds %struct._checker, %struct._checker* %166, i32 0, i32 9, !dbg !3593
  %168 = load i8, i8* %167, align 2, !dbg !3593
  %169 = trunc i8 %168 to i1, !dbg !3593
  %170 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3594
  %171 = getelementptr inbounds %struct._checker, %struct._checker* %170, i32 0, i32 9, !dbg !3595
  %172 = zext i1 %169 to i8, !dbg !3596
  store i8 %172, i8* %171, align 2, !dbg !3596
  %173 = load %struct._checker*, %struct._checker** %10, align 8, !dbg !3597
  %174 = getelementptr inbounds %struct._checker, %struct._checker* %173, i32 0, i32 16, !dbg !3598
  %175 = load i32, i32* %174, align 8, !dbg !3598
  %176 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !3599
  %177 = getelementptr inbounds %struct._checker, %struct._checker* %176, i32 0, i32 16, !dbg !3600
  store i32 %175, i32* %177, align 8, !dbg !3601
  br label %183, !dbg !3602

; <label>:178:                                    ; preds = %138, %130
  br label %179, !dbg !3603

; <label>:179:                                    ; preds = %178
  %180 = load %struct._element*, %struct._element** %9, align 8, !dbg !3604
  %181 = getelementptr inbounds %struct._element, %struct._element* %180, i32 0, i32 0, !dbg !3606
  %182 = load %struct._element*, %struct._element** %181, align 8, !dbg !3606
  store %struct._element* %182, %struct._element** %9, align 8, !dbg !3607
  br label %120, !dbg !3608, !llvm.loop !3609

; <label>:183:                                    ; preds = %165, %128
  br label %184, !dbg !3611

; <label>:184:                                    ; preds = %183, %103
  %185 = load %struct._element*, %struct._element** %8, align 8, !dbg !3612
  %186 = getelementptr inbounds %struct._element, %struct._element* %185, i32 0, i32 0, !dbg !3614
  %187 = load %struct._element*, %struct._element** %186, align 8, !dbg !3614
  store %struct._element* %187, %struct._element** %8, align 8, !dbg !3615
  br label %82, !dbg !3616, !llvm.loop !3617

; <label>:188:                                    ; preds = %90
  %189 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !3619
  %190 = getelementptr inbounds %struct._real_server, %struct._real_server* %189, i32 0, i32 17, !dbg !3621
  %191 = load i32, i32* %190, align 8, !dbg !3621
  %192 = icmp ne i32 %191, 0, !dbg !3619
  br i1 %192, label %196, label %193, !dbg !3622

; <label>:193:                                    ; preds = %188
  %194 = load %struct._real_server*, %struct._real_server** %5, align 8, !dbg !3623
  %195 = getelementptr inbounds %struct._real_server, %struct._real_server* %194, i32 0, i32 16, !dbg !3624
  store i8 1, i8* %195, align 4, !dbg !3625
  br label %196, !dbg !3626

; <label>:196:                                    ; preds = %193, %188
  br label %197, !dbg !3627

; <label>:197:                                    ; preds = %196, %61, %53
  call void @free_list(%struct._list** %7), !dbg !3628
  ret void, !dbg !3629
}

declare void @free_list(%struct._list**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!168, !169}
!llvm.ident = !{!170}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, globals: !82)
!1 = !DIFile(filename: "[inter]keepalived--check--ipwrapper.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !24}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 57, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "./../include/smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "SMTP_MSG_RS", value: 0)
!28 = !DIEnumerator(name: "SMTP_MSG_VS", value: 1)
!29 = !DIEnumerator(name: "SMTP_MSG_RS_SHUT", value: 2)
!30 = !DIEnumerator(name: "SMTP_MSG_VGROUP", value: 3)
!31 = !DIEnumerator(name: "SMTP_MSG_VRRP", value: 4)
!32 = !{!33, !34, !58}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !36, line: 239, size: 128, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!37 = !{!38, !42, !46, !53}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !35, file: !36, line: 241, baseType: !39, size: 16, align: 16)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !40, line: 28, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!41 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !35, file: !36, line: 242, baseType: !43, size: 16, align: 16, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !36, line: 119, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !45, line: 49, baseType: !41)
!45 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !35, file: !36, line: 243, baseType: !47, size: 32, align: 32, offset: 32)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !36, line: 31, size: 32, align: 32, elements: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !47, file: !36, line: 33, baseType: !50, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !36, line: 30, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 51, baseType: !52)
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !35, file: !36, line: 246, baseType: !54, size: 64, align: 8, offset: 64)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 8, elements: !56)
!55 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !36, line: 254, size: 224, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !81}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !59, file: !36, line: 256, baseType: !39, size: 16, align: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !59, file: !36, line: 257, baseType: !43, size: 16, align: 16, offset: 16)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !59, file: !36, line: 258, baseType: !51, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !59, file: !36, line: 259, baseType: !65, size: 128, align: 32, offset: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !36, line: 211, size: 128, align: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !65, file: !36, line: 220, baseType: !68, size: 128, align: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !36, line: 213, size: 128, align: 32, elements: !69)
!69 = !{!70, !75, !77}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !68, file: !36, line: 215, baseType: !71, size: 128, align: 8)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, align: 8, elements: !73)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !45, line: 48, baseType: !55)
!73 = !{!74}
!74 = !DISubrange(count: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !68, file: !36, line: 217, baseType: !76, size: 128, align: 16)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, align: 16, elements: !56)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !68, file: !36, line: 218, baseType: !78, size: 128, align: 32)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 32, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !59, file: !36, line: 260, baseType: !51, size: 32, align: 32, offset: 192)
!82 = !{!83}
!83 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !84, line: 150, type: !85, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!84 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !86, line: 31, baseType: !87)
!86 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !86, line: 39, size: 320, align: 64, elements: !89)
!89 = !{!90, !97, !98, !99, !103}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !88, file: !86, line: 40, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !86, line: 33, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !86, line: 34, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !92, file: !86, line: 35, baseType: !91, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !92, file: !86, line: 36, baseType: !33, size: 64, align: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !88, file: !86, line: 41, baseType: !91, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !88, file: !86, line: 42, baseType: !52, size: 32, align: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !88, file: !86, line: 43, baseType: !100, size: 64, align: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !33}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !88, file: !86, line: 44, baseType: !104, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !33}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !109, line: 48, baseType: !110)
!109 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !111, line: 241, size: 1728, align: 64, elements: !112)
!111 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!112 = !{!113, !115, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !136, !137, !138, !139, !143, !144, !146, !150, !153, !155, !156, !157, !158, !159, !163, !164}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !110, file: !111, line: 242, baseType: !114, size: 32, align: 32)
!114 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !110, file: !111, line: 247, baseType: !116, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !110, file: !111, line: 248, baseType: !116, size: 64, align: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !110, file: !111, line: 249, baseType: !116, size: 64, align: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !110, file: !111, line: 250, baseType: !116, size: 64, align: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !110, file: !111, line: 251, baseType: !116, size: 64, align: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !110, file: !111, line: 252, baseType: !116, size: 64, align: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !110, file: !111, line: 253, baseType: !116, size: 64, align: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !110, file: !111, line: 254, baseType: !116, size: 64, align: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !110, file: !111, line: 256, baseType: !116, size: 64, align: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !110, file: !111, line: 257, baseType: !116, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !110, file: !111, line: 258, baseType: !116, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !110, file: !111, line: 260, baseType: !129, size: 64, align: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !111, line: 156, size: 192, align: 64, elements: !131)
!131 = !{!132, !133, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !130, file: !111, line: 157, baseType: !129, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !130, file: !111, line: 158, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !130, file: !111, line: 162, baseType: !114, size: 32, align: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !110, file: !111, line: 262, baseType: !134, size: 64, align: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !110, file: !111, line: 264, baseType: !114, size: 32, align: 32, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !110, file: !111, line: 268, baseType: !114, size: 32, align: 32, offset: 928)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !110, file: !111, line: 270, baseType: !140, size: 64, align: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !141, line: 131, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!142 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !110, file: !111, line: 274, baseType: !41, size: 16, align: 16, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !110, file: !111, line: 275, baseType: !145, size: 8, align: 8, offset: 1040)
!145 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !110, file: !111, line: 276, baseType: !147, size: 8, align: 8, offset: 1048)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 8, align: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !110, file: !111, line: 280, baseType: !151, size: 64, align: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !111, line: 150, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !110, file: !111, line: 289, baseType: !154, size: 64, align: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !141, line: 132, baseType: !142)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !110, file: !111, line: 297, baseType: !33, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !110, file: !111, line: 298, baseType: !33, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !110, file: !111, line: 299, baseType: !33, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !110, file: !111, line: 300, baseType: !33, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !110, file: !111, line: 302, baseType: !160, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 216, baseType: !162)
!161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!162 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !110, file: !111, line: 303, baseType: !114, size: 32, align: 32, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !110, file: !111, line: 305, baseType: !165, size: 160, align: 8, offset: 1568)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 160, align: 8, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 20)
!168 = !{i32 2, !"Dwarf Version", i32 4}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!171 = distinct !DISubprogram(name: "clear_services", scope: !172, file: !172, line: 284, type: !173, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!172 = !DIFile(filename: "ipwrapper.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !{}
!176 = !DILocalVariable(name: "e", scope: !171, file: !172, line: 286, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !86, line: 30, baseType: !91)
!178 = !DIExpression()
!179 = !DILocation(line: 286, column: 10, scope: !171)
!180 = !DILocalVariable(name: "vs", scope: !171, file: !172, line: 287, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !183, line: 180, baseType: !184)
!183 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !183, line: 131, size: 2560, align: 64, elements: !185)
!185 = !{!186, !187, !195, !205, !206, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !184, file: !183, line: 132, baseType: !116, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !184, file: !183, line: 133, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !183, line: 128, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !183, line: 124, size: 192, align: 64, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !190, file: !183, line: 125, baseType: !116, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !190, file: !183, line: 126, baseType: !85, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !190, file: !183, line: 127, baseType: !85, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !184, file: !183, line: 134, baseType: !196, size: 1024, align: 64, offset: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !197, line: 166, size: 1024, align: 64, elements: !198)
!197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!198 = !{!199, !200, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !196, file: !197, line: 168, baseType: !39, size: 16, align: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !196, file: !197, line: 169, baseType: !201, size: 944, align: 8, offset: 16)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 944, align: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 118)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !196, file: !197, line: 170, baseType: !162, size: 64, align: 64, offset: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !184, file: !183, line: 135, baseType: !51, size: 32, align: 32, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !184, file: !183, line: 136, baseType: !207, size: 64, align: 64, offset: 1216)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !183, line: 102, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !183, line: 62, size: 1920, align: 64, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !236, !237, !238, !239, !240, !241, !242, !243, !245, !246, !247, !248}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !209, file: !183, line: 63, baseType: !196, size: 1024, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !209, file: !183, line: 64, baseType: !114, size: 32, align: 32, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !209, file: !183, line: 65, baseType: !114, size: 32, align: 32, offset: 1056)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !209, file: !183, line: 66, baseType: !114, size: 32, align: 32, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !209, file: !183, line: 68, baseType: !52, size: 32, align: 32, offset: 1120)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !209, file: !183, line: 69, baseType: !51, size: 32, align: 32, offset: 1152)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !209, file: !183, line: 70, baseType: !51, size: 32, align: 32, offset: 1184)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !209, file: !183, line: 71, baseType: !114, size: 32, align: 32, offset: 1216)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !209, file: !183, line: 74, baseType: !220, size: 64, align: 64, offset: 1280)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !222, line: 65, baseType: !223)
!222 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !222, line: 59, size: 192, align: 64, elements: !224)
!224 = !{!225, !227, !228, !229, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !223, file: !222, line: 60, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !223, file: !222, line: 61, baseType: !114, size: 32, align: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !222, line: 62, baseType: !114, size: 32, align: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !223, file: !222, line: 63, baseType: !230, size: 32, align: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !231, line: 240, baseType: !232)
!231 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !141, line: 125, baseType: !52)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !223, file: !222, line: 64, baseType: !234, size: 32, align: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !231, line: 235, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !141, line: 126, baseType: !52)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !209, file: !183, line: 75, baseType: !220, size: 64, align: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !209, file: !183, line: 76, baseType: !114, size: 32, align: 32, offset: 1408)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !209, file: !183, line: 77, baseType: !162, size: 64, align: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !209, file: !183, line: 78, baseType: !162, size: 64, align: 64, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !209, file: !183, line: 79, baseType: !52, size: 32, align: 32, offset: 1600)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !209, file: !183, line: 80, baseType: !162, size: 64, align: 64, offset: 1664)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !209, file: !183, line: 81, baseType: !114, size: 32, align: 32, offset: 1728)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !209, file: !183, line: 83, baseType: !244, size: 8, align: 8, offset: 1760)
!244 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !209, file: !183, line: 84, baseType: !52, size: 32, align: 32, offset: 1792)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !209, file: !183, line: 85, baseType: !244, size: 8, align: 8, offset: 1824)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !209, file: !183, line: 86, baseType: !244, size: 8, align: 8, offset: 1832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !209, file: !183, line: 87, baseType: !116, size: 64, align: 64, offset: 1856)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !184, file: !183, line: 137, baseType: !44, size: 16, align: 16, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !184, file: !183, line: 138, baseType: !44, size: 16, align: 16, offset: 1296)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !184, file: !183, line: 139, baseType: !244, size: 8, align: 8, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !184, file: !183, line: 140, baseType: !114, size: 32, align: 32, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !184, file: !183, line: 142, baseType: !254, size: 128, align: 8, offset: 1376)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, align: 8, elements: !73)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !183, line: 143, baseType: !51, size: 32, align: 32, offset: 1504)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !184, file: !183, line: 144, baseType: !51, size: 32, align: 32, offset: 1536)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !184, file: !183, line: 146, baseType: !254, size: 128, align: 8, offset: 1568)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !184, file: !183, line: 148, baseType: !52, size: 32, align: 32, offset: 1696)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !184, file: !183, line: 149, baseType: !51, size: 32, align: 32, offset: 1728)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !184, file: !183, line: 151, baseType: !116, size: 64, align: 64, offset: 1792)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !184, file: !183, line: 153, baseType: !114, size: 32, align: 32, offset: 1856)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !184, file: !183, line: 154, baseType: !85, size: 64, align: 64, offset: 1920)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !184, file: !183, line: 155, baseType: !114, size: 32, align: 32, offset: 1984)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !184, file: !183, line: 156, baseType: !244, size: 8, align: 8, offset: 2016)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !184, file: !183, line: 157, baseType: !244, size: 8, align: 8, offset: 2024)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !184, file: !183, line: 158, baseType: !244, size: 8, align: 8, offset: 2032)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !184, file: !183, line: 160, baseType: !162, size: 64, align: 64, offset: 2048)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !184, file: !183, line: 161, baseType: !162, size: 64, align: 64, offset: 2112)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !184, file: !183, line: 162, baseType: !52, size: 32, align: 32, offset: 2176)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !184, file: !183, line: 163, baseType: !162, size: 64, align: 64, offset: 2240)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !184, file: !183, line: 164, baseType: !220, size: 64, align: 64, offset: 2304)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !184, file: !183, line: 165, baseType: !220, size: 64, align: 64, offset: 2368)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !184, file: !183, line: 166, baseType: !52, size: 32, align: 32, offset: 2432)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !184, file: !183, line: 167, baseType: !52, size: 32, align: 32, offset: 2464)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !184, file: !183, line: 168, baseType: !114, size: 32, align: 32, offset: 2496)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !184, file: !183, line: 169, baseType: !244, size: 8, align: 8, offset: 2528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !184, file: !183, line: 170, baseType: !244, size: 8, align: 8, offset: 2536)
!278 = !DILocation(line: 287, column: 20, scope: !171)
!279 = !DILocation(line: 289, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !171, file: !172, line: 289, column: 6)
!281 = !DILocation(line: 289, column: 18, scope: !280)
!282 = !DILocation(line: 289, column: 22, scope: !283)
!283 = !DILexicalBlockFile(scope: !280, file: !172, discriminator: 1)
!284 = !DILocation(line: 289, column: 34, scope: !283)
!285 = !DILocation(line: 289, column: 6, scope: !283)
!286 = !DILocation(line: 290, column: 3, scope: !280)
!287 = !DILocation(line: 292, column: 15, scope: !288)
!288 = distinct !DILexicalBlock(scope: !171, file: !172, line: 292, column: 2)
!289 = !DILocation(line: 292, column: 27, scope: !288)
!290 = !DILocation(line: 292, column: 14, scope: !288)
!291 = !DILocation(line: 292, column: 36, scope: !292)
!292 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 1)
!293 = !DILocation(line: 292, column: 48, scope: !292)
!294 = !DILocation(line: 292, column: 35, scope: !292)
!295 = !DILocation(line: 292, column: 34, scope: !292)
!296 = !DILocation(line: 292, column: 34, scope: !297)
!297 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 2)
!298 = !DILocation(line: 292, column: 4, scope: !299)
!299 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 3)
!300 = !DILocation(line: 292, column: 16, scope: !299)
!301 = !DILocation(line: 292, column: 21, scope: !299)
!302 = !DILocation(line: 292, column: 34, scope: !299)
!303 = !DILocation(line: 292, column: 34, scope: !304)
!304 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 4)
!305 = !DILocation(line: 292, column: 14, scope: !304)
!306 = !DILocation(line: 292, column: 14, scope: !307)
!307 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 5)
!308 = !DILocation(line: 292, column: 14, scope: !309)
!309 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 6)
!310 = !DILocation(line: 292, column: 11, scope: !309)
!311 = !DILocation(line: 292, column: 7, scope: !309)
!312 = !DILocation(line: 292, column: 5, scope: !313)
!313 = !DILexicalBlockFile(scope: !314, file: !172, discriminator: 7)
!314 = distinct !DILexicalBlock(scope: !288, file: !172, line: 292, column: 2)
!315 = !DILocation(line: 292, column: 4, scope: !313)
!316 = !DILocation(line: 292, column: 8, scope: !313)
!317 = !DILocation(line: 292, column: 21, scope: !318)
!318 = !DILexicalBlockFile(scope: !314, file: !172, discriminator: 8)
!319 = !DILocation(line: 292, column: 25, scope: !318)
!320 = !DILocation(line: 292, column: 19, scope: !318)
!321 = !DILocation(line: 292, column: 17, scope: !318)
!322 = !DILocation(line: 292, column: 2, scope: !323)
!323 = !DILexicalBlockFile(scope: !288, file: !172, discriminator: 9)
!324 = !DILocation(line: 296, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !314, file: !172, line: 292, column: 55)
!326 = !DILocation(line: 296, column: 3, scope: !325)
!327 = !DILocation(line: 297, column: 2, scope: !325)
!328 = !DILocation(line: 292, column: 44, scope: !329)
!329 = !DILexicalBlockFile(scope: !314, file: !172, discriminator: 10)
!330 = !DILocation(line: 292, column: 48, scope: !329)
!331 = !DILocation(line: 292, column: 41, scope: !329)
!332 = !DILocation(line: 292, column: 2, scope: !329)
!333 = distinct !{!333, !334}
!334 = !DILocation(line: 292, column: 2, scope: !171)
!335 = !DILocation(line: 298, column: 1, scope: !171)
!336 = distinct !DISubprogram(name: "clear_service_vs", scope: !172, file: !172, line: 254, type: !337, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !181, !244}
!339 = !DILocalVariable(name: "vs", arg: 1, scope: !336, file: !172, line: 254, type: !181)
!340 = !DILocation(line: 254, column: 37, scope: !336)
!341 = !DILocalVariable(name: "stopping", arg: 2, scope: !336, file: !172, line: 254, type: !244)
!342 = !DILocation(line: 254, column: 45, scope: !336)
!343 = !DILocalVariable(name: "sav_inhibit", scope: !336, file: !172, line: 256, type: !244)
!344 = !DILocation(line: 256, column: 6, scope: !336)
!345 = !DILocation(line: 259, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !336, file: !172, line: 259, column: 6)
!347 = !DILocation(line: 259, column: 10, scope: !346)
!348 = !DILocation(line: 259, column: 16, scope: !346)
!349 = !DILocation(line: 259, column: 19, scope: !350)
!350 = !DILexicalBlockFile(scope: !346, file: !172, discriminator: 1)
!351 = !DILocation(line: 259, column: 23, scope: !350)
!352 = !DILocation(line: 259, column: 30, scope: !350)
!353 = !DILocation(line: 259, column: 6, scope: !350)
!354 = !DILocation(line: 261, column: 17, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !172, line: 259, column: 35)
!356 = !DILocation(line: 261, column: 21, scope: !355)
!357 = !DILocation(line: 261, column: 28, scope: !355)
!358 = !DILocation(line: 261, column: 15, scope: !355)
!359 = !DILocation(line: 262, column: 3, scope: !355)
!360 = !DILocation(line: 262, column: 7, scope: !355)
!361 = !DILocation(line: 262, column: 14, scope: !355)
!362 = !DILocation(line: 262, column: 22, scope: !355)
!363 = !DILocation(line: 264, column: 29, scope: !355)
!364 = !DILocation(line: 264, column: 33, scope: !355)
!365 = !DILocation(line: 264, column: 37, scope: !355)
!366 = !DILocation(line: 264, column: 3, scope: !355)
!367 = !DILocation(line: 266, column: 24, scope: !355)
!368 = !DILocation(line: 266, column: 3, scope: !355)
!369 = !DILocation(line: 266, column: 7, scope: !355)
!370 = !DILocation(line: 266, column: 14, scope: !355)
!371 = !DILocation(line: 266, column: 22, scope: !355)
!372 = !DILocation(line: 268, column: 5, scope: !355)
!373 = !DILocation(line: 268, column: 9, scope: !355)
!374 = !DILocation(line: 268, column: 17, scope: !355)
!375 = !DILocation(line: 268, column: 23, scope: !355)
!376 = !DILocation(line: 269, column: 2, scope: !355)
!377 = !DILocation(line: 273, column: 19, scope: !336)
!378 = !DILocation(line: 273, column: 23, scope: !336)
!379 = !DILocation(line: 273, column: 27, scope: !336)
!380 = !DILocation(line: 273, column: 31, scope: !336)
!381 = !DILocation(line: 273, column: 2, scope: !336)
!382 = !DILocation(line: 277, column: 23, scope: !336)
!383 = !DILocation(line: 277, column: 2, scope: !336)
!384 = !DILocation(line: 279, column: 4, scope: !336)
!385 = !DILocation(line: 279, column: 9, scope: !336)
!386 = !DILocation(line: 279, column: 15, scope: !336)
!387 = !DILocation(line: 280, column: 1, scope: !336)
!388 = distinct !DISubprogram(name: "set_quorum_states", scope: !172, file: !172, line: 387, type: !173, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!389 = !DILocalVariable(name: "vs", scope: !388, file: !172, line: 389, type: !181)
!390 = !DILocation(line: 389, column: 20, scope: !388)
!391 = !DILocalVariable(name: "e", scope: !388, file: !172, line: 390, type: !177)
!392 = !DILocation(line: 390, column: 10, scope: !388)
!393 = !DILocation(line: 392, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !172, line: 392, column: 6)
!395 = !DILocation(line: 392, column: 20, scope: !394)
!396 = !DILocation(line: 392, column: 24, scope: !394)
!397 = !DILocation(line: 392, column: 5, scope: !394)
!398 = !DILocation(line: 392, column: 10, scope: !399)
!399 = !DILexicalBlockFile(scope: !394, file: !172, discriminator: 1)
!400 = !DILocation(line: 392, column: 22, scope: !399)
!401 = !DILocation(line: 392, column: 27, scope: !399)
!402 = !DILocation(line: 392, column: 32, scope: !399)
!403 = !DILocation(line: 392, column: 5, scope: !399)
!404 = !DILocation(line: 392, column: 9, scope: !405)
!405 = !DILexicalBlockFile(scope: !394, file: !172, discriminator: 2)
!406 = !DILocation(line: 392, column: 21, scope: !405)
!407 = !DILocation(line: 392, column: 26, scope: !405)
!408 = !DILocation(line: 392, column: 31, scope: !405)
!409 = !DILocation(line: 392, column: 6, scope: !405)
!410 = !DILocation(line: 393, column: 3, scope: !394)
!411 = !DILocation(line: 395, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !388, file: !172, line: 395, column: 2)
!413 = !DILocation(line: 395, column: 26, scope: !412)
!414 = !DILocation(line: 395, column: 13, scope: !412)
!415 = !DILocation(line: 395, column: 12, scope: !412)
!416 = !DILocation(line: 395, column: 12, scope: !417)
!417 = !DILexicalBlockFile(scope: !412, file: !172, discriminator: 1)
!418 = !DILocation(line: 395, column: 13, scope: !419)
!419 = !DILexicalBlockFile(scope: !412, file: !172, discriminator: 2)
!420 = !DILocation(line: 395, column: 25, scope: !419)
!421 = !DILocation(line: 395, column: 30, scope: !419)
!422 = !DILocation(line: 395, column: 12, scope: !419)
!423 = !DILocation(line: 395, column: 12, scope: !424)
!424 = !DILexicalBlockFile(scope: !412, file: !172, discriminator: 3)
!425 = !DILocation(line: 395, column: 9, scope: !424)
!426 = !DILocation(line: 395, column: 7, scope: !424)
!427 = !DILocation(line: 395, column: 37, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !172, discriminator: 4)
!429 = distinct !DILexicalBlock(scope: !412, file: !172, line: 395, column: 2)
!430 = !DILocation(line: 395, column: 2, scope: !428)
!431 = !DILocation(line: 396, column: 10, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !172, line: 395, column: 59)
!433 = !DILocation(line: 396, column: 14, scope: !432)
!434 = !DILocation(line: 396, column: 8, scope: !432)
!435 = !DILocation(line: 396, column: 6, scope: !432)
!436 = !DILocation(line: 398, column: 49, scope: !432)
!437 = !DILocation(line: 398, column: 26, scope: !432)
!438 = !DILocation(line: 398, column: 56, scope: !432)
!439 = !DILocation(line: 398, column: 60, scope: !432)
!440 = !DILocation(line: 398, column: 69, scope: !432)
!441 = !DILocation(line: 398, column: 73, scope: !432)
!442 = !DILocation(line: 398, column: 67, scope: !432)
!443 = !DILocation(line: 398, column: 53, scope: !432)
!444 = !DILocation(line: 398, column: 3, scope: !432)
!445 = !DILocation(line: 398, column: 7, scope: !432)
!446 = !DILocation(line: 398, column: 23, scope: !432)
!447 = !DILocation(line: 399, column: 2, scope: !432)
!448 = !DILocation(line: 395, column: 48, scope: !449)
!449 = !DILexicalBlockFile(scope: !429, file: !172, discriminator: 5)
!450 = !DILocation(line: 395, column: 52, scope: !449)
!451 = !DILocation(line: 395, column: 45, scope: !449)
!452 = !DILocation(line: 395, column: 2, scope: !449)
!453 = distinct !{!453, !454}
!454 = !DILocation(line: 395, column: 2, scope: !388)
!455 = !DILocation(line: 400, column: 1, scope: !388)
!456 = distinct !DISubprogram(name: "weigh_live_realservers", scope: !172, file: !172, line: 41, type: !457, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!457 = !DISubroutineType(types: !458)
!458 = !{!162, !181}
!459 = !DILocalVariable(name: "vs", arg: 1, scope: !456, file: !172, line: 41, type: !181)
!460 = !DILocation(line: 41, column: 43, scope: !456)
!461 = !DILocalVariable(name: "e", scope: !456, file: !172, line: 43, type: !177)
!462 = !DILocation(line: 43, column: 10, scope: !456)
!463 = !DILocalVariable(name: "svr", scope: !456, file: !172, line: 44, type: !207)
!464 = !DILocation(line: 44, column: 17, scope: !456)
!465 = !DILocalVariable(name: "count", scope: !456, file: !172, line: 45, type: !142)
!466 = !DILocation(line: 45, column: 7, scope: !456)
!467 = !DILocation(line: 47, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !456, file: !172, line: 47, column: 2)
!469 = !DILocation(line: 47, column: 18, scope: !468)
!470 = !DILocation(line: 47, column: 13, scope: !468)
!471 = !DILocation(line: 47, column: 12, scope: !468)
!472 = !DILocation(line: 47, column: 12, scope: !473)
!473 = !DILexicalBlockFile(scope: !468, file: !172, discriminator: 1)
!474 = !DILocation(line: 47, column: 13, scope: !475)
!475 = !DILexicalBlockFile(scope: !468, file: !172, discriminator: 2)
!476 = !DILocation(line: 47, column: 17, scope: !475)
!477 = !DILocation(line: 47, column: 22, scope: !475)
!478 = !DILocation(line: 47, column: 12, scope: !475)
!479 = !DILocation(line: 47, column: 12, scope: !480)
!480 = !DILexicalBlockFile(scope: !468, file: !172, discriminator: 3)
!481 = !DILocation(line: 47, column: 9, scope: !480)
!482 = !DILocation(line: 47, column: 7, scope: !480)
!483 = !DILocation(line: 47, column: 29, scope: !484)
!484 = !DILexicalBlockFile(scope: !485, file: !172, discriminator: 4)
!485 = distinct !DILexicalBlock(scope: !468, file: !172, line: 47, column: 2)
!486 = !DILocation(line: 47, column: 2, scope: !484)
!487 = !DILocation(line: 48, column: 11, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !172, line: 47, column: 51)
!489 = !DILocation(line: 48, column: 15, scope: !488)
!490 = !DILocation(line: 48, column: 9, scope: !488)
!491 = !DILocation(line: 48, column: 7, scope: !488)
!492 = !DILocation(line: 49, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !172, line: 49, column: 7)
!494 = !DILocation(line: 49, column: 15, scope: !493)
!495 = !DILocation(line: 49, column: 7, scope: !488)
!496 = !DILocation(line: 50, column: 13, scope: !493)
!497 = !DILocation(line: 50, column: 18, scope: !493)
!498 = !DILocation(line: 50, column: 10, scope: !493)
!499 = !DILocation(line: 50, column: 4, scope: !493)
!500 = !DILocation(line: 51, column: 2, scope: !488)
!501 = !DILocation(line: 47, column: 40, scope: !502)
!502 = !DILexicalBlockFile(scope: !485, file: !172, discriminator: 5)
!503 = !DILocation(line: 47, column: 44, scope: !502)
!504 = !DILocation(line: 47, column: 37, scope: !502)
!505 = !DILocation(line: 47, column: 2, scope: !502)
!506 = distinct !{!506, !507}
!507 = !DILocation(line: 47, column: 2, scope: !456)
!508 = !DILocation(line: 52, column: 9, scope: !456)
!509 = !DILocation(line: 52, column: 2, scope: !456)
!510 = distinct !DISubprogram(name: "init_services", scope: !172, file: !172, line: 551, type: !511, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!511 = !DISubroutineType(types: !512)
!512 = !{!244}
!513 = !DILocalVariable(name: "e", scope: !510, file: !172, line: 553, type: !177)
!514 = !DILocation(line: 553, column: 10, scope: !510)
!515 = !DILocalVariable(name: "vs", scope: !510, file: !172, line: 554, type: !181)
!516 = !DILocation(line: 554, column: 20, scope: !510)
!517 = !DILocation(line: 556, column: 15, scope: !518)
!518 = distinct !DILexicalBlock(scope: !510, file: !172, line: 556, column: 2)
!519 = !DILocation(line: 556, column: 27, scope: !518)
!520 = !DILocation(line: 556, column: 14, scope: !518)
!521 = !DILocation(line: 556, column: 36, scope: !522)
!522 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 1)
!523 = !DILocation(line: 556, column: 48, scope: !522)
!524 = !DILocation(line: 556, column: 35, scope: !522)
!525 = !DILocation(line: 556, column: 34, scope: !522)
!526 = !DILocation(line: 556, column: 34, scope: !527)
!527 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 2)
!528 = !DILocation(line: 556, column: 4, scope: !529)
!529 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 3)
!530 = !DILocation(line: 556, column: 16, scope: !529)
!531 = !DILocation(line: 556, column: 21, scope: !529)
!532 = !DILocation(line: 556, column: 34, scope: !529)
!533 = !DILocation(line: 556, column: 34, scope: !534)
!534 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 4)
!535 = !DILocation(line: 556, column: 14, scope: !534)
!536 = !DILocation(line: 556, column: 14, scope: !537)
!537 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 5)
!538 = !DILocation(line: 556, column: 14, scope: !539)
!539 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 6)
!540 = !DILocation(line: 556, column: 11, scope: !539)
!541 = !DILocation(line: 556, column: 7, scope: !539)
!542 = !DILocation(line: 556, column: 5, scope: !543)
!543 = !DILexicalBlockFile(scope: !544, file: !172, discriminator: 7)
!544 = distinct !DILexicalBlock(scope: !518, file: !172, line: 556, column: 2)
!545 = !DILocation(line: 556, column: 4, scope: !543)
!546 = !DILocation(line: 556, column: 8, scope: !543)
!547 = !DILocation(line: 556, column: 21, scope: !548)
!548 = !DILexicalBlockFile(scope: !544, file: !172, discriminator: 8)
!549 = !DILocation(line: 556, column: 25, scope: !548)
!550 = !DILocation(line: 556, column: 19, scope: !548)
!551 = !DILocation(line: 556, column: 17, scope: !548)
!552 = !DILocation(line: 556, column: 2, scope: !553)
!553 = !DILexicalBlockFile(scope: !518, file: !172, discriminator: 9)
!554 = !DILocation(line: 557, column: 24, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !172, line: 557, column: 7)
!556 = distinct !DILexicalBlock(scope: !544, file: !172, line: 556, column: 55)
!557 = !DILocation(line: 557, column: 8, scope: !555)
!558 = !DILocation(line: 557, column: 7, scope: !556)
!559 = !DILocation(line: 558, column: 4, scope: !555)
!560 = !DILocation(line: 559, column: 2, scope: !556)
!561 = !DILocation(line: 556, column: 44, scope: !562)
!562 = !DILexicalBlockFile(scope: !544, file: !172, discriminator: 10)
!563 = !DILocation(line: 556, column: 48, scope: !562)
!564 = !DILocation(line: 556, column: 41, scope: !562)
!565 = !DILocation(line: 556, column: 2, scope: !562)
!566 = distinct !{!566, !567}
!567 = !DILocation(line: 556, column: 2, scope: !510)
!568 = !DILocation(line: 561, column: 2, scope: !510)
!569 = !DILocation(line: 562, column: 1, scope: !510)
!570 = distinct !DISubprogram(name: "init_service_vs", scope: !172, file: !172, line: 515, type: !571, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!571 = !DISubroutineType(types: !572)
!572 = !{!244, !181}
!573 = !DILocalVariable(name: "vs", arg: 1, scope: !570, file: !172, line: 515, type: !181)
!574 = !DILocation(line: 515, column: 36, scope: !570)
!575 = !DILocation(line: 518, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !172, line: 518, column: 6)
!577 = !DILocation(line: 518, column: 14, scope: !576)
!578 = !DILocation(line: 518, column: 7, scope: !576)
!579 = !DILocation(line: 518, column: 21, scope: !576)
!580 = !DILocation(line: 518, column: 24, scope: !581)
!581 = !DILexicalBlockFile(scope: !576, file: !172, discriminator: 1)
!582 = !DILocation(line: 518, column: 28, scope: !581)
!583 = !DILocation(line: 518, column: 6, scope: !581)
!584 = !DILocation(line: 519, column: 24, scope: !585)
!585 = distinct !DILexicalBlock(scope: !576, file: !172, line: 518, column: 33)
!586 = !DILocation(line: 519, column: 3, scope: !585)
!587 = !DILocation(line: 520, column: 5, scope: !585)
!588 = !DILocation(line: 520, column: 10, scope: !585)
!589 = !DILocation(line: 520, column: 16, scope: !585)
!590 = !DILocation(line: 521, column: 2, scope: !585)
!591 = !DILocation(line: 524, column: 23, scope: !592)
!592 = distinct !DILexicalBlock(scope: !570, file: !172, line: 524, column: 6)
!593 = !DILocation(line: 524, column: 7, scope: !592)
!594 = !DILocation(line: 524, column: 6, scope: !570)
!595 = !DILocation(line: 525, column: 3, scope: !592)
!596 = !DILocation(line: 527, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !570, file: !172, line: 527, column: 6)
!598 = !DILocation(line: 527, column: 10, scope: !597)
!599 = !DILocation(line: 527, column: 19, scope: !597)
!600 = !DILocation(line: 527, column: 22, scope: !601)
!601 = !DILexicalBlockFile(scope: !597, file: !172, discriminator: 1)
!602 = !DILocation(line: 527, column: 26, scope: !601)
!603 = !DILocation(line: 527, column: 6, scope: !601)
!604 = !DILocation(line: 529, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !172, line: 527, column: 35)
!606 = !DILocation(line: 529, column: 3, scope: !605)
!607 = !DILocation(line: 530, column: 2, scope: !605)
!608 = !DILocation(line: 534, column: 22, scope: !570)
!609 = !DILocation(line: 534, column: 2, scope: !570)
!610 = !DILocation(line: 537, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !570, file: !172, line: 537, column: 6)
!612 = !DILocation(line: 537, column: 10, scope: !611)
!613 = !DILocation(line: 537, column: 16, scope: !611)
!614 = !DILocation(line: 537, column: 19, scope: !615)
!615 = !DILexicalBlockFile(scope: !611, file: !172, discriminator: 1)
!616 = !DILocation(line: 537, column: 23, scope: !615)
!617 = !DILocation(line: 537, column: 30, scope: !615)
!618 = !DILocation(line: 537, column: 38, scope: !615)
!619 = !DILocation(line: 537, column: 42, scope: !620)
!620 = !DILexicalBlockFile(scope: !611, file: !172, discriminator: 2)
!621 = !DILocation(line: 537, column: 46, scope: !620)
!622 = !DILocation(line: 537, column: 53, scope: !620)
!623 = !DILocation(line: 537, column: 6, scope: !620)
!624 = !DILocation(line: 539, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !611, file: !172, line: 537, column: 58)
!626 = !DILocation(line: 539, column: 7, scope: !625)
!627 = !DILocation(line: 539, column: 14, scope: !625)
!628 = !DILocation(line: 539, column: 34, scope: !625)
!629 = !DILocation(line: 541, column: 29, scope: !625)
!630 = !DILocation(line: 541, column: 33, scope: !625)
!631 = !DILocation(line: 541, column: 37, scope: !625)
!632 = !DILocation(line: 541, column: 3, scope: !625)
!633 = !DILocation(line: 543, column: 3, scope: !625)
!634 = !DILocation(line: 543, column: 7, scope: !625)
!635 = !DILocation(line: 543, column: 14, scope: !625)
!636 = !DILocation(line: 543, column: 34, scope: !625)
!637 = !DILocation(line: 544, column: 2, scope: !625)
!638 = !DILocation(line: 546, column: 2, scope: !570)
!639 = !DILocation(line: 547, column: 1, scope: !570)
!640 = distinct !DISubprogram(name: "update_svr_wgt", scope: !172, file: !172, line: 566, type: !641, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !114, !181, !207, !244}
!643 = !DILocalVariable(name: "weight", arg: 1, scope: !640, file: !172, line: 566, type: !114)
!644 = !DILocation(line: 566, column: 20, scope: !640)
!645 = !DILocalVariable(name: "vs", arg: 2, scope: !640, file: !172, line: 566, type: !181)
!646 = !DILocation(line: 566, column: 47, scope: !640)
!647 = !DILocalVariable(name: "rs", arg: 3, scope: !640, file: !172, line: 566, type: !207)
!648 = !DILocation(line: 566, column: 67, scope: !640)
!649 = !DILocalVariable(name: "update_quorum", arg: 4, scope: !640, file: !172, line: 567, type: !244)
!650 = !DILocation(line: 567, column: 9, scope: !640)
!651 = !DILocation(line: 569, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !640, file: !172, line: 569, column: 6)
!653 = !DILocation(line: 569, column: 16, scope: !652)
!654 = !DILocation(line: 569, column: 20, scope: !652)
!655 = !DILocation(line: 569, column: 13, scope: !652)
!656 = !DILocation(line: 569, column: 6, scope: !640)
!657 = !DILocation(line: 571, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !652, file: !172, line: 569, column: 28)
!659 = !DILocation(line: 571, column: 15, scope: !658)
!660 = !DILocation(line: 572, column: 11, scope: !658)
!661 = !DILocation(line: 573, column: 13, scope: !658)
!662 = !DILocation(line: 573, column: 18, scope: !658)
!663 = !DILocation(line: 573, column: 11, scope: !658)
!664 = !DILocation(line: 574, column: 35, scope: !658)
!665 = !DILocation(line: 574, column: 40, scope: !658)
!666 = !DILocation(line: 574, column: 47, scope: !658)
!667 = !DILocation(line: 574, column: 52, scope: !658)
!668 = !DILocation(line: 574, column: 12, scope: !658)
!669 = !DILocation(line: 575, column: 23, scope: !658)
!670 = !DILocation(line: 575, column: 12, scope: !658)
!671 = !DILocation(line: 570, column: 3, scope: !658)
!672 = !DILocation(line: 576, column: 16, scope: !658)
!673 = !DILocation(line: 576, column: 3, scope: !658)
!674 = !DILocation(line: 576, column: 7, scope: !658)
!675 = !DILocation(line: 576, column: 14, scope: !658)
!676 = !DILocation(line: 583, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !658, file: !172, line: 583, column: 7)
!678 = !DILocation(line: 583, column: 11, scope: !677)
!679 = !DILocation(line: 583, column: 15, scope: !677)
!680 = !DILocation(line: 583, column: 20, scope: !681)
!681 = !DILexicalBlockFile(scope: !677, file: !172, discriminator: 1)
!682 = !DILocation(line: 583, column: 25, scope: !681)
!683 = !DILocation(line: 583, column: 32, scope: !681)
!684 = !DILocation(line: 584, column: 8, scope: !677)
!685 = !DILocation(line: 584, column: 12, scope: !677)
!686 = !DILocation(line: 584, column: 28, scope: !677)
!687 = !DILocation(line: 584, column: 32, scope: !681)
!688 = !DILocation(line: 584, column: 36, scope: !681)
!689 = !DILocation(line: 584, column: 42, scope: !681)
!690 = !DILocation(line: 584, column: 48, scope: !691)
!691 = !DILexicalBlockFile(scope: !677, file: !172, discriminator: 2)
!692 = !DILocation(line: 584, column: 52, scope: !691)
!693 = !DILocation(line: 584, column: 60, scope: !691)
!694 = !DILocation(line: 583, column: 7, scope: !695)
!695 = !DILexicalBlockFile(scope: !658, file: !172, discriminator: 2)
!696 = !DILocation(line: 585, column: 31, scope: !677)
!697 = !DILocation(line: 585, column: 35, scope: !677)
!698 = !DILocation(line: 585, column: 4, scope: !677)
!699 = !DILocation(line: 586, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !658, file: !172, line: 586, column: 7)
!701 = !DILocation(line: 586, column: 7, scope: !658)
!702 = !DILocation(line: 587, column: 24, scope: !700)
!703 = !DILocation(line: 587, column: 4, scope: !700)
!704 = !DILocation(line: 588, column: 2, scope: !658)
!705 = !DILocation(line: 589, column: 1, scope: !640)
!706 = distinct !DISubprogram(name: "update_quorum_state", scope: !172, file: !172, line: 404, type: !337, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!707 = !DILocalVariable(name: "vs", arg: 1, scope: !706, file: !172, line: 404, type: !181)
!708 = !DILocation(line: 404, column: 40, scope: !706)
!709 = !DILocalVariable(name: "init", arg: 2, scope: !706, file: !172, line: 404, type: !244)
!710 = !DILocation(line: 404, column: 48, scope: !706)
!711 = !DILocalVariable(name: "weight_sum", scope: !706, file: !172, line: 406, type: !142)
!712 = !DILocation(line: 406, column: 7, scope: !706)
!713 = !DILocation(line: 406, column: 43, scope: !706)
!714 = !DILocation(line: 406, column: 20, scope: !706)
!715 = !DILocalVariable(name: "threshold", scope: !706, file: !172, line: 407, type: !142)
!716 = !DILocation(line: 407, column: 7, scope: !706)
!717 = !DILocation(line: 409, column: 14, scope: !706)
!718 = !DILocation(line: 409, column: 18, scope: !706)
!719 = !DILocation(line: 409, column: 28, scope: !706)
!720 = !DILocation(line: 409, column: 32, scope: !706)
!721 = !DILocation(line: 409, column: 60, scope: !706)
!722 = !DILocation(line: 409, column: 64, scope: !706)
!723 = !DILocation(line: 409, column: 58, scope: !706)
!724 = !DILocation(line: 409, column: 25, scope: !706)
!725 = !DILocation(line: 409, column: 12, scope: !706)
!726 = !DILocation(line: 412, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !706, file: !172, line: 412, column: 6)
!728 = !DILocation(line: 412, column: 11, scope: !727)
!729 = !DILocation(line: 412, column: 27, scope: !727)
!730 = !DILocation(line: 413, column: 6, scope: !727)
!731 = !DILocation(line: 413, column: 20, scope: !727)
!732 = !DILocation(line: 413, column: 17, scope: !727)
!733 = !DILocation(line: 412, column: 6, scope: !734)
!734 = !DILexicalBlockFile(scope: !706, file: !172, discriminator: 1)
!735 = !DILocation(line: 414, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !727, file: !172, line: 413, column: 31)
!737 = !DILocation(line: 414, column: 7, scope: !736)
!738 = !DILocation(line: 414, column: 23, scope: !736)
!739 = !DILocation(line: 416, column: 11, scope: !736)
!740 = !DILocation(line: 416, column: 15, scope: !736)
!741 = !DILocation(line: 417, column: 11, scope: !736)
!742 = !DILocation(line: 417, column: 15, scope: !736)
!743 = !DILocation(line: 418, column: 11, scope: !736)
!744 = !DILocation(line: 419, column: 11, scope: !736)
!745 = !DILocation(line: 420, column: 23, scope: !736)
!746 = !DILocation(line: 420, column: 12, scope: !736)
!747 = !DILocation(line: 415, column: 3, scope: !736)
!748 = !DILocation(line: 421, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !736, file: !172, line: 421, column: 7)
!750 = !DILocation(line: 421, column: 11, scope: !749)
!751 = !DILocation(line: 421, column: 17, scope: !749)
!752 = !DILocation(line: 421, column: 22, scope: !753)
!753 = !DILexicalBlockFile(scope: !749, file: !172, discriminator: 1)
!754 = !DILocation(line: 421, column: 26, scope: !753)
!755 = !DILocation(line: 421, column: 34, scope: !753)
!756 = !DILocation(line: 421, column: 7, scope: !753)
!757 = !DILocation(line: 423, column: 25, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !172, line: 421, column: 42)
!759 = !DILocation(line: 423, column: 4, scope: !758)
!760 = !DILocation(line: 426, column: 13, scope: !758)
!761 = !DILocation(line: 426, column: 17, scope: !758)
!762 = !DILocation(line: 426, column: 24, scope: !758)
!763 = !DILocation(line: 427, column: 36, scope: !758)
!764 = !DILocation(line: 427, column: 40, scope: !758)
!765 = !DILocation(line: 427, column: 48, scope: !758)
!766 = !DILocation(line: 427, column: 55, scope: !758)
!767 = !DILocation(line: 427, column: 60, scope: !758)
!768 = !DILocation(line: 427, column: 13, scope: !758)
!769 = !DILocation(line: 428, column: 24, scope: !758)
!770 = !DILocation(line: 428, column: 13, scope: !758)
!771 = !DILocation(line: 425, column: 4, scope: !758)
!772 = !DILocation(line: 430, column: 30, scope: !758)
!773 = !DILocation(line: 430, column: 34, scope: !758)
!774 = !DILocation(line: 430, column: 38, scope: !758)
!775 = !DILocation(line: 430, column: 4, scope: !758)
!776 = !DILocation(line: 431, column: 4, scope: !758)
!777 = !DILocation(line: 431, column: 8, scope: !758)
!778 = !DILocation(line: 431, column: 15, scope: !758)
!779 = !DILocation(line: 431, column: 21, scope: !758)
!780 = !DILocation(line: 432, column: 3, scope: !758)
!781 = !DILocation(line: 434, column: 18, scope: !736)
!782 = !DILocation(line: 434, column: 22, scope: !736)
!783 = !DILocation(line: 434, column: 28, scope: !736)
!784 = !DILocation(line: 434, column: 39, scope: !736)
!785 = !DILocation(line: 434, column: 3, scope: !736)
!786 = !DILocation(line: 436, column: 3, scope: !736)
!787 = !DILocation(line: 438, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !727, file: !172, line: 438, column: 11)
!789 = !DILocation(line: 438, column: 16, scope: !788)
!790 = !DILocation(line: 438, column: 32, scope: !788)
!791 = !DILocation(line: 439, column: 7, scope: !788)
!792 = !DILocation(line: 439, column: 18, scope: !788)
!793 = !DILocation(line: 439, column: 21, scope: !794)
!794 = !DILexicalBlockFile(scope: !788, file: !172, discriminator: 1)
!795 = !DILocation(line: 439, column: 34, scope: !794)
!796 = !DILocation(line: 439, column: 32, scope: !794)
!797 = !DILocation(line: 439, column: 46, scope: !794)
!798 = !DILocation(line: 440, column: 5, scope: !788)
!799 = !DILocation(line: 440, column: 10, scope: !788)
!800 = !DILocation(line: 440, column: 14, scope: !794)
!801 = !DILocation(line: 440, column: 18, scope: !794)
!802 = !DILocation(line: 440, column: 34, scope: !794)
!803 = !DILocation(line: 441, column: 5, scope: !788)
!804 = !DILocation(line: 441, column: 9, scope: !788)
!805 = !DILocation(line: 441, column: 15, scope: !788)
!806 = !DILocation(line: 441, column: 21, scope: !794)
!807 = !DILocation(line: 441, column: 25, scope: !794)
!808 = !DILocation(line: 441, column: 33, scope: !794)
!809 = !DILocation(line: 438, column: 11, scope: !810)
!810 = !DILexicalBlockFile(scope: !727, file: !172, discriminator: 1)
!811 = !DILocation(line: 447, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !788, file: !172, line: 441, column: 42)
!813 = !DILocation(line: 447, column: 7, scope: !812)
!814 = !DILocation(line: 447, column: 23, scope: !812)
!815 = !DILocation(line: 449, column: 11, scope: !812)
!816 = !DILocation(line: 450, column: 11, scope: !812)
!817 = !DILocation(line: 450, column: 15, scope: !812)
!818 = !DILocation(line: 451, column: 11, scope: !812)
!819 = !DILocation(line: 451, column: 15, scope: !812)
!820 = !DILocation(line: 452, column: 11, scope: !812)
!821 = !DILocation(line: 453, column: 11, scope: !812)
!822 = !DILocation(line: 454, column: 23, scope: !812)
!823 = !DILocation(line: 454, column: 12, scope: !812)
!824 = !DILocation(line: 448, column: 3, scope: !812)
!825 = !DILocation(line: 456, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !812, file: !172, line: 456, column: 7)
!827 = !DILocation(line: 456, column: 11, scope: !826)
!828 = !DILocation(line: 456, column: 17, scope: !826)
!829 = !DILocation(line: 456, column: 23, scope: !830)
!830 = !DILexicalBlockFile(scope: !826, file: !172, discriminator: 1)
!831 = !DILocation(line: 456, column: 27, scope: !830)
!832 = !DILocation(line: 456, column: 35, scope: !830)
!833 = !DILocation(line: 456, column: 7, scope: !830)
!834 = !DILocation(line: 458, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !172, line: 456, column: 43)
!836 = !DILocation(line: 458, column: 17, scope: !835)
!837 = !DILocation(line: 458, column: 24, scope: !835)
!838 = !DILocation(line: 459, column: 36, scope: !835)
!839 = !DILocation(line: 459, column: 40, scope: !835)
!840 = !DILocation(line: 459, column: 48, scope: !835)
!841 = !DILocation(line: 459, column: 55, scope: !835)
!842 = !DILocation(line: 459, column: 60, scope: !835)
!843 = !DILocation(line: 459, column: 13, scope: !835)
!844 = !DILocation(line: 460, column: 24, scope: !835)
!845 = !DILocation(line: 460, column: 13, scope: !835)
!846 = !DILocation(line: 457, column: 4, scope: !835)
!847 = !DILocation(line: 463, column: 30, scope: !835)
!848 = !DILocation(line: 463, column: 34, scope: !835)
!849 = !DILocation(line: 463, column: 38, scope: !835)
!850 = !DILocation(line: 463, column: 4, scope: !835)
!851 = !DILocation(line: 464, column: 4, scope: !835)
!852 = !DILocation(line: 464, column: 8, scope: !835)
!853 = !DILocation(line: 464, column: 15, scope: !835)
!854 = !DILocation(line: 464, column: 21, scope: !835)
!855 = !DILocation(line: 467, column: 25, scope: !835)
!856 = !DILocation(line: 467, column: 4, scope: !835)
!857 = !DILocation(line: 468, column: 3, scope: !835)
!858 = !DILocation(line: 470, column: 18, scope: !812)
!859 = !DILocation(line: 470, column: 22, scope: !812)
!860 = !DILocation(line: 470, column: 28, scope: !812)
!861 = !DILocation(line: 470, column: 39, scope: !812)
!862 = !DILocation(line: 470, column: 3, scope: !812)
!863 = !DILocation(line: 471, column: 2, scope: !812)
!864 = !DILocation(line: 472, column: 1, scope: !706)
!865 = distinct !DISubprogram(name: "set_checker_state", scope: !172, file: !172, line: 592, type: !866, isLocal: false, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868, !244}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !870, line: 60, baseType: !871)
!870 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !870, line: 40, size: 1024, align: 64, elements: !872)
!872 = !{!873, !874, !875, !971, !975, !976, !977, !978, !979, !980, !981, !992, !993, !994, !995, !996, !997, !998, !999}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !871, file: !870, line: 41, baseType: !100, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !871, file: !870, line: 42, baseType: !104, size: 64, align: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !871, file: !870, line: 43, baseType: !876, size: 64, align: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64, align: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!114, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64, align: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !881)
!881 = !{!882, !883, !885, !940, !941, !942, !952, !964, !966}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !880, file: !4, line: 79, baseType: !162, size: 64, align: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !880, file: !4, line: 80, baseType: !884, size: 32, align: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !880, file: !4, line: 81, baseType: !886, size: 64, align: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !888)
!888 = !{!889, !901, !902, !903, !904, !912, !913, !914, !915, !916, !919, !932, !933, !934, !935, !936, !937, !938, !939}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !887, file: !4, line: 113, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !891, line: 109, baseType: !892)
!891 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !891, line: 106, size: 64, align: 64, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !892, file: !891, line: 108, baseType: !895, size: 64, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !891, line: 97, size: 192, align: 64, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !896, file: !891, line: 99, baseType: !162, size: 64, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !896, file: !891, line: 102, baseType: !895, size: 64, align: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !896, file: !891, line: 103, baseType: !895, size: 64, align: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !887, file: !4, line: 114, baseType: !890, size: 64, align: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !887, file: !4, line: 115, baseType: !890, size: 64, align: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !887, file: !4, line: 116, baseType: !890, size: 64, align: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !887, file: !4, line: 117, baseType: !905, size: 128, align: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !906, line: 62, baseType: !907)
!906 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !906, line: 60, size: 128, align: 64, elements: !908)
!908 = !{!909, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !907, file: !906, line: 61, baseType: !910, size: 64, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !907, file: !906, line: 61, baseType: !910, size: 64, align: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !887, file: !4, line: 121, baseType: !905, size: 128, align: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !887, file: !4, line: 122, baseType: !905, size: 128, align: 64, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !887, file: !4, line: 124, baseType: !85, size: 64, align: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !887, file: !4, line: 127, baseType: !890, size: 64, align: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !887, file: !4, line: 128, baseType: !917, size: 64, align: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, align: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !887, file: !4, line: 129, baseType: !920, size: 64, align: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !923)
!923 = !{!924, !927, !928, !929, !930}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !922, file: !4, line: 103, baseType: !925, size: 64, align: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !880)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !922, file: !4, line: 104, baseType: !925, size: 64, align: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !4, line: 105, baseType: !162, size: 64, align: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !922, file: !4, line: 106, baseType: !114, size: 32, align: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !922, file: !4, line: 108, baseType: !931, size: 192, align: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !891, line: 104, baseType: !896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !887, file: !4, line: 130, baseType: !52, size: 32, align: 32, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !887, file: !4, line: 131, baseType: !52, size: 32, align: 32, offset: 928)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !887, file: !4, line: 132, baseType: !114, size: 32, align: 32, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !887, file: !4, line: 135, baseType: !114, size: 32, align: 32, offset: 992)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !887, file: !4, line: 136, baseType: !925, size: 64, align: 64, offset: 1024)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !887, file: !4, line: 146, baseType: !162, size: 64, align: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !887, file: !4, line: 147, baseType: !162, size: 64, align: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !887, file: !4, line: 148, baseType: !244, size: 8, align: 8, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !880, file: !4, line: 82, baseType: !876, size: 64, align: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !880, file: !4, line: 83, baseType: !33, size: 64, align: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !880, file: !4, line: 84, baseType: !943, size: 128, align: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !944, line: 31, baseType: !945)
!944 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !946, line: 30, size: 128, align: 64, elements: !947)
!946 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!947 = !{!948, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !945, file: !946, line: 32, baseType: !949, size: 64, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !141, line: 139, baseType: !142)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !945, file: !946, line: 33, baseType: !951, size: 64, align: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !141, line: 141, baseType: !142)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !880, file: !4, line: 92, baseType: !953, size: 64, align: 32, offset: 448)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !4, line: 85, size: 64, align: 32, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !953, file: !4, line: 86, baseType: !114, size: 32, align: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !953, file: !4, line: 87, baseType: !114, size: 32, align: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !953, file: !4, line: 91, baseType: !958, size: 64, align: 32)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !4, line: 88, size: 64, align: 32, elements: !959)
!959 = !{!960, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !958, file: !4, line: 89, baseType: !961, size: 32, align: 32)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !231, line: 263, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !141, line: 133, baseType: !114)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !958, file: !4, line: 90, baseType: !114, size: 32, align: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !880, file: !4, line: 93, baseType: !965, size: 64, align: 64, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, align: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !4, line: 95, baseType: !967, size: 192, align: 64, offset: 576)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !4, line: 95, size: 192, align: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !967, file: !4, line: 96, baseType: !931, size: 192, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !967, file: !4, line: 97, baseType: !905, size: 128, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !871, file: !870, line: 44, baseType: !972, size: 64, align: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64, align: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!244, !33, !33}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !871, file: !870, line: 45, baseType: !181, size: 64, align: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !871, file: !870, line: 46, baseType: !207, size: 64, align: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !871, file: !870, line: 47, baseType: !33, size: 64, align: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !871, file: !870, line: 48, baseType: !244, size: 8, align: 8, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !871, file: !870, line: 49, baseType: !244, size: 8, align: 8, offset: 456)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !871, file: !870, line: 50, baseType: !244, size: 8, align: 8, offset: 464)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !871, file: !870, line: 51, baseType: !982, size: 64, align: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !984, line: 50, baseType: !985)
!984 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !984, line: 42, size: 2240, align: 64, elements: !986)
!986 = !{!987, !988, !989, !990, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !985, file: !984, line: 43, baseType: !196, size: 1024, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !985, file: !984, line: 44, baseType: !196, size: 1024, align: 64, offset: 1024)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !985, file: !984, line: 45, baseType: !254, size: 128, align: 8, offset: 2048)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !985, file: !984, line: 46, baseType: !52, size: 32, align: 32, offset: 2176)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !985, file: !984, line: 48, baseType: !52, size: 32, align: 32, offset: 2208)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !871, file: !870, line: 52, baseType: !114, size: 32, align: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !871, file: !870, line: 53, baseType: !162, size: 64, align: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !871, file: !870, line: 54, baseType: !162, size: 64, align: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !871, file: !870, line: 55, baseType: !52, size: 32, align: 32, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !871, file: !870, line: 56, baseType: !162, size: 64, align: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !871, file: !870, line: 57, baseType: !52, size: 32, align: 32, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !871, file: !870, line: 58, baseType: !52, size: 32, align: 32, offset: 928)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !871, file: !870, line: 59, baseType: !162, size: 64, align: 64, offset: 960)
!1000 = !DILocalVariable(name: "checker", arg: 1, scope: !865, file: !172, line: 592, type: !868)
!1001 = !DILocation(line: 592, column: 30, scope: !865)
!1002 = !DILocalVariable(name: "up", arg: 2, scope: !865, file: !172, line: 592, type: !244)
!1003 = !DILocation(line: 592, column: 43, scope: !865)
!1004 = !DILocation(line: 594, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !865, file: !172, line: 594, column: 6)
!1006 = !DILocation(line: 594, column: 15, scope: !1005)
!1007 = !DILocation(line: 594, column: 24, scope: !1005)
!1008 = !DILocation(line: 594, column: 21, scope: !1005)
!1009 = !DILocation(line: 594, column: 6, scope: !865)
!1010 = !DILocation(line: 595, column: 3, scope: !1005)
!1011 = !DILocation(line: 597, column: 19, scope: !865)
!1012 = !DILocation(line: 597, column: 2, scope: !865)
!1013 = !DILocation(line: 597, column: 11, scope: !865)
!1014 = !DILocation(line: 597, column: 17, scope: !865)
!1015 = !DILocation(line: 599, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !865, file: !172, line: 599, column: 6)
!1017 = !DILocation(line: 599, column: 6, scope: !865)
!1018 = !DILocation(line: 600, column: 3, scope: !1016)
!1019 = !DILocation(line: 600, column: 12, scope: !1016)
!1020 = !DILocation(line: 600, column: 16, scope: !1016)
!1021 = !DILocation(line: 600, column: 35, scope: !1016)
!1022 = !DILocation(line: 601, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !172, line: 601, column: 11)
!1024 = !DILocation(line: 601, column: 20, scope: !1023)
!1025 = !DILocation(line: 601, column: 24, scope: !1023)
!1026 = !DILocation(line: 601, column: 11, scope: !1016)
!1027 = !DILocation(line: 602, column: 3, scope: !1023)
!1028 = !DILocation(line: 602, column: 12, scope: !1023)
!1029 = !DILocation(line: 602, column: 16, scope: !1023)
!1030 = !DILocation(line: 602, column: 35, scope: !1023)
!1031 = !DILocation(line: 603, column: 1, scope: !865)
!1032 = distinct !DISubprogram(name: "update_svr_checker_state", scope: !172, file: !172, line: 607, type: !1033, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !244, !868}
!1035 = !DILocalVariable(name: "alive", arg: 1, scope: !1032, file: !172, line: 607, type: !244)
!1036 = !DILocation(line: 607, column: 30, scope: !1032)
!1037 = !DILocalVariable(name: "checker", arg: 2, scope: !1032, file: !172, line: 607, type: !868)
!1038 = !DILocation(line: 607, column: 48, scope: !1032)
!1039 = !DILocation(line: 609, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !172, line: 609, column: 6)
!1041 = !DILocation(line: 609, column: 15, scope: !1040)
!1042 = !DILocation(line: 609, column: 24, scope: !1040)
!1043 = !DILocation(line: 609, column: 21, scope: !1040)
!1044 = !DILocation(line: 609, column: 6, scope: !1032)
!1045 = !DILocation(line: 610, column: 8, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !172, line: 610, column: 7)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !172, line: 609, column: 31)
!1048 = !DILocation(line: 610, column: 17, scope: !1046)
!1049 = !DILocation(line: 610, column: 7, scope: !1047)
!1050 = !DILocation(line: 611, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !172, line: 611, column: 8)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !172, line: 610, column: 26)
!1053 = !DILocation(line: 611, column: 17, scope: !1051)
!1054 = !DILocation(line: 611, column: 23, scope: !1051)
!1055 = !DILocation(line: 611, column: 27, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1051, file: !172, discriminator: 1)
!1057 = !DILocation(line: 611, column: 8, scope: !1056)
!1058 = !DILocation(line: 612, column: 20, scope: !1051)
!1059 = !DILocation(line: 612, column: 29, scope: !1051)
!1060 = !DILocation(line: 612, column: 33, scope: !1051)
!1061 = !DILocation(line: 612, column: 42, scope: !1051)
!1062 = !DILocation(line: 612, column: 5, scope: !1051)
!1063 = !DILocation(line: 613, column: 4, scope: !1052)
!1064 = !DILocation(line: 613, column: 13, scope: !1052)
!1065 = !DILocation(line: 613, column: 21, scope: !1052)
!1066 = !DILocation(line: 614, column: 3, scope: !1052)
!1067 = !DILocation(line: 615, column: 3, scope: !1047)
!1068 = !DILocation(line: 618, column: 2, scope: !1032)
!1069 = !DILocation(line: 618, column: 11, scope: !1032)
!1070 = !DILocation(line: 618, column: 19, scope: !1032)
!1071 = !DILocation(line: 620, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1032, file: !172, line: 620, column: 6)
!1073 = !DILocation(line: 620, column: 6, scope: !1032)
!1074 = !DILocation(line: 622, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !172, line: 622, column: 7)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !172, line: 620, column: 13)
!1077 = !DILocation(line: 622, column: 16, scope: !1075)
!1078 = !DILocation(line: 622, column: 20, scope: !1075)
!1079 = !DILocation(line: 622, column: 40, scope: !1075)
!1080 = !DILocation(line: 622, column: 7, scope: !1076)
!1081 = !DILocation(line: 623, column: 32, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !172, line: 623, column: 8)
!1083 = distinct !DILexicalBlock(scope: !1075, file: !172, line: 622, column: 46)
!1084 = !DILocation(line: 623, column: 9, scope: !1082)
!1085 = !DILocation(line: 623, column: 8, scope: !1083)
!1086 = !DILocation(line: 624, column: 5, scope: !1082)
!1087 = !DILocation(line: 625, column: 3, scope: !1083)
!1088 = !DILocation(line: 626, column: 2, scope: !1076)
!1089 = !DILocation(line: 629, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !172, line: 629, column: 7)
!1091 = distinct !DILexicalBlock(scope: !1072, file: !172, line: 627, column: 7)
!1092 = !DILocation(line: 629, column: 16, scope: !1090)
!1093 = !DILocation(line: 629, column: 20, scope: !1090)
!1094 = !DILocation(line: 629, column: 40, scope: !1090)
!1095 = !DILocation(line: 629, column: 7, scope: !1091)
!1096 = !DILocation(line: 630, column: 33, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !172, line: 630, column: 8)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !172, line: 629, column: 46)
!1099 = !DILocation(line: 630, column: 9, scope: !1097)
!1100 = !DILocation(line: 630, column: 8, scope: !1098)
!1101 = !DILocation(line: 631, column: 5, scope: !1097)
!1102 = !DILocation(line: 632, column: 3, scope: !1098)
!1103 = !DILocation(line: 635, column: 20, scope: !1032)
!1104 = !DILocation(line: 635, column: 29, scope: !1032)
!1105 = !DILocation(line: 635, column: 2, scope: !1032)
!1106 = !DILocation(line: 636, column: 1, scope: !1032)
!1107 = !DILocation(line: 636, column: 1, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1032, file: !172, discriminator: 1)
!1109 = distinct !DISubprogram(name: "do_rs_notifies", scope: !172, file: !172, line: 163, type: !1110, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !181, !207, !244}
!1112 = !DILocalVariable(name: "vs", arg: 1, scope: !1109, file: !172, line: 163, type: !181)
!1113 = !DILocation(line: 163, column: 34, scope: !1109)
!1114 = !DILocalVariable(name: "rs", arg: 2, scope: !1109, file: !172, line: 163, type: !207)
!1115 = !DILocation(line: 163, column: 53, scope: !1109)
!1116 = !DILocalVariable(name: "stopping", arg: 3, scope: !1109, file: !172, line: 163, type: !244)
!1117 = !DILocation(line: 163, column: 61, scope: !1109)
!1118 = !DILocalVariable(name: "notify_script", scope: !1109, file: !172, line: 165, type: !220)
!1119 = !DILocation(line: 165, column: 19, scope: !1109)
!1120 = !DILocation(line: 165, column: 35, scope: !1109)
!1121 = !DILocation(line: 165, column: 39, scope: !1109)
!1122 = !DILocation(line: 165, column: 47, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1109, file: !172, discriminator: 1)
!1124 = !DILocation(line: 165, column: 51, scope: !1123)
!1125 = !DILocation(line: 165, column: 35, scope: !1123)
!1126 = !DILocation(line: 165, column: 63, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1109, file: !172, discriminator: 2)
!1128 = !DILocation(line: 165, column: 67, scope: !1127)
!1129 = !DILocation(line: 165, column: 35, scope: !1127)
!1130 = !DILocation(line: 165, column: 35, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1109, file: !172, discriminator: 3)
!1132 = !DILocation(line: 165, column: 19, scope: !1131)
!1133 = !DILocation(line: 167, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1109, file: !172, line: 167, column: 6)
!1135 = !DILocation(line: 167, column: 6, scope: !1109)
!1136 = !DILocation(line: 168, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !172, line: 168, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !172, line: 167, column: 21)
!1139 = !DILocation(line: 168, column: 7, scope: !1138)
!1140 = !DILocation(line: 169, column: 23, scope: !1137)
!1141 = !DILocation(line: 169, column: 67, scope: !1137)
!1142 = !DILocation(line: 169, column: 4, scope: !1137)
!1143 = !DILocation(line: 171, column: 16, scope: !1137)
!1144 = !DILocation(line: 171, column: 4, scope: !1137)
!1145 = !DILocation(line: 172, column: 2, scope: !1138)
!1146 = !DILocation(line: 174, column: 17, scope: !1109)
!1147 = !DILocation(line: 174, column: 21, scope: !1109)
!1148 = !DILocation(line: 174, column: 2, scope: !1109)
!1149 = !DILocation(line: 182, column: 1, scope: !1109)
!1150 = distinct !DISubprogram(name: "perform_svr_state", scope: !172, file: !172, line: 476, type: !1151, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!244, !244, !868}
!1153 = !DILocalVariable(name: "alive", arg: 1, scope: !1150, file: !172, line: 476, type: !244)
!1154 = !DILocation(line: 476, column: 23, scope: !1150)
!1155 = !DILocalVariable(name: "checker", arg: 2, scope: !1150, file: !172, line: 476, type: !868)
!1156 = !DILocation(line: 476, column: 41, scope: !1150)
!1157 = !DILocalVariable(name: "vs", scope: !1150, file: !172, line: 486, type: !181)
!1158 = !DILocation(line: 486, column: 21, scope: !1150)
!1159 = !DILocation(line: 486, column: 26, scope: !1150)
!1160 = !DILocation(line: 486, column: 35, scope: !1150)
!1161 = !DILocalVariable(name: "rs", scope: !1150, file: !172, line: 487, type: !207)
!1162 = !DILocation(line: 487, column: 18, scope: !1150)
!1163 = !DILocation(line: 487, column: 23, scope: !1150)
!1164 = !DILocation(line: 487, column: 32, scope: !1150)
!1165 = !DILocation(line: 489, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1150, file: !172, line: 489, column: 6)
!1167 = !DILocation(line: 489, column: 13, scope: !1166)
!1168 = !DILocation(line: 489, column: 6, scope: !1166)
!1169 = !DILocation(line: 489, column: 23, scope: !1166)
!1170 = !DILocation(line: 489, column: 20, scope: !1166)
!1171 = !DILocation(line: 489, column: 6, scope: !1150)
!1172 = !DILocation(line: 490, column: 3, scope: !1166)
!1173 = !DILocation(line: 493, column: 10, scope: !1150)
!1174 = !DILocation(line: 493, column: 19, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1150, file: !172, discriminator: 1)
!1176 = !DILocation(line: 493, column: 23, scope: !1175)
!1177 = !DILocation(line: 493, column: 18, scope: !1175)
!1178 = !DILocation(line: 493, column: 10, scope: !1175)
!1179 = !DILocation(line: 494, column: 12, scope: !1150)
!1180 = !DILocation(line: 494, column: 16, scope: !1150)
!1181 = !DILocation(line: 494, column: 11, scope: !1150)
!1182 = !DILocation(line: 493, column: 10, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1150, file: !172, discriminator: 2)
!1184 = !DILocation(line: 493, column: 10, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1150, file: !172, discriminator: 3)
!1186 = !DILocation(line: 495, column: 34, scope: !1150)
!1187 = !DILocation(line: 495, column: 39, scope: !1150)
!1188 = !DILocation(line: 495, column: 46, scope: !1150)
!1189 = !DILocation(line: 495, column: 51, scope: !1150)
!1190 = !DILocation(line: 495, column: 11, scope: !1150)
!1191 = !DILocation(line: 496, column: 22, scope: !1150)
!1192 = !DILocation(line: 496, column: 11, scope: !1150)
!1193 = !DILocation(line: 492, column: 2, scope: !1150)
!1194 = !DILocation(line: 499, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1150, file: !172, line: 499, column: 6)
!1196 = !DILocation(line: 499, column: 10, scope: !1195)
!1197 = !DILocation(line: 499, column: 26, scope: !1195)
!1198 = !DILocation(line: 499, column: 30, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1195, file: !172, discriminator: 1)
!1200 = !DILocation(line: 499, column: 34, scope: !1199)
!1201 = !DILocation(line: 499, column: 40, scope: !1199)
!1202 = !DILocation(line: 499, column: 46, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1195, file: !172, discriminator: 2)
!1204 = !DILocation(line: 499, column: 50, scope: !1203)
!1205 = !DILocation(line: 499, column: 58, scope: !1203)
!1206 = !DILocation(line: 499, column: 6, scope: !1203)
!1207 = !DILocation(line: 500, column: 16, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !172, line: 500, column: 7)
!1209 = distinct !DILexicalBlock(scope: !1195, file: !172, line: 499, column: 66)
!1210 = !DILocation(line: 500, column: 60, scope: !1208)
!1211 = !DILocation(line: 500, column: 64, scope: !1208)
!1212 = !DILocation(line: 500, column: 7, scope: !1208)
!1213 = !DILocation(line: 500, column: 7, scope: !1209)
!1214 = !DILocation(line: 501, column: 4, scope: !1208)
!1215 = !DILocation(line: 502, column: 2, scope: !1209)
!1216 = !DILocation(line: 503, column: 14, scope: !1150)
!1217 = !DILocation(line: 503, column: 2, scope: !1150)
!1218 = !DILocation(line: 503, column: 6, scope: !1150)
!1219 = !DILocation(line: 503, column: 12, scope: !1150)
!1220 = !DILocation(line: 504, column: 17, scope: !1150)
!1221 = !DILocation(line: 504, column: 21, scope: !1150)
!1222 = !DILocation(line: 504, column: 2, scope: !1150)
!1223 = !DILocation(line: 508, column: 22, scope: !1150)
!1224 = !DILocation(line: 508, column: 2, scope: !1150)
!1225 = !DILocation(line: 510, column: 2, scope: !1150)
!1226 = !DILocation(line: 511, column: 1, scope: !1150)
!1227 = distinct !DISubprogram(name: "clear_diff_services", scope: !172, file: !172, line: 860, type: !1228, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !85}
!1230 = !DILocalVariable(name: "old_checkers_queue", arg: 1, scope: !1227, file: !172, line: 860, type: !85)
!1231 = !DILocation(line: 860, column: 26, scope: !1227)
!1232 = !DILocalVariable(name: "e", scope: !1227, file: !172, line: 862, type: !177)
!1233 = !DILocation(line: 862, column: 10, scope: !1227)
!1234 = !DILocalVariable(name: "vs", scope: !1227, file: !172, line: 863, type: !181)
!1235 = !DILocation(line: 863, column: 20, scope: !1227)
!1236 = !DILocalVariable(name: "new_vs", scope: !1227, file: !172, line: 863, type: !181)
!1237 = !DILocation(line: 863, column: 25, scope: !1227)
!1238 = !DILocation(line: 866, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1227, file: !172, line: 866, column: 2)
!1240 = !DILocation(line: 866, column: 31, scope: !1239)
!1241 = !DILocation(line: 866, column: 14, scope: !1239)
!1242 = !DILocation(line: 866, column: 40, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 1)
!1244 = !DILocation(line: 866, column: 56, scope: !1243)
!1245 = !DILocation(line: 866, column: 39, scope: !1243)
!1246 = !DILocation(line: 866, column: 38, scope: !1243)
!1247 = !DILocation(line: 866, column: 38, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 2)
!1249 = !DILocation(line: 866, column: 4, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 3)
!1251 = !DILocation(line: 866, column: 20, scope: !1250)
!1252 = !DILocation(line: 866, column: 25, scope: !1250)
!1253 = !DILocation(line: 866, column: 38, scope: !1250)
!1254 = !DILocation(line: 866, column: 38, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 4)
!1256 = !DILocation(line: 866, column: 14, scope: !1255)
!1257 = !DILocation(line: 866, column: 14, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 5)
!1259 = !DILocation(line: 866, column: 14, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 6)
!1261 = !DILocation(line: 866, column: 11, scope: !1260)
!1262 = !DILocation(line: 866, column: 7, scope: !1260)
!1263 = !DILocation(line: 866, column: 5, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1265, file: !172, discriminator: 7)
!1265 = distinct !DILexicalBlock(scope: !1239, file: !172, line: 866, column: 2)
!1266 = !DILocation(line: 866, column: 4, scope: !1264)
!1267 = !DILocation(line: 866, column: 8, scope: !1264)
!1268 = !DILocation(line: 866, column: 21, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1265, file: !172, discriminator: 8)
!1270 = !DILocation(line: 866, column: 25, scope: !1269)
!1271 = !DILocation(line: 866, column: 19, scope: !1269)
!1272 = !DILocation(line: 866, column: 17, scope: !1269)
!1273 = !DILocation(line: 866, column: 2, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1239, file: !172, discriminator: 9)
!1275 = !DILocation(line: 871, column: 21, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1265, file: !172, line: 866, column: 55)
!1277 = !DILocation(line: 871, column: 12, scope: !1276)
!1278 = !DILocation(line: 871, column: 10, scope: !1276)
!1279 = !DILocation(line: 872, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !172, line: 872, column: 7)
!1281 = !DILocation(line: 872, column: 7, scope: !1276)
!1282 = !DILocation(line: 873, column: 8, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !172, line: 873, column: 8)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !172, line: 872, column: 16)
!1285 = !DILocation(line: 873, column: 12, scope: !1283)
!1286 = !DILocation(line: 873, column: 8, scope: !1284)
!1287 = !DILocation(line: 874, column: 64, scope: !1283)
!1288 = !DILocation(line: 874, column: 68, scope: !1283)
!1289 = !DILocation(line: 874, column: 5, scope: !1283)
!1290 = !DILocation(line: 876, column: 68, scope: !1283)
!1291 = !DILocation(line: 876, column: 57, scope: !1283)
!1292 = !DILocation(line: 876, column: 5, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1283, file: !172, discriminator: 1)
!1294 = !DILocation(line: 879, column: 21, scope: !1284)
!1295 = !DILocation(line: 879, column: 4, scope: !1284)
!1296 = !DILocation(line: 880, column: 3, scope: !1284)
!1297 = !DILocation(line: 882, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1280, file: !172, line: 880, column: 10)
!1299 = !DILocation(line: 882, column: 15, scope: !1298)
!1300 = !DILocation(line: 882, column: 21, scope: !1298)
!1301 = !DILocation(line: 883, column: 30, scope: !1298)
!1302 = !DILocation(line: 883, column: 34, scope: !1298)
!1303 = !DILocation(line: 883, column: 4, scope: !1298)
!1304 = !DILocation(line: 883, column: 12, scope: !1298)
!1305 = !DILocation(line: 883, column: 28, scope: !1298)
!1306 = !DILocation(line: 884, column: 4, scope: !1298)
!1307 = !DILocation(line: 884, column: 12, scope: !1298)
!1308 = !DILocation(line: 884, column: 21, scope: !1298)
!1309 = !DILocation(line: 885, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1298, file: !172, line: 885, column: 8)
!1311 = !DILocation(line: 885, column: 8, scope: !1298)
!1312 = !DILocation(line: 886, column: 37, scope: !1310)
!1313 = !DILocation(line: 886, column: 41, scope: !1310)
!1314 = !DILocation(line: 886, column: 5, scope: !1310)
!1315 = !DILocation(line: 886, column: 13, scope: !1310)
!1316 = !DILocation(line: 886, column: 35, scope: !1310)
!1317 = !DILocation(line: 888, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1298, file: !172, line: 888, column: 8)
!1319 = !DILocation(line: 888, column: 12, scope: !1318)
!1320 = !DILocation(line: 888, column: 8, scope: !1298)
!1321 = !DILocation(line: 889, column: 20, scope: !1318)
!1322 = !DILocation(line: 889, column: 24, scope: !1318)
!1323 = !DILocation(line: 889, column: 5, scope: !1318)
!1324 = !DILocation(line: 894, column: 4, scope: !1298)
!1325 = !DILocation(line: 894, column: 8, scope: !1298)
!1326 = !DILocation(line: 894, column: 14, scope: !1298)
!1327 = !DILocation(line: 895, column: 18, scope: !1298)
!1328 = !DILocation(line: 895, column: 22, scope: !1298)
!1329 = !DILocation(line: 895, column: 30, scope: !1298)
!1330 = !DILocation(line: 895, column: 4, scope: !1298)
!1331 = !DILocation(line: 896, column: 21, scope: !1298)
!1332 = !DILocation(line: 896, column: 25, scope: !1298)
!1333 = !DILocation(line: 896, column: 33, scope: !1298)
!1334 = !DILocation(line: 896, column: 4, scope: !1298)
!1335 = !DILocation(line: 898, column: 2, scope: !1276)
!1336 = !DILocation(line: 866, column: 44, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1265, file: !172, discriminator: 10)
!1338 = !DILocation(line: 866, column: 48, scope: !1337)
!1339 = !DILocation(line: 866, column: 41, scope: !1337)
!1340 = !DILocation(line: 866, column: 2, scope: !1337)
!1341 = distinct !{!1341, !1342}
!1342 = !DILocation(line: 866, column: 2, scope: !1227)
!1343 = !DILocation(line: 899, column: 1, scope: !1227)
!1344 = distinct !DISubprogram(name: "vs_exist", scope: !172, file: !172, line: 698, type: !1345, isLocal: true, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!181, !181}
!1347 = !DILocalVariable(name: "old_vs", arg: 1, scope: !1344, file: !172, line: 698, type: !181)
!1348 = !DILocation(line: 698, column: 29, scope: !1344)
!1349 = !DILocalVariable(name: "e", scope: !1344, file: !172, line: 700, type: !177)
!1350 = !DILocation(line: 700, column: 10, scope: !1344)
!1351 = !DILocalVariable(name: "l", scope: !1344, file: !172, line: 701, type: !85)
!1352 = !DILocation(line: 701, column: 7, scope: !1344)
!1353 = !DILocation(line: 701, column: 11, scope: !1344)
!1354 = !DILocation(line: 701, column: 23, scope: !1344)
!1355 = !DILocalVariable(name: "vs", scope: !1344, file: !172, line: 702, type: !181)
!1356 = !DILocation(line: 702, column: 20, scope: !1344)
!1357 = !DILocation(line: 704, column: 8, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1344, file: !172, line: 704, column: 6)
!1359 = !DILocation(line: 704, column: 11, scope: !1358)
!1360 = !DILocation(line: 704, column: 5, scope: !1358)
!1361 = !DILocation(line: 704, column: 10, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1358, file: !172, discriminator: 1)
!1363 = !DILocation(line: 704, column: 14, scope: !1362)
!1364 = !DILocation(line: 704, column: 19, scope: !1362)
!1365 = !DILocation(line: 704, column: 5, scope: !1362)
!1366 = !DILocation(line: 704, column: 9, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1358, file: !172, discriminator: 2)
!1368 = !DILocation(line: 704, column: 13, scope: !1367)
!1369 = !DILocation(line: 704, column: 18, scope: !1367)
!1370 = !DILocation(line: 704, column: 6, scope: !1367)
!1371 = !DILocation(line: 705, column: 3, scope: !1358)
!1372 = !DILocation(line: 707, column: 14, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1344, file: !172, line: 707, column: 2)
!1374 = !DILocation(line: 707, column: 13, scope: !1373)
!1375 = !DILocation(line: 707, column: 12, scope: !1373)
!1376 = !DILocation(line: 707, column: 12, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1373, file: !172, discriminator: 1)
!1378 = !DILocation(line: 707, column: 13, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1373, file: !172, discriminator: 2)
!1380 = !DILocation(line: 707, column: 17, scope: !1379)
!1381 = !DILocation(line: 707, column: 12, scope: !1379)
!1382 = !DILocation(line: 707, column: 12, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1373, file: !172, discriminator: 3)
!1384 = !DILocation(line: 707, column: 9, scope: !1383)
!1385 = !DILocation(line: 707, column: 7, scope: !1383)
!1386 = !DILocation(line: 707, column: 24, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1388, file: !172, discriminator: 4)
!1388 = distinct !DILexicalBlock(scope: !1373, file: !172, line: 707, column: 2)
!1389 = !DILocation(line: 707, column: 2, scope: !1387)
!1390 = !DILocation(line: 708, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !172, line: 707, column: 46)
!1392 = !DILocation(line: 708, column: 14, scope: !1391)
!1393 = !DILocation(line: 708, column: 8, scope: !1391)
!1394 = !DILocation(line: 708, column: 6, scope: !1391)
!1395 = !DILocation(line: 709, column: 28, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !172, line: 709, column: 7)
!1397 = !DILocation(line: 709, column: 37, scope: !1396)
!1398 = !DILocation(line: 709, column: 44, scope: !1396)
!1399 = !DILocation(line: 709, column: 49, scope: !1396)
!1400 = !DILocation(line: 709, column: 8, scope: !1396)
!1401 = !DILocation(line: 709, column: 55, scope: !1396)
!1402 = !DILocation(line: 709, column: 59, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 1)
!1404 = !DILocation(line: 709, column: 68, scope: !1403)
!1405 = !DILocation(line: 709, column: 80, scope: !1403)
!1406 = !DILocation(line: 709, column: 85, scope: !1403)
!1407 = !DILocation(line: 709, column: 76, scope: !1403)
!1408 = !DILocation(line: 709, column: 93, scope: !1403)
!1409 = !DILocation(line: 709, column: 97, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 2)
!1411 = !DILocation(line: 709, column: 106, scope: !1410)
!1412 = !DILocation(line: 709, column: 96, scope: !1410)
!1413 = !DILocation(line: 709, column: 113, scope: !1410)
!1414 = !DILocation(line: 709, column: 118, scope: !1410)
!1415 = !DILocation(line: 709, column: 112, scope: !1410)
!1416 = !DILocation(line: 709, column: 109, scope: !1410)
!1417 = !DILocation(line: 709, column: 121, scope: !1410)
!1418 = !DILocation(line: 709, column: 125, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 3)
!1420 = !DILocation(line: 709, column: 134, scope: !1419)
!1421 = !DILocation(line: 709, column: 124, scope: !1419)
!1422 = !DILocation(line: 709, column: 151, scope: !1419)
!1423 = !DILocation(line: 709, column: 156, scope: !1419)
!1424 = !DILocation(line: 709, column: 150, scope: !1419)
!1425 = !DILocation(line: 709, column: 147, scope: !1419)
!1426 = !DILocation(line: 709, column: 169, scope: !1419)
!1427 = !DILocation(line: 709, column: 173, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 4)
!1429 = !DILocation(line: 709, column: 182, scope: !1428)
!1430 = !DILocation(line: 709, column: 204, scope: !1428)
!1431 = !DILocation(line: 709, column: 209, scope: !1428)
!1432 = !DILocation(line: 709, column: 200, scope: !1428)
!1433 = !DILocation(line: 709, column: 227, scope: !1428)
!1434 = !DILocation(line: 709, column: 231, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 5)
!1436 = !DILocation(line: 709, column: 240, scope: !1435)
!1437 = !DILocation(line: 709, column: 268, scope: !1435)
!1438 = !DILocation(line: 709, column: 273, scope: !1435)
!1439 = !DILocation(line: 709, column: 264, scope: !1435)
!1440 = !DILocation(line: 709, column: 297, scope: !1435)
!1441 = !DILocation(line: 709, column: 304, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 6)
!1443 = !DILocation(line: 709, column: 313, scope: !1442)
!1444 = !DILocation(line: 709, column: 301, scope: !1442)
!1445 = !DILocation(line: 709, column: 337, scope: !1442)
!1446 = !DILocation(line: 709, column: 342, scope: !1442)
!1447 = !DILocation(line: 709, column: 334, scope: !1442)
!1448 = !DILocation(line: 709, column: 331, scope: !1442)
!1449 = !DILocation(line: 709, column: 360, scope: !1442)
!1450 = !DILocation(line: 709, column: 367, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 7)
!1452 = !DILocation(line: 709, column: 376, scope: !1451)
!1453 = !DILocation(line: 709, column: 365, scope: !1451)
!1454 = !DILocation(line: 709, column: 394, scope: !1451)
!1455 = !DILocation(line: 709, column: 423, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 8)
!1457 = !DILocation(line: 709, column: 432, scope: !1456)
!1458 = !DILocation(line: 709, column: 453, scope: !1456)
!1459 = !DILocation(line: 709, column: 458, scope: !1456)
!1460 = !DILocation(line: 709, column: 399, scope: !1456)
!1461 = !DILocation(line: 709, column: 477, scope: !1456)
!1462 = !DILocation(line: 709, column: 482, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 9)
!1464 = !DILocation(line: 709, column: 491, scope: !1463)
!1465 = !DILocation(line: 709, column: 510, scope: !1463)
!1466 = !DILocation(line: 709, column: 519, scope: !1463)
!1467 = !DILocation(line: 709, column: 524, scope: !1463)
!1468 = !DILocation(line: 709, column: 543, scope: !1463)
!1469 = !DILocation(line: 709, column: 514, scope: !1463)
!1470 = !DILocation(line: 709, column: 547, scope: !1463)
!1471 = !DILocation(line: 709, column: 552, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 10)
!1473 = !DILocation(line: 709, column: 561, scope: !1472)
!1474 = !DILocation(line: 709, column: 580, scope: !1472)
!1475 = !DILocation(line: 709, column: 589, scope: !1472)
!1476 = !DILocation(line: 709, column: 594, scope: !1472)
!1477 = !DILocation(line: 709, column: 613, scope: !1472)
!1478 = !DILocation(line: 709, column: 584, scope: !1472)
!1479 = !DILocation(line: 709, column: 620, scope: !1472)
!1480 = !DILocation(line: 709, column: 627, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 11)
!1482 = !DILocation(line: 709, column: 636, scope: !1481)
!1483 = !DILocation(line: 709, column: 624, scope: !1481)
!1484 = !DILocation(line: 709, column: 662, scope: !1481)
!1485 = !DILocation(line: 709, column: 667, scope: !1481)
!1486 = !DILocation(line: 709, column: 659, scope: !1481)
!1487 = !DILocation(line: 709, column: 656, scope: !1481)
!1488 = !DILocation(line: 709, column: 687, scope: !1481)
!1489 = !DILocation(line: 709, column: 694, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 12)
!1491 = !DILocation(line: 709, column: 703, scope: !1490)
!1492 = !DILocation(line: 709, column: 692, scope: !1490)
!1493 = !DILocation(line: 709, column: 723, scope: !1490)
!1494 = !DILocation(line: 709, column: 752, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 13)
!1496 = !DILocation(line: 709, column: 761, scope: !1495)
!1497 = !DILocation(line: 709, column: 784, scope: !1495)
!1498 = !DILocation(line: 709, column: 789, scope: !1495)
!1499 = !DILocation(line: 709, column: 728, scope: !1495)
!1500 = !DILocation(line: 709, column: 810, scope: !1495)
!1501 = !DILocation(line: 709, column: 815, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 14)
!1503 = !DILocation(line: 709, column: 824, scope: !1502)
!1504 = !DILocation(line: 709, column: 845, scope: !1502)
!1505 = !DILocation(line: 709, column: 854, scope: !1502)
!1506 = !DILocation(line: 709, column: 859, scope: !1502)
!1507 = !DILocation(line: 709, column: 880, scope: !1502)
!1508 = !DILocation(line: 709, column: 849, scope: !1502)
!1509 = !DILocation(line: 709, column: 884, scope: !1502)
!1510 = !DILocation(line: 709, column: 889, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 15)
!1512 = !DILocation(line: 709, column: 898, scope: !1511)
!1513 = !DILocation(line: 709, column: 919, scope: !1511)
!1514 = !DILocation(line: 709, column: 928, scope: !1511)
!1515 = !DILocation(line: 709, column: 933, scope: !1511)
!1516 = !DILocation(line: 709, column: 954, scope: !1511)
!1517 = !DILocation(line: 709, column: 923, scope: !1511)
!1518 = !DILocation(line: 709, column: 961, scope: !1511)
!1519 = !DILocation(line: 709, column: 973, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 16)
!1521 = !DILocation(line: 709, column: 982, scope: !1520)
!1522 = !DILocation(line: 709, column: 972, scope: !1520)
!1523 = !DILocation(line: 709, column: 990, scope: !1520)
!1524 = !DILocation(line: 709, column: 995, scope: !1520)
!1525 = !DILocation(line: 709, column: 989, scope: !1520)
!1526 = !DILocation(line: 709, column: 965, scope: !1520)
!1527 = !DILocation(line: 709, column: 1002, scope: !1520)
!1528 = !DILocation(line: 709, column: 1006, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 17)
!1530 = !DILocation(line: 709, column: 1015, scope: !1529)
!1531 = !DILocation(line: 709, column: 1039, scope: !1529)
!1532 = !DILocation(line: 709, column: 1044, scope: !1529)
!1533 = !DILocation(line: 709, column: 1035, scope: !1529)
!1534 = !DILocation(line: 709, column: 1064, scope: !1529)
!1535 = !DILocation(line: 709, column: 1069, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 18)
!1537 = !DILocation(line: 709, column: 1078, scope: !1536)
!1538 = !DILocation(line: 709, column: 1067, scope: !1536)
!1539 = !DILocation(line: 709, column: 1091, scope: !1536)
!1540 = !DILocation(line: 709, column: 1096, scope: !1536)
!1541 = !DILocation(line: 709, column: 1089, scope: !1536)
!1542 = !DILocation(line: 709, column: 1086, scope: !1536)
!1543 = !DILocation(line: 709, column: 1104, scope: !1536)
!1544 = !DILocation(line: 709, column: 1110, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 19)
!1546 = !DILocation(line: 709, column: 1119, scope: !1545)
!1547 = !DILocation(line: 709, column: 1109, scope: !1545)
!1548 = !DILocation(line: 709, column: 1127, scope: !1545)
!1549 = !DILocation(line: 709, column: 1139, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 20)
!1551 = !DILocation(line: 709, column: 1148, scope: !1550)
!1552 = !DILocation(line: 709, column: 1158, scope: !1550)
!1553 = !DILocation(line: 709, column: 1163, scope: !1550)
!1554 = !DILocation(line: 709, column: 1131, scope: !1550)
!1555 = !DILocation(line: 709, column: 1173, scope: !1550)
!1556 = !DILocation(line: 709, column: 1178, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 21)
!1558 = !DILocation(line: 709, column: 1187, scope: !1557)
!1559 = !DILocation(line: 709, column: 1176, scope: !1557)
!1560 = !DILocation(line: 709, column: 1204, scope: !1557)
!1561 = !DILocation(line: 709, column: 1209, scope: !1557)
!1562 = !DILocation(line: 709, column: 1202, scope: !1557)
!1563 = !DILocation(line: 709, column: 1199, scope: !1557)
!1564 = !DILocation(line: 709, column: 1221, scope: !1557)
!1565 = !DILocation(line: 709, column: 1227, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 22)
!1567 = !DILocation(line: 709, column: 1236, scope: !1566)
!1568 = !DILocation(line: 709, column: 1226, scope: !1566)
!1569 = !DILocation(line: 709, column: 1248, scope: !1566)
!1570 = !DILocation(line: 709, column: 1260, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1396, file: !172, discriminator: 23)
!1572 = !DILocation(line: 709, column: 1269, scope: !1571)
!1573 = !DILocation(line: 709, column: 1283, scope: !1571)
!1574 = !DILocation(line: 709, column: 1288, scope: !1571)
!1575 = !DILocation(line: 709, column: 1252, scope: !1571)
!1576 = !DILocation(line: 709, column: 7, scope: !1571)
!1577 = !DILocation(line: 710, column: 11, scope: !1396)
!1578 = !DILocation(line: 710, column: 4, scope: !1396)
!1579 = !DILocation(line: 711, column: 2, scope: !1391)
!1580 = !DILocation(line: 707, column: 35, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1388, file: !172, discriminator: 5)
!1582 = !DILocation(line: 707, column: 39, scope: !1581)
!1583 = !DILocation(line: 707, column: 32, scope: !1581)
!1584 = !DILocation(line: 707, column: 2, scope: !1581)
!1585 = distinct !{!1585, !1586}
!1586 = !DILocation(line: 707, column: 2, scope: !1344)
!1587 = !DILocation(line: 713, column: 2, scope: !1344)
!1588 = !DILocation(line: 714, column: 1, scope: !1344)
!1589 = distinct !DISubprogram(name: "clear_diff_vsg", scope: !172, file: !172, line: 686, type: !1590, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !181, !181}
!1592 = !DILocalVariable(name: "old_vs", arg: 1, scope: !1589, file: !172, line: 686, type: !181)
!1593 = !DILocation(line: 686, column: 35, scope: !1589)
!1594 = !DILocalVariable(name: "new_vs", arg: 2, scope: !1589, file: !172, line: 686, type: !181)
!1595 = !DILocation(line: 686, column: 62, scope: !1589)
!1596 = !DILocalVariable(name: "old", scope: !1589, file: !172, line: 688, type: !188)
!1597 = !DILocation(line: 688, column: 26, scope: !1589)
!1598 = !DILocation(line: 688, column: 32, scope: !1589)
!1599 = !DILocation(line: 688, column: 40, scope: !1589)
!1600 = !DILocalVariable(name: "new", scope: !1589, file: !172, line: 689, type: !188)
!1601 = !DILocation(line: 689, column: 26, scope: !1589)
!1602 = !DILocation(line: 689, column: 32, scope: !1589)
!1603 = !DILocation(line: 689, column: 40, scope: !1589)
!1604 = !DILocation(line: 692, column: 18, scope: !1589)
!1605 = !DILocation(line: 692, column: 23, scope: !1589)
!1606 = !DILocation(line: 692, column: 35, scope: !1589)
!1607 = !DILocation(line: 692, column: 40, scope: !1589)
!1608 = !DILocation(line: 692, column: 52, scope: !1589)
!1609 = !DILocation(line: 692, column: 2, scope: !1589)
!1610 = !DILocation(line: 693, column: 18, scope: !1589)
!1611 = !DILocation(line: 693, column: 23, scope: !1589)
!1612 = !DILocation(line: 693, column: 32, scope: !1589)
!1613 = !DILocation(line: 693, column: 37, scope: !1589)
!1614 = !DILocation(line: 693, column: 46, scope: !1589)
!1615 = !DILocation(line: 693, column: 2, scope: !1589)
!1616 = !DILocation(line: 694, column: 1, scope: !1589)
!1617 = distinct !DISubprogram(name: "clear_diff_rs", scope: !172, file: !172, line: 776, type: !1618, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !181, !181, !85}
!1620 = !DILocalVariable(name: "old_vs", arg: 1, scope: !1617, file: !172, line: 776, type: !181)
!1621 = !DILocation(line: 776, column: 33, scope: !1617)
!1622 = !DILocalVariable(name: "new_vs", arg: 2, scope: !1617, file: !172, line: 776, type: !181)
!1623 = !DILocation(line: 776, column: 59, scope: !1617)
!1624 = !DILocalVariable(name: "old_checkers_queue", arg: 3, scope: !1617, file: !172, line: 776, type: !85)
!1625 = !DILocation(line: 776, column: 72, scope: !1617)
!1626 = !DILocalVariable(name: "e", scope: !1617, file: !172, line: 778, type: !177)
!1627 = !DILocation(line: 778, column: 10, scope: !1617)
!1628 = !DILocalVariable(name: "rs", scope: !1617, file: !172, line: 779, type: !207)
!1629 = !DILocation(line: 779, column: 17, scope: !1617)
!1630 = !DILocalVariable(name: "new_rs", scope: !1617, file: !172, line: 779, type: !207)
!1631 = !DILocation(line: 779, column: 22, scope: !1617)
!1632 = !DILocalVariable(name: "rs_to_remove", scope: !1617, file: !172, line: 780, type: !85)
!1633 = !DILocation(line: 780, column: 7, scope: !1617)
!1634 = !DILocation(line: 783, column: 8, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !172, line: 783, column: 6)
!1636 = !DILocation(line: 783, column: 16, scope: !1635)
!1637 = !DILocation(line: 783, column: 20, scope: !1635)
!1638 = !DILocation(line: 783, column: 5, scope: !1635)
!1639 = !DILocation(line: 783, column: 10, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1635, file: !172, discriminator: 1)
!1641 = !DILocation(line: 783, column: 18, scope: !1640)
!1642 = !DILocation(line: 783, column: 23, scope: !1640)
!1643 = !DILocation(line: 783, column: 28, scope: !1640)
!1644 = !DILocation(line: 783, column: 5, scope: !1640)
!1645 = !DILocation(line: 783, column: 9, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1635, file: !172, discriminator: 2)
!1647 = !DILocation(line: 783, column: 17, scope: !1646)
!1648 = !DILocation(line: 783, column: 22, scope: !1646)
!1649 = !DILocation(line: 783, column: 27, scope: !1646)
!1650 = !DILocation(line: 783, column: 6, scope: !1646)
!1651 = !DILocation(line: 784, column: 3, scope: !1635)
!1652 = !DILocation(line: 787, column: 17, scope: !1617)
!1653 = !DILocation(line: 787, column: 15, scope: !1617)
!1654 = !DILocation(line: 788, column: 15, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1617, file: !172, line: 788, column: 2)
!1656 = !DILocation(line: 788, column: 23, scope: !1655)
!1657 = !DILocation(line: 788, column: 14, scope: !1655)
!1658 = !DILocation(line: 788, column: 32, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 1)
!1660 = !DILocation(line: 788, column: 40, scope: !1659)
!1661 = !DILocation(line: 788, column: 31, scope: !1659)
!1662 = !DILocation(line: 788, column: 30, scope: !1659)
!1663 = !DILocation(line: 788, column: 30, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 2)
!1665 = !DILocation(line: 788, column: 4, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 3)
!1667 = !DILocation(line: 788, column: 12, scope: !1666)
!1668 = !DILocation(line: 788, column: 17, scope: !1666)
!1669 = !DILocation(line: 788, column: 30, scope: !1666)
!1670 = !DILocation(line: 788, column: 30, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 4)
!1672 = !DILocation(line: 788, column: 14, scope: !1671)
!1673 = !DILocation(line: 788, column: 14, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 5)
!1675 = !DILocation(line: 788, column: 14, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 6)
!1677 = !DILocation(line: 788, column: 11, scope: !1676)
!1678 = !DILocation(line: 788, column: 7, scope: !1676)
!1679 = !DILocation(line: 788, column: 5, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !172, discriminator: 7)
!1681 = distinct !DILexicalBlock(scope: !1655, file: !172, line: 788, column: 2)
!1682 = !DILocation(line: 788, column: 4, scope: !1680)
!1683 = !DILocation(line: 788, column: 8, scope: !1680)
!1684 = !DILocation(line: 788, column: 21, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1681, file: !172, discriminator: 8)
!1686 = !DILocation(line: 788, column: 25, scope: !1685)
!1687 = !DILocation(line: 788, column: 19, scope: !1685)
!1688 = !DILocation(line: 788, column: 17, scope: !1685)
!1689 = !DILocation(line: 788, column: 2, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1655, file: !172, discriminator: 9)
!1691 = !DILocation(line: 789, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1681, file: !172, line: 788, column: 55)
!1693 = !DILocation(line: 789, column: 25, scope: !1692)
!1694 = !DILocation(line: 789, column: 33, scope: !1692)
!1695 = !DILocation(line: 789, column: 12, scope: !1692)
!1696 = !DILocation(line: 789, column: 10, scope: !1692)
!1697 = !DILocation(line: 790, column: 8, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1692, file: !172, line: 790, column: 7)
!1699 = !DILocation(line: 790, column: 7, scope: !1692)
!1700 = !DILocation(line: 792, column: 36, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !172, line: 790, column: 16)
!1702 = !DILocation(line: 792, column: 41, scope: !1701)
!1703 = !DILocation(line: 792, column: 48, scope: !1701)
!1704 = !DILocation(line: 792, column: 57, scope: !1701)
!1705 = !DILocation(line: 792, column: 13, scope: !1701)
!1706 = !DILocation(line: 791, column: 4, scope: !1701)
!1707 = !DILocation(line: 794, column: 14, scope: !1701)
!1708 = !DILocation(line: 794, column: 28, scope: !1701)
!1709 = !DILocation(line: 794, column: 4, scope: !1701)
!1710 = !DILocation(line: 795, column: 3, scope: !1701)
!1711 = !DILocation(line: 801, column: 8, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !172, line: 801, column: 8)
!1713 = distinct !DILexicalBlock(scope: !1698, file: !172, line: 795, column: 10)
!1714 = !DILocation(line: 801, column: 16, scope: !1712)
!1715 = !DILocation(line: 801, column: 8, scope: !1713)
!1716 = !DILocation(line: 802, column: 21, scope: !1712)
!1717 = !DILocation(line: 802, column: 25, scope: !1712)
!1718 = !DILocation(line: 802, column: 5, scope: !1712)
!1719 = !DILocation(line: 802, column: 13, scope: !1712)
!1720 = !DILocation(line: 802, column: 19, scope: !1712)
!1721 = !DILocation(line: 803, column: 18, scope: !1713)
!1722 = !DILocation(line: 803, column: 22, scope: !1713)
!1723 = !DILocation(line: 803, column: 4, scope: !1713)
!1724 = !DILocation(line: 803, column: 12, scope: !1713)
!1725 = !DILocation(line: 803, column: 16, scope: !1713)
!1726 = !DILocation(line: 804, column: 21, scope: !1713)
!1727 = !DILocation(line: 804, column: 25, scope: !1713)
!1728 = !DILocation(line: 804, column: 4, scope: !1713)
!1729 = !DILocation(line: 804, column: 12, scope: !1713)
!1730 = !DILocation(line: 804, column: 19, scope: !1713)
!1731 = !DILocation(line: 805, column: 22, scope: !1713)
!1732 = !DILocation(line: 805, column: 26, scope: !1713)
!1733 = !DILocation(line: 805, column: 4, scope: !1713)
!1734 = !DILocation(line: 805, column: 12, scope: !1713)
!1735 = !DILocation(line: 805, column: 20, scope: !1713)
!1736 = !DILocation(line: 806, column: 4, scope: !1713)
!1737 = !DILocation(line: 806, column: 12, scope: !1713)
!1738 = !DILocation(line: 806, column: 21, scope: !1713)
!1739 = !DILocation(line: 817, column: 21, scope: !1713)
!1740 = !DILocation(line: 817, column: 25, scope: !1713)
!1741 = !DILocation(line: 817, column: 33, scope: !1713)
!1742 = !DILocation(line: 817, column: 4, scope: !1713)
!1743 = !DILocation(line: 819, column: 2, scope: !1692)
!1744 = !DILocation(line: 788, column: 44, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1681, file: !172, discriminator: 10)
!1746 = !DILocation(line: 788, column: 48, scope: !1745)
!1747 = !DILocation(line: 788, column: 41, scope: !1745)
!1748 = !DILocation(line: 788, column: 2, scope: !1745)
!1749 = distinct !{!1749, !1750}
!1750 = !DILocation(line: 788, column: 2, scope: !1617)
!1751 = !DILocation(line: 820, column: 19, scope: !1617)
!1752 = !DILocation(line: 820, column: 27, scope: !1617)
!1753 = !DILocation(line: 820, column: 2, scope: !1617)
!1754 = !DILocation(line: 821, column: 2, scope: !1617)
!1755 = !DILocation(line: 822, column: 1, scope: !1617)
!1756 = !DILocation(line: 822, column: 1, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1617, file: !172, discriminator: 1)
!1758 = distinct !DISubprogram(name: "clear_diff_s_srv", scope: !172, file: !172, line: 826, type: !1759, isLocal: true, isDefinition: true, scopeLine: 827, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !181, !207}
!1761 = !DILocalVariable(name: "old_vs", arg: 1, scope: !1758, file: !172, line: 826, type: !181)
!1762 = !DILocation(line: 826, column: 36, scope: !1758)
!1763 = !DILocalVariable(name: "new_rs", arg: 2, scope: !1758, file: !172, line: 826, type: !207)
!1764 = !DILocation(line: 826, column: 59, scope: !1758)
!1765 = !DILocalVariable(name: "old_rs", scope: !1758, file: !172, line: 828, type: !207)
!1766 = !DILocation(line: 828, column: 17, scope: !1758)
!1767 = !DILocation(line: 828, column: 26, scope: !1758)
!1768 = !DILocation(line: 828, column: 34, scope: !1758)
!1769 = !DILocation(line: 830, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1758, file: !172, line: 830, column: 6)
!1771 = !DILocation(line: 830, column: 6, scope: !1758)
!1772 = !DILocation(line: 831, column: 3, scope: !1770)
!1773 = !DILocation(line: 833, column: 6, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1758, file: !172, line: 833, column: 6)
!1775 = !DILocation(line: 833, column: 13, scope: !1774)
!1776 = !DILocation(line: 833, column: 37, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1774, file: !172, discriminator: 1)
!1778 = !DILocation(line: 833, column: 46, scope: !1777)
!1779 = !DILocation(line: 833, column: 53, scope: !1777)
!1780 = !DILocation(line: 833, column: 62, scope: !1777)
!1781 = !DILocation(line: 833, column: 17, scope: !1777)
!1782 = !DILocation(line: 833, column: 68, scope: !1777)
!1783 = !DILocation(line: 833, column: 72, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1774, file: !172, discriminator: 2)
!1785 = !DILocation(line: 833, column: 81, scope: !1784)
!1786 = !DILocation(line: 833, column: 103, scope: !1784)
!1787 = !DILocation(line: 833, column: 112, scope: !1784)
!1788 = !DILocation(line: 833, column: 99, scope: !1784)
!1789 = !DILocation(line: 833, column: 130, scope: !1784)
!1790 = !DILocation(line: 833, column: 135, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1774, file: !172, discriminator: 3)
!1792 = !DILocation(line: 833, column: 144, scope: !1791)
!1793 = !DILocation(line: 833, column: 133, scope: !1791)
!1794 = !DILocation(line: 833, column: 161, scope: !1791)
!1795 = !DILocation(line: 833, column: 170, scope: !1791)
!1796 = !DILocation(line: 833, column: 159, scope: !1791)
!1797 = !DILocation(line: 833, column: 156, scope: !1791)
!1798 = !DILocation(line: 833, column: 182, scope: !1791)
!1799 = !DILocation(line: 833, column: 188, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1774, file: !172, discriminator: 4)
!1801 = !DILocation(line: 833, column: 197, scope: !1800)
!1802 = !DILocation(line: 833, column: 187, scope: !1800)
!1803 = !DILocation(line: 833, column: 209, scope: !1800)
!1804 = !DILocation(line: 833, column: 221, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1774, file: !172, discriminator: 5)
!1806 = !DILocation(line: 833, column: 230, scope: !1805)
!1807 = !DILocation(line: 833, column: 244, scope: !1805)
!1808 = !DILocation(line: 833, column: 253, scope: !1805)
!1809 = !DILocation(line: 833, column: 213, scope: !1805)
!1810 = !DILocation(line: 833, column: 6, scope: !1805)
!1811 = !DILocation(line: 835, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1774, file: !172, line: 833, column: 269)
!1813 = !DILocation(line: 835, column: 27, scope: !1812)
!1814 = !DILocation(line: 835, column: 3, scope: !1812)
!1815 = !DILocation(line: 835, column: 11, scope: !1812)
!1816 = !DILocation(line: 835, column: 17, scope: !1812)
!1817 = !DILocation(line: 836, column: 17, scope: !1812)
!1818 = !DILocation(line: 836, column: 25, scope: !1812)
!1819 = !DILocation(line: 836, column: 3, scope: !1812)
!1820 = !DILocation(line: 836, column: 11, scope: !1812)
!1821 = !DILocation(line: 836, column: 15, scope: !1812)
!1822 = !DILocation(line: 837, column: 20, scope: !1812)
!1823 = !DILocation(line: 837, column: 28, scope: !1812)
!1824 = !DILocation(line: 837, column: 3, scope: !1812)
!1825 = !DILocation(line: 837, column: 11, scope: !1812)
!1826 = !DILocation(line: 837, column: 18, scope: !1812)
!1827 = !DILocation(line: 838, column: 21, scope: !1812)
!1828 = !DILocation(line: 838, column: 29, scope: !1812)
!1829 = !DILocation(line: 838, column: 3, scope: !1812)
!1830 = !DILocation(line: 838, column: 11, scope: !1812)
!1831 = !DILocation(line: 838, column: 19, scope: !1812)
!1832 = !DILocation(line: 839, column: 3, scope: !1812)
!1833 = !DILocation(line: 839, column: 11, scope: !1812)
!1834 = !DILocation(line: 839, column: 20, scope: !1812)
!1835 = !DILocation(line: 840, column: 2, scope: !1812)
!1836 = !DILocation(line: 842, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !172, line: 842, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1774, file: !172, line: 841, column: 7)
!1839 = !DILocation(line: 842, column: 15, scope: !1837)
!1840 = !DILocation(line: 842, column: 7, scope: !1838)
!1841 = !DILocation(line: 843, column: 11, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !172, line: 843, column: 8)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !172, line: 842, column: 24)
!1844 = !DILocation(line: 843, column: 20, scope: !1842)
!1845 = !DILocation(line: 843, column: 27, scope: !1842)
!1846 = !DILocation(line: 843, column: 30, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1842, file: !172, discriminator: 1)
!1848 = !DILocation(line: 843, column: 38, scope: !1847)
!1849 = !DILocation(line: 843, column: 8, scope: !1847)
!1850 = !DILocation(line: 844, column: 7, scope: !1842)
!1851 = !DILocation(line: 844, column: 16, scope: !1842)
!1852 = !DILocation(line: 844, column: 22, scope: !1842)
!1853 = !DILocation(line: 844, column: 5, scope: !1842)
!1854 = !DILocation(line: 845, column: 4, scope: !1843)
!1855 = !DILocation(line: 845, column: 12, scope: !1843)
!1856 = !DILocation(line: 845, column: 20, scope: !1843)
!1857 = !DILocation(line: 846, column: 3, scope: !1843)
!1858 = !DILocation(line: 847, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1838, file: !172, line: 847, column: 7)
!1860 = !DILocation(line: 847, column: 18, scope: !1859)
!1861 = !DILocation(line: 847, column: 7, scope: !1838)
!1862 = !DILocation(line: 849, column: 36, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !172, line: 847, column: 26)
!1864 = !DILocation(line: 849, column: 45, scope: !1863)
!1865 = !DILocation(line: 849, column: 52, scope: !1863)
!1866 = !DILocation(line: 849, column: 61, scope: !1863)
!1867 = !DILocation(line: 849, column: 13, scope: !1863)
!1868 = !DILocation(line: 850, column: 24, scope: !1863)
!1869 = !DILocation(line: 850, column: 13, scope: !1863)
!1870 = !DILocation(line: 848, column: 4, scope: !1863)
!1871 = !DILocation(line: 851, column: 30, scope: !1863)
!1872 = !DILocation(line: 851, column: 38, scope: !1863)
!1873 = !DILocation(line: 851, column: 4, scope: !1863)
!1874 = !DILocation(line: 852, column: 3, scope: !1863)
!1875 = !DILocation(line: 855, column: 1, scope: !1758)
!1876 = distinct !DISubprogram(name: "link_vsg_to_vs", scope: !172, file: !172, line: 902, type: !173, isLocal: false, isDefinition: true, scopeLine: 903, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!1877 = !DILocalVariable(name: "e", scope: !1876, file: !172, line: 904, type: !177)
!1878 = !DILocation(line: 904, column: 10, scope: !1876)
!1879 = !DILocalVariable(name: "e1", scope: !1876, file: !172, line: 904, type: !177)
!1880 = !DILocation(line: 904, column: 13, scope: !1876)
!1881 = !DILocalVariable(name: "next", scope: !1876, file: !172, line: 904, type: !177)
!1882 = !DILocation(line: 904, column: 17, scope: !1876)
!1883 = !DILocalVariable(name: "vs", scope: !1876, file: !172, line: 905, type: !181)
!1884 = !DILocation(line: 905, column: 20, scope: !1876)
!1885 = !DILocalVariable(name: "vsg_af", scope: !1876, file: !172, line: 906, type: !114)
!1886 = !DILocation(line: 906, column: 6, scope: !1876)
!1887 = !DILocalVariable(name: "vsg", scope: !1876, file: !172, line: 907, type: !188)
!1888 = !DILocation(line: 907, column: 26, scope: !1876)
!1889 = !DILocalVariable(name: "vsge", scope: !1876, file: !172, line: 908, type: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_entry_t", file: !183, line: 122, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group_entry", file: !183, line: 105, size: 1280, align: 64, elements: !1893)
!1893 = !{!1894, !1895, !1912}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "is_fwmark", scope: !1892, file: !183, line: 106, baseType: !244, size: 8, align: 8)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !183, line: 107, baseType: !1896, size: 1152, align: 64, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !183, line: 107, size: 1152, align: 64, elements: !1897)
!1897 = !{!1898, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !183, line: 108, baseType: !1899, size: 1152, align: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !183, line: 108, size: 1152, align: 64, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904, !1905}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1899, file: !183, line: 109, baseType: !196, size: 1024, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1899, file: !183, line: 110, baseType: !51, size: 32, align: 32, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_alive", scope: !1899, file: !183, line: 111, baseType: !52, size: 32, align: 32, offset: 1056)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "udp_alive", scope: !1899, file: !183, line: 112, baseType: !52, size: 32, align: 32, offset: 1088)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sctp_alive", scope: !1899, file: !183, line: 113, baseType: !52, size: 32, align: 32, offset: 1120)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !183, line: 115, baseType: !1907, size: 96, align: 32)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !183, line: 115, size: 96, align: 32, elements: !1908)
!1908 = !{!1909, !1910, !1911}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !1907, file: !183, line: 116, baseType: !51, size: 32, align: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fwm4_alive", scope: !1907, file: !183, line: 117, baseType: !52, size: 32, align: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fwm6_alive", scope: !1907, file: !183, line: 118, baseType: !52, size: 32, align: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !1892, file: !183, line: 121, baseType: !244, size: 8, align: 8, offset: 1216)
!1913 = !DILocation(line: 908, column: 32, scope: !1876)
!1914 = !DILocalVariable(name: "vsg_member_no", scope: !1876, file: !172, line: 909, type: !52)
!1915 = !DILocation(line: 909, column: 11, scope: !1876)
!1916 = !DILocation(line: 911, column: 8, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1876, file: !172, line: 911, column: 6)
!1918 = !DILocation(line: 911, column: 20, scope: !1917)
!1919 = !DILocation(line: 911, column: 24, scope: !1917)
!1920 = !DILocation(line: 911, column: 5, scope: !1917)
!1921 = !DILocation(line: 911, column: 10, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1917, file: !172, discriminator: 1)
!1923 = !DILocation(line: 911, column: 22, scope: !1922)
!1924 = !DILocation(line: 911, column: 27, scope: !1922)
!1925 = !DILocation(line: 911, column: 32, scope: !1922)
!1926 = !DILocation(line: 911, column: 5, scope: !1922)
!1927 = !DILocation(line: 911, column: 9, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1917, file: !172, discriminator: 2)
!1929 = !DILocation(line: 911, column: 21, scope: !1928)
!1930 = !DILocation(line: 911, column: 26, scope: !1928)
!1931 = !DILocation(line: 911, column: 31, scope: !1928)
!1932 = !DILocation(line: 911, column: 6, scope: !1928)
!1933 = !DILocation(line: 912, column: 3, scope: !1917)
!1934 = !DILocation(line: 914, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1876, file: !172, line: 914, column: 2)
!1936 = !DILocation(line: 914, column: 26, scope: !1935)
!1937 = !DILocation(line: 914, column: 13, scope: !1935)
!1938 = !DILocation(line: 914, column: 12, scope: !1935)
!1939 = !DILocation(line: 914, column: 12, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !172, discriminator: 1)
!1941 = !DILocation(line: 914, column: 13, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1935, file: !172, discriminator: 2)
!1943 = !DILocation(line: 914, column: 25, scope: !1942)
!1944 = !DILocation(line: 914, column: 30, scope: !1942)
!1945 = !DILocation(line: 914, column: 12, scope: !1942)
!1946 = !DILocation(line: 914, column: 12, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1935, file: !172, discriminator: 3)
!1948 = !DILocation(line: 914, column: 9, scope: !1947)
!1949 = !DILocation(line: 914, column: 7, scope: !1947)
!1950 = !DILocation(line: 914, column: 37, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !172, discriminator: 4)
!1952 = distinct !DILexicalBlock(scope: !1935, file: !172, line: 914, column: 2)
!1953 = !DILocation(line: 914, column: 2, scope: !1951)
!1954 = !DILocation(line: 915, column: 10, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !172, line: 914, column: 50)
!1956 = !DILocation(line: 915, column: 13, scope: !1955)
!1957 = !DILocation(line: 915, column: 8, scope: !1955)
!1958 = !DILocation(line: 916, column: 10, scope: !1955)
!1959 = !DILocation(line: 916, column: 14, scope: !1955)
!1960 = !DILocation(line: 916, column: 8, scope: !1955)
!1961 = !DILocation(line: 916, column: 6, scope: !1955)
!1962 = !DILocation(line: 918, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1955, file: !172, line: 918, column: 7)
!1964 = !DILocation(line: 918, column: 11, scope: !1963)
!1965 = !DILocation(line: 918, column: 7, scope: !1955)
!1966 = !DILocation(line: 919, column: 37, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !172, line: 918, column: 20)
!1968 = !DILocation(line: 919, column: 41, scope: !1967)
!1969 = !DILocation(line: 919, column: 50, scope: !1967)
!1970 = !DILocation(line: 919, column: 62, scope: !1967)
!1971 = !DILocation(line: 919, column: 14, scope: !1967)
!1972 = !DILocation(line: 919, column: 4, scope: !1967)
!1973 = !DILocation(line: 919, column: 8, scope: !1967)
!1974 = !DILocation(line: 919, column: 12, scope: !1967)
!1975 = !DILocation(line: 920, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 920, column: 8)
!1977 = !DILocation(line: 920, column: 13, scope: !1976)
!1978 = !DILocation(line: 920, column: 8, scope: !1967)
!1979 = !DILocation(line: 921, column: 111, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !172, line: 920, column: 18)
!1981 = !DILocation(line: 921, column: 115, scope: !1980)
!1982 = !DILocation(line: 921, column: 136, scope: !1980)
!1983 = !DILocation(line: 921, column: 125, scope: !1980)
!1984 = !DILocation(line: 921, column: 5, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1980, file: !172, discriminator: 1)
!1986 = !DILocation(line: 922, column: 22, scope: !1980)
!1987 = !DILocation(line: 922, column: 5, scope: !1980)
!1988 = !DILocation(line: 923, column: 23, scope: !1980)
!1989 = !DILocation(line: 923, column: 35, scope: !1980)
!1990 = !DILocation(line: 923, column: 39, scope: !1980)
!1991 = !DILocation(line: 923, column: 5, scope: !1980)
!1992 = !DILocation(line: 924, column: 5, scope: !1980)
!1993 = !DILocation(line: 928, column: 10, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 928, column: 8)
!1995 = !DILocation(line: 928, column: 14, scope: !1994)
!1996 = !DILocation(line: 928, column: 19, scope: !1994)
!1997 = !DILocation(line: 928, column: 31, scope: !1994)
!1998 = !DILocation(line: 928, column: 7, scope: !1994)
!1999 = !DILocation(line: 928, column: 12, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1994, file: !172, discriminator: 1)
!2001 = !DILocation(line: 928, column: 16, scope: !2000)
!2002 = !DILocation(line: 928, column: 21, scope: !2000)
!2003 = !DILocation(line: 928, column: 34, scope: !2000)
!2004 = !DILocation(line: 928, column: 39, scope: !2000)
!2005 = !DILocation(line: 928, column: 7, scope: !2000)
!2006 = !DILocation(line: 928, column: 11, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !1994, file: !172, discriminator: 2)
!2008 = !DILocation(line: 928, column: 15, scope: !2007)
!2009 = !DILocation(line: 928, column: 20, scope: !2007)
!2010 = !DILocation(line: 928, column: 33, scope: !2007)
!2011 = !DILocation(line: 928, column: 38, scope: !2007)
!2012 = !DILocation(line: 928, column: 10, scope: !2007)
!2013 = !DILocation(line: 929, column: 10, scope: !1994)
!2014 = !DILocation(line: 929, column: 14, scope: !1994)
!2015 = !DILocation(line: 929, column: 19, scope: !1994)
!2016 = !DILocation(line: 929, column: 28, scope: !1994)
!2017 = !DILocation(line: 929, column: 7, scope: !1994)
!2018 = !DILocation(line: 929, column: 12, scope: !2000)
!2019 = !DILocation(line: 929, column: 16, scope: !2000)
!2020 = !DILocation(line: 929, column: 21, scope: !2000)
!2021 = !DILocation(line: 929, column: 31, scope: !2000)
!2022 = !DILocation(line: 929, column: 36, scope: !2000)
!2023 = !DILocation(line: 929, column: 7, scope: !2000)
!2024 = !DILocation(line: 929, column: 11, scope: !2007)
!2025 = !DILocation(line: 929, column: 15, scope: !2007)
!2026 = !DILocation(line: 929, column: 20, scope: !2007)
!2027 = !DILocation(line: 929, column: 30, scope: !2007)
!2028 = !DILocation(line: 929, column: 35, scope: !2007)
!2029 = !DILocation(line: 928, column: 8, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !1967, file: !172, discriminator: 3)
!2031 = !DILocation(line: 930, column: 103, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1994, file: !172, line: 929, column: 11)
!2033 = !DILocation(line: 930, column: 107, scope: !2032)
!2034 = !DILocation(line: 930, column: 128, scope: !2032)
!2035 = !DILocation(line: 930, column: 117, scope: !2032)
!2036 = !DILocation(line: 930, column: 5, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2032, file: !172, discriminator: 1)
!2038 = !DILocation(line: 931, column: 22, scope: !2032)
!2039 = !DILocation(line: 931, column: 5, scope: !2032)
!2040 = !DILocation(line: 932, column: 23, scope: !2032)
!2041 = !DILocation(line: 932, column: 35, scope: !2032)
!2042 = !DILocation(line: 932, column: 39, scope: !2032)
!2043 = !DILocation(line: 932, column: 5, scope: !2032)
!2044 = !DILocation(line: 933, column: 5, scope: !2032)
!2045 = !DILocation(line: 937, column: 11, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 937, column: 8)
!2047 = !DILocation(line: 937, column: 15, scope: !2046)
!2048 = !DILocation(line: 937, column: 20, scope: !2046)
!2049 = !DILocation(line: 937, column: 32, scope: !2046)
!2050 = !DILocation(line: 937, column: 8, scope: !2046)
!2051 = !DILocation(line: 937, column: 13, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2046, file: !172, discriminator: 1)
!2053 = !DILocation(line: 937, column: 17, scope: !2052)
!2054 = !DILocation(line: 937, column: 22, scope: !2052)
!2055 = !DILocation(line: 937, column: 35, scope: !2052)
!2056 = !DILocation(line: 937, column: 40, scope: !2052)
!2057 = !DILocation(line: 937, column: 8, scope: !2052)
!2058 = !DILocation(line: 937, column: 12, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2046, file: !172, discriminator: 2)
!2060 = !DILocation(line: 937, column: 16, scope: !2059)
!2061 = !DILocation(line: 937, column: 21, scope: !2059)
!2062 = !DILocation(line: 937, column: 34, scope: !2059)
!2063 = !DILocation(line: 937, column: 39, scope: !2059)
!2064 = !DILocation(line: 937, column: 8, scope: !2059)
!2065 = !DILocation(line: 938, column: 17, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2046, file: !172, line: 937, column: 12)
!2067 = !DILocation(line: 938, column: 21, scope: !2066)
!2068 = !DILocation(line: 938, column: 26, scope: !2066)
!2069 = !DILocation(line: 938, column: 16, scope: !2066)
!2070 = !DILocation(line: 938, column: 15, scope: !2066)
!2071 = !DILocation(line: 938, column: 15, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2066, file: !172, discriminator: 1)
!2073 = !DILocation(line: 938, column: 14, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2066, file: !172, discriminator: 2)
!2075 = !DILocation(line: 938, column: 18, scope: !2074)
!2076 = !DILocation(line: 938, column: 23, scope: !2074)
!2077 = !DILocation(line: 938, column: 36, scope: !2074)
!2078 = !DILocation(line: 938, column: 15, scope: !2074)
!2079 = !DILocation(line: 938, column: 15, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2066, file: !172, discriminator: 3)
!2081 = !DILocation(line: 938, column: 44, scope: !2080)
!2082 = !DILocation(line: 938, column: 12, scope: !2080)
!2083 = !DILocation(line: 938, column: 10, scope: !2080)
!2084 = !DILocation(line: 939, column: 14, scope: !2066)
!2085 = !DILocation(line: 939, column: 20, scope: !2066)
!2086 = !DILocation(line: 939, column: 25, scope: !2066)
!2087 = !DILocation(line: 939, column: 12, scope: !2066)
!2088 = !DILocation(line: 940, column: 4, scope: !2066)
!2089 = !DILocation(line: 943, column: 12, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2046, file: !172, line: 941, column: 9)
!2091 = !DILocation(line: 946, column: 8, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1967, file: !172, line: 946, column: 8)
!2093 = !DILocation(line: 946, column: 15, scope: !2092)
!2094 = !DILocation(line: 946, column: 27, scope: !2092)
!2095 = !DILocation(line: 946, column: 30, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2092, file: !172, discriminator: 1)
!2097 = !DILocation(line: 946, column: 40, scope: !2096)
!2098 = !DILocation(line: 946, column: 44, scope: !2096)
!2099 = !DILocation(line: 946, column: 37, scope: !2096)
!2100 = !DILocation(line: 946, column: 8, scope: !2096)
!2101 = !DILocation(line: 947, column: 111, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2092, file: !172, line: 946, column: 48)
!2103 = !DILocation(line: 947, column: 115, scope: !2102)
!2104 = !DILocation(line: 947, column: 136, scope: !2102)
!2105 = !DILocation(line: 947, column: 125, scope: !2102)
!2106 = !DILocation(line: 947, column: 5, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2102, file: !172, discriminator: 1)
!2108 = !DILocation(line: 948, column: 22, scope: !2102)
!2109 = !DILocation(line: 948, column: 5, scope: !2102)
!2110 = !DILocation(line: 949, column: 23, scope: !2102)
!2111 = !DILocation(line: 949, column: 35, scope: !2102)
!2112 = !DILocation(line: 949, column: 39, scope: !2102)
!2113 = !DILocation(line: 949, column: 5, scope: !2102)
!2114 = !DILocation(line: 950, column: 4, scope: !2102)
!2115 = !DILocation(line: 951, column: 3, scope: !1967)
!2116 = !DILocation(line: 952, column: 2, scope: !1955)
!2117 = !DILocation(line: 914, column: 44, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !1952, file: !172, discriminator: 5)
!2119 = !DILocation(line: 914, column: 42, scope: !2118)
!2120 = !DILocation(line: 914, column: 2, scope: !2118)
!2121 = distinct !{!2121, !2122}
!2122 = !DILocation(line: 914, column: 2, scope: !1876)
!2123 = !DILocation(line: 955, column: 8, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1876, file: !172, line: 955, column: 6)
!2125 = !DILocation(line: 955, column: 20, scope: !2124)
!2126 = !DILocation(line: 955, column: 30, scope: !2124)
!2127 = !DILocation(line: 955, column: 5, scope: !2124)
!2128 = !DILocation(line: 955, column: 10, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2124, file: !172, discriminator: 1)
!2130 = !DILocation(line: 955, column: 22, scope: !2129)
!2131 = !DILocation(line: 955, column: 33, scope: !2129)
!2132 = !DILocation(line: 955, column: 38, scope: !2129)
!2133 = !DILocation(line: 955, column: 5, scope: !2129)
!2134 = !DILocation(line: 955, column: 9, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2124, file: !172, discriminator: 2)
!2136 = !DILocation(line: 955, column: 21, scope: !2135)
!2137 = !DILocation(line: 955, column: 32, scope: !2135)
!2138 = !DILocation(line: 955, column: 37, scope: !2135)
!2139 = !DILocation(line: 955, column: 6, scope: !2135)
!2140 = !DILocation(line: 956, column: 3, scope: !2124)
!2141 = !DILocation(line: 958, column: 14, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1876, file: !172, line: 958, column: 2)
!2143 = !DILocation(line: 958, column: 26, scope: !2142)
!2144 = !DILocation(line: 958, column: 13, scope: !2142)
!2145 = !DILocation(line: 958, column: 12, scope: !2142)
!2146 = !DILocation(line: 958, column: 12, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2142, file: !172, discriminator: 1)
!2148 = !DILocation(line: 958, column: 13, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2142, file: !172, discriminator: 2)
!2150 = !DILocation(line: 958, column: 25, scope: !2149)
!2151 = !DILocation(line: 958, column: 36, scope: !2149)
!2152 = !DILocation(line: 958, column: 12, scope: !2149)
!2153 = !DILocation(line: 958, column: 12, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2142, file: !172, discriminator: 3)
!2155 = !DILocation(line: 958, column: 9, scope: !2154)
!2156 = !DILocation(line: 958, column: 7, scope: !2154)
!2157 = !DILocation(line: 958, column: 43, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !172, discriminator: 4)
!2159 = distinct !DILexicalBlock(scope: !2142, file: !172, line: 958, column: 2)
!2160 = !DILocation(line: 958, column: 2, scope: !2158)
!2161 = !DILocation(line: 959, column: 17, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !172, line: 958, column: 65)
!2163 = !DILocation(line: 960, column: 11, scope: !2162)
!2164 = !DILocation(line: 960, column: 15, scope: !2162)
!2165 = !DILocation(line: 960, column: 9, scope: !2162)
!2166 = !DILocation(line: 960, column: 7, scope: !2162)
!2167 = !DILocation(line: 962, column: 16, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !172, line: 962, column: 3)
!2169 = !DILocation(line: 962, column: 28, scope: !2168)
!2170 = !DILocation(line: 962, column: 15, scope: !2168)
!2171 = !DILocation(line: 962, column: 14, scope: !2168)
!2172 = !DILocation(line: 962, column: 14, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2168, file: !172, discriminator: 1)
!2174 = !DILocation(line: 962, column: 15, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2168, file: !172, discriminator: 2)
!2176 = !DILocation(line: 962, column: 27, scope: !2175)
!2177 = !DILocation(line: 962, column: 32, scope: !2175)
!2178 = !DILocation(line: 962, column: 14, scope: !2175)
!2179 = !DILocation(line: 962, column: 14, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2168, file: !172, discriminator: 3)
!2181 = !DILocation(line: 962, column: 11, scope: !2180)
!2182 = !DILocation(line: 962, column: 8, scope: !2180)
!2183 = !DILocation(line: 962, column: 39, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2185, file: !172, discriminator: 4)
!2185 = distinct !DILexicalBlock(scope: !2168, file: !172, line: 962, column: 3)
!2186 = !DILocation(line: 962, column: 3, scope: !2184)
!2187 = !DILocation(line: 963, column: 11, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !172, line: 962, column: 64)
!2189 = !DILocation(line: 963, column: 16, scope: !2188)
!2190 = !DILocation(line: 963, column: 9, scope: !2188)
!2191 = !DILocation(line: 963, column: 7, scope: !2188)
!2192 = !DILocation(line: 965, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2188, file: !172, line: 965, column: 8)
!2194 = !DILocation(line: 965, column: 13, scope: !2193)
!2195 = !DILocation(line: 965, column: 8, scope: !2188)
!2196 = !DILocation(line: 966, column: 5, scope: !2193)
!2197 = !DILocation(line: 968, column: 16, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2188, file: !172, line: 968, column: 8)
!2199 = !DILocation(line: 968, column: 20, scope: !2198)
!2200 = !DILocation(line: 968, column: 29, scope: !2198)
!2201 = !DILocation(line: 968, column: 34, scope: !2198)
!2202 = !DILocation(line: 968, column: 9, scope: !2198)
!2203 = !DILocation(line: 968, column: 8, scope: !2188)
!2204 = !DILocation(line: 970, column: 57, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2198, file: !172, line: 968, column: 42)
!2206 = !DILocation(line: 970, column: 51, scope: !2205)
!2207 = !DILocation(line: 970, column: 29, scope: !2205)
!2208 = !DILocation(line: 970, column: 33, scope: !2205)
!2209 = !DILocation(line: 970, column: 40, scope: !2205)
!2210 = !DILocation(line: 970, column: 49, scope: !2205)
!2211 = !DILocation(line: 971, column: 18, scope: !2205)
!2212 = !DILocation(line: 972, column: 4, scope: !2205)
!2213 = !DILocation(line: 973, column: 3, scope: !2188)
!2214 = !DILocation(line: 962, column: 52, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2185, file: !172, discriminator: 5)
!2216 = !DILocation(line: 962, column: 57, scope: !2215)
!2217 = !DILocation(line: 962, column: 49, scope: !2215)
!2218 = !DILocation(line: 962, column: 3, scope: !2215)
!2219 = distinct !{!2219, !2220}
!2220 = !DILocation(line: 962, column: 3, scope: !2162)
!2221 = !DILocation(line: 974, column: 2, scope: !2162)
!2222 = !DILocation(line: 958, column: 54, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2159, file: !172, discriminator: 5)
!2224 = !DILocation(line: 958, column: 58, scope: !2223)
!2225 = !DILocation(line: 958, column: 51, scope: !2223)
!2226 = !DILocation(line: 958, column: 2, scope: !2223)
!2227 = distinct !{!2227, !2228}
!2228 = !DILocation(line: 958, column: 2, scope: !1876)
!2229 = !DILocation(line: 975, column: 1, scope: !1876)
!2230 = distinct !DISubprogram(name: "clear_service_rs", scope: !172, file: !172, line: 186, type: !2231, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !181, !85, !244}
!2233 = !DILocalVariable(name: "vs", arg: 1, scope: !2230, file: !172, line: 186, type: !181)
!2234 = !DILocation(line: 186, column: 37, scope: !2230)
!2235 = !DILocalVariable(name: "l", arg: 2, scope: !2230, file: !172, line: 186, type: !85)
!2236 = !DILocation(line: 186, column: 46, scope: !2230)
!2237 = !DILocalVariable(name: "stopping", arg: 3, scope: !2230, file: !172, line: 186, type: !244)
!2238 = !DILocation(line: 186, column: 53, scope: !2230)
!2239 = !DILocalVariable(name: "e", scope: !2230, file: !172, line: 188, type: !177)
!2240 = !DILocation(line: 188, column: 10, scope: !2230)
!2241 = !DILocalVariable(name: "rs", scope: !2230, file: !172, line: 189, type: !207)
!2242 = !DILocation(line: 189, column: 17, scope: !2230)
!2243 = !DILocalVariable(name: "weight_sum", scope: !2230, file: !172, line: 190, type: !142)
!2244 = !DILocation(line: 190, column: 7, scope: !2230)
!2245 = !DILocalVariable(name: "threshold", scope: !2230, file: !172, line: 191, type: !142)
!2246 = !DILocation(line: 191, column: 7, scope: !2230)
!2247 = !DILocation(line: 191, column: 19, scope: !2230)
!2248 = !DILocation(line: 191, column: 23, scope: !2230)
!2249 = !DILocation(line: 191, column: 32, scope: !2230)
!2250 = !DILocation(line: 191, column: 36, scope: !2230)
!2251 = !DILocation(line: 191, column: 30, scope: !2230)
!2252 = !DILocalVariable(name: "sav_inhibit", scope: !2230, file: !172, line: 192, type: !244)
!2253 = !DILocation(line: 192, column: 6, scope: !2230)
!2254 = !DILocalVariable(name: "rs_info", scope: !2230, file: !172, line: 193, type: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "smtp_rs", file: !25, line: 115, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_smtp_rs", file: !25, line: 112, size: 128, align: 64, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !2256, file: !25, line: 113, baseType: !207, size: 64, align: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !2256, file: !25, line: 114, baseType: !181, size: 64, align: 64, offset: 64)
!2260 = !DILocation(line: 193, column: 10, scope: !2230)
!2261 = !DILocation(line: 193, column: 20, scope: !2230)
!2262 = !DILocation(line: 193, column: 28, scope: !2230)
!2263 = !DILocation(line: 195, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2230, file: !172, line: 195, column: 2)
!2265 = !DILocation(line: 195, column: 14, scope: !2264)
!2266 = !DILocation(line: 195, column: 23, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 1)
!2268 = !DILocation(line: 195, column: 22, scope: !2267)
!2269 = !DILocation(line: 195, column: 21, scope: !2267)
!2270 = !DILocation(line: 195, column: 21, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 2)
!2272 = !DILocation(line: 195, column: 4, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 3)
!2274 = !DILocation(line: 195, column: 8, scope: !2273)
!2275 = !DILocation(line: 195, column: 21, scope: !2273)
!2276 = !DILocation(line: 195, column: 21, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 4)
!2278 = !DILocation(line: 195, column: 14, scope: !2277)
!2279 = !DILocation(line: 195, column: 14, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 5)
!2281 = !DILocation(line: 195, column: 14, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 6)
!2283 = !DILocation(line: 195, column: 11, scope: !2282)
!2284 = !DILocation(line: 195, column: 7, scope: !2282)
!2285 = !DILocation(line: 195, column: 5, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !172, discriminator: 7)
!2287 = distinct !DILexicalBlock(scope: !2264, file: !172, line: 195, column: 2)
!2288 = !DILocation(line: 195, column: 4, scope: !2286)
!2289 = !DILocation(line: 195, column: 8, scope: !2286)
!2290 = !DILocation(line: 195, column: 21, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2287, file: !172, discriminator: 8)
!2292 = !DILocation(line: 195, column: 25, scope: !2291)
!2293 = !DILocation(line: 195, column: 19, scope: !2291)
!2294 = !DILocation(line: 195, column: 17, scope: !2291)
!2295 = !DILocation(line: 195, column: 2, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2264, file: !172, discriminator: 9)
!2297 = !DILocation(line: 196, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 196, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2287, file: !172, line: 195, column: 55)
!2300 = !DILocation(line: 196, column: 11, scope: !2298)
!2301 = !DILocation(line: 196, column: 15, scope: !2298)
!2302 = !DILocation(line: 196, column: 18, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2298, file: !172, discriminator: 1)
!2304 = !DILocation(line: 196, column: 7, scope: !2303)
!2305 = !DILocation(line: 198, column: 6, scope: !2298)
!2306 = !DILocation(line: 199, column: 6, scope: !2298)
!2307 = !DILocation(line: 199, column: 10, scope: !2298)
!2308 = !DILocation(line: 199, column: 18, scope: !2298)
!2309 = !DILocation(line: 199, column: 22, scope: !2303)
!2310 = !DILocation(line: 199, column: 26, scope: !2303)
!2311 = !DILocation(line: 199, column: 21, scope: !2303)
!2312 = !DILocation(line: 199, column: 6, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2298, file: !172, discriminator: 2)
!2314 = !DILocation(line: 200, column: 30, scope: !2298)
!2315 = !DILocation(line: 200, column: 35, scope: !2298)
!2316 = !DILocation(line: 200, column: 42, scope: !2298)
!2317 = !DILocation(line: 200, column: 47, scope: !2298)
!2318 = !DILocation(line: 200, column: 7, scope: !2298)
!2319 = !DILocation(line: 201, column: 18, scope: !2298)
!2320 = !DILocation(line: 201, column: 7, scope: !2298)
!2321 = !DILocation(line: 197, column: 4, scope: !2298)
!2322 = !DILocation(line: 203, column: 8, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 203, column: 7)
!2324 = !DILocation(line: 203, column: 12, scope: !2323)
!2325 = !DILocation(line: 203, column: 7, scope: !2299)
!2326 = !DILocation(line: 204, column: 4, scope: !2323)
!2327 = !DILocation(line: 207, column: 17, scope: !2299)
!2328 = !DILocation(line: 207, column: 21, scope: !2299)
!2329 = !DILocation(line: 207, column: 15, scope: !2299)
!2330 = !DILocation(line: 208, column: 3, scope: !2299)
!2331 = !DILocation(line: 208, column: 7, scope: !2299)
!2332 = !DILocation(line: 208, column: 15, scope: !2299)
!2333 = !DILocation(line: 210, column: 29, scope: !2299)
!2334 = !DILocation(line: 210, column: 33, scope: !2299)
!2335 = !DILocation(line: 210, column: 3, scope: !2299)
!2336 = !DILocation(line: 212, column: 17, scope: !2299)
!2337 = !DILocation(line: 212, column: 3, scope: !2299)
!2338 = !DILocation(line: 212, column: 7, scope: !2299)
!2339 = !DILocation(line: 212, column: 15, scope: !2299)
!2340 = !DILocation(line: 214, column: 8, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 214, column: 7)
!2342 = !DILocation(line: 214, column: 12, scope: !2341)
!2343 = !DILocation(line: 214, column: 7, scope: !2299)
!2344 = !DILocation(line: 215, column: 4, scope: !2341)
!2345 = !DILocation(line: 217, column: 5, scope: !2299)
!2346 = !DILocation(line: 217, column: 10, scope: !2299)
!2347 = !DILocation(line: 217, column: 16, scope: !2299)
!2348 = !DILocation(line: 220, column: 8, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 220, column: 7)
!2350 = !DILocation(line: 220, column: 12, scope: !2349)
!2351 = !DILocation(line: 220, column: 18, scope: !2349)
!2352 = !DILocation(line: 220, column: 21, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2349, file: !172, discriminator: 1)
!2354 = !DILocation(line: 220, column: 7, scope: !2353)
!2355 = !DILocation(line: 224, column: 4, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 220, column: 31)
!2357 = !DILocation(line: 230, column: 18, scope: !2299)
!2358 = !DILocation(line: 230, column: 22, scope: !2299)
!2359 = !DILocation(line: 230, column: 26, scope: !2299)
!2360 = !DILocation(line: 230, column: 3, scope: !2299)
!2361 = !DILocation(line: 233, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 233, column: 7)
!2363 = !DILocation(line: 233, column: 11, scope: !2362)
!2364 = !DILocation(line: 233, column: 7, scope: !2299)
!2365 = !DILocation(line: 234, column: 17, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !172, line: 233, column: 23)
!2367 = !DILocation(line: 234, column: 12, scope: !2366)
!2368 = !DILocation(line: 234, column: 15, scope: !2366)
!2369 = !DILocation(line: 235, column: 33, scope: !2366)
!2370 = !DILocation(line: 235, column: 51, scope: !2366)
!2371 = !DILocation(line: 235, column: 4, scope: !2366)
!2372 = !DILocation(line: 236, column: 3, scope: !2366)
!2373 = !DILocation(line: 237, column: 2, scope: !2299)
!2374 = !DILocation(line: 195, column: 44, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2287, file: !172, discriminator: 10)
!2376 = !DILocation(line: 195, column: 48, scope: !2375)
!2377 = !DILocation(line: 195, column: 41, scope: !2375)
!2378 = !DILocation(line: 195, column: 2, scope: !2375)
!2379 = distinct !{!2379, !2380}
!2380 = !DILocation(line: 195, column: 2, scope: !2230)
!2381 = !DILocation(line: 243, column: 38, scope: !2230)
!2382 = !DILocation(line: 243, column: 15, scope: !2230)
!2383 = !DILocation(line: 243, column: 13, scope: !2230)
!2384 = !DILocation(line: 244, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2230, file: !172, line: 244, column: 6)
!2386 = !DILocation(line: 244, column: 15, scope: !2385)
!2387 = !DILocation(line: 245, column: 7, scope: !2385)
!2388 = !DILocation(line: 245, column: 11, scope: !2385)
!2389 = !DILocation(line: 245, column: 27, scope: !2385)
!2390 = !DILocation(line: 246, column: 9, scope: !2385)
!2391 = !DILocation(line: 246, column: 20, scope: !2385)
!2392 = !DILocation(line: 246, column: 23, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2385, file: !172, discriminator: 1)
!2394 = !DILocation(line: 246, column: 36, scope: !2393)
!2395 = !DILocation(line: 246, column: 34, scope: !2393)
!2396 = !DILocation(line: 244, column: 6, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2230, file: !172, discriminator: 1)
!2398 = !DILocation(line: 247, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2385, file: !172, line: 246, column: 49)
!2400 = !DILocation(line: 247, column: 7, scope: !2399)
!2401 = !DILocation(line: 247, column: 23, scope: !2399)
!2402 = !DILocation(line: 248, column: 18, scope: !2399)
!2403 = !DILocation(line: 248, column: 28, scope: !2399)
!2404 = !DILocation(line: 248, column: 39, scope: !2399)
!2405 = !DILocation(line: 248, column: 51, scope: !2399)
!2406 = !DILocation(line: 248, column: 3, scope: !2399)
!2407 = !DILocation(line: 249, column: 2, scope: !2399)
!2408 = !DILocation(line: 250, column: 1, scope: !2230)
!2409 = distinct !DISubprogram(name: "do_vs_notifies", scope: !172, file: !172, line: 122, type: !2410, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !181, !244, !142, !142, !244}
!2412 = !DILocalVariable(name: "vs", arg: 1, scope: !2409, file: !172, line: 122, type: !181)
!2413 = !DILocation(line: 122, column: 34, scope: !2409)
!2414 = !DILocalVariable(name: "init", arg: 2, scope: !2409, file: !172, line: 122, type: !244)
!2415 = !DILocation(line: 122, column: 42, scope: !2409)
!2416 = !DILocalVariable(name: "threshold", arg: 3, scope: !2409, file: !172, line: 122, type: !142)
!2417 = !DILocation(line: 122, column: 53, scope: !2409)
!2418 = !DILocalVariable(name: "weight_sum", arg: 4, scope: !2409, file: !172, line: 122, type: !142)
!2419 = !DILocation(line: 122, column: 69, scope: !2409)
!2420 = !DILocalVariable(name: "stopping", arg: 5, scope: !2409, file: !172, line: 122, type: !244)
!2421 = !DILocation(line: 122, column: 86, scope: !2409)
!2422 = !DILocalVariable(name: "notify_script", scope: !2409, file: !172, line: 124, type: !220)
!2423 = !DILocation(line: 124, column: 19, scope: !2409)
!2424 = !DILocation(line: 124, column: 35, scope: !2409)
!2425 = !DILocation(line: 124, column: 39, scope: !2409)
!2426 = !DILocation(line: 124, column: 57, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2409, file: !172, discriminator: 1)
!2428 = !DILocation(line: 124, column: 61, scope: !2427)
!2429 = !DILocation(line: 124, column: 35, scope: !2427)
!2430 = !DILocation(line: 124, column: 80, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2409, file: !172, discriminator: 2)
!2432 = !DILocation(line: 124, column: 84, scope: !2431)
!2433 = !DILocation(line: 124, column: 35, scope: !2431)
!2434 = !DILocation(line: 124, column: 35, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2409, file: !172, discriminator: 3)
!2436 = !DILocation(line: 124, column: 19, scope: !2435)
!2437 = !DILocalVariable(name: "message", scope: !2409, file: !172, line: 125, type: !2438)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 640, align: 8, elements: !2439)
!2439 = !{!2440}
!2440 = !DISubrange(count: 80)
!2441 = !DILocation(line: 125, column: 7, scope: !2409)
!2442 = !DILocation(line: 132, column: 6, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2409, file: !172, line: 132, column: 6)
!2444 = !DILocation(line: 132, column: 15, scope: !2443)
!2445 = !DILocation(line: 132, column: 19, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2443, file: !172, discriminator: 1)
!2447 = !DILocation(line: 132, column: 23, scope: !2446)
!2448 = !DILocation(line: 132, column: 6, scope: !2446)
!2449 = !DILocation(line: 133, column: 3, scope: !2443)
!2450 = !DILocation(line: 135, column: 6, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2409, file: !172, line: 135, column: 6)
!2452 = !DILocation(line: 135, column: 6, scope: !2409)
!2453 = !DILocation(line: 136, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !172, line: 136, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !172, line: 135, column: 21)
!2456 = !DILocation(line: 136, column: 7, scope: !2455)
!2457 = !DILocation(line: 137, column: 23, scope: !2454)
!2458 = !DILocation(line: 137, column: 67, scope: !2454)
!2459 = !DILocation(line: 137, column: 4, scope: !2454)
!2460 = !DILocation(line: 139, column: 16, scope: !2454)
!2461 = !DILocation(line: 139, column: 4, scope: !2454)
!2462 = !DILocation(line: 140, column: 2, scope: !2455)
!2463 = !DILocation(line: 142, column: 17, scope: !2409)
!2464 = !DILocation(line: 142, column: 2, scope: !2409)
!2465 = !DILocation(line: 144, column: 6, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2409, file: !172, line: 144, column: 6)
!2467 = !DILocation(line: 144, column: 10, scope: !2466)
!2468 = !DILocation(line: 144, column: 6, scope: !2409)
!2469 = !DILocation(line: 145, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !172, line: 145, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !172, line: 144, column: 22)
!2472 = !DILocation(line: 145, column: 7, scope: !2471)
!2473 = !DILocation(line: 146, column: 13, scope: !2470)
!2474 = !DILocation(line: 146, column: 4, scope: !2470)
!2475 = !DILocation(line: 148, column: 13, scope: !2470)
!2476 = !DILocation(line: 149, column: 9, scope: !2470)
!2477 = !DILocation(line: 149, column: 13, scope: !2470)
!2478 = !DILocation(line: 150, column: 10, scope: !2470)
!2479 = !DILocation(line: 149, column: 9, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2470, file: !172, discriminator: 1)
!2481 = !DILocation(line: 152, column: 10, scope: !2470)
!2482 = !DILocation(line: 149, column: 9, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2470, file: !172, discriminator: 2)
!2484 = !DILocation(line: 149, column: 9, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2470, file: !172, discriminator: 3)
!2486 = !DILocation(line: 154, column: 9, scope: !2470)
!2487 = !DILocation(line: 154, column: 13, scope: !2470)
!2488 = !DILocation(line: 155, column: 9, scope: !2470)
!2489 = !DILocation(line: 155, column: 13, scope: !2470)
!2490 = !DILocation(line: 156, column: 9, scope: !2470)
!2491 = !DILocation(line: 157, column: 9, scope: !2470)
!2492 = !DILocation(line: 148, column: 4, scope: !2480)
!2493 = !DILocation(line: 158, column: 27, scope: !2471)
!2494 = !DILocation(line: 158, column: 31, scope: !2471)
!2495 = !DILocation(line: 158, column: 35, scope: !2471)
!2496 = !DILocation(line: 158, column: 68, scope: !2471)
!2497 = !DILocation(line: 158, column: 3, scope: !2471)
!2498 = !DILocation(line: 159, column: 2, scope: !2471)
!2499 = !DILocation(line: 160, column: 1, scope: !2409)
!2500 = distinct !DISubprogram(name: "notify_fifo_vs", scope: !172, file: !172, line: 56, type: !2501, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !181}
!2503 = !DILocalVariable(name: "vs", arg: 1, scope: !2500, file: !172, line: 56, type: !181)
!2504 = !DILocation(line: 56, column: 34, scope: !2500)
!2505 = !DILocalVariable(name: "state", scope: !2500, file: !172, line: 58, type: !116)
!2506 = !DILocation(line: 58, column: 8, scope: !2500)
!2507 = !DILocation(line: 58, column: 16, scope: !2500)
!2508 = !DILocation(line: 58, column: 20, scope: !2500)
!2509 = !DILocalVariable(name: "size", scope: !2500, file: !172, line: 59, type: !160)
!2510 = !DILocation(line: 59, column: 9, scope: !2500)
!2511 = !DILocalVariable(name: "line", scope: !2500, file: !172, line: 60, type: !116)
!2512 = !DILocation(line: 60, column: 8, scope: !2500)
!2513 = !DILocalVariable(name: "vs_str", scope: !2500, file: !172, line: 61, type: !116)
!2514 = !DILocation(line: 61, column: 8, scope: !2500)
!2515 = !DILocation(line: 63, column: 6, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2500, file: !172, line: 63, column: 6)
!2517 = !DILocation(line: 63, column: 19, scope: !2516)
!2518 = !DILocation(line: 63, column: 31, scope: !2516)
!2519 = !DILocation(line: 63, column: 34, scope: !2516)
!2520 = !DILocation(line: 63, column: 40, scope: !2516)
!2521 = !DILocation(line: 64, column: 6, scope: !2516)
!2522 = !DILocation(line: 64, column: 19, scope: !2516)
!2523 = !DILocation(line: 64, column: 35, scope: !2516)
!2524 = !DILocation(line: 64, column: 38, scope: !2516)
!2525 = !DILocation(line: 63, column: 6, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2500, file: !172, discriminator: 1)
!2527 = !DILocation(line: 65, column: 3, scope: !2516)
!2528 = !DILocation(line: 67, column: 23, scope: !2500)
!2529 = !DILocation(line: 67, column: 12, scope: !2500)
!2530 = !DILocation(line: 67, column: 9, scope: !2500)
!2531 = !DILocation(line: 68, column: 16, scope: !2500)
!2532 = !DILocation(line: 68, column: 9, scope: !2500)
!2533 = !DILocation(line: 68, column: 33, scope: !2500)
!2534 = !DILocation(line: 68, column: 26, scope: !2526)
!2535 = !DILocation(line: 68, column: 24, scope: !2500)
!2536 = !DILocation(line: 68, column: 40, scope: !2500)
!2537 = !DILocation(line: 68, column: 7, scope: !2500)
!2538 = !DILocation(line: 69, column: 17, scope: !2500)
!2539 = !DILocation(line: 69, column: 10, scope: !2500)
!2540 = !DILocation(line: 69, column: 7, scope: !2500)
!2541 = !DILocation(line: 70, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2500, file: !172, line: 70, column: 6)
!2543 = !DILocation(line: 70, column: 6, scope: !2500)
!2544 = !DILocation(line: 71, column: 3, scope: !2542)
!2545 = !DILocation(line: 73, column: 11, scope: !2500)
!2546 = !DILocation(line: 73, column: 17, scope: !2500)
!2547 = !DILocation(line: 73, column: 37, scope: !2500)
!2548 = !DILocation(line: 73, column: 45, scope: !2500)
!2549 = !DILocation(line: 73, column: 2, scope: !2500)
!2550 = !DILocation(line: 75, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2500, file: !172, line: 75, column: 6)
!2552 = !DILocation(line: 75, column: 19, scope: !2551)
!2553 = !DILocation(line: 75, column: 31, scope: !2551)
!2554 = !DILocation(line: 75, column: 34, scope: !2551)
!2555 = !DILocation(line: 75, column: 6, scope: !2500)
!2556 = !DILocation(line: 76, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !172, line: 76, column: 7)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !172, line: 75, column: 41)
!2559 = !DILocation(line: 76, column: 26, scope: !2557)
!2560 = !DILocation(line: 76, column: 38, scope: !2557)
!2561 = !DILocation(line: 76, column: 42, scope: !2557)
!2562 = !DILocation(line: 76, column: 48, scope: !2557)
!2563 = !DILocation(line: 76, column: 53, scope: !2557)
!2564 = !DILocation(line: 76, column: 7, scope: !2557)
!2565 = !DILocation(line: 76, column: 58, scope: !2557)
!2566 = !DILocation(line: 76, column: 7, scope: !2558)
!2567 = !DILocation(line: 76, column: 66, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2569, file: !172, discriminator: 1)
!2569 = distinct !DILexicalBlock(scope: !2557, file: !172, line: 76, column: 65)
!2570 = !DILocation(line: 77, column: 2, scope: !2558)
!2571 = !DILocation(line: 78, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2500, file: !172, line: 78, column: 6)
!2573 = !DILocation(line: 78, column: 19, scope: !2572)
!2574 = !DILocation(line: 78, column: 35, scope: !2572)
!2575 = !DILocation(line: 78, column: 38, scope: !2572)
!2576 = !DILocation(line: 78, column: 6, scope: !2500)
!2577 = !DILocation(line: 79, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !172, line: 79, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2572, file: !172, line: 78, column: 45)
!2580 = !DILocation(line: 79, column: 26, scope: !2578)
!2581 = !DILocation(line: 79, column: 42, scope: !2578)
!2582 = !DILocation(line: 79, column: 46, scope: !2578)
!2583 = !DILocation(line: 79, column: 52, scope: !2578)
!2584 = !DILocation(line: 79, column: 57, scope: !2578)
!2585 = !DILocation(line: 79, column: 7, scope: !2578)
!2586 = !DILocation(line: 79, column: 62, scope: !2578)
!2587 = !DILocation(line: 79, column: 7, scope: !2579)
!2588 = !DILocation(line: 79, column: 70, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2590, file: !172, discriminator: 1)
!2590 = distinct !DILexicalBlock(scope: !2578, file: !172, line: 79, column: 69)
!2591 = !DILocation(line: 80, column: 2, scope: !2579)
!2592 = !DILocation(line: 82, column: 8, scope: !2500)
!2593 = !DILocation(line: 82, column: 3, scope: !2500)
!2594 = !DILocation(line: 82, column: 22, scope: !2500)
!2595 = !DILocation(line: 83, column: 1, scope: !2500)
!2596 = !DILocation(line: 83, column: 1, scope: !2526)
!2597 = distinct !DISubprogram(name: "init_service_rs", scope: !172, file: !172, line: 302, type: !571, isLocal: true, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2598 = !DILocalVariable(name: "vs", arg: 1, scope: !2597, file: !172, line: 302, type: !181)
!2599 = !DILocation(line: 302, column: 36, scope: !2597)
!2600 = !DILocalVariable(name: "e", scope: !2597, file: !172, line: 304, type: !177)
!2601 = !DILocation(line: 304, column: 10, scope: !2597)
!2602 = !DILocalVariable(name: "rs", scope: !2597, file: !172, line: 305, type: !207)
!2603 = !DILocation(line: 305, column: 17, scope: !2597)
!2604 = !DILocation(line: 307, column: 15, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2597, file: !172, line: 307, column: 2)
!2606 = !DILocation(line: 307, column: 19, scope: !2605)
!2607 = !DILocation(line: 307, column: 14, scope: !2605)
!2608 = !DILocation(line: 307, column: 28, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 1)
!2610 = !DILocation(line: 307, column: 32, scope: !2609)
!2611 = !DILocation(line: 307, column: 27, scope: !2609)
!2612 = !DILocation(line: 307, column: 26, scope: !2609)
!2613 = !DILocation(line: 307, column: 26, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 2)
!2615 = !DILocation(line: 307, column: 4, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 3)
!2617 = !DILocation(line: 307, column: 8, scope: !2616)
!2618 = !DILocation(line: 307, column: 13, scope: !2616)
!2619 = !DILocation(line: 307, column: 26, scope: !2616)
!2620 = !DILocation(line: 307, column: 26, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 4)
!2622 = !DILocation(line: 307, column: 14, scope: !2621)
!2623 = !DILocation(line: 307, column: 14, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 5)
!2625 = !DILocation(line: 307, column: 14, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 6)
!2627 = !DILocation(line: 307, column: 11, scope: !2626)
!2628 = !DILocation(line: 307, column: 7, scope: !2626)
!2629 = !DILocation(line: 307, column: 5, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2631, file: !172, discriminator: 7)
!2631 = distinct !DILexicalBlock(scope: !2605, file: !172, line: 307, column: 2)
!2632 = !DILocation(line: 307, column: 4, scope: !2630)
!2633 = !DILocation(line: 307, column: 8, scope: !2630)
!2634 = !DILocation(line: 307, column: 21, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2631, file: !172, discriminator: 8)
!2636 = !DILocation(line: 307, column: 25, scope: !2635)
!2637 = !DILocation(line: 307, column: 19, scope: !2635)
!2638 = !DILocation(line: 307, column: 17, scope: !2635)
!2639 = !DILocation(line: 307, column: 2, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2605, file: !172, discriminator: 9)
!2641 = !DILocation(line: 308, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !172, line: 308, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2631, file: !172, line: 307, column: 55)
!2644 = !DILocation(line: 308, column: 11, scope: !2642)
!2645 = !DILocation(line: 308, column: 7, scope: !2643)
!2646 = !DILocation(line: 309, column: 8, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !172, line: 309, column: 8)
!2648 = distinct !DILexicalBlock(scope: !2642, file: !172, line: 308, column: 21)
!2649 = !DILocation(line: 309, column: 12, scope: !2647)
!2650 = !DILocation(line: 309, column: 23, scope: !2647)
!2651 = !DILocation(line: 309, column: 27, scope: !2647)
!2652 = !DILocation(line: 309, column: 20, scope: !2647)
!2653 = !DILocation(line: 309, column: 8, scope: !2648)
!2654 = !DILocation(line: 310, column: 20, scope: !2647)
!2655 = !DILocation(line: 310, column: 24, scope: !2647)
!2656 = !DILocation(line: 310, column: 33, scope: !2647)
!2657 = !DILocation(line: 310, column: 37, scope: !2647)
!2658 = !DILocation(line: 310, column: 5, scope: !2647)
!2659 = !DILocation(line: 312, column: 4, scope: !2648)
!2660 = !DILocation(line: 319, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2643, file: !172, line: 319, column: 7)
!2662 = !DILocation(line: 319, column: 13, scope: !2661)
!2663 = !DILocation(line: 319, column: 33, scope: !2661)
!2664 = !DILocation(line: 319, column: 39, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2661, file: !172, discriminator: 1)
!2666 = !DILocation(line: 319, column: 44, scope: !2665)
!2667 = !DILocation(line: 319, column: 52, scope: !2665)
!2668 = !DILocation(line: 320, column: 8, scope: !2661)
!2669 = !DILocation(line: 320, column: 12, scope: !2661)
!2670 = !DILocation(line: 320, column: 20, scope: !2661)
!2671 = !DILocation(line: 320, column: 24, scope: !2665)
!2672 = !DILocation(line: 320, column: 28, scope: !2665)
!2673 = !DILocation(line: 319, column: 7, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2643, file: !172, discriminator: 2)
!2675 = !DILocation(line: 321, column: 30, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2661, file: !172, line: 320, column: 34)
!2677 = !DILocation(line: 321, column: 34, scope: !2676)
!2678 = !DILocation(line: 321, column: 4, scope: !2676)
!2679 = !DILocation(line: 322, column: 9, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !172, line: 322, column: 8)
!2681 = !DILocation(line: 322, column: 13, scope: !2680)
!2682 = !DILocation(line: 322, column: 8, scope: !2676)
!2683 = !DILocation(line: 323, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !172, line: 322, column: 34)
!2685 = !DILocation(line: 323, column: 12, scope: !2684)
!2686 = !DILocation(line: 323, column: 18, scope: !2684)
!2687 = !DILocation(line: 324, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !172, line: 324, column: 9)
!2689 = !DILocation(line: 324, column: 22, scope: !2688)
!2690 = !DILocation(line: 324, column: 9, scope: !2684)
!2691 = !DILocation(line: 325, column: 21, scope: !2688)
!2692 = !DILocation(line: 325, column: 25, scope: !2688)
!2693 = !DILocation(line: 325, column: 6, scope: !2688)
!2694 = !DILocation(line: 326, column: 4, scope: !2684)
!2695 = !DILocation(line: 327, column: 3, scope: !2676)
!2696 = !DILocation(line: 328, column: 2, scope: !2643)
!2697 = !DILocation(line: 307, column: 44, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2631, file: !172, discriminator: 10)
!2699 = !DILocation(line: 307, column: 48, scope: !2698)
!2700 = !DILocation(line: 307, column: 41, scope: !2698)
!2701 = !DILocation(line: 307, column: 2, scope: !2698)
!2702 = distinct !{!2702, !2703}
!2703 = !DILocation(line: 307, column: 2, scope: !2597)
!2704 = !DILocation(line: 330, column: 2, scope: !2597)
!2705 = distinct !DISubprogram(name: "sync_service_vsg", scope: !172, file: !172, line: 334, type: !2501, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2706 = !DILocalVariable(name: "vs", arg: 1, scope: !2705, file: !172, line: 334, type: !181)
!2707 = !DILocation(line: 334, column: 37, scope: !2705)
!2708 = !DILocalVariable(name: "vsg", scope: !2705, file: !172, line: 336, type: !188)
!2709 = !DILocation(line: 336, column: 26, scope: !2705)
!2710 = !DILocalVariable(name: "vsge", scope: !2705, file: !172, line: 337, type: !1890)
!2711 = !DILocation(line: 337, column: 32, scope: !2705)
!2712 = !DILocalVariable(name: "l", scope: !2705, file: !172, line: 338, type: !2713)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!2714 = !DILocation(line: 338, column: 8, scope: !2705)
!2715 = !DILocalVariable(name: "e", scope: !2705, file: !172, line: 339, type: !177)
!2716 = !DILocation(line: 339, column: 10, scope: !2705)
!2717 = !DILocation(line: 341, column: 8, scope: !2705)
!2718 = !DILocation(line: 341, column: 12, scope: !2705)
!2719 = !DILocation(line: 341, column: 6, scope: !2705)
!2720 = !DILocalVariable(name: "ll", scope: !2705, file: !172, line: 342, type: !2721)
!2721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 192, align: 64, elements: !2722)
!2722 = !{!2723}
!2723 = !DISubrange(count: 3)
!2724 = !DILocation(line: 342, column: 7, scope: !2705)
!2725 = !DILocation(line: 342, column: 14, scope: !2705)
!2726 = !DILocation(line: 343, column: 3, scope: !2705)
!2727 = !DILocation(line: 343, column: 8, scope: !2705)
!2728 = !DILocation(line: 344, column: 3, scope: !2705)
!2729 = !DILocation(line: 344, column: 8, scope: !2705)
!2730 = !DILocation(line: 348, column: 11, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2705, file: !172, line: 348, column: 2)
!2732 = !DILocation(line: 348, column: 9, scope: !2731)
!2733 = !DILocation(line: 348, column: 7, scope: !2731)
!2734 = !DILocation(line: 348, column: 16, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2736, file: !172, discriminator: 1)
!2736 = distinct !DILexicalBlock(scope: !2731, file: !172, line: 348, column: 2)
!2737 = !DILocation(line: 348, column: 15, scope: !2735)
!2738 = !DILocation(line: 348, column: 2, scope: !2735)
!2739 = !DILocation(line: 349, column: 16, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !172, line: 349, column: 3)
!2741 = !DILocation(line: 349, column: 15, scope: !2740)
!2742 = !DILocation(line: 349, column: 14, scope: !2740)
!2743 = !DILocation(line: 349, column: 13, scope: !2740)
!2744 = !DILocation(line: 349, column: 13, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2740, file: !172, discriminator: 1)
!2746 = !DILocation(line: 349, column: 15, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2740, file: !172, discriminator: 2)
!2748 = !DILocation(line: 349, column: 14, scope: !2747)
!2749 = !DILocation(line: 349, column: 19, scope: !2747)
!2750 = !DILocation(line: 349, column: 13, scope: !2747)
!2751 = !DILocation(line: 349, column: 13, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2740, file: !172, discriminator: 3)
!2753 = !DILocation(line: 349, column: 10, scope: !2752)
!2754 = !DILocation(line: 349, column: 8, scope: !2752)
!2755 = !DILocation(line: 349, column: 26, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2757, file: !172, discriminator: 4)
!2757 = distinct !DILexicalBlock(scope: !2740, file: !172, line: 349, column: 3)
!2758 = !DILocation(line: 349, column: 3, scope: !2756)
!2759 = !DILocation(line: 350, column: 13, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !172, line: 349, column: 48)
!2761 = !DILocation(line: 350, column: 17, scope: !2760)
!2762 = !DILocation(line: 350, column: 11, scope: !2760)
!2763 = !DILocation(line: 350, column: 9, scope: !2760)
!2764 = !DILocation(line: 351, column: 8, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2760, file: !172, line: 351, column: 8)
!2766 = !DILocation(line: 351, column: 12, scope: !2765)
!2767 = !DILocation(line: 351, column: 21, scope: !2765)
!2768 = !DILocation(line: 351, column: 25, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2765, file: !172, discriminator: 1)
!2770 = !DILocation(line: 351, column: 31, scope: !2769)
!2771 = !DILocation(line: 351, column: 8, scope: !2769)
!2772 = !DILocation(line: 354, column: 34, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2765, file: !172, line: 351, column: 41)
!2774 = !DILocation(line: 354, column: 40, scope: !2773)
!2775 = !DILocation(line: 354, column: 46, scope: !2773)
!2776 = !DILocation(line: 354, column: 50, scope: !2773)
!2777 = !DILocation(line: 354, column: 13, scope: !2773)
!2778 = !DILocation(line: 355, column: 13, scope: !2773)
!2779 = !DILocation(line: 355, column: 19, scope: !2773)
!2780 = !DILocation(line: 356, column: 13, scope: !2773)
!2781 = !DILocation(line: 356, column: 19, scope: !2773)
!2782 = !DILocation(line: 357, column: 13, scope: !2773)
!2783 = !DILocation(line: 357, column: 17, scope: !2773)
!2784 = !DILocation(line: 352, column: 5, scope: !2773)
!2785 = !DILocation(line: 360, column: 27, scope: !2773)
!2786 = !DILocation(line: 360, column: 31, scope: !2773)
!2787 = !DILocation(line: 360, column: 5, scope: !2773)
!2788 = !DILocation(line: 361, column: 4, scope: !2773)
!2789 = !DILocation(line: 362, column: 3, scope: !2760)
!2790 = !DILocation(line: 349, column: 37, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2757, file: !172, discriminator: 5)
!2792 = !DILocation(line: 349, column: 41, scope: !2791)
!2793 = !DILocation(line: 349, column: 34, scope: !2791)
!2794 = !DILocation(line: 349, column: 3, scope: !2791)
!2795 = distinct !{!2795, !2796}
!2796 = !DILocation(line: 349, column: 3, scope: !2736)
!2797 = !DILocation(line: 362, column: 3, scope: !2745)
!2798 = !DILocation(line: 348, column: 20, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2736, file: !172, discriminator: 2)
!2800 = !DILocation(line: 348, column: 2, scope: !2799)
!2801 = distinct !{!2801, !2802}
!2802 = !DILocation(line: 348, column: 2, scope: !2705)
!2803 = !DILocation(line: 363, column: 1, scope: !2705)
!2804 = distinct !DISubprogram(name: "perform_quorum_state", scope: !172, file: !172, line: 367, type: !337, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2805 = !DILocalVariable(name: "vs", arg: 1, scope: !2804, file: !172, line: 367, type: !181)
!2806 = !DILocation(line: 367, column: 40, scope: !2804)
!2807 = !DILocalVariable(name: "add", arg: 2, scope: !2804, file: !172, line: 367, type: !244)
!2808 = !DILocation(line: 367, column: 48, scope: !2804)
!2809 = !DILocalVariable(name: "e", scope: !2804, file: !172, line: 369, type: !177)
!2810 = !DILocation(line: 369, column: 10, scope: !2804)
!2811 = !DILocalVariable(name: "rs", scope: !2804, file: !172, line: 370, type: !207)
!2812 = !DILocation(line: 370, column: 17, scope: !2804)
!2813 = !DILocation(line: 373, column: 10, scope: !2804)
!2814 = !DILocation(line: 374, column: 22, scope: !2804)
!2815 = !DILocation(line: 374, column: 11, scope: !2804)
!2816 = !DILocation(line: 372, column: 2, scope: !2804)
!2817 = !DILocation(line: 375, column: 15, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2804, file: !172, line: 375, column: 2)
!2819 = !DILocation(line: 375, column: 19, scope: !2818)
!2820 = !DILocation(line: 375, column: 14, scope: !2818)
!2821 = !DILocation(line: 375, column: 28, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 1)
!2823 = !DILocation(line: 375, column: 32, scope: !2822)
!2824 = !DILocation(line: 375, column: 27, scope: !2822)
!2825 = !DILocation(line: 375, column: 26, scope: !2822)
!2826 = !DILocation(line: 375, column: 26, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 2)
!2828 = !DILocation(line: 375, column: 4, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 3)
!2830 = !DILocation(line: 375, column: 8, scope: !2829)
!2831 = !DILocation(line: 375, column: 13, scope: !2829)
!2832 = !DILocation(line: 375, column: 26, scope: !2829)
!2833 = !DILocation(line: 375, column: 26, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 4)
!2835 = !DILocation(line: 375, column: 14, scope: !2834)
!2836 = !DILocation(line: 375, column: 14, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 5)
!2838 = !DILocation(line: 375, column: 14, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 6)
!2840 = !DILocation(line: 375, column: 11, scope: !2839)
!2841 = !DILocation(line: 375, column: 7, scope: !2839)
!2842 = !DILocation(line: 375, column: 5, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2844, file: !172, discriminator: 7)
!2844 = distinct !DILexicalBlock(scope: !2818, file: !172, line: 375, column: 2)
!2845 = !DILocation(line: 375, column: 4, scope: !2843)
!2846 = !DILocation(line: 375, column: 8, scope: !2843)
!2847 = !DILocation(line: 375, column: 21, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2844, file: !172, discriminator: 8)
!2849 = !DILocation(line: 375, column: 25, scope: !2848)
!2850 = !DILocation(line: 375, column: 19, scope: !2848)
!2851 = !DILocation(line: 375, column: 17, scope: !2848)
!2852 = !DILocation(line: 375, column: 2, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2818, file: !172, discriminator: 9)
!2854 = !DILocation(line: 376, column: 10, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !172, line: 376, column: 7)
!2856 = distinct !DILexicalBlock(scope: !2844, file: !172, line: 375, column: 55)
!2857 = !DILocation(line: 376, column: 15, scope: !2855)
!2858 = !DILocation(line: 376, column: 7, scope: !2856)
!2859 = !DILocation(line: 377, column: 4, scope: !2855)
!2860 = !DILocation(line: 379, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !172, line: 379, column: 7)
!2862 = !DILocation(line: 379, column: 7, scope: !2856)
!2863 = !DILocation(line: 380, column: 4, scope: !2861)
!2864 = !DILocation(line: 380, column: 8, scope: !2861)
!2865 = !DILocation(line: 380, column: 14, scope: !2861)
!2866 = !DILocation(line: 381, column: 12, scope: !2856)
!2867 = !DILocation(line: 381, column: 50, scope: !2856)
!2868 = !DILocation(line: 381, column: 54, scope: !2856)
!2869 = !DILocation(line: 381, column: 3, scope: !2856)
!2870 = !DILocation(line: 382, column: 3, scope: !2856)
!2871 = !DILocation(line: 382, column: 7, scope: !2856)
!2872 = !DILocation(line: 382, column: 13, scope: !2856)
!2873 = !DILocation(line: 383, column: 2, scope: !2856)
!2874 = !DILocation(line: 375, column: 44, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2844, file: !172, discriminator: 10)
!2876 = !DILocation(line: 375, column: 48, scope: !2875)
!2877 = !DILocation(line: 375, column: 41, scope: !2875)
!2878 = !DILocation(line: 375, column: 2, scope: !2875)
!2879 = distinct !{!2879, !2880}
!2880 = !DILocation(line: 375, column: 2, scope: !2804)
!2881 = !DILocation(line: 384, column: 1, scope: !2804)
!2882 = distinct !DISubprogram(name: "notify_fifo_rs", scope: !172, file: !172, line: 86, type: !1759, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!2883 = !DILocalVariable(name: "vs", arg: 1, scope: !2882, file: !172, line: 86, type: !181)
!2884 = !DILocation(line: 86, column: 34, scope: !2882)
!2885 = !DILocalVariable(name: "rs", arg: 2, scope: !2882, file: !172, line: 86, type: !207)
!2886 = !DILocation(line: 86, column: 53, scope: !2882)
!2887 = !DILocalVariable(name: "state", scope: !2882, file: !172, line: 88, type: !116)
!2888 = !DILocation(line: 88, column: 8, scope: !2882)
!2889 = !DILocation(line: 88, column: 16, scope: !2882)
!2890 = !DILocation(line: 88, column: 20, scope: !2882)
!2891 = !DILocalVariable(name: "size", scope: !2882, file: !172, line: 89, type: !160)
!2892 = !DILocation(line: 89, column: 9, scope: !2882)
!2893 = !DILocalVariable(name: "line", scope: !2882, file: !172, line: 90, type: !116)
!2894 = !DILocation(line: 90, column: 8, scope: !2882)
!2895 = !DILocalVariable(name: "str", scope: !2882, file: !172, line: 91, type: !116)
!2896 = !DILocation(line: 91, column: 8, scope: !2882)
!2897 = !DILocalVariable(name: "rs_str", scope: !2882, file: !172, line: 92, type: !116)
!2898 = !DILocation(line: 92, column: 8, scope: !2882)
!2899 = !DILocalVariable(name: "vs_str", scope: !2882, file: !172, line: 93, type: !116)
!2900 = !DILocation(line: 93, column: 8, scope: !2882)
!2901 = !DILocation(line: 95, column: 6, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2882, file: !172, line: 95, column: 6)
!2903 = !DILocation(line: 95, column: 19, scope: !2902)
!2904 = !DILocation(line: 95, column: 31, scope: !2902)
!2905 = !DILocation(line: 95, column: 34, scope: !2902)
!2906 = !DILocation(line: 95, column: 40, scope: !2902)
!2907 = !DILocation(line: 96, column: 6, scope: !2902)
!2908 = !DILocation(line: 96, column: 19, scope: !2902)
!2909 = !DILocation(line: 96, column: 35, scope: !2902)
!2910 = !DILocation(line: 96, column: 38, scope: !2902)
!2911 = !DILocation(line: 95, column: 6, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2882, file: !172, discriminator: 1)
!2913 = !DILocation(line: 97, column: 3, scope: !2902)
!2914 = !DILocation(line: 99, column: 32, scope: !2882)
!2915 = !DILocation(line: 99, column: 37, scope: !2882)
!2916 = !DILocation(line: 99, column: 44, scope: !2882)
!2917 = !DILocation(line: 99, column: 49, scope: !2882)
!2918 = !DILocation(line: 99, column: 9, scope: !2882)
!2919 = !DILocation(line: 99, column: 6, scope: !2882)
!2920 = !DILocation(line: 100, column: 26, scope: !2882)
!2921 = !DILocation(line: 100, column: 19, scope: !2882)
!2922 = !DILocation(line: 100, column: 30, scope: !2882)
!2923 = !DILocation(line: 100, column: 12, scope: !2912)
!2924 = !DILocation(line: 100, column: 9, scope: !2882)
!2925 = !DILocation(line: 101, column: 9, scope: !2882)
!2926 = !DILocation(line: 101, column: 17, scope: !2882)
!2927 = !DILocation(line: 101, column: 2, scope: !2882)
!2928 = !DILocation(line: 102, column: 23, scope: !2882)
!2929 = !DILocation(line: 102, column: 12, scope: !2882)
!2930 = !DILocation(line: 102, column: 9, scope: !2882)
!2931 = !DILocation(line: 103, column: 16, scope: !2882)
!2932 = !DILocation(line: 103, column: 9, scope: !2882)
!2933 = !DILocation(line: 103, column: 33, scope: !2882)
!2934 = !DILocation(line: 103, column: 26, scope: !2912)
!2935 = !DILocation(line: 103, column: 24, scope: !2882)
!2936 = !DILocation(line: 103, column: 50, scope: !2882)
!2937 = !DILocation(line: 103, column: 43, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2882, file: !172, discriminator: 2)
!2939 = !DILocation(line: 103, column: 41, scope: !2882)
!2940 = !DILocation(line: 103, column: 57, scope: !2882)
!2941 = !DILocation(line: 103, column: 7, scope: !2882)
!2942 = !DILocation(line: 104, column: 17, scope: !2882)
!2943 = !DILocation(line: 104, column: 10, scope: !2882)
!2944 = !DILocation(line: 104, column: 7, scope: !2882)
!2945 = !DILocation(line: 105, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2882, file: !172, line: 105, column: 6)
!2947 = !DILocation(line: 105, column: 6, scope: !2882)
!2948 = !DILocation(line: 106, column: 3, scope: !2946)
!2949 = !DILocation(line: 108, column: 11, scope: !2882)
!2950 = !DILocation(line: 108, column: 17, scope: !2882)
!2951 = !DILocation(line: 108, column: 40, scope: !2882)
!2952 = !DILocation(line: 108, column: 48, scope: !2882)
!2953 = !DILocation(line: 108, column: 56, scope: !2882)
!2954 = !DILocation(line: 108, column: 2, scope: !2882)
!2955 = !DILocation(line: 109, column: 8, scope: !2882)
!2956 = !DILocation(line: 109, column: 3, scope: !2882)
!2957 = !DILocation(line: 109, column: 26, scope: !2882)
!2958 = !DILocation(line: 111, column: 6, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2882, file: !172, line: 111, column: 6)
!2960 = !DILocation(line: 111, column: 19, scope: !2959)
!2961 = !DILocation(line: 111, column: 31, scope: !2959)
!2962 = !DILocation(line: 111, column: 34, scope: !2959)
!2963 = !DILocation(line: 111, column: 6, scope: !2882)
!2964 = !DILocation(line: 112, column: 13, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !172, line: 112, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2959, file: !172, line: 111, column: 41)
!2967 = !DILocation(line: 112, column: 26, scope: !2965)
!2968 = !DILocation(line: 112, column: 38, scope: !2965)
!2969 = !DILocation(line: 112, column: 42, scope: !2965)
!2970 = !DILocation(line: 112, column: 48, scope: !2965)
!2971 = !DILocation(line: 112, column: 53, scope: !2965)
!2972 = !DILocation(line: 112, column: 7, scope: !2965)
!2973 = !DILocation(line: 112, column: 58, scope: !2965)
!2974 = !DILocation(line: 112, column: 7, scope: !2966)
!2975 = !DILocation(line: 112, column: 67, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2977, file: !172, discriminator: 1)
!2977 = distinct !DILexicalBlock(scope: !2965, file: !172, line: 112, column: 66)
!2978 = !DILocation(line: 113, column: 2, scope: !2966)
!2979 = !DILocation(line: 114, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2882, file: !172, line: 114, column: 6)
!2981 = !DILocation(line: 114, column: 19, scope: !2980)
!2982 = !DILocation(line: 114, column: 35, scope: !2980)
!2983 = !DILocation(line: 114, column: 38, scope: !2980)
!2984 = !DILocation(line: 114, column: 6, scope: !2882)
!2985 = !DILocation(line: 115, column: 13, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !172, line: 115, column: 7)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !172, line: 114, column: 45)
!2988 = !DILocation(line: 115, column: 26, scope: !2986)
!2989 = !DILocation(line: 115, column: 42, scope: !2986)
!2990 = !DILocation(line: 115, column: 46, scope: !2986)
!2991 = !DILocation(line: 115, column: 52, scope: !2986)
!2992 = !DILocation(line: 115, column: 57, scope: !2986)
!2993 = !DILocation(line: 115, column: 7, scope: !2986)
!2994 = !DILocation(line: 115, column: 62, scope: !2986)
!2995 = !DILocation(line: 115, column: 7, scope: !2987)
!2996 = !DILocation(line: 115, column: 70, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2998, file: !172, discriminator: 1)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !172, line: 115, column: 69)
!2999 = !DILocation(line: 116, column: 2, scope: !2987)
!3000 = !DILocation(line: 118, column: 8, scope: !2882)
!3001 = !DILocation(line: 118, column: 3, scope: !2882)
!3002 = !DILocation(line: 118, column: 22, scope: !2882)
!3003 = !DILocation(line: 119, column: 1, scope: !2882)
!3004 = !DILocation(line: 119, column: 1, scope: !2912)
!3005 = distinct !DISubprogram(name: "sockstorage_equal", scope: !3006, file: !3006, line: 69, type: !3007, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3006 = !DIFile(filename: "../../lib/utils.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!244, !3009, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64, align: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!3011 = !DILocalVariable(name: "s1", arg: 1, scope: !3005, file: !3006, line: 69, type: !3009)
!3012 = !DILocation(line: 69, column: 68, scope: !3005)
!3013 = !DILocalVariable(name: "s2", arg: 2, scope: !3005, file: !3006, line: 70, type: !3009)
!3014 = !DILocation(line: 70, column: 40, scope: !3005)
!3015 = !DILocation(line: 72, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3005, file: !3006, line: 72, column: 6)
!3017 = !DILocation(line: 72, column: 10, scope: !3016)
!3018 = !DILocation(line: 72, column: 23, scope: !3016)
!3019 = !DILocation(line: 72, column: 27, scope: !3016)
!3020 = !DILocation(line: 72, column: 20, scope: !3016)
!3021 = !DILocation(line: 72, column: 6, scope: !3005)
!3022 = !DILocation(line: 73, column: 3, scope: !3016)
!3023 = !DILocation(line: 75, column: 6, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3005, file: !3006, line: 75, column: 6)
!3025 = !DILocation(line: 75, column: 10, scope: !3024)
!3026 = !DILocation(line: 75, column: 20, scope: !3024)
!3027 = !DILocation(line: 75, column: 6, scope: !3005)
!3028 = !DILocalVariable(name: "a1", scope: !3029, file: !3006, line: 76, type: !58)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !3006, line: 75, column: 32)
!3030 = !DILocation(line: 76, column: 24, scope: !3029)
!3031 = !DILocation(line: 76, column: 53, scope: !3029)
!3032 = !DILocation(line: 76, column: 29, scope: !3029)
!3033 = !DILocalVariable(name: "a2", scope: !3029, file: !3006, line: 77, type: !58)
!3034 = !DILocation(line: 77, column: 24, scope: !3029)
!3035 = !DILocation(line: 77, column: 53, scope: !3029)
!3036 = !DILocation(line: 77, column: 29, scope: !3029)
!3037 = !DILocation(line: 80, column: 25, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !3006, line: 80, column: 7)
!3039 = !DILocation(line: 80, column: 29, scope: !3038)
!3040 = !DILocation(line: 80, column: 41, scope: !3038)
!3041 = !DILocation(line: 80, column: 45, scope: !3038)
!3042 = !DILocation(line: 80, column: 7, scope: !3038)
!3043 = !DILocation(line: 80, column: 56, scope: !3038)
!3044 = !DILocation(line: 81, column: 8, scope: !3038)
!3045 = !DILocation(line: 81, column: 12, scope: !3038)
!3046 = !DILocation(line: 81, column: 25, scope: !3038)
!3047 = !DILocation(line: 81, column: 29, scope: !3038)
!3048 = !DILocation(line: 81, column: 22, scope: !3038)
!3049 = !DILocation(line: 80, column: 7, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3029, file: !3006, discriminator: 1)
!3051 = !DILocation(line: 82, column: 4, scope: !3038)
!3052 = !DILocation(line: 83, column: 2, scope: !3029)
!3053 = !DILocation(line: 83, column: 13, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3055, file: !3006, discriminator: 1)
!3055 = distinct !DILexicalBlock(scope: !3024, file: !3006, line: 83, column: 13)
!3056 = !DILocation(line: 83, column: 17, scope: !3054)
!3057 = !DILocation(line: 83, column: 27, scope: !3054)
!3058 = !DILocalVariable(name: "a1", scope: !3059, file: !3006, line: 84, type: !34)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !3006, line: 83, column: 38)
!3060 = !DILocation(line: 84, column: 23, scope: !3059)
!3061 = !DILocation(line: 84, column: 51, scope: !3059)
!3062 = !DILocation(line: 84, column: 28, scope: !3059)
!3063 = !DILocalVariable(name: "a2", scope: !3059, file: !3006, line: 85, type: !34)
!3064 = !DILocation(line: 85, column: 23, scope: !3059)
!3065 = !DILocation(line: 85, column: 51, scope: !3059)
!3066 = !DILocation(line: 85, column: 28, scope: !3059)
!3067 = !DILocation(line: 87, column: 8, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3059, file: !3006, line: 87, column: 7)
!3069 = !DILocation(line: 87, column: 12, scope: !3068)
!3070 = !DILocation(line: 87, column: 21, scope: !3068)
!3071 = !DILocation(line: 87, column: 31, scope: !3068)
!3072 = !DILocation(line: 87, column: 35, scope: !3068)
!3073 = !DILocation(line: 87, column: 44, scope: !3068)
!3074 = !DILocation(line: 87, column: 28, scope: !3068)
!3075 = !DILocation(line: 87, column: 52, scope: !3068)
!3076 = !DILocation(line: 88, column: 8, scope: !3068)
!3077 = !DILocation(line: 88, column: 12, scope: !3068)
!3078 = !DILocation(line: 88, column: 24, scope: !3068)
!3079 = !DILocation(line: 88, column: 28, scope: !3068)
!3080 = !DILocation(line: 88, column: 21, scope: !3068)
!3081 = !DILocation(line: 87, column: 7, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3059, file: !3006, discriminator: 1)
!3083 = !DILocation(line: 89, column: 4, scope: !3068)
!3084 = !DILocation(line: 90, column: 2, scope: !3059)
!3085 = !DILocation(line: 90, column: 13, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3087, file: !3006, discriminator: 1)
!3087 = distinct !DILexicalBlock(scope: !3055, file: !3006, line: 90, column: 13)
!3088 = !DILocation(line: 90, column: 17, scope: !3086)
!3089 = !DILocation(line: 90, column: 27, scope: !3086)
!3090 = !DILocation(line: 91, column: 3, scope: !3087)
!3091 = !DILocation(line: 93, column: 2, scope: !3005)
!3092 = !DILocation(line: 94, column: 1, scope: !3005)
!3093 = distinct !DISubprogram(name: "__ip6_addr_equal", scope: !3006, file: !3006, line: 60, type: !3094, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!114, !3096, !3096}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64, align: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!3098 = !DILocalVariable(name: "a1", arg: 1, scope: !3093, file: !3006, line: 60, type: !3096)
!3099 = !DILocation(line: 60, column: 59, scope: !3093)
!3100 = !DILocalVariable(name: "a2", arg: 2, scope: !3093, file: !3006, line: 61, type: !3096)
!3101 = !DILocation(line: 61, column: 31, scope: !3093)
!3102 = !DILocation(line: 63, column: 12, scope: !3093)
!3103 = !DILocation(line: 63, column: 15, scope: !3093)
!3104 = !DILocation(line: 63, column: 23, scope: !3093)
!3105 = !DILocation(line: 63, column: 30, scope: !3093)
!3106 = !DILocation(line: 63, column: 34, scope: !3093)
!3107 = !DILocation(line: 63, column: 42, scope: !3093)
!3108 = !DILocation(line: 63, column: 28, scope: !3093)
!3109 = !DILocation(line: 64, column: 5, scope: !3093)
!3110 = !DILocation(line: 64, column: 8, scope: !3093)
!3111 = !DILocation(line: 64, column: 16, scope: !3093)
!3112 = !DILocation(line: 64, column: 23, scope: !3093)
!3113 = !DILocation(line: 64, column: 27, scope: !3093)
!3114 = !DILocation(line: 64, column: 35, scope: !3093)
!3115 = !DILocation(line: 64, column: 21, scope: !3093)
!3116 = !DILocation(line: 63, column: 48, scope: !3093)
!3117 = !DILocation(line: 65, column: 5, scope: !3093)
!3118 = !DILocation(line: 65, column: 8, scope: !3093)
!3119 = !DILocation(line: 65, column: 16, scope: !3093)
!3120 = !DILocation(line: 65, column: 23, scope: !3093)
!3121 = !DILocation(line: 65, column: 27, scope: !3093)
!3122 = !DILocation(line: 65, column: 35, scope: !3093)
!3123 = !DILocation(line: 65, column: 21, scope: !3093)
!3124 = !DILocation(line: 64, column: 41, scope: !3093)
!3125 = !DILocation(line: 66, column: 5, scope: !3093)
!3126 = !DILocation(line: 66, column: 8, scope: !3093)
!3127 = !DILocation(line: 66, column: 16, scope: !3093)
!3128 = !DILocation(line: 66, column: 23, scope: !3093)
!3129 = !DILocation(line: 66, column: 27, scope: !3093)
!3130 = !DILocation(line: 66, column: 35, scope: !3093)
!3131 = !DILocation(line: 66, column: 21, scope: !3093)
!3132 = !DILocation(line: 65, column: 41, scope: !3093)
!3133 = !DILocation(line: 66, column: 42, scope: !3093)
!3134 = !DILocation(line: 63, column: 2, scope: !3093)
!3135 = distinct !DISubprogram(name: "clear_diff_vsge", scope: !172, file: !172, line: 656, type: !3136, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !85, !85, !181}
!3138 = !DILocalVariable(name: "old", arg: 1, scope: !3135, file: !172, line: 656, type: !85)
!3139 = !DILocation(line: 656, column: 22, scope: !3135)
!3140 = !DILocalVariable(name: "new", arg: 2, scope: !3135, file: !172, line: 656, type: !85)
!3141 = !DILocation(line: 656, column: 32, scope: !3135)
!3142 = !DILocalVariable(name: "old_vs", arg: 3, scope: !3135, file: !172, line: 656, type: !181)
!3143 = !DILocation(line: 656, column: 56, scope: !3135)
!3144 = !DILocalVariable(name: "vsge", scope: !3135, file: !172, line: 658, type: !1890)
!3145 = !DILocation(line: 658, column: 32, scope: !3135)
!3146 = !DILocalVariable(name: "new_vsge", scope: !3135, file: !172, line: 658, type: !1890)
!3147 = !DILocation(line: 658, column: 39, scope: !3135)
!3148 = !DILocalVariable(name: "e", scope: !3135, file: !172, line: 659, type: !177)
!3149 = !DILocation(line: 659, column: 10, scope: !3135)
!3150 = !DILocation(line: 661, column: 14, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3135, file: !172, line: 661, column: 2)
!3152 = !DILocation(line: 661, column: 13, scope: !3151)
!3153 = !DILocation(line: 661, column: 12, scope: !3151)
!3154 = !DILocation(line: 661, column: 12, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3151, file: !172, discriminator: 1)
!3156 = !DILocation(line: 661, column: 13, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3151, file: !172, discriminator: 2)
!3158 = !DILocation(line: 661, column: 19, scope: !3157)
!3159 = !DILocation(line: 661, column: 12, scope: !3157)
!3160 = !DILocation(line: 661, column: 12, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !3151, file: !172, discriminator: 3)
!3162 = !DILocation(line: 661, column: 9, scope: !3161)
!3163 = !DILocation(line: 661, column: 7, scope: !3161)
!3164 = !DILocation(line: 661, column: 26, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3166, file: !172, discriminator: 4)
!3166 = distinct !DILexicalBlock(scope: !3151, file: !172, line: 661, column: 2)
!3167 = !DILocation(line: 661, column: 2, scope: !3165)
!3168 = !DILocation(line: 662, column: 12, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !172, line: 661, column: 48)
!3170 = !DILocation(line: 662, column: 16, scope: !3169)
!3171 = !DILocation(line: 662, column: 10, scope: !3169)
!3172 = !DILocation(line: 662, column: 8, scope: !3169)
!3173 = !DILocation(line: 663, column: 25, scope: !3169)
!3174 = !DILocation(line: 663, column: 31, scope: !3169)
!3175 = !DILocation(line: 663, column: 14, scope: !3169)
!3176 = !DILocation(line: 663, column: 12, scope: !3169)
!3177 = !DILocation(line: 664, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3169, file: !172, line: 664, column: 7)
!3179 = !DILocation(line: 664, column: 7, scope: !3169)
!3180 = !DILocation(line: 665, column: 26, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !172, line: 664, column: 17)
!3182 = !DILocation(line: 665, column: 32, scope: !3181)
!3183 = !DILocation(line: 665, column: 4, scope: !3181)
!3184 = !DILocation(line: 665, column: 14, scope: !3181)
!3185 = !DILocation(line: 665, column: 24, scope: !3181)
!3186 = !DILocation(line: 666, column: 26, scope: !3181)
!3187 = !DILocation(line: 666, column: 32, scope: !3181)
!3188 = !DILocation(line: 666, column: 4, scope: !3181)
!3189 = !DILocation(line: 666, column: 14, scope: !3181)
!3190 = !DILocation(line: 666, column: 24, scope: !3181)
!3191 = !DILocation(line: 667, column: 27, scope: !3181)
!3192 = !DILocation(line: 667, column: 33, scope: !3181)
!3193 = !DILocation(line: 667, column: 4, scope: !3181)
!3194 = !DILocation(line: 667, column: 14, scope: !3181)
!3195 = !DILocation(line: 667, column: 25, scope: !3181)
!3196 = !DILocation(line: 668, column: 27, scope: !3181)
!3197 = !DILocation(line: 668, column: 33, scope: !3181)
!3198 = !DILocation(line: 668, column: 4, scope: !3181)
!3199 = !DILocation(line: 668, column: 14, scope: !3181)
!3200 = !DILocation(line: 668, column: 25, scope: !3181)
!3201 = !DILocation(line: 669, column: 27, scope: !3181)
!3202 = !DILocation(line: 669, column: 33, scope: !3181)
!3203 = !DILocation(line: 669, column: 4, scope: !3181)
!3204 = !DILocation(line: 669, column: 14, scope: !3181)
!3205 = !DILocation(line: 669, column: 25, scope: !3181)
!3206 = !DILocation(line: 670, column: 4, scope: !3181)
!3207 = !DILocation(line: 670, column: 14, scope: !3181)
!3208 = !DILocation(line: 670, column: 23, scope: !3181)
!3209 = !DILocation(line: 671, column: 3, scope: !3181)
!3210 = !DILocation(line: 674, column: 33, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3178, file: !172, line: 672, column: 8)
!3212 = !DILocation(line: 674, column: 39, scope: !3211)
!3213 = !DILocation(line: 674, column: 45, scope: !3211)
!3214 = !DILocation(line: 674, column: 53, scope: !3211)
!3215 = !DILocation(line: 674, column: 12, scope: !3211)
!3216 = !DILocation(line: 675, column: 12, scope: !3211)
!3217 = !DILocation(line: 675, column: 18, scope: !3211)
!3218 = !DILocation(line: 676, column: 12, scope: !3211)
!3219 = !DILocation(line: 676, column: 18, scope: !3211)
!3220 = !DILocation(line: 677, column: 12, scope: !3211)
!3221 = !DILocation(line: 677, column: 20, scope: !3211)
!3222 = !DILocation(line: 673, column: 4, scope: !3211)
!3223 = !DILocation(line: 679, column: 28, scope: !3211)
!3224 = !DILocation(line: 679, column: 36, scope: !3211)
!3225 = !DILocation(line: 679, column: 4, scope: !3211)
!3226 = !DILocation(line: 681, column: 2, scope: !3169)
!3227 = !DILocation(line: 661, column: 37, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3166, file: !172, discriminator: 5)
!3229 = !DILocation(line: 661, column: 41, scope: !3228)
!3230 = !DILocation(line: 661, column: 34, scope: !3228)
!3231 = !DILocation(line: 661, column: 2, scope: !3228)
!3232 = distinct !{!3232, !3233}
!3233 = !DILocation(line: 661, column: 2, scope: !3135)
!3234 = !DILocation(line: 682, column: 1, scope: !3135)
!3235 = distinct !DISubprogram(name: "vsge_exist", scope: !172, file: !172, line: 640, type: !3236, isLocal: true, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!1890, !1890, !85}
!3238 = !DILocalVariable(name: "vsg_entry", arg: 1, scope: !3235, file: !172, line: 640, type: !1890)
!3239 = !DILocation(line: 640, column: 42, scope: !3235)
!3240 = !DILocalVariable(name: "l", arg: 2, scope: !3235, file: !172, line: 640, type: !85)
!3241 = !DILocation(line: 640, column: 58, scope: !3235)
!3242 = !DILocalVariable(name: "e", scope: !3235, file: !172, line: 642, type: !177)
!3243 = !DILocation(line: 642, column: 10, scope: !3235)
!3244 = !DILocalVariable(name: "vsge", scope: !3235, file: !172, line: 643, type: !1890)
!3245 = !DILocation(line: 643, column: 32, scope: !3235)
!3246 = !DILocation(line: 645, column: 14, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3235, file: !172, line: 645, column: 2)
!3248 = !DILocation(line: 645, column: 13, scope: !3247)
!3249 = !DILocation(line: 645, column: 12, scope: !3247)
!3250 = !DILocation(line: 645, column: 12, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3247, file: !172, discriminator: 1)
!3252 = !DILocation(line: 645, column: 13, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3247, file: !172, discriminator: 2)
!3254 = !DILocation(line: 645, column: 17, scope: !3253)
!3255 = !DILocation(line: 645, column: 12, scope: !3253)
!3256 = !DILocation(line: 645, column: 12, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3247, file: !172, discriminator: 3)
!3258 = !DILocation(line: 645, column: 9, scope: !3257)
!3259 = !DILocation(line: 645, column: 7, scope: !3257)
!3260 = !DILocation(line: 645, column: 24, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3262, file: !172, discriminator: 4)
!3262 = distinct !DILexicalBlock(scope: !3247, file: !172, line: 645, column: 2)
!3263 = !DILocation(line: 645, column: 2, scope: !3261)
!3264 = !DILocation(line: 646, column: 12, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3262, file: !172, line: 645, column: 46)
!3266 = !DILocation(line: 646, column: 16, scope: !3265)
!3267 = !DILocation(line: 646, column: 10, scope: !3265)
!3268 = !DILocation(line: 646, column: 8, scope: !3265)
!3269 = !DILocation(line: 647, column: 28, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !172, line: 647, column: 7)
!3271 = !DILocation(line: 647, column: 40, scope: !3270)
!3272 = !DILocation(line: 647, column: 47, scope: !3270)
!3273 = !DILocation(line: 647, column: 54, scope: !3270)
!3274 = !DILocation(line: 647, column: 8, scope: !3270)
!3275 = !DILocation(line: 647, column: 60, scope: !3270)
!3276 = !DILocation(line: 647, column: 64, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3270, file: !172, discriminator: 1)
!3278 = !DILocation(line: 647, column: 76, scope: !3277)
!3279 = !DILocation(line: 647, column: 86, scope: !3277)
!3280 = !DILocation(line: 647, column: 93, scope: !3277)
!3281 = !DILocation(line: 647, column: 82, scope: !3277)
!3282 = !DILocation(line: 647, column: 99, scope: !3277)
!3283 = !DILocation(line: 647, column: 103, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3270, file: !172, discriminator: 2)
!3285 = !DILocation(line: 647, column: 115, scope: !3284)
!3286 = !DILocation(line: 647, column: 127, scope: !3284)
!3287 = !DILocation(line: 647, column: 134, scope: !3284)
!3288 = !DILocation(line: 647, column: 123, scope: !3284)
!3289 = !DILocation(line: 647, column: 7, scope: !3284)
!3290 = !DILocation(line: 648, column: 11, scope: !3270)
!3291 = !DILocation(line: 648, column: 4, scope: !3270)
!3292 = !DILocation(line: 649, column: 2, scope: !3265)
!3293 = !DILocation(line: 645, column: 35, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3262, file: !172, discriminator: 5)
!3295 = !DILocation(line: 645, column: 39, scope: !3294)
!3296 = !DILocation(line: 645, column: 32, scope: !3294)
!3297 = !DILocation(line: 645, column: 2, scope: !3294)
!3298 = distinct !{!3298, !3299}
!3299 = !DILocation(line: 645, column: 2, scope: !3235)
!3300 = !DILocation(line: 651, column: 2, scope: !3235)
!3301 = !DILocation(line: 652, column: 1, scope: !3235)
!3302 = distinct !DISubprogram(name: "rs_exist", scope: !172, file: !172, line: 718, type: !3303, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!207, !207, !85}
!3305 = !DILocalVariable(name: "old_rs", arg: 1, scope: !3302, file: !172, line: 718, type: !207)
!3306 = !DILocation(line: 718, column: 26, scope: !3302)
!3307 = !DILocalVariable(name: "l", arg: 2, scope: !3302, file: !172, line: 718, type: !85)
!3308 = !DILocation(line: 718, column: 39, scope: !3302)
!3309 = !DILocalVariable(name: "e", scope: !3302, file: !172, line: 720, type: !177)
!3310 = !DILocation(line: 720, column: 10, scope: !3302)
!3311 = !DILocalVariable(name: "rs", scope: !3302, file: !172, line: 721, type: !207)
!3312 = !DILocation(line: 721, column: 17, scope: !3302)
!3313 = !DILocation(line: 723, column: 8, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3302, file: !172, line: 723, column: 6)
!3315 = !DILocation(line: 723, column: 11, scope: !3314)
!3316 = !DILocation(line: 723, column: 5, scope: !3314)
!3317 = !DILocation(line: 723, column: 10, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3314, file: !172, discriminator: 1)
!3319 = !DILocation(line: 723, column: 14, scope: !3318)
!3320 = !DILocation(line: 723, column: 19, scope: !3318)
!3321 = !DILocation(line: 723, column: 5, scope: !3318)
!3322 = !DILocation(line: 723, column: 9, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3314, file: !172, discriminator: 2)
!3324 = !DILocation(line: 723, column: 13, scope: !3323)
!3325 = !DILocation(line: 723, column: 18, scope: !3323)
!3326 = !DILocation(line: 723, column: 6, scope: !3323)
!3327 = !DILocation(line: 724, column: 3, scope: !3314)
!3328 = !DILocation(line: 726, column: 14, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3302, file: !172, line: 726, column: 2)
!3330 = !DILocation(line: 726, column: 13, scope: !3329)
!3331 = !DILocation(line: 726, column: 12, scope: !3329)
!3332 = !DILocation(line: 726, column: 12, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3329, file: !172, discriminator: 1)
!3334 = !DILocation(line: 726, column: 13, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3329, file: !172, discriminator: 2)
!3336 = !DILocation(line: 726, column: 17, scope: !3335)
!3337 = !DILocation(line: 726, column: 12, scope: !3335)
!3338 = !DILocation(line: 726, column: 12, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3329, file: !172, discriminator: 3)
!3340 = !DILocation(line: 726, column: 9, scope: !3339)
!3341 = !DILocation(line: 726, column: 7, scope: !3339)
!3342 = !DILocation(line: 726, column: 24, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3344, file: !172, discriminator: 4)
!3344 = distinct !DILexicalBlock(scope: !3329, file: !172, line: 726, column: 2)
!3345 = !DILocation(line: 726, column: 2, scope: !3343)
!3346 = !DILocation(line: 727, column: 10, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !172, line: 726, column: 46)
!3348 = !DILocation(line: 727, column: 14, scope: !3347)
!3349 = !DILocation(line: 727, column: 8, scope: !3347)
!3350 = !DILocation(line: 727, column: 6, scope: !3347)
!3351 = !DILocation(line: 728, column: 28, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3347, file: !172, line: 728, column: 7)
!3353 = !DILocation(line: 728, column: 33, scope: !3352)
!3354 = !DILocation(line: 728, column: 40, scope: !3352)
!3355 = !DILocation(line: 728, column: 49, scope: !3352)
!3356 = !DILocation(line: 728, column: 8, scope: !3352)
!3357 = !DILocation(line: 728, column: 55, scope: !3352)
!3358 = !DILocation(line: 728, column: 59, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3352, file: !172, discriminator: 1)
!3360 = !DILocation(line: 728, column: 64, scope: !3359)
!3361 = !DILocation(line: 728, column: 86, scope: !3359)
!3362 = !DILocation(line: 728, column: 95, scope: !3359)
!3363 = !DILocation(line: 728, column: 82, scope: !3359)
!3364 = !DILocation(line: 728, column: 113, scope: !3359)
!3365 = !DILocation(line: 728, column: 118, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3352, file: !172, discriminator: 2)
!3367 = !DILocation(line: 728, column: 123, scope: !3366)
!3368 = !DILocation(line: 728, column: 116, scope: !3366)
!3369 = !DILocation(line: 728, column: 140, scope: !3366)
!3370 = !DILocation(line: 728, column: 149, scope: !3366)
!3371 = !DILocation(line: 728, column: 138, scope: !3366)
!3372 = !DILocation(line: 728, column: 135, scope: !3366)
!3373 = !DILocation(line: 728, column: 161, scope: !3366)
!3374 = !DILocation(line: 728, column: 167, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3352, file: !172, discriminator: 3)
!3376 = !DILocation(line: 728, column: 172, scope: !3375)
!3377 = !DILocation(line: 728, column: 166, scope: !3375)
!3378 = !DILocation(line: 728, column: 184, scope: !3375)
!3379 = !DILocation(line: 728, column: 196, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3352, file: !172, discriminator: 4)
!3381 = !DILocation(line: 728, column: 201, scope: !3380)
!3382 = !DILocation(line: 728, column: 215, scope: !3380)
!3383 = !DILocation(line: 728, column: 224, scope: !3380)
!3384 = !DILocation(line: 728, column: 188, scope: !3380)
!3385 = !DILocation(line: 728, column: 7, scope: !3380)
!3386 = !DILocation(line: 729, column: 11, scope: !3352)
!3387 = !DILocation(line: 729, column: 4, scope: !3352)
!3388 = !DILocation(line: 730, column: 2, scope: !3347)
!3389 = !DILocation(line: 726, column: 35, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3344, file: !172, discriminator: 5)
!3391 = !DILocation(line: 726, column: 39, scope: !3390)
!3392 = !DILocation(line: 726, column: 32, scope: !3390)
!3393 = !DILocation(line: 726, column: 2, scope: !3390)
!3394 = distinct !{!3394, !3395}
!3395 = !DILocation(line: 726, column: 2, scope: !3302)
!3396 = !DILocation(line: 732, column: 2, scope: !3302)
!3397 = !DILocation(line: 733, column: 1, scope: !3302)
!3398 = distinct !DISubprogram(name: "migrate_checkers", scope: !172, file: !172, line: 736, type: !3399, isLocal: true, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !175)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !207, !207, !85}
!3401 = !DILocalVariable(name: "old_rs", arg: 1, scope: !3398, file: !172, line: 736, type: !207)
!3402 = !DILocation(line: 736, column: 33, scope: !3398)
!3403 = !DILocalVariable(name: "new_rs", arg: 2, scope: !3398, file: !172, line: 736, type: !207)
!3404 = !DILocation(line: 736, column: 56, scope: !3398)
!3405 = !DILocalVariable(name: "old_checkers_queue", arg: 3, scope: !3398, file: !172, line: 736, type: !85)
!3406 = !DILocation(line: 736, column: 69, scope: !3398)
!3407 = !DILocalVariable(name: "l", scope: !3398, file: !172, line: 738, type: !85)
!3408 = !DILocation(line: 738, column: 7, scope: !3398)
!3409 = !DILocalVariable(name: "e", scope: !3398, file: !172, line: 739, type: !177)
!3410 = !DILocation(line: 739, column: 10, scope: !3398)
!3411 = !DILocalVariable(name: "e1", scope: !3398, file: !172, line: 739, type: !177)
!3412 = !DILocation(line: 739, column: 13, scope: !3398)
!3413 = !DILocalVariable(name: "old_c", scope: !3398, file: !172, line: 740, type: !868)
!3414 = !DILocation(line: 740, column: 13, scope: !3398)
!3415 = !DILocalVariable(name: "new_c", scope: !3398, file: !172, line: 740, type: !868)
!3416 = !DILocation(line: 740, column: 21, scope: !3398)
!3417 = !DILocation(line: 742, column: 6, scope: !3398)
!3418 = !DILocation(line: 742, column: 4, scope: !3398)
!3419 = !DILocation(line: 743, column: 15, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3398, file: !172, line: 743, column: 2)
!3421 = !DILocation(line: 743, column: 14, scope: !3420)
!3422 = !DILocation(line: 743, column: 40, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 1)
!3424 = !DILocation(line: 743, column: 39, scope: !3423)
!3425 = !DILocation(line: 743, column: 38, scope: !3423)
!3426 = !DILocation(line: 743, column: 38, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 2)
!3428 = !DILocation(line: 743, column: 4, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 3)
!3430 = !DILocation(line: 743, column: 25, scope: !3429)
!3431 = !DILocation(line: 743, column: 38, scope: !3429)
!3432 = !DILocation(line: 743, column: 38, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 4)
!3434 = !DILocation(line: 743, column: 14, scope: !3433)
!3435 = !DILocation(line: 743, column: 14, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 5)
!3437 = !DILocation(line: 743, column: 14, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 6)
!3439 = !DILocation(line: 743, column: 11, scope: !3438)
!3440 = !DILocation(line: 743, column: 7, scope: !3438)
!3441 = !DILocation(line: 743, column: 5, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3443, file: !172, discriminator: 7)
!3443 = distinct !DILexicalBlock(scope: !3420, file: !172, line: 743, column: 2)
!3444 = !DILocation(line: 743, column: 4, scope: !3442)
!3445 = !DILocation(line: 743, column: 8, scope: !3442)
!3446 = !DILocation(line: 743, column: 24, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3443, file: !172, discriminator: 8)
!3448 = !DILocation(line: 743, column: 28, scope: !3447)
!3449 = !DILocation(line: 743, column: 22, scope: !3447)
!3450 = !DILocation(line: 743, column: 20, scope: !3447)
!3451 = !DILocation(line: 743, column: 2, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3420, file: !172, discriminator: 9)
!3453 = !DILocation(line: 744, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !172, line: 744, column: 7)
!3455 = distinct !DILexicalBlock(scope: !3443, file: !172, line: 743, column: 58)
!3456 = !DILocation(line: 744, column: 14, scope: !3454)
!3457 = !DILocation(line: 744, column: 20, scope: !3454)
!3458 = !DILocation(line: 744, column: 17, scope: !3454)
!3459 = !DILocation(line: 744, column: 7, scope: !3455)
!3460 = !DILocation(line: 745, column: 13, scope: !3454)
!3461 = !DILocation(line: 745, column: 16, scope: !3454)
!3462 = !DILocation(line: 745, column: 4, scope: !3454)
!3463 = !DILocation(line: 746, column: 2, scope: !3455)
!3464 = !DILocation(line: 743, column: 47, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3443, file: !172, discriminator: 10)
!3466 = !DILocation(line: 743, column: 51, scope: !3465)
!3467 = !DILocation(line: 743, column: 44, scope: !3465)
!3468 = !DILocation(line: 743, column: 2, scope: !3465)
!3469 = distinct !{!3469, !3470}
!3470 = !DILocation(line: 743, column: 2, scope: !3398)
!3471 = !DILocation(line: 748, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3398, file: !172, line: 748, column: 6)
!3473 = !DILocation(line: 748, column: 12, scope: !3472)
!3474 = !DILocation(line: 748, column: 6, scope: !3472)
!3475 = !DILocation(line: 748, column: 11, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3472, file: !172, discriminator: 1)
!3477 = !DILocation(line: 748, column: 15, scope: !3476)
!3478 = !DILocation(line: 748, column: 20, scope: !3476)
!3479 = !DILocation(line: 748, column: 6, scope: !3476)
!3480 = !DILocation(line: 748, column: 10, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3472, file: !172, discriminator: 2)
!3482 = !DILocation(line: 748, column: 14, scope: !3481)
!3483 = !DILocation(line: 748, column: 19, scope: !3481)
!3484 = !DILocation(line: 748, column: 6, scope: !3481)
!3485 = !DILocation(line: 749, column: 16, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !172, line: 749, column: 3)
!3487 = distinct !DILexicalBlock(scope: !3472, file: !172, line: 748, column: 10)
!3488 = !DILocation(line: 749, column: 15, scope: !3486)
!3489 = !DILocation(line: 749, column: 37, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 1)
!3491 = !DILocation(line: 749, column: 36, scope: !3490)
!3492 = !DILocation(line: 749, column: 35, scope: !3490)
!3493 = !DILocation(line: 749, column: 35, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 2)
!3495 = !DILocation(line: 749, column: 5, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 3)
!3497 = !DILocation(line: 749, column: 22, scope: !3496)
!3498 = !DILocation(line: 749, column: 35, scope: !3496)
!3499 = !DILocation(line: 749, column: 35, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 4)
!3501 = !DILocation(line: 749, column: 15, scope: !3500)
!3502 = !DILocation(line: 749, column: 15, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 5)
!3504 = !DILocation(line: 749, column: 15, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 6)
!3506 = !DILocation(line: 749, column: 12, scope: !3505)
!3507 = !DILocation(line: 749, column: 8, scope: !3505)
!3508 = !DILocation(line: 749, column: 6, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3510, file: !172, discriminator: 7)
!3510 = distinct !DILexicalBlock(scope: !3486, file: !172, line: 749, column: 3)
!3511 = !DILocation(line: 749, column: 5, scope: !3509)
!3512 = !DILocation(line: 749, column: 9, scope: !3509)
!3513 = !DILocation(line: 749, column: 25, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3510, file: !172, discriminator: 8)
!3515 = !DILocation(line: 749, column: 29, scope: !3514)
!3516 = !DILocation(line: 749, column: 23, scope: !3514)
!3517 = !DILocation(line: 749, column: 21, scope: !3514)
!3518 = !DILocation(line: 749, column: 3, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3486, file: !172, discriminator: 9)
!3520 = !DILocation(line: 750, column: 8, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !172, line: 750, column: 8)
!3522 = distinct !DILexicalBlock(scope: !3510, file: !172, line: 749, column: 59)
!3523 = !DILocation(line: 750, column: 15, scope: !3521)
!3524 = !DILocation(line: 750, column: 21, scope: !3521)
!3525 = !DILocation(line: 750, column: 18, scope: !3521)
!3526 = !DILocation(line: 750, column: 28, scope: !3521)
!3527 = !DILocation(line: 750, column: 32, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3521, file: !172, discriminator: 1)
!3529 = !DILocation(line: 750, column: 39, scope: !3528)
!3530 = !DILocation(line: 750, column: 8, scope: !3528)
!3531 = !DILocation(line: 751, column: 5, scope: !3521)
!3532 = !DILocation(line: 752, column: 18, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3522, file: !172, line: 752, column: 4)
!3534 = !DILocation(line: 752, column: 17, scope: !3533)
!3535 = !DILocation(line: 752, column: 26, scope: !3536)
!3536 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 1)
!3537 = !DILocation(line: 752, column: 25, scope: !3536)
!3538 = !DILocation(line: 752, column: 24, scope: !3536)
!3539 = !DILocation(line: 752, column: 24, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 2)
!3541 = !DILocation(line: 752, column: 6, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 3)
!3543 = !DILocation(line: 752, column: 10, scope: !3542)
!3544 = !DILocation(line: 752, column: 24, scope: !3542)
!3545 = !DILocation(line: 752, column: 24, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 4)
!3547 = !DILocation(line: 752, column: 17, scope: !3546)
!3548 = !DILocation(line: 752, column: 17, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 5)
!3550 = !DILocation(line: 752, column: 17, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 6)
!3552 = !DILocation(line: 752, column: 14, scope: !3551)
!3553 = !DILocation(line: 752, column: 9, scope: !3551)
!3554 = !DILocation(line: 752, column: 7, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3556, file: !172, discriminator: 7)
!3556 = distinct !DILexicalBlock(scope: !3533, file: !172, line: 752, column: 4)
!3557 = !DILocation(line: 752, column: 6, scope: !3555)
!3558 = !DILocation(line: 752, column: 11, scope: !3555)
!3559 = !DILocation(line: 752, column: 27, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3556, file: !172, discriminator: 8)
!3561 = !DILocation(line: 752, column: 32, scope: !3560)
!3562 = !DILocation(line: 752, column: 25, scope: !3560)
!3563 = !DILocation(line: 752, column: 23, scope: !3560)
!3564 = !DILocation(line: 752, column: 4, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !3533, file: !172, discriminator: 9)
!3566 = !DILocation(line: 753, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !172, line: 753, column: 9)
!3568 = distinct !DILexicalBlock(scope: !3556, file: !172, line: 752, column: 64)
!3569 = !DILocation(line: 753, column: 16, scope: !3567)
!3570 = !DILocation(line: 753, column: 27, scope: !3567)
!3571 = !DILocation(line: 753, column: 34, scope: !3567)
!3572 = !DILocation(line: 753, column: 24, scope: !3567)
!3573 = !DILocation(line: 753, column: 42, scope: !3567)
!3574 = !DILocation(line: 753, column: 45, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3567, file: !172, discriminator: 1)
!3576 = !DILocation(line: 753, column: 52, scope: !3575)
!3577 = !DILocation(line: 753, column: 60, scope: !3575)
!3578 = !DILocation(line: 753, column: 67, scope: !3575)
!3579 = !DILocation(line: 753, column: 9, scope: !3575)
!3580 = !DILocation(line: 755, column: 10, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !172, line: 755, column: 10)
!3582 = distinct !DILexicalBlock(scope: !3567, file: !172, line: 753, column: 75)
!3583 = !DILocation(line: 755, column: 17, scope: !3581)
!3584 = !DILocation(line: 755, column: 26, scope: !3581)
!3585 = !DILocation(line: 755, column: 33, scope: !3581)
!3586 = !DILocation(line: 755, column: 23, scope: !3581)
!3587 = !DILocation(line: 755, column: 10, scope: !3582)
!3588 = !DILocation(line: 756, column: 25, scope: !3581)
!3589 = !DILocation(line: 756, column: 32, scope: !3581)
!3590 = !DILocation(line: 756, column: 39, scope: !3581)
!3591 = !DILocation(line: 756, column: 7, scope: !3581)
!3592 = !DILocation(line: 759, column: 23, scope: !3582)
!3593 = !DILocation(line: 759, column: 30, scope: !3582)
!3594 = !DILocation(line: 759, column: 6, scope: !3582)
!3595 = !DILocation(line: 759, column: 13, scope: !3582)
!3596 = !DILocation(line: 759, column: 21, scope: !3582)
!3597 = !DILocation(line: 760, column: 24, scope: !3582)
!3598 = !DILocation(line: 760, column: 31, scope: !3582)
!3599 = !DILocation(line: 760, column: 6, scope: !3582)
!3600 = !DILocation(line: 760, column: 13, scope: !3582)
!3601 = !DILocation(line: 760, column: 22, scope: !3582)
!3602 = !DILocation(line: 762, column: 6, scope: !3582)
!3603 = !DILocation(line: 764, column: 4, scope: !3568)
!3604 = !DILocation(line: 752, column: 52, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3556, file: !172, discriminator: 10)
!3606 = !DILocation(line: 752, column: 57, scope: !3605)
!3607 = !DILocation(line: 752, column: 49, scope: !3605)
!3608 = !DILocation(line: 752, column: 4, scope: !3605)
!3609 = distinct !{!3609, !3610}
!3610 = !DILocation(line: 752, column: 4, scope: !3522)
!3611 = !DILocation(line: 765, column: 3, scope: !3522)
!3612 = !DILocation(line: 749, column: 48, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3510, file: !172, discriminator: 10)
!3614 = !DILocation(line: 749, column: 52, scope: !3613)
!3615 = !DILocation(line: 749, column: 45, scope: !3613)
!3616 = !DILocation(line: 749, column: 3, scope: !3613)
!3617 = distinct !{!3617, !3618}
!3618 = !DILocation(line: 749, column: 3, scope: !3487)
!3619 = !DILocation(line: 767, column: 8, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3487, file: !172, line: 767, column: 7)
!3621 = !DILocation(line: 767, column: 16, scope: !3620)
!3622 = !DILocation(line: 767, column: 7, scope: !3487)
!3623 = !DILocation(line: 768, column: 6, scope: !3620)
!3624 = !DILocation(line: 768, column: 15, scope: !3620)
!3625 = !DILocation(line: 768, column: 21, scope: !3620)
!3626 = !DILocation(line: 768, column: 4, scope: !3620)
!3627 = !DILocation(line: 769, column: 2, scope: !3487)
!3628 = !DILocation(line: 771, column: 2, scope: !3398)
!3629 = !DILocation(line: 772, column: 1, scope: !3398)
