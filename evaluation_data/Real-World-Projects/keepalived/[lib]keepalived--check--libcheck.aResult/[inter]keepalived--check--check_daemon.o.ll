; ModuleID = './[inter]keepalived--check--check_daemon.o.i'
source_filename = "./[inter]keepalived--check--check_daemon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { %struct.rb_node }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
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
%struct._check_data = type { i8, %struct._ssl_data*, %struct._list*, %struct._list* }
%struct._ssl_data = type { i32, i32, %struct.ssl_ctx_st*, %struct.ssl_method_st*, i8*, i8*, i8*, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.7, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
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
%struct.asn1_type_st = type { i32, %union.anon.5 }
%union.anon.5 = type { i8* }
%struct.AUTHORITY_KEYID_st = type opaque
%struct.ISSUING_DIST_POINT_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.6, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.6 = type { i8* }
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
%struct.bn_gencb_st = type { i32, i8*, %union.anon.4 }
%union.anon.4 = type { void (i32, i32, i8*)* }
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
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.anon.7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12, %union.anon.13, %union.anon.14, %union.anon.15, %union.anon.16, %union.anon.17, %union.anon.18, %union.anon.19, %union.anon.20, %union.anon.21 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { i64 }

@log_file_name = external global i8*, align 8
@.str = private unnamed_addr constant [42 x i8] c"Healthcheck child process: fork error(%s)\00", align 1
@checkers_child = external global i32, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Starting Healthcheck child process, pid=%d\00", align 1
@master = external global %struct._thread_master*, align 8
@prog_type = external global i32, align 4
@global_data = external global %struct._data*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Keepalived_healthcheckers\00", align 1
@check_syslog_ident = internal global i8* null, align 8
@debug = external global i64, align 8
@log_facility = external global i32, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@checkers_pidfile = external global i8*, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Healthcheck child process: cannot write pidfile\00", align 1
@reload = external global i8, align 1
@two_phase_terminate = internal global i8 0, align 1
@garp_delay = common global %struct._list* null, align 8
@using_ha_suspend = common global i8 0, align 1
@check_data = external global %struct._check_data*, align 8
@conf_file = external global i8*, align 8
@old_check_data = external global %struct._check_data*, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"lvs_\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"lvs notify fifo script terminated\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Healthcheck child process(%d) died: Respawning\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Healthcheck child process(%d) died: Exiting\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Reloading\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Got SIGHUP, reloading checker configuration\00", align 1
@checkers_queue = external global %struct._list*, align 8
@old_global_data = external global %struct._data*, align 8
@.str.11 = private unnamed_addr constant [66 x i8] c"backstop thread invoked: shutdown timer %srunning, child count %d\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Stopped - used %ld.%6.6ld user time, %ld.%6.6ld system time\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1

; Function Attrs: nounwind uwtable
define void @checker_dispatcher_release() #0 !dbg !244 {
  call void @cancel_signal_read_thread(), !dbg !248
  ret void, !dbg !249
}

declare void @cancel_signal_read_thread() #1

; Function Attrs: nounwind uwtable
define void @check_validate_config() #0 !dbg !250 {
  call void @start_check(%struct._list* null), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: nounwind uwtable
define internal void @start_check(%struct._list*) #0 !dbg !253 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !256, metadata !257), !dbg !258
  call void @init_checkers_queue(), !dbg !259
  %4 = load i8, i8* @reload, align 1, !dbg !260
  %5 = trunc i8 %4 to i1, !dbg !260
  br i1 %5, label %6, label %8, !dbg !262

; <label>:6:                                      ; preds = %1
  %7 = call %struct._data* @alloc_global_data(), !dbg !263
  store %struct._data* %7, %struct._data** @global_data, align 8, !dbg !264
  br label %8, !dbg !265

; <label>:8:                                      ; preds = %6, %1
  %9 = call %struct._check_data* @alloc_check_data(), !dbg !266
  store %struct._check_data* %9, %struct._check_data** @check_data, align 8, !dbg !267
  %10 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !268
  %11 = icmp ne %struct._check_data* %10, null, !dbg !268
  br i1 %11, label %13, label %12, !dbg !270

; <label>:12:                                     ; preds = %8
  call void @stop_check(i32 2), !dbg !271
  br label %143, !dbg !273

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** @conf_file, align 8, !dbg !274
  call void @init_data(i8* %14, %struct._vector* ()* @check_init_keywords), !dbg !275
  %15 = load i8, i8* @reload, align 1, !dbg !276
  %16 = trunc i8 %15 to i1, !dbg !276
  br i1 %16, label %17, label %19, !dbg !278

; <label>:17:                                     ; preds = %13
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !279
  call void @init_global_data(%struct._data* %18), !dbg !280
  br label %19, !dbg !280

; <label>:19:                                     ; preds = %17, %13
  call void @link_vsg_to_vs(), !dbg !281
  %20 = call zeroext i1 @validate_check_config(), !dbg !282
  br i1 %20, label %22, label %21, !dbg !284

; <label>:21:                                     ; preds = %19
  call void @stop_check(i32 3), !dbg !285
  br label %143, !dbg !287

; <label>:22:                                     ; preds = %19
  %23 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !288
  br i1 %23, label %24, label %25, !dbg !290

; <label>:24:                                     ; preds = %22
  br label %143, !dbg !291

; <label>:25:                                     ; preds = %22
  %26 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !292
  %27 = getelementptr inbounds %struct._check_data, %struct._check_data* %26, i32 0, i32 3, !dbg !294
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !294
  %29 = icmp eq %struct._list* %28, null, !dbg !295
  br i1 %29, label %44, label %30, !dbg !296

; <label>:30:                                     ; preds = %25
  %31 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !297
  %32 = getelementptr inbounds %struct._check_data, %struct._check_data* %31, i32 0, i32 3, !dbg !299
  %33 = load %struct._list*, %struct._list** %32, align 8, !dbg !299
  %34 = getelementptr inbounds %struct._list, %struct._list* %33, i32 0, i32 0, !dbg !300
  %35 = load %struct._element*, %struct._element** %34, align 8, !dbg !300
  %36 = icmp eq %struct._element* %35, null, !dbg !301
  br i1 %36, label %37, label %66, !dbg !302

; <label>:37:                                     ; preds = %30
  %38 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !303
  %39 = getelementptr inbounds %struct._check_data, %struct._check_data* %38, i32 0, i32 3, !dbg !305
  %40 = load %struct._list*, %struct._list** %39, align 8, !dbg !305
  %41 = getelementptr inbounds %struct._list, %struct._list* %40, i32 0, i32 1, !dbg !306
  %42 = load %struct._element*, %struct._element** %41, align 8, !dbg !306
  %43 = icmp eq %struct._element* %42, null, !dbg !307
  br i1 %43, label %44, label %66, !dbg !308

; <label>:44:                                     ; preds = %37, %25
  %45 = load i8, i8* @reload, align 1, !dbg !309
  %46 = trunc i8 %45 to i1, !dbg !309
  br i1 %46, label %47, label %70, !dbg !311

; <label>:47:                                     ; preds = %44
  %48 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !312
  %49 = getelementptr inbounds %struct._check_data, %struct._check_data* %48, i32 0, i32 3, !dbg !314
  %50 = load %struct._list*, %struct._list** %49, align 8, !dbg !314
  %51 = icmp eq %struct._list* %50, null, !dbg !315
  br i1 %51, label %70, label %52, !dbg !316

; <label>:52:                                     ; preds = %47
  %53 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !317
  %54 = getelementptr inbounds %struct._check_data, %struct._check_data* %53, i32 0, i32 3, !dbg !319
  %55 = load %struct._list*, %struct._list** %54, align 8, !dbg !319
  %56 = getelementptr inbounds %struct._list, %struct._list* %55, i32 0, i32 0, !dbg !320
  %57 = load %struct._element*, %struct._element** %56, align 8, !dbg !320
  %58 = icmp eq %struct._element* %57, null, !dbg !321
  br i1 %58, label %59, label %66, !dbg !322

; <label>:59:                                     ; preds = %52
  %60 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !323
  %61 = getelementptr inbounds %struct._check_data, %struct._check_data* %60, i32 0, i32 3, !dbg !325
  %62 = load %struct._list*, %struct._list** %61, align 8, !dbg !325
  %63 = getelementptr inbounds %struct._list, %struct._list* %62, i32 0, i32 1, !dbg !326
  %64 = load %struct._element*, %struct._element** %63, align 8, !dbg !326
  %65 = icmp eq %struct._element* %64, null, !dbg !327
  br i1 %65, label %70, label %66, !dbg !328

; <label>:66:                                     ; preds = %59, %52, %37, %30
  %67 = call i32 @ipvs_start(), !dbg !329
  %68 = icmp ne i32 %67, 1, !dbg !330
  br i1 %68, label %69, label %70, !dbg !331

; <label>:69:                                     ; preds = %66
  call void @stop_check(i32 2), !dbg !333
  br label %143, !dbg !335

; <label>:70:                                     ; preds = %66, %59, %47, %44
  %71 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !336
  %72 = getelementptr inbounds %struct._data, %struct._data* %71, i32 0, i32 54, !dbg !337
  %73 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !338
  %74 = getelementptr inbounds %struct._data, %struct._data* %73, i32 0, i32 56, !dbg !339
  call void @notify_fifo_open(%struct._notify_fifo* %72, %struct._notify_fifo* %74, i32 (%struct._thread*)* @lvs_notify_fifo_script_exit, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !340
  %75 = load i8, i8* @using_ha_suspend, align 1, !dbg !341
  %76 = trunc i8 %75 to i1, !dbg !341
  br i1 %76, label %79, label %77, !dbg !343

; <label>:77:                                     ; preds = %70
  %78 = call zeroext i1 @__test_bit(i32 10, i64* @debug), !dbg !344
  br i1 %78, label %79, label %85, !dbg !346

; <label>:79:                                     ; preds = %77, %70
  %80 = load i8, i8* @reload, align 1, !dbg !347
  %81 = trunc i8 %80 to i1, !dbg !347
  br i1 %81, label %82, label %83, !dbg !350

; <label>:82:                                     ; preds = %79
  call void @kernel_netlink_set_recv_bufs(), !dbg !351
  br label %84, !dbg !351

; <label>:83:                                     ; preds = %79
  call void @kernel_netlink_init(), !dbg !352
  br label %84

; <label>:84:                                     ; preds = %83, %82
  br label %90, !dbg !353

; <label>:85:                                     ; preds = %77
  %86 = load i8, i8* @reload, align 1, !dbg !354
  %87 = trunc i8 %86 to i1, !dbg !354
  br i1 %87, label %88, label %89, !dbg !356

; <label>:88:                                     ; preds = %85
  call void @kernel_netlink_close(), !dbg !357
  br label %89, !dbg !357

; <label>:89:                                     ; preds = %88, %85
  br label %90

; <label>:90:                                     ; preds = %89, %84
  %91 = load i8, i8* @reload, align 1, !dbg !358
  %92 = trunc i8 %91 to i1, !dbg !358
  br i1 %92, label %99, label %93, !dbg !360

; <label>:93:                                     ; preds = %90
  %94 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !361
  %95 = getelementptr inbounds %struct._data, %struct._data* %94, i32 0, i32 21, !dbg !363
  %96 = load i8, i8* %95, align 8, !dbg !363
  %97 = trunc i8 %96 to i1, !dbg !363
  br i1 %97, label %98, label %99, !dbg !364

; <label>:98:                                     ; preds = %93
  call void @ipvs_flush_cmd(), !dbg !365
  br label %99, !dbg !365

; <label>:99:                                     ; preds = %98, %93, %90
  %100 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !366
  %101 = getelementptr inbounds %struct._check_data, %struct._check_data* %100, i32 0, i32 0, !dbg !368
  %102 = load i8, i8* %101, align 8, !dbg !368
  %103 = trunc i8 %102 to i1, !dbg !368
  br i1 %103, label %104, label %107, !dbg !369

; <label>:104:                                    ; preds = %99
  %105 = call zeroext i1 @init_ssl_ctx(), !dbg !370
  br i1 %105, label %107, label %106, !dbg !372

; <label>:106:                                    ; preds = %104
  call void @stop_check(i32 2), !dbg !373
  br label %107, !dbg !373

; <label>:107:                                    ; preds = %106, %104, %99
  %108 = load i8, i8* @reload, align 1, !dbg !374
  %109 = trunc i8 %108 to i1, !dbg !374
  br i1 %109, label %110, label %112, !dbg !376

; <label>:110:                                    ; preds = %107
  %111 = load %struct._list*, %struct._list** %2, align 8, !dbg !377
  call void @clear_diff_services(%struct._list* %111), !dbg !378
  br label %112, !dbg !378

; <label>:112:                                    ; preds = %110, %107
  %113 = call { i64, i64 } @set_time_now(), !dbg !379
  %114 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !379
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0, !dbg !379
  %116 = extractvalue { i64, i64 } %113, 0, !dbg !379
  store i64 %116, i64* %115, align 8, !dbg !379
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1, !dbg !379
  %118 = extractvalue { i64, i64 } %113, 1, !dbg !379
  store i64 %118, i64* %117, align 8, !dbg !379
  %119 = call zeroext i1 @init_services(), !dbg !380
  br i1 %119, label %121, label %120, !dbg !382

; <label>:120:                                    ; preds = %112
  call void @stop_check(i32 2), !dbg !383
  br label %121, !dbg !383

; <label>:121:                                    ; preds = %120, %112
  %122 = call zeroext i1 @__test_bit(i32 3, i64* @debug), !dbg !384
  br i1 %122, label %123, label %126, !dbg !386

; <label>:123:                                    ; preds = %121
  %124 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !387
  call void @dump_global_data(%struct._IO_FILE* null, %struct._data* %124), !dbg !389
  %125 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !390
  call void @dump_check_data(%struct._IO_FILE* null, %struct._check_data* %125), !dbg !391
  br label %126, !dbg !392

; <label>:126:                                    ; preds = %123, %121
  call void @register_checkers_thread(), !dbg !393
  %127 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !394
  %128 = getelementptr inbounds %struct._data, %struct._data* %127, i32 0, i32 52, !dbg !395
  %129 = load i32, i32* %128, align 4, !dbg !395
  %130 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !396
  %131 = getelementptr inbounds %struct._data, %struct._data* %130, i32 0, i32 53, !dbg !397
  %132 = load i64, i64* %131, align 8, !dbg !397
  %133 = trunc i64 %132 to i32, !dbg !396
  %134 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !398
  %135 = getelementptr inbounds %struct._data, %struct._data* %134, i32 0, i32 50, !dbg !399
  %136 = load i8, i8* %135, align 1, !dbg !399
  %137 = sext i8 %136 to i32, !dbg !398
  %138 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !400
  %139 = getelementptr inbounds %struct._data, %struct._data* %138, i32 0, i32 51, !dbg !401
  %140 = load i8, i8* %139, align 2, !dbg !401
  %141 = trunc i8 %140 to i1, !dbg !401
  %142 = select i1 %141, i32 4096, i32 0, !dbg !400
  call void @set_process_priorities(i32 %129, i32 %133, i32 %137, i32 %142), !dbg !402
  br label %143, !dbg !403

; <label>:143:                                    ; preds = %126, %69, %24, %21, %12
  ret void, !dbg !404
}

