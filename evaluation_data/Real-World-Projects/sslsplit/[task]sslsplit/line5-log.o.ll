; ModuleID = './line5-log.o.i'
source_filename = "./line5-log.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.proxy_ctx = type opaque
%struct.logger = type opaque
%struct.libnet_context = type { i32, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block*, i32, i32, i32, i32, i8*, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32 }
%struct.libnet_protocol_block = type { i8*, i32, i16, i32, i8, i8, i32, %struct.libnet_protocol_block*, %struct.libnet_protocol_block* }
%struct.libnet_stats = type { i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.log_content_ctx = type { %struct.log_content_file_ctx*, %struct.log_content_pcap_ctx*, %struct.log_content_mirror_ctx* }
%struct.log_content_file_ctx = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.log_content_pcap_ctx = type { %union.anon.2, %struct.logpkt_ctx_t }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i8* }
%struct.logpkt_ctx_t = type { %struct.libnet_context*, [6 x i8], [6 x i8], %struct.sockaddr_storage, %struct.sockaddr_storage, i32, i32, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.log_content_mirror_ctx = type { %struct.logpkt_ctx_t }
%struct.opts = type { i16, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.ssl_method_st* ()*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, %struct.x509_st*, %struct.evp_pkey_st*, %struct.dh_st*, i8*, %struct.proxyspec*, i8*, i8 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, {}*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.6, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.6 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.anon.8 }
%union.anon.8 = type { i8* }
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
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.10, %struct.X509_name_st* }
%union.anon.10 = type { %struct.stack_st_GENERAL_NAME* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.stack_st_X509_NAME = type { %struct.stack_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.11, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon.11 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.9, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.9 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.7 }
%union.anon.7 = type { void (i32, i32, i8*)* }
%struct.proxyspec = type { i8, %struct.sockaddr_storage, i32, %struct.sockaddr_storage, i32, i16, i8*, i32 (%struct.sockaddr*, i32*, i32, %struct.sockaddr*, i32)*, i32 (i32)*, %struct.proxyspec* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.anon.0 = type { i32, i8* }
%struct.anon.1 = type { i32, i8* }
%struct.anon.4 = type { i32, i8* }
%struct.logbuf = type { i8*, i64, i8*, i64, %struct.logbuf* }

@proxy_ctx = internal global %struct.proxy_ctx* null, align 8
@err_shortcut_logger = internal global i32 0, align 4
@err_log = internal global %struct.logger* null, align 8
@err_mode = internal global i32 0, align 4
@dbg_mode = internal global i32 0, align 4
@masterkey_log = global %struct.logger* null, align 8
@connect_log = global %struct.logger* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to get time\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to convert time: %s (%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%Y%m%dT%H%M%SZ\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to format time: %s (%i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to sanitize srchost\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to sanitize dsthost\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s/%s-%s,%s-%s,%s.log\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to format filename: %s (%i)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"[%s]:%s -> [%s]:%s\00", align 1
@content_pcap_src_ether = internal global [6 x i8] c"\02\00\00\11\11\11", align 1
@content_pcap_dst_ether = internal global [6 x i8] c"\02\00\00\22\22\22", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s/%s-%s,%s-%s,%s.pcap\00", align 1
@content_mirror_libnet = internal global %struct.libnet_context* null, align 8
@content_mirror_mtu = internal global i64 0, align 8
@content_mirror_src_ether = internal global [6 x i8] zeroinitializer, align 1
@content_mirror_dst_ether = internal global [6 x i8] zeroinitializer, align 1
@content_file_log = internal global %struct.logger* null, align 8
@content_pcap_log = internal global %struct.logger* null, align 8
@content_mirror_log = internal global %struct.logger* null, align 8
@cert_log = internal global %struct.logger* null, align 8
@masterkey_clisock = internal global i32 -1, align 4
@connect_clisock = internal global i32 -1, align 4
@content_file_clisock = internal global i32 -1, align 4
@content_pcap_clisock = internal global i32 -1, align 4
@cert_clisock = internal global i32 -1, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to allocate path buffer\0A\00", align 1
@log_content_format_pathspec.iso8601 = internal constant [15 x i8] c"%Y%m%dT%H%M%SZ\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"failed to reallocate path buffer\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"path_buflen > path_len\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"log.c\00", align 1
@__PRETTY_FUNCTION__.log_content_format_pathspec = private unnamed_addr constant [104 x i8] c"char *log_content_format_pathspec(const char *, char *, char *, char *, char *, char *, char *, char *)\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Opening logdir file '%s' failed: %s (%i)\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Warning: Failed to write to content log: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Opening logspec file '%s' failed: %s (%i)\0A\00", align 1
@content_file_single_fd = internal global i32 -1, align 4
@.str.20 = private unnamed_addr constant [42 x i8] c"Failed to open '%s' for writing: %s (%i)\0A\00", align 1
@content_file_single_fn = internal global i8* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c" (EOF)\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" (%zu):\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"%Y-%m-%d %H:%M:%S UTC \00", align 1
@content_pcap_fd = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [50 x i8] c"Failed to prepare '%s' for PCAP writing: %s (%i)\0A\00", align 1
@content_pcap_fn = internal global i8* null, align 8
@.str.26 = private unnamed_addr constant [43 x i8] c"Opening pcapdir file '%s' failed: %s (%i)\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"Warning: Failed to write to pcap log: %s (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Opening pcapspec file '%s' failed: %s (%i)\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Failed to init mirror libnet: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Failed to lookup MTU of interface %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Failed to lookup target ether\0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Warning: Failed to write to mirror log: %s (%i)\0A\00", align 1
@connect_fd = internal global i32 -1, align 4
@connect_fn = internal global i8* null, align 8
@.str.33 = private unnamed_addr constant [37 x i8] c"Failed to open '%s' for writing: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Error from strftime(): buffer too small\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"Warning: Failed to write to connect log: %s\0A\00", align 1
@masterkey_fd = internal global i32 -1, align 4
@masterkey_fn = internal global i8* null, align 8
@.str.36 = private unnamed_addr constant [47 x i8] c"Warning: Failed to write to masterkey log: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Failed to open '%s': %s (%i)\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"Warning: Failed to write to '%s': %s (%i)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @log_exceptcb() #0 !dbg !123 {
  %1 = load %struct.proxy_ctx*, %struct.proxy_ctx** @proxy_ctx, align 8, !dbg !126
  %2 = icmp ne %struct.proxy_ctx* %1, null, !dbg !126
  br i1 %2, label %3, label %5, !dbg !128

; <label>:3:                                      ; preds = %0
  %4 = load %struct.proxy_ctx*, %struct.proxy_ctx** @proxy_ctx, align 8, !dbg !129
  call void @proxy_loopbreak(%struct.proxy_ctx* %4), !dbg !131
  store %struct.proxy_ctx* null, %struct.proxy_ctx** @proxy_ctx, align 8, !dbg !132
  br label %5, !dbg !133

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !134
}

declare void @proxy_loopbreak(%struct.proxy_ctx*) #1

; Function Attrs: nounwind uwtable
define i32 @log_err_printf(i8*, ...) #0 !dbg !135 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !139), !dbg !140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !141, metadata !139), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %5, metadata !156, metadata !139), !dbg !157
  call void @llvm.dbg.declare(metadata i32* %6, metadata !158, metadata !139), !dbg !159
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !160
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !160
  call void @llvm.va_start(i8* %8), !dbg !160
  %9 = load i8*, i8** %3, align 8, !dbg !161
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !162
  %11 = call i32 @vasprintf(i8** %5, i8* %9, %struct.__va_list_tag* %10) #3, !dbg !163
  store i32 %11, i32* %6, align 4, !dbg !164
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !165
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !165
  call void @llvm.va_end(i8* %13), !dbg !165
  %14 = load i32, i32* %6, align 4, !dbg !166
  %15 = icmp slt i32 %14, 0, !dbg !168
  br i1 %15, label %16, label %17, !dbg !169

; <label>:16:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !170
  br label %35, !dbg !170

; <label>:17:                                     ; preds = %1
  %18 = load i32, i32* @err_shortcut_logger, align 4, !dbg !171
  %19 = icmp ne i32 %18, 0, !dbg !171
  br i1 %19, label %20, label %27, !dbg !173

; <label>:20:                                     ; preds = %17
  %21 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !174
  %22 = load i8*, i8** %5, align 8, !dbg !176
  %23 = load i8*, i8** %5, align 8, !dbg !177
  %24 = call i64 @strlen(i8* %23) #9, !dbg !178
  %25 = add i64 %24, 1, !dbg !179
  %26 = call i32 @logger_write_freebuf(%struct.logger* %21, i8* null, i64 0, i8* %22, i64 %25), !dbg !180
  store i32 %26, i32* %2, align 4, !dbg !181
  br label %35, !dbg !181

; <label>:27:                                     ; preds = %17
  %28 = load i8*, i8** %5, align 8, !dbg !182
  %29 = load i8*, i8** %5, align 8, !dbg !184
  %30 = call i64 @strlen(i8* %29) #9, !dbg !185
  %31 = add i64 %30, 1, !dbg !186
  %32 = call i64 @log_err_writecb(i8* null, i64 0, i8* %28, i64 %31), !dbg !187
  %33 = load i8*, i8** %5, align 8, !dbg !189
  call void @free(i8* %33) #3, !dbg !190
  br label %34

; <label>:34:                                     ; preds = %27
  store i32 0, i32* %2, align 4, !dbg !191
  br label %35, !dbg !191

; <label>:35:                                     ; preds = %34, %20, %16
  %36 = load i32, i32* %2, align 4, !dbg !192
  ret i32 %36, !dbg !192
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @logger_write_freebuf(%struct.logger*, i8*, i64, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i64 @log_err_writecb(i8*, i64, i8*, i64) #0 !dbg !193 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !202, metadata !139), !dbg !203
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !204, metadata !139), !dbg !205
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !206, metadata !139), !dbg !207
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !208, metadata !139), !dbg !209
  %10 = load i32, i32* @err_mode, align 4, !dbg !210
  switch i32 %10, label %20 [
    i32 0, label %11
    i32 1, label %17
  ], !dbg !211

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %8, align 8, !dbg !212
  %13 = load i64, i64* %9, align 8, !dbg !214
  %14 = sub i64 %13, 1, !dbg !215
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !216
  %16 = call i64 @fwrite(i8* %12, i64 %14, i64 1, %struct._IO_FILE* %15), !dbg !217
  store i64 %16, i64* %5, align 8, !dbg !218
  br label %21, !dbg !218

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %8, align 8, !dbg !219
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %18), !dbg !220
  %19 = load i64, i64* %9, align 8, !dbg !221
  store i64 %19, i64* %5, align 8, !dbg !222
  br label %21, !dbg !222

; <label>:20:                                     ; preds = %4
  store i64 -1, i64* %5, align 8, !dbg !223
  br label %21, !dbg !223

; <label>:21:                                     ; preds = %20, %17, %11
  %22 = load i64, i64* %5, align 8, !dbg !224
  ret i64 %22, !dbg !224
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @log_err_mode(i32) #0 !dbg !225 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !228, metadata !139), !dbg !229
  %3 = load i32, i32* %2, align 4, !dbg !230
  store i32 %3, i32* @err_mode, align 4, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: nounwind uwtable
define i32 @log_dbg_write_free(i8*, i64) #0 !dbg !233 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !139), !dbg !237
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !238, metadata !139), !dbg !239
  %6 = load i32, i32* @dbg_mode, align 4, !dbg !240
  %7 = icmp eq i32 %6, 0, !dbg !242
  br i1 %7, label %8, label %9, !dbg !243

; <label>:8:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !244
  br label %23, !dbg !244

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @err_shortcut_logger, align 4, !dbg !245
  %11 = icmp ne i32 %10, 0, !dbg !245
  br i1 %11, label %12, label %17, !dbg !247

; <label>:12:                                     ; preds = %9
  %13 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !248
  %14 = load i8*, i8** %4, align 8, !dbg !250
  %15 = load i64, i64* %5, align 8, !dbg !251
  %16 = call i32 @logger_write_freebuf(%struct.logger* %13, i8* null, i64 0, i8* %14, i64 %15), !dbg !252
  store i32 %16, i32* %3, align 4, !dbg !253
  br label %23, !dbg !253

; <label>:17:                                     ; preds = %9
  %18 = load i8*, i8** %4, align 8, !dbg !254
  %19 = load i64, i64* %5, align 8, !dbg !256
  %20 = call i64 @log_err_writecb(i8* null, i64 0, i8* %18, i64 %19), !dbg !257
  %21 = load i8*, i8** %4, align 8, !dbg !258
  call void @free(i8* %21) #3, !dbg !259
  br label %22

; <label>:22:                                     ; preds = %17
  store i32 0, i32* %3, align 4, !dbg !260
  br label %23, !dbg !260

; <label>:23:                                     ; preds = %22, %12, %8
  %24 = load i32, i32* %3, align 4, !dbg !261
  ret i32 %24, !dbg !261
}

; Function Attrs: nounwind uwtable
define i32 @log_dbg_print_free(i8*) #0 !dbg !262 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !265, metadata !139), !dbg !266
  %3 = load i8*, i8** %2, align 8, !dbg !267
  %4 = load i8*, i8** %2, align 8, !dbg !268
  %5 = call i64 @strlen(i8* %4) #9, !dbg !269
  %6 = add i64 %5, 1, !dbg !270
  %7 = call i32 @log_dbg_write_free(i8* %3, i64 %6), !dbg !271
  ret i32 %7, !dbg !273
}

; Function Attrs: nounwind uwtable
define i32 @log_dbg_printf(i8*, ...) #0 !dbg !274 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !275, metadata !139), !dbg !276
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !277, metadata !139), !dbg !278
  call void @llvm.dbg.declare(metadata i8** %5, metadata !279, metadata !139), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %6, metadata !281, metadata !139), !dbg !282
  %7 = load i32, i32* @dbg_mode, align 4, !dbg !283
  %8 = icmp eq i32 %7, 0, !dbg !285
  br i1 %8, label %9, label %10, !dbg !286

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !287
  br label %24, !dbg !287

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !288
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !288
  call void @llvm.va_start(i8* %12), !dbg !288
  %13 = load i8*, i8** %3, align 8, !dbg !289
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !290
  %15 = call i32 @vasprintf(i8** %5, i8* %13, %struct.__va_list_tag* %14) #3, !dbg !291
  store i32 %15, i32* %6, align 4, !dbg !292
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !293
  %17 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !293
  call void @llvm.va_end(i8* %17), !dbg !293
  %18 = load i32, i32* %6, align 4, !dbg !294
  %19 = icmp slt i32 %18, 0, !dbg !296
  br i1 %19, label %20, label %21, !dbg !297

; <label>:20:                                     ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !298
  br label %24, !dbg !298

; <label>:21:                                     ; preds = %10
  %22 = load i8*, i8** %5, align 8, !dbg !299
  %23 = call i32 @log_dbg_print_free(i8* %22), !dbg !300
  store i32 %23, i32* %2, align 4, !dbg !301
  br label %24, !dbg !301

; <label>:24:                                     ; preds = %21, %20, %9
  %25 = load i32, i32* %2, align 4, !dbg !302
  ret i32 %25, !dbg !302
}

; Function Attrs: nounwind uwtable
define void @log_dbg_mode(i32) #0 !dbg !303 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !304, metadata !139), !dbg !305
  %3 = load i32, i32* %2, align 4, !dbg !306
  store i32 %3, i32* @dbg_mode, align 4, !dbg !307
  ret void, !dbg !308
}

; Function Attrs: nounwind uwtable
define i32 @log_content_split_pathspec(i8* nonnull, i8** nonnull, i8** nonnull) #0 !dbg !309 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !313, metadata !139), !dbg !314
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !315, metadata !139), !dbg !316
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !317, metadata !139), !dbg !318
  call void @llvm.dbg.declare(metadata i8** %8, metadata !319, metadata !139), !dbg !320
  call void @llvm.dbg.declare(metadata i8** %9, metadata !321, metadata !139), !dbg !322
  call void @llvm.dbg.declare(metadata i8** %10, metadata !323, metadata !139), !dbg !324
  %11 = load i8*, i8** %5, align 8, !dbg !325
  %12 = call i8* @strchr(i8* %11, i32 37) #9, !dbg !326
  store i8* %12, i8** %8, align 8, !dbg !327
  br label %13, !dbg !328

; <label>:13:                                     ; preds = %24, %3
  %14 = load i8*, i8** %8, align 8, !dbg !329
  %15 = icmp ne i8* %14, null, !dbg !329
  br i1 %15, label %16, label %22, !dbg !331

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %8, align 8, !dbg !332
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !332
  %19 = load i8, i8* %18, align 1, !dbg !332
  %20 = sext i8 %19 to i32, !dbg !332
  %21 = icmp eq i32 %20, 37, !dbg !334
  br label %22

; <label>:22:                                     ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %28, !dbg !335

; <label>:24:                                     ; preds = %22
  %25 = load i8*, i8** %8, align 8, !dbg !337
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !339
  %27 = call i8* @strchr(i8* %26, i32 37) #9, !dbg !340
  store i8* %27, i8** %8, align 8, !dbg !341
  br label %13, !dbg !342, !llvm.loop !344

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %8, align 8, !dbg !345
  %30 = icmp ne i8* %29, null, !dbg !345
  br i1 %30, label %31, label %36, !dbg !347

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %8, align 8, !dbg !348
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !348
  %34 = load i8, i8* %33, align 1, !dbg !348
  %35 = icmp ne i8 %34, 0, !dbg !348
  br i1 %35, label %41, label %36, !dbg !350

; <label>:36:                                     ; preds = %31, %28
  %37 = load i8*, i8** %5, align 8, !dbg !351
  %38 = load i8*, i8** %5, align 8, !dbg !353
  %39 = call i64 @strlen(i8* %38) #9, !dbg !354
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !355
  store i8* %40, i8** %8, align 8, !dbg !356
  br label %41, !dbg !357

; <label>:41:                                     ; preds = %36, %31
  %42 = load i8*, i8** %5, align 8, !dbg !358
  %43 = call i8* @strchr(i8* %42, i32 47) #9, !dbg !360
  store i8* %43, i8** %9, align 8, !dbg !361
  store i8* %43, i8** %10, align 8, !dbg !362
  br label %44, !dbg !363

; <label>:44:                                     ; preds = %55, %41
  %45 = load i8*, i8** %9, align 8, !dbg !364
  %46 = icmp ne i8* %45, null, !dbg !364
  br i1 %46, label %47, label %51, !dbg !367

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %9, align 8, !dbg !368
  %49 = load i8*, i8** %8, align 8, !dbg !370
  %50 = icmp ult i8* %48, %49, !dbg !371
  br label %51

; <label>:51:                                     ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %59, !dbg !372

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %9, align 8, !dbg !374
  store i8* %54, i8** %10, align 8, !dbg !376
  br label %55, !dbg !377

; <label>:55:                                     ; preds = %53
  %56 = load i8*, i8** %9, align 8, !dbg !378
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !380
  %58 = call i8* @strchr(i8* %57, i32 47) #9, !dbg !381
  store i8* %58, i8** %9, align 8, !dbg !382
  br label %44, !dbg !383, !llvm.loop !384

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %10, align 8, !dbg !386
  store i8* %60, i8** %8, align 8, !dbg !388
  %61 = icmp ne i8* %60, null, !dbg !388
  br i1 %61, label %80, label %62, !dbg !389

; <label>:62:                                     ; preds = %59
  %63 = call noalias i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #3, !dbg !390
  %64 = load i8**, i8*** %6, align 8, !dbg !392
  store i8* %63, i8** %64, align 8, !dbg !393
  %65 = load i8**, i8*** %6, align 8, !dbg !394
  %66 = load i8*, i8** %65, align 8, !dbg !396
  %67 = icmp ne i8* %66, null, !dbg !396
  br i1 %67, label %69, label %68, !dbg !397

; <label>:68:                                     ; preds = %62
  store i32 -1, i32* %4, align 4, !dbg !398
  br label %122, !dbg !398

; <label>:69:                                     ; preds = %62
  %70 = load i8*, i8** %5, align 8, !dbg !399
  %71 = call noalias i8* @strdup(i8* %70) #3, !dbg !400
  %72 = load i8**, i8*** %7, align 8, !dbg !401
  store i8* %71, i8** %72, align 8, !dbg !402
  %73 = load i8**, i8*** %7, align 8, !dbg !403
  %74 = load i8*, i8** %73, align 8, !dbg !405
  %75 = icmp ne i8* %74, null, !dbg !405
  br i1 %75, label %79, label %76, !dbg !406

; <label>:76:                                     ; preds = %69
  %77 = load i8**, i8*** %6, align 8, !dbg !407
  %78 = load i8*, i8** %77, align 8, !dbg !409
  call void @free(i8* %78) #3, !dbg !410
  store i32 -1, i32* %4, align 4, !dbg !411
  br label %122, !dbg !411

; <label>:79:                                     ; preds = %69
  store i32 0, i32* %4, align 4, !dbg !412
  br label %122, !dbg !412

; <label>:80:                                     ; preds = %59
  %81 = load i8*, i8** %8, align 8, !dbg !413
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !413
  store i8* %82, i8** %8, align 8, !dbg !413
  %83 = load i8*, i8** %8, align 8, !dbg !414
  %84 = load i8*, i8** %5, align 8, !dbg !415
  %85 = ptrtoint i8* %83 to i64, !dbg !416
  %86 = ptrtoint i8* %84 to i64, !dbg !416
  %87 = sub i64 %85, %86, !dbg !416
  %88 = add nsw i64 %87, 1, !dbg !417
  %89 = call noalias i8* @malloc(i64 %88) #3, !dbg !418
  %90 = load i8**, i8*** %6, align 8, !dbg !419
  store i8* %89, i8** %90, align 8, !dbg !420
  %91 = load i8**, i8*** %6, align 8, !dbg !421
  %92 = load i8*, i8** %91, align 8, !dbg !423
  %93 = icmp ne i8* %92, null, !dbg !423
  br i1 %93, label %95, label %94, !dbg !424

; <label>:94:                                     ; preds = %80
  store i32 -1, i32* %4, align 4, !dbg !425
  br label %122, !dbg !425

; <label>:95:                                     ; preds = %80
  %96 = load i8**, i8*** %6, align 8, !dbg !426
  %97 = load i8*, i8** %96, align 8, !dbg !427
  %98 = load i8*, i8** %5, align 8, !dbg !428
  %99 = load i8*, i8** %8, align 8, !dbg !429
  %100 = load i8*, i8** %5, align 8, !dbg !430
  %101 = ptrtoint i8* %99 to i64, !dbg !431
  %102 = ptrtoint i8* %100 to i64, !dbg !431
  %103 = sub i64 %101, %102, !dbg !431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 %103, i32 1, i1 false), !dbg !432
  %104 = load i8*, i8** %8, align 8, !dbg !433
  %105 = load i8*, i8** %5, align 8, !dbg !434
  %106 = ptrtoint i8* %104 to i64, !dbg !435
  %107 = ptrtoint i8* %105 to i64, !dbg !435
  %108 = sub i64 %106, %107, !dbg !435
  %109 = load i8**, i8*** %6, align 8, !dbg !436
  %110 = load i8*, i8** %109, align 8, !dbg !437
  %111 = getelementptr inbounds i8, i8* %110, i64 %108, !dbg !438
  store i8 0, i8* %111, align 1, !dbg !439
  %112 = load i8*, i8** %8, align 8, !dbg !440
  %113 = call noalias i8* @strdup(i8* %112) #3, !dbg !441
  %114 = load i8**, i8*** %7, align 8, !dbg !442
  store i8* %113, i8** %114, align 8, !dbg !443
  %115 = load i8**, i8*** %7, align 8, !dbg !444
  %116 = load i8*, i8** %115, align 8, !dbg !446
  %117 = icmp ne i8* %116, null, !dbg !446
  br i1 %117, label %121, label %118, !dbg !447

; <label>:118:                                    ; preds = %95
  %119 = load i8**, i8*** %6, align 8, !dbg !448
  %120 = load i8*, i8** %119, align 8, !dbg !450
  call void @free(i8* %120) #3, !dbg !451
  store i32 -1, i32* %4, align 4, !dbg !452
  br label %122, !dbg !452

; <label>:121:                                    ; preds = %95
  store i32 0, i32* %4, align 4, !dbg !453
  br label %122, !dbg !453

; <label>:122:                                    ; preds = %121, %118, %94, %79, %76, %68
  %123 = load i32, i32* %4, align 4, !dbg !454
  ret i32 %123, !dbg !454
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @log_content_open(%struct.log_content_ctx* nonnull, %struct.opts* nonnull, %struct.sockaddr* nonnull, i32, %struct.sockaddr*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !455 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.log_content_ctx*, align 8
  %16 = alloca %struct.opts*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [24 x i8], align 16
  %29 = alloca i64, align 8
  %30 = alloca %struct.tm*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  store %struct.log_content_ctx* %0, %struct.log_content_ctx** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.log_content_ctx** %15, metadata !2304, metadata !139), !dbg !2305
  store %struct.opts* %1, %struct.opts** %16, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %16, metadata !2306, metadata !139), !dbg !2307
  store %struct.sockaddr* %2, %struct.sockaddr** %17, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %17, metadata !2308, metadata !139), !dbg !2309
  store i32 %3, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2310, metadata !139), !dbg !2311
  store %struct.sockaddr* %4, %struct.sockaddr** %19, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %19, metadata !2312, metadata !139), !dbg !2313
  store i32 %5, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2314, metadata !139), !dbg !2315
  store i8* %6, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !2316, metadata !139), !dbg !2317
  store i8* %7, i8** %22, align 8
  call void @llvm.dbg.declare(metadata i8** %22, metadata !2318, metadata !139), !dbg !2319
  store i8* %8, i8** %23, align 8
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2320, metadata !139), !dbg !2321
  store i8* %9, i8** %24, align 8
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2322, metadata !139), !dbg !2323
  store i8* %10, i8** %25, align 8
  call void @llvm.dbg.declare(metadata i8** %25, metadata !2324, metadata !139), !dbg !2325
  store i8* %11, i8** %26, align 8
  call void @llvm.dbg.declare(metadata i8** %26, metadata !2326, metadata !139), !dbg !2327
  store i8* %12, i8** %27, align 8
  call void @llvm.dbg.declare(metadata i8** %27, metadata !2328, metadata !139), !dbg !2329
  call void @llvm.dbg.declare(metadata [24 x i8]* %28, metadata !2330, metadata !139), !dbg !2334
  call void @llvm.dbg.declare(metadata i64* %29, metadata !2335, metadata !139), !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.tm** %30, metadata !2337, metadata !139), !dbg !2352
  call void @llvm.dbg.declare(metadata i8** %31, metadata !2353, metadata !139), !dbg !2354
  store i8* null, i8** %31, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata i8** %32, metadata !2355, metadata !139), !dbg !2356
  store i8* null, i8** %32, align 8, !dbg !2356
  %33 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2357
  %34 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %33, i32 0, i32 0, !dbg !2359
  %35 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %34, align 8, !dbg !2359
  %36 = icmp ne %struct.log_content_file_ctx* %35, null, !dbg !2357
  br i1 %36, label %47, label %37, !dbg !2360

; <label>:37:                                     ; preds = %13
  %38 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2361
  %39 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %38, i32 0, i32 1, !dbg !2363
  %40 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %39, align 8, !dbg !2363
  %41 = icmp ne %struct.log_content_pcap_ctx* %40, null, !dbg !2361
  br i1 %41, label %47, label %42, !dbg !2364

; <label>:42:                                     ; preds = %37
  %43 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2365
  %44 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %43, i32 0, i32 2, !dbg !2366
  %45 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %44, align 8, !dbg !2366
  %46 = icmp ne %struct.log_content_mirror_ctx* %45, null, !dbg !2365
  br i1 %46, label %47, label %48, !dbg !2367

; <label>:47:                                     ; preds = %42, %37, %13
  store i32 0, i32* %14, align 4, !dbg !2369
  br label %504, !dbg !2369

; <label>:48:                                     ; preds = %42
  %49 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2370
  %50 = bitcast %struct.opts* %49 to i16*, !dbg !2372
  %51 = load i16, i16* %50, align 8, !dbg !2372
  %52 = lshr i16 %51, 9, !dbg !2372
  %53 = and i16 %52, 1, !dbg !2372
  %54 = zext i16 %53 to i32, !dbg !2372
  %55 = icmp ne i32 %54, 0, !dbg !2370
  br i1 %55, label %80, label %56, !dbg !2373

; <label>:56:                                     ; preds = %48
  %57 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2374
  %58 = bitcast %struct.opts* %57 to i16*, !dbg !2376
  %59 = load i16, i16* %58, align 8, !dbg !2376
  %60 = lshr i16 %59, 10, !dbg !2376
  %61 = and i16 %60, 1, !dbg !2376
  %62 = zext i16 %61 to i32, !dbg !2376
  %63 = icmp ne i32 %62, 0, !dbg !2374
  br i1 %63, label %80, label %64, !dbg !2377

; <label>:64:                                     ; preds = %56
  %65 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2378
  %66 = bitcast %struct.opts* %65 to i16*, !dbg !2379
  %67 = load i16, i16* %66, align 8, !dbg !2379
  %68 = lshr i16 %67, 11, !dbg !2379
  %69 = and i16 %68, 1, !dbg !2379
  %70 = zext i16 %69 to i32, !dbg !2379
  %71 = icmp ne i32 %70, 0, !dbg !2378
  br i1 %71, label %80, label %72, !dbg !2380

; <label>:72:                                     ; preds = %64
  %73 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2381
  %74 = bitcast %struct.opts* %73 to i16*, !dbg !2382
  %75 = load i16, i16* %74, align 8, !dbg !2382
  %76 = lshr i16 %75, 12, !dbg !2382
  %77 = and i16 %76, 1, !dbg !2382
  %78 = zext i16 %77 to i32, !dbg !2382
  %79 = icmp ne i32 %78, 0, !dbg !2381
  br i1 %79, label %80, label %145, !dbg !2383

; <label>:80:                                     ; preds = %72, %64, %56, %48
  %81 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2384
  %82 = bitcast %struct.opts* %81 to i16*, !dbg !2387
  %83 = load i16, i16* %82, align 8, !dbg !2387
  %84 = lshr i16 %83, 9, !dbg !2387
  %85 = and i16 %84, 1, !dbg !2387
  %86 = zext i16 %85 to i32, !dbg !2387
  %87 = icmp ne i32 %86, 0, !dbg !2384
  br i1 %87, label %96, label %88, !dbg !2388

; <label>:88:                                     ; preds = %80
  %89 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2389
  %90 = bitcast %struct.opts* %89 to i16*, !dbg !2391
  %91 = load i16, i16* %90, align 8, !dbg !2391
  %92 = lshr i16 %91, 11, !dbg !2391
  %93 = and i16 %92, 1, !dbg !2391
  %94 = zext i16 %93 to i32, !dbg !2391
  %95 = icmp ne i32 %94, 0, !dbg !2389
  br i1 %95, label %96, label %127, !dbg !2392

; <label>:96:                                     ; preds = %88, %80
  %97 = call i64 @time(i64* %29) #3, !dbg !2393
  %98 = icmp eq i64 %97, -1, !dbg !2396
  br i1 %98, label %99, label %102, !dbg !2397

; <label>:99:                                     ; preds = %96
  %100 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !2398
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2400
  br label %461, !dbg !2401

; <label>:102:                                    ; preds = %96
  %103 = call %struct.tm* @gmtime(i64* %29) #3, !dbg !2402
  store %struct.tm* %103, %struct.tm** %30, align 8, !dbg !2404
  %104 = icmp eq %struct.tm* %103, null, !dbg !2405
  br i1 %104, label %105, label %113, !dbg !2406

; <label>:105:                                    ; preds = %102
  %106 = call i32* @__errno_location() #2, !dbg !2407
  %107 = load i32, i32* %106, align 4, !dbg !2409
  %108 = call i8* @strerror(i32 %107) #3, !dbg !2410
  %109 = call i32* @__errno_location() #2, !dbg !2412
  %110 = load i32, i32* %109, align 4, !dbg !2414
  %111 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* %108, i32 %110), !dbg !2415
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2416
  br label %461, !dbg !2417

; <label>:113:                                    ; preds = %102
  %114 = getelementptr inbounds [24 x i8], [24 x i8]* %28, i32 0, i32 0, !dbg !2418
  %115 = load %struct.tm*, %struct.tm** %30, align 8, !dbg !2420
  %116 = call i64 @strftime(i8* %114, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), %struct.tm* %115) #3, !dbg !2421
  %117 = icmp ne i64 %116, 0, !dbg !2421
  br i1 %117, label %126, label %118, !dbg !2422

; <label>:118:                                    ; preds = %113
  %119 = call i32* @__errno_location() #2, !dbg !2423
  %120 = load i32, i32* %119, align 4, !dbg !2425
  %121 = call i8* @strerror(i32 %120) #3, !dbg !2426
  %122 = call i32* @__errno_location() #2, !dbg !2427
  %123 = load i32, i32* %122, align 4, !dbg !2429
  %124 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %121, i32 %123), !dbg !2430
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2431
  br label %461, !dbg !2432

; <label>:126:                                    ; preds = %113
  br label %127, !dbg !2433

; <label>:127:                                    ; preds = %126, %88
  %128 = load i8*, i8** %21, align 8, !dbg !2434
  %129 = call noalias i8* @sys_ip46str_sanitize(i8* %128), !dbg !2435
  store i8* %129, i8** %32, align 8, !dbg !2436
  %130 = load i8*, i8** %32, align 8, !dbg !2437
  %131 = icmp ne i8* %130, null, !dbg !2437
  br i1 %131, label %135, label %132, !dbg !2439

; <label>:132:                                    ; preds = %127
  %133 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)), !dbg !2440
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2442
  br label %461, !dbg !2443

; <label>:135:                                    ; preds = %127
  %136 = load i8*, i8** %23, align 8, !dbg !2444
  %137 = call noalias i8* @sys_ip46str_sanitize(i8* %136), !dbg !2445
  store i8* %137, i8** %31, align 8, !dbg !2446
  %138 = load i8*, i8** %31, align 8, !dbg !2447
  %139 = icmp ne i8* %138, null, !dbg !2447
  br i1 %139, label %144, label %140, !dbg !2449

; <label>:140:                                    ; preds = %135
  %141 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)), !dbg !2450
  %142 = load i8*, i8** %32, align 8, !dbg !2452
  call void @free(i8* %142) #3, !dbg !2453
  %143 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2454
  br label %461, !dbg !2455

; <label>:144:                                    ; preds = %135
  br label %145, !dbg !2456

; <label>:145:                                    ; preds = %144, %72
  %146 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2457
  %147 = getelementptr inbounds %struct.opts, %struct.opts* %146, i32 0, i32 11, !dbg !2459
  %148 = load i8*, i8** %147, align 8, !dbg !2459
  %149 = icmp ne i8* %148, null, !dbg !2457
  br i1 %149, label %150, label %275, !dbg !2460

; <label>:150:                                    ; preds = %145
  %151 = call noalias i8* @malloc(i64 16) #3, !dbg !2461
  %152 = bitcast i8* %151 to %struct.log_content_file_ctx*, !dbg !2461
  %153 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2463
  %154 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %153, i32 0, i32 0, !dbg !2464
  store %struct.log_content_file_ctx* %152, %struct.log_content_file_ctx** %154, align 8, !dbg !2465
  %155 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2466
  %156 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %155, i32 0, i32 0, !dbg !2468
  %157 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %156, align 8, !dbg !2468
  %158 = icmp ne %struct.log_content_file_ctx* %157, null, !dbg !2466
  br i1 %158, label %160, label %159, !dbg !2469

; <label>:159:                                    ; preds = %150
  br label %461, !dbg !2470

; <label>:160:                                    ; preds = %150
  %161 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2471
  %162 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %161, i32 0, i32 0, !dbg !2472
  %163 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %162, align 8, !dbg !2472
  %164 = bitcast %struct.log_content_file_ctx* %163 to i8*, !dbg !2473
  call void @llvm.memset.p0i8.i64(i8* %164, i8 0, i64 16, i32 8, i1 false), !dbg !2473
  %165 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2474
  %166 = bitcast %struct.opts* %165 to i16*, !dbg !2476
  %167 = load i16, i16* %166, align 8, !dbg !2476
  %168 = lshr i16 %167, 9, !dbg !2476
  %169 = and i16 %168, 1, !dbg !2476
  %170 = zext i16 %169 to i32, !dbg !2476
  %171 = icmp ne i32 %170, 0, !dbg !2474
  br i1 %171, label %172, label %198, !dbg !2477

; <label>:172:                                    ; preds = %160
  %173 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2478
  %174 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %173, i32 0, i32 0, !dbg !2481
  %175 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %174, align 8, !dbg !2481
  %176 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %175, i32 0, i32 0, !dbg !2482
  %177 = bitcast %union.anon* %176 to %struct.anon.0*, !dbg !2483
  %178 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %177, i32 0, i32 1, !dbg !2484
  %179 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2485
  %180 = getelementptr inbounds %struct.opts, %struct.opts* %179, i32 0, i32 11, !dbg !2486
  %181 = load i8*, i8** %180, align 8, !dbg !2486
  %182 = getelementptr inbounds [24 x i8], [24 x i8]* %28, i32 0, i32 0, !dbg !2487
  %183 = load i8*, i8** %32, align 8, !dbg !2488
  %184 = load i8*, i8** %22, align 8, !dbg !2489
  %185 = load i8*, i8** %31, align 8, !dbg !2490
  %186 = load i8*, i8** %24, align 8, !dbg !2491
  %187 = call i32 (i8**, i8*, ...) @asprintf(i8** %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %181, i8* %182, i8* %183, i8* %184, i8* %185, i8* %186) #3, !dbg !2492
  %188 = icmp slt i32 %187, 0, !dbg !2493
  br i1 %188, label %189, label %197, !dbg !2494

; <label>:189:                                    ; preds = %172
  %190 = call i32* @__errno_location() #2, !dbg !2495
  %191 = load i32, i32* %190, align 4, !dbg !2498
  %192 = call i8* @strerror(i32 %191) #3, !dbg !2499
  %193 = call i32* @__errno_location() #2, !dbg !2500
  %194 = load i32, i32* %193, align 4, !dbg !2502
  %195 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i8* %192, i32 %194), !dbg !2503
  %196 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2504
  br label %461, !dbg !2505

; <label>:197:                                    ; preds = %172
  br label %274, !dbg !2506

; <label>:198:                                    ; preds = %160
  %199 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2507
  %200 = bitcast %struct.opts* %199 to i16*, !dbg !2510
  %201 = load i16, i16* %200, align 8, !dbg !2510
  %202 = lshr i16 %201, 10, !dbg !2510
  %203 = and i16 %202, 1, !dbg !2510
  %204 = zext i16 %203 to i32, !dbg !2510
  %205 = icmp ne i32 %204, 0, !dbg !2507
  br i1 %205, label %206, label %235, !dbg !2507

; <label>:206:                                    ; preds = %198
  %207 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2511
  %208 = getelementptr inbounds %struct.opts, %struct.opts* %207, i32 0, i32 11, !dbg !2513
  %209 = load i8*, i8** %208, align 8, !dbg !2513
  %210 = load i8*, i8** %32, align 8, !dbg !2514
  %211 = load i8*, i8** %22, align 8, !dbg !2515
  %212 = load i8*, i8** %31, align 8, !dbg !2516
  %213 = load i8*, i8** %24, align 8, !dbg !2517
  %214 = load i8*, i8** %25, align 8, !dbg !2518
  %215 = load i8*, i8** %26, align 8, !dbg !2519
  %216 = load i8*, i8** %27, align 8, !dbg !2520
  %217 = call noalias i8* @log_content_format_pathspec(i8* %209, i8* %210, i8* %211, i8* %212, i8* %213, i8* %214, i8* %215, i8* %216), !dbg !2521
  %218 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2522
  %219 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %218, i32 0, i32 0, !dbg !2523
  %220 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %219, align 8, !dbg !2523
  %221 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %220, i32 0, i32 0, !dbg !2524
  %222 = bitcast %union.anon* %221 to %struct.anon.1*, !dbg !2525
  %223 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %222, i32 0, i32 1, !dbg !2526
  store i8* %217, i8** %223, align 8, !dbg !2527
  %224 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2528
  %225 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %224, i32 0, i32 0, !dbg !2530
  %226 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %225, align 8, !dbg !2530
  %227 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %226, i32 0, i32 0, !dbg !2531
  %228 = bitcast %union.anon* %227 to %struct.anon.1*, !dbg !2532
  %229 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %228, i32 0, i32 1, !dbg !2533
  %230 = load i8*, i8** %229, align 8, !dbg !2533
  %231 = icmp ne i8* %230, null, !dbg !2528
  br i1 %231, label %234, label %232, !dbg !2534

; <label>:232:                                    ; preds = %206
  %233 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2535
  br label %461, !dbg !2537

; <label>:234:                                    ; preds = %206
  br label %273, !dbg !2538

; <label>:235:                                    ; preds = %198
  %236 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2539
  %237 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %236, i32 0, i32 0, !dbg !2542
  %238 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %237, align 8, !dbg !2542
  %239 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %238, i32 0, i32 0, !dbg !2543
  %240 = bitcast %union.anon* %239 to %struct.anon*, !dbg !2544
  %241 = getelementptr inbounds %struct.anon, %struct.anon* %240, i32 0, i32 0, !dbg !2545
  %242 = load i8*, i8** %21, align 8, !dbg !2546
  %243 = load i8*, i8** %22, align 8, !dbg !2547
  %244 = load i8*, i8** %23, align 8, !dbg !2548
  %245 = load i8*, i8** %24, align 8, !dbg !2549
  %246 = call i32 (i8**, i8*, ...) @asprintf(i8** %241, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %242, i8* %243, i8* %244, i8* %245) #3, !dbg !2550
  %247 = icmp slt i32 %246, 0, !dbg !2551
  br i1 %247, label %248, label %250, !dbg !2552

; <label>:248:                                    ; preds = %235
  %249 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2553
  br label %461, !dbg !2555

; <label>:250:                                    ; preds = %235
  %251 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2556
  %252 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %251, i32 0, i32 0, !dbg !2558
  %253 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %252, align 8, !dbg !2558
  %254 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %253, i32 0, i32 0, !dbg !2559
  %255 = bitcast %union.anon* %254 to %struct.anon*, !dbg !2560
  %256 = getelementptr inbounds %struct.anon, %struct.anon* %255, i32 0, i32 1, !dbg !2561
  %257 = load i8*, i8** %23, align 8, !dbg !2562
  %258 = load i8*, i8** %24, align 8, !dbg !2563
  %259 = load i8*, i8** %21, align 8, !dbg !2564
  %260 = load i8*, i8** %22, align 8, !dbg !2565
  %261 = call i32 (i8**, i8*, ...) @asprintf(i8** %256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %257, i8* %258, i8* %259, i8* %260) #3, !dbg !2566
  %262 = icmp slt i32 %261, 0, !dbg !2567
  br i1 %262, label %263, label %272, !dbg !2568

; <label>:263:                                    ; preds = %250
  %264 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2569
  %265 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %264, i32 0, i32 0, !dbg !2571
  %266 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %265, align 8, !dbg !2571
  %267 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %266, i32 0, i32 0, !dbg !2572
  %268 = bitcast %union.anon* %267 to %struct.anon*, !dbg !2573
  %269 = getelementptr inbounds %struct.anon, %struct.anon* %268, i32 0, i32 0, !dbg !2574
  %270 = load i8*, i8** %269, align 8, !dbg !2574
  call void @free(i8* %270) #3, !dbg !2575
  %271 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2576
  br label %461, !dbg !2577

; <label>:272:                                    ; preds = %250
  br label %273

; <label>:273:                                    ; preds = %272, %234
  br label %274

; <label>:274:                                    ; preds = %273, %197
  br label %275, !dbg !2578

; <label>:275:                                    ; preds = %274, %145
  %276 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2579
  %277 = getelementptr inbounds %struct.opts, %struct.opts* %276, i32 0, i32 14, !dbg !2581
  %278 = load i8*, i8** %277, align 8, !dbg !2581
  %279 = icmp ne i8* %278, null, !dbg !2579
  br i1 %279, label %280, label %375, !dbg !2582

; <label>:280:                                    ; preds = %275
  %281 = call noalias i8* @malloc(i64 312) #3, !dbg !2583
  %282 = bitcast i8* %281 to %struct.log_content_pcap_ctx*, !dbg !2583
  %283 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2585
  %284 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %283, i32 0, i32 1, !dbg !2586
  store %struct.log_content_pcap_ctx* %282, %struct.log_content_pcap_ctx** %284, align 8, !dbg !2587
  %285 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2588
  %286 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %285, i32 0, i32 1, !dbg !2590
  %287 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %286, align 8, !dbg !2590
  %288 = icmp ne %struct.log_content_pcap_ctx* %287, null, !dbg !2588
  br i1 %288, label %290, label %289, !dbg !2591

; <label>:289:                                    ; preds = %280
  br label %461, !dbg !2592

; <label>:290:                                    ; preds = %280
  %291 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2593
  %292 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %291, i32 0, i32 1, !dbg !2594
  %293 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %292, align 8, !dbg !2594
  %294 = bitcast %struct.log_content_pcap_ctx* %293 to i8*, !dbg !2595
  call void @llvm.memset.p0i8.i64(i8* %294, i8 0, i64 312, i32 8, i1 false), !dbg !2595
  %295 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2596
  %296 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %295, i32 0, i32 1, !dbg !2597
  %297 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %296, align 8, !dbg !2597
  %298 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %297, i32 0, i32 1, !dbg !2598
  %299 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !2599
  %300 = load i32, i32* %18, align 4, !dbg !2600
  %301 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8, !dbg !2601
  %302 = load i32, i32* %20, align 4, !dbg !2602
  call void @logpkt_ctx_init(%struct.logpkt_ctx_t* %298, %struct.libnet_context* null, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_pcap_src_ether, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_pcap_dst_ether, i32 0, i32 0), %struct.sockaddr* %299, i32 %300, %struct.sockaddr* %301, i32 %302), !dbg !2603
  %303 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2604
  %304 = bitcast %struct.opts* %303 to i16*, !dbg !2606
  %305 = load i16, i16* %304, align 8, !dbg !2606
  %306 = lshr i16 %305, 11, !dbg !2606
  %307 = and i16 %306, 1, !dbg !2606
  %308 = zext i16 %307 to i32, !dbg !2606
  %309 = icmp ne i32 %308, 0, !dbg !2604
  br i1 %309, label %310, label %336, !dbg !2607

; <label>:310:                                    ; preds = %290
  %311 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2608
  %312 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %311, i32 0, i32 1, !dbg !2611
  %313 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %312, align 8, !dbg !2611
  %314 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %313, i32 0, i32 0, !dbg !2612
  %315 = bitcast %union.anon.2* %314 to %struct.anon.3*, !dbg !2613
  %316 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %315, i32 0, i32 1, !dbg !2614
  %317 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2615
  %318 = getelementptr inbounds %struct.opts, %struct.opts* %317, i32 0, i32 14, !dbg !2616
  %319 = load i8*, i8** %318, align 8, !dbg !2616
  %320 = getelementptr inbounds [24 x i8], [24 x i8]* %28, i32 0, i32 0, !dbg !2617
  %321 = load i8*, i8** %32, align 8, !dbg !2618
  %322 = load i8*, i8** %22, align 8, !dbg !2619
  %323 = load i8*, i8** %31, align 8, !dbg !2620
  %324 = load i8*, i8** %24, align 8, !dbg !2621
  %325 = call i32 (i8**, i8*, ...) @asprintf(i8** %316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %319, i8* %320, i8* %321, i8* %322, i8* %323, i8* %324) #3, !dbg !2622
  %326 = icmp slt i32 %325, 0, !dbg !2623
  br i1 %326, label %327, label %335, !dbg !2624

; <label>:327:                                    ; preds = %310
  %328 = call i32* @__errno_location() #2, !dbg !2625
  %329 = load i32, i32* %328, align 4, !dbg !2627
  %330 = call i8* @strerror(i32 %329) #3, !dbg !2628
  %331 = call i32* @__errno_location() #2, !dbg !2630
  %332 = load i32, i32* %331, align 4, !dbg !2632
  %333 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i8* %330, i32 %332), !dbg !2633
  %334 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2634
  br label %461, !dbg !2635

; <label>:335:                                    ; preds = %310
  br label %374, !dbg !2636

; <label>:336:                                    ; preds = %290
  %337 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2637
  %338 = bitcast %struct.opts* %337 to i16*, !dbg !2640
  %339 = load i16, i16* %338, align 8, !dbg !2640
  %340 = lshr i16 %339, 12, !dbg !2640
  %341 = and i16 %340, 1, !dbg !2640
  %342 = zext i16 %341 to i32, !dbg !2640
  %343 = icmp ne i32 %342, 0, !dbg !2637
  br i1 %343, label %344, label %373, !dbg !2637

; <label>:344:                                    ; preds = %336
  %345 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2641
  %346 = getelementptr inbounds %struct.opts, %struct.opts* %345, i32 0, i32 14, !dbg !2643
  %347 = load i8*, i8** %346, align 8, !dbg !2643
  %348 = load i8*, i8** %32, align 8, !dbg !2644
  %349 = load i8*, i8** %22, align 8, !dbg !2645
  %350 = load i8*, i8** %31, align 8, !dbg !2646
  %351 = load i8*, i8** %24, align 8, !dbg !2647
  %352 = load i8*, i8** %25, align 8, !dbg !2648
  %353 = load i8*, i8** %26, align 8, !dbg !2649
  %354 = load i8*, i8** %27, align 8, !dbg !2650
  %355 = call noalias i8* @log_content_format_pathspec(i8* %347, i8* %348, i8* %349, i8* %350, i8* %351, i8* %352, i8* %353, i8* %354), !dbg !2651
  %356 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2652
  %357 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %356, i32 0, i32 1, !dbg !2653
  %358 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %357, align 8, !dbg !2653
  %359 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %358, i32 0, i32 0, !dbg !2654
  %360 = bitcast %union.anon.2* %359 to %struct.anon.4*, !dbg !2655
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2656
  store i8* %355, i8** %361, align 8, !dbg !2657
  %362 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2658
  %363 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %362, i32 0, i32 1, !dbg !2660
  %364 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %363, align 8, !dbg !2660
  %365 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %364, i32 0, i32 0, !dbg !2661
  %366 = bitcast %union.anon.2* %365 to %struct.anon.4*, !dbg !2662
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2663
  %368 = load i8*, i8** %367, align 8, !dbg !2663
  %369 = icmp ne i8* %368, null, !dbg !2658
  br i1 %369, label %372, label %370, !dbg !2664

; <label>:370:                                    ; preds = %344
  %371 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2665
  br label %461, !dbg !2667

; <label>:372:                                    ; preds = %344
  br label %373, !dbg !2668

; <label>:373:                                    ; preds = %372, %336
  br label %374

; <label>:374:                                    ; preds = %373, %335
  br label %375, !dbg !2669

; <label>:375:                                    ; preds = %374, %275
  %376 = load %struct.opts*, %struct.opts** %16, align 8, !dbg !2670
  %377 = getelementptr inbounds %struct.opts, %struct.opts* %376, i32 0, i32 16, !dbg !2672
  %378 = load i8*, i8** %377, align 8, !dbg !2672
  %379 = icmp ne i8* %378, null, !dbg !2670
  br i1 %379, label %380, label %405, !dbg !2673

; <label>:380:                                    ; preds = %375
  %381 = call noalias i8* @malloc(i64 296) #3, !dbg !2674
  %382 = bitcast i8* %381 to %struct.log_content_mirror_ctx*, !dbg !2674
  %383 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2676
  %384 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %383, i32 0, i32 2, !dbg !2677
  store %struct.log_content_mirror_ctx* %382, %struct.log_content_mirror_ctx** %384, align 8, !dbg !2678
  %385 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2679
  %386 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %385, i32 0, i32 2, !dbg !2681
  %387 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %386, align 8, !dbg !2681
  %388 = icmp ne %struct.log_content_mirror_ctx* %387, null, !dbg !2679
  br i1 %388, label %390, label %389, !dbg !2682

; <label>:389:                                    ; preds = %380
  br label %461, !dbg !2683

; <label>:390:                                    ; preds = %380
  %391 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2684
  %392 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %391, i32 0, i32 2, !dbg !2685
  %393 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %392, align 8, !dbg !2685
  %394 = bitcast %struct.log_content_mirror_ctx* %393 to i8*, !dbg !2686
  call void @llvm.memset.p0i8.i64(i8* %394, i8 0, i64 296, i32 8, i1 false), !dbg !2686
  %395 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2687
  %396 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %395, i32 0, i32 2, !dbg !2688
  %397 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %396, align 8, !dbg !2688
  %398 = getelementptr inbounds %struct.log_content_mirror_ctx, %struct.log_content_mirror_ctx* %397, i32 0, i32 0, !dbg !2689
  %399 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !2690
  %400 = load i64, i64* @content_mirror_mtu, align 8, !dbg !2691
  %401 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8, !dbg !2692
  %402 = load i32, i32* %18, align 4, !dbg !2693
  %403 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8, !dbg !2694
  %404 = load i32, i32* %20, align 4, !dbg !2695
  call void @logpkt_ctx_init(%struct.logpkt_ctx_t* %398, %struct.libnet_context* %399, i64 %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_mirror_src_ether, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_mirror_dst_ether, i32 0, i32 0), %struct.sockaddr* %401, i32 %402, %struct.sockaddr* %403, i32 %404), !dbg !2696
  br label %405, !dbg !2697

; <label>:405:                                    ; preds = %390, %375
  %406 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2698
  %407 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %406, i32 0, i32 0, !dbg !2700
  %408 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %407, align 8, !dbg !2700
  %409 = icmp ne %struct.log_content_file_ctx* %408, null, !dbg !2698
  br i1 %409, label %410, label %420, !dbg !2701

; <label>:410:                                    ; preds = %405
  %411 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !2702
  %412 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2705
  %413 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %412, i32 0, i32 0, !dbg !2706
  %414 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %413, align 8, !dbg !2706
  %415 = bitcast %struct.log_content_file_ctx* %414 to i8*, !dbg !2705
  %416 = call i32 @logger_open(%struct.logger* %411, i8* %415), !dbg !2707
  %417 = icmp eq i32 %416, -1, !dbg !2708
  br i1 %417, label %418, label %419, !dbg !2709

; <label>:418:                                    ; preds = %410
  br label %461, !dbg !2710

; <label>:419:                                    ; preds = %410
  br label %420, !dbg !2711

; <label>:420:                                    ; preds = %419, %405
  %421 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2712
  %422 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %421, i32 0, i32 1, !dbg !2714
  %423 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %422, align 8, !dbg !2714
  %424 = icmp ne %struct.log_content_pcap_ctx* %423, null, !dbg !2712
  br i1 %424, label %425, label %435, !dbg !2715

; <label>:425:                                    ; preds = %420
  %426 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !2716
  %427 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2719
  %428 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %427, i32 0, i32 1, !dbg !2720
  %429 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %428, align 8, !dbg !2720
  %430 = bitcast %struct.log_content_pcap_ctx* %429 to i8*, !dbg !2719
  %431 = call i32 @logger_open(%struct.logger* %426, i8* %430), !dbg !2721
  %432 = icmp eq i32 %431, -1, !dbg !2722
  br i1 %432, label %433, label %434, !dbg !2723

; <label>:433:                                    ; preds = %425
  br label %461, !dbg !2724

; <label>:434:                                    ; preds = %425
  br label %435, !dbg !2725

; <label>:435:                                    ; preds = %434, %420
  %436 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2726
  %437 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %436, i32 0, i32 2, !dbg !2728
  %438 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %437, align 8, !dbg !2728
  %439 = icmp ne %struct.log_content_mirror_ctx* %438, null, !dbg !2726
  br i1 %439, label %440, label %450, !dbg !2729

; <label>:440:                                    ; preds = %435
  %441 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !2730
  %442 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2733
  %443 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %442, i32 0, i32 2, !dbg !2734
  %444 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %443, align 8, !dbg !2734
  %445 = bitcast %struct.log_content_mirror_ctx* %444 to i8*, !dbg !2733
  %446 = call i32 @logger_open(%struct.logger* %441, i8* %445), !dbg !2735
  %447 = icmp eq i32 %446, -1, !dbg !2736
  br i1 %447, label %448, label %449, !dbg !2737

; <label>:448:                                    ; preds = %440
  br label %461, !dbg !2738

; <label>:449:                                    ; preds = %440
  br label %450, !dbg !2739

; <label>:450:                                    ; preds = %449, %435
  %451 = load i8*, i8** %32, align 8, !dbg !2740
  %452 = icmp ne i8* %451, null, !dbg !2740
  br i1 %452, label %453, label %455, !dbg !2742

; <label>:453:                                    ; preds = %450
  %454 = load i8*, i8** %32, align 8, !dbg !2743
  call void @free(i8* %454) #3, !dbg !2744
  br label %455, !dbg !2744

; <label>:455:                                    ; preds = %453, %450
  %456 = load i8*, i8** %31, align 8, !dbg !2745
  %457 = icmp ne i8* %456, null, !dbg !2745
  br i1 %457, label %458, label %460, !dbg !2747

; <label>:458:                                    ; preds = %455
  %459 = load i8*, i8** %31, align 8, !dbg !2748
  call void @free(i8* %459) #3, !dbg !2749
  br label %460, !dbg !2749

; <label>:460:                                    ; preds = %458, %455
  store i32 0, i32* %14, align 4, !dbg !2750
  br label %504, !dbg !2750

; <label>:461:                                    ; preds = %448, %433, %418, %389, %370, %327, %289, %263, %248, %232, %189, %159, %140, %132, %118, %105, %99
  %462 = load i8*, i8** %32, align 8, !dbg !2751
  %463 = icmp ne i8* %462, null, !dbg !2751
  br i1 %463, label %464, label %466, !dbg !2753

; <label>:464:                                    ; preds = %461
  %465 = load i8*, i8** %32, align 8, !dbg !2754
  call void @free(i8* %465) #3, !dbg !2755
  br label %466, !dbg !2755

; <label>:466:                                    ; preds = %464, %461
  %467 = load i8*, i8** %31, align 8, !dbg !2756
  %468 = icmp ne i8* %467, null, !dbg !2756
  br i1 %468, label %469, label %471, !dbg !2758

; <label>:469:                                    ; preds = %466
  %470 = load i8*, i8** %31, align 8, !dbg !2759
  call void @free(i8* %470) #3, !dbg !2760
  br label %471, !dbg !2760

; <label>:471:                                    ; preds = %469, %466
  %472 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2761
  %473 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %472, i32 0, i32 0, !dbg !2763
  %474 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %473, align 8, !dbg !2763
  %475 = icmp ne %struct.log_content_file_ctx* %474, null, !dbg !2761
  br i1 %475, label %476, label %481, !dbg !2764

; <label>:476:                                    ; preds = %471
  %477 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2765
  %478 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %477, i32 0, i32 0, !dbg !2766
  %479 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %478, align 8, !dbg !2766
  %480 = bitcast %struct.log_content_file_ctx* %479 to i8*, !dbg !2765
  call void @free(i8* %480) #3, !dbg !2767
  br label %481, !dbg !2767

; <label>:481:                                    ; preds = %476, %471
  %482 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2768
  %483 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %482, i32 0, i32 1, !dbg !2770
  %484 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %483, align 8, !dbg !2770
  %485 = icmp ne %struct.log_content_pcap_ctx* %484, null, !dbg !2768
  br i1 %485, label %486, label %491, !dbg !2771

; <label>:486:                                    ; preds = %481
  %487 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2772
  %488 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %487, i32 0, i32 1, !dbg !2774
  %489 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %488, align 8, !dbg !2774
  %490 = bitcast %struct.log_content_pcap_ctx* %489 to i8*, !dbg !2772
  call void @free(i8* %490) #3, !dbg !2775
  br label %491, !dbg !2776

; <label>:491:                                    ; preds = %486, %481
  %492 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2777
  %493 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %492, i32 0, i32 2, !dbg !2779
  %494 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %493, align 8, !dbg !2779
  %495 = icmp ne %struct.log_content_mirror_ctx* %494, null, !dbg !2777
  br i1 %495, label %496, label %501, !dbg !2780

; <label>:496:                                    ; preds = %491
  %497 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2781
  %498 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %497, i32 0, i32 2, !dbg !2783
  %499 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %498, align 8, !dbg !2783
  %500 = bitcast %struct.log_content_mirror_ctx* %499 to i8*, !dbg !2781
  call void @free(i8* %500) #3, !dbg !2784
  br label %501, !dbg !2785

; <label>:501:                                    ; preds = %496, %491
  %502 = load %struct.log_content_ctx*, %struct.log_content_ctx** %15, align 8, !dbg !2786
  %503 = bitcast %struct.log_content_ctx* %502 to i8*, !dbg !2787
  call void @llvm.memset.p0i8.i64(i8* %503, i8 0, i64 24, i32 8, i1 false), !dbg !2787
  store i32 -1, i32* %14, align 4, !dbg !2788
  br label %504, !dbg !2788

; <label>:504:                                    ; preds = %501, %460, %47
  %505 = load i32, i32* %14, align 4, !dbg !2789
  ret i32 %505, !dbg !2789
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare i32 @assert(...) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

declare noalias i8* @sys_ip46str_sanitize(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal noalias i8* @log_content_format_pathspec(i8* nonnull, i8* nonnull, i8* nonnull, i8*, i8*, i8*, i8*, i8*) #0 !dbg !37 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [24 x i8], align 16
  %25 = alloca [54 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.tm*, align 8
  %29 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2790, metadata !139), !dbg !2791
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2792, metadata !139), !dbg !2793
  store i8* %2, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2794, metadata !139), !dbg !2795
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2796, metadata !139), !dbg !2797
  store i8* %4, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2798, metadata !139), !dbg !2799
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2800, metadata !139), !dbg !2801
  store i8* %6, i8** %16, align 8
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2802, metadata !139), !dbg !2803
  store i8* %7, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2804, metadata !139), !dbg !2805
  call void @llvm.dbg.declare(metadata i64* %18, metadata !2806, metadata !139), !dbg !2807
  store i64 1024, i64* %18, align 8, !dbg !2807
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2808, metadata !139), !dbg !2809
  %30 = load i64, i64* %18, align 8, !dbg !2810
  %31 = call noalias i8* @malloc(i64 %30) #3, !dbg !2811
  store i8* %31, i8** %19, align 8, !dbg !2809
  %32 = load i8*, i8** %19, align 8, !dbg !2812
  %33 = icmp eq i8* %32, null, !dbg !2814
  br i1 %33, label %34, label %36, !dbg !2815

; <label>:34:                                     ; preds = %8
  %35 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)), !dbg !2816
  store i8* null, i8** %9, align 8, !dbg !2818
  br label %215, !dbg !2818

; <label>:36:                                     ; preds = %8
  %37 = load i8*, i8** %19, align 8, !dbg !2819
  %38 = getelementptr inbounds i8, i8* %37, i64 0, !dbg !2819
  store i8 0, i8* %38, align 1, !dbg !2820
  call void @llvm.dbg.declare(metadata i64* %20, metadata !2821, metadata !139), !dbg !2822
  store i64 0, i64* %20, align 8, !dbg !2822
  call void @llvm.dbg.declare(metadata i8** %21, metadata !2823, metadata !139), !dbg !2825
  %39 = load i8*, i8** %10, align 8, !dbg !2826
  store i8* %39, i8** %21, align 8, !dbg !2825
  br label %40, !dbg !2827

; <label>:40:                                     ; preds = %200, %36
  %41 = load i8*, i8** %21, align 8, !dbg !2828
  %42 = load i8, i8* %41, align 1, !dbg !2831
  %43 = sext i8 %42 to i32, !dbg !2831
  %44 = icmp ne i32 %43, 0, !dbg !2832
  br i1 %44, label %45, label %203, !dbg !2833

; <label>:45:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata i8** %22, metadata !2834, metadata !139), !dbg !2836
  store i8* null, i8** %22, align 8, !dbg !2836
  call void @llvm.dbg.declare(metadata i64* %23, metadata !2837, metadata !139), !dbg !2838
  store i64 0, i64* %23, align 8, !dbg !2838
  call void @llvm.dbg.declare(metadata [24 x i8]* %24, metadata !2839, metadata !139), !dbg !2840
  call void @llvm.dbg.declare(metadata [54 x i8]* %25, metadata !2841, metadata !139), !dbg !2845
  %46 = load i8*, i8** %21, align 8, !dbg !2846
  %47 = load i8, i8* %46, align 1, !dbg !2847
  %48 = sext i8 %47 to i32, !dbg !2847
  switch i32 %48, label %164 [
    i32 37, label %49
  ], !dbg !2848

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %21, align 8, !dbg !2849
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2849
  store i8* %51, i8** %21, align 8, !dbg !2849
  %52 = load i8*, i8** %21, align 8, !dbg !2851
  %53 = load i8, i8* %52, align 1, !dbg !2852
  %54 = sext i8 %53 to i32, !dbg !2852
  switch i32 %54, label %163 [
    i32 0, label %55
    i32 37, label %58
    i32 100, label %60
    i32 68, label %73
    i32 112, label %77
    i32 115, label %81
    i32 83, label %94
    i32 113, label %98
    i32 120, label %102
    i32 88, label %126
    i32 117, label %136
    i32 103, label %146
    i32 84, label %156
  ], !dbg !2853

; <label>:55:                                     ; preds = %49
  %56 = load i8*, i8** %21, align 8, !dbg !2854
  %57 = getelementptr inbounds i8, i8* %56, i32 -1, !dbg !2854
  store i8* %57, i8** %21, align 8, !dbg !2854
  store i64 0, i64* %23, align 8, !dbg !2856
  br label %163, !dbg !2857

; <label>:58:                                     ; preds = %49
  %59 = load i8*, i8** %21, align 8, !dbg !2858
  store i8* %59, i8** %22, align 8, !dbg !2859
  store i64 1, i64* %23, align 8, !dbg !2860
  br label %163, !dbg !2861

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2862
  %62 = load i8*, i8** %13, align 8, !dbg !2864
  %63 = load i8*, i8** %14, align 8, !dbg !2865
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %62, i8* %63) #3, !dbg !2866
  %65 = icmp slt i32 %64, 0, !dbg !2867
  br i1 %65, label %66, label %69, !dbg !2868

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i64 0, i64 0, !dbg !2869
  store i8 63, i8* %67, align 16, !dbg !2871
  %68 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i64 0, i64 1, !dbg !2872
  store i8 0, i8* %68, align 1, !dbg !2873
  br label %69, !dbg !2874

; <label>:69:                                     ; preds = %66, %60
  %70 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2875
  store i8* %70, i8** %22, align 8, !dbg !2876
  %71 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2877
  %72 = call i64 @strlen(i8* %71) #9, !dbg !2878
  store i64 %72, i64* %23, align 8, !dbg !2879
  br label %163, !dbg !2880

; <label>:73:                                     ; preds = %49
  %74 = load i8*, i8** %13, align 8, !dbg !2881
  store i8* %74, i8** %22, align 8, !dbg !2882
  %75 = load i8*, i8** %13, align 8, !dbg !2883
  %76 = call i64 @strlen(i8* %75) #9, !dbg !2884
  store i64 %76, i64* %23, align 8, !dbg !2885
  br label %163, !dbg !2886

; <label>:77:                                     ; preds = %49
  %78 = load i8*, i8** %14, align 8, !dbg !2887
  store i8* %78, i8** %22, align 8, !dbg !2888
  %79 = load i8*, i8** %14, align 8, !dbg !2889
  %80 = call i64 @strlen(i8* %79) #9, !dbg !2890
  store i64 %80, i64* %23, align 8, !dbg !2891
  br label %163, !dbg !2892

; <label>:81:                                     ; preds = %49
  %82 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2893
  %83 = load i8*, i8** %11, align 8, !dbg !2895
  %84 = load i8*, i8** %12, align 8, !dbg !2896
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %82, i64 54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %83, i8* %84) #3, !dbg !2897
  %86 = icmp slt i32 %85, 0, !dbg !2898
  br i1 %86, label %87, label %90, !dbg !2899

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i64 0, i64 0, !dbg !2900
  store i8 63, i8* %88, align 16, !dbg !2902
  %89 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i64 0, i64 1, !dbg !2903
  store i8 0, i8* %89, align 1, !dbg !2904
  br label %90, !dbg !2905

; <label>:90:                                     ; preds = %87, %81
  %91 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2906
  store i8* %91, i8** %22, align 8, !dbg !2907
  %92 = getelementptr inbounds [54 x i8], [54 x i8]* %25, i32 0, i32 0, !dbg !2908
  %93 = call i64 @strlen(i8* %92) #9, !dbg !2909
  store i64 %93, i64* %23, align 8, !dbg !2910
  br label %163, !dbg !2911

; <label>:94:                                     ; preds = %49
  %95 = load i8*, i8** %11, align 8, !dbg !2912
  store i8* %95, i8** %22, align 8, !dbg !2913
  %96 = load i8*, i8** %11, align 8, !dbg !2914
  %97 = call i64 @strlen(i8* %96) #9, !dbg !2915
  store i64 %97, i64* %23, align 8, !dbg !2916
  br label %163, !dbg !2917

; <label>:98:                                     ; preds = %49
  %99 = load i8*, i8** %12, align 8, !dbg !2918
  store i8* %99, i8** %22, align 8, !dbg !2919
  %100 = load i8*, i8** %12, align 8, !dbg !2920
  %101 = call i64 @strlen(i8* %100) #9, !dbg !2921
  store i64 %101, i64* %23, align 8, !dbg !2922
  br label %163, !dbg !2923

; <label>:102:                                    ; preds = %49
  %103 = load i8*, i8** %15, align 8, !dbg !2924
  %104 = icmp ne i8* %103, null, !dbg !2924
  br i1 %104, label %105, label %124, !dbg !2926

; <label>:105:                                    ; preds = %102
  call void @llvm.dbg.declare(metadata i8** %26, metadata !2927, metadata !139), !dbg !2929
  %106 = load i8*, i8** %15, align 8, !dbg !2930
  store i8* %106, i8** %26, align 8, !dbg !2929
  br label %107, !dbg !2931

; <label>:107:                                    ; preds = %111, %105
  %108 = load i8*, i8** %26, align 8, !dbg !2932
  %109 = call i8* @strchr(i8* %108, i32 47) #9, !dbg !2934
  store i8* %109, i8** %26, align 8, !dbg !2935
  %110 = icmp ne i8* %109, null, !dbg !2936
  br i1 %110, label %111, label %115, !dbg !2937

; <label>:111:                                    ; preds = %107
  %112 = load i8*, i8** %26, align 8, !dbg !2938
  %113 = getelementptr inbounds i8, i8* %112, i32 1, !dbg !2938
  store i8* %113, i8** %26, align 8, !dbg !2938
  %114 = load i8*, i8** %26, align 8, !dbg !2940
  store i8* %114, i8** %22, align 8, !dbg !2941
  br label %107, !dbg !2942, !llvm.loop !2944

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %22, align 8, !dbg !2945
  %117 = icmp ne i8* %116, null, !dbg !2945
  br i1 %117, label %118, label %121, !dbg !2945

; <label>:118:                                    ; preds = %115
  %119 = load i8*, i8** %22, align 8, !dbg !2946
  %120 = call i64 @strlen(i8* %119) #9, !dbg !2947
  br label %122, !dbg !2948

; <label>:121:                                    ; preds = %115
  br label %122, !dbg !2949

; <label>:122:                                    ; preds = %121, %118
  %123 = phi i64 [ %120, %118 ], [ 0, %121 ], !dbg !2950
  store i64 %123, i64* %23, align 8, !dbg !2952
  br label %125, !dbg !2953

; <label>:124:                                    ; preds = %102
  store i64 0, i64* %23, align 8, !dbg !2954
  br label %125

; <label>:125:                                    ; preds = %124, %122
  br label %163, !dbg !2956

; <label>:126:                                    ; preds = %49
  %127 = load i8*, i8** %15, align 8, !dbg !2957
  store i8* %127, i8** %22, align 8, !dbg !2958
  %128 = load i8*, i8** %15, align 8, !dbg !2959
  %129 = icmp ne i8* %128, null, !dbg !2959
  br i1 %129, label %130, label %133, !dbg !2959

; <label>:130:                                    ; preds = %126
  %131 = load i8*, i8** %15, align 8, !dbg !2960
  %132 = call i64 @strlen(i8* %131) #9, !dbg !2962
  br label %134, !dbg !2963

; <label>:133:                                    ; preds = %126
  br label %134, !dbg !2964

; <label>:134:                                    ; preds = %133, %130
  %135 = phi i64 [ %132, %130 ], [ 0, %133 ], !dbg !2966
  store i64 %135, i64* %23, align 8, !dbg !2968
  br label %163, !dbg !2969

; <label>:136:                                    ; preds = %49
  %137 = load i8*, i8** %16, align 8, !dbg !2970
  store i8* %137, i8** %22, align 8, !dbg !2971
  %138 = load i8*, i8** %16, align 8, !dbg !2972
  %139 = icmp ne i8* %138, null, !dbg !2972
  br i1 %139, label %140, label %143, !dbg !2972

; <label>:140:                                    ; preds = %136
  %141 = load i8*, i8** %16, align 8, !dbg !2973
  %142 = call i64 @strlen(i8* %141) #9, !dbg !2974
  br label %144, !dbg !2975

; <label>:143:                                    ; preds = %136
  br label %144, !dbg !2976

; <label>:144:                                    ; preds = %143, %140
  %145 = phi i64 [ %142, %140 ], [ 0, %143 ], !dbg !2977
  store i64 %145, i64* %23, align 8, !dbg !2978
  br label %163, !dbg !2979

; <label>:146:                                    ; preds = %49
  %147 = load i8*, i8** %17, align 8, !dbg !2980
  store i8* %147, i8** %22, align 8, !dbg !2981
  %148 = load i8*, i8** %17, align 8, !dbg !2982
  %149 = icmp ne i8* %148, null, !dbg !2982
  br i1 %149, label %150, label %153, !dbg !2982

; <label>:150:                                    ; preds = %146
  %151 = load i8*, i8** %17, align 8, !dbg !2983
  %152 = call i64 @strlen(i8* %151) #9, !dbg !2984
  br label %154, !dbg !2985

; <label>:153:                                    ; preds = %146
  br label %154, !dbg !2986

; <label>:154:                                    ; preds = %153, %150
  %155 = phi i64 [ %152, %150 ], [ 0, %153 ], !dbg !2987
  store i64 %155, i64* %23, align 8, !dbg !2988
  br label %163, !dbg !2989

; <label>:156:                                    ; preds = %49
  call void @llvm.dbg.declare(metadata i64* %27, metadata !2990, metadata !139), !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.tm** %28, metadata !2993, metadata !139), !dbg !2994
  %157 = call i64 @time(i64* %27) #3, !dbg !2995
  %158 = call %struct.tm* @gmtime(i64* %27) #3, !dbg !2996
  store %struct.tm* %158, %struct.tm** %28, align 8, !dbg !2997
  %159 = getelementptr inbounds [24 x i8], [24 x i8]* %24, i32 0, i32 0, !dbg !2998
  %160 = load %struct.tm*, %struct.tm** %28, align 8, !dbg !2999
  %161 = call i64 @strftime(i8* %159, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @log_content_format_pathspec.iso8601, i32 0, i32 0), %struct.tm* %160) #3, !dbg !3000
  %162 = getelementptr inbounds [24 x i8], [24 x i8]* %24, i32 0, i32 0, !dbg !3001
  store i8* %162, i8** %22, align 8, !dbg !3002
  store i64 24, i64* %23, align 8, !dbg !3003
  br label %163, !dbg !3004

; <label>:163:                                    ; preds = %49, %156, %154, %144, %134, %125, %98, %94, %90, %77, %73, %69, %58, %55
  br label %166, !dbg !3005

; <label>:164:                                    ; preds = %45
  %165 = load i8*, i8** %21, align 8, !dbg !3006
  store i8* %165, i8** %22, align 8, !dbg !3007
  store i64 1, i64* %23, align 8, !dbg !3008
  br label %166, !dbg !3009

; <label>:166:                                    ; preds = %164, %163
  %167 = load i64, i64* %23, align 8, !dbg !3010
  %168 = icmp ugt i64 %167, 0, !dbg !3012
  br i1 %168, label %169, label %199, !dbg !3013

; <label>:169:                                    ; preds = %166
  %170 = load i64, i64* %18, align 8, !dbg !3014
  %171 = load i64, i64* %20, align 8, !dbg !3017
  %172 = sub i64 %170, %171, !dbg !3018
  %173 = load i64, i64* %23, align 8, !dbg !3019
  %174 = add i64 %173, 1, !dbg !3020
  %175 = icmp ult i64 %172, %174, !dbg !3021
  br i1 %175, label %176, label %191, !dbg !3022

; <label>:176:                                    ; preds = %169
  %177 = load i64, i64* %23, align 8, !dbg !3023
  %178 = add i64 %177, 1024, !dbg !3025
  %179 = load i64, i64* %18, align 8, !dbg !3026
  %180 = add i64 %179, %178, !dbg !3026
  store i64 %180, i64* %18, align 8, !dbg !3026
  call void @llvm.dbg.declare(metadata i8** %29, metadata !3027, metadata !139), !dbg !3028
  %181 = load i8*, i8** %19, align 8, !dbg !3029
  %182 = load i64, i64* %18, align 8, !dbg !3030
  %183 = call i8* @realloc(i8* %181, i64 %182) #3, !dbg !3031
  store i8* %183, i8** %29, align 8, !dbg !3028
  %184 = load i8*, i8** %29, align 8, !dbg !3032
  %185 = icmp eq i8* %184, null, !dbg !3034
  br i1 %185, label %186, label %189, !dbg !3035

; <label>:186:                                    ; preds = %176
  %187 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0)), !dbg !3036
  %188 = load i8*, i8** %19, align 8, !dbg !3038
  call void @free(i8* %188) #3, !dbg !3039
  store i8* null, i8** %9, align 8, !dbg !3040
  br label %215, !dbg !3040

; <label>:189:                                    ; preds = %176
  %190 = load i8*, i8** %29, align 8, !dbg !3041
  store i8* %190, i8** %19, align 8, !dbg !3042
  br label %191, !dbg !3043

; <label>:191:                                    ; preds = %189, %169
  %192 = load i8*, i8** %19, align 8, !dbg !3044
  %193 = load i8*, i8** %22, align 8, !dbg !3045
  %194 = load i64, i64* %23, align 8, !dbg !3046
  %195 = call i8* @strncat(i8* %192, i8* %193, i64 %194) #3, !dbg !3047
  %196 = load i64, i64* %23, align 8, !dbg !3048
  %197 = load i64, i64* %20, align 8, !dbg !3049
  %198 = add i64 %197, %196, !dbg !3049
  store i64 %198, i64* %20, align 8, !dbg !3049
  br label %199, !dbg !3050

; <label>:199:                                    ; preds = %191, %166
  br label %200, !dbg !3051

; <label>:200:                                    ; preds = %199
  %201 = load i8*, i8** %21, align 8, !dbg !3052
  %202 = getelementptr inbounds i8, i8* %201, i32 1, !dbg !3052
  store i8* %202, i8** %21, align 8, !dbg !3052
  br label %40, !dbg !3054, !llvm.loop !3055

; <label>:203:                                    ; preds = %40
  %204 = load i64, i64* %18, align 8, !dbg !3057
  %205 = load i64, i64* %20, align 8, !dbg !3058
  %206 = icmp ugt i64 %204, %205, !dbg !3059
  br i1 %206, label %207, label %208, !dbg !3060

; <label>:207:                                    ; preds = %203
  br label %210, !dbg !3061

; <label>:208:                                    ; preds = %203
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 601, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.log_content_format_pathspec, i32 0, i32 0)) #10, !dbg !3063
  unreachable, !dbg !3063
                                                  ; No predecessors!
  br label %210, !dbg !3065

; <label>:210:                                    ; preds = %209, %207
  %211 = load i64, i64* %20, align 8, !dbg !3067
  %212 = load i8*, i8** %19, align 8, !dbg !3068
  %213 = getelementptr inbounds i8, i8* %212, i64 %211, !dbg !3068
  store i8 0, i8* %213, align 1, !dbg !3069
  %214 = load i8*, i8** %19, align 8, !dbg !3070
  store i8* %214, i8** %9, align 8, !dbg !3071
  br label %215, !dbg !3071

; <label>:215:                                    ; preds = %210, %186, %34
  %216 = load i8*, i8** %9, align 8, !dbg !3072
  ret i8* %216, !dbg !3072
}

declare void @logpkt_ctx_init(%struct.logpkt_ctx_t*, %struct.libnet_context*, i64, i8*, i8*, %struct.sockaddr*, i32, %struct.sockaddr*, i32) #1

declare i32 @logger_open(%struct.logger*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @log_content_submit(%struct.log_content_ctx* nonnull, %struct.logbuf* nonnull, i32) #0 !dbg !3073 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.log_content_ctx*, align 8
  %6 = alloca %struct.logbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.logbuf*, align 8
  %10 = alloca %struct.logbuf*, align 8
  store %struct.log_content_ctx* %0, %struct.log_content_ctx** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.log_content_ctx** %5, metadata !3087, metadata !139), !dbg !3088
  store %struct.logbuf* %1, %struct.logbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %6, metadata !3089, metadata !139), !dbg !3090
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3091, metadata !139), !dbg !3092
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3093, metadata !139), !dbg !3094
  store i64 0, i64* %8, align 8, !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.logbuf** %9, metadata !3095, metadata !139), !dbg !3096
  call void @llvm.dbg.declare(metadata %struct.logbuf** %10, metadata !3097, metadata !139), !dbg !3098
  %11 = load i32, i32* %7, align 4, !dbg !3099
  %12 = icmp ne i32 %11, 0, !dbg !3099
  br i1 %12, label %13, label %16, !dbg !3101

; <label>:13:                                     ; preds = %3
  %14 = load i64, i64* %8, align 8, !dbg !3102
  %15 = or i64 %14, 1, !dbg !3102
  store i64 %15, i64* %8, align 8, !dbg !3102
  br label %16, !dbg !3103

; <label>:16:                                     ; preds = %13, %3
  %17 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3104
  %18 = call %struct.logbuf* @logbuf_make_contiguous(%struct.logbuf* %17), !dbg !3105
  store %struct.logbuf* %18, %struct.logbuf** %6, align 8, !dbg !3106
  %19 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3107
  %20 = icmp ne %struct.logbuf* %19, null, !dbg !3107
  br i1 %20, label %22, label %21, !dbg !3109

; <label>:21:                                     ; preds = %16
  store i32 -1, i32* %4, align 4, !dbg !3110
  br label %128, !dbg !3110

; <label>:22:                                     ; preds = %16
  %23 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3111
  store %struct.logbuf* %23, %struct.logbuf** %10, align 8, !dbg !3112
  store %struct.logbuf* %23, %struct.logbuf** %9, align 8, !dbg !3113
  %24 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3114
  %25 = icmp ne %struct.logger* %24, null, !dbg !3114
  br i1 %25, label %26, label %47, !dbg !3116

; <label>:26:                                     ; preds = %22
  %27 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3117
  %28 = icmp ne %struct.logger* %27, null, !dbg !3117
  br i1 %28, label %29, label %36, !dbg !3120

; <label>:29:                                     ; preds = %26
  %30 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3121
  %31 = call noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf* %30, i32 1), !dbg !3123
  store %struct.logbuf* %31, %struct.logbuf** %9, align 8, !dbg !3124
  %32 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !3125
  %33 = icmp ne %struct.logbuf* %32, null, !dbg !3125
  br i1 %33, label %35, label %34, !dbg !3127

; <label>:34:                                     ; preds = %29
  br label %109, !dbg !3128

; <label>:35:                                     ; preds = %29
  br label %36, !dbg !3129

; <label>:36:                                     ; preds = %35, %26
  %37 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3130
  %38 = icmp ne %struct.logger* %37, null, !dbg !3130
  br i1 %38, label %39, label %46, !dbg !3132

; <label>:39:                                     ; preds = %36
  %40 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3133
  %41 = call noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf* %40, i32 1), !dbg !3135
  store %struct.logbuf* %41, %struct.logbuf** %10, align 8, !dbg !3136
  %42 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3137
  %43 = icmp ne %struct.logbuf* %42, null, !dbg !3137
  br i1 %43, label %45, label %44, !dbg !3139

; <label>:44:                                     ; preds = %39
  br label %109, !dbg !3140

; <label>:45:                                     ; preds = %39
  br label %46, !dbg !3141

; <label>:46:                                     ; preds = %45, %36
  br label %61, !dbg !3142

; <label>:47:                                     ; preds = %22
  %48 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3143
  %49 = icmp ne %struct.logger* %48, null, !dbg !3143
  br i1 %49, label %50, label %60, !dbg !3146

; <label>:50:                                     ; preds = %47
  %51 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3147
  %52 = icmp ne %struct.logger* %51, null, !dbg !3147
  br i1 %52, label %53, label %60, !dbg !3149

; <label>:53:                                     ; preds = %50
  %54 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3150
  %55 = call noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf* %54, i32 1), !dbg !3152
  store %struct.logbuf* %55, %struct.logbuf** %10, align 8, !dbg !3153
  %56 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3154
  %57 = icmp ne %struct.logbuf* %56, null, !dbg !3154
  br i1 %57, label %59, label %58, !dbg !3156

; <label>:58:                                     ; preds = %53
  br label %109, !dbg !3157

; <label>:59:                                     ; preds = %53
  br label %60, !dbg !3158

; <label>:60:                                     ; preds = %59, %50, %47
  br label %61

; <label>:61:                                     ; preds = %60, %46
  %62 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3159
  %63 = icmp ne %struct.logger* %62, null, !dbg !3159
  br i1 %63, label %64, label %77, !dbg !3161

; <label>:64:                                     ; preds = %61
  %65 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3162
  %66 = load %struct.log_content_ctx*, %struct.log_content_ctx** %5, align 8, !dbg !3165
  %67 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %66, i32 0, i32 1, !dbg !3166
  %68 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %67, align 8, !dbg !3166
  %69 = bitcast %struct.log_content_pcap_ctx* %68 to i8*, !dbg !3165
  %70 = load i64, i64* %8, align 8, !dbg !3167
  %71 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !3168
  %72 = call i32 @logger_submit(%struct.logger* %65, i8* %69, i64 %70, %struct.logbuf* %71), !dbg !3169
  %73 = icmp eq i32 %72, -1, !dbg !3170
  br i1 %73, label %74, label %76, !dbg !3171

; <label>:74:                                     ; preds = %64
  %75 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3172
  br label %109, !dbg !3174

; <label>:76:                                     ; preds = %64
  store %struct.logbuf* null, %struct.logbuf** %9, align 8, !dbg !3175
  br label %77, !dbg !3176

; <label>:77:                                     ; preds = %76, %61
  %78 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3178
  %79 = icmp ne %struct.logger* %78, null, !dbg !3178
  br i1 %79, label %80, label %93, !dbg !3178

; <label>:80:                                     ; preds = %77
  %81 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3181
  %82 = load %struct.log_content_ctx*, %struct.log_content_ctx** %5, align 8, !dbg !3184
  %83 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %82, i32 0, i32 2, !dbg !3185
  %84 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %83, align 8, !dbg !3185
  %85 = bitcast %struct.log_content_mirror_ctx* %84 to i8*, !dbg !3184
  %86 = load i64, i64* %8, align 8, !dbg !3186
  %87 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3187
  %88 = call i32 @logger_submit(%struct.logger* %81, i8* %85, i64 %86, %struct.logbuf* %87), !dbg !3188
  %89 = icmp eq i32 %88, -1, !dbg !3189
  br i1 %89, label %90, label %92, !dbg !3190

; <label>:90:                                     ; preds = %80
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3191
  br label %109, !dbg !3193

; <label>:92:                                     ; preds = %80
  store %struct.logbuf* null, %struct.logbuf** %10, align 8, !dbg !3194
  br label %93, !dbg !3195

; <label>:93:                                     ; preds = %92, %77
  %94 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3196
  %95 = icmp ne %struct.logger* %94, null, !dbg !3196
  br i1 %95, label %96, label %108, !dbg !3198

; <label>:96:                                     ; preds = %93
  %97 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3199
  %98 = load %struct.log_content_ctx*, %struct.log_content_ctx** %5, align 8, !dbg !3202
  %99 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %98, i32 0, i32 0, !dbg !3203
  %100 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %99, align 8, !dbg !3203
  %101 = bitcast %struct.log_content_file_ctx* %100 to i8*, !dbg !3202
  %102 = load i64, i64* %8, align 8, !dbg !3204
  %103 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3205
  %104 = call i32 @logger_submit(%struct.logger* %97, i8* %101, i64 %102, %struct.logbuf* %103), !dbg !3206
  %105 = icmp eq i32 %104, -1, !dbg !3207
  br i1 %105, label %106, label %107, !dbg !3208

; <label>:106:                                    ; preds = %96
  store i32 -1, i32* %4, align 4, !dbg !3209
  br label %128, !dbg !3209

; <label>:107:                                    ; preds = %96
  br label %108, !dbg !3211

; <label>:108:                                    ; preds = %107, %93
  store i32 0, i32* %4, align 4, !dbg !3212
  br label %128, !dbg !3212

; <label>:109:                                    ; preds = %90, %74, %58, %44, %34
  %110 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !3213
  %111 = icmp ne %struct.logbuf* %110, null, !dbg !3213
  br i1 %111, label %112, label %118, !dbg !3215

; <label>:112:                                    ; preds = %109
  %113 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !3216
  %114 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3218
  %115 = icmp ne %struct.logbuf* %113, %114, !dbg !3219
  br i1 %115, label %116, label %118, !dbg !3220

; <label>:116:                                    ; preds = %112
  %117 = load %struct.logbuf*, %struct.logbuf** %9, align 8, !dbg !3221
  call void @logbuf_free(%struct.logbuf* %117), !dbg !3222
  br label %118, !dbg !3222

; <label>:118:                                    ; preds = %116, %112, %109
  %119 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3223
  %120 = icmp ne %struct.logbuf* %119, null, !dbg !3223
  br i1 %120, label %121, label %127, !dbg !3225

; <label>:121:                                    ; preds = %118
  %122 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3226
  %123 = load %struct.logbuf*, %struct.logbuf** %6, align 8, !dbg !3228
  %124 = icmp ne %struct.logbuf* %122, %123, !dbg !3229
  br i1 %124, label %125, label %127, !dbg !3230

; <label>:125:                                    ; preds = %121
  %126 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !3231
  call void @logbuf_free(%struct.logbuf* %126), !dbg !3232
  br label %127, !dbg !3232

; <label>:127:                                    ; preds = %125, %121, %118
  store i32 -1, i32* %4, align 4, !dbg !3233
  br label %128, !dbg !3233

; <label>:128:                                    ; preds = %127, %108, %106, %21
  %129 = load i32, i32* %4, align 4, !dbg !3234
  ret i32 %129, !dbg !3234
}

declare %struct.logbuf* @logbuf_make_contiguous(%struct.logbuf*) #1

declare noalias %struct.logbuf* @logbuf_new_deepcopy(%struct.logbuf*, i32) #1

declare i32 @logger_submit(%struct.logger*, i8*, i64, %struct.logbuf*) #1

declare void @logbuf_free(%struct.logbuf*) #1

; Function Attrs: nounwind uwtable
define i32 @log_content_close(%struct.log_content_ctx* nonnull, i32) #0 !dbg !3235 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.log_content_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.log_content_ctx* %0, %struct.log_content_ctx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.log_content_ctx** %4, metadata !3238, metadata !139), !dbg !3239
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3240, metadata !139), !dbg !3241
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3242, metadata !139), !dbg !3243
  store i64 2, i64* %6, align 8, !dbg !3243
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3244, metadata !139), !dbg !3245
  %8 = load i32, i32* %5, align 4, !dbg !3246
  %9 = icmp ne i32 %8, 0, !dbg !3246
  br i1 %9, label %10, label %13, !dbg !3248

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %6, align 8, !dbg !3249
  %12 = or i64 %11, 1, !dbg !3249
  store i64 %12, i64* %6, align 8, !dbg !3249
  store i64 8, i64* %7, align 8, !dbg !3251
  br label %14, !dbg !3252

; <label>:13:                                     ; preds = %2
  store i64 16, i64* %7, align 8, !dbg !3253
  br label %14

; <label>:14:                                     ; preds = %13, %10
  %15 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3255
  %16 = icmp ne %struct.logger* %15, null, !dbg !3255
  br i1 %16, label %17, label %45, !dbg !3257

; <label>:17:                                     ; preds = %14
  %18 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3258
  %19 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %18, i32 0, i32 0, !dbg !3260
  %20 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %19, align 8, !dbg !3260
  %21 = icmp ne %struct.log_content_file_ctx* %20, null, !dbg !3258
  br i1 %21, label %22, label %45, !dbg !3261

; <label>:22:                                     ; preds = %17
  %23 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3262
  %24 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3265
  %25 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %24, i32 0, i32 0, !dbg !3266
  %26 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %25, align 8, !dbg !3266
  %27 = bitcast %struct.log_content_file_ctx* %26 to i8*, !dbg !3265
  %28 = load i64, i64* %6, align 8, !dbg !3267
  %29 = call i32 @logger_submit(%struct.logger* %23, i8* %27, i64 %28, %struct.logbuf* null), !dbg !3268
  %30 = icmp eq i32 %29, -1, !dbg !3269
  br i1 %30, label %31, label %32, !dbg !3270

; <label>:31:                                     ; preds = %22
  store i32 -1, i32* %3, align 4, !dbg !3271
  br label %108, !dbg !3271

; <label>:32:                                     ; preds = %22
  %33 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3273
  %34 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3275
  %35 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %34, i32 0, i32 0, !dbg !3276
  %36 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %35, align 8, !dbg !3276
  %37 = bitcast %struct.log_content_file_ctx* %36 to i8*, !dbg !3275
  %38 = load i64, i64* %7, align 8, !dbg !3277
  %39 = call i32 @logger_close(%struct.logger* %33, i8* %37, i64 %38), !dbg !3278
  %40 = icmp eq i32 %39, -1, !dbg !3279
  br i1 %40, label %41, label %42, !dbg !3280

; <label>:41:                                     ; preds = %32
  store i32 -1, i32* %3, align 4, !dbg !3281
  br label %108, !dbg !3281

; <label>:42:                                     ; preds = %32
  %43 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3283
  %44 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %43, i32 0, i32 0, !dbg !3284
  store %struct.log_content_file_ctx* null, %struct.log_content_file_ctx** %44, align 8, !dbg !3285
  br label %45, !dbg !3286

; <label>:45:                                     ; preds = %42, %17, %14
  %46 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3287
  %47 = icmp ne %struct.logger* %46, null, !dbg !3287
  br i1 %47, label %48, label %76, !dbg !3289

; <label>:48:                                     ; preds = %45
  %49 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3290
  %50 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %49, i32 0, i32 1, !dbg !3292
  %51 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %50, align 8, !dbg !3292
  %52 = icmp ne %struct.log_content_pcap_ctx* %51, null, !dbg !3290
  br i1 %52, label %53, label %76, !dbg !3293

; <label>:53:                                     ; preds = %48
  %54 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3294
  %55 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3297
  %56 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %55, i32 0, i32 1, !dbg !3298
  %57 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %56, align 8, !dbg !3298
  %58 = bitcast %struct.log_content_pcap_ctx* %57 to i8*, !dbg !3297
  %59 = load i64, i64* %6, align 8, !dbg !3299
  %60 = call i32 @logger_submit(%struct.logger* %54, i8* %58, i64 %59, %struct.logbuf* null), !dbg !3300
  %61 = icmp eq i32 %60, -1, !dbg !3301
  br i1 %61, label %62, label %63, !dbg !3302

; <label>:62:                                     ; preds = %53
  store i32 -1, i32* %3, align 4, !dbg !3303
  br label %108, !dbg !3303

; <label>:63:                                     ; preds = %53
  %64 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3305
  %65 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3307
  %66 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %65, i32 0, i32 1, !dbg !3308
  %67 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %66, align 8, !dbg !3308
  %68 = bitcast %struct.log_content_pcap_ctx* %67 to i8*, !dbg !3307
  %69 = load i64, i64* %7, align 8, !dbg !3309
  %70 = call i32 @logger_close(%struct.logger* %64, i8* %68, i64 %69), !dbg !3310
  %71 = icmp eq i32 %70, -1, !dbg !3311
  br i1 %71, label %72, label %73, !dbg !3312

; <label>:72:                                     ; preds = %63
  store i32 -1, i32* %3, align 4, !dbg !3313
  br label %108, !dbg !3313

; <label>:73:                                     ; preds = %63
  %74 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3315
  %75 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %74, i32 0, i32 1, !dbg !3316
  store %struct.log_content_pcap_ctx* null, %struct.log_content_pcap_ctx** %75, align 8, !dbg !3317
  br label %76, !dbg !3318

; <label>:76:                                     ; preds = %73, %48, %45
  %77 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3319
  %78 = icmp ne %struct.logger* %77, null, !dbg !3319
  br i1 %78, label %79, label %107, !dbg !3321

; <label>:79:                                     ; preds = %76
  %80 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3322
  %81 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %80, i32 0, i32 2, !dbg !3324
  %82 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %81, align 8, !dbg !3324
  %83 = icmp ne %struct.log_content_mirror_ctx* %82, null, !dbg !3322
  br i1 %83, label %84, label %107, !dbg !3325

; <label>:84:                                     ; preds = %79
  %85 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3326
  %86 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3329
  %87 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %86, i32 0, i32 2, !dbg !3330
  %88 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %87, align 8, !dbg !3330
  %89 = bitcast %struct.log_content_mirror_ctx* %88 to i8*, !dbg !3329
  %90 = load i64, i64* %6, align 8, !dbg !3331
  %91 = call i32 @logger_submit(%struct.logger* %85, i8* %89, i64 %90, %struct.logbuf* null), !dbg !3332
  %92 = icmp eq i32 %91, -1, !dbg !3333
  br i1 %92, label %93, label %94, !dbg !3334

; <label>:93:                                     ; preds = %84
  store i32 -1, i32* %3, align 4, !dbg !3335
  br label %108, !dbg !3335

; <label>:94:                                     ; preds = %84
  %95 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3337
  %96 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3339
  %97 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %96, i32 0, i32 2, !dbg !3340
  %98 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %97, align 8, !dbg !3340
  %99 = bitcast %struct.log_content_mirror_ctx* %98 to i8*, !dbg !3339
  %100 = load i64, i64* %7, align 8, !dbg !3341
  %101 = call i32 @logger_close(%struct.logger* %95, i8* %99, i64 %100), !dbg !3342
  %102 = icmp eq i32 %101, -1, !dbg !3343
  br i1 %102, label %103, label %104, !dbg !3344

; <label>:103:                                    ; preds = %94
  store i32 -1, i32* %3, align 4, !dbg !3345
  br label %108, !dbg !3345

; <label>:104:                                    ; preds = %94
  %105 = load %struct.log_content_ctx*, %struct.log_content_ctx** %4, align 8, !dbg !3347
  %106 = getelementptr inbounds %struct.log_content_ctx, %struct.log_content_ctx* %105, i32 0, i32 2, !dbg !3348
  store %struct.log_content_mirror_ctx* null, %struct.log_content_mirror_ctx** %106, align 8, !dbg !3349
  br label %107, !dbg !3350

; <label>:107:                                    ; preds = %104, %79, %76
  store i32 0, i32* %3, align 4, !dbg !3351
  br label %108, !dbg !3351

; <label>:108:                                    ; preds = %107, %103, %93, %72, %62, %41, %31
  %109 = load i32, i32* %3, align 4, !dbg !3352
  ret i32 %109, !dbg !3352
}

declare i32 @logger_close(%struct.logger*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @log_cert_submit(i8* nonnull, %struct.x509_st* nonnull) #0 !dbg !3353 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.x509_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.logbuf*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3356, metadata !139), !dbg !3357
  store %struct.x509_st* %1, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !3358, metadata !139), !dbg !3359
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3360, metadata !139), !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.logbuf** %6, metadata !3362, metadata !139), !dbg !3363
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3364, metadata !139), !dbg !3365
  %8 = load i8*, i8** %3, align 8, !dbg !3366
  %9 = call noalias i8* @strdup(i8* %8) #3, !dbg !3368
  store i8* %9, i8** %5, align 8, !dbg !3369
  %10 = icmp ne i8* %9, null, !dbg !3369
  br i1 %10, label %12, label %11, !dbg !3370

; <label>:11:                                     ; preds = %2
  br label %30, !dbg !3371

; <label>:12:                                     ; preds = %2
  %13 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !3372
  %14 = call noalias i8* @ssl_x509_to_pem(%struct.x509_st* %13), !dbg !3374
  store i8* %14, i8** %7, align 8, !dbg !3375
  %15 = icmp ne i8* %14, null, !dbg !3375
  br i1 %15, label %17, label %16, !dbg !3376

; <label>:16:                                     ; preds = %12
  br label %28, !dbg !3377

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %7, align 8, !dbg !3378
  %19 = load i8*, i8** %7, align 8, !dbg !3380
  %20 = call i64 @strlen(i8* %19) #9, !dbg !3381
  %21 = call noalias %struct.logbuf* @logbuf_new(i8* %18, i64 %20, %struct.logbuf* null), !dbg !3382
  store %struct.logbuf* %21, %struct.logbuf** %6, align 8, !dbg !3384
  %22 = icmp ne %struct.logbuf* %21, null, !dbg !3384
  br i1 %22, label %25, label %23, !dbg !3385

; <label>:23:                                     ; preds = %17
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !3386
  br label %25, !dbg !3386

; <label>:25:                                     ; preds = %23, %17
  br label %26, !dbg !3387

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %7, align 8, !dbg !3388
  call void @free(i8* %27) #3, !dbg !3389
  br label %28, !dbg !3389

; <label>:28:                                     ; preds = %26, %16
  %29 = load i8*, i8** %5, align 8, !dbg !3390
  call void @free(i8* %29) #3, !dbg !3391
  br label %30, !dbg !3391

; <label>:30:                                     ; preds = %28, %11
  ret i32 -1, !dbg !3392
}

declare noalias i8* @ssl_x509_to_pem(%struct.x509_st*) #1

declare noalias %struct.logbuf* @logbuf_new(i8*, i64, %struct.logbuf*) #1

; Function Attrs: nounwind uwtable
define i32 @log_preinit(%struct.opts* nonnull) #0 !dbg !3393 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opts*, align 8
  %4 = alloca i32 ()*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca void (i8*, i64)*, align 8
  %7 = alloca i64 (i8*, i64, i8*, i64)*, align 8
  %8 = alloca %struct.logbuf* (i8*, i64, %struct.logbuf*)*, align 8
  store %struct.opts* %0, %struct.opts** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %3, metadata !3396, metadata !139), !dbg !3397
  call void @llvm.dbg.declare(metadata i32 ()** %4, metadata !3398, metadata !139), !dbg !3400
  call void @llvm.dbg.declare(metadata i32 (i8*)** %5, metadata !3401, metadata !139), !dbg !3406
  call void @llvm.dbg.declare(metadata void (i8*, i64)** %6, metadata !3407, metadata !139), !dbg !3412
  call void @llvm.dbg.declare(metadata i64 (i8*, i64, i8*, i64)** %7, metadata !3413, metadata !139), !dbg !3416
  call void @llvm.dbg.declare(metadata %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, metadata !3417, metadata !139), !dbg !3422
  %9 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3423
  %10 = getelementptr inbounds %struct.opts, %struct.opts* %9, i32 0, i32 11, !dbg !3425
  %11 = load i8*, i8** %10, align 8, !dbg !3425
  %12 = icmp ne i8* %11, null, !dbg !3423
  br i1 %12, label %13, label %50, !dbg !3426

; <label>:13:                                     ; preds = %1
  %14 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3427
  %15 = bitcast %struct.opts* %14 to i16*, !dbg !3430
  %16 = load i16, i16* %15, align 8, !dbg !3430
  %17 = lshr i16 %16, 9, !dbg !3430
  %18 = and i16 %17, 1, !dbg !3430
  %19 = zext i16 %18 to i32, !dbg !3430
  %20 = icmp ne i32 %19, 0, !dbg !3427
  br i1 %20, label %21, label %22, !dbg !3431

; <label>:21:                                     ; preds = %13
  store i32 ()* null, i32 ()** %4, align 8, !dbg !3432
  store i32 (i8*)* @log_content_file_dir_opencb, i32 (i8*)** %5, align 8, !dbg !3434
  store void (i8*, i64)* @log_content_file_dir_closecb, void (i8*, i64)** %6, align 8, !dbg !3435
  store i64 (i8*, i64, i8*, i64)* @log_content_file_dir_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3436
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3437
  br label %40, !dbg !3438

; <label>:22:                                     ; preds = %13
  %23 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3439
  %24 = bitcast %struct.opts* %23 to i16*, !dbg !3442
  %25 = load i16, i16* %24, align 8, !dbg !3442
  %26 = lshr i16 %25, 10, !dbg !3442
  %27 = and i16 %26, 1, !dbg !3442
  %28 = zext i16 %27 to i32, !dbg !3442
  %29 = icmp ne i32 %28, 0, !dbg !3439
  br i1 %29, label %30, label %31, !dbg !3439

; <label>:30:                                     ; preds = %22
  store i32 ()* null, i32 ()** %4, align 8, !dbg !3443
  store i32 (i8*)* @log_content_file_spec_opencb, i32 (i8*)** %5, align 8, !dbg !3445
  store void (i8*, i64)* @log_content_file_spec_closecb, void (i8*, i64)** %6, align 8, !dbg !3446
  store i64 (i8*, i64, i8*, i64)* @log_content_file_spec_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3447
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3448
  br label %39, !dbg !3449

; <label>:31:                                     ; preds = %22
  %32 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3450
  %33 = getelementptr inbounds %struct.opts, %struct.opts* %32, i32 0, i32 11, !dbg !3453
  %34 = load i8*, i8** %33, align 8, !dbg !3453
  %35 = call i32 @log_content_file_single_preinit(i8* %34), !dbg !3454
  %36 = icmp eq i32 %35, -1, !dbg !3455
  br i1 %36, label %37, label %38, !dbg !3456

; <label>:37:                                     ; preds = %31
  br label %185, !dbg !3457

; <label>:38:                                     ; preds = %31
  store i32 ()* @log_content_file_single_reopencb, i32 ()** %4, align 8, !dbg !3458
  store i32 (i8*)* null, i32 (i8*)** %5, align 8, !dbg !3459
  store void (i8*, i64)* @log_content_file_single_closecb, void (i8*, i64)** %6, align 8, !dbg !3460
  store i64 (i8*, i64, i8*, i64)* @log_content_file_single_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3461
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* @log_content_file_single_prepcb, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3462
  br label %39

; <label>:39:                                     ; preds = %38, %30
  br label %40

; <label>:40:                                     ; preds = %39, %21
  %41 = load i32 ()*, i32 ()** %4, align 8, !dbg !3463
  %42 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !3465
  %43 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !3466
  %44 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3467
  %45 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3468
  %46 = call noalias %struct.logger* @logger_new(i32 ()* %41, i32 (i8*)* %42, void (i8*, i64)* %43, i64 (i8*, i64, i8*, i64)* %44, %struct.logbuf* (i8*, i64, %struct.logbuf*)* %45, void ()* @log_exceptcb), !dbg !3469
  store %struct.logger* %46, %struct.logger** @content_file_log, align 8, !dbg !3470
  %47 = icmp ne %struct.logger* %46, null, !dbg !3470
  br i1 %47, label %49, label %48, !dbg !3471

; <label>:48:                                     ; preds = %40
  call void @log_content_file_single_fini(), !dbg !3472
  br label %185, !dbg !3474

; <label>:49:                                     ; preds = %40
  br label %50, !dbg !3475

; <label>:50:                                     ; preds = %49, %1
  %51 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3476
  %52 = getelementptr inbounds %struct.opts, %struct.opts* %51, i32 0, i32 14, !dbg !3478
  %53 = load i8*, i8** %52, align 8, !dbg !3478
  %54 = icmp ne i8* %53, null, !dbg !3476
  br i1 %54, label %55, label %111, !dbg !3479

; <label>:55:                                     ; preds = %50
  %56 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3480
  %57 = bitcast %struct.opts* %56 to i16*, !dbg !3483
  %58 = load i16, i16* %57, align 8, !dbg !3483
  %59 = lshr i16 %58, 11, !dbg !3483
  %60 = and i16 %59, 1, !dbg !3483
  %61 = zext i16 %60 to i32, !dbg !3483
  %62 = icmp ne i32 %61, 0, !dbg !3480
  br i1 %62, label %71, label %63, !dbg !3484

; <label>:63:                                     ; preds = %55
  %64 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3485
  %65 = bitcast %struct.opts* %64 to i16*, !dbg !3486
  %66 = load i16, i16* %65, align 8, !dbg !3486
  %67 = lshr i16 %66, 12, !dbg !3486
  %68 = and i16 %67, 1, !dbg !3486
  %69 = zext i16 %68 to i32, !dbg !3486
  %70 = icmp ne i32 %69, 0, !dbg !3485
  br i1 %70, label %71, label %72, !dbg !3487

; <label>:71:                                     ; preds = %63, %55
  br label %76, !dbg !3489

; <label>:72:                                     ; preds = %63
  %73 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3491
  %74 = getelementptr inbounds %struct.opts, %struct.opts* %73, i32 0, i32 14, !dbg !3492
  %75 = load i8*, i8** %74, align 8, !dbg !3492
  br label %76, !dbg !3493

; <label>:76:                                     ; preds = %72, %71
  %77 = phi i8* [ null, %71 ], [ %75, %72 ], !dbg !3495
  %78 = call i32 @log_content_pcap_preinit(i8* %77), !dbg !3497
  %79 = icmp eq i32 %78, -1, !dbg !3498
  br i1 %79, label %80, label %81, !dbg !3497

; <label>:80:                                     ; preds = %76
  br label %185, !dbg !3499

; <label>:81:                                     ; preds = %76
  %82 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3500
  %83 = bitcast %struct.opts* %82 to i16*, !dbg !3502
  %84 = load i16, i16* %83, align 8, !dbg !3502
  %85 = lshr i16 %84, 11, !dbg !3502
  %86 = and i16 %85, 1, !dbg !3502
  %87 = zext i16 %86 to i32, !dbg !3502
  %88 = icmp ne i32 %87, 0, !dbg !3500
  br i1 %88, label %89, label %90, !dbg !3503

; <label>:89:                                     ; preds = %81
  store i32 ()* null, i32 ()** %4, align 8, !dbg !3504
  store i32 (i8*)* @log_content_pcap_dir_opencb, i32 (i8*)** %5, align 8, !dbg !3506
  store void (i8*, i64)* @log_content_pcap_dir_closecb, void (i8*, i64)** %6, align 8, !dbg !3507
  store i64 (i8*, i64, i8*, i64)* @log_content_pcap_dir_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3508
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* @log_content_pcap_prepcb, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3509
  br label %101, !dbg !3510

; <label>:90:                                     ; preds = %81
  %91 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3511
  %92 = bitcast %struct.opts* %91 to i16*, !dbg !3514
  %93 = load i16, i16* %92, align 8, !dbg !3514
  %94 = lshr i16 %93, 12, !dbg !3514
  %95 = and i16 %94, 1, !dbg !3514
  %96 = zext i16 %95 to i32, !dbg !3514
  %97 = icmp ne i32 %96, 0, !dbg !3511
  br i1 %97, label %98, label %99, !dbg !3511

; <label>:98:                                     ; preds = %90
  store i32 ()* null, i32 ()** %4, align 8, !dbg !3515
  store i32 (i8*)* @log_content_pcap_spec_opencb, i32 (i8*)** %5, align 8, !dbg !3517
  store void (i8*, i64)* @log_content_pcap_spec_closecb, void (i8*, i64)** %6, align 8, !dbg !3518
  store i64 (i8*, i64, i8*, i64)* @log_content_pcap_spec_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3519
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* @log_content_pcap_prepcb, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3520
  br label %100, !dbg !3521

; <label>:99:                                     ; preds = %90
  store i32 ()* @log_content_pcap_reopencb, i32 ()** %4, align 8, !dbg !3522
  store i32 (i8*)* null, i32 (i8*)** %5, align 8, !dbg !3524
  store void (i8*, i64)* @log_content_pcap_closecb, void (i8*, i64)** %6, align 8, !dbg !3525
  store i64 (i8*, i64, i8*, i64)* @log_content_pcap_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3526
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* @log_content_pcap_prepcb, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3527
  br label %100

; <label>:100:                                    ; preds = %99, %98
  br label %101

; <label>:101:                                    ; preds = %100, %89
  %102 = load i32 ()*, i32 ()** %4, align 8, !dbg !3528
  %103 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !3530
  %104 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !3531
  %105 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3532
  %106 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3533
  %107 = call noalias %struct.logger* @logger_new(i32 ()* %102, i32 (i8*)* %103, void (i8*, i64)* %104, i64 (i8*, i64, i8*, i64)* %105, %struct.logbuf* (i8*, i64, %struct.logbuf*)* %106, void ()* @log_exceptcb), !dbg !3534
  store %struct.logger* %107, %struct.logger** @content_pcap_log, align 8, !dbg !3535
  %108 = icmp ne %struct.logger* %107, null, !dbg !3535
  br i1 %108, label %110, label %109, !dbg !3536

; <label>:109:                                    ; preds = %101
  call void @log_content_pcap_fini(), !dbg !3537
  br label %185, !dbg !3539

; <label>:110:                                    ; preds = %101
  br label %111, !dbg !3540

; <label>:111:                                    ; preds = %110, %50
  %112 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3541
  %113 = getelementptr inbounds %struct.opts, %struct.opts* %112, i32 0, i32 16, !dbg !3543
  %114 = load i8*, i8** %113, align 8, !dbg !3543
  %115 = icmp ne i8* %114, null, !dbg !3541
  br i1 %115, label %116, label %136, !dbg !3544

; <label>:116:                                    ; preds = %111
  %117 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3545
  %118 = getelementptr inbounds %struct.opts, %struct.opts* %117, i32 0, i32 16, !dbg !3548
  %119 = load i8*, i8** %118, align 8, !dbg !3548
  %120 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3549
  %121 = getelementptr inbounds %struct.opts, %struct.opts* %120, i32 0, i32 17, !dbg !3550
  %122 = load i8*, i8** %121, align 8, !dbg !3550
  %123 = call i32 @log_content_mirror_preinit(i8* %119, i8* %122), !dbg !3551
  %124 = icmp eq i32 %123, -1, !dbg !3552
  br i1 %124, label %125, label %126, !dbg !3553

; <label>:125:                                    ; preds = %116
  br label %185, !dbg !3554

; <label>:126:                                    ; preds = %116
  store i32 ()* null, i32 ()** %4, align 8, !dbg !3555
  store i32 (i8*)* null, i32 (i8*)** %5, align 8, !dbg !3556
  store void (i8*, i64)* @log_content_mirror_closecb, void (i8*, i64)** %6, align 8, !dbg !3557
  store i64 (i8*, i64, i8*, i64)* @log_content_mirror_writecb, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3558
  store %struct.logbuf* (i8*, i64, %struct.logbuf*)* @log_content_mirror_prepcb, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3559
  %127 = load i32 ()*, i32 ()** %4, align 8, !dbg !3560
  %128 = load i32 (i8*)*, i32 (i8*)** %5, align 8, !dbg !3562
  %129 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !3563
  %130 = load i64 (i8*, i64, i8*, i64)*, i64 (i8*, i64, i8*, i64)** %7, align 8, !dbg !3564
  %131 = load %struct.logbuf* (i8*, i64, %struct.logbuf*)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)** %8, align 8, !dbg !3565
  %132 = call noalias %struct.logger* @logger_new(i32 ()* %127, i32 (i8*)* %128, void (i8*, i64)* %129, i64 (i8*, i64, i8*, i64)* %130, %struct.logbuf* (i8*, i64, %struct.logbuf*)* %131, void ()* @log_exceptcb), !dbg !3566
  store %struct.logger* %132, %struct.logger** @content_mirror_log, align 8, !dbg !3567
  %133 = icmp ne %struct.logger* %132, null, !dbg !3567
  br i1 %133, label %135, label %134, !dbg !3568

; <label>:134:                                    ; preds = %126
  call void @log_content_mirror_fini(), !dbg !3569
  br label %185, !dbg !3571

; <label>:135:                                    ; preds = %126
  br label %136, !dbg !3572

; <label>:136:                                    ; preds = %135, %111
  %137 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3573
  %138 = getelementptr inbounds %struct.opts, %struct.opts* %137, i32 0, i32 10, !dbg !3575
  %139 = load i8*, i8** %138, align 8, !dbg !3575
  %140 = icmp ne i8* %139, null, !dbg !3573
  br i1 %140, label %141, label %153, !dbg !3576

; <label>:141:                                    ; preds = %136
  %142 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3577
  %143 = getelementptr inbounds %struct.opts, %struct.opts* %142, i32 0, i32 10, !dbg !3580
  %144 = load i8*, i8** %143, align 8, !dbg !3580
  %145 = call i32 @log_connect_preinit(i8* %144), !dbg !3581
  %146 = icmp eq i32 %145, -1, !dbg !3582
  br i1 %146, label %147, label %148, !dbg !3583

; <label>:147:                                    ; preds = %141
  br label %185, !dbg !3584

; <label>:148:                                    ; preds = %141
  %149 = call noalias %struct.logger* @logger_new(i32 ()* @log_connect_reopencb, i32 (i8*)* null, void (i8*, i64)* null, i64 (i8*, i64, i8*, i64)* @log_connect_writecb, %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, void ()* @log_exceptcb), !dbg !3585
  store %struct.logger* %149, %struct.logger** @connect_log, align 8, !dbg !3587
  %150 = icmp ne %struct.logger* %149, null, !dbg !3587
  br i1 %150, label %152, label %151, !dbg !3588

; <label>:151:                                    ; preds = %148
  call void @log_connect_fini(), !dbg !3589
  br label %185, !dbg !3591

; <label>:152:                                    ; preds = %148
  br label %153, !dbg !3592

; <label>:153:                                    ; preds = %152, %136
  %154 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3593
  %155 = getelementptr inbounds %struct.opts, %struct.opts* %154, i32 0, i32 13, !dbg !3595
  %156 = load i8*, i8** %155, align 8, !dbg !3595
  %157 = icmp ne i8* %156, null, !dbg !3593
  br i1 %157, label %158, label %170, !dbg !3596

; <label>:158:                                    ; preds = %153
  %159 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3597
  %160 = getelementptr inbounds %struct.opts, %struct.opts* %159, i32 0, i32 13, !dbg !3600
  %161 = load i8*, i8** %160, align 8, !dbg !3600
  %162 = call i32 @log_masterkey_preinit(i8* %161), !dbg !3601
  %163 = icmp eq i32 %162, -1, !dbg !3602
  br i1 %163, label %164, label %165, !dbg !3603

; <label>:164:                                    ; preds = %158
  br label %185, !dbg !3604

; <label>:165:                                    ; preds = %158
  %166 = call noalias %struct.logger* @logger_new(i32 ()* @log_masterkey_reopencb, i32 (i8*)* null, void (i8*, i64)* null, i64 (i8*, i64, i8*, i64)* @log_masterkey_writecb, %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, void ()* @log_exceptcb), !dbg !3605
  store %struct.logger* %166, %struct.logger** @masterkey_log, align 8, !dbg !3607
  %167 = icmp ne %struct.logger* %166, null, !dbg !3607
  br i1 %167, label %169, label %168, !dbg !3608

; <label>:168:                                    ; preds = %165
  call void @log_masterkey_fini(), !dbg !3609
  br label %185, !dbg !3611

; <label>:169:                                    ; preds = %165
  br label %170, !dbg !3612

; <label>:170:                                    ; preds = %169, %153
  %171 = load %struct.opts*, %struct.opts** %3, align 8, !dbg !3613
  %172 = getelementptr inbounds %struct.opts, %struct.opts* %171, i32 0, i32 3, !dbg !3615
  %173 = load i8*, i8** %172, align 8, !dbg !3615
  %174 = icmp ne i8* %173, null, !dbg !3613
  br i1 %174, label %175, label %180, !dbg !3616

; <label>:175:                                    ; preds = %170
  %176 = call noalias %struct.logger* @logger_new(i32 ()* null, i32 (i8*)* null, void (i8*, i64)* null, i64 (i8*, i64, i8*, i64)* @log_cert_writecb, %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, void ()* @log_exceptcb), !dbg !3617
  store %struct.logger* %176, %struct.logger** @cert_log, align 8, !dbg !3620
  %177 = icmp ne %struct.logger* %176, null, !dbg !3620
  br i1 %177, label %179, label %178, !dbg !3621

; <label>:178:                                    ; preds = %175
  br label %185, !dbg !3622

; <label>:179:                                    ; preds = %175
  br label %180, !dbg !3623

; <label>:180:                                    ; preds = %179, %170
  %181 = call noalias %struct.logger* @logger_new(i32 ()* null, i32 (i8*)* null, void (i8*, i64)* null, i64 (i8*, i64, i8*, i64)* @log_err_writecb, %struct.logbuf* (i8*, i64, %struct.logbuf*)* null, void ()* @log_exceptcb), !dbg !3624
  store %struct.logger* %181, %struct.logger** @err_log, align 8, !dbg !3626
  %182 = icmp ne %struct.logger* %181, null, !dbg !3626
  br i1 %182, label %184, label %183, !dbg !3627

; <label>:183:                                    ; preds = %180
  br label %185, !dbg !3628

; <label>:184:                                    ; preds = %180
  store i32 0, i32* %2, align 4, !dbg !3629
  br label %216, !dbg !3629

; <label>:185:                                    ; preds = %183, %178, %168, %164, %151, %147, %134, %125, %109, %80, %48, %37
  %186 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !3630
  %187 = icmp ne %struct.logger* %186, null, !dbg !3630
  br i1 %187, label %188, label %190, !dbg !3632

; <label>:188:                                    ; preds = %185
  call void @log_connect_fini(), !dbg !3633
  %189 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !3635
  call void @logger_free(%struct.logger* %189), !dbg !3636
  br label %190, !dbg !3637

; <label>:190:                                    ; preds = %188, %185
  %191 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3638
  %192 = icmp ne %struct.logger* %191, null, !dbg !3638
  br i1 %192, label %193, label %195, !dbg !3640

; <label>:193:                                    ; preds = %190
  call void @log_content_file_single_fini(), !dbg !3641
  %194 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !3643
  call void @logger_free(%struct.logger* %194), !dbg !3644
  br label %195, !dbg !3645

; <label>:195:                                    ; preds = %193, %190
  %196 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3646
  %197 = icmp ne %struct.logger* %196, null, !dbg !3646
  br i1 %197, label %198, label %200, !dbg !3648

; <label>:198:                                    ; preds = %195
  call void @log_content_pcap_fini(), !dbg !3649
  %199 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !3651
  call void @logger_free(%struct.logger* %199), !dbg !3652
  br label %200, !dbg !3653

; <label>:200:                                    ; preds = %198, %195
  %201 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3654
  %202 = icmp ne %struct.logger* %201, null, !dbg !3654
  br i1 %202, label %203, label %205, !dbg !3656

; <label>:203:                                    ; preds = %200
  call void @log_content_mirror_fini(), !dbg !3657
  %204 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !3659
  call void @logger_free(%struct.logger* %204), !dbg !3660
  br label %205, !dbg !3661

; <label>:205:                                    ; preds = %203, %200
  %206 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !3662
  %207 = icmp ne %struct.logger* %206, null, !dbg !3662
  br i1 %207, label %208, label %210, !dbg !3664

; <label>:208:                                    ; preds = %205
  %209 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !3665
  call void @logger_free(%struct.logger* %209), !dbg !3667
  br label %210, !dbg !3668

; <label>:210:                                    ; preds = %208, %205
  %211 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !3669
  %212 = icmp ne %struct.logger* %211, null, !dbg !3669
  br i1 %212, label %213, label %215, !dbg !3671

; <label>:213:                                    ; preds = %210
  call void @log_masterkey_fini(), !dbg !3672
  %214 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !3674
  call void @logger_free(%struct.logger* %214), !dbg !3675
  br label %215, !dbg !3676

; <label>:215:                                    ; preds = %213, %210
  store i32 -1, i32* %2, align 4, !dbg !3677
  br label %216, !dbg !3677

; <label>:216:                                    ; preds = %215, %184
  %217 = load i32, i32* %2, align 4, !dbg !3678
  ret i32 %217, !dbg !3678
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_file_dir_opencb(i8*) #0 !dbg !3679 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3680, metadata !139), !dbg !3681
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %4, metadata !3682, metadata !139), !dbg !3685
  %5 = load i8*, i8** %3, align 8, !dbg !3686
  %6 = bitcast i8* %5 to %struct.log_content_file_ctx*, !dbg !3686
  store %struct.log_content_file_ctx* %6, %struct.log_content_file_ctx** %4, align 8, !dbg !3685
  %7 = load i32, i32* @content_file_clisock, align 4, !dbg !3687
  %8 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3689
  %9 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %8, i32 0, i32 0, !dbg !3690
  %10 = bitcast %union.anon* %9 to %struct.anon.0*, !dbg !3691
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !3692
  %12 = load i8*, i8** %11, align 8, !dbg !3692
  %13 = call i32 @privsep_client_openfile(i32 %7, i8* %12, i32 0), !dbg !3693
  %14 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3694
  %15 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %14, i32 0, i32 0, !dbg !3695
  %16 = bitcast %union.anon* %15 to %struct.anon.0*, !dbg !3696
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %16, i32 0, i32 0, !dbg !3697
  store i32 %13, i32* %17, align 8, !dbg !3698
  %18 = icmp eq i32 %13, -1, !dbg !3699
  br i1 %18, label %19, label %31, !dbg !3700

; <label>:19:                                     ; preds = %1
  %20 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3701
  %21 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %20, i32 0, i32 0, !dbg !3703
  %22 = bitcast %union.anon* %21 to %struct.anon.0*, !dbg !3704
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %22, i32 0, i32 1, !dbg !3705
  %24 = load i8*, i8** %23, align 8, !dbg !3705
  %25 = call i32* @__errno_location() #2, !dbg !3706
  %26 = load i32, i32* %25, align 4, !dbg !3707
  %27 = call i8* @strerror(i32 %26) #3, !dbg !3708
  %28 = call i32* @__errno_location() #2, !dbg !3710
  %29 = load i32, i32* %28, align 4, !dbg !3712
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i8* %24, i8* %27, i32 %29), !dbg !3713
  store i32 -1, i32* %2, align 4, !dbg !3714
  br label %32, !dbg !3714

; <label>:31:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !3715
  br label %32, !dbg !3715

; <label>:32:                                     ; preds = %31, %19
  %33 = load i32, i32* %2, align 4, !dbg !3716
  ret i32 %33, !dbg !3716
}

; Function Attrs: nounwind uwtable
define internal void @log_content_file_dir_closecb(i8*, i64) #0 !dbg !3717 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3718, metadata !139), !dbg !3719
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3720, metadata !139), !dbg !3721
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %5, metadata !3722, metadata !139), !dbg !3723
  %6 = load i8*, i8** %3, align 8, !dbg !3724
  %7 = bitcast i8* %6 to %struct.log_content_file_ctx*, !dbg !3724
  store %struct.log_content_file_ctx* %7, %struct.log_content_file_ctx** %5, align 8, !dbg !3723
  %8 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3725
  %9 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %8, i32 0, i32 0, !dbg !3727
  %10 = bitcast %union.anon* %9 to %struct.anon.0*, !dbg !3728
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !3729
  %12 = load i8*, i8** %11, align 8, !dbg !3729
  %13 = icmp ne i8* %12, null, !dbg !3725
  br i1 %13, label %14, label %20, !dbg !3730

; <label>:14:                                     ; preds = %2
  %15 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3731
  %16 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %15, i32 0, i32 0, !dbg !3732
  %17 = bitcast %union.anon* %16 to %struct.anon.0*, !dbg !3733
  %18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %17, i32 0, i32 1, !dbg !3734
  %19 = load i8*, i8** %18, align 8, !dbg !3734
  call void @free(i8* %19) #3, !dbg !3735
  br label %20, !dbg !3735

; <label>:20:                                     ; preds = %14, %2
  %21 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3736
  %22 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %21, i32 0, i32 0, !dbg !3738
  %23 = bitcast %union.anon* %22 to %struct.anon.0*, !dbg !3739
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i32 0, i32 0, !dbg !3740
  %25 = load i32, i32* %24, align 8, !dbg !3740
  %26 = icmp ne i32 %25, 1, !dbg !3741
  br i1 %26, label %27, label %34, !dbg !3742

; <label>:27:                                     ; preds = %20
  %28 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3743
  %29 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %28, i32 0, i32 0, !dbg !3744
  %30 = bitcast %union.anon* %29 to %struct.anon.0*, !dbg !3745
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %30, i32 0, i32 0, !dbg !3746
  %32 = load i32, i32* %31, align 8, !dbg !3746
  %33 = call i32 @close(i32 %32), !dbg !3747
  br label %34, !dbg !3747

; <label>:34:                                     ; preds = %27, %20
  %35 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3748
  %36 = bitcast %struct.log_content_file_ctx* %35 to i8*, !dbg !3748
  call void @free(i8* %36) #3, !dbg !3749
  ret void, !dbg !3750
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_file_dir_writecb(i8*, i64, i8*, i64) #0 !dbg !3751 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3752, metadata !139), !dbg !3753
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3754, metadata !139), !dbg !3755
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3756, metadata !139), !dbg !3757
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3758, metadata !139), !dbg !3759
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %10, metadata !3760, metadata !139), !dbg !3761
  %11 = load i8*, i8** %6, align 8, !dbg !3762
  %12 = bitcast i8* %11 to %struct.log_content_file_ctx*, !dbg !3762
  store %struct.log_content_file_ctx* %12, %struct.log_content_file_ctx** %10, align 8, !dbg !3761
  %13 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %10, align 8, !dbg !3763
  %14 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %13, i32 0, i32 0, !dbg !3765
  %15 = bitcast %union.anon* %14 to %struct.anon.0*, !dbg !3766
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0, !dbg !3767
  %17 = load i32, i32* %16, align 8, !dbg !3767
  %18 = load i8*, i8** %8, align 8, !dbg !3768
  %19 = load i64, i64* %9, align 8, !dbg !3769
  %20 = call i64 @write(i32 %17, i8* %18, i64 %19), !dbg !3770
  %21 = icmp eq i64 %20, -1, !dbg !3771
  br i1 %21, label %22, label %27, !dbg !3772

; <label>:22:                                     ; preds = %4
  %23 = call i32* @__errno_location() #2, !dbg !3773
  %24 = load i32, i32* %23, align 4, !dbg !3775
  %25 = call i8* @strerror(i32 %24) #3, !dbg !3776
  %26 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* %25), !dbg !3778
  store i64 -1, i64* %5, align 8, !dbg !3779
  br label %29, !dbg !3779

; <label>:27:                                     ; preds = %4
  %28 = load i64, i64* %9, align 8, !dbg !3780
  store i64 %28, i64* %5, align 8, !dbg !3781
  br label %29, !dbg !3781

; <label>:29:                                     ; preds = %27, %22
  %30 = load i64, i64* %5, align 8, !dbg !3782
  ret i64 %30, !dbg !3782
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_file_spec_opencb(i8*) #0 !dbg !3783 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3784, metadata !139), !dbg !3785
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %4, metadata !3786, metadata !139), !dbg !3787
  %5 = load i8*, i8** %3, align 8, !dbg !3788
  %6 = bitcast i8* %5 to %struct.log_content_file_ctx*, !dbg !3788
  store %struct.log_content_file_ctx* %6, %struct.log_content_file_ctx** %4, align 8, !dbg !3787
  %7 = load i32, i32* @content_file_clisock, align 4, !dbg !3789
  %8 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3791
  %9 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %8, i32 0, i32 0, !dbg !3792
  %10 = bitcast %union.anon* %9 to %struct.anon.1*, !dbg !3793
  %11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %10, i32 0, i32 1, !dbg !3794
  %12 = load i8*, i8** %11, align 8, !dbg !3794
  %13 = call i32 @privsep_client_openfile(i32 %7, i8* %12, i32 1), !dbg !3795
  %14 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3796
  %15 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %14, i32 0, i32 0, !dbg !3797
  %16 = bitcast %union.anon* %15 to %struct.anon.1*, !dbg !3798
  %17 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %16, i32 0, i32 0, !dbg !3799
  store i32 %13, i32* %17, align 8, !dbg !3800
  %18 = icmp eq i32 %13, -1, !dbg !3801
  br i1 %18, label %19, label %31, !dbg !3802

; <label>:19:                                     ; preds = %1
  %20 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %4, align 8, !dbg !3803
  %21 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %20, i32 0, i32 0, !dbg !3805
  %22 = bitcast %union.anon* %21 to %struct.anon.1*, !dbg !3806
  %23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %22, i32 0, i32 1, !dbg !3807
  %24 = load i8*, i8** %23, align 8, !dbg !3807
  %25 = call i32* @__errno_location() #2, !dbg !3808
  %26 = load i32, i32* %25, align 4, !dbg !3809
  %27 = call i8* @strerror(i32 %26) #3, !dbg !3810
  %28 = call i32* @__errno_location() #2, !dbg !3812
  %29 = load i32, i32* %28, align 4, !dbg !3814
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i8* %24, i8* %27, i32 %29), !dbg !3815
  store i32 -1, i32* %2, align 4, !dbg !3816
  br label %32, !dbg !3816

; <label>:31:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !3817
  br label %32, !dbg !3817

; <label>:32:                                     ; preds = %31, %19
  %33 = load i32, i32* %2, align 4, !dbg !3818
  ret i32 %33, !dbg !3818
}

; Function Attrs: nounwind uwtable
define internal void @log_content_file_spec_closecb(i8*, i64) #0 !dbg !3819 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3820, metadata !139), !dbg !3821
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3822, metadata !139), !dbg !3823
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %5, metadata !3824, metadata !139), !dbg !3825
  %6 = load i8*, i8** %3, align 8, !dbg !3826
  %7 = bitcast i8* %6 to %struct.log_content_file_ctx*, !dbg !3826
  store %struct.log_content_file_ctx* %7, %struct.log_content_file_ctx** %5, align 8, !dbg !3825
  %8 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3827
  %9 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %8, i32 0, i32 0, !dbg !3829
  %10 = bitcast %union.anon* %9 to %struct.anon.1*, !dbg !3830
  %11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %10, i32 0, i32 1, !dbg !3831
  %12 = load i8*, i8** %11, align 8, !dbg !3831
  %13 = icmp ne i8* %12, null, !dbg !3827
  br i1 %13, label %14, label %20, !dbg !3832

; <label>:14:                                     ; preds = %2
  %15 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3833
  %16 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %15, i32 0, i32 0, !dbg !3834
  %17 = bitcast %union.anon* %16 to %struct.anon.1*, !dbg !3835
  %18 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %17, i32 0, i32 1, !dbg !3836
  %19 = load i8*, i8** %18, align 8, !dbg !3836
  call void @free(i8* %19) #3, !dbg !3837
  br label %20, !dbg !3837

; <label>:20:                                     ; preds = %14, %2
  %21 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3838
  %22 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %21, i32 0, i32 0, !dbg !3840
  %23 = bitcast %union.anon* %22 to %struct.anon.1*, !dbg !3841
  %24 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %23, i32 0, i32 0, !dbg !3842
  %25 = load i32, i32* %24, align 8, !dbg !3842
  %26 = icmp ne i32 %25, -1, !dbg !3843
  br i1 %26, label %27, label %34, !dbg !3844

; <label>:27:                                     ; preds = %20
  %28 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3845
  %29 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %28, i32 0, i32 0, !dbg !3846
  %30 = bitcast %union.anon* %29 to %struct.anon.1*, !dbg !3847
  %31 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %30, i32 0, i32 0, !dbg !3848
  %32 = load i32, i32* %31, align 8, !dbg !3848
  %33 = call i32 @close(i32 %32), !dbg !3849
  br label %34, !dbg !3849

; <label>:34:                                     ; preds = %27, %20
  %35 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3850
  %36 = bitcast %struct.log_content_file_ctx* %35 to i8*, !dbg !3850
  call void @free(i8* %36) #3, !dbg !3851
  ret void, !dbg !3852
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_file_spec_writecb(i8*, i64, i8*, i64) #0 !dbg !3853 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3854, metadata !139), !dbg !3855
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3856, metadata !139), !dbg !3857
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3858, metadata !139), !dbg !3859
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3860, metadata !139), !dbg !3861
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %10, metadata !3862, metadata !139), !dbg !3863
  %11 = load i8*, i8** %6, align 8, !dbg !3864
  %12 = bitcast i8* %11 to %struct.log_content_file_ctx*, !dbg !3864
  store %struct.log_content_file_ctx* %12, %struct.log_content_file_ctx** %10, align 8, !dbg !3863
  %13 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %10, align 8, !dbg !3865
  %14 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %13, i32 0, i32 0, !dbg !3867
  %15 = bitcast %union.anon* %14 to %struct.anon.1*, !dbg !3868
  %16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %15, i32 0, i32 0, !dbg !3869
  %17 = load i32, i32* %16, align 8, !dbg !3869
  %18 = load i8*, i8** %8, align 8, !dbg !3870
  %19 = load i64, i64* %9, align 8, !dbg !3871
  %20 = call i64 @write(i32 %17, i8* %18, i64 %19), !dbg !3872
  %21 = icmp eq i64 %20, -1, !dbg !3873
  br i1 %21, label %22, label %27, !dbg !3874

; <label>:22:                                     ; preds = %4
  %23 = call i32* @__errno_location() #2, !dbg !3875
  %24 = load i32, i32* %23, align 4, !dbg !3877
  %25 = call i8* @strerror(i32 %24) #3, !dbg !3878
  %26 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* %25), !dbg !3880
  store i64 -1, i64* %5, align 8, !dbg !3881
  br label %29, !dbg !3881

; <label>:27:                                     ; preds = %4
  %28 = load i64, i64* %9, align 8, !dbg !3882
  store i64 %28, i64* %5, align 8, !dbg !3883
  br label %29, !dbg !3883

; <label>:29:                                     ; preds = %27, %22
  %30 = load i64, i64* %5, align 8, !dbg !3884
  ret i64 %30, !dbg !3884
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_file_single_preinit(i8*) #0 !dbg !3885 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3888, metadata !139), !dbg !3889
  %4 = load i8*, i8** %3, align 8, !dbg !3890
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 1089, i32 438), !dbg !3891
  store i32 %5, i32* @content_file_single_fd, align 4, !dbg !3892
  %6 = load i32, i32* @content_file_single_fd, align 4, !dbg !3893
  %7 = icmp eq i32 %6, -1, !dbg !3895
  br i1 %7, label %8, label %16, !dbg !3896

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !3897
  %10 = call i32* @__errno_location() #2, !dbg !3899
  %11 = load i32, i32* %10, align 4, !dbg !3900
  %12 = call i8* @strerror(i32 %11) #3, !dbg !3901
  %13 = call i32* @__errno_location() #2, !dbg !3903
  %14 = load i32, i32* %13, align 4, !dbg !3905
  %15 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %9, i8* %12, i32 %14), !dbg !3906
  store i32 -1, i32* %2, align 4, !dbg !3907
  br label %25, !dbg !3907

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !3908
  %18 = call noalias i8* @strdup(i8* %17) #3, !dbg !3909
  store i8* %18, i8** @content_file_single_fn, align 8, !dbg !3910
  %19 = load i8*, i8** @content_file_single_fn, align 8, !dbg !3911
  %20 = icmp ne i8* %19, null, !dbg !3911
  br i1 %20, label %24, label %21, !dbg !3913

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* @content_file_single_fd, align 4, !dbg !3914
  %23 = call i32 @close(i32 %22), !dbg !3916
  store i32 -1, i32* @content_file_single_fd, align 4, !dbg !3917
  store i32 -1, i32* %2, align 4, !dbg !3918
  br label %25, !dbg !3918

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !3919
  br label %25, !dbg !3919

; <label>:25:                                     ; preds = %24, %21, %8
  %26 = load i32, i32* %2, align 4, !dbg !3920
  ret i32 %26, !dbg !3920
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_file_single_reopencb() #0 !dbg !3921 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @content_file_single_fd, align 4, !dbg !3922
  %3 = call i32 @close(i32 %2), !dbg !3923
  %4 = load i32, i32* @content_file_clisock, align 4, !dbg !3924
  %5 = load i8*, i8** @content_file_single_fn, align 8, !dbg !3925
  %6 = call i32 @privsep_client_openfile(i32 %4, i8* %5, i32 0), !dbg !3926
  store i32 %6, i32* @content_file_single_fd, align 4, !dbg !3927
  %7 = load i32, i32* @content_file_single_fd, align 4, !dbg !3928
  %8 = icmp eq i32 %7, -1, !dbg !3930
  br i1 %8, label %9, label %17, !dbg !3931

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** @content_file_single_fn, align 8, !dbg !3932
  %11 = call i32* @__errno_location() #2, !dbg !3934
  %12 = load i32, i32* %11, align 4, !dbg !3935
  %13 = call i8* @strerror(i32 %12) #3, !dbg !3936
  %14 = call i32* @__errno_location() #2, !dbg !3938
  %15 = load i32, i32* %14, align 4, !dbg !3940
  %16 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %10, i8* %13, i32 %15), !dbg !3941
  store i32 -1, i32* %1, align 4, !dbg !3942
  br label %18, !dbg !3942

; <label>:17:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !3943
  br label %18, !dbg !3943

; <label>:18:                                     ; preds = %17, %9
  %19 = load i32, i32* %1, align 4, !dbg !3944
  ret i32 %19, !dbg !3944
}

; Function Attrs: nounwind uwtable
define internal void @log_content_file_single_closecb(i8*, i64) #0 !dbg !3945 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3946, metadata !139), !dbg !3947
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3948, metadata !139), !dbg !3949
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %5, metadata !3950, metadata !139), !dbg !3951
  %6 = load i8*, i8** %3, align 8, !dbg !3952
  %7 = bitcast i8* %6 to %struct.log_content_file_ctx*, !dbg !3952
  store %struct.log_content_file_ctx* %7, %struct.log_content_file_ctx** %5, align 8, !dbg !3951
  %8 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3953
  %9 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %8, i32 0, i32 0, !dbg !3955
  %10 = bitcast %union.anon* %9 to %struct.anon*, !dbg !3956
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !3957
  %12 = load i8*, i8** %11, align 8, !dbg !3957
  %13 = icmp ne i8* %12, null, !dbg !3953
  br i1 %13, label %14, label %20, !dbg !3958

; <label>:14:                                     ; preds = %2
  %15 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3959
  %16 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %15, i32 0, i32 0, !dbg !3961
  %17 = bitcast %union.anon* %16 to %struct.anon*, !dbg !3962
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0, !dbg !3963
  %19 = load i8*, i8** %18, align 8, !dbg !3963
  call void @free(i8* %19) #3, !dbg !3964
  br label %20, !dbg !3965

; <label>:20:                                     ; preds = %14, %2
  %21 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3966
  %22 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %21, i32 0, i32 0, !dbg !3968
  %23 = bitcast %union.anon* %22 to %struct.anon*, !dbg !3969
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1, !dbg !3970
  %25 = load i8*, i8** %24, align 8, !dbg !3970
  %26 = icmp ne i8* %25, null, !dbg !3966
  br i1 %26, label %27, label %33, !dbg !3971

; <label>:27:                                     ; preds = %20
  %28 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3972
  %29 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %28, i32 0, i32 0, !dbg !3974
  %30 = bitcast %union.anon* %29 to %struct.anon*, !dbg !3975
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 1, !dbg !3976
  %32 = load i8*, i8** %31, align 8, !dbg !3976
  call void @free(i8* %32) #3, !dbg !3977
  br label %33, !dbg !3978

; <label>:33:                                     ; preds = %27, %20
  %34 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %5, align 8, !dbg !3979
  %35 = bitcast %struct.log_content_file_ctx* %34 to i8*, !dbg !3979
  call void @free(i8* %35) #3, !dbg !3980
  ret void, !dbg !3981
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_file_single_writecb(i8*, i64, i8*, i64) #0 !dbg !3982 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.log_content_file_ctx*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3983, metadata !139), !dbg !3984
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3985, metadata !139), !dbg !3986
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3987, metadata !139), !dbg !3988
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3989, metadata !139), !dbg !3990
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %10, metadata !3991, metadata !139), !dbg !3992
  %11 = load i8*, i8** %6, align 8, !dbg !3993
  %12 = bitcast i8* %11 to %struct.log_content_file_ctx*, !dbg !3993
  store %struct.log_content_file_ctx* %12, %struct.log_content_file_ctx** %10, align 8, !dbg !3992
  %13 = load i32, i32* @content_file_single_fd, align 4, !dbg !3994
  %14 = load i8*, i8** %8, align 8, !dbg !3996
  %15 = load i64, i64* %9, align 8, !dbg !3997
  %16 = call i64 @write(i32 %13, i8* %14, i64 %15), !dbg !3998
  %17 = icmp eq i64 %16, -1, !dbg !3999
  br i1 %17, label %18, label %23, !dbg !4000

; <label>:18:                                     ; preds = %4
  %19 = call i32* @__errno_location() #2, !dbg !4001
  %20 = load i32, i32* %19, align 4, !dbg !4003
  %21 = call i8* @strerror(i32 %20) #3, !dbg !4004
  %22 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i8* %21), !dbg !4006
  store i64 -1, i64* %5, align 8, !dbg !4007
  br label %25, !dbg !4007

; <label>:23:                                     ; preds = %4
  %24 = load i64, i64* %9, align 8, !dbg !4008
  store i64 %24, i64* %5, align 8, !dbg !4009
  br label %25, !dbg !4009

; <label>:25:                                     ; preds = %23, %18
  %26 = load i64, i64* %5, align 8, !dbg !4010
  ret i64 %26, !dbg !4010
}

; Function Attrs: nounwind uwtable
define internal %struct.logbuf* @log_content_file_single_prepcb(i8*, i64, %struct.logbuf*) #0 !dbg !4011 {
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.logbuf*, align 8
  %8 = alloca %struct.log_content_file_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.logbuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4012, metadata !139), !dbg !4013
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4014, metadata !139), !dbg !4015
  store %struct.logbuf* %2, %struct.logbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !4016, metadata !139), !dbg !4017
  call void @llvm.dbg.declare(metadata %struct.log_content_file_ctx** %8, metadata !4018, metadata !139), !dbg !4019
  %14 = load i8*, i8** %5, align 8, !dbg !4020
  %15 = bitcast i8* %14 to %struct.log_content_file_ctx*, !dbg !4020
  store %struct.log_content_file_ctx* %15, %struct.log_content_file_ctx** %8, align 8, !dbg !4019
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4021, metadata !139), !dbg !4022
  %16 = load i64, i64* %6, align 8, !dbg !4023
  %17 = and i64 %16, 1, !dbg !4024
  %18 = icmp ne i64 %17, 0, !dbg !4025
  %19 = xor i1 %18, true, !dbg !4025
  %20 = xor i1 %19, true, !dbg !4026
  %21 = zext i1 %20 to i32, !dbg !4026
  store i32 %21, i32* %9, align 4, !dbg !4022
  call void @llvm.dbg.declare(metadata %struct.logbuf** %10, metadata !4027, metadata !139), !dbg !4028
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4029, metadata !139), !dbg !4030
  call void @llvm.dbg.declare(metadata %struct.tm** %12, metadata !4031, metadata !139), !dbg !4032
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4033, metadata !139), !dbg !4034
  %22 = load i32, i32* %9, align 4, !dbg !4035
  %23 = icmp ne i32 %22, 0, !dbg !4035
  br i1 %23, label %24, label %30, !dbg !4035

; <label>:24:                                     ; preds = %3
  %25 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %8, align 8, !dbg !4037
  %26 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %25, i32 0, i32 0, !dbg !4039
  %27 = bitcast %union.anon* %26 to %struct.anon*, !dbg !4040
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0, !dbg !4041
  %29 = load i8*, i8** %28, align 8, !dbg !4041
  br label %36, !dbg !4042

; <label>:30:                                     ; preds = %3
  %31 = load %struct.log_content_file_ctx*, %struct.log_content_file_ctx** %8, align 8, !dbg !4043
  %32 = getelementptr inbounds %struct.log_content_file_ctx, %struct.log_content_file_ctx* %31, i32 0, i32 0, !dbg !4044
  %33 = bitcast %union.anon* %32 to %struct.anon*, !dbg !4045
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1, !dbg !4046
  %35 = load i8*, i8** %34, align 8, !dbg !4046
  br label %36, !dbg !4047

; <label>:36:                                     ; preds = %30, %24
  %37 = phi i8* [ %29, %24 ], [ %35, %30 ], !dbg !4049
  store i8* %37, i8** %13, align 8, !dbg !4051
  %38 = icmp ne i8* %37, null, !dbg !4051
  br i1 %38, label %40, label %39, !dbg !4052

; <label>:39:                                     ; preds = %36
  br label %92, !dbg !4053

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %6, align 8, !dbg !4054
  %42 = and i64 %41, 2, !dbg !4056
  %43 = icmp ne i64 %42, 0, !dbg !4056
  br i1 %43, label %44, label %46, !dbg !4057

; <label>:44:                                     ; preds = %40
  %45 = call noalias %struct.logbuf* (%struct.logbuf*, i8*, ...) @logbuf_new_printf(%struct.logbuf* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !4058
  store %struct.logbuf* %45, %struct.logbuf** %10, align 8, !dbg !4060
  br label %51, !dbg !4061

; <label>:46:                                     ; preds = %40
  %47 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4062
  %48 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4064
  %49 = call i64 @logbuf_size(%struct.logbuf* %48), !dbg !4065
  %50 = call noalias %struct.logbuf* (%struct.logbuf*, i8*, ...) @logbuf_new_printf(%struct.logbuf* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 %49), !dbg !4066
  store %struct.logbuf* %50, %struct.logbuf** %10, align 8, !dbg !4068
  br label %51

; <label>:51:                                     ; preds = %46, %44
  %52 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4069
  %53 = icmp ne %struct.logbuf* %52, null, !dbg !4069
  br i1 %53, label %57, label %54, !dbg !4071

; <label>:54:                                     ; preds = %51
  %55 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)), !dbg !4072
  %56 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4074
  call void @logbuf_free(%struct.logbuf* %56), !dbg !4075
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !4076
  br label %94, !dbg !4076

; <label>:57:                                     ; preds = %51
  %58 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4077
  store %struct.logbuf* %58, %struct.logbuf** %7, align 8, !dbg !4078
  %59 = load i8*, i8** %13, align 8, !dbg !4079
  %60 = load i8*, i8** %13, align 8, !dbg !4080
  %61 = call i64 @strlen(i8* %60) #9, !dbg !4081
  %62 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4082
  %63 = call noalias %struct.logbuf* @logbuf_new_copy(i8* %59, i64 %61, %struct.logbuf* %62), !dbg !4083
  store %struct.logbuf* %63, %struct.logbuf** %10, align 8, !dbg !4085
  %64 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4086
  %65 = icmp ne %struct.logbuf* %64, null, !dbg !4086
  br i1 %65, label %69, label %66, !dbg !4088

; <label>:66:                                     ; preds = %57
  %67 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)), !dbg !4089
  %68 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4091
  call void @logbuf_free(%struct.logbuf* %68), !dbg !4092
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !4093
  br label %94, !dbg !4093

; <label>:69:                                     ; preds = %57
  %70 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4094
  store %struct.logbuf* %70, %struct.logbuf** %7, align 8, !dbg !4095
  %71 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4096
  %72 = call noalias %struct.logbuf* @logbuf_new_alloc(i64 32, %struct.logbuf* %71), !dbg !4097
  store %struct.logbuf* %72, %struct.logbuf** %10, align 8, !dbg !4098
  %73 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4099
  %74 = icmp ne %struct.logbuf* %73, null, !dbg !4099
  br i1 %74, label %78, label %75, !dbg !4101

; <label>:75:                                     ; preds = %69
  %76 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)), !dbg !4102
  %77 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4104
  call void @logbuf_free(%struct.logbuf* %77), !dbg !4105
  store %struct.logbuf* null, %struct.logbuf** %4, align 8, !dbg !4106
  br label %94, !dbg !4106

; <label>:78:                                     ; preds = %69
  %79 = load %struct.logbuf*, %struct.logbuf** %10, align 8, !dbg !4107
  store %struct.logbuf* %79, %struct.logbuf** %7, align 8, !dbg !4108
  %80 = call i64 @time(i64* %11) #3, !dbg !4109
  %81 = call %struct.tm* @gmtime(i64* %11) #3, !dbg !4110
  store %struct.tm* %81, %struct.tm** %12, align 8, !dbg !4111
  %82 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4112
  %83 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %82, i32 0, i32 0, !dbg !4113
  %84 = load i8*, i8** %83, align 8, !dbg !4113
  %85 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4114
  %86 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %85, i32 0, i32 1, !dbg !4115
  %87 = load i64, i64* %86, align 8, !dbg !4115
  %88 = load %struct.tm*, %struct.tm** %12, align 8, !dbg !4116
  %89 = call i64 @strftime(i8* %84, i64 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), %struct.tm* %88) #3, !dbg !4117
  %90 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4118
  %91 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %90, i32 0, i32 1, !dbg !4119
  store i64 %89, i64* %91, align 8, !dbg !4120
  br label %92, !dbg !4118

; <label>:92:                                     ; preds = %78, %39
  %93 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4121
  store %struct.logbuf* %93, %struct.logbuf** %4, align 8, !dbg !4122
  br label %94, !dbg !4122

; <label>:94:                                     ; preds = %92, %75, %66, %54
  %95 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !4123
  ret %struct.logbuf* %95, !dbg !4123
}

declare noalias %struct.logger* @logger_new(i32 ()*, i32 (i8*)*, void (i8*, i64)*, i64 (i8*, i64, i8*, i64)*, %struct.logbuf* (i8*, i64, %struct.logbuf*)*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @log_content_file_single_fini() #0 !dbg !4124 {
  %1 = load i8*, i8** @content_file_single_fn, align 8, !dbg !4125
  %2 = icmp ne i8* %1, null, !dbg !4125
  br i1 %2, label %3, label %5, !dbg !4127

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @content_file_single_fn, align 8, !dbg !4128
  call void @free(i8* %4) #3, !dbg !4130
  store i8* null, i8** @content_file_single_fn, align 8, !dbg !4131
  br label %5, !dbg !4132

; <label>:5:                                      ; preds = %3, %0
  %6 = load i32, i32* @content_file_single_fd, align 4, !dbg !4133
  %7 = icmp ne i32 %6, -1, !dbg !4135
  br i1 %7, label %8, label %11, !dbg !4136

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @content_file_single_fd, align 4, !dbg !4137
  %10 = call i32 @close(i32 %9), !dbg !4139
  store i32 -1, i32* @content_file_single_fd, align 4, !dbg !4140
  br label %11, !dbg !4141

; <label>:11:                                     ; preds = %8, %5
  ret void, !dbg !4142
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_pcap_preinit(i8*) #0 !dbg !4143 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4144, metadata !139), !dbg !4145
  %4 = load i8*, i8** %3, align 8, !dbg !4146
  %5 = icmp ne i8* %4, null, !dbg !4146
  br i1 %5, label %7, label %6, !dbg !4148

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !4149
  br label %43, !dbg !4149

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !4150
  %9 = call i32 (i8*, i32, ...) @open(i8* %8, i32 66, i32 438), !dbg !4151
  store i32 %9, i32* @content_pcap_fd, align 4, !dbg !4152
  %10 = load i32, i32* @content_pcap_fd, align 4, !dbg !4153
  %11 = icmp eq i32 %10, -1, !dbg !4155
  br i1 %11, label %12, label %20, !dbg !4156

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %3, align 8, !dbg !4157
  %14 = call i32* @__errno_location() #2, !dbg !4159
  %15 = load i32, i32* %14, align 4, !dbg !4160
  %16 = call i8* @strerror(i32 %15) #3, !dbg !4161
  %17 = call i32* @__errno_location() #2, !dbg !4163
  %18 = load i32, i32* %17, align 4, !dbg !4165
  %19 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %13, i8* %16, i32 %18), !dbg !4166
  store i32 -1, i32* %2, align 4, !dbg !4167
  br label %43, !dbg !4167

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* @content_pcap_fd, align 4, !dbg !4168
  %22 = call i32 @logpkt_pcap_open_fd(i32 %21), !dbg !4170
  %23 = icmp eq i32 %22, -1, !dbg !4171
  br i1 %23, label %24, label %34, !dbg !4172

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %3, align 8, !dbg !4173
  %26 = call i32* @__errno_location() #2, !dbg !4175
  %27 = load i32, i32* %26, align 4, !dbg !4176
  %28 = call i8* @strerror(i32 %27) #3, !dbg !4177
  %29 = call i32* @__errno_location() #2, !dbg !4179
  %30 = load i32, i32* %29, align 4, !dbg !4181
  %31 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %25, i8* %28, i32 %30), !dbg !4182
  %32 = load i32, i32* @content_pcap_fd, align 4, !dbg !4183
  %33 = call i32 @close(i32 %32), !dbg !4184
  store i32 -1, i32* @content_pcap_fd, align 4, !dbg !4185
  store i32 -1, i32* %2, align 4, !dbg !4186
  br label %43, !dbg !4186

; <label>:34:                                     ; preds = %20
  %35 = load i8*, i8** %3, align 8, !dbg !4187
  %36 = call noalias i8* @strdup(i8* %35) #3, !dbg !4188
  store i8* %36, i8** @content_pcap_fn, align 8, !dbg !4189
  %37 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4190
  %38 = icmp ne i8* %37, null, !dbg !4190
  br i1 %38, label %42, label %39, !dbg !4192

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* @content_pcap_fd, align 4, !dbg !4193
  %41 = call i32 @close(i32 %40), !dbg !4195
  store i32 -1, i32* @content_pcap_fd, align 4, !dbg !4196
  store i32 -1, i32* %2, align 4, !dbg !4197
  br label %43, !dbg !4197

; <label>:42:                                     ; preds = %34
  store i32 0, i32* %2, align 4, !dbg !4198
  br label %43, !dbg !4198

; <label>:43:                                     ; preds = %42, %39, %24, %12, %6
  %44 = load i32, i32* %2, align 4, !dbg !4199
  ret i32 %44, !dbg !4199
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_pcap_dir_opencb(i8*) #0 !dbg !4200 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4201, metadata !139), !dbg !4202
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %4, metadata !4203, metadata !139), !dbg !4206
  %5 = load i8*, i8** %3, align 8, !dbg !4207
  %6 = bitcast i8* %5 to %struct.log_content_pcap_ctx*, !dbg !4207
  store %struct.log_content_pcap_ctx* %6, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4206
  %7 = load i32, i32* @content_pcap_clisock, align 4, !dbg !4208
  %8 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4210
  %9 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %8, i32 0, i32 0, !dbg !4211
  %10 = bitcast %union.anon.2* %9 to %struct.anon.3*, !dbg !4212
  %11 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %10, i32 0, i32 1, !dbg !4213
  %12 = load i8*, i8** %11, align 8, !dbg !4213
  %13 = call i32 @privsep_client_openfile(i32 %7, i8* %12, i32 0), !dbg !4214
  %14 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4215
  %15 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %14, i32 0, i32 0, !dbg !4216
  %16 = bitcast %union.anon.2* %15 to %struct.anon.3*, !dbg !4217
  %17 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %16, i32 0, i32 0, !dbg !4218
  store i32 %13, i32* %17, align 8, !dbg !4219
  %18 = icmp eq i32 %13, -1, !dbg !4220
  br i1 %18, label %19, label %31, !dbg !4221

; <label>:19:                                     ; preds = %1
  %20 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4222
  %21 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %20, i32 0, i32 0, !dbg !4224
  %22 = bitcast %union.anon.2* %21 to %struct.anon.3*, !dbg !4225
  %23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %22, i32 0, i32 1, !dbg !4226
  %24 = load i8*, i8** %23, align 8, !dbg !4226
  %25 = call i32* @__errno_location() #2, !dbg !4227
  %26 = load i32, i32* %25, align 4, !dbg !4228
  %27 = call i8* @strerror(i32 %26) #3, !dbg !4229
  %28 = call i32* @__errno_location() #2, !dbg !4231
  %29 = load i32, i32* %28, align 4, !dbg !4233
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0), i8* %24, i8* %27, i32 %29), !dbg !4234
  store i32 -1, i32* %2, align 4, !dbg !4235
  br label %38, !dbg !4235

; <label>:31:                                     ; preds = %1
  %32 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4236
  %33 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %32, i32 0, i32 0, !dbg !4237
  %34 = bitcast %union.anon.2* %33 to %struct.anon.3*, !dbg !4238
  %35 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %34, i32 0, i32 0, !dbg !4239
  %36 = load i32, i32* %35, align 8, !dbg !4239
  %37 = call i32 @logpkt_pcap_open_fd(i32 %36), !dbg !4240
  store i32 %37, i32* %2, align 4, !dbg !4241
  br label %38, !dbg !4241

; <label>:38:                                     ; preds = %31, %19
  %39 = load i32, i32* %2, align 4, !dbg !4242
  ret i32 %39, !dbg !4242
}

; Function Attrs: nounwind uwtable
define internal void @log_content_pcap_dir_closecb(i8*, i64) #0 !dbg !4243 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4244, metadata !139), !dbg !4245
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4246, metadata !139), !dbg !4247
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %5, metadata !4248, metadata !139), !dbg !4249
  %6 = load i8*, i8** %3, align 8, !dbg !4250
  %7 = bitcast i8* %6 to %struct.log_content_pcap_ctx*, !dbg !4250
  store %struct.log_content_pcap_ctx* %7, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4249
  %8 = load i8*, i8** %3, align 8, !dbg !4251
  %9 = load i64, i64* %4, align 8, !dbg !4252
  %10 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4253
  %11 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %10, i32 0, i32 0, !dbg !4254
  %12 = bitcast %union.anon.2* %11 to %struct.anon.3*, !dbg !4255
  %13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %12, i32 0, i32 0, !dbg !4256
  %14 = load i32, i32* %13, align 8, !dbg !4256
  call void @log_content_pcap_closecb_base(i8* %8, i64 %9, i32 %14), !dbg !4257
  %15 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4258
  %16 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %15, i32 0, i32 0, !dbg !4260
  %17 = bitcast %union.anon.2* %16 to %struct.anon.3*, !dbg !4261
  %18 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %17, i32 0, i32 1, !dbg !4262
  %19 = load i8*, i8** %18, align 8, !dbg !4262
  %20 = icmp ne i8* %19, null, !dbg !4258
  br i1 %20, label %21, label %27, !dbg !4263

; <label>:21:                                     ; preds = %2
  %22 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4264
  %23 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %22, i32 0, i32 0, !dbg !4265
  %24 = bitcast %union.anon.2* %23 to %struct.anon.3*, !dbg !4266
  %25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %24, i32 0, i32 1, !dbg !4267
  %26 = load i8*, i8** %25, align 8, !dbg !4267
  call void @free(i8* %26) #3, !dbg !4268
  br label %27, !dbg !4268

; <label>:27:                                     ; preds = %21, %2
  %28 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4269
  %29 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %28, i32 0, i32 0, !dbg !4271
  %30 = bitcast %union.anon.2* %29 to %struct.anon.3*, !dbg !4272
  %31 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %30, i32 0, i32 0, !dbg !4273
  %32 = load i32, i32* %31, align 8, !dbg !4273
  %33 = icmp ne i32 %32, -1, !dbg !4274
  br i1 %33, label %34, label %41, !dbg !4275

; <label>:34:                                     ; preds = %27
  %35 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4276
  %36 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %35, i32 0, i32 0, !dbg !4277
  %37 = bitcast %union.anon.2* %36 to %struct.anon.3*, !dbg !4278
  %38 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %37, i32 0, i32 0, !dbg !4279
  %39 = load i32, i32* %38, align 8, !dbg !4279
  %40 = call i32 @close(i32 %39), !dbg !4280
  br label %41, !dbg !4280

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4281
  %43 = bitcast %struct.log_content_pcap_ctx* %42 to i8*, !dbg !4281
  call void @free(i8* %43) #3, !dbg !4282
  ret void, !dbg !4283
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_pcap_dir_writecb(i8*, i64, i8*, i64) #0 !dbg !4284 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4285, metadata !139), !dbg !4286
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4287, metadata !139), !dbg !4288
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4289, metadata !139), !dbg !4290
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4291, metadata !139), !dbg !4292
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %9, metadata !4293, metadata !139), !dbg !4294
  %10 = load i8*, i8** %5, align 8, !dbg !4295
  %11 = bitcast i8* %10 to %struct.log_content_pcap_ctx*, !dbg !4295
  store %struct.log_content_pcap_ctx* %11, %struct.log_content_pcap_ctx** %9, align 8, !dbg !4294
  %12 = load i8*, i8** %5, align 8, !dbg !4296
  %13 = load i64, i64* %6, align 8, !dbg !4297
  %14 = load i8*, i8** %7, align 8, !dbg !4298
  %15 = load i64, i64* %8, align 8, !dbg !4299
  %16 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %9, align 8, !dbg !4300
  %17 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %16, i32 0, i32 0, !dbg !4301
  %18 = bitcast %union.anon.2* %17 to %struct.anon.3*, !dbg !4302
  %19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %18, i32 0, i32 0, !dbg !4303
  %20 = load i32, i32* %19, align 8, !dbg !4303
  %21 = call i64 @log_content_pcap_writecb_base(i8* %12, i64 %13, i8* %14, i64 %15, i32 %20), !dbg !4304
  ret i64 %21, !dbg !4305
}

; Function Attrs: nounwind uwtable
define internal %struct.logbuf* @log_content_pcap_prepcb(i8*, i64, %struct.logbuf*) #0 !dbg !4306 {
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.logbuf*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4307, metadata !139), !dbg !4308
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4309, metadata !139), !dbg !4310
  store %struct.logbuf* %2, %struct.logbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !4311, metadata !139), !dbg !4312
  %8 = load i64, i64* %6, align 8, !dbg !4313
  %9 = and i64 %8, 2, !dbg !4315
  %10 = icmp ne i64 %9, 0, !dbg !4315
  br i1 %10, label %11, label %13, !dbg !4316

; <label>:11:                                     ; preds = %3
  %12 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4317
  store %struct.logbuf* %12, %struct.logbuf** %4, align 8, !dbg !4318
  br label %24, !dbg !4318

; <label>:13:                                     ; preds = %3
  %14 = load i64, i64* %6, align 8, !dbg !4319
  %15 = and i64 %14, 1, !dbg !4320
  %16 = icmp ne i64 %15, 0, !dbg !4321
  %17 = select i1 %16, i32 8, i32 16, !dbg !4321
  %18 = sext i32 %17 to i64, !dbg !4322
  %19 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4323
  %20 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %19, i32 0, i32 3, !dbg !4324
  %21 = load i64, i64* %20, align 8, !dbg !4325
  %22 = or i64 %21, %18, !dbg !4325
  store i64 %22, i64* %20, align 8, !dbg !4325
  %23 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4326
  store %struct.logbuf* %23, %struct.logbuf** %4, align 8, !dbg !4327
  br label %24, !dbg !4327

; <label>:24:                                     ; preds = %13, %11
  %25 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !4328
  ret %struct.logbuf* %25, !dbg !4328
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_pcap_spec_opencb(i8*) #0 !dbg !4329 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4330, metadata !139), !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %4, metadata !4332, metadata !139), !dbg !4333
  %5 = load i8*, i8** %3, align 8, !dbg !4334
  %6 = bitcast i8* %5 to %struct.log_content_pcap_ctx*, !dbg !4334
  store %struct.log_content_pcap_ctx* %6, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4333
  %7 = load i32, i32* @content_pcap_clisock, align 4, !dbg !4335
  %8 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4337
  %9 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %8, i32 0, i32 0, !dbg !4338
  %10 = bitcast %union.anon.2* %9 to %struct.anon.4*, !dbg !4339
  %11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %10, i32 0, i32 1, !dbg !4340
  %12 = load i8*, i8** %11, align 8, !dbg !4340
  %13 = call i32 @privsep_client_openfile(i32 %7, i8* %12, i32 1), !dbg !4341
  %14 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4342
  %15 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %14, i32 0, i32 0, !dbg !4343
  %16 = bitcast %union.anon.2* %15 to %struct.anon.4*, !dbg !4344
  %17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %16, i32 0, i32 0, !dbg !4345
  store i32 %13, i32* %17, align 8, !dbg !4346
  %18 = icmp eq i32 %13, -1, !dbg !4347
  br i1 %18, label %19, label %31, !dbg !4348

; <label>:19:                                     ; preds = %1
  %20 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4349
  %21 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %20, i32 0, i32 0, !dbg !4351
  %22 = bitcast %union.anon.2* %21 to %struct.anon.4*, !dbg !4352
  %23 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %22, i32 0, i32 1, !dbg !4353
  %24 = load i8*, i8** %23, align 8, !dbg !4353
  %25 = call i32* @__errno_location() #2, !dbg !4354
  %26 = load i32, i32* %25, align 4, !dbg !4355
  %27 = call i8* @strerror(i32 %26) #3, !dbg !4356
  %28 = call i32* @__errno_location() #2, !dbg !4358
  %29 = load i32, i32* %28, align 4, !dbg !4360
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0), i8* %24, i8* %27, i32 %29), !dbg !4361
  store i32 -1, i32* %2, align 4, !dbg !4362
  br label %38, !dbg !4362

; <label>:31:                                     ; preds = %1
  %32 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %4, align 8, !dbg !4363
  %33 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %32, i32 0, i32 0, !dbg !4364
  %34 = bitcast %union.anon.2* %33 to %struct.anon.4*, !dbg !4365
  %35 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %34, i32 0, i32 0, !dbg !4366
  %36 = load i32, i32* %35, align 8, !dbg !4366
  %37 = call i32 @logpkt_pcap_open_fd(i32 %36), !dbg !4367
  store i32 %37, i32* %2, align 4, !dbg !4368
  br label %38, !dbg !4368

; <label>:38:                                     ; preds = %31, %19
  %39 = load i32, i32* %2, align 4, !dbg !4369
  ret i32 %39, !dbg !4369
}

; Function Attrs: nounwind uwtable
define internal void @log_content_pcap_spec_closecb(i8*, i64) #0 !dbg !4370 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4371, metadata !139), !dbg !4372
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4373, metadata !139), !dbg !4374
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %5, metadata !4375, metadata !139), !dbg !4376
  %6 = load i8*, i8** %3, align 8, !dbg !4377
  %7 = bitcast i8* %6 to %struct.log_content_pcap_ctx*, !dbg !4377
  store %struct.log_content_pcap_ctx* %7, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4376
  %8 = load i8*, i8** %3, align 8, !dbg !4378
  %9 = load i64, i64* %4, align 8, !dbg !4379
  %10 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4380
  %11 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %10, i32 0, i32 0, !dbg !4381
  %12 = bitcast %union.anon.2* %11 to %struct.anon.4*, !dbg !4382
  %13 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %12, i32 0, i32 0, !dbg !4383
  %14 = load i32, i32* %13, align 8, !dbg !4383
  call void @log_content_pcap_closecb_base(i8* %8, i64 %9, i32 %14), !dbg !4384
  %15 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4385
  %16 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %15, i32 0, i32 0, !dbg !4387
  %17 = bitcast %union.anon.2* %16 to %struct.anon.4*, !dbg !4388
  %18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %17, i32 0, i32 1, !dbg !4389
  %19 = load i8*, i8** %18, align 8, !dbg !4389
  %20 = icmp ne i8* %19, null, !dbg !4385
  br i1 %20, label %21, label %27, !dbg !4390

; <label>:21:                                     ; preds = %2
  %22 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4391
  %23 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %22, i32 0, i32 0, !dbg !4392
  %24 = bitcast %union.anon.2* %23 to %struct.anon.4*, !dbg !4393
  %25 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %24, i32 0, i32 1, !dbg !4394
  %26 = load i8*, i8** %25, align 8, !dbg !4394
  call void @free(i8* %26) #3, !dbg !4395
  br label %27, !dbg !4395

; <label>:27:                                     ; preds = %21, %2
  %28 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4396
  %29 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %28, i32 0, i32 0, !dbg !4398
  %30 = bitcast %union.anon.2* %29 to %struct.anon.4*, !dbg !4399
  %31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %30, i32 0, i32 0, !dbg !4400
  %32 = load i32, i32* %31, align 8, !dbg !4400
  %33 = icmp ne i32 %32, -1, !dbg !4401
  br i1 %33, label %34, label %41, !dbg !4402

; <label>:34:                                     ; preds = %27
  %35 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4403
  %36 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %35, i32 0, i32 0, !dbg !4404
  %37 = bitcast %union.anon.2* %36 to %struct.anon.4*, !dbg !4405
  %38 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %37, i32 0, i32 0, !dbg !4406
  %39 = load i32, i32* %38, align 8, !dbg !4406
  %40 = call i32 @close(i32 %39), !dbg !4407
  br label %41, !dbg !4407

; <label>:41:                                     ; preds = %34, %27
  %42 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4408
  %43 = bitcast %struct.log_content_pcap_ctx* %42 to i8*, !dbg !4408
  call void @free(i8* %43) #3, !dbg !4409
  ret void, !dbg !4410
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_pcap_spec_writecb(i8*, i64, i8*, i64) #0 !dbg !4411 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4412, metadata !139), !dbg !4413
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4414, metadata !139), !dbg !4415
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4416, metadata !139), !dbg !4417
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4418, metadata !139), !dbg !4419
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %9, metadata !4420, metadata !139), !dbg !4421
  %10 = load i8*, i8** %5, align 8, !dbg !4422
  %11 = bitcast i8* %10 to %struct.log_content_pcap_ctx*, !dbg !4422
  store %struct.log_content_pcap_ctx* %11, %struct.log_content_pcap_ctx** %9, align 8, !dbg !4421
  %12 = load i8*, i8** %5, align 8, !dbg !4423
  %13 = load i64, i64* %6, align 8, !dbg !4424
  %14 = load i8*, i8** %7, align 8, !dbg !4425
  %15 = load i64, i64* %8, align 8, !dbg !4426
  %16 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %9, align 8, !dbg !4427
  %17 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %16, i32 0, i32 0, !dbg !4428
  %18 = bitcast %union.anon.2* %17 to %struct.anon.4*, !dbg !4429
  %19 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %18, i32 0, i32 0, !dbg !4430
  %20 = load i32, i32* %19, align 8, !dbg !4430
  %21 = call i64 @log_content_pcap_writecb_base(i8* %12, i64 %13, i8* %14, i64 %15, i32 %20), !dbg !4431
  ret i64 %21, !dbg !4432
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_pcap_reopencb() #0 !dbg !4433 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @content_pcap_fd, align 4, !dbg !4434
  %3 = call i32 @close(i32 %2), !dbg !4435
  %4 = load i32, i32* @content_pcap_clisock, align 4, !dbg !4436
  %5 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4437
  %6 = call i32 @privsep_client_openfile(i32 %4, i8* %5, i32 0), !dbg !4438
  store i32 %6, i32* @content_pcap_fd, align 4, !dbg !4439
  %7 = load i32, i32* @content_pcap_fd, align 4, !dbg !4440
  %8 = icmp eq i32 %7, -1, !dbg !4442
  br i1 %8, label %9, label %17, !dbg !4443

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4444
  %11 = call i32* @__errno_location() #2, !dbg !4446
  %12 = load i32, i32* %11, align 4, !dbg !4447
  %13 = call i8* @strerror(i32 %12) #3, !dbg !4448
  %14 = call i32* @__errno_location() #2, !dbg !4450
  %15 = load i32, i32* %14, align 4, !dbg !4452
  %16 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %10, i8* %13, i32 %15), !dbg !4453
  store i32 -1, i32* %1, align 4, !dbg !4454
  br label %32, !dbg !4454

; <label>:17:                                     ; preds = %0
  %18 = load i32, i32* @content_pcap_fd, align 4, !dbg !4455
  %19 = call i32 @logpkt_pcap_open_fd(i32 %18), !dbg !4457
  %20 = icmp eq i32 %19, -1, !dbg !4458
  br i1 %20, label %21, label %31, !dbg !4459

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4460
  %23 = call i32* @__errno_location() #2, !dbg !4462
  %24 = load i32, i32* %23, align 4, !dbg !4463
  %25 = call i8* @strerror(i32 %24) #3, !dbg !4464
  %26 = call i32* @__errno_location() #2, !dbg !4466
  %27 = load i32, i32* %26, align 4, !dbg !4468
  %28 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %22, i8* %25, i32 %27), !dbg !4469
  %29 = load i32, i32* @content_pcap_fd, align 4, !dbg !4470
  %30 = call i32 @close(i32 %29), !dbg !4471
  store i32 -1, i32* @content_pcap_fd, align 4, !dbg !4472
  store i32 -1, i32* %1, align 4, !dbg !4473
  br label %32, !dbg !4473

; <label>:31:                                     ; preds = %17
  store i32 0, i32* %1, align 4, !dbg !4474
  br label %32, !dbg !4474

; <label>:32:                                     ; preds = %31, %21, %9
  %33 = load i32, i32* %1, align 4, !dbg !4475
  ret i32 %33, !dbg !4475
}

; Function Attrs: nounwind uwtable
define internal void @log_content_pcap_closecb(i8*, i64) #0 !dbg !4476 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_pcap_ctx*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4477, metadata !139), !dbg !4478
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4479, metadata !139), !dbg !4480
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %5, metadata !4481, metadata !139), !dbg !4482
  %6 = load i8*, i8** %3, align 8, !dbg !4483
  %7 = bitcast i8* %6 to %struct.log_content_pcap_ctx*, !dbg !4483
  store %struct.log_content_pcap_ctx* %7, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4482
  %8 = load i8*, i8** %3, align 8, !dbg !4484
  %9 = load i64, i64* %4, align 8, !dbg !4485
  %10 = load i32, i32* @content_pcap_fd, align 4, !dbg !4486
  call void @log_content_pcap_closecb_base(i8* %8, i64 %9, i32 %10), !dbg !4487
  %11 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %5, align 8, !dbg !4488
  %12 = bitcast %struct.log_content_pcap_ctx* %11 to i8*, !dbg !4488
  call void @free(i8* %12) #3, !dbg !4489
  ret void, !dbg !4490
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_pcap_writecb(i8*, i64, i8*, i64) #0 !dbg !4491 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4492, metadata !139), !dbg !4493
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4494, metadata !139), !dbg !4495
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4496, metadata !139), !dbg !4497
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4498, metadata !139), !dbg !4499
  %9 = load i8*, i8** %5, align 8, !dbg !4500
  %10 = load i64, i64* %6, align 8, !dbg !4501
  %11 = load i8*, i8** %7, align 8, !dbg !4502
  %12 = load i64, i64* %8, align 8, !dbg !4503
  %13 = load i32, i32* @content_pcap_fd, align 4, !dbg !4504
  %14 = call i64 @log_content_pcap_writecb_base(i8* %9, i64 %10, i8* %11, i64 %12, i32 %13), !dbg !4505
  ret i64 %14, !dbg !4506
}

; Function Attrs: nounwind uwtable
define internal void @log_content_pcap_fini() #0 !dbg !4507 {
  %1 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4508
  %2 = icmp ne i8* %1, null, !dbg !4508
  br i1 %2, label %3, label %5, !dbg !4510

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @content_pcap_fn, align 8, !dbg !4511
  call void @free(i8* %4) #3, !dbg !4513
  store i8* null, i8** @content_pcap_fn, align 8, !dbg !4514
  br label %5, !dbg !4515

; <label>:5:                                      ; preds = %3, %0
  %6 = load i32, i32* @content_pcap_fd, align 4, !dbg !4516
  %7 = icmp ne i32 %6, -1, !dbg !4518
  br i1 %7, label %8, label %11, !dbg !4519

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* @content_pcap_fd, align 4, !dbg !4520
  %10 = call i32 @close(i32 %9), !dbg !4522
  store i32 -1, i32* @content_pcap_fd, align 4, !dbg !4523
  br label %11, !dbg !4524

; <label>:11:                                     ; preds = %8, %5
  ret void, !dbg !4525
}

; Function Attrs: nounwind uwtable
define internal i32 @log_content_mirror_preinit(i8*, i8*) #0 !dbg !4526 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4529, metadata !139), !dbg !4530
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4531, metadata !139), !dbg !4532
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !4533, metadata !139), !dbg !4534
  %7 = load i8*, i8** %4, align 8, !dbg !4535
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !4536
  %9 = call %struct.libnet_context* @libnet_init(i32 0, i8* %7, i8* %8), !dbg !4537
  store %struct.libnet_context* %9, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4538
  %10 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4539
  %11 = icmp eq %struct.libnet_context* %10, null, !dbg !4541
  br i1 %11, label %12, label %15, !dbg !4542

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !4543
  %14 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* %13), !dbg !4545
  store i32 -1, i32* %3, align 4, !dbg !4546
  br label %35, !dbg !4546

; <label>:15:                                     ; preds = %2
  %16 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4547
  %17 = call i32 @libnet_seed_prand(%struct.libnet_context* %16), !dbg !4548
  %18 = load i8*, i8** %4, align 8, !dbg !4549
  %19 = call i64 @sys_get_mtu(i8* %18), !dbg !4550
  store i64 %19, i64* @content_mirror_mtu, align 8, !dbg !4551
  %20 = load i64, i64* @content_mirror_mtu, align 8, !dbg !4552
  %21 = icmp eq i64 %20, 0, !dbg !4554
  br i1 %21, label %22, label %25, !dbg !4555

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !4556
  %24 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i8* %23), !dbg !4558
  store i32 -1, i32* %3, align 4, !dbg !4559
  br label %35, !dbg !4559

; <label>:25:                                     ; preds = %15
  %26 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4560
  %27 = load i8*, i8** %5, align 8, !dbg !4562
  %28 = load i8*, i8** %4, align 8, !dbg !4563
  %29 = call i32 @logpkt_ether_lookup(%struct.libnet_context* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_mirror_src_ether, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @content_mirror_dst_ether, i32 0, i32 0), i8* %27, i8* %28), !dbg !4564
  %30 = icmp eq i32 %29, -1, !dbg !4565
  br i1 %30, label %31, label %34, !dbg !4566

; <label>:31:                                     ; preds = %25
  %32 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0)), !dbg !4567
  %33 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4569
  call void @libnet_destroy(%struct.libnet_context* %33), !dbg !4570
  store i32 -1, i32* %3, align 4, !dbg !4571
  br label %35, !dbg !4571

; <label>:34:                                     ; preds = %25
  store i32 0, i32* %3, align 4, !dbg !4572
  br label %35, !dbg !4572

; <label>:35:                                     ; preds = %34, %31, %22, %12
  %36 = load i32, i32* %3, align 4, !dbg !4573
  ret i32 %36, !dbg !4573
}

; Function Attrs: nounwind uwtable
define internal void @log_content_mirror_closecb(i8*, i64) #0 !dbg !4574 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log_content_mirror_ctx*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4575, metadata !139), !dbg !4576
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4577, metadata !139), !dbg !4578
  call void @llvm.dbg.declare(metadata %struct.log_content_mirror_ctx** %5, metadata !4579, metadata !139), !dbg !4582
  %7 = load i8*, i8** %3, align 8, !dbg !4583
  %8 = bitcast i8* %7 to %struct.log_content_mirror_ctx*, !dbg !4583
  store %struct.log_content_mirror_ctx* %8, %struct.log_content_mirror_ctx** %5, align 8, !dbg !4582
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4584, metadata !139), !dbg !4585
  %9 = load i64, i64* %4, align 8, !dbg !4586
  %10 = and i64 %9, 8, !dbg !4587
  %11 = icmp ne i64 %10, 0, !dbg !4588
  %12 = select i1 %11, i32 0, i32 1, !dbg !4588
  store i32 %12, i32* %6, align 4, !dbg !4585
  %13 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %5, align 8, !dbg !4589
  %14 = getelementptr inbounds %struct.log_content_mirror_ctx, %struct.log_content_mirror_ctx* %13, i32 0, i32 0, !dbg !4590
  %15 = load i32, i32* %6, align 4, !dbg !4591
  %16 = call i32 @logpkt_write_close(%struct.logpkt_ctx_t* %14, i32 -1, i32 %15), !dbg !4592
  %17 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %5, align 8, !dbg !4593
  %18 = bitcast %struct.log_content_mirror_ctx* %17 to i8*, !dbg !4593
  call void @free(i8* %18) #3, !dbg !4594
  ret void, !dbg !4595
}

; Function Attrs: nounwind uwtable
define internal i64 @log_content_mirror_writecb(i8*, i64, i8*, i64) #0 !dbg !4596 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.log_content_mirror_ctx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4597, metadata !139), !dbg !4598
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4599, metadata !139), !dbg !4600
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4601, metadata !139), !dbg !4602
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4603, metadata !139), !dbg !4604
  call void @llvm.dbg.declare(metadata %struct.log_content_mirror_ctx** %10, metadata !4605, metadata !139), !dbg !4606
  %12 = load i8*, i8** %6, align 8, !dbg !4607
  %13 = bitcast i8* %12 to %struct.log_content_mirror_ctx*, !dbg !4607
  store %struct.log_content_mirror_ctx* %13, %struct.log_content_mirror_ctx** %10, align 8, !dbg !4606
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4608, metadata !139), !dbg !4609
  %14 = load i64, i64* %7, align 8, !dbg !4610
  %15 = and i64 %14, 8, !dbg !4611
  %16 = icmp ne i64 %15, 0, !dbg !4612
  %17 = select i1 %16, i32 0, i32 1, !dbg !4612
  store i32 %17, i32* %11, align 4, !dbg !4609
  %18 = load %struct.log_content_mirror_ctx*, %struct.log_content_mirror_ctx** %10, align 8, !dbg !4613
  %19 = getelementptr inbounds %struct.log_content_mirror_ctx, %struct.log_content_mirror_ctx* %18, i32 0, i32 0, !dbg !4615
  %20 = load i32, i32* %11, align 4, !dbg !4616
  %21 = load i8*, i8** %8, align 8, !dbg !4617
  %22 = load i64, i64* %9, align 8, !dbg !4618
  %23 = call i32 @logpkt_write_payload(%struct.logpkt_ctx_t* %19, i32 -1, i32 %20, i8* %21, i64 %22), !dbg !4619
  %24 = icmp eq i32 %23, -1, !dbg !4620
  br i1 %24, label %25, label %26, !dbg !4621

; <label>:25:                                     ; preds = %4
  br label %28, !dbg !4622

; <label>:26:                                     ; preds = %4
  %27 = load i64, i64* %9, align 8, !dbg !4623
  store i64 %27, i64* %5, align 8, !dbg !4624
  br label %35, !dbg !4624

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno_location() #2, !dbg !4625
  %30 = load i32, i32* %29, align 4, !dbg !4626
  %31 = call i8* @strerror(i32 %30) #3, !dbg !4627
  %32 = call i32* @__errno_location() #2, !dbg !4629
  %33 = load i32, i32* %32, align 4, !dbg !4631
  %34 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0), i8* %31, i32 %33), !dbg !4632
  store i64 -1, i64* %5, align 8, !dbg !4633
  br label %35, !dbg !4633

; <label>:35:                                     ; preds = %28, %26
  %36 = load i64, i64* %5, align 8, !dbg !4634
  ret i64 %36, !dbg !4634
}

; Function Attrs: nounwind uwtable
define internal %struct.logbuf* @log_content_mirror_prepcb(i8*, i64, %struct.logbuf*) #0 !dbg !4635 {
  %4 = alloca %struct.logbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.logbuf*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4636, metadata !139), !dbg !4637
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4638, metadata !139), !dbg !4639
  store %struct.logbuf* %2, %struct.logbuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.logbuf** %7, metadata !4640, metadata !139), !dbg !4641
  %8 = load i64, i64* %6, align 8, !dbg !4642
  %9 = and i64 %8, 2, !dbg !4644
  %10 = icmp ne i64 %9, 0, !dbg !4644
  br i1 %10, label %11, label %13, !dbg !4645

; <label>:11:                                     ; preds = %3
  %12 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4646
  store %struct.logbuf* %12, %struct.logbuf** %4, align 8, !dbg !4647
  br label %24, !dbg !4647

; <label>:13:                                     ; preds = %3
  %14 = load i64, i64* %6, align 8, !dbg !4648
  %15 = and i64 %14, 1, !dbg !4649
  %16 = icmp ne i64 %15, 0, !dbg !4650
  %17 = select i1 %16, i32 8, i32 16, !dbg !4650
  %18 = sext i32 %17 to i64, !dbg !4651
  %19 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4652
  %20 = getelementptr inbounds %struct.logbuf, %struct.logbuf* %19, i32 0, i32 3, !dbg !4653
  %21 = load i64, i64* %20, align 8, !dbg !4654
  %22 = or i64 %21, %18, !dbg !4654
  store i64 %22, i64* %20, align 8, !dbg !4654
  %23 = load %struct.logbuf*, %struct.logbuf** %7, align 8, !dbg !4655
  store %struct.logbuf* %23, %struct.logbuf** %4, align 8, !dbg !4656
  br label %24, !dbg !4656

; <label>:24:                                     ; preds = %13, %11
  %25 = load %struct.logbuf*, %struct.logbuf** %4, align 8, !dbg !4657
  ret %struct.logbuf* %25, !dbg !4657
}

; Function Attrs: nounwind uwtable
define internal void @log_content_mirror_fini() #0 !dbg !4658 {
  %1 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4659
  %2 = icmp ne %struct.libnet_context* %1, null, !dbg !4659
  br i1 %2, label %3, label %5, !dbg !4661

; <label>:3:                                      ; preds = %0
  %4 = load %struct.libnet_context*, %struct.libnet_context** @content_mirror_libnet, align 8, !dbg !4662
  call void @libnet_destroy(%struct.libnet_context* %4), !dbg !4664
  br label %5, !dbg !4665

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !4666
}

; Function Attrs: nounwind uwtable
define internal i32 @log_connect_preinit(i8*) #0 !dbg !4667 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4668, metadata !139), !dbg !4669
  %4 = load i8*, i8** %3, align 8, !dbg !4670
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 1089, i32 438), !dbg !4671
  store i32 %5, i32* @connect_fd, align 4, !dbg !4672
  %6 = load i32, i32* @connect_fd, align 4, !dbg !4673
  %7 = icmp eq i32 %6, -1, !dbg !4675
  br i1 %7, label %8, label %16, !dbg !4676

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !4677
  %10 = call i32* @__errno_location() #2, !dbg !4679
  %11 = load i32, i32* %10, align 4, !dbg !4680
  %12 = call i8* @strerror(i32 %11) #3, !dbg !4681
  %13 = call i32* @__errno_location() #2, !dbg !4683
  %14 = load i32, i32* %13, align 4, !dbg !4685
  %15 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %9, i8* %12, i32 %14), !dbg !4686
  store i32 -1, i32* %2, align 4, !dbg !4687
  br label %25, !dbg !4687

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !4688
  %18 = call noalias i8* @strdup(i8* %17) #3, !dbg !4689
  store i8* %18, i8** @connect_fn, align 8, !dbg !4690
  %19 = load i8*, i8** @connect_fn, align 8, !dbg !4691
  %20 = icmp ne i8* %19, null, !dbg !4691
  br i1 %20, label %24, label %21, !dbg !4693

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* @connect_fd, align 4, !dbg !4694
  %23 = call i32 @close(i32 %22), !dbg !4696
  store i32 -1, i32* @connect_fd, align 4, !dbg !4697
  store i32 -1, i32* %2, align 4, !dbg !4698
  br label %25, !dbg !4698

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !4699
  br label %25, !dbg !4699

; <label>:25:                                     ; preds = %24, %21, %8
  %26 = load i32, i32* %2, align 4, !dbg !4700
  ret i32 %26, !dbg !4700
}

; Function Attrs: nounwind uwtable
define internal i32 @log_connect_reopencb() #0 !dbg !4701 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @connect_fd, align 4, !dbg !4702
  %3 = call i32 @close(i32 %2), !dbg !4703
  %4 = load i32, i32* @connect_clisock, align 4, !dbg !4704
  %5 = load i8*, i8** @connect_fn, align 8, !dbg !4705
  %6 = call i32 @privsep_client_openfile(i32 %4, i8* %5, i32 0), !dbg !4706
  store i32 %6, i32* @connect_fd, align 4, !dbg !4707
  %7 = load i32, i32* @connect_fd, align 4, !dbg !4708
  %8 = icmp eq i32 %7, -1, !dbg !4710
  br i1 %8, label %9, label %16, !dbg !4711

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** @connect_fn, align 8, !dbg !4712
  %11 = call i32* @__errno_location() #2, !dbg !4714
  %12 = load i32, i32* %11, align 4, !dbg !4715
  %13 = call i8* @strerror(i32 %12) #3, !dbg !4716
  %14 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i8* %10, i8* %13), !dbg !4718
  %15 = load i8*, i8** @connect_fn, align 8, !dbg !4719
  call void @free(i8* %15) #3, !dbg !4720
  store i8* null, i8** @connect_fn, align 8, !dbg !4721
  store i32 -1, i32* %1, align 4, !dbg !4722
  br label %17, !dbg !4722

; <label>:16:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !4723
  br label %17, !dbg !4723

; <label>:17:                                     ; preds = %16, %9
  %18 = load i32, i32* %1, align 4, !dbg !4724
  ret i32 %18, !dbg !4724
}

; Function Attrs: nounwind uwtable
define internal i64 @log_connect_writecb(i8*, i64, i8*, i64) #0 !dbg !4725 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4726, metadata !139), !dbg !4727
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4728, metadata !139), !dbg !4729
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4730, metadata !139), !dbg !4731
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4732, metadata !139), !dbg !4733
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !4734, metadata !139), !dbg !4736
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4737, metadata !139), !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.tm** %12, metadata !4739, metadata !139), !dbg !4740
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4741, metadata !139), !dbg !4742
  %14 = call i64 @time(i64* %11) #3, !dbg !4743
  %15 = call %struct.tm* @gmtime(i64* %11) #3, !dbg !4744
  store %struct.tm* %15, %struct.tm** %12, align 8, !dbg !4745
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0, !dbg !4746
  %17 = load %struct.tm*, %struct.tm** %12, align 8, !dbg !4747
  %18 = call i64 @strftime(i8* %16, i64 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), %struct.tm* %17) #3, !dbg !4748
  store i64 %18, i64* %13, align 8, !dbg !4749
  %19 = load i64, i64* %13, align 8, !dbg !4750
  %20 = icmp eq i64 %19, 0, !dbg !4752
  br i1 %20, label %21, label %23, !dbg !4753

; <label>:21:                                     ; preds = %4
  %22 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0)), !dbg !4754
  store i64 -1, i64* %5, align 8, !dbg !4756
  br label %42, !dbg !4756

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* @connect_fd, align 4, !dbg !4757
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0, !dbg !4759
  %26 = load i64, i64* %13, align 8, !dbg !4760
  %27 = call i64 @write(i32 %24, i8* %25, i64 %26), !dbg !4761
  %28 = icmp eq i64 %27, -1, !dbg !4762
  br i1 %28, label %35, label %29, !dbg !4763

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* @connect_fd, align 4, !dbg !4764
  %31 = load i8*, i8** %8, align 8, !dbg !4765
  %32 = load i64, i64* %9, align 8, !dbg !4766
  %33 = call i64 @write(i32 %30, i8* %31, i64 %32), !dbg !4767
  %34 = icmp eq i64 %33, -1, !dbg !4768
  br i1 %34, label %35, label %40, !dbg !4769

; <label>:35:                                     ; preds = %29, %23
  %36 = call i32* @__errno_location() #2, !dbg !4771
  %37 = load i32, i32* %36, align 4, !dbg !4773
  %38 = call i8* @strerror(i32 %37) #3, !dbg !4774
  %39 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0), i8* %38), !dbg !4776
  store i64 -1, i64* %5, align 8, !dbg !4777
  br label %42, !dbg !4777

; <label>:40:                                     ; preds = %29
  %41 = load i64, i64* %9, align 8, !dbg !4778
  store i64 %41, i64* %5, align 8, !dbg !4779
  br label %42, !dbg !4779

; <label>:42:                                     ; preds = %40, %35, %21
  %43 = load i64, i64* %5, align 8, !dbg !4780
  ret i64 %43, !dbg !4780
}

; Function Attrs: nounwind uwtable
define internal void @log_connect_fini() #0 !dbg !4781 {
  %1 = load i32, i32* @connect_fd, align 4, !dbg !4782
  %2 = call i32 @close(i32 %1), !dbg !4783
  ret void, !dbg !4784
}

; Function Attrs: nounwind uwtable
define internal i32 @log_masterkey_preinit(i8*) #0 !dbg !4785 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4786, metadata !139), !dbg !4787
  %4 = load i8*, i8** %3, align 8, !dbg !4788
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 1089, i32 438), !dbg !4789
  store i32 %5, i32* @masterkey_fd, align 4, !dbg !4790
  %6 = load i32, i32* @masterkey_fd, align 4, !dbg !4791
  %7 = icmp eq i32 %6, -1, !dbg !4793
  br i1 %7, label %8, label %16, !dbg !4794

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !4795
  %10 = call i32* @__errno_location() #2, !dbg !4797
  %11 = load i32, i32* %10, align 4, !dbg !4798
  %12 = call i8* @strerror(i32 %11) #3, !dbg !4799
  %13 = call i32* @__errno_location() #2, !dbg !4801
  %14 = load i32, i32* %13, align 4, !dbg !4803
  %15 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* %9, i8* %12, i32 %14), !dbg !4804
  store i32 -1, i32* %2, align 4, !dbg !4805
  br label %25, !dbg !4805

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %3, align 8, !dbg !4806
  %18 = call noalias i8* @strdup(i8* %17) #3, !dbg !4807
  store i8* %18, i8** @masterkey_fn, align 8, !dbg !4808
  %19 = load i8*, i8** @masterkey_fn, align 8, !dbg !4809
  %20 = icmp ne i8* %19, null, !dbg !4809
  br i1 %20, label %24, label %21, !dbg !4811

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* @masterkey_fd, align 4, !dbg !4812
  %23 = call i32 @close(i32 %22), !dbg !4814
  store i32 -1, i32* @masterkey_fd, align 4, !dbg !4815
  store i32 -1, i32* %2, align 4, !dbg !4816
  br label %25, !dbg !4816

; <label>:24:                                     ; preds = %16
  store i32 0, i32* %2, align 4, !dbg !4817
  br label %25, !dbg !4817

; <label>:25:                                     ; preds = %24, %21, %8
  %26 = load i32, i32* %2, align 4, !dbg !4818
  ret i32 %26, !dbg !4818
}

; Function Attrs: nounwind uwtable
define internal i32 @log_masterkey_reopencb() #0 !dbg !4819 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @masterkey_fd, align 4, !dbg !4820
  %3 = call i32 @close(i32 %2), !dbg !4821
  %4 = load i32, i32* @masterkey_clisock, align 4, !dbg !4822
  %5 = load i8*, i8** @masterkey_fn, align 8, !dbg !4823
  %6 = call i32 @privsep_client_openfile(i32 %4, i8* %5, i32 0), !dbg !4824
  store i32 %6, i32* @masterkey_fd, align 4, !dbg !4825
  %7 = load i32, i32* @masterkey_fd, align 4, !dbg !4826
  %8 = icmp eq i32 %7, -1, !dbg !4828
  br i1 %8, label %9, label %16, !dbg !4829

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** @masterkey_fn, align 8, !dbg !4830
  %11 = call i32* @__errno_location() #2, !dbg !4832
  %12 = load i32, i32* %11, align 4, !dbg !4833
  %13 = call i8* @strerror(i32 %12) #3, !dbg !4834
  %14 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i8* %10, i8* %13), !dbg !4836
  %15 = load i8*, i8** @masterkey_fn, align 8, !dbg !4837
  call void @free(i8* %15) #3, !dbg !4838
  store i8* null, i8** @masterkey_fn, align 8, !dbg !4839
  store i32 -1, i32* %1, align 4, !dbg !4840
  br label %17, !dbg !4840

; <label>:16:                                     ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !4841
  br label %17, !dbg !4841

; <label>:17:                                     ; preds = %16, %9
  %18 = load i32, i32* %1, align 4, !dbg !4842
  ret i32 %18, !dbg !4842
}

; Function Attrs: nounwind uwtable
define internal i64 @log_masterkey_writecb(i8*, i64, i8*, i64) #0 !dbg !4843 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4844, metadata !139), !dbg !4845
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4846, metadata !139), !dbg !4847
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4848, metadata !139), !dbg !4849
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4850, metadata !139), !dbg !4851
  %10 = load i32, i32* @masterkey_fd, align 4, !dbg !4852
  %11 = load i8*, i8** %8, align 8, !dbg !4854
  %12 = load i64, i64* %9, align 8, !dbg !4855
  %13 = call i64 @write(i32 %10, i8* %11, i64 %12), !dbg !4856
  %14 = icmp eq i64 %13, -1, !dbg !4857
  br i1 %14, label %15, label %20, !dbg !4858

; <label>:15:                                     ; preds = %4
  %16 = call i32* @__errno_location() #2, !dbg !4859
  %17 = load i32, i32* %16, align 4, !dbg !4861
  %18 = call i8* @strerror(i32 %17) #3, !dbg !4862
  %19 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i8* %18), !dbg !4864
  store i64 -1, i64* %5, align 8, !dbg !4865
  br label %22, !dbg !4865

; <label>:20:                                     ; preds = %4
  %21 = load i64, i64* %9, align 8, !dbg !4866
  store i64 %21, i64* %5, align 8, !dbg !4867
  br label %22, !dbg !4867

; <label>:22:                                     ; preds = %20, %15
  %23 = load i64, i64* %5, align 8, !dbg !4868
  ret i64 %23, !dbg !4868
}

; Function Attrs: nounwind uwtable
define internal void @log_masterkey_fini() #0 !dbg !4869 {
  %1 = load i32, i32* @masterkey_fd, align 4, !dbg !4870
  %2 = call i32 @close(i32 %1), !dbg !4871
  ret void, !dbg !4872
}

; Function Attrs: nounwind uwtable
define internal i64 @log_cert_writecb(i8*, i64, i8*, i64) #0 !dbg !4873 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4874, metadata !139), !dbg !4875
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4876, metadata !139), !dbg !4877
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4878, metadata !139), !dbg !4879
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4880, metadata !139), !dbg !4881
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4882, metadata !139), !dbg !4883
  %12 = load i8*, i8** %6, align 8, !dbg !4884
  store i8* %12, i8** %10, align 8, !dbg !4883
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4885, metadata !139), !dbg !4886
  %13 = load i32, i32* @cert_clisock, align 4, !dbg !4887
  %14 = load i8*, i8** %10, align 8, !dbg !4889
  %15 = call i32 @privsep_client_certfile(i32 %13, i8* %14), !dbg !4890
  store i32 %15, i32* %11, align 4, !dbg !4891
  %16 = icmp eq i32 %15, -1, !dbg !4892
  br i1 %16, label %17, label %31, !dbg !4893

; <label>:17:                                     ; preds = %4
  %18 = call i32* @__errno_location() #2, !dbg !4894
  %19 = load i32, i32* %18, align 4, !dbg !4898
  %20 = icmp ne i32 %19, 17, !dbg !4899
  br i1 %20, label %21, label %29, !dbg !4900

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %10, align 8, !dbg !4901
  %23 = call i32* @__errno_location() #2, !dbg !4903
  %24 = load i32, i32* %23, align 4, !dbg !4904
  %25 = call i8* @strerror(i32 %24) #3, !dbg !4905
  %26 = call i32* @__errno_location() #2, !dbg !4907
  %27 = load i32, i32* %26, align 4, !dbg !4909
  %28 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* %22, i8* %25, i32 %27), !dbg !4910
  store i64 -1, i64* %5, align 8, !dbg !4911
  br label %51, !dbg !4911

; <label>:29:                                     ; preds = %17
  %30 = load i64, i64* %9, align 8, !dbg !4912
  store i64 %30, i64* %5, align 8, !dbg !4913
  br label %51, !dbg !4913

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* %11, align 4, !dbg !4914
  %33 = load i8*, i8** %8, align 8, !dbg !4916
  %34 = load i64, i64* %9, align 8, !dbg !4917
  %35 = call i64 @write(i32 %32, i8* %33, i64 %34), !dbg !4918
  %36 = icmp eq i64 %35, -1, !dbg !4919
  br i1 %36, label %37, label %47, !dbg !4920

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %10, align 8, !dbg !4921
  %39 = call i32* @__errno_location() #2, !dbg !4923
  %40 = load i32, i32* %39, align 4, !dbg !4924
  %41 = call i8* @strerror(i32 %40) #3, !dbg !4925
  %42 = call i32* @__errno_location() #2, !dbg !4927
  %43 = load i32, i32* %42, align 4, !dbg !4929
  %44 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0), i8* %38, i8* %41, i32 %43), !dbg !4930
  %45 = load i32, i32* %11, align 4, !dbg !4931
  %46 = call i32 @close(i32 %45), !dbg !4932
  store i64 -1, i64* %5, align 8, !dbg !4933
  br label %51, !dbg !4933

; <label>:47:                                     ; preds = %31
  %48 = load i32, i32* %11, align 4, !dbg !4934
  %49 = call i32 @close(i32 %48), !dbg !4935
  %50 = load i64, i64* %9, align 8, !dbg !4936
  store i64 %50, i64* %5, align 8, !dbg !4937
  br label %51, !dbg !4937

; <label>:51:                                     ; preds = %47, %37, %29, %21
  %52 = load i64, i64* %5, align 8, !dbg !4938
  ret i64 %52, !dbg !4938
}

declare void @logger_free(%struct.logger*) #1

; Function Attrs: nounwind uwtable
define void @log_preinit_undo() #0 !dbg !4939 {
  %1 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !4940
  %2 = icmp ne %struct.logger* %1, null, !dbg !4940
  br i1 %2, label %3, label %5, !dbg !4942

; <label>:3:                                      ; preds = %0
  call void @log_connect_fini(), !dbg !4943
  %4 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !4945
  call void @logger_free(%struct.logger* %4), !dbg !4946
  br label %5, !dbg !4947

; <label>:5:                                      ; preds = %3, %0
  %6 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !4948
  %7 = icmp ne %struct.logger* %6, null, !dbg !4948
  br i1 %7, label %8, label %10, !dbg !4950

; <label>:8:                                      ; preds = %5
  call void @log_content_file_single_fini(), !dbg !4951
  %9 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !4953
  call void @logger_free(%struct.logger* %9), !dbg !4954
  br label %10, !dbg !4955

; <label>:10:                                     ; preds = %8, %5
  %11 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !4956
  %12 = icmp ne %struct.logger* %11, null, !dbg !4956
  br i1 %12, label %13, label %15, !dbg !4958

; <label>:13:                                     ; preds = %10
  call void @log_content_pcap_fini(), !dbg !4959
  %14 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !4961
  call void @logger_free(%struct.logger* %14), !dbg !4962
  br label %15, !dbg !4963

; <label>:15:                                     ; preds = %13, %10
  %16 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !4964
  %17 = icmp ne %struct.logger* %16, null, !dbg !4964
  br i1 %17, label %18, label %20, !dbg !4966

; <label>:18:                                     ; preds = %15
  call void @log_content_mirror_fini(), !dbg !4967
  %19 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !4969
  call void @logger_free(%struct.logger* %19), !dbg !4970
  br label %20, !dbg !4971

; <label>:20:                                     ; preds = %18, %15
  %21 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !4972
  %22 = icmp ne %struct.logger* %21, null, !dbg !4972
  br i1 %22, label %23, label %25, !dbg !4974

; <label>:23:                                     ; preds = %20
  call void @log_masterkey_fini(), !dbg !4975
  %24 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !4977
  call void @logger_free(%struct.logger* %24), !dbg !4978
  br label %25, !dbg !4979

; <label>:25:                                     ; preds = %23, %20
  ret void, !dbg !4980
}

; Function Attrs: nounwind uwtable
define i32 @log_init(%struct.opts* nonnull, %struct.proxy_ctx* nonnull, i32*) #0 !dbg !4981 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opts*, align 8
  %6 = alloca %struct.proxy_ctx*, align 8
  %7 = alloca i32*, align 8
  store %struct.opts* %0, %struct.opts** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.opts** %5, metadata !4984, metadata !139), !dbg !4985
  store %struct.proxy_ctx* %1, %struct.proxy_ctx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.proxy_ctx** %6, metadata !4986, metadata !139), !dbg !4987
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !4988, metadata !139), !dbg !4989
  %8 = load %struct.proxy_ctx*, %struct.proxy_ctx** %6, align 8, !dbg !4990
  store %struct.proxy_ctx* %8, %struct.proxy_ctx** @proxy_ctx, align 8, !dbg !4991
  %9 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !4992
  %10 = icmp ne %struct.logger* %9, null, !dbg !4992
  br i1 %10, label %11, label %17, !dbg !4994

; <label>:11:                                     ; preds = %3
  %12 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !4995
  %13 = call i32 @logger_start(%struct.logger* %12), !dbg !4997
  %14 = icmp eq i32 %13, -1, !dbg !4998
  br i1 %14, label %15, label %16, !dbg !4999

; <label>:15:                                     ; preds = %11
  store i32 -1, i32* %4, align 4, !dbg !5000
  br label %120, !dbg !5000

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !5001

; <label>:17:                                     ; preds = %16, %3
  %18 = load %struct.opts*, %struct.opts** %5, align 8, !dbg !5003
  %19 = bitcast %struct.opts* %18 to i16*, !dbg !5005
  %20 = load i16, i16* %19, align 8, !dbg !5005
  %21 = and i16 %20, 1, !dbg !5005
  %22 = zext i16 %21 to i32, !dbg !5005
  %23 = icmp ne i32 %22, 0, !dbg !5003
  br i1 %23, label %25, label %24, !dbg !5006

; <label>:24:                                     ; preds = %17
  store i32 1, i32* @err_shortcut_logger, align 4, !dbg !5007
  br label %25, !dbg !5009

; <label>:25:                                     ; preds = %24, %17
  %26 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5010
  %27 = icmp ne %struct.logger* %26, null, !dbg !5010
  br i1 %27, label %28, label %37, !dbg !5012

; <label>:28:                                     ; preds = %25
  %29 = load i32*, i32** %7, align 8, !dbg !5013
  %30 = getelementptr inbounds i32, i32* %29, i64 0, !dbg !5013
  %31 = load i32, i32* %30, align 4, !dbg !5013
  store i32 %31, i32* @masterkey_clisock, align 4, !dbg !5015
  %32 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5016
  %33 = call i32 @logger_start(%struct.logger* %32), !dbg !5018
  %34 = icmp eq i32 %33, -1, !dbg !5019
  br i1 %34, label %35, label %36, !dbg !5020

; <label>:35:                                     ; preds = %28
  store i32 -1, i32* %4, align 4, !dbg !5021
  br label %120, !dbg !5021

; <label>:36:                                     ; preds = %28
  br label %42, !dbg !5022

; <label>:37:                                     ; preds = %25
  %38 = load i32*, i32** %7, align 8, !dbg !5023
  %39 = getelementptr inbounds i32, i32* %38, i64 0, !dbg !5023
  %40 = load i32, i32* %39, align 4, !dbg !5023
  %41 = call i32 @privsep_client_close(i32 %40), !dbg !5025
  br label %42

; <label>:42:                                     ; preds = %37, %36
  %43 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5026
  %44 = icmp ne %struct.logger* %43, null, !dbg !5026
  br i1 %44, label %45, label %54, !dbg !5028

; <label>:45:                                     ; preds = %42
  %46 = load i32*, i32** %7, align 8, !dbg !5029
  %47 = getelementptr inbounds i32, i32* %46, i64 1, !dbg !5029
  %48 = load i32, i32* %47, align 4, !dbg !5029
  store i32 %48, i32* @connect_clisock, align 4, !dbg !5031
  %49 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5032
  %50 = call i32 @logger_start(%struct.logger* %49), !dbg !5034
  %51 = icmp eq i32 %50, -1, !dbg !5035
  br i1 %51, label %52, label %53, !dbg !5036

; <label>:52:                                     ; preds = %45
  store i32 -1, i32* %4, align 4, !dbg !5037
  br label %120, !dbg !5037

; <label>:53:                                     ; preds = %45
  br label %59, !dbg !5038

; <label>:54:                                     ; preds = %42
  %55 = load i32*, i32** %7, align 8, !dbg !5039
  %56 = getelementptr inbounds i32, i32* %55, i64 1, !dbg !5039
  %57 = load i32, i32* %56, align 4, !dbg !5039
  %58 = call i32 @privsep_client_close(i32 %57), !dbg !5041
  br label %59

; <label>:59:                                     ; preds = %54, %53
  %60 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5042
  %61 = icmp ne %struct.logger* %60, null, !dbg !5042
  br i1 %61, label %62, label %71, !dbg !5044

; <label>:62:                                     ; preds = %59
  %63 = load i32*, i32** %7, align 8, !dbg !5045
  %64 = getelementptr inbounds i32, i32* %63, i64 2, !dbg !5045
  %65 = load i32, i32* %64, align 4, !dbg !5045
  store i32 %65, i32* @content_file_clisock, align 4, !dbg !5047
  %66 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5048
  %67 = call i32 @logger_start(%struct.logger* %66), !dbg !5050
  %68 = icmp eq i32 %67, -1, !dbg !5051
  br i1 %68, label %69, label %70, !dbg !5052

; <label>:69:                                     ; preds = %62
  store i32 -1, i32* %4, align 4, !dbg !5053
  br label %120, !dbg !5053

; <label>:70:                                     ; preds = %62
  br label %76, !dbg !5054

; <label>:71:                                     ; preds = %59
  %72 = load i32*, i32** %7, align 8, !dbg !5055
  %73 = getelementptr inbounds i32, i32* %72, i64 2, !dbg !5055
  %74 = load i32, i32* %73, align 4, !dbg !5055
  %75 = call i32 @privsep_client_close(i32 %74), !dbg !5057
  br label %76

; <label>:76:                                     ; preds = %71, %70
  %77 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5058
  %78 = icmp ne %struct.logger* %77, null, !dbg !5058
  br i1 %78, label %79, label %88, !dbg !5060

; <label>:79:                                     ; preds = %76
  %80 = load i32*, i32** %7, align 8, !dbg !5061
  %81 = getelementptr inbounds i32, i32* %80, i64 3, !dbg !5061
  %82 = load i32, i32* %81, align 4, !dbg !5061
  store i32 %82, i32* @content_pcap_clisock, align 4, !dbg !5063
  %83 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5064
  %84 = call i32 @logger_start(%struct.logger* %83), !dbg !5066
  %85 = icmp eq i32 %84, -1, !dbg !5067
  br i1 %85, label %86, label %87, !dbg !5068

; <label>:86:                                     ; preds = %79
  store i32 -1, i32* %4, align 4, !dbg !5069
  br label %120, !dbg !5069

; <label>:87:                                     ; preds = %79
  br label %93, !dbg !5070

; <label>:88:                                     ; preds = %76
  %89 = load i32*, i32** %7, align 8, !dbg !5071
  %90 = getelementptr inbounds i32, i32* %89, i64 3, !dbg !5071
  %91 = load i32, i32* %90, align 4, !dbg !5071
  %92 = call i32 @privsep_client_close(i32 %91), !dbg !5073
  br label %93

; <label>:93:                                     ; preds = %88, %87
  %94 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5074
  %95 = icmp ne %struct.logger* %94, null, !dbg !5074
  br i1 %95, label %96, label %102, !dbg !5076

; <label>:96:                                     ; preds = %93
  %97 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5077
  %98 = call i32 @logger_start(%struct.logger* %97), !dbg !5080
  %99 = icmp eq i32 %98, -1, !dbg !5081
  br i1 %99, label %100, label %101, !dbg !5082

; <label>:100:                                    ; preds = %96
  store i32 -1, i32* %4, align 4, !dbg !5083
  br label %120, !dbg !5083

; <label>:101:                                    ; preds = %96
  br label %102, !dbg !5084

; <label>:102:                                    ; preds = %101, %93
  %103 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5085
  %104 = icmp ne %struct.logger* %103, null, !dbg !5085
  br i1 %104, label %105, label %114, !dbg !5087

; <label>:105:                                    ; preds = %102
  %106 = load i32*, i32** %7, align 8, !dbg !5088
  %107 = getelementptr inbounds i32, i32* %106, i64 4, !dbg !5088
  %108 = load i32, i32* %107, align 4, !dbg !5088
  store i32 %108, i32* @cert_clisock, align 4, !dbg !5090
  %109 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5091
  %110 = call i32 @logger_start(%struct.logger* %109), !dbg !5093
  %111 = icmp eq i32 %110, -1, !dbg !5094
  br i1 %111, label %112, label %113, !dbg !5095

; <label>:112:                                    ; preds = %105
  store i32 -1, i32* %4, align 4, !dbg !5096
  br label %120, !dbg !5096

; <label>:113:                                    ; preds = %105
  br label %119, !dbg !5097

; <label>:114:                                    ; preds = %102
  %115 = load i32*, i32** %7, align 8, !dbg !5098
  %116 = getelementptr inbounds i32, i32* %115, i64 4, !dbg !5098
  %117 = load i32, i32* %116, align 4, !dbg !5098
  %118 = call i32 @privsep_client_close(i32 %117), !dbg !5100
  br label %119

; <label>:119:                                    ; preds = %114, %113
  store i32 0, i32* %4, align 4, !dbg !5101
  br label %120, !dbg !5101

; <label>:120:                                    ; preds = %119, %112, %100, %86, %69, %52, %35, %15
  %121 = load i32, i32* %4, align 4, !dbg !5102
  ret i32 %121, !dbg !5102
}

declare i32 @logger_start(%struct.logger*) #1

declare i32 @privsep_client_close(i32) #1

; Function Attrs: nounwind uwtable
define void @log_fini() #0 !dbg !5103 {
  store i32 1, i32* @err_shortcut_logger, align 4, !dbg !5104
  %1 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5105
  %2 = icmp ne %struct.logger* %1, null, !dbg !5105
  br i1 %2, label %3, label %5, !dbg !5107

; <label>:3:                                      ; preds = %0
  %4 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5108
  call void @logger_leave(%struct.logger* %4), !dbg !5109
  br label %5, !dbg !5109

; <label>:5:                                      ; preds = %3, %0
  %6 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5110
  %7 = icmp ne %struct.logger* %6, null, !dbg !5110
  br i1 %7, label %8, label %10, !dbg !5112

; <label>:8:                                      ; preds = %5
  %9 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5113
  call void @logger_leave(%struct.logger* %9), !dbg !5114
  br label %10, !dbg !5114

; <label>:10:                                     ; preds = %8, %5
  %11 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5115
  %12 = icmp ne %struct.logger* %11, null, !dbg !5115
  br i1 %12, label %13, label %15, !dbg !5117

; <label>:13:                                     ; preds = %10
  %14 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5118
  call void @logger_leave(%struct.logger* %14), !dbg !5119
  br label %15, !dbg !5119

; <label>:15:                                     ; preds = %13, %10
  %16 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5120
  %17 = icmp ne %struct.logger* %16, null, !dbg !5120
  br i1 %17, label %18, label %20, !dbg !5122

; <label>:18:                                     ; preds = %15
  %19 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5123
  call void @logger_leave(%struct.logger* %19), !dbg !5124
  br label %20, !dbg !5124

; <label>:20:                                     ; preds = %18, %15
  %21 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5125
  %22 = icmp ne %struct.logger* %21, null, !dbg !5125
  br i1 %22, label %23, label %25, !dbg !5127

; <label>:23:                                     ; preds = %20
  %24 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5128
  call void @logger_leave(%struct.logger* %24), !dbg !5129
  br label %25, !dbg !5129

; <label>:25:                                     ; preds = %23, %20
  %26 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5130
  %27 = icmp ne %struct.logger* %26, null, !dbg !5130
  br i1 %27, label %28, label %30, !dbg !5132

; <label>:28:                                     ; preds = %25
  %29 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5133
  call void @logger_leave(%struct.logger* %29), !dbg !5134
  br label %30, !dbg !5134

; <label>:30:                                     ; preds = %28, %25
  %31 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5135
  %32 = icmp ne %struct.logger* %31, null, !dbg !5135
  br i1 %32, label %33, label %35, !dbg !5137

; <label>:33:                                     ; preds = %30
  %34 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5138
  call void @logger_leave(%struct.logger* %34), !dbg !5139
  br label %35, !dbg !5139

; <label>:35:                                     ; preds = %33, %30
  %36 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5140
  %37 = icmp ne %struct.logger* %36, null, !dbg !5140
  br i1 %37, label %38, label %41, !dbg !5142

; <label>:38:                                     ; preds = %35
  %39 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5143
  %40 = call i32 @logger_join(%struct.logger* %39), !dbg !5144
  br label %41, !dbg !5144

; <label>:41:                                     ; preds = %38, %35
  %42 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5145
  %43 = icmp ne %struct.logger* %42, null, !dbg !5145
  br i1 %43, label %44, label %47, !dbg !5147

; <label>:44:                                     ; preds = %41
  %45 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5148
  %46 = call i32 @logger_join(%struct.logger* %45), !dbg !5149
  br label %47, !dbg !5149

; <label>:47:                                     ; preds = %44, %41
  %48 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5150
  %49 = icmp ne %struct.logger* %48, null, !dbg !5150
  br i1 %49, label %50, label %53, !dbg !5152

; <label>:50:                                     ; preds = %47
  %51 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5153
  %52 = call i32 @logger_join(%struct.logger* %51), !dbg !5154
  br label %53, !dbg !5154

; <label>:53:                                     ; preds = %50, %47
  %54 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5155
  %55 = icmp ne %struct.logger* %54, null, !dbg !5155
  br i1 %55, label %56, label %59, !dbg !5157

; <label>:56:                                     ; preds = %53
  %57 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5158
  %58 = call i32 @logger_join(%struct.logger* %57), !dbg !5159
  br label %59, !dbg !5159

; <label>:59:                                     ; preds = %56, %53
  %60 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5160
  %61 = icmp ne %struct.logger* %60, null, !dbg !5160
  br i1 %61, label %62, label %65, !dbg !5162

; <label>:62:                                     ; preds = %59
  %63 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5163
  %64 = call i32 @logger_join(%struct.logger* %63), !dbg !5164
  br label %65, !dbg !5164

; <label>:65:                                     ; preds = %62, %59
  %66 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5165
  %67 = icmp ne %struct.logger* %66, null, !dbg !5165
  br i1 %67, label %68, label %71, !dbg !5167

; <label>:68:                                     ; preds = %65
  %69 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5168
  %70 = call i32 @logger_join(%struct.logger* %69), !dbg !5169
  br label %71, !dbg !5169

; <label>:71:                                     ; preds = %68, %65
  %72 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5170
  %73 = icmp ne %struct.logger* %72, null, !dbg !5170
  br i1 %73, label %74, label %77, !dbg !5172

; <label>:74:                                     ; preds = %71
  %75 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5173
  %76 = call i32 @logger_join(%struct.logger* %75), !dbg !5174
  br label %77, !dbg !5174

; <label>:77:                                     ; preds = %74, %71
  %78 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5175
  %79 = icmp ne %struct.logger* %78, null, !dbg !5175
  br i1 %79, label %80, label %82, !dbg !5177

; <label>:80:                                     ; preds = %77
  %81 = load %struct.logger*, %struct.logger** @cert_log, align 8, !dbg !5178
  call void @logger_free(%struct.logger* %81), !dbg !5179
  br label %82, !dbg !5179

; <label>:82:                                     ; preds = %80, %77
  %83 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5180
  %84 = icmp ne %struct.logger* %83, null, !dbg !5180
  br i1 %84, label %85, label %87, !dbg !5182

; <label>:85:                                     ; preds = %82
  %86 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5183
  call void @logger_free(%struct.logger* %86), !dbg !5184
  br label %87, !dbg !5184

; <label>:87:                                     ; preds = %85, %82
  %88 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5185
  %89 = icmp ne %struct.logger* %88, null, !dbg !5185
  br i1 %89, label %90, label %92, !dbg !5187

; <label>:90:                                     ; preds = %87
  %91 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5188
  call void @logger_free(%struct.logger* %91), !dbg !5189
  br label %92, !dbg !5189

; <label>:92:                                     ; preds = %90, %87
  %93 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5190
  %94 = icmp ne %struct.logger* %93, null, !dbg !5190
  br i1 %94, label %95, label %97, !dbg !5192

; <label>:95:                                     ; preds = %92
  %96 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5193
  call void @logger_free(%struct.logger* %96), !dbg !5194
  br label %97, !dbg !5194

; <label>:97:                                     ; preds = %95, %92
  %98 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5195
  %99 = icmp ne %struct.logger* %98, null, !dbg !5195
  br i1 %99, label %100, label %102, !dbg !5197

; <label>:100:                                    ; preds = %97
  %101 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5198
  call void @logger_free(%struct.logger* %101), !dbg !5199
  br label %102, !dbg !5199

; <label>:102:                                    ; preds = %100, %97
  %103 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5200
  %104 = icmp ne %struct.logger* %103, null, !dbg !5200
  br i1 %104, label %105, label %107, !dbg !5202

; <label>:105:                                    ; preds = %102
  %106 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5203
  call void @logger_free(%struct.logger* %106), !dbg !5204
  br label %107, !dbg !5204

; <label>:107:                                    ; preds = %105, %102
  %108 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5205
  %109 = icmp ne %struct.logger* %108, null, !dbg !5205
  br i1 %109, label %110, label %112, !dbg !5207

; <label>:110:                                    ; preds = %107
  %111 = load %struct.logger*, %struct.logger** @err_log, align 8, !dbg !5208
  call void @logger_free(%struct.logger* %111), !dbg !5209
  br label %112, !dbg !5209

; <label>:112:                                    ; preds = %110, %107
  %113 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5210
  %114 = icmp ne %struct.logger* %113, null, !dbg !5210
  br i1 %114, label %115, label %116, !dbg !5212

; <label>:115:                                    ; preds = %112
  call void @log_masterkey_fini(), !dbg !5213
  br label %116, !dbg !5213

; <label>:116:                                    ; preds = %115, %112
  %117 = load %struct.logger*, %struct.logger** @content_mirror_log, align 8, !dbg !5214
  %118 = icmp ne %struct.logger* %117, null, !dbg !5214
  br i1 %118, label %119, label %120, !dbg !5216

; <label>:119:                                    ; preds = %116
  call void @log_content_mirror_fini(), !dbg !5217
  br label %120, !dbg !5217

; <label>:120:                                    ; preds = %119, %116
  %121 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5218
  %122 = icmp ne %struct.logger* %121, null, !dbg !5218
  br i1 %122, label %123, label %124, !dbg !5220

; <label>:123:                                    ; preds = %120
  call void @log_content_pcap_fini(), !dbg !5221
  br label %124, !dbg !5221

; <label>:124:                                    ; preds = %123, %120
  %125 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5222
  %126 = icmp ne %struct.logger* %125, null, !dbg !5222
  br i1 %126, label %127, label %128, !dbg !5224

; <label>:127:                                    ; preds = %124
  call void @log_content_file_single_fini(), !dbg !5225
  br label %128, !dbg !5225

; <label>:128:                                    ; preds = %127, %124
  %129 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5226
  %130 = icmp ne %struct.logger* %129, null, !dbg !5226
  br i1 %130, label %131, label %132, !dbg !5228

; <label>:131:                                    ; preds = %128
  call void @log_connect_fini(), !dbg !5229
  br label %132, !dbg !5229

; <label>:132:                                    ; preds = %131, %128
  %133 = load i32, i32* @masterkey_clisock, align 4, !dbg !5230
  %134 = icmp ne i32 %133, -1, !dbg !5232
  br i1 %134, label %135, label %138, !dbg !5233

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* @masterkey_clisock, align 4, !dbg !5234
  %137 = call i32 @privsep_client_close(i32 %136), !dbg !5235
  br label %138, !dbg !5235

; <label>:138:                                    ; preds = %135, %132
  %139 = load i32, i32* @cert_clisock, align 4, !dbg !5236
  %140 = icmp ne i32 %139, -1, !dbg !5238
  br i1 %140, label %141, label %144, !dbg !5239

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* @cert_clisock, align 4, !dbg !5240
  %143 = call i32 @privsep_client_close(i32 %142), !dbg !5241
  br label %144, !dbg !5241

; <label>:144:                                    ; preds = %141, %138
  %145 = load i32, i32* @content_file_clisock, align 4, !dbg !5242
  %146 = icmp ne i32 %145, -1, !dbg !5244
  br i1 %146, label %147, label %150, !dbg !5245

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* @content_file_clisock, align 4, !dbg !5246
  %149 = call i32 @privsep_client_close(i32 %148), !dbg !5247
  br label %150, !dbg !5247

; <label>:150:                                    ; preds = %147, %144
  %151 = load i32, i32* @content_pcap_clisock, align 4, !dbg !5248
  %152 = icmp ne i32 %151, -1, !dbg !5250
  br i1 %152, label %153, label %156, !dbg !5251

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* @content_pcap_clisock, align 4, !dbg !5252
  %155 = call i32 @privsep_client_close(i32 %154), !dbg !5253
  br label %156, !dbg !5253

; <label>:156:                                    ; preds = %153, %150
  %157 = load i32, i32* @connect_clisock, align 4, !dbg !5254
  %158 = icmp ne i32 %157, -1, !dbg !5256
  br i1 %158, label %159, label %162, !dbg !5257

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* @connect_clisock, align 4, !dbg !5258
  %161 = call i32 @privsep_client_close(i32 %160), !dbg !5259
  br label %162, !dbg !5259

; <label>:162:                                    ; preds = %159, %156
  ret void, !dbg !5260
}

declare void @logger_leave(%struct.logger*) #1

declare i32 @logger_join(%struct.logger*) #1

; Function Attrs: nounwind uwtable
define i32 @log_reopen() #0 !dbg !5261 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !5262, metadata !139), !dbg !5263
  store i32 0, i32* %1, align 4, !dbg !5263
  %2 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5264
  %3 = icmp ne %struct.logger* %2, null, !dbg !5264
  br i1 %3, label %4, label %10, !dbg !5266

; <label>:4:                                      ; preds = %0
  %5 = load %struct.logger*, %struct.logger** @masterkey_log, align 8, !dbg !5267
  %6 = call i32 @logger_reopen(%struct.logger* %5), !dbg !5269
  %7 = icmp eq i32 %6, -1, !dbg !5270
  br i1 %7, label %8, label %9, !dbg !5271

; <label>:8:                                      ; preds = %4
  store i32 -1, i32* %1, align 4, !dbg !5272
  br label %9, !dbg !5273

; <label>:9:                                      ; preds = %8, %4
  br label %10, !dbg !5274

; <label>:10:                                     ; preds = %9, %0
  %11 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5276
  %12 = icmp ne %struct.logger* %11, null, !dbg !5276
  br i1 %12, label %13, label %19, !dbg !5278

; <label>:13:                                     ; preds = %10
  %14 = load %struct.logger*, %struct.logger** @content_pcap_log, align 8, !dbg !5279
  %15 = call i32 @logger_reopen(%struct.logger* %14), !dbg !5281
  %16 = icmp eq i32 %15, -1, !dbg !5282
  br i1 %16, label %17, label %18, !dbg !5283

; <label>:17:                                     ; preds = %13
  store i32 -1, i32* %1, align 4, !dbg !5284
  br label %18, !dbg !5285

; <label>:18:                                     ; preds = %17, %13
  br label %19, !dbg !5286

; <label>:19:                                     ; preds = %18, %10
  %20 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5288
  %21 = icmp ne %struct.logger* %20, null, !dbg !5288
  br i1 %21, label %22, label %28, !dbg !5290

; <label>:22:                                     ; preds = %19
  %23 = load %struct.logger*, %struct.logger** @content_file_log, align 8, !dbg !5291
  %24 = call i32 @logger_reopen(%struct.logger* %23), !dbg !5293
  %25 = icmp eq i32 %24, -1, !dbg !5294
  br i1 %25, label %26, label %27, !dbg !5295

; <label>:26:                                     ; preds = %22
  store i32 -1, i32* %1, align 4, !dbg !5296
  br label %27, !dbg !5297

; <label>:27:                                     ; preds = %26, %22
  br label %28, !dbg !5298

; <label>:28:                                     ; preds = %27, %19
  %29 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5300
  %30 = icmp ne %struct.logger* %29, null, !dbg !5300
  br i1 %30, label %31, label %37, !dbg !5302

; <label>:31:                                     ; preds = %28
  %32 = load %struct.logger*, %struct.logger** @connect_log, align 8, !dbg !5303
  %33 = call i32 @logger_reopen(%struct.logger* %32), !dbg !5305
  %34 = icmp eq i32 %33, -1, !dbg !5306
  br i1 %34, label %35, label %36, !dbg !5307

; <label>:35:                                     ; preds = %31
  store i32 -1, i32* %1, align 4, !dbg !5308
  br label %36, !dbg !5309

; <label>:36:                                     ; preds = %35, %31
  br label %37, !dbg !5310

; <label>:37:                                     ; preds = %36, %28
  %38 = load i32, i32* %1, align 4, !dbg !5312
  ret i32 %38, !dbg !5313
}

declare i32 @logger_reopen(%struct.logger*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @syslog(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #8

declare i32 @privsep_client_openfile(i32, i8*, i32) #1

declare i32 @close(i32) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @open(i8*, i32, ...) #1

declare noalias %struct.logbuf* @logbuf_new_printf(%struct.logbuf*, i8*, ...) #1

declare i64 @logbuf_size(%struct.logbuf*) #1

declare noalias %struct.logbuf* @logbuf_new_copy(i8*, i64, %struct.logbuf*) #1

declare noalias %struct.logbuf* @logbuf_new_alloc(i64, %struct.logbuf*) #1

declare i32 @logpkt_pcap_open_fd(i32) #1

; Function Attrs: nounwind uwtable
define internal void @log_content_pcap_closecb_base(i8*, i64, i32) #0 !dbg !5314 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.log_content_pcap_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5317, metadata !139), !dbg !5318
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5319, metadata !139), !dbg !5320
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5321, metadata !139), !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %7, metadata !5323, metadata !139), !dbg !5324
  %9 = load i8*, i8** %4, align 8, !dbg !5325
  %10 = bitcast i8* %9 to %struct.log_content_pcap_ctx*, !dbg !5325
  store %struct.log_content_pcap_ctx* %10, %struct.log_content_pcap_ctx** %7, align 8, !dbg !5324
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5326, metadata !139), !dbg !5327
  %11 = load i64, i64* %5, align 8, !dbg !5328
  %12 = and i64 %11, 8, !dbg !5329
  %13 = icmp ne i64 %12, 0, !dbg !5330
  %14 = select i1 %13, i32 0, i32 1, !dbg !5330
  store i32 %14, i32* %8, align 4, !dbg !5327
  %15 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %7, align 8, !dbg !5331
  %16 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %15, i32 0, i32 1, !dbg !5332
  %17 = load i32, i32* %6, align 4, !dbg !5333
  %18 = load i32, i32* %8, align 4, !dbg !5334
  %19 = call i32 @logpkt_write_close(%struct.logpkt_ctx_t* %16, i32 %17, i32 %18), !dbg !5335
  ret void, !dbg !5336
}

declare i32 @logpkt_write_close(%struct.logpkt_ctx_t*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @log_content_pcap_writecb_base(i8*, i64, i8*, i64, i32) #0 !dbg !5337 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.log_content_pcap_ctx*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5340, metadata !139), !dbg !5341
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5342, metadata !139), !dbg !5343
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !5344, metadata !139), !dbg !5345
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5346, metadata !139), !dbg !5347
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5348, metadata !139), !dbg !5349
  call void @llvm.dbg.declare(metadata %struct.log_content_pcap_ctx** %12, metadata !5350, metadata !139), !dbg !5351
  %14 = load i8*, i8** %7, align 8, !dbg !5352
  %15 = bitcast i8* %14 to %struct.log_content_pcap_ctx*, !dbg !5352
  store %struct.log_content_pcap_ctx* %15, %struct.log_content_pcap_ctx** %12, align 8, !dbg !5351
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5353, metadata !139), !dbg !5354
  %16 = load i64, i64* %8, align 8, !dbg !5355
  %17 = and i64 %16, 8, !dbg !5356
  %18 = icmp ne i64 %17, 0, !dbg !5357
  %19 = select i1 %18, i32 0, i32 1, !dbg !5357
  store i32 %19, i32* %13, align 4, !dbg !5354
  %20 = load %struct.log_content_pcap_ctx*, %struct.log_content_pcap_ctx** %12, align 8, !dbg !5358
  %21 = getelementptr inbounds %struct.log_content_pcap_ctx, %struct.log_content_pcap_ctx* %20, i32 0, i32 1, !dbg !5360
  %22 = load i32, i32* %11, align 4, !dbg !5361
  %23 = load i32, i32* %13, align 4, !dbg !5362
  %24 = load i8*, i8** %9, align 8, !dbg !5363
  %25 = load i64, i64* %10, align 8, !dbg !5364
  %26 = call i32 @logpkt_write_payload(%struct.logpkt_ctx_t* %21, i32 %22, i32 %23, i8* %24, i64 %25), !dbg !5365
  %27 = icmp eq i32 %26, -1, !dbg !5366
  br i1 %27, label %28, label %29, !dbg !5367

; <label>:28:                                     ; preds = %5
  br label %31, !dbg !5368

; <label>:29:                                     ; preds = %5
  %30 = load i64, i64* %10, align 8, !dbg !5369
  store i64 %30, i64* %6, align 8, !dbg !5370
  br label %38, !dbg !5370

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno_location() #2, !dbg !5371
  %33 = load i32, i32* %32, align 4, !dbg !5372
  %34 = call i8* @strerror(i32 %33) #3, !dbg !5373
  %35 = call i32* @__errno_location() #2, !dbg !5375
  %36 = load i32, i32* %35, align 4, !dbg !5377
  %37 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i8* %34, i32 %36), !dbg !5378
  store i64 -1, i64* %6, align 8, !dbg !5379
  br label %38, !dbg !5379

; <label>:38:                                     ; preds = %31, %29
  %39 = load i64, i64* %6, align 8, !dbg !5380
  ret i64 %39, !dbg !5380
}

declare i32 @logpkt_write_payload(%struct.logpkt_ctx_t*, i32, i32, i8*, i64) #1

declare %struct.libnet_context* @libnet_init(i32, i8*, i8*) #1

declare i32 @libnet_seed_prand(%struct.libnet_context*) #1

declare i64 @sys_get_mtu(i8*) #1

declare i32 @logpkt_ether_lookup(%struct.libnet_context*, i8*, i8*, i8*, i8*) #1

declare void @libnet_destroy(%struct.libnet_context*) #1

declare i32 @privsep_client_certfile(i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!120, !121}
!llvm.ident = !{!122}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !11)
!1 = !DIFile(filename: "line5-log.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !5, !7, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!11 = !{!12, !18, !19, !25, !26, !31, !33, !34, !35, !36, !43, !44, !45, !100, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!12 = distinct !DIGlobalVariable(name: "masterkey_log", scope: !0, file: !13, line: 183, type: !14, isLocal: false, isDefinition: true, variable: %struct.logger** @masterkey_log)
!13 = !DIFile(filename: "log.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_t", file: !16, line: 45, baseType: !17)
!16 = !DIFile(filename: "logger.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "logger", file: !16, line: 45, flags: DIFlagFwdDecl)
!18 = distinct !DIGlobalVariable(name: "connect_log", scope: !0, file: !13, line: 250, type: !14, isLocal: false, isDefinition: true, variable: %struct.logger** @connect_log)
!19 = distinct !DIGlobalVariable(name: "content_mirror_src_ether", scope: !0, file: !13, line: 390, type: !20, isLocal: true, isDefinition: true, variable: [6 x i8]* @content_mirror_src_ether)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, align: 8, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 48, baseType: !6)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!23 = !{!24}
!24 = !DISubrange(count: 6)
!25 = distinct !DIGlobalVariable(name: "content_mirror_dst_ether", scope: !0, file: !13, line: 391, type: !20, isLocal: true, isDefinition: true, variable: [6 x i8]* @content_mirror_dst_ether)
!26 = distinct !DIGlobalVariable(name: "proxy_ctx", scope: !0, file: !13, line: 60, type: !27, isLocal: true, isDefinition: true, variable: %struct.proxy_ctx** @proxy_ctx)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxy_ctx_t", file: !29, line: 35, baseType: !30)
!29 = !DIFile(filename: "proxy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "proxy_ctx", file: !29, line: 35, flags: DIFlagFwdDecl)
!31 = distinct !DIGlobalVariable(name: "err_shortcut_logger", scope: !0, file: !13, line: 78, type: !32, isLocal: true, isDefinition: true, variable: i32* @err_shortcut_logger)
!32 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!33 = distinct !DIGlobalVariable(name: "err_log", scope: !0, file: !13, line: 77, type: !14, isLocal: true, isDefinition: true, variable: %struct.logger** @err_log)
!34 = distinct !DIGlobalVariable(name: "err_mode", scope: !0, file: !13, line: 79, type: !32, isLocal: true, isDefinition: true, variable: i32* @err_mode)
!35 = distinct !DIGlobalVariable(name: "dbg_mode", scope: !0, file: !13, line: 130, type: !32, isLocal: true, isDefinition: true, variable: i32* @dbg_mode)
!36 = distinct !DIGlobalVariable(name: "iso8601", scope: !37, file: !13, line: 481, type: !40, isLocal: true, isDefinition: true, variable: [15 x i8]* @log_content_format_pathspec.iso8601)
!37 = distinct !DISubprogram(name: "log_content_format_pathspec", scope: !13, file: !13, line: 459, type: !38, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !7, !10, !10, !10, !10, !10, !10, !10}
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 120, align: 8, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 15)
!43 = distinct !DIGlobalVariable(name: "content_pcap_src_ether", scope: !0, file: !13, line: 382, type: !20, isLocal: true, isDefinition: true, variable: [6 x i8]* @content_pcap_src_ether)
!44 = distinct !DIGlobalVariable(name: "content_pcap_dst_ether", scope: !0, file: !13, line: 384, type: !20, isLocal: true, isDefinition: true, variable: [6 x i8]* @content_pcap_dst_ether)
!45 = distinct !DIGlobalVariable(name: "content_mirror_libnet", scope: !0, file: !13, line: 388, type: !46, isLocal: true, isDefinition: true, variable: %struct.libnet_context** @content_mirror_libnet)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !48, line: 235, baseType: !49)
!48 = !DIFile(filename: "/usr/include/libnet/libnet-structures.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !48, line: 186, size: 3200, align: 64, elements: !50)
!50 = !{!51, !52, !53, !76, !77, !78, !79, !80, !81, !82, !90, !91, !95, !99}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !49, file: !48, line: 192, baseType: !32, size: 32, align: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !49, file: !48, line: 194, baseType: !32, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !49, file: !48, line: 206, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !48, line: 178, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !48, line: 77, size: 384, align: 64, elements: !57)
!57 = !{!58, !60, !63, !66, !67, !68, !69, !73, !75}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !56, file: !48, line: 79, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !56, file: !48, line: 80, baseType: !61, size: 32, align: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 51, baseType: !62)
!62 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !56, file: !48, line: 81, baseType: !64, size: 16, align: 16, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !22, line: 49, baseType: !65)
!65 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !56, file: !48, line: 92, baseType: !61, size: 32, align: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !48, line: 94, baseType: !21, size: 8, align: 8, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !48, line: 168, baseType: !21, size: 8, align: 8, offset: 168)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !56, file: !48, line: 170, baseType: !70, size: 32, align: 32, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !48, line: 70, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !72, line: 196, baseType: !32)
!72 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !48, line: 175, baseType: !74, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !56, file: !48, line: 176, baseType: !74, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !49, file: !48, line: 207, baseType: !54, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !49, file: !48, line: 208, baseType: !61, size: 32, align: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !49, file: !48, line: 210, baseType: !32, size: 32, align: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !49, file: !48, line: 224, baseType: !32, size: 32, align: 32, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !49, file: !48, line: 225, baseType: !32, size: 32, align: 32, offset: 288)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !49, file: !48, line: 226, baseType: !10, size: 64, align: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !49, file: !48, line: 228, baseType: !83, size: 192, align: 64, offset: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !48, line: 52, size: 192, align: 64, elements: !84)
!84 = !{!85, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !83, file: !48, line: 55, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 55, baseType: !87)
!87 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !83, file: !48, line: 56, baseType: !86, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !83, file: !48, line: 57, baseType: !86, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !49, file: !48, line: 229, baseType: !70, size: 32, align: 32, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !49, file: !48, line: 230, baseType: !92, size: 512, align: 8, offset: 608)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !49, file: !48, line: 232, baseType: !96, size: 2048, align: 8, offset: 1120)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !49, file: !48, line: 233, baseType: !61, size: 32, align: 32, offset: 3168)
!100 = distinct !DIGlobalVariable(name: "content_mirror_mtu", scope: !0, file: !13, line: 389, type: !101, isLocal: true, isDefinition: true, variable: i64* @content_mirror_mtu)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 216, baseType: !87)
!102 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!103 = distinct !DIGlobalVariable(name: "content_file_log", scope: !0, file: !13, line: 379, type: !14, isLocal: true, isDefinition: true, variable: %struct.logger** @content_file_log)
!104 = distinct !DIGlobalVariable(name: "content_pcap_log", scope: !0, file: !13, line: 381, type: !14, isLocal: true, isDefinition: true, variable: %struct.logger** @content_pcap_log)
!105 = distinct !DIGlobalVariable(name: "content_mirror_log", scope: !0, file: !13, line: 387, type: !14, isLocal: true, isDefinition: true, variable: %struct.logger** @content_mirror_log)
!106 = distinct !DIGlobalVariable(name: "content_file_single_fd", scope: !0, file: !13, line: 1016, type: !32, isLocal: true, isDefinition: true, variable: i32* @content_file_single_fd)
!107 = distinct !DIGlobalVariable(name: "content_file_single_fn", scope: !0, file: !13, line: 1017, type: !10, isLocal: true, isDefinition: true, variable: i8** @content_file_single_fn)
!108 = distinct !DIGlobalVariable(name: "content_pcap_fd", scope: !0, file: !13, line: 1151, type: !32, isLocal: true, isDefinition: true, variable: i32* @content_pcap_fd)
!109 = distinct !DIGlobalVariable(name: "content_pcap_fn", scope: !0, file: !13, line: 1152, type: !10, isLocal: true, isDefinition: true, variable: i8** @content_pcap_fn)
!110 = distinct !DIGlobalVariable(name: "connect_fd", scope: !0, file: !13, line: 251, type: !32, isLocal: true, isDefinition: true, variable: i32* @connect_fd)
!111 = distinct !DIGlobalVariable(name: "connect_fn", scope: !0, file: !13, line: 252, type: !10, isLocal: true, isDefinition: true, variable: i8** @connect_fn)
!112 = distinct !DIGlobalVariable(name: "masterkey_fd", scope: !0, file: !13, line: 184, type: !32, isLocal: true, isDefinition: true, variable: i32* @masterkey_fd)
!113 = distinct !DIGlobalVariable(name: "masterkey_fn", scope: !0, file: !13, line: 185, type: !10, isLocal: true, isDefinition: true, variable: i8** @masterkey_fn)
!114 = distinct !DIGlobalVariable(name: "cert_log", scope: !0, file: !13, line: 1431, type: !14, isLocal: true, isDefinition: true, variable: %struct.logger** @cert_log)
!115 = distinct !DIGlobalVariable(name: "masterkey_clisock", scope: !0, file: !13, line: 186, type: !32, isLocal: true, isDefinition: true, variable: i32* @masterkey_clisock)
!116 = distinct !DIGlobalVariable(name: "connect_clisock", scope: !0, file: !13, line: 253, type: !32, isLocal: true, isDefinition: true, variable: i32* @connect_clisock)
!117 = distinct !DIGlobalVariable(name: "content_file_clisock", scope: !0, file: !13, line: 378, type: !32, isLocal: true, isDefinition: true, variable: i32* @content_file_clisock)
!118 = distinct !DIGlobalVariable(name: "content_pcap_clisock", scope: !0, file: !13, line: 380, type: !32, isLocal: true, isDefinition: true, variable: i32* @content_pcap_clisock)
!119 = distinct !DIGlobalVariable(name: "cert_clisock", scope: !0, file: !13, line: 1432, type: !32, isLocal: true, isDefinition: true, variable: i32* @cert_clisock)
!120 = !{i32 2, !"Dwarf Version", i32 4}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!123 = distinct !DISubprogram(name: "log_exceptcb", scope: !13, file: !13, line: 63, type: !124, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DILocation(line: 65, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !13, line: 65, column: 6)
!128 = !DILocation(line: 65, column: 6, scope: !123)
!129 = !DILocation(line: 66, column: 19, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !13, line: 65, column: 17)
!131 = !DILocation(line: 66, column: 3, scope: !130)
!132 = !DILocation(line: 67, column: 13, scope: !130)
!133 = !DILocation(line: 68, column: 2, scope: !130)
!134 = !DILocation(line: 69, column: 1, scope: !123)
!135 = distinct !DISubprogram(name: "log_err_printf", scope: !13, file: !13, line: 96, type: !136, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!136 = !DISubroutineType(types: !137)
!137 = !{!32, !7, null}
!138 = !DILocalVariable(name: "fmt", arg: 1, scope: !135, file: !13, line: 96, type: !7)
!139 = !DIExpression()
!140 = !DILocation(line: 96, column: 28, scope: !135)
!141 = !DILocalVariable(name: "ap", scope: !135, file: !13, line: 98, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 98, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !143, line: 40, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 98, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 192, align: 64, elements: !153)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 98, size: 192, align: 64, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !147, file: !1, line: 98, baseType: !62, size: 32, align: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !147, file: !1, line: 98, baseType: !62, size: 32, align: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !147, file: !1, line: 98, baseType: !4, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !147, file: !1, line: 98, baseType: !4, size: 64, align: 64, offset: 128)
!153 = !{!154}
!154 = !DISubrange(count: 1)
!155 = !DILocation(line: 98, column: 10, scope: !135)
!156 = !DILocalVariable(name: "buf", scope: !135, file: !13, line: 99, type: !10)
!157 = !DILocation(line: 99, column: 8, scope: !135)
!158 = !DILocalVariable(name: "rv", scope: !135, file: !13, line: 100, type: !32)
!159 = !DILocation(line: 100, column: 6, scope: !135)
!160 = !DILocation(line: 102, column: 1, scope: !135)
!161 = !DILocation(line: 103, column: 23, scope: !135)
!162 = !DILocation(line: 103, column: 28, scope: !135)
!163 = !DILocation(line: 103, column: 7, scope: !135)
!164 = !DILocation(line: 103, column: 5, scope: !135)
!165 = !DILocation(line: 104, column: 1, scope: !135)
!166 = !DILocation(line: 105, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !135, file: !13, line: 105, column: 6)
!168 = !DILocation(line: 105, column: 9, scope: !167)
!169 = !DILocation(line: 105, column: 6, scope: !135)
!170 = !DILocation(line: 106, column: 3, scope: !167)
!171 = !DILocation(line: 107, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !135, file: !13, line: 107, column: 6)
!173 = !DILocation(line: 107, column: 6, scope: !135)
!174 = !DILocation(line: 108, column: 31, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !13, line: 107, column: 27)
!176 = !DILocation(line: 109, column: 31, scope: !175)
!177 = !DILocation(line: 109, column: 43, scope: !175)
!178 = !DILocation(line: 109, column: 36, scope: !175)
!179 = !DILocation(line: 109, column: 48, scope: !175)
!180 = !DILocation(line: 108, column: 10, scope: !175)
!181 = !DILocation(line: 108, column: 3, scope: !175)
!182 = !DILocation(line: 111, column: 43, scope: !183)
!183 = distinct !DILexicalBlock(scope: !172, file: !13, line: 110, column: 9)
!184 = !DILocation(line: 111, column: 55, scope: !183)
!185 = !DILocation(line: 111, column: 48, scope: !183)
!186 = !DILocation(line: 111, column: 60, scope: !183)
!187 = !DILocation(line: 111, column: 3, scope: !188)
!188 = !DILexicalBlockFile(scope: !183, file: !13, discriminator: 1)
!189 = !DILocation(line: 112, column: 8, scope: !183)
!190 = !DILocation(line: 112, column: 3, scope: !183)
!191 = !DILocation(line: 114, column: 2, scope: !135)
!192 = !DILocation(line: 115, column: 1, scope: !135)
!193 = distinct !DISubprogram(name: "log_err_writecb", scope: !13, file: !13, line: 82, type: !194, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !4, !87, !200, !101}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !72, line: 109, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !198, line: 172, baseType: !199)
!198 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!199 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!202 = !DILocalVariable(name: "fh", arg: 1, scope: !193, file: !13, line: 82, type: !4)
!203 = !DILocation(line: 82, column: 47, scope: !193)
!204 = !DILocalVariable(name: "ctl", arg: 2, scope: !193, file: !13, line: 82, type: !87)
!205 = !DILocation(line: 82, column: 89, scope: !193)
!206 = !DILocalVariable(name: "buf", arg: 3, scope: !193, file: !13, line: 83, type: !200)
!207 = !DILocation(line: 83, column: 29, scope: !193)
!208 = !DILocalVariable(name: "sz", arg: 4, scope: !193, file: !13, line: 83, type: !101)
!209 = !DILocation(line: 83, column: 41, scope: !193)
!210 = !DILocation(line: 85, column: 10, scope: !193)
!211 = !DILocation(line: 85, column: 2, scope: !193)
!212 = !DILocation(line: 87, column: 18, scope: !213)
!213 = distinct !DILexicalBlock(scope: !193, file: !13, line: 85, column: 20)
!214 = !DILocation(line: 87, column: 23, scope: !213)
!215 = !DILocation(line: 87, column: 26, scope: !213)
!216 = !DILocation(line: 87, column: 33, scope: !213)
!217 = !DILocation(line: 87, column: 11, scope: !213)
!218 = !DILocation(line: 87, column: 4, scope: !213)
!219 = !DILocation(line: 89, column: 39, scope: !213)
!220 = !DILocation(line: 89, column: 4, scope: !213)
!221 = !DILocation(line: 90, column: 11, scope: !213)
!222 = !DILocation(line: 90, column: 4, scope: !213)
!223 = !DILocation(line: 92, column: 2, scope: !193)
!224 = !DILocation(line: 93, column: 1, scope: !193)
!225 = distinct !DISubprogram(name: "log_err_mode", scope: !13, file: !13, line: 118, type: !226, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !32}
!228 = !DILocalVariable(name: "mode", arg: 1, scope: !225, file: !13, line: 118, type: !32)
!229 = !DILocation(line: 118, column: 18, scope: !225)
!230 = !DILocation(line: 120, column: 13, scope: !225)
!231 = !DILocation(line: 120, column: 11, scope: !225)
!232 = !DILocation(line: 121, column: 1, scope: !225)
!233 = distinct !DISubprogram(name: "log_dbg_write_free", scope: !13, file: !13, line: 133, type: !234, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!234 = !DISubroutineType(types: !235)
!235 = !{!32, !4, !101}
!236 = !DILocalVariable(name: "buf", arg: 1, scope: !233, file: !13, line: 133, type: !4)
!237 = !DILocation(line: 133, column: 26, scope: !233)
!238 = !DILocalVariable(name: "sz", arg: 2, scope: !233, file: !13, line: 133, type: !101)
!239 = !DILocation(line: 133, column: 38, scope: !233)
!240 = !DILocation(line: 135, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !13, line: 135, column: 6)
!242 = !DILocation(line: 135, column: 15, scope: !241)
!243 = !DILocation(line: 135, column: 6, scope: !233)
!244 = !DILocation(line: 136, column: 3, scope: !241)
!245 = !DILocation(line: 138, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !233, file: !13, line: 138, column: 6)
!247 = !DILocation(line: 138, column: 6, scope: !233)
!248 = !DILocation(line: 139, column: 31, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !13, line: 138, column: 27)
!250 = !DILocation(line: 139, column: 48, scope: !249)
!251 = !DILocation(line: 139, column: 53, scope: !249)
!252 = !DILocation(line: 139, column: 10, scope: !249)
!253 = !DILocation(line: 139, column: 3, scope: !249)
!254 = !DILocation(line: 141, column: 27, scope: !255)
!255 = distinct !DILexicalBlock(scope: !246, file: !13, line: 140, column: 9)
!256 = !DILocation(line: 141, column: 32, scope: !255)
!257 = !DILocation(line: 141, column: 3, scope: !255)
!258 = !DILocation(line: 142, column: 8, scope: !255)
!259 = !DILocation(line: 142, column: 3, scope: !255)
!260 = !DILocation(line: 144, column: 2, scope: !233)
!261 = !DILocation(line: 145, column: 1, scope: !233)
!262 = distinct !DISubprogram(name: "log_dbg_print_free", scope: !13, file: !13, line: 148, type: !263, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!263 = !DISubroutineType(types: !264)
!264 = !{!32, !10}
!265 = !DILocalVariable(name: "s", arg: 1, scope: !262, file: !13, line: 148, type: !10)
!266 = !DILocation(line: 148, column: 26, scope: !262)
!267 = !DILocation(line: 150, column: 28, scope: !262)
!268 = !DILocation(line: 150, column: 38, scope: !262)
!269 = !DILocation(line: 150, column: 31, scope: !262)
!270 = !DILocation(line: 150, column: 41, scope: !262)
!271 = !DILocation(line: 150, column: 9, scope: !272)
!272 = !DILexicalBlockFile(scope: !262, file: !13, discriminator: 1)
!273 = !DILocation(line: 150, column: 2, scope: !262)
!274 = distinct !DISubprogram(name: "log_dbg_printf", scope: !13, file: !13, line: 154, type: !136, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!275 = !DILocalVariable(name: "fmt", arg: 1, scope: !274, file: !13, line: 154, type: !7)
!276 = !DILocation(line: 154, column: 28, scope: !274)
!277 = !DILocalVariable(name: "ap", scope: !274, file: !13, line: 156, type: !142)
!278 = !DILocation(line: 156, column: 10, scope: !274)
!279 = !DILocalVariable(name: "buf", scope: !274, file: !13, line: 157, type: !10)
!280 = !DILocation(line: 157, column: 8, scope: !274)
!281 = !DILocalVariable(name: "rv", scope: !274, file: !13, line: 158, type: !32)
!282 = !DILocation(line: 158, column: 6, scope: !274)
!283 = !DILocation(line: 160, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !274, file: !13, line: 160, column: 6)
!285 = !DILocation(line: 160, column: 15, scope: !284)
!286 = !DILocation(line: 160, column: 6, scope: !274)
!287 = !DILocation(line: 161, column: 3, scope: !284)
!288 = !DILocation(line: 163, column: 1, scope: !274)
!289 = !DILocation(line: 164, column: 23, scope: !274)
!290 = !DILocation(line: 164, column: 28, scope: !274)
!291 = !DILocation(line: 164, column: 7, scope: !274)
!292 = !DILocation(line: 164, column: 5, scope: !274)
!293 = !DILocation(line: 165, column: 1, scope: !274)
!294 = !DILocation(line: 166, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !274, file: !13, line: 166, column: 6)
!296 = !DILocation(line: 166, column: 9, scope: !295)
!297 = !DILocation(line: 166, column: 6, scope: !274)
!298 = !DILocation(line: 167, column: 3, scope: !295)
!299 = !DILocation(line: 168, column: 28, scope: !274)
!300 = !DILocation(line: 168, column: 9, scope: !274)
!301 = !DILocation(line: 168, column: 2, scope: !274)
!302 = !DILocation(line: 169, column: 1, scope: !274)
!303 = distinct !DISubprogram(name: "log_dbg_mode", scope: !13, file: !13, line: 172, type: !226, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!304 = !DILocalVariable(name: "mode", arg: 1, scope: !303, file: !13, line: 172, type: !32)
!305 = !DILocation(line: 172, column: 18, scope: !303)
!306 = !DILocation(line: 174, column: 13, scope: !303)
!307 = !DILocation(line: 174, column: 11, scope: !303)
!308 = !DILocation(line: 175, column: 1, scope: !303)
!309 = distinct !DISubprogram(name: "log_content_split_pathspec", scope: !13, file: !13, line: 401, type: !310, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!310 = !DISubroutineType(types: !311)
!311 = !{!32, !7, !312, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!313 = !DILocalVariable(name: "path", arg: 1, scope: !309, file: !13, line: 401, type: !7)
!314 = !DILocation(line: 401, column: 40, scope: !309)
!315 = !DILocalVariable(name: "lhs", arg: 2, scope: !309, file: !13, line: 401, type: !312)
!316 = !DILocation(line: 401, column: 53, scope: !309)
!317 = !DILocalVariable(name: "rhs", arg: 3, scope: !309, file: !13, line: 401, type: !312)
!318 = !DILocation(line: 401, column: 65, scope: !309)
!319 = !DILocalVariable(name: "p", scope: !309, file: !13, line: 403, type: !7)
!320 = !DILocation(line: 403, column: 14, scope: !309)
!321 = !DILocalVariable(name: "q", scope: !309, file: !13, line: 403, type: !7)
!322 = !DILocation(line: 403, column: 18, scope: !309)
!323 = !DILocalVariable(name: "r", scope: !309, file: !13, line: 403, type: !7)
!324 = !DILocation(line: 403, column: 22, scope: !309)
!325 = !DILocation(line: 405, column: 13, scope: !309)
!326 = !DILocation(line: 405, column: 6, scope: !309)
!327 = !DILocation(line: 405, column: 4, scope: !309)
!328 = !DILocation(line: 409, column: 2, scope: !309)
!329 = !DILocation(line: 409, column: 9, scope: !330)
!330 = !DILexicalBlockFile(scope: !309, file: !13, discriminator: 1)
!331 = !DILocation(line: 409, column: 11, scope: !330)
!332 = !DILocation(line: 409, column: 14, scope: !333)
!333 = !DILexicalBlockFile(scope: !309, file: !13, discriminator: 2)
!334 = !DILocation(line: 409, column: 19, scope: !333)
!335 = !DILocation(line: 409, column: 2, scope: !336)
!336 = !DILexicalBlockFile(scope: !309, file: !13, discriminator: 3)
!337 = !DILocation(line: 410, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !309, file: !13, line: 409, column: 27)
!339 = !DILocation(line: 410, column: 16, scope: !338)
!340 = !DILocation(line: 410, column: 7, scope: !338)
!341 = !DILocation(line: 410, column: 5, scope: !338)
!342 = !DILocation(line: 409, column: 2, scope: !343)
!343 = !DILexicalBlockFile(scope: !309, file: !13, discriminator: 4)
!344 = distinct !{!344, !328}
!345 = !DILocation(line: 414, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !309, file: !13, line: 414, column: 6)
!347 = !DILocation(line: 414, column: 9, scope: !346)
!348 = !DILocation(line: 414, column: 13, scope: !349)
!349 = !DILexicalBlockFile(scope: !346, file: !13, discriminator: 1)
!350 = !DILocation(line: 414, column: 6, scope: !349)
!351 = !DILocation(line: 416, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !346, file: !13, line: 414, column: 19)
!353 = !DILocation(line: 416, column: 21, scope: !352)
!354 = !DILocation(line: 416, column: 14, scope: !352)
!355 = !DILocation(line: 416, column: 12, scope: !352)
!356 = !DILocation(line: 416, column: 5, scope: !352)
!357 = !DILocation(line: 417, column: 2, scope: !352)
!358 = !DILocation(line: 421, column: 22, scope: !359)
!359 = distinct !DILexicalBlock(scope: !309, file: !13, line: 421, column: 2)
!360 = !DILocation(line: 421, column: 15, scope: !359)
!361 = !DILocation(line: 421, column: 13, scope: !359)
!362 = !DILocation(line: 421, column: 9, scope: !359)
!363 = !DILocation(line: 421, column: 7, scope: !359)
!364 = !DILocation(line: 421, column: 34, scope: !365)
!365 = !DILexicalBlockFile(scope: !366, file: !13, discriminator: 1)
!366 = distinct !DILexicalBlock(scope: !359, file: !13, line: 421, column: 2)
!367 = !DILocation(line: 421, column: 36, scope: !365)
!368 = !DILocation(line: 421, column: 40, scope: !369)
!369 = !DILexicalBlockFile(scope: !366, file: !13, discriminator: 2)
!370 = !DILocation(line: 421, column: 44, scope: !369)
!371 = !DILocation(line: 421, column: 42, scope: !369)
!372 = !DILocation(line: 421, column: 2, scope: !373)
!373 = !DILexicalBlockFile(scope: !359, file: !13, discriminator: 3)
!374 = !DILocation(line: 422, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !366, file: !13, line: 421, column: 72)
!376 = !DILocation(line: 422, column: 5, scope: !375)
!377 = !DILocation(line: 423, column: 2, scope: !375)
!378 = !DILocation(line: 421, column: 59, scope: !379)
!379 = !DILexicalBlockFile(scope: !366, file: !13, discriminator: 4)
!380 = !DILocation(line: 421, column: 61, scope: !379)
!381 = !DILocation(line: 421, column: 52, scope: !379)
!382 = !DILocation(line: 421, column: 50, scope: !379)
!383 = !DILocation(line: 421, column: 2, scope: !379)
!384 = distinct !{!384, !385}
!385 = !DILocation(line: 421, column: 2, scope: !309)
!386 = !DILocation(line: 424, column: 12, scope: !387)
!387 = distinct !DILexicalBlock(scope: !309, file: !13, line: 424, column: 6)
!388 = !DILocation(line: 424, column: 10, scope: !387)
!389 = !DILocation(line: 424, column: 6, scope: !309)
!390 = !DILocation(line: 426, column: 10, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !13, line: 424, column: 16)
!392 = !DILocation(line: 426, column: 4, scope: !391)
!393 = !DILocation(line: 426, column: 8, scope: !391)
!394 = !DILocation(line: 427, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !13, line: 427, column: 7)
!396 = !DILocation(line: 427, column: 8, scope: !395)
!397 = !DILocation(line: 427, column: 7, scope: !391)
!398 = !DILocation(line: 428, column: 4, scope: !395)
!399 = !DILocation(line: 429, column: 17, scope: !391)
!400 = !DILocation(line: 429, column: 10, scope: !391)
!401 = !DILocation(line: 429, column: 4, scope: !391)
!402 = !DILocation(line: 429, column: 8, scope: !391)
!403 = !DILocation(line: 430, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !13, line: 430, column: 7)
!405 = !DILocation(line: 430, column: 8, scope: !404)
!406 = !DILocation(line: 430, column: 7, scope: !391)
!407 = !DILocation(line: 431, column: 10, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !13, line: 430, column: 14)
!409 = !DILocation(line: 431, column: 9, scope: !408)
!410 = !DILocation(line: 431, column: 4, scope: !408)
!411 = !DILocation(line: 432, column: 4, scope: !408)
!412 = !DILocation(line: 434, column: 3, scope: !391)
!413 = !DILocation(line: 438, column: 3, scope: !309)
!414 = !DILocation(line: 439, column: 16, scope: !309)
!415 = !DILocation(line: 439, column: 20, scope: !309)
!416 = !DILocation(line: 439, column: 18, scope: !309)
!417 = !DILocation(line: 439, column: 25, scope: !309)
!418 = !DILocation(line: 439, column: 9, scope: !309)
!419 = !DILocation(line: 439, column: 3, scope: !309)
!420 = !DILocation(line: 439, column: 7, scope: !309)
!421 = !DILocation(line: 440, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !309, file: !13, line: 440, column: 6)
!423 = !DILocation(line: 440, column: 7, scope: !422)
!424 = !DILocation(line: 440, column: 6, scope: !309)
!425 = !DILocation(line: 441, column: 3, scope: !422)
!426 = !DILocation(line: 442, column: 10, scope: !309)
!427 = !DILocation(line: 442, column: 9, scope: !309)
!428 = !DILocation(line: 442, column: 15, scope: !309)
!429 = !DILocation(line: 442, column: 21, scope: !309)
!430 = !DILocation(line: 442, column: 25, scope: !309)
!431 = !DILocation(line: 442, column: 23, scope: !309)
!432 = !DILocation(line: 442, column: 2, scope: !309)
!433 = !DILocation(line: 443, column: 9, scope: !309)
!434 = !DILocation(line: 443, column: 13, scope: !309)
!435 = !DILocation(line: 443, column: 11, scope: !309)
!436 = !DILocation(line: 443, column: 4, scope: !309)
!437 = !DILocation(line: 443, column: 3, scope: !309)
!438 = !DILocation(line: 443, column: 2, scope: !309)
!439 = !DILocation(line: 443, column: 19, scope: !309)
!440 = !DILocation(line: 444, column: 16, scope: !309)
!441 = !DILocation(line: 444, column: 9, scope: !309)
!442 = !DILocation(line: 444, column: 3, scope: !309)
!443 = !DILocation(line: 444, column: 7, scope: !309)
!444 = !DILocation(line: 445, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !309, file: !13, line: 445, column: 6)
!446 = !DILocation(line: 445, column: 7, scope: !445)
!447 = !DILocation(line: 445, column: 6, scope: !309)
!448 = !DILocation(line: 446, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !13, line: 445, column: 13)
!450 = !DILocation(line: 446, column: 8, scope: !449)
!451 = !DILocation(line: 446, column: 3, scope: !449)
!452 = !DILocation(line: 447, column: 3, scope: !449)
!453 = !DILocation(line: 450, column: 2, scope: !309)
!454 = !DILocation(line: 451, column: 1, scope: !309)
!455 = distinct !DISubprogram(name: "log_content_open", scope: !13, file: !13, line: 611, type: !456, isLocal: false, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!456 = !DISubroutineType(types: !457)
!457 = !{!32, !458, !531, !2302, !2271, !2302, !2271, !10, !10, !10, !10, !10, !10, !10}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_content_ctx_t", file: !460, line: 73, baseType: !461)
!460 = !DIFile(filename: "log.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_content_ctx", file: !460, line: 77, size: 192, align: 64, elements: !462)
!462 = !{!463, !485, !526}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !461, file: !460, line: 78, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_content_file_ctx", file: !13, line: 341, size: 128, align: 64, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !465, file: !13, line: 355, baseType: !468, size: 128, align: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !13, line: 342, size: 128, align: 64, elements: !469)
!469 = !{!470, !475, !480}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !468, file: !13, line: 346, baseType: !471, size: 128, align: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !13, line: 343, size: 128, align: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "header_req", scope: !471, file: !13, line: 344, baseType: !10, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "header_resp", scope: !471, file: !13, line: 345, baseType: !10, size: 64, align: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !468, file: !13, line: 350, baseType: !476, size: 128, align: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !13, line: 347, size: 128, align: 64, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !476, file: !13, line: 348, baseType: !32, size: 32, align: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !476, file: !13, line: 349, baseType: !10, size: 64, align: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !468, file: !13, line: 354, baseType: !481, size: 128, align: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !13, line: 351, size: 128, align: 64, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !481, file: !13, line: 352, baseType: !32, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !481, file: !13, line: 353, baseType: !10, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pcap", scope: !461, file: !460, line: 79, baseType: !486, size: 64, align: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_content_pcap_ctx", file: !13, line: 358, size: 2496, align: 64, elements: !488)
!488 = !{!489, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !487, file: !13, line: 368, baseType: !490, size: 128, align: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !13, line: 359, size: 128, align: 64, elements: !491)
!491 = !{!492, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !490, file: !13, line: 363, baseType: !493, size: 128, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !13, line: 360, size: 128, align: 64, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !493, file: !13, line: 361, baseType: !32, size: 32, align: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !493, file: !13, line: 362, baseType: !10, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !490, file: !13, line: 367, baseType: !498, size: 128, align: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !13, line: 364, size: 128, align: 64, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !498, file: !13, line: 365, baseType: !32, size: 32, align: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !498, file: !13, line: 366, baseType: !10, size: 64, align: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !13, line: 369, baseType: !503, size: 2368, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "logpkt_ctx_t", file: !504, line: 54, baseType: !505)
!504 = !DIFile(filename: "logpkt.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 45, size: 2368, align: 64, elements: !506)
!506 = !{!507, !508, !509, !510, !522, !523, !524, !525}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "libnet", scope: !505, file: !504, line: 46, baseType: !46, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "src_ether", scope: !505, file: !504, line: 47, baseType: !20, size: 48, align: 8, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ether", scope: !505, file: !504, line: 48, baseType: !20, size: 48, align: 8, offset: 112)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !505, file: !504, line: 49, baseType: !511, size: 1024, align: 64, offset: 192)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !512, line: 166, size: 1024, align: 64, elements: !513)
!512 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!513 = !{!514, !517, !521}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !511, file: !512, line: 168, baseType: !515, size: 16, align: 16)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !516, line: 28, baseType: !65)
!516 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !511, file: !512, line: 169, baseType: !518, size: 944, align: 8, offset: 16)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 944, align: 8, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 118)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !511, file: !512, line: 170, baseType: !87, size: 64, align: 64, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !505, file: !504, line: 50, baseType: !511, size: 1024, align: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "src_seq", scope: !505, file: !504, line: 51, baseType: !61, size: 32, align: 32, offset: 2240)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dst_seq", scope: !505, file: !504, line: 52, baseType: !61, size: 32, align: 32, offset: 2272)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !505, file: !504, line: 53, baseType: !101, size: 64, align: 64, offset: 2304)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mirror", scope: !461, file: !460, line: 80, baseType: !527, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_content_mirror_ctx", file: !13, line: 373, size: 2368, align: 64, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !528, file: !13, line: 374, baseType: !503, size: 2368, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "opts_t", file: !533, line: 126, baseType: !534)
!533 = !DIFile(filename: "opts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opts", file: !533, line: 56, size: 1920, align: 64, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2299, !2300, !2301}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !534, file: !533, line: 57, baseType: !62, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !534, file: !533, line: 58, baseType: !62, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sslcomp", scope: !534, file: !533, line: 59, baseType: !62, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "no_ssl3", scope: !534, file: !533, line: 64, baseType: !62, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls10", scope: !534, file: !533, line: 67, baseType: !62, size: 1, align: 32, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls11", scope: !534, file: !533, line: 70, baseType: !62, size: 1, align: 32, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls12", scope: !534, file: !533, line: 73, baseType: !62, size: 1, align: 32, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "passthrough", scope: !534, file: !533, line: 75, baseType: !62, size: 1, align: 32, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "deny_ocsp", scope: !534, file: !533, line: 76, baseType: !62, size: 1, align: 32, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isdir", scope: !534, file: !533, line: 77, baseType: !62, size: 1, align: 32, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_isspec", scope: !534, file: !533, line: 78, baseType: !62, size: 1, align: 32, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isdir", scope: !534, file: !533, line: 79, baseType: !62, size: 1, align: 32, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_isspec", scope: !534, file: !533, line: 80, baseType: !62, size: 1, align: 32, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "certgen_writeall", scope: !534, file: !533, line: 84, baseType: !62, size: 1, align: 32, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "openssl_engine", scope: !534, file: !533, line: 86, baseType: !10, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !534, file: !533, line: 88, baseType: !10, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "certgendir", scope: !534, file: !533, line: 89, baseType: !10, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tgcrtdir", scope: !534, file: !533, line: 90, baseType: !10, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dropuser", scope: !534, file: !533, line: 91, baseType: !10, size: 64, align: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dropgroup", scope: !534, file: !533, line: 92, baseType: !10, size: 64, align: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "jaildir", scope: !534, file: !533, line: 93, baseType: !10, size: 64, align: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !534, file: !533, line: 94, baseType: !10, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "conffile", scope: !534, file: !533, line: 95, baseType: !10, size: 64, align: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "connectlog", scope: !534, file: !533, line: 96, baseType: !10, size: 64, align: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog", scope: !534, file: !533, line: 97, baseType: !10, size: 64, align: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "contentlog_basedir", scope: !534, file: !533, line: 98, baseType: !10, size: 64, align: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "masterkeylog", scope: !534, file: !533, line: 99, baseType: !10, size: 64, align: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog", scope: !534, file: !533, line: 100, baseType: !10, size: 64, align: 64, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pcaplog_basedir", scope: !534, file: !533, line: 101, baseType: !10, size: 64, align: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mirrorif", scope: !534, file: !533, line: 103, baseType: !10, size: 64, align: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mirrortarget", scope: !534, file: !533, line: 104, baseType: !10, size: 64, align: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sslmethod", scope: !534, file: !533, line: 106, baseType: !568, size: 64, align: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !574, line: 374, baseType: !575)
!574 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !574, line: 438, size: 1856, align: 64, elements: !576)
!576 = !{!577, !578, !2172, !2176, !2177, !2178, !2179, !2183, !2184, !2188, !2189, !2190, !2191, !2195, !2199, !2203, !2204, !2208, !2212, !2216, !2220, !2224, !2228, !2232, !2238, !2239, !2242, !2243, !2248}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !575, file: !574, line: 439, baseType: !32, size: 32, align: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !575, file: !574, line: 440, baseType: !579, size: 64, align: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!32, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !584, line: 178, baseType: !585)
!584 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !574, line: 1422, size: 6592, align: 64, elements: !586)
!586 = !{!587, !588, !589, !590, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !693, !694, !695, !696, !697, !698, !761, !1239, !1670, !1671, !1675, !1676, !1677, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1709, !1710, !1711, !1712, !1719, !1720, !1889, !1893, !1894, !1895, !1899, !1903, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2112, !2113, !2114, !2115, !2116, !2117, !2120, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2140, !2145, !2146, !2153, !2154, !2155, !2156, !2157, !2158, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !585, file: !574, line: 1427, baseType: !32, size: 32, align: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !574, line: 1429, baseType: !32, size: 32, align: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !585, file: !574, line: 1431, baseType: !571, size: 64, align: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !585, file: !574, line: 1438, baseType: !591, size: 64, align: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !593, line: 238, baseType: !594)
!593 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !593, line: 325, size: 896, align: 64, elements: !595)
!595 = !{!596, !634, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !594, file: !593, line: 326, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !593, line: 323, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !593, line: 312, size: 640, align: 64, elements: !600)
!600 = !{!601, !602, !603, !607, !611, !615, !616, !620, !624, !625}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !593, line: 313, baseType: !32, size: 32, align: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !593, line: 314, baseType: !7, size: 64, align: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !599, file: !593, line: 315, baseType: !604, size: 64, align: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!32, !591, !7, !32}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !599, file: !593, line: 316, baseType: !608, size: 64, align: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!32, !591, !10, !32}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !599, file: !593, line: 317, baseType: !612, size: 64, align: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!32, !591, !7}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !599, file: !593, line: 318, baseType: !608, size: 64, align: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !599, file: !593, line: 319, baseType: !617, size: 64, align: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!199, !591, !32, !199, !4}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !599, file: !593, line: 320, baseType: !621, size: 64, align: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!32, !591}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !599, file: !593, line: 321, baseType: !621, size: 64, align: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !599, file: !593, line: 322, baseType: !626, size: 64, align: 64, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!199, !591, !32, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !593, line: 309, baseType: !631)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !633, !32, !7, !32, !199, !199}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !594, file: !593, line: 328, baseType: !635, size: 64, align: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!199, !633, !32, !7, !32, !199, !199}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !594, file: !593, line: 329, baseType: !10, size: 64, align: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !594, file: !593, line: 330, baseType: !32, size: 32, align: 32, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !594, file: !593, line: 331, baseType: !32, size: 32, align: 32, offset: 224)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !593, line: 332, baseType: !32, size: 32, align: 32, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !594, file: !593, line: 333, baseType: !32, size: 32, align: 32, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !594, file: !593, line: 334, baseType: !32, size: 32, align: 32, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !594, file: !593, line: 335, baseType: !4, size: 64, align: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !594, file: !593, line: 336, baseType: !633, size: 64, align: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !594, file: !593, line: 337, baseType: !633, size: 64, align: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !594, file: !593, line: 338, baseType: !32, size: 32, align: 32, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !594, file: !593, line: 339, baseType: !87, size: 64, align: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !594, file: !593, line: 340, baseType: !87, size: 64, align: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !594, file: !593, line: 341, baseType: !651, size: 128, align: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !584, line: 195, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !653, line: 292, size: 128, align: 64, elements: !654)
!653 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!654 = !{!655, !672}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !652, file: !653, line: 293, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !653, line: 297, size: 256, align: 64, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !657, file: !653, line: 297, baseType: !660, size: 256, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !661, line: 72, baseType: !662)
!661 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !661, line: 66, size: 256, align: 64, elements: !663)
!663 = !{!664, !665, !666, !667, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !662, file: !661, line: 67, baseType: !32, size: 32, align: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !662, file: !661, line: 68, baseType: !312, size: 64, align: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !662, file: !661, line: 69, baseType: !32, size: 32, align: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !662, file: !661, line: 70, baseType: !32, size: 32, align: 32, offset: 160)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !662, file: !661, line: 71, baseType: !669, size: 64, align: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!32, !200, !200}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !652, file: !653, line: 295, baseType: !32, size: 32, align: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !585, file: !574, line: 1440, baseType: !591, size: 64, align: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !585, file: !574, line: 1442, baseType: !591, size: 64, align: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !585, file: !574, line: 1455, baseType: !32, size: 32, align: 32, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !585, file: !574, line: 1457, baseType: !32, size: 32, align: 32, offset: 352)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !585, file: !574, line: 1458, baseType: !579, size: 64, align: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !585, file: !574, line: 1467, baseType: !32, size: 32, align: 32, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !585, file: !574, line: 1474, baseType: !32, size: 32, align: 32, offset: 480)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !585, file: !574, line: 1476, baseType: !32, size: 32, align: 32, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !585, file: !574, line: 1478, baseType: !32, size: 32, align: 32, offset: 544)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !585, file: !574, line: 1480, baseType: !32, size: 32, align: 32, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !585, file: !574, line: 1482, baseType: !32, size: 32, align: 32, offset: 608)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !585, file: !574, line: 1483, baseType: !685, size: 64, align: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !584, line: 127, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !688, line: 77, size: 192, align: 64, elements: !689)
!688 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !687, file: !688, line: 78, baseType: !101, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !687, file: !688, line: 79, baseType: !10, size: 64, align: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !687, file: !688, line: 80, baseType: !101, size: 64, align: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !585, file: !574, line: 1484, baseType: !4, size: 64, align: 64, offset: 704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !585, file: !574, line: 1486, baseType: !32, size: 32, align: 32, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !585, file: !574, line: 1487, baseType: !32, size: 32, align: 32, offset: 800)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !585, file: !574, line: 1489, baseType: !5, size: 64, align: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !585, file: !574, line: 1490, baseType: !62, size: 32, align: 32, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !585, file: !574, line: 1491, baseType: !699, size: 64, align: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !701, line: 163, size: 2752, align: 64, elements: !702)
!701 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!702 = !{!703, !704, !705, !706, !707, !708, !709, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !735, !736, !740, !741, !745, !746, !747}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !700, file: !701, line: 164, baseType: !32, size: 32, align: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !700, file: !701, line: 165, baseType: !32, size: 32, align: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !700, file: !701, line: 166, baseType: !32, size: 32, align: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !700, file: !701, line: 167, baseType: !32, size: 32, align: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !700, file: !701, line: 171, baseType: !62, size: 32, align: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !700, file: !701, line: 172, baseType: !32, size: 32, align: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !700, file: !701, line: 173, baseType: !710, size: 64, align: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !700, file: !701, line: 174, baseType: !32, size: 32, align: 32, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !700, file: !701, line: 175, baseType: !32, size: 32, align: 32, offset: 288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !700, file: !701, line: 176, baseType: !32, size: 32, align: 32, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !700, file: !701, line: 178, baseType: !32, size: 32, align: 32, offset: 352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !700, file: !701, line: 179, baseType: !32, size: 32, align: 32, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !700, file: !701, line: 180, baseType: !5, size: 64, align: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !700, file: !701, line: 181, baseType: !5, size: 64, align: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !700, file: !701, line: 182, baseType: !5, size: 64, align: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !700, file: !701, line: 184, baseType: !62, size: 32, align: 32, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !700, file: !701, line: 185, baseType: !62, size: 32, align: 32, offset: 672)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !700, file: !701, line: 186, baseType: !32, size: 32, align: 32, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !700, file: !701, line: 187, baseType: !62, size: 32, align: 32, offset: 736)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !700, file: !701, line: 188, baseType: !32, size: 32, align: 32, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !700, file: !701, line: 189, baseType: !5, size: 64, align: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !700, file: !701, line: 190, baseType: !5, size: 64, align: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !700, file: !701, line: 191, baseType: !5, size: 64, align: 64, offset: 960)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !700, file: !701, line: 192, baseType: !5, size: 64, align: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !700, file: !701, line: 193, baseType: !5, size: 64, align: 64, offset: 1088)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !700, file: !701, line: 195, baseType: !62, size: 32, align: 32, offset: 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !700, file: !701, line: 196, baseType: !732, size: 256, align: 8, offset: 1184)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, align: 8, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !700, file: !701, line: 197, baseType: !62, size: 32, align: 32, offset: 1440)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !700, file: !701, line: 198, baseType: !737, size: 128, align: 8, offset: 1472)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, align: 8, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 16)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !700, file: !701, line: 199, baseType: !62, size: 32, align: 32, offset: 1600)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !700, file: !701, line: 200, baseType: !742, size: 384, align: 8, offset: 1632)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, align: 8, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 48)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !700, file: !701, line: 201, baseType: !87, size: 64, align: 64, offset: 2048)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !700, file: !701, line: 202, baseType: !87, size: 64, align: 64, offset: 2112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !700, file: !701, line: 215, baseType: !748, size: 576, align: 32, offset: 2176)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !701, line: 203, size: 576, align: 32, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !748, file: !701, line: 204, baseType: !62, size: 32, align: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !748, file: !701, line: 205, baseType: !62, size: 32, align: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !748, file: !701, line: 206, baseType: !62, size: 32, align: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !748, file: !701, line: 207, baseType: !62, size: 32, align: 32, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !748, file: !701, line: 208, baseType: !62, size: 32, align: 32, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !748, file: !701, line: 209, baseType: !62, size: 32, align: 32, offset: 160)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !748, file: !701, line: 210, baseType: !732, size: 256, align: 8, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !748, file: !701, line: 211, baseType: !62, size: 32, align: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !748, file: !701, line: 212, baseType: !62, size: 32, align: 32, offset: 480)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !748, file: !701, line: 213, baseType: !62, size: 32, align: 32, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !748, file: !701, line: 214, baseType: !62, size: 32, align: 32, offset: 544)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !585, file: !574, line: 1492, baseType: !762, size: 64, align: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, align: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !764, line: 481, size: 9728, align: 64, elements: !765)
!764 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!765 = !{!766, !767, !768, !772, !773, !775, !776, !777, !778, !779, !780, !781, !782, !783, !791, !792, !804, !805, !809, !810, !814, !815, !816, !817, !818, !819, !820, !821, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !764, line: 482, baseType: !199, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !763, file: !764, line: 483, baseType: !32, size: 32, align: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !763, file: !764, line: 484, baseType: !769, size: 64, align: 8, offset: 96)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, align: 8, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 8)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !763, file: !764, line: 485, baseType: !32, size: 32, align: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !763, file: !764, line: 486, baseType: !774, size: 512, align: 8, offset: 192)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, align: 8, elements: !93)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !763, file: !764, line: 487, baseType: !769, size: 64, align: 8, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !763, file: !764, line: 488, baseType: !32, size: 32, align: 32, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !763, file: !764, line: 489, baseType: !774, size: 512, align: 8, offset: 800)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !763, file: !764, line: 490, baseType: !732, size: 256, align: 8, offset: 1312)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !763, file: !764, line: 491, baseType: !732, size: 256, align: 8, offset: 1568)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !763, file: !764, line: 493, baseType: !32, size: 32, align: 32, offset: 1824)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !763, file: !764, line: 494, baseType: !32, size: 32, align: 32, offset: 1856)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !763, file: !764, line: 496, baseType: !32, size: 32, align: 32, offset: 1888)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !763, file: !764, line: 497, baseType: !784, size: 192, align: 64, offset: 1920)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !764, line: 447, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !764, line: 438, size: 192, align: 64, elements: !786)
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !785, file: !764, line: 440, baseType: !5, size: 64, align: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !785, file: !764, line: 442, baseType: !101, size: 64, align: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !785, file: !764, line: 444, baseType: !32, size: 32, align: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !785, file: !764, line: 446, baseType: !32, size: 32, align: 32, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !763, file: !764, line: 498, baseType: !784, size: 192, align: 64, offset: 2112)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !763, file: !764, line: 499, baseType: !793, size: 448, align: 64, offset: 2304)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !764, line: 436, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !764, line: 403, size: 448, align: 64, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !764, line: 407, baseType: !32, size: 32, align: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !794, file: !764, line: 411, baseType: !62, size: 32, align: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !794, file: !764, line: 415, baseType: !62, size: 32, align: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !794, file: !764, line: 419, baseType: !5, size: 64, align: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !794, file: !764, line: 423, baseType: !5, size: 64, align: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !794, file: !764, line: 427, baseType: !5, size: 64, align: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !794, file: !764, line: 431, baseType: !87, size: 64, align: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !794, file: !764, line: 435, baseType: !769, size: 64, align: 8, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !763, file: !764, line: 500, baseType: !793, size: 448, align: 64, offset: 2752)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !763, file: !764, line: 505, baseType: !806, size: 16, align: 8, offset: 3200)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 16, align: 8, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 2)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !763, file: !764, line: 506, baseType: !62, size: 32, align: 32, offset: 3232)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !763, file: !764, line: 507, baseType: !811, size: 32, align: 8, offset: 3264)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, align: 8, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 4)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !763, file: !764, line: 508, baseType: !62, size: 32, align: 32, offset: 3296)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !763, file: !764, line: 510, baseType: !62, size: 32, align: 32, offset: 3328)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !763, file: !764, line: 511, baseType: !32, size: 32, align: 32, offset: 3360)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !763, file: !764, line: 512, baseType: !32, size: 32, align: 32, offset: 3392)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !763, file: !764, line: 513, baseType: !32, size: 32, align: 32, offset: 3424)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !763, file: !764, line: 514, baseType: !710, size: 64, align: 64, offset: 3456)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !763, file: !764, line: 516, baseType: !591, size: 64, align: 64, offset: 3520)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !763, file: !764, line: 521, baseType: !822, size: 64, align: 64, offset: 3584)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !584, line: 132, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !826, line: 268, size: 384, align: 64, elements: !827)
!826 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!827 = !{!828, !876, !880, !881, !882, !886}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !825, file: !826, line: 269, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !584, line: 131, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !826, line: 160, size: 960, align: 64, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !842, !846, !850, !856, !857, !862, !866, !870, !871, !872}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !826, line: 161, baseType: !32, size: 32, align: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !832, file: !826, line: 162, baseType: !32, size: 32, align: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !832, file: !826, line: 163, baseType: !32, size: 32, align: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !826, line: 164, baseType: !87, size: 64, align: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !832, file: !826, line: 165, baseType: !839, size: 64, align: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64, align: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!32, !823}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !832, file: !826, line: 166, baseType: !843, size: 64, align: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, align: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!32, !823, !200, !101}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !832, file: !826, line: 167, baseType: !847, size: 64, align: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!32, !823, !5}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !832, file: !826, line: 168, baseType: !851, size: 64, align: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!32, !823, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !832, file: !826, line: 169, baseType: !839, size: 64, align: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !832, file: !826, line: 171, baseType: !858, size: 64, align: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!32, !32, !710, !62, !5, !861, !4}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !832, file: !826, line: 173, baseType: !863, size: 64, align: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!32, !32, !710, !62, !710, !62, !4}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !832, file: !826, line: 176, baseType: !867, size: 160, align: 32, offset: 640)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, align: 32, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 5)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !832, file: !826, line: 177, baseType: !32, size: 32, align: 32, offset: 800)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !832, file: !826, line: 178, baseType: !32, size: 32, align: 32, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !832, file: !826, line: 180, baseType: !873, size: 64, align: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64, align: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!32, !823, !32, !32, !4}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !825, file: !826, line: 270, baseType: !877, size: 64, align: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !584, line: 177, baseType: !879)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !584, line: 177, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !826, line: 272, baseType: !87, size: 64, align: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !825, file: !826, line: 273, baseType: !4, size: 64, align: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !825, file: !826, line: 275, baseType: !883, size: 64, align: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !584, line: 138, baseType: !885)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !584, line: 138, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !825, file: !826, line: 277, baseType: !843, size: 64, align: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !763, file: !764, line: 527, baseType: !32, size: 32, align: 32, offset: 3648)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !763, file: !764, line: 528, baseType: !32, size: 32, align: 32, offset: 3680)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !763, file: !764, line: 529, baseType: !32, size: 32, align: 32, offset: 3712)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !763, file: !764, line: 534, baseType: !32, size: 32, align: 32, offset: 3744)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !763, file: !764, line: 535, baseType: !806, size: 16, align: 8, offset: 3776)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !763, file: !764, line: 540, baseType: !32, size: 32, align: 32, offset: 3808)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !763, file: !764, line: 541, baseType: !32, size: 32, align: 32, offset: 3840)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !763, file: !764, line: 542, baseType: !32, size: 32, align: 32, offset: 3872)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !763, file: !764, line: 543, baseType: !32, size: 32, align: 32, offset: 3904)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !763, file: !764, line: 549, baseType: !4, size: 64, align: 64, offset: 3968)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !763, file: !764, line: 550, baseType: !101, size: 64, align: 64, offset: 4032)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !763, file: !764, line: 551, baseType: !4, size: 64, align: 64, offset: 4096)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !763, file: !764, line: 552, baseType: !101, size: 64, align: 64, offset: 4160)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !763, file: !764, line: 592, baseType: !901, size: 4224, align: 64, offset: 4224)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !763, file: !764, line: 553, size: 4224, align: 64, elements: !902)
!902 = !{!903, !907, !908, !909, !910, !911, !912, !913, !931, !1027, !1032, !1033, !1034, !1035, !1036, !1040, !1046, !1047, !1048, !1049, !1182, !1183, !1184, !1185, !1229}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !901, file: !764, line: 555, baseType: !904, size: 1024, align: 8)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, align: 8, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !901, file: !764, line: 557, baseType: !904, size: 1024, align: 8, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !901, file: !764, line: 558, baseType: !32, size: 32, align: 32, offset: 2048)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !901, file: !764, line: 559, baseType: !904, size: 1024, align: 8, offset: 2080)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !901, file: !764, line: 560, baseType: !32, size: 32, align: 32, offset: 3104)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !901, file: !764, line: 561, baseType: !87, size: 64, align: 64, offset: 3136)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !901, file: !764, line: 562, baseType: !32, size: 32, align: 32, offset: 3200)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !901, file: !764, line: 564, baseType: !914, size: 64, align: 64, offset: 3264)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !574, line: 375, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !574, line: 418, size: 704, align: 64, elements: !918)
!918 = !{!919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !917, file: !574, line: 419, baseType: !32, size: 32, align: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !917, file: !574, line: 420, baseType: !7, size: 64, align: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !917, file: !574, line: 421, baseType: !87, size: 64, align: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !917, file: !574, line: 426, baseType: !87, size: 64, align: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !917, file: !574, line: 427, baseType: !87, size: 64, align: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !917, file: !574, line: 428, baseType: !87, size: 64, align: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !917, file: !574, line: 429, baseType: !87, size: 64, align: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !917, file: !574, line: 430, baseType: !87, size: 64, align: 64, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !917, file: !574, line: 431, baseType: !87, size: 64, align: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !917, file: !574, line: 432, baseType: !87, size: 64, align: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !917, file: !574, line: 433, baseType: !32, size: 32, align: 32, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !917, file: !574, line: 434, baseType: !32, size: 32, align: 32, offset: 672)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !901, file: !764, line: 566, baseType: !932, size: 64, align: 64, offset: 3328)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !584, line: 140, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !935, line: 135, size: 1152, align: 64, elements: !936)
!935 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!936 = !{!937, !938, !939, !951, !952, !953, !954, !955, !956, !968, !969, !970, !971, !972, !973, !974, !975, !1026}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !934, file: !935, line: 140, baseType: !32, size: 32, align: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !934, file: !935, line: 141, baseType: !32, size: 32, align: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !934, file: !935, line: 142, baseType: !940, size: 64, align: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !584, line: 120, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !943, line: 313, size: 192, align: 64, elements: !944)
!943 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!944 = !{!945, !947, !948, !949, !950}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !942, file: !943, line: 314, baseType: !946, size: 64, align: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !942, file: !943, line: 316, baseType: !32, size: 32, align: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !942, file: !943, line: 318, baseType: !32, size: 32, align: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !942, file: !943, line: 319, baseType: !32, size: 32, align: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !943, line: 320, baseType: !32, size: 32, align: 32, offset: 160)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !934, file: !935, line: 143, baseType: !940, size: 64, align: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !934, file: !935, line: 144, baseType: !199, size: 64, align: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !934, file: !935, line: 145, baseType: !940, size: 64, align: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !934, file: !935, line: 146, baseType: !940, size: 64, align: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !935, line: 147, baseType: !32, size: 32, align: 32, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !934, file: !935, line: 148, baseType: !957, size: 64, align: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !584, line: 123, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !943, line: 324, size: 832, align: 64, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !959, file: !943, line: 325, baseType: !32, size: 32, align: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !959, file: !943, line: 326, baseType: !941, size: 192, align: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !959, file: !943, line: 327, baseType: !941, size: 192, align: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !959, file: !943, line: 328, baseType: !941, size: 192, align: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !959, file: !943, line: 330, baseType: !966, size: 128, align: 64, offset: 640)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, align: 64, elements: !807)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !943, line: 333, baseType: !32, size: 32, align: 32, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !934, file: !935, line: 150, baseType: !940, size: 64, align: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !934, file: !935, line: 151, baseType: !940, size: 64, align: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !934, file: !935, line: 152, baseType: !5, size: 64, align: 64, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !934, file: !935, line: 153, baseType: !32, size: 32, align: 32, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !934, file: !935, line: 154, baseType: !940, size: 64, align: 64, offset: 768)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !934, file: !935, line: 155, baseType: !32, size: 32, align: 32, offset: 832)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !934, file: !935, line: 156, baseType: !651, size: 128, align: 64, offset: 896)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !934, file: !935, line: 157, baseType: !976, size: 64, align: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64, align: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !584, line: 141, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !935, line: 117, size: 576, align: 64, elements: !980)
!980 = !{!981, !982, !986, !992, !1001, !1002, !1003, !1004, !1005}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !979, file: !935, line: 118, baseType: !7, size: 64, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !979, file: !935, line: 120, baseType: !983, size: 64, align: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64, align: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!32, !932}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !979, file: !935, line: 121, baseType: !987, size: 64, align: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, align: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!32, !5, !990, !932}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !979, file: !935, line: 123, baseType: !993, size: 64, align: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64, align: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!32, !996, !940, !990, !990, !990, !998, !957}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !584, line: 121, baseType: !1000)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !584, line: 121, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !979, file: !935, line: 126, baseType: !983, size: 64, align: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !979, file: !935, line: 127, baseType: !983, size: 64, align: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !935, line: 128, baseType: !32, size: 32, align: 32, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !979, file: !935, line: 129, baseType: !10, size: 64, align: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !979, file: !935, line: 131, baseType: !1006, size: 64, align: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, align: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!32, !932, !32, !32, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !584, line: 125, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !943, line: 349, size: 192, align: 64, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !1011, file: !943, line: 350, baseType: !62, size: 32, align: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1011, file: !943, line: 351, baseType: !4, size: 64, align: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1011, file: !943, line: 357, baseType: !1016, size: 64, align: 64, offset: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !943, line: 352, size: 64, align: 64, elements: !1017)
!1017 = !{!1018, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !1016, file: !943, line: 354, baseType: !1019, size: 64, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, align: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !32, !32, !4}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !1016, file: !943, line: 356, baseType: !1023, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64, align: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!32, !32, !32, !1009}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !934, file: !935, line: 158, baseType: !877, size: 64, align: 64, offset: 1088)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !901, file: !764, line: 569, baseType: !1028, size: 64, align: 64, offset: 3392)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !1030, line: 741, baseType: !1031)
!1030 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !826, line: 147, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !901, file: !764, line: 572, baseType: !32, size: 32, align: 32, offset: 3456)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !901, file: !764, line: 573, baseType: !32, size: 32, align: 32, offset: 3488)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !901, file: !764, line: 575, baseType: !32, size: 32, align: 32, offset: 3520)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !901, file: !764, line: 576, baseType: !32, size: 32, align: 32, offset: 3552)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !901, file: !764, line: 577, baseType: !1037, size: 72, align: 8, offset: 3584)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, align: 8, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 9)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !901, file: !764, line: 578, baseType: !1041, size: 64, align: 64, offset: 3712)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64, align: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !1043, line: 192, size: 256, align: 64, elements: !1044)
!1043 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1042, file: !1043, line: 192, baseType: !660, size: 256, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !901, file: !764, line: 579, baseType: !32, size: 32, align: 32, offset: 3776)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !901, file: !764, line: 580, baseType: !32, size: 32, align: 32, offset: 3808)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !901, file: !764, line: 581, baseType: !5, size: 64, align: 64, offset: 3840)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !901, file: !764, line: 582, baseType: !1050, size: 64, align: 64, offset: 3904)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !584, line: 129, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !826, line: 308, size: 704, align: 64, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1083, !1087, !1091, !1092, !1176, !1177, !1181}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1053, file: !826, line: 309, baseType: !32, size: 32, align: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1053, file: !826, line: 310, baseType: !32, size: 32, align: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1053, file: !826, line: 312, baseType: !32, size: 32, align: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !1053, file: !826, line: 313, baseType: !32, size: 32, align: 32, offset: 96)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !826, line: 315, baseType: !87, size: 64, align: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1053, file: !826, line: 317, baseType: !1061, size: 64, align: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64, align: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!32, !1064, !710, !710, !32}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !584, line: 130, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !826, line: 449, size: 1344, align: 64, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1066, file: !826, line: 450, baseType: !1050, size: 64, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1066, file: !826, line: 451, baseType: !877, size: 64, align: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !1066, file: !826, line: 453, baseType: !32, size: 32, align: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !1066, file: !826, line: 454, baseType: !32, size: 32, align: 32, offset: 160)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !1066, file: !826, line: 455, baseType: !737, size: 128, align: 8, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1066, file: !826, line: 456, baseType: !737, size: 128, align: 8, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1066, file: !826, line: 457, baseType: !732, size: 256, align: 8, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1066, file: !826, line: 458, baseType: !32, size: 32, align: 32, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1066, file: !826, line: 459, baseType: !4, size: 64, align: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1066, file: !826, line: 460, baseType: !32, size: 32, align: 32, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !826, line: 461, baseType: !87, size: 64, align: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !1066, file: !826, line: 462, baseType: !4, size: 64, align: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !1066, file: !826, line: 463, baseType: !32, size: 32, align: 32, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !1066, file: !826, line: 464, baseType: !32, size: 32, align: 32, offset: 1056)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1066, file: !826, line: 465, baseType: !732, size: 256, align: 8, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !1053, file: !826, line: 320, baseType: !1084, size: 64, align: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64, align: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!32, !1064, !5, !710, !101}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1053, file: !826, line: 323, baseType: !1088, size: 64, align: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64, align: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!32, !1064}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1053, file: !826, line: 325, baseType: !32, size: 32, align: 32, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !1053, file: !826, line: 327, baseType: !1093, size: 64, align: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64, align: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!32, !1064, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64, align: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !1098, line: 561, baseType: !1099)
!1098 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !1098, line: 532, size: 128, align: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1099, file: !1098, line: 533, baseType: !32, size: 32, align: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1099, file: !1098, line: 560, baseType: !1103, size: 64, align: 64, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !1098, line: 534, size: 64, align: 64, elements: !1104)
!1104 = !{!1105, !1106, !1108, !1117, !1128, !1131, !1134, !1137, !1140, !1143, !1146, !1149, !1152, !1155, !1158, !1161, !1164, !1167, !1170, !1171, !1172}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1103, file: !1098, line: 535, baseType: !10, size: 64, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !1103, file: !1098, line: 536, baseType: !1107, size: 32, align: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !584, line: 99, baseType: !32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !1103, file: !1098, line: 537, baseType: !1109, size: 64, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !584, line: 98, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !1098, line: 247, size: 192, align: 64, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1111, file: !1098, line: 248, baseType: !32, size: 32, align: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1111, file: !1098, line: 249, baseType: !32, size: 32, align: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1111, file: !1098, line: 250, baseType: !5, size: 64, align: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1111, file: !1098, line: 256, baseType: !199, size: 64, align: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1103, file: !1098, line: 538, baseType: !1118, size: 64, align: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !584, line: 103, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !1098, line: 218, size: 320, align: 64, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !1120, file: !1098, line: 219, baseType: !7, size: 64, align: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !1120, file: !1098, line: 219, baseType: !7, size: 64, align: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1120, file: !1098, line: 220, baseType: !32, size: 32, align: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1120, file: !1098, line: 221, baseType: !32, size: 32, align: 32, offset: 160)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1120, file: !1098, line: 222, baseType: !710, size: 64, align: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !1098, line: 223, baseType: !32, size: 32, align: 32, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1103, file: !1098, line: 539, baseType: !1129, size: 64, align: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !584, line: 83, baseType: !1111)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !1103, file: !1098, line: 540, baseType: !1132, size: 64, align: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !584, line: 84, baseType: !1111)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !1103, file: !1098, line: 541, baseType: !1135, size: 64, align: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64, align: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !584, line: 85, baseType: !1111)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !1103, file: !1098, line: 542, baseType: !1138, size: 64, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !584, line: 86, baseType: !1111)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !1103, file: !1098, line: 543, baseType: !1141, size: 64, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !584, line: 87, baseType: !1111)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !1103, file: !1098, line: 544, baseType: !1144, size: 64, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !584, line: 88, baseType: !1111)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !1103, file: !1098, line: 545, baseType: !1147, size: 64, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !584, line: 89, baseType: !1111)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !1103, file: !1098, line: 546, baseType: !1150, size: 64, align: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64, align: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !584, line: 90, baseType: !1111)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !1103, file: !1098, line: 547, baseType: !1153, size: 64, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !584, line: 92, baseType: !1111)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !1103, file: !1098, line: 548, baseType: !1156, size: 64, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !584, line: 91, baseType: !1111)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !1103, file: !1098, line: 549, baseType: !1159, size: 64, align: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64, align: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !584, line: 93, baseType: !1111)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !1103, file: !1098, line: 550, baseType: !1162, size: 64, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64, align: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !584, line: 95, baseType: !1111)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !1103, file: !1098, line: 551, baseType: !1165, size: 64, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !584, line: 96, baseType: !1111)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !1103, file: !1098, line: 552, baseType: !1168, size: 64, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !584, line: 97, baseType: !1111)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1103, file: !1098, line: 557, baseType: !1109, size: 64, align: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1103, file: !1098, line: 558, baseType: !1109, size: 64, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !1103, file: !1098, line: 559, baseType: !1173, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !1098, line: 307, baseType: !1175)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !1098, line: 307, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !1053, file: !826, line: 329, baseType: !1093, size: 64, align: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1053, file: !826, line: 331, baseType: !1178, size: 64, align: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64, align: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!32, !1064, !32, !32, !4}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1053, file: !826, line: 333, baseType: !4, size: 64, align: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !901, file: !764, line: 583, baseType: !829, size: 64, align: 64, offset: 3968)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !901, file: !764, line: 584, baseType: !32, size: 32, align: 32, offset: 4032)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !901, file: !764, line: 585, baseType: !32, size: 32, align: 32, offset: 4064)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !901, file: !764, line: 587, baseType: !1186, size: 64, align: 64, offset: 4096)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !574, line: 908, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !574, line: 912, size: 192, align: 64, elements: !1190)
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1189, file: !574, line: 913, baseType: !32, size: 32, align: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1189, file: !574, line: 914, baseType: !7, size: 64, align: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1189, file: !574, line: 916, baseType: !1194, size: 64, align: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !1196, line: 29, baseType: !1197)
!1196 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !1196, line: 13, size: 512, align: 64, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1215, !1219, !1223, !1224, !1228}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !1196, line: 14, baseType: !32, size: 32, align: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1197, file: !1196, line: 15, baseType: !7, size: 64, align: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1197, file: !1196, line: 16, baseType: !1202, size: 64, align: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64, align: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!32, !1205}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !1196, line: 11, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !1196, line: 31, size: 448, align: 64, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1207, file: !1196, line: 32, baseType: !1194, size: 64, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !1207, file: !1196, line: 33, baseType: !87, size: 64, align: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !1207, file: !1196, line: 34, baseType: !87, size: 64, align: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !1207, file: !1196, line: 35, baseType: !87, size: 64, align: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !1207, file: !1196, line: 36, baseType: !87, size: 64, align: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1207, file: !1196, line: 37, baseType: !651, size: 128, align: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1197, file: !1196, line: 17, baseType: !1216, size: 64, align: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64, align: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1205}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1197, file: !1196, line: 18, baseType: !1220, size: 64, align: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64, align: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!32, !1205, !5, !62, !5, !62}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !1197, file: !1196, line: 21, baseType: !1220, size: 64, align: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1197, file: !1196, line: 27, baseType: !1225, size: 64, align: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64, align: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!199}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1197, file: !1196, line: 28, baseType: !1225, size: 64, align: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !901, file: !764, line: 591, baseType: !32, size: 32, align: 32, offset: 4160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !763, file: !764, line: 595, baseType: !774, size: 512, align: 8, offset: 8448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !763, file: !764, line: 596, baseType: !6, size: 8, align: 8, offset: 8960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !763, file: !764, line: 597, baseType: !774, size: 512, align: 8, offset: 8968)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !763, file: !764, line: 598, baseType: !6, size: 8, align: 8, offset: 9480)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !763, file: !764, line: 599, baseType: !32, size: 32, align: 32, offset: 9504)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !763, file: !764, line: 605, baseType: !32, size: 32, align: 32, offset: 9536)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !763, file: !764, line: 615, baseType: !9, size: 8, align: 8, offset: 9568)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !763, file: !764, line: 628, baseType: !5, size: 64, align: 64, offset: 9600)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !763, file: !764, line: 629, baseType: !62, size: 32, align: 32, offset: 9664)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !585, file: !574, line: 1493, baseType: !1240, size: 64, align: 64, offset: 1088)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64, align: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !1242, line: 182, size: 7168, align: 64, elements: !1243)
!1242 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1243 = !{!1244, !1245, !1247, !1248, !1249, !1250, !1251, !1257, !1258, !1259, !1260, !1261, !1262, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1645, !1646, !1652, !1660, !1661, !1662, !1663, !1667, !1668, !1669}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !1241, file: !1242, line: 183, baseType: !62, size: 32, align: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1241, file: !1242, line: 184, baseType: !1246, size: 2048, align: 8, offset: 32)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, align: 8, elements: !97)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !1241, file: !1242, line: 185, baseType: !1246, size: 2048, align: 8, offset: 2080)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !1241, file: !1242, line: 186, baseType: !62, size: 32, align: 32, offset: 4128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !1241, file: !1242, line: 192, baseType: !65, size: 16, align: 16, offset: 4160)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !1241, file: !1242, line: 193, baseType: !65, size: 16, align: 16, offset: 4176)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1241, file: !1242, line: 195, baseType: !1252, size: 128, align: 64, offset: 4224)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !1242, line: 133, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !1242, line: 128, size: 128, align: 64, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1253, file: !1242, line: 129, baseType: !87, size: 64, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !1253, file: !1242, line: 131, baseType: !769, size: 64, align: 8, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !1241, file: !1242, line: 197, baseType: !1252, size: 128, align: 64, offset: 4352)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !1241, file: !1242, line: 199, baseType: !65, size: 16, align: 16, offset: 4480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !1241, file: !1242, line: 200, baseType: !65, size: 16, align: 16, offset: 4496)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !1241, file: !1242, line: 201, baseType: !65, size: 16, align: 16, offset: 4512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !1241, file: !1242, line: 203, baseType: !769, size: 64, align: 8, offset: 4528)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !1241, file: !1242, line: 205, baseType: !1263, size: 128, align: 64, offset: 4608)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !1242, line: 174, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !1242, line: 171, size: 128, align: 64, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1264, file: !1242, line: 172, baseType: !65, size: 16, align: 16)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1264, file: !1242, line: 173, baseType: !1268, size: 64, align: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !1269, line: 70, baseType: !1270)
!1269 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64, align: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !1269, line: 70, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !1241, file: !1242, line: 206, baseType: !1263, size: 128, align: 64, offset: 4736)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !1241, file: !1242, line: 208, baseType: !1268, size: 64, align: 64, offset: 4864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !1241, file: !1242, line: 210, baseType: !1268, size: 64, align: 64, offset: 4928)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !1241, file: !1242, line: 216, baseType: !1263, size: 128, align: 64, offset: 4992)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1241, file: !1242, line: 218, baseType: !62, size: 32, align: 32, offset: 5120)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !1241, file: !1242, line: 219, baseType: !62, size: 32, align: 32, offset: 5152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1241, file: !1242, line: 220, baseType: !62, size: 32, align: 32, offset: 5184)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !1241, file: !1242, line: 221, baseType: !1280, size: 704, align: 64, offset: 5248)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !1242, line: 147, size: 704, align: 64, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1280, file: !1242, line: 148, baseType: !6, size: 8, align: 8)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !1280, file: !1242, line: 149, baseType: !87, size: 64, align: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1280, file: !1242, line: 150, baseType: !65, size: 16, align: 16, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !1280, file: !1242, line: 151, baseType: !87, size: 64, align: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !1280, file: !1242, line: 152, baseType: !87, size: 64, align: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !1280, file: !1242, line: 153, baseType: !62, size: 32, align: 32, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !1280, file: !1242, line: 154, baseType: !1289, size: 320, align: 64, offset: 384)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !1242, line: 135, size: 320, align: 64, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1644}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !1289, file: !1242, line: 136, baseType: !1064, size: 64, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !1289, file: !1242, line: 137, baseType: !823, size: 64, align: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1289, file: !1242, line: 139, baseType: !1205, size: 64, align: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1289, file: !1242, line: 143, baseType: !1295, size: 64, align: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !574, line: 376, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !574, line: 498, size: 2816, align: 64, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1314, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1631, !1632, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !1297, file: !574, line: 499, baseType: !32, size: 32, align: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !1297, file: !574, line: 502, baseType: !62, size: 32, align: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !1297, file: !574, line: 503, baseType: !769, size: 64, align: 8, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !1297, file: !574, line: 504, baseType: !32, size: 32, align: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !1297, file: !574, line: 505, baseType: !742, size: 384, align: 8, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1297, file: !574, line: 507, baseType: !62, size: 32, align: 32, offset: 544)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !1297, file: !574, line: 508, baseType: !732, size: 256, align: 8, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1297, file: !574, line: 514, baseType: !62, size: 32, align: 32, offset: 832)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1297, file: !574, line: 515, baseType: !732, size: 256, align: 8, offset: 864)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1297, file: !574, line: 521, baseType: !10, size: 64, align: 64, offset: 1152)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !1297, file: !574, line: 522, baseType: !10, size: 64, align: 64, offset: 1216)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !1297, file: !574, line: 529, baseType: !32, size: 32, align: 32, offset: 1280)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !1297, file: !574, line: 531, baseType: !1312, size: 64, align: 64, offset: 1344)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64, align: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !574, line: 531, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1297, file: !574, line: 538, baseType: !1315, size: 64, align: 64, offset: 1408)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !584, line: 154, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !1043, line: 270, size: 1472, align: 64, elements: !1318)
!1318 = !{!1319, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1575, !1579, !1584, !1586, !1597, !1601}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !1317, file: !1043, line: 271, baseType: !1320, size: 64, align: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !1043, line: 254, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !1043, line: 242, size: 832, align: 64, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1333, !1347, !1356, !1357, !1534, !1535, !1536, !1541}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1322, file: !1043, line: 243, baseType: !1129, size: 64, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !1322, file: !1043, line: 244, baseType: !1129, size: 64, align: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1322, file: !1043, line: 245, baseType: !1327, size: 64, align: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64, align: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !584, line: 155, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !1043, line: 143, size: 128, align: 64, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !1329, file: !1043, line: 144, baseType: !1118, size: 64, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !1329, file: !1043, line: 145, baseType: !1096, size: 64, align: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1322, file: !1043, line: 246, baseType: !1334, size: 64, align: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !584, line: 159, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !1043, line: 179, size: 320, align: 64, elements: !1337)
!1337 = !{!1338, !1343, !1344, !1345, !1346}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1336, file: !1043, line: 180, baseType: !1339, size: 64, align: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64, align: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !1043, line: 175, size: 256, align: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1340, file: !1043, line: 175, baseType: !660, size: 256, align: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1336, file: !1043, line: 181, baseType: !32, size: 32, align: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1336, file: !1043, line: 183, baseType: !685, size: 64, align: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !1336, file: !1043, line: 188, baseType: !5, size: 64, align: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !1336, file: !1043, line: 189, baseType: !32, size: 32, align: 32, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !1322, file: !1043, line: 247, baseType: !1348, size: 64, align: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !1043, line: 155, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !1043, line: 152, size: 128, align: 64, elements: !1351)
!1351 = !{!1352, !1355}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !1350, file: !1043, line: 153, baseType: !1353, size: 64, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64, align: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !584, line: 94, baseType: !1111)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !1350, file: !1043, line: 154, baseType: !1353, size: 64, align: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !1322, file: !1043, line: 248, baseType: !1334, size: 64, align: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1322, file: !1043, line: 249, baseType: !1358, size: 64, align: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !584, line: 160, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !1043, line: 157, size: 192, align: 64, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !1360, file: !1043, line: 158, baseType: !1327, size: 64, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !1360, file: !1043, line: 159, baseType: !1135, size: 64, align: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1360, file: !1043, line: 160, baseType: !1365, size: 64, align: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !584, line: 133, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !826, line: 129, size: 448, align: 64, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1377, !1378, !1528, !1529}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !826, line: 130, baseType: !32, size: 32, align: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !1367, file: !826, line: 131, baseType: !32, size: 32, align: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1367, file: !826, line: 132, baseType: !32, size: 32, align: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !1367, file: !826, line: 133, baseType: !1373, size: 64, align: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !584, line: 135, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !584, line: 135, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1367, file: !826, line: 134, baseType: !877, size: 64, align: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1367, file: !826, line: 149, baseType: !1379, size: 64, align: 64, offset: 256)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !826, line: 135, size: 64, align: 64, elements: !1380)
!1380 = !{!1381, !1382, !1455, !1524, !1526}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1379, file: !826, line: 136, baseType: !10, size: 64, align: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !1379, file: !826, line: 138, baseType: !1383, size: 64, align: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64, align: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !1385, line: 132, size: 1344, align: 64, elements: !1386)
!1385 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1386 = !{!1387, !1388, !1389, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1454}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1384, file: !1385, line: 137, baseType: !32, size: 32, align: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1384, file: !1385, line: 138, baseType: !199, size: 64, align: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1384, file: !1385, line: 139, baseType: !1390, size: 64, align: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !584, line: 147, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !1385, line: 85, size: 896, align: 64, elements: !1394)
!1394 = !{!1395, !1396, !1402, !1403, !1404, !1405, !1409, !1413, !1417, !1418, !1419, !1420, !1426, !1430}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1393, file: !1385, line: 86, baseType: !7, size: 64, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !1393, file: !1385, line: 87, baseType: !1397, size: 64, align: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64, align: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!32, !32, !710, !5, !1400, !32}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64, align: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !584, line: 146, baseType: !1384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !1393, file: !1385, line: 89, baseType: !1397, size: 64, align: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !1393, file: !1385, line: 91, baseType: !1397, size: 64, align: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !1393, file: !1385, line: 93, baseType: !1397, size: 64, align: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !1393, file: !1385, line: 96, baseType: !1406, size: 64, align: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64, align: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!32, !940, !990, !1400, !998}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1393, file: !1385, line: 98, baseType: !1410, size: 64, align: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64, align: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!32, !940, !990, !990, !990, !998, !957}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1393, file: !1385, line: 101, baseType: !1414, size: 64, align: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64, align: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!32, !1400}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1393, file: !1385, line: 103, baseType: !1414, size: 64, align: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1393, file: !1385, line: 105, baseType: !32, size: 32, align: 32, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1393, file: !1385, line: 107, baseType: !10, size: 64, align: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !1393, file: !1385, line: 116, baseType: !1421, size: 64, align: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64, align: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!32, !32, !710, !62, !5, !861, !1424}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64, align: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !1393, file: !1385, line: 120, baseType: !1427, size: 64, align: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64, align: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!32, !32, !710, !62, !710, !62, !1424}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !1393, file: !1385, line: 129, baseType: !1431, size: 64, align: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, align: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!32, !1400, !32, !940, !1009}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1384, file: !1385, line: 141, baseType: !877, size: 64, align: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1384, file: !1385, line: 142, baseType: !940, size: 64, align: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1384, file: !1385, line: 143, baseType: !940, size: 64, align: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1384, file: !1385, line: 144, baseType: !940, size: 64, align: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1384, file: !1385, line: 145, baseType: !940, size: 64, align: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1384, file: !1385, line: 146, baseType: !940, size: 64, align: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !1384, file: !1385, line: 147, baseType: !940, size: 64, align: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !1384, file: !1385, line: 148, baseType: !940, size: 64, align: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !1384, file: !1385, line: 149, baseType: !940, size: 64, align: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1384, file: !1385, line: 151, baseType: !651, size: 128, align: 64, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1384, file: !1385, line: 152, baseType: !32, size: 32, align: 32, offset: 896)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1385, line: 153, baseType: !32, size: 32, align: 32, offset: 928)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !1384, file: !1385, line: 155, baseType: !957, size: 64, align: 64, offset: 960)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !1384, file: !1385, line: 156, baseType: !957, size: 64, align: 64, offset: 1024)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !1384, file: !1385, line: 157, baseType: !957, size: 64, align: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !1384, file: !1385, line: 162, baseType: !10, size: 64, align: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !1384, file: !1385, line: 163, baseType: !1451, size: 64, align: 64, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64, align: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !584, line: 122, baseType: !1453)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !584, line: 122, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !1384, file: !1385, line: 164, baseType: !1451, size: 64, align: 64, offset: 1280)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !1379, file: !826, line: 141, baseType: !1456, size: 64, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64, align: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !1458, line: 155, size: 1088, align: 64, elements: !1459)
!1458 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1523}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1457, file: !1458, line: 160, baseType: !32, size: 32, align: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1457, file: !1458, line: 161, baseType: !199, size: 64, align: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !1457, file: !1458, line: 162, baseType: !32, size: 32, align: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1457, file: !1458, line: 163, baseType: !940, size: 64, align: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1457, file: !1458, line: 164, baseType: !940, size: 64, align: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1457, file: !1458, line: 165, baseType: !940, size: 64, align: 64, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !1457, file: !1458, line: 166, baseType: !940, size: 64, align: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !1457, file: !1458, line: 167, baseType: !940, size: 64, align: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !1457, file: !1458, line: 168, baseType: !940, size: 64, align: 64, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1457, file: !1458, line: 169, baseType: !940, size: 64, align: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1458, line: 170, baseType: !32, size: 32, align: 32, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !1457, file: !1458, line: 172, baseType: !957, size: 64, align: 64, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1457, file: !1458, line: 173, baseType: !32, size: 32, align: 32, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1457, file: !1458, line: 174, baseType: !651, size: 128, align: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1457, file: !1458, line: 175, baseType: !1475, size: 64, align: 64, offset: 960)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64, align: 64)
!1476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !584, line: 144, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !1458, line: 129, size: 768, align: 64, elements: !1479)
!1479 = !{!1480, !1481, !1493, !1498, !1502, !1506, !1510, !1514, !1515, !1516, !1517, !1522}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1478, file: !1458, line: 130, baseType: !7, size: 64, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !1478, file: !1458, line: 131, baseType: !1482, size: 64, align: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64, align: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1485, !710, !32, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !1458, line: 127, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !1458, line: 124, size: 128, align: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1487, file: !1458, line: 125, baseType: !940, size: 64, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1487, file: !1458, line: 126, baseType: !940, size: 64, align: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64, align: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !584, line: 143, baseType: !1457)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !1478, file: !1458, line: 132, baseType: !1494, size: 64, align: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64, align: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!32, !1491, !998, !1497, !1497}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !1478, file: !1458, line: 134, baseType: !1499, size: 64, align: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64, align: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!32, !710, !32, !1485, !1491}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !1478, file: !1458, line: 136, baseType: !1503, size: 64, align: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64, align: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!32, !1491, !940, !940, !940, !940, !940, !940, !998, !957}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1478, file: !1458, line: 140, baseType: !1507, size: 64, align: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64, align: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!32, !1491, !940, !940, !990, !990, !998, !957}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1478, file: !1458, line: 142, baseType: !1511, size: 64, align: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64, align: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!32, !1491}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1478, file: !1458, line: 143, baseType: !1511, size: 64, align: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !1458, line: 144, baseType: !32, size: 32, align: 32, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1478, file: !1458, line: 145, baseType: !10, size: 64, align: 64, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !1478, file: !1458, line: 147, baseType: !1518, size: 64, align: 64, offset: 640)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64, align: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!32, !1491, !32, !710, !32, !1521, !946, !1009}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !1478, file: !1458, line: 152, baseType: !1511, size: 64, align: 64, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1457, file: !1458, line: 177, baseType: !877, size: 64, align: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1379, file: !826, line: 144, baseType: !1525, size: 64, align: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64, align: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !1379, file: !826, line: 147, baseType: !1527, size: 64, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !1367, file: !826, line: 150, baseType: !32, size: 32, align: 32, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1367, file: !826, line: 151, baseType: !1530, size: 64, align: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64, align: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !1043, line: 223, size: 256, align: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1531, file: !1043, line: 223, baseType: !660, size: 256, align: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !1322, file: !1043, line: 250, baseType: !1135, size: 64, align: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !1322, file: !1043, line: 251, baseType: !1135, size: 64, align: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1322, file: !1043, line: 252, baseType: !1537, size: 64, align: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64, align: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !1043, line: 204, size: 256, align: 64, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1538, file: !1043, line: 204, baseType: !660, size: 256, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1322, file: !1043, line: 253, baseType: !1542, size: 192, align: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !1098, line: 269, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !1098, line: 265, size: 192, align: 64, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1543, file: !1098, line: 266, baseType: !5, size: 64, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1543, file: !1098, line: 267, baseType: !199, size: 64, align: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1543, file: !1098, line: 268, baseType: !32, size: 32, align: 32, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1317, file: !1043, line: 272, baseType: !1327, size: 64, align: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1317, file: !1043, line: 273, baseType: !1135, size: 64, align: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1317, file: !1043, line: 274, baseType: !32, size: 32, align: 32, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1317, file: !1043, line: 275, baseType: !32, size: 32, align: 32, offset: 224)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1317, file: !1043, line: 276, baseType: !10, size: 64, align: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1317, file: !1043, line: 277, baseType: !651, size: 128, align: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !1317, file: !1043, line: 279, baseType: !199, size: 64, align: 64, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !1317, file: !1043, line: 280, baseType: !199, size: 64, align: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !1317, file: !1043, line: 281, baseType: !87, size: 64, align: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !1317, file: !1043, line: 282, baseType: !87, size: 64, align: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !1317, file: !1043, line: 283, baseType: !87, size: 64, align: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !1317, file: !1043, line: 284, baseType: !87, size: 64, align: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !1317, file: !1043, line: 285, baseType: !1138, size: 64, align: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1317, file: !1043, line: 286, baseType: !1562, size: 64, align: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !584, line: 186, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !1565, line: 262, size: 192, align: 64, elements: !1566)
!1565 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1566 = !{!1567, !1568, !1574}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1564, file: !1565, line: 263, baseType: !1138, size: 64, align: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1564, file: !1565, line: 264, baseType: !1569, size: 64, align: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !1565, line: 209, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !1565, line: 220, size: 256, align: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1571, file: !1565, line: 220, baseType: !660, size: 256, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1564, file: !1565, line: 265, baseType: !1129, size: 64, align: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !1317, file: !1043, line: 287, baseType: !1576, size: 64, align: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64, align: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !584, line: 184, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !584, line: 184, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !1317, file: !1043, line: 288, baseType: !1580, size: 64, align: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64, align: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !1565, line: 259, size: 256, align: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1581, file: !1565, line: 259, baseType: !660, size: 256, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !1317, file: !1043, line: 289, baseType: !1585, size: 64, align: 64, offset: 1088)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1317, file: !1043, line: 290, baseType: !1587, size: 64, align: 64, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !584, line: 189, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !1565, line: 332, size: 128, align: 64, elements: !1590)
!1590 = !{!1591, !1596}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !1589, file: !1565, line: 333, baseType: !1592, size: 64, align: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64, align: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !1565, line: 330, size: 256, align: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1593, file: !1565, line: 330, baseType: !660, size: 256, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !1589, file: !1565, line: 334, baseType: !1592, size: 64, align: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1317, file: !1043, line: 296, baseType: !1598, size: 160, align: 8, offset: 1216)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, align: 8, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: 20)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1317, file: !1043, line: 298, baseType: !1602, size: 64, align: 64, offset: 1408)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !1043, line: 268, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !1043, line: 262, size: 320, align: 64, elements: !1605)
!1605 = !{!1606, !1611, !1612, !1613, !1614}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1604, file: !1043, line: 263, baseType: !1607, size: 64, align: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64, align: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !1098, line: 801, size: 256, align: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1608, file: !1098, line: 801, baseType: !660, size: 256, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !1604, file: !1043, line: 264, baseType: !1607, size: 64, align: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1604, file: !1043, line: 265, baseType: !1168, size: 64, align: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !1604, file: !1043, line: 266, baseType: !1138, size: 64, align: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1604, file: !1043, line: 267, baseType: !1615, size: 64, align: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64, align: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !1098, line: 170, size: 256, align: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1616, file: !1098, line: 170, baseType: !660, size: 256, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !1297, file: !574, line: 543, baseType: !199, size: 64, align: 64, offset: 1472)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1297, file: !574, line: 544, baseType: !32, size: 32, align: 32, offset: 1536)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1297, file: !574, line: 545, baseType: !199, size: 64, align: 64, offset: 1600)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1297, file: !574, line: 546, baseType: !199, size: 64, align: 64, offset: 1664)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !1297, file: !574, line: 547, baseType: !62, size: 32, align: 32, offset: 1728)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1297, file: !574, line: 548, baseType: !914, size: 64, align: 64, offset: 1792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !1297, file: !574, line: 549, baseType: !87, size: 64, align: 64, offset: 1856)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !1297, file: !574, line: 551, baseType: !1627, size: 64, align: 64, offset: 1920)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64, align: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !574, line: 380, size: 256, align: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1628, file: !574, line: 380, baseType: !660, size: 256, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1297, file: !574, line: 552, baseType: !651, size: 128, align: 64, offset: 1984)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1297, file: !574, line: 557, baseType: !1633, size: 64, align: 64, offset: 2112)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1297, file: !574, line: 557, baseType: !1633, size: 64, align: 64, offset: 2176)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !1297, file: !574, line: 559, baseType: !10, size: 64, align: 64, offset: 2240)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1297, file: !574, line: 561, baseType: !101, size: 64, align: 64, offset: 2304)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1297, file: !574, line: 562, baseType: !5, size: 64, align: 64, offset: 2368)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1297, file: !574, line: 563, baseType: !101, size: 64, align: 64, offset: 2432)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1297, file: !574, line: 564, baseType: !5, size: 64, align: 64, offset: 2496)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !1297, file: !574, line: 567, baseType: !5, size: 64, align: 64, offset: 2560)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !1297, file: !574, line: 568, baseType: !101, size: 64, align: 64, offset: 2624)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !1297, file: !574, line: 569, baseType: !199, size: 64, align: 64, offset: 2688)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !1297, file: !574, line: 572, baseType: !10, size: 64, align: 64, offset: 2752)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1289, file: !1242, line: 144, baseType: !65, size: 16, align: 16, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !1241, file: !1242, line: 222, baseType: !1280, size: 704, align: 64, offset: 5952)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1241, file: !1242, line: 223, baseType: !1647, size: 96, align: 32, offset: 6656)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !1242, line: 162, size: 96, align: 32, elements: !1648)
!1648 = !{!1649, !1650, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1647, file: !1242, line: 164, baseType: !62, size: 32, align: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1647, file: !1242, line: 166, baseType: !62, size: 32, align: 32, offset: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1647, file: !1242, line: 168, baseType: !62, size: 32, align: 32, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !1241, file: !1242, line: 227, baseType: !1653, size: 128, align: 64, offset: 6784)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1654, line: 30, size: 128, align: 64, elements: !1655)
!1654 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1655 = !{!1656, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1653, file: !1654, line: 32, baseType: !1657, size: 64, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 139, baseType: !199)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1653, file: !1654, line: 33, baseType: !1659, size: 64, align: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !198, line: 141, baseType: !199)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !1241, file: !1242, line: 229, baseType: !65, size: 16, align: 16, offset: 6912)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1241, file: !1242, line: 234, baseType: !806, size: 16, align: 8, offset: 6928)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1241, file: !1242, line: 235, baseType: !62, size: 32, align: 32, offset: 6944)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1241, file: !1242, line: 236, baseType: !1664, size: 96, align: 8, offset: 6976)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, align: 8, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 12)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1241, file: !1242, line: 237, baseType: !62, size: 32, align: 32, offset: 7072)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !1241, file: !1242, line: 238, baseType: !62, size: 32, align: 32, offset: 7104)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !1241, file: !1242, line: 243, baseType: !62, size: 32, align: 32, offset: 7136)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !585, file: !574, line: 1494, baseType: !32, size: 32, align: 32, offset: 1152)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !585, file: !574, line: 1497, baseType: !1672, size: 64, align: 64, offset: 1216)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64, align: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !32, !32, !32, !200, !101, !582, !4}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !585, file: !574, line: 1499, baseType: !4, size: 64, align: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !585, file: !574, line: 1500, baseType: !32, size: 32, align: 32, offset: 1344)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !585, file: !574, line: 1501, baseType: !1678, size: 64, align: 64, offset: 1408)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !1680, line: 177, baseType: !1681)
!1680 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !1680, line: 167, size: 512, align: 64, elements: !1682)
!1682 = !{!1683, !1684, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1681, file: !1680, line: 168, baseType: !10, size: 64, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !1681, file: !1680, line: 169, baseType: !1685, size: 64, align: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1686, line: 75, baseType: !1657)
!1686 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !1681, file: !1680, line: 170, baseType: !87, size: 64, align: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !1680, line: 171, baseType: !87, size: 64, align: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1681, file: !1680, line: 172, baseType: !32, size: 32, align: 32, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1681, file: !1680, line: 173, baseType: !32, size: 32, align: 32, offset: 288)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1681, file: !1680, line: 174, baseType: !32, size: 32, align: 32, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !1681, file: !1680, line: 175, baseType: !1607, size: 64, align: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1681, file: !1680, line: 176, baseType: !1694, size: 64, align: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !1680, line: 159, baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !1680, line: 159, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !585, file: !574, line: 1507, baseType: !1627, size: 64, align: 64, offset: 1472)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !585, file: !574, line: 1508, baseType: !1627, size: 64, align: 64, offset: 1536)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !585, file: !574, line: 1513, baseType: !32, size: 32, align: 32, offset: 1600)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !585, file: !574, line: 1514, baseType: !1064, size: 64, align: 64, offset: 1664)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !585, file: !574, line: 1515, baseType: !823, size: 64, align: 64, offset: 1728)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !585, file: !574, line: 1517, baseType: !1205, size: 64, align: 64, offset: 1792)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !585, file: !574, line: 1521, baseType: !1064, size: 64, align: 64, offset: 1856)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !585, file: !574, line: 1522, baseType: !823, size: 64, align: 64, offset: 1920)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !585, file: !574, line: 1524, baseType: !1205, size: 64, align: 64, offset: 1984)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !585, file: !574, line: 1531, baseType: !1707, size: 64, align: 64, offset: 2048)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64, align: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !574, line: 1035, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !585, file: !574, line: 1536, baseType: !62, size: 32, align: 32, offset: 2112)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !585, file: !574, line: 1537, baseType: !732, size: 256, align: 8, offset: 2144)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !585, file: !574, line: 1539, baseType: !1295, size: 64, align: 64, offset: 2432)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !585, file: !574, line: 1541, baseType: !1713, size: 64, align: 64, offset: 2496)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !574, line: 905, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64, align: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!32, !1717, !5, !861}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64, align: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !585, file: !574, line: 1547, baseType: !32, size: 32, align: 32, offset: 2560)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !585, file: !574, line: 1549, baseType: !1721, size: 64, align: 64, offset: 2624)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64, align: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!32, !32, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !584, line: 162, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !1680, line: 236, size: 1984, align: 64, elements: !1727)
!1727 = !{!1728, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1726, file: !1680, line: 237, baseType: !1729, size: 64, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !584, line: 161, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !1680, line: 186, size: 1152, align: 64, elements: !1732)
!1732 = !{!1733, !1734, !1739, !1744, !1745, !1749, !1750, !1755, !1759, !1760, !1827, !1831, !1835, !1843, !1851, !1852, !1853}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1731, file: !1680, line: 188, baseType: !32, size: 32, align: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !1731, file: !1680, line: 189, baseType: !1735, size: 64, align: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64, align: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !1680, line: 137, size: 256, align: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1736, file: !1680, line: 137, baseType: !660, size: 256, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !1731, file: !1680, line: 191, baseType: !1740, size: 64, align: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64, align: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !1680, line: 136, size: 256, align: 64, elements: !1742)
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1741, file: !1680, line: 136, baseType: !660, size: 256, align: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1731, file: !1680, line: 192, baseType: !1678, size: 64, align: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1731, file: !1680, line: 195, baseType: !1746, size: 64, align: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64, align: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!32, !1724}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1731, file: !1680, line: 197, baseType: !1721, size: 64, align: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1731, file: !1680, line: 199, baseType: !1751, size: 64, align: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64, align: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!32, !1754, !1724, !1315}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64, align: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1731, file: !1680, line: 201, baseType: !1756, size: 64, align: 64, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64, align: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!32, !1724, !1315, !1315}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1731, file: !1680, line: 203, baseType: !1746, size: 64, align: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1731, file: !1680, line: 205, baseType: !1761, size: 64, align: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64, align: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!32, !1724, !1764, !1315}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64, align: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !584, line: 156, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !1043, line: 452, size: 960, align: 64, elements: !1768)
!1768 = !{!1769, !1786, !1787, !1788, !1789, !1790, !1791, !1813, !1814, !1815, !1816, !1817, !1818, !1821, !1826}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1767, file: !1043, line: 454, baseType: !1770, size: 64, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !1043, line: 450, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !1043, line: 441, size: 640, align: 64, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1784, !1785}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1772, file: !1043, line: 442, baseType: !1129, size: 64, align: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1772, file: !1043, line: 443, baseType: !1327, size: 64, align: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1772, file: !1043, line: 444, baseType: !1334, size: 64, align: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1772, file: !1043, line: 445, baseType: !1353, size: 64, align: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1772, file: !1043, line: 446, baseType: !1353, size: 64, align: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1772, file: !1043, line: 447, baseType: !1780, size: 64, align: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64, align: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !1043, line: 438, size: 256, align: 64, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1781, file: !1043, line: 438, baseType: !660, size: 256, align: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1772, file: !1043, line: 448, baseType: !1537, size: 64, align: 64, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1772, file: !1043, line: 449, baseType: !1542, size: 192, align: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1767, file: !1043, line: 455, baseType: !1327, size: 64, align: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1767, file: !1043, line: 456, baseType: !1135, size: 64, align: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1767, file: !1043, line: 457, baseType: !32, size: 32, align: 32, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1043, line: 458, baseType: !32, size: 32, align: 32, offset: 224)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1767, file: !1043, line: 460, baseType: !1562, size: 64, align: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1767, file: !1043, line: 461, baseType: !1792, size: 64, align: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !584, line: 188, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !1565, line: 356, size: 256, align: 64, elements: !1795)
!1795 = !{!1796, !1808, !1809, !1810, !1811, !1812}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !1794, file: !1565, line: 357, baseType: !1797, size: 64, align: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64, align: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !1565, line: 234, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !1565, line: 226, size: 192, align: 64, elements: !1800)
!1800 = !{!1801, !1802, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !1565, line: 227, baseType: !32, size: 32, align: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1799, file: !1565, line: 231, baseType: !1803, size: 64, align: 64, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1565, line: 228, size: 64, align: 64, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1803, file: !1565, line: 229, baseType: !1569, size: 64, align: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !1803, file: !1565, line: 230, baseType: !1339, size: 64, align: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !1799, file: !1565, line: 233, baseType: !1334, size: 64, align: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !1794, file: !1565, line: 358, baseType: !32, size: 32, align: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !1794, file: !1565, line: 359, baseType: !32, size: 32, align: 32, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !1794, file: !1565, line: 360, baseType: !1135, size: 64, align: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !1794, file: !1565, line: 361, baseType: !32, size: 32, align: 32, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !1794, file: !1565, line: 362, baseType: !32, size: 32, align: 32, offset: 224)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1767, file: !1043, line: 463, baseType: !32, size: 32, align: 32, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1767, file: !1043, line: 464, baseType: !32, size: 32, align: 32, offset: 416)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1767, file: !1043, line: 466, baseType: !1129, size: 64, align: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1767, file: !1043, line: 467, baseType: !1129, size: 64, align: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1767, file: !1043, line: 469, baseType: !1598, size: 160, align: 8, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1767, file: !1043, line: 471, baseType: !1819, size: 64, align: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64, align: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !1043, line: 471, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1767, file: !1043, line: 472, baseType: !1822, size: 64, align: 64, offset: 832)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64, align: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !584, line: 157, baseType: !1825)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !584, line: 157, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1767, file: !1043, line: 473, baseType: !4, size: 64, align: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1731, file: !1680, line: 207, baseType: !1828, size: 64, align: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64, align: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!32, !1724, !1765}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1731, file: !1680, line: 209, baseType: !1832, size: 64, align: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64, align: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!32, !1724, !1765, !1315}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1731, file: !1680, line: 210, baseType: !1836, size: 64, align: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64, align: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!1839, !1724, !1334}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64, align: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !1043, line: 301, size: 256, align: 64, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1840, file: !1043, line: 301, baseType: !660, size: 256, align: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1731, file: !1680, line: 211, baseType: !1844, size: 64, align: 64, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64, align: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1724, !1334}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64, align: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !1043, line: 476, size: 256, align: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1848, file: !1043, line: 476, baseType: !660, size: 256, align: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1731, file: !1680, line: 212, baseType: !1746, size: 64, align: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1731, file: !1680, line: 213, baseType: !651, size: 128, align: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1731, file: !1680, line: 214, baseType: !32, size: 32, align: 32, offset: 1088)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !1726, file: !1680, line: 239, baseType: !32, size: 32, align: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1726, file: !1680, line: 242, baseType: !1315, size: 64, align: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1726, file: !1680, line: 244, baseType: !1839, size: 64, align: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !1726, file: !1680, line: 246, baseType: !1847, size: 64, align: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1726, file: !1680, line: 247, baseType: !1678, size: 64, align: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !1726, file: !1680, line: 249, baseType: !4, size: 64, align: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1726, file: !1680, line: 252, baseType: !1746, size: 64, align: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !1726, file: !1680, line: 254, baseType: !1721, size: 64, align: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !1726, file: !1680, line: 256, baseType: !1751, size: 64, align: 64, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !1726, file: !1680, line: 258, baseType: !1756, size: 64, align: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !1726, file: !1680, line: 260, baseType: !1746, size: 64, align: 64, offset: 704)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !1726, file: !1680, line: 262, baseType: !1761, size: 64, align: 64, offset: 768)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !1726, file: !1680, line: 264, baseType: !1828, size: 64, align: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !1726, file: !1680, line: 266, baseType: !1832, size: 64, align: 64, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !1726, file: !1680, line: 267, baseType: !1746, size: 64, align: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !1726, file: !1680, line: 268, baseType: !1836, size: 64, align: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !1726, file: !1680, line: 269, baseType: !1844, size: 64, align: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1726, file: !1680, line: 270, baseType: !1746, size: 64, align: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1726, file: !1680, line: 273, baseType: !32, size: 32, align: 32, offset: 1216)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !1726, file: !1680, line: 275, baseType: !32, size: 32, align: 32, offset: 1248)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1726, file: !1680, line: 277, baseType: !1839, size: 64, align: 64, offset: 1280)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1726, file: !1680, line: 279, baseType: !1876, size: 64, align: 64, offset: 1344)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64, align: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !584, line: 183, baseType: !1878)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !584, line: 183, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !1726, file: !1680, line: 281, baseType: !32, size: 32, align: 32, offset: 1408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !1726, file: !1680, line: 283, baseType: !32, size: 32, align: 32, offset: 1440)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1726, file: !1680, line: 284, baseType: !32, size: 32, align: 32, offset: 1472)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !1726, file: !1680, line: 285, baseType: !1315, size: 64, align: 64, offset: 1536)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !1726, file: !1680, line: 287, baseType: !1315, size: 64, align: 64, offset: 1600)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !1726, file: !1680, line: 289, baseType: !1765, size: 64, align: 64, offset: 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !1726, file: !1680, line: 291, baseType: !32, size: 32, align: 32, offset: 1728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !1726, file: !1680, line: 293, baseType: !62, size: 32, align: 32, offset: 1760)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1726, file: !1680, line: 295, baseType: !1724, size: 64, align: 64, offset: 1792)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1726, file: !1680, line: 296, baseType: !651, size: 128, align: 64, offset: 1856)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !585, file: !574, line: 1551, baseType: !1890, size: 64, align: 64, offset: 2688)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64, align: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{null, !1717, !32, !32}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !585, file: !574, line: 1553, baseType: !32, size: 32, align: 32, offset: 2752)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !585, file: !574, line: 1555, baseType: !32, size: 32, align: 32, offset: 2784)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !585, file: !574, line: 1561, baseType: !1896, size: 64, align: 64, offset: 2816)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64, align: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!62, !582, !7, !10, !62, !5, !62}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !585, file: !574, line: 1566, baseType: !1900, size: 64, align: 64, offset: 2880)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64, align: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!62, !582, !7, !5, !62}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !585, file: !574, line: 1570, baseType: !1904, size: 64, align: 64, offset: 2944)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64, align: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !584, line: 179, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !574, line: 925, size: 6400, align: 64, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911, !1913, !1918, !1919, !1920, !1921, !1922, !1923, !1928, !1933, !1937, !1951, !1952, !1956, !1957, !1963, !1964, !1969, !1973, !1977, !1978, !1979, !1980, !1981, !1982, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2009, !2010, !2011, !2012, !2013, !2028, !2032, !2033, !2037, !2038, !2039, !2040, !2041, !2042, !2045, !2046, !2069, !2074, !2075, !2080, !2081, !2086, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1906, file: !574, line: 926, baseType: !571, size: 64, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !1906, file: !574, line: 927, baseType: !1627, size: 64, align: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !1906, file: !574, line: 929, baseType: !1627, size: 64, align: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !1906, file: !574, line: 930, baseType: !1912, size: 64, align: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64, align: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !1906, file: !574, line: 931, baseType: !1914, size: 64, align: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64, align: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !574, line: 923, size: 32, align: 32, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1915, file: !574, line: 923, baseType: !32, size: 32, align: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !1906, file: !574, line: 936, baseType: !87, size: 64, align: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !1906, file: !574, line: 937, baseType: !1633, size: 64, align: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !1906, file: !574, line: 938, baseType: !1633, size: 64, align: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !1906, file: !574, line: 944, baseType: !32, size: 32, align: 32, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !1906, file: !574, line: 950, baseType: !199, size: 64, align: 64, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !1906, file: !574, line: 960, baseType: !1924, size: 64, align: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64, align: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!32, !1927, !1295}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !1906, file: !574, line: 961, baseType: !1929, size: 64, align: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64, align: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1932, !1295}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64, align: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !1906, file: !574, line: 962, baseType: !1934, size: 64, align: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64, align: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1295, !1927, !5, !32, !1521}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1906, file: !574, line: 980, baseType: !1938, size: 352, align: 32, offset: 832)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !574, line: 964, size: 352, align: 32, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !1938, file: !574, line: 965, baseType: !32, size: 32, align: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !1938, file: !574, line: 966, baseType: !32, size: 32, align: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !1938, file: !574, line: 967, baseType: !32, size: 32, align: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !1938, file: !574, line: 968, baseType: !32, size: 32, align: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !1938, file: !574, line: 969, baseType: !32, size: 32, align: 32, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !1938, file: !574, line: 970, baseType: !32, size: 32, align: 32, offset: 160)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !1938, file: !574, line: 971, baseType: !32, size: 32, align: 32, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !1938, file: !574, line: 972, baseType: !32, size: 32, align: 32, offset: 224)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !1938, file: !574, line: 973, baseType: !32, size: 32, align: 32, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !1938, file: !574, line: 974, baseType: !32, size: 32, align: 32, offset: 288)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !1938, file: !574, line: 975, baseType: !32, size: 32, align: 32, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1906, file: !574, line: 982, baseType: !32, size: 32, align: 32, offset: 1184)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !1906, file: !574, line: 985, baseType: !1953, size: 64, align: 64, offset: 1216)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64, align: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!32, !1724, !4}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !1906, file: !574, line: 986, baseType: !4, size: 64, align: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !1906, file: !574, line: 993, baseType: !1958, size: 64, align: 64, offset: 1344)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !1960, line: 389, baseType: !1961)
!1960 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!32, !10, !32, !32, !4}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !1906, file: !574, line: 996, baseType: !4, size: 64, align: 64, offset: 1408)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !1906, file: !574, line: 999, baseType: !1965, size: 64, align: 64, offset: 1472)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64, align: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!32, !582, !1754, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !1906, file: !574, line: 1002, baseType: !1970, size: 64, align: 64, offset: 1536)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64, align: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!32, !582, !5, !861}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !1906, file: !574, line: 1006, baseType: !1974, size: 64, align: 64, offset: 1600)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64, align: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!32, !582, !5, !62}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1906, file: !574, line: 1009, baseType: !651, size: 128, align: 64, offset: 1664)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !1906, file: !574, line: 1011, baseType: !829, size: 64, align: 64, offset: 1792)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !1906, file: !574, line: 1012, baseType: !829, size: 64, align: 64, offset: 1856)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !1906, file: !574, line: 1013, baseType: !829, size: 64, align: 64, offset: 1920)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !1906, file: !574, line: 1015, baseType: !1839, size: 64, align: 64, offset: 1984)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !1906, file: !574, line: 1016, baseType: !1983, size: 64, align: 64, offset: 2048)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64, align: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !574, line: 922, size: 256, align: 64, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1984, file: !574, line: 922, baseType: !660, size: 256, align: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !1906, file: !574, line: 1021, baseType: !1890, size: 64, align: 64, offset: 2112)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !1906, file: !574, line: 1024, baseType: !1041, size: 64, align: 64, offset: 2176)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1906, file: !574, line: 1031, baseType: !87, size: 64, align: 64, offset: 2240)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1906, file: !574, line: 1032, baseType: !87, size: 64, align: 64, offset: 2304)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !1906, file: !574, line: 1033, baseType: !199, size: 64, align: 64, offset: 2368)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !1906, file: !574, line: 1035, baseType: !1707, size: 64, align: 64, offset: 2432)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1906, file: !574, line: 1036, baseType: !32, size: 32, align: 32, offset: 2496)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !1906, file: !574, line: 1039, baseType: !1672, size: 64, align: 64, offset: 2560)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !1906, file: !574, line: 1041, baseType: !4, size: 64, align: 64, offset: 2624)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !1906, file: !574, line: 1043, baseType: !32, size: 32, align: 32, offset: 2688)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !1906, file: !574, line: 1044, baseType: !62, size: 32, align: 32, offset: 2720)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !1906, file: !574, line: 1045, baseType: !732, size: 256, align: 8, offset: 2752)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !1906, file: !574, line: 1047, baseType: !1721, size: 64, align: 64, offset: 3008)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !1906, file: !574, line: 1050, baseType: !1713, size: 64, align: 64, offset: 3072)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1906, file: !574, line: 1052, baseType: !1678, size: 64, align: 64, offset: 3136)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !1906, file: !574, line: 1059, baseType: !32, size: 32, align: 32, offset: 3200)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !1906, file: !574, line: 1065, baseType: !62, size: 32, align: 32, offset: 3232)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !1906, file: !574, line: 1071, baseType: !877, size: 64, align: 64, offset: 3264)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !1906, file: !574, line: 1076, baseType: !2006, size: 64, align: 64, offset: 3328)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64, align: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!32, !582, !1521, !4}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !1906, file: !574, line: 1077, baseType: !4, size: 64, align: 64, offset: 3392)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !1906, file: !574, line: 1079, baseType: !737, size: 128, align: 8, offset: 3456)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !1906, file: !574, line: 1080, baseType: !737, size: 128, align: 8, offset: 3584)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !1906, file: !574, line: 1081, baseType: !737, size: 128, align: 8, offset: 3712)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !1906, file: !574, line: 1083, baseType: !2014, size: 64, align: 64, offset: 3840)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64, align: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!32, !582, !5, !5, !1064, !2017, !32}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !2019, line: 82, baseType: !2020)
!2019 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !2019, line: 75, size: 2304, align: 64, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !2020, file: !2019, line: 76, baseType: !829, size: 64, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !2020, file: !2019, line: 77, baseType: !824, size: 384, align: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !2020, file: !2019, line: 78, baseType: !824, size: 384, align: 64, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !2020, file: !2019, line: 79, baseType: !824, size: 384, align: 64, offset: 832)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !2020, file: !2019, line: 80, baseType: !62, size: 32, align: 32, offset: 1216)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2020, file: !2019, line: 81, baseType: !904, size: 1024, align: 8, offset: 1248)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !1906, file: !574, line: 1090, baseType: !2029, size: 64, align: 64, offset: 3904)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64, align: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!32, !582, !4}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !1906, file: !574, line: 1091, baseType: !4, size: 64, align: 64, offset: 3968)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !1906, file: !574, line: 1094, baseType: !2034, size: 64, align: 64, offset: 4032)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64, align: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!32, !582, !4, !101, !4}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !1906, file: !574, line: 1096, baseType: !4, size: 64, align: 64, offset: 4096)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !1906, file: !574, line: 1100, baseType: !10, size: 64, align: 64, offset: 4160)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !1906, file: !574, line: 1101, baseType: !1896, size: 64, align: 64, offset: 4224)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !1906, file: !574, line: 1106, baseType: !1900, size: 64, align: 64, offset: 4288)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !1906, file: !574, line: 1113, baseType: !62, size: 32, align: 32, offset: 4352)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !1906, file: !574, line: 1114, baseType: !2043, size: 64, align: 64, offset: 4416)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64, align: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !574, line: 1114, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !1906, file: !574, line: 1115, baseType: !2043, size: 64, align: 64, offset: 4480)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !1906, file: !574, line: 1118, baseType: !2047, size: 1024, align: 64, offset: 4544)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !574, line: 864, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !574, line: 849, size: 1024, align: 64, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !2048, file: !574, line: 851, baseType: !4, size: 64, align: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !2048, file: !574, line: 853, baseType: !2006, size: 64, align: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !2048, file: !574, line: 855, baseType: !2029, size: 64, align: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !2048, file: !574, line: 857, baseType: !2054, size: 64, align: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64, align: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!10, !582, !4}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !2048, file: !574, line: 858, baseType: !10, size: 64, align: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !2048, file: !574, line: 859, baseType: !940, size: 64, align: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2048, file: !574, line: 859, baseType: !940, size: 64, align: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2048, file: !574, line: 859, baseType: !940, size: 64, align: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !2048, file: !574, line: 859, baseType: !940, size: 64, align: 64, offset: 512)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !2048, file: !574, line: 859, baseType: !940, size: 64, align: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2048, file: !574, line: 860, baseType: !940, size: 64, align: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2048, file: !574, line: 860, baseType: !940, size: 64, align: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2048, file: !574, line: 860, baseType: !940, size: 64, align: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2048, file: !574, line: 861, baseType: !10, size: 64, align: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2048, file: !574, line: 862, baseType: !32, size: 32, align: 32, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !2048, file: !574, line: 863, baseType: !87, size: 64, align: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !1906, file: !574, line: 1131, baseType: !2070, size: 64, align: 64, offset: 5568)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64, align: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!32, !582, !2073, !861, !4}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !1906, file: !574, line: 1133, baseType: !4, size: 64, align: 64, offset: 5632)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !1906, file: !574, line: 1138, baseType: !2076, size: 64, align: 64, offset: 5696)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64, align: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!32, !582, !2079, !5, !710, !62, !4}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !1906, file: !574, line: 1142, baseType: !4, size: 64, align: 64, offset: 5760)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !1906, file: !574, line: 1145, baseType: !2082, size: 64, align: 64, offset: 5824)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64, align: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !574, line: 388, size: 256, align: 64, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2083, file: !574, line: 388, baseType: !660, size: 256, align: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !1906, file: !574, line: 1162, baseType: !2087, size: 64, align: 64, offset: 5888)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64, align: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!32, !582, !2073, !5, !710, !62, !4}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !1906, file: !574, line: 1167, baseType: !4, size: 64, align: 64, offset: 5952)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !1906, file: !574, line: 1173, baseType: !5, size: 64, align: 64, offset: 6016)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !1906, file: !574, line: 1174, baseType: !62, size: 32, align: 32, offset: 6080)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !1906, file: !574, line: 1178, baseType: !101, size: 64, align: 64, offset: 6144)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !1906, file: !574, line: 1179, baseType: !5, size: 64, align: 64, offset: 6208)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !1906, file: !574, line: 1180, baseType: !101, size: 64, align: 64, offset: 6272)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !1906, file: !574, line: 1181, baseType: !5, size: 64, align: 64, offset: 6336)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !585, file: !574, line: 1575, baseType: !32, size: 32, align: 32, offset: 3008)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !585, file: !574, line: 1577, baseType: !199, size: 64, align: 64, offset: 3072)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !585, file: !574, line: 1578, baseType: !651, size: 128, align: 64, offset: 3136)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !585, file: !574, line: 1580, baseType: !1041, size: 64, align: 64, offset: 3264)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !585, file: !574, line: 1581, baseType: !32, size: 32, align: 32, offset: 3328)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !585, file: !574, line: 1583, baseType: !87, size: 64, align: 64, offset: 3392)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !585, file: !574, line: 1585, baseType: !87, size: 64, align: 64, offset: 3456)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !585, file: !574, line: 1586, baseType: !199, size: 64, align: 64, offset: 3520)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !585, file: !574, line: 1587, baseType: !32, size: 32, align: 32, offset: 3584)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !585, file: !574, line: 1589, baseType: !32, size: 32, align: 32, offset: 3616)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !585, file: !574, line: 1590, baseType: !62, size: 32, align: 32, offset: 3648)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !585, file: !574, line: 1593, baseType: !2109, size: 64, align: 64, offset: 3712)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64, align: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !582, !32, !32, !5, !32, !4}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !585, file: !574, line: 1595, baseType: !4, size: 64, align: 64, offset: 3776)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !585, file: !574, line: 1596, baseType: !10, size: 64, align: 64, offset: 3840)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !585, file: !574, line: 1603, baseType: !32, size: 32, align: 32, offset: 3904)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !585, file: !574, line: 1606, baseType: !32, size: 32, align: 32, offset: 3936)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !585, file: !574, line: 1608, baseType: !32, size: 32, align: 32, offset: 3968)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !585, file: !574, line: 1610, baseType: !2118, size: 64, align: 64, offset: 4032)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64, align: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !574, line: 1610, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !585, file: !574, line: 1611, baseType: !2121, size: 64, align: 64, offset: 4096)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64, align: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !1043, line: 202, baseType: !1538)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !585, file: !574, line: 1613, baseType: !5, size: 64, align: 64, offset: 4160)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !585, file: !574, line: 1614, baseType: !32, size: 32, align: 32, offset: 4224)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !585, file: !574, line: 1616, baseType: !32, size: 32, align: 32, offset: 4256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !585, file: !574, line: 1618, baseType: !101, size: 64, align: 64, offset: 4288)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !585, file: !574, line: 1620, baseType: !5, size: 64, align: 64, offset: 4352)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !585, file: !574, line: 1621, baseType: !101, size: 64, align: 64, offset: 4416)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !585, file: !574, line: 1623, baseType: !5, size: 64, align: 64, offset: 4480)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !585, file: !574, line: 1629, baseType: !4, size: 64, align: 64, offset: 4544)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !585, file: !574, line: 1630, baseType: !101, size: 64, align: 64, offset: 4608)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !585, file: !574, line: 1632, baseType: !2133, size: 64, align: 64, offset: 4672)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64, align: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !574, line: 373, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !2136, line: 802, size: 128, align: 64, elements: !2137)
!2136 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2135, file: !2136, line: 803, baseType: !65, size: 16, align: 16)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2135, file: !2136, line: 804, baseType: !4, size: 64, align: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !585, file: !574, line: 1634, baseType: !2141, size: 64, align: 64, offset: 4736)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !574, line: 390, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64, align: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!32, !582, !710, !32, !4}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !585, file: !574, line: 1635, baseType: !4, size: 64, align: 64, offset: 4800)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !585, file: !574, line: 1637, baseType: !2147, size: 64, align: 64, offset: 4864)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !574, line: 393, baseType: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64, align: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!32, !582, !4, !1521, !1627, !2151, !4}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64, align: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64, align: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !585, file: !574, line: 1638, baseType: !4, size: 64, align: 64, offset: 4928)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !585, file: !574, line: 1639, baseType: !1904, size: 64, align: 64, offset: 4992)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !585, file: !574, line: 1648, baseType: !5, size: 64, align: 64, offset: 5056)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !585, file: !574, line: 1649, baseType: !6, size: 8, align: 8, offset: 5120)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !585, file: !574, line: 1653, baseType: !2082, size: 64, align: 64, offset: 5184)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !585, file: !574, line: 1655, baseType: !2159, size: 64, align: 64, offset: 5248)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64, align: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !574, line: 386, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !574, line: 383, size: 128, align: 64, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2161, file: !574, line: 384, baseType: !7, size: 64, align: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2161, file: !574, line: 385, baseType: !87, size: 64, align: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !585, file: !574, line: 1662, baseType: !62, size: 32, align: 32, offset: 5312)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !585, file: !574, line: 1664, baseType: !62, size: 32, align: 32, offset: 5344)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !585, file: !574, line: 1666, baseType: !62, size: 32, align: 32, offset: 5376)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !585, file: !574, line: 1675, baseType: !32, size: 32, align: 32, offset: 5408)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !585, file: !574, line: 1678, baseType: !2047, size: 1024, align: 64, offset: 5440)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !585, file: !574, line: 1685, baseType: !5, size: 64, align: 64, offset: 6464)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !585, file: !574, line: 1686, baseType: !62, size: 32, align: 32, offset: 6528)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !575, file: !574, line: 441, baseType: !2173, size: 64, align: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64, align: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !582}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !575, file: !574, line: 442, baseType: !2173, size: 64, align: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !575, file: !574, line: 443, baseType: !579, size: 64, align: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !575, file: !574, line: 444, baseType: !579, size: 64, align: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !575, file: !574, line: 445, baseType: !2180, size: 64, align: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64, align: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!32, !582, !4, !32}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !575, file: !574, line: 446, baseType: !2180, size: 64, align: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !575, file: !574, line: 447, baseType: !2185, size: 64, align: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64, align: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!32, !582, !200, !32}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !575, file: !574, line: 448, baseType: !579, size: 64, align: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !575, file: !574, line: 449, baseType: !579, size: 64, align: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !575, file: !574, line: 450, baseType: !579, size: 64, align: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !575, file: !574, line: 451, baseType: !2192, size: 64, align: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64, align: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!199, !582, !32, !32, !32, !199, !1521}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !575, file: !574, line: 453, baseType: !2196, size: 64, align: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64, align: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!32, !582, !32, !5, !32, !32}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !575, file: !574, line: 455, baseType: !2200, size: 64, align: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64, align: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!32, !582, !32, !200, !32}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !575, file: !574, line: 456, baseType: !579, size: 64, align: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !575, file: !574, line: 457, baseType: !2205, size: 64, align: 64, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64, align: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!199, !582, !32, !199, !4}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !575, file: !574, line: 458, baseType: !2209, size: 64, align: 64, offset: 1088)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64, align: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!199, !1904, !32, !199, !4}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !575, file: !574, line: 459, baseType: !2213, size: 64, align: 64, offset: 1152)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64, align: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!914, !710}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !575, file: !574, line: 460, baseType: !2217, size: 64, align: 64, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64, align: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!32, !914, !5}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !575, file: !574, line: 461, baseType: !2221, size: 64, align: 64, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64, align: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!32, !1717}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !575, file: !574, line: 462, baseType: !2225, size: 64, align: 64, offset: 1344)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64, align: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!32}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !575, file: !574, line: 463, baseType: !2229, size: 64, align: 64, offset: 1408)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64, align: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!914, !62}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !575, file: !574, line: 464, baseType: !2233, size: 64, align: 64, offset: 1472)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64, align: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!2236, !32}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64, align: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !575, file: !574, line: 465, baseType: !1225, size: 64, align: 64, offset: 1536)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !575, file: !574, line: 466, baseType: !2240, size: 64, align: 64, offset: 1600)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64, align: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !574, line: 466, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !575, file: !574, line: 467, baseType: !2225, size: 64, align: 64, offset: 1664)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !575, file: !574, line: 468, baseType: !2244, size: 64, align: 64, offset: 1728)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64, align: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!199, !582, !32, !2247}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !575, file: !574, line: 469, baseType: !2249, size: 64, align: 64, offset: 1792)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64, align: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!199, !1904, !32, !2247}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cacrt", scope: !534, file: !533, line: 110, baseType: !1315, size: 64, align: 64, offset: 1216)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cakey", scope: !534, file: !533, line: 111, baseType: !1365, size: 64, align: 64, offset: 1280)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !534, file: !533, line: 112, baseType: !1365, size: 64, align: 64, offset: 1344)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !534, file: !533, line: 113, baseType: !1839, size: 64, align: 64, offset: 1408)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "clientcrt", scope: !534, file: !533, line: 114, baseType: !1315, size: 64, align: 64, offset: 1472)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "clientkey", scope: !534, file: !533, line: 115, baseType: !1365, size: 64, align: 64, offset: 1536)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !534, file: !533, line: 117, baseType: !932, size: 64, align: 64, offset: 1600)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ecdhcurve", scope: !534, file: !533, line: 120, baseType: !10, size: 64, align: 64, offset: 1664)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !534, file: !533, line: 122, baseType: !2261, size: 64, align: 64, offset: 1728)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64, align: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "proxyspec_t", file: !533, line: 54, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proxyspec", file: !533, line: 37, size: 2496, align: 64, elements: !2264)
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2273, !2274, !2275, !2276, !2277, !2292, !2297}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !2263, file: !533, line: 38, baseType: !62, size: 1, align: 32, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "http", scope: !2263, file: !533, line: 39, baseType: !62, size: 1, align: 32, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !2263, file: !533, line: 40, baseType: !62, size: 1, align: 32, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dns", scope: !2263, file: !533, line: 41, baseType: !62, size: 1, align: 32, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addr", scope: !2263, file: !533, line: 42, baseType: !511, size: 1024, align: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "listen_addrlen", scope: !2263, file: !533, line: 43, baseType: !2271, size: 32, align: 32, offset: 1088)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !512, line: 33, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !198, line: 189, baseType: !62)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addr", scope: !2263, file: !533, line: 47, baseType: !511, size: 1024, align: 64, offset: 1152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "connect_addrlen", scope: !2263, file: !533, line: 48, baseType: !2271, size: 32, align: 32, offset: 2176)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sni_port", scope: !2263, file: !533, line: 49, baseType: !65, size: 16, align: 16, offset: 2208)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "natengine", scope: !2263, file: !533, line: 50, baseType: !10, size: 64, align: 64, offset: 2240)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "natlookup", scope: !2263, file: !533, line: 51, baseType: !2278, size: 64, align: 64, offset: 2304)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_lookup_cb_t", file: !2279, line: 39, baseType: !2280)
!2279 = !DIFile(filename: "nat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64, align: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!32, !2283, !2291, !32, !2283, !2271}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64, align: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !512, line: 153, size: 128, align: 16, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !2284, file: !512, line: 155, baseType: !515, size: 16, align: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !2284, file: !512, line: 156, baseType: !2288, size: 112, align: 8, offset: 16)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 112, align: 8, elements: !2289)
!2289 = !{!2290}
!2290 = !DISubrange(count: 14)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64, align: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "natsocket", scope: !2263, file: !533, line: 52, baseType: !2293, size: 64, align: 64, offset: 2368)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "nat_socket_cb_t", file: !2279, line: 41, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64, align: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!32, !32}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2263, file: !533, line: 53, baseType: !2298, size: 64, align: 64, offset: 2432)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64, align: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "crlurl", scope: !534, file: !533, line: 123, baseType: !10, size: 64, align: 64, offset: 1792)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "verify_peer", scope: !534, file: !533, line: 124, baseType: !62, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "allow_wrong_host", scope: !534, file: !533, line: 125, baseType: !62, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64, align: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2284)
!2304 = !DILocalVariable(name: "ctx", arg: 1, scope: !455, file: !13, line: 611, type: !458)
!2305 = !DILocation(line: 611, column: 37, scope: !455)
!2306 = !DILocalVariable(name: "opts", arg: 2, scope: !455, file: !13, line: 611, type: !531)
!2307 = !DILocation(line: 611, column: 50, scope: !455)
!2308 = !DILocalVariable(name: "srcaddr", arg: 3, scope: !455, file: !13, line: 612, type: !2302)
!2309 = !DILocation(line: 612, column: 41, scope: !455)
!2310 = !DILocalVariable(name: "srcaddrlen", arg: 4, scope: !455, file: !13, line: 612, type: !2271)
!2311 = !DILocation(line: 612, column: 60, scope: !455)
!2312 = !DILocalVariable(name: "dstaddr", arg: 5, scope: !455, file: !13, line: 613, type: !2302)
!2313 = !DILocation(line: 613, column: 41, scope: !455)
!2314 = !DILocalVariable(name: "dstaddrlen", arg: 6, scope: !455, file: !13, line: 613, type: !2271)
!2315 = !DILocation(line: 613, column: 60, scope: !455)
!2316 = !DILocalVariable(name: "srchost", arg: 7, scope: !455, file: !13, line: 614, type: !10)
!2317 = !DILocation(line: 614, column: 24, scope: !455)
!2318 = !DILocalVariable(name: "srcport", arg: 8, scope: !455, file: !13, line: 614, type: !10)
!2319 = !DILocation(line: 614, column: 39, scope: !455)
!2320 = !DILocalVariable(name: "dsthost", arg: 9, scope: !455, file: !13, line: 615, type: !10)
!2321 = !DILocation(line: 615, column: 24, scope: !455)
!2322 = !DILocalVariable(name: "dstport", arg: 10, scope: !455, file: !13, line: 615, type: !10)
!2323 = !DILocation(line: 615, column: 39, scope: !455)
!2324 = !DILocalVariable(name: "exec_path", arg: 11, scope: !455, file: !13, line: 616, type: !10)
!2325 = !DILocation(line: 616, column: 24, scope: !455)
!2326 = !DILocalVariable(name: "user", arg: 12, scope: !455, file: !13, line: 616, type: !10)
!2327 = !DILocation(line: 616, column: 41, scope: !455)
!2328 = !DILocalVariable(name: "group", arg: 13, scope: !455, file: !13, line: 616, type: !10)
!2329 = !DILocation(line: 616, column: 53, scope: !455)
!2330 = !DILocalVariable(name: "timebuf", scope: !455, file: !13, line: 618, type: !2331)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 8, elements: !2332)
!2332 = !{!2333}
!2333 = !DISubrange(count: 24)
!2334 = !DILocation(line: 618, column: 7, scope: !455)
!2335 = !DILocalVariable(name: "epoch", scope: !455, file: !13, line: 619, type: !1685)
!2336 = !DILocation(line: 619, column: 9, scope: !455)
!2337 = !DILocalVariable(name: "utc", scope: !455, file: !13, line: 620, type: !2338)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64, align: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1686, line: 133, size: 448, align: 64, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2339, file: !1686, line: 135, baseType: !32, size: 32, align: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2339, file: !1686, line: 136, baseType: !32, size: 32, align: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2339, file: !1686, line: 137, baseType: !32, size: 32, align: 32, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2339, file: !1686, line: 138, baseType: !32, size: 32, align: 32, offset: 96)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2339, file: !1686, line: 139, baseType: !32, size: 32, align: 32, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2339, file: !1686, line: 140, baseType: !32, size: 32, align: 32, offset: 160)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2339, file: !1686, line: 141, baseType: !32, size: 32, align: 32, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2339, file: !1686, line: 142, baseType: !32, size: 32, align: 32, offset: 224)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2339, file: !1686, line: 143, baseType: !32, size: 32, align: 32, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2339, file: !1686, line: 146, baseType: !199, size: 64, align: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2339, file: !1686, line: 147, baseType: !7, size: 64, align: 64, offset: 384)
!2352 = !DILocation(line: 620, column: 13, scope: !455)
!2353 = !DILocalVariable(name: "dsthost_clean", scope: !455, file: !13, line: 621, type: !10)
!2354 = !DILocation(line: 621, column: 8, scope: !455)
!2355 = !DILocalVariable(name: "srchost_clean", scope: !455, file: !13, line: 622, type: !10)
!2356 = !DILocation(line: 622, column: 8, scope: !455)
!2357 = !DILocation(line: 624, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !455, file: !13, line: 624, column: 6)
!2359 = !DILocation(line: 624, column: 11, scope: !2358)
!2360 = !DILocation(line: 624, column: 16, scope: !2358)
!2361 = !DILocation(line: 624, column: 19, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2358, file: !13, discriminator: 1)
!2363 = !DILocation(line: 624, column: 24, scope: !2362)
!2364 = !DILocation(line: 626, column: 6, scope: !2358)
!2365 = !DILocation(line: 626, column: 9, scope: !2362)
!2366 = !DILocation(line: 626, column: 14, scope: !2362)
!2367 = !DILocation(line: 624, column: 6, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !455, file: !13, discriminator: 2)
!2369 = !DILocation(line: 629, column: 3, scope: !2358)
!2370 = !DILocation(line: 631, column: 6, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !455, file: !13, line: 631, column: 6)
!2372 = !DILocation(line: 631, column: 12, scope: !2371)
!2373 = !DILocation(line: 631, column: 29, scope: !2371)
!2374 = !DILocation(line: 631, column: 32, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2371, file: !13, discriminator: 1)
!2376 = !DILocation(line: 631, column: 38, scope: !2375)
!2377 = !DILocation(line: 631, column: 56, scope: !2375)
!2378 = !DILocation(line: 632, column: 6, scope: !2371)
!2379 = !DILocation(line: 632, column: 12, scope: !2371)
!2380 = !DILocation(line: 632, column: 26, scope: !2371)
!2381 = !DILocation(line: 632, column: 29, scope: !2375)
!2382 = !DILocation(line: 632, column: 35, scope: !2375)
!2383 = !DILocation(line: 631, column: 6, scope: !2368)
!2384 = !DILocation(line: 633, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !13, line: 633, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2371, file: !13, line: 632, column: 51)
!2387 = !DILocation(line: 633, column: 13, scope: !2385)
!2388 = !DILocation(line: 633, column: 30, scope: !2385)
!2389 = !DILocation(line: 633, column: 33, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2385, file: !13, discriminator: 1)
!2391 = !DILocation(line: 633, column: 39, scope: !2390)
!2392 = !DILocation(line: 633, column: 7, scope: !2390)
!2393 = !DILocation(line: 634, column: 8, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !13, line: 634, column: 8)
!2395 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 633, column: 54)
!2396 = !DILocation(line: 634, column: 21, scope: !2394)
!2397 = !DILocation(line: 634, column: 8, scope: !2395)
!2398 = !DILocation(line: 635, column: 5, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !13, line: 634, column: 28)
!2400 = !DILocation(line: 636, column: 1, scope: !2399)
!2401 = !DILocation(line: 637, column: 5, scope: !2399)
!2402 = !DILocation(line: 639, column: 15, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2395, file: !13, line: 639, column: 8)
!2404 = !DILocation(line: 639, column: 13, scope: !2403)
!2405 = !DILocation(line: 639, column: 31, scope: !2403)
!2406 = !DILocation(line: 639, column: 8, scope: !2395)
!2407 = !DILocation(line: 641, column: 30, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !13, line: 638, column: 39)
!2409 = !DILocation(line: 641, column: 29, scope: !2408)
!2410 = !DILocation(line: 641, column: 20, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2408, file: !13, discriminator: 1)
!2412 = !DILocation(line: 641, column: 38, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2408, file: !13, discriminator: 2)
!2414 = !DILocation(line: 641, column: 37, scope: !2408)
!2415 = !DILocation(line: 639, column: 5, scope: !2411)
!2416 = !DILocation(line: 642, column: 1, scope: !2408)
!2417 = !DILocation(line: 643, column: 5, scope: !2408)
!2418 = !DILocation(line: 645, column: 18, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2395, file: !13, line: 645, column: 8)
!2420 = !DILocation(line: 646, column: 36, scope: !2419)
!2421 = !DILocation(line: 645, column: 9, scope: !2419)
!2422 = !DILocation(line: 645, column: 8, scope: !2395)
!2423 = !DILocation(line: 648, column: 30, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !13, line: 646, column: 42)
!2425 = !DILocation(line: 648, column: 29, scope: !2424)
!2426 = !DILocation(line: 649, column: 20, scope: !2424)
!2427 = !DILocation(line: 648, column: 38, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2424, file: !13, discriminator: 1)
!2429 = !DILocation(line: 648, column: 37, scope: !2424)
!2430 = !DILocation(line: 647, column: 5, scope: !2424)
!2431 = !DILocation(line: 649, column: 1, scope: !2428)
!2432 = !DILocation(line: 650, column: 5, scope: !2424)
!2433 = !DILocation(line: 652, column: 3, scope: !2395)
!2434 = !DILocation(line: 654, column: 40, scope: !2386)
!2435 = !DILocation(line: 654, column: 19, scope: !2386)
!2436 = !DILocation(line: 654, column: 17, scope: !2386)
!2437 = !DILocation(line: 655, column: 8, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2386, file: !13, line: 655, column: 7)
!2439 = !DILocation(line: 655, column: 7, scope: !2386)
!2440 = !DILocation(line: 656, column: 4, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !13, line: 655, column: 23)
!2442 = !DILocation(line: 657, column: 1, scope: !2441)
!2443 = !DILocation(line: 658, column: 4, scope: !2441)
!2444 = !DILocation(line: 660, column: 40, scope: !2386)
!2445 = !DILocation(line: 660, column: 19, scope: !2386)
!2446 = !DILocation(line: 660, column: 17, scope: !2386)
!2447 = !DILocation(line: 661, column: 8, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2386, file: !13, line: 661, column: 7)
!2449 = !DILocation(line: 661, column: 7, scope: !2386)
!2450 = !DILocation(line: 662, column: 4, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !13, line: 661, column: 23)
!2452 = !DILocation(line: 663, column: 9, scope: !2451)
!2453 = !DILocation(line: 663, column: 4, scope: !2451)
!2454 = !DILocation(line: 664, column: 1, scope: !2451)
!2455 = !DILocation(line: 665, column: 4, scope: !2451)
!2456 = !DILocation(line: 667, column: 2, scope: !2386)
!2457 = !DILocation(line: 669, column: 6, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !455, file: !13, line: 669, column: 6)
!2459 = !DILocation(line: 669, column: 12, scope: !2458)
!2460 = !DILocation(line: 669, column: 6, scope: !455)
!2461 = !DILocation(line: 670, column: 15, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !13, line: 669, column: 24)
!2463 = !DILocation(line: 670, column: 3, scope: !2462)
!2464 = !DILocation(line: 670, column: 8, scope: !2462)
!2465 = !DILocation(line: 670, column: 13, scope: !2462)
!2466 = !DILocation(line: 671, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !13, line: 671, column: 7)
!2468 = !DILocation(line: 671, column: 13, scope: !2467)
!2469 = !DILocation(line: 671, column: 7, scope: !2462)
!2470 = !DILocation(line: 672, column: 4, scope: !2467)
!2471 = !DILocation(line: 673, column: 10, scope: !2462)
!2472 = !DILocation(line: 673, column: 15, scope: !2462)
!2473 = !DILocation(line: 673, column: 3, scope: !2462)
!2474 = !DILocation(line: 675, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2462, file: !13, line: 675, column: 7)
!2476 = !DILocation(line: 675, column: 13, scope: !2475)
!2477 = !DILocation(line: 675, column: 7, scope: !2462)
!2478 = !DILocation(line: 677, column: 18, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !13, line: 677, column: 8)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !13, line: 675, column: 31)
!2481 = !DILocation(line: 677, column: 23, scope: !2479)
!2482 = !DILocation(line: 677, column: 29, scope: !2479)
!2483 = !DILocation(line: 677, column: 31, scope: !2479)
!2484 = !DILocation(line: 677, column: 35, scope: !2479)
!2485 = !DILocation(line: 679, column: 17, scope: !2479)
!2486 = !DILocation(line: 679, column: 23, scope: !2479)
!2487 = !DILocation(line: 679, column: 35, scope: !2479)
!2488 = !DILocation(line: 680, column: 17, scope: !2479)
!2489 = !DILocation(line: 680, column: 32, scope: !2479)
!2490 = !DILocation(line: 681, column: 17, scope: !2479)
!2491 = !DILocation(line: 681, column: 32, scope: !2479)
!2492 = !DILocation(line: 677, column: 8, scope: !2479)
!2493 = !DILocation(line: 681, column: 41, scope: !2479)
!2494 = !DILocation(line: 677, column: 8, scope: !2480)
!2495 = !DILocation(line: 681, column: 30, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2497, file: !13, discriminator: 1)
!2497 = distinct !DILexicalBlock(scope: !2479, file: !13, line: 681, column: 46)
!2498 = !DILocation(line: 681, column: 29, scope: !2496)
!2499 = !DILocation(line: 684, column: 20, scope: !2497)
!2500 = !DILocation(line: 681, column: 38, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2496, file: !13, discriminator: 2)
!2502 = !DILocation(line: 681, column: 37, scope: !2496)
!2503 = !DILocation(line: 682, column: 5, scope: !2497)
!2504 = !DILocation(line: 682, column: 1, scope: !2496)
!2505 = !DILocation(line: 683, column: 5, scope: !2497)
!2506 = !DILocation(line: 685, column: 3, scope: !2480)
!2507 = !DILocation(line: 685, column: 14, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !13, discriminator: 1)
!2509 = distinct !DILexicalBlock(scope: !2475, file: !13, line: 685, column: 14)
!2510 = !DILocation(line: 685, column: 20, scope: !2508)
!2511 = !DILocation(line: 688, column: 33, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !13, line: 685, column: 39)
!2513 = !DILocation(line: 688, column: 39, scope: !2512)
!2514 = !DILocation(line: 689, column: 33, scope: !2512)
!2515 = !DILocation(line: 690, column: 33, scope: !2512)
!2516 = !DILocation(line: 691, column: 33, scope: !2512)
!2517 = !DILocation(line: 692, column: 33, scope: !2512)
!2518 = !DILocation(line: 693, column: 33, scope: !2512)
!2519 = !DILocation(line: 694, column: 33, scope: !2512)
!2520 = !DILocation(line: 694, column: 39, scope: !2512)
!2521 = !DILocation(line: 688, column: 5, scope: !2512)
!2522 = !DILocation(line: 687, column: 4, scope: !2512)
!2523 = !DILocation(line: 687, column: 9, scope: !2512)
!2524 = !DILocation(line: 687, column: 15, scope: !2512)
!2525 = !DILocation(line: 687, column: 17, scope: !2512)
!2526 = !DILocation(line: 687, column: 22, scope: !2512)
!2527 = !DILocation(line: 687, column: 31, scope: !2512)
!2528 = !DILocation(line: 695, column: 9, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2512, file: !13, line: 695, column: 8)
!2530 = !DILocation(line: 695, column: 14, scope: !2529)
!2531 = !DILocation(line: 695, column: 20, scope: !2529)
!2532 = !DILocation(line: 695, column: 22, scope: !2529)
!2533 = !DILocation(line: 695, column: 27, scope: !2529)
!2534 = !DILocation(line: 695, column: 8, scope: !2512)
!2535 = !DILocation(line: 696, column: 1, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !13, line: 695, column: 37)
!2537 = !DILocation(line: 697, column: 5, scope: !2536)
!2538 = !DILocation(line: 699, column: 3, scope: !2512)
!2539 = !DILocation(line: 701, column: 18, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !13, line: 701, column: 8)
!2541 = distinct !DILexicalBlock(scope: !2509, file: !13, line: 699, column: 10)
!2542 = !DILocation(line: 701, column: 23, scope: !2540)
!2543 = !DILocation(line: 701, column: 29, scope: !2540)
!2544 = !DILocation(line: 701, column: 31, scope: !2540)
!2545 = !DILocation(line: 701, column: 38, scope: !2540)
!2546 = !DILocation(line: 703, column: 17, scope: !2540)
!2547 = !DILocation(line: 703, column: 26, scope: !2540)
!2548 = !DILocation(line: 703, column: 35, scope: !2540)
!2549 = !DILocation(line: 703, column: 44, scope: !2540)
!2550 = !DILocation(line: 701, column: 8, scope: !2540)
!2551 = !DILocation(line: 703, column: 53, scope: !2540)
!2552 = !DILocation(line: 701, column: 8, scope: !2541)
!2553 = !DILocation(line: 704, column: 1, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2540, file: !13, line: 703, column: 58)
!2555 = !DILocation(line: 705, column: 5, scope: !2554)
!2556 = !DILocation(line: 707, column: 18, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2541, file: !13, line: 707, column: 8)
!2558 = !DILocation(line: 707, column: 23, scope: !2557)
!2559 = !DILocation(line: 707, column: 29, scope: !2557)
!2560 = !DILocation(line: 707, column: 31, scope: !2557)
!2561 = !DILocation(line: 707, column: 38, scope: !2557)
!2562 = !DILocation(line: 709, column: 17, scope: !2557)
!2563 = !DILocation(line: 709, column: 26, scope: !2557)
!2564 = !DILocation(line: 709, column: 35, scope: !2557)
!2565 = !DILocation(line: 709, column: 44, scope: !2557)
!2566 = !DILocation(line: 707, column: 8, scope: !2557)
!2567 = !DILocation(line: 709, column: 53, scope: !2557)
!2568 = !DILocation(line: 707, column: 8, scope: !2541)
!2569 = !DILocation(line: 710, column: 10, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2557, file: !13, line: 709, column: 58)
!2571 = !DILocation(line: 710, column: 15, scope: !2570)
!2572 = !DILocation(line: 710, column: 21, scope: !2570)
!2573 = !DILocation(line: 710, column: 23, scope: !2570)
!2574 = !DILocation(line: 710, column: 30, scope: !2570)
!2575 = !DILocation(line: 710, column: 5, scope: !2570)
!2576 = !DILocation(line: 711, column: 1, scope: !2570)
!2577 = !DILocation(line: 712, column: 5, scope: !2570)
!2578 = !DILocation(line: 715, column: 2, scope: !2462)
!2579 = !DILocation(line: 717, column: 6, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !455, file: !13, line: 717, column: 6)
!2581 = !DILocation(line: 717, column: 12, scope: !2580)
!2582 = !DILocation(line: 717, column: 6, scope: !455)
!2583 = !DILocation(line: 718, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !13, line: 717, column: 21)
!2585 = !DILocation(line: 718, column: 3, scope: !2584)
!2586 = !DILocation(line: 718, column: 8, scope: !2584)
!2587 = !DILocation(line: 718, column: 13, scope: !2584)
!2588 = !DILocation(line: 719, column: 8, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2584, file: !13, line: 719, column: 7)
!2590 = !DILocation(line: 719, column: 13, scope: !2589)
!2591 = !DILocation(line: 719, column: 7, scope: !2584)
!2592 = !DILocation(line: 720, column: 4, scope: !2589)
!2593 = !DILocation(line: 721, column: 10, scope: !2584)
!2594 = !DILocation(line: 721, column: 15, scope: !2584)
!2595 = !DILocation(line: 721, column: 3, scope: !2584)
!2596 = !DILocation(line: 723, column: 20, scope: !2584)
!2597 = !DILocation(line: 723, column: 25, scope: !2584)
!2598 = !DILocation(line: 723, column: 31, scope: !2584)
!2599 = !DILocation(line: 721, column: 19, scope: !2584)
!2600 = !DILocation(line: 721, column: 28, scope: !2584)
!2601 = !DILocation(line: 721, column: 40, scope: !2584)
!2602 = !DILocation(line: 721, column: 49, scope: !2584)
!2603 = !DILocation(line: 723, column: 3, scope: !2584)
!2604 = !DILocation(line: 723, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2584, file: !13, line: 723, column: 7)
!2606 = !DILocation(line: 723, column: 13, scope: !2605)
!2607 = !DILocation(line: 723, column: 7, scope: !2584)
!2608 = !DILocation(line: 725, column: 18, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !13, line: 725, column: 8)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !13, line: 723, column: 28)
!2611 = !DILocation(line: 725, column: 23, scope: !2609)
!2612 = !DILocation(line: 725, column: 29, scope: !2609)
!2613 = !DILocation(line: 725, column: 31, scope: !2609)
!2614 = !DILocation(line: 725, column: 35, scope: !2609)
!2615 = !DILocation(line: 727, column: 17, scope: !2609)
!2616 = !DILocation(line: 727, column: 23, scope: !2609)
!2617 = !DILocation(line: 727, column: 32, scope: !2609)
!2618 = !DILocation(line: 728, column: 17, scope: !2609)
!2619 = !DILocation(line: 728, column: 32, scope: !2609)
!2620 = !DILocation(line: 729, column: 17, scope: !2609)
!2621 = !DILocation(line: 729, column: 32, scope: !2609)
!2622 = !DILocation(line: 725, column: 8, scope: !2609)
!2623 = !DILocation(line: 729, column: 41, scope: !2609)
!2624 = !DILocation(line: 725, column: 8, scope: !2610)
!2625 = !DILocation(line: 732, column: 30, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2609, file: !13, line: 729, column: 46)
!2627 = !DILocation(line: 732, column: 29, scope: !2626)
!2628 = !DILocation(line: 732, column: 20, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2626, file: !13, discriminator: 1)
!2630 = !DILocation(line: 732, column: 38, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2626, file: !13, discriminator: 2)
!2632 = !DILocation(line: 732, column: 37, scope: !2626)
!2633 = !DILocation(line: 730, column: 5, scope: !2626)
!2634 = !DILocation(line: 733, column: 1, scope: !2626)
!2635 = !DILocation(line: 734, column: 5, scope: !2626)
!2636 = !DILocation(line: 736, column: 3, scope: !2610)
!2637 = !DILocation(line: 736, column: 14, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2639, file: !13, discriminator: 1)
!2639 = distinct !DILexicalBlock(scope: !2605, file: !13, line: 736, column: 14)
!2640 = !DILocation(line: 736, column: 20, scope: !2638)
!2641 = !DILocation(line: 739, column: 33, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !13, line: 736, column: 36)
!2643 = !DILocation(line: 739, column: 39, scope: !2642)
!2644 = !DILocation(line: 740, column: 33, scope: !2642)
!2645 = !DILocation(line: 741, column: 33, scope: !2642)
!2646 = !DILocation(line: 742, column: 33, scope: !2642)
!2647 = !DILocation(line: 743, column: 33, scope: !2642)
!2648 = !DILocation(line: 744, column: 33, scope: !2642)
!2649 = !DILocation(line: 745, column: 33, scope: !2642)
!2650 = !DILocation(line: 745, column: 39, scope: !2642)
!2651 = !DILocation(line: 739, column: 5, scope: !2642)
!2652 = !DILocation(line: 738, column: 4, scope: !2642)
!2653 = !DILocation(line: 738, column: 9, scope: !2642)
!2654 = !DILocation(line: 738, column: 15, scope: !2642)
!2655 = !DILocation(line: 738, column: 17, scope: !2642)
!2656 = !DILocation(line: 738, column: 22, scope: !2642)
!2657 = !DILocation(line: 738, column: 31, scope: !2642)
!2658 = !DILocation(line: 746, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2642, file: !13, line: 746, column: 8)
!2660 = !DILocation(line: 746, column: 14, scope: !2659)
!2661 = !DILocation(line: 746, column: 20, scope: !2659)
!2662 = !DILocation(line: 746, column: 22, scope: !2659)
!2663 = !DILocation(line: 746, column: 27, scope: !2659)
!2664 = !DILocation(line: 746, column: 8, scope: !2642)
!2665 = !DILocation(line: 747, column: 1, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2659, file: !13, line: 746, column: 37)
!2667 = !DILocation(line: 748, column: 5, scope: !2666)
!2668 = !DILocation(line: 750, column: 3, scope: !2642)
!2669 = !DILocation(line: 751, column: 2, scope: !2584)
!2670 = !DILocation(line: 754, column: 6, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !455, file: !13, line: 754, column: 6)
!2672 = !DILocation(line: 754, column: 12, scope: !2671)
!2673 = !DILocation(line: 754, column: 6, scope: !455)
!2674 = !DILocation(line: 755, column: 17, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !13, line: 754, column: 22)
!2676 = !DILocation(line: 755, column: 3, scope: !2675)
!2677 = !DILocation(line: 755, column: 8, scope: !2675)
!2678 = !DILocation(line: 755, column: 15, scope: !2675)
!2679 = !DILocation(line: 756, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !13, line: 756, column: 7)
!2681 = !DILocation(line: 756, column: 13, scope: !2680)
!2682 = !DILocation(line: 756, column: 7, scope: !2675)
!2683 = !DILocation(line: 757, column: 4, scope: !2680)
!2684 = !DILocation(line: 758, column: 10, scope: !2675)
!2685 = !DILocation(line: 758, column: 15, scope: !2675)
!2686 = !DILocation(line: 758, column: 3, scope: !2675)
!2687 = !DILocation(line: 760, column: 20, scope: !2675)
!2688 = !DILocation(line: 760, column: 25, scope: !2675)
!2689 = !DILocation(line: 760, column: 33, scope: !2675)
!2690 = !DILocation(line: 761, column: 19, scope: !2675)
!2691 = !DILocation(line: 762, column: 19, scope: !2675)
!2692 = !DILocation(line: 765, column: 19, scope: !2675)
!2693 = !DILocation(line: 765, column: 28, scope: !2675)
!2694 = !DILocation(line: 765, column: 40, scope: !2675)
!2695 = !DILocation(line: 765, column: 49, scope: !2675)
!2696 = !DILocation(line: 760, column: 3, scope: !2675)
!2697 = !DILocation(line: 766, column: 2, scope: !2675)
!2698 = !DILocation(line: 770, column: 6, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !455, file: !13, line: 770, column: 6)
!2700 = !DILocation(line: 770, column: 11, scope: !2699)
!2701 = !DILocation(line: 770, column: 6, scope: !455)
!2702 = !DILocation(line: 771, column: 19, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !13, line: 771, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !13, line: 770, column: 17)
!2705 = !DILocation(line: 771, column: 37, scope: !2703)
!2706 = !DILocation(line: 771, column: 42, scope: !2703)
!2707 = !DILocation(line: 771, column: 7, scope: !2703)
!2708 = !DILocation(line: 771, column: 48, scope: !2703)
!2709 = !DILocation(line: 771, column: 7, scope: !2704)
!2710 = !DILocation(line: 772, column: 4, scope: !2703)
!2711 = !DILocation(line: 773, column: 2, scope: !2704)
!2712 = !DILocation(line: 774, column: 6, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !455, file: !13, line: 774, column: 6)
!2714 = !DILocation(line: 774, column: 11, scope: !2713)
!2715 = !DILocation(line: 774, column: 6, scope: !455)
!2716 = !DILocation(line: 775, column: 19, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !13, line: 775, column: 7)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !13, line: 774, column: 17)
!2719 = !DILocation(line: 775, column: 37, scope: !2717)
!2720 = !DILocation(line: 775, column: 42, scope: !2717)
!2721 = !DILocation(line: 775, column: 7, scope: !2717)
!2722 = !DILocation(line: 775, column: 48, scope: !2717)
!2723 = !DILocation(line: 775, column: 7, scope: !2718)
!2724 = !DILocation(line: 776, column: 4, scope: !2717)
!2725 = !DILocation(line: 777, column: 2, scope: !2718)
!2726 = !DILocation(line: 779, column: 6, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !455, file: !13, line: 779, column: 6)
!2728 = !DILocation(line: 779, column: 11, scope: !2727)
!2729 = !DILocation(line: 779, column: 6, scope: !455)
!2730 = !DILocation(line: 780, column: 19, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !13, line: 780, column: 7)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !13, line: 779, column: 19)
!2733 = !DILocation(line: 780, column: 39, scope: !2731)
!2734 = !DILocation(line: 780, column: 44, scope: !2731)
!2735 = !DILocation(line: 780, column: 7, scope: !2731)
!2736 = !DILocation(line: 780, column: 52, scope: !2731)
!2737 = !DILocation(line: 780, column: 7, scope: !2732)
!2738 = !DILocation(line: 781, column: 4, scope: !2731)
!2739 = !DILocation(line: 782, column: 2, scope: !2732)
!2740 = !DILocation(line: 785, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !455, file: !13, line: 785, column: 6)
!2742 = !DILocation(line: 785, column: 6, scope: !455)
!2743 = !DILocation(line: 786, column: 8, scope: !2741)
!2744 = !DILocation(line: 786, column: 3, scope: !2741)
!2745 = !DILocation(line: 787, column: 6, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !455, file: !13, line: 787, column: 6)
!2747 = !DILocation(line: 787, column: 6, scope: !455)
!2748 = !DILocation(line: 788, column: 8, scope: !2746)
!2749 = !DILocation(line: 788, column: 3, scope: !2746)
!2750 = !DILocation(line: 789, column: 2, scope: !455)
!2751 = !DILocation(line: 792, column: 6, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !455, file: !13, line: 792, column: 6)
!2753 = !DILocation(line: 792, column: 6, scope: !455)
!2754 = !DILocation(line: 793, column: 8, scope: !2752)
!2755 = !DILocation(line: 793, column: 3, scope: !2752)
!2756 = !DILocation(line: 794, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !455, file: !13, line: 794, column: 6)
!2758 = !DILocation(line: 794, column: 6, scope: !455)
!2759 = !DILocation(line: 795, column: 8, scope: !2757)
!2760 = !DILocation(line: 795, column: 3, scope: !2757)
!2761 = !DILocation(line: 796, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !455, file: !13, line: 796, column: 6)
!2763 = !DILocation(line: 796, column: 11, scope: !2762)
!2764 = !DILocation(line: 796, column: 6, scope: !455)
!2765 = !DILocation(line: 797, column: 8, scope: !2762)
!2766 = !DILocation(line: 797, column: 13, scope: !2762)
!2767 = !DILocation(line: 797, column: 3, scope: !2762)
!2768 = !DILocation(line: 798, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !455, file: !13, line: 798, column: 6)
!2770 = !DILocation(line: 798, column: 11, scope: !2769)
!2771 = !DILocation(line: 798, column: 6, scope: !455)
!2772 = !DILocation(line: 799, column: 8, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !13, line: 798, column: 17)
!2774 = !DILocation(line: 799, column: 13, scope: !2773)
!2775 = !DILocation(line: 799, column: 3, scope: !2773)
!2776 = !DILocation(line: 800, column: 2, scope: !2773)
!2777 = !DILocation(line: 801, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !455, file: !13, line: 801, column: 6)
!2779 = !DILocation(line: 801, column: 11, scope: !2778)
!2780 = !DILocation(line: 801, column: 6, scope: !455)
!2781 = !DILocation(line: 802, column: 8, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !13, line: 801, column: 19)
!2783 = !DILocation(line: 802, column: 13, scope: !2782)
!2784 = !DILocation(line: 802, column: 3, scope: !2782)
!2785 = !DILocation(line: 803, column: 2, scope: !2782)
!2786 = !DILocation(line: 804, column: 9, scope: !455)
!2787 = !DILocation(line: 804, column: 2, scope: !455)
!2788 = !DILocation(line: 805, column: 2, scope: !455)
!2789 = !DILocation(line: 806, column: 1, scope: !455)
!2790 = !DILocalVariable(name: "logspec", arg: 1, scope: !37, file: !13, line: 459, type: !7)
!2791 = !DILocation(line: 459, column: 41, scope: !37)
!2792 = !DILocalVariable(name: "srchost", arg: 2, scope: !37, file: !13, line: 460, type: !10)
!2793 = !DILocation(line: 460, column: 35, scope: !37)
!2794 = !DILocalVariable(name: "srcport", arg: 3, scope: !37, file: !13, line: 460, type: !10)
!2795 = !DILocation(line: 460, column: 50, scope: !37)
!2796 = !DILocalVariable(name: "dsthost", arg: 4, scope: !37, file: !13, line: 461, type: !10)
!2797 = !DILocation(line: 461, column: 35, scope: !37)
!2798 = !DILocalVariable(name: "dstport", arg: 5, scope: !37, file: !13, line: 461, type: !10)
!2799 = !DILocation(line: 461, column: 50, scope: !37)
!2800 = !DILocalVariable(name: "exec_path", arg: 6, scope: !37, file: !13, line: 462, type: !10)
!2801 = !DILocation(line: 462, column: 35, scope: !37)
!2802 = !DILocalVariable(name: "user", arg: 7, scope: !37, file: !13, line: 462, type: !10)
!2803 = !DILocation(line: 462, column: 52, scope: !37)
!2804 = !DILocalVariable(name: "group", arg: 8, scope: !37, file: !13, line: 462, type: !10)
!2805 = !DILocation(line: 462, column: 64, scope: !37)
!2806 = !DILocalVariable(name: "path_buflen", scope: !37, file: !13, line: 465, type: !101)
!2807 = !DILocation(line: 465, column: 9, scope: !37)
!2808 = !DILocalVariable(name: "path_buf", scope: !37, file: !13, line: 466, type: !10)
!2809 = !DILocation(line: 466, column: 8, scope: !37)
!2810 = !DILocation(line: 466, column: 26, scope: !37)
!2811 = !DILocation(line: 466, column: 19, scope: !37)
!2812 = !DILocation(line: 467, column: 6, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !37, file: !13, line: 467, column: 6)
!2814 = !DILocation(line: 467, column: 15, scope: !2813)
!2815 = !DILocation(line: 467, column: 6, scope: !37)
!2816 = !DILocation(line: 468, column: 3, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !13, line: 467, column: 23)
!2818 = !DILocation(line: 469, column: 3, scope: !2817)
!2819 = !DILocation(line: 473, column: 2, scope: !37)
!2820 = !DILocation(line: 473, column: 14, scope: !37)
!2821 = !DILocalVariable(name: "path_len", scope: !37, file: !13, line: 476, type: !101)
!2822 = !DILocation(line: 476, column: 9, scope: !37)
!2823 = !DILocalVariable(name: "p", scope: !2824, file: !13, line: 477, type: !7)
!2824 = distinct !DILexicalBlock(scope: !37, file: !13, line: 477, column: 2)
!2825 = !DILocation(line: 477, column: 19, scope: !2824)
!2826 = !DILocation(line: 477, column: 23, scope: !2824)
!2827 = !DILocation(line: 477, column: 7, scope: !2824)
!2828 = !DILocation(line: 477, column: 33, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2830, file: !13, discriminator: 1)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !13, line: 477, column: 2)
!2831 = !DILocation(line: 477, column: 32, scope: !2829)
!2832 = !DILocation(line: 477, column: 35, scope: !2829)
!2833 = !DILocation(line: 477, column: 2, scope: !2829)
!2834 = !DILocalVariable(name: "elem", scope: !2835, file: !13, line: 478, type: !7)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !13, line: 477, column: 49)
!2836 = !DILocation(line: 478, column: 15, scope: !2835)
!2837 = !DILocalVariable(name: "elem_len", scope: !2835, file: !13, line: 479, type: !101)
!2838 = !DILocation(line: 479, column: 10, scope: !2835)
!2839 = !DILocalVariable(name: "timebuf", scope: !2835, file: !13, line: 482, type: !2331)
!2840 = !DILocation(line: 482, column: 8, scope: !2835)
!2841 = !DILocalVariable(name: "addrbuf", scope: !2835, file: !13, line: 483, type: !2842)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 432, align: 8, elements: !2843)
!2843 = !{!2844}
!2844 = !DISubrange(count: 54)
!2845 = !DILocation(line: 483, column: 8, scope: !2835)
!2846 = !DILocation(line: 486, column: 12, scope: !2835)
!2847 = !DILocation(line: 486, column: 11, scope: !2835)
!2848 = !DILocation(line: 486, column: 3, scope: !2835)
!2849 = !DILocation(line: 488, column: 5, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2835, file: !13, line: 486, column: 15)
!2851 = !DILocation(line: 490, column: 13, scope: !2850)
!2852 = !DILocation(line: 490, column: 12, scope: !2850)
!2853 = !DILocation(line: 490, column: 4, scope: !2850)
!2854 = !DILocation(line: 494, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !13, line: 490, column: 16)
!2856 = !DILocation(line: 495, column: 14, scope: !2855)
!2857 = !DILocation(line: 496, column: 5, scope: !2855)
!2858 = !DILocation(line: 498, column: 12, scope: !2855)
!2859 = !DILocation(line: 498, column: 10, scope: !2855)
!2860 = !DILocation(line: 499, column: 14, scope: !2855)
!2861 = !DILocation(line: 500, column: 5, scope: !2855)
!2862 = !DILocation(line: 502, column: 18, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !13, line: 502, column: 9)
!2864 = !DILocation(line: 503, column: 27, scope: !2863)
!2865 = !DILocation(line: 503, column: 36, scope: !2863)
!2866 = !DILocation(line: 502, column: 9, scope: !2863)
!2867 = !DILocation(line: 503, column: 45, scope: !2863)
!2868 = !DILocation(line: 502, column: 9, scope: !2855)
!2869 = !DILocation(line: 504, column: 6, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !13, line: 503, column: 50)
!2871 = !DILocation(line: 504, column: 17, scope: !2870)
!2872 = !DILocation(line: 505, column: 6, scope: !2870)
!2873 = !DILocation(line: 505, column: 17, scope: !2870)
!2874 = !DILocation(line: 506, column: 5, scope: !2870)
!2875 = !DILocation(line: 507, column: 12, scope: !2855)
!2876 = !DILocation(line: 507, column: 10, scope: !2855)
!2877 = !DILocation(line: 508, column: 23, scope: !2855)
!2878 = !DILocation(line: 508, column: 16, scope: !2855)
!2879 = !DILocation(line: 508, column: 14, scope: !2855)
!2880 = !DILocation(line: 509, column: 5, scope: !2855)
!2881 = !DILocation(line: 511, column: 12, scope: !2855)
!2882 = !DILocation(line: 511, column: 10, scope: !2855)
!2883 = !DILocation(line: 512, column: 23, scope: !2855)
!2884 = !DILocation(line: 512, column: 16, scope: !2855)
!2885 = !DILocation(line: 512, column: 14, scope: !2855)
!2886 = !DILocation(line: 513, column: 5, scope: !2855)
!2887 = !DILocation(line: 515, column: 12, scope: !2855)
!2888 = !DILocation(line: 515, column: 10, scope: !2855)
!2889 = !DILocation(line: 516, column: 23, scope: !2855)
!2890 = !DILocation(line: 516, column: 16, scope: !2855)
!2891 = !DILocation(line: 516, column: 14, scope: !2855)
!2892 = !DILocation(line: 517, column: 5, scope: !2855)
!2893 = !DILocation(line: 519, column: 18, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2855, file: !13, line: 519, column: 9)
!2895 = !DILocation(line: 520, column: 27, scope: !2894)
!2896 = !DILocation(line: 520, column: 36, scope: !2894)
!2897 = !DILocation(line: 519, column: 9, scope: !2894)
!2898 = !DILocation(line: 520, column: 45, scope: !2894)
!2899 = !DILocation(line: 519, column: 9, scope: !2855)
!2900 = !DILocation(line: 521, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !13, line: 520, column: 50)
!2902 = !DILocation(line: 521, column: 17, scope: !2901)
!2903 = !DILocation(line: 522, column: 6, scope: !2901)
!2904 = !DILocation(line: 522, column: 17, scope: !2901)
!2905 = !DILocation(line: 523, column: 5, scope: !2901)
!2906 = !DILocation(line: 524, column: 12, scope: !2855)
!2907 = !DILocation(line: 524, column: 10, scope: !2855)
!2908 = !DILocation(line: 525, column: 23, scope: !2855)
!2909 = !DILocation(line: 525, column: 16, scope: !2855)
!2910 = !DILocation(line: 525, column: 14, scope: !2855)
!2911 = !DILocation(line: 526, column: 5, scope: !2855)
!2912 = !DILocation(line: 528, column: 12, scope: !2855)
!2913 = !DILocation(line: 528, column: 10, scope: !2855)
!2914 = !DILocation(line: 529, column: 23, scope: !2855)
!2915 = !DILocation(line: 529, column: 16, scope: !2855)
!2916 = !DILocation(line: 529, column: 14, scope: !2855)
!2917 = !DILocation(line: 530, column: 5, scope: !2855)
!2918 = !DILocation(line: 532, column: 12, scope: !2855)
!2919 = !DILocation(line: 532, column: 10, scope: !2855)
!2920 = !DILocation(line: 533, column: 23, scope: !2855)
!2921 = !DILocation(line: 533, column: 16, scope: !2855)
!2922 = !DILocation(line: 533, column: 14, scope: !2855)
!2923 = !DILocation(line: 534, column: 5, scope: !2855)
!2924 = !DILocation(line: 536, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2855, file: !13, line: 536, column: 9)
!2926 = !DILocation(line: 536, column: 9, scope: !2855)
!2927 = !DILocalVariable(name: "match", scope: !2928, file: !13, line: 537, type: !10)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !13, line: 536, column: 20)
!2929 = !DILocation(line: 537, column: 12, scope: !2928)
!2930 = !DILocation(line: 537, column: 20, scope: !2928)
!2931 = !DILocation(line: 538, column: 6, scope: !2928)
!2932 = !DILocation(line: 538, column: 29, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2928, file: !13, discriminator: 1)
!2934 = !DILocation(line: 538, column: 22, scope: !2933)
!2935 = !DILocation(line: 538, column: 20, scope: !2933)
!2936 = !DILocation(line: 538, column: 42, scope: !2933)
!2937 = !DILocation(line: 538, column: 6, scope: !2933)
!2938 = !DILocation(line: 539, column: 12, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2928, file: !13, line: 538, column: 50)
!2940 = !DILocation(line: 540, column: 14, scope: !2939)
!2941 = !DILocation(line: 540, column: 12, scope: !2939)
!2942 = !DILocation(line: 538, column: 6, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2928, file: !13, discriminator: 2)
!2944 = distinct !{!2944, !2931}
!2945 = !DILocation(line: 542, column: 17, scope: !2928)
!2946 = !DILocation(line: 542, column: 31, scope: !2933)
!2947 = !DILocation(line: 542, column: 24, scope: !2933)
!2948 = !DILocation(line: 542, column: 17, scope: !2933)
!2949 = !DILocation(line: 542, column: 17, scope: !2943)
!2950 = !DILocation(line: 542, column: 17, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2928, file: !13, discriminator: 3)
!2952 = !DILocation(line: 542, column: 15, scope: !2951)
!2953 = !DILocation(line: 543, column: 5, scope: !2928)
!2954 = !DILocation(line: 544, column: 15, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2925, file: !13, line: 543, column: 12)
!2956 = !DILocation(line: 546, column: 5, scope: !2855)
!2957 = !DILocation(line: 548, column: 12, scope: !2855)
!2958 = !DILocation(line: 548, column: 10, scope: !2855)
!2959 = !DILocation(line: 549, column: 16, scope: !2855)
!2960 = !DILocation(line: 549, column: 35, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2855, file: !13, discriminator: 1)
!2962 = !DILocation(line: 549, column: 28, scope: !2961)
!2963 = !DILocation(line: 549, column: 16, scope: !2961)
!2964 = !DILocation(line: 549, column: 16, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2855, file: !13, discriminator: 2)
!2966 = !DILocation(line: 549, column: 16, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2855, file: !13, discriminator: 3)
!2968 = !DILocation(line: 549, column: 14, scope: !2967)
!2969 = !DILocation(line: 550, column: 5, scope: !2855)
!2970 = !DILocation(line: 552, column: 12, scope: !2855)
!2971 = !DILocation(line: 552, column: 10, scope: !2855)
!2972 = !DILocation(line: 553, column: 16, scope: !2855)
!2973 = !DILocation(line: 553, column: 30, scope: !2961)
!2974 = !DILocation(line: 553, column: 23, scope: !2961)
!2975 = !DILocation(line: 553, column: 16, scope: !2961)
!2976 = !DILocation(line: 553, column: 16, scope: !2965)
!2977 = !DILocation(line: 553, column: 16, scope: !2967)
!2978 = !DILocation(line: 553, column: 14, scope: !2967)
!2979 = !DILocation(line: 554, column: 5, scope: !2855)
!2980 = !DILocation(line: 556, column: 12, scope: !2855)
!2981 = !DILocation(line: 556, column: 10, scope: !2855)
!2982 = !DILocation(line: 557, column: 16, scope: !2855)
!2983 = !DILocation(line: 557, column: 31, scope: !2961)
!2984 = !DILocation(line: 557, column: 24, scope: !2961)
!2985 = !DILocation(line: 557, column: 16, scope: !2961)
!2986 = !DILocation(line: 557, column: 16, scope: !2965)
!2987 = !DILocation(line: 557, column: 16, scope: !2967)
!2988 = !DILocation(line: 557, column: 14, scope: !2967)
!2989 = !DILocation(line: 558, column: 5, scope: !2855)
!2990 = !DILocalVariable(name: "epoch", scope: !2991, file: !13, line: 560, type: !1685)
!2991 = distinct !DILexicalBlock(scope: !2855, file: !13, line: 559, column: 14)
!2992 = !DILocation(line: 560, column: 12, scope: !2991)
!2993 = !DILocalVariable(name: "utc", scope: !2991, file: !13, line: 561, type: !2338)
!2994 = !DILocation(line: 561, column: 16, scope: !2991)
!2995 = !DILocation(line: 563, column: 5, scope: !2991)
!2996 = !DILocation(line: 564, column: 11, scope: !2991)
!2997 = !DILocation(line: 564, column: 9, scope: !2991)
!2998 = !DILocation(line: 565, column: 14, scope: !2991)
!2999 = !DILocation(line: 565, column: 49, scope: !2991)
!3000 = !DILocation(line: 565, column: 5, scope: !2991)
!3001 = !DILocation(line: 567, column: 12, scope: !2991)
!3002 = !DILocation(line: 567, column: 10, scope: !2991)
!3003 = !DILocation(line: 568, column: 14, scope: !2991)
!3004 = !DILocation(line: 569, column: 5, scope: !2991)
!3005 = !DILocation(line: 571, column: 4, scope: !2850)
!3006 = !DILocation(line: 573, column: 11, scope: !2850)
!3007 = !DILocation(line: 573, column: 9, scope: !2850)
!3008 = !DILocation(line: 574, column: 13, scope: !2850)
!3009 = !DILocation(line: 575, column: 4, scope: !2850)
!3010 = !DILocation(line: 578, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2835, file: !13, line: 578, column: 7)
!3012 = !DILocation(line: 578, column: 16, scope: !3011)
!3013 = !DILocation(line: 578, column: 7, scope: !2835)
!3014 = !DILocation(line: 580, column: 8, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !13, line: 580, column: 8)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !13, line: 578, column: 21)
!3017 = !DILocation(line: 580, column: 22, scope: !3015)
!3018 = !DILocation(line: 580, column: 20, scope: !3015)
!3019 = !DILocation(line: 580, column: 33, scope: !3015)
!3020 = !DILocation(line: 580, column: 42, scope: !3015)
!3021 = !DILocation(line: 580, column: 31, scope: !3015)
!3022 = !DILocation(line: 580, column: 8, scope: !3016)
!3023 = !DILocation(line: 584, column: 20, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3015, file: !13, line: 580, column: 47)
!3025 = !DILocation(line: 584, column: 29, scope: !3024)
!3026 = !DILocation(line: 584, column: 17, scope: !3024)
!3027 = !DILocalVariable(name: "newbuf", scope: !3024, file: !13, line: 585, type: !10)
!3028 = !DILocation(line: 585, column: 11, scope: !3024)
!3029 = !DILocation(line: 585, column: 28, scope: !3024)
!3030 = !DILocation(line: 585, column: 38, scope: !3024)
!3031 = !DILocation(line: 585, column: 20, scope: !3024)
!3032 = !DILocation(line: 586, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3024, file: !13, line: 586, column: 9)
!3034 = !DILocation(line: 586, column: 16, scope: !3033)
!3035 = !DILocation(line: 586, column: 9, scope: !3024)
!3036 = !DILocation(line: 587, column: 6, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !13, line: 586, column: 24)
!3038 = !DILocation(line: 589, column: 11, scope: !3037)
!3039 = !DILocation(line: 589, column: 6, scope: !3037)
!3040 = !DILocation(line: 590, column: 6, scope: !3037)
!3041 = !DILocation(line: 592, column: 16, scope: !3024)
!3042 = !DILocation(line: 592, column: 14, scope: !3024)
!3043 = !DILocation(line: 593, column: 4, scope: !3024)
!3044 = !DILocation(line: 595, column: 12, scope: !3016)
!3045 = !DILocation(line: 595, column: 22, scope: !3016)
!3046 = !DILocation(line: 595, column: 28, scope: !3016)
!3047 = !DILocation(line: 595, column: 4, scope: !3016)
!3048 = !DILocation(line: 596, column: 16, scope: !3016)
!3049 = !DILocation(line: 596, column: 13, scope: !3016)
!3050 = !DILocation(line: 597, column: 3, scope: !3016)
!3051 = !DILocation(line: 598, column: 2, scope: !2835)
!3052 = !DILocation(line: 477, column: 45, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !2830, file: !13, discriminator: 2)
!3054 = !DILocation(line: 477, column: 2, scope: !3053)
!3055 = distinct !{!3055, !3056}
!3056 = !DILocation(line: 477, column: 2, scope: !37)
!3057 = !DILocation(line: 601, column: 1, scope: !37)
!3058 = !DILocation(line: 601, column: 15, scope: !37)
!3059 = !DILocation(line: 601, column: 13, scope: !37)
!3060 = !DILocation(line: 601, column: 2, scope: !37)
!3061 = !DILocation(line: 601, column: 2, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !37, file: !13, discriminator: 1)
!3063 = !DILocation(line: 601, column: 18, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !37, file: !13, discriminator: 2)
!3065 = !DILocation(line: 601, column: 2, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !37, file: !13, discriminator: 3)
!3067 = !DILocation(line: 602, column: 11, scope: !37)
!3068 = !DILocation(line: 602, column: 2, scope: !37)
!3069 = !DILocation(line: 602, column: 21, scope: !37)
!3070 = !DILocation(line: 603, column: 9, scope: !37)
!3071 = !DILocation(line: 603, column: 2, scope: !37)
!3072 = !DILocation(line: 604, column: 1, scope: !37)
!3073 = distinct !DISubprogram(name: "log_content_submit", scope: !13, file: !13, line: 812, type: !3074, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!32, !458, !3076, !32}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64, align: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "logbuf_t", file: !3078, line: 43, baseType: !3079)
!3078 = !DIFile(filename: "logbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logbuf", file: !3078, line: 37, size: 320, align: 64, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3084, !3085}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3079, file: !3078, line: 38, baseType: !5, size: 64, align: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !3079, file: !3078, line: 39, baseType: !196, size: 64, align: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !3079, file: !3078, line: 40, baseType: !4, size: 64, align: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !3079, file: !3078, line: 41, baseType: !87, size: 64, align: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3079, file: !3078, line: 42, baseType: !3086, size: 64, align: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64, align: 64)
!3087 = !DILocalVariable(name: "ctx", arg: 1, scope: !3073, file: !13, line: 812, type: !458)
!3088 = !DILocation(line: 812, column: 39, scope: !3073)
!3089 = !DILocalVariable(name: "lb", arg: 2, scope: !3073, file: !13, line: 812, type: !3076)
!3090 = !DILocation(line: 812, column: 54, scope: !3073)
!3091 = !DILocalVariable(name: "is_request", arg: 3, scope: !3073, file: !13, line: 812, type: !32)
!3092 = !DILocation(line: 812, column: 62, scope: !3073)
!3093 = !DILocalVariable(name: "prepflags", scope: !3073, file: !13, line: 814, type: !87)
!3094 = !DILocation(line: 814, column: 16, scope: !3073)
!3095 = !DILocalVariable(name: "lbpcap", scope: !3073, file: !13, line: 815, type: !3076)
!3096 = !DILocation(line: 815, column: 12, scope: !3073)
!3097 = !DILocalVariable(name: "lbmirror", scope: !3073, file: !13, line: 815, type: !3076)
!3098 = !DILocation(line: 815, column: 21, scope: !3073)
!3099 = !DILocation(line: 817, column: 6, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 817, column: 6)
!3101 = !DILocation(line: 817, column: 6, scope: !3073)
!3102 = !DILocation(line: 818, column: 13, scope: !3100)
!3103 = !DILocation(line: 818, column: 3, scope: !3100)
!3104 = !DILocation(line: 820, column: 30, scope: !3073)
!3105 = !DILocation(line: 820, column: 7, scope: !3073)
!3106 = !DILocation(line: 820, column: 5, scope: !3073)
!3107 = !DILocation(line: 821, column: 7, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 821, column: 6)
!3109 = !DILocation(line: 821, column: 6, scope: !3073)
!3110 = !DILocation(line: 822, column: 3, scope: !3108)
!3111 = !DILocation(line: 824, column: 22, scope: !3073)
!3112 = !DILocation(line: 824, column: 20, scope: !3073)
!3113 = !DILocation(line: 824, column: 9, scope: !3073)
!3114 = !DILocation(line: 825, column: 6, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 825, column: 6)
!3116 = !DILocation(line: 825, column: 6, scope: !3073)
!3117 = !DILocation(line: 826, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !13, line: 826, column: 7)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !13, line: 825, column: 24)
!3120 = !DILocation(line: 826, column: 7, scope: !3119)
!3121 = !DILocation(line: 827, column: 33, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !13, line: 826, column: 25)
!3123 = !DILocation(line: 827, column: 13, scope: !3122)
!3124 = !DILocation(line: 827, column: 11, scope: !3122)
!3125 = !DILocation(line: 828, column: 9, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !13, line: 828, column: 8)
!3127 = !DILocation(line: 828, column: 8, scope: !3122)
!3128 = !DILocation(line: 829, column: 5, scope: !3126)
!3129 = !DILocation(line: 830, column: 3, scope: !3122)
!3130 = !DILocation(line: 832, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3119, file: !13, line: 832, column: 7)
!3132 = !DILocation(line: 832, column: 7, scope: !3119)
!3133 = !DILocation(line: 833, column: 35, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !13, line: 832, column: 27)
!3135 = !DILocation(line: 833, column: 15, scope: !3134)
!3136 = !DILocation(line: 833, column: 13, scope: !3134)
!3137 = !DILocation(line: 834, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3134, file: !13, line: 834, column: 8)
!3139 = !DILocation(line: 834, column: 8, scope: !3134)
!3140 = !DILocation(line: 835, column: 5, scope: !3138)
!3141 = !DILocation(line: 836, column: 3, scope: !3134)
!3142 = !DILocation(line: 837, column: 2, scope: !3119)
!3143 = !DILocation(line: 837, column: 13, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !3145, file: !13, discriminator: 1)
!3145 = distinct !DILexicalBlock(scope: !3115, file: !13, line: 837, column: 13)
!3146 = !DILocation(line: 837, column: 30, scope: !3144)
!3147 = !DILocation(line: 837, column: 33, scope: !3148)
!3148 = !DILexicalBlockFile(scope: !3145, file: !13, discriminator: 2)
!3149 = !DILocation(line: 837, column: 13, scope: !3148)
!3150 = !DILocation(line: 838, column: 34, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3145, file: !13, line: 837, column: 53)
!3152 = !DILocation(line: 838, column: 14, scope: !3151)
!3153 = !DILocation(line: 838, column: 12, scope: !3151)
!3154 = !DILocation(line: 839, column: 8, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !13, line: 839, column: 7)
!3156 = !DILocation(line: 839, column: 7, scope: !3151)
!3157 = !DILocation(line: 840, column: 4, scope: !3155)
!3158 = !DILocation(line: 842, column: 2, scope: !3151)
!3159 = !DILocation(line: 844, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 844, column: 6)
!3161 = !DILocation(line: 844, column: 6, scope: !3073)
!3162 = !DILocation(line: 845, column: 21, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !13, line: 845, column: 7)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !13, line: 844, column: 24)
!3165 = !DILocation(line: 845, column: 39, scope: !3163)
!3166 = !DILocation(line: 845, column: 44, scope: !3163)
!3167 = !DILocation(line: 846, column: 21, scope: !3163)
!3168 = !DILocation(line: 846, column: 32, scope: !3163)
!3169 = !DILocation(line: 845, column: 7, scope: !3163)
!3170 = !DILocation(line: 846, column: 40, scope: !3163)
!3171 = !DILocation(line: 845, column: 7, scope: !3164)
!3172 = !DILocation(line: 847, column: 1, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3163, file: !13, line: 846, column: 47)
!3174 = !DILocation(line: 848, column: 4, scope: !3173)
!3175 = !DILocation(line: 850, column: 10, scope: !3164)
!3176 = !DILocation(line: 848, column: 2, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3164, file: !13, discriminator: 1)
!3178 = !DILocation(line: 850, column: 6, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3180, file: !13, discriminator: 1)
!3180 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 850, column: 6)
!3181 = !DILocation(line: 851, column: 21, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !13, line: 851, column: 7)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !13, line: 850, column: 26)
!3184 = !DILocation(line: 851, column: 41, scope: !3182)
!3185 = !DILocation(line: 851, column: 46, scope: !3182)
!3186 = !DILocation(line: 852, column: 21, scope: !3182)
!3187 = !DILocation(line: 852, column: 32, scope: !3182)
!3188 = !DILocation(line: 851, column: 7, scope: !3182)
!3189 = !DILocation(line: 852, column: 42, scope: !3182)
!3190 = !DILocation(line: 851, column: 7, scope: !3183)
!3191 = !DILocation(line: 853, column: 1, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3182, file: !13, line: 852, column: 49)
!3193 = !DILocation(line: 854, column: 4, scope: !3192)
!3194 = !DILocation(line: 856, column: 12, scope: !3183)
!3195 = !DILocation(line: 856, column: 2, scope: !3183)
!3196 = !DILocation(line: 858, column: 6, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 858, column: 6)
!3198 = !DILocation(line: 858, column: 6, scope: !3073)
!3199 = !DILocation(line: 859, column: 21, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !13, line: 859, column: 7)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !13, line: 858, column: 24)
!3202 = !DILocation(line: 859, column: 39, scope: !3200)
!3203 = !DILocation(line: 859, column: 44, scope: !3200)
!3204 = !DILocation(line: 860, column: 21, scope: !3200)
!3205 = !DILocation(line: 860, column: 32, scope: !3200)
!3206 = !DILocation(line: 859, column: 7, scope: !3200)
!3207 = !DILocation(line: 860, column: 36, scope: !3200)
!3208 = !DILocation(line: 859, column: 7, scope: !3201)
!3209 = !DILocation(line: 861, column: 4, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3200, file: !13, line: 860, column: 43)
!3211 = !DILocation(line: 863, column: 2, scope: !3201)
!3212 = !DILocation(line: 864, column: 2, scope: !3073)
!3213 = !DILocation(line: 866, column: 6, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 866, column: 6)
!3215 = !DILocation(line: 866, column: 13, scope: !3214)
!3216 = !DILocation(line: 866, column: 16, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3214, file: !13, discriminator: 1)
!3218 = !DILocation(line: 866, column: 26, scope: !3217)
!3219 = !DILocation(line: 866, column: 23, scope: !3217)
!3220 = !DILocation(line: 866, column: 6, scope: !3217)
!3221 = !DILocation(line: 867, column: 15, scope: !3214)
!3222 = !DILocation(line: 867, column: 3, scope: !3214)
!3223 = !DILocation(line: 868, column: 6, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3073, file: !13, line: 868, column: 6)
!3225 = !DILocation(line: 868, column: 15, scope: !3224)
!3226 = !DILocation(line: 868, column: 18, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3224, file: !13, discriminator: 1)
!3228 = !DILocation(line: 868, column: 30, scope: !3227)
!3229 = !DILocation(line: 868, column: 27, scope: !3227)
!3230 = !DILocation(line: 868, column: 6, scope: !3227)
!3231 = !DILocation(line: 869, column: 15, scope: !3224)
!3232 = !DILocation(line: 869, column: 3, scope: !3224)
!3233 = !DILocation(line: 870, column: 2, scope: !3073)
!3234 = !DILocation(line: 871, column: 1, scope: !3073)
!3235 = distinct !DISubprogram(name: "log_content_close", scope: !13, file: !13, line: 874, type: !3236, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!32, !458, !32}
!3238 = !DILocalVariable(name: "ctx", arg: 1, scope: !3235, file: !13, line: 874, type: !458)
!3239 = !DILocation(line: 874, column: 38, scope: !3235)
!3240 = !DILocalVariable(name: "by_requestor", arg: 2, scope: !3235, file: !13, line: 874, type: !32)
!3241 = !DILocation(line: 874, column: 47, scope: !3235)
!3242 = !DILocalVariable(name: "prepflags", scope: !3235, file: !13, line: 876, type: !87)
!3243 = !DILocation(line: 876, column: 16, scope: !3235)
!3244 = !DILocalVariable(name: "ctl", scope: !3235, file: !13, line: 877, type: !87)
!3245 = !DILocation(line: 877, column: 16, scope: !3235)
!3246 = !DILocation(line: 879, column: 6, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3235, file: !13, line: 879, column: 6)
!3248 = !DILocation(line: 879, column: 6, scope: !3235)
!3249 = !DILocation(line: 880, column: 13, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !13, line: 879, column: 20)
!3251 = !DILocation(line: 881, column: 7, scope: !3250)
!3252 = !DILocation(line: 882, column: 2, scope: !3250)
!3253 = !DILocation(line: 883, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3247, file: !13, line: 882, column: 9)
!3255 = !DILocation(line: 891, column: 6, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3235, file: !13, line: 891, column: 6)
!3257 = !DILocation(line: 891, column: 23, scope: !3256)
!3258 = !DILocation(line: 891, column: 26, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3256, file: !13, discriminator: 1)
!3260 = !DILocation(line: 891, column: 31, scope: !3259)
!3261 = !DILocation(line: 891, column: 6, scope: !3259)
!3262 = !DILocation(line: 892, column: 21, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !13, line: 892, column: 7)
!3264 = distinct !DILexicalBlock(scope: !3256, file: !13, line: 891, column: 37)
!3265 = !DILocation(line: 892, column: 39, scope: !3263)
!3266 = !DILocation(line: 892, column: 44, scope: !3263)
!3267 = !DILocation(line: 893, column: 21, scope: !3263)
!3268 = !DILocation(line: 892, column: 7, scope: !3263)
!3269 = !DILocation(line: 893, column: 37, scope: !3263)
!3270 = !DILocation(line: 892, column: 7, scope: !3264)
!3271 = !DILocation(line: 894, column: 4, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3263, file: !13, line: 893, column: 44)
!3273 = !DILocation(line: 896, column: 20, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3264, file: !13, line: 896, column: 7)
!3275 = !DILocation(line: 896, column: 38, scope: !3274)
!3276 = !DILocation(line: 896, column: 43, scope: !3274)
!3277 = !DILocation(line: 896, column: 49, scope: !3274)
!3278 = !DILocation(line: 896, column: 7, scope: !3274)
!3279 = !DILocation(line: 896, column: 54, scope: !3274)
!3280 = !DILocation(line: 896, column: 7, scope: !3264)
!3281 = !DILocation(line: 897, column: 4, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !13, line: 896, column: 61)
!3283 = !DILocation(line: 899, column: 3, scope: !3264)
!3284 = !DILocation(line: 899, column: 8, scope: !3264)
!3285 = !DILocation(line: 899, column: 13, scope: !3264)
!3286 = !DILocation(line: 900, column: 2, scope: !3264)
!3287 = !DILocation(line: 901, column: 6, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3235, file: !13, line: 901, column: 6)
!3289 = !DILocation(line: 901, column: 23, scope: !3288)
!3290 = !DILocation(line: 901, column: 26, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3288, file: !13, discriminator: 1)
!3292 = !DILocation(line: 901, column: 31, scope: !3291)
!3293 = !DILocation(line: 901, column: 6, scope: !3291)
!3294 = !DILocation(line: 902, column: 21, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !13, line: 902, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3288, file: !13, line: 901, column: 37)
!3297 = !DILocation(line: 902, column: 39, scope: !3295)
!3298 = !DILocation(line: 902, column: 44, scope: !3295)
!3299 = !DILocation(line: 903, column: 21, scope: !3295)
!3300 = !DILocation(line: 902, column: 7, scope: !3295)
!3301 = !DILocation(line: 903, column: 37, scope: !3295)
!3302 = !DILocation(line: 902, column: 7, scope: !3296)
!3303 = !DILocation(line: 904, column: 4, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3295, file: !13, line: 903, column: 44)
!3305 = !DILocation(line: 906, column: 20, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3296, file: !13, line: 906, column: 7)
!3307 = !DILocation(line: 906, column: 38, scope: !3306)
!3308 = !DILocation(line: 906, column: 43, scope: !3306)
!3309 = !DILocation(line: 906, column: 49, scope: !3306)
!3310 = !DILocation(line: 906, column: 7, scope: !3306)
!3311 = !DILocation(line: 906, column: 54, scope: !3306)
!3312 = !DILocation(line: 906, column: 7, scope: !3296)
!3313 = !DILocation(line: 907, column: 4, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3306, file: !13, line: 906, column: 61)
!3315 = !DILocation(line: 909, column: 3, scope: !3296)
!3316 = !DILocation(line: 909, column: 8, scope: !3296)
!3317 = !DILocation(line: 909, column: 13, scope: !3296)
!3318 = !DILocation(line: 910, column: 2, scope: !3296)
!3319 = !DILocation(line: 912, column: 6, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3235, file: !13, line: 912, column: 6)
!3321 = !DILocation(line: 912, column: 25, scope: !3320)
!3322 = !DILocation(line: 912, column: 28, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3320, file: !13, discriminator: 1)
!3324 = !DILocation(line: 912, column: 33, scope: !3323)
!3325 = !DILocation(line: 912, column: 6, scope: !3323)
!3326 = !DILocation(line: 913, column: 21, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !13, line: 913, column: 7)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !13, line: 912, column: 41)
!3329 = !DILocation(line: 913, column: 41, scope: !3327)
!3330 = !DILocation(line: 913, column: 46, scope: !3327)
!3331 = !DILocation(line: 914, column: 21, scope: !3327)
!3332 = !DILocation(line: 913, column: 7, scope: !3327)
!3333 = !DILocation(line: 914, column: 37, scope: !3327)
!3334 = !DILocation(line: 913, column: 7, scope: !3328)
!3335 = !DILocation(line: 915, column: 4, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3327, file: !13, line: 914, column: 44)
!3337 = !DILocation(line: 917, column: 20, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3328, file: !13, line: 917, column: 7)
!3339 = !DILocation(line: 917, column: 40, scope: !3338)
!3340 = !DILocation(line: 917, column: 45, scope: !3338)
!3341 = !DILocation(line: 917, column: 53, scope: !3338)
!3342 = !DILocation(line: 917, column: 7, scope: !3338)
!3343 = !DILocation(line: 917, column: 58, scope: !3338)
!3344 = !DILocation(line: 917, column: 7, scope: !3328)
!3345 = !DILocation(line: 918, column: 4, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3338, file: !13, line: 917, column: 65)
!3347 = !DILocation(line: 920, column: 3, scope: !3328)
!3348 = !DILocation(line: 920, column: 8, scope: !3328)
!3349 = !DILocation(line: 920, column: 15, scope: !3328)
!3350 = !DILocation(line: 921, column: 2, scope: !3328)
!3351 = !DILocation(line: 923, column: 2, scope: !3235)
!3352 = !DILocation(line: 924, column: 1, scope: !3235)
!3353 = distinct !DISubprogram(name: "log_cert_submit", scope: !13, file: !13, line: 1435, type: !3354, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!32, !7, !1315}
!3356 = !DILocalVariable(name: "fn", arg: 1, scope: !3353, file: !13, line: 1435, type: !7)
!3357 = !DILocation(line: 1435, column: 29, scope: !3353)
!3358 = !DILocalVariable(name: "crt", arg: 2, scope: !3353, file: !13, line: 1435, type: !1315)
!3359 = !DILocation(line: 1435, column: 39, scope: !3353)
!3360 = !DILocalVariable(name: "fh", scope: !3353, file: !13, line: 1437, type: !4)
!3361 = !DILocation(line: 1437, column: 8, scope: !3353)
!3362 = !DILocalVariable(name: "lb", scope: !3353, file: !13, line: 1438, type: !3076)
!3363 = !DILocation(line: 1438, column: 12, scope: !3353)
!3364 = !DILocalVariable(name: "pem", scope: !3353, file: !13, line: 1439, type: !10)
!3365 = !DILocation(line: 1439, column: 8, scope: !3353)
!3366 = !DILocation(line: 1441, column: 20, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3353, file: !13, line: 1441, column: 6)
!3368 = !DILocation(line: 1441, column: 13, scope: !3367)
!3369 = !DILocation(line: 1441, column: 11, scope: !3367)
!3370 = !DILocation(line: 1441, column: 6, scope: !3353)
!3371 = !DILocation(line: 1442, column: 3, scope: !3367)
!3372 = !DILocation(line: 1443, column: 30, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3353, file: !13, line: 1443, column: 6)
!3374 = !DILocation(line: 1443, column: 14, scope: !3373)
!3375 = !DILocation(line: 1443, column: 12, scope: !3373)
!3376 = !DILocation(line: 1443, column: 6, scope: !3353)
!3377 = !DILocation(line: 1444, column: 3, scope: !3373)
!3378 = !DILocation(line: 1445, column: 24, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3353, file: !13, line: 1445, column: 6)
!3380 = !DILocation(line: 1445, column: 36, scope: !3379)
!3381 = !DILocation(line: 1445, column: 29, scope: !3379)
!3382 = !DILocation(line: 1445, column: 13, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3379, file: !13, discriminator: 1)
!3384 = !DILocation(line: 1445, column: 11, scope: !3379)
!3385 = !DILocation(line: 1445, column: 6, scope: !3353)
!3386 = !DILocation(line: 1446, column: 1, scope: !3379)
!3387 = !DILocation(line: 1447, column: 3, scope: !3353)
!3388 = !DILocation(line: 1450, column: 7, scope: !3353)
!3389 = !DILocation(line: 1450, column: 2, scope: !3353)
!3390 = !DILocation(line: 1452, column: 7, scope: !3353)
!3391 = !DILocation(line: 1452, column: 2, scope: !3353)
!3392 = !DILocation(line: 1454, column: 2, scope: !3353)
!3393 = distinct !DISubprogram(name: "log_preinit", scope: !13, file: !13, line: 1492, type: !3394, isLocal: false, isDefinition: true, scopeLine: 1493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!32, !531}
!3396 = !DILocalVariable(name: "opts", arg: 1, scope: !3393, file: !13, line: 1492, type: !531)
!3397 = !DILocation(line: 1492, column: 21, scope: !3393)
!3398 = !DILocalVariable(name: "reopencb", scope: !3393, file: !13, line: 1494, type: !3399)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_reopen_func_t", file: !16, line: 38, baseType: !2225)
!3400 = !DILocation(line: 1494, column: 23, scope: !3393)
!3401 = !DILocalVariable(name: "opencb", scope: !3393, file: !13, line: 1495, type: !3402)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_open_func_t", file: !16, line: 39, baseType: !3403)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64, align: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!32, !4}
!3406 = !DILocation(line: 1495, column: 21, scope: !3393)
!3407 = !DILocalVariable(name: "closecb", scope: !3393, file: !13, line: 1496, type: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_close_func_t", file: !16, line: 40, baseType: !3409)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64, align: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !4, !87}
!3412 = !DILocation(line: 1496, column: 22, scope: !3393)
!3413 = !DILocalVariable(name: "writecb", scope: !3393, file: !13, line: 1497, type: !3414)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_write_func_t", file: !16, line: 41, baseType: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!3416 = !DILocation(line: 1497, column: 22, scope: !3393)
!3417 = !DILocalVariable(name: "prepcb", scope: !3393, file: !13, line: 1498, type: !3418)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "logger_prep_func_t", file: !16, line: 43, baseType: !3419)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64, align: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!3076, !4, !87, !3076}
!3422 = !DILocation(line: 1498, column: 21, scope: !3393)
!3423 = !DILocation(line: 1500, column: 6, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1500, column: 6)
!3425 = !DILocation(line: 1500, column: 12, scope: !3424)
!3426 = !DILocation(line: 1500, column: 6, scope: !3393)
!3427 = !DILocation(line: 1501, column: 7, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !13, line: 1501, column: 7)
!3429 = distinct !DILexicalBlock(scope: !3424, file: !13, line: 1500, column: 24)
!3430 = !DILocation(line: 1501, column: 13, scope: !3428)
!3431 = !DILocation(line: 1501, column: 7, scope: !3429)
!3432 = !DILocation(line: 1502, column: 13, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3428, file: !13, line: 1501, column: 31)
!3434 = !DILocation(line: 1503, column: 11, scope: !3433)
!3435 = !DILocation(line: 1504, column: 12, scope: !3433)
!3436 = !DILocation(line: 1505, column: 12, scope: !3433)
!3437 = !DILocation(line: 1506, column: 11, scope: !3433)
!3438 = !DILocation(line: 1507, column: 3, scope: !3433)
!3439 = !DILocation(line: 1507, column: 14, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3441, file: !13, discriminator: 1)
!3441 = distinct !DILexicalBlock(scope: !3428, file: !13, line: 1507, column: 14)
!3442 = !DILocation(line: 1507, column: 20, scope: !3440)
!3443 = !DILocation(line: 1508, column: 13, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !13, line: 1507, column: 39)
!3445 = !DILocation(line: 1509, column: 11, scope: !3444)
!3446 = !DILocation(line: 1510, column: 12, scope: !3444)
!3447 = !DILocation(line: 1511, column: 12, scope: !3444)
!3448 = !DILocation(line: 1512, column: 11, scope: !3444)
!3449 = !DILocation(line: 1513, column: 3, scope: !3444)
!3450 = !DILocation(line: 1514, column: 40, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !13, line: 1514, column: 8)
!3452 = distinct !DILexicalBlock(scope: !3441, file: !13, line: 1513, column: 10)
!3453 = !DILocation(line: 1514, column: 46, scope: !3451)
!3454 = !DILocation(line: 1514, column: 8, scope: !3451)
!3455 = !DILocation(line: 1514, column: 58, scope: !3451)
!3456 = !DILocation(line: 1514, column: 8, scope: !3452)
!3457 = !DILocation(line: 1515, column: 5, scope: !3451)
!3458 = !DILocation(line: 1516, column: 13, scope: !3452)
!3459 = !DILocation(line: 1517, column: 11, scope: !3452)
!3460 = !DILocation(line: 1518, column: 12, scope: !3452)
!3461 = !DILocation(line: 1519, column: 12, scope: !3452)
!3462 = !DILocation(line: 1520, column: 11, scope: !3452)
!3463 = !DILocation(line: 1522, column: 39, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3429, file: !13, line: 1522, column: 7)
!3465 = !DILocation(line: 1522, column: 49, scope: !3464)
!3466 = !DILocation(line: 1522, column: 57, scope: !3464)
!3467 = !DILocation(line: 1523, column: 39, scope: !3464)
!3468 = !DILocation(line: 1523, column: 48, scope: !3464)
!3469 = !DILocation(line: 1522, column: 28, scope: !3464)
!3470 = !DILocation(line: 1522, column: 26, scope: !3464)
!3471 = !DILocation(line: 1522, column: 7, scope: !3429)
!3472 = !DILocation(line: 1525, column: 4, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3464, file: !13, line: 1524, column: 55)
!3474 = !DILocation(line: 1526, column: 4, scope: !3473)
!3475 = !DILocation(line: 1528, column: 2, scope: !3429)
!3476 = !DILocation(line: 1529, column: 6, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1529, column: 6)
!3478 = !DILocation(line: 1529, column: 12, scope: !3477)
!3479 = !DILocation(line: 1529, column: 6, scope: !3393)
!3480 = !DILocation(line: 1530, column: 33, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !13, line: 1530, column: 7)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !13, line: 1529, column: 21)
!3483 = !DILocation(line: 1530, column: 39, scope: !3481)
!3484 = !DILocation(line: 1530, column: 53, scope: !3481)
!3485 = !DILocation(line: 1531, column: 33, scope: !3481)
!3486 = !DILocation(line: 1531, column: 39, scope: !3481)
!3487 = !DILocation(line: 1530, column: 32, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3481, file: !13, discriminator: 1)
!3489 = !DILocation(line: 1530, column: 32, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3481, file: !13, discriminator: 2)
!3491 = !DILocation(line: 1533, column: 33, scope: !3481)
!3492 = !DILocation(line: 1533, column: 39, scope: !3481)
!3493 = !DILocation(line: 1530, column: 32, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3481, file: !13, discriminator: 3)
!3495 = !DILocation(line: 1530, column: 32, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3481, file: !13, discriminator: 4)
!3497 = !DILocation(line: 1530, column: 7, scope: !3496)
!3498 = !DILocation(line: 1533, column: 48, scope: !3488)
!3499 = !DILocation(line: 1534, column: 4, scope: !3481)
!3500 = !DILocation(line: 1535, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3482, file: !13, line: 1535, column: 7)
!3502 = !DILocation(line: 1535, column: 13, scope: !3501)
!3503 = !DILocation(line: 1535, column: 7, scope: !3482)
!3504 = !DILocation(line: 1536, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3501, file: !13, line: 1535, column: 28)
!3506 = !DILocation(line: 1537, column: 11, scope: !3505)
!3507 = !DILocation(line: 1538, column: 12, scope: !3505)
!3508 = !DILocation(line: 1539, column: 12, scope: !3505)
!3509 = !DILocation(line: 1540, column: 11, scope: !3505)
!3510 = !DILocation(line: 1541, column: 3, scope: !3505)
!3511 = !DILocation(line: 1541, column: 14, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3513, file: !13, discriminator: 1)
!3513 = distinct !DILexicalBlock(scope: !3501, file: !13, line: 1541, column: 14)
!3514 = !DILocation(line: 1541, column: 20, scope: !3512)
!3515 = !DILocation(line: 1542, column: 13, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !13, line: 1541, column: 36)
!3517 = !DILocation(line: 1543, column: 11, scope: !3516)
!3518 = !DILocation(line: 1544, column: 12, scope: !3516)
!3519 = !DILocation(line: 1545, column: 12, scope: !3516)
!3520 = !DILocation(line: 1546, column: 11, scope: !3516)
!3521 = !DILocation(line: 1547, column: 3, scope: !3516)
!3522 = !DILocation(line: 1548, column: 13, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3513, file: !13, line: 1547, column: 10)
!3524 = !DILocation(line: 1549, column: 11, scope: !3523)
!3525 = !DILocation(line: 1550, column: 12, scope: !3523)
!3526 = !DILocation(line: 1551, column: 12, scope: !3523)
!3527 = !DILocation(line: 1552, column: 11, scope: !3523)
!3528 = !DILocation(line: 1554, column: 39, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3482, file: !13, line: 1554, column: 7)
!3530 = !DILocation(line: 1554, column: 49, scope: !3529)
!3531 = !DILocation(line: 1554, column: 57, scope: !3529)
!3532 = !DILocation(line: 1555, column: 39, scope: !3529)
!3533 = !DILocation(line: 1555, column: 48, scope: !3529)
!3534 = !DILocation(line: 1554, column: 28, scope: !3529)
!3535 = !DILocation(line: 1554, column: 26, scope: !3529)
!3536 = !DILocation(line: 1554, column: 7, scope: !3482)
!3537 = !DILocation(line: 1557, column: 4, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3529, file: !13, line: 1556, column: 55)
!3539 = !DILocation(line: 1558, column: 4, scope: !3538)
!3540 = !DILocation(line: 1560, column: 2, scope: !3482)
!3541 = !DILocation(line: 1562, column: 6, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1562, column: 6)
!3543 = !DILocation(line: 1562, column: 12, scope: !3542)
!3544 = !DILocation(line: 1562, column: 6, scope: !3393)
!3545 = !DILocation(line: 1563, column: 34, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !13, line: 1563, column: 7)
!3547 = distinct !DILexicalBlock(scope: !3542, file: !13, line: 1562, column: 22)
!3548 = !DILocation(line: 1563, column: 40, scope: !3546)
!3549 = !DILocation(line: 1564, column: 34, scope: !3546)
!3550 = !DILocation(line: 1564, column: 40, scope: !3546)
!3551 = !DILocation(line: 1563, column: 7, scope: !3546)
!3552 = !DILocation(line: 1564, column: 54, scope: !3546)
!3553 = !DILocation(line: 1563, column: 7, scope: !3547)
!3554 = !DILocation(line: 1565, column: 4, scope: !3546)
!3555 = !DILocation(line: 1566, column: 12, scope: !3547)
!3556 = !DILocation(line: 1567, column: 10, scope: !3547)
!3557 = !DILocation(line: 1568, column: 11, scope: !3547)
!3558 = !DILocation(line: 1569, column: 11, scope: !3547)
!3559 = !DILocation(line: 1570, column: 10, scope: !3547)
!3560 = !DILocation(line: 1571, column: 41, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3547, file: !13, line: 1571, column: 7)
!3562 = !DILocation(line: 1571, column: 51, scope: !3561)
!3563 = !DILocation(line: 1571, column: 59, scope: !3561)
!3564 = !DILocation(line: 1572, column: 41, scope: !3561)
!3565 = !DILocation(line: 1572, column: 50, scope: !3561)
!3566 = !DILocation(line: 1571, column: 30, scope: !3561)
!3567 = !DILocation(line: 1571, column: 28, scope: !3561)
!3568 = !DILocation(line: 1571, column: 7, scope: !3547)
!3569 = !DILocation(line: 1574, column: 4, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3561, file: !13, line: 1573, column: 57)
!3571 = !DILocation(line: 1575, column: 4, scope: !3570)
!3572 = !DILocation(line: 1577, column: 2, scope: !3547)
!3573 = !DILocation(line: 1579, column: 6, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1579, column: 6)
!3575 = !DILocation(line: 1579, column: 12, scope: !3574)
!3576 = !DILocation(line: 1579, column: 6, scope: !3393)
!3577 = !DILocation(line: 1580, column: 27, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !13, line: 1580, column: 7)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !13, line: 1579, column: 24)
!3580 = !DILocation(line: 1580, column: 33, scope: !3578)
!3581 = !DILocation(line: 1580, column: 7, scope: !3578)
!3582 = !DILocation(line: 1580, column: 45, scope: !3578)
!3583 = !DILocation(line: 1580, column: 7, scope: !3579)
!3584 = !DILocation(line: 1581, column: 4, scope: !3578)
!3585 = !DILocation(line: 1582, column: 23, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !13, line: 1582, column: 7)
!3587 = !DILocation(line: 1582, column: 21, scope: !3586)
!3588 = !DILocation(line: 1582, column: 7, scope: !3579)
!3589 = !DILocation(line: 1586, column: 4, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !13, line: 1585, column: 50)
!3591 = !DILocation(line: 1587, column: 4, scope: !3590)
!3592 = !DILocation(line: 1589, column: 2, scope: !3579)
!3593 = !DILocation(line: 1590, column: 6, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1590, column: 6)
!3595 = !DILocation(line: 1590, column: 12, scope: !3594)
!3596 = !DILocation(line: 1590, column: 6, scope: !3393)
!3597 = !DILocation(line: 1591, column: 29, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !13, line: 1591, column: 7)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !13, line: 1590, column: 26)
!3600 = !DILocation(line: 1591, column: 35, scope: !3598)
!3601 = !DILocation(line: 1591, column: 7, scope: !3598)
!3602 = !DILocation(line: 1591, column: 49, scope: !3598)
!3603 = !DILocation(line: 1591, column: 7, scope: !3599)
!3604 = !DILocation(line: 1592, column: 4, scope: !3598)
!3605 = !DILocation(line: 1593, column: 25, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3599, file: !13, line: 1593, column: 7)
!3607 = !DILocation(line: 1593, column: 23, scope: !3606)
!3608 = !DILocation(line: 1593, column: 7, scope: !3599)
!3609 = !DILocation(line: 1597, column: 4, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !13, line: 1596, column: 52)
!3611 = !DILocation(line: 1598, column: 4, scope: !3610)
!3612 = !DILocation(line: 1600, column: 2, scope: !3599)
!3613 = !DILocation(line: 1601, column: 6, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1601, column: 6)
!3615 = !DILocation(line: 1601, column: 12, scope: !3614)
!3616 = !DILocation(line: 1601, column: 6, scope: !3393)
!3617 = !DILocation(line: 1602, column: 20, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !13, line: 1602, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3614, file: !13, line: 1601, column: 24)
!3620 = !DILocation(line: 1602, column: 18, scope: !3618)
!3621 = !DILocation(line: 1602, column: 7, scope: !3619)
!3622 = !DILocation(line: 1604, column: 4, scope: !3618)
!3623 = !DILocation(line: 1605, column: 2, scope: !3619)
!3624 = !DILocation(line: 1606, column: 18, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1606, column: 6)
!3626 = !DILocation(line: 1606, column: 16, scope: !3625)
!3627 = !DILocation(line: 1606, column: 6, scope: !3393)
!3628 = !DILocation(line: 1608, column: 3, scope: !3625)
!3629 = !DILocation(line: 1609, column: 2, scope: !3393)
!3630 = !DILocation(line: 1612, column: 6, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1612, column: 6)
!3632 = !DILocation(line: 1612, column: 6, scope: !3393)
!3633 = !DILocation(line: 1613, column: 3, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !13, line: 1612, column: 19)
!3635 = !DILocation(line: 1614, column: 15, scope: !3634)
!3636 = !DILocation(line: 1614, column: 3, scope: !3634)
!3637 = !DILocation(line: 1615, column: 2, scope: !3634)
!3638 = !DILocation(line: 1616, column: 6, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1616, column: 6)
!3640 = !DILocation(line: 1616, column: 6, scope: !3393)
!3641 = !DILocation(line: 1617, column: 3, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3639, file: !13, line: 1616, column: 24)
!3643 = !DILocation(line: 1618, column: 15, scope: !3642)
!3644 = !DILocation(line: 1618, column: 3, scope: !3642)
!3645 = !DILocation(line: 1619, column: 2, scope: !3642)
!3646 = !DILocation(line: 1620, column: 6, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1620, column: 6)
!3648 = !DILocation(line: 1620, column: 6, scope: !3393)
!3649 = !DILocation(line: 1621, column: 3, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !13, line: 1620, column: 24)
!3651 = !DILocation(line: 1622, column: 15, scope: !3650)
!3652 = !DILocation(line: 1622, column: 3, scope: !3650)
!3653 = !DILocation(line: 1623, column: 2, scope: !3650)
!3654 = !DILocation(line: 1625, column: 6, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1625, column: 6)
!3656 = !DILocation(line: 1625, column: 6, scope: !3393)
!3657 = !DILocation(line: 1626, column: 3, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !13, line: 1625, column: 26)
!3659 = !DILocation(line: 1627, column: 15, scope: !3658)
!3660 = !DILocation(line: 1627, column: 3, scope: !3658)
!3661 = !DILocation(line: 1628, column: 2, scope: !3658)
!3662 = !DILocation(line: 1630, column: 6, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1630, column: 6)
!3664 = !DILocation(line: 1630, column: 6, scope: !3393)
!3665 = !DILocation(line: 1631, column: 15, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3663, file: !13, line: 1630, column: 16)
!3667 = !DILocation(line: 1631, column: 3, scope: !3666)
!3668 = !DILocation(line: 1632, column: 2, scope: !3666)
!3669 = !DILocation(line: 1633, column: 6, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3393, file: !13, line: 1633, column: 6)
!3671 = !DILocation(line: 1633, column: 6, scope: !3393)
!3672 = !DILocation(line: 1634, column: 3, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3670, file: !13, line: 1633, column: 21)
!3674 = !DILocation(line: 1635, column: 15, scope: !3673)
!3675 = !DILocation(line: 1635, column: 3, scope: !3673)
!3676 = !DILocation(line: 1636, column: 2, scope: !3673)
!3677 = !DILocation(line: 1637, column: 2, scope: !3393)
!3678 = !DILocation(line: 1638, column: 1, scope: !3393)
!3679 = distinct !DISubprogram(name: "log_content_file_dir_opencb", scope: !13, file: !13, line: 934, type: !3404, isLocal: true, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3680 = !DILocalVariable(name: "fh", arg: 1, scope: !3679, file: !13, line: 934, type: !4)
!3681 = !DILocation(line: 934, column: 35, scope: !3679)
!3682 = !DILocalVariable(name: "ctx", scope: !3679, file: !13, line: 936, type: !3683)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64, align: 64)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_content_file_ctx_t", file: !13, line: 356, baseType: !465)
!3685 = !DILocation(line: 936, column: 26, scope: !3679)
!3686 = !DILocation(line: 936, column: 32, scope: !3679)
!3687 = !DILocation(line: 938, column: 47, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3679, file: !13, line: 938, column: 6)
!3689 = !DILocation(line: 939, column: 47, scope: !3688)
!3690 = !DILocation(line: 939, column: 52, scope: !3688)
!3691 = !DILocation(line: 939, column: 54, scope: !3688)
!3692 = !DILocation(line: 939, column: 58, scope: !3688)
!3693 = !DILocation(line: 938, column: 23, scope: !3688)
!3694 = !DILocation(line: 938, column: 7, scope: !3688)
!3695 = !DILocation(line: 938, column: 12, scope: !3688)
!3696 = !DILocation(line: 938, column: 14, scope: !3688)
!3697 = !DILocation(line: 938, column: 18, scope: !3688)
!3698 = !DILocation(line: 938, column: 21, scope: !3688)
!3699 = !DILocation(line: 940, column: 51, scope: !3688)
!3700 = !DILocation(line: 938, column: 6, scope: !3679)
!3701 = !DILocation(line: 942, column: 18, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3688, file: !13, line: 940, column: 58)
!3703 = !DILocation(line: 942, column: 23, scope: !3702)
!3704 = !DILocation(line: 942, column: 25, scope: !3702)
!3705 = !DILocation(line: 942, column: 29, scope: !3702)
!3706 = !DILocation(line: 943, column: 28, scope: !3702)
!3707 = !DILocation(line: 943, column: 27, scope: !3702)
!3708 = !DILocation(line: 943, column: 18, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3702, file: !13, discriminator: 1)
!3710 = !DILocation(line: 943, column: 36, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !3702, file: !13, discriminator: 2)
!3712 = !DILocation(line: 943, column: 35, scope: !3702)
!3713 = !DILocation(line: 941, column: 3, scope: !3702)
!3714 = !DILocation(line: 944, column: 3, scope: !3702)
!3715 = !DILocation(line: 946, column: 2, scope: !3679)
!3716 = !DILocation(line: 947, column: 1, scope: !3679)
!3717 = distinct !DISubprogram(name: "log_content_file_dir_closecb", scope: !13, file: !13, line: 950, type: !3410, isLocal: true, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3718 = !DILocalVariable(name: "fh", arg: 1, scope: !3717, file: !13, line: 950, type: !4)
!3719 = !DILocation(line: 950, column: 36, scope: !3717)
!3720 = !DILocalVariable(name: "ctl", arg: 2, scope: !3717, file: !13, line: 950, type: !87)
!3721 = !DILocation(line: 950, column: 78, scope: !3717)
!3722 = !DILocalVariable(name: "ctx", scope: !3717, file: !13, line: 952, type: !3683)
!3723 = !DILocation(line: 952, column: 26, scope: !3717)
!3724 = !DILocation(line: 952, column: 32, scope: !3717)
!3725 = !DILocation(line: 954, column: 6, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3717, file: !13, line: 954, column: 6)
!3727 = !DILocation(line: 954, column: 11, scope: !3726)
!3728 = !DILocation(line: 954, column: 13, scope: !3726)
!3729 = !DILocation(line: 954, column: 17, scope: !3726)
!3730 = !DILocation(line: 954, column: 6, scope: !3717)
!3731 = !DILocation(line: 955, column: 8, scope: !3726)
!3732 = !DILocation(line: 955, column: 13, scope: !3726)
!3733 = !DILocation(line: 955, column: 15, scope: !3726)
!3734 = !DILocation(line: 955, column: 19, scope: !3726)
!3735 = !DILocation(line: 955, column: 3, scope: !3726)
!3736 = !DILocation(line: 956, column: 6, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3717, file: !13, line: 956, column: 6)
!3738 = !DILocation(line: 956, column: 11, scope: !3737)
!3739 = !DILocation(line: 956, column: 13, scope: !3737)
!3740 = !DILocation(line: 956, column: 17, scope: !3737)
!3741 = !DILocation(line: 956, column: 20, scope: !3737)
!3742 = !DILocation(line: 956, column: 6, scope: !3717)
!3743 = !DILocation(line: 957, column: 9, scope: !3737)
!3744 = !DILocation(line: 957, column: 14, scope: !3737)
!3745 = !DILocation(line: 957, column: 16, scope: !3737)
!3746 = !DILocation(line: 957, column: 20, scope: !3737)
!3747 = !DILocation(line: 957, column: 3, scope: !3737)
!3748 = !DILocation(line: 958, column: 7, scope: !3717)
!3749 = !DILocation(line: 958, column: 2, scope: !3717)
!3750 = !DILocation(line: 959, column: 1, scope: !3717)
!3751 = distinct !DISubprogram(name: "log_content_file_dir_writecb", scope: !13, file: !13, line: 962, type: !194, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3752 = !DILocalVariable(name: "fh", arg: 1, scope: !3751, file: !13, line: 962, type: !4)
!3753 = !DILocation(line: 962, column: 36, scope: !3751)
!3754 = !DILocalVariable(name: "ctl", arg: 2, scope: !3751, file: !13, line: 962, type: !87)
!3755 = !DILocation(line: 962, column: 78, scope: !3751)
!3756 = !DILocalVariable(name: "buf", arg: 3, scope: !3751, file: !13, line: 963, type: !200)
!3757 = !DILocation(line: 963, column: 42, scope: !3751)
!3758 = !DILocalVariable(name: "sz", arg: 4, scope: !3751, file: !13, line: 963, type: !101)
!3759 = !DILocation(line: 963, column: 54, scope: !3751)
!3760 = !DILocalVariable(name: "ctx", scope: !3751, file: !13, line: 965, type: !3683)
!3761 = !DILocation(line: 965, column: 26, scope: !3751)
!3762 = !DILocation(line: 965, column: 32, scope: !3751)
!3763 = !DILocation(line: 967, column: 12, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3751, file: !13, line: 967, column: 6)
!3765 = !DILocation(line: 967, column: 17, scope: !3764)
!3766 = !DILocation(line: 967, column: 19, scope: !3764)
!3767 = !DILocation(line: 967, column: 23, scope: !3764)
!3768 = !DILocation(line: 967, column: 27, scope: !3764)
!3769 = !DILocation(line: 967, column: 32, scope: !3764)
!3770 = !DILocation(line: 967, column: 6, scope: !3764)
!3771 = !DILocation(line: 967, column: 36, scope: !3764)
!3772 = !DILocation(line: 967, column: 6, scope: !3751)
!3773 = !DILocation(line: 969, column: 28, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3764, file: !13, line: 967, column: 43)
!3775 = !DILocation(line: 969, column: 27, scope: !3774)
!3776 = !DILocation(line: 969, column: 18, scope: !3777)
!3777 = !DILexicalBlockFile(scope: !3774, file: !13, discriminator: 1)
!3778 = !DILocation(line: 968, column: 3, scope: !3774)
!3779 = !DILocation(line: 970, column: 3, scope: !3774)
!3780 = !DILocation(line: 972, column: 9, scope: !3751)
!3781 = !DILocation(line: 972, column: 2, scope: !3751)
!3782 = !DILocation(line: 973, column: 1, scope: !3751)
!3783 = distinct !DISubprogram(name: "log_content_file_spec_opencb", scope: !13, file: !13, line: 976, type: !3404, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3784 = !DILocalVariable(name: "fh", arg: 1, scope: !3783, file: !13, line: 976, type: !4)
!3785 = !DILocation(line: 976, column: 36, scope: !3783)
!3786 = !DILocalVariable(name: "ctx", scope: !3783, file: !13, line: 978, type: !3683)
!3787 = !DILocation(line: 978, column: 26, scope: !3783)
!3788 = !DILocation(line: 978, column: 32, scope: !3783)
!3789 = !DILocation(line: 980, column: 48, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3783, file: !13, line: 980, column: 6)
!3791 = !DILocation(line: 981, column: 48, scope: !3790)
!3792 = !DILocation(line: 981, column: 53, scope: !3790)
!3793 = !DILocation(line: 981, column: 55, scope: !3790)
!3794 = !DILocation(line: 981, column: 60, scope: !3790)
!3795 = !DILocation(line: 980, column: 24, scope: !3790)
!3796 = !DILocation(line: 980, column: 7, scope: !3790)
!3797 = !DILocation(line: 980, column: 12, scope: !3790)
!3798 = !DILocation(line: 980, column: 14, scope: !3790)
!3799 = !DILocation(line: 980, column: 19, scope: !3790)
!3800 = !DILocation(line: 980, column: 22, scope: !3790)
!3801 = !DILocation(line: 982, column: 52, scope: !3790)
!3802 = !DILocation(line: 980, column: 6, scope: !3783)
!3803 = !DILocation(line: 984, column: 18, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3790, file: !13, line: 982, column: 59)
!3805 = !DILocation(line: 984, column: 23, scope: !3804)
!3806 = !DILocation(line: 984, column: 25, scope: !3804)
!3807 = !DILocation(line: 984, column: 30, scope: !3804)
!3808 = !DILocation(line: 984, column: 50, scope: !3804)
!3809 = !DILocation(line: 984, column: 49, scope: !3804)
!3810 = !DILocation(line: 984, column: 40, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3804, file: !13, discriminator: 1)
!3812 = !DILocation(line: 984, column: 58, scope: !3813)
!3813 = !DILexicalBlockFile(scope: !3804, file: !13, discriminator: 2)
!3814 = !DILocation(line: 984, column: 57, scope: !3804)
!3815 = !DILocation(line: 983, column: 3, scope: !3804)
!3816 = !DILocation(line: 985, column: 3, scope: !3804)
!3817 = !DILocation(line: 987, column: 2, scope: !3783)
!3818 = !DILocation(line: 988, column: 1, scope: !3783)
!3819 = distinct !DISubprogram(name: "log_content_file_spec_closecb", scope: !13, file: !13, line: 991, type: !3410, isLocal: true, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3820 = !DILocalVariable(name: "fh", arg: 1, scope: !3819, file: !13, line: 991, type: !4)
!3821 = !DILocation(line: 991, column: 37, scope: !3819)
!3822 = !DILocalVariable(name: "ctl", arg: 2, scope: !3819, file: !13, line: 991, type: !87)
!3823 = !DILocation(line: 991, column: 79, scope: !3819)
!3824 = !DILocalVariable(name: "ctx", scope: !3819, file: !13, line: 993, type: !3683)
!3825 = !DILocation(line: 993, column: 26, scope: !3819)
!3826 = !DILocation(line: 993, column: 32, scope: !3819)
!3827 = !DILocation(line: 995, column: 6, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3819, file: !13, line: 995, column: 6)
!3829 = !DILocation(line: 995, column: 11, scope: !3828)
!3830 = !DILocation(line: 995, column: 13, scope: !3828)
!3831 = !DILocation(line: 995, column: 18, scope: !3828)
!3832 = !DILocation(line: 995, column: 6, scope: !3819)
!3833 = !DILocation(line: 996, column: 8, scope: !3828)
!3834 = !DILocation(line: 996, column: 13, scope: !3828)
!3835 = !DILocation(line: 996, column: 15, scope: !3828)
!3836 = !DILocation(line: 996, column: 20, scope: !3828)
!3837 = !DILocation(line: 996, column: 3, scope: !3828)
!3838 = !DILocation(line: 997, column: 6, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3819, file: !13, line: 997, column: 6)
!3840 = !DILocation(line: 997, column: 11, scope: !3839)
!3841 = !DILocation(line: 997, column: 13, scope: !3839)
!3842 = !DILocation(line: 997, column: 18, scope: !3839)
!3843 = !DILocation(line: 997, column: 21, scope: !3839)
!3844 = !DILocation(line: 997, column: 6, scope: !3819)
!3845 = !DILocation(line: 998, column: 9, scope: !3839)
!3846 = !DILocation(line: 998, column: 14, scope: !3839)
!3847 = !DILocation(line: 998, column: 16, scope: !3839)
!3848 = !DILocation(line: 998, column: 21, scope: !3839)
!3849 = !DILocation(line: 998, column: 3, scope: !3839)
!3850 = !DILocation(line: 999, column: 7, scope: !3819)
!3851 = !DILocation(line: 999, column: 2, scope: !3819)
!3852 = !DILocation(line: 1000, column: 1, scope: !3819)
!3853 = distinct !DISubprogram(name: "log_content_file_spec_writecb", scope: !13, file: !13, line: 1003, type: !194, isLocal: true, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3854 = !DILocalVariable(name: "fh", arg: 1, scope: !3853, file: !13, line: 1003, type: !4)
!3855 = !DILocation(line: 1003, column: 37, scope: !3853)
!3856 = !DILocalVariable(name: "ctl", arg: 2, scope: !3853, file: !13, line: 1003, type: !87)
!3857 = !DILocation(line: 1003, column: 79, scope: !3853)
!3858 = !DILocalVariable(name: "buf", arg: 3, scope: !3853, file: !13, line: 1004, type: !200)
!3859 = !DILocation(line: 1004, column: 43, scope: !3853)
!3860 = !DILocalVariable(name: "sz", arg: 4, scope: !3853, file: !13, line: 1004, type: !101)
!3861 = !DILocation(line: 1004, column: 55, scope: !3853)
!3862 = !DILocalVariable(name: "ctx", scope: !3853, file: !13, line: 1006, type: !3683)
!3863 = !DILocation(line: 1006, column: 26, scope: !3853)
!3864 = !DILocation(line: 1006, column: 32, scope: !3853)
!3865 = !DILocation(line: 1008, column: 12, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3853, file: !13, line: 1008, column: 6)
!3867 = !DILocation(line: 1008, column: 17, scope: !3866)
!3868 = !DILocation(line: 1008, column: 19, scope: !3866)
!3869 = !DILocation(line: 1008, column: 24, scope: !3866)
!3870 = !DILocation(line: 1008, column: 28, scope: !3866)
!3871 = !DILocation(line: 1008, column: 33, scope: !3866)
!3872 = !DILocation(line: 1008, column: 6, scope: !3866)
!3873 = !DILocation(line: 1008, column: 37, scope: !3866)
!3874 = !DILocation(line: 1008, column: 6, scope: !3853)
!3875 = !DILocation(line: 1010, column: 28, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3866, file: !13, line: 1008, column: 44)
!3877 = !DILocation(line: 1010, column: 27, scope: !3876)
!3878 = !DILocation(line: 1010, column: 18, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3876, file: !13, discriminator: 1)
!3880 = !DILocation(line: 1009, column: 3, scope: !3876)
!3881 = !DILocation(line: 1011, column: 3, scope: !3876)
!3882 = !DILocation(line: 1013, column: 9, scope: !3853)
!3883 = !DILocation(line: 1013, column: 2, scope: !3853)
!3884 = !DILocation(line: 1014, column: 1, scope: !3853)
!3885 = distinct !DISubprogram(name: "log_content_file_single_preinit", scope: !13, file: !13, line: 1020, type: !3886, isLocal: true, isDefinition: true, scopeLine: 1021, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!32, !7}
!3888 = !DILocalVariable(name: "logfile", arg: 1, scope: !3885, file: !13, line: 1020, type: !7)
!3889 = !DILocation(line: 1020, column: 45, scope: !3885)
!3890 = !DILocation(line: 1022, column: 32, scope: !3885)
!3891 = !DILocation(line: 1022, column: 27, scope: !3885)
!3892 = !DILocation(line: 1022, column: 25, scope: !3885)
!3893 = !DILocation(line: 1024, column: 6, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3885, file: !13, line: 1024, column: 6)
!3895 = !DILocation(line: 1024, column: 29, scope: !3894)
!3896 = !DILocation(line: 1024, column: 6, scope: !3885)
!3897 = !DILocation(line: 1026, column: 18, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !13, line: 1024, column: 36)
!3899 = !DILocation(line: 1026, column: 37, scope: !3898)
!3900 = !DILocation(line: 1026, column: 36, scope: !3898)
!3901 = !DILocation(line: 1026, column: 27, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !3898, file: !13, discriminator: 1)
!3903 = !DILocation(line: 1026, column: 45, scope: !3904)
!3904 = !DILexicalBlockFile(scope: !3898, file: !13, discriminator: 2)
!3905 = !DILocation(line: 1026, column: 44, scope: !3898)
!3906 = !DILocation(line: 1025, column: 3, scope: !3898)
!3907 = !DILocation(line: 1027, column: 3, scope: !3898)
!3908 = !DILocation(line: 1029, column: 34, scope: !3885)
!3909 = !DILocation(line: 1029, column: 27, scope: !3885)
!3910 = !DILocation(line: 1029, column: 25, scope: !3885)
!3911 = !DILocation(line: 1030, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3885, file: !13, line: 1030, column: 6)
!3913 = !DILocation(line: 1030, column: 6, scope: !3885)
!3914 = !DILocation(line: 1031, column: 9, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !13, line: 1030, column: 31)
!3916 = !DILocation(line: 1031, column: 3, scope: !3915)
!3917 = !DILocation(line: 1032, column: 26, scope: !3915)
!3918 = !DILocation(line: 1033, column: 3, scope: !3915)
!3919 = !DILocation(line: 1035, column: 2, scope: !3885)
!3920 = !DILocation(line: 1036, column: 1, scope: !3885)
!3921 = distinct !DISubprogram(name: "log_content_file_single_reopencb", scope: !13, file: !13, line: 1052, type: !2226, isLocal: true, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3922 = !DILocation(line: 1054, column: 8, scope: !3921)
!3923 = !DILocation(line: 1054, column: 2, scope: !3921)
!3924 = !DILocation(line: 1055, column: 51, scope: !3921)
!3925 = !DILocation(line: 1056, column: 51, scope: !3921)
!3926 = !DILocation(line: 1055, column: 27, scope: !3921)
!3927 = !DILocation(line: 1055, column: 25, scope: !3921)
!3928 = !DILocation(line: 1058, column: 6, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3921, file: !13, line: 1058, column: 6)
!3930 = !DILocation(line: 1058, column: 29, scope: !3929)
!3931 = !DILocation(line: 1058, column: 6, scope: !3921)
!3932 = !DILocation(line: 1060, column: 18, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3929, file: !13, line: 1058, column: 36)
!3934 = !DILocation(line: 1060, column: 52, scope: !3933)
!3935 = !DILocation(line: 1060, column: 51, scope: !3933)
!3936 = !DILocation(line: 1060, column: 42, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !3933, file: !13, discriminator: 1)
!3938 = !DILocation(line: 1060, column: 60, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3933, file: !13, discriminator: 2)
!3940 = !DILocation(line: 1060, column: 59, scope: !3933)
!3941 = !DILocation(line: 1059, column: 3, scope: !3933)
!3942 = !DILocation(line: 1061, column: 3, scope: !3933)
!3943 = !DILocation(line: 1063, column: 2, scope: !3921)
!3944 = !DILocation(line: 1064, column: 1, scope: !3921)
!3945 = distinct !DISubprogram(name: "log_content_file_single_closecb", scope: !13, file: !13, line: 1067, type: !3410, isLocal: true, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3946 = !DILocalVariable(name: "fh", arg: 1, scope: !3945, file: !13, line: 1067, type: !4)
!3947 = !DILocation(line: 1067, column: 39, scope: !3945)
!3948 = !DILocalVariable(name: "ctl", arg: 2, scope: !3945, file: !13, line: 1067, type: !87)
!3949 = !DILocation(line: 1067, column: 81, scope: !3945)
!3950 = !DILocalVariable(name: "ctx", scope: !3945, file: !13, line: 1069, type: !3683)
!3951 = !DILocation(line: 1069, column: 26, scope: !3945)
!3952 = !DILocation(line: 1069, column: 32, scope: !3945)
!3953 = !DILocation(line: 1071, column: 6, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3945, file: !13, line: 1071, column: 6)
!3955 = !DILocation(line: 1071, column: 11, scope: !3954)
!3956 = !DILocation(line: 1071, column: 13, scope: !3954)
!3957 = !DILocation(line: 1071, column: 20, scope: !3954)
!3958 = !DILocation(line: 1071, column: 6, scope: !3945)
!3959 = !DILocation(line: 1072, column: 8, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3954, file: !13, line: 1071, column: 32)
!3961 = !DILocation(line: 1072, column: 13, scope: !3960)
!3962 = !DILocation(line: 1072, column: 15, scope: !3960)
!3963 = !DILocation(line: 1072, column: 22, scope: !3960)
!3964 = !DILocation(line: 1072, column: 3, scope: !3960)
!3965 = !DILocation(line: 1073, column: 2, scope: !3960)
!3966 = !DILocation(line: 1074, column: 6, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3945, file: !13, line: 1074, column: 6)
!3968 = !DILocation(line: 1074, column: 11, scope: !3967)
!3969 = !DILocation(line: 1074, column: 13, scope: !3967)
!3970 = !DILocation(line: 1074, column: 20, scope: !3967)
!3971 = !DILocation(line: 1074, column: 6, scope: !3945)
!3972 = !DILocation(line: 1075, column: 8, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3967, file: !13, line: 1074, column: 33)
!3974 = !DILocation(line: 1075, column: 13, scope: !3973)
!3975 = !DILocation(line: 1075, column: 15, scope: !3973)
!3976 = !DILocation(line: 1075, column: 22, scope: !3973)
!3977 = !DILocation(line: 1075, column: 3, scope: !3973)
!3978 = !DILocation(line: 1076, column: 2, scope: !3973)
!3979 = !DILocation(line: 1077, column: 7, scope: !3945)
!3980 = !DILocation(line: 1077, column: 2, scope: !3945)
!3981 = !DILocation(line: 1078, column: 1, scope: !3945)
!3982 = distinct !DISubprogram(name: "log_content_file_single_writecb", scope: !13, file: !13, line: 1081, type: !194, isLocal: true, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!3983 = !DILocalVariable(name: "fh", arg: 1, scope: !3982, file: !13, line: 1081, type: !4)
!3984 = !DILocation(line: 1081, column: 39, scope: !3982)
!3985 = !DILocalVariable(name: "ctl", arg: 2, scope: !3982, file: !13, line: 1081, type: !87)
!3986 = !DILocation(line: 1081, column: 81, scope: !3982)
!3987 = !DILocalVariable(name: "buf", arg: 3, scope: !3982, file: !13, line: 1082, type: !200)
!3988 = !DILocation(line: 1082, column: 45, scope: !3982)
!3989 = !DILocalVariable(name: "sz", arg: 4, scope: !3982, file: !13, line: 1082, type: !101)
!3990 = !DILocation(line: 1082, column: 57, scope: !3982)
!3991 = !DILocalVariable(name: "ctx", scope: !3982, file: !13, line: 1084, type: !3683)
!3992 = !DILocation(line: 1084, column: 50, scope: !3982)
!3993 = !DILocation(line: 1084, column: 56, scope: !3982)
!3994 = !DILocation(line: 1086, column: 12, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3982, file: !13, line: 1086, column: 6)
!3996 = !DILocation(line: 1086, column: 36, scope: !3995)
!3997 = !DILocation(line: 1086, column: 41, scope: !3995)
!3998 = !DILocation(line: 1086, column: 6, scope: !3995)
!3999 = !DILocation(line: 1086, column: 45, scope: !3995)
!4000 = !DILocation(line: 1086, column: 6, scope: !3982)
!4001 = !DILocation(line: 1088, column: 28, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !13, line: 1086, column: 52)
!4003 = !DILocation(line: 1088, column: 27, scope: !4002)
!4004 = !DILocation(line: 1088, column: 18, scope: !4005)
!4005 = !DILexicalBlockFile(scope: !4002, file: !13, discriminator: 1)
!4006 = !DILocation(line: 1087, column: 3, scope: !4002)
!4007 = !DILocation(line: 1089, column: 3, scope: !4002)
!4008 = !DILocation(line: 1091, column: 9, scope: !3982)
!4009 = !DILocation(line: 1091, column: 2, scope: !3982)
!4010 = !DILocation(line: 1092, column: 1, scope: !3982)
!4011 = distinct !DISubprogram(name: "log_content_file_single_prepcb", scope: !13, file: !13, line: 1095, type: !3420, isLocal: true, isDefinition: true, scopeLine: 1097, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4012 = !DILocalVariable(name: "fh", arg: 1, scope: !4011, file: !13, line: 1095, type: !4)
!4013 = !DILocation(line: 1095, column: 38, scope: !4011)
!4014 = !DILocalVariable(name: "prepflags", arg: 2, scope: !4011, file: !13, line: 1095, type: !87)
!4015 = !DILocation(line: 1095, column: 56, scope: !4011)
!4016 = !DILocalVariable(name: "lb", arg: 3, scope: !4011, file: !13, line: 1096, type: !3076)
!4017 = !DILocation(line: 1096, column: 42, scope: !4011)
!4018 = !DILocalVariable(name: "ctx", scope: !4011, file: !13, line: 1098, type: !3683)
!4019 = !DILocation(line: 1098, column: 26, scope: !4011)
!4020 = !DILocation(line: 1098, column: 32, scope: !4011)
!4021 = !DILocalVariable(name: "is_request", scope: !4011, file: !13, line: 1099, type: !32)
!4022 = !DILocation(line: 1099, column: 6, scope: !4011)
!4023 = !DILocation(line: 1099, column: 22, scope: !4011)
!4024 = !DILocation(line: 1099, column: 32, scope: !4011)
!4025 = !DILocation(line: 1099, column: 20, scope: !4011)
!4026 = !DILocation(line: 1099, column: 19, scope: !4011)
!4027 = !DILocalVariable(name: "head", scope: !4011, file: !13, line: 1100, type: !3076)
!4028 = !DILocation(line: 1100, column: 12, scope: !4011)
!4029 = !DILocalVariable(name: "epoch", scope: !4011, file: !13, line: 1101, type: !1685)
!4030 = !DILocation(line: 1101, column: 9, scope: !4011)
!4031 = !DILocalVariable(name: "utc", scope: !4011, file: !13, line: 1102, type: !2338)
!4032 = !DILocation(line: 1102, column: 13, scope: !4011)
!4033 = !DILocalVariable(name: "header", scope: !4011, file: !13, line: 1103, type: !10)
!4034 = !DILocation(line: 1103, column: 8, scope: !4011)
!4035 = !DILocation(line: 1105, column: 17, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4011, file: !13, line: 1105, column: 6)
!4037 = !DILocation(line: 1105, column: 30, scope: !4038)
!4038 = !DILexicalBlockFile(scope: !4036, file: !13, discriminator: 1)
!4039 = !DILocation(line: 1105, column: 35, scope: !4038)
!4040 = !DILocation(line: 1105, column: 37, scope: !4038)
!4041 = !DILocation(line: 1105, column: 44, scope: !4038)
!4042 = !DILocation(line: 1105, column: 17, scope: !4038)
!4043 = !DILocation(line: 1106, column: 30, scope: !4036)
!4044 = !DILocation(line: 1106, column: 35, scope: !4036)
!4045 = !DILocation(line: 1106, column: 37, scope: !4036)
!4046 = !DILocation(line: 1106, column: 44, scope: !4036)
!4047 = !DILocation(line: 1105, column: 17, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !4036, file: !13, discriminator: 2)
!4049 = !DILocation(line: 1105, column: 17, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4036, file: !13, discriminator: 3)
!4051 = !DILocation(line: 1105, column: 15, scope: !4050)
!4052 = !DILocation(line: 1105, column: 6, scope: !4050)
!4053 = !DILocation(line: 1107, column: 3, scope: !4036)
!4054 = !DILocation(line: 1110, column: 6, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4011, file: !13, line: 1110, column: 6)
!4056 = !DILocation(line: 1110, column: 16, scope: !4055)
!4057 = !DILocation(line: 1110, column: 6, scope: !4011)
!4058 = !DILocation(line: 1111, column: 10, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4055, file: !13, line: 1110, column: 21)
!4060 = !DILocation(line: 1111, column: 8, scope: !4059)
!4061 = !DILocation(line: 1112, column: 2, scope: !4059)
!4062 = !DILocation(line: 1113, column: 28, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4055, file: !13, line: 1112, column: 9)
!4064 = !DILocation(line: 1113, column: 57, scope: !4063)
!4065 = !DILocation(line: 1113, column: 45, scope: !4063)
!4066 = !DILocation(line: 1113, column: 10, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4063, file: !13, discriminator: 1)
!4068 = !DILocation(line: 1113, column: 8, scope: !4063)
!4069 = !DILocation(line: 1115, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4011, file: !13, line: 1115, column: 6)
!4071 = !DILocation(line: 1115, column: 6, scope: !4011)
!4072 = !DILocation(line: 1116, column: 3, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !13, line: 1115, column: 13)
!4074 = !DILocation(line: 1117, column: 15, scope: !4073)
!4075 = !DILocation(line: 1117, column: 3, scope: !4073)
!4076 = !DILocation(line: 1118, column: 3, scope: !4073)
!4077 = !DILocation(line: 1120, column: 7, scope: !4011)
!4078 = !DILocation(line: 1120, column: 5, scope: !4011)
!4079 = !DILocation(line: 1123, column: 25, scope: !4011)
!4080 = !DILocation(line: 1123, column: 40, scope: !4011)
!4081 = !DILocation(line: 1123, column: 33, scope: !4011)
!4082 = !DILocation(line: 1123, column: 49, scope: !4011)
!4083 = !DILocation(line: 1123, column: 9, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4011, file: !13, discriminator: 1)
!4085 = !DILocation(line: 1123, column: 7, scope: !4011)
!4086 = !DILocation(line: 1124, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4011, file: !13, line: 1124, column: 6)
!4088 = !DILocation(line: 1124, column: 6, scope: !4011)
!4089 = !DILocation(line: 1125, column: 3, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4087, file: !13, line: 1124, column: 13)
!4091 = !DILocation(line: 1126, column: 15, scope: !4090)
!4092 = !DILocation(line: 1126, column: 3, scope: !4090)
!4093 = !DILocation(line: 1127, column: 3, scope: !4090)
!4094 = !DILocation(line: 1129, column: 7, scope: !4011)
!4095 = !DILocation(line: 1129, column: 5, scope: !4011)
!4096 = !DILocation(line: 1132, column: 30, scope: !4011)
!4097 = !DILocation(line: 1132, column: 9, scope: !4011)
!4098 = !DILocation(line: 1132, column: 7, scope: !4011)
!4099 = !DILocation(line: 1133, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4011, file: !13, line: 1133, column: 6)
!4101 = !DILocation(line: 1133, column: 6, scope: !4011)
!4102 = !DILocation(line: 1134, column: 3, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !13, line: 1133, column: 13)
!4104 = !DILocation(line: 1135, column: 15, scope: !4103)
!4105 = !DILocation(line: 1135, column: 3, scope: !4103)
!4106 = !DILocation(line: 1136, column: 3, scope: !4103)
!4107 = !DILocation(line: 1138, column: 7, scope: !4011)
!4108 = !DILocation(line: 1138, column: 5, scope: !4011)
!4109 = !DILocation(line: 1139, column: 2, scope: !4011)
!4110 = !DILocation(line: 1140, column: 8, scope: !4011)
!4111 = !DILocation(line: 1140, column: 6, scope: !4011)
!4112 = !DILocation(line: 1141, column: 27, scope: !4011)
!4113 = !DILocation(line: 1141, column: 31, scope: !4011)
!4114 = !DILocation(line: 1141, column: 36, scope: !4011)
!4115 = !DILocation(line: 1141, column: 40, scope: !4011)
!4116 = !DILocation(line: 1142, column: 20, scope: !4011)
!4117 = !DILocation(line: 1141, column: 11, scope: !4011)
!4118 = !DILocation(line: 1141, column: 2, scope: !4011)
!4119 = !DILocation(line: 1141, column: 6, scope: !4011)
!4120 = !DILocation(line: 1141, column: 9, scope: !4011)
!4121 = !DILocation(line: 1145, column: 9, scope: !4011)
!4122 = !DILocation(line: 1145, column: 2, scope: !4011)
!4123 = !DILocation(line: 1146, column: 1, scope: !4011)
!4124 = distinct !DISubprogram(name: "log_content_file_single_fini", scope: !13, file: !13, line: 1039, type: !124, isLocal: true, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4125 = !DILocation(line: 1041, column: 6, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4124, file: !13, line: 1041, column: 6)
!4127 = !DILocation(line: 1041, column: 6, scope: !4124)
!4128 = !DILocation(line: 1042, column: 8, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !13, line: 1041, column: 30)
!4130 = !DILocation(line: 1042, column: 3, scope: !4129)
!4131 = !DILocation(line: 1043, column: 26, scope: !4129)
!4132 = !DILocation(line: 1044, column: 2, scope: !4129)
!4133 = !DILocation(line: 1045, column: 6, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4124, file: !13, line: 1045, column: 6)
!4135 = !DILocation(line: 1045, column: 29, scope: !4134)
!4136 = !DILocation(line: 1045, column: 6, scope: !4124)
!4137 = !DILocation(line: 1046, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4134, file: !13, line: 1045, column: 36)
!4139 = !DILocation(line: 1046, column: 3, scope: !4138)
!4140 = !DILocation(line: 1047, column: 26, scope: !4138)
!4141 = !DILocation(line: 1048, column: 2, scope: !4138)
!4142 = !DILocation(line: 1049, column: 1, scope: !4124)
!4143 = distinct !DISubprogram(name: "log_content_pcap_preinit", scope: !13, file: !13, line: 1159, type: !3886, isLocal: true, isDefinition: true, scopeLine: 1160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4144 = !DILocalVariable(name: "pcapfile", arg: 1, scope: !4143, file: !13, line: 1159, type: !7)
!4145 = !DILocation(line: 1159, column: 38, scope: !4143)
!4146 = !DILocation(line: 1161, column: 7, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4143, file: !13, line: 1161, column: 6)
!4148 = !DILocation(line: 1161, column: 6, scope: !4143)
!4149 = !DILocation(line: 1162, column: 3, scope: !4147)
!4150 = !DILocation(line: 1166, column: 25, scope: !4143)
!4151 = !DILocation(line: 1166, column: 20, scope: !4143)
!4152 = !DILocation(line: 1166, column: 18, scope: !4143)
!4153 = !DILocation(line: 1167, column: 6, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4143, file: !13, line: 1167, column: 6)
!4155 = !DILocation(line: 1167, column: 22, scope: !4154)
!4156 = !DILocation(line: 1167, column: 6, scope: !4143)
!4157 = !DILocation(line: 1169, column: 18, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4154, file: !13, line: 1167, column: 29)
!4159 = !DILocation(line: 1169, column: 38, scope: !4158)
!4160 = !DILocation(line: 1169, column: 37, scope: !4158)
!4161 = !DILocation(line: 1169, column: 28, scope: !4162)
!4162 = !DILexicalBlockFile(scope: !4158, file: !13, discriminator: 1)
!4163 = !DILocation(line: 1169, column: 46, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4158, file: !13, discriminator: 2)
!4165 = !DILocation(line: 1169, column: 45, scope: !4158)
!4166 = !DILocation(line: 1168, column: 3, scope: !4158)
!4167 = !DILocation(line: 1170, column: 3, scope: !4158)
!4168 = !DILocation(line: 1172, column: 26, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4143, file: !13, line: 1172, column: 6)
!4170 = !DILocation(line: 1172, column: 6, scope: !4169)
!4171 = !DILocation(line: 1172, column: 43, scope: !4169)
!4172 = !DILocation(line: 1172, column: 6, scope: !4143)
!4173 = !DILocation(line: 1175, column: 18, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4169, file: !13, line: 1172, column: 50)
!4175 = !DILocation(line: 1175, column: 38, scope: !4174)
!4176 = !DILocation(line: 1175, column: 37, scope: !4174)
!4177 = !DILocation(line: 1175, column: 28, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4174, file: !13, discriminator: 1)
!4179 = !DILocation(line: 1175, column: 46, scope: !4180)
!4180 = !DILexicalBlockFile(scope: !4174, file: !13, discriminator: 2)
!4181 = !DILocation(line: 1175, column: 45, scope: !4174)
!4182 = !DILocation(line: 1173, column: 3, scope: !4174)
!4183 = !DILocation(line: 1176, column: 9, scope: !4174)
!4184 = !DILocation(line: 1176, column: 3, scope: !4174)
!4185 = !DILocation(line: 1177, column: 19, scope: !4174)
!4186 = !DILocation(line: 1178, column: 3, scope: !4174)
!4187 = !DILocation(line: 1180, column: 27, scope: !4143)
!4188 = !DILocation(line: 1180, column: 20, scope: !4143)
!4189 = !DILocation(line: 1180, column: 18, scope: !4143)
!4190 = !DILocation(line: 1181, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4143, file: !13, line: 1181, column: 6)
!4192 = !DILocation(line: 1181, column: 6, scope: !4143)
!4193 = !DILocation(line: 1182, column: 9, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !13, line: 1181, column: 24)
!4195 = !DILocation(line: 1182, column: 3, scope: !4194)
!4196 = !DILocation(line: 1183, column: 19, scope: !4194)
!4197 = !DILocation(line: 1184, column: 3, scope: !4194)
!4198 = !DILocation(line: 1186, column: 2, scope: !4143)
!4199 = !DILocation(line: 1187, column: 1, scope: !4143)
!4200 = distinct !DISubprogram(name: "log_content_pcap_dir_opencb", scope: !13, file: !13, line: 1264, type: !3404, isLocal: true, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4201 = !DILocalVariable(name: "fh", arg: 1, scope: !4200, file: !13, line: 1264, type: !4)
!4202 = !DILocation(line: 1264, column: 35, scope: !4200)
!4203 = !DILocalVariable(name: "ctx", scope: !4200, file: !13, line: 1266, type: !4204)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64, align: 64)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_content_pcap_ctx_t", file: !13, line: 370, baseType: !487)
!4206 = !DILocation(line: 1266, column: 26, scope: !4200)
!4207 = !DILocation(line: 1266, column: 32, scope: !4200)
!4208 = !DILocation(line: 1268, column: 47, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4200, file: !13, line: 1268, column: 6)
!4210 = !DILocation(line: 1269, column: 47, scope: !4209)
!4211 = !DILocation(line: 1269, column: 52, scope: !4209)
!4212 = !DILocation(line: 1269, column: 54, scope: !4209)
!4213 = !DILocation(line: 1269, column: 58, scope: !4209)
!4214 = !DILocation(line: 1268, column: 23, scope: !4209)
!4215 = !DILocation(line: 1268, column: 7, scope: !4209)
!4216 = !DILocation(line: 1268, column: 12, scope: !4209)
!4217 = !DILocation(line: 1268, column: 14, scope: !4209)
!4218 = !DILocation(line: 1268, column: 18, scope: !4209)
!4219 = !DILocation(line: 1268, column: 21, scope: !4209)
!4220 = !DILocation(line: 1270, column: 51, scope: !4209)
!4221 = !DILocation(line: 1268, column: 6, scope: !4200)
!4222 = !DILocation(line: 1272, column: 18, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4209, file: !13, line: 1270, column: 58)
!4224 = !DILocation(line: 1272, column: 23, scope: !4223)
!4225 = !DILocation(line: 1272, column: 25, scope: !4223)
!4226 = !DILocation(line: 1272, column: 29, scope: !4223)
!4227 = !DILocation(line: 1272, column: 49, scope: !4223)
!4228 = !DILocation(line: 1272, column: 48, scope: !4223)
!4229 = !DILocation(line: 1272, column: 39, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4223, file: !13, discriminator: 1)
!4231 = !DILocation(line: 1272, column: 57, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4223, file: !13, discriminator: 2)
!4233 = !DILocation(line: 1272, column: 56, scope: !4223)
!4234 = !DILocation(line: 1271, column: 3, scope: !4223)
!4235 = !DILocation(line: 1273, column: 3, scope: !4223)
!4236 = !DILocation(line: 1275, column: 29, scope: !4200)
!4237 = !DILocation(line: 1275, column: 34, scope: !4200)
!4238 = !DILocation(line: 1275, column: 36, scope: !4200)
!4239 = !DILocation(line: 1275, column: 40, scope: !4200)
!4240 = !DILocation(line: 1275, column: 9, scope: !4200)
!4241 = !DILocation(line: 1275, column: 2, scope: !4200)
!4242 = !DILocation(line: 1276, column: 1, scope: !4200)
!4243 = distinct !DISubprogram(name: "log_content_pcap_dir_closecb", scope: !13, file: !13, line: 1279, type: !3410, isLocal: true, isDefinition: true, scopeLine: 1280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4244 = !DILocalVariable(name: "fh", arg: 1, scope: !4243, file: !13, line: 1279, type: !4)
!4245 = !DILocation(line: 1279, column: 36, scope: !4243)
!4246 = !DILocalVariable(name: "ctl", arg: 2, scope: !4243, file: !13, line: 1279, type: !87)
!4247 = !DILocation(line: 1279, column: 54, scope: !4243)
!4248 = !DILocalVariable(name: "ctx", scope: !4243, file: !13, line: 1281, type: !4204)
!4249 = !DILocation(line: 1281, column: 26, scope: !4243)
!4250 = !DILocation(line: 1281, column: 32, scope: !4243)
!4251 = !DILocation(line: 1282, column: 32, scope: !4243)
!4252 = !DILocation(line: 1282, column: 36, scope: !4243)
!4253 = !DILocation(line: 1282, column: 41, scope: !4243)
!4254 = !DILocation(line: 1282, column: 46, scope: !4243)
!4255 = !DILocation(line: 1282, column: 48, scope: !4243)
!4256 = !DILocation(line: 1282, column: 52, scope: !4243)
!4257 = !DILocation(line: 1282, column: 2, scope: !4243)
!4258 = !DILocation(line: 1283, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4243, file: !13, line: 1283, column: 6)
!4260 = !DILocation(line: 1283, column: 11, scope: !4259)
!4261 = !DILocation(line: 1283, column: 13, scope: !4259)
!4262 = !DILocation(line: 1283, column: 17, scope: !4259)
!4263 = !DILocation(line: 1283, column: 6, scope: !4243)
!4264 = !DILocation(line: 1284, column: 8, scope: !4259)
!4265 = !DILocation(line: 1284, column: 13, scope: !4259)
!4266 = !DILocation(line: 1284, column: 15, scope: !4259)
!4267 = !DILocation(line: 1284, column: 19, scope: !4259)
!4268 = !DILocation(line: 1284, column: 3, scope: !4259)
!4269 = !DILocation(line: 1285, column: 6, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4243, file: !13, line: 1285, column: 6)
!4271 = !DILocation(line: 1285, column: 11, scope: !4270)
!4272 = !DILocation(line: 1285, column: 13, scope: !4270)
!4273 = !DILocation(line: 1285, column: 17, scope: !4270)
!4274 = !DILocation(line: 1285, column: 20, scope: !4270)
!4275 = !DILocation(line: 1285, column: 6, scope: !4243)
!4276 = !DILocation(line: 1286, column: 9, scope: !4270)
!4277 = !DILocation(line: 1286, column: 14, scope: !4270)
!4278 = !DILocation(line: 1286, column: 16, scope: !4270)
!4279 = !DILocation(line: 1286, column: 20, scope: !4270)
!4280 = !DILocation(line: 1286, column: 3, scope: !4270)
!4281 = !DILocation(line: 1287, column: 7, scope: !4243)
!4282 = !DILocation(line: 1287, column: 2, scope: !4243)
!4283 = !DILocation(line: 1288, column: 1, scope: !4243)
!4284 = distinct !DISubprogram(name: "log_content_pcap_dir_writecb", scope: !13, file: !13, line: 1291, type: !194, isLocal: true, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4285 = !DILocalVariable(name: "fh", arg: 1, scope: !4284, file: !13, line: 1291, type: !4)
!4286 = !DILocation(line: 1291, column: 36, scope: !4284)
!4287 = !DILocalVariable(name: "ctl", arg: 2, scope: !4284, file: !13, line: 1291, type: !87)
!4288 = !DILocation(line: 1291, column: 54, scope: !4284)
!4289 = !DILocalVariable(name: "buf", arg: 3, scope: !4284, file: !13, line: 1292, type: !200)
!4290 = !DILocation(line: 1292, column: 42, scope: !4284)
!4291 = !DILocalVariable(name: "sz", arg: 4, scope: !4284, file: !13, line: 1292, type: !101)
!4292 = !DILocation(line: 1292, column: 54, scope: !4284)
!4293 = !DILocalVariable(name: "ctx", scope: !4284, file: !13, line: 1294, type: !4204)
!4294 = !DILocation(line: 1294, column: 26, scope: !4284)
!4295 = !DILocation(line: 1294, column: 32, scope: !4284)
!4296 = !DILocation(line: 1295, column: 39, scope: !4284)
!4297 = !DILocation(line: 1295, column: 43, scope: !4284)
!4298 = !DILocation(line: 1295, column: 48, scope: !4284)
!4299 = !DILocation(line: 1295, column: 53, scope: !4284)
!4300 = !DILocation(line: 1295, column: 57, scope: !4284)
!4301 = !DILocation(line: 1295, column: 62, scope: !4284)
!4302 = !DILocation(line: 1295, column: 64, scope: !4284)
!4303 = !DILocation(line: 1295, column: 68, scope: !4284)
!4304 = !DILocation(line: 1295, column: 9, scope: !4284)
!4305 = !DILocation(line: 1295, column: 2, scope: !4284)
!4306 = distinct !DISubprogram(name: "log_content_pcap_prepcb", scope: !13, file: !13, line: 1334, type: !3420, isLocal: true, isDefinition: true, scopeLine: 1335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4307 = !DILocalVariable(name: "fh", arg: 1, scope: !4306, file: !13, line: 1334, type: !4)
!4308 = !DILocation(line: 1334, column: 55, scope: !4306)
!4309 = !DILocalVariable(name: "prepflags", arg: 2, scope: !4306, file: !13, line: 1334, type: !87)
!4310 = !DILocation(line: 1334, column: 73, scope: !4306)
!4311 = !DILocalVariable(name: "lb", arg: 3, scope: !4306, file: !13, line: 1335, type: !3076)
!4312 = !DILocation(line: 1335, column: 35, scope: !4306)
!4313 = !DILocation(line: 1337, column: 6, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4306, file: !13, line: 1337, column: 6)
!4315 = !DILocation(line: 1337, column: 16, scope: !4314)
!4316 = !DILocation(line: 1337, column: 6, scope: !4306)
!4317 = !DILocation(line: 1338, column: 10, scope: !4314)
!4318 = !DILocation(line: 1338, column: 3, scope: !4314)
!4319 = !DILocation(line: 1339, column: 17, scope: !4306)
!4320 = !DILocation(line: 1339, column: 27, scope: !4306)
!4321 = !DILocation(line: 1339, column: 16, scope: !4306)
!4322 = !DILocation(line: 1339, column: 15, scope: !4306)
!4323 = !DILocation(line: 1339, column: 3, scope: !4306)
!4324 = !DILocation(line: 1339, column: 8, scope: !4306)
!4325 = !DILocation(line: 1339, column: 12, scope: !4306)
!4326 = !DILocation(line: 1341, column: 9, scope: !4306)
!4327 = !DILocation(line: 1341, column: 2, scope: !4306)
!4328 = !DILocation(line: 1342, column: 1, scope: !4306)
!4329 = distinct !DISubprogram(name: "log_content_pcap_spec_opencb", scope: !13, file: !13, line: 1299, type: !3404, isLocal: true, isDefinition: true, scopeLine: 1300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4330 = !DILocalVariable(name: "fh", arg: 1, scope: !4329, file: !13, line: 1299, type: !4)
!4331 = !DILocation(line: 1299, column: 36, scope: !4329)
!4332 = !DILocalVariable(name: "ctx", scope: !4329, file: !13, line: 1301, type: !4204)
!4333 = !DILocation(line: 1301, column: 26, scope: !4329)
!4334 = !DILocation(line: 1301, column: 32, scope: !4329)
!4335 = !DILocation(line: 1303, column: 48, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4329, file: !13, line: 1303, column: 6)
!4337 = !DILocation(line: 1304, column: 48, scope: !4336)
!4338 = !DILocation(line: 1304, column: 53, scope: !4336)
!4339 = !DILocation(line: 1304, column: 55, scope: !4336)
!4340 = !DILocation(line: 1304, column: 60, scope: !4336)
!4341 = !DILocation(line: 1303, column: 24, scope: !4336)
!4342 = !DILocation(line: 1303, column: 7, scope: !4336)
!4343 = !DILocation(line: 1303, column: 12, scope: !4336)
!4344 = !DILocation(line: 1303, column: 14, scope: !4336)
!4345 = !DILocation(line: 1303, column: 19, scope: !4336)
!4346 = !DILocation(line: 1303, column: 22, scope: !4336)
!4347 = !DILocation(line: 1305, column: 52, scope: !4336)
!4348 = !DILocation(line: 1303, column: 6, scope: !4329)
!4349 = !DILocation(line: 1307, column: 18, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4336, file: !13, line: 1305, column: 59)
!4351 = !DILocation(line: 1307, column: 23, scope: !4350)
!4352 = !DILocation(line: 1307, column: 25, scope: !4350)
!4353 = !DILocation(line: 1307, column: 30, scope: !4350)
!4354 = !DILocation(line: 1307, column: 50, scope: !4350)
!4355 = !DILocation(line: 1307, column: 49, scope: !4350)
!4356 = !DILocation(line: 1307, column: 40, scope: !4357)
!4357 = !DILexicalBlockFile(scope: !4350, file: !13, discriminator: 1)
!4358 = !DILocation(line: 1307, column: 58, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4350, file: !13, discriminator: 2)
!4360 = !DILocation(line: 1307, column: 57, scope: !4350)
!4361 = !DILocation(line: 1306, column: 3, scope: !4350)
!4362 = !DILocation(line: 1308, column: 3, scope: !4350)
!4363 = !DILocation(line: 1310, column: 29, scope: !4329)
!4364 = !DILocation(line: 1310, column: 34, scope: !4329)
!4365 = !DILocation(line: 1310, column: 36, scope: !4329)
!4366 = !DILocation(line: 1310, column: 41, scope: !4329)
!4367 = !DILocation(line: 1310, column: 9, scope: !4329)
!4368 = !DILocation(line: 1310, column: 2, scope: !4329)
!4369 = !DILocation(line: 1311, column: 1, scope: !4329)
!4370 = distinct !DISubprogram(name: "log_content_pcap_spec_closecb", scope: !13, file: !13, line: 1314, type: !3410, isLocal: true, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4371 = !DILocalVariable(name: "fh", arg: 1, scope: !4370, file: !13, line: 1314, type: !4)
!4372 = !DILocation(line: 1314, column: 37, scope: !4370)
!4373 = !DILocalVariable(name: "ctl", arg: 2, scope: !4370, file: !13, line: 1314, type: !87)
!4374 = !DILocation(line: 1314, column: 55, scope: !4370)
!4375 = !DILocalVariable(name: "ctx", scope: !4370, file: !13, line: 1316, type: !4204)
!4376 = !DILocation(line: 1316, column: 26, scope: !4370)
!4377 = !DILocation(line: 1316, column: 32, scope: !4370)
!4378 = !DILocation(line: 1317, column: 32, scope: !4370)
!4379 = !DILocation(line: 1317, column: 36, scope: !4370)
!4380 = !DILocation(line: 1317, column: 41, scope: !4370)
!4381 = !DILocation(line: 1317, column: 46, scope: !4370)
!4382 = !DILocation(line: 1317, column: 48, scope: !4370)
!4383 = !DILocation(line: 1317, column: 53, scope: !4370)
!4384 = !DILocation(line: 1317, column: 2, scope: !4370)
!4385 = !DILocation(line: 1318, column: 6, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4370, file: !13, line: 1318, column: 6)
!4387 = !DILocation(line: 1318, column: 11, scope: !4386)
!4388 = !DILocation(line: 1318, column: 13, scope: !4386)
!4389 = !DILocation(line: 1318, column: 18, scope: !4386)
!4390 = !DILocation(line: 1318, column: 6, scope: !4370)
!4391 = !DILocation(line: 1319, column: 8, scope: !4386)
!4392 = !DILocation(line: 1319, column: 13, scope: !4386)
!4393 = !DILocation(line: 1319, column: 15, scope: !4386)
!4394 = !DILocation(line: 1319, column: 20, scope: !4386)
!4395 = !DILocation(line: 1319, column: 3, scope: !4386)
!4396 = !DILocation(line: 1320, column: 6, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4370, file: !13, line: 1320, column: 6)
!4398 = !DILocation(line: 1320, column: 11, scope: !4397)
!4399 = !DILocation(line: 1320, column: 13, scope: !4397)
!4400 = !DILocation(line: 1320, column: 18, scope: !4397)
!4401 = !DILocation(line: 1320, column: 21, scope: !4397)
!4402 = !DILocation(line: 1320, column: 6, scope: !4370)
!4403 = !DILocation(line: 1321, column: 9, scope: !4397)
!4404 = !DILocation(line: 1321, column: 14, scope: !4397)
!4405 = !DILocation(line: 1321, column: 16, scope: !4397)
!4406 = !DILocation(line: 1321, column: 21, scope: !4397)
!4407 = !DILocation(line: 1321, column: 3, scope: !4397)
!4408 = !DILocation(line: 1322, column: 7, scope: !4370)
!4409 = !DILocation(line: 1322, column: 2, scope: !4370)
!4410 = !DILocation(line: 1323, column: 1, scope: !4370)
!4411 = distinct !DISubprogram(name: "log_content_pcap_spec_writecb", scope: !13, file: !13, line: 1326, type: !194, isLocal: true, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4412 = !DILocalVariable(name: "fh", arg: 1, scope: !4411, file: !13, line: 1326, type: !4)
!4413 = !DILocation(line: 1326, column: 37, scope: !4411)
!4414 = !DILocalVariable(name: "ctl", arg: 2, scope: !4411, file: !13, line: 1326, type: !87)
!4415 = !DILocation(line: 1326, column: 55, scope: !4411)
!4416 = !DILocalVariable(name: "buf", arg: 3, scope: !4411, file: !13, line: 1327, type: !200)
!4417 = !DILocation(line: 1327, column: 43, scope: !4411)
!4418 = !DILocalVariable(name: "sz", arg: 4, scope: !4411, file: !13, line: 1327, type: !101)
!4419 = !DILocation(line: 1327, column: 55, scope: !4411)
!4420 = !DILocalVariable(name: "ctx", scope: !4411, file: !13, line: 1329, type: !4204)
!4421 = !DILocation(line: 1329, column: 26, scope: !4411)
!4422 = !DILocation(line: 1329, column: 32, scope: !4411)
!4423 = !DILocation(line: 1330, column: 39, scope: !4411)
!4424 = !DILocation(line: 1330, column: 43, scope: !4411)
!4425 = !DILocation(line: 1330, column: 48, scope: !4411)
!4426 = !DILocation(line: 1330, column: 53, scope: !4411)
!4427 = !DILocation(line: 1330, column: 57, scope: !4411)
!4428 = !DILocation(line: 1330, column: 62, scope: !4411)
!4429 = !DILocation(line: 1330, column: 64, scope: !4411)
!4430 = !DILocation(line: 1330, column: 69, scope: !4411)
!4431 = !DILocation(line: 1330, column: 9, scope: !4411)
!4432 = !DILocation(line: 1330, column: 2, scope: !4411)
!4433 = distinct !DISubprogram(name: "log_content_pcap_reopencb", scope: !13, file: !13, line: 1203, type: !2226, isLocal: true, isDefinition: true, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4434 = !DILocation(line: 1204, column: 8, scope: !4433)
!4435 = !DILocation(line: 1204, column: 2, scope: !4433)
!4436 = !DILocation(line: 1205, column: 44, scope: !4433)
!4437 = !DILocation(line: 1206, column: 44, scope: !4433)
!4438 = !DILocation(line: 1205, column: 20, scope: !4433)
!4439 = !DILocation(line: 1205, column: 18, scope: !4433)
!4440 = !DILocation(line: 1208, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !13, line: 1208, column: 6)
!4442 = !DILocation(line: 1208, column: 22, scope: !4441)
!4443 = !DILocation(line: 1208, column: 6, scope: !4433)
!4444 = !DILocation(line: 1210, column: 18, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4441, file: !13, line: 1208, column: 29)
!4446 = !DILocation(line: 1210, column: 45, scope: !4445)
!4447 = !DILocation(line: 1210, column: 44, scope: !4445)
!4448 = !DILocation(line: 1210, column: 35, scope: !4449)
!4449 = !DILexicalBlockFile(scope: !4445, file: !13, discriminator: 1)
!4450 = !DILocation(line: 1210, column: 53, scope: !4451)
!4451 = !DILexicalBlockFile(scope: !4445, file: !13, discriminator: 2)
!4452 = !DILocation(line: 1210, column: 52, scope: !4445)
!4453 = !DILocation(line: 1209, column: 3, scope: !4445)
!4454 = !DILocation(line: 1211, column: 3, scope: !4445)
!4455 = !DILocation(line: 1213, column: 26, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4433, file: !13, line: 1213, column: 6)
!4457 = !DILocation(line: 1213, column: 6, scope: !4456)
!4458 = !DILocation(line: 1213, column: 43, scope: !4456)
!4459 = !DILocation(line: 1213, column: 6, scope: !4433)
!4460 = !DILocation(line: 1216, column: 18, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4456, file: !13, line: 1213, column: 50)
!4462 = !DILocation(line: 1216, column: 45, scope: !4461)
!4463 = !DILocation(line: 1216, column: 44, scope: !4461)
!4464 = !DILocation(line: 1216, column: 35, scope: !4465)
!4465 = !DILexicalBlockFile(scope: !4461, file: !13, discriminator: 1)
!4466 = !DILocation(line: 1216, column: 53, scope: !4467)
!4467 = !DILexicalBlockFile(scope: !4461, file: !13, discriminator: 2)
!4468 = !DILocation(line: 1216, column: 52, scope: !4461)
!4469 = !DILocation(line: 1214, column: 3, scope: !4461)
!4470 = !DILocation(line: 1217, column: 9, scope: !4461)
!4471 = !DILocation(line: 1217, column: 3, scope: !4461)
!4472 = !DILocation(line: 1218, column: 19, scope: !4461)
!4473 = !DILocation(line: 1219, column: 3, scope: !4461)
!4474 = !DILocation(line: 1221, column: 2, scope: !4433)
!4475 = !DILocation(line: 1222, column: 1, scope: !4433)
!4476 = distinct !DISubprogram(name: "log_content_pcap_closecb", scope: !13, file: !13, line: 1234, type: !3410, isLocal: true, isDefinition: true, scopeLine: 1234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4477 = !DILocalVariable(name: "fh", arg: 1, scope: !4476, file: !13, line: 1234, type: !4)
!4478 = !DILocation(line: 1234, column: 32, scope: !4476)
!4479 = !DILocalVariable(name: "ctl", arg: 2, scope: !4476, file: !13, line: 1234, type: !87)
!4480 = !DILocation(line: 1234, column: 50, scope: !4476)
!4481 = !DILocalVariable(name: "ctx", scope: !4476, file: !13, line: 1235, type: !4204)
!4482 = !DILocation(line: 1235, column: 26, scope: !4476)
!4483 = !DILocation(line: 1235, column: 32, scope: !4476)
!4484 = !DILocation(line: 1236, column: 32, scope: !4476)
!4485 = !DILocation(line: 1236, column: 36, scope: !4476)
!4486 = !DILocation(line: 1236, column: 41, scope: !4476)
!4487 = !DILocation(line: 1236, column: 2, scope: !4476)
!4488 = !DILocation(line: 1237, column: 7, scope: !4476)
!4489 = !DILocation(line: 1237, column: 2, scope: !4476)
!4490 = !DILocation(line: 1238, column: 1, scope: !4476)
!4491 = distinct !DISubprogram(name: "log_content_pcap_writecb", scope: !13, file: !13, line: 1258, type: !194, isLocal: true, isDefinition: true, scopeLine: 1259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4492 = !DILocalVariable(name: "fh", arg: 1, scope: !4491, file: !13, line: 1258, type: !4)
!4493 = !DILocation(line: 1258, column: 32, scope: !4491)
!4494 = !DILocalVariable(name: "ctl", arg: 2, scope: !4491, file: !13, line: 1258, type: !87)
!4495 = !DILocation(line: 1258, column: 50, scope: !4491)
!4496 = !DILocalVariable(name: "buf", arg: 3, scope: !4491, file: !13, line: 1259, type: !200)
!4497 = !DILocation(line: 1259, column: 38, scope: !4491)
!4498 = !DILocalVariable(name: "sz", arg: 4, scope: !4491, file: !13, line: 1259, type: !101)
!4499 = !DILocation(line: 1259, column: 50, scope: !4491)
!4500 = !DILocation(line: 1260, column: 39, scope: !4491)
!4501 = !DILocation(line: 1260, column: 43, scope: !4491)
!4502 = !DILocation(line: 1260, column: 48, scope: !4491)
!4503 = !DILocation(line: 1260, column: 53, scope: !4491)
!4504 = !DILocation(line: 1260, column: 57, scope: !4491)
!4505 = !DILocation(line: 1260, column: 9, scope: !4491)
!4506 = !DILocation(line: 1260, column: 2, scope: !4491)
!4507 = distinct !DISubprogram(name: "log_content_pcap_fini", scope: !13, file: !13, line: 1190, type: !124, isLocal: true, isDefinition: true, scopeLine: 1191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4508 = !DILocation(line: 1192, column: 6, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4507, file: !13, line: 1192, column: 6)
!4510 = !DILocation(line: 1192, column: 6, scope: !4507)
!4511 = !DILocation(line: 1193, column: 8, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4509, file: !13, line: 1192, column: 23)
!4513 = !DILocation(line: 1193, column: 3, scope: !4512)
!4514 = !DILocation(line: 1194, column: 19, scope: !4512)
!4515 = !DILocation(line: 1195, column: 2, scope: !4512)
!4516 = !DILocation(line: 1196, column: 6, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4507, file: !13, line: 1196, column: 6)
!4518 = !DILocation(line: 1196, column: 22, scope: !4517)
!4519 = !DILocation(line: 1196, column: 6, scope: !4507)
!4520 = !DILocation(line: 1197, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4517, file: !13, line: 1196, column: 29)
!4522 = !DILocation(line: 1197, column: 3, scope: !4521)
!4523 = !DILocation(line: 1198, column: 19, scope: !4521)
!4524 = !DILocation(line: 1199, column: 2, scope: !4521)
!4525 = !DILocation(line: 1200, column: 1, scope: !4507)
!4526 = distinct !DISubprogram(name: "log_content_mirror_preinit", scope: !13, file: !13, line: 1350, type: !4527, isLocal: true, isDefinition: true, scopeLine: 1350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!32, !7, !7}
!4529 = !DILocalVariable(name: "ifname", arg: 1, scope: !4526, file: !13, line: 1350, type: !7)
!4530 = !DILocation(line: 1350, column: 40, scope: !4526)
!4531 = !DILocalVariable(name: "targetip", arg: 2, scope: !4526, file: !13, line: 1350, type: !7)
!4532 = !DILocation(line: 1350, column: 60, scope: !4526)
!4533 = !DILocalVariable(name: "errbuf", scope: !4526, file: !13, line: 1351, type: !96)
!4534 = !DILocation(line: 1351, column: 7, scope: !4526)
!4535 = !DILocation(line: 1354, column: 58, scope: !4526)
!4536 = !DILocation(line: 1355, column: 38, scope: !4526)
!4537 = !DILocation(line: 1354, column: 26, scope: !4526)
!4538 = !DILocation(line: 1354, column: 24, scope: !4526)
!4539 = !DILocation(line: 1356, column: 6, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4526, file: !13, line: 1356, column: 6)
!4541 = !DILocation(line: 1356, column: 28, scope: !4540)
!4542 = !DILocation(line: 1356, column: 6, scope: !4526)
!4543 = !DILocation(line: 1357, column: 56, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !13, line: 1356, column: 36)
!4545 = !DILocation(line: 1357, column: 3, scope: !4544)
!4546 = !DILocation(line: 1358, column: 3, scope: !4544)
!4547 = !DILocation(line: 1360, column: 20, scope: !4526)
!4548 = !DILocation(line: 1360, column: 2, scope: !4526)
!4549 = !DILocation(line: 1362, column: 35, scope: !4526)
!4550 = !DILocation(line: 1362, column: 23, scope: !4526)
!4551 = !DILocation(line: 1362, column: 21, scope: !4526)
!4552 = !DILocation(line: 1363, column: 6, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4526, file: !13, line: 1363, column: 6)
!4554 = !DILocation(line: 1363, column: 25, scope: !4553)
!4555 = !DILocation(line: 1363, column: 6, scope: !4526)
!4556 = !DILocation(line: 1365, column: 18, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4553, file: !13, line: 1363, column: 31)
!4558 = !DILocation(line: 1364, column: 3, scope: !4557)
!4559 = !DILocation(line: 1366, column: 3, scope: !4557)
!4560 = !DILocation(line: 1369, column: 26, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4526, file: !13, line: 1369, column: 6)
!4562 = !DILocation(line: 1372, column: 26, scope: !4561)
!4563 = !DILocation(line: 1372, column: 36, scope: !4561)
!4564 = !DILocation(line: 1369, column: 6, scope: !4561)
!4565 = !DILocation(line: 1372, column: 44, scope: !4561)
!4566 = !DILocation(line: 1369, column: 6, scope: !4526)
!4567 = !DILocation(line: 1373, column: 3, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4561, file: !13, line: 1372, column: 51)
!4569 = !DILocation(line: 1374, column: 18, scope: !4568)
!4570 = !DILocation(line: 1374, column: 3, scope: !4568)
!4571 = !DILocation(line: 1375, column: 3, scope: !4568)
!4572 = !DILocation(line: 1378, column: 2, scope: !4526)
!4573 = !DILocation(line: 1379, column: 1, scope: !4526)
!4574 = distinct !DISubprogram(name: "log_content_mirror_closecb", scope: !13, file: !13, line: 1390, type: !3410, isLocal: true, isDefinition: true, scopeLine: 1390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4575 = !DILocalVariable(name: "fh", arg: 1, scope: !4574, file: !13, line: 1390, type: !4)
!4576 = !DILocation(line: 1390, column: 34, scope: !4574)
!4577 = !DILocalVariable(name: "ctl", arg: 2, scope: !4574, file: !13, line: 1390, type: !87)
!4578 = !DILocation(line: 1390, column: 52, scope: !4574)
!4579 = !DILocalVariable(name: "ctx", scope: !4574, file: !13, line: 1391, type: !4580)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64, align: 64)
!4581 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_content_mirror_ctx_t", file: !13, line: 375, baseType: !528)
!4582 = !DILocation(line: 1391, column: 28, scope: !4574)
!4583 = !DILocation(line: 1391, column: 34, scope: !4574)
!4584 = !DILocalVariable(name: "direction", scope: !4574, file: !13, line: 1392, type: !32)
!4585 = !DILocation(line: 1392, column: 6, scope: !4574)
!4586 = !DILocation(line: 1392, column: 19, scope: !4574)
!4587 = !DILocation(line: 1392, column: 23, scope: !4574)
!4588 = !DILocation(line: 1392, column: 18, scope: !4574)
!4589 = !DILocation(line: 1395, column: 22, scope: !4574)
!4590 = !DILocation(line: 1395, column: 27, scope: !4574)
!4591 = !DILocation(line: 1395, column: 38, scope: !4574)
!4592 = !DILocation(line: 1395, column: 2, scope: !4574)
!4593 = !DILocation(line: 1396, column: 7, scope: !4574)
!4594 = !DILocation(line: 1396, column: 2, scope: !4574)
!4595 = !DILocation(line: 1397, column: 1, scope: !4574)
!4596 = distinct !DISubprogram(name: "log_content_mirror_writecb", scope: !13, file: !13, line: 1400, type: !194, isLocal: true, isDefinition: true, scopeLine: 1401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4597 = !DILocalVariable(name: "fh", arg: 1, scope: !4596, file: !13, line: 1400, type: !4)
!4598 = !DILocation(line: 1400, column: 34, scope: !4596)
!4599 = !DILocalVariable(name: "ctl", arg: 2, scope: !4596, file: !13, line: 1400, type: !87)
!4600 = !DILocation(line: 1400, column: 52, scope: !4596)
!4601 = !DILocalVariable(name: "buf", arg: 3, scope: !4596, file: !13, line: 1401, type: !200)
!4602 = !DILocation(line: 1401, column: 40, scope: !4596)
!4603 = !DILocalVariable(name: "sz", arg: 4, scope: !4596, file: !13, line: 1401, type: !101)
!4604 = !DILocation(line: 1401, column: 52, scope: !4596)
!4605 = !DILocalVariable(name: "ctx", scope: !4596, file: !13, line: 1402, type: !4580)
!4606 = !DILocation(line: 1402, column: 28, scope: !4596)
!4607 = !DILocation(line: 1402, column: 34, scope: !4596)
!4608 = !DILocalVariable(name: "direction", scope: !4596, file: !13, line: 1403, type: !32)
!4609 = !DILocation(line: 1403, column: 6, scope: !4596)
!4610 = !DILocation(line: 1403, column: 19, scope: !4596)
!4611 = !DILocation(line: 1403, column: 23, scope: !4596)
!4612 = !DILocation(line: 1403, column: 18, scope: !4596)
!4613 = !DILocation(line: 1406, column: 28, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4596, file: !13, line: 1406, column: 6)
!4615 = !DILocation(line: 1406, column: 33, scope: !4614)
!4616 = !DILocation(line: 1406, column: 44, scope: !4614)
!4617 = !DILocation(line: 1406, column: 55, scope: !4614)
!4618 = !DILocation(line: 1406, column: 60, scope: !4614)
!4619 = !DILocation(line: 1406, column: 6, scope: !4614)
!4620 = !DILocation(line: 1406, column: 64, scope: !4614)
!4621 = !DILocation(line: 1406, column: 6, scope: !4596)
!4622 = !DILocation(line: 1407, column: 3, scope: !4614)
!4623 = !DILocation(line: 1408, column: 9, scope: !4596)
!4624 = !DILocation(line: 1408, column: 2, scope: !4596)
!4625 = !DILocation(line: 1412, column: 27, scope: !4596)
!4626 = !DILocation(line: 1412, column: 26, scope: !4596)
!4627 = !DILocation(line: 1412, column: 17, scope: !4628)
!4628 = !DILexicalBlockFile(scope: !4596, file: !13, discriminator: 1)
!4629 = !DILocation(line: 1412, column: 35, scope: !4630)
!4630 = !DILexicalBlockFile(scope: !4596, file: !13, discriminator: 2)
!4631 = !DILocation(line: 1412, column: 34, scope: !4596)
!4632 = !DILocation(line: 1411, column: 2, scope: !4596)
!4633 = !DILocation(line: 1413, column: 2, scope: !4596)
!4634 = !DILocation(line: 1414, column: 1, scope: !4596)
!4635 = distinct !DISubprogram(name: "log_content_mirror_prepcb", scope: !13, file: !13, line: 1417, type: !3420, isLocal: true, isDefinition: true, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4636 = !DILocalVariable(name: "fh", arg: 1, scope: !4635, file: !13, line: 1417, type: !4)
!4637 = !DILocation(line: 1417, column: 57, scope: !4635)
!4638 = !DILocalVariable(name: "prepflags", arg: 2, scope: !4635, file: !13, line: 1417, type: !87)
!4639 = !DILocation(line: 1417, column: 75, scope: !4635)
!4640 = !DILocalVariable(name: "lb", arg: 3, scope: !4635, file: !13, line: 1418, type: !3076)
!4641 = !DILocation(line: 1418, column: 37, scope: !4635)
!4642 = !DILocation(line: 1420, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4635, file: !13, line: 1420, column: 6)
!4644 = !DILocation(line: 1420, column: 16, scope: !4643)
!4645 = !DILocation(line: 1420, column: 6, scope: !4635)
!4646 = !DILocation(line: 1421, column: 10, scope: !4643)
!4647 = !DILocation(line: 1421, column: 3, scope: !4643)
!4648 = !DILocation(line: 1422, column: 17, scope: !4635)
!4649 = !DILocation(line: 1422, column: 27, scope: !4635)
!4650 = !DILocation(line: 1422, column: 16, scope: !4635)
!4651 = !DILocation(line: 1422, column: 15, scope: !4635)
!4652 = !DILocation(line: 1422, column: 3, scope: !4635)
!4653 = !DILocation(line: 1422, column: 8, scope: !4635)
!4654 = !DILocation(line: 1422, column: 12, scope: !4635)
!4655 = !DILocation(line: 1424, column: 9, scope: !4635)
!4656 = !DILocation(line: 1424, column: 2, scope: !4635)
!4657 = !DILocation(line: 1425, column: 1, scope: !4635)
!4658 = distinct !DISubprogram(name: "log_content_mirror_fini", scope: !13, file: !13, line: 1382, type: !124, isLocal: true, isDefinition: true, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4659 = !DILocation(line: 1384, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4658, file: !13, line: 1384, column: 6)
!4661 = !DILocation(line: 1384, column: 6, scope: !4658)
!4662 = !DILocation(line: 1385, column: 18, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !13, line: 1384, column: 29)
!4664 = !DILocation(line: 1385, column: 3, scope: !4663)
!4665 = !DILocation(line: 1386, column: 2, scope: !4663)
!4666 = !DILocation(line: 1387, column: 1, scope: !4658)
!4667 = distinct !DISubprogram(name: "log_connect_preinit", scope: !13, file: !13, line: 256, type: !3886, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4668 = !DILocalVariable(name: "logfile", arg: 1, scope: !4667, file: !13, line: 256, type: !7)
!4669 = !DILocation(line: 256, column: 33, scope: !4667)
!4670 = !DILocation(line: 258, column: 20, scope: !4667)
!4671 = !DILocation(line: 258, column: 15, scope: !4667)
!4672 = !DILocation(line: 258, column: 13, scope: !4667)
!4673 = !DILocation(line: 259, column: 6, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4667, file: !13, line: 259, column: 6)
!4675 = !DILocation(line: 259, column: 17, scope: !4674)
!4676 = !DILocation(line: 259, column: 6, scope: !4667)
!4677 = !DILocation(line: 261, column: 18, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4674, file: !13, line: 259, column: 24)
!4679 = !DILocation(line: 261, column: 37, scope: !4678)
!4680 = !DILocation(line: 261, column: 36, scope: !4678)
!4681 = !DILocation(line: 261, column: 27, scope: !4682)
!4682 = !DILexicalBlockFile(scope: !4678, file: !13, discriminator: 1)
!4683 = !DILocation(line: 261, column: 45, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4678, file: !13, discriminator: 2)
!4685 = !DILocation(line: 261, column: 44, scope: !4678)
!4686 = !DILocation(line: 260, column: 3, scope: !4678)
!4687 = !DILocation(line: 262, column: 3, scope: !4678)
!4688 = !DILocation(line: 264, column: 22, scope: !4667)
!4689 = !DILocation(line: 264, column: 15, scope: !4667)
!4690 = !DILocation(line: 264, column: 13, scope: !4667)
!4691 = !DILocation(line: 265, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4667, file: !13, line: 265, column: 6)
!4693 = !DILocation(line: 265, column: 6, scope: !4667)
!4694 = !DILocation(line: 266, column: 9, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4692, file: !13, line: 265, column: 19)
!4696 = !DILocation(line: 266, column: 3, scope: !4695)
!4697 = !DILocation(line: 267, column: 14, scope: !4695)
!4698 = !DILocation(line: 268, column: 3, scope: !4695)
!4699 = !DILocation(line: 270, column: 2, scope: !4667)
!4700 = !DILocation(line: 271, column: 1, scope: !4667)
!4701 = distinct !DISubprogram(name: "log_connect_reopencb", scope: !13, file: !13, line: 274, type: !2226, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4702 = !DILocation(line: 276, column: 8, scope: !4701)
!4703 = !DILocation(line: 276, column: 2, scope: !4701)
!4704 = !DILocation(line: 277, column: 39, scope: !4701)
!4705 = !DILocation(line: 278, column: 39, scope: !4701)
!4706 = !DILocation(line: 277, column: 15, scope: !4701)
!4707 = !DILocation(line: 277, column: 13, scope: !4701)
!4708 = !DILocation(line: 280, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4701, file: !13, line: 280, column: 6)
!4710 = !DILocation(line: 280, column: 17, scope: !4709)
!4711 = !DILocation(line: 280, column: 6, scope: !4701)
!4712 = !DILocation(line: 282, column: 18, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !13, line: 280, column: 24)
!4714 = !DILocation(line: 282, column: 40, scope: !4713)
!4715 = !DILocation(line: 282, column: 39, scope: !4713)
!4716 = !DILocation(line: 282, column: 30, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4713, file: !13, discriminator: 1)
!4718 = !DILocation(line: 281, column: 3, scope: !4713)
!4719 = !DILocation(line: 283, column: 8, scope: !4713)
!4720 = !DILocation(line: 283, column: 3, scope: !4713)
!4721 = !DILocation(line: 284, column: 14, scope: !4713)
!4722 = !DILocation(line: 285, column: 3, scope: !4713)
!4723 = !DILocation(line: 287, column: 2, scope: !4701)
!4724 = !DILocation(line: 288, column: 1, scope: !4701)
!4725 = distinct !DISubprogram(name: "log_connect_writecb", scope: !13, file: !13, line: 297, type: !194, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4726 = !DILocalVariable(name: "fh", arg: 1, scope: !4725, file: !13, line: 297, type: !4)
!4727 = !DILocation(line: 297, column: 51, scope: !4725)
!4728 = !DILocalVariable(name: "ctl", arg: 2, scope: !4725, file: !13, line: 297, type: !87)
!4729 = !DILocation(line: 297, column: 93, scope: !4725)
!4730 = !DILocalVariable(name: "buf", arg: 3, scope: !4725, file: !13, line: 298, type: !200)
!4731 = !DILocation(line: 298, column: 33, scope: !4725)
!4732 = !DILocalVariable(name: "sz", arg: 4, scope: !4725, file: !13, line: 298, type: !101)
!4733 = !DILocation(line: 298, column: 45, scope: !4725)
!4734 = !DILocalVariable(name: "timebuf", scope: !4725, file: !13, line: 300, type: !4735)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 8, elements: !733)
!4736 = !DILocation(line: 300, column: 7, scope: !4725)
!4737 = !DILocalVariable(name: "epoch", scope: !4725, file: !13, line: 301, type: !1685)
!4738 = !DILocation(line: 301, column: 9, scope: !4725)
!4739 = !DILocalVariable(name: "utc", scope: !4725, file: !13, line: 302, type: !2338)
!4740 = !DILocation(line: 302, column: 13, scope: !4725)
!4741 = !DILocalVariable(name: "n", scope: !4725, file: !13, line: 303, type: !101)
!4742 = !DILocation(line: 303, column: 9, scope: !4725)
!4743 = !DILocation(line: 305, column: 2, scope: !4725)
!4744 = !DILocation(line: 306, column: 8, scope: !4725)
!4745 = !DILocation(line: 306, column: 6, scope: !4725)
!4746 = !DILocation(line: 307, column: 15, scope: !4725)
!4747 = !DILocation(line: 307, column: 67, scope: !4725)
!4748 = !DILocation(line: 307, column: 6, scope: !4725)
!4749 = !DILocation(line: 307, column: 4, scope: !4725)
!4750 = !DILocation(line: 308, column: 6, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4725, file: !13, line: 308, column: 6)
!4752 = !DILocation(line: 308, column: 8, scope: !4751)
!4753 = !DILocation(line: 308, column: 6, scope: !4725)
!4754 = !DILocation(line: 309, column: 3, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4751, file: !13, line: 308, column: 14)
!4756 = !DILocation(line: 310, column: 3, scope: !4755)
!4757 = !DILocation(line: 312, column: 13, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4725, file: !13, line: 312, column: 6)
!4759 = !DILocation(line: 312, column: 25, scope: !4758)
!4760 = !DILocation(line: 312, column: 34, scope: !4758)
!4761 = !DILocation(line: 312, column: 7, scope: !4758)
!4762 = !DILocation(line: 312, column: 37, scope: !4758)
!4763 = !DILocation(line: 312, column: 44, scope: !4758)
!4764 = !DILocation(line: 313, column: 13, scope: !4758)
!4765 = !DILocation(line: 313, column: 25, scope: !4758)
!4766 = !DILocation(line: 313, column: 30, scope: !4758)
!4767 = !DILocation(line: 313, column: 7, scope: !4758)
!4768 = !DILocation(line: 313, column: 34, scope: !4758)
!4769 = !DILocation(line: 312, column: 6, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4725, file: !13, discriminator: 1)
!4771 = !DILocation(line: 315, column: 28, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4758, file: !13, line: 313, column: 42)
!4773 = !DILocation(line: 315, column: 27, scope: !4772)
!4774 = !DILocation(line: 315, column: 18, scope: !4775)
!4775 = !DILexicalBlockFile(scope: !4772, file: !13, discriminator: 1)
!4776 = !DILocation(line: 314, column: 3, scope: !4772)
!4777 = !DILocation(line: 316, column: 3, scope: !4772)
!4778 = !DILocation(line: 318, column: 9, scope: !4725)
!4779 = !DILocation(line: 318, column: 2, scope: !4725)
!4780 = !DILocation(line: 319, column: 1, scope: !4725)
!4781 = distinct !DISubprogram(name: "log_connect_fini", scope: !13, file: !13, line: 322, type: !124, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4782 = !DILocation(line: 324, column: 8, scope: !4781)
!4783 = !DILocation(line: 324, column: 2, scope: !4781)
!4784 = !DILocation(line: 325, column: 1, scope: !4781)
!4785 = distinct !DISubprogram(name: "log_masterkey_preinit", scope: !13, file: !13, line: 189, type: !3886, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4786 = !DILocalVariable(name: "logfile", arg: 1, scope: !4785, file: !13, line: 189, type: !7)
!4787 = !DILocation(line: 189, column: 35, scope: !4785)
!4788 = !DILocation(line: 191, column: 22, scope: !4785)
!4789 = !DILocation(line: 191, column: 17, scope: !4785)
!4790 = !DILocation(line: 191, column: 15, scope: !4785)
!4791 = !DILocation(line: 192, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4785, file: !13, line: 192, column: 6)
!4793 = !DILocation(line: 192, column: 19, scope: !4792)
!4794 = !DILocation(line: 192, column: 6, scope: !4785)
!4795 = !DILocation(line: 194, column: 18, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !13, line: 192, column: 26)
!4797 = !DILocation(line: 194, column: 37, scope: !4796)
!4798 = !DILocation(line: 194, column: 36, scope: !4796)
!4799 = !DILocation(line: 194, column: 27, scope: !4800)
!4800 = !DILexicalBlockFile(scope: !4796, file: !13, discriminator: 1)
!4801 = !DILocation(line: 194, column: 45, scope: !4802)
!4802 = !DILexicalBlockFile(scope: !4796, file: !13, discriminator: 2)
!4803 = !DILocation(line: 194, column: 44, scope: !4796)
!4804 = !DILocation(line: 193, column: 3, scope: !4796)
!4805 = !DILocation(line: 195, column: 3, scope: !4796)
!4806 = !DILocation(line: 197, column: 24, scope: !4785)
!4807 = !DILocation(line: 197, column: 17, scope: !4785)
!4808 = !DILocation(line: 197, column: 15, scope: !4785)
!4809 = !DILocation(line: 198, column: 7, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4785, file: !13, line: 198, column: 6)
!4811 = !DILocation(line: 198, column: 6, scope: !4785)
!4812 = !DILocation(line: 199, column: 9, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !13, line: 198, column: 21)
!4814 = !DILocation(line: 199, column: 3, scope: !4813)
!4815 = !DILocation(line: 200, column: 16, scope: !4813)
!4816 = !DILocation(line: 201, column: 3, scope: !4813)
!4817 = !DILocation(line: 203, column: 2, scope: !4785)
!4818 = !DILocation(line: 204, column: 1, scope: !4785)
!4819 = distinct !DISubprogram(name: "log_masterkey_reopencb", scope: !13, file: !13, line: 207, type: !2226, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4820 = !DILocation(line: 209, column: 8, scope: !4819)
!4821 = !DILocation(line: 209, column: 2, scope: !4819)
!4822 = !DILocation(line: 210, column: 41, scope: !4819)
!4823 = !DILocation(line: 211, column: 41, scope: !4819)
!4824 = !DILocation(line: 210, column: 17, scope: !4819)
!4825 = !DILocation(line: 210, column: 15, scope: !4819)
!4826 = !DILocation(line: 213, column: 6, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4819, file: !13, line: 213, column: 6)
!4828 = !DILocation(line: 213, column: 19, scope: !4827)
!4829 = !DILocation(line: 213, column: 6, scope: !4819)
!4830 = !DILocation(line: 215, column: 18, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4827, file: !13, line: 213, column: 26)
!4832 = !DILocation(line: 215, column: 42, scope: !4831)
!4833 = !DILocation(line: 215, column: 41, scope: !4831)
!4834 = !DILocation(line: 215, column: 32, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4831, file: !13, discriminator: 1)
!4836 = !DILocation(line: 214, column: 3, scope: !4831)
!4837 = !DILocation(line: 216, column: 8, scope: !4831)
!4838 = !DILocation(line: 216, column: 3, scope: !4831)
!4839 = !DILocation(line: 217, column: 16, scope: !4831)
!4840 = !DILocation(line: 218, column: 3, scope: !4831)
!4841 = !DILocation(line: 220, column: 2, scope: !4819)
!4842 = !DILocation(line: 221, column: 1, scope: !4819)
!4843 = distinct !DISubprogram(name: "log_masterkey_writecb", scope: !13, file: !13, line: 227, type: !194, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4844 = !DILocalVariable(name: "fh", arg: 1, scope: !4843, file: !13, line: 227, type: !4)
!4845 = !DILocation(line: 227, column: 53, scope: !4843)
!4846 = !DILocalVariable(name: "ctl", arg: 2, scope: !4843, file: !13, line: 227, type: !87)
!4847 = !DILocation(line: 227, column: 95, scope: !4843)
!4848 = !DILocalVariable(name: "buf", arg: 3, scope: !4843, file: !13, line: 228, type: !200)
!4849 = !DILocation(line: 228, column: 35, scope: !4843)
!4850 = !DILocalVariable(name: "sz", arg: 4, scope: !4843, file: !13, line: 228, type: !101)
!4851 = !DILocation(line: 228, column: 47, scope: !4843)
!4852 = !DILocation(line: 230, column: 12, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4843, file: !13, line: 230, column: 6)
!4854 = !DILocation(line: 230, column: 26, scope: !4853)
!4855 = !DILocation(line: 230, column: 31, scope: !4853)
!4856 = !DILocation(line: 230, column: 6, scope: !4853)
!4857 = !DILocation(line: 230, column: 35, scope: !4853)
!4858 = !DILocation(line: 230, column: 6, scope: !4843)
!4859 = !DILocation(line: 232, column: 37, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4853, file: !13, line: 230, column: 42)
!4861 = !DILocation(line: 232, column: 36, scope: !4860)
!4862 = !DILocation(line: 232, column: 27, scope: !4863)
!4863 = !DILexicalBlockFile(scope: !4860, file: !13, discriminator: 1)
!4864 = !DILocation(line: 231, column: 3, scope: !4860)
!4865 = !DILocation(line: 233, column: 3, scope: !4860)
!4866 = !DILocation(line: 235, column: 9, scope: !4843)
!4867 = !DILocation(line: 235, column: 2, scope: !4843)
!4868 = !DILocation(line: 236, column: 1, scope: !4843)
!4869 = distinct !DISubprogram(name: "log_masterkey_fini", scope: !13, file: !13, line: 239, type: !124, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4870 = !DILocation(line: 241, column: 8, scope: !4869)
!4871 = !DILocation(line: 241, column: 2, scope: !4869)
!4872 = !DILocation(line: 242, column: 1, scope: !4869)
!4873 = distinct !DISubprogram(name: "log_cert_writecb", scope: !13, file: !13, line: 1458, type: !194, isLocal: true, isDefinition: true, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4874 = !DILocalVariable(name: "fh", arg: 1, scope: !4873, file: !13, line: 1458, type: !4)
!4875 = !DILocation(line: 1458, column: 24, scope: !4873)
!4876 = !DILocalVariable(name: "ctl", arg: 2, scope: !4873, file: !13, line: 1458, type: !87)
!4877 = !DILocation(line: 1458, column: 66, scope: !4873)
!4878 = !DILocalVariable(name: "buf", arg: 3, scope: !4873, file: !13, line: 1459, type: !200)
!4879 = !DILocation(line: 1459, column: 30, scope: !4873)
!4880 = !DILocalVariable(name: "sz", arg: 4, scope: !4873, file: !13, line: 1459, type: !101)
!4881 = !DILocation(line: 1459, column: 42, scope: !4873)
!4882 = !DILocalVariable(name: "fn", scope: !4873, file: !13, line: 1461, type: !10)
!4883 = !DILocation(line: 1461, column: 8, scope: !4873)
!4884 = !DILocation(line: 1461, column: 13, scope: !4873)
!4885 = !DILocalVariable(name: "fd", scope: !4873, file: !13, line: 1462, type: !32)
!4886 = !DILocation(line: 1462, column: 6, scope: !4873)
!4887 = !DILocation(line: 1464, column: 36, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4873, file: !13, line: 1464, column: 6)
!4889 = !DILocation(line: 1464, column: 50, scope: !4888)
!4890 = !DILocation(line: 1464, column: 12, scope: !4888)
!4891 = !DILocation(line: 1464, column: 10, scope: !4888)
!4892 = !DILocation(line: 1464, column: 55, scope: !4888)
!4893 = !DILocation(line: 1464, column: 6, scope: !4873)
!4894 = !DILocation(line: 1464, column: 8, scope: !4895)
!4895 = !DILexicalBlockFile(scope: !4896, file: !13, discriminator: 1)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !13, line: 1464, column: 6)
!4897 = distinct !DILexicalBlock(scope: !4888, file: !13, line: 1464, column: 62)
!4898 = !DILocation(line: 1464, column: 7, scope: !4895)
!4899 = !DILocation(line: 1464, column: 12, scope: !4895)
!4900 = !DILocation(line: 1464, column: 6, scope: !4895)
!4901 = !DILocation(line: 1466, column: 19, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4896, file: !13, line: 1464, column: 23)
!4903 = !DILocation(line: 1466, column: 33, scope: !4902)
!4904 = !DILocation(line: 1466, column: 32, scope: !4902)
!4905 = !DILocation(line: 1466, column: 23, scope: !4906)
!4906 = !DILexicalBlockFile(scope: !4902, file: !13, discriminator: 1)
!4907 = !DILocation(line: 1466, column: 41, scope: !4908)
!4908 = !DILexicalBlockFile(scope: !4902, file: !13, discriminator: 2)
!4909 = !DILocation(line: 1466, column: 40, scope: !4902)
!4910 = !DILocation(line: 1465, column: 4, scope: !4902)
!4911 = !DILocation(line: 1467, column: 4, scope: !4902)
!4912 = !DILocation(line: 1469, column: 10, scope: !4897)
!4913 = !DILocation(line: 1469, column: 3, scope: !4897)
!4914 = !DILocation(line: 1471, column: 12, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4873, file: !13, line: 1471, column: 6)
!4916 = !DILocation(line: 1471, column: 16, scope: !4915)
!4917 = !DILocation(line: 1471, column: 21, scope: !4915)
!4918 = !DILocation(line: 1471, column: 6, scope: !4915)
!4919 = !DILocation(line: 1471, column: 25, scope: !4915)
!4920 = !DILocation(line: 1471, column: 6, scope: !4873)
!4921 = !DILocation(line: 1473, column: 18, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4915, file: !13, line: 1471, column: 32)
!4923 = !DILocation(line: 1473, column: 32, scope: !4922)
!4924 = !DILocation(line: 1473, column: 31, scope: !4922)
!4925 = !DILocation(line: 1473, column: 22, scope: !4926)
!4926 = !DILexicalBlockFile(scope: !4922, file: !13, discriminator: 1)
!4927 = !DILocation(line: 1473, column: 40, scope: !4928)
!4928 = !DILexicalBlockFile(scope: !4922, file: !13, discriminator: 2)
!4929 = !DILocation(line: 1473, column: 39, scope: !4922)
!4930 = !DILocation(line: 1472, column: 3, scope: !4922)
!4931 = !DILocation(line: 1474, column: 9, scope: !4922)
!4932 = !DILocation(line: 1474, column: 3, scope: !4922)
!4933 = !DILocation(line: 1475, column: 3, scope: !4922)
!4934 = !DILocation(line: 1477, column: 8, scope: !4873)
!4935 = !DILocation(line: 1477, column: 2, scope: !4873)
!4936 = !DILocation(line: 1478, column: 9, scope: !4873)
!4937 = !DILocation(line: 1478, column: 2, scope: !4873)
!4938 = !DILocation(line: 1479, column: 1, scope: !4873)
!4939 = distinct !DISubprogram(name: "log_preinit_undo", scope: !13, file: !13, line: 1646, type: !124, isLocal: false, isDefinition: true, scopeLine: 1647, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4940 = !DILocation(line: 1648, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4939, file: !13, line: 1648, column: 6)
!4942 = !DILocation(line: 1648, column: 6, scope: !4939)
!4943 = !DILocation(line: 1649, column: 3, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !13, line: 1648, column: 19)
!4945 = !DILocation(line: 1650, column: 15, scope: !4944)
!4946 = !DILocation(line: 1650, column: 3, scope: !4944)
!4947 = !DILocation(line: 1651, column: 2, scope: !4944)
!4948 = !DILocation(line: 1652, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4939, file: !13, line: 1652, column: 6)
!4950 = !DILocation(line: 1652, column: 6, scope: !4939)
!4951 = !DILocation(line: 1653, column: 3, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !13, line: 1652, column: 24)
!4953 = !DILocation(line: 1654, column: 15, scope: !4952)
!4954 = !DILocation(line: 1654, column: 3, scope: !4952)
!4955 = !DILocation(line: 1655, column: 2, scope: !4952)
!4956 = !DILocation(line: 1656, column: 6, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4939, file: !13, line: 1656, column: 6)
!4958 = !DILocation(line: 1656, column: 6, scope: !4939)
!4959 = !DILocation(line: 1657, column: 3, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !13, line: 1656, column: 24)
!4961 = !DILocation(line: 1658, column: 15, scope: !4960)
!4962 = !DILocation(line: 1658, column: 3, scope: !4960)
!4963 = !DILocation(line: 1659, column: 2, scope: !4960)
!4964 = !DILocation(line: 1661, column: 6, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4939, file: !13, line: 1661, column: 6)
!4966 = !DILocation(line: 1661, column: 6, scope: !4939)
!4967 = !DILocation(line: 1662, column: 3, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4965, file: !13, line: 1661, column: 26)
!4969 = !DILocation(line: 1663, column: 15, scope: !4968)
!4970 = !DILocation(line: 1663, column: 3, scope: !4968)
!4971 = !DILocation(line: 1664, column: 2, scope: !4968)
!4972 = !DILocation(line: 1666, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4939, file: !13, line: 1666, column: 6)
!4974 = !DILocation(line: 1666, column: 6, scope: !4939)
!4975 = !DILocation(line: 1667, column: 3, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4973, file: !13, line: 1666, column: 21)
!4977 = !DILocation(line: 1668, column: 15, scope: !4976)
!4978 = !DILocation(line: 1668, column: 3, scope: !4976)
!4979 = !DILocation(line: 1669, column: 2, scope: !4976)
!4980 = !DILocation(line: 1670, column: 1, scope: !4939)
!4981 = distinct !DISubprogram(name: "log_init", scope: !13, file: !13, line: 1677, type: !4982, isLocal: false, isDefinition: true, scopeLine: 1678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!32, !531, !27, !1521}
!4984 = !DILocalVariable(name: "opts", arg: 1, scope: !4981, file: !13, line: 1677, type: !531)
!4985 = !DILocation(line: 1677, column: 18, scope: !4981)
!4986 = !DILocalVariable(name: "ctx", arg: 2, scope: !4981, file: !13, line: 1677, type: !27)
!4987 = !DILocation(line: 1677, column: 37, scope: !4981)
!4988 = !DILocalVariable(name: "clisock", arg: 3, scope: !4981, file: !13, line: 1677, type: !1521)
!4989 = !DILocation(line: 1677, column: 46, scope: !4981)
!4990 = !DILocation(line: 1679, column: 14, scope: !4981)
!4991 = !DILocation(line: 1679, column: 12, scope: !4981)
!4992 = !DILocation(line: 1680, column: 6, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1680, column: 6)
!4994 = !DILocation(line: 1680, column: 6, scope: !4981)
!4995 = !DILocation(line: 1681, column: 20, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4993, file: !13, line: 1681, column: 7)
!4997 = !DILocation(line: 1681, column: 7, scope: !4996)
!4998 = !DILocation(line: 1681, column: 29, scope: !4996)
!4999 = !DILocation(line: 1681, column: 7, scope: !4993)
!5000 = !DILocation(line: 1682, column: 4, scope: !4996)
!5001 = !DILocation(line: 1681, column: 33, scope: !5002)
!5002 = !DILexicalBlockFile(scope: !4996, file: !13, discriminator: 1)
!5003 = !DILocation(line: 1683, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1683, column: 6)
!5005 = !DILocation(line: 1683, column: 13, scope: !5004)
!5006 = !DILocation(line: 1683, column: 6, scope: !4981)
!5007 = !DILocation(line: 1684, column: 23, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !13, line: 1683, column: 20)
!5009 = !DILocation(line: 1685, column: 2, scope: !5008)
!5010 = !DILocation(line: 1687, column: 6, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1687, column: 6)
!5012 = !DILocation(line: 1687, column: 6, scope: !4981)
!5013 = !DILocation(line: 1688, column: 23, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5011, file: !13, line: 1687, column: 21)
!5015 = !DILocation(line: 1688, column: 21, scope: !5014)
!5016 = !DILocation(line: 1689, column: 20, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !13, line: 1689, column: 7)
!5018 = !DILocation(line: 1689, column: 7, scope: !5017)
!5019 = !DILocation(line: 1689, column: 35, scope: !5017)
!5020 = !DILocation(line: 1689, column: 7, scope: !5014)
!5021 = !DILocation(line: 1690, column: 4, scope: !5017)
!5022 = !DILocation(line: 1691, column: 2, scope: !5014)
!5023 = !DILocation(line: 1692, column: 24, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5011, file: !13, line: 1691, column: 9)
!5025 = !DILocation(line: 1692, column: 3, scope: !5024)
!5026 = !DILocation(line: 1695, column: 6, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1695, column: 6)
!5028 = !DILocation(line: 1695, column: 6, scope: !4981)
!5029 = !DILocation(line: 1696, column: 21, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !13, line: 1695, column: 19)
!5031 = !DILocation(line: 1696, column: 19, scope: !5030)
!5032 = !DILocation(line: 1697, column: 20, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !13, line: 1697, column: 7)
!5034 = !DILocation(line: 1697, column: 7, scope: !5033)
!5035 = !DILocation(line: 1697, column: 33, scope: !5033)
!5036 = !DILocation(line: 1697, column: 7, scope: !5030)
!5037 = !DILocation(line: 1698, column: 4, scope: !5033)
!5038 = !DILocation(line: 1699, column: 2, scope: !5030)
!5039 = !DILocation(line: 1700, column: 24, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5027, file: !13, line: 1699, column: 9)
!5041 = !DILocation(line: 1700, column: 3, scope: !5040)
!5042 = !DILocation(line: 1703, column: 6, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1703, column: 6)
!5044 = !DILocation(line: 1703, column: 6, scope: !4981)
!5045 = !DILocation(line: 1704, column: 26, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5043, file: !13, line: 1703, column: 24)
!5047 = !DILocation(line: 1704, column: 24, scope: !5046)
!5048 = !DILocation(line: 1705, column: 20, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5046, file: !13, line: 1705, column: 7)
!5050 = !DILocation(line: 1705, column: 7, scope: !5049)
!5051 = !DILocation(line: 1705, column: 38, scope: !5049)
!5052 = !DILocation(line: 1705, column: 7, scope: !5046)
!5053 = !DILocation(line: 1706, column: 4, scope: !5049)
!5054 = !DILocation(line: 1707, column: 2, scope: !5046)
!5055 = !DILocation(line: 1708, column: 24, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5043, file: !13, line: 1707, column: 9)
!5057 = !DILocation(line: 1708, column: 3, scope: !5056)
!5058 = !DILocation(line: 1711, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1711, column: 6)
!5060 = !DILocation(line: 1711, column: 6, scope: !4981)
!5061 = !DILocation(line: 1712, column: 26, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5059, file: !13, line: 1711, column: 24)
!5063 = !DILocation(line: 1712, column: 24, scope: !5062)
!5064 = !DILocation(line: 1713, column: 20, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5062, file: !13, line: 1713, column: 7)
!5066 = !DILocation(line: 1713, column: 7, scope: !5065)
!5067 = !DILocation(line: 1713, column: 38, scope: !5065)
!5068 = !DILocation(line: 1713, column: 7, scope: !5062)
!5069 = !DILocation(line: 1714, column: 4, scope: !5065)
!5070 = !DILocation(line: 1715, column: 2, scope: !5062)
!5071 = !DILocation(line: 1716, column: 24, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5059, file: !13, line: 1715, column: 9)
!5073 = !DILocation(line: 1716, column: 3, scope: !5072)
!5074 = !DILocation(line: 1720, column: 6, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1720, column: 6)
!5076 = !DILocation(line: 1720, column: 6, scope: !4981)
!5077 = !DILocation(line: 1721, column: 20, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !13, line: 1721, column: 7)
!5079 = distinct !DILexicalBlock(scope: !5075, file: !13, line: 1720, column: 26)
!5080 = !DILocation(line: 1721, column: 7, scope: !5078)
!5081 = !DILocation(line: 1721, column: 40, scope: !5078)
!5082 = !DILocation(line: 1721, column: 7, scope: !5079)
!5083 = !DILocation(line: 1722, column: 4, scope: !5078)
!5084 = !DILocation(line: 1723, column: 2, scope: !5079)
!5085 = !DILocation(line: 1726, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4981, file: !13, line: 1726, column: 6)
!5087 = !DILocation(line: 1726, column: 6, scope: !4981)
!5088 = !DILocation(line: 1727, column: 18, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !13, line: 1726, column: 16)
!5090 = !DILocation(line: 1727, column: 16, scope: !5089)
!5091 = !DILocation(line: 1728, column: 20, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5089, file: !13, line: 1728, column: 7)
!5093 = !DILocation(line: 1728, column: 7, scope: !5092)
!5094 = !DILocation(line: 1728, column: 30, scope: !5092)
!5095 = !DILocation(line: 1728, column: 7, scope: !5089)
!5096 = !DILocation(line: 1729, column: 4, scope: !5092)
!5097 = !DILocation(line: 1730, column: 2, scope: !5089)
!5098 = !DILocation(line: 1731, column: 24, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5086, file: !13, line: 1730, column: 9)
!5100 = !DILocation(line: 1731, column: 3, scope: !5099)
!5101 = !DILocation(line: 1733, column: 2, scope: !4981)
!5102 = !DILocation(line: 1734, column: 1, scope: !4981)
!5103 = distinct !DISubprogram(name: "log_fini", scope: !13, file: !13, line: 1741, type: !124, isLocal: false, isDefinition: true, scopeLine: 1742, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5104 = !DILocation(line: 1745, column: 22, scope: !5103)
!5105 = !DILocation(line: 1747, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1747, column: 6)
!5107 = !DILocation(line: 1747, column: 6, scope: !5103)
!5108 = !DILocation(line: 1748, column: 16, scope: !5106)
!5109 = !DILocation(line: 1748, column: 3, scope: !5106)
!5110 = !DILocation(line: 1749, column: 6, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1749, column: 6)
!5112 = !DILocation(line: 1749, column: 6, scope: !5103)
!5113 = !DILocation(line: 1750, column: 16, scope: !5111)
!5114 = !DILocation(line: 1750, column: 3, scope: !5111)
!5115 = !DILocation(line: 1752, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1752, column: 6)
!5117 = !DILocation(line: 1752, column: 6, scope: !5103)
!5118 = !DILocation(line: 1753, column: 16, scope: !5116)
!5119 = !DILocation(line: 1753, column: 3, scope: !5116)
!5120 = !DILocation(line: 1755, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1755, column: 6)
!5122 = !DILocation(line: 1755, column: 6, scope: !5103)
!5123 = !DILocation(line: 1756, column: 16, scope: !5121)
!5124 = !DILocation(line: 1756, column: 3, scope: !5121)
!5125 = !DILocation(line: 1757, column: 6, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1757, column: 6)
!5127 = !DILocation(line: 1757, column: 6, scope: !5103)
!5128 = !DILocation(line: 1758, column: 16, scope: !5126)
!5129 = !DILocation(line: 1758, column: 3, scope: !5126)
!5130 = !DILocation(line: 1759, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1759, column: 6)
!5132 = !DILocation(line: 1759, column: 6, scope: !5103)
!5133 = !DILocation(line: 1760, column: 16, scope: !5131)
!5134 = !DILocation(line: 1760, column: 3, scope: !5131)
!5135 = !DILocation(line: 1761, column: 6, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1761, column: 6)
!5137 = !DILocation(line: 1761, column: 6, scope: !5103)
!5138 = !DILocation(line: 1762, column: 16, scope: !5136)
!5139 = !DILocation(line: 1762, column: 3, scope: !5136)
!5140 = !DILocation(line: 1764, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1764, column: 6)
!5142 = !DILocation(line: 1764, column: 6, scope: !5103)
!5143 = !DILocation(line: 1765, column: 15, scope: !5141)
!5144 = !DILocation(line: 1765, column: 3, scope: !5141)
!5145 = !DILocation(line: 1766, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1766, column: 6)
!5147 = !DILocation(line: 1766, column: 6, scope: !5103)
!5148 = !DILocation(line: 1767, column: 15, scope: !5146)
!5149 = !DILocation(line: 1767, column: 3, scope: !5146)
!5150 = !DILocation(line: 1769, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1769, column: 6)
!5152 = !DILocation(line: 1769, column: 6, scope: !5103)
!5153 = !DILocation(line: 1770, column: 15, scope: !5151)
!5154 = !DILocation(line: 1770, column: 3, scope: !5151)
!5155 = !DILocation(line: 1772, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1772, column: 6)
!5157 = !DILocation(line: 1772, column: 6, scope: !5103)
!5158 = !DILocation(line: 1773, column: 15, scope: !5156)
!5159 = !DILocation(line: 1773, column: 3, scope: !5156)
!5160 = !DILocation(line: 1774, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1774, column: 6)
!5162 = !DILocation(line: 1774, column: 6, scope: !5103)
!5163 = !DILocation(line: 1775, column: 15, scope: !5161)
!5164 = !DILocation(line: 1775, column: 3, scope: !5161)
!5165 = !DILocation(line: 1776, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1776, column: 6)
!5167 = !DILocation(line: 1776, column: 6, scope: !5103)
!5168 = !DILocation(line: 1777, column: 15, scope: !5166)
!5169 = !DILocation(line: 1777, column: 3, scope: !5166)
!5170 = !DILocation(line: 1778, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1778, column: 6)
!5172 = !DILocation(line: 1778, column: 6, scope: !5103)
!5173 = !DILocation(line: 1779, column: 15, scope: !5171)
!5174 = !DILocation(line: 1779, column: 3, scope: !5171)
!5175 = !DILocation(line: 1781, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1781, column: 6)
!5177 = !DILocation(line: 1781, column: 6, scope: !5103)
!5178 = !DILocation(line: 1782, column: 15, scope: !5176)
!5179 = !DILocation(line: 1782, column: 3, scope: !5176)
!5180 = !DILocation(line: 1783, column: 6, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1783, column: 6)
!5182 = !DILocation(line: 1783, column: 6, scope: !5103)
!5183 = !DILocation(line: 1784, column: 15, scope: !5181)
!5184 = !DILocation(line: 1784, column: 3, scope: !5181)
!5185 = !DILocation(line: 1786, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1786, column: 6)
!5187 = !DILocation(line: 1786, column: 6, scope: !5103)
!5188 = !DILocation(line: 1787, column: 15, scope: !5186)
!5189 = !DILocation(line: 1787, column: 3, scope: !5186)
!5190 = !DILocation(line: 1789, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1789, column: 6)
!5192 = !DILocation(line: 1789, column: 6, scope: !5103)
!5193 = !DILocation(line: 1790, column: 15, scope: !5191)
!5194 = !DILocation(line: 1790, column: 3, scope: !5191)
!5195 = !DILocation(line: 1791, column: 6, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1791, column: 6)
!5197 = !DILocation(line: 1791, column: 6, scope: !5103)
!5198 = !DILocation(line: 1792, column: 15, scope: !5196)
!5199 = !DILocation(line: 1792, column: 3, scope: !5196)
!5200 = !DILocation(line: 1793, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1793, column: 6)
!5202 = !DILocation(line: 1793, column: 6, scope: !5103)
!5203 = !DILocation(line: 1794, column: 15, scope: !5201)
!5204 = !DILocation(line: 1794, column: 3, scope: !5201)
!5205 = !DILocation(line: 1795, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1795, column: 6)
!5207 = !DILocation(line: 1795, column: 6, scope: !5103)
!5208 = !DILocation(line: 1796, column: 15, scope: !5206)
!5209 = !DILocation(line: 1796, column: 3, scope: !5206)
!5210 = !DILocation(line: 1798, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1798, column: 6)
!5212 = !DILocation(line: 1798, column: 6, scope: !5103)
!5213 = !DILocation(line: 1799, column: 3, scope: !5211)
!5214 = !DILocation(line: 1801, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1801, column: 6)
!5216 = !DILocation(line: 1801, column: 6, scope: !5103)
!5217 = !DILocation(line: 1802, column: 3, scope: !5215)
!5218 = !DILocation(line: 1804, column: 6, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1804, column: 6)
!5220 = !DILocation(line: 1804, column: 6, scope: !5103)
!5221 = !DILocation(line: 1805, column: 3, scope: !5219)
!5222 = !DILocation(line: 1806, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1806, column: 6)
!5224 = !DILocation(line: 1806, column: 6, scope: !5103)
!5225 = !DILocation(line: 1807, column: 3, scope: !5223)
!5226 = !DILocation(line: 1808, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1808, column: 6)
!5228 = !DILocation(line: 1808, column: 6, scope: !5103)
!5229 = !DILocation(line: 1809, column: 3, scope: !5227)
!5230 = !DILocation(line: 1811, column: 6, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1811, column: 6)
!5232 = !DILocation(line: 1811, column: 24, scope: !5231)
!5233 = !DILocation(line: 1811, column: 6, scope: !5103)
!5234 = !DILocation(line: 1812, column: 24, scope: !5231)
!5235 = !DILocation(line: 1812, column: 3, scope: !5231)
!5236 = !DILocation(line: 1813, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1813, column: 6)
!5238 = !DILocation(line: 1813, column: 19, scope: !5237)
!5239 = !DILocation(line: 1813, column: 6, scope: !5103)
!5240 = !DILocation(line: 1814, column: 24, scope: !5237)
!5241 = !DILocation(line: 1814, column: 3, scope: !5237)
!5242 = !DILocation(line: 1815, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1815, column: 6)
!5244 = !DILocation(line: 1815, column: 27, scope: !5243)
!5245 = !DILocation(line: 1815, column: 6, scope: !5103)
!5246 = !DILocation(line: 1816, column: 24, scope: !5243)
!5247 = !DILocation(line: 1816, column: 3, scope: !5243)
!5248 = !DILocation(line: 1817, column: 6, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1817, column: 6)
!5250 = !DILocation(line: 1817, column: 27, scope: !5249)
!5251 = !DILocation(line: 1817, column: 6, scope: !5103)
!5252 = !DILocation(line: 1818, column: 24, scope: !5249)
!5253 = !DILocation(line: 1818, column: 3, scope: !5249)
!5254 = !DILocation(line: 1819, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5103, file: !13, line: 1819, column: 6)
!5256 = !DILocation(line: 1819, column: 22, scope: !5255)
!5257 = !DILocation(line: 1819, column: 6, scope: !5103)
!5258 = !DILocation(line: 1820, column: 24, scope: !5255)
!5259 = !DILocation(line: 1820, column: 3, scope: !5255)
!5260 = !DILocation(line: 1821, column: 1, scope: !5103)
!5261 = distinct !DISubprogram(name: "log_reopen", scope: !13, file: !13, line: 1824, type: !2226, isLocal: false, isDefinition: true, scopeLine: 1825, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5262 = !DILocalVariable(name: "rv", scope: !5261, file: !13, line: 1826, type: !32)
!5263 = !DILocation(line: 1826, column: 6, scope: !5261)
!5264 = !DILocation(line: 1828, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5261, file: !13, line: 1828, column: 6)
!5266 = !DILocation(line: 1828, column: 6, scope: !5261)
!5267 = !DILocation(line: 1829, column: 21, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5265, file: !13, line: 1829, column: 7)
!5269 = !DILocation(line: 1829, column: 7, scope: !5268)
!5270 = !DILocation(line: 1829, column: 36, scope: !5268)
!5271 = !DILocation(line: 1829, column: 7, scope: !5265)
!5272 = !DILocation(line: 1830, column: 7, scope: !5268)
!5273 = !DILocation(line: 1830, column: 4, scope: !5268)
!5274 = !DILocation(line: 1829, column: 40, scope: !5275)
!5275 = !DILexicalBlockFile(scope: !5268, file: !13, discriminator: 1)
!5276 = !DILocation(line: 1831, column: 6, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5261, file: !13, line: 1831, column: 6)
!5278 = !DILocation(line: 1831, column: 6, scope: !5261)
!5279 = !DILocation(line: 1832, column: 21, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5277, file: !13, line: 1832, column: 7)
!5281 = !DILocation(line: 1832, column: 7, scope: !5280)
!5282 = !DILocation(line: 1832, column: 39, scope: !5280)
!5283 = !DILocation(line: 1832, column: 7, scope: !5277)
!5284 = !DILocation(line: 1833, column: 7, scope: !5280)
!5285 = !DILocation(line: 1833, column: 4, scope: !5280)
!5286 = !DILocation(line: 1832, column: 43, scope: !5287)
!5287 = !DILexicalBlockFile(scope: !5280, file: !13, discriminator: 1)
!5288 = !DILocation(line: 1834, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5261, file: !13, line: 1834, column: 6)
!5290 = !DILocation(line: 1834, column: 6, scope: !5261)
!5291 = !DILocation(line: 1835, column: 21, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5289, file: !13, line: 1835, column: 7)
!5293 = !DILocation(line: 1835, column: 7, scope: !5292)
!5294 = !DILocation(line: 1835, column: 39, scope: !5292)
!5295 = !DILocation(line: 1835, column: 7, scope: !5289)
!5296 = !DILocation(line: 1836, column: 7, scope: !5292)
!5297 = !DILocation(line: 1836, column: 4, scope: !5292)
!5298 = !DILocation(line: 1835, column: 43, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !5292, file: !13, discriminator: 1)
!5300 = !DILocation(line: 1837, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5261, file: !13, line: 1837, column: 6)
!5302 = !DILocation(line: 1837, column: 6, scope: !5261)
!5303 = !DILocation(line: 1838, column: 21, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5301, file: !13, line: 1838, column: 7)
!5305 = !DILocation(line: 1838, column: 7, scope: !5304)
!5306 = !DILocation(line: 1838, column: 34, scope: !5304)
!5307 = !DILocation(line: 1838, column: 7, scope: !5301)
!5308 = !DILocation(line: 1839, column: 7, scope: !5304)
!5309 = !DILocation(line: 1839, column: 4, scope: !5304)
!5310 = !DILocation(line: 1838, column: 38, scope: !5311)
!5311 = !DILexicalBlockFile(scope: !5304, file: !13, discriminator: 1)
!5312 = !DILocation(line: 1841, column: 9, scope: !5261)
!5313 = !DILocation(line: 1841, column: 2, scope: !5261)
!5314 = distinct !DISubprogram(name: "log_content_pcap_closecb_base", scope: !13, file: !13, line: 1225, type: !5315, isLocal: true, isDefinition: true, scopeLine: 1225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !4, !87, !32}
!5317 = !DILocalVariable(name: "fh", arg: 1, scope: !5314, file: !13, line: 1225, type: !4)
!5318 = !DILocation(line: 1225, column: 37, scope: !5314)
!5319 = !DILocalVariable(name: "ctl", arg: 2, scope: !5314, file: !13, line: 1225, type: !87)
!5320 = !DILocation(line: 1225, column: 55, scope: !5314)
!5321 = !DILocalVariable(name: "fd", arg: 3, scope: !5314, file: !13, line: 1225, type: !32)
!5322 = !DILocation(line: 1225, column: 64, scope: !5314)
!5323 = !DILocalVariable(name: "ctx", scope: !5314, file: !13, line: 1226, type: !4204)
!5324 = !DILocation(line: 1226, column: 26, scope: !5314)
!5325 = !DILocation(line: 1226, column: 32, scope: !5314)
!5326 = !DILocalVariable(name: "direction", scope: !5314, file: !13, line: 1227, type: !32)
!5327 = !DILocation(line: 1227, column: 6, scope: !5314)
!5328 = !DILocation(line: 1227, column: 19, scope: !5314)
!5329 = !DILocation(line: 1227, column: 23, scope: !5314)
!5330 = !DILocation(line: 1227, column: 18, scope: !5314)
!5331 = !DILocation(line: 1230, column: 22, scope: !5314)
!5332 = !DILocation(line: 1230, column: 27, scope: !5314)
!5333 = !DILocation(line: 1230, column: 34, scope: !5314)
!5334 = !DILocation(line: 1230, column: 38, scope: !5314)
!5335 = !DILocation(line: 1230, column: 2, scope: !5314)
!5336 = !DILocation(line: 1231, column: 1, scope: !5314)
!5337 = distinct !DISubprogram(name: "log_content_pcap_writecb_base", scope: !13, file: !13, line: 1241, type: !5338, isLocal: true, isDefinition: true, scopeLine: 1242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!196, !4, !87, !200, !101, !32}
!5340 = !DILocalVariable(name: "fh", arg: 1, scope: !5337, file: !13, line: 1241, type: !4)
!5341 = !DILocation(line: 1241, column: 37, scope: !5337)
!5342 = !DILocalVariable(name: "ctl", arg: 2, scope: !5337, file: !13, line: 1241, type: !87)
!5343 = !DILocation(line: 1241, column: 55, scope: !5337)
!5344 = !DILocalVariable(name: "buf", arg: 3, scope: !5337, file: !13, line: 1242, type: !200)
!5345 = !DILocation(line: 1242, column: 43, scope: !5337)
!5346 = !DILocalVariable(name: "sz", arg: 4, scope: !5337, file: !13, line: 1242, type: !101)
!5347 = !DILocation(line: 1242, column: 55, scope: !5337)
!5348 = !DILocalVariable(name: "fd", arg: 5, scope: !5337, file: !13, line: 1242, type: !32)
!5349 = !DILocation(line: 1242, column: 63, scope: !5337)
!5350 = !DILocalVariable(name: "ctx", scope: !5337, file: !13, line: 1243, type: !4204)
!5351 = !DILocation(line: 1243, column: 26, scope: !5337)
!5352 = !DILocation(line: 1243, column: 32, scope: !5337)
!5353 = !DILocalVariable(name: "direction", scope: !5337, file: !13, line: 1244, type: !32)
!5354 = !DILocation(line: 1244, column: 6, scope: !5337)
!5355 = !DILocation(line: 1244, column: 19, scope: !5337)
!5356 = !DILocation(line: 1244, column: 23, scope: !5337)
!5357 = !DILocation(line: 1244, column: 18, scope: !5337)
!5358 = !DILocation(line: 1247, column: 28, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5337, file: !13, line: 1247, column: 6)
!5360 = !DILocation(line: 1247, column: 33, scope: !5359)
!5361 = !DILocation(line: 1247, column: 40, scope: !5359)
!5362 = !DILocation(line: 1247, column: 44, scope: !5359)
!5363 = !DILocation(line: 1247, column: 55, scope: !5359)
!5364 = !DILocation(line: 1247, column: 60, scope: !5359)
!5365 = !DILocation(line: 1247, column: 6, scope: !5359)
!5366 = !DILocation(line: 1247, column: 64, scope: !5359)
!5367 = !DILocation(line: 1247, column: 6, scope: !5337)
!5368 = !DILocation(line: 1248, column: 3, scope: !5359)
!5369 = !DILocation(line: 1250, column: 9, scope: !5337)
!5370 = !DILocation(line: 1250, column: 2, scope: !5337)
!5371 = !DILocation(line: 1253, column: 27, scope: !5337)
!5372 = !DILocation(line: 1253, column: 26, scope: !5337)
!5373 = !DILocation(line: 1253, column: 17, scope: !5374)
!5374 = !DILexicalBlockFile(scope: !5337, file: !13, discriminator: 1)
!5375 = !DILocation(line: 1253, column: 35, scope: !5376)
!5376 = !DILexicalBlockFile(scope: !5337, file: !13, discriminator: 2)
!5377 = !DILocation(line: 1253, column: 34, scope: !5337)
!5378 = !DILocation(line: 1252, column: 2, scope: !5337)
!5379 = !DILocation(line: 1254, column: 2, scope: !5337)
!5380 = !DILocation(line: 1255, column: 1, scope: !5337)