; Function Attrs: nounwind uwtable
define i32 @start_check_child() #0 !dbg !406 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !409, metadata !257), !dbg !410
  call void @llvm.dbg.declare(metadata i8** %3, metadata !411, metadata !257), !dbg !412
  %4 = load i8*, i8** @log_file_name, align 8, !dbg !413
  %5 = icmp ne i8* %4, null, !dbg !413
  br i1 %5, label %6, label %7, !dbg !415

; <label>:6:                                      ; preds = %0
  call void @flush_log_file(), !dbg !416
  br label %7, !dbg !416

; <label>:7:                                      ; preds = %6, %0
  %8 = call i32 @fork() #7, !dbg !417
  store i32 %8, i32* %2, align 4, !dbg !418
  %9 = load i32, i32* %2, align 4, !dbg !419
  %10 = icmp slt i32 %9, 0, !dbg !421
  br i1 %10, label %11, label %15, !dbg !422

; <label>:11:                                     ; preds = %7
  %12 = call i32* @__errno_location() #2, !dbg !423
  %13 = load i32, i32* %12, align 4, !dbg !425
  %14 = call i8* @strerror(i32 %13) #7, !dbg !426
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !428
  store i32 -1, i32* %1, align 4, !dbg !429
  br label %83, !dbg !429

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %2, align 4, !dbg !430
  %17 = icmp ne i32 %16, 0, !dbg !430
  br i1 %17, label %18, label %24, !dbg !432

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4, !dbg !433
  store i32 %19, i32* @checkers_child, align 4, !dbg !435
  %20 = load i32, i32* %2, align 4, !dbg !436
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %20), !dbg !437
  %21 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !438
  %22 = load i32, i32* %2, align 4, !dbg !439
  %23 = call %struct._thread* @thread_add_child(%struct._thread_master* %21, i32 (%struct._thread*)* @check_respawn_thread, i8* null, i32 %22, i64 -1), !dbg !440
  store i32 0, i32* %1, align 4, !dbg !441
  br label %83, !dbg !441

; <label>:24:                                     ; preds = %15
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = call i32 (i32, ...) @prctl(i32 1, i32 15) #7, !dbg !442
  call void @set_child_finder_name(i8* (i32)* null), !dbg !443
  call void @destroy_child_finder(), !dbg !444
  store i32 2, i32* @prog_type, align 4, !dbg !445
  call void @initialise_debug_options(), !dbg !446
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !447
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 2, !dbg !449
  %29 = load i8*, i8** %28, align 8, !dbg !449
  %30 = icmp ne i8* %29, null, !dbg !447
  br i1 %30, label %36, label %31, !dbg !450

; <label>:31:                                     ; preds = %25
  %32 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !451
  %33 = getelementptr inbounds %struct._data, %struct._data* %32, i32 0, i32 0, !dbg !453
  %34 = load i8*, i8** %33, align 8, !dbg !453
  %35 = icmp ne i8* %34, null, !dbg !451
  br i1 %35, label %36, label %41, !dbg !454

; <label>:36:                                     ; preds = %31, %25
  %37 = call i8* @make_syslog_ident(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)), !dbg !455
  store i8* %37, i8** @check_syslog_ident, align 8, !dbg !456
  %38 = icmp ne i8* %37, null, !dbg !456
  br i1 %38, label %39, label %41, !dbg !457

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** @check_syslog_ident, align 8, !dbg !459
  store i8* %40, i8** %3, align 8, !dbg !460
  br label %42, !dbg !461

; <label>:41:                                     ; preds = %36, %31
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8, !dbg !462
  br label %42

; <label>:42:                                     ; preds = %41, %39
  %43 = call zeroext i1 @__test_bit(i32 1, i64* @debug), !dbg !463
  br i1 %43, label %56, label %44, !dbg !465

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %3, align 8, !dbg !466
  %46 = call zeroext i1 @__test_bit(i32 0, i64* @debug), !dbg !467
  %47 = select i1 %46, i32 2, i32 0, !dbg !468
  %48 = or i32 1, %47, !dbg !469
  %49 = load i32, i32* @log_facility, align 4, !dbg !470
  %50 = icmp eq i32 %49, 24, !dbg !471
  br i1 %50, label %51, label %52, !dbg !472

; <label>:51:                                     ; preds = %44
  br label %54, !dbg !473

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* @log_facility, align 4, !dbg !475
  br label %54, !dbg !477

; <label>:54:                                     ; preds = %52, %51
  %55 = phi i32 [ 144, %51 ], [ %53, %52 ], !dbg !478
  call void @openlog(i8* %45, i32 %48, i32 %55), !dbg !480
  br label %56, !dbg !480

; <label>:56:                                     ; preds = %54, %42
  %57 = load i8*, i8** @log_file_name, align 8, !dbg !481
  %58 = icmp ne i8* %57, null, !dbg !481
  br i1 %58, label %59, label %67, !dbg !483

; <label>:59:                                     ; preds = %56
  %60 = load i8*, i8** @log_file_name, align 8, !dbg !484
  %61 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !485
  %62 = getelementptr inbounds %struct._data, %struct._data* %61, i32 0, i32 0, !dbg !486
  %63 = load i8*, i8** %62, align 8, !dbg !486
  %64 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !487
  %65 = getelementptr inbounds %struct._data, %struct._data* %64, i32 0, i32 2, !dbg !488
  %66 = load i8*, i8** %65, align 8, !dbg !488
  call void @open_log_file(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %63, i8* %66), !dbg !489
  br label %67, !dbg !489

; <label>:67:                                     ; preds = %59, %56
  call void @free_parent_mallocs_startup(i1 zeroext true), !dbg !490
  %68 = load i8*, i8** @checkers_pidfile, align 8, !dbg !491
  %69 = call i32 @getpid() #7, !dbg !493
  %70 = call i32 @pidfile_write(i8* %68, i32 %69), !dbg !494
  %71 = icmp ne i32 %70, 0, !dbg !496
  br i1 %71, label %73, label %72, !dbg !497

; <label>:72:                                     ; preds = %67
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0)), !dbg !498
  call void @exit(i32 2) #8, !dbg !500
  unreachable, !dbg !500

; <label>:73:                                     ; preds = %67
  %74 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !501
  call void @thread_destroy_master(%struct._thread_master* %74), !dbg !502
  %75 = call %struct._thread_master* @thread_make_master(), !dbg !503
  store %struct._thread_master* %75, %struct._thread_master** @master, align 8, !dbg !504
  store i8 0, i8* @reload, align 1, !dbg !505
  call void @check_signal_init(), !dbg !506
  call void @start_check(%struct._list* null), !dbg !507
  %76 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !508
  call void @launch_thread_scheduler(%struct._thread_master* %76), !dbg !509
  %77 = load i8, i8* @two_phase_terminate, align 1, !dbg !510
  %78 = trunc i8 %77 to i1, !dbg !510
  br i1 %78, label %79, label %81, !dbg !512

; <label>:79:                                     ; preds = %73
  %80 = call i32 @checker_terminate_phase2(), !dbg !513
  br label %82, !dbg !513

; <label>:81:                                     ; preds = %73
  call void @stop_check(i32 0), !dbg !514
  br label %82

; <label>:82:                                     ; preds = %81, %79
  call void @exit(i32 0) #8, !dbg !515
  unreachable, !dbg !515

; <label>:83:                                     ; preds = %18, %11
  %84 = load i32, i32* %1, align 4, !dbg !516
  ret i32 %84, !dbg !516
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @flush_log_file() #1

; Function Attrs: nounwind
declare i32 @fork() #3

declare void @log_message(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._thread* @thread_add_child(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_respawn_thread(%struct._thread*) #0 !dbg !517 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !520, metadata !257), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %4, metadata !522, metadata !257), !dbg !523
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !524
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 6, !dbg !525
  %7 = bitcast %union.anon* %6 to %struct.anon*, !dbg !526
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0, !dbg !527
  %9 = load i32, i32* %8, align 8, !dbg !527
  store i32 %9, i32* %4, align 4, !dbg !528
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !529
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 1, !dbg !531
  %12 = load i32, i32* %11, align 8, !dbg !531
  %13 = icmp eq i32 %12, 10, !dbg !532
  br i1 %13, label %14, label %18, !dbg !533

; <label>:14:                                     ; preds = %1
  %15 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !534
  %16 = load i32, i32* %4, align 4, !dbg !536
  %17 = call %struct._thread* @thread_add_child(%struct._thread_master* %15, i32 (%struct._thread*)* @check_respawn_thread, i8* null, i32 %16, i64 -1), !dbg !537
  store i32 0, i32* %2, align 4, !dbg !538
  br label %27, !dbg !538

; <label>:18:                                     ; preds = %1
  %19 = call zeroext i1 @__test_bit(i32 9, i64* @debug), !dbg !539
  br i1 %19, label %23, label %20, !dbg !541

; <label>:20:                                     ; preds = %18
  %21 = load i32, i32* %4, align 4, !dbg !542
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %21), !dbg !544
  %22 = call i32 @start_check_child(), !dbg !545
  br label %26, !dbg !546

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %4, align 4, !dbg !547
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), i32 %24), !dbg !549
  store i32 0, i32* @checkers_child, align 4, !dbg !550
  %25 = call i32 @raise(i32 15) #7, !dbg !551
  br label %26

; <label>:26:                                     ; preds = %23, %20
  store i32 0, i32* %2, align 4, !dbg !552
  br label %27, !dbg !552

; <label>:27:                                     ; preds = %26, %14
  %28 = load i32, i32* %2, align 4, !dbg !553
  ret i32 %28, !dbg !553
}

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #3

declare void @set_child_finder_name(i8* (i32)*) #1

declare void @destroy_child_finder() #1

declare void @initialise_debug_options() #1

declare i8* @make_syslog_ident(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #5 !dbg !554 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !559, metadata !257), !dbg !560
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !561, metadata !257), !dbg !562
  %5 = load i32, i32* %3, align 4, !dbg !563
  %6 = zext i32 %5 to i64, !dbg !564
  %7 = udiv i64 %6, 64, !dbg !565
  %8 = load i64*, i64** %4, align 8, !dbg !566
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !566
  %10 = load i64, i64* %9, align 8, !dbg !566
  %11 = load i32, i32* %3, align 4, !dbg !567
  %12 = zext i32 %11 to i64, !dbg !568
  %13 = urem i64 %12, 64, !dbg !569
  %14 = shl i64 1, %13, !dbg !570
  %15 = and i64 %10, %14, !dbg !571
  %16 = icmp ne i64 %15, 0, !dbg !572
  %17 = xor i1 %16, true, !dbg !572
  %18 = xor i1 %17, true, !dbg !573
  ret i1 %18, !dbg !574
}

declare void @openlog(i8*, i32, i32) #1

declare void @open_log_file(i8*, i8*, i8*, i8*) #1

declare void @free_parent_mallocs_startup(i1 zeroext) #1

declare i32 @pidfile_write(i8*, i32) #1

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare void @thread_destroy_master(%struct._thread_master*) #1

declare %struct._thread_master* @thread_make_master() #1

; Function Attrs: nounwind uwtable
define internal void @check_signal_init() #0 !dbg !575 {
  call void @signal_set(i32 1, void (i8*, i32)* @sigreload_check, i8* null), !dbg !576
  call void @signal_set(i32 2, void (i8*, i32)* @sigend_check, i8* null), !dbg !577
  call void @signal_set(i32 15, void (i8*, i32)* @sigend_check, i8* null), !dbg !578
  call void @signal_ignore(i32 13), !dbg !579
  ret void, !dbg !580
}

declare void @launch_thread_scheduler(%struct._thread_master*) #1

; Function Attrs: nounwind uwtable
define internal i32 @checker_terminate_phase2() #0 !dbg !581 {
  %1 = alloca %struct.rusage, align 8
  call void @llvm.dbg.declare(metadata %struct.rusage* %1, metadata !582, metadata !257), !dbg !658
  %2 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !659
  %3 = getelementptr inbounds %struct._data, %struct._data* %2, i32 0, i32 54, !dbg !660
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !661
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 56, !dbg !662
  call void @notify_fifo_close(%struct._notify_fifo* %3, %struct._notify_fifo* %5), !dbg !663
  call void @checker_dispatcher_release(), !dbg !664
  %6 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !665
  call void @thread_destroy_master(%struct._thread_master* %6), !dbg !666
  store %struct._thread_master* null, %struct._thread_master** @master, align 8, !dbg !667
  call void @free_checkers_queue(), !dbg !668
  call void @free_ssl(), !dbg !669
  call void @ipvs_stop(), !dbg !670
  %7 = load i8*, i8** @checkers_pidfile, align 8, !dbg !671
  call void @pidfile_rm(i8* %7), !dbg !672
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !673
  %9 = icmp ne %struct._data* %8, null, !dbg !673
  br i1 %9, label %10, label %12, !dbg !675

; <label>:10:                                     ; preds = %0
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !676
  call void @free_global_data(%struct._data* %11), !dbg !677
  br label %12, !dbg !677

; <label>:12:                                     ; preds = %10, %0
  %13 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !678
  %14 = icmp ne %struct._check_data* %13, null, !dbg !678
  br i1 %14, label %15, label %17, !dbg !680

; <label>:15:                                     ; preds = %12
  %16 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !681
  call void @free_check_data(%struct._check_data* %16), !dbg !682
  br label %17, !dbg !682

; <label>:17:                                     ; preds = %15, %12
  call void @free_parent_mallocs_exit(), !dbg !683
  %18 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !684
  br i1 %18, label %19, label %33, !dbg !686

; <label>:19:                                     ; preds = %17
  %20 = call i32 @getrusage(i32 0, %struct.rusage* %1) #7, !dbg !687
  %21 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0, !dbg !689
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0, !dbg !690
  %23 = load i64, i64* %22, align 8, !dbg !690
  %24 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0, !dbg !691
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1, !dbg !692
  %26 = load i64, i64* %25, align 8, !dbg !692
  %27 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 1, !dbg !693
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0, !dbg !694
  %29 = load i64, i64* %28, align 8, !dbg !694
  %30 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 1, !dbg !695
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1, !dbg !696
  %32 = load i64, i64* %31, align 8, !dbg !696
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0), i64 %23, i64 %26, i64 %29, i64 %32), !dbg !697
  br label %34, !dbg !698

; <label>:33:                                     ; preds = %17
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !699
  br label %34

; <label>:34:                                     ; preds = %33, %19
  %35 = load i8*, i8** @log_file_name, align 8, !dbg !700
  %36 = icmp ne i8* %35, null, !dbg !700
  br i1 %36, label %37, label %38, !dbg !702

; <label>:37:                                     ; preds = %34
  call void @close_log_file(), !dbg !703
  br label %38, !dbg !703

; <label>:38:                                     ; preds = %37, %34
  call void @closelog(), !dbg !704
  %39 = load i8*, i8** @check_syslog_ident, align 8, !dbg !705
  %40 = icmp ne i8* %39, null, !dbg !705
  br i1 %40, label %41, label %43, !dbg !708

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** @check_syslog_ident, align 8, !dbg !709
  call void @free(i8* %42) #7, !dbg !712
  store i8* null, i8** @check_syslog_ident, align 8, !dbg !713
  br label %43, !dbg !714

; <label>:43:                                     ; preds = %41, %38
  call void @close_std_fd(), !dbg !715
  ret i32 0, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @stop_check(i32) #0 !dbg !717 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !720, metadata !257), !dbg !721
  %3 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !722
  br i1 %3, label %4, label %5, !dbg !724

; <label>:4:                                      ; preds = %1
  ret void, !dbg !725

; <label>:5:                                      ; preds = %1
  call void @checker_terminate_phase1(i1 zeroext false), !dbg !726
  %6 = call i32 @checker_terminate_phase2(), !dbg !727
  %7 = load i32, i32* %2, align 4, !dbg !728
  call void @exit(i32 %7) #8, !dbg !729
  unreachable, !dbg !729
}

declare void @init_checkers_queue() #1

declare %struct._data* @alloc_global_data() #1

declare %struct._check_data* @alloc_check_data() #1

declare void @init_data(i8*, %struct._vector* ()*) #1

declare %struct._vector* @check_init_keywords() #1

declare void @init_global_data(%struct._data*) #1

declare void @link_vsg_to_vs() #1

declare zeroext i1 @validate_check_config() #1

declare i32 @ipvs_start() #1

declare void @notify_fifo_open(%struct._notify_fifo*, %struct._notify_fifo*, i32 (%struct._thread*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lvs_notify_fifo_script_exit(%struct._thread*) #0 !dbg !730 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !731, metadata !257), !dbg !732
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)), !dbg !733
  ret i32 0, !dbg !734
}

declare void @kernel_netlink_set_recv_bufs() #1

declare void @kernel_netlink_init() #1

declare void @kernel_netlink_close() #1

declare void @ipvs_flush_cmd() #1

declare zeroext i1 @init_ssl_ctx() #1

declare void @clear_diff_services(%struct._list*) #1

declare { i64, i64 } @set_time_now() #1

declare zeroext i1 @init_services() #1

declare void @dump_global_data(%struct._IO_FILE*, %struct._data*) #1

declare void @dump_check_data(%struct._IO_FILE*, %struct._check_data*) #1

declare void @register_checkers_thread() #1

declare void @set_process_priorities(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @raise(i32) #3

declare void @signal_set(i32, void (i8*, i32)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sigreload_check(i8*, i32) #0 !dbg !735 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !738, metadata !257), !dbg !739
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !740, metadata !257), !dbg !741
  %5 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !742
  %6 = call %struct._thread* @thread_add_event(%struct._thread_master* %5, i32 (%struct._thread*)* @reload_check_thread, i8* null, i32 0), !dbg !743
  ret void, !dbg !744
}

; Function Attrs: nounwind uwtable
define internal void @sigend_check(i8*, i32) #0 !dbg !745 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !746, metadata !257), !dbg !747
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !748, metadata !257), !dbg !749
  %5 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !750
  %6 = icmp ne %struct._thread_master* %5, null, !dbg !750
  br i1 %6, label %7, label %10, !dbg !752

; <label>:7:                                      ; preds = %2
  %8 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !753
  %9 = call %struct._thread* @thread_add_start_terminate_event(%struct._thread_master* %8, i32 (%struct._thread*)* @start_checker_termination_thread), !dbg !754
  br label %10, !dbg !754

; <label>:10:                                     ; preds = %7, %2
  ret void, !dbg !755
}

declare void @signal_ignore(i32) #1

declare %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @reload_check_thread(%struct._thread*) #0 !dbg !756 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._list*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !757, metadata !257), !dbg !758
  call void @llvm.dbg.declare(metadata %struct._list** %3, metadata !759, metadata !257), !dbg !760
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)), !dbg !761
  call void @reset_process_priorities(), !dbg !762
  store i8 1, i8* @reload, align 1, !dbg !763
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0)), !dbg !764
  %4 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !765
  call void @script_killall(%struct._thread_master* %4, i32 15, i1 zeroext false), !dbg !766
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !767
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 54, !dbg !768
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !769
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 56, !dbg !770
  call void @notify_fifo_close(%struct._notify_fifo* %6, %struct._notify_fifo* %8), !dbg !771
  call void @checker_dispatcher_release(), !dbg !772
  %9 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !773
  call void @thread_cleanup_master(%struct._thread_master* %9), !dbg !774
  %10 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !775
  call void @thread_add_base_threads(%struct._thread_master* %10), !dbg !776
  %11 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !777
  store %struct._list* %11, %struct._list** %3, align 8, !dbg !778
  store %struct._list* null, %struct._list** @checkers_queue, align 8, !dbg !779
  call void @free_ssl(), !dbg !780
  call void @ipvs_stop(), !dbg !781
  %12 = load %struct._check_data*, %struct._check_data** @check_data, align 8, !dbg !782
  store %struct._check_data* %12, %struct._check_data** @old_check_data, align 8, !dbg !783
  store %struct._check_data* null, %struct._check_data** @check_data, align 8, !dbg !784
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !785
  store %struct._data* %13, %struct._data** @old_global_data, align 8, !dbg !786
  store %struct._data* null, %struct._data** @global_data, align 8, !dbg !787
  %14 = load %struct._list*, %struct._list** %3, align 8, !dbg !788
  call void @start_check(%struct._list* %14), !dbg !789
  %15 = load %struct._check_data*, %struct._check_data** @old_check_data, align 8, !dbg !790
  call void @free_check_data(%struct._check_data* %15), !dbg !791
  %16 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !792
  call void @free_global_data(%struct._data* %16), !dbg !793
  call void @free_list(%struct._list** %3), !dbg !794
  store i8 0, i8* @reload, align 1, !dbg !795
  ret i32 0, !dbg !796
}

declare void @reset_process_priorities() #1

declare void @script_killall(%struct._thread_master*, i32, i1 zeroext) #1

declare void @notify_fifo_close(%struct._notify_fifo*, %struct._notify_fifo*) #1

declare void @thread_cleanup_master(%struct._thread_master*) #1

declare void @thread_add_base_threads(%struct._thread_master*) #1

declare void @free_ssl() #1

declare void @ipvs_stop() #1

declare void @free_check_data(%struct._check_data*) #1

declare void @free_global_data(%struct._data*) #1

declare void @free_list(%struct._list**) #1

declare %struct._thread* @thread_add_start_terminate_event(%struct._thread_master*, i32 (%struct._thread*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @start_checker_termination_thread(%struct._thread*) #0 !dbg !797 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !798, metadata !257), !dbg !799
  store i8 1, i8* @two_phase_terminate, align 1, !dbg !800
  call void @checker_terminate_phase1(i1 zeroext true), !dbg !801
  ret i32 0, !dbg !802
}

; Function Attrs: nounwind uwtable
define internal void @checker_terminate_phase1(i1 zeroext) #0 !dbg !803 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !806, metadata !257), !dbg !807
  %4 = load i8, i8* @using_ha_suspend, align 1, !dbg !808
  %5 = trunc i8 %4 to i1, !dbg !808
  br i1 %5, label %8, label %6, !dbg !810

; <label>:6:                                      ; preds = %1
  %7 = call zeroext i1 @__test_bit(i32 10, i64* @debug), !dbg !811
  br i1 %7, label %8, label %9, !dbg !813

; <label>:8:                                      ; preds = %6, %1
  call void @kernel_netlink_close(), !dbg !814
  br label %9, !dbg !814

; <label>:9:                                      ; preds = %8, %6
  %10 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !815
  %11 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %10, i32 0, i32 3, !dbg !817
  %12 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %11, i32 0, i32 0, !dbg !818
  %13 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !818
  %14 = icmp ne %struct.rb_node* %13, null, !dbg !815
  br i1 %14, label %15, label %17, !dbg !819

; <label>:15:                                     ; preds = %9
  %16 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !820
  call void @script_killall(%struct._thread_master* %16, i32 15, i1 zeroext true), !dbg !821
  br label %17, !dbg !821

; <label>:17:                                     ; preds = %15, %9
  %18 = call zeroext i1 @__test_bit(i32 6, i64* @debug), !dbg !822
  br i1 %18, label %20, label %19, !dbg !824

; <label>:19:                                     ; preds = %17
  call void @clear_services(), !dbg !825
  br label %20, !dbg !825

; <label>:20:                                     ; preds = %19, %17
  %21 = load i8, i8* %2, align 1, !dbg !826
  %22 = trunc i8 %21 to i1, !dbg !826
  br i1 %22, label %23, label %36, !dbg !828

; <label>:23:                                     ; preds = %20
  %24 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !829
  %25 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %24, i32 0, i32 3, !dbg !832
  %26 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %25, i32 0, i32 0, !dbg !833
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8, !dbg !833
  %28 = icmp ne %struct.rb_node* %27, null, !dbg !829
  br i1 %28, label %29, label %32, !dbg !834

; <label>:29:                                     ; preds = %23
  %30 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !835
  %31 = call %struct._thread* @thread_add_timer_shutdown(%struct._thread_master* %30, i32 (%struct._thread*)* @checker_shutdown_backstop_thread, i8* null, i64 1000000), !dbg !837
  br label %35, !dbg !838

; <label>:32:                                     ; preds = %23
  %33 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !839
  %34 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %33), !dbg !840
  br label %35

; <label>:35:                                     ; preds = %32, %29
  br label %36, !dbg !841

; <label>:36:                                     ; preds = %35, %20
  ret void, !dbg !842
}

declare void @clear_services() #1

declare %struct._thread* @thread_add_timer_shutdown(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @checker_shutdown_backstop_thread(%struct._thread*) #0 !dbg !843 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !844, metadata !257), !dbg !845
  call void @llvm.dbg.declare(metadata i32* %3, metadata !846, metadata !257), !dbg !847
  store i32 0, i32* %3, align 4, !dbg !847
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !848, metadata !257), !dbg !849
  %9 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !850
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 2, !dbg !852
  %11 = load %struct._thread_master*, %struct._thread_master** %10, align 8, !dbg !852
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 3, !dbg !853
  %13 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %12, i32 0, i32 0, !dbg !854
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8, !dbg !854
  %15 = icmp ne %struct.rb_node* %14, null, !dbg !850
  br i1 %15, label %16, label %20, !dbg !855

; <label>:16:                                     ; preds = %1
  %17 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !856
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 2, !dbg !857
  %19 = load %struct._thread_master*, %struct._thread_master** %18, align 8, !dbg !857
  call void @script_killall(%struct._thread_master* %19, i32 9, i1 zeroext true), !dbg !858
  br label %20, !dbg !858

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !859
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 2, !dbg !861
  %23 = load %struct._thread_master*, %struct._thread_master** %22, align 8, !dbg !861
  %24 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %23, i32 0, i32 3, !dbg !862
  %25 = call %struct.rb_node* @rb_first(%struct.rb_root* %24), !dbg !863
  %26 = icmp ne %struct.rb_node* %25, null, !dbg !863
  br i1 %26, label %27, label %38, !dbg !864

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !865, metadata !257), !dbg !869
  %28 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !870
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 2, !dbg !872
  %30 = load %struct._thread_master*, %struct._thread_master** %29, align 8, !dbg !872
  %31 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %30, i32 0, i32 3, !dbg !873
  %32 = call %struct.rb_node* @rb_first(%struct.rb_root* %31), !dbg !874
  store %struct.rb_node* %32, %struct.rb_node** %5, align 8, !dbg !875
  %33 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !876
  %34 = bitcast %struct.rb_node* %33 to i8*, !dbg !877
  %35 = getelementptr inbounds i8, i8* %34, i64 -72, !dbg !878
  %36 = bitcast i8* %35 to %struct._thread*, !dbg !879
  store %struct._thread* %36, %struct._thread** %6, align 8, !dbg !880
  %37 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !881
  br label %39, !dbg !882

; <label>:38:                                     ; preds = %20
  br label %39, !dbg !883

; <label>:39:                                     ; preds = %38, %27
  %40 = phi %struct._thread* [ %37, %27 ], [ null, %38 ], !dbg !885
  store %struct._thread* %40, %struct._thread** %4, align 8, !dbg !887
  br label %41, !dbg !888

; <label>:41:                                     ; preds = %64, %39
  %42 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !889
  %43 = icmp ne %struct._thread* %42, null, !dbg !892
  br i1 %43, label %44, label %66, !dbg !892

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %3, align 4, !dbg !893
  %46 = add nsw i32 %45, 1, !dbg !893
  store i32 %46, i32* %3, align 4, !dbg !893
  br label %47, !dbg !894

; <label>:47:                                     ; preds = %44
  %48 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !895
  %49 = getelementptr inbounds %struct._thread, %struct._thread* %48, i32 0, i32 8, !dbg !897
  %50 = bitcast %union.anon.0* %49 to %struct.rb_node*, !dbg !897
  %51 = call %struct.rb_node* @rb_next(%struct.rb_node* %50), !dbg !898
  %52 = icmp ne %struct.rb_node* %51, null, !dbg !898
  br i1 %52, label %53, label %63, !dbg !899

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !900, metadata !257), !dbg !902
  %54 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !903
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 8, !dbg !905
  %56 = bitcast %union.anon.0* %55 to %struct.rb_node*, !dbg !905
  %57 = call %struct.rb_node* @rb_next(%struct.rb_node* %56), !dbg !906
  store %struct.rb_node* %57, %struct.rb_node** %7, align 8, !dbg !907
  %58 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !908
  %59 = bitcast %struct.rb_node* %58 to i8*, !dbg !909
  %60 = getelementptr inbounds i8, i8* %59, i64 -72, !dbg !910
  %61 = bitcast i8* %60 to %struct._thread*, !dbg !911
  store %struct._thread* %61, %struct._thread** %8, align 8, !dbg !912
  %62 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !913
  br label %64, !dbg !914

; <label>:63:                                     ; preds = %47
  br label %64, !dbg !915

; <label>:64:                                     ; preds = %63, %53
  %65 = phi %struct._thread* [ %62, %53 ], [ null, %63 ], !dbg !917
  store %struct._thread* %65, %struct._thread** %4, align 8, !dbg !919
  br label %41, !dbg !920, !llvm.loop !921

; <label>:66:                                     ; preds = %41
  %67 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !923
  %68 = getelementptr inbounds %struct._thread, %struct._thread* %67, i32 0, i32 2, !dbg !924
  %69 = load %struct._thread_master*, %struct._thread_master** %68, align 8, !dbg !924
  %70 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %69, i32 0, i32 18, !dbg !925
  %71 = load i8, i8* %70, align 8, !dbg !925
  %72 = trunc i8 %71 to i1, !dbg !925
  %73 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), !dbg !923
  %74 = load i32, i32* %3, align 4, !dbg !926
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0), i8* %73, i32 %74), !dbg !927
  %75 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !928
  %76 = getelementptr inbounds %struct._thread, %struct._thread* %75, i32 0, i32 2, !dbg !930
  %77 = load %struct._thread_master*, %struct._thread_master** %76, align 8, !dbg !930
  %78 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %77, i32 0, i32 18, !dbg !931
  %79 = load i8, i8* %78, align 8, !dbg !931
  %80 = trunc i8 %79 to i1, !dbg !931
  br i1 %80, label %81, label %86, !dbg !932

; <label>:81:                                     ; preds = %66
  %82 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !933
  %83 = getelementptr inbounds %struct._thread, %struct._thread* %82, i32 0, i32 2, !dbg !934
  %84 = load %struct._thread_master*, %struct._thread_master** %83, align 8, !dbg !934
  %85 = call %struct._thread* @thread_add_timer_shutdown(%struct._thread_master* %84, i32 (%struct._thread*)* @checker_shutdown_backstop_thread, i8* null, i64 100000), !dbg !935
  br label %91, !dbg !935

; <label>:86:                                     ; preds = %66
  %87 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !936
  %88 = getelementptr inbounds %struct._thread, %struct._thread* %87, i32 0, i32 2, !dbg !937
  %89 = load %struct._thread_master*, %struct._thread_master** %88, align 8, !dbg !937
  %90 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %89), !dbg !938
  br label %91

; <label>:91:                                     ; preds = %86, %81
  ret i32 0, !dbg !939
}

declare %struct._thread* @thread_add_terminate_event(%struct._thread_master*) #1

declare %struct.rb_node* @rb_first(%struct.rb_root*) #1

declare %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare void @free_checkers_queue() #1

declare void @pidfile_rm(i8*) #1

declare void @free_parent_mallocs_exit() #1

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #3

declare void @close_log_file() #1

declare void @closelog() #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @close_std_fd() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!241, !242}
!llvm.ident = !{!243}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50, globals: !234)
!1 = !DIFile(filename: "[inter]keepalived--check--check_daemon.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !9, !24, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 152, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!7 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!8 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !10, line: 53, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!13 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!14 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!15 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!16 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!17 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!18 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!19 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!20 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!21 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!22 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!23 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!26 = !DIEnumerator(name: "THREAD_READ", value: 0)
!27 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!28 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!29 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!30 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!31 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!32 = !DIEnumerator(name: "THREAD_READY", value: 6)
!33 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!34 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!35 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!36 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!37 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!38 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!39 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!40 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!41 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!42 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!43 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rusage_who", file: !45, line: 158, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "RUSAGE_SELF", value: 0)
!48 = !DIEnumerator(name: "RUSAGE_CHILDREN", value: -1)
!49 = !DIEnumerator(name: "RUSAGE_THREAD", value: 1)
!50 = !{!51, !52, !122}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !55)
!55 = !{!56, !58, !60, !198, !203, !204, !214, !227, !229}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !54, file: !4, line: 79, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !4, line: 80, baseType: !59, size: 32, align: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !24)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !54, file: !4, line: 81, baseType: !61, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !63)
!63 = !{!64, !76, !77, !78, !79, !87, !88, !89, !174, !175, !178, !189, !190, !191, !192, !193, !194, !195, !196}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !62, file: !4, line: 113, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !66, line: 109, baseType: !67)
!66 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !66, line: 106, size: 64, align: 64, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !67, file: !66, line: 108, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !66, line: 97, size: 192, align: 64, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !71, file: !66, line: 99, baseType: !57, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !71, file: !66, line: 102, baseType: !70, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !71, file: !66, line: 103, baseType: !70, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !62, file: !4, line: 114, baseType: !65, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !62, file: !4, line: 115, baseType: !65, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !62, file: !4, line: 116, baseType: !65, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !4, line: 117, baseType: !80, size: 128, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !81, line: 62, baseType: !82)
!81 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 60, size: 128, align: 64, elements: !83)
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !81, line: 61, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !81, line: 61, baseType: !85, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !62, file: !4, line: 121, baseType: !80, size: 128, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !62, file: !4, line: 122, baseType: !80, size: 128, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !62, file: !4, line: 124, baseType: !90, size: 64, align: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !91, line: 31, baseType: !92)
!91 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !91, line: 39, size: 320, align: 64, elements: !94)
!94 = !{!95, !102, !103, !105, !109}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !93, file: !91, line: 40, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !91, line: 33, size: 192, align: 64, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !91, line: 34, baseType: !96, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !91, line: 35, baseType: !96, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !97, file: !91, line: 36, baseType: !51, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !91, line: 41, baseType: !96, size: 64, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !93, file: !91, line: 42, baseType: !104, size: 32, align: 32, offset: 128)
!104 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !93, file: !91, line: 43, baseType: !106, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !51}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !93, file: !91, line: 44, baseType: !110, size: 64, align: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113, !51}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 48, baseType: !116)
!115 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 241, size: 1728, align: 64, elements: !118)
!117 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!118 = !{!119, !121, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !142, !143, !144, !145, !149, !151, !153, !157, !160, !162, !163, !164, !165, !166, !169, !170}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !116, file: !117, line: 242, baseType: !120, size: 32, align: 32)
!120 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !116, file: !117, line: 247, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !116, file: !117, line: 248, baseType: !122, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !116, file: !117, line: 249, baseType: !122, size: 64, align: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !116, file: !117, line: 250, baseType: !122, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !116, file: !117, line: 251, baseType: !122, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !116, file: !117, line: 252, baseType: !122, size: 64, align: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !116, file: !117, line: 253, baseType: !122, size: 64, align: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !116, file: !117, line: 254, baseType: !122, size: 64, align: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !116, file: !117, line: 256, baseType: !122, size: 64, align: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !116, file: !117, line: 257, baseType: !122, size: 64, align: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !116, file: !117, line: 258, baseType: !122, size: 64, align: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !116, file: !117, line: 260, baseType: !135, size: 64, align: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !117, line: 156, size: 192, align: 64, elements: !137)
!137 = !{!138, !139, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !117, line: 157, baseType: !135, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !136, file: !117, line: 158, baseType: !140, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !136, file: !117, line: 162, baseType: !120, size: 32, align: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !116, file: !117, line: 262, baseType: !140, size: 64, align: 64, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !116, file: !117, line: 264, baseType: !120, size: 32, align: 32, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !116, file: !117, line: 268, baseType: !120, size: 32, align: 32, offset: 928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !116, file: !117, line: 270, baseType: !146, size: 64, align: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !147, line: 131, baseType: !148)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!148 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !116, file: !117, line: 274, baseType: !150, size: 16, align: 16, offset: 1024)
!150 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !116, file: !117, line: 275, baseType: !152, size: 8, align: 8, offset: 1040)
!152 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !116, file: !117, line: 276, baseType: !154, size: 8, align: 8, offset: 1048)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8, align: 8, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 1)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !116, file: !117, line: 280, baseType: !158, size: 64, align: 64, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !117, line: 150, baseType: null)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !116, file: !117, line: 289, baseType: !161, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !147, line: 132, baseType: !148)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !116, file: !117, line: 297, baseType: !51, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !116, file: !117, line: 298, baseType: !51, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !116, file: !117, line: 299, baseType: !51, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !116, file: !117, line: 300, baseType: !51, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !116, file: !117, line: 302, baseType: !167, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 216, baseType: !57)
!168 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !116, file: !117, line: 303, baseType: !120, size: 32, align: 32, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !116, file: !117, line: 305, baseType: !171, size: 160, align: 8, offset: 1568)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 160, align: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 20)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !62, file: !4, line: 127, baseType: !65, size: 64, align: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !62, file: !4, line: 128, baseType: !176, size: 64, align: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !62, file: !4, line: 129, baseType: !179, size: 64, align: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !181, file: !4, line: 103, baseType: !52, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !181, file: !4, line: 104, baseType: !52, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !4, line: 105, baseType: !57, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !181, file: !4, line: 106, baseType: !120, size: 32, align: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !181, file: !4, line: 108, baseType: !188, size: 192, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !66, line: 104, baseType: !71)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !62, file: !4, line: 130, baseType: !104, size: 32, align: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !62, file: !4, line: 131, baseType: !104, size: 32, align: 32, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !62, file: !4, line: 132, baseType: !120, size: 32, align: 32, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !62, file: !4, line: 135, baseType: !120, size: 32, align: 32, offset: 992)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !62, file: !4, line: 136, baseType: !52, size: 64, align: 64, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 146, baseType: !57, size: 64, align: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !62, file: !4, line: 147, baseType: !57, size: 64, align: 64, offset: 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !62, file: !4, line: 148, baseType: !197, size: 8, align: 8, offset: 1216)
!197 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !54, file: !4, line: 82, baseType: !199, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!120, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !54, file: !4, line: 83, baseType: !51, size: 64, align: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !54, file: !4, line: 84, baseType: !205, size: 128, align: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !206, line: 31, baseType: !207)
!206 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !208, line: 30, size: 128, align: 64, elements: !209)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!209 = !{!210, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !207, file: !208, line: 32, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !147, line: 139, baseType: !148)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !207, file: !208, line: 33, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !147, line: 141, baseType: !148)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !54, file: !4, line: 92, baseType: !215, size: 64, align: 32, offset: 448)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !4, line: 85, size: 64, align: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !4, line: 86, baseType: !120, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !215, file: !4, line: 87, baseType: !120, size: 32, align: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !215, file: !4, line: 91, baseType: !220, size: 64, align: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !4, line: 88, size: 64, align: 32, elements: !221)
!221 = !{!222, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !220, file: !4, line: 89, baseType: !223, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !224, line: 37, baseType: !225)
!224 = !DIFile(filename: "/usr/include/sched.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !147, line: 133, baseType: !120)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !220, file: !4, line: 90, baseType: !120, size: 32, align: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !4, line: 93, baseType: !228, size: 64, align: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !54, file: !4, line: 95, baseType: !230, size: 192, align: 64, offset: 576)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !4, line: 95, size: 192, align: 64, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !230, file: !4, line: 96, baseType: !188, size: 192, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !4, line: 97, baseType: !80, size: 128, align: 64)
!234 = !{!235, !237, !239, !240}
!235 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !236, line: 150, type: !90, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!236 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!237 = distinct !DIGlobalVariable(name: "using_ha_suspend", scope: !0, file: !238, line: 71, type: !197, isLocal: false, isDefinition: true, variable: i8* @using_ha_suspend)
!238 = !DIFile(filename: "check_daemon.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!239 = distinct !DIGlobalVariable(name: "check_syslog_ident", scope: !0, file: !238, line: 74, type: !122, isLocal: true, isDefinition: true, variable: i8** @check_syslog_ident)
!240 = distinct !DIGlobalVariable(name: "two_phase_terminate", scope: !0, file: !238, line: 75, type: !197, isLocal: true, isDefinition: true, variable: i8* @two_phase_terminate)
!241 = !{i32 2, !"Dwarf Version", i32 4}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!244 = distinct !DISubprogram(name: "checker_dispatcher_release", scope: !238, file: !238, line: 86, type: !245, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !{}
!248 = !DILocation(line: 91, column: 2, scope: !244)
!249 = !DILocation(line: 92, column: 1, scope: !244)
!250 = distinct !DISubprogram(name: "check_validate_config", scope: !238, file: !238, line: 338, type: !245, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!251 = !DILocation(line: 340, column: 2, scope: !250)
!252 = !DILocation(line: 341, column: 1, scope: !250)
!253 = distinct !DISubprogram(name: "start_check", scope: !238, file: !238, line: 234, type: !254, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !90}
!256 = !DILocalVariable(name: "old_checkers_queue", arg: 1, scope: !253, file: !238, line: 234, type: !90)
!257 = !DIExpression()
!258 = !DILocation(line: 234, column: 18, scope: !253)
!259 = !DILocation(line: 236, column: 2, scope: !253)
!260 = !DILocation(line: 239, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !238, line: 239, column: 6)
!262 = !DILocation(line: 239, column: 6, scope: !253)
!263 = !DILocation(line: 240, column: 17, scope: !261)
!264 = !DILocation(line: 240, column: 15, scope: !261)
!265 = !DILocation(line: 240, column: 3, scope: !261)
!266 = !DILocation(line: 241, column: 15, scope: !253)
!267 = !DILocation(line: 241, column: 13, scope: !253)
!268 = !DILocation(line: 242, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !253, file: !238, line: 242, column: 6)
!270 = !DILocation(line: 242, column: 6, scope: !253)
!271 = !DILocation(line: 243, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !238, line: 242, column: 19)
!273 = !DILocation(line: 244, column: 3, scope: !272)
!274 = !DILocation(line: 247, column: 12, scope: !253)
!275 = !DILocation(line: 247, column: 2, scope: !253)
!276 = !DILocation(line: 249, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !253, file: !238, line: 249, column: 6)
!278 = !DILocation(line: 249, column: 6, scope: !253)
!279 = !DILocation(line: 250, column: 20, scope: !277)
!280 = !DILocation(line: 250, column: 3, scope: !277)
!281 = !DILocation(line: 257, column: 2, scope: !253)
!282 = !DILocation(line: 260, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !253, file: !238, line: 260, column: 6)
!284 = !DILocation(line: 260, column: 6, scope: !253)
!285 = !DILocation(line: 261, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !238, line: 260, column: 32)
!287 = !DILocation(line: 262, column: 3, scope: !286)
!288 = !DILocation(line: 270, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !253, file: !238, line: 270, column: 6)
!290 = !DILocation(line: 270, column: 6, scope: !253)
!291 = !DILocation(line: 271, column: 3, scope: !289)
!292 = !DILocation(line: 274, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !253, file: !238, line: 274, column: 6)
!294 = !DILocation(line: 274, column: 22, scope: !293)
!295 = !DILocation(line: 274, column: 26, scope: !293)
!296 = !DILocation(line: 274, column: 7, scope: !293)
!297 = !DILocation(line: 274, column: 12, scope: !298)
!298 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 1)
!299 = !DILocation(line: 274, column: 24, scope: !298)
!300 = !DILocation(line: 274, column: 29, scope: !298)
!301 = !DILocation(line: 274, column: 34, scope: !298)
!302 = !DILocation(line: 274, column: 7, scope: !298)
!303 = !DILocation(line: 274, column: 11, scope: !304)
!304 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 2)
!305 = !DILocation(line: 274, column: 23, scope: !304)
!306 = !DILocation(line: 274, column: 28, scope: !304)
!307 = !DILocation(line: 274, column: 33, scope: !304)
!308 = !DILocation(line: 274, column: 10, scope: !304)
!309 = !DILocation(line: 274, column: 14, scope: !310)
!310 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 3)
!311 = !DILocation(line: 274, column: 21, scope: !310)
!312 = !DILocation(line: 274, column: 27, scope: !313)
!313 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 4)
!314 = !DILocation(line: 274, column: 43, scope: !313)
!315 = !DILocation(line: 274, column: 47, scope: !313)
!316 = !DILocation(line: 274, column: 51, scope: !313)
!317 = !DILocation(line: 274, column: 56, scope: !318)
!318 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 5)
!319 = !DILocation(line: 274, column: 72, scope: !318)
!320 = !DILocation(line: 274, column: 77, scope: !318)
!321 = !DILocation(line: 274, column: 82, scope: !318)
!322 = !DILocation(line: 274, column: 51, scope: !318)
!323 = !DILocation(line: 274, column: 55, scope: !324)
!324 = !DILexicalBlockFile(scope: !293, file: !238, discriminator: 6)
!325 = !DILocation(line: 274, column: 71, scope: !324)
!326 = !DILocation(line: 274, column: 76, scope: !324)
!327 = !DILocation(line: 274, column: 81, scope: !324)
!328 = !DILocation(line: 274, column: 56, scope: !324)
!329 = !DILocation(line: 275, column: 6, scope: !293)
!330 = !DILocation(line: 275, column: 19, scope: !293)
!331 = !DILocation(line: 274, column: 6, scope: !332)
!332 = !DILexicalBlockFile(scope: !253, file: !238, discriminator: 7)
!333 = !DILocation(line: 276, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !293, file: !238, line: 275, column: 25)
!335 = !DILocation(line: 277, column: 3, scope: !334)
!336 = !DILocation(line: 281, column: 20, scope: !253)
!337 = !DILocation(line: 281, column: 33, scope: !253)
!338 = !DILocation(line: 281, column: 47, scope: !253)
!339 = !DILocation(line: 281, column: 60, scope: !253)
!340 = !DILocation(line: 281, column: 2, scope: !253)
!341 = !DILocation(line: 284, column: 6, scope: !342)
!342 = distinct !DILexicalBlock(scope: !253, file: !238, line: 284, column: 6)
!343 = !DILocation(line: 284, column: 23, scope: !342)
!344 = !DILocation(line: 284, column: 26, scope: !345)
!345 = !DILexicalBlockFile(scope: !342, file: !238, discriminator: 1)
!346 = !DILocation(line: 284, column: 6, scope: !345)
!347 = !DILocation(line: 285, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !238, line: 285, column: 7)
!349 = distinct !DILexicalBlock(scope: !342, file: !238, line: 284, column: 67)
!350 = !DILocation(line: 285, column: 7, scope: !349)
!351 = !DILocation(line: 286, column: 4, scope: !348)
!352 = !DILocation(line: 288, column: 4, scope: !348)
!353 = !DILocation(line: 289, column: 2, scope: !349)
!354 = !DILocation(line: 290, column: 11, scope: !355)
!355 = distinct !DILexicalBlock(scope: !342, file: !238, line: 290, column: 11)
!356 = !DILocation(line: 290, column: 11, scope: !342)
!357 = !DILocation(line: 291, column: 3, scope: !355)
!358 = !DILocation(line: 294, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !253, file: !238, line: 294, column: 6)
!360 = !DILocation(line: 294, column: 14, scope: !359)
!361 = !DILocation(line: 294, column: 17, scope: !362)
!362 = !DILexicalBlockFile(scope: !359, file: !238, discriminator: 1)
!363 = !DILocation(line: 294, column: 30, scope: !362)
!364 = !DILocation(line: 294, column: 6, scope: !362)
!365 = !DILocation(line: 295, column: 3, scope: !359)
!366 = !DILocation(line: 303, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !253, file: !238, line: 303, column: 6)
!368 = !DILocation(line: 303, column: 18, scope: !367)
!369 = !DILocation(line: 303, column: 31, scope: !367)
!370 = !DILocation(line: 303, column: 35, scope: !371)
!371 = !DILexicalBlockFile(scope: !367, file: !238, discriminator: 1)
!372 = !DILocation(line: 303, column: 6, scope: !371)
!373 = !DILocation(line: 304, column: 3, scope: !367)
!374 = !DILocation(line: 307, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !253, file: !238, line: 307, column: 6)
!376 = !DILocation(line: 307, column: 6, scope: !253)
!377 = !DILocation(line: 308, column: 23, scope: !375)
!378 = !DILocation(line: 308, column: 3, scope: !375)
!379 = !DILocation(line: 311, column: 2, scope: !253)
!380 = !DILocation(line: 314, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !253, file: !238, line: 314, column: 6)
!382 = !DILocation(line: 314, column: 6, scope: !253)
!383 = !DILocation(line: 315, column: 3, scope: !381)
!384 = !DILocation(line: 318, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !253, file: !238, line: 318, column: 6)
!386 = !DILocation(line: 318, column: 6, scope: !253)
!387 = !DILocation(line: 319, column: 25, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !238, line: 318, column: 41)
!389 = !DILocation(line: 319, column: 3, scope: !388)
!390 = !DILocation(line: 320, column: 24, scope: !388)
!391 = !DILocation(line: 320, column: 3, scope: !388)
!392 = !DILocation(line: 321, column: 2, scope: !388)
!393 = !DILocation(line: 324, column: 2, scope: !253)
!394 = !DILocation(line: 329, column: 11, scope: !253)
!395 = !DILocation(line: 329, column: 24, scope: !253)
!396 = !DILocation(line: 331, column: 11, scope: !253)
!397 = !DILocation(line: 331, column: 24, scope: !253)
!398 = !DILocation(line: 334, column: 11, scope: !253)
!399 = !DILocation(line: 334, column: 24, scope: !253)
!400 = !DILocation(line: 334, column: 50, scope: !253)
!401 = !DILocation(line: 334, column: 63, scope: !253)
!402 = !DILocation(line: 327, column: 2, scope: !253)
!403 = !DILocation(line: 335, column: 1, scope: !253)
!404 = !DILocation(line: 335, column: 1, scope: !405)
!405 = !DILexicalBlockFile(scope: !253, file: !238, discriminator: 1)
!406 = distinct !DISubprogram(name: "start_check_child", scope: !238, file: !238, line: 485, type: !407, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!407 = !DISubroutineType(types: !408)
!408 = !{!120}
!409 = !DILocalVariable(name: "pid", scope: !406, file: !238, line: 488, type: !223)
!410 = !DILocation(line: 488, column: 8, scope: !406)
!411 = !DILocalVariable(name: "syslog_ident", scope: !406, file: !238, line: 489, type: !122)
!412 = !DILocation(line: 489, column: 8, scope: !406)
!413 = !DILocation(line: 492, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !406, file: !238, line: 492, column: 6)
!415 = !DILocation(line: 492, column: 6, scope: !406)
!416 = !DILocation(line: 493, column: 3, scope: !414)
!417 = !DILocation(line: 495, column: 8, scope: !406)
!418 = !DILocation(line: 495, column: 6, scope: !406)
!419 = !DILocation(line: 497, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !406, file: !238, line: 497, column: 6)
!421 = !DILocation(line: 497, column: 10, scope: !420)
!422 = !DILocation(line: 497, column: 6, scope: !406)
!423 = !DILocation(line: 499, column: 23, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !238, line: 497, column: 15)
!425 = !DILocation(line: 499, column: 22, scope: !424)
!426 = !DILocation(line: 499, column: 13, scope: !427)
!427 = !DILexicalBlockFile(scope: !424, file: !238, discriminator: 1)
!428 = !DILocation(line: 498, column: 3, scope: !424)
!429 = !DILocation(line: 500, column: 3, scope: !424)
!430 = !DILocation(line: 501, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !420, file: !238, line: 501, column: 13)
!432 = !DILocation(line: 501, column: 13, scope: !420)
!433 = !DILocation(line: 502, column: 20, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !238, line: 501, column: 18)
!435 = !DILocation(line: 502, column: 18, scope: !434)
!436 = !DILocation(line: 504, column: 13, scope: !434)
!437 = !DILocation(line: 503, column: 3, scope: !434)
!438 = !DILocation(line: 507, column: 20, scope: !434)
!439 = !DILocation(line: 508, column: 6, scope: !434)
!440 = !DILocation(line: 507, column: 3, scope: !434)
!441 = !DILocation(line: 510, column: 3, scope: !434)
!442 = !DILocation(line: 512, column: 2, scope: !406)
!443 = !DILocation(line: 515, column: 2, scope: !406)
!444 = !DILocation(line: 516, column: 2, scope: !406)
!445 = !DILocation(line: 518, column: 12, scope: !406)
!446 = !DILocation(line: 520, column: 2, scope: !406)
!447 = !DILocation(line: 532, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !406, file: !238, line: 532, column: 6)
!449 = !DILocation(line: 532, column: 20, scope: !448)
!450 = !DILocation(line: 534, column: 7, scope: !448)
!451 = !DILocation(line: 534, column: 10, scope: !452)
!452 = !DILexicalBlockFile(scope: !448, file: !238, discriminator: 1)
!453 = !DILocation(line: 534, column: 23, scope: !452)
!454 = !DILocation(line: 536, column: 15, scope: !448)
!455 = !DILocation(line: 537, column: 29, scope: !448)
!456 = !DILocation(line: 537, column: 27, scope: !448)
!457 = !DILocation(line: 532, column: 6, scope: !458)
!458 = !DILexicalBlockFile(scope: !406, file: !238, discriminator: 1)
!459 = !DILocation(line: 538, column: 18, scope: !448)
!460 = !DILocation(line: 538, column: 16, scope: !448)
!461 = !DILocation(line: 538, column: 3, scope: !448)
!462 = !DILocation(line: 540, column: 16, scope: !448)
!463 = !DILocation(line: 543, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !406, file: !238, line: 543, column: 6)
!465 = !DILocation(line: 543, column: 6, scope: !406)
!466 = !DILocation(line: 544, column: 11, scope: !464)
!467 = !DILocation(line: 544, column: 36, scope: !464)
!468 = !DILocation(line: 544, column: 35, scope: !464)
!469 = !DILocation(line: 544, column: 32, scope: !464)
!470 = !DILocation(line: 545, column: 12, scope: !464)
!471 = !DILocation(line: 545, column: 24, scope: !464)
!472 = !DILocation(line: 545, column: 11, scope: !464)
!473 = !DILocation(line: 545, column: 11, scope: !474)
!474 = !DILexicalBlockFile(scope: !464, file: !238, discriminator: 1)
!475 = !DILocation(line: 545, column: 52, scope: !476)
!476 = !DILexicalBlockFile(scope: !464, file: !238, discriminator: 2)
!477 = !DILocation(line: 545, column: 11, scope: !476)
!478 = !DILocation(line: 545, column: 11, scope: !479)
!479 = !DILexicalBlockFile(scope: !464, file: !238, discriminator: 3)
!480 = !DILocation(line: 544, column: 3, scope: !474)
!481 = !DILocation(line: 547, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !406, file: !238, line: 547, column: 6)
!483 = !DILocation(line: 547, column: 6, scope: !406)
!484 = !DILocation(line: 548, column: 17, scope: !482)
!485 = !DILocation(line: 551, column: 5, scope: !482)
!486 = !DILocation(line: 551, column: 18, scope: !482)
!487 = !DILocation(line: 555, column: 5, scope: !482)
!488 = !DILocation(line: 555, column: 18, scope: !482)
!489 = !DILocation(line: 548, column: 3, scope: !482)
!490 = !DILocation(line: 561, column: 2, scope: !406)
!491 = !DILocation(line: 564, column: 21, scope: !492)
!492 = distinct !DILexicalBlock(scope: !406, file: !238, line: 564, column: 6)
!493 = !DILocation(line: 564, column: 39, scope: !492)
!494 = !DILocation(line: 564, column: 7, scope: !495)
!495 = !DILexicalBlockFile(scope: !492, file: !238, discriminator: 1)
!496 = !DILocation(line: 564, column: 7, scope: !492)
!497 = !DILocation(line: 564, column: 6, scope: !406)
!498 = !DILocation(line: 565, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !238, line: 564, column: 50)
!500 = !DILocation(line: 566, column: 3, scope: !499)
!501 = !DILocation(line: 570, column: 24, scope: !406)
!502 = !DILocation(line: 570, column: 2, scope: !406)
!503 = !DILocation(line: 571, column: 11, scope: !406)
!504 = !DILocation(line: 571, column: 9, scope: !406)
!505 = !DILocation(line: 577, column: 10, scope: !406)
!506 = !DILocation(line: 581, column: 2, scope: !406)
!507 = !DILocation(line: 585, column: 2, scope: !406)
!508 = !DILocation(line: 596, column: 26, scope: !406)
!509 = !DILocation(line: 596, column: 2, scope: !406)
!510 = !DILocation(line: 599, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !406, file: !238, line: 599, column: 6)
!512 = !DILocation(line: 599, column: 6, scope: !406)
!513 = !DILocation(line: 600, column: 3, scope: !511)
!514 = !DILocation(line: 602, column: 3, scope: !511)
!515 = !DILocation(line: 609, column: 2, scope: !406)
!516 = !DILocation(line: 610, column: 1, scope: !406)
!517 = distinct !DISubprogram(name: "check_respawn_thread", scope: !238, file: !238, line: 422, type: !518, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!518 = !DISubroutineType(types: !519)
!519 = !{!120, !52}
!520 = !DILocalVariable(name: "thread", arg: 1, scope: !517, file: !238, line: 422, type: !52)
!521 = !DILocation(line: 422, column: 33, scope: !517)
!522 = !DILocalVariable(name: "pid", scope: !517, file: !238, line: 424, type: !223)
!523 = !DILocation(line: 424, column: 8, scope: !517)
!524 = !DILocation(line: 427, column: 10, scope: !517)
!525 = !DILocation(line: 427, column: 19, scope: !517)
!526 = !DILocation(line: 427, column: 21, scope: !517)
!527 = !DILocation(line: 427, column: 23, scope: !517)
!528 = !DILocation(line: 427, column: 6, scope: !517)
!529 = !DILocation(line: 430, column: 6, scope: !530)
!530 = distinct !DILexicalBlock(scope: !517, file: !238, line: 430, column: 6)
!531 = !DILocation(line: 430, column: 14, scope: !530)
!532 = !DILocation(line: 430, column: 19, scope: !530)
!533 = !DILocation(line: 430, column: 6, scope: !517)
!534 = !DILocation(line: 431, column: 20, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !238, line: 430, column: 44)
!536 = !DILocation(line: 432, column: 6, scope: !535)
!537 = !DILocation(line: 431, column: 3, scope: !535)
!538 = !DILocation(line: 433, column: 3, scope: !535)
!539 = !DILocation(line: 437, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !517, file: !238, line: 437, column: 6)
!541 = !DILocation(line: 437, column: 6, scope: !517)
!542 = !DILocation(line: 438, column: 75, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !238, line: 437, column: 45)
!544 = !DILocation(line: 438, column: 3, scope: !543)
!545 = !DILocation(line: 439, column: 3, scope: !543)
!546 = !DILocation(line: 440, column: 2, scope: !543)
!547 = !DILocation(line: 441, column: 72, scope: !548)
!548 = distinct !DILexicalBlock(scope: !540, file: !238, line: 440, column: 9)
!549 = !DILocation(line: 441, column: 3, scope: !548)
!550 = !DILocation(line: 442, column: 18, scope: !548)
!551 = !DILocation(line: 443, column: 3, scope: !548)
!552 = !DILocation(line: 445, column: 2, scope: !517)
!553 = !DILocation(line: 446, column: 1, scope: !517)
!554 = distinct !DISubprogram(name: "__test_bit", scope: !10, file: !10, line: 47, type: !555, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!555 = !DISubroutineType(types: !556)
!556 = !{!197, !104, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!559 = !DILocalVariable(name: "idx", arg: 1, scope: !554, file: !10, line: 47, type: !104)
!560 = !DILocation(line: 47, column: 39, scope: !554)
!561 = !DILocalVariable(name: "bmap", arg: 2, scope: !554, file: !10, line: 47, type: !557)
!562 = !DILocation(line: 47, column: 65, scope: !554)
!563 = !DILocation(line: 49, column: 19, scope: !554)
!564 = !DILocation(line: 49, column: 18, scope: !554)
!565 = !DILocation(line: 49, column: 24, scope: !554)
!566 = !DILocation(line: 49, column: 12, scope: !554)
!567 = !DILocation(line: 49, column: 68, scope: !554)
!568 = !DILocation(line: 49, column: 67, scope: !554)
!569 = !DILocation(line: 49, column: 73, scope: !554)
!570 = !DILocation(line: 49, column: 63, scope: !554)
!571 = !DILocation(line: 49, column: 56, scope: !554)
!572 = !DILocation(line: 49, column: 10, scope: !554)
!573 = !DILocation(line: 49, column: 9, scope: !554)
!574 = !DILocation(line: 49, column: 2, scope: !554)
!575 = distinct !DISubprogram(name: "check_signal_init", scope: !238, file: !238, line: 412, type: !245, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!576 = !DILocation(line: 414, column: 2, scope: !575)
!577 = !DILocation(line: 415, column: 2, scope: !575)
!578 = !DILocation(line: 416, column: 2, scope: !575)
!579 = !DILocation(line: 417, column: 2, scope: !575)
!580 = !DILocation(line: 418, column: 1, scope: !575)
!581 = distinct !DISubprogram(name: "checker_terminate_phase2", scope: !238, file: !238, line: 97, type: !407, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!582 = !DILocalVariable(name: "usage", scope: !581, file: !238, line: 99, type: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !45, line: 187, size: 1152, align: 64, elements: !584)
!584 = !{!585, !586, !587, !593, !598, !603, !608, !613, !618, !623, !628, !633, !638, !643, !648, !653}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !583, file: !45, line: 190, baseType: !207, size: 128, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !583, file: !45, line: 192, baseType: !207, size: 128, align: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 194, baseType: !588, size: 64, align: 64, offset: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 194, size: 64, align: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !588, file: !45, line: 196, baseType: !148, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_maxrss_word", scope: !588, file: !45, line: 197, baseType: !592, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !147, line: 175, baseType: !148)
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 202, baseType: !594, size: 64, align: 64, offset: 320)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 202, size: 64, align: 64, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !594, file: !45, line: 204, baseType: !148, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_ixrss_word", scope: !594, file: !45, line: 205, baseType: !592, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 208, baseType: !599, size: 64, align: 64, offset: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 208, size: 64, align: 64, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !599, file: !45, line: 210, baseType: !148, size: 64, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_idrss_word", scope: !599, file: !45, line: 211, baseType: !592, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 214, baseType: !604, size: 64, align: 64, offset: 448)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 214, size: 64, align: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !604, file: !45, line: 216, baseType: !148, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_isrss_word", scope: !604, file: !45, line: 217, baseType: !592, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 221, baseType: !609, size: 64, align: 64, offset: 512)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 221, size: 64, align: 64, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !609, file: !45, line: 223, baseType: !148, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_minflt_word", scope: !609, file: !45, line: 224, baseType: !592, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 227, baseType: !614, size: 64, align: 64, offset: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 227, size: 64, align: 64, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !614, file: !45, line: 229, baseType: !148, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_majflt_word", scope: !614, file: !45, line: 230, baseType: !592, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 233, baseType: !619, size: 64, align: 64, offset: 640)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 233, size: 64, align: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !619, file: !45, line: 235, baseType: !148, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nswap_word", scope: !619, file: !45, line: 236, baseType: !592, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 240, baseType: !624, size: 64, align: 64, offset: 704)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 240, size: 64, align: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !624, file: !45, line: 242, baseType: !148, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_inblock_word", scope: !624, file: !45, line: 243, baseType: !592, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 246, baseType: !629, size: 64, align: 64, offset: 768)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 246, size: 64, align: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !629, file: !45, line: 248, baseType: !148, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_oublock_word", scope: !629, file: !45, line: 249, baseType: !592, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 252, baseType: !634, size: 64, align: 64, offset: 832)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 252, size: 64, align: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !634, file: !45, line: 254, baseType: !148, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgsnd_word", scope: !634, file: !45, line: 255, baseType: !592, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 258, baseType: !639, size: 64, align: 64, offset: 896)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 258, size: 64, align: 64, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !639, file: !45, line: 260, baseType: !148, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgrcv_word", scope: !639, file: !45, line: 261, baseType: !592, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 264, baseType: !644, size: 64, align: 64, offset: 960)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 264, size: 64, align: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !644, file: !45, line: 266, baseType: !148, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nsignals_word", scope: !644, file: !45, line: 267, baseType: !592, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 272, baseType: !649, size: 64, align: 64, offset: 1024)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 272, size: 64, align: 64, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !649, file: !45, line: 274, baseType: !148, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nvcsw_word", scope: !649, file: !45, line: 275, baseType: !592, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !45, line: 279, baseType: !654, size: 64, align: 64, offset: 1088)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !45, line: 279, size: 64, align: 64, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !654, file: !45, line: 281, baseType: !148, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nivcsw_word", scope: !654, file: !45, line: 282, baseType: !592, size: 64, align: 64)
!658 = !DILocation(line: 99, column: 16, scope: !581)
!659 = !DILocation(line: 102, column: 21, scope: !581)
!660 = !DILocation(line: 102, column: 34, scope: !581)
!661 = !DILocation(line: 102, column: 48, scope: !581)
!662 = !DILocation(line: 102, column: 61, scope: !581)
!663 = !DILocation(line: 102, column: 2, scope: !581)
!664 = !DILocation(line: 105, column: 2, scope: !581)
!665 = !DILocation(line: 106, column: 24, scope: !581)
!666 = !DILocation(line: 106, column: 2, scope: !581)
!667 = !DILocation(line: 107, column: 9, scope: !581)
!668 = !DILocation(line: 108, column: 2, scope: !581)
!669 = !DILocation(line: 109, column: 2, scope: !581)
!670 = !DILocation(line: 111, column: 2, scope: !581)
!671 = !DILocation(line: 118, column: 13, scope: !581)
!672 = !DILocation(line: 118, column: 2, scope: !581)
!673 = !DILocation(line: 121, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !581, file: !238, line: 121, column: 6)
!675 = !DILocation(line: 121, column: 6, scope: !581)
!676 = !DILocation(line: 122, column: 20, scope: !674)
!677 = !DILocation(line: 122, column: 3, scope: !674)
!678 = !DILocation(line: 123, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !581, file: !238, line: 123, column: 6)
!680 = !DILocation(line: 123, column: 6, scope: !581)
!681 = !DILocation(line: 124, column: 19, scope: !679)
!682 = !DILocation(line: 124, column: 3, scope: !679)
!683 = !DILocation(line: 125, column: 2, scope: !581)
!684 = !DILocation(line: 131, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !581, file: !238, line: 131, column: 6)
!686 = !DILocation(line: 131, column: 6, scope: !581)
!687 = !DILocation(line: 132, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !238, line: 131, column: 42)
!689 = !DILocation(line: 133, column: 93, scope: !688)
!690 = !DILocation(line: 133, column: 102, scope: !688)
!691 = !DILocation(line: 133, column: 116, scope: !688)
!692 = !DILocation(line: 133, column: 125, scope: !688)
!693 = !DILocation(line: 133, column: 140, scope: !688)
!694 = !DILocation(line: 133, column: 149, scope: !688)
!695 = !DILocation(line: 133, column: 163, scope: !688)
!696 = !DILocation(line: 133, column: 172, scope: !688)
!697 = !DILocation(line: 133, column: 3, scope: !688)
!698 = !DILocation(line: 134, column: 2, scope: !688)
!699 = !DILocation(line: 136, column: 3, scope: !685)
!700 = !DILocation(line: 138, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !581, file: !238, line: 138, column: 6)
!702 = !DILocation(line: 138, column: 6, scope: !581)
!703 = !DILocation(line: 139, column: 3, scope: !701)
!704 = !DILocation(line: 140, column: 2, scope: !581)
!705 = !DILocation(line: 143, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !238, line: 143, column: 8)
!707 = distinct !DILexicalBlock(scope: !581, file: !238, line: 143, column: 2)
!708 = !DILocation(line: 143, column: 8, scope: !707)
!709 = !DILocation(line: 143, column: 36, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !238, discriminator: 1)
!711 = distinct !DILexicalBlock(scope: !706, file: !238, line: 143, column: 28)
!712 = !DILocation(line: 143, column: 31, scope: !710)
!713 = !DILocation(line: 143, column: 78, scope: !710)
!714 = !DILocation(line: 143, column: 3, scope: !710)
!715 = !DILocation(line: 148, column: 2, scope: !581)
!716 = !DILocation(line: 150, column: 2, scope: !581)
!717 = distinct !DISubprogram(name: "stop_check", scope: !238, file: !238, line: 218, type: !718, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !120}
!720 = !DILocalVariable(name: "status", arg: 1, scope: !717, file: !238, line: 218, type: !120)
!721 = !DILocation(line: 218, column: 16, scope: !717)
!722 = !DILocation(line: 220, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !238, line: 220, column: 6)
!724 = !DILocation(line: 220, column: 6, scope: !717)
!725 = !DILocation(line: 221, column: 3, scope: !723)
!726 = !DILocation(line: 224, column: 2, scope: !717)
!727 = !DILocation(line: 226, column: 2, scope: !717)
!728 = !DILocation(line: 229, column: 7, scope: !717)
!729 = !DILocation(line: 229, column: 2, scope: !717)
!730 = distinct !DISubprogram(name: "lvs_notify_fifo_script_exit", scope: !238, file: !238, line: 78, type: !518, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!731 = !DILocalVariable(name: "thread", arg: 1, scope: !730, file: !238, line: 78, type: !52)
!732 = !DILocation(line: 78, column: 63, scope: !730)
!733 = !DILocation(line: 80, column: 2, scope: !730)
!734 = !DILocation(line: 82, column: 2, scope: !730)
!735 = distinct !DISubprogram(name: "sigreload_check", scope: !238, file: !238, line: 397, type: !736, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !51, !120}
!738 = !DILocalVariable(name: "v", arg: 1, scope: !735, file: !238, line: 397, type: !51)
!739 = !DILocation(line: 397, column: 47, scope: !735)
!740 = !DILocalVariable(name: "sig", arg: 2, scope: !735, file: !238, line: 397, type: !120)
!741 = !DILocation(line: 397, column: 78, scope: !735)
!742 = !DILocation(line: 399, column: 19, scope: !735)
!743 = !DILocation(line: 399, column: 2, scope: !735)
!744 = !DILocation(line: 400, column: 1, scope: !735)
!745 = distinct !DISubprogram(name: "sigend_check", scope: !238, file: !238, line: 404, type: !736, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!746 = !DILocalVariable(name: "v", arg: 1, scope: !745, file: !238, line: 404, type: !51)
!747 = !DILocation(line: 404, column: 44, scope: !745)
!748 = !DILocalVariable(name: "sig", arg: 2, scope: !745, file: !238, line: 404, type: !120)
!749 = !DILocation(line: 404, column: 75, scope: !745)
!750 = !DILocation(line: 406, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !745, file: !238, line: 406, column: 6)
!752 = !DILocation(line: 406, column: 6, scope: !745)
!753 = !DILocation(line: 407, column: 36, scope: !751)
!754 = !DILocation(line: 407, column: 3, scope: !751)
!755 = !DILocation(line: 408, column: 1, scope: !745)
!756 = distinct !DISubprogram(name: "reload_check_thread", scope: !238, file: !238, line: 346, type: !518, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!757 = !DILocalVariable(name: "thread", arg: 1, scope: !756, file: !238, line: 346, type: !52)
!758 = !DILocation(line: 346, column: 56, scope: !756)
!759 = !DILocalVariable(name: "old_checkers_queue", scope: !756, file: !238, line: 348, type: !90)
!760 = !DILocation(line: 348, column: 7, scope: !756)
!761 = !DILocation(line: 350, column: 2, scope: !756)
!762 = !DILocation(line: 353, column: 2, scope: !756)
!763 = !DILocation(line: 356, column: 10, scope: !756)
!764 = !DILocation(line: 358, column: 2, scope: !756)
!765 = !DILocation(line: 361, column: 17, scope: !756)
!766 = !DILocation(line: 361, column: 2, scope: !756)
!767 = !DILocation(line: 364, column: 21, scope: !756)
!768 = !DILocation(line: 364, column: 34, scope: !756)
!769 = !DILocation(line: 364, column: 48, scope: !756)
!770 = !DILocation(line: 364, column: 61, scope: !756)
!771 = !DILocation(line: 364, column: 2, scope: !756)
!772 = !DILocation(line: 367, column: 2, scope: !756)
!773 = !DILocation(line: 368, column: 24, scope: !756)
!774 = !DILocation(line: 368, column: 2, scope: !756)
!775 = !DILocation(line: 369, column: 26, scope: !756)
!776 = !DILocation(line: 369, column: 2, scope: !756)
!777 = !DILocation(line: 372, column: 23, scope: !756)
!778 = !DILocation(line: 372, column: 21, scope: !756)
!779 = !DILocation(line: 373, column: 17, scope: !756)
!780 = !DILocation(line: 375, column: 2, scope: !756)
!781 = !DILocation(line: 376, column: 2, scope: !756)
!782 = !DILocation(line: 379, column: 19, scope: !756)
!783 = !DILocation(line: 379, column: 17, scope: !756)
!784 = !DILocation(line: 380, column: 13, scope: !756)
!785 = !DILocation(line: 381, column: 20, scope: !756)
!786 = !DILocation(line: 381, column: 18, scope: !756)
!787 = !DILocation(line: 382, column: 14, scope: !756)
!788 = !DILocation(line: 385, column: 14, scope: !756)
!789 = !DILocation(line: 385, column: 2, scope: !756)
!790 = !DILocation(line: 388, column: 18, scope: !756)
!791 = !DILocation(line: 388, column: 2, scope: !756)
!792 = !DILocation(line: 389, column: 19, scope: !756)
!793 = !DILocation(line: 389, column: 2, scope: !756)
!794 = !DILocation(line: 390, column: 2, scope: !756)
!795 = !DILocation(line: 391, column: 10, scope: !756)
!796 = !DILocation(line: 393, column: 2, scope: !756)
!797 = distinct !DISubprogram(name: "start_checker_termination_thread", scope: !238, file: !238, line: 205, type: !518, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!798 = !DILocalVariable(name: "thread", arg: 1, scope: !797, file: !238, line: 205, type: !52)
!799 = !DILocation(line: 205, column: 69, scope: !797)
!800 = !DILocation(line: 208, column: 22, scope: !797)
!801 = !DILocation(line: 210, column: 2, scope: !797)
!802 = !DILocation(line: 212, column: 2, scope: !797)
!803 = distinct !DISubprogram(name: "checker_terminate_phase1", scope: !238, file: !238, line: 178, type: !804, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !197}
!806 = !DILocalVariable(name: "schedule_next_thread", arg: 1, scope: !803, file: !238, line: 178, type: !197)
!807 = !DILocation(line: 178, column: 30, scope: !803)
!808 = !DILocation(line: 180, column: 6, scope: !809)
!809 = distinct !DILexicalBlock(scope: !803, file: !238, line: 180, column: 6)
!810 = !DILocation(line: 180, column: 23, scope: !809)
!811 = !DILocation(line: 180, column: 26, scope: !812)
!812 = !DILexicalBlockFile(scope: !809, file: !238, discriminator: 1)
!813 = !DILocation(line: 180, column: 6, scope: !812)
!814 = !DILocation(line: 181, column: 3, scope: !809)
!815 = !DILocation(line: 184, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !803, file: !238, line: 184, column: 6)
!817 = !DILocation(line: 184, column: 14, scope: !816)
!818 = !DILocation(line: 184, column: 20, scope: !816)
!819 = !DILocation(line: 184, column: 6, scope: !803)
!820 = !DILocation(line: 185, column: 18, scope: !816)
!821 = !DILocation(line: 185, column: 3, scope: !816)
!822 = !DILocation(line: 188, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !803, file: !238, line: 188, column: 6)
!824 = !DILocation(line: 188, column: 6, scope: !803)
!825 = !DILocation(line: 189, column: 3, scope: !823)
!826 = !DILocation(line: 191, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !803, file: !238, line: 191, column: 6)
!828 = !DILocation(line: 191, column: 6, scope: !803)
!829 = !DILocation(line: 194, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !238, line: 194, column: 7)
!831 = distinct !DILexicalBlock(scope: !827, file: !238, line: 191, column: 28)
!832 = !DILocation(line: 194, column: 15, scope: !830)
!833 = !DILocation(line: 194, column: 21, scope: !830)
!834 = !DILocation(line: 194, column: 7, scope: !831)
!835 = !DILocation(line: 196, column: 30, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !238, line: 194, column: 30)
!837 = !DILocation(line: 196, column: 4, scope: !836)
!838 = !DILocation(line: 197, column: 3, scope: !836)
!839 = !DILocation(line: 199, column: 31, scope: !830)
!840 = !DILocation(line: 199, column: 4, scope: !830)
!841 = !DILocation(line: 200, column: 2, scope: !831)
!842 = !DILocation(line: 201, column: 1, scope: !803)
!843 = distinct !DISubprogram(name: "checker_shutdown_backstop_thread", scope: !238, file: !238, line: 154, type: !518, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !247)
!844 = !DILocalVariable(name: "thread", arg: 1, scope: !843, file: !238, line: 154, type: !52)
!845 = !DILocation(line: 154, column: 44, scope: !843)
!846 = !DILocalVariable(name: "count", scope: !843, file: !238, line: 156, type: !120)
!847 = !DILocation(line: 156, column: 6, scope: !843)
!848 = !DILocalVariable(name: "t", scope: !843, file: !238, line: 157, type: !52)
!849 = !DILocation(line: 157, column: 12, scope: !843)
!850 = !DILocation(line: 160, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !843, file: !238, line: 160, column: 6)
!852 = !DILocation(line: 160, column: 14, scope: !851)
!853 = !DILocation(line: 160, column: 22, scope: !851)
!854 = !DILocation(line: 160, column: 28, scope: !851)
!855 = !DILocation(line: 160, column: 6, scope: !843)
!856 = !DILocation(line: 161, column: 18, scope: !851)
!857 = !DILocation(line: 161, column: 26, scope: !851)
!858 = !DILocation(line: 161, column: 3, scope: !851)
!859 = !DILocation(line: 163, column: 22, scope: !860)
!860 = distinct !DILexicalBlock(scope: !843, file: !238, line: 163, column: 2)
!861 = !DILocation(line: 163, column: 30, scope: !860)
!862 = !DILocation(line: 163, column: 38, scope: !860)
!863 = !DILocation(line: 163, column: 12, scope: !860)
!864 = !DILocation(line: 163, column: 11, scope: !860)
!865 = !DILocalVariable(name: "__mptr", scope: !866, file: !238, line: 163, type: !867)
!866 = distinct !DILexicalBlock(scope: !860, file: !238, line: 163, column: 49)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!869 = !DILocation(line: 163, column: 89, scope: !866)
!870 = !DILocation(line: 163, column: 109, scope: !871)
!871 = !DILexicalBlockFile(scope: !866, file: !238, discriminator: 1)
!872 = !DILocation(line: 163, column: 117, scope: !871)
!873 = !DILocation(line: 163, column: 125, scope: !871)
!874 = !DILocation(line: 163, column: 99, scope: !871)
!875 = !DILocation(line: 163, column: 89, scope: !871)
!876 = !DILocation(line: 163, column: 158, scope: !871)
!877 = !DILocation(line: 163, column: 150, scope: !871)
!878 = !DILocation(line: 163, column: 165, scope: !871)
!879 = !DILocation(line: 163, column: 134, scope: !871)
!880 = !DILocation(line: 163, column: 51, scope: !871)
!881 = !DILocation(line: 163, column: 3, scope: !871)
!882 = !DILocation(line: 163, column: 11, scope: !871)
!883 = !DILocation(line: 163, column: 11, scope: !884)
!884 = !DILexicalBlockFile(scope: !860, file: !238, discriminator: 2)
!885 = !DILocation(line: 163, column: 11, scope: !886)
!886 = !DILexicalBlockFile(scope: !860, file: !238, discriminator: 3)
!887 = !DILocation(line: 163, column: 9, scope: !886)
!888 = !DILocation(line: 163, column: 7, scope: !886)
!889 = !DILocation(line: 163, column: 3, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !238, discriminator: 4)
!891 = distinct !DILexicalBlock(scope: !860, file: !238, line: 163, column: 2)
!892 = !DILocation(line: 163, column: 2, scope: !890)
!893 = !DILocation(line: 164, column: 8, scope: !891)
!894 = !DILocation(line: 164, column: 3, scope: !891)
!895 = !DILocation(line: 163, column: 20, scope: !896)
!896 = !DILexicalBlockFile(scope: !891, file: !238, discriminator: 5)
!897 = !DILocation(line: 163, column: 23, scope: !896)
!898 = !DILocation(line: 163, column: 11, scope: !896)
!899 = !DILocation(line: 163, column: 10, scope: !896)
!900 = !DILocalVariable(name: "__mptr", scope: !901, file: !238, line: 163, type: !867)
!901 = distinct !DILexicalBlock(scope: !891, file: !238, line: 163, column: 30)
!902 = !DILocation(line: 163, column: 70, scope: !901)
!903 = !DILocation(line: 163, column: 89, scope: !904)
!904 = !DILexicalBlockFile(scope: !901, file: !238, discriminator: 6)
!905 = !DILocation(line: 163, column: 92, scope: !904)
!906 = !DILocation(line: 163, column: 80, scope: !904)
!907 = !DILocation(line: 163, column: 70, scope: !904)
!908 = !DILocation(line: 163, column: 121, scope: !904)
!909 = !DILocation(line: 163, column: 113, scope: !904)
!910 = !DILocation(line: 163, column: 128, scope: !904)
!911 = !DILocation(line: 163, column: 97, scope: !904)
!912 = !DILocation(line: 163, column: 32, scope: !904)
!913 = !DILocation(line: 163, column: 3, scope: !904)
!914 = !DILocation(line: 163, column: 10, scope: !904)
!915 = !DILocation(line: 163, column: 10, scope: !916)
!916 = !DILexicalBlockFile(scope: !891, file: !238, discriminator: 7)
!917 = !DILocation(line: 163, column: 10, scope: !918)
!918 = !DILexicalBlockFile(scope: !891, file: !238, discriminator: 8)
!919 = !DILocation(line: 163, column: 8, scope: !918)
!920 = !DILocation(line: 163, column: 2, scope: !918)
!921 = distinct !{!921, !922}
!922 = !DILocation(line: 163, column: 2, scope: !843)
!923 = !DILocation(line: 167, column: 4, scope: !843)
!924 = !DILocation(line: 167, column: 12, scope: !843)
!925 = !DILocation(line: 167, column: 20, scope: !843)
!926 = !DILocation(line: 167, column: 58, scope: !843)
!927 = !DILocation(line: 166, column: 2, scope: !843)
!928 = !DILocation(line: 169, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !843, file: !238, line: 169, column: 6)
!930 = !DILocation(line: 169, column: 14, scope: !929)
!931 = !DILocation(line: 169, column: 22, scope: !929)
!932 = !DILocation(line: 169, column: 6, scope: !843)
!933 = !DILocation(line: 170, column: 29, scope: !929)
!934 = !DILocation(line: 170, column: 37, scope: !929)
!935 = !DILocation(line: 170, column: 3, scope: !929)
!936 = !DILocation(line: 172, column: 30, scope: !929)
!937 = !DILocation(line: 172, column: 38, scope: !929)
!938 = !DILocation(line: 172, column: 3, scope: !929)
!939 = !DILocation(line: 174, column: 2, scope: !843)
