; ModuleID = './[inter]rdp.o.i'
source_filename = "./[inter]rdp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._RDPCOMP = type { i32, [65536 x i8], %struct.stream }
%struct._COLOURENTRY = type { i8, i8, i8 }
%struct._COLOURMAP = type { i16, %struct._COLOURENTRY* }
%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@g_exit_mainloop = global i32 0, align 4
@rdp_in_unistr.icv_utf16_to_local = internal global i8* null, align 8
@g_codepage = external global [16 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"rdp_in_unistr(), iconv_open[%s -> %s] fail %p\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"rdp_in_unistr(), server sent an unexpectedly long string, truncating\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"rdp_in_unistr(), iconv fail, errno %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@__func__.rdp_send_input = private unnamed_addr constant [15 x i8] c"rdp_send_input\00", align 1
@rdp_send_suppress_output_pdu.current_status = internal global i32 1, align 4
@__func__.rdp_send_suppress_output_pdu = private unnamed_addr constant [29 x i8] c"rdp_send_suppress_output_pdu\00", align 1
@g_session_width = common global i16 0, align 2
@g_session_height = common global i16 0, align 2
@__func__.process_colour_pointer_pdu = private unnamed_addr constant [27 x i8] c"process_colour_pointer_pdu\00", align 1
@__func__.process_new_pointer_pdu = private unnamed_addr constant [24 x i8] c"process_new_pointer_pdu\00", align 1
@__func__.process_cached_pointer_pdu = private unnamed_addr constant [27 x i8] c"process_cached_pointer_pdu\00", align 1
@__func__.process_system_pointer_pdu = private unnamed_addr constant [27 x i8] c"process_system_pointer_pdu\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"set_system_pointer(), unhandled pointer type 0x%x\00", align 1
@__func__.process_bitmap_updates = private unnamed_addr constant [23 x i8] c"process_bitmap_updates\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"process_bitmap_updates(), [%d,%d,%d,%d], [%d,%d], bpp=%d, compression=%d\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"process_bitmap_updates(), failed to decompress bitmap\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"process_palette(), colour count %d\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"process_pdu_logon(), Received TS_LOGIN_PLAIN_NOTIFY\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"process_pdu_logon(), Received TS_LOGIN_INFO_EXTENDED\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"process_pdu_logon(), Unhandled login infotype %d\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"rdp_loop(), RDP_PDU_DEACTIVATE packet received\00", align 1
@g_wait_for_deactivate_ts = external global i64, align 8
@g_password = external global [64 x i8], align 16
@.str.13 = private unnamed_addr constant [43 x i8] c"rdp_loop(), unhandled PDU type %d received\00", align 1
@g_next_packet = common global i8* null, align 8
@g_username = external global i8*, align 8
@g_rdp_shareid = common global i32 0, align 4
@g_network_error = external global i32, align 4
@g_redirect = external global i32, align 4
@__func__.rdp_reset_state = private unnamed_addr constant [16 x i8] c"rdp_reset_state\00", align 1
@g_first_bitmap_caps = internal global i32 1, align 4
@__func__.rdp_disconnect = private unnamed_addr constant [15 x i8] c"rdp_disconnect\00", align 1
@g_encryption = external global i32, align 4
@g_mcs_userid = external global i16, align 2
@.str.14 = private unnamed_addr constant [76 x i8] c"process_colour_pointer_common(), new pointer %d with width %d and height %d\00", align 1
@g_local_cursor = external global i32, align 4
@__func__.process_ts_logon_info_extended = private unnamed_addr constant [31 x i8] c"process_ts_logon_info_extended\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"process_ts_logon_info_extended(), invalid length in Auto-Reconnect packet\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"process_ts_logon_info_extended(), unsupported version of Auto-Reconnect packet\00", align 1
@g_reconnect_logonid = external global i32, align 4
@g_reconnect_random = external global [16 x i8], align 16
@g_has_reconnect_random = external global i32, align 4
@g_reconnect_random_ts = external global i64, align 8
@.str.17 = private unnamed_addr constant [70 x i8] c"process_ts_logon_info_extended(), saving Auto-Reconnect cookie, id=%u\00", align 1
@g_pending_resize_defer_timer = external global %struct.timeval, align 8
@rdp_recv.rdp_s = internal global %struct.stream* null, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"rdp_recv(), RDP packet #%d, type 0x%x\00", align 1
@g_packetno = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"process_demand_active(), shareid=0x%x\00", align 1
@g_numlock_sync = external global i32, align 4
@g_rdp_version = external global i32, align 4
@__func__.rdp_process_server_caps = private unnamed_addr constant [24 x i8] c"rdp_process_server_caps\00", align 1
@__func__.rdp_process_general_caps = private unnamed_addr constant [25 x i8] c"rdp_process_general_caps\00", align 1
@__func__.rdp_process_bitmap_caps = private unnamed_addr constant [24 x i8] c"rdp_process_bitmap_caps\00", align 1
@.str.20 = private unnamed_addr constant [71 x i8] c"rdp_process_bitmap_caps(), setting desktop size and depth to: %dx%dx%d\00", align 1
@g_requested_session_width = external global i32, align 4
@g_requested_session_height = external global i32, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"Disabling dynamic session resize\00", align 1
@g_dynamic_session_resize = external global i32, align 4
@g_server_depth = external global i32, align 4
@.str.22 = private unnamed_addr constant [68 x i8] c"Remote desktop does not support colour depth %d; falling back to %d\00", align 1
@g_fullscreen = external global i32, align 4
@__func__.rdp_send_confirm_active = private unnamed_addr constant [24 x i8] c"rdp_send_confirm_active\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"MSTSC\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"rdp_out_ts_bitmap_capabilityset(), %dx%d\00", align 1
@g_bitmap_cache = external global i32, align 4
@g_desktop_save = external global i32, align 4
@g_polygon_ellipse_orders = external global i32, align 4
@g_bitmap_cache_persist_enable = external global i32, align 4
@__func__.rdp_out_bmpcache_caps = private unnamed_addr constant [22 x i8] c"rdp_out_bmpcache_caps\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.rdp_send_synchronise = private unnamed_addr constant [21 x i8] c"rdp_send_synchronise\00", align 1
@__func__.rdp_enum_bmpcache2 = private unnamed_addr constant [19 x i8] c"rdp_enum_bmpcache2\00", align 1
@__func__.rdp_send_fonts = private unnamed_addr constant [15 x i8] c"rdp_send_fonts\00", align 1
@__func__.process_redirect_pdu = private unnamed_addr constant [21 x i8] c"process_redirect_pdu\00", align 1
@g_redirect_server = external global i8*, align 8
@g_redirect_username = external global i8*, align 8
@g_redirect_domain = external global i8*, align 8
@g_redirect_lb_info = external global i8*, align 8
@g_redirect_cookie = external global i8*, align 8
@.str.26 = private unnamed_addr constant [45 x i8] c"unexpected data in server redirection packet\00", align 1
@g_redirect_session_id = external global i32, align 4
@g_redirect_flags = external global i32, align 4
@g_redirect_server_len = external global i32, align 4
@g_redirect_lb_info_len = external global i32, align 4
@g_redirect_username_len = external global i32, align 4
@g_redirect_domain_len = external global i32, align 4
@g_redirect_cookie_len = external global i32, align 4
@.str.27 = private unnamed_addr constant [57 x i8] c"process_redirect_pdu(), Read %d bytes redirection cookie\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"process_redirect_pdu(), unhandled LB_DONTSTOREUSERNAME set\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"process_redirect_pdu(), unhandled LB_SMARTCARD_LOGON set\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"process_redirect_pdu(), unhandled LB_TARGET_NETBIOS\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"process_redirect_pdu(), unhandled LB_TARGET_NET_ADDRESSES\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"process_redirect_pdu(), unhandled LB_CLIENT_TSV_URL\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"process_redirect_pdu(), unhandled LB_SERVER_TSV_URL\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"process_redirect_pdu(), unhandled LB_PASSWORD_IS_PK_ENCRYPTED \00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"process_redirect_pdu(), unhandled LB_REDIRECTION_GUID \00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"process_redirect_pdu(), unhandled LB_TARGET_CERTIFICATE\00", align 1
@g_mppc_dict = external global %struct._RDPCOMP, align 8
@.str.37 = private unnamed_addr constant [63 x i8] c"process_data_pdu(), error decompressed packet size exceeds max\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"process_data_pdu(), error while decompressing packet\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"process_data_pdu(), received Control PDU\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"process_data_pdu(), received Sync PDU\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"process_data_pdu(), received Logon PDU\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"process_data_pdu(), automatic reconnect using cookie, failed\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"process_data_pdu(), unhandled data PDU type %d\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"%s(), RDP_UPDATE_ORDERS\00", align 1
@__func__.process_update_pdu = private unnamed_addr constant [19 x i8] c"process_update_pdu\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"%s(), RDP_UPDATE_BITMAP\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"%s(), RDP_UPDATE_PALETTE\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"%s(), RDP_UPDATE_SYNCHRONIZE\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"process_update_pdu(), unhandled update type %d\00", align 1
@__func__.process_pointer_pdu = private unnamed_addr constant [20 x i8] c"process_pointer_pdu\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"process_pointer_pdu(), unhandled message type 0x%x\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"process_ts_set_error_info_pdu(), error info = %d\00", align 1
@g_server_rdp_version = external global i16, align 2
@.str.51 = private unnamed_addr constant [55 x i8] c"rdp_send_logon_info(), sending RDP4-style Logon packet\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"rdp_send_logon_info(), sending RDP5-style Logon packet\00", align 1
@.str.53 = private unnamed_addr constant [66 x i8] c"rdp_send_logon_info(), Using %d bytes redirect cookie as password\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"rdp_send_logon_info(), called sec_init with packetlen %d\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"C:\5CWINNT\5CSystem32\5Cmstscax.dll\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"GTB, normaltid\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"GTB, sommartid\00", align 1
@g_rdp5_performanceflags = external global i32, align 4
@.str.58 = private unnamed_addr constant [54 x i8] c"rdp_send_logon_info(), Sending auto-reconnect cookie.\00", align 1
@g_client_random = external global [32 x i8], align 16
@rdp_out_unistr.icv_local_to_utf16 = internal global i8* null, align 8
@.str.59 = private unnamed_addr constant [47 x i8] c"rdo_out_unistr(), iconv_open[%s -> %s] fail %p\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"rdp_out_unistr(), iconv(2) fail, errno %d\00", align 1

; Function Attrs: nounwind uwtable
define void @rdp_in_unistr(%struct.stream*, i32, i8**, i32*) #0 !dbg !124 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !163, metadata !164), !dbg !165
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !166, metadata !164), !dbg !167
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !168, metadata !164), !dbg !169
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !170, metadata !164), !dbg !171
  call void @llvm.dbg.declare(metadata i64* %9, metadata !172, metadata !164), !dbg !173
  call void @llvm.dbg.declare(metadata i64* %10, metadata !174, metadata !164), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %11, metadata !176, metadata !164), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %12, metadata !178, metadata !164), !dbg !179
  %13 = load i8*, i8** @rdp_in_unistr.icv_utf16_to_local, align 8, !dbg !180
  %14 = icmp ne i8* %13, null, !dbg !180
  br i1 %14, label %22, label %15, !dbg !182

; <label>:15:                                     ; preds = %4
  %16 = call i8* @libiconv_open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)), !dbg !183
  store i8* %16, i8** @rdp_in_unistr.icv_utf16_to_local, align 8, !dbg !185
  %17 = load i8*, i8** @rdp_in_unistr.icv_utf16_to_local, align 8, !dbg !186
  %18 = icmp eq i8* %17, inttoptr (i64 -1 to i8*), !dbg !188
  br i1 %18, label %19, label %21, !dbg !189

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** @rdp_in_unistr.icv_utf16_to_local, align 8, !dbg !190
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* %20), !dbg !192
  call void @abort() #8, !dbg !193
  unreachable, !dbg !193

; <label>:21:                                     ; preds = %15
  br label %22, !dbg !194

; <label>:22:                                     ; preds = %21, %4
  %23 = load i8**, i8*** %7, align 8, !dbg !195
  %24 = load i8*, i8** %23, align 8, !dbg !197
  %25 = icmp eq i8* %24, null, !dbg !198
  br i1 %25, label %26, label %34, !dbg !199

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %6, align 4, !dbg !200
  %28 = mul nsw i32 %27, 2, !dbg !202
  %29 = call i8* @xmalloc(i32 %28), !dbg !203
  %30 = load i8**, i8*** %7, align 8, !dbg !204
  store i8* %29, i8** %30, align 8, !dbg !205
  %31 = load i32, i32* %6, align 4, !dbg !206
  %32 = mul nsw i32 %31, 2, !dbg !207
  %33 = load i32*, i32** %8, align 8, !dbg !208
  store i32 %32, i32* %33, align 4, !dbg !209
  br label %34, !dbg !210

; <label>:34:                                     ; preds = %26, %22
  %35 = load i32, i32* %6, align 4, !dbg !211
  %36 = sext i32 %35 to i64, !dbg !211
  store i64 %36, i64* %9, align 8, !dbg !212
  %37 = load i32*, i32** %8, align 8, !dbg !213
  %38 = load i32, i32* %37, align 4, !dbg !214
  %39 = sub i32 %38, 1, !dbg !215
  %40 = zext i32 %39 to i64, !dbg !214
  store i64 %40, i64* %10, align 8, !dbg !216
  %41 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !217
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !218
  %43 = load i8*, i8** %42, align 8, !dbg !218
  store i8* %43, i8** %11, align 8, !dbg !219
  %44 = load i8**, i8*** %7, align 8, !dbg !220
  %45 = load i8*, i8** %44, align 8, !dbg !221
  store i8* %45, i8** %12, align 8, !dbg !222
  %46 = load i8*, i8** @rdp_in_unistr.icv_utf16_to_local, align 8, !dbg !223
  %47 = call i64 @libiconv(i8* %46, i8** %11, i64* %9, i8** %12, i64* %10), !dbg !225
  %48 = icmp eq i64 %47, -1, !dbg !226
  br i1 %48, label %49, label %62, !dbg !227

; <label>:49:                                     ; preds = %34
  %50 = call i32* @__errno_location() #1, !dbg !228
  %51 = load i32, i32* %50, align 4, !dbg !231
  %52 = icmp eq i32 %51, 7, !dbg !232
  br i1 %52, label %53, label %54, !dbg !233

; <label>:53:                                     ; preds = %49
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0)), !dbg !234
  br label %61, !dbg !236

; <label>:54:                                     ; preds = %49
  %55 = call i32* @__errno_location() #1, !dbg !237
  %56 = load i32, i32* %55, align 4, !dbg !239
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i32 %56), !dbg !240
  %57 = load i8**, i8*** %7, align 8, !dbg !242
  %58 = load i8*, i8** %57, align 8, !dbg !243
  call void @free(i8* %58) #9, !dbg !244
  %59 = load i8**, i8*** %7, align 8, !dbg !245
  store i8* null, i8** %59, align 8, !dbg !246
  %60 = load i32*, i32** %8, align 8, !dbg !247
  store i32 0, i32* %60, align 4, !dbg !248
  br label %61

; <label>:61:                                     ; preds = %54, %53
  call void @abort() #8, !dbg !249
  unreachable, !dbg !249

; <label>:62:                                     ; preds = %34
  %63 = load i32, i32* %6, align 4, !dbg !250
  %64 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !251
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !252
  %66 = load i8*, i8** %65, align 8, !dbg !253
  %67 = sext i32 %63 to i64, !dbg !253
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !253
  store i8* %68, i8** %65, align 8, !dbg !253
  %69 = load i8*, i8** %12, align 8, !dbg !254
  store i8 0, i8* %69, align 1, !dbg !255
  %70 = load i8**, i8*** %7, align 8, !dbg !256
  %71 = load i8*, i8** %70, align 8, !dbg !258
  %72 = icmp ne i8* %71, null, !dbg !258
  br i1 %72, label %73, label %82, !dbg !259

; <label>:73:                                     ; preds = %62
  %74 = load i8*, i8** %12, align 8, !dbg !260
  %75 = load i8**, i8*** %7, align 8, !dbg !261
  %76 = load i8*, i8** %75, align 8, !dbg !262
  %77 = ptrtoint i8* %74 to i64, !dbg !263
  %78 = ptrtoint i8* %76 to i64, !dbg !263
  %79 = sub i64 %77, %78, !dbg !263
  %80 = trunc i64 %79 to i32, !dbg !260
  %81 = load i32*, i32** %8, align 8, !dbg !264
  store i32 %80, i32* %81, align 4, !dbg !265
  br label %82, !dbg !266

; <label>:82:                                     ; preds = %73, %62
  ret void, !dbg !267
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @libiconv_open(i8*, i8*) #2

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i8* @xmalloc(i32) #2

declare i64 @libiconv(i8*, i8**, i64*, i8**, i64*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define void @rdp_send_input(i32, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #0 !dbg !268 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.stream*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !271, metadata !164), !dbg !272
  store i16 %1, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !273, metadata !164), !dbg !274
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !275, metadata !164), !dbg !276
  store i16 %3, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !277, metadata !164), !dbg !278
  store i16 %4, i16* %10, align 2
  call void @llvm.dbg.declare(metadata i16* %10, metadata !279, metadata !164), !dbg !280
  call void @llvm.dbg.declare(metadata %struct.stream** %11, metadata !281, metadata !164), !dbg !282
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rdp_send_input, i32 0, i32 0)), !dbg !283
  %12 = call %struct.stream* @rdp_init_data(i32 16), !dbg !284
  store %struct.stream* %12, %struct.stream** %11, align 8, !dbg !285
  %13 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !286
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !288
  %15 = load i8*, i8** %14, align 8, !dbg !288
  %16 = bitcast i8* %15 to i16*, !dbg !289
  store i16 1, i16* %16, align 2, !dbg !290
  %17 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !291
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !292
  %19 = load i8*, i8** %18, align 8, !dbg !293
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !293
  store i8* %20, i8** %18, align 8, !dbg !293
  %21 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !294
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !296
  %23 = load i8*, i8** %22, align 8, !dbg !296
  %24 = bitcast i8* %23 to i16*, !dbg !297
  store i16 0, i16* %24, align 2, !dbg !298
  %25 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !299
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !300
  %27 = load i8*, i8** %26, align 8, !dbg !301
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !301
  store i8* %28, i8** %26, align 8, !dbg !301
  %29 = load i32, i32* %6, align 4, !dbg !302
  %30 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !304
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !305
  %32 = load i8*, i8** %31, align 8, !dbg !305
  %33 = bitcast i8* %32 to i32*, !dbg !306
  store i32 %29, i32* %33, align 4, !dbg !307
  %34 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !308
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !309
  %36 = load i8*, i8** %35, align 8, !dbg !310
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !310
  store i8* %37, i8** %35, align 8, !dbg !310
  %38 = load i16, i16* %7, align 2, !dbg !311
  %39 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !313
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !314
  %41 = load i8*, i8** %40, align 8, !dbg !314
  %42 = bitcast i8* %41 to i16*, !dbg !315
  store i16 %38, i16* %42, align 2, !dbg !316
  %43 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !317
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !318
  %45 = load i8*, i8** %44, align 8, !dbg !319
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !319
  store i8* %46, i8** %44, align 8, !dbg !319
  %47 = load i16, i16* %8, align 2, !dbg !320
  %48 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !322
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !323
  %50 = load i8*, i8** %49, align 8, !dbg !323
  %51 = bitcast i8* %50 to i16*, !dbg !324
  store i16 %47, i16* %51, align 2, !dbg !325
  %52 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !326
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !327
  %54 = load i8*, i8** %53, align 8, !dbg !328
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !328
  store i8* %55, i8** %53, align 8, !dbg !328
  %56 = load i16, i16* %9, align 2, !dbg !329
  %57 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !331
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !332
  %59 = load i8*, i8** %58, align 8, !dbg !332
  %60 = bitcast i8* %59 to i16*, !dbg !333
  store i16 %56, i16* %60, align 2, !dbg !334
  %61 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !335
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !336
  %63 = load i8*, i8** %62, align 8, !dbg !337
  %64 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !337
  store i8* %64, i8** %62, align 8, !dbg !337
  %65 = load i16, i16* %10, align 2, !dbg !338
  %66 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !340
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !341
  %68 = load i8*, i8** %67, align 8, !dbg !341
  %69 = bitcast i8* %68 to i16*, !dbg !342
  store i16 %65, i16* %69, align 2, !dbg !343
  %70 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !344
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !345
  %72 = load i8*, i8** %71, align 8, !dbg !346
  %73 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !346
  store i8* %73, i8** %71, align 8, !dbg !346
  %74 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !347
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !348
  %76 = load i8*, i8** %75, align 8, !dbg !348
  %77 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !349
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 1, !dbg !350
  store i8* %76, i8** %78, align 8, !dbg !351
  %79 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !352
  call void @rdp_send_data(%struct.stream* %79, i8 zeroext 28), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: nounwind uwtable
define internal %struct.stream* @rdp_init_data(i32) #0 !dbg !355 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !358, metadata !164), !dbg !359
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !360, metadata !164), !dbg !361
  %4 = load i32, i32* @g_encryption, align 4, !dbg !362
  %5 = icmp ne i32 %4, 0, !dbg !362
  %6 = select i1 %5, i32 8, i32 0, !dbg !362
  %7 = load i32, i32* %2, align 4, !dbg !363
  %8 = add nsw i32 %7, 18, !dbg !364
  %9 = call %struct.stream* @sec_init(i32 %6, i32 %8), !dbg !365
  store %struct.stream* %9, %struct.stream** %3, align 8, !dbg !366
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !367
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !369
  %12 = load i8*, i8** %11, align 8, !dbg !369
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !370
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 7, !dbg !371
  store i8* %12, i8** %14, align 8, !dbg !372
  %15 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !373
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !374
  %17 = load i8*, i8** %16, align 8, !dbg !375
  %18 = getelementptr inbounds i8, i8* %17, i64 18, !dbg !375
  store i8* %18, i8** %16, align 8, !dbg !375
  %19 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !376
  ret %struct.stream* %19, !dbg !377
}

; Function Attrs: nounwind uwtable
define internal void @rdp_send_data(%struct.stream*, i8 zeroext) #0 !dbg !378 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !381, metadata !164), !dbg !382
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !383, metadata !164), !dbg !384
  call void @llvm.dbg.declare(metadata i16* %5, metadata !385, metadata !164), !dbg !386
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !387
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 7, !dbg !388
  %8 = load i8*, i8** %7, align 8, !dbg !388
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !389
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !390
  store i8* %8, i8** %10, align 8, !dbg !391
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !392
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !393
  %13 = load i8*, i8** %12, align 8, !dbg !393
  %14 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !394
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !395
  %16 = load i8*, i8** %15, align 8, !dbg !395
  %17 = ptrtoint i8* %13 to i64, !dbg !396
  %18 = ptrtoint i8* %16 to i64, !dbg !396
  %19 = sub i64 %17, %18, !dbg !396
  %20 = trunc i64 %19 to i16, !dbg !392
  store i16 %20, i16* %5, align 2, !dbg !397
  %21 = load i16, i16* %5, align 2, !dbg !398
  %22 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !400
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !401
  %24 = load i8*, i8** %23, align 8, !dbg !401
  %25 = bitcast i8* %24 to i16*, !dbg !402
  store i16 %21, i16* %25, align 2, !dbg !403
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !404
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !405
  %28 = load i8*, i8** %27, align 8, !dbg !406
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !406
  store i8* %29, i8** %27, align 8, !dbg !406
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !407
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !409
  %32 = load i8*, i8** %31, align 8, !dbg !409
  %33 = bitcast i8* %32 to i16*, !dbg !410
  store i16 23, i16* %33, align 2, !dbg !411
  %34 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !412
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !413
  %36 = load i8*, i8** %35, align 8, !dbg !414
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !414
  store i8* %37, i8** %35, align 8, !dbg !414
  %38 = load i16, i16* @g_mcs_userid, align 2, !dbg !415
  %39 = zext i16 %38 to i32, !dbg !415
  %40 = add nsw i32 %39, 1001, !dbg !417
  %41 = trunc i32 %40 to i16, !dbg !418
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !419
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !420
  %44 = load i8*, i8** %43, align 8, !dbg !420
  %45 = bitcast i8* %44 to i16*, !dbg !421
  store i16 %41, i16* %45, align 2, !dbg !422
  %46 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !423
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !424
  %48 = load i8*, i8** %47, align 8, !dbg !425
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !425
  store i8* %49, i8** %47, align 8, !dbg !425
  %50 = load i32, i32* @g_rdp_shareid, align 4, !dbg !426
  %51 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !428
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !429
  %53 = load i8*, i8** %52, align 8, !dbg !429
  %54 = bitcast i8* %53 to i32*, !dbg !430
  store i32 %50, i32* %54, align 4, !dbg !431
  %55 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !432
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !433
  %57 = load i8*, i8** %56, align 8, !dbg !434
  %58 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !434
  store i8* %58, i8** %56, align 8, !dbg !434
  %59 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !435
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !436
  %61 = load i8*, i8** %60, align 8, !dbg !437
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !437
  store i8* %62, i8** %60, align 8, !dbg !437
  store i8 0, i8* %61, align 1, !dbg !438
  %63 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !439
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !440
  %65 = load i8*, i8** %64, align 8, !dbg !441
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !441
  store i8* %66, i8** %64, align 8, !dbg !441
  store i8 1, i8* %65, align 1, !dbg !442
  %67 = load i16, i16* %5, align 2, !dbg !443
  %68 = zext i16 %67 to i32, !dbg !443
  %69 = sub nsw i32 %68, 14, !dbg !445
  %70 = trunc i32 %69 to i16, !dbg !446
  %71 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !447
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !448
  %73 = load i8*, i8** %72, align 8, !dbg !448
  %74 = bitcast i8* %73 to i16*, !dbg !449
  store i16 %70, i16* %74, align 2, !dbg !450
  %75 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !451
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !452
  %77 = load i8*, i8** %76, align 8, !dbg !453
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !453
  store i8* %78, i8** %76, align 8, !dbg !453
  %79 = load i8, i8* %4, align 1, !dbg !454
  %80 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !455
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !456
  %82 = load i8*, i8** %81, align 8, !dbg !457
  %83 = getelementptr inbounds i8, i8* %82, i32 1, !dbg !457
  store i8* %83, i8** %81, align 8, !dbg !457
  store i8 %79, i8* %82, align 1, !dbg !458
  %84 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !459
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !460
  %86 = load i8*, i8** %85, align 8, !dbg !461
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !461
  store i8* %87, i8** %85, align 8, !dbg !461
  store i8 0, i8* %86, align 1, !dbg !462
  %88 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !463
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !465
  %90 = load i8*, i8** %89, align 8, !dbg !465
  %91 = bitcast i8* %90 to i16*, !dbg !466
  store i16 0, i16* %91, align 2, !dbg !467
  %92 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !468
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !469
  %94 = load i8*, i8** %93, align 8, !dbg !470
  %95 = getelementptr inbounds i8, i8* %94, i64 2, !dbg !470
  store i8* %95, i8** %93, align 8, !dbg !470
  %96 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !471
  %97 = load i32, i32* @g_encryption, align 4, !dbg !472
  %98 = icmp ne i32 %97, 0, !dbg !472
  %99 = select i1 %98, i32 8, i32 0, !dbg !472
  call void @sec_send(%struct.stream* %96, i32 %99), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: nounwind uwtable
define void @rdp_send_suppress_output_pdu(i32) #0 !dbg !143 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !475, metadata !164), !dbg !476
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !477, metadata !164), !dbg !478
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.rdp_send_suppress_output_pdu, i32 0, i32 0)), !dbg !479
  %4 = load i32, i32* @rdp_send_suppress_output_pdu.current_status, align 4, !dbg !480
  %5 = load i32, i32* %2, align 4, !dbg !482
  %6 = icmp eq i32 %4, %5, !dbg !483
  br i1 %6, label %7, label %8, !dbg !484

; <label>:7:                                      ; preds = %1
  br label %68, !dbg !485

; <label>:8:                                      ; preds = %1
  %9 = call %struct.stream* @rdp_init_data(i32 12), !dbg !486
  store %struct.stream* %9, %struct.stream** %3, align 8, !dbg !487
  %10 = load i32, i32* %2, align 4, !dbg !488
  %11 = trunc i32 %10 to i8, !dbg !488
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !489
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !490
  %14 = load i8*, i8** %13, align 8, !dbg !491
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !491
  store i8* %15, i8** %13, align 8, !dbg !491
  store i8 %11, i8* %14, align 1, !dbg !492
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !493
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !495
  %18 = load i8*, i8** %17, align 8, !dbg !495
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 3, i32 1, i1 false), !dbg !496
  %19 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !497
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !498
  %21 = load i8*, i8** %20, align 8, !dbg !499
  %22 = getelementptr inbounds i8, i8* %21, i64 3, !dbg !499
  store i8* %22, i8** %20, align 8, !dbg !499
  %23 = load i32, i32* %2, align 4, !dbg !500
  switch i32 %23, label %60 [
    i32 0, label %24
    i32 1, label %25
  ], !dbg !501

; <label>:24:                                     ; preds = %8
  br label %60, !dbg !502

; <label>:25:                                     ; preds = %8
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !504
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !506
  %28 = load i8*, i8** %27, align 8, !dbg !506
  %29 = bitcast i8* %28 to i16*, !dbg !507
  store i16 0, i16* %29, align 2, !dbg !508
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !509
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !510
  %32 = load i8*, i8** %31, align 8, !dbg !511
  %33 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !511
  store i8* %33, i8** %31, align 8, !dbg !511
  %34 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !512
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !514
  %36 = load i8*, i8** %35, align 8, !dbg !514
  %37 = bitcast i8* %36 to i16*, !dbg !515
  store i16 0, i16* %37, align 2, !dbg !516
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !517
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !518
  %40 = load i8*, i8** %39, align 8, !dbg !519
  %41 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !519
  store i8* %41, i8** %39, align 8, !dbg !519
  %42 = load i16, i16* @g_session_width, align 2, !dbg !520
  %43 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !522
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !523
  %45 = load i8*, i8** %44, align 8, !dbg !523
  %46 = bitcast i8* %45 to i16*, !dbg !524
  store i16 %42, i16* %46, align 2, !dbg !525
  %47 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !526
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !527
  %49 = load i8*, i8** %48, align 8, !dbg !528
  %50 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !528
  store i8* %50, i8** %48, align 8, !dbg !528
  %51 = load i16, i16* @g_session_height, align 2, !dbg !529
  %52 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !531
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !532
  %54 = load i8*, i8** %53, align 8, !dbg !532
  %55 = bitcast i8* %54 to i16*, !dbg !533
  store i16 %51, i16* %55, align 2, !dbg !534
  %56 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !535
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !536
  %58 = load i8*, i8** %57, align 8, !dbg !537
  %59 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !537
  store i8* %59, i8** %57, align 8, !dbg !537
  br label %60, !dbg !538

; <label>:60:                                     ; preds = %8, %25, %24
  %61 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !539
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !540
  %63 = load i8*, i8** %62, align 8, !dbg !540
  %64 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !541
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 1, !dbg !542
  store i8* %63, i8** %65, align 8, !dbg !543
  %66 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !544
  call void @rdp_send_data(%struct.stream* %66, i8 zeroext 35), !dbg !545
  %67 = load i32, i32* %2, align 4, !dbg !546
  store i32 %67, i32* @rdp_send_suppress_output_pdu.current_status, align 4, !dbg !547
  br label %68, !dbg !548

; <label>:68:                                     ; preds = %60, %7
  ret void, !dbg !549
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define void @process_colour_pointer_pdu(%struct.stream*) #0 !dbg !551 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !554, metadata !164), !dbg !555
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.process_colour_pointer_pdu, i32 0, i32 0)), !dbg !556
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !557
  call void @process_colour_pointer_common(%struct.stream* %3, i32 24), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: nounwind uwtable
define internal void @process_colour_pointer_common(%struct.stream*, i32) #0 !dbg !560 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !563, metadata !164), !dbg !564
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !565, metadata !164), !dbg !566
  call void @llvm.dbg.declare(metadata i16* %5, metadata !567, metadata !164), !dbg !568
  call void @llvm.dbg.declare(metadata i16* %6, metadata !569, metadata !164), !dbg !570
  call void @llvm.dbg.declare(metadata i16* %7, metadata !571, metadata !164), !dbg !572
  call void @llvm.dbg.declare(metadata i16* %8, metadata !573, metadata !164), !dbg !574
  call void @llvm.dbg.declare(metadata i16* %9, metadata !575, metadata !164), !dbg !576
  call void @llvm.dbg.declare(metadata i16* %10, metadata !577, metadata !164), !dbg !578
  call void @llvm.dbg.declare(metadata i16* %11, metadata !579, metadata !164), !dbg !580
  call void @llvm.dbg.declare(metadata i8** %12, metadata !581, metadata !164), !dbg !582
  call void @llvm.dbg.declare(metadata i8** %13, metadata !583, metadata !164), !dbg !584
  call void @llvm.dbg.declare(metadata i8** %14, metadata !585, metadata !164), !dbg !587
  %15 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !588
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !590
  %17 = load i8*, i8** %16, align 8, !dbg !590
  %18 = bitcast i8* %17 to i16*, !dbg !591
  %19 = load i16, i16* %18, align 2, !dbg !591
  store i16 %19, i16* %7, align 2, !dbg !592
  %20 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !593
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !594
  %22 = load i8*, i8** %21, align 8, !dbg !595
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !595
  store i8* %23, i8** %21, align 8, !dbg !595
  %24 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !596
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !598
  %26 = load i8*, i8** %25, align 8, !dbg !598
  %27 = bitcast i8* %26 to i16*, !dbg !599
  %28 = load i16, i16* %27, align 2, !dbg !599
  store i16 %28, i16* %10, align 2, !dbg !600
  %29 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !601
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !602
  %31 = load i8*, i8** %30, align 8, !dbg !603
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !603
  store i8* %32, i8** %30, align 8, !dbg !603
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !604
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !606
  %35 = load i8*, i8** %34, align 8, !dbg !606
  %36 = bitcast i8* %35 to i16*, !dbg !607
  %37 = load i16, i16* %36, align 2, !dbg !607
  store i16 %37, i16* %11, align 2, !dbg !608
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !609
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !610
  %40 = load i8*, i8** %39, align 8, !dbg !611
  %41 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !611
  store i8* %41, i8** %39, align 8, !dbg !611
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !612
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !614
  %44 = load i8*, i8** %43, align 8, !dbg !614
  %45 = bitcast i8* %44 to i16*, !dbg !615
  %46 = load i16, i16* %45, align 2, !dbg !615
  store i16 %46, i16* %5, align 2, !dbg !616
  %47 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !617
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !618
  %49 = load i8*, i8** %48, align 8, !dbg !619
  %50 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !619
  store i8* %50, i8** %48, align 8, !dbg !619
  %51 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !620
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !622
  %53 = load i8*, i8** %52, align 8, !dbg !622
  %54 = bitcast i8* %53 to i16*, !dbg !623
  %55 = load i16, i16* %54, align 2, !dbg !623
  store i16 %55, i16* %6, align 2, !dbg !624
  %56 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !625
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !626
  %58 = load i8*, i8** %57, align 8, !dbg !627
  %59 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !627
  store i8* %59, i8** %57, align 8, !dbg !627
  %60 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !628
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !630
  %62 = load i8*, i8** %61, align 8, !dbg !630
  %63 = bitcast i8* %62 to i16*, !dbg !631
  %64 = load i16, i16* %63, align 2, !dbg !631
  store i16 %64, i16* %8, align 2, !dbg !632
  %65 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !633
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !634
  %67 = load i8*, i8** %66, align 8, !dbg !635
  %68 = getelementptr inbounds i8, i8* %67, i64 2, !dbg !635
  store i8* %68, i8** %66, align 8, !dbg !635
  %69 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !636
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !638
  %71 = load i8*, i8** %70, align 8, !dbg !638
  %72 = bitcast i8* %71 to i16*, !dbg !639
  %73 = load i16, i16* %72, align 2, !dbg !639
  store i16 %73, i16* %9, align 2, !dbg !640
  %74 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !641
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !642
  %76 = load i8*, i8** %75, align 8, !dbg !643
  %77 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !643
  store i8* %77, i8** %75, align 8, !dbg !643
  %78 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !644
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !646
  %80 = load i8*, i8** %79, align 8, !dbg !646
  store i8* %80, i8** %13, align 8, !dbg !647
  %81 = load i16, i16* %9, align 2, !dbg !648
  %82 = zext i16 %81 to i32, !dbg !648
  %83 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !649
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !650
  %85 = load i8*, i8** %84, align 8, !dbg !651
  %86 = sext i32 %82 to i64, !dbg !651
  %87 = getelementptr inbounds i8, i8* %85, i64 %86, !dbg !651
  store i8* %87, i8** %84, align 8, !dbg !651
  %88 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !652
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !654
  %90 = load i8*, i8** %89, align 8, !dbg !654
  store i8* %90, i8** %12, align 8, !dbg !655
  %91 = load i16, i16* %8, align 2, !dbg !656
  %92 = zext i16 %91 to i32, !dbg !656
  %93 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !657
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 0, !dbg !658
  %95 = load i8*, i8** %94, align 8, !dbg !659
  %96 = sext i32 %92 to i64, !dbg !659
  %97 = getelementptr inbounds i8, i8* %95, i64 %96, !dbg !659
  store i8* %97, i8** %94, align 8, !dbg !659
  %98 = load i16, i16* %7, align 2, !dbg !660
  %99 = zext i16 %98 to i32, !dbg !660
  %100 = load i16, i16* %5, align 2, !dbg !661
  %101 = zext i16 %100 to i32, !dbg !661
  %102 = load i16, i16* %6, align 2, !dbg !662
  %103 = zext i16 %102 to i32, !dbg !662
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0), i32 %99, i32 %101, i32 %103), !dbg !663
  %104 = load i16, i16* %10, align 2, !dbg !664
  %105 = zext i16 %104 to i32, !dbg !665
  %106 = load i16, i16* %5, align 2, !dbg !666
  %107 = zext i16 %106 to i32, !dbg !666
  %108 = sub nsw i32 %107, 1, !dbg !667
  %109 = icmp slt i32 %105, %108, !dbg !668
  br i1 %109, label %110, label %113, !dbg !669

; <label>:110:                                    ; preds = %2
  %111 = load i16, i16* %10, align 2, !dbg !670
  %112 = zext i16 %111 to i32, !dbg !672
  br label %117, !dbg !673

; <label>:113:                                    ; preds = %2
  %114 = load i16, i16* %5, align 2, !dbg !674
  %115 = zext i16 %114 to i32, !dbg !674
  %116 = sub nsw i32 %115, 1, !dbg !676
  br label %117, !dbg !677

; <label>:117:                                    ; preds = %113, %110
  %118 = phi i32 [ %112, %110 ], [ %116, %113 ], !dbg !678
  %119 = trunc i32 %118 to i16, !dbg !680
  store i16 %119, i16* %10, align 2, !dbg !681
  %120 = load i16, i16* %11, align 2, !dbg !682
  %121 = zext i16 %120 to i32, !dbg !683
  %122 = load i16, i16* %6, align 2, !dbg !684
  %123 = zext i16 %122 to i32, !dbg !684
  %124 = sub nsw i32 %123, 1, !dbg !685
  %125 = icmp slt i32 %121, %124, !dbg !686
  br i1 %125, label %126, label %129, !dbg !687

; <label>:126:                                    ; preds = %117
  %127 = load i16, i16* %11, align 2, !dbg !688
  %128 = zext i16 %127 to i32, !dbg !689
  br label %133, !dbg !690

; <label>:129:                                    ; preds = %117
  %130 = load i16, i16* %6, align 2, !dbg !691
  %131 = zext i16 %130 to i32, !dbg !691
  %132 = sub nsw i32 %131, 1, !dbg !692
  br label %133, !dbg !693

; <label>:133:                                    ; preds = %129, %126
  %134 = phi i32 [ %128, %126 ], [ %132, %129 ], !dbg !694
  %135 = trunc i32 %134 to i16, !dbg !695
  store i16 %135, i16* %11, align 2, !dbg !696
  %136 = load i32, i32* @g_local_cursor, align 4, !dbg !697
  %137 = icmp ne i32 %136, 0, !dbg !697
  br i1 %137, label %138, label %139, !dbg !699

; <label>:138:                                    ; preds = %133
  br label %155, !dbg !700

; <label>:139:                                    ; preds = %133
  %140 = load i16, i16* %10, align 2, !dbg !702
  %141 = zext i16 %140 to i32, !dbg !702
  %142 = load i16, i16* %11, align 2, !dbg !703
  %143 = zext i16 %142 to i32, !dbg !703
  %144 = load i16, i16* %5, align 2, !dbg !704
  %145 = zext i16 %144 to i32, !dbg !704
  %146 = load i16, i16* %6, align 2, !dbg !705
  %147 = zext i16 %146 to i32, !dbg !705
  %148 = load i8*, i8** %12, align 8, !dbg !706
  %149 = load i8*, i8** %13, align 8, !dbg !707
  %150 = load i32, i32* %4, align 4, !dbg !708
  %151 = call i8* @ui_create_cursor(i32 %141, i32 %143, i32 %145, i32 %147, i8* %148, i8* %149, i32 %150), !dbg !709
  store i8* %151, i8** %14, align 8, !dbg !710
  %152 = load i8*, i8** %14, align 8, !dbg !711
  call void @ui_set_cursor(i8* %152), !dbg !712
  %153 = load i16, i16* %7, align 2, !dbg !713
  %154 = load i8*, i8** %14, align 8, !dbg !714
  call void @cache_put_cursor(i16 zeroext %153, i8* %154), !dbg !715
  br label %155, !dbg !716

; <label>:155:                                    ; preds = %139, %138
  ret void, !dbg !717
}

; Function Attrs: nounwind uwtable
define void @process_new_pointer_pdu(%struct.stream*) #0 !dbg !718 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !719, metadata !164), !dbg !720
  call void @llvm.dbg.declare(metadata i32* %3, metadata !721, metadata !164), !dbg !722
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.process_new_pointer_pdu, i32 0, i32 0)), !dbg !723
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !724
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !726
  %6 = load i8*, i8** %5, align 8, !dbg !726
  %7 = bitcast i8* %6 to i16*, !dbg !727
  %8 = load i16, i16* %7, align 2, !dbg !727
  %9 = zext i16 %8 to i32, !dbg !727
  store i32 %9, i32* %3, align 4, !dbg !728
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !729
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !730
  %12 = load i8*, i8** %11, align 8, !dbg !731
  %13 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !731
  store i8* %13, i8** %11, align 8, !dbg !731
  %14 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !732
  %15 = load i32, i32* %3, align 4, !dbg !733
  call void @process_colour_pointer_common(%struct.stream* %14, i32 %15), !dbg !734
  ret void, !dbg !735
}

; Function Attrs: nounwind uwtable
define void @process_cached_pointer_pdu(%struct.stream*) #0 !dbg !736 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !737, metadata !164), !dbg !738
  call void @llvm.dbg.declare(metadata i16* %3, metadata !739, metadata !164), !dbg !740
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.process_cached_pointer_pdu, i32 0, i32 0)), !dbg !741
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !742
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !744
  %6 = load i8*, i8** %5, align 8, !dbg !744
  %7 = bitcast i8* %6 to i16*, !dbg !745
  %8 = load i16, i16* %7, align 2, !dbg !745
  store i16 %8, i16* %3, align 2, !dbg !746
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !747
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !748
  %11 = load i8*, i8** %10, align 8, !dbg !749
  %12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !749
  store i8* %12, i8** %10, align 8, !dbg !749
  %13 = load i16, i16* %3, align 2, !dbg !750
  %14 = call i8* @cache_get_cursor(i16 zeroext %13), !dbg !751
  call void @ui_set_cursor(i8* %14), !dbg !752
  ret void, !dbg !754
}

declare void @ui_set_cursor(i8*) #2

declare i8* @cache_get_cursor(i16 zeroext) #2

; Function Attrs: nounwind uwtable
define void @process_system_pointer_pdu(%struct.stream*) #0 !dbg !755 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !756, metadata !164), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %3, metadata !758, metadata !164), !dbg !759
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.process_system_pointer_pdu, i32 0, i32 0)), !dbg !760
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !761
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !763
  %6 = load i8*, i8** %5, align 8, !dbg !763
  %7 = bitcast i8* %6 to i32*, !dbg !764
  %8 = load i32, i32* %7, align 4, !dbg !764
  store i32 %8, i32* %3, align 4, !dbg !765
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !766
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !767
  %11 = load i8*, i8** %10, align 8, !dbg !768
  %12 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !768
  store i8* %12, i8** %10, align 8, !dbg !768
  %13 = load i32, i32* %3, align 4, !dbg !769
  call void @set_system_pointer(i32 %13), !dbg !770
  ret void, !dbg !771
}

; Function Attrs: nounwind uwtable
define void @set_system_pointer(i32) #0 !dbg !772 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !775, metadata !164), !dbg !776
  %3 = load i32, i32* %2, align 4, !dbg !777
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 32512, label %5
  ], !dbg !778

; <label>:4:                                      ; preds = %1
  call void @ui_set_null_cursor(), !dbg !779
  br label %8, !dbg !781

; <label>:5:                                      ; preds = %1
  call void @ui_set_standard_cursor(), !dbg !782
  br label %8, !dbg !783

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !784
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %7), !dbg !785
  br label %8, !dbg !786

; <label>:8:                                      ; preds = %6, %5, %4
  ret void, !dbg !787
}

declare void @ui_set_null_cursor() #2

declare void @ui_set_standard_cursor() #2

; Function Attrs: nounwind uwtable
define void @process_bitmap_updates(%struct.stream*) #0 !dbg !788 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !789, metadata !164), !dbg !790
  call void @llvm.dbg.declare(metadata i16* %3, metadata !791, metadata !164), !dbg !792
  call void @llvm.dbg.declare(metadata i16* %4, metadata !793, metadata !164), !dbg !794
  call void @llvm.dbg.declare(metadata i16* %5, metadata !795, metadata !164), !dbg !796
  call void @llvm.dbg.declare(metadata i16* %6, metadata !797, metadata !164), !dbg !798
  call void @llvm.dbg.declare(metadata i16* %7, metadata !799, metadata !164), !dbg !800
  call void @llvm.dbg.declare(metadata i16* %8, metadata !801, metadata !164), !dbg !802
  call void @llvm.dbg.declare(metadata i16* %9, metadata !803, metadata !164), !dbg !804
  call void @llvm.dbg.declare(metadata i16* %10, metadata !805, metadata !164), !dbg !806
  call void @llvm.dbg.declare(metadata i16* %11, metadata !807, metadata !164), !dbg !808
  call void @llvm.dbg.declare(metadata i16* %12, metadata !809, metadata !164), !dbg !810
  call void @llvm.dbg.declare(metadata i16* %13, metadata !811, metadata !164), !dbg !812
  call void @llvm.dbg.declare(metadata i16* %14, metadata !813, metadata !164), !dbg !814
  call void @llvm.dbg.declare(metadata i16* %15, metadata !815, metadata !164), !dbg !816
  call void @llvm.dbg.declare(metadata i16* %16, metadata !817, metadata !164), !dbg !818
  call void @llvm.dbg.declare(metadata i8** %17, metadata !819, metadata !164), !dbg !820
  call void @llvm.dbg.declare(metadata i8** %18, metadata !821, metadata !164), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %19, metadata !823, metadata !164), !dbg !824
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.process_bitmap_updates, i32 0, i32 0)), !dbg !825
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !826
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !828
  %23 = load i8*, i8** %22, align 8, !dbg !828
  %24 = bitcast i8* %23 to i16*, !dbg !829
  %25 = load i16, i16* %24, align 2, !dbg !829
  store i16 %25, i16* %3, align 2, !dbg !830
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !831
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !832
  %28 = load i8*, i8** %27, align 8, !dbg !833
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !833
  store i8* %29, i8** %27, align 8, !dbg !833
  store i32 0, i32* %19, align 4, !dbg !834
  br label %30, !dbg !836

; <label>:30:                                     ; preds = %295, %1
  %31 = load i32, i32* %19, align 4, !dbg !837
  %32 = load i16, i16* %3, align 2, !dbg !840
  %33 = zext i16 %32 to i32, !dbg !840
  %34 = icmp slt i32 %31, %33, !dbg !841
  br i1 %34, label %35, label %298, !dbg !842

; <label>:35:                                     ; preds = %30
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !843
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !846
  %38 = load i8*, i8** %37, align 8, !dbg !846
  %39 = bitcast i8* %38 to i16*, !dbg !847
  %40 = load i16, i16* %39, align 2, !dbg !847
  store i16 %40, i16* %4, align 2, !dbg !848
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !849
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !850
  %43 = load i8*, i8** %42, align 8, !dbg !851
  %44 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !851
  store i8* %44, i8** %42, align 8, !dbg !851
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !852
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !854
  %47 = load i8*, i8** %46, align 8, !dbg !854
  %48 = bitcast i8* %47 to i16*, !dbg !855
  %49 = load i16, i16* %48, align 2, !dbg !855
  store i16 %49, i16* %5, align 2, !dbg !856
  %50 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !857
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !858
  %52 = load i8*, i8** %51, align 8, !dbg !859
  %53 = getelementptr inbounds i8, i8* %52, i64 2, !dbg !859
  store i8* %53, i8** %51, align 8, !dbg !859
  %54 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !860
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !862
  %56 = load i8*, i8** %55, align 8, !dbg !862
  %57 = bitcast i8* %56 to i16*, !dbg !863
  %58 = load i16, i16* %57, align 2, !dbg !863
  store i16 %58, i16* %6, align 2, !dbg !864
  %59 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !865
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !866
  %61 = load i8*, i8** %60, align 8, !dbg !867
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !867
  store i8* %62, i8** %60, align 8, !dbg !867
  %63 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !868
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !870
  %65 = load i8*, i8** %64, align 8, !dbg !870
  %66 = bitcast i8* %65 to i16*, !dbg !871
  %67 = load i16, i16* %66, align 2, !dbg !871
  store i16 %67, i16* %7, align 2, !dbg !872
  %68 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !873
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !874
  %70 = load i8*, i8** %69, align 8, !dbg !875
  %71 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !875
  store i8* %71, i8** %69, align 8, !dbg !875
  %72 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !876
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !878
  %74 = load i8*, i8** %73, align 8, !dbg !878
  %75 = bitcast i8* %74 to i16*, !dbg !879
  %76 = load i16, i16* %75, align 2, !dbg !879
  store i16 %76, i16* %8, align 2, !dbg !880
  %77 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !881
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !882
  %79 = load i8*, i8** %78, align 8, !dbg !883
  %80 = getelementptr inbounds i8, i8* %79, i64 2, !dbg !883
  store i8* %80, i8** %78, align 8, !dbg !883
  %81 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !884
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !886
  %83 = load i8*, i8** %82, align 8, !dbg !886
  %84 = bitcast i8* %83 to i16*, !dbg !887
  %85 = load i16, i16* %84, align 2, !dbg !887
  store i16 %85, i16* %9, align 2, !dbg !888
  %86 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !889
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !890
  %88 = load i8*, i8** %87, align 8, !dbg !891
  %89 = getelementptr inbounds i8, i8* %88, i64 2, !dbg !891
  store i8* %89, i8** %87, align 8, !dbg !891
  %90 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !892
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !894
  %92 = load i8*, i8** %91, align 8, !dbg !894
  %93 = bitcast i8* %92 to i16*, !dbg !895
  %94 = load i16, i16* %93, align 2, !dbg !895
  store i16 %94, i16* %12, align 2, !dbg !896
  %95 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !897
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !898
  %97 = load i8*, i8** %96, align 8, !dbg !899
  %98 = getelementptr inbounds i8, i8* %97, i64 2, !dbg !899
  store i8* %98, i8** %96, align 8, !dbg !899
  %99 = load i16, i16* %12, align 2, !dbg !900
  %100 = zext i16 %99 to i32, !dbg !900
  %101 = add nsw i32 %100, 7, !dbg !901
  %102 = sdiv i32 %101, 8, !dbg !902
  %103 = trunc i32 %102 to i16, !dbg !903
  store i16 %103, i16* %13, align 2, !dbg !904
  %104 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !905
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !907
  %106 = load i8*, i8** %105, align 8, !dbg !907
  %107 = bitcast i8* %106 to i16*, !dbg !908
  %108 = load i16, i16* %107, align 2, !dbg !908
  store i16 %108, i16* %14, align 2, !dbg !909
  %109 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !910
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !911
  %111 = load i8*, i8** %110, align 8, !dbg !912
  %112 = getelementptr inbounds i8, i8* %111, i64 2, !dbg !912
  store i8* %112, i8** %110, align 8, !dbg !912
  %113 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !913
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !915
  %115 = load i8*, i8** %114, align 8, !dbg !915
  %116 = bitcast i8* %115 to i16*, !dbg !916
  %117 = load i16, i16* %116, align 2, !dbg !916
  store i16 %117, i16* %15, align 2, !dbg !917
  %118 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !918
  %119 = getelementptr inbounds %struct.stream, %struct.stream* %118, i32 0, i32 0, !dbg !919
  %120 = load i8*, i8** %119, align 8, !dbg !920
  %121 = getelementptr inbounds i8, i8* %120, i64 2, !dbg !920
  store i8* %121, i8** %119, align 8, !dbg !920
  %122 = load i16, i16* %6, align 2, !dbg !921
  %123 = zext i16 %122 to i32, !dbg !921
  %124 = load i16, i16* %4, align 2, !dbg !922
  %125 = zext i16 %124 to i32, !dbg !922
  %126 = sub nsw i32 %123, %125, !dbg !923
  %127 = add nsw i32 %126, 1, !dbg !924
  %128 = trunc i32 %127 to i16, !dbg !921
  store i16 %128, i16* %10, align 2, !dbg !925
  %129 = load i16, i16* %7, align 2, !dbg !926
  %130 = zext i16 %129 to i32, !dbg !926
  %131 = load i16, i16* %5, align 2, !dbg !927
  %132 = zext i16 %131 to i32, !dbg !927
  %133 = sub nsw i32 %130, %132, !dbg !928
  %134 = add nsw i32 %133, 1, !dbg !929
  %135 = trunc i32 %134 to i16, !dbg !926
  store i16 %135, i16* %11, align 2, !dbg !930
  %136 = load i16, i16* %4, align 2, !dbg !931
  %137 = zext i16 %136 to i32, !dbg !931
  %138 = load i16, i16* %5, align 2, !dbg !932
  %139 = zext i16 %138 to i32, !dbg !932
  %140 = load i16, i16* %6, align 2, !dbg !933
  %141 = zext i16 %140 to i32, !dbg !933
  %142 = load i16, i16* %7, align 2, !dbg !934
  %143 = zext i16 %142 to i32, !dbg !934
  %144 = load i16, i16* %8, align 2, !dbg !935
  %145 = zext i16 %144 to i32, !dbg !935
  %146 = load i16, i16* %9, align 2, !dbg !936
  %147 = zext i16 %146 to i32, !dbg !936
  %148 = load i16, i16* %13, align 2, !dbg !937
  %149 = zext i16 %148 to i32, !dbg !937
  %150 = load i16, i16* %14, align 2, !dbg !938
  %151 = zext i16 %150 to i32, !dbg !938
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i32 0, i32 0), i32 %137, i32 %139, i32 %141, i32 %143, i32 %145, i32 %147, i32 %149, i32 %151), !dbg !939
  %152 = load i16, i16* %14, align 2, !dbg !940
  %153 = icmp ne i16 %152, 0, !dbg !940
  br i1 %153, label %221, label %154, !dbg !942

; <label>:154:                                    ; preds = %35
  call void @llvm.dbg.declare(metadata i32* %20, metadata !943, metadata !164), !dbg !945
  %155 = load i16, i16* %8, align 2, !dbg !946
  %156 = zext i16 %155 to i32, !dbg !946
  %157 = load i16, i16* %9, align 2, !dbg !947
  %158 = zext i16 %157 to i32, !dbg !947
  %159 = mul nsw i32 %156, %158, !dbg !948
  %160 = load i16, i16* %13, align 2, !dbg !949
  %161 = zext i16 %160 to i32, !dbg !949
  %162 = mul nsw i32 %159, %161, !dbg !950
  %163 = call i8* @xmalloc(i32 %162), !dbg !951
  store i8* %163, i8** %18, align 8, !dbg !952
  store i32 0, i32* %20, align 4, !dbg !953
  br label %164, !dbg !955

; <label>:164:                                    ; preds = %203, %154
  %165 = load i32, i32* %20, align 4, !dbg !956
  %166 = load i16, i16* %9, align 2, !dbg !959
  %167 = zext i16 %166 to i32, !dbg !959
  %168 = icmp slt i32 %165, %167, !dbg !960
  br i1 %168, label %169, label %206, !dbg !961

; <label>:169:                                    ; preds = %164
  %170 = load i16, i16* %9, align 2, !dbg !962
  %171 = zext i16 %170 to i32, !dbg !962
  %172 = load i32, i32* %20, align 4, !dbg !965
  %173 = sub nsw i32 %171, %172, !dbg !966
  %174 = sub nsw i32 %173, 1, !dbg !967
  %175 = load i16, i16* %8, align 2, !dbg !968
  %176 = zext i16 %175 to i32, !dbg !968
  %177 = load i16, i16* %13, align 2, !dbg !969
  %178 = zext i16 %177 to i32, !dbg !969
  %179 = mul nsw i32 %176, %178, !dbg !970
  %180 = mul nsw i32 %174, %179, !dbg !971
  %181 = sext i32 %180 to i64, !dbg !972
  %182 = load i8*, i8** %18, align 8, !dbg !972
  %183 = getelementptr inbounds i8, i8* %182, i64 %181, !dbg !972
  %184 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !973
  %185 = getelementptr inbounds %struct.stream, %struct.stream* %184, i32 0, i32 0, !dbg !974
  %186 = load i8*, i8** %185, align 8, !dbg !974
  %187 = load i16, i16* %8, align 2, !dbg !975
  %188 = zext i16 %187 to i32, !dbg !975
  %189 = load i16, i16* %13, align 2, !dbg !976
  %190 = zext i16 %189 to i32, !dbg !976
  %191 = mul nsw i32 %188, %190, !dbg !977
  %192 = sext i32 %191 to i64, !dbg !975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %186, i64 %192, i32 1, i1 false), !dbg !978
  %193 = load i16, i16* %8, align 2, !dbg !979
  %194 = zext i16 %193 to i32, !dbg !979
  %195 = load i16, i16* %13, align 2, !dbg !980
  %196 = zext i16 %195 to i32, !dbg !980
  %197 = mul nsw i32 %194, %196, !dbg !981
  %198 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !982
  %199 = getelementptr inbounds %struct.stream, %struct.stream* %198, i32 0, i32 0, !dbg !983
  %200 = load i8*, i8** %199, align 8, !dbg !984
  %201 = sext i32 %197 to i64, !dbg !984
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !984
  store i8* %202, i8** %199, align 8, !dbg !984
  br label %203, !dbg !985

; <label>:203:                                    ; preds = %169
  %204 = load i32, i32* %20, align 4, !dbg !986
  %205 = add nsw i32 %204, 1, !dbg !986
  store i32 %205, i32* %20, align 4, !dbg !986
  br label %164, !dbg !988, !llvm.loop !989

; <label>:206:                                    ; preds = %164
  %207 = load i16, i16* %4, align 2, !dbg !991
  %208 = zext i16 %207 to i32, !dbg !991
  %209 = load i16, i16* %5, align 2, !dbg !992
  %210 = zext i16 %209 to i32, !dbg !992
  %211 = load i16, i16* %10, align 2, !dbg !993
  %212 = zext i16 %211 to i32, !dbg !993
  %213 = load i16, i16* %11, align 2, !dbg !994
  %214 = zext i16 %213 to i32, !dbg !994
  %215 = load i16, i16* %8, align 2, !dbg !995
  %216 = zext i16 %215 to i32, !dbg !995
  %217 = load i16, i16* %9, align 2, !dbg !996
  %218 = zext i16 %217 to i32, !dbg !996
  %219 = load i8*, i8** %18, align 8, !dbg !997
  call void @ui_paint_bitmap(i32 %208, i32 %210, i32 %212, i32 %214, i32 %216, i32 %218, i8* %219), !dbg !998
  %220 = load i8*, i8** %18, align 8, !dbg !999
  call void @xfree(i8* %220), !dbg !1000
  br label %295, !dbg !1001

; <label>:221:                                    ; preds = %35
  %222 = load i16, i16* %14, align 2, !dbg !1002
  %223 = zext i16 %222 to i32, !dbg !1002
  %224 = and i32 %223, 1024, !dbg !1004
  %225 = icmp ne i32 %224, 0, !dbg !1004
  br i1 %225, label %226, label %228, !dbg !1005

; <label>:226:                                    ; preds = %221
  %227 = load i16, i16* %15, align 2, !dbg !1006
  store i16 %227, i16* %16, align 2, !dbg !1008
  br label %246, !dbg !1009

; <label>:228:                                    ; preds = %221
  %229 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1010
  %230 = getelementptr inbounds %struct.stream, %struct.stream* %229, i32 0, i32 0, !dbg !1012
  %231 = load i8*, i8** %230, align 8, !dbg !1013
  %232 = getelementptr inbounds i8, i8* %231, i64 2, !dbg !1013
  store i8* %232, i8** %230, align 8, !dbg !1013
  %233 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1014
  %234 = getelementptr inbounds %struct.stream, %struct.stream* %233, i32 0, i32 0, !dbg !1016
  %235 = load i8*, i8** %234, align 8, !dbg !1016
  %236 = bitcast i8* %235 to i16*, !dbg !1017
  %237 = load i16, i16* %236, align 2, !dbg !1017
  store i16 %237, i16* %16, align 2, !dbg !1018
  %238 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1019
  %239 = getelementptr inbounds %struct.stream, %struct.stream* %238, i32 0, i32 0, !dbg !1020
  %240 = load i8*, i8** %239, align 8, !dbg !1021
  %241 = getelementptr inbounds i8, i8* %240, i64 2, !dbg !1021
  store i8* %241, i8** %239, align 8, !dbg !1021
  %242 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1022
  %243 = getelementptr inbounds %struct.stream, %struct.stream* %242, i32 0, i32 0, !dbg !1023
  %244 = load i8*, i8** %243, align 8, !dbg !1024
  %245 = getelementptr inbounds i8, i8* %244, i64 4, !dbg !1024
  store i8* %245, i8** %243, align 8, !dbg !1024
  br label %246

; <label>:246:                                    ; preds = %228, %226
  %247 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1025
  %248 = getelementptr inbounds %struct.stream, %struct.stream* %247, i32 0, i32 0, !dbg !1027
  %249 = load i8*, i8** %248, align 8, !dbg !1027
  store i8* %249, i8** %17, align 8, !dbg !1028
  %250 = load i16, i16* %16, align 2, !dbg !1029
  %251 = zext i16 %250 to i32, !dbg !1029
  %252 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1030
  %253 = getelementptr inbounds %struct.stream, %struct.stream* %252, i32 0, i32 0, !dbg !1031
  %254 = load i8*, i8** %253, align 8, !dbg !1032
  %255 = sext i32 %251 to i64, !dbg !1032
  %256 = getelementptr inbounds i8, i8* %254, i64 %255, !dbg !1032
  store i8* %256, i8** %253, align 8, !dbg !1032
  %257 = load i16, i16* %8, align 2, !dbg !1033
  %258 = zext i16 %257 to i32, !dbg !1033
  %259 = load i16, i16* %9, align 2, !dbg !1034
  %260 = zext i16 %259 to i32, !dbg !1034
  %261 = mul nsw i32 %258, %260, !dbg !1035
  %262 = load i16, i16* %13, align 2, !dbg !1036
  %263 = zext i16 %262 to i32, !dbg !1036
  %264 = mul nsw i32 %261, %263, !dbg !1037
  %265 = call i8* @xmalloc(i32 %264), !dbg !1038
  store i8* %265, i8** %18, align 8, !dbg !1039
  %266 = load i8*, i8** %18, align 8, !dbg !1040
  %267 = load i16, i16* %8, align 2, !dbg !1042
  %268 = zext i16 %267 to i32, !dbg !1042
  %269 = load i16, i16* %9, align 2, !dbg !1043
  %270 = zext i16 %269 to i32, !dbg !1043
  %271 = load i8*, i8** %17, align 8, !dbg !1044
  %272 = load i16, i16* %16, align 2, !dbg !1045
  %273 = zext i16 %272 to i32, !dbg !1045
  %274 = load i16, i16* %13, align 2, !dbg !1046
  %275 = zext i16 %274 to i32, !dbg !1046
  %276 = call i32 @bitmap_decompress(i8* %266, i32 %268, i32 %270, i8* %271, i32 %273, i32 %275), !dbg !1047
  %277 = icmp ne i32 %276, 0, !dbg !1047
  br i1 %277, label %278, label %292, !dbg !1048

; <label>:278:                                    ; preds = %246
  %279 = load i16, i16* %4, align 2, !dbg !1049
  %280 = zext i16 %279 to i32, !dbg !1049
  %281 = load i16, i16* %5, align 2, !dbg !1051
  %282 = zext i16 %281 to i32, !dbg !1051
  %283 = load i16, i16* %10, align 2, !dbg !1052
  %284 = zext i16 %283 to i32, !dbg !1052
  %285 = load i16, i16* %11, align 2, !dbg !1053
  %286 = zext i16 %285 to i32, !dbg !1053
  %287 = load i16, i16* %8, align 2, !dbg !1054
  %288 = zext i16 %287 to i32, !dbg !1054
  %289 = load i16, i16* %9, align 2, !dbg !1055
  %290 = zext i16 %289 to i32, !dbg !1055
  %291 = load i8*, i8** %18, align 8, !dbg !1056
  call void @ui_paint_bitmap(i32 %280, i32 %282, i32 %284, i32 %286, i32 %288, i32 %290, i8* %291), !dbg !1057
  br label %293, !dbg !1058

; <label>:292:                                    ; preds = %246
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0)), !dbg !1059
  br label %293

; <label>:293:                                    ; preds = %292, %278
  %294 = load i8*, i8** %18, align 8, !dbg !1061
  call void @xfree(i8* %294), !dbg !1062
  br label %295, !dbg !1063

; <label>:295:                                    ; preds = %293, %206
  %296 = load i32, i32* %19, align 4, !dbg !1064
  %297 = add nsw i32 %296, 1, !dbg !1064
  store i32 %297, i32* %19, align 4, !dbg !1064
  br label %30, !dbg !1066, !llvm.loop !1067

; <label>:298:                                    ; preds = %30
  ret void, !dbg !1069
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare void @ui_paint_bitmap(i32, i32, i32, i32, i32, i32, i8*) #2

declare void @xfree(i8*) #2

declare i32 @bitmap_decompress(i8*, i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @process_palette(%struct.stream*) #0 !dbg !1070 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca %struct._COLOURENTRY*, align 8
  %4 = alloca %struct._COLOURMAP, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1071, metadata !164), !dbg !1072
  call void @llvm.dbg.declare(metadata %struct._COLOURENTRY** %3, metadata !1073, metadata !164), !dbg !1074
  call void @llvm.dbg.declare(metadata %struct._COLOURMAP* %4, metadata !1075, metadata !164), !dbg !1081
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1082, metadata !164), !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1085, metadata !164), !dbg !1086
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1087
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !1088
  %9 = load i8*, i8** %8, align 8, !dbg !1089
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !1089
  store i8* %10, i8** %8, align 8, !dbg !1089
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1090
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1092
  %13 = load i8*, i8** %12, align 8, !dbg !1092
  %14 = bitcast i8* %13 to i16*, !dbg !1093
  %15 = load i16, i16* %14, align 2, !dbg !1093
  %16 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !1094
  store i16 %15, i16* %16, align 8, !dbg !1095
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1096
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !1097
  %19 = load i8*, i8** %18, align 8, !dbg !1098
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !1098
  store i8* %20, i8** %18, align 8, !dbg !1098
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1099
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !1100
  %23 = load i8*, i8** %22, align 8, !dbg !1101
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !1101
  store i8* %24, i8** %22, align 8, !dbg !1101
  %25 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !1102
  %26 = load i16, i16* %25, align 8, !dbg !1102
  %27 = zext i16 %26 to i64, !dbg !1103
  %28 = mul i64 3, %27, !dbg !1104
  %29 = trunc i64 %28 to i32, !dbg !1105
  %30 = call i8* @xmalloc(i32 %29), !dbg !1106
  %31 = bitcast i8* %30 to %struct._COLOURENTRY*, !dbg !1107
  %32 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !1108
  store %struct._COLOURENTRY* %31, %struct._COLOURENTRY** %32, align 8, !dbg !1109
  %33 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !1110
  %34 = load i16, i16* %33, align 8, !dbg !1110
  %35 = zext i16 %34 to i32, !dbg !1111
  call void (i32, i32, i8*, ...) @logger(i32 5, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %35), !dbg !1112
  store i32 0, i32* %6, align 4, !dbg !1113
  br label %36, !dbg !1115

; <label>:36:                                     ; preds = %69, %1
  %37 = load i32, i32* %6, align 4, !dbg !1116
  %38 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 0, !dbg !1119
  %39 = load i16, i16* %38, align 8, !dbg !1119
  %40 = zext i16 %39 to i32, !dbg !1120
  %41 = icmp slt i32 %37, %40, !dbg !1121
  br i1 %41, label %42, label %72, !dbg !1122

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %6, align 4, !dbg !1123
  %44 = sext i32 %43 to i64, !dbg !1125
  %45 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !1126
  %46 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %45, align 8, !dbg !1126
  %47 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %46, i64 %44, !dbg !1125
  store %struct._COLOURENTRY* %47, %struct._COLOURENTRY** %3, align 8, !dbg !1127
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1128
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !1129
  %50 = load i8*, i8** %49, align 8, !dbg !1130
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !1130
  store i8* %51, i8** %49, align 8, !dbg !1130
  %52 = load i8, i8* %50, align 1, !dbg !1131
  %53 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !1132
  %54 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %53, i32 0, i32 0, !dbg !1133
  store i8 %52, i8* %54, align 1, !dbg !1134
  %55 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1135
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !1136
  %57 = load i8*, i8** %56, align 8, !dbg !1137
  %58 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !1137
  store i8* %58, i8** %56, align 8, !dbg !1137
  %59 = load i8, i8* %57, align 1, !dbg !1138
  %60 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !1139
  %61 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %60, i32 0, i32 1, !dbg !1140
  store i8 %59, i8* %61, align 1, !dbg !1141
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1142
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !1143
  %64 = load i8*, i8** %63, align 8, !dbg !1144
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !1144
  store i8* %65, i8** %63, align 8, !dbg !1144
  %66 = load i8, i8* %64, align 1, !dbg !1145
  %67 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %3, align 8, !dbg !1146
  %68 = getelementptr inbounds %struct._COLOURENTRY, %struct._COLOURENTRY* %67, i32 0, i32 2, !dbg !1147
  store i8 %66, i8* %68, align 1, !dbg !1148
  br label %69, !dbg !1149

; <label>:69:                                     ; preds = %42
  %70 = load i32, i32* %6, align 4, !dbg !1150
  %71 = add nsw i32 %70, 1, !dbg !1150
  store i32 %71, i32* %6, align 4, !dbg !1150
  br label %36, !dbg !1152, !llvm.loop !1153

; <label>:72:                                     ; preds = %36
  %73 = call i8* @ui_create_colourmap(%struct._COLOURMAP* %4), !dbg !1155
  store i8* %73, i8** %5, align 8, !dbg !1156
  %74 = load i8*, i8** %5, align 8, !dbg !1157
  call void @ui_set_colourmap(i8* %74), !dbg !1158
  %75 = getelementptr inbounds %struct._COLOURMAP, %struct._COLOURMAP* %4, i32 0, i32 1, !dbg !1159
  %76 = load %struct._COLOURENTRY*, %struct._COLOURENTRY** %75, align 8, !dbg !1159
  %77 = bitcast %struct._COLOURENTRY* %76 to i8*, !dbg !1160
  call void @xfree(i8* %77), !dbg !1161
  ret void, !dbg !1162
}

declare i8* @ui_create_colourmap(%struct._COLOURMAP*) #2

declare void @ui_set_colourmap(i8*) #2

; Function Attrs: nounwind uwtable
define void @process_pdu_logon(%struct.stream*) #0 !dbg !1163 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1164, metadata !164), !dbg !1165
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1166, metadata !164), !dbg !1167
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1168
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !1170
  %6 = load i8*, i8** %5, align 8, !dbg !1170
  %7 = bitcast i8* %6 to i32*, !dbg !1171
  %8 = load i32, i32* %7, align 4, !dbg !1171
  store i32 %8, i32* %3, align 4, !dbg !1172
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1173
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !1174
  %11 = load i8*, i8** %10, align 8, !dbg !1175
  %12 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1175
  store i8* %12, i8** %10, align 8, !dbg !1175
  %13 = load i32, i32* %3, align 4, !dbg !1176
  switch i32 %13, label %21 [
    i32 2, label %14
    i32 3, label %19
  ], !dbg !1177

; <label>:14:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0)), !dbg !1178
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1180
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1181
  %17 = load i8*, i8** %16, align 8, !dbg !1182
  %18 = getelementptr inbounds i8, i8* %17, i64 576, !dbg !1182
  store i8* %18, i8** %16, align 8, !dbg !1182
  br label %23, !dbg !1183

; <label>:19:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0)), !dbg !1184
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1185
  call void @process_ts_logon_info_extended(%struct.stream* %20), !dbg !1186
  br label %23, !dbg !1187

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %3, align 4, !dbg !1188
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), i32 %22), !dbg !1189
  br label %23, !dbg !1190

; <label>:23:                                     ; preds = %21, %19, %14
  ret void, !dbg !1191
}

; Function Attrs: nounwind uwtable
define internal void @process_ts_logon_info_extended(%struct.stream*) #0 !dbg !1192 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1193, metadata !164), !dbg !1194
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1195, metadata !164), !dbg !1196
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1197, metadata !164), !dbg !1198
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1199, metadata !164), !dbg !1200
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.process_ts_logon_info_extended, i32 0, i32 0)), !dbg !1201
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1202
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !1203
  %8 = load i8*, i8** %7, align 8, !dbg !1204
  %9 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !1204
  store i8* %9, i8** %7, align 8, !dbg !1204
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1205
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !1207
  %12 = load i8*, i8** %11, align 8, !dbg !1207
  %13 = bitcast i8* %12 to i32*, !dbg !1208
  %14 = load i32, i32* %13, align 4, !dbg !1208
  store i32 %14, i32* %3, align 4, !dbg !1209
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1210
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1211
  %17 = load i8*, i8** %16, align 8, !dbg !1212
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1212
  store i8* %18, i8** %16, align 8, !dbg !1212
  %19 = load i32, i32* %3, align 4, !dbg !1213
  %20 = and i32 %19, 1, !dbg !1215
  %21 = icmp ne i32 %20, 0, !dbg !1215
  br i1 %21, label %22, label %72, !dbg !1216

; <label>:22:                                     ; preds = %1
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1217
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !1219
  %25 = load i8*, i8** %24, align 8, !dbg !1220
  %26 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !1220
  store i8* %26, i8** %24, align 8, !dbg !1220
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1221
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !1223
  %29 = load i8*, i8** %28, align 8, !dbg !1223
  %30 = bitcast i8* %29 to i32*, !dbg !1224
  %31 = load i32, i32* %30, align 4, !dbg !1224
  store i32 %31, i32* %4, align 4, !dbg !1225
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1226
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !1227
  %34 = load i8*, i8** %33, align 8, !dbg !1228
  %35 = getelementptr inbounds i8, i8* %34, i64 4, !dbg !1228
  store i8* %35, i8** %33, align 8, !dbg !1228
  %36 = load i32, i32* %4, align 4, !dbg !1229
  %37 = icmp ne i32 %36, 28, !dbg !1231
  br i1 %37, label %38, label %39, !dbg !1232

; <label>:38:                                     ; preds = %22
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0)), !dbg !1233
  br label %72, !dbg !1235

; <label>:39:                                     ; preds = %22
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1236
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !1238
  %42 = load i8*, i8** %41, align 8, !dbg !1238
  %43 = bitcast i8* %42 to i32*, !dbg !1239
  %44 = load i32, i32* %43, align 4, !dbg !1239
  store i32 %44, i32* %5, align 4, !dbg !1240
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1241
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !1242
  %47 = load i8*, i8** %46, align 8, !dbg !1243
  %48 = getelementptr inbounds i8, i8* %47, i64 4, !dbg !1243
  store i8* %48, i8** %46, align 8, !dbg !1243
  %49 = load i32, i32* %5, align 4, !dbg !1244
  %50 = icmp ne i32 %49, 1, !dbg !1246
  br i1 %50, label %51, label %52, !dbg !1247

; <label>:51:                                     ; preds = %39
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i32 0, i32 0)), !dbg !1248
  br label %72, !dbg !1250

; <label>:52:                                     ; preds = %39
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1251
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !1253
  %55 = load i8*, i8** %54, align 8, !dbg !1253
  %56 = bitcast i8* %55 to i32*, !dbg !1254
  %57 = load i32, i32* %56, align 4, !dbg !1254
  store i32 %57, i32* @g_reconnect_logonid, align 4, !dbg !1255
  %58 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1256
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !1257
  %60 = load i8*, i8** %59, align 8, !dbg !1258
  %61 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !1258
  store i8* %61, i8** %59, align 8, !dbg !1258
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1259
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !1261
  %64 = load i8*, i8** %63, align 8, !dbg !1261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_reconnect_random, i32 0, i32 0), i8* %64, i64 16, i32 1, i1 false), !dbg !1262
  %65 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1263
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !1264
  %67 = load i8*, i8** %66, align 8, !dbg !1265
  %68 = getelementptr inbounds i8, i8* %67, i64 16, !dbg !1265
  store i8* %68, i8** %66, align 8, !dbg !1265
  store i32 1, i32* @g_has_reconnect_random, align 4, !dbg !1266
  %69 = call i64 @time(i64* null) #9, !dbg !1267
  store i64 %69, i64* @g_reconnect_random_ts, align 8, !dbg !1268
  %70 = load i32, i32* @g_reconnect_logonid, align 4, !dbg !1269
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i32 0, i32 0), i32 %70), !dbg !1270
  %71 = call i32 @gettimeofday(%struct.timeval* @g_pending_resize_defer_timer, %struct.timezone* null) #9, !dbg !1271
  br label %72, !dbg !1272

; <label>:72:                                     ; preds = %38, %51, %52, %1
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define void @rdp_main_loop(i32*, i32*) #0 !dbg !1274 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1278, metadata !164), !dbg !1279
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1280, metadata !164), !dbg !1281
  br label %5, !dbg !1282, !llvm.loop !1283

; <label>:5:                                      ; preds = %12, %2
  %6 = load i32*, i32** %3, align 8, !dbg !1284
  %7 = load i32*, i32** %4, align 8, !dbg !1287
  %8 = call i32 @rdp_loop(i32* %6, i32* %7), !dbg !1288
  %9 = icmp eq i32 %8, 0, !dbg !1289
  br i1 %9, label %10, label %11, !dbg !1290

; <label>:10:                                     ; preds = %5
  store i32 1, i32* @g_exit_mainloop, align 4, !dbg !1291
  br label %11, !dbg !1293

; <label>:11:                                     ; preds = %10, %5
  br label %12, !dbg !1294

; <label>:12:                                     ; preds = %11
  %13 = load i32, i32* @g_exit_mainloop, align 4, !dbg !1295
  %14 = icmp eq i32 %13, 0, !dbg !1297
  br i1 %14, label %5, label %15, !dbg !1298, !llvm.loop !1283

; <label>:15:                                     ; preds = %12
  ret void, !dbg !1299
}

; Function Attrs: nounwind uwtable
define i32 @rdp_loop(i32*, i32*) #0 !dbg !1300 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1303, metadata !164), !dbg !1304
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1305, metadata !164), !dbg !1306
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1307, metadata !164), !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1309, metadata !164), !dbg !1310
  store i32 1, i32* %7, align 4, !dbg !1310
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !1311, metadata !164), !dbg !1312
  br label %9, !dbg !1313

; <label>:9:                                      ; preds = %53, %39, %2
  %10 = load i32, i32* @g_exit_mainloop, align 4, !dbg !1314
  %11 = icmp eq i32 %10, 0, !dbg !1316
  br i1 %11, label %12, label %15, !dbg !1317

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4, !dbg !1318
  %14 = icmp ne i32 %13, 0, !dbg !1320
  br label %15

; <label>:15:                                     ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %60, !dbg !1321

; <label>:17:                                     ; preds = %15
  %18 = call %struct.stream* @rdp_recv(i8* %6), !dbg !1323
  store %struct.stream* %18, %struct.stream** %8, align 8, !dbg !1325
  %19 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1326
  %20 = icmp eq %struct.stream* %19, null, !dbg !1328
  br i1 %20, label %21, label %22, !dbg !1329

; <label>:21:                                     ; preds = %17
  store i32 0, i32* %3, align 4, !dbg !1330
  br label %61, !dbg !1330

; <label>:22:                                     ; preds = %17
  %23 = load i8, i8* %6, align 1, !dbg !1331
  %24 = zext i8 %23 to i32, !dbg !1331
  switch i32 %24, label %50 [
    i32 1, label %25
    i32 6, label %28
    i32 4, label %30
    i32 10, label %30
    i32 7, label %41
  ], !dbg !1332

; <label>:25:                                     ; preds = %22
  %26 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1333
  call void @process_demand_active(%struct.stream* %26), !dbg !1335
  %27 = load i32*, i32** %4, align 8, !dbg !1336
  store i32 0, i32* %27, align 4, !dbg !1337
  br label %53, !dbg !1338

; <label>:28:                                     ; preds = %22
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0)), !dbg !1339
  %29 = load i32*, i32** %4, align 8, !dbg !1340
  store i32 1, i32* %29, align 4, !dbg !1341
  store i64 0, i64* @g_wait_for_deactivate_ts, align 8, !dbg !1342
  br label %53, !dbg !1343

; <label>:30:                                     ; preds = %22, %22
  %31 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1344
  %32 = load i8, i8* %6, align 1, !dbg !1346
  %33 = zext i8 %32 to i32, !dbg !1346
  %34 = icmp eq i32 %33, 4, !dbg !1347
  %35 = xor i1 %34, true, !dbg !1348
  %36 = zext i1 %35 to i32, !dbg !1348
  %37 = call i32 @process_redirect_pdu(%struct.stream* %31, i32 %36), !dbg !1349
  %38 = icmp eq i32 %37, 1, !dbg !1350
  br i1 %38, label %39, label %40, !dbg !1351

; <label>:39:                                     ; preds = %30
  store i32 1, i32* @g_exit_mainloop, align 4, !dbg !1352
  br label %9, !dbg !1354, !llvm.loop !1355

; <label>:40:                                     ; preds = %30
  br label %53, !dbg !1356

; <label>:41:                                     ; preds = %22
  %42 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i64 0, i64 0), align 16, !dbg !1357
  %43 = sext i8 %42 to i32, !dbg !1357
  %44 = icmp ne i32 %43, 0, !dbg !1359
  br i1 %44, label %45, label %46, !dbg !1360

; <label>:45:                                     ; preds = %41
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @g_password, i32 0, i32 0), i8 0, i64 64, i32 16, i1 false), !dbg !1361
  br label %46, !dbg !1361

; <label>:46:                                     ; preds = %45, %41
  %47 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1362
  %48 = load i32*, i32** %5, align 8, !dbg !1363
  %49 = call i32 @process_data_pdu(%struct.stream* %47, i32* %48), !dbg !1364
  br label %53, !dbg !1365

; <label>:50:                                     ; preds = %22
  %51 = load i8, i8* %6, align 1, !dbg !1366
  %52 = zext i8 %51 to i32, !dbg !1366
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %52), !dbg !1367
  br label %53, !dbg !1368

; <label>:53:                                     ; preds = %50, %46, %40, %28, %25
  %54 = load i8*, i8** @g_next_packet, align 8, !dbg !1369
  %55 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1370
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 1, !dbg !1371
  %57 = load i8*, i8** %56, align 8, !dbg !1371
  %58 = icmp ult i8* %54, %57, !dbg !1372
  %59 = zext i1 %58 to i32, !dbg !1372
  store i32 %59, i32* %7, align 4, !dbg !1373
  br label %9, !dbg !1374, !llvm.loop !1355

; <label>:60:                                     ; preds = %15
  store i32 1, i32* %3, align 4, !dbg !1376
  br label %61, !dbg !1376

; <label>:61:                                     ; preds = %60, %21
  %62 = load i32, i32* %3, align 4, !dbg !1377
  ret i32 %62, !dbg !1377
}

; Function Attrs: nounwind uwtable
define internal %struct.stream* @rdp_recv(i8*) #0 !dbg !151 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1378, metadata !164), !dbg !1379
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1380, metadata !164), !dbg !1381
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1382, metadata !164), !dbg !1383
  br label %6, !dbg !1384

; <label>:6:                                      ; preds = %1, %26, %41
  %7 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1385
  %8 = icmp eq %struct.stream* %7, null, !dbg !1388
  br i1 %8, label %18, label %9, !dbg !1389

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** @g_next_packet, align 8, !dbg !1390
  %11 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1392
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1393
  %13 = load i8*, i8** %12, align 8, !dbg !1393
  %14 = icmp uge i8* %10, %13, !dbg !1394
  br i1 %14, label %18, label %15, !dbg !1395

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** @g_next_packet, align 8, !dbg !1396
  %17 = icmp eq i8* %16, null, !dbg !1398
  br i1 %17, label %18, label %32, !dbg !1399

; <label>:18:                                     ; preds = %15, %9, %6
  %19 = call %struct.stream* @sec_recv(i32* %4), !dbg !1400
  store %struct.stream* %19, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1402
  %20 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1403
  %21 = icmp eq %struct.stream* %20, null, !dbg !1405
  br i1 %21, label %22, label %23, !dbg !1406

; <label>:22:                                     ; preds = %18
  store %struct.stream* null, %struct.stream** %2, align 8, !dbg !1407
  br label %55, !dbg !1407

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %4, align 4, !dbg !1408
  %25 = icmp eq i32 %24, 1, !dbg !1410
  br i1 %25, label %26, label %28, !dbg !1411

; <label>:26:                                     ; preds = %23
  %27 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1412
  call void @process_ts_fp_updates(%struct.stream* %27), !dbg !1414
  br label %6, !dbg !1415, !llvm.loop !1416

; <label>:28:                                     ; preds = %23
  %29 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1417
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !1418
  %31 = load i8*, i8** %30, align 8, !dbg !1418
  store i8* %31, i8** @g_next_packet, align 8, !dbg !1419
  br label %36, !dbg !1420

; <label>:32:                                     ; preds = %15
  %33 = load i8*, i8** @g_next_packet, align 8, !dbg !1421
  %34 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1423
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !1424
  store i8* %33, i8** %35, align 8, !dbg !1425
  br label %36

; <label>:36:                                     ; preds = %32, %28
  %37 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1426
  %38 = load i8*, i8** %3, align 8, !dbg !1428
  %39 = call i32 @rdp_ts_in_share_control_header(%struct.stream* %37, i8* %38, i16* %5), !dbg !1429
  %40 = icmp eq i32 %39, 0, !dbg !1430
  br i1 %40, label %41, label %42, !dbg !1431

; <label>:41:                                     ; preds = %36
  br label %6, !dbg !1432, !llvm.loop !1416

; <label>:42:                                     ; preds = %36
  br label %43, !dbg !1433

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* @g_packetno, align 4, !dbg !1434
  %45 = add i32 %44, 1, !dbg !1434
  store i32 %45, i32* @g_packetno, align 4, !dbg !1434
  %46 = load i8*, i8** %3, align 8, !dbg !1435
  %47 = load i8, i8* %46, align 1, !dbg !1436
  %48 = zext i8 %47 to i32, !dbg !1436
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i32 %45, i32 %48), !dbg !1437
  %49 = load i16, i16* %5, align 2, !dbg !1438
  %50 = zext i16 %49 to i32, !dbg !1438
  %51 = load i8*, i8** @g_next_packet, align 8, !dbg !1439
  %52 = sext i32 %50 to i64, !dbg !1439
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !1439
  store i8* %53, i8** @g_next_packet, align 8, !dbg !1439
  %54 = load %struct.stream*, %struct.stream** @rdp_recv.rdp_s, align 8, !dbg !1440
  store %struct.stream* %54, %struct.stream** %2, align 8, !dbg !1441
  br label %55, !dbg !1441

; <label>:55:                                     ; preds = %43, %22
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1442
  ret %struct.stream* %56, !dbg !1442
}

; Function Attrs: nounwind uwtable
define internal void @process_demand_active(%struct.stream*) #0 !dbg !1443 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !1444, metadata !164), !dbg !1445
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1446, metadata !164), !dbg !1447
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1448, metadata !164), !dbg !1449
  call void @llvm.dbg.declare(metadata i16* %5, metadata !1450, metadata !164), !dbg !1451
  call void @rd_create_ui(), !dbg !1452
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1453
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !1455
  %8 = load i8*, i8** %7, align 8, !dbg !1455
  %9 = bitcast i8* %8 to i32*, !dbg !1456
  %10 = load i32, i32* %9, align 4, !dbg !1456
  store i32 %10, i32* @g_rdp_shareid, align 4, !dbg !1457
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1458
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1459
  %13 = load i8*, i8** %12, align 8, !dbg !1460
  %14 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1460
  store i8* %14, i8** %12, align 8, !dbg !1460
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1461
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1463
  %17 = load i8*, i8** %16, align 8, !dbg !1463
  %18 = bitcast i8* %17 to i16*, !dbg !1464
  %19 = load i16, i16* %18, align 2, !dbg !1464
  store i16 %19, i16* %4, align 2, !dbg !1465
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1466
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !1467
  %22 = load i8*, i8** %21, align 8, !dbg !1468
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !1468
  store i8* %23, i8** %21, align 8, !dbg !1468
  %24 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1469
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !1471
  %26 = load i8*, i8** %25, align 8, !dbg !1471
  %27 = bitcast i8* %26 to i16*, !dbg !1472
  %28 = load i16, i16* %27, align 2, !dbg !1472
  store i16 %28, i16* %5, align 2, !dbg !1473
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1474
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !1475
  %31 = load i8*, i8** %30, align 8, !dbg !1476
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !1476
  store i8* %32, i8** %30, align 8, !dbg !1476
  %33 = load i16, i16* %4, align 2, !dbg !1477
  %34 = zext i16 %33 to i32, !dbg !1477
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1478
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !1479
  %37 = load i8*, i8** %36, align 8, !dbg !1480
  %38 = sext i32 %34 to i64, !dbg !1480
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !1480
  store i8* %39, i8** %36, align 8, !dbg !1480
  %40 = load i32, i32* @g_rdp_shareid, align 4, !dbg !1481
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i32 %40), !dbg !1482
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !1483
  %42 = load i16, i16* %5, align 2, !dbg !1484
  call void @rdp_process_server_caps(%struct.stream* %41, i16 zeroext %42), !dbg !1485
  call void @rdp_send_confirm_active(), !dbg !1486
  call void @rdp_send_synchronise(), !dbg !1487
  call void @rdp_send_control(i16 zeroext 4), !dbg !1488
  call void @rdp_send_control(i16 zeroext 1), !dbg !1489
  %43 = call %struct.stream* @rdp_recv(i8* %3), !dbg !1490
  %44 = call %struct.stream* @rdp_recv(i8* %3), !dbg !1491
  %45 = call %struct.stream* @rdp_recv(i8* %3), !dbg !1492
  %46 = load i32, i32* @g_numlock_sync, align 4, !dbg !1493
  %47 = icmp ne i32 %46, 0, !dbg !1493
  br i1 %47, label %48, label %52, !dbg !1493

; <label>:48:                                     ; preds = %1
  %49 = call i32 @read_keyboard_state(), !dbg !1494
  %50 = call zeroext i16 @ui_get_numlock_state(i32 %49), !dbg !1496
  %51 = zext i16 %50 to i32, !dbg !1498
  br label %53, !dbg !1499

; <label>:52:                                     ; preds = %1
  br label %53, !dbg !1500

; <label>:53:                                     ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ], !dbg !1502
  %55 = trunc i32 %54 to i16, !dbg !1502
  call void @rdp_send_input(i32 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext %55, i16 zeroext 0), !dbg !1504
  %56 = load i32, i32* @g_rdp_version, align 4, !dbg !1505
  %57 = icmp uge i32 %56, 5, !dbg !1507
  br i1 %57, label %58, label %59, !dbg !1508

; <label>:58:                                     ; preds = %53
  call void @rdp_enum_bmpcache2(), !dbg !1509
  call void @rdp_send_fonts(i16 zeroext 3), !dbg !1511
  br label %60, !dbg !1512

; <label>:59:                                     ; preds = %53
  call void @rdp_send_fonts(i16 zeroext 1), !dbg !1513
  call void @rdp_send_fonts(i16 zeroext 2), !dbg !1515
  br label %60

; <label>:60:                                     ; preds = %59, %58
  %61 = call %struct.stream* @rdp_recv(i8* %3), !dbg !1516
  call void @reset_order_state(), !dbg !1517
  ret void, !dbg !1518
}

; Function Attrs: nounwind uwtable
define internal i32 @process_redirect_pdu(%struct.stream*, i32) #0 !dbg !1519 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !1522, metadata !164), !dbg !1523
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1524, metadata !164), !dbg !1525
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1526, metadata !164), !dbg !1527
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1528, metadata !164), !dbg !1529
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_redirect_pdu, i32 0, i32 0)), !dbg !1530
  store i32 1, i32* @g_redirect, align 4, !dbg !1531
  %7 = load i8*, i8** @g_redirect_server, align 8, !dbg !1532
  call void @free(i8* %7) #9, !dbg !1533
  %8 = load i8*, i8** @g_redirect_username, align 8, !dbg !1534
  call void @free(i8* %8) #9, !dbg !1535
  %9 = load i8*, i8** @g_redirect_domain, align 8, !dbg !1536
  call void @free(i8* %9) #9, !dbg !1537
  %10 = load i8*, i8** @g_redirect_lb_info, align 8, !dbg !1538
  call void @free(i8* %10) #9, !dbg !1539
  %11 = load i8*, i8** @g_redirect_cookie, align 8, !dbg !1540
  call void @free(i8* %11) #9, !dbg !1541
  store i8* null, i8** @g_redirect_server, align 8, !dbg !1542
  store i8* null, i8** @g_redirect_username, align 8, !dbg !1543
  store i8* null, i8** @g_redirect_domain, align 8, !dbg !1544
  store i8* null, i8** @g_redirect_lb_info, align 8, !dbg !1545
  store i8* null, i8** @g_redirect_cookie, align 8, !dbg !1546
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1547
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !1548
  %14 = load i8*, i8** %13, align 8, !dbg !1549
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1549
  store i8* %15, i8** %13, align 8, !dbg !1549
  %16 = load i32, i32* %4, align 4, !dbg !1550
  %17 = icmp ne i32 %16, 0, !dbg !1550
  br i1 %17, label %18, label %46, !dbg !1552

; <label>:18:                                     ; preds = %2
  %19 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1553
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !1556
  %21 = load i8*, i8** %20, align 8, !dbg !1556
  %22 = bitcast i8* %21 to i16*, !dbg !1557
  %23 = load i16, i16* %22, align 2, !dbg !1557
  store i16 %23, i16* %6, align 2, !dbg !1558
  %24 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1559
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !1560
  %26 = load i8*, i8** %25, align 8, !dbg !1561
  %27 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1561
  store i8* %27, i8** %25, align 8, !dbg !1561
  %28 = load i16, i16* %6, align 2, !dbg !1562
  %29 = zext i16 %28 to i32, !dbg !1562
  %30 = icmp ne i32 %29, 1024, !dbg !1564
  br i1 %30, label %31, label %32, !dbg !1565

; <label>:31:                                     ; preds = %18
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0)), !dbg !1566
  br label %32, !dbg !1566

; <label>:32:                                     ; preds = %31, %18
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1567
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !1568
  %35 = load i8*, i8** %34, align 8, !dbg !1569
  %36 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !1569
  store i8* %36, i8** %34, align 8, !dbg !1569
  %37 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1570
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !1572
  %39 = load i8*, i8** %38, align 8, !dbg !1572
  %40 = bitcast i8* %39 to i32*, !dbg !1573
  %41 = load i32, i32* %40, align 4, !dbg !1573
  store i32 %41, i32* @g_redirect_session_id, align 4, !dbg !1574
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1575
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !1576
  %44 = load i8*, i8** %43, align 8, !dbg !1577
  %45 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !1577
  store i8* %45, i8** %43, align 8, !dbg !1577
  br label %46, !dbg !1578

; <label>:46:                                     ; preds = %32, %2
  %47 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1579
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !1581
  %49 = load i8*, i8** %48, align 8, !dbg !1581
  %50 = bitcast i8* %49 to i32*, !dbg !1582
  %51 = load i32, i32* %50, align 4, !dbg !1582
  store i32 %51, i32* @g_redirect_flags, align 4, !dbg !1583
  %52 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1584
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !1585
  %54 = load i8*, i8** %53, align 8, !dbg !1586
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1586
  store i8* %55, i8** %53, align 8, !dbg !1586
  %56 = load i32, i32* @g_redirect_flags, align 4, !dbg !1587
  %57 = and i32 %56, 1, !dbg !1589
  %58 = icmp ne i32 %57, 0, !dbg !1589
  br i1 %58, label %59, label %71, !dbg !1590

; <label>:59:                                     ; preds = %46
  %60 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1591
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !1594
  %62 = load i8*, i8** %61, align 8, !dbg !1594
  %63 = bitcast i8* %62 to i32*, !dbg !1595
  %64 = load i32, i32* %63, align 4, !dbg !1595
  store i32 %64, i32* %5, align 4, !dbg !1596
  %65 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1597
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !1598
  %67 = load i8*, i8** %66, align 8, !dbg !1599
  %68 = getelementptr inbounds i8, i8* %67, i64 4, !dbg !1599
  store i8* %68, i8** %66, align 8, !dbg !1599
  %69 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1600
  %70 = load i32, i32* %5, align 4, !dbg !1601
  call void @rdp_in_unistr(%struct.stream* %69, i32 %70, i8** @g_redirect_server, i32* @g_redirect_server_len), !dbg !1602
  br label %71, !dbg !1603

; <label>:71:                                     ; preds = %59, %46
  %72 = load i32, i32* @g_redirect_flags, align 4, !dbg !1604
  %73 = and i32 %72, 2, !dbg !1606
  %74 = icmp ne i32 %73, 0, !dbg !1606
  br i1 %74, label %75, label %101, !dbg !1607

; <label>:75:                                     ; preds = %71
  %76 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1608
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !1611
  %78 = load i8*, i8** %77, align 8, !dbg !1611
  %79 = bitcast i8* %78 to i32*, !dbg !1612
  %80 = load i32, i32* %79, align 4, !dbg !1612
  store i32 %80, i32* @g_redirect_lb_info_len, align 4, !dbg !1613
  %81 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1614
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !1615
  %83 = load i8*, i8** %82, align 8, !dbg !1616
  %84 = getelementptr inbounds i8, i8* %83, i64 4, !dbg !1616
  store i8* %84, i8** %82, align 8, !dbg !1616
  %85 = load i8*, i8** @g_redirect_lb_info, align 8, !dbg !1617
  %86 = icmp ne i8* %85, null, !dbg !1619
  br i1 %86, label %87, label %89, !dbg !1620

; <label>:87:                                     ; preds = %75
  %88 = load i8*, i8** @g_redirect_lb_info, align 8, !dbg !1621
  call void @free(i8* %88) #9, !dbg !1622
  br label %89, !dbg !1622

; <label>:89:                                     ; preds = %87, %75
  %90 = load i32, i32* @g_redirect_lb_info_len, align 4, !dbg !1623
  %91 = call i8* @xmalloc(i32 %90), !dbg !1624
  store i8* %91, i8** @g_redirect_lb_info, align 8, !dbg !1625
  %92 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1626
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !1628
  %94 = load i8*, i8** %93, align 8, !dbg !1628
  store i8* %94, i8** @g_redirect_lb_info, align 8, !dbg !1629
  %95 = load i32, i32* @g_redirect_lb_info_len, align 4, !dbg !1630
  %96 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1631
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !1632
  %98 = load i8*, i8** %97, align 8, !dbg !1633
  %99 = zext i32 %95 to i64, !dbg !1633
  %100 = getelementptr inbounds i8, i8* %98, i64 %99, !dbg !1633
  store i8* %100, i8** %97, align 8, !dbg !1633
  br label %101, !dbg !1634

; <label>:101:                                    ; preds = %89, %71
  %102 = load i32, i32* @g_redirect_flags, align 4, !dbg !1635
  %103 = and i32 %102, 4, !dbg !1637
  %104 = icmp ne i32 %103, 0, !dbg !1637
  br i1 %104, label %105, label %117, !dbg !1638

; <label>:105:                                    ; preds = %101
  %106 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1639
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !1642
  %108 = load i8*, i8** %107, align 8, !dbg !1642
  %109 = bitcast i8* %108 to i32*, !dbg !1643
  %110 = load i32, i32* %109, align 4, !dbg !1643
  store i32 %110, i32* %5, align 4, !dbg !1644
  %111 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1645
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !1646
  %113 = load i8*, i8** %112, align 8, !dbg !1647
  %114 = getelementptr inbounds i8, i8* %113, i64 4, !dbg !1647
  store i8* %114, i8** %112, align 8, !dbg !1647
  %115 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1648
  %116 = load i32, i32* %5, align 4, !dbg !1649
  call void @rdp_in_unistr(%struct.stream* %115, i32 %116, i8** @g_redirect_username, i32* @g_redirect_username_len), !dbg !1650
  br label %117, !dbg !1651

; <label>:117:                                    ; preds = %105, %101
  %118 = load i32, i32* @g_redirect_flags, align 4, !dbg !1652
  %119 = and i32 %118, 8, !dbg !1654
  %120 = icmp ne i32 %119, 0, !dbg !1654
  br i1 %120, label %121, label %133, !dbg !1655

; <label>:121:                                    ; preds = %117
  %122 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1656
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !1659
  %124 = load i8*, i8** %123, align 8, !dbg !1659
  %125 = bitcast i8* %124 to i32*, !dbg !1660
  %126 = load i32, i32* %125, align 4, !dbg !1660
  store i32 %126, i32* %5, align 4, !dbg !1661
  %127 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1662
  %128 = getelementptr inbounds %struct.stream, %struct.stream* %127, i32 0, i32 0, !dbg !1663
  %129 = load i8*, i8** %128, align 8, !dbg !1664
  %130 = getelementptr inbounds i8, i8* %129, i64 4, !dbg !1664
  store i8* %130, i8** %128, align 8, !dbg !1664
  %131 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1665
  %132 = load i32, i32* %5, align 4, !dbg !1666
  call void @rdp_in_unistr(%struct.stream* %131, i32 %132, i8** @g_redirect_domain, i32* @g_redirect_domain_len), !dbg !1667
  br label %133, !dbg !1668

; <label>:133:                                    ; preds = %121, %117
  %134 = load i32, i32* @g_redirect_flags, align 4, !dbg !1669
  %135 = and i32 %134, 16, !dbg !1671
  %136 = icmp ne i32 %135, 0, !dbg !1671
  br i1 %136, label %137, label %164, !dbg !1672

; <label>:137:                                    ; preds = %133
  %138 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1673
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %138, i32 0, i32 0, !dbg !1676
  %140 = load i8*, i8** %139, align 8, !dbg !1676
  %141 = bitcast i8* %140 to i32*, !dbg !1677
  %142 = load i32, i32* %141, align 4, !dbg !1677
  store i32 %142, i32* @g_redirect_cookie_len, align 4, !dbg !1678
  %143 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1679
  %144 = getelementptr inbounds %struct.stream, %struct.stream* %143, i32 0, i32 0, !dbg !1680
  %145 = load i8*, i8** %144, align 8, !dbg !1681
  %146 = getelementptr inbounds i8, i8* %145, i64 4, !dbg !1681
  store i8* %146, i8** %144, align 8, !dbg !1681
  %147 = load i8*, i8** @g_redirect_cookie, align 8, !dbg !1682
  %148 = icmp ne i8* %147, null, !dbg !1684
  br i1 %148, label %149, label %151, !dbg !1685

; <label>:149:                                    ; preds = %137
  %150 = load i8*, i8** @g_redirect_cookie, align 8, !dbg !1686
  call void @free(i8* %150) #9, !dbg !1687
  br label %151, !dbg !1687

; <label>:151:                                    ; preds = %149, %137
  %152 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !1688
  %153 = call i8* @xmalloc(i32 %152), !dbg !1689
  store i8* %153, i8** @g_redirect_cookie, align 8, !dbg !1690
  %154 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1691
  %155 = getelementptr inbounds %struct.stream, %struct.stream* %154, i32 0, i32 0, !dbg !1693
  %156 = load i8*, i8** %155, align 8, !dbg !1693
  store i8* %156, i8** @g_redirect_cookie, align 8, !dbg !1694
  %157 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !1695
  %158 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1696
  %159 = getelementptr inbounds %struct.stream, %struct.stream* %158, i32 0, i32 0, !dbg !1697
  %160 = load i8*, i8** %159, align 8, !dbg !1698
  %161 = zext i32 %157 to i64, !dbg !1698
  %162 = getelementptr inbounds i8, i8* %160, i64 %161, !dbg !1698
  store i8* %162, i8** %159, align 8, !dbg !1698
  %163 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !1699
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i32 0, i32 0), i32 %163), !dbg !1700
  br label %164, !dbg !1701

; <label>:164:                                    ; preds = %151, %133
  %165 = load i32, i32* @g_redirect_flags, align 4, !dbg !1702
  %166 = and i32 %165, 32, !dbg !1704
  %167 = icmp ne i32 %166, 0, !dbg !1704
  br i1 %167, label %168, label %169, !dbg !1705

; <label>:168:                                    ; preds = %164
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.28, i32 0, i32 0)), !dbg !1706
  br label %169, !dbg !1708

; <label>:169:                                    ; preds = %168, %164
  %170 = load i32, i32* @g_redirect_flags, align 4, !dbg !1709
  %171 = and i32 %170, 64, !dbg !1711
  %172 = icmp ne i32 %171, 0, !dbg !1711
  br i1 %172, label %173, label %174, !dbg !1712

; <label>:173:                                    ; preds = %169
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i32 0, i32 0)), !dbg !1713
  br label %174, !dbg !1715

; <label>:174:                                    ; preds = %173, %169
  %175 = load i32, i32* @g_redirect_flags, align 4, !dbg !1716
  %176 = and i32 %175, 128, !dbg !1718
  %177 = icmp ne i32 %176, 0, !dbg !1718
  br i1 %177, label %178, label %179, !dbg !1719

; <label>:178:                                    ; preds = %174
  store i32 0, i32* @g_redirect, align 4, !dbg !1720
  br label %179, !dbg !1722

; <label>:179:                                    ; preds = %178, %174
  %180 = load i32, i32* @g_redirect_flags, align 4, !dbg !1723
  %181 = and i32 %180, 256, !dbg !1725
  %182 = icmp ne i32 %181, 0, !dbg !1725
  br i1 %182, label %183, label %200, !dbg !1726

; <label>:183:                                    ; preds = %179
  %184 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1727
  %185 = getelementptr inbounds %struct.stream, %struct.stream* %184, i32 0, i32 0, !dbg !1730
  %186 = load i8*, i8** %185, align 8, !dbg !1730
  %187 = bitcast i8* %186 to i32*, !dbg !1731
  %188 = load i32, i32* %187, align 4, !dbg !1731
  store i32 %188, i32* %5, align 4, !dbg !1732
  %189 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1733
  %190 = getelementptr inbounds %struct.stream, %struct.stream* %189, i32 0, i32 0, !dbg !1734
  %191 = load i8*, i8** %190, align 8, !dbg !1735
  %192 = getelementptr inbounds i8, i8* %191, i64 4, !dbg !1735
  store i8* %192, i8** %190, align 8, !dbg !1735
  %193 = load i8*, i8** @g_redirect_server, align 8, !dbg !1736
  %194 = icmp ne i8* %193, null, !dbg !1736
  br i1 %194, label %195, label %197, !dbg !1738

; <label>:195:                                    ; preds = %183
  %196 = load i8*, i8** @g_redirect_server, align 8, !dbg !1739
  call void @free(i8* %196) #9, !dbg !1741
  store i8* null, i8** @g_redirect_server, align 8, !dbg !1742
  br label %197, !dbg !1743

; <label>:197:                                    ; preds = %195, %183
  %198 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1744
  %199 = load i32, i32* %5, align 4, !dbg !1745
  call void @rdp_in_unistr(%struct.stream* %198, i32 %199, i8** @g_redirect_server, i32* @g_redirect_server_len), !dbg !1746
  br label %200, !dbg !1747

; <label>:200:                                    ; preds = %197, %179
  %201 = load i32, i32* @g_redirect_flags, align 4, !dbg !1748
  %202 = and i32 %201, 512, !dbg !1750
  %203 = icmp ne i32 %202, 0, !dbg !1750
  br i1 %203, label %204, label %205, !dbg !1751

; <label>:204:                                    ; preds = %200
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i32 0, i32 0)), !dbg !1752
  br label %205, !dbg !1754

; <label>:205:                                    ; preds = %204, %200
  %206 = load i32, i32* @g_redirect_flags, align 4, !dbg !1755
  %207 = and i32 %206, 2048, !dbg !1757
  %208 = icmp ne i32 %207, 0, !dbg !1757
  br i1 %208, label %209, label %210, !dbg !1758

; <label>:209:                                    ; preds = %205
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0)), !dbg !1759
  br label %210, !dbg !1761

; <label>:210:                                    ; preds = %209, %205
  %211 = load i32, i32* @g_redirect_flags, align 4, !dbg !1762
  %212 = and i32 %211, 4096, !dbg !1764
  %213 = icmp ne i32 %212, 0, !dbg !1764
  br i1 %213, label %214, label %215, !dbg !1765

; <label>:214:                                    ; preds = %210
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0)), !dbg !1766
  br label %215, !dbg !1768

; <label>:215:                                    ; preds = %214, %210
  %216 = load i32, i32* @g_redirect_flags, align 4, !dbg !1769
  %217 = and i32 %216, 8192, !dbg !1771
  %218 = icmp ne i32 %217, 0, !dbg !1771
  br i1 %218, label %219, label %220, !dbg !1772

; <label>:219:                                    ; preds = %215
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0)), !dbg !1773
  br label %220, !dbg !1775

; <label>:220:                                    ; preds = %219, %215
  %221 = load i32, i32* @g_redirect_flags, align 4, !dbg !1776
  %222 = and i32 %221, 16384, !dbg !1778
  %223 = icmp ne i32 %222, 0, !dbg !1778
  br i1 %223, label %224, label %225, !dbg !1779

; <label>:224:                                    ; preds = %220
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.34, i32 0, i32 0)), !dbg !1780
  br label %225, !dbg !1782

; <label>:225:                                    ; preds = %224, %220
  %226 = load i32, i32* @g_redirect_flags, align 4, !dbg !1783
  %227 = and i32 %226, 32768, !dbg !1785
  %228 = icmp ne i32 %227, 0, !dbg !1785
  br i1 %228, label %229, label %230, !dbg !1786

; <label>:229:                                    ; preds = %225
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0)), !dbg !1787
  br label %230, !dbg !1789

; <label>:230:                                    ; preds = %229, %225
  %231 = load i32, i32* @g_redirect_flags, align 4, !dbg !1790
  %232 = and i32 %231, 65536, !dbg !1792
  %233 = icmp ne i32 %232, 0, !dbg !1792
  br i1 %233, label %234, label %235, !dbg !1793

; <label>:234:                                    ; preds = %230
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i32 0, i32 0)), !dbg !1794
  br label %235, !dbg !1796

; <label>:235:                                    ; preds = %234, %230
  %236 = load i32, i32* @g_redirect, align 4, !dbg !1797
  ret i32 %236, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal i32 @process_data_pdu(%struct.stream*, i32*) #0 !dbg !1799 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !1802, metadata !164), !dbg !1803
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1804, metadata !164), !dbg !1805
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1806, metadata !164), !dbg !1807
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1808, metadata !164), !dbg !1809
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1810, metadata !164), !dbg !1811
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1812, metadata !164), !dbg !1813
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1814, metadata !164), !dbg !1815
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1816, metadata !164), !dbg !1817
  call void @llvm.dbg.declare(metadata %struct.stream** %11, metadata !1818, metadata !164), !dbg !1819
  store %struct.stream* getelementptr inbounds (%struct._RDPCOMP, %struct._RDPCOMP* @g_mppc_dict, i32 0, i32 2), %struct.stream** %11, align 8, !dbg !1819
  %12 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1820
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !1821
  %14 = load i8*, i8** %13, align 8, !dbg !1822
  %15 = getelementptr inbounds i8, i8* %14, i64 6, !dbg !1822
  store i8* %15, i8** %13, align 8, !dbg !1822
  %16 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1823
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !1825
  %18 = load i8*, i8** %17, align 8, !dbg !1825
  %19 = bitcast i8* %18 to i16*, !dbg !1826
  %20 = load i16, i16* %19, align 2, !dbg !1826
  %21 = zext i16 %20 to i32, !dbg !1826
  store i32 %21, i32* %8, align 4, !dbg !1827
  %22 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1828
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !1829
  %24 = load i8*, i8** %23, align 8, !dbg !1830
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !1830
  store i8* %25, i8** %23, align 8, !dbg !1830
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1831
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !1832
  %28 = load i8*, i8** %27, align 8, !dbg !1833
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1833
  store i8* %29, i8** %27, align 8, !dbg !1833
  %30 = load i8, i8* %28, align 1, !dbg !1834
  store i8 %30, i8* %5, align 1, !dbg !1835
  %31 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1836
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !1837
  %33 = load i8*, i8** %32, align 8, !dbg !1838
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !1838
  store i8* %34, i8** %32, align 8, !dbg !1838
  %35 = load i8, i8* %33, align 1, !dbg !1839
  store i8 %35, i8* %6, align 1, !dbg !1840
  %36 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1841
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !1843
  %38 = load i8*, i8** %37, align 8, !dbg !1843
  %39 = bitcast i8* %38 to i16*, !dbg !1844
  %40 = load i16, i16* %39, align 2, !dbg !1844
  store i16 %40, i16* %7, align 2, !dbg !1845
  %41 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1846
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !1847
  %43 = load i8*, i8** %42, align 8, !dbg !1848
  %44 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !1848
  store i8* %44, i8** %42, align 8, !dbg !1848
  %45 = load i16, i16* %7, align 2, !dbg !1849
  %46 = zext i16 %45 to i32, !dbg !1849
  %47 = sub nsw i32 %46, 18, !dbg !1849
  %48 = trunc i32 %47 to i16, !dbg !1849
  store i16 %48, i16* %7, align 2, !dbg !1849
  %49 = load i8, i8* %6, align 1, !dbg !1850
  %50 = zext i8 %49 to i32, !dbg !1850
  %51 = and i32 %50, 32, !dbg !1852
  %52 = icmp ne i32 %51, 0, !dbg !1852
  br i1 %52, label %53, label %108, !dbg !1853

; <label>:53:                                     ; preds = %2
  %54 = load i32, i32* %8, align 4, !dbg !1854
  %55 = icmp ugt i32 %54, 65536, !dbg !1857
  br i1 %55, label %56, label %57, !dbg !1858

; <label>:56:                                     ; preds = %53
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i32 0, i32 0)), !dbg !1859
  br label %57, !dbg !1859

; <label>:57:                                     ; preds = %56, %53
  %58 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1860
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !1862
  %60 = load i8*, i8** %59, align 8, !dbg !1862
  %61 = load i16, i16* %7, align 2, !dbg !1863
  %62 = zext i16 %61 to i32, !dbg !1863
  %63 = load i8, i8* %6, align 1, !dbg !1864
  %64 = call i32 @mppc_expand(i8* %60, i32 %62, i8 zeroext %63, i32* %9, i32* %10), !dbg !1865
  %65 = icmp eq i32 %64, -1, !dbg !1866
  br i1 %65, label %66, label %67, !dbg !1867

; <label>:66:                                     ; preds = %57
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0)), !dbg !1868
  br label %67, !dbg !1868

; <label>:67:                                     ; preds = %66, %57
  %68 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1869
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 2, !dbg !1870
  %70 = load i8*, i8** %69, align 8, !dbg !1870
  %71 = load i32, i32* %10, align 4, !dbg !1871
  %72 = zext i32 %71 to i64, !dbg !1871
  %73 = call i8* @xrealloc(i8* %70, i64 %72), !dbg !1872
  %74 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1873
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 2, !dbg !1874
  store i8* %73, i8** %75, align 8, !dbg !1875
  %76 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1876
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 2, !dbg !1877
  %78 = load i8*, i8** %77, align 8, !dbg !1877
  %79 = load i32, i32* %9, align 4, !dbg !1878
  %80 = zext i32 %79 to i64, !dbg !1879
  %81 = getelementptr inbounds i8, i8* getelementptr inbounds (%struct._RDPCOMP, %struct._RDPCOMP* @g_mppc_dict, i32 0, i32 1, i32 0), i64 %80, !dbg !1879
  %82 = load i32, i32* %10, align 4, !dbg !1880
  %83 = zext i32 %82 to i64, !dbg !1880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %81, i64 %83, i32 1, i1 false), !dbg !1881
  %84 = load i32, i32* %10, align 4, !dbg !1882
  %85 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1883
  %86 = getelementptr inbounds %struct.stream, %struct.stream* %85, i32 0, i32 3, !dbg !1884
  store i32 %84, i32* %86, align 8, !dbg !1885
  %87 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1886
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 2, !dbg !1887
  %89 = load i8*, i8** %88, align 8, !dbg !1887
  %90 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1888
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 3, !dbg !1889
  %92 = load i32, i32* %91, align 8, !dbg !1889
  %93 = zext i32 %92 to i64, !dbg !1890
  %94 = getelementptr inbounds i8, i8* %89, i64 %93, !dbg !1890
  %95 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1891
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 1, !dbg !1892
  store i8* %94, i8** %96, align 8, !dbg !1893
  %97 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1894
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 2, !dbg !1895
  %99 = load i8*, i8** %98, align 8, !dbg !1895
  %100 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1896
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !1897
  store i8* %99, i8** %101, align 8, !dbg !1898
  %102 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1899
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %102, i32 0, i32 0, !dbg !1900
  %104 = load i8*, i8** %103, align 8, !dbg !1900
  %105 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1901
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 7, !dbg !1902
  store i8* %104, i8** %106, align 8, !dbg !1903
  %107 = load %struct.stream*, %struct.stream** %11, align 8, !dbg !1904
  store %struct.stream* %107, %struct.stream** %3, align 8, !dbg !1905
  br label %108, !dbg !1906

; <label>:108:                                    ; preds = %67, %2
  %109 = load i8, i8* %5, align 1, !dbg !1907
  %110 = zext i8 %109 to i32, !dbg !1907
  switch i32 %110, label %124 [
    i32 2, label %111
    i32 20, label %113
    i32 31, label %114
    i32 27, label %115
    i32 34, label %117
    i32 38, label %118
    i32 47, label %120
    i32 50, label %123
  ], !dbg !1908

; <label>:111:                                    ; preds = %108
  %112 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1909
  call void @process_update_pdu(%struct.stream* %112), !dbg !1911
  br label %127, !dbg !1912

; <label>:113:                                    ; preds = %108
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0)), !dbg !1913
  br label %127, !dbg !1914

; <label>:114:                                    ; preds = %108
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0)), !dbg !1915
  br label %127, !dbg !1916

; <label>:115:                                    ; preds = %108
  %116 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1917
  call void @process_pointer_pdu(%struct.stream* %116), !dbg !1918
  br label %127, !dbg !1919

; <label>:117:                                    ; preds = %108
  call void @ui_bell(), !dbg !1920
  br label %127, !dbg !1921

; <label>:118:                                    ; preds = %108
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0)), !dbg !1922
  %119 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1923
  call void @process_pdu_logon(%struct.stream* %119), !dbg !1924
  br label %127, !dbg !1925

; <label>:120:                                    ; preds = %108
  %121 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1926
  %122 = load i32*, i32** %4, align 8, !dbg !1927
  call void @process_ts_set_error_info_pdu(%struct.stream* %121, i32* %122), !dbg !1928
  br label %127, !dbg !1929

; <label>:123:                                    ; preds = %108
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.42, i32 0, i32 0)), !dbg !1930
  br label %127, !dbg !1931

; <label>:124:                                    ; preds = %108
  %125 = load i8, i8* %5, align 1, !dbg !1932
  %126 = zext i8 %125 to i32, !dbg !1932
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0), i32 %126), !dbg !1933
  br label %127, !dbg !1934

; <label>:127:                                    ; preds = %124, %123, %120, %118, %117, %115, %114, %113, %111
  ret i32 0, !dbg !1935
}

; Function Attrs: nounwind uwtable
define i32 @rdp_connect(i8*, i32, i8*, i8*, i8*, i8*, i32) #0 !dbg !1936 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1939, metadata !164), !dbg !1940
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1941, metadata !164), !dbg !1942
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1943, metadata !164), !dbg !1944
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1945, metadata !164), !dbg !1946
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1947, metadata !164), !dbg !1948
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1949, metadata !164), !dbg !1950
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1951, metadata !164), !dbg !1952
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1953, metadata !164), !dbg !1954
  store i32 0, i32* %16, align 4, !dbg !1954
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1955, metadata !164), !dbg !1956
  store i32 0, i32* %17, align 4, !dbg !1956
  %18 = load i8*, i8** %9, align 8, !dbg !1957
  %19 = load i8*, i8** @g_username, align 8, !dbg !1959
  %20 = load i8*, i8** %11, align 8, !dbg !1960
  %21 = load i8*, i8** %12, align 8, !dbg !1961
  %22 = load i32, i32* %15, align 4, !dbg !1962
  %23 = call i32 @sec_connect(i8* %18, i8* %19, i8* %20, i8* %21, i32 %22), !dbg !1963
  %24 = icmp ne i32 %23, 0, !dbg !1963
  br i1 %24, label %26, label %25, !dbg !1964

; <label>:25:                                     ; preds = %7
  store i32 0, i32* %8, align 4, !dbg !1965
  br label %51, !dbg !1965

; <label>:26:                                     ; preds = %7
  %27 = load i32, i32* %10, align 4, !dbg !1966
  %28 = load i8*, i8** %11, align 8, !dbg !1967
  %29 = load i8*, i8** @g_username, align 8, !dbg !1968
  %30 = load i8*, i8** %12, align 8, !dbg !1969
  %31 = load i8*, i8** %13, align 8, !dbg !1970
  %32 = load i8*, i8** %14, align 8, !dbg !1971
  call void @rdp_send_client_info_pdu(i32 %27, i8* %28, i8* %29, i8* %30, i8* %31, i8* %32), !dbg !1972
  br label %33, !dbg !1973

; <label>:33:                                     ; preds = %49, %26
  %34 = load i32, i32* @g_rdp_shareid, align 4, !dbg !1974
  %35 = icmp ne i32 %34, 0, !dbg !1976
  %36 = xor i1 %35, true, !dbg !1976
  br i1 %36, label %37, label %50, !dbg !1977

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* @g_network_error, align 4, !dbg !1978
  %39 = icmp ne i32 %38, 0, !dbg !1978
  br i1 %39, label %40, label %41, !dbg !1981

; <label>:40:                                     ; preds = %37
  store i32 0, i32* %8, align 4, !dbg !1982
  br label %51, !dbg !1982

; <label>:41:                                     ; preds = %37
  %42 = call i32 @rdp_loop(i32* %16, i32* %17), !dbg !1983
  %43 = icmp ne i32 %42, 0, !dbg !1983
  br i1 %43, label %45, label %44, !dbg !1985

; <label>:44:                                     ; preds = %41
  store i32 0, i32* %8, align 4, !dbg !1986
  br label %51, !dbg !1986

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* @g_redirect, align 4, !dbg !1987
  %47 = icmp ne i32 %46, 0, !dbg !1987
  br i1 %47, label %48, label %49, !dbg !1989

; <label>:48:                                     ; preds = %45
  store i32 1, i32* %8, align 4, !dbg !1990
  br label %51, !dbg !1990

; <label>:49:                                     ; preds = %45
  br label %33, !dbg !1991, !llvm.loop !1993

; <label>:50:                                     ; preds = %33
  store i32 1, i32* %8, align 4, !dbg !1994
  br label %51, !dbg !1994

; <label>:51:                                     ; preds = %50, %48, %44, %40, %25
  %52 = load i32, i32* %8, align 4, !dbg !1995
  ret i32 %52, !dbg !1995
}

declare i32 @sec_connect(i8*, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @rdp_send_client_info_pdu(i32, i8*, i8*, i8*, i8*, i8*) #0 !dbg !1996 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.stream*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca [16 x i8], align 16
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1999, metadata !164), !dbg !2000
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2001, metadata !164), !dbg !2002
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2003, metadata !164), !dbg !2004
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2005, metadata !164), !dbg !2006
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2007, metadata !164), !dbg !2008
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2009, metadata !164), !dbg !2010
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2011, metadata !164), !dbg !2012
  %27 = call i8* @tcp_get_address(), !dbg !2013
  store i8* %27, i8** %13, align 8, !dbg !2012
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2014, metadata !164), !dbg !2015
  %28 = load i8*, i8** %8, align 8, !dbg !2016
  %29 = call i64 @strlen(i8* %28) #10, !dbg !2017
  %30 = mul i64 2, %29, !dbg !2018
  %31 = trunc i64 %30 to i32, !dbg !2019
  store i32 %31, i32* %14, align 4, !dbg !2015
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2020, metadata !164), !dbg !2021
  %32 = load i8*, i8** %9, align 8, !dbg !2022
  %33 = call i64 @strlen(i8* %32) #10, !dbg !2023
  %34 = mul i64 2, %33, !dbg !2024
  %35 = trunc i64 %34 to i32, !dbg !2025
  store i32 %35, i32* %15, align 4, !dbg !2021
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2026, metadata !164), !dbg !2027
  %36 = load i8*, i8** %10, align 8, !dbg !2028
  %37 = call i64 @strlen(i8* %36) #10, !dbg !2029
  %38 = mul i64 2, %37, !dbg !2030
  %39 = trunc i64 %38 to i32, !dbg !2031
  store i32 %39, i32* %16, align 4, !dbg !2027
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2032, metadata !164), !dbg !2033
  %40 = load i8*, i8** %11, align 8, !dbg !2034
  %41 = call i64 @strlen(i8* %40) #10, !dbg !2035
  %42 = mul i64 2, %41, !dbg !2036
  %43 = trunc i64 %42 to i32, !dbg !2037
  store i32 %43, i32* %17, align 4, !dbg !2033
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2038, metadata !164), !dbg !2039
  %44 = load i8*, i8** %12, align 8, !dbg !2040
  %45 = call i64 @strlen(i8* %44) #10, !dbg !2041
  %46 = mul i64 2, %45, !dbg !2042
  %47 = trunc i64 %46 to i32, !dbg !2043
  store i32 %47, i32* %18, align 4, !dbg !2039
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2044, metadata !164), !dbg !2045
  %48 = load i8*, i8** %13, align 8, !dbg !2046
  %49 = call i64 @strlen(i8* %48) #10, !dbg !2047
  %50 = mul i64 2, %49, !dbg !2048
  %51 = add i64 %50, 2, !dbg !2049
  %52 = trunc i64 %51 to i32, !dbg !2050
  store i32 %52, i32* %19, align 4, !dbg !2045
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2051, metadata !164), !dbg !2052
  store i32 60, i32* %20, align 4, !dbg !2052
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2053, metadata !164), !dbg !2054
  store i32 0, i32* %21, align 4, !dbg !2054
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2055, metadata !164), !dbg !2056
  %53 = load i32, i32* @g_encryption, align 4, !dbg !2057
  %54 = icmp ne i32 %53, 0, !dbg !2057
  %55 = select i1 %54, i32 72, i32 64, !dbg !2057
  store i32 %55, i32* %22, align 4, !dbg !2056
  call void @llvm.dbg.declare(metadata %struct.stream** %23, metadata !2058, metadata !164), !dbg !2059
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2060, metadata !164), !dbg !2066
  %56 = call i64 @time(i64* null) #9, !dbg !2067
  store i64 %56, i64* %24, align 8, !dbg !2066
  call void @llvm.dbg.declare(metadata i64* %25, metadata !2068, metadata !164), !dbg !2069
  call void @llvm.dbg.declare(metadata [16 x i8]* %26, metadata !2070, metadata !164), !dbg !2074
  %57 = load i32, i32* @g_rdp_version, align 4, !dbg !2075
  %58 = icmp eq i32 %57, 4, !dbg !2077
  br i1 %58, label %63, label %59, !dbg !2078

; <label>:59:                                     ; preds = %6
  %60 = load i16, i16* @g_server_rdp_version, align 2, !dbg !2079
  %61 = zext i16 %60 to i32, !dbg !2079
  %62 = icmp eq i32 1, %61, !dbg !2081
  br i1 %62, label %63, label %159, !dbg !2082

; <label>:63:                                     ; preds = %59, %6
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i32 0, i32 0)), !dbg !2083
  %64 = load i32, i32* %22, align 4, !dbg !2085
  %65 = load i32, i32* %14, align 4, !dbg !2086
  %66 = add nsw i32 18, %65, !dbg !2087
  %67 = load i32, i32* %15, align 4, !dbg !2088
  %68 = add nsw i32 %66, %67, !dbg !2089
  %69 = load i32, i32* %16, align 4, !dbg !2090
  %70 = add nsw i32 %68, %69, !dbg !2091
  %71 = load i32, i32* %17, align 4, !dbg !2092
  %72 = add nsw i32 %70, %71, !dbg !2093
  %73 = load i32, i32* %18, align 4, !dbg !2094
  %74 = add nsw i32 %72, %73, !dbg !2095
  %75 = add nsw i32 %74, 10, !dbg !2096
  %76 = call %struct.stream* @sec_init(i32 %64, i32 %75), !dbg !2097
  store %struct.stream* %76, %struct.stream** %23, align 8, !dbg !2098
  %77 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2099
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !2101
  %79 = load i8*, i8** %78, align 8, !dbg !2101
  %80 = bitcast i8* %79 to i32*, !dbg !2102
  store i32 0, i32* %80, align 4, !dbg !2103
  %81 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2104
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !2105
  %83 = load i8*, i8** %82, align 8, !dbg !2106
  %84 = getelementptr inbounds i8, i8* %83, i64 4, !dbg !2106
  store i8* %84, i8** %82, align 8, !dbg !2106
  %85 = load i32, i32* %7, align 4, !dbg !2107
  %86 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2109
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !2110
  %88 = load i8*, i8** %87, align 8, !dbg !2110
  %89 = bitcast i8* %88 to i32*, !dbg !2111
  store i32 %85, i32* %89, align 4, !dbg !2112
  %90 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2113
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !2114
  %92 = load i8*, i8** %91, align 8, !dbg !2115
  %93 = getelementptr inbounds i8, i8* %92, i64 4, !dbg !2115
  store i8* %93, i8** %91, align 8, !dbg !2115
  %94 = load i32, i32* %14, align 4, !dbg !2116
  %95 = trunc i32 %94 to i16, !dbg !2116
  %96 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2118
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !2119
  %98 = load i8*, i8** %97, align 8, !dbg !2119
  %99 = bitcast i8* %98 to i16*, !dbg !2120
  store i16 %95, i16* %99, align 2, !dbg !2121
  %100 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2122
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !2123
  %102 = load i8*, i8** %101, align 8, !dbg !2124
  %103 = getelementptr inbounds i8, i8* %102, i64 2, !dbg !2124
  store i8* %103, i8** %101, align 8, !dbg !2124
  %104 = load i32, i32* %15, align 4, !dbg !2125
  %105 = trunc i32 %104 to i16, !dbg !2125
  %106 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2127
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !2128
  %108 = load i8*, i8** %107, align 8, !dbg !2128
  %109 = bitcast i8* %108 to i16*, !dbg !2129
  store i16 %105, i16* %109, align 2, !dbg !2130
  %110 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2131
  %111 = getelementptr inbounds %struct.stream, %struct.stream* %110, i32 0, i32 0, !dbg !2132
  %112 = load i8*, i8** %111, align 8, !dbg !2133
  %113 = getelementptr inbounds i8, i8* %112, i64 2, !dbg !2133
  store i8* %113, i8** %111, align 8, !dbg !2133
  %114 = load i32, i32* %16, align 4, !dbg !2134
  %115 = trunc i32 %114 to i16, !dbg !2134
  %116 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2136
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !2137
  %118 = load i8*, i8** %117, align 8, !dbg !2137
  %119 = bitcast i8* %118 to i16*, !dbg !2138
  store i16 %115, i16* %119, align 2, !dbg !2139
  %120 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2140
  %121 = getelementptr inbounds %struct.stream, %struct.stream* %120, i32 0, i32 0, !dbg !2141
  %122 = load i8*, i8** %121, align 8, !dbg !2142
  %123 = getelementptr inbounds i8, i8* %122, i64 2, !dbg !2142
  store i8* %123, i8** %121, align 8, !dbg !2142
  %124 = load i32, i32* %17, align 4, !dbg !2143
  %125 = trunc i32 %124 to i16, !dbg !2143
  %126 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2145
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !2146
  %128 = load i8*, i8** %127, align 8, !dbg !2146
  %129 = bitcast i8* %128 to i16*, !dbg !2147
  store i16 %125, i16* %129, align 2, !dbg !2148
  %130 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2149
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !2150
  %132 = load i8*, i8** %131, align 8, !dbg !2151
  %133 = getelementptr inbounds i8, i8* %132, i64 2, !dbg !2151
  store i8* %133, i8** %131, align 8, !dbg !2151
  %134 = load i32, i32* %18, align 4, !dbg !2152
  %135 = trunc i32 %134 to i16, !dbg !2152
  %136 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2154
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 0, !dbg !2155
  %138 = load i8*, i8** %137, align 8, !dbg !2155
  %139 = bitcast i8* %138 to i16*, !dbg !2156
  store i16 %135, i16* %139, align 2, !dbg !2157
  %140 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2158
  %141 = getelementptr inbounds %struct.stream, %struct.stream* %140, i32 0, i32 0, !dbg !2159
  %142 = load i8*, i8** %141, align 8, !dbg !2160
  %143 = getelementptr inbounds i8, i8* %142, i64 2, !dbg !2160
  store i8* %143, i8** %141, align 8, !dbg !2160
  %144 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2161
  %145 = load i8*, i8** %8, align 8, !dbg !2162
  %146 = load i32, i32* %14, align 4, !dbg !2163
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %144, i8* %145, i32 %146), !dbg !2164
  %147 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2165
  %148 = load i8*, i8** %9, align 8, !dbg !2166
  %149 = load i32, i32* %15, align 4, !dbg !2167
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %147, i8* %148, i32 %149), !dbg !2168
  %150 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2169
  %151 = load i8*, i8** %10, align 8, !dbg !2170
  %152 = load i32, i32* %16, align 4, !dbg !2171
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %150, i8* %151, i32 %152), !dbg !2172
  %153 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2173
  %154 = load i8*, i8** %11, align 8, !dbg !2174
  %155 = load i32, i32* %17, align 4, !dbg !2175
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %153, i8* %154, i32 %155), !dbg !2176
  %156 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2177
  %157 = load i8*, i8** %12, align 8, !dbg !2178
  %158 = load i32, i32* %18, align 4, !dbg !2179
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %156, i8* %157, i32 %158), !dbg !2180
  br label %532, !dbg !2181

; <label>:159:                                    ; preds = %59
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i32 0, i32 0)), !dbg !2182
  %160 = load i32, i32* @g_redirect, align 4, !dbg !2184
  %161 = icmp eq i32 %160, 1, !dbg !2186
  br i1 %161, label %162, label %174, !dbg !2187

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2188
  %164 = icmp ugt i32 %163, 0, !dbg !2190
  br i1 %164, label %165, label %174, !dbg !2191

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %7, align 4, !dbg !2192
  %167 = and i32 %166, -262145, !dbg !2192
  store i32 %167, i32* %7, align 4, !dbg !2192
  %168 = load i32, i32* %7, align 4, !dbg !2194
  %169 = or i32 %168, 8, !dbg !2194
  store i32 %169, i32* %7, align 4, !dbg !2194
  %170 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2195
  store i32 %170, i32* %16, align 4, !dbg !2196
  %171 = load i32, i32* %16, align 4, !dbg !2197
  %172 = sub nsw i32 %171, 2, !dbg !2197
  store i32 %172, i32* %16, align 4, !dbg !2197
  %173 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2198
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.53, i32 0, i32 0), i32 %173), !dbg !2199
  br label %174, !dbg !2200

; <label>:174:                                    ; preds = %165, %162, %159
  %175 = load i32, i32* %14, align 4, !dbg !2201
  %176 = add nsw i32 20, %175, !dbg !2202
  %177 = add nsw i32 %176, 2, !dbg !2203
  %178 = load i32, i32* %15, align 4, !dbg !2204
  %179 = add nsw i32 %177, %178, !dbg !2205
  %180 = add nsw i32 %179, 2, !dbg !2206
  %181 = load i32, i32* %16, align 4, !dbg !2207
  %182 = add nsw i32 %180, %181, !dbg !2208
  %183 = add nsw i32 %182, 2, !dbg !2209
  %184 = load i32, i32* %17, align 4, !dbg !2210
  %185 = add nsw i32 %183, %184, !dbg !2211
  %186 = add nsw i32 %185, 2, !dbg !2212
  %187 = load i32, i32* %18, align 4, !dbg !2213
  %188 = add nsw i32 %186, %187, !dbg !2214
  %189 = add nsw i32 %188, 2, !dbg !2215
  %190 = add nsw i32 %189, 2, !dbg !2216
  %191 = load i32, i32* %19, align 4, !dbg !2217
  %192 = add nsw i32 %190, %191, !dbg !2218
  %193 = add nsw i32 %192, 2, !dbg !2219
  %194 = load i32, i32* %20, align 4, !dbg !2220
  %195 = add nsw i32 %193, %194, !dbg !2221
  %196 = add nsw i32 %195, 4, !dbg !2222
  %197 = add nsw i32 %196, 64, !dbg !2223
  %198 = add nsw i32 %197, 16, !dbg !2224
  %199 = add nsw i32 %198, 4, !dbg !2225
  %200 = add nsw i32 %199, 64, !dbg !2226
  %201 = add nsw i32 %200, 16, !dbg !2227
  %202 = add nsw i32 %201, 4, !dbg !2228
  %203 = add nsw i32 %202, 4, !dbg !2229
  %204 = add nsw i32 %203, 4, !dbg !2230
  %205 = add nsw i32 %204, 2, !dbg !2231
  %206 = add nsw i32 %205, 28, !dbg !2232
  store i32 %206, i32* %21, align 4, !dbg !2233
  %207 = load i32, i32* %22, align 4, !dbg !2234
  %208 = load i32, i32* %21, align 4, !dbg !2235
  %209 = call %struct.stream* @sec_init(i32 %207, i32 %208), !dbg !2236
  store %struct.stream* %209, %struct.stream** %23, align 8, !dbg !2237
  %210 = load i32, i32* %21, align 4, !dbg !2238
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i32 0, i32 0), i32 %210), !dbg !2239
  %211 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2240
  %212 = getelementptr inbounds %struct.stream, %struct.stream* %211, i32 0, i32 0, !dbg !2242
  %213 = load i8*, i8** %212, align 8, !dbg !2242
  %214 = bitcast i8* %213 to i32*, !dbg !2243
  store i32 0, i32* %214, align 4, !dbg !2244
  %215 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2245
  %216 = getelementptr inbounds %struct.stream, %struct.stream* %215, i32 0, i32 0, !dbg !2246
  %217 = load i8*, i8** %216, align 8, !dbg !2247
  %218 = getelementptr inbounds i8, i8* %217, i64 4, !dbg !2247
  store i8* %218, i8** %216, align 8, !dbg !2247
  %219 = load i32, i32* %7, align 4, !dbg !2248
  %220 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2250
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %220, i32 0, i32 0, !dbg !2251
  %222 = load i8*, i8** %221, align 8, !dbg !2251
  %223 = bitcast i8* %222 to i32*, !dbg !2252
  store i32 %219, i32* %223, align 4, !dbg !2253
  %224 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2254
  %225 = getelementptr inbounds %struct.stream, %struct.stream* %224, i32 0, i32 0, !dbg !2255
  %226 = load i8*, i8** %225, align 8, !dbg !2256
  %227 = getelementptr inbounds i8, i8* %226, i64 4, !dbg !2256
  store i8* %227, i8** %225, align 8, !dbg !2256
  %228 = load i32, i32* %14, align 4, !dbg !2257
  %229 = trunc i32 %228 to i16, !dbg !2257
  %230 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2259
  %231 = getelementptr inbounds %struct.stream, %struct.stream* %230, i32 0, i32 0, !dbg !2260
  %232 = load i8*, i8** %231, align 8, !dbg !2260
  %233 = bitcast i8* %232 to i16*, !dbg !2261
  store i16 %229, i16* %233, align 2, !dbg !2262
  %234 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2263
  %235 = getelementptr inbounds %struct.stream, %struct.stream* %234, i32 0, i32 0, !dbg !2264
  %236 = load i8*, i8** %235, align 8, !dbg !2265
  %237 = getelementptr inbounds i8, i8* %236, i64 2, !dbg !2265
  store i8* %237, i8** %235, align 8, !dbg !2265
  %238 = load i32, i32* %15, align 4, !dbg !2266
  %239 = trunc i32 %238 to i16, !dbg !2266
  %240 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2268
  %241 = getelementptr inbounds %struct.stream, %struct.stream* %240, i32 0, i32 0, !dbg !2269
  %242 = load i8*, i8** %241, align 8, !dbg !2269
  %243 = bitcast i8* %242 to i16*, !dbg !2270
  store i16 %239, i16* %243, align 2, !dbg !2271
  %244 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2272
  %245 = getelementptr inbounds %struct.stream, %struct.stream* %244, i32 0, i32 0, !dbg !2273
  %246 = load i8*, i8** %245, align 8, !dbg !2274
  %247 = getelementptr inbounds i8, i8* %246, i64 2, !dbg !2274
  store i8* %247, i8** %245, align 8, !dbg !2274
  %248 = load i32, i32* %16, align 4, !dbg !2275
  %249 = trunc i32 %248 to i16, !dbg !2275
  %250 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2277
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !2278
  %252 = load i8*, i8** %251, align 8, !dbg !2278
  %253 = bitcast i8* %252 to i16*, !dbg !2279
  store i16 %249, i16* %253, align 2, !dbg !2280
  %254 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2281
  %255 = getelementptr inbounds %struct.stream, %struct.stream* %254, i32 0, i32 0, !dbg !2282
  %256 = load i8*, i8** %255, align 8, !dbg !2283
  %257 = getelementptr inbounds i8, i8* %256, i64 2, !dbg !2283
  store i8* %257, i8** %255, align 8, !dbg !2283
  %258 = load i32, i32* %17, align 4, !dbg !2284
  %259 = trunc i32 %258 to i16, !dbg !2284
  %260 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2286
  %261 = getelementptr inbounds %struct.stream, %struct.stream* %260, i32 0, i32 0, !dbg !2287
  %262 = load i8*, i8** %261, align 8, !dbg !2287
  %263 = bitcast i8* %262 to i16*, !dbg !2288
  store i16 %259, i16* %263, align 2, !dbg !2289
  %264 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2290
  %265 = getelementptr inbounds %struct.stream, %struct.stream* %264, i32 0, i32 0, !dbg !2291
  %266 = load i8*, i8** %265, align 8, !dbg !2292
  %267 = getelementptr inbounds i8, i8* %266, i64 2, !dbg !2292
  store i8* %267, i8** %265, align 8, !dbg !2292
  %268 = load i32, i32* %18, align 4, !dbg !2293
  %269 = trunc i32 %268 to i16, !dbg !2293
  %270 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2295
  %271 = getelementptr inbounds %struct.stream, %struct.stream* %270, i32 0, i32 0, !dbg !2296
  %272 = load i8*, i8** %271, align 8, !dbg !2296
  %273 = bitcast i8* %272 to i16*, !dbg !2297
  store i16 %269, i16* %273, align 2, !dbg !2298
  %274 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2299
  %275 = getelementptr inbounds %struct.stream, %struct.stream* %274, i32 0, i32 0, !dbg !2300
  %276 = load i8*, i8** %275, align 8, !dbg !2301
  %277 = getelementptr inbounds i8, i8* %276, i64 2, !dbg !2301
  store i8* %277, i8** %275, align 8, !dbg !2301
  %278 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2302
  %279 = load i8*, i8** %8, align 8, !dbg !2303
  %280 = load i32, i32* %14, align 4, !dbg !2304
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %278, i8* %279, i32 %280), !dbg !2305
  %281 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2306
  %282 = load i8*, i8** %9, align 8, !dbg !2307
  %283 = load i32, i32* %15, align 4, !dbg !2308
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %281, i8* %282, i32 %283), !dbg !2309
  %284 = load i32, i32* @g_redirect, align 4, !dbg !2310
  %285 = icmp eq i32 %284, 1, !dbg !2312
  br i1 %285, label %286, label %302, !dbg !2313

; <label>:286:                                    ; preds = %174
  %287 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2314
  %288 = icmp ult i32 0, %287, !dbg !2316
  br i1 %288, label %289, label %302, !dbg !2317

; <label>:289:                                    ; preds = %286
  %290 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2318
  %291 = getelementptr inbounds %struct.stream, %struct.stream* %290, i32 0, i32 0, !dbg !2321
  %292 = load i8*, i8** %291, align 8, !dbg !2321
  %293 = load i8*, i8** @g_redirect_cookie, align 8, !dbg !2322
  %294 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2323
  %295 = zext i32 %294 to i64, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %292, i8* %293, i64 %295, i32 1, i1 false), !dbg !2324
  %296 = load i32, i32* @g_redirect_cookie_len, align 4, !dbg !2325
  %297 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2326
  %298 = getelementptr inbounds %struct.stream, %struct.stream* %297, i32 0, i32 0, !dbg !2327
  %299 = load i8*, i8** %298, align 8, !dbg !2328
  %300 = zext i32 %296 to i64, !dbg !2328
  %301 = getelementptr inbounds i8, i8* %299, i64 %300, !dbg !2328
  store i8* %301, i8** %298, align 8, !dbg !2328
  br label %306, !dbg !2329

; <label>:302:                                    ; preds = %286, %174
  %303 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2330
  %304 = load i8*, i8** %10, align 8, !dbg !2332
  %305 = load i32, i32* %16, align 4, !dbg !2333
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %303, i8* %304, i32 %305), !dbg !2334
  br label %306

; <label>:306:                                    ; preds = %302, %289
  %307 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2335
  %308 = load i8*, i8** %11, align 8, !dbg !2336
  %309 = load i32, i32* %17, align 4, !dbg !2337
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %307, i8* %308, i32 %309), !dbg !2338
  %310 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2339
  %311 = load i8*, i8** %12, align 8, !dbg !2340
  %312 = load i32, i32* %18, align 4, !dbg !2341
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %310, i8* %311, i32 %312), !dbg !2342
  %313 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2343
  %314 = getelementptr inbounds %struct.stream, %struct.stream* %313, i32 0, i32 0, !dbg !2345
  %315 = load i8*, i8** %314, align 8, !dbg !2345
  %316 = bitcast i8* %315 to i16*, !dbg !2346
  store i16 2, i16* %316, align 2, !dbg !2347
  %317 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2348
  %318 = getelementptr inbounds %struct.stream, %struct.stream* %317, i32 0, i32 0, !dbg !2349
  %319 = load i8*, i8** %318, align 8, !dbg !2350
  %320 = getelementptr inbounds i8, i8* %319, i64 2, !dbg !2350
  store i8* %320, i8** %318, align 8, !dbg !2350
  %321 = load i32, i32* %19, align 4, !dbg !2351
  %322 = trunc i32 %321 to i16, !dbg !2351
  %323 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2353
  %324 = getelementptr inbounds %struct.stream, %struct.stream* %323, i32 0, i32 0, !dbg !2354
  %325 = load i8*, i8** %324, align 8, !dbg !2354
  %326 = bitcast i8* %325 to i16*, !dbg !2355
  store i16 %322, i16* %326, align 2, !dbg !2356
  %327 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2357
  %328 = getelementptr inbounds %struct.stream, %struct.stream* %327, i32 0, i32 0, !dbg !2358
  %329 = load i8*, i8** %328, align 8, !dbg !2359
  %330 = getelementptr inbounds i8, i8* %329, i64 2, !dbg !2359
  store i8* %330, i8** %328, align 8, !dbg !2359
  %331 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2360
  %332 = load i8*, i8** %13, align 8, !dbg !2361
  %333 = load i32, i32* %19, align 4, !dbg !2362
  %334 = sub nsw i32 %333, 2, !dbg !2363
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %331, i8* %332, i32 %334), !dbg !2364
  %335 = load i32, i32* %20, align 4, !dbg !2365
  %336 = trunc i32 %335 to i16, !dbg !2365
  %337 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2367
  %338 = getelementptr inbounds %struct.stream, %struct.stream* %337, i32 0, i32 0, !dbg !2368
  %339 = load i8*, i8** %338, align 8, !dbg !2368
  %340 = bitcast i8* %339 to i16*, !dbg !2369
  store i16 %336, i16* %340, align 2, !dbg !2370
  %341 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2371
  %342 = getelementptr inbounds %struct.stream, %struct.stream* %341, i32 0, i32 0, !dbg !2372
  %343 = load i8*, i8** %342, align 8, !dbg !2373
  %344 = getelementptr inbounds i8, i8* %343, i64 2, !dbg !2373
  store i8* %344, i8** %342, align 8, !dbg !2373
  %345 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2374
  %346 = load i32, i32* %20, align 4, !dbg !2375
  %347 = sub nsw i32 %346, 2, !dbg !2376
  call void @rdp_out_unistr_mandatory_null(%struct.stream* %345, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i32 %347), !dbg !2377
  %348 = call %struct.tm* @gmtime(i64* %24) #9, !dbg !2378
  %349 = call i64 @mktime(%struct.tm* %348) #9, !dbg !2379
  %350 = call %struct.tm* @localtime(i64* %24) #9, !dbg !2381
  %351 = call i64 @mktime(%struct.tm* %350) #9, !dbg !2383
  %352 = sub nsw i64 %349, %351, !dbg !2385
  %353 = sdiv i64 %352, 60, !dbg !2386
  store i64 %353, i64* %25, align 8, !dbg !2387
  %354 = load i64, i64* %25, align 8, !dbg !2388
  %355 = trunc i64 %354 to i32, !dbg !2388
  %356 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2390
  %357 = getelementptr inbounds %struct.stream, %struct.stream* %356, i32 0, i32 0, !dbg !2391
  %358 = load i8*, i8** %357, align 8, !dbg !2391
  %359 = bitcast i8* %358 to i32*, !dbg !2392
  store i32 %355, i32* %359, align 4, !dbg !2393
  %360 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2394
  %361 = getelementptr inbounds %struct.stream, %struct.stream* %360, i32 0, i32 0, !dbg !2395
  %362 = load i8*, i8** %361, align 8, !dbg !2396
  %363 = getelementptr inbounds i8, i8* %362, i64 4, !dbg !2396
  store i8* %363, i8** %361, align 8, !dbg !2396
  %364 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2397
  call void @rdp_out_unistr(%struct.stream* %364, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 28), !dbg !2398
  %365 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2399
  %366 = getelementptr inbounds %struct.stream, %struct.stream* %365, i32 0, i32 0, !dbg !2401
  %367 = load i8*, i8** %366, align 8, !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* %367, i8 0, i64 34, i32 1, i1 false), !dbg !2402
  %368 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2403
  %369 = getelementptr inbounds %struct.stream, %struct.stream* %368, i32 0, i32 0, !dbg !2404
  %370 = load i8*, i8** %369, align 8, !dbg !2405
  %371 = getelementptr inbounds i8, i8* %370, i64 34, !dbg !2405
  store i8* %371, i8** %369, align 8, !dbg !2405
  %372 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2406
  %373 = getelementptr inbounds %struct.stream, %struct.stream* %372, i32 0, i32 0, !dbg !2408
  %374 = load i8*, i8** %373, align 8, !dbg !2408
  %375 = bitcast i8* %374 to i32*, !dbg !2409
  store i32 655360, i32* %375, align 4, !dbg !2410
  %376 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2411
  %377 = getelementptr inbounds %struct.stream, %struct.stream* %376, i32 0, i32 0, !dbg !2412
  %378 = load i8*, i8** %377, align 8, !dbg !2413
  %379 = getelementptr inbounds i8, i8* %378, i64 4, !dbg !2413
  store i8* %379, i8** %377, align 8, !dbg !2413
  %380 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2414
  %381 = getelementptr inbounds %struct.stream, %struct.stream* %380, i32 0, i32 0, !dbg !2416
  %382 = load i8*, i8** %381, align 8, !dbg !2416
  %383 = bitcast i8* %382 to i32*, !dbg !2417
  store i32 327680, i32* %383, align 4, !dbg !2418
  %384 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2419
  %385 = getelementptr inbounds %struct.stream, %struct.stream* %384, i32 0, i32 0, !dbg !2420
  %386 = load i8*, i8** %385, align 8, !dbg !2421
  %387 = getelementptr inbounds i8, i8* %386, i64 4, !dbg !2421
  store i8* %387, i8** %385, align 8, !dbg !2421
  %388 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2422
  %389 = getelementptr inbounds %struct.stream, %struct.stream* %388, i32 0, i32 0, !dbg !2424
  %390 = load i8*, i8** %389, align 8, !dbg !2424
  %391 = bitcast i8* %390 to i32*, !dbg !2425
  store i32 3, i32* %391, align 4, !dbg !2426
  %392 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2427
  %393 = getelementptr inbounds %struct.stream, %struct.stream* %392, i32 0, i32 0, !dbg !2428
  %394 = load i8*, i8** %393, align 8, !dbg !2429
  %395 = getelementptr inbounds i8, i8* %394, i64 4, !dbg !2429
  store i8* %395, i8** %393, align 8, !dbg !2429
  %396 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2430
  %397 = getelementptr inbounds %struct.stream, %struct.stream* %396, i32 0, i32 0, !dbg !2432
  %398 = load i8*, i8** %397, align 8, !dbg !2432
  %399 = bitcast i8* %398 to i32*, !dbg !2433
  store i32 0, i32* %399, align 4, !dbg !2434
  %400 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2435
  %401 = getelementptr inbounds %struct.stream, %struct.stream* %400, i32 0, i32 0, !dbg !2436
  %402 = load i8*, i8** %401, align 8, !dbg !2437
  %403 = getelementptr inbounds i8, i8* %402, i64 4, !dbg !2437
  store i8* %403, i8** %401, align 8, !dbg !2437
  %404 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2438
  %405 = getelementptr inbounds %struct.stream, %struct.stream* %404, i32 0, i32 0, !dbg !2440
  %406 = load i8*, i8** %405, align 8, !dbg !2440
  %407 = bitcast i8* %406 to i32*, !dbg !2441
  store i32 0, i32* %407, align 4, !dbg !2442
  %408 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2443
  %409 = getelementptr inbounds %struct.stream, %struct.stream* %408, i32 0, i32 0, !dbg !2444
  %410 = load i8*, i8** %409, align 8, !dbg !2445
  %411 = getelementptr inbounds i8, i8* %410, i64 4, !dbg !2445
  store i8* %411, i8** %409, align 8, !dbg !2445
  %412 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2446
  call void @rdp_out_unistr(%struct.stream* %412, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 28), !dbg !2447
  %413 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2448
  %414 = getelementptr inbounds %struct.stream, %struct.stream* %413, i32 0, i32 0, !dbg !2450
  %415 = load i8*, i8** %414, align 8, !dbg !2450
  call void @llvm.memset.p0i8.i64(i8* %415, i8 0, i64 34, i32 1, i1 false), !dbg !2451
  %416 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2452
  %417 = getelementptr inbounds %struct.stream, %struct.stream* %416, i32 0, i32 0, !dbg !2453
  %418 = load i8*, i8** %417, align 8, !dbg !2454
  %419 = getelementptr inbounds i8, i8* %418, i64 34, !dbg !2454
  store i8* %419, i8** %417, align 8, !dbg !2454
  %420 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2455
  %421 = getelementptr inbounds %struct.stream, %struct.stream* %420, i32 0, i32 0, !dbg !2457
  %422 = load i8*, i8** %421, align 8, !dbg !2457
  %423 = bitcast i8* %422 to i32*, !dbg !2458
  store i32 196608, i32* %423, align 4, !dbg !2459
  %424 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2460
  %425 = getelementptr inbounds %struct.stream, %struct.stream* %424, i32 0, i32 0, !dbg !2461
  %426 = load i8*, i8** %425, align 8, !dbg !2462
  %427 = getelementptr inbounds i8, i8* %426, i64 4, !dbg !2462
  store i8* %427, i8** %425, align 8, !dbg !2462
  %428 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2463
  %429 = getelementptr inbounds %struct.stream, %struct.stream* %428, i32 0, i32 0, !dbg !2465
  %430 = load i8*, i8** %429, align 8, !dbg !2465
  %431 = bitcast i8* %430 to i32*, !dbg !2466
  store i32 327680, i32* %431, align 4, !dbg !2467
  %432 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2468
  %433 = getelementptr inbounds %struct.stream, %struct.stream* %432, i32 0, i32 0, !dbg !2469
  %434 = load i8*, i8** %433, align 8, !dbg !2470
  %435 = getelementptr inbounds i8, i8* %434, i64 4, !dbg !2470
  store i8* %435, i8** %433, align 8, !dbg !2470
  %436 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2471
  %437 = getelementptr inbounds %struct.stream, %struct.stream* %436, i32 0, i32 0, !dbg !2473
  %438 = load i8*, i8** %437, align 8, !dbg !2473
  %439 = bitcast i8* %438 to i32*, !dbg !2474
  store i32 2, i32* %439, align 4, !dbg !2475
  %440 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2476
  %441 = getelementptr inbounds %struct.stream, %struct.stream* %440, i32 0, i32 0, !dbg !2477
  %442 = load i8*, i8** %441, align 8, !dbg !2478
  %443 = getelementptr inbounds i8, i8* %442, i64 4, !dbg !2478
  store i8* %443, i8** %441, align 8, !dbg !2478
  %444 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2479
  %445 = getelementptr inbounds %struct.stream, %struct.stream* %444, i32 0, i32 0, !dbg !2481
  %446 = load i8*, i8** %445, align 8, !dbg !2481
  %447 = bitcast i8* %446 to i32*, !dbg !2482
  store i32 0, i32* %447, align 4, !dbg !2483
  %448 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2484
  %449 = getelementptr inbounds %struct.stream, %struct.stream* %448, i32 0, i32 0, !dbg !2485
  %450 = load i8*, i8** %449, align 8, !dbg !2486
  %451 = getelementptr inbounds i8, i8* %450, i64 4, !dbg !2486
  store i8* %451, i8** %449, align 8, !dbg !2486
  %452 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2487
  %453 = getelementptr inbounds %struct.stream, %struct.stream* %452, i32 0, i32 0, !dbg !2489
  %454 = load i8*, i8** %453, align 8, !dbg !2489
  %455 = bitcast i8* %454 to i32*, !dbg !2490
  store i32 -60, i32* %455, align 4, !dbg !2491
  %456 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2492
  %457 = getelementptr inbounds %struct.stream, %struct.stream* %456, i32 0, i32 0, !dbg !2493
  %458 = load i8*, i8** %457, align 8, !dbg !2494
  %459 = getelementptr inbounds i8, i8* %458, i64 4, !dbg !2494
  store i8* %459, i8** %457, align 8, !dbg !2494
  %460 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2495
  %461 = getelementptr inbounds %struct.stream, %struct.stream* %460, i32 0, i32 0, !dbg !2497
  %462 = load i8*, i8** %461, align 8, !dbg !2497
  %463 = bitcast i8* %462 to i32*, !dbg !2498
  store i32 0, i32* %463, align 4, !dbg !2499
  %464 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2500
  %465 = getelementptr inbounds %struct.stream, %struct.stream* %464, i32 0, i32 0, !dbg !2501
  %466 = load i8*, i8** %465, align 8, !dbg !2502
  %467 = getelementptr inbounds i8, i8* %466, i64 4, !dbg !2502
  store i8* %467, i8** %465, align 8, !dbg !2502
  %468 = load i32, i32* @g_rdp5_performanceflags, align 4, !dbg !2503
  %469 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2505
  %470 = getelementptr inbounds %struct.stream, %struct.stream* %469, i32 0, i32 0, !dbg !2506
  %471 = load i8*, i8** %470, align 8, !dbg !2506
  %472 = bitcast i8* %471 to i32*, !dbg !2507
  store i32 %468, i32* %472, align 4, !dbg !2508
  %473 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2509
  %474 = getelementptr inbounds %struct.stream, %struct.stream* %473, i32 0, i32 0, !dbg !2510
  %475 = load i8*, i8** %474, align 8, !dbg !2511
  %476 = getelementptr inbounds i8, i8* %475, i64 4, !dbg !2511
  store i8* %476, i8** %474, align 8, !dbg !2511
  %477 = load i32, i32* @g_has_reconnect_random, align 4, !dbg !2512
  %478 = icmp ne i32 %477, 0, !dbg !2512
  br i1 %478, label %479, label %522, !dbg !2514

; <label>:479:                                    ; preds = %306
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0)), !dbg !2515
  %480 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2517
  %481 = getelementptr inbounds %struct.stream, %struct.stream* %480, i32 0, i32 0, !dbg !2519
  %482 = load i8*, i8** %481, align 8, !dbg !2519
  %483 = bitcast i8* %482 to i16*, !dbg !2520
  store i16 28, i16* %483, align 2, !dbg !2521
  %484 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2522
  %485 = getelementptr inbounds %struct.stream, %struct.stream* %484, i32 0, i32 0, !dbg !2523
  %486 = load i8*, i8** %485, align 8, !dbg !2524
  %487 = getelementptr inbounds i8, i8* %486, i64 2, !dbg !2524
  store i8* %487, i8** %485, align 8, !dbg !2524
  %488 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2525
  %489 = getelementptr inbounds %struct.stream, %struct.stream* %488, i32 0, i32 0, !dbg !2527
  %490 = load i8*, i8** %489, align 8, !dbg !2527
  %491 = bitcast i8* %490 to i32*, !dbg !2528
  store i32 28, i32* %491, align 4, !dbg !2529
  %492 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2530
  %493 = getelementptr inbounds %struct.stream, %struct.stream* %492, i32 0, i32 0, !dbg !2531
  %494 = load i8*, i8** %493, align 8, !dbg !2532
  %495 = getelementptr inbounds i8, i8* %494, i64 4, !dbg !2532
  store i8* %495, i8** %493, align 8, !dbg !2532
  %496 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2533
  %497 = getelementptr inbounds %struct.stream, %struct.stream* %496, i32 0, i32 0, !dbg !2535
  %498 = load i8*, i8** %497, align 8, !dbg !2535
  %499 = bitcast i8* %498 to i32*, !dbg !2536
  store i32 1, i32* %499, align 4, !dbg !2537
  %500 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2538
  %501 = getelementptr inbounds %struct.stream, %struct.stream* %500, i32 0, i32 0, !dbg !2539
  %502 = load i8*, i8** %501, align 8, !dbg !2540
  %503 = getelementptr inbounds i8, i8* %502, i64 4, !dbg !2540
  store i8* %503, i8** %501, align 8, !dbg !2540
  %504 = load i32, i32* @g_reconnect_logonid, align 4, !dbg !2541
  %505 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2543
  %506 = getelementptr inbounds %struct.stream, %struct.stream* %505, i32 0, i32 0, !dbg !2544
  %507 = load i8*, i8** %506, align 8, !dbg !2544
  %508 = bitcast i8* %507 to i32*, !dbg !2545
  store i32 %504, i32* %508, align 4, !dbg !2546
  %509 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2547
  %510 = getelementptr inbounds %struct.stream, %struct.stream* %509, i32 0, i32 0, !dbg !2548
  %511 = load i8*, i8** %510, align 8, !dbg !2549
  %512 = getelementptr inbounds i8, i8* %511, i64 4, !dbg !2549
  store i8* %512, i8** %510, align 8, !dbg !2549
  %513 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i32 0, i32 0, !dbg !2550
  call void @rdssl_hmac_md5(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_reconnect_random, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @g_client_random, i32 0, i32 0), i32 32, i8* %513), !dbg !2551
  %514 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2552
  %515 = getelementptr inbounds %struct.stream, %struct.stream* %514, i32 0, i32 0, !dbg !2554
  %516 = load i8*, i8** %515, align 8, !dbg !2554
  %517 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i32 0, i32 0, !dbg !2555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %516, i8* %517, i64 16, i32 1, i1 false), !dbg !2555
  %518 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2556
  %519 = getelementptr inbounds %struct.stream, %struct.stream* %518, i32 0, i32 0, !dbg !2557
  %520 = load i8*, i8** %519, align 8, !dbg !2558
  %521 = getelementptr inbounds i8, i8* %520, i64 16, !dbg !2558
  store i8* %521, i8** %519, align 8, !dbg !2558
  br label %531, !dbg !2559

; <label>:522:                                    ; preds = %306
  %523 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2560
  %524 = getelementptr inbounds %struct.stream, %struct.stream* %523, i32 0, i32 0, !dbg !2563
  %525 = load i8*, i8** %524, align 8, !dbg !2563
  %526 = bitcast i8* %525 to i16*, !dbg !2564
  store i16 0, i16* %526, align 2, !dbg !2565
  %527 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2566
  %528 = getelementptr inbounds %struct.stream, %struct.stream* %527, i32 0, i32 0, !dbg !2567
  %529 = load i8*, i8** %528, align 8, !dbg !2568
  %530 = getelementptr inbounds i8, i8* %529, i64 2, !dbg !2568
  store i8* %530, i8** %528, align 8, !dbg !2568
  br label %531

; <label>:531:                                    ; preds = %522, %479
  br label %532

; <label>:532:                                    ; preds = %531, %63
  %533 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2569
  %534 = getelementptr inbounds %struct.stream, %struct.stream* %533, i32 0, i32 0, !dbg !2570
  %535 = load i8*, i8** %534, align 8, !dbg !2570
  %536 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2571
  %537 = getelementptr inbounds %struct.stream, %struct.stream* %536, i32 0, i32 1, !dbg !2572
  store i8* %535, i8** %537, align 8, !dbg !2573
  store i32 0, i32* @g_redirect, align 4, !dbg !2574
  %538 = load %struct.stream*, %struct.stream** %23, align 8, !dbg !2575
  %539 = load i32, i32* %22, align 4, !dbg !2576
  call void @sec_send(%struct.stream* %538, i32 %539), !dbg !2577
  ret void, !dbg !2578
}

; Function Attrs: nounwind uwtable
define void @rdp_reset_state() #0 !dbg !2579 {
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rdp_reset_state, i32 0, i32 0)), !dbg !2582
  store i8* null, i8** @g_next_packet, align 8, !dbg !2583
  store i32 0, i32* @g_rdp_shareid, align 4, !dbg !2584
  store i32 0, i32* @g_exit_mainloop, align 4, !dbg !2585
  store i32 1, i32* @g_first_bitmap_caps, align 4, !dbg !2586
  call void @sec_reset_state(), !dbg !2587
  ret void, !dbg !2588
}

declare void @sec_reset_state() #2

; Function Attrs: nounwind uwtable
define void @rdp_disconnect() #0 !dbg !2589 {
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rdp_disconnect, i32 0, i32 0)), !dbg !2590
  call void @sec_disconnect(), !dbg !2591
  ret void, !dbg !2592
}

declare void @sec_disconnect() #2

declare %struct.stream* @sec_init(i32, i32) #2

declare void @sec_send(%struct.stream*, i32) #2

declare i8* @ui_create_cursor(i32, i32, i32, i32, i8*, i8*, i32) #2

declare void @cache_put_cursor(i16 zeroext, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #5

declare %struct.stream* @sec_recv(i32*) #2

declare void @process_ts_fp_updates(%struct.stream*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rdp_ts_in_share_control_header(%struct.stream*, i8*, i16*) #0 !dbg !2593 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2596, metadata !164), !dbg !2597
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2598, metadata !164), !dbg !2599
  store i16* %2, i16** %7, align 8
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2600, metadata !164), !dbg !2601
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2602, metadata !164), !dbg !2603
  call void @llvm.dbg.declare(metadata i16* %9, metadata !2604, metadata !164), !dbg !2605
  %10 = load i16, i16* %9, align 2, !dbg !2606
  %11 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2607
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !2609
  %13 = load i8*, i8** %12, align 8, !dbg !2609
  %14 = bitcast i8* %13 to i16*, !dbg !2610
  %15 = load i16, i16* %14, align 2, !dbg !2610
  %16 = load i16*, i16** %7, align 8, !dbg !2611
  store i16 %15, i16* %16, align 2, !dbg !2612
  %17 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2613
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !2614
  %19 = load i8*, i8** %18, align 8, !dbg !2615
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !2615
  store i8* %20, i8** %18, align 8, !dbg !2615
  %21 = load i16*, i16** %7, align 8, !dbg !2616
  %22 = load i16, i16* %21, align 2, !dbg !2618
  %23 = zext i16 %22 to i32, !dbg !2618
  %24 = icmp eq i32 %23, 32768, !dbg !2619
  br i1 %24, label %25, label %28, !dbg !2620

; <label>:25:                                     ; preds = %3
  %26 = load i8*, i8** @g_next_packet, align 8, !dbg !2621
  %27 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !2621
  store i8* %27, i8** @g_next_packet, align 8, !dbg !2621
  store i32 0, i32* %4, align 4, !dbg !2623
  br label %52, !dbg !2623

; <label>:28:                                     ; preds = %3
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2624
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !2626
  %31 = load i8*, i8** %30, align 8, !dbg !2626
  %32 = bitcast i8* %31 to i16*, !dbg !2627
  %33 = load i16, i16* %32, align 2, !dbg !2627
  store i16 %33, i16* %8, align 2, !dbg !2628
  %34 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2629
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !2630
  %36 = load i8*, i8** %35, align 8, !dbg !2631
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !2631
  store i8* %37, i8** %35, align 8, !dbg !2631
  %38 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2632
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !2634
  %40 = load i8*, i8** %39, align 8, !dbg !2634
  %41 = bitcast i8* %40 to i16*, !dbg !2635
  %42 = load i16, i16* %41, align 2, !dbg !2635
  store i16 %42, i16* %9, align 2, !dbg !2636
  %43 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2637
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !2638
  %45 = load i8*, i8** %44, align 8, !dbg !2639
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !2639
  store i8* %46, i8** %44, align 8, !dbg !2639
  %47 = load i16, i16* %8, align 2, !dbg !2640
  %48 = zext i16 %47 to i32, !dbg !2640
  %49 = and i32 %48, 15, !dbg !2641
  %50 = trunc i32 %49 to i8, !dbg !2640
  %51 = load i8*, i8** %6, align 8, !dbg !2642
  store i8 %50, i8* %51, align 1, !dbg !2643
  store i32 1, i32* %4, align 4, !dbg !2644
  br label %52, !dbg !2644

; <label>:52:                                     ; preds = %28, %25
  %53 = load i32, i32* %4, align 4, !dbg !2645
  ret i32 %53, !dbg !2645
}

declare void @rd_create_ui() #2

; Function Attrs: nounwind uwtable
define internal void @rdp_process_server_caps(%struct.stream*, i16 zeroext) #0 !dbg !2646 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !2649, metadata !164), !dbg !2650
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !2651, metadata !164), !dbg !2652
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2653, metadata !164), !dbg !2654
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2655, metadata !164), !dbg !2656
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2657, metadata !164), !dbg !2658
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2659, metadata !164), !dbg !2660
  call void @llvm.dbg.declare(metadata i16* %9, metadata !2661, metadata !164), !dbg !2662
  call void @llvm.dbg.declare(metadata i16* %10, metadata !2663, metadata !164), !dbg !2664
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rdp_process_server_caps, i32 0, i32 0)), !dbg !2665
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2666
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !2667
  %13 = load i8*, i8** %12, align 8, !dbg !2667
  store i8* %13, i8** %7, align 8, !dbg !2668
  %14 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2669
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !2671
  %16 = load i8*, i8** %15, align 8, !dbg !2671
  %17 = bitcast i8* %16 to i16*, !dbg !2672
  %18 = load i16, i16* %17, align 2, !dbg !2672
  store i16 %18, i16* %8, align 2, !dbg !2673
  %19 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2674
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !2675
  %21 = load i8*, i8** %20, align 8, !dbg !2676
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !2676
  store i8* %22, i8** %20, align 8, !dbg !2676
  %23 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2677
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !2678
  %25 = load i8*, i8** %24, align 8, !dbg !2679
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !2679
  store i8* %26, i8** %24, align 8, !dbg !2679
  store i32 0, i32* %5, align 4, !dbg !2680
  br label %27, !dbg !2682

; <label>:27:                                     ; preds = %80, %2
  %28 = load i32, i32* %5, align 4, !dbg !2683
  %29 = load i16, i16* %8, align 2, !dbg !2686
  %30 = zext i16 %29 to i32, !dbg !2686
  %31 = icmp slt i32 %28, %30, !dbg !2687
  br i1 %31, label %32, label %83, !dbg !2688

; <label>:32:                                     ; preds = %27
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2689
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !2692
  %35 = load i8*, i8** %34, align 8, !dbg !2692
  %36 = load i8*, i8** %7, align 8, !dbg !2693
  %37 = load i16, i16* %4, align 2, !dbg !2694
  %38 = zext i16 %37 to i32, !dbg !2694
  %39 = sext i32 %38 to i64, !dbg !2695
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !2695
  %41 = icmp ugt i8* %35, %40, !dbg !2696
  br i1 %41, label %42, label %43, !dbg !2697

; <label>:42:                                     ; preds = %32
  br label %83, !dbg !2698

; <label>:43:                                     ; preds = %32
  %44 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2699
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !2701
  %46 = load i8*, i8** %45, align 8, !dbg !2701
  %47 = bitcast i8* %46 to i16*, !dbg !2702
  %48 = load i16, i16* %47, align 2, !dbg !2702
  store i16 %48, i16* %9, align 2, !dbg !2703
  %49 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2704
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !2705
  %51 = load i8*, i8** %50, align 8, !dbg !2706
  %52 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !2706
  store i8* %52, i8** %50, align 8, !dbg !2706
  %53 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2707
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !2709
  %55 = load i8*, i8** %54, align 8, !dbg !2709
  %56 = bitcast i8* %55 to i16*, !dbg !2710
  %57 = load i16, i16* %56, align 2, !dbg !2710
  store i16 %57, i16* %10, align 2, !dbg !2711
  %58 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2712
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !2713
  %60 = load i8*, i8** %59, align 8, !dbg !2714
  %61 = getelementptr inbounds i8, i8* %60, i64 2, !dbg !2714
  store i8* %61, i8** %59, align 8, !dbg !2714
  %62 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2715
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !2716
  %64 = load i8*, i8** %63, align 8, !dbg !2716
  %65 = load i16, i16* %10, align 2, !dbg !2717
  %66 = zext i16 %65 to i32, !dbg !2717
  %67 = sext i32 %66 to i64, !dbg !2718
  %68 = getelementptr inbounds i8, i8* %64, i64 %67, !dbg !2718
  %69 = getelementptr inbounds i8, i8* %68, i64 -4, !dbg !2719
  store i8* %69, i8** %6, align 8, !dbg !2720
  %70 = load i16, i16* %9, align 2, !dbg !2721
  %71 = zext i16 %70 to i32, !dbg !2721
  switch i32 %71, label %76 [
    i32 1, label %72
    i32 2, label %74
  ], !dbg !2722

; <label>:72:                                     ; preds = %43
  %73 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2723
  call void @rdp_process_general_caps(%struct.stream* %73), !dbg !2725
  br label %76, !dbg !2726

; <label>:74:                                     ; preds = %43
  %75 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2727
  call void @rdp_process_bitmap_caps(%struct.stream* %75), !dbg !2728
  br label %76, !dbg !2729

; <label>:76:                                     ; preds = %43, %74, %72
  %77 = load i8*, i8** %6, align 8, !dbg !2730
  %78 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2731
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !2732
  store i8* %77, i8** %79, align 8, !dbg !2733
  br label %80, !dbg !2734

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %5, align 4, !dbg !2735
  %82 = add nsw i32 %81, 1, !dbg !2735
  store i32 %82, i32* %5, align 4, !dbg !2735
  br label %27, !dbg !2737, !llvm.loop !2738

; <label>:83:                                     ; preds = %42, %27
  ret void, !dbg !2740
}

; Function Attrs: nounwind uwtable
define internal void @rdp_send_confirm_active() #0 !dbg !2741 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2742, metadata !164), !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2744, metadata !164), !dbg !2745
  %4 = load i32, i32* @g_encryption, align 4, !dbg !2746
  %5 = icmp ne i32 %4, 0, !dbg !2746
  %6 = select i1 %5, i32 56, i32 48, !dbg !2746
  store i32 %6, i32* %2, align 4, !dbg !2745
  call void @llvm.dbg.declare(metadata i16* %3, metadata !2747, metadata !164), !dbg !2748
  store i16 362, i16* %3, align 2, !dbg !2748
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rdp_send_confirm_active, i32 0, i32 0)), !dbg !2749
  %7 = load i32, i32* @g_rdp_version, align 4, !dbg !2750
  %8 = icmp uge i32 %7, 5, !dbg !2752
  br i1 %8, label %9, label %18, !dbg !2753

; <label>:9:                                      ; preds = %0
  %10 = load i16, i16* %3, align 2, !dbg !2754
  %11 = zext i16 %10 to i32, !dbg !2754
  %12 = add nsw i32 %11, 40, !dbg !2754
  %13 = trunc i32 %12 to i16, !dbg !2754
  store i16 %13, i16* %3, align 2, !dbg !2754
  %14 = load i16, i16* %3, align 2, !dbg !2756
  %15 = zext i16 %14 to i32, !dbg !2756
  %16 = add nsw i32 %15, 10, !dbg !2756
  %17 = trunc i32 %16 to i16, !dbg !2756
  store i16 %17, i16* %3, align 2, !dbg !2756
  br label %27, !dbg !2757

; <label>:18:                                     ; preds = %0
  %19 = load i16, i16* %3, align 2, !dbg !2758
  %20 = zext i16 %19 to i32, !dbg !2758
  %21 = add nsw i32 %20, 40, !dbg !2758
  %22 = trunc i32 %21 to i16, !dbg !2758
  store i16 %22, i16* %3, align 2, !dbg !2758
  %23 = load i16, i16* %3, align 2, !dbg !2760
  %24 = zext i16 %23 to i32, !dbg !2760
  %25 = add nsw i32 %24, 8, !dbg !2760
  %26 = trunc i32 %25 to i16, !dbg !2760
  store i16 %26, i16* %3, align 2, !dbg !2760
  br label %27

; <label>:27:                                     ; preds = %18, %9
  %28 = load i32, i32* %2, align 4, !dbg !2761
  %29 = load i16, i16* %3, align 2, !dbg !2762
  %30 = zext i16 %29 to i32, !dbg !2762
  %31 = add nsw i32 20, %30, !dbg !2763
  %32 = sext i32 %31 to i64, !dbg !2764
  %33 = add i64 %32, 6, !dbg !2765
  %34 = trunc i64 %33 to i32, !dbg !2764
  %35 = call %struct.stream* @sec_init(i32 %28, i32 %34), !dbg !2766
  store %struct.stream* %35, %struct.stream** %1, align 8, !dbg !2767
  %36 = load i16, i16* %3, align 2, !dbg !2768
  %37 = zext i16 %36 to i32, !dbg !2768
  %38 = add nsw i32 16, %37, !dbg !2770
  %39 = sext i32 %38 to i64, !dbg !2771
  %40 = add i64 %39, 6, !dbg !2772
  %41 = trunc i64 %40 to i16, !dbg !2771
  %42 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2773
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !2774
  %44 = load i8*, i8** %43, align 8, !dbg !2774
  %45 = bitcast i8* %44 to i16*, !dbg !2775
  store i16 %41, i16* %45, align 2, !dbg !2776
  %46 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2777
  %47 = getelementptr inbounds %struct.stream, %struct.stream* %46, i32 0, i32 0, !dbg !2778
  %48 = load i8*, i8** %47, align 8, !dbg !2779
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !2779
  store i8* %49, i8** %47, align 8, !dbg !2779
  %50 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2780
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !2782
  %52 = load i8*, i8** %51, align 8, !dbg !2782
  %53 = bitcast i8* %52 to i16*, !dbg !2783
  store i16 19, i16* %53, align 2, !dbg !2784
  %54 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2785
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !2786
  %56 = load i8*, i8** %55, align 8, !dbg !2787
  %57 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !2787
  store i8* %57, i8** %55, align 8, !dbg !2787
  %58 = load i16, i16* @g_mcs_userid, align 2, !dbg !2788
  %59 = zext i16 %58 to i32, !dbg !2788
  %60 = add nsw i32 %59, 1001, !dbg !2790
  %61 = trunc i32 %60 to i16, !dbg !2791
  %62 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2792
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !2793
  %64 = load i8*, i8** %63, align 8, !dbg !2793
  %65 = bitcast i8* %64 to i16*, !dbg !2794
  store i16 %61, i16* %65, align 2, !dbg !2795
  %66 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2796
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !2797
  %68 = load i8*, i8** %67, align 8, !dbg !2798
  %69 = getelementptr inbounds i8, i8* %68, i64 2, !dbg !2798
  store i8* %69, i8** %67, align 8, !dbg !2798
  %70 = load i32, i32* @g_rdp_shareid, align 4, !dbg !2799
  %71 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2801
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !2802
  %73 = load i8*, i8** %72, align 8, !dbg !2802
  %74 = bitcast i8* %73 to i32*, !dbg !2803
  store i32 %70, i32* %74, align 4, !dbg !2804
  %75 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2805
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !2806
  %77 = load i8*, i8** %76, align 8, !dbg !2807
  %78 = getelementptr inbounds i8, i8* %77, i64 4, !dbg !2807
  store i8* %78, i8** %76, align 8, !dbg !2807
  %79 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2808
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !2810
  %81 = load i8*, i8** %80, align 8, !dbg !2810
  %82 = bitcast i8* %81 to i16*, !dbg !2811
  store i16 1002, i16* %82, align 2, !dbg !2812
  %83 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2813
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !2814
  %85 = load i8*, i8** %84, align 8, !dbg !2815
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !2815
  store i8* %86, i8** %84, align 8, !dbg !2815
  %87 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2816
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !2818
  %89 = load i8*, i8** %88, align 8, !dbg !2818
  %90 = bitcast i8* %89 to i16*, !dbg !2819
  store i16 6, i16* %90, align 2, !dbg !2820
  %91 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2821
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !2822
  %93 = load i8*, i8** %92, align 8, !dbg !2823
  %94 = getelementptr inbounds i8, i8* %93, i64 2, !dbg !2823
  store i8* %94, i8** %92, align 8, !dbg !2823
  %95 = load i16, i16* %3, align 2, !dbg !2824
  %96 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2826
  %97 = getelementptr inbounds %struct.stream, %struct.stream* %96, i32 0, i32 0, !dbg !2827
  %98 = load i8*, i8** %97, align 8, !dbg !2827
  %99 = bitcast i8* %98 to i16*, !dbg !2828
  store i16 %95, i16* %99, align 2, !dbg !2829
  %100 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2830
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !2831
  %102 = load i8*, i8** %101, align 8, !dbg !2832
  %103 = getelementptr inbounds i8, i8* %102, i64 2, !dbg !2832
  store i8* %103, i8** %101, align 8, !dbg !2832
  %104 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2833
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !2835
  %106 = load i8*, i8** %105, align 8, !dbg !2835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i64 6, i32 1, i1 false), !dbg !2836
  %107 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2837
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 0, !dbg !2838
  %109 = load i8*, i8** %108, align 8, !dbg !2839
  %110 = getelementptr inbounds i8, i8* %109, i64 6, !dbg !2839
  store i8* %110, i8** %108, align 8, !dbg !2839
  %111 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2840
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !2842
  %113 = load i8*, i8** %112, align 8, !dbg !2842
  %114 = bitcast i8* %113 to i16*, !dbg !2843
  store i16 16, i16* %114, align 2, !dbg !2844
  %115 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2845
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !2846
  %117 = load i8*, i8** %116, align 8, !dbg !2847
  %118 = getelementptr inbounds i8, i8* %117, i64 2, !dbg !2847
  store i8* %118, i8** %116, align 8, !dbg !2847
  %119 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2848
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 0, !dbg !2850
  %121 = load i8*, i8** %120, align 8, !dbg !2850
  call void @llvm.memset.p0i8.i64(i8* %121, i8 0, i64 2, i32 1, i1 false), !dbg !2851
  %122 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2852
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !2853
  %124 = load i8*, i8** %123, align 8, !dbg !2854
  %125 = getelementptr inbounds i8, i8* %124, i64 2, !dbg !2854
  store i8* %125, i8** %123, align 8, !dbg !2854
  %126 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2855
  call void @rdp_out_ts_general_capabilityset(%struct.stream* %126), !dbg !2856
  %127 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2857
  call void @rdp_out_ts_bitmap_capabilityset(%struct.stream* %127), !dbg !2858
  %128 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2859
  call void @rdp_out_ts_order_capabilityset(%struct.stream* %128), !dbg !2860
  %129 = load i32, i32* @g_rdp_version, align 4, !dbg !2861
  %130 = icmp uge i32 %129, 5, !dbg !2863
  br i1 %130, label %131, label %134, !dbg !2864

; <label>:131:                                    ; preds = %27
  %132 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2865
  call void @rdp_out_bmpcache2_caps(%struct.stream* %132), !dbg !2867
  %133 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2868
  call void @rdp_out_newpointer_caps(%struct.stream* %133), !dbg !2869
  br label %137, !dbg !2870

; <label>:134:                                    ; preds = %27
  %135 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2871
  call void @rdp_out_bmpcache_caps(%struct.stream* %135), !dbg !2873
  %136 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2874
  call void @rdp_out_pointer_caps(%struct.stream* %136), !dbg !2875
  br label %137

; <label>:137:                                    ; preds = %134, %131
  %138 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2876
  call void @rdp_out_colcache_caps(%struct.stream* %138), !dbg !2877
  %139 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2878
  call void @rdp_out_activate_caps(%struct.stream* %139), !dbg !2879
  %140 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2880
  call void @rdp_out_control_caps(%struct.stream* %140), !dbg !2881
  %141 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2882
  call void @rdp_out_share_caps(%struct.stream* %141), !dbg !2883
  %142 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2884
  call void @rdp_out_brushcache_caps(%struct.stream* %142), !dbg !2885
  %143 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2886
  call void @rdp_out_ts_input_capabilityset(%struct.stream* %143), !dbg !2887
  %144 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2888
  call void @rdp_out_ts_sound_capabilityset(%struct.stream* %144), !dbg !2889
  %145 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2890
  call void @rdp_out_ts_font_capabilityset(%struct.stream* %145), !dbg !2891
  %146 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2892
  call void @rdp_out_ts_glyphcache_capabilityset(%struct.stream* %146), !dbg !2893
  %147 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2894
  call void @rdp_out_ts_multifragmentupdate_capabilityset(%struct.stream* %147), !dbg !2895
  %148 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2896
  call void @rdp_out_ts_large_pointer_capabilityset(%struct.stream* %148), !dbg !2897
  %149 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2898
  %150 = getelementptr inbounds %struct.stream, %struct.stream* %149, i32 0, i32 0, !dbg !2899
  %151 = load i8*, i8** %150, align 8, !dbg !2899
  %152 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2900
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 1, !dbg !2901
  store i8* %151, i8** %153, align 8, !dbg !2902
  %154 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2903
  %155 = load i32, i32* %2, align 4, !dbg !2904
  call void @sec_send(%struct.stream* %154, i32 %155), !dbg !2905
  ret void, !dbg !2906
}

; Function Attrs: nounwind uwtable
define internal void @rdp_send_synchronise() #0 !dbg !2907 {
  %1 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2908, metadata !164), !dbg !2909
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.rdp_send_synchronise, i32 0, i32 0)), !dbg !2910
  %2 = call %struct.stream* @rdp_init_data(i32 4), !dbg !2911
  store %struct.stream* %2, %struct.stream** %1, align 8, !dbg !2912
  %3 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2913
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !2915
  %5 = load i8*, i8** %4, align 8, !dbg !2915
  %6 = bitcast i8* %5 to i16*, !dbg !2916
  store i16 1, i16* %6, align 2, !dbg !2917
  %7 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2918
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !2919
  %9 = load i8*, i8** %8, align 8, !dbg !2920
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !2920
  store i8* %10, i8** %8, align 8, !dbg !2920
  %11 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2921
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !2923
  %13 = load i8*, i8** %12, align 8, !dbg !2923
  %14 = bitcast i8* %13 to i16*, !dbg !2924
  store i16 1002, i16* %14, align 2, !dbg !2925
  %15 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2926
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !2927
  %17 = load i8*, i8** %16, align 8, !dbg !2928
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !2928
  store i8* %18, i8** %16, align 8, !dbg !2928
  %19 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2929
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !2930
  %21 = load i8*, i8** %20, align 8, !dbg !2930
  %22 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2931
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 1, !dbg !2932
  store i8* %21, i8** %23, align 8, !dbg !2933
  %24 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !2934
  call void @rdp_send_data(%struct.stream* %24, i8 zeroext 31), !dbg !2935
  ret void, !dbg !2936
}

; Function Attrs: nounwind uwtable
define internal void @rdp_send_control(i16 zeroext) #0 !dbg !2937 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.stream*, align 8
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !2940, metadata !164), !dbg !2941
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !2942, metadata !164), !dbg !2943
  %4 = call %struct.stream* @rdp_init_data(i32 8), !dbg !2944
  store %struct.stream* %4, %struct.stream** %3, align 8, !dbg !2945
  %5 = load i16, i16* %2, align 2, !dbg !2946
  %6 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2948
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !2949
  %8 = load i8*, i8** %7, align 8, !dbg !2949
  %9 = bitcast i8* %8 to i16*, !dbg !2950
  store i16 %5, i16* %9, align 2, !dbg !2951
  %10 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2952
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !2953
  %12 = load i8*, i8** %11, align 8, !dbg !2954
  %13 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !2954
  store i8* %13, i8** %11, align 8, !dbg !2954
  %14 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2955
  %15 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 0, !dbg !2957
  %16 = load i8*, i8** %15, align 8, !dbg !2957
  %17 = bitcast i8* %16 to i16*, !dbg !2958
  store i16 0, i16* %17, align 2, !dbg !2959
  %18 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2960
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 0, !dbg !2961
  %20 = load i8*, i8** %19, align 8, !dbg !2962
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !2962
  store i8* %21, i8** %19, align 8, !dbg !2962
  %22 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2963
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !2965
  %24 = load i8*, i8** %23, align 8, !dbg !2965
  %25 = bitcast i8* %24 to i32*, !dbg !2966
  store i32 0, i32* %25, align 4, !dbg !2967
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2968
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !2969
  %28 = load i8*, i8** %27, align 8, !dbg !2970
  %29 = getelementptr inbounds i8, i8* %28, i64 4, !dbg !2970
  store i8* %29, i8** %27, align 8, !dbg !2970
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2971
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !2972
  %32 = load i8*, i8** %31, align 8, !dbg !2972
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2973
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 1, !dbg !2974
  store i8* %32, i8** %34, align 8, !dbg !2975
  %35 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !2976
  call void @rdp_send_data(%struct.stream* %35, i8 zeroext 20), !dbg !2977
  ret void, !dbg !2978
}

declare zeroext i16 @ui_get_numlock_state(i32) #2

declare i32 @read_keyboard_state() #2

; Function Attrs: nounwind uwtable
define internal void @rdp_enum_bmpcache2() #0 !dbg !2979 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca [2550 x [8 x i8]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.stream** %1, metadata !2980, metadata !164), !dbg !2981
  call void @llvm.dbg.declare(metadata [2550 x [8 x i8]]* %2, metadata !2982, metadata !164), !dbg !2990
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2991, metadata !164), !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2993, metadata !164), !dbg !2994
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2995, metadata !164), !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2997, metadata !164), !dbg !2998
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.rdp_enum_bmpcache2, i32 0, i32 0)), !dbg !2999
  store i32 0, i32* %4, align 4, !dbg !3000
  %7 = getelementptr inbounds [2550 x [8 x i8]], [2550 x [8 x i8]]* %2, i32 0, i32 0, !dbg !3001
  %8 = call i32 @pstcache_enumerate(i8 zeroext 2, [8 x i8]* %7), !dbg !3002
  store i32 %8, i32* %3, align 4, !dbg !3003
  br label %9, !dbg !3004

; <label>:9:                                      ; preds = %44, %0
  %10 = load i32, i32* %4, align 4, !dbg !3005
  %11 = load i32, i32* %3, align 4, !dbg !3007
  %12 = icmp ult i32 %10, %11, !dbg !3008
  br i1 %12, label %13, label %147, !dbg !3009

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4, !dbg !3010
  %15 = load i32, i32* %4, align 4, !dbg !3012
  %16 = sub i32 %14, %15, !dbg !3013
  %17 = icmp ult i32 %16, 169, !dbg !3014
  br i1 %17, label %18, label %22, !dbg !3015

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %3, align 4, !dbg !3016
  %20 = load i32, i32* %4, align 4, !dbg !3018
  %21 = sub i32 %19, %20, !dbg !3019
  br label %23, !dbg !3020

; <label>:22:                                     ; preds = %13
  br label %23, !dbg !3021

; <label>:23:                                     ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 169, %22 ], !dbg !3023
  store i32 %24, i32* %5, align 4, !dbg !3025
  %25 = load i32, i32* %5, align 4, !dbg !3026
  %26 = zext i32 %25 to i64, !dbg !3026
  %27 = mul i64 %26, 8, !dbg !3027
  %28 = add i64 24, %27, !dbg !3028
  %29 = trunc i64 %28 to i32, !dbg !3029
  %30 = call %struct.stream* @rdp_init_data(i32 %29), !dbg !3030
  store %struct.stream* %30, %struct.stream** %1, align 8, !dbg !3031
  store i32 0, i32* %6, align 4, !dbg !3032
  %31 = load i32, i32* %4, align 4, !dbg !3033
  %32 = icmp eq i32 %31, 0, !dbg !3035
  br i1 %32, label %33, label %36, !dbg !3036

; <label>:33:                                     ; preds = %23
  %34 = load i32, i32* %6, align 4, !dbg !3037
  %35 = or i32 %34, 1, !dbg !3037
  store i32 %35, i32* %6, align 4, !dbg !3037
  br label %36, !dbg !3038

; <label>:36:                                     ; preds = %33, %23
  %37 = load i32, i32* %3, align 4, !dbg !3039
  %38 = load i32, i32* %4, align 4, !dbg !3041
  %39 = sub i32 %37, %38, !dbg !3042
  %40 = icmp ule i32 %39, 169, !dbg !3043
  br i1 %40, label %41, label %44, !dbg !3044

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %6, align 4, !dbg !3045
  %43 = or i32 %42, 2, !dbg !3045
  store i32 %43, i32* %6, align 4, !dbg !3045
  br label %44, !dbg !3046

; <label>:44:                                     ; preds = %41, %36
  %45 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3047
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !3049
  %47 = load i8*, i8** %46, align 8, !dbg !3049
  %48 = bitcast i8* %47 to i32*, !dbg !3050
  store i32 0, i32* %48, align 4, !dbg !3051
  %49 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3052
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !3053
  %51 = load i8*, i8** %50, align 8, !dbg !3054
  %52 = getelementptr inbounds i8, i8* %51, i64 4, !dbg !3054
  store i8* %52, i8** %50, align 8, !dbg !3054
  %53 = load i32, i32* %5, align 4, !dbg !3055
  %54 = trunc i32 %53 to i16, !dbg !3055
  %55 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3057
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 0, !dbg !3058
  %57 = load i8*, i8** %56, align 8, !dbg !3058
  %58 = bitcast i8* %57 to i16*, !dbg !3059
  store i16 %54, i16* %58, align 2, !dbg !3060
  %59 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3061
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !3062
  %61 = load i8*, i8** %60, align 8, !dbg !3063
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !3063
  store i8* %62, i8** %60, align 8, !dbg !3063
  %63 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3064
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !3066
  %65 = load i8*, i8** %64, align 8, !dbg !3066
  %66 = bitcast i8* %65 to i16*, !dbg !3067
  store i16 0, i16* %66, align 2, !dbg !3068
  %67 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3069
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !3070
  %69 = load i8*, i8** %68, align 8, !dbg !3071
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !3071
  store i8* %70, i8** %68, align 8, !dbg !3071
  %71 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3072
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !3074
  %73 = load i8*, i8** %72, align 8, !dbg !3074
  %74 = bitcast i8* %73 to i16*, !dbg !3075
  store i16 0, i16* %74, align 2, !dbg !3076
  %75 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3077
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !3078
  %77 = load i8*, i8** %76, align 8, !dbg !3079
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !3079
  store i8* %78, i8** %76, align 8, !dbg !3079
  %79 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3080
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !3082
  %81 = load i8*, i8** %80, align 8, !dbg !3082
  %82 = bitcast i8* %81 to i16*, !dbg !3083
  store i16 0, i16* %82, align 2, !dbg !3084
  %83 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3085
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !3086
  %85 = load i8*, i8** %84, align 8, !dbg !3087
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !3087
  store i8* %86, i8** %84, align 8, !dbg !3087
  %87 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3088
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !3090
  %89 = load i8*, i8** %88, align 8, !dbg !3090
  %90 = bitcast i8* %89 to i16*, !dbg !3091
  store i16 0, i16* %90, align 2, !dbg !3092
  %91 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3093
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !3094
  %93 = load i8*, i8** %92, align 8, !dbg !3095
  %94 = getelementptr inbounds i8, i8* %93, i64 2, !dbg !3095
  store i8* %94, i8** %92, align 8, !dbg !3095
  %95 = load i32, i32* %3, align 4, !dbg !3096
  %96 = trunc i32 %95 to i16, !dbg !3096
  %97 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3098
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !3099
  %99 = load i8*, i8** %98, align 8, !dbg !3099
  %100 = bitcast i8* %99 to i16*, !dbg !3100
  store i16 %96, i16* %100, align 2, !dbg !3101
  %101 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3102
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !3103
  %103 = load i8*, i8** %102, align 8, !dbg !3104
  %104 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !3104
  store i8* %104, i8** %102, align 8, !dbg !3104
  %105 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3105
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0, !dbg !3107
  %107 = load i8*, i8** %106, align 8, !dbg !3107
  %108 = bitcast i8* %107 to i32*, !dbg !3108
  store i32 0, i32* %108, align 4, !dbg !3109
  %109 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3110
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !3111
  %111 = load i8*, i8** %110, align 8, !dbg !3112
  %112 = getelementptr inbounds i8, i8* %111, i64 4, !dbg !3112
  store i8* %112, i8** %110, align 8, !dbg !3112
  %113 = load i32, i32* %6, align 4, !dbg !3113
  %114 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3115
  %115 = getelementptr inbounds %struct.stream, %struct.stream* %114, i32 0, i32 0, !dbg !3116
  %116 = load i8*, i8** %115, align 8, !dbg !3116
  %117 = bitcast i8* %116 to i32*, !dbg !3117
  store i32 %113, i32* %117, align 4, !dbg !3118
  %118 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3119
  %119 = getelementptr inbounds %struct.stream, %struct.stream* %118, i32 0, i32 0, !dbg !3120
  %120 = load i8*, i8** %119, align 8, !dbg !3121
  %121 = getelementptr inbounds i8, i8* %120, i64 4, !dbg !3121
  store i8* %121, i8** %119, align 8, !dbg !3121
  %122 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3122
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !3124
  %124 = load i8*, i8** %123, align 8, !dbg !3124
  %125 = load i32, i32* %4, align 4, !dbg !3125
  %126 = zext i32 %125 to i64, !dbg !3126
  %127 = getelementptr inbounds [2550 x [8 x i8]], [2550 x [8 x i8]]* %2, i64 0, i64 %126, !dbg !3126
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %127, i32 0, i32 0, !dbg !3127
  %129 = load i32, i32* %5, align 4, !dbg !3128
  %130 = zext i32 %129 to i64, !dbg !3128
  %131 = mul i64 %130, 8, !dbg !3129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %128, i64 %131, i32 1, i1 false), !dbg !3127
  %132 = load i32, i32* %5, align 4, !dbg !3130
  %133 = zext i32 %132 to i64, !dbg !3130
  %134 = mul i64 %133, 8, !dbg !3131
  %135 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3132
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !3133
  %137 = load i8*, i8** %136, align 8, !dbg !3134
  %138 = getelementptr inbounds i8, i8* %137, i64 %134, !dbg !3134
  store i8* %138, i8** %136, align 8, !dbg !3134
  %139 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3135
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 0, !dbg !3136
  %141 = load i8*, i8** %140, align 8, !dbg !3136
  %142 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3137
  %143 = getelementptr inbounds %struct.stream, %struct.stream* %142, i32 0, i32 1, !dbg !3138
  store i8* %141, i8** %143, align 8, !dbg !3139
  %144 = load %struct.stream*, %struct.stream** %1, align 8, !dbg !3140
  call void @rdp_send_data(%struct.stream* %144, i8 zeroext 43), !dbg !3141
  %145 = load i32, i32* %4, align 4, !dbg !3142
  %146 = add i32 %145, 169, !dbg !3142
  store i32 %146, i32* %4, align 4, !dbg !3142
  br label %9, !dbg !3143, !llvm.loop !3145

; <label>:147:                                    ; preds = %9
  ret void, !dbg !3146
}

; Function Attrs: nounwind uwtable
define internal void @rdp_send_fonts(i16 zeroext) #0 !dbg !3147 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.stream*, align 8
  store i16 %0, i16* %2, align 2
  call void @llvm.dbg.declare(metadata i16* %2, metadata !3148, metadata !164), !dbg !3149
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !3150, metadata !164), !dbg !3151
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rdp_send_fonts, i32 0, i32 0)), !dbg !3152
  %4 = call %struct.stream* @rdp_init_data(i32 8), !dbg !3153
  store %struct.stream* %4, %struct.stream** %3, align 8, !dbg !3154
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3155
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !3157
  %7 = load i8*, i8** %6, align 8, !dbg !3157
  %8 = bitcast i8* %7 to i16*, !dbg !3158
  store i16 0, i16* %8, align 2, !dbg !3159
  %9 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3160
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !3161
  %11 = load i8*, i8** %10, align 8, !dbg !3162
  %12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !3162
  store i8* %12, i8** %10, align 8, !dbg !3162
  %13 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3163
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !3165
  %15 = load i8*, i8** %14, align 8, !dbg !3165
  %16 = bitcast i8* %15 to i16*, !dbg !3166
  store i16 0, i16* %16, align 2, !dbg !3167
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3168
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !3169
  %19 = load i8*, i8** %18, align 8, !dbg !3170
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !3170
  store i8* %20, i8** %18, align 8, !dbg !3170
  %21 = load i16, i16* %2, align 2, !dbg !3171
  %22 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3173
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !3174
  %24 = load i8*, i8** %23, align 8, !dbg !3174
  %25 = bitcast i8* %24 to i16*, !dbg !3175
  store i16 %21, i16* %25, align 2, !dbg !3176
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3177
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !3178
  %28 = load i8*, i8** %27, align 8, !dbg !3179
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !3179
  store i8* %29, i8** %27, align 8, !dbg !3179
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3180
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !3182
  %32 = load i8*, i8** %31, align 8, !dbg !3182
  %33 = bitcast i8* %32 to i16*, !dbg !3183
  store i16 50, i16* %33, align 2, !dbg !3184
  %34 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3185
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !3186
  %36 = load i8*, i8** %35, align 8, !dbg !3187
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !3187
  store i8* %37, i8** %35, align 8, !dbg !3187
  %38 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3188
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !3189
  %40 = load i8*, i8** %39, align 8, !dbg !3189
  %41 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3190
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 1, !dbg !3191
  store i8* %40, i8** %42, align 8, !dbg !3192
  %43 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !3193
  call void @rdp_send_data(%struct.stream* %43, i8 zeroext 39), !dbg !3194
  ret void, !dbg !3195
}

declare void @reset_order_state() #2

; Function Attrs: nounwind uwtable
define internal void @rdp_process_general_caps(%struct.stream*) #0 !dbg !3196 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3197, metadata !164), !dbg !3198
  call void @llvm.dbg.declare(metadata i16* %3, metadata !3199, metadata !164), !dbg !3200
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rdp_process_general_caps, i32 0, i32 0)), !dbg !3201
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3202
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !3203
  %6 = load i8*, i8** %5, align 8, !dbg !3204
  %7 = getelementptr inbounds i8, i8* %6, i64 10, !dbg !3204
  store i8* %7, i8** %5, align 8, !dbg !3204
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3205
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !3207
  %10 = load i8*, i8** %9, align 8, !dbg !3207
  %11 = bitcast i8* %10 to i16*, !dbg !3208
  %12 = load i16, i16* %11, align 2, !dbg !3208
  store i16 %12, i16* %3, align 2, !dbg !3209
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3210
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !3211
  %15 = load i8*, i8** %14, align 8, !dbg !3212
  %16 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3212
  store i8* %16, i8** %14, align 8, !dbg !3212
  %17 = load i16, i16* %3, align 2, !dbg !3213
  %18 = icmp ne i16 %17, 0, !dbg !3213
  br i1 %18, label %20, label %19, !dbg !3215

; <label>:19:                                     ; preds = %1
  store i32 4, i32* @g_rdp_version, align 4, !dbg !3216
  br label %20, !dbg !3217

; <label>:20:                                     ; preds = %19, %1
  ret void, !dbg !3218
}

; Function Attrs: nounwind uwtable
define internal void @rdp_process_bitmap_caps(%struct.stream*) #0 !dbg !3219 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3220, metadata !164), !dbg !3221
  call void @llvm.dbg.declare(metadata i16* %3, metadata !3222, metadata !164), !dbg !3223
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rdp_process_bitmap_caps, i32 0, i32 0)), !dbg !3224
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3225
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !3227
  %6 = load i8*, i8** %5, align 8, !dbg !3227
  %7 = bitcast i8* %6 to i16*, !dbg !3228
  %8 = load i16, i16* %7, align 2, !dbg !3228
  store i16 %8, i16* %3, align 2, !dbg !3229
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3230
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !3231
  %11 = load i8*, i8** %10, align 8, !dbg !3232
  %12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !3232
  store i8* %12, i8** %10, align 8, !dbg !3232
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3233
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !3234
  %15 = load i8*, i8** %14, align 8, !dbg !3235
  %16 = getelementptr inbounds i8, i8* %15, i64 6, !dbg !3235
  store i8* %16, i8** %14, align 8, !dbg !3235
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3236
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !3238
  %19 = load i8*, i8** %18, align 8, !dbg !3238
  %20 = bitcast i8* %19 to i16*, !dbg !3239
  %21 = load i16, i16* %20, align 2, !dbg !3239
  store i16 %21, i16* @g_session_width, align 2, !dbg !3240
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3241
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !3242
  %24 = load i8*, i8** %23, align 8, !dbg !3243
  %25 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !3243
  store i8* %25, i8** %23, align 8, !dbg !3243
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3244
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !3246
  %28 = load i8*, i8** %27, align 8, !dbg !3246
  %29 = bitcast i8* %28 to i16*, !dbg !3247
  %30 = load i16, i16* %29, align 2, !dbg !3247
  store i16 %30, i16* @g_session_height, align 2, !dbg !3248
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3249
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !3250
  %33 = load i8*, i8** %32, align 8, !dbg !3251
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !3251
  store i8* %34, i8** %32, align 8, !dbg !3251
  %35 = load i16, i16* @g_session_width, align 2, !dbg !3252
  %36 = zext i16 %35 to i32, !dbg !3252
  %37 = load i16, i16* @g_session_height, align 2, !dbg !3253
  %38 = zext i16 %37 to i32, !dbg !3253
  %39 = load i16, i16* %3, align 2, !dbg !3254
  %40 = zext i16 %39 to i32, !dbg !3254
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i32 0, i32 0), i32 %36, i32 %38, i32 %40), !dbg !3255
  %41 = load i32, i32* @g_first_bitmap_caps, align 4, !dbg !3256
  %42 = icmp eq i32 %41, 1, !dbg !3258
  br i1 %42, label %43, label %54, !dbg !3259

; <label>:43:                                     ; preds = %1
  %44 = load i16, i16* @g_session_width, align 2, !dbg !3260
  %45 = zext i16 %44 to i32, !dbg !3260
  %46 = load i32, i32* @g_requested_session_width, align 4, !dbg !3262
  %47 = icmp eq i32 %45, %46, !dbg !3263
  br i1 %47, label %48, label %53, !dbg !3264

; <label>:48:                                     ; preds = %43
  %49 = load i16, i16* @g_session_height, align 2, !dbg !3265
  %50 = zext i16 %49 to i32, !dbg !3265
  %51 = load i32, i32* @g_requested_session_height, align 4, !dbg !3266
  %52 = icmp eq i32 %50, %51, !dbg !3267
  br i1 %52, label %54, label %53, !dbg !3268

; <label>:53:                                     ; preds = %48, %43
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0)), !dbg !3270
  store i32 0, i32* @g_dynamic_session_resize, align 4, !dbg !3272
  br label %54, !dbg !3273

; <label>:54:                                     ; preds = %53, %48, %1
  store i32 0, i32* @g_first_bitmap_caps, align 4, !dbg !3274
  %55 = load i32, i32* @g_server_depth, align 4, !dbg !3275
  %56 = load i16, i16* %3, align 2, !dbg !3277
  %57 = zext i16 %56 to i32, !dbg !3277
  %58 = icmp ne i32 %55, %57, !dbg !3278
  br i1 %58, label %59, label %65, !dbg !3279

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* @g_server_depth, align 4, !dbg !3280
  %61 = load i16, i16* %3, align 2, !dbg !3282
  %62 = zext i16 %61 to i32, !dbg !3282
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i32 0, i32 0), i32 %60, i32 %62), !dbg !3283
  %63 = load i16, i16* %3, align 2, !dbg !3284
  %64 = zext i16 %63 to i32, !dbg !3284
  store i32 %64, i32* @g_server_depth, align 4, !dbg !3285
  br label %65, !dbg !3286

; <label>:65:                                     ; preds = %59, %54
  %66 = load i32, i32* @g_fullscreen, align 4, !dbg !3287
  %67 = icmp eq i32 %66, 1, !dbg !3289
  br i1 %67, label %68, label %69, !dbg !3290

; <label>:68:                                     ; preds = %65
  br label %82, !dbg !3291

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* @g_dynamic_session_resize, align 4, !dbg !3292
  %71 = icmp eq i32 %70, 0, !dbg !3294
  br i1 %71, label %72, label %77, !dbg !3295

; <label>:72:                                     ; preds = %69
  %73 = load i16, i16* @g_session_width, align 2, !dbg !3296
  %74 = zext i16 %73 to i32, !dbg !3296
  %75 = load i16, i16* @g_session_height, align 2, !dbg !3298
  %76 = zext i16 %75 to i32, !dbg !3298
  call void @ui_update_window_sizehints(i32 %74, i32 %76), !dbg !3299
  br label %82, !dbg !3300

; <label>:77:                                     ; preds = %69
  %78 = load i16, i16* @g_session_width, align 2, !dbg !3301
  %79 = zext i16 %78 to i32, !dbg !3301
  %80 = load i16, i16* @g_session_height, align 2, !dbg !3302
  %81 = zext i16 %80 to i32, !dbg !3302
  call void @ui_resize_window(i32 %79, i32 %81), !dbg !3303
  br label %82, !dbg !3304

; <label>:82:                                     ; preds = %77, %72, %68
  ret void, !dbg !3305
}

declare void @ui_update_window_sizehints(i32, i32) #2

declare void @ui_resize_window(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_general_capabilityset(%struct.stream*) #0 !dbg !3307 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3308, metadata !164), !dbg !3309
  call void @llvm.dbg.declare(metadata i16* %3, metadata !3310, metadata !164), !dbg !3311
  store i16 0, i16* %3, align 2, !dbg !3311
  %4 = load i32, i32* @g_rdp_version, align 4, !dbg !3312
  %5 = icmp uge i32 %4, 5, !dbg !3314
  br i1 %5, label %6, label %23, !dbg !3315

; <label>:6:                                      ; preds = %1
  %7 = load i16, i16* %3, align 2, !dbg !3316
  %8 = zext i16 %7 to i32, !dbg !3316
  %9 = or i32 %8, 1024, !dbg !3316
  %10 = trunc i32 %9 to i16, !dbg !3316
  store i16 %10, i16* %3, align 2, !dbg !3316
  %11 = load i16, i16* %3, align 2, !dbg !3318
  %12 = zext i16 %11 to i32, !dbg !3318
  %13 = or i32 %12, 8, !dbg !3318
  %14 = trunc i32 %13 to i16, !dbg !3318
  store i16 %14, i16* %3, align 2, !dbg !3318
  %15 = load i16, i16* %3, align 2, !dbg !3319
  %16 = zext i16 %15 to i32, !dbg !3319
  %17 = or i32 %16, 4, !dbg !3319
  %18 = trunc i32 %17 to i16, !dbg !3319
  store i16 %18, i16* %3, align 2, !dbg !3319
  %19 = load i16, i16* %3, align 2, !dbg !3320
  %20 = zext i16 %19 to i32, !dbg !3320
  %21 = or i32 %20, 1, !dbg !3320
  %22 = trunc i32 %21 to i16, !dbg !3320
  store i16 %22, i16* %3, align 2, !dbg !3320
  br label %23, !dbg !3321

; <label>:23:                                     ; preds = %6, %1
  %24 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3322
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !3324
  %26 = load i8*, i8** %25, align 8, !dbg !3324
  %27 = bitcast i8* %26 to i16*, !dbg !3325
  store i16 1, i16* %27, align 2, !dbg !3326
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3327
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !3328
  %30 = load i8*, i8** %29, align 8, !dbg !3329
  %31 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !3329
  store i8* %31, i8** %29, align 8, !dbg !3329
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3330
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !3332
  %34 = load i8*, i8** %33, align 8, !dbg !3332
  %35 = bitcast i8* %34 to i16*, !dbg !3333
  store i16 24, i16* %35, align 2, !dbg !3334
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3335
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !3336
  %38 = load i8*, i8** %37, align 8, !dbg !3337
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !3337
  store i8* %39, i8** %37, align 8, !dbg !3337
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3338
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !3340
  %42 = load i8*, i8** %41, align 8, !dbg !3340
  %43 = bitcast i8* %42 to i16*, !dbg !3341
  store i16 1, i16* %43, align 2, !dbg !3342
  %44 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3343
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !3344
  %46 = load i8*, i8** %45, align 8, !dbg !3345
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !3345
  store i8* %47, i8** %45, align 8, !dbg !3345
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3346
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !3348
  %50 = load i8*, i8** %49, align 8, !dbg !3348
  %51 = bitcast i8* %50 to i16*, !dbg !3349
  store i16 3, i16* %51, align 2, !dbg !3350
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3351
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !3352
  %54 = load i8*, i8** %53, align 8, !dbg !3353
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !3353
  store i8* %55, i8** %53, align 8, !dbg !3353
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3354
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !3356
  %58 = load i8*, i8** %57, align 8, !dbg !3356
  %59 = bitcast i8* %58 to i16*, !dbg !3357
  store i16 512, i16* %59, align 2, !dbg !3358
  %60 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3359
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !3360
  %62 = load i8*, i8** %61, align 8, !dbg !3361
  %63 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !3361
  store i8* %63, i8** %61, align 8, !dbg !3361
  %64 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3362
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !3364
  %66 = load i8*, i8** %65, align 8, !dbg !3364
  %67 = bitcast i8* %66 to i16*, !dbg !3365
  store i16 0, i16* %67, align 2, !dbg !3366
  %68 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3367
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !3368
  %70 = load i8*, i8** %69, align 8, !dbg !3369
  %71 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !3369
  store i8* %71, i8** %69, align 8, !dbg !3369
  %72 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3370
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !3372
  %74 = load i8*, i8** %73, align 8, !dbg !3372
  %75 = bitcast i8* %74 to i16*, !dbg !3373
  store i16 0, i16* %75, align 2, !dbg !3374
  %76 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3375
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !3376
  %78 = load i8*, i8** %77, align 8, !dbg !3377
  %79 = getelementptr inbounds i8, i8* %78, i64 2, !dbg !3377
  store i8* %79, i8** %77, align 8, !dbg !3377
  %80 = load i16, i16* %3, align 2, !dbg !3378
  %81 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3380
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !3381
  %83 = load i8*, i8** %82, align 8, !dbg !3381
  %84 = bitcast i8* %83 to i16*, !dbg !3382
  store i16 %80, i16* %84, align 2, !dbg !3383
  %85 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3384
  %86 = getelementptr inbounds %struct.stream, %struct.stream* %85, i32 0, i32 0, !dbg !3385
  %87 = load i8*, i8** %86, align 8, !dbg !3386
  %88 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !3386
  store i8* %88, i8** %86, align 8, !dbg !3386
  %89 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3387
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !3389
  %91 = load i8*, i8** %90, align 8, !dbg !3389
  %92 = bitcast i8* %91 to i16*, !dbg !3390
  store i16 0, i16* %92, align 2, !dbg !3391
  %93 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3392
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 0, !dbg !3393
  %95 = load i8*, i8** %94, align 8, !dbg !3394
  %96 = getelementptr inbounds i8, i8* %95, i64 2, !dbg !3394
  store i8* %96, i8** %94, align 8, !dbg !3394
  %97 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3395
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !3397
  %99 = load i8*, i8** %98, align 8, !dbg !3397
  %100 = bitcast i8* %99 to i16*, !dbg !3398
  store i16 0, i16* %100, align 2, !dbg !3399
  %101 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3400
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !3401
  %103 = load i8*, i8** %102, align 8, !dbg !3402
  %104 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !3402
  store i8* %104, i8** %102, align 8, !dbg !3402
  %105 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3403
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0, !dbg !3405
  %107 = load i8*, i8** %106, align 8, !dbg !3405
  %108 = bitcast i8* %107 to i16*, !dbg !3406
  store i16 0, i16* %108, align 2, !dbg !3407
  %109 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3408
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !3409
  %111 = load i8*, i8** %110, align 8, !dbg !3410
  %112 = getelementptr inbounds i8, i8* %111, i64 2, !dbg !3410
  store i8* %112, i8** %110, align 8, !dbg !3410
  %113 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3411
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !3412
  %115 = load i8*, i8** %114, align 8, !dbg !3413
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !3413
  store i8* %116, i8** %114, align 8, !dbg !3413
  store i8 0, i8* %115, align 1, !dbg !3414
  %117 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3415
  %118 = getelementptr inbounds %struct.stream, %struct.stream* %117, i32 0, i32 0, !dbg !3416
  %119 = load i8*, i8** %118, align 8, !dbg !3417
  %120 = getelementptr inbounds i8, i8* %119, i32 1, !dbg !3417
  store i8* %120, i8** %118, align 8, !dbg !3417
  store i8 0, i8* %119, align 1, !dbg !3418
  ret void, !dbg !3419
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_bitmap_capabilityset(%struct.stream*) #0 !dbg !3420 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3421, metadata !164), !dbg !3422
  %3 = load i16, i16* @g_session_width, align 2, !dbg !3423
  %4 = zext i16 %3 to i32, !dbg !3423
  %5 = load i16, i16* @g_session_height, align 2, !dbg !3424
  %6 = zext i16 %5 to i32, !dbg !3424
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0), i32 %4, i32 %6), !dbg !3425
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3426
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !3428
  %9 = load i8*, i8** %8, align 8, !dbg !3428
  %10 = bitcast i8* %9 to i16*, !dbg !3429
  store i16 2, i16* %10, align 2, !dbg !3430
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3431
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !3432
  %13 = load i8*, i8** %12, align 8, !dbg !3433
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !3433
  store i8* %14, i8** %12, align 8, !dbg !3433
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3434
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !3436
  %17 = load i8*, i8** %16, align 8, !dbg !3436
  %18 = bitcast i8* %17 to i16*, !dbg !3437
  store i16 28, i16* %18, align 2, !dbg !3438
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3439
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3440
  %21 = load i8*, i8** %20, align 8, !dbg !3441
  %22 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !3441
  store i8* %22, i8** %20, align 8, !dbg !3441
  %23 = load i32, i32* @g_server_depth, align 4, !dbg !3442
  %24 = trunc i32 %23 to i16, !dbg !3442
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3444
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !3445
  %27 = load i8*, i8** %26, align 8, !dbg !3445
  %28 = bitcast i8* %27 to i16*, !dbg !3446
  store i16 %24, i16* %28, align 2, !dbg !3447
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3448
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !3449
  %31 = load i8*, i8** %30, align 8, !dbg !3450
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !3450
  store i8* %32, i8** %30, align 8, !dbg !3450
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3451
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !3453
  %35 = load i8*, i8** %34, align 8, !dbg !3453
  %36 = bitcast i8* %35 to i16*, !dbg !3454
  store i16 1, i16* %36, align 2, !dbg !3455
  %37 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3456
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !3457
  %39 = load i8*, i8** %38, align 8, !dbg !3458
  %40 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !3458
  store i8* %40, i8** %38, align 8, !dbg !3458
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3459
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !3461
  %43 = load i8*, i8** %42, align 8, !dbg !3461
  %44 = bitcast i8* %43 to i16*, !dbg !3462
  store i16 1, i16* %44, align 2, !dbg !3463
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3464
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !3465
  %47 = load i8*, i8** %46, align 8, !dbg !3466
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !3466
  store i8* %48, i8** %46, align 8, !dbg !3466
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3467
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !3469
  %51 = load i8*, i8** %50, align 8, !dbg !3469
  %52 = bitcast i8* %51 to i16*, !dbg !3470
  store i16 1, i16* %52, align 2, !dbg !3471
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3472
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !3473
  %55 = load i8*, i8** %54, align 8, !dbg !3474
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !3474
  store i8* %56, i8** %54, align 8, !dbg !3474
  %57 = load i16, i16* @g_session_width, align 2, !dbg !3475
  %58 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3477
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !3478
  %60 = load i8*, i8** %59, align 8, !dbg !3478
  %61 = bitcast i8* %60 to i16*, !dbg !3479
  store i16 %57, i16* %61, align 2, !dbg !3480
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3481
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !3482
  %64 = load i8*, i8** %63, align 8, !dbg !3483
  %65 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !3483
  store i8* %65, i8** %63, align 8, !dbg !3483
  %66 = load i16, i16* @g_session_height, align 2, !dbg !3484
  %67 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3486
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !3487
  %69 = load i8*, i8** %68, align 8, !dbg !3487
  %70 = bitcast i8* %69 to i16*, !dbg !3488
  store i16 %66, i16* %70, align 2, !dbg !3489
  %71 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3490
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !3491
  %73 = load i8*, i8** %72, align 8, !dbg !3492
  %74 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !3492
  store i8* %74, i8** %72, align 8, !dbg !3492
  %75 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3493
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !3495
  %77 = load i8*, i8** %76, align 8, !dbg !3495
  %78 = bitcast i8* %77 to i16*, !dbg !3496
  store i16 0, i16* %78, align 2, !dbg !3497
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3498
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !3499
  %81 = load i8*, i8** %80, align 8, !dbg !3500
  %82 = getelementptr inbounds i8, i8* %81, i64 2, !dbg !3500
  store i8* %82, i8** %80, align 8, !dbg !3500
  %83 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3501
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !3503
  %85 = load i8*, i8** %84, align 8, !dbg !3503
  %86 = bitcast i8* %85 to i16*, !dbg !3504
  store i16 1, i16* %86, align 2, !dbg !3505
  %87 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3506
  %88 = getelementptr inbounds %struct.stream, %struct.stream* %87, i32 0, i32 0, !dbg !3507
  %89 = load i8*, i8** %88, align 8, !dbg !3508
  %90 = getelementptr inbounds i8, i8* %89, i64 2, !dbg !3508
  store i8* %90, i8** %88, align 8, !dbg !3508
  %91 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3509
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 0, !dbg !3511
  %93 = load i8*, i8** %92, align 8, !dbg !3511
  %94 = bitcast i8* %93 to i16*, !dbg !3512
  store i16 1, i16* %94, align 2, !dbg !3513
  %95 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3514
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !3515
  %97 = load i8*, i8** %96, align 8, !dbg !3516
  %98 = getelementptr inbounds i8, i8* %97, i64 2, !dbg !3516
  store i8* %98, i8** %96, align 8, !dbg !3516
  %99 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3517
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %99, i32 0, i32 0, !dbg !3518
  %101 = load i8*, i8** %100, align 8, !dbg !3519
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !3519
  store i8* %102, i8** %100, align 8, !dbg !3519
  store i8 0, i8* %101, align 1, !dbg !3520
  %103 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3521
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !3522
  %105 = load i8*, i8** %104, align 8, !dbg !3523
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !3523
  store i8* %106, i8** %104, align 8, !dbg !3523
  store i8 0, i8* %105, align 1, !dbg !3524
  %107 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3525
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 0, !dbg !3527
  %109 = load i8*, i8** %108, align 8, !dbg !3527
  %110 = bitcast i8* %109 to i16*, !dbg !3528
  store i16 1, i16* %110, align 2, !dbg !3529
  %111 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3530
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !3531
  %113 = load i8*, i8** %112, align 8, !dbg !3532
  %114 = getelementptr inbounds i8, i8* %113, i64 2, !dbg !3532
  store i8* %114, i8** %112, align 8, !dbg !3532
  %115 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3533
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !3535
  %117 = load i8*, i8** %116, align 8, !dbg !3535
  %118 = bitcast i8* %117 to i16*, !dbg !3536
  store i16 0, i16* %118, align 2, !dbg !3537
  %119 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3538
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 0, !dbg !3539
  %121 = load i8*, i8** %120, align 8, !dbg !3540
  %122 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !3540
  store i8* %122, i8** %120, align 8, !dbg !3540
  ret void, !dbg !3541
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_order_capabilityset(%struct.stream*) #0 !dbg !3542 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3543, metadata !164), !dbg !3544
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !3545, metadata !164), !dbg !3549
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3550, metadata !164), !dbg !3551
  store i16 0, i16* %4, align 2, !dbg !3551
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3552, metadata !164), !dbg !3553
  store i32 0, i32* %5, align 4, !dbg !3553
  %6 = load i16, i16* %4, align 2, !dbg !3554
  %7 = zext i16 %6 to i32, !dbg !3554
  %8 = or i32 %7, 10, !dbg !3554
  %9 = trunc i32 %8 to i16, !dbg !3554
  store i16 %9, i16* %4, align 2, !dbg !3554
  %10 = load i16, i16* %4, align 2, !dbg !3555
  %11 = zext i16 %10 to i32, !dbg !3555
  %12 = or i32 %11, 32, !dbg !3555
  %13 = trunc i32 %12 to i16, !dbg !3555
  store i16 %13, i16* %4, align 2, !dbg !3555
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !3556
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 32, i32 16, i1 false), !dbg !3556
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !3557
  store i8 1, i8* %15, align 16, !dbg !3558
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 1, !dbg !3559
  store i8 1, i8* %16, align 1, !dbg !3560
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 2, !dbg !3561
  store i8 1, i8* %17, align 2, !dbg !3562
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 8, !dbg !3563
  store i8 1, i8* %18, align 8, !dbg !3564
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 9, !dbg !3565
  store i8 1, i8* %19, align 1, !dbg !3566
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 22, !dbg !3567
  store i8 1, i8* %20, align 2, !dbg !3568
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 27, !dbg !3569
  store i8 1, i8* %21, align 1, !dbg !3570
  %22 = load i32, i32* @g_bitmap_cache, align 4, !dbg !3571
  %23 = icmp ne i32 %22, 0, !dbg !3571
  br i1 %23, label %24, label %26, !dbg !3573

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 3, !dbg !3574
  store i8 1, i8* %25, align 1, !dbg !3575
  br label %26, !dbg !3574

; <label>:26:                                     ; preds = %24, %1
  %27 = load i32, i32* @g_desktop_save, align 4, !dbg !3576
  %28 = icmp ne i32 %27, 0, !dbg !3576
  br i1 %28, label %29, label %31, !dbg !3578

; <label>:29:                                     ; preds = %26
  store i32 230400, i32* %5, align 4, !dbg !3579
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 11, !dbg !3581
  store i8 1, i8* %30, align 1, !dbg !3582
  br label %31, !dbg !3583

; <label>:31:                                     ; preds = %29, %26
  %32 = load i32, i32* @g_polygon_ellipse_orders, align 4, !dbg !3584
  %33 = icmp ne i32 %32, 0, !dbg !3584
  br i1 %33, label %34, label %39, !dbg !3586

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 20, !dbg !3587
  store i8 1, i8* %35, align 4, !dbg !3589
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 21, !dbg !3590
  store i8 1, i8* %36, align 1, !dbg !3591
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 25, !dbg !3592
  store i8 1, i8* %37, align 1, !dbg !3593
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 26, !dbg !3594
  store i8 1, i8* %38, align 2, !dbg !3595
  br label %39, !dbg !3596

; <label>:39:                                     ; preds = %34, %31
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3597
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !3599
  %42 = load i8*, i8** %41, align 8, !dbg !3599
  %43 = bitcast i8* %42 to i16*, !dbg !3600
  store i16 3, i16* %43, align 2, !dbg !3601
  %44 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3602
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !3603
  %46 = load i8*, i8** %45, align 8, !dbg !3604
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !3604
  store i8* %47, i8** %45, align 8, !dbg !3604
  %48 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3605
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !3607
  %50 = load i8*, i8** %49, align 8, !dbg !3607
  %51 = bitcast i8* %50 to i16*, !dbg !3608
  store i16 88, i16* %51, align 2, !dbg !3609
  %52 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3610
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !3611
  %54 = load i8*, i8** %53, align 8, !dbg !3612
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !3612
  store i8* %55, i8** %53, align 8, !dbg !3612
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3613
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !3615
  %58 = load i8*, i8** %57, align 8, !dbg !3615
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 16, i32 1, i1 false), !dbg !3616
  %59 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3617
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !3618
  %61 = load i8*, i8** %60, align 8, !dbg !3619
  %62 = getelementptr inbounds i8, i8* %61, i64 16, !dbg !3619
  store i8* %62, i8** %60, align 8, !dbg !3619
  %63 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3620
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !3622
  %65 = load i8*, i8** %64, align 8, !dbg !3622
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 4, i32 1, i1 false), !dbg !3623
  %66 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3624
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !3625
  %68 = load i8*, i8** %67, align 8, !dbg !3626
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !3626
  store i8* %69, i8** %67, align 8, !dbg !3626
  %70 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3627
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !3629
  %72 = load i8*, i8** %71, align 8, !dbg !3629
  %73 = bitcast i8* %72 to i16*, !dbg !3630
  store i16 1, i16* %73, align 2, !dbg !3631
  %74 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3632
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !3633
  %76 = load i8*, i8** %75, align 8, !dbg !3634
  %77 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !3634
  store i8* %77, i8** %75, align 8, !dbg !3634
  %78 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3635
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %78, i32 0, i32 0, !dbg !3637
  %80 = load i8*, i8** %79, align 8, !dbg !3637
  %81 = bitcast i8* %80 to i16*, !dbg !3638
  store i16 20, i16* %81, align 2, !dbg !3639
  %82 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3640
  %83 = getelementptr inbounds %struct.stream, %struct.stream* %82, i32 0, i32 0, !dbg !3641
  %84 = load i8*, i8** %83, align 8, !dbg !3642
  %85 = getelementptr inbounds i8, i8* %84, i64 2, !dbg !3642
  store i8* %85, i8** %83, align 8, !dbg !3642
  %86 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3643
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0, !dbg !3645
  %88 = load i8*, i8** %87, align 8, !dbg !3645
  %89 = bitcast i8* %88 to i16*, !dbg !3646
  store i16 0, i16* %89, align 2, !dbg !3647
  %90 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3648
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %90, i32 0, i32 0, !dbg !3649
  %92 = load i8*, i8** %91, align 8, !dbg !3650
  %93 = getelementptr inbounds i8, i8* %92, i64 2, !dbg !3650
  store i8* %93, i8** %91, align 8, !dbg !3650
  %94 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3651
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %94, i32 0, i32 0, !dbg !3653
  %96 = load i8*, i8** %95, align 8, !dbg !3653
  %97 = bitcast i8* %96 to i16*, !dbg !3654
  store i16 1, i16* %97, align 2, !dbg !3655
  %98 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3656
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 0, !dbg !3657
  %100 = load i8*, i8** %99, align 8, !dbg !3658
  %101 = getelementptr inbounds i8, i8* %100, i64 2, !dbg !3658
  store i8* %101, i8** %99, align 8, !dbg !3658
  %102 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3659
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %102, i32 0, i32 0, !dbg !3661
  %104 = load i8*, i8** %103, align 8, !dbg !3661
  %105 = bitcast i8* %104 to i16*, !dbg !3662
  store i16 0, i16* %105, align 2, !dbg !3663
  %106 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3664
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 0, !dbg !3665
  %108 = load i8*, i8** %107, align 8, !dbg !3666
  %109 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !3666
  store i8* %109, i8** %107, align 8, !dbg !3666
  %110 = load i16, i16* %4, align 2, !dbg !3667
  %111 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3669
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 0, !dbg !3670
  %113 = load i8*, i8** %112, align 8, !dbg !3670
  %114 = bitcast i8* %113 to i16*, !dbg !3671
  store i16 %110, i16* %114, align 2, !dbg !3672
  %115 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3673
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !3674
  %117 = load i8*, i8** %116, align 8, !dbg !3675
  %118 = getelementptr inbounds i8, i8* %117, i64 2, !dbg !3675
  store i8* %118, i8** %116, align 8, !dbg !3675
  %119 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3676
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 0, !dbg !3678
  %121 = load i8*, i8** %120, align 8, !dbg !3678
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0, !dbg !3679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 32, i32 1, i1 false), !dbg !3679
  %123 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3680
  %124 = getelementptr inbounds %struct.stream, %struct.stream* %123, i32 0, i32 0, !dbg !3681
  %125 = load i8*, i8** %124, align 8, !dbg !3682
  %126 = getelementptr inbounds i8, i8* %125, i64 32, !dbg !3682
  store i8* %126, i8** %124, align 8, !dbg !3682
  %127 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3683
  %128 = getelementptr inbounds %struct.stream, %struct.stream* %127, i32 0, i32 0, !dbg !3685
  %129 = load i8*, i8** %128, align 8, !dbg !3685
  %130 = bitcast i8* %129 to i16*, !dbg !3686
  store i16 0, i16* %130, align 2, !dbg !3687
  %131 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3688
  %132 = getelementptr inbounds %struct.stream, %struct.stream* %131, i32 0, i32 0, !dbg !3689
  %133 = load i8*, i8** %132, align 8, !dbg !3690
  %134 = getelementptr inbounds i8, i8* %133, i64 2, !dbg !3690
  store i8* %134, i8** %132, align 8, !dbg !3690
  %135 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3691
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !3693
  %137 = load i8*, i8** %136, align 8, !dbg !3693
  %138 = bitcast i8* %137 to i16*, !dbg !3694
  store i16 0, i16* %138, align 2, !dbg !3695
  %139 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3696
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 0, !dbg !3697
  %141 = load i8*, i8** %140, align 8, !dbg !3698
  %142 = getelementptr inbounds i8, i8* %141, i64 2, !dbg !3698
  store i8* %142, i8** %140, align 8, !dbg !3698
  %143 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3699
  %144 = getelementptr inbounds %struct.stream, %struct.stream* %143, i32 0, i32 0, !dbg !3701
  %145 = load i8*, i8** %144, align 8, !dbg !3701
  %146 = bitcast i8* %145 to i32*, !dbg !3702
  store i32 0, i32* %146, align 4, !dbg !3703
  %147 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3704
  %148 = getelementptr inbounds %struct.stream, %struct.stream* %147, i32 0, i32 0, !dbg !3705
  %149 = load i8*, i8** %148, align 8, !dbg !3706
  %150 = getelementptr inbounds i8, i8* %149, i64 4, !dbg !3706
  store i8* %150, i8** %148, align 8, !dbg !3706
  %151 = load i32, i32* %5, align 4, !dbg !3707
  %152 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3709
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !3710
  %154 = load i8*, i8** %153, align 8, !dbg !3710
  %155 = bitcast i8* %154 to i32*, !dbg !3711
  store i32 %151, i32* %155, align 4, !dbg !3712
  %156 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3713
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 0, !dbg !3714
  %158 = load i8*, i8** %157, align 8, !dbg !3715
  %159 = getelementptr inbounds i8, i8* %158, i64 4, !dbg !3715
  store i8* %159, i8** %157, align 8, !dbg !3715
  %160 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3716
  %161 = getelementptr inbounds %struct.stream, %struct.stream* %160, i32 0, i32 0, !dbg !3718
  %162 = load i8*, i8** %161, align 8, !dbg !3718
  %163 = bitcast i8* %162 to i16*, !dbg !3719
  store i16 0, i16* %163, align 2, !dbg !3720
  %164 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3721
  %165 = getelementptr inbounds %struct.stream, %struct.stream* %164, i32 0, i32 0, !dbg !3722
  %166 = load i8*, i8** %165, align 8, !dbg !3723
  %167 = getelementptr inbounds i8, i8* %166, i64 2, !dbg !3723
  store i8* %167, i8** %165, align 8, !dbg !3723
  %168 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3724
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !3726
  %170 = load i8*, i8** %169, align 8, !dbg !3726
  %171 = bitcast i8* %170 to i16*, !dbg !3727
  store i16 0, i16* %171, align 2, !dbg !3728
  %172 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3729
  %173 = getelementptr inbounds %struct.stream, %struct.stream* %172, i32 0, i32 0, !dbg !3730
  %174 = load i8*, i8** %173, align 8, !dbg !3731
  %175 = getelementptr inbounds i8, i8* %174, i64 2, !dbg !3731
  store i8* %175, i8** %173, align 8, !dbg !3731
  %176 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3732
  %177 = getelementptr inbounds %struct.stream, %struct.stream* %176, i32 0, i32 0, !dbg !3734
  %178 = load i8*, i8** %177, align 8, !dbg !3734
  %179 = bitcast i8* %178 to i16*, !dbg !3735
  store i16 1252, i16* %179, align 2, !dbg !3736
  %180 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3737
  %181 = getelementptr inbounds %struct.stream, %struct.stream* %180, i32 0, i32 0, !dbg !3738
  %182 = load i8*, i8** %181, align 8, !dbg !3739
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !3739
  store i8* %183, i8** %181, align 8, !dbg !3739
  %184 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3740
  %185 = getelementptr inbounds %struct.stream, %struct.stream* %184, i32 0, i32 0, !dbg !3742
  %186 = load i8*, i8** %185, align 8, !dbg !3742
  %187 = bitcast i8* %186 to i16*, !dbg !3743
  store i16 0, i16* %187, align 2, !dbg !3744
  %188 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3745
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %188, i32 0, i32 0, !dbg !3746
  %190 = load i8*, i8** %189, align 8, !dbg !3747
  %191 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !3747
  store i8* %191, i8** %189, align 8, !dbg !3747
  ret void, !dbg !3748
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_bmpcache2_caps(%struct.stream*) #0 !dbg !3749 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3750, metadata !164), !dbg !3751
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3752
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !3754
  %5 = load i8*, i8** %4, align 8, !dbg !3754
  %6 = bitcast i8* %5 to i16*, !dbg !3755
  store i16 19, i16* %6, align 2, !dbg !3756
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3757
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !3758
  %9 = load i8*, i8** %8, align 8, !dbg !3759
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !3759
  store i8* %10, i8** %8, align 8, !dbg !3759
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3760
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !3762
  %13 = load i8*, i8** %12, align 8, !dbg !3762
  %14 = bitcast i8* %13 to i16*, !dbg !3763
  store i16 40, i16* %14, align 2, !dbg !3764
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3765
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !3766
  %17 = load i8*, i8** %16, align 8, !dbg !3767
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !3767
  store i8* %18, i8** %16, align 8, !dbg !3767
  %19 = load i32, i32* @g_bitmap_cache_persist_enable, align 4, !dbg !3768
  %20 = icmp ne i32 %19, 0, !dbg !3768
  %21 = select i1 %20, i32 2, i32 0, !dbg !3768
  %22 = trunc i32 %21 to i16, !dbg !3768
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3770
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3771
  %25 = load i8*, i8** %24, align 8, !dbg !3771
  %26 = bitcast i8* %25 to i16*, !dbg !3772
  store i16 %22, i16* %26, align 2, !dbg !3773
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3774
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !3775
  %29 = load i8*, i8** %28, align 8, !dbg !3776
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3776
  store i8* %30, i8** %28, align 8, !dbg !3776
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3777
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !3779
  %33 = load i8*, i8** %32, align 8, !dbg !3780
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !3780
  store i8* %34, i8** %32, align 8, !dbg !3780
  store i8 0, i8* %33, align 1, !dbg !3781
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3782
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !3783
  %37 = load i8*, i8** %36, align 8, !dbg !3784
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !3784
  store i8* %38, i8** %36, align 8, !dbg !3784
  store i8 3, i8* %37, align 1, !dbg !3785
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3786
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !3788
  %41 = load i8*, i8** %40, align 8, !dbg !3788
  %42 = bitcast i8* %41 to i32*, !dbg !3789
  store i32 120, i32* %42, align 4, !dbg !3790
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3791
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !3792
  %45 = load i8*, i8** %44, align 8, !dbg !3793
  %46 = getelementptr inbounds i8, i8* %45, i64 4, !dbg !3793
  store i8* %46, i8** %44, align 8, !dbg !3793
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3794
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !3796
  %49 = load i8*, i8** %48, align 8, !dbg !3796
  %50 = bitcast i8* %49 to i32*, !dbg !3797
  store i32 120, i32* %50, align 4, !dbg !3798
  %51 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3799
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !3800
  %53 = load i8*, i8** %52, align 8, !dbg !3801
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !3801
  store i8* %54, i8** %52, align 8, !dbg !3801
  %55 = call i32 @pstcache_init(i8 zeroext 2), !dbg !3802
  %56 = icmp ne i32 %55, 0, !dbg !3802
  br i1 %56, label %57, label %66, !dbg !3804

; <label>:57:                                     ; preds = %1
  %58 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3805
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !3808
  %60 = load i8*, i8** %59, align 8, !dbg !3808
  %61 = bitcast i8* %60 to i32*, !dbg !3809
  store i32 -2147481098, i32* %61, align 4, !dbg !3810
  %62 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3811
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %62, i32 0, i32 0, !dbg !3812
  %64 = load i8*, i8** %63, align 8, !dbg !3813
  %65 = getelementptr inbounds i8, i8* %64, i64 4, !dbg !3813
  store i8* %65, i8** %63, align 8, !dbg !3813
  br label %75, !dbg !3814

; <label>:66:                                     ; preds = %1
  %67 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3815
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !3818
  %69 = load i8*, i8** %68, align 8, !dbg !3818
  %70 = bitcast i8* %69 to i32*, !dbg !3819
  store i32 336, i32* %70, align 4, !dbg !3820
  %71 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3821
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 0, !dbg !3822
  %73 = load i8*, i8** %72, align 8, !dbg !3823
  %74 = getelementptr inbounds i8, i8* %73, i64 4, !dbg !3823
  store i8* %74, i8** %72, align 8, !dbg !3823
  br label %75

; <label>:75:                                     ; preds = %66, %57
  %76 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3824
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !3826
  %78 = load i8*, i8** %77, align 8, !dbg !3826
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 20, i32 1, i1 false), !dbg !3827
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3828
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !3829
  %81 = load i8*, i8** %80, align 8, !dbg !3830
  %82 = getelementptr inbounds i8, i8* %81, i64 20, !dbg !3830
  store i8* %82, i8** %80, align 8, !dbg !3830
  ret void, !dbg !3831
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_newpointer_caps(%struct.stream*) #0 !dbg !3832 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3833, metadata !164), !dbg !3834
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3835
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !3837
  %5 = load i8*, i8** %4, align 8, !dbg !3837
  %6 = bitcast i8* %5 to i16*, !dbg !3838
  store i16 8, i16* %6, align 2, !dbg !3839
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3840
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !3841
  %9 = load i8*, i8** %8, align 8, !dbg !3842
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !3842
  store i8* %10, i8** %8, align 8, !dbg !3842
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3843
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !3845
  %13 = load i8*, i8** %12, align 8, !dbg !3845
  %14 = bitcast i8* %13 to i16*, !dbg !3846
  store i16 10, i16* %14, align 2, !dbg !3847
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3848
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !3849
  %17 = load i8*, i8** %16, align 8, !dbg !3850
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !3850
  store i8* %18, i8** %16, align 8, !dbg !3850
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3851
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3853
  %21 = load i8*, i8** %20, align 8, !dbg !3853
  %22 = bitcast i8* %21 to i16*, !dbg !3854
  store i16 1, i16* %22, align 2, !dbg !3855
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3856
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3857
  %25 = load i8*, i8** %24, align 8, !dbg !3858
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !3858
  store i8* %26, i8** %24, align 8, !dbg !3858
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3859
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !3861
  %29 = load i8*, i8** %28, align 8, !dbg !3861
  %30 = bitcast i8* %29 to i16*, !dbg !3862
  store i16 20, i16* %30, align 2, !dbg !3863
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3864
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !3865
  %33 = load i8*, i8** %32, align 8, !dbg !3866
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !3866
  store i8* %34, i8** %32, align 8, !dbg !3866
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3867
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !3869
  %37 = load i8*, i8** %36, align 8, !dbg !3869
  %38 = bitcast i8* %37 to i16*, !dbg !3870
  store i16 20, i16* %38, align 2, !dbg !3871
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3872
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !3873
  %41 = load i8*, i8** %40, align 8, !dbg !3874
  %42 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !3874
  store i8* %42, i8** %40, align 8, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_bmpcache_caps(%struct.stream*) #0 !dbg !3876 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3877, metadata !164), !dbg !3878
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3879, metadata !164), !dbg !3880
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.rdp_out_bmpcache_caps, i32 0, i32 0)), !dbg !3881
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3882
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !3884
  %6 = load i8*, i8** %5, align 8, !dbg !3884
  %7 = bitcast i8* %6 to i16*, !dbg !3885
  store i16 4, i16* %7, align 2, !dbg !3886
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3887
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !3888
  %10 = load i8*, i8** %9, align 8, !dbg !3889
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !3889
  store i8* %11, i8** %9, align 8, !dbg !3889
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3890
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !3892
  %14 = load i8*, i8** %13, align 8, !dbg !3892
  %15 = bitcast i8* %14 to i16*, !dbg !3893
  store i16 40, i16* %15, align 2, !dbg !3894
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3895
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !3896
  %18 = load i8*, i8** %17, align 8, !dbg !3897
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !3897
  store i8* %19, i8** %17, align 8, !dbg !3897
  %20 = load i32, i32* @g_server_depth, align 4, !dbg !3898
  %21 = add nsw i32 %20, 7, !dbg !3899
  %22 = sdiv i32 %21, 8, !dbg !3900
  store i32 %22, i32* %3, align 4, !dbg !3901
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3902
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3904
  %25 = load i8*, i8** %24, align 8, !dbg !3904
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 24, i32 1, i1 false), !dbg !3905
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3906
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !3907
  %28 = load i8*, i8** %27, align 8, !dbg !3908
  %29 = getelementptr inbounds i8, i8* %28, i64 24, !dbg !3908
  store i8* %29, i8** %27, align 8, !dbg !3908
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3909
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !3911
  %32 = load i8*, i8** %31, align 8, !dbg !3911
  %33 = bitcast i8* %32 to i16*, !dbg !3912
  store i16 600, i16* %33, align 2, !dbg !3913
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3914
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !3915
  %36 = load i8*, i8** %35, align 8, !dbg !3916
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !3916
  store i8* %37, i8** %35, align 8, !dbg !3916
  %38 = load i32, i32* %3, align 4, !dbg !3917
  %39 = mul nsw i32 256, %38, !dbg !3919
  %40 = trunc i32 %39 to i16, !dbg !3920
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3921
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !3922
  %43 = load i8*, i8** %42, align 8, !dbg !3922
  %44 = bitcast i8* %43 to i16*, !dbg !3923
  store i16 %40, i16* %44, align 2, !dbg !3924
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3925
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !3926
  %47 = load i8*, i8** %46, align 8, !dbg !3927
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !3927
  store i8* %48, i8** %46, align 8, !dbg !3927
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3928
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !3930
  %51 = load i8*, i8** %50, align 8, !dbg !3930
  %52 = bitcast i8* %51 to i16*, !dbg !3931
  store i16 300, i16* %52, align 2, !dbg !3932
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3933
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !3934
  %55 = load i8*, i8** %54, align 8, !dbg !3935
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !3935
  store i8* %56, i8** %54, align 8, !dbg !3935
  %57 = load i32, i32* %3, align 4, !dbg !3936
  %58 = mul nsw i32 1024, %57, !dbg !3938
  %59 = trunc i32 %58 to i16, !dbg !3939
  %60 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3940
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !3941
  %62 = load i8*, i8** %61, align 8, !dbg !3941
  %63 = bitcast i8* %62 to i16*, !dbg !3942
  store i16 %59, i16* %63, align 2, !dbg !3943
  %64 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3944
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !3945
  %66 = load i8*, i8** %65, align 8, !dbg !3946
  %67 = getelementptr inbounds i8, i8* %66, i64 2, !dbg !3946
  store i8* %67, i8** %65, align 8, !dbg !3946
  %68 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3947
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !3949
  %70 = load i8*, i8** %69, align 8, !dbg !3949
  %71 = bitcast i8* %70 to i16*, !dbg !3950
  store i16 262, i16* %71, align 2, !dbg !3951
  %72 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3952
  %73 = getelementptr inbounds %struct.stream, %struct.stream* %72, i32 0, i32 0, !dbg !3953
  %74 = load i8*, i8** %73, align 8, !dbg !3954
  %75 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !3954
  store i8* %75, i8** %73, align 8, !dbg !3954
  %76 = load i32, i32* %3, align 4, !dbg !3955
  %77 = mul nsw i32 4096, %76, !dbg !3957
  %78 = trunc i32 %77 to i16, !dbg !3958
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3959
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !3960
  %81 = load i8*, i8** %80, align 8, !dbg !3960
  %82 = bitcast i8* %81 to i16*, !dbg !3961
  store i16 %78, i16* %82, align 2, !dbg !3962
  %83 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3963
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !3964
  %85 = load i8*, i8** %84, align 8, !dbg !3965
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !3965
  store i8* %86, i8** %84, align 8, !dbg !3965
  ret void, !dbg !3966
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_pointer_caps(%struct.stream*) #0 !dbg !3967 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !3968, metadata !164), !dbg !3969
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3970
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !3972
  %5 = load i8*, i8** %4, align 8, !dbg !3972
  %6 = bitcast i8* %5 to i16*, !dbg !3973
  store i16 8, i16* %6, align 2, !dbg !3974
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3975
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !3976
  %9 = load i8*, i8** %8, align 8, !dbg !3977
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !3977
  store i8* %10, i8** %8, align 8, !dbg !3977
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3978
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !3980
  %13 = load i8*, i8** %12, align 8, !dbg !3980
  %14 = bitcast i8* %13 to i16*, !dbg !3981
  store i16 8, i16* %14, align 2, !dbg !3982
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3983
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !3984
  %17 = load i8*, i8** %16, align 8, !dbg !3985
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !3985
  store i8* %18, i8** %16, align 8, !dbg !3985
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3986
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !3988
  %21 = load i8*, i8** %20, align 8, !dbg !3988
  %22 = bitcast i8* %21 to i16*, !dbg !3989
  store i16 0, i16* %22, align 2, !dbg !3990
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3991
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !3992
  %25 = load i8*, i8** %24, align 8, !dbg !3993
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !3993
  store i8* %26, i8** %24, align 8, !dbg !3993
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3994
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !3996
  %29 = load i8*, i8** %28, align 8, !dbg !3996
  %30 = bitcast i8* %29 to i16*, !dbg !3997
  store i16 20, i16* %30, align 2, !dbg !3998
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !3999
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4000
  %33 = load i8*, i8** %32, align 8, !dbg !4001
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !4001
  store i8* %34, i8** %32, align 8, !dbg !4001
  ret void, !dbg !4002
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_colcache_caps(%struct.stream*) #0 !dbg !4003 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4004, metadata !164), !dbg !4005
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4006
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4008
  %5 = load i8*, i8** %4, align 8, !dbg !4008
  %6 = bitcast i8* %5 to i16*, !dbg !4009
  store i16 10, i16* %6, align 2, !dbg !4010
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4011
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4012
  %9 = load i8*, i8** %8, align 8, !dbg !4013
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4013
  store i8* %10, i8** %8, align 8, !dbg !4013
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4014
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4016
  %13 = load i8*, i8** %12, align 8, !dbg !4016
  %14 = bitcast i8* %13 to i16*, !dbg !4017
  store i16 8, i16* %14, align 2, !dbg !4018
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4019
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4020
  %17 = load i8*, i8** %16, align 8, !dbg !4021
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4021
  store i8* %18, i8** %16, align 8, !dbg !4021
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4022
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4024
  %21 = load i8*, i8** %20, align 8, !dbg !4024
  %22 = bitcast i8* %21 to i16*, !dbg !4025
  store i16 6, i16* %22, align 2, !dbg !4026
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4027
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4028
  %25 = load i8*, i8** %24, align 8, !dbg !4029
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4029
  store i8* %26, i8** %24, align 8, !dbg !4029
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4030
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !4032
  %29 = load i8*, i8** %28, align 8, !dbg !4032
  %30 = bitcast i8* %29 to i16*, !dbg !4033
  store i16 0, i16* %30, align 2, !dbg !4034
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4035
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4036
  %33 = load i8*, i8** %32, align 8, !dbg !4037
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !4037
  store i8* %34, i8** %32, align 8, !dbg !4037
  ret void, !dbg !4038
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_activate_caps(%struct.stream*) #0 !dbg !4039 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4040, metadata !164), !dbg !4041
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4042
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4044
  %5 = load i8*, i8** %4, align 8, !dbg !4044
  %6 = bitcast i8* %5 to i16*, !dbg !4045
  store i16 7, i16* %6, align 2, !dbg !4046
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4047
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4048
  %9 = load i8*, i8** %8, align 8, !dbg !4049
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4049
  store i8* %10, i8** %8, align 8, !dbg !4049
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4050
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4052
  %13 = load i8*, i8** %12, align 8, !dbg !4052
  %14 = bitcast i8* %13 to i16*, !dbg !4053
  store i16 12, i16* %14, align 2, !dbg !4054
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4055
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4056
  %17 = load i8*, i8** %16, align 8, !dbg !4057
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4057
  store i8* %18, i8** %16, align 8, !dbg !4057
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4058
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4060
  %21 = load i8*, i8** %20, align 8, !dbg !4060
  %22 = bitcast i8* %21 to i16*, !dbg !4061
  store i16 0, i16* %22, align 2, !dbg !4062
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4063
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4064
  %25 = load i8*, i8** %24, align 8, !dbg !4065
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4065
  store i8* %26, i8** %24, align 8, !dbg !4065
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4066
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !4068
  %29 = load i8*, i8** %28, align 8, !dbg !4068
  %30 = bitcast i8* %29 to i16*, !dbg !4069
  store i16 0, i16* %30, align 2, !dbg !4070
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4071
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4072
  %33 = load i8*, i8** %32, align 8, !dbg !4073
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !4073
  store i8* %34, i8** %32, align 8, !dbg !4073
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4074
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !4076
  %37 = load i8*, i8** %36, align 8, !dbg !4076
  %38 = bitcast i8* %37 to i16*, !dbg !4077
  store i16 0, i16* %38, align 2, !dbg !4078
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4079
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !4080
  %41 = load i8*, i8** %40, align 8, !dbg !4081
  %42 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !4081
  store i8* %42, i8** %40, align 8, !dbg !4081
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4082
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !4084
  %45 = load i8*, i8** %44, align 8, !dbg !4084
  %46 = bitcast i8* %45 to i16*, !dbg !4085
  store i16 0, i16* %46, align 2, !dbg !4086
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4087
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !4088
  %49 = load i8*, i8** %48, align 8, !dbg !4089
  %50 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !4089
  store i8* %50, i8** %48, align 8, !dbg !4089
  ret void, !dbg !4090
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_control_caps(%struct.stream*) #0 !dbg !4091 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4092, metadata !164), !dbg !4093
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4094
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4096
  %5 = load i8*, i8** %4, align 8, !dbg !4096
  %6 = bitcast i8* %5 to i16*, !dbg !4097
  store i16 5, i16* %6, align 2, !dbg !4098
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4099
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4100
  %9 = load i8*, i8** %8, align 8, !dbg !4101
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4101
  store i8* %10, i8** %8, align 8, !dbg !4101
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4102
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4104
  %13 = load i8*, i8** %12, align 8, !dbg !4104
  %14 = bitcast i8* %13 to i16*, !dbg !4105
  store i16 12, i16* %14, align 2, !dbg !4106
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4107
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4108
  %17 = load i8*, i8** %16, align 8, !dbg !4109
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4109
  store i8* %18, i8** %16, align 8, !dbg !4109
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4110
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4112
  %21 = load i8*, i8** %20, align 8, !dbg !4112
  %22 = bitcast i8* %21 to i16*, !dbg !4113
  store i16 0, i16* %22, align 2, !dbg !4114
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4115
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4116
  %25 = load i8*, i8** %24, align 8, !dbg !4117
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4117
  store i8* %26, i8** %24, align 8, !dbg !4117
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4118
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !4120
  %29 = load i8*, i8** %28, align 8, !dbg !4120
  %30 = bitcast i8* %29 to i16*, !dbg !4121
  store i16 0, i16* %30, align 2, !dbg !4122
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4123
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4124
  %33 = load i8*, i8** %32, align 8, !dbg !4125
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !4125
  store i8* %34, i8** %32, align 8, !dbg !4125
  %35 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4126
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !4128
  %37 = load i8*, i8** %36, align 8, !dbg !4128
  %38 = bitcast i8* %37 to i16*, !dbg !4129
  store i16 2, i16* %38, align 2, !dbg !4130
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4131
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !4132
  %41 = load i8*, i8** %40, align 8, !dbg !4133
  %42 = getelementptr inbounds i8, i8* %41, i64 2, !dbg !4133
  store i8* %42, i8** %40, align 8, !dbg !4133
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4134
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !4136
  %45 = load i8*, i8** %44, align 8, !dbg !4136
  %46 = bitcast i8* %45 to i16*, !dbg !4137
  store i16 2, i16* %46, align 2, !dbg !4138
  %47 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4139
  %48 = getelementptr inbounds %struct.stream, %struct.stream* %47, i32 0, i32 0, !dbg !4140
  %49 = load i8*, i8** %48, align 8, !dbg !4141
  %50 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !4141
  store i8* %50, i8** %48, align 8, !dbg !4141
  ret void, !dbg !4142
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_share_caps(%struct.stream*) #0 !dbg !4143 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4144, metadata !164), !dbg !4145
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4146
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4148
  %5 = load i8*, i8** %4, align 8, !dbg !4148
  %6 = bitcast i8* %5 to i16*, !dbg !4149
  store i16 9, i16* %6, align 2, !dbg !4150
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4151
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4152
  %9 = load i8*, i8** %8, align 8, !dbg !4153
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4153
  store i8* %10, i8** %8, align 8, !dbg !4153
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4154
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4156
  %13 = load i8*, i8** %12, align 8, !dbg !4156
  %14 = bitcast i8* %13 to i16*, !dbg !4157
  store i16 8, i16* %14, align 2, !dbg !4158
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4159
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4160
  %17 = load i8*, i8** %16, align 8, !dbg !4161
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4161
  store i8* %18, i8** %16, align 8, !dbg !4161
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4162
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4164
  %21 = load i8*, i8** %20, align 8, !dbg !4164
  %22 = bitcast i8* %21 to i16*, !dbg !4165
  store i16 0, i16* %22, align 2, !dbg !4166
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4167
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4168
  %25 = load i8*, i8** %24, align 8, !dbg !4169
  %26 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !4169
  store i8* %26, i8** %24, align 8, !dbg !4169
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4170
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !4172
  %29 = load i8*, i8** %28, align 8, !dbg !4172
  %30 = bitcast i8* %29 to i16*, !dbg !4173
  store i16 0, i16* %30, align 2, !dbg !4174
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4175
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4176
  %33 = load i8*, i8** %32, align 8, !dbg !4177
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !4177
  store i8* %34, i8** %32, align 8, !dbg !4177
  ret void, !dbg !4178
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_brushcache_caps(%struct.stream*) #0 !dbg !4179 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4180, metadata !164), !dbg !4181
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4182
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4184
  %5 = load i8*, i8** %4, align 8, !dbg !4184
  %6 = bitcast i8* %5 to i16*, !dbg !4185
  store i16 15, i16* %6, align 2, !dbg !4186
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4187
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4188
  %9 = load i8*, i8** %8, align 8, !dbg !4189
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4189
  store i8* %10, i8** %8, align 8, !dbg !4189
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4190
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4192
  %13 = load i8*, i8** %12, align 8, !dbg !4192
  %14 = bitcast i8* %13 to i16*, !dbg !4193
  store i16 8, i16* %14, align 2, !dbg !4194
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4195
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4196
  %17 = load i8*, i8** %16, align 8, !dbg !4197
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4197
  store i8* %18, i8** %16, align 8, !dbg !4197
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4198
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4200
  %21 = load i8*, i8** %20, align 8, !dbg !4200
  %22 = bitcast i8* %21 to i32*, !dbg !4201
  store i32 1, i32* %22, align 4, !dbg !4202
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4203
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4204
  %25 = load i8*, i8** %24, align 8, !dbg !4205
  %26 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !4205
  store i8* %26, i8** %24, align 8, !dbg !4205
  ret void, !dbg !4206
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_input_capabilityset(%struct.stream*) #0 !dbg !4207 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4208, metadata !164), !dbg !4209
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4210, metadata !164), !dbg !4211
  store i16 0, i16* %3, align 2, !dbg !4211
  %4 = load i16, i16* %3, align 2, !dbg !4212
  %5 = zext i16 %4 to i32, !dbg !4212
  %6 = or i32 %5, 1, !dbg !4212
  %7 = trunc i32 %6 to i16, !dbg !4212
  store i16 %7, i16* %3, align 2, !dbg !4212
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4213
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !4215
  %10 = load i8*, i8** %9, align 8, !dbg !4215
  %11 = bitcast i8* %10 to i16*, !dbg !4216
  store i16 13, i16* %11, align 2, !dbg !4217
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4218
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !4219
  %14 = load i8*, i8** %13, align 8, !dbg !4220
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !4220
  store i8* %15, i8** %13, align 8, !dbg !4220
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4221
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !4223
  %18 = load i8*, i8** %17, align 8, !dbg !4223
  %19 = bitcast i8* %18 to i16*, !dbg !4224
  store i16 88, i16* %19, align 2, !dbg !4225
  %20 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4226
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !4227
  %22 = load i8*, i8** %21, align 8, !dbg !4228
  %23 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !4228
  store i8* %23, i8** %21, align 8, !dbg !4228
  %24 = load i16, i16* %3, align 2, !dbg !4229
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4231
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !4232
  %27 = load i8*, i8** %26, align 8, !dbg !4232
  %28 = bitcast i8* %27 to i16*, !dbg !4233
  store i16 %24, i16* %28, align 2, !dbg !4234
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4235
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !4236
  %31 = load i8*, i8** %30, align 8, !dbg !4237
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !4237
  store i8* %32, i8** %30, align 8, !dbg !4237
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4238
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !4240
  %35 = load i8*, i8** %34, align 8, !dbg !4240
  %36 = bitcast i8* %35 to i16*, !dbg !4241
  store i16 0, i16* %36, align 2, !dbg !4242
  %37 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4243
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !4244
  %39 = load i8*, i8** %38, align 8, !dbg !4245
  %40 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !4245
  store i8* %40, i8** %38, align 8, !dbg !4245
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4246
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !4248
  %43 = load i8*, i8** %42, align 8, !dbg !4248
  %44 = bitcast i8* %43 to i32*, !dbg !4249
  store i32 1033, i32* %44, align 4, !dbg !4250
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4251
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !4252
  %47 = load i8*, i8** %46, align 8, !dbg !4253
  %48 = getelementptr inbounds i8, i8* %47, i64 4, !dbg !4253
  store i8* %48, i8** %46, align 8, !dbg !4253
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4254
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !4256
  %51 = load i8*, i8** %50, align 8, !dbg !4256
  %52 = bitcast i8* %51 to i32*, !dbg !4257
  store i32 4, i32* %52, align 4, !dbg !4258
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4259
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !4260
  %55 = load i8*, i8** %54, align 8, !dbg !4261
  %56 = getelementptr inbounds i8, i8* %55, i64 4, !dbg !4261
  store i8* %56, i8** %54, align 8, !dbg !4261
  %57 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4262
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !4264
  %59 = load i8*, i8** %58, align 8, !dbg !4264
  %60 = bitcast i8* %59 to i32*, !dbg !4265
  store i32 0, i32* %60, align 4, !dbg !4266
  %61 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4267
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !4268
  %63 = load i8*, i8** %62, align 8, !dbg !4269
  %64 = getelementptr inbounds i8, i8* %63, i64 4, !dbg !4269
  store i8* %64, i8** %62, align 8, !dbg !4269
  %65 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4270
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !4272
  %67 = load i8*, i8** %66, align 8, !dbg !4272
  %68 = bitcast i8* %67 to i32*, !dbg !4273
  store i32 12, i32* %68, align 4, !dbg !4274
  %69 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4275
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0, !dbg !4276
  %71 = load i8*, i8** %70, align 8, !dbg !4277
  %72 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !4277
  store i8* %72, i8** %70, align 8, !dbg !4277
  %73 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4278
  call void @out_utf16s_padded(%struct.stream* %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i64 64, i8 zeroext 0), !dbg !4279
  ret void, !dbg !4280
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_sound_capabilityset(%struct.stream*) #0 !dbg !4281 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4282, metadata !164), !dbg !4283
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4284, metadata !164), !dbg !4285
  store i16 1, i16* %3, align 2, !dbg !4285
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4286
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !4288
  %6 = load i8*, i8** %5, align 8, !dbg !4288
  %7 = bitcast i8* %6 to i16*, !dbg !4289
  store i16 12, i16* %7, align 2, !dbg !4290
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4291
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !4292
  %10 = load i8*, i8** %9, align 8, !dbg !4293
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !4293
  store i8* %11, i8** %9, align 8, !dbg !4293
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4294
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !4296
  %14 = load i8*, i8** %13, align 8, !dbg !4296
  %15 = bitcast i8* %14 to i16*, !dbg !4297
  store i16 8, i16* %15, align 2, !dbg !4298
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4299
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !4300
  %18 = load i8*, i8** %17, align 8, !dbg !4301
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4301
  store i8* %19, i8** %17, align 8, !dbg !4301
  %20 = load i16, i16* %3, align 2, !dbg !4302
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4304
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4305
  %23 = load i8*, i8** %22, align 8, !dbg !4305
  %24 = bitcast i8* %23 to i16*, !dbg !4306
  store i16 %20, i16* %24, align 2, !dbg !4307
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4308
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !4309
  %27 = load i8*, i8** %26, align 8, !dbg !4310
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4310
  store i8* %28, i8** %26, align 8, !dbg !4310
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4311
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !4313
  %31 = load i8*, i8** %30, align 8, !dbg !4313
  %32 = bitcast i8* %31 to i16*, !dbg !4314
  store i16 0, i16* %32, align 2, !dbg !4315
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4316
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !4317
  %35 = load i8*, i8** %34, align 8, !dbg !4318
  %36 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !4318
  store i8* %36, i8** %34, align 8, !dbg !4318
  ret void, !dbg !4319
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_font_capabilityset(%struct.stream*) #0 !dbg !4320 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4321, metadata !164), !dbg !4322
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4323, metadata !164), !dbg !4324
  store i16 1, i16* %3, align 2, !dbg !4324
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4325
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !4327
  %6 = load i8*, i8** %5, align 8, !dbg !4327
  %7 = bitcast i8* %6 to i16*, !dbg !4328
  store i16 14, i16* %7, align 2, !dbg !4329
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4330
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !4331
  %10 = load i8*, i8** %9, align 8, !dbg !4332
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !4332
  store i8* %11, i8** %9, align 8, !dbg !4332
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4333
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !4335
  %14 = load i8*, i8** %13, align 8, !dbg !4335
  %15 = bitcast i8* %14 to i16*, !dbg !4336
  store i16 8, i16* %15, align 2, !dbg !4337
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4338
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !4339
  %18 = load i8*, i8** %17, align 8, !dbg !4340
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4340
  store i8* %19, i8** %17, align 8, !dbg !4340
  %20 = load i16, i16* %3, align 2, !dbg !4341
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4343
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4344
  %23 = load i8*, i8** %22, align 8, !dbg !4344
  %24 = bitcast i8* %23 to i16*, !dbg !4345
  store i16 %20, i16* %24, align 2, !dbg !4346
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4347
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !4348
  %27 = load i8*, i8** %26, align 8, !dbg !4349
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4349
  store i8* %28, i8** %26, align 8, !dbg !4349
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4350
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !4352
  %31 = load i8*, i8** %30, align 8, !dbg !4352
  %32 = bitcast i8* %31 to i16*, !dbg !4353
  store i16 0, i16* %32, align 2, !dbg !4354
  %33 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4355
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !4356
  %35 = load i8*, i8** %34, align 8, !dbg !4357
  %36 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !4357
  store i8* %36, i8** %34, align 8, !dbg !4357
  ret void, !dbg !4358
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_glyphcache_capabilityset(%struct.stream*) #0 !dbg !4359 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4360, metadata !164), !dbg !4361
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4362, metadata !164), !dbg !4363
  store i16 2, i16* %3, align 2, !dbg !4363
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4364, metadata !164), !dbg !4365
  store i32 16777472, i32* %4, align 4, !dbg !4365
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4366
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !4368
  %7 = load i8*, i8** %6, align 8, !dbg !4368
  %8 = bitcast i8* %7 to i16*, !dbg !4369
  store i16 16, i16* %8, align 2, !dbg !4370
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4371
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 0, !dbg !4372
  %11 = load i8*, i8** %10, align 8, !dbg !4373
  %12 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !4373
  store i8* %12, i8** %10, align 8, !dbg !4373
  %13 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4374
  %14 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !4376
  %15 = load i8*, i8** %14, align 8, !dbg !4376
  %16 = bitcast i8* %15 to i16*, !dbg !4377
  store i16 52, i16* %16, align 2, !dbg !4378
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4379
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !4380
  %19 = load i8*, i8** %18, align 8, !dbg !4381
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !4381
  store i8* %20, i8** %18, align 8, !dbg !4381
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4382
  call void @rdp_out_ts_cache_definition(%struct.stream* %21, i16 zeroext 254, i16 zeroext 4), !dbg !4383
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4384
  call void @rdp_out_ts_cache_definition(%struct.stream* %22, i16 zeroext 254, i16 zeroext 4), !dbg !4385
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4386
  call void @rdp_out_ts_cache_definition(%struct.stream* %23, i16 zeroext 254, i16 zeroext 8), !dbg !4387
  %24 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4388
  call void @rdp_out_ts_cache_definition(%struct.stream* %24, i16 zeroext 254, i16 zeroext 8), !dbg !4389
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4390
  call void @rdp_out_ts_cache_definition(%struct.stream* %25, i16 zeroext 254, i16 zeroext 16), !dbg !4391
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4392
  call void @rdp_out_ts_cache_definition(%struct.stream* %26, i16 zeroext 254, i16 zeroext 32), !dbg !4393
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4394
  call void @rdp_out_ts_cache_definition(%struct.stream* %27, i16 zeroext 254, i16 zeroext 64), !dbg !4395
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4396
  call void @rdp_out_ts_cache_definition(%struct.stream* %28, i16 zeroext 254, i16 zeroext 128), !dbg !4397
  %29 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4398
  call void @rdp_out_ts_cache_definition(%struct.stream* %29, i16 zeroext 254, i16 zeroext 256), !dbg !4399
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4400
  call void @rdp_out_ts_cache_definition(%struct.stream* %30, i16 zeroext 64, i16 zeroext 2048), !dbg !4401
  %31 = load i32, i32* %4, align 4, !dbg !4402
  %32 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4404
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !4405
  %34 = load i8*, i8** %33, align 8, !dbg !4405
  %35 = bitcast i8* %34 to i32*, !dbg !4406
  store i32 %31, i32* %35, align 4, !dbg !4407
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4408
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !4409
  %38 = load i8*, i8** %37, align 8, !dbg !4410
  %39 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !4410
  store i8* %39, i8** %37, align 8, !dbg !4410
  %40 = load i16, i16* %3, align 2, !dbg !4411
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4413
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !4414
  %43 = load i8*, i8** %42, align 8, !dbg !4414
  %44 = bitcast i8* %43 to i16*, !dbg !4415
  store i16 %40, i16* %44, align 2, !dbg !4416
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4417
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !4418
  %47 = load i8*, i8** %46, align 8, !dbg !4419
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !4419
  store i8* %48, i8** %46, align 8, !dbg !4419
  %49 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4420
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !4422
  %51 = load i8*, i8** %50, align 8, !dbg !4422
  %52 = bitcast i8* %51 to i16*, !dbg !4423
  store i16 0, i16* %52, align 2, !dbg !4424
  %53 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4425
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 0, !dbg !4426
  %55 = load i8*, i8** %54, align 8, !dbg !4427
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !4427
  store i8* %56, i8** %54, align 8, !dbg !4427
  ret void, !dbg !4428
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_multifragmentupdate_capabilityset(%struct.stream*) #0 !dbg !4429 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4430, metadata !164), !dbg !4431
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4432
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !4434
  %5 = load i8*, i8** %4, align 8, !dbg !4434
  %6 = bitcast i8* %5 to i16*, !dbg !4435
  store i16 26, i16* %6, align 2, !dbg !4436
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4437
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !4438
  %9 = load i8*, i8** %8, align 8, !dbg !4439
  %10 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !4439
  store i8* %10, i8** %8, align 8, !dbg !4439
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4440
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4442
  %13 = load i8*, i8** %12, align 8, !dbg !4442
  %14 = bitcast i8* %13 to i16*, !dbg !4443
  store i16 8, i16* %14, align 2, !dbg !4444
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4445
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4446
  %17 = load i8*, i8** %16, align 8, !dbg !4447
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4447
  store i8* %18, i8** %16, align 8, !dbg !4447
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4448
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !4450
  %21 = load i8*, i8** %20, align 8, !dbg !4450
  %22 = bitcast i8* %21 to i32*, !dbg !4451
  store i32 65535, i32* %22, align 4, !dbg !4452
  %23 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4453
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 0, !dbg !4454
  %25 = load i8*, i8** %24, align 8, !dbg !4455
  %26 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !4455
  store i8* %26, i8** %24, align 8, !dbg !4455
  ret void, !dbg !4456
}

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_large_pointer_capabilityset(%struct.stream*) #0 !dbg !4457 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4458, metadata !164), !dbg !4459
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4460, metadata !164), !dbg !4461
  store i16 1, i16* %3, align 2, !dbg !4461
  %4 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4462
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 0, !dbg !4464
  %6 = load i8*, i8** %5, align 8, !dbg !4464
  %7 = bitcast i8* %6 to i16*, !dbg !4465
  store i16 27, i16* %7, align 2, !dbg !4466
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4467
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !4468
  %10 = load i8*, i8** %9, align 8, !dbg !4469
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !4469
  store i8* %11, i8** %9, align 8, !dbg !4469
  %12 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4470
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !4472
  %14 = load i8*, i8** %13, align 8, !dbg !4472
  %15 = bitcast i8* %14 to i16*, !dbg !4473
  store i16 6, i16* %15, align 2, !dbg !4474
  %16 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4475
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %16, i32 0, i32 0, !dbg !4476
  %18 = load i8*, i8** %17, align 8, !dbg !4477
  %19 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4477
  store i8* %19, i8** %17, align 8, !dbg !4477
  %20 = load i16, i16* %3, align 2, !dbg !4478
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4480
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4481
  %23 = load i8*, i8** %22, align 8, !dbg !4481
  %24 = bitcast i8* %23 to i16*, !dbg !4482
  store i16 %20, i16* %24, align 2, !dbg !4483
  %25 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4484
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !4485
  %27 = load i8*, i8** %26, align 8, !dbg !4486
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !4486
  store i8* %28, i8** %26, align 8, !dbg !4486
  ret void, !dbg !4487
}

declare i32 @pstcache_init(i8 zeroext) #2

declare void @out_utf16s_padded(%struct.stream*, i8*, i64, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define internal void @rdp_out_ts_cache_definition(%struct.stream*, i16 zeroext, i16 zeroext) #0 !dbg !4488 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4491, metadata !164), !dbg !4492
  store i16 %1, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !4493, metadata !164), !dbg !4494
  store i16 %2, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !4495, metadata !164), !dbg !4496
  %7 = load i16, i16* %5, align 2, !dbg !4497
  %8 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4499
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !4500
  %10 = load i8*, i8** %9, align 8, !dbg !4500
  %11 = bitcast i8* %10 to i16*, !dbg !4501
  store i16 %7, i16* %11, align 2, !dbg !4502
  %12 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4503
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 0, !dbg !4504
  %14 = load i8*, i8** %13, align 8, !dbg !4505
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !4505
  store i8* %15, i8** %13, align 8, !dbg !4505
  %16 = load i16, i16* %6, align 2, !dbg !4506
  %17 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4508
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !4509
  %19 = load i8*, i8** %18, align 8, !dbg !4509
  %20 = bitcast i8* %19 to i16*, !dbg !4510
  store i16 %16, i16* %20, align 2, !dbg !4511
  %21 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4512
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4513
  %23 = load i8*, i8** %22, align 8, !dbg !4514
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !4514
  store i8* %24, i8** %22, align 8, !dbg !4514
  ret void, !dbg !4515
}

declare i32 @pstcache_enumerate(i8 zeroext, [8 x i8]*) #2

declare i32 @mppc_expand(i8*, i32, i8 zeroext, i32*, i32*) #2

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @process_update_pdu(%struct.stream*) #0 !dbg !4516 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4517, metadata !164), !dbg !4518
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4519, metadata !164), !dbg !4520
  call void @llvm.dbg.declare(metadata i16* %4, metadata !4521, metadata !164), !dbg !4522
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4523
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !4525
  %7 = load i8*, i8** %6, align 8, !dbg !4525
  %8 = bitcast i8* %7 to i16*, !dbg !4526
  %9 = load i16, i16* %8, align 2, !dbg !4526
  store i16 %9, i16* %3, align 2, !dbg !4527
  %10 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4528
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !4529
  %12 = load i8*, i8** %11, align 8, !dbg !4530
  %13 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !4530
  store i8* %13, i8** %11, align 8, !dbg !4530
  call void @ui_begin_update(), !dbg !4531
  %14 = load i16, i16* %3, align 2, !dbg !4532
  %15 = zext i16 %14 to i32, !dbg !4532
  switch i32 %15, label %41 [
    i32 0, label %16
    i32 1, label %36
    i32 2, label %38
    i32 3, label %40
  ], !dbg !4533

; <label>:16:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.process_update_pdu, i32 0, i32 0)), !dbg !4534
  %17 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4536
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !4537
  %19 = load i8*, i8** %18, align 8, !dbg !4538
  %20 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !4538
  store i8* %20, i8** %18, align 8, !dbg !4538
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4539
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4541
  %23 = load i8*, i8** %22, align 8, !dbg !4541
  %24 = bitcast i8* %23 to i16*, !dbg !4542
  %25 = load i16, i16* %24, align 2, !dbg !4542
  store i16 %25, i16* %4, align 2, !dbg !4543
  %26 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4544
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !4545
  %28 = load i8*, i8** %27, align 8, !dbg !4546
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !4546
  store i8* %29, i8** %27, align 8, !dbg !4546
  %30 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4547
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !4548
  %32 = load i8*, i8** %31, align 8, !dbg !4549
  %33 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !4549
  store i8* %33, i8** %31, align 8, !dbg !4549
  %34 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4550
  %35 = load i16, i16* %4, align 2, !dbg !4551
  call void @process_orders(%struct.stream* %34, i16 zeroext %35), !dbg !4552
  br label %44, !dbg !4553

; <label>:36:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.process_update_pdu, i32 0, i32 0)), !dbg !4554
  %37 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4555
  call void @process_bitmap_updates(%struct.stream* %37), !dbg !4556
  br label %44, !dbg !4557

; <label>:38:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.process_update_pdu, i32 0, i32 0)), !dbg !4558
  %39 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4559
  call void @process_palette(%struct.stream* %39), !dbg !4560
  br label %44, !dbg !4561

; <label>:40:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.process_update_pdu, i32 0, i32 0)), !dbg !4562
  br label %44, !dbg !4563

; <label>:41:                                     ; preds = %1
  %42 = load i16, i16* %3, align 2, !dbg !4564
  %43 = zext i16 %42 to i32, !dbg !4564
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i32 %43), !dbg !4565
  br label %44, !dbg !4566

; <label>:44:                                     ; preds = %41, %40, %38, %36, %16
  call void @ui_end_update(), !dbg !4567
  ret void, !dbg !4568
}

; Function Attrs: nounwind uwtable
define internal void @process_pointer_pdu(%struct.stream*) #0 !dbg !4569 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !4570, metadata !164), !dbg !4571
  call void @llvm.dbg.declare(metadata i16* %3, metadata !4572, metadata !164), !dbg !4573
  call void @llvm.dbg.declare(metadata i16* %4, metadata !4574, metadata !164), !dbg !4575
  call void @llvm.dbg.declare(metadata i16* %5, metadata !4576, metadata !164), !dbg !4577
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.process_pointer_pdu, i32 0, i32 0)), !dbg !4578
  %6 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4579
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0, !dbg !4581
  %8 = load i8*, i8** %7, align 8, !dbg !4581
  %9 = bitcast i8* %8 to i16*, !dbg !4582
  %10 = load i16, i16* %9, align 2, !dbg !4582
  store i16 %10, i16* %3, align 2, !dbg !4583
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4584
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4585
  %13 = load i8*, i8** %12, align 8, !dbg !4586
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !4586
  store i8* %14, i8** %12, align 8, !dbg !4586
  %15 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4587
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !4588
  %17 = load i8*, i8** %16, align 8, !dbg !4589
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !4589
  store i8* %18, i8** %16, align 8, !dbg !4589
  %19 = load i16, i16* %3, align 2, !dbg !4590
  %20 = zext i16 %19 to i32, !dbg !4590
  switch i32 %20, label %61 [
    i32 3, label %21
    i32 6, label %53
    i32 7, label %55
    i32 1, label %57
    i32 8, label %59
  ], !dbg !4591

; <label>:21:                                     ; preds = %1
  %22 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4592
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 0, !dbg !4595
  %24 = load i8*, i8** %23, align 8, !dbg !4595
  %25 = bitcast i8* %24 to i16*, !dbg !4596
  %26 = load i16, i16* %25, align 2, !dbg !4596
  store i16 %26, i16* %4, align 2, !dbg !4597
  %27 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4598
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !4599
  %29 = load i8*, i8** %28, align 8, !dbg !4600
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4600
  store i8* %30, i8** %28, align 8, !dbg !4600
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4601
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 0, !dbg !4603
  %33 = load i8*, i8** %32, align 8, !dbg !4603
  %34 = bitcast i8* %33 to i16*, !dbg !4604
  %35 = load i16, i16* %34, align 2, !dbg !4604
  store i16 %35, i16* %5, align 2, !dbg !4605
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4606
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !4607
  %38 = load i8*, i8** %37, align 8, !dbg !4608
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !4608
  store i8* %39, i8** %37, align 8, !dbg !4608
  %40 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4609
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !4611
  %42 = load i8*, i8** %41, align 8, !dbg !4611
  %43 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4612
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 1, !dbg !4613
  %45 = load i8*, i8** %44, align 8, !dbg !4613
  %46 = icmp ule i8* %42, %45, !dbg !4614
  br i1 %46, label %47, label %52, !dbg !4615

; <label>:47:                                     ; preds = %21
  %48 = load i16, i16* %4, align 2, !dbg !4616
  %49 = zext i16 %48 to i32, !dbg !4616
  %50 = load i16, i16* %5, align 2, !dbg !4617
  %51 = zext i16 %50 to i32, !dbg !4617
  call void @ui_move_pointer(i32 %49, i32 %51), !dbg !4618
  br label %52, !dbg !4618

; <label>:52:                                     ; preds = %47, %21
  br label %64, !dbg !4619

; <label>:53:                                     ; preds = %1
  %54 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4620
  call void @process_colour_pointer_pdu(%struct.stream* %54), !dbg !4621
  br label %64, !dbg !4622

; <label>:55:                                     ; preds = %1
  %56 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4623
  call void @process_cached_pointer_pdu(%struct.stream* %56), !dbg !4624
  br label %64, !dbg !4625

; <label>:57:                                     ; preds = %1
  %58 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4626
  call void @process_system_pointer_pdu(%struct.stream* %58), !dbg !4627
  br label %64, !dbg !4628

; <label>:59:                                     ; preds = %1
  %60 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !4629
  call void @process_new_pointer_pdu(%struct.stream* %60), !dbg !4630
  br label %64, !dbg !4631

; <label>:61:                                     ; preds = %1
  %62 = load i16, i16* %3, align 2, !dbg !4632
  %63 = zext i16 %62 to i32, !dbg !4632
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i32 0, i32 0), i32 %63), !dbg !4633
  br label %64, !dbg !4634

; <label>:64:                                     ; preds = %61, %59, %57, %55, %53, %52
  ret void, !dbg !4635
}

declare void @ui_bell() #2

; Function Attrs: nounwind uwtable
define internal void @process_ts_set_error_info_pdu(%struct.stream*, i32*) #0 !dbg !4636 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !4639, metadata !164), !dbg !4640
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !4641, metadata !164), !dbg !4642
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4643
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 0, !dbg !4645
  %7 = load i8*, i8** %6, align 8, !dbg !4645
  %8 = bitcast i8* %7 to i32*, !dbg !4646
  %9 = load i32, i32* %8, align 4, !dbg !4646
  %10 = load i32*, i32** %4, align 8, !dbg !4647
  store i32 %9, i32* %10, align 4, !dbg !4648
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !4649
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !4650
  %13 = load i8*, i8** %12, align 8, !dbg !4651
  %14 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !4651
  store i8* %14, i8** %12, align 8, !dbg !4651
  %15 = load i32*, i32** %4, align 8, !dbg !4652
  %16 = load i32, i32* %15, align 4, !dbg !4653
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i32 0, i32 0), i32 %16), !dbg !4654
  ret void, !dbg !4655
}

declare void @ui_begin_update() #2

declare void @process_orders(%struct.stream*, i16 zeroext) #2

declare void @ui_end_update() #2

declare void @ui_move_pointer(i32, i32) #2

declare i8* @tcp_get_address() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind uwtable
define internal void @rdp_out_unistr_mandatory_null(%struct.stream*, i8*, i32) #0 !dbg !4656 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4657, metadata !164), !dbg !4658
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4659, metadata !164), !dbg !4660
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4661, metadata !164), !dbg !4662
  %7 = load i8*, i8** %5, align 8, !dbg !4663
  %8 = icmp ne i8* %7, null, !dbg !4663
  br i1 %8, label %9, label %16, !dbg !4665

; <label>:9:                                      ; preds = %3
  %10 = load i32, i32* %6, align 4, !dbg !4666
  %11 = icmp sgt i32 %10, 0, !dbg !4668
  br i1 %11, label %12, label %16, !dbg !4669

; <label>:12:                                     ; preds = %9
  %13 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4670
  %14 = load i8*, i8** %5, align 8, !dbg !4671
  %15 = load i32, i32* %6, align 4, !dbg !4672
  call void @rdp_out_unistr(%struct.stream* %13, i8* %14, i32 %15), !dbg !4673
  br label %25, !dbg !4673

; <label>:16:                                     ; preds = %9, %3
  %17 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4674
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !4676
  %19 = load i8*, i8** %18, align 8, !dbg !4676
  %20 = bitcast i8* %19 to i16*, !dbg !4677
  store i16 0, i16* %20, align 2, !dbg !4678
  %21 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4679
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !4680
  %23 = load i8*, i8** %22, align 8, !dbg !4681
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !4681
  store i8* %24, i8** %22, align 8, !dbg !4681
  br label %25

; <label>:25:                                     ; preds = %16, %12
  ret void, !dbg !4682
}

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #5

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #5

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind uwtable
define internal void @rdp_out_unistr(%struct.stream*, i8*, i32) #0 !dbg !156 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !4683, metadata !164), !dbg !4684
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4685, metadata !164), !dbg !4686
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4687, metadata !164), !dbg !4688
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4689, metadata !164), !dbg !4690
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4691, metadata !164), !dbg !4692
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4693, metadata !164), !dbg !4694
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4695, metadata !164), !dbg !4696
  %11 = load i8*, i8** %5, align 8, !dbg !4697
  %12 = icmp eq i8* %11, null, !dbg !4699
  br i1 %12, label %16, label %13, !dbg !4700

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4, !dbg !4701
  %15 = icmp eq i32 %14, 0, !dbg !4703
  br i1 %15, label %16, label %17, !dbg !4704

; <label>:16:                                     ; preds = %13, %3
  br label %55, !dbg !4705

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** @rdp_out_unistr.icv_local_to_utf16, align 8, !dbg !4706
  %19 = icmp ne i8* %18, null, !dbg !4706
  br i1 %19, label %27, label %20, !dbg !4708

; <label>:20:                                     ; preds = %17
  %21 = call i8* @libiconv_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0)), !dbg !4709
  store i8* %21, i8** @rdp_out_unistr.icv_local_to_utf16, align 8, !dbg !4711
  %22 = load i8*, i8** @rdp_out_unistr.icv_local_to_utf16, align 8, !dbg !4712
  %23 = icmp eq i8* %22, inttoptr (i64 -1 to i8*), !dbg !4714
  br i1 %23, label %24, label %26, !dbg !4715

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** @rdp_out_unistr.icv_local_to_utf16, align 8, !dbg !4716
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_codepage, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %25), !dbg !4718
  call void @abort() #8, !dbg !4719
  unreachable, !dbg !4719

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !4720

; <label>:27:                                     ; preds = %26, %17
  %28 = load i8*, i8** %5, align 8, !dbg !4721
  %29 = call i64 @strlen(i8* %28) #10, !dbg !4722
  store i64 %29, i64* %7, align 8, !dbg !4723
  %30 = load i32, i32* %6, align 4, !dbg !4724
  %31 = add nsw i32 %30, 2, !dbg !4725
  %32 = sext i32 %31 to i64, !dbg !4724
  store i64 %32, i64* %8, align 8, !dbg !4726
  %33 = load i8*, i8** %5, align 8, !dbg !4727
  store i8* %33, i8** %9, align 8, !dbg !4728
  %34 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4729
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !4730
  %36 = load i8*, i8** %35, align 8, !dbg !4730
  store i8* %36, i8** %10, align 8, !dbg !4731
  %37 = load i8*, i8** %10, align 8, !dbg !4732
  %38 = load i32, i32* %6, align 4, !dbg !4733
  %39 = add nsw i32 %38, 4, !dbg !4734
  %40 = sext i32 %39 to i64, !dbg !4733
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 %40, i32 1, i1 false), !dbg !4735
  %41 = load i8*, i8** @rdp_out_unistr.icv_local_to_utf16, align 8, !dbg !4736
  %42 = call i64 @libiconv(i8* %41, i8** %9, i64* %7, i8** %10, i64* %8), !dbg !4738
  %43 = icmp eq i64 %42, -1, !dbg !4739
  br i1 %43, label %44, label %47, !dbg !4740

; <label>:44:                                     ; preds = %27
  %45 = call i32* @__errno_location() #1, !dbg !4741
  %46 = load i32, i32* %45, align 4, !dbg !4743
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i32 0, i32 0), i32 %46), !dbg !4744
  call void @abort() #8, !dbg !4746
  unreachable, !dbg !4746

; <label>:47:                                     ; preds = %27
  %48 = load i32, i32* %6, align 4, !dbg !4747
  %49 = add nsw i32 %48, 2, !dbg !4748
  %50 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !4749
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !4750
  %52 = load i8*, i8** %51, align 8, !dbg !4751
  %53 = sext i32 %49 to i64, !dbg !4751
  %54 = getelementptr inbounds i8, i8* %52, i64 %53, !dbg !4751
  store i8* %54, i8** %51, align 8, !dbg !4751
  br label %55, !dbg !4752

; <label>:55:                                     ; preds = %47, %16
  ret void, !dbg !4753
}

declare void @rdssl_hmac_md5(i8*, i32, i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!160, !161}
!llvm.ident = !{!162}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !91, globals: !118)
!1 = !DIFile(filename: "[inter]rdp.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22, !37, !41, !49, !53, !59, !67, !73}
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_DATA_PDU_TYPE", file: !23, line: 216, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!25 = !DIEnumerator(name: "RDP_DATA_PDU_UPDATE", value: 2)
!26 = !DIEnumerator(name: "RDP_DATA_PDU_CONTROL", value: 20)
!27 = !DIEnumerator(name: "RDP_DATA_PDU_POINTER", value: 27)
!28 = !DIEnumerator(name: "RDP_DATA_PDU_INPUT", value: 28)
!29 = !DIEnumerator(name: "RDP_DATA_PDU_SYNCHRONISE", value: 31)
!30 = !DIEnumerator(name: "RDP_DATA_PDU_BELL", value: 34)
!31 = !DIEnumerator(name: "RDP_DATA_PDU_CLIENT_WINDOW_STATUS", value: 35)
!32 = !DIEnumerator(name: "RDP_DATA_PDU_LOGON", value: 38)
!33 = !DIEnumerator(name: "RDP_DATA_PDU_FONT2", value: 39)
!34 = !DIEnumerator(name: "RDP_DATA_PDU_KEYBOARD_INDICATORS", value: 41)
!35 = !DIEnumerator(name: "RDP_DATA_PDU_SET_ERROR_INFO", value: 47)
!36 = !DIEnumerator(name: "RDP_DATA_PDU_AUTORECONNECT_STATUS", value: 50)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_SUPPRESS_STATUS", file: !23, line: 811, size: 32, align: 32, elements: !38)
!38 = !{!39, !40}
!39 = !DIEnumerator(name: "SUPPRESS_DISPLAY_UPDATES", value: 0)
!40 = !DIEnumerator(name: "ALLOW_DISPLAY_UPDATES", value: 1)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_PDU_TYPE", file: !23, line: 206, size: 32, align: 32, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIEnumerator(name: "RDP_PDU_DEMAND_ACTIVE", value: 1)
!44 = !DIEnumerator(name: "RDP_PDU_CONFIRM_ACTIVE", value: 3)
!45 = !DIEnumerator(name: "RDP_PDU_REDIRECT", value: 4)
!46 = !DIEnumerator(name: "RDP_PDU_DEACTIVATE", value: 6)
!47 = !DIEnumerator(name: "RDP_PDU_DATA", value: 7)
!48 = !DIEnumerator(name: "RDP_PDU_ENHANCED_REDIRECT", value: 10)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_LOGON_INFO_EXTENDED_TYPE", file: !23, line: 240, size: 32, align: 32, elements: !50)
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "LOGON_EX_AUTORECONNECTCOOKIE", value: 1)
!52 = !DIEnumerator(name: "LOGON_EX_LOGONERRORS", value: 2)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_CONTROL_PDU_TYPE", file: !23, line: 246, size: 32, align: 32, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "RDP_CTL_REQUEST_CONTROL", value: 1)
!56 = !DIEnumerator(name: "RDP_CTL_GRANT_CONTROL", value: 2)
!57 = !DIEnumerator(name: "RDP_CTL_DETACH", value: 3)
!58 = !DIEnumerator(name: "RDP_CTL_COOPERATE", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_INPUT_DEVICE", file: !23, line: 278, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DIEnumerator(name: "RDP_INPUT_SYNCHRONIZE", value: 0)
!62 = !DIEnumerator(name: "RDP_INPUT_CODEPOINT", value: 1)
!63 = !DIEnumerator(name: "RDP_INPUT_VIRTKEY", value: 2)
!64 = !DIEnumerator(name: "RDP_INPUT_SCANCODE", value: 4)
!65 = !DIEnumerator(name: "RDP_INPUT_MOUSE", value: 32769)
!66 = !DIEnumerator(name: "RDP_INPUT_MOUSEX", value: 32770)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !68, line: 52, size: 32, align: 32, elements: !69)
!68 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "RDP_V4", value: 4)
!71 = !DIEnumerator(name: "RDP_V5", value: 5)
!72 = !DIEnumerator(name: "RDP_V6", value: 6)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_PDU_REDIRECT_FLAGS", file: !23, line: 678, size: 32, align: 32, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!75 = !DIEnumerator(name: "LB_TARGET_NET_ADDRESS", value: 1)
!76 = !DIEnumerator(name: "LB_LOAD_BALANCE_INFO", value: 2)
!77 = !DIEnumerator(name: "LB_USERNAME", value: 4)
!78 = !DIEnumerator(name: "LB_DOMAIN", value: 8)
!79 = !DIEnumerator(name: "LB_PASSWORD", value: 16)
!80 = !DIEnumerator(name: "LB_DONTSTOREUSERNAME", value: 32)
!81 = !DIEnumerator(name: "LB_SMARTCARD_LOGON", value: 64)
!82 = !DIEnumerator(name: "LB_NOREDIRECT", value: 128)
!83 = !DIEnumerator(name: "LB_TARGET_FQDN", value: 256)
!84 = !DIEnumerator(name: "LB_TARGET_NETBIOS", value: 512)
!85 = !DIEnumerator(name: "LB_TARGET_NET_ADDRESSES", value: 2048)
!86 = !DIEnumerator(name: "LB_CLIENT_TSV_URL", value: 4096)
!87 = !DIEnumerator(name: "LB_SERVER_TSV_CAPABLE", value: 8192)
!88 = !DIEnumerator(name: "LB_PASSWORD_IS_PK_ENCRYPTED", value: 16384)
!89 = !DIEnumerator(name: "LB_REDIRECTION_GUID", value: 32768)
!90 = !DIEnumerator(name: "LB_TARGET_CERTIFICATE", value: 65536)
!91 = !{!92, !94, !95, !97, !98, !101, !104, !107, !110, !105, !117}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "libiconv_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "/usr/local/include/iconv.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 216, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!100 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !68, line: 41, baseType: !103)
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !68, line: 43, baseType: !106)
!106 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !68, line: 39, baseType: !109)
!109 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOURENTRY", file: !68, line: 73, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_COLOURENTRY", file: !68, line: 66, size: 24, align: 8, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !112, file: !68, line: 68, baseType: !108, size: 8, align: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !112, file: !68, line: 69, baseType: !108, size: 8, align: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !112, file: !68, line: 70, baseType: !108, size: 8, align: 8, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!118 = !{!119, !123, !142, !146, !147, !148, !149, !150, !154, !155, !159}
!119 = distinct !DIGlobalVariable(name: "g_exit_mainloop", scope: !0, file: !120, line: 59, type: !121, isLocal: false, isDefinition: true, variable: i32* @g_exit_mainloop)
!120 = !DIFile(filename: "rdp.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !68, line: 28, baseType: !122)
!122 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!123 = distinct !DIGlobalVariable(name: "icv_utf16_to_local", scope: !124, file: !120, line: 284, type: !92, isLocal: true, isDefinition: true, variable: i8** @rdp_in_unistr.icv_utf16_to_local)
!124 = distinct !DISubprogram(name: "rdp_in_unistr", scope: !120, file: !120, line: 282, type: !125, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !122, !97, !104}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !128, line: 40, baseType: !129)
!128 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !128, line: 25, size: 576, align: 64, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !130, file: !128, line: 27, baseType: !117, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !130, file: !128, line: 28, baseType: !117, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !130, file: !128, line: 29, baseType: !117, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !128, line: 30, baseType: !106, size: 32, align: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !130, file: !128, line: 33, baseType: !117, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !130, file: !128, line: 34, baseType: !117, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !130, file: !128, line: 35, baseType: !117, size: 64, align: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !130, file: !128, line: 36, baseType: !117, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !130, file: !128, line: 37, baseType: !117, size: 64, align: 64, offset: 512)
!141 = !{}
!142 = distinct !DIGlobalVariable(name: "current_status", scope: !143, file: !120, line: 584, type: !37, isLocal: true, isDefinition: true, variable: i32* @rdp_send_suppress_output_pdu.current_status)
!143 = distinct !DISubprogram(name: "rdp_send_suppress_output_pdu", scope: !120, file: !120, line: 581, type: !144, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !37}
!146 = distinct !DIGlobalVariable(name: "g_next_packet", scope: !0, file: !120, line: 61, type: !107, isLocal: false, isDefinition: true, variable: i8** @g_next_packet)
!147 = distinct !DIGlobalVariable(name: "g_rdp_shareid", scope: !0, file: !120, line: 62, type: !105, isLocal: false, isDefinition: true, variable: i32* @g_rdp_shareid)
!148 = distinct !DIGlobalVariable(name: "g_session_width", scope: !0, file: !120, line: 93, type: !102, isLocal: false, isDefinition: true, variable: i16* @g_session_width)
!149 = distinct !DIGlobalVariable(name: "g_session_height", scope: !0, file: !120, line: 94, type: !102, isLocal: false, isDefinition: true, variable: i16* @g_session_height)
!150 = distinct !DIGlobalVariable(name: "rdp_s", scope: !151, file: !120, line: 136, type: !127, isLocal: true, isDefinition: true, variable: %struct.stream** @rdp_recv.rdp_s)
!151 = distinct !DISubprogram(name: "rdp_recv", scope: !120, file: !120, line: 133, type: !152, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!152 = !DISubroutineType(types: !153)
!153 = !{!127, !107}
!154 = distinct !DIGlobalVariable(name: "g_packetno", scope: !0, file: !120, line: 88, type: !105, isLocal: true, isDefinition: true, variable: i32* @g_packetno)
!155 = distinct !DIGlobalVariable(name: "icv_local_to_utf16", scope: !156, file: !120, line: 239, type: !92, isLocal: true, isDefinition: true, variable: i8** @rdp_out_unistr.icv_local_to_utf16)
!156 = distinct !DISubprogram(name: "rdp_out_unistr", scope: !120, file: !120, line: 231, type: !157, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !127, !95, !122}
!159 = distinct !DIGlobalVariable(name: "g_first_bitmap_caps", scope: !0, file: !120, line: 1108, type: !121, isLocal: true, isDefinition: true, variable: i32* @g_first_bitmap_caps)
!160 = !{i32 2, !"Dwarf Version", i32 4}
!161 = !{i32 2, !"Debug Info Version", i32 3}
!162 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!163 = !DILocalVariable(name: "s", arg: 1, scope: !124, file: !120, line: 282, type: !127)
!164 = !DIExpression()
!165 = !DILocation(line: 282, column: 22, scope: !124)
!166 = !DILocalVariable(name: "in_len", arg: 2, scope: !124, file: !120, line: 282, type: !122)
!167 = !DILocation(line: 282, column: 29, scope: !124)
!168 = !DILocalVariable(name: "string", arg: 3, scope: !124, file: !120, line: 282, type: !97)
!169 = !DILocation(line: 282, column: 44, scope: !124)
!170 = !DILocalVariable(name: "str_size", arg: 4, scope: !124, file: !120, line: 282, type: !104)
!171 = !DILocation(line: 282, column: 61, scope: !124)
!172 = !DILocalVariable(name: "ibl", scope: !124, file: !120, line: 285, type: !98)
!173 = !DILocation(line: 285, column: 9, scope: !124)
!174 = !DILocalVariable(name: "obl", scope: !124, file: !120, line: 285, type: !98)
!175 = !DILocation(line: 285, column: 14, scope: !124)
!176 = !DILocalVariable(name: "pin", scope: !124, file: !120, line: 286, type: !95)
!177 = !DILocation(line: 286, column: 8, scope: !124)
!178 = !DILocalVariable(name: "pout", scope: !124, file: !120, line: 286, type: !95)
!179 = !DILocation(line: 286, column: 14, scope: !124)
!180 = !DILocation(line: 289, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !124, file: !120, line: 289, column: 6)
!182 = !DILocation(line: 289, column: 6, scope: !124)
!183 = !DILocation(line: 291, column: 23, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !120, line: 290, column: 2)
!185 = !DILocation(line: 291, column: 22, scope: !184)
!186 = !DILocation(line: 292, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !120, line: 292, column: 7)
!188 = !DILocation(line: 292, column: 26, scope: !187)
!189 = !DILocation(line: 292, column: 7, scope: !184)
!190 = !DILocation(line: 295, column: 35, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !120, line: 293, column: 3)
!192 = !DILocation(line: 294, column: 4, scope: !191)
!193 = !DILocation(line: 296, column: 4, scope: !191)
!194 = !DILocation(line: 298, column: 2, scope: !184)
!195 = !DILocation(line: 301, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !124, file: !120, line: 301, column: 6)
!197 = !DILocation(line: 301, column: 6, scope: !196)
!198 = !DILocation(line: 301, column: 14, scope: !196)
!199 = !DILocation(line: 301, column: 6, scope: !124)
!200 = !DILocation(line: 304, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !120, line: 302, column: 2)
!202 = !DILocation(line: 304, column: 28, scope: !201)
!203 = !DILocation(line: 304, column: 13, scope: !201)
!204 = !DILocation(line: 304, column: 4, scope: !201)
!205 = !DILocation(line: 304, column: 11, scope: !201)
!206 = !DILocation(line: 305, column: 15, scope: !201)
!207 = !DILocation(line: 305, column: 22, scope: !201)
!208 = !DILocation(line: 305, column: 4, scope: !201)
!209 = !DILocation(line: 305, column: 13, scope: !201)
!210 = !DILocation(line: 306, column: 2, scope: !201)
!211 = !DILocation(line: 308, column: 8, scope: !124)
!212 = !DILocation(line: 308, column: 6, scope: !124)
!213 = !DILocation(line: 309, column: 9, scope: !124)
!214 = !DILocation(line: 309, column: 8, scope: !124)
!215 = !DILocation(line: 309, column: 18, scope: !124)
!216 = !DILocation(line: 309, column: 6, scope: !124)
!217 = !DILocation(line: 310, column: 17, scope: !124)
!218 = !DILocation(line: 310, column: 20, scope: !124)
!219 = !DILocation(line: 310, column: 6, scope: !124)
!220 = !DILocation(line: 311, column: 10, scope: !124)
!221 = !DILocation(line: 311, column: 9, scope: !124)
!222 = !DILocation(line: 311, column: 7, scope: !124)
!223 = !DILocation(line: 313, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !124, file: !120, line: 313, column: 5)
!225 = !DILocation(line: 313, column: 5, scope: !224)
!226 = !DILocation(line: 313, column: 66, scope: !224)
!227 = !DILocation(line: 313, column: 5, scope: !124)
!228 = !DILocation(line: 315, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !120, line: 315, column: 6)
!230 = distinct !DILexicalBlock(scope: !224, file: !120, line: 314, column: 2)
!231 = !DILocation(line: 315, column: 7, scope: !229)
!232 = !DILocation(line: 315, column: 12, scope: !229)
!233 = !DILocation(line: 315, column: 6, scope: !230)
!234 = !DILocation(line: 317, column: 4, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !120, line: 316, column: 3)
!236 = !DILocation(line: 319, column: 3, scope: !235)
!237 = !DILocation(line: 322, column: 72, scope: !238)
!238 = distinct !DILexicalBlock(scope: !229, file: !120, line: 321, column: 3)
!239 = !DILocation(line: 322, column: 71, scope: !238)
!240 = !DILocation(line: 322, column: 4, scope: !241)
!241 = !DILexicalBlockFile(scope: !238, file: !120, discriminator: 1)
!242 = !DILocation(line: 324, column: 10, scope: !238)
!243 = !DILocation(line: 324, column: 9, scope: !238)
!244 = !DILocation(line: 324, column: 4, scope: !238)
!245 = !DILocation(line: 325, column: 5, scope: !238)
!246 = !DILocation(line: 325, column: 12, scope: !238)
!247 = !DILocation(line: 326, column: 5, scope: !238)
!248 = !DILocation(line: 326, column: 14, scope: !238)
!249 = !DILocation(line: 328, column: 3, scope: !230)
!250 = !DILocation(line: 332, column: 10, scope: !124)
!251 = !DILocation(line: 332, column: 2, scope: !124)
!252 = !DILocation(line: 332, column: 5, scope: !124)
!253 = !DILocation(line: 332, column: 7, scope: !124)
!254 = !DILocation(line: 334, column: 3, scope: !124)
!255 = !DILocation(line: 334, column: 8, scope: !124)
!256 = !DILocation(line: 336, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !124, file: !120, line: 336, column: 6)
!258 = !DILocation(line: 336, column: 6, scope: !257)
!259 = !DILocation(line: 336, column: 6, scope: !124)
!260 = !DILocation(line: 337, column: 15, scope: !257)
!261 = !DILocation(line: 337, column: 23, scope: !257)
!262 = !DILocation(line: 337, column: 22, scope: !257)
!263 = !DILocation(line: 337, column: 20, scope: !257)
!264 = !DILocation(line: 337, column: 4, scope: !257)
!265 = !DILocation(line: 337, column: 13, scope: !257)
!266 = !DILocation(line: 337, column: 3, scope: !257)
!267 = !DILocation(line: 338, column: 1, scope: !124)
!268 = distinct !DISubprogram(name: "rdp_send_input", scope: !120, file: !120, line: 558, type: !269, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !105, !102, !102, !102, !102}
!271 = !DILocalVariable(name: "time", arg: 1, scope: !268, file: !120, line: 558, type: !105)
!272 = !DILocation(line: 558, column: 23, scope: !268)
!273 = !DILocalVariable(name: "message_type", arg: 2, scope: !268, file: !120, line: 558, type: !102)
!274 = !DILocation(line: 558, column: 36, scope: !268)
!275 = !DILocalVariable(name: "device_flags", arg: 3, scope: !268, file: !120, line: 558, type: !102)
!276 = !DILocation(line: 558, column: 57, scope: !268)
!277 = !DILocalVariable(name: "param1", arg: 4, scope: !268, file: !120, line: 558, type: !102)
!278 = !DILocation(line: 558, column: 78, scope: !268)
!279 = !DILocalVariable(name: "param2", arg: 5, scope: !268, file: !120, line: 558, type: !102)
!280 = !DILocation(line: 558, column: 93, scope: !268)
!281 = !DILocalVariable(name: "s", scope: !268, file: !120, line: 560, type: !127)
!282 = !DILocation(line: 560, column: 9, scope: !268)
!283 = !DILocation(line: 562, column: 2, scope: !268)
!284 = !DILocation(line: 564, column: 6, scope: !268)
!285 = !DILocation(line: 564, column: 4, scope: !268)
!286 = !DILocation(line: 566, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !268, file: !120, line: 566, column: 2)
!288 = !DILocation(line: 566, column: 21, scope: !287)
!289 = !DILocation(line: 566, column: 4, scope: !287)
!290 = !DILocation(line: 566, column: 24, scope: !287)
!291 = !DILocation(line: 566, column: 30, scope: !287)
!292 = !DILocation(line: 566, column: 34, scope: !287)
!293 = !DILocation(line: 566, column: 36, scope: !287)
!294 = !DILocation(line: 567, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !268, file: !120, line: 567, column: 2)
!296 = !DILocation(line: 567, column: 21, scope: !295)
!297 = !DILocation(line: 567, column: 4, scope: !295)
!298 = !DILocation(line: 567, column: 24, scope: !295)
!299 = !DILocation(line: 567, column: 30, scope: !295)
!300 = !DILocation(line: 567, column: 34, scope: !295)
!301 = !DILocation(line: 567, column: 36, scope: !295)
!302 = !DILocation(line: 569, column: 26, scope: !303)
!303 = distinct !DILexicalBlock(scope: !268, file: !120, line: 569, column: 2)
!304 = !DILocation(line: 569, column: 17, scope: !303)
!305 = !DILocation(line: 569, column: 21, scope: !303)
!306 = !DILocation(line: 569, column: 4, scope: !303)
!307 = !DILocation(line: 569, column: 24, scope: !303)
!308 = !DILocation(line: 569, column: 33, scope: !303)
!309 = !DILocation(line: 569, column: 37, scope: !303)
!310 = !DILocation(line: 569, column: 39, scope: !303)
!311 = !DILocation(line: 570, column: 26, scope: !312)
!312 = distinct !DILexicalBlock(scope: !268, file: !120, line: 570, column: 2)
!313 = !DILocation(line: 570, column: 17, scope: !312)
!314 = !DILocation(line: 570, column: 21, scope: !312)
!315 = !DILocation(line: 570, column: 4, scope: !312)
!316 = !DILocation(line: 570, column: 24, scope: !312)
!317 = !DILocation(line: 570, column: 41, scope: !312)
!318 = !DILocation(line: 570, column: 45, scope: !312)
!319 = !DILocation(line: 570, column: 47, scope: !312)
!320 = !DILocation(line: 571, column: 26, scope: !321)
!321 = distinct !DILexicalBlock(scope: !268, file: !120, line: 571, column: 2)
!322 = !DILocation(line: 571, column: 17, scope: !321)
!323 = !DILocation(line: 571, column: 21, scope: !321)
!324 = !DILocation(line: 571, column: 4, scope: !321)
!325 = !DILocation(line: 571, column: 24, scope: !321)
!326 = !DILocation(line: 571, column: 41, scope: !321)
!327 = !DILocation(line: 571, column: 45, scope: !321)
!328 = !DILocation(line: 571, column: 47, scope: !321)
!329 = !DILocation(line: 572, column: 26, scope: !330)
!330 = distinct !DILexicalBlock(scope: !268, file: !120, line: 572, column: 2)
!331 = !DILocation(line: 572, column: 17, scope: !330)
!332 = !DILocation(line: 572, column: 21, scope: !330)
!333 = !DILocation(line: 572, column: 4, scope: !330)
!334 = !DILocation(line: 572, column: 24, scope: !330)
!335 = !DILocation(line: 572, column: 35, scope: !330)
!336 = !DILocation(line: 572, column: 39, scope: !330)
!337 = !DILocation(line: 572, column: 41, scope: !330)
!338 = !DILocation(line: 573, column: 26, scope: !339)
!339 = distinct !DILexicalBlock(scope: !268, file: !120, line: 573, column: 2)
!340 = !DILocation(line: 573, column: 17, scope: !339)
!341 = !DILocation(line: 573, column: 21, scope: !339)
!342 = !DILocation(line: 573, column: 4, scope: !339)
!343 = !DILocation(line: 573, column: 24, scope: !339)
!344 = !DILocation(line: 573, column: 35, scope: !339)
!345 = !DILocation(line: 573, column: 39, scope: !339)
!346 = !DILocation(line: 573, column: 41, scope: !339)
!347 = !DILocation(line: 575, column: 14, scope: !268)
!348 = !DILocation(line: 575, column: 18, scope: !268)
!349 = !DILocation(line: 575, column: 3, scope: !268)
!350 = !DILocation(line: 575, column: 7, scope: !268)
!351 = !DILocation(line: 575, column: 11, scope: !268)
!352 = !DILocation(line: 576, column: 16, scope: !268)
!353 = !DILocation(line: 576, column: 2, scope: !268)
!354 = !DILocation(line: 577, column: 1, scope: !268)
!355 = distinct !DISubprogram(name: "rdp_init_data", scope: !120, file: !120, line: 177, type: !356, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!356 = !DISubroutineType(types: !357)
!357 = !{!127, !122}
!358 = !DILocalVariable(name: "maxlen", arg: 1, scope: !355, file: !120, line: 177, type: !122)
!359 = !DILocation(line: 177, column: 19, scope: !355)
!360 = !DILocalVariable(name: "s", scope: !355, file: !120, line: 179, type: !127)
!361 = !DILocation(line: 179, column: 9, scope: !355)
!362 = !DILocation(line: 181, column: 15, scope: !355)
!363 = !DILocation(line: 181, column: 42, scope: !355)
!364 = !DILocation(line: 181, column: 49, scope: !355)
!365 = !DILocation(line: 181, column: 6, scope: !355)
!366 = !DILocation(line: 181, column: 4, scope: !355)
!367 = !DILocation(line: 182, column: 20, scope: !368)
!368 = distinct !DILexicalBlock(scope: !355, file: !120, line: 182, column: 2)
!369 = !DILocation(line: 182, column: 24, scope: !368)
!370 = !DILocation(line: 182, column: 5, scope: !368)
!371 = !DILocation(line: 182, column: 9, scope: !368)
!372 = !DILocation(line: 182, column: 17, scope: !368)
!373 = !DILocation(line: 182, column: 28, scope: !368)
!374 = !DILocation(line: 182, column: 32, scope: !368)
!375 = !DILocation(line: 182, column: 34, scope: !368)
!376 = !DILocation(line: 184, column: 9, scope: !355)
!377 = !DILocation(line: 184, column: 2, scope: !355)
!378 = distinct !DISubprogram(name: "rdp_send_data", scope: !120, file: !120, line: 189, type: !379, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !127, !108}
!381 = !DILocalVariable(name: "s", arg: 1, scope: !378, file: !120, line: 189, type: !127)
!382 = !DILocation(line: 189, column: 22, scope: !378)
!383 = !DILocalVariable(name: "data_pdu_type", arg: 2, scope: !378, file: !120, line: 189, type: !108)
!384 = !DILocation(line: 189, column: 31, scope: !378)
!385 = !DILocalVariable(name: "length", scope: !378, file: !120, line: 191, type: !102)
!386 = !DILocation(line: 191, column: 9, scope: !378)
!387 = !DILocation(line: 193, column: 12, scope: !378)
!388 = !DILocation(line: 193, column: 16, scope: !378)
!389 = !DILocation(line: 193, column: 3, scope: !378)
!390 = !DILocation(line: 193, column: 7, scope: !378)
!391 = !DILocation(line: 193, column: 9, scope: !378)
!392 = !DILocation(line: 194, column: 11, scope: !378)
!393 = !DILocation(line: 194, column: 14, scope: !378)
!394 = !DILocation(line: 194, column: 20, scope: !378)
!395 = !DILocation(line: 194, column: 23, scope: !378)
!396 = !DILocation(line: 194, column: 18, scope: !378)
!397 = !DILocation(line: 194, column: 9, scope: !378)
!398 = !DILocation(line: 196, column: 26, scope: !399)
!399 = distinct !DILexicalBlock(scope: !378, file: !120, line: 196, column: 2)
!400 = !DILocation(line: 196, column: 17, scope: !399)
!401 = !DILocation(line: 196, column: 21, scope: !399)
!402 = !DILocation(line: 196, column: 4, scope: !399)
!403 = !DILocation(line: 196, column: 24, scope: !399)
!404 = !DILocation(line: 196, column: 35, scope: !399)
!405 = !DILocation(line: 196, column: 39, scope: !399)
!406 = !DILocation(line: 196, column: 41, scope: !399)
!407 = !DILocation(line: 197, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !378, file: !120, line: 197, column: 2)
!409 = !DILocation(line: 197, column: 21, scope: !408)
!410 = !DILocation(line: 197, column: 4, scope: !408)
!411 = !DILocation(line: 197, column: 24, scope: !408)
!412 = !DILocation(line: 197, column: 50, scope: !408)
!413 = !DILocation(line: 197, column: 54, scope: !408)
!414 = !DILocation(line: 197, column: 56, scope: !408)
!415 = !DILocation(line: 198, column: 27, scope: !416)
!416 = distinct !DILexicalBlock(scope: !378, file: !120, line: 198, column: 2)
!417 = !DILocation(line: 198, column: 40, scope: !416)
!418 = !DILocation(line: 198, column: 26, scope: !416)
!419 = !DILocation(line: 198, column: 17, scope: !416)
!420 = !DILocation(line: 198, column: 21, scope: !416)
!421 = !DILocation(line: 198, column: 4, scope: !416)
!422 = !DILocation(line: 198, column: 24, scope: !416)
!423 = !DILocation(line: 198, column: 50, scope: !416)
!424 = !DILocation(line: 198, column: 54, scope: !416)
!425 = !DILocation(line: 198, column: 56, scope: !416)
!426 = !DILocation(line: 200, column: 26, scope: !427)
!427 = distinct !DILexicalBlock(scope: !378, file: !120, line: 200, column: 2)
!428 = !DILocation(line: 200, column: 17, scope: !427)
!429 = !DILocation(line: 200, column: 21, scope: !427)
!430 = !DILocation(line: 200, column: 4, scope: !427)
!431 = !DILocation(line: 200, column: 24, scope: !427)
!432 = !DILocation(line: 200, column: 42, scope: !427)
!433 = !DILocation(line: 200, column: 46, scope: !427)
!434 = !DILocation(line: 200, column: 48, scope: !427)
!435 = !DILocation(line: 201, column: 5, scope: !378)
!436 = !DILocation(line: 201, column: 9, scope: !378)
!437 = !DILocation(line: 201, column: 10, scope: !378)
!438 = !DILocation(line: 201, column: 14, scope: !378)
!439 = !DILocation(line: 202, column: 5, scope: !378)
!440 = !DILocation(line: 202, column: 9, scope: !378)
!441 = !DILocation(line: 202, column: 10, scope: !378)
!442 = !DILocation(line: 202, column: 14, scope: !378)
!443 = !DILocation(line: 203, column: 27, scope: !444)
!444 = distinct !DILexicalBlock(scope: !378, file: !120, line: 203, column: 2)
!445 = !DILocation(line: 203, column: 34, scope: !444)
!446 = !DILocation(line: 203, column: 26, scope: !444)
!447 = !DILocation(line: 203, column: 17, scope: !444)
!448 = !DILocation(line: 203, column: 21, scope: !444)
!449 = !DILocation(line: 203, column: 4, scope: !444)
!450 = !DILocation(line: 203, column: 24, scope: !444)
!451 = !DILocation(line: 203, column: 42, scope: !444)
!452 = !DILocation(line: 203, column: 46, scope: !444)
!453 = !DILocation(line: 203, column: 48, scope: !444)
!454 = !DILocation(line: 204, column: 16, scope: !378)
!455 = !DILocation(line: 204, column: 5, scope: !378)
!456 = !DILocation(line: 204, column: 9, scope: !378)
!457 = !DILocation(line: 204, column: 10, scope: !378)
!458 = !DILocation(line: 204, column: 14, scope: !378)
!459 = !DILocation(line: 205, column: 5, scope: !378)
!460 = !DILocation(line: 205, column: 9, scope: !378)
!461 = !DILocation(line: 205, column: 10, scope: !378)
!462 = !DILocation(line: 205, column: 14, scope: !378)
!463 = !DILocation(line: 206, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !378, file: !120, line: 206, column: 2)
!465 = !DILocation(line: 206, column: 21, scope: !464)
!466 = !DILocation(line: 206, column: 4, scope: !464)
!467 = !DILocation(line: 206, column: 24, scope: !464)
!468 = !DILocation(line: 206, column: 30, scope: !464)
!469 = !DILocation(line: 206, column: 34, scope: !464)
!470 = !DILocation(line: 206, column: 36, scope: !464)
!471 = !DILocation(line: 208, column: 11, scope: !378)
!472 = !DILocation(line: 208, column: 14, scope: !378)
!473 = !DILocation(line: 208, column: 2, scope: !378)
!474 = !DILocation(line: 209, column: 1, scope: !378)
!475 = !DILocalVariable(name: "allowupdates", arg: 1, scope: !143, file: !120, line: 581, type: !37)
!476 = !DILocation(line: 581, column: 55, scope: !143)
!477 = !DILocalVariable(name: "s", scope: !143, file: !120, line: 583, type: !127)
!478 = !DILocation(line: 583, column: 9, scope: !143)
!479 = !DILocation(line: 586, column: 2, scope: !143)
!480 = !DILocation(line: 588, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !143, file: !120, line: 588, column: 6)
!482 = !DILocation(line: 588, column: 24, scope: !481)
!483 = !DILocation(line: 588, column: 21, scope: !481)
!484 = !DILocation(line: 588, column: 6, scope: !143)
!485 = !DILocation(line: 589, column: 3, scope: !481)
!486 = !DILocation(line: 591, column: 6, scope: !143)
!487 = !DILocation(line: 591, column: 4, scope: !143)
!488 = !DILocation(line: 593, column: 16, scope: !143)
!489 = !DILocation(line: 593, column: 5, scope: !143)
!490 = !DILocation(line: 593, column: 9, scope: !143)
!491 = !DILocation(line: 593, column: 10, scope: !143)
!492 = !DILocation(line: 593, column: 14, scope: !143)
!493 = !DILocation(line: 594, column: 12, scope: !494)
!494 = distinct !DILexicalBlock(scope: !143, file: !120, line: 594, column: 2)
!495 = !DILocation(line: 594, column: 16, scope: !494)
!496 = !DILocation(line: 594, column: 4, scope: !494)
!497 = !DILocation(line: 594, column: 25, scope: !494)
!498 = !DILocation(line: 594, column: 29, scope: !494)
!499 = !DILocation(line: 594, column: 31, scope: !494)
!500 = !DILocation(line: 596, column: 10, scope: !143)
!501 = !DILocation(line: 596, column: 2, scope: !143)
!502 = !DILocation(line: 599, column: 4, scope: !503)
!503 = distinct !DILexicalBlock(scope: !143, file: !120, line: 597, column: 2)
!504 = !DILocation(line: 602, column: 19, scope: !505)
!505 = distinct !DILexicalBlock(scope: !503, file: !120, line: 602, column: 4)
!506 = !DILocation(line: 602, column: 23, scope: !505)
!507 = !DILocation(line: 602, column: 6, scope: !505)
!508 = !DILocation(line: 602, column: 26, scope: !505)
!509 = !DILocation(line: 602, column: 32, scope: !505)
!510 = !DILocation(line: 602, column: 36, scope: !505)
!511 = !DILocation(line: 602, column: 38, scope: !505)
!512 = !DILocation(line: 603, column: 19, scope: !513)
!513 = distinct !DILexicalBlock(scope: !503, file: !120, line: 603, column: 4)
!514 = !DILocation(line: 603, column: 23, scope: !513)
!515 = !DILocation(line: 603, column: 6, scope: !513)
!516 = !DILocation(line: 603, column: 26, scope: !513)
!517 = !DILocation(line: 603, column: 32, scope: !513)
!518 = !DILocation(line: 603, column: 36, scope: !513)
!519 = !DILocation(line: 603, column: 38, scope: !513)
!520 = !DILocation(line: 604, column: 28, scope: !521)
!521 = distinct !DILexicalBlock(scope: !503, file: !120, line: 604, column: 4)
!522 = !DILocation(line: 604, column: 19, scope: !521)
!523 = !DILocation(line: 604, column: 23, scope: !521)
!524 = !DILocation(line: 604, column: 6, scope: !521)
!525 = !DILocation(line: 604, column: 26, scope: !521)
!526 = !DILocation(line: 604, column: 46, scope: !521)
!527 = !DILocation(line: 604, column: 50, scope: !521)
!528 = !DILocation(line: 604, column: 52, scope: !521)
!529 = !DILocation(line: 605, column: 28, scope: !530)
!530 = distinct !DILexicalBlock(scope: !503, file: !120, line: 605, column: 4)
!531 = !DILocation(line: 605, column: 19, scope: !530)
!532 = !DILocation(line: 605, column: 23, scope: !530)
!533 = !DILocation(line: 605, column: 6, scope: !530)
!534 = !DILocation(line: 605, column: 26, scope: !530)
!535 = !DILocation(line: 605, column: 47, scope: !530)
!536 = !DILocation(line: 605, column: 51, scope: !530)
!537 = !DILocation(line: 605, column: 53, scope: !530)
!538 = !DILocation(line: 606, column: 4, scope: !503)
!539 = !DILocation(line: 609, column: 14, scope: !143)
!540 = !DILocation(line: 609, column: 18, scope: !143)
!541 = !DILocation(line: 609, column: 3, scope: !143)
!542 = !DILocation(line: 609, column: 7, scope: !143)
!543 = !DILocation(line: 609, column: 11, scope: !143)
!544 = !DILocation(line: 610, column: 16, scope: !143)
!545 = !DILocation(line: 610, column: 2, scope: !143)
!546 = !DILocation(line: 611, column: 19, scope: !143)
!547 = !DILocation(line: 611, column: 17, scope: !143)
!548 = !DILocation(line: 612, column: 1, scope: !143)
!549 = !DILocation(line: 612, column: 1, scope: !550)
!550 = !DILexicalBlockFile(scope: !143, file: !120, discriminator: 1)
!551 = distinct !DISubprogram(name: "process_colour_pointer_pdu", scope: !120, file: !120, line: 1288, type: !552, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !127}
!554 = !DILocalVariable(name: "s", arg: 1, scope: !551, file: !120, line: 1288, type: !127)
!555 = !DILocation(line: 1288, column: 35, scope: !551)
!556 = !DILocation(line: 1290, column: 2, scope: !551)
!557 = !DILocation(line: 1292, column: 32, scope: !551)
!558 = !DILocation(line: 1292, column: 2, scope: !551)
!559 = !DILocation(line: 1293, column: 1, scope: !551)
!560 = distinct !DISubprogram(name: "process_colour_pointer_common", scope: !120, file: !120, line: 1254, type: !561, isLocal: true, isDefinition: true, scopeLine: 1255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !127, !122}
!563 = !DILocalVariable(name: "s", arg: 1, scope: !560, file: !120, line: 1254, type: !127)
!564 = !DILocation(line: 1254, column: 38, scope: !560)
!565 = !DILocalVariable(name: "bpp", arg: 2, scope: !560, file: !120, line: 1254, type: !122)
!566 = !DILocation(line: 1254, column: 45, scope: !560)
!567 = !DILocalVariable(name: "width", scope: !560, file: !120, line: 1257, type: !102)
!568 = !DILocation(line: 1257, column: 9, scope: !560)
!569 = !DILocalVariable(name: "height", scope: !560, file: !120, line: 1257, type: !102)
!570 = !DILocation(line: 1257, column: 16, scope: !560)
!571 = !DILocalVariable(name: "cache_idx", scope: !560, file: !120, line: 1257, type: !102)
!572 = !DILocation(line: 1257, column: 24, scope: !560)
!573 = !DILocalVariable(name: "masklen", scope: !560, file: !120, line: 1257, type: !102)
!574 = !DILocation(line: 1257, column: 35, scope: !560)
!575 = !DILocalVariable(name: "datalen", scope: !560, file: !120, line: 1257, type: !102)
!576 = !DILocation(line: 1257, column: 44, scope: !560)
!577 = !DILocalVariable(name: "x", scope: !560, file: !120, line: 1258, type: !102)
!578 = !DILocation(line: 1258, column: 9, scope: !560)
!579 = !DILocalVariable(name: "y", scope: !560, file: !120, line: 1258, type: !102)
!580 = !DILocation(line: 1258, column: 12, scope: !560)
!581 = !DILocalVariable(name: "mask", scope: !560, file: !120, line: 1259, type: !107)
!582 = !DILocation(line: 1259, column: 9, scope: !560)
!583 = !DILocalVariable(name: "data", scope: !560, file: !120, line: 1260, type: !107)
!584 = !DILocation(line: 1260, column: 9, scope: !560)
!585 = !DILocalVariable(name: "cursor", scope: !560, file: !120, line: 1261, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HCURSOR", file: !68, line: 49, baseType: !94)
!587 = !DILocation(line: 1261, column: 13, scope: !560)
!588 = !DILocation(line: 1263, column: 29, scope: !589)
!589 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1263, column: 2)
!590 = !DILocation(line: 1263, column: 33, scope: !589)
!591 = !DILocation(line: 1263, column: 16, scope: !589)
!592 = !DILocation(line: 1263, column: 14, scope: !589)
!593 = !DILocation(line: 1263, column: 38, scope: !589)
!594 = !DILocation(line: 1263, column: 42, scope: !589)
!595 = !DILocation(line: 1263, column: 44, scope: !589)
!596 = !DILocation(line: 1264, column: 21, scope: !597)
!597 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1264, column: 2)
!598 = !DILocation(line: 1264, column: 25, scope: !597)
!599 = !DILocation(line: 1264, column: 8, scope: !597)
!600 = !DILocation(line: 1264, column: 6, scope: !597)
!601 = !DILocation(line: 1264, column: 30, scope: !597)
!602 = !DILocation(line: 1264, column: 34, scope: !597)
!603 = !DILocation(line: 1264, column: 36, scope: !597)
!604 = !DILocation(line: 1265, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1265, column: 2)
!606 = !DILocation(line: 1265, column: 25, scope: !605)
!607 = !DILocation(line: 1265, column: 8, scope: !605)
!608 = !DILocation(line: 1265, column: 6, scope: !605)
!609 = !DILocation(line: 1265, column: 30, scope: !605)
!610 = !DILocation(line: 1265, column: 34, scope: !605)
!611 = !DILocation(line: 1265, column: 36, scope: !605)
!612 = !DILocation(line: 1266, column: 25, scope: !613)
!613 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1266, column: 2)
!614 = !DILocation(line: 1266, column: 29, scope: !613)
!615 = !DILocation(line: 1266, column: 12, scope: !613)
!616 = !DILocation(line: 1266, column: 10, scope: !613)
!617 = !DILocation(line: 1266, column: 34, scope: !613)
!618 = !DILocation(line: 1266, column: 38, scope: !613)
!619 = !DILocation(line: 1266, column: 40, scope: !613)
!620 = !DILocation(line: 1267, column: 26, scope: !621)
!621 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1267, column: 2)
!622 = !DILocation(line: 1267, column: 30, scope: !621)
!623 = !DILocation(line: 1267, column: 13, scope: !621)
!624 = !DILocation(line: 1267, column: 11, scope: !621)
!625 = !DILocation(line: 1267, column: 35, scope: !621)
!626 = !DILocation(line: 1267, column: 39, scope: !621)
!627 = !DILocation(line: 1267, column: 41, scope: !621)
!628 = !DILocation(line: 1268, column: 27, scope: !629)
!629 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1268, column: 2)
!630 = !DILocation(line: 1268, column: 31, scope: !629)
!631 = !DILocation(line: 1268, column: 14, scope: !629)
!632 = !DILocation(line: 1268, column: 12, scope: !629)
!633 = !DILocation(line: 1268, column: 36, scope: !629)
!634 = !DILocation(line: 1268, column: 40, scope: !629)
!635 = !DILocation(line: 1268, column: 42, scope: !629)
!636 = !DILocation(line: 1269, column: 27, scope: !637)
!637 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1269, column: 2)
!638 = !DILocation(line: 1269, column: 31, scope: !637)
!639 = !DILocation(line: 1269, column: 14, scope: !637)
!640 = !DILocation(line: 1269, column: 12, scope: !637)
!641 = !DILocation(line: 1269, column: 36, scope: !637)
!642 = !DILocation(line: 1269, column: 40, scope: !637)
!643 = !DILocation(line: 1269, column: 42, scope: !637)
!644 = !DILocation(line: 1270, column: 12, scope: !645)
!645 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1270, column: 2)
!646 = !DILocation(line: 1270, column: 16, scope: !645)
!647 = !DILocation(line: 1270, column: 9, scope: !645)
!648 = !DILocation(line: 1270, column: 29, scope: !645)
!649 = !DILocation(line: 1270, column: 20, scope: !645)
!650 = !DILocation(line: 1270, column: 24, scope: !645)
!651 = !DILocation(line: 1270, column: 26, scope: !645)
!652 = !DILocation(line: 1271, column: 12, scope: !653)
!653 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1271, column: 2)
!654 = !DILocation(line: 1271, column: 16, scope: !653)
!655 = !DILocation(line: 1271, column: 9, scope: !653)
!656 = !DILocation(line: 1271, column: 29, scope: !653)
!657 = !DILocation(line: 1271, column: 20, scope: !653)
!658 = !DILocation(line: 1271, column: 24, scope: !653)
!659 = !DILocation(line: 1271, column: 26, scope: !653)
!660 = !DILocation(line: 1275, column: 9, scope: !560)
!661 = !DILocation(line: 1275, column: 20, scope: !560)
!662 = !DILocation(line: 1275, column: 27, scope: !560)
!663 = !DILocation(line: 1273, column: 2, scope: !560)
!664 = !DILocation(line: 1278, column: 9, scope: !560)
!665 = !DILocation(line: 1278, column: 8, scope: !560)
!666 = !DILocation(line: 1278, column: 15, scope: !560)
!667 = !DILocation(line: 1278, column: 21, scope: !560)
!668 = !DILocation(line: 1278, column: 12, scope: !560)
!669 = !DILocation(line: 1278, column: 7, scope: !560)
!670 = !DILocation(line: 1278, column: 30, scope: !671)
!671 = !DILexicalBlockFile(scope: !560, file: !120, discriminator: 1)
!672 = !DILocation(line: 1278, column: 29, scope: !671)
!673 = !DILocation(line: 1278, column: 7, scope: !671)
!674 = !DILocation(line: 1278, column: 36, scope: !675)
!675 = !DILexicalBlockFile(scope: !560, file: !120, discriminator: 2)
!676 = !DILocation(line: 1278, column: 42, scope: !675)
!677 = !DILocation(line: 1278, column: 7, scope: !675)
!678 = !DILocation(line: 1278, column: 7, scope: !679)
!679 = !DILexicalBlockFile(scope: !560, file: !120, discriminator: 3)
!680 = !DILocation(line: 1278, column: 6, scope: !679)
!681 = !DILocation(line: 1278, column: 4, scope: !679)
!682 = !DILocation(line: 1279, column: 9, scope: !560)
!683 = !DILocation(line: 1279, column: 8, scope: !560)
!684 = !DILocation(line: 1279, column: 15, scope: !560)
!685 = !DILocation(line: 1279, column: 22, scope: !560)
!686 = !DILocation(line: 1279, column: 12, scope: !560)
!687 = !DILocation(line: 1279, column: 7, scope: !560)
!688 = !DILocation(line: 1279, column: 31, scope: !671)
!689 = !DILocation(line: 1279, column: 30, scope: !671)
!690 = !DILocation(line: 1279, column: 7, scope: !671)
!691 = !DILocation(line: 1279, column: 37, scope: !675)
!692 = !DILocation(line: 1279, column: 44, scope: !675)
!693 = !DILocation(line: 1279, column: 7, scope: !675)
!694 = !DILocation(line: 1279, column: 7, scope: !679)
!695 = !DILocation(line: 1279, column: 6, scope: !679)
!696 = !DILocation(line: 1279, column: 4, scope: !679)
!697 = !DILocation(line: 1280, column: 6, scope: !698)
!698 = distinct !DILexicalBlock(scope: !560, file: !120, line: 1280, column: 6)
!699 = !DILocation(line: 1280, column: 6, scope: !560)
!700 = !DILocation(line: 1280, column: 22, scope: !701)
!701 = !DILexicalBlockFile(scope: !698, file: !120, discriminator: 1)
!702 = !DILocation(line: 1281, column: 28, scope: !560)
!703 = !DILocation(line: 1281, column: 31, scope: !560)
!704 = !DILocation(line: 1281, column: 34, scope: !560)
!705 = !DILocation(line: 1281, column: 41, scope: !560)
!706 = !DILocation(line: 1281, column: 49, scope: !560)
!707 = !DILocation(line: 1281, column: 55, scope: !560)
!708 = !DILocation(line: 1281, column: 61, scope: !560)
!709 = !DILocation(line: 1281, column: 11, scope: !560)
!710 = !DILocation(line: 1281, column: 9, scope: !560)
!711 = !DILocation(line: 1282, column: 16, scope: !560)
!712 = !DILocation(line: 1282, column: 2, scope: !560)
!713 = !DILocation(line: 1283, column: 19, scope: !560)
!714 = !DILocation(line: 1283, column: 30, scope: !560)
!715 = !DILocation(line: 1283, column: 2, scope: !560)
!716 = !DILocation(line: 1284, column: 1, scope: !560)
!717 = !DILocation(line: 1284, column: 1, scope: !671)
!718 = distinct !DISubprogram(name: "process_new_pointer_pdu", scope: !120, file: !120, line: 1297, type: !552, isLocal: false, isDefinition: true, scopeLine: 1298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!719 = !DILocalVariable(name: "s", arg: 1, scope: !718, file: !120, line: 1297, type: !127)
!720 = !DILocation(line: 1297, column: 32, scope: !718)
!721 = !DILocalVariable(name: "xor_bpp", scope: !718, file: !120, line: 1299, type: !122)
!722 = !DILocation(line: 1299, column: 6, scope: !718)
!723 = !DILocation(line: 1300, column: 2, scope: !718)
!724 = !DILocation(line: 1303, column: 27, scope: !725)
!725 = distinct !DILexicalBlock(scope: !718, file: !120, line: 1303, column: 2)
!726 = !DILocation(line: 1303, column: 31, scope: !725)
!727 = !DILocation(line: 1303, column: 14, scope: !725)
!728 = !DILocation(line: 1303, column: 12, scope: !725)
!729 = !DILocation(line: 1303, column: 36, scope: !725)
!730 = !DILocation(line: 1303, column: 40, scope: !725)
!731 = !DILocation(line: 1303, column: 42, scope: !725)
!732 = !DILocation(line: 1304, column: 32, scope: !718)
!733 = !DILocation(line: 1304, column: 35, scope: !718)
!734 = !DILocation(line: 1304, column: 2, scope: !718)
!735 = !DILocation(line: 1305, column: 1, scope: !718)
!736 = distinct !DISubprogram(name: "process_cached_pointer_pdu", scope: !120, file: !120, line: 1309, type: !552, isLocal: false, isDefinition: true, scopeLine: 1310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!737 = !DILocalVariable(name: "s", arg: 1, scope: !736, file: !120, line: 1309, type: !127)
!738 = !DILocation(line: 1309, column: 35, scope: !736)
!739 = !DILocalVariable(name: "cache_idx", scope: !736, file: !120, line: 1311, type: !102)
!740 = !DILocation(line: 1311, column: 9, scope: !736)
!741 = !DILocation(line: 1312, column: 2, scope: !736)
!742 = !DILocation(line: 1315, column: 29, scope: !743)
!743 = distinct !DILexicalBlock(scope: !736, file: !120, line: 1315, column: 2)
!744 = !DILocation(line: 1315, column: 33, scope: !743)
!745 = !DILocation(line: 1315, column: 16, scope: !743)
!746 = !DILocation(line: 1315, column: 14, scope: !743)
!747 = !DILocation(line: 1315, column: 38, scope: !743)
!748 = !DILocation(line: 1315, column: 42, scope: !743)
!749 = !DILocation(line: 1315, column: 44, scope: !743)
!750 = !DILocation(line: 1316, column: 33, scope: !736)
!751 = !DILocation(line: 1316, column: 16, scope: !736)
!752 = !DILocation(line: 1316, column: 2, scope: !753)
!753 = !DILexicalBlockFile(scope: !736, file: !120, discriminator: 1)
!754 = !DILocation(line: 1317, column: 1, scope: !736)
!755 = distinct !DISubprogram(name: "process_system_pointer_pdu", scope: !120, file: !120, line: 1321, type: !552, isLocal: false, isDefinition: true, scopeLine: 1322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!756 = !DILocalVariable(name: "s", arg: 1, scope: !755, file: !120, line: 1321, type: !127)
!757 = !DILocation(line: 1321, column: 35, scope: !755)
!758 = !DILocalVariable(name: "system_pointer_type", scope: !755, file: !120, line: 1323, type: !105)
!759 = !DILocation(line: 1323, column: 9, scope: !755)
!760 = !DILocation(line: 1324, column: 2, scope: !755)
!761 = !DILocation(line: 1326, column: 39, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !120, line: 1326, column: 2)
!763 = !DILocation(line: 1326, column: 43, scope: !762)
!764 = !DILocation(line: 1326, column: 26, scope: !762)
!765 = !DILocation(line: 1326, column: 24, scope: !762)
!766 = !DILocation(line: 1326, column: 48, scope: !762)
!767 = !DILocation(line: 1326, column: 52, scope: !762)
!768 = !DILocation(line: 1326, column: 54, scope: !762)
!769 = !DILocation(line: 1328, column: 21, scope: !755)
!770 = !DILocation(line: 1328, column: 2, scope: !755)
!771 = !DILocation(line: 1329, column: 1, scope: !755)
!772 = distinct !DISubprogram(name: "set_system_pointer", scope: !120, file: !120, line: 1333, type: !773, isLocal: false, isDefinition: true, scopeLine: 1334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !105}
!775 = !DILocalVariable(name: "ptr", arg: 1, scope: !772, file: !120, line: 1333, type: !105)
!776 = !DILocation(line: 1333, column: 27, scope: !772)
!777 = !DILocation(line: 1335, column: 10, scope: !772)
!778 = !DILocation(line: 1335, column: 2, scope: !772)
!779 = !DILocation(line: 1338, column: 4, scope: !780)
!780 = distinct !DILexicalBlock(scope: !772, file: !120, line: 1336, column: 2)
!781 = !DILocation(line: 1339, column: 4, scope: !780)
!782 = !DILocation(line: 1341, column: 4, scope: !780)
!783 = !DILocation(line: 1342, column: 4, scope: !780)
!784 = !DILocation(line: 1346, column: 11, scope: !780)
!785 = !DILocation(line: 1344, column: 4, scope: !780)
!786 = !DILocation(line: 1347, column: 2, scope: !780)
!787 = !DILocation(line: 1348, column: 1, scope: !772)
!788 = distinct !DISubprogram(name: "process_bitmap_updates", scope: !120, file: !120, line: 1395, type: !552, isLocal: false, isDefinition: true, scopeLine: 1396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!789 = !DILocalVariable(name: "s", arg: 1, scope: !788, file: !120, line: 1395, type: !127)
!790 = !DILocation(line: 1395, column: 31, scope: !788)
!791 = !DILocalVariable(name: "num_updates", scope: !788, file: !120, line: 1397, type: !102)
!792 = !DILocation(line: 1397, column: 9, scope: !788)
!793 = !DILocalVariable(name: "left", scope: !788, file: !120, line: 1398, type: !102)
!794 = !DILocation(line: 1398, column: 9, scope: !788)
!795 = !DILocalVariable(name: "top", scope: !788, file: !120, line: 1398, type: !102)
!796 = !DILocation(line: 1398, column: 15, scope: !788)
!797 = !DILocalVariable(name: "right", scope: !788, file: !120, line: 1398, type: !102)
!798 = !DILocation(line: 1398, column: 20, scope: !788)
!799 = !DILocalVariable(name: "bottom", scope: !788, file: !120, line: 1398, type: !102)
!800 = !DILocation(line: 1398, column: 27, scope: !788)
!801 = !DILocalVariable(name: "width", scope: !788, file: !120, line: 1398, type: !102)
!802 = !DILocation(line: 1398, column: 35, scope: !788)
!803 = !DILocalVariable(name: "height", scope: !788, file: !120, line: 1398, type: !102)
!804 = !DILocation(line: 1398, column: 42, scope: !788)
!805 = !DILocalVariable(name: "cx", scope: !788, file: !120, line: 1399, type: !102)
!806 = !DILocation(line: 1399, column: 9, scope: !788)
!807 = !DILocalVariable(name: "cy", scope: !788, file: !120, line: 1399, type: !102)
!808 = !DILocation(line: 1399, column: 13, scope: !788)
!809 = !DILocalVariable(name: "bpp", scope: !788, file: !120, line: 1399, type: !102)
!810 = !DILocation(line: 1399, column: 17, scope: !788)
!811 = !DILocalVariable(name: "Bpp", scope: !788, file: !120, line: 1399, type: !102)
!812 = !DILocation(line: 1399, column: 22, scope: !788)
!813 = !DILocalVariable(name: "compress", scope: !788, file: !120, line: 1399, type: !102)
!814 = !DILocation(line: 1399, column: 27, scope: !788)
!815 = !DILocalVariable(name: "bufsize", scope: !788, file: !120, line: 1399, type: !102)
!816 = !DILocation(line: 1399, column: 37, scope: !788)
!817 = !DILocalVariable(name: "size", scope: !788, file: !120, line: 1399, type: !102)
!818 = !DILocation(line: 1399, column: 46, scope: !788)
!819 = !DILocalVariable(name: "data", scope: !788, file: !120, line: 1400, type: !107)
!820 = !DILocation(line: 1400, column: 9, scope: !788)
!821 = !DILocalVariable(name: "bmpdata", scope: !788, file: !120, line: 1400, type: !107)
!822 = !DILocation(line: 1400, column: 16, scope: !788)
!823 = !DILocalVariable(name: "i", scope: !788, file: !120, line: 1401, type: !122)
!824 = !DILocation(line: 1401, column: 6, scope: !788)
!825 = !DILocation(line: 1403, column: 2, scope: !788)
!826 = !DILocation(line: 1405, column: 31, scope: !827)
!827 = distinct !DILexicalBlock(scope: !788, file: !120, line: 1405, column: 2)
!828 = !DILocation(line: 1405, column: 35, scope: !827)
!829 = !DILocation(line: 1405, column: 18, scope: !827)
!830 = !DILocation(line: 1405, column: 16, scope: !827)
!831 = !DILocation(line: 1405, column: 40, scope: !827)
!832 = !DILocation(line: 1405, column: 44, scope: !827)
!833 = !DILocation(line: 1405, column: 46, scope: !827)
!834 = !DILocation(line: 1407, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !788, file: !120, line: 1407, column: 2)
!836 = !DILocation(line: 1407, column: 7, scope: !835)
!837 = !DILocation(line: 1407, column: 14, scope: !838)
!838 = !DILexicalBlockFile(scope: !839, file: !120, discriminator: 1)
!839 = distinct !DILexicalBlock(scope: !835, file: !120, line: 1407, column: 2)
!840 = !DILocation(line: 1407, column: 18, scope: !838)
!841 = !DILocation(line: 1407, column: 16, scope: !838)
!842 = !DILocation(line: 1407, column: 2, scope: !838)
!843 = !DILocation(line: 1409, column: 25, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1409, column: 3)
!845 = distinct !DILexicalBlock(scope: !839, file: !120, line: 1408, column: 2)
!846 = !DILocation(line: 1409, column: 29, scope: !844)
!847 = !DILocation(line: 1409, column: 12, scope: !844)
!848 = !DILocation(line: 1409, column: 10, scope: !844)
!849 = !DILocation(line: 1409, column: 34, scope: !844)
!850 = !DILocation(line: 1409, column: 38, scope: !844)
!851 = !DILocation(line: 1409, column: 40, scope: !844)
!852 = !DILocation(line: 1410, column: 24, scope: !853)
!853 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1410, column: 3)
!854 = !DILocation(line: 1410, column: 28, scope: !853)
!855 = !DILocation(line: 1410, column: 11, scope: !853)
!856 = !DILocation(line: 1410, column: 9, scope: !853)
!857 = !DILocation(line: 1410, column: 33, scope: !853)
!858 = !DILocation(line: 1410, column: 37, scope: !853)
!859 = !DILocation(line: 1410, column: 39, scope: !853)
!860 = !DILocation(line: 1411, column: 26, scope: !861)
!861 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1411, column: 3)
!862 = !DILocation(line: 1411, column: 30, scope: !861)
!863 = !DILocation(line: 1411, column: 13, scope: !861)
!864 = !DILocation(line: 1411, column: 11, scope: !861)
!865 = !DILocation(line: 1411, column: 35, scope: !861)
!866 = !DILocation(line: 1411, column: 39, scope: !861)
!867 = !DILocation(line: 1411, column: 41, scope: !861)
!868 = !DILocation(line: 1412, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1412, column: 3)
!870 = !DILocation(line: 1412, column: 31, scope: !869)
!871 = !DILocation(line: 1412, column: 14, scope: !869)
!872 = !DILocation(line: 1412, column: 12, scope: !869)
!873 = !DILocation(line: 1412, column: 36, scope: !869)
!874 = !DILocation(line: 1412, column: 40, scope: !869)
!875 = !DILocation(line: 1412, column: 42, scope: !869)
!876 = !DILocation(line: 1413, column: 26, scope: !877)
!877 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1413, column: 3)
!878 = !DILocation(line: 1413, column: 30, scope: !877)
!879 = !DILocation(line: 1413, column: 13, scope: !877)
!880 = !DILocation(line: 1413, column: 11, scope: !877)
!881 = !DILocation(line: 1413, column: 35, scope: !877)
!882 = !DILocation(line: 1413, column: 39, scope: !877)
!883 = !DILocation(line: 1413, column: 41, scope: !877)
!884 = !DILocation(line: 1414, column: 27, scope: !885)
!885 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1414, column: 3)
!886 = !DILocation(line: 1414, column: 31, scope: !885)
!887 = !DILocation(line: 1414, column: 14, scope: !885)
!888 = !DILocation(line: 1414, column: 12, scope: !885)
!889 = !DILocation(line: 1414, column: 36, scope: !885)
!890 = !DILocation(line: 1414, column: 40, scope: !885)
!891 = !DILocation(line: 1414, column: 42, scope: !885)
!892 = !DILocation(line: 1415, column: 24, scope: !893)
!893 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1415, column: 3)
!894 = !DILocation(line: 1415, column: 28, scope: !893)
!895 = !DILocation(line: 1415, column: 11, scope: !893)
!896 = !DILocation(line: 1415, column: 9, scope: !893)
!897 = !DILocation(line: 1415, column: 33, scope: !893)
!898 = !DILocation(line: 1415, column: 37, scope: !893)
!899 = !DILocation(line: 1415, column: 39, scope: !893)
!900 = !DILocation(line: 1416, column: 10, scope: !845)
!901 = !DILocation(line: 1416, column: 14, scope: !845)
!902 = !DILocation(line: 1416, column: 19, scope: !845)
!903 = !DILocation(line: 1416, column: 9, scope: !845)
!904 = !DILocation(line: 1416, column: 7, scope: !845)
!905 = !DILocation(line: 1417, column: 29, scope: !906)
!906 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1417, column: 3)
!907 = !DILocation(line: 1417, column: 33, scope: !906)
!908 = !DILocation(line: 1417, column: 16, scope: !906)
!909 = !DILocation(line: 1417, column: 14, scope: !906)
!910 = !DILocation(line: 1417, column: 38, scope: !906)
!911 = !DILocation(line: 1417, column: 42, scope: !906)
!912 = !DILocation(line: 1417, column: 44, scope: !906)
!913 = !DILocation(line: 1418, column: 28, scope: !914)
!914 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1418, column: 3)
!915 = !DILocation(line: 1418, column: 32, scope: !914)
!916 = !DILocation(line: 1418, column: 15, scope: !914)
!917 = !DILocation(line: 1418, column: 13, scope: !914)
!918 = !DILocation(line: 1418, column: 37, scope: !914)
!919 = !DILocation(line: 1418, column: 41, scope: !914)
!920 = !DILocation(line: 1418, column: 43, scope: !914)
!921 = !DILocation(line: 1420, column: 8, scope: !845)
!922 = !DILocation(line: 1420, column: 16, scope: !845)
!923 = !DILocation(line: 1420, column: 14, scope: !845)
!924 = !DILocation(line: 1420, column: 21, scope: !845)
!925 = !DILocation(line: 1420, column: 6, scope: !845)
!926 = !DILocation(line: 1421, column: 8, scope: !845)
!927 = !DILocation(line: 1421, column: 17, scope: !845)
!928 = !DILocation(line: 1421, column: 15, scope: !845)
!929 = !DILocation(line: 1421, column: 21, scope: !845)
!930 = !DILocation(line: 1421, column: 6, scope: !845)
!931 = !DILocation(line: 1425, column: 10, scope: !845)
!932 = !DILocation(line: 1425, column: 16, scope: !845)
!933 = !DILocation(line: 1425, column: 21, scope: !845)
!934 = !DILocation(line: 1425, column: 28, scope: !845)
!935 = !DILocation(line: 1425, column: 36, scope: !845)
!936 = !DILocation(line: 1425, column: 43, scope: !845)
!937 = !DILocation(line: 1425, column: 51, scope: !845)
!938 = !DILocation(line: 1425, column: 56, scope: !845)
!939 = !DILocation(line: 1423, column: 3, scope: !845)
!940 = !DILocation(line: 1427, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1427, column: 7)
!942 = !DILocation(line: 1427, column: 7, scope: !845)
!943 = !DILocalVariable(name: "y", scope: !944, file: !120, line: 1429, type: !122)
!944 = distinct !DILexicalBlock(scope: !941, file: !120, line: 1428, column: 3)
!945 = !DILocation(line: 1429, column: 8, scope: !944)
!946 = !DILocation(line: 1430, column: 32, scope: !944)
!947 = !DILocation(line: 1430, column: 40, scope: !944)
!948 = !DILocation(line: 1430, column: 38, scope: !944)
!949 = !DILocation(line: 1430, column: 49, scope: !944)
!950 = !DILocation(line: 1430, column: 47, scope: !944)
!951 = !DILocation(line: 1430, column: 24, scope: !944)
!952 = !DILocation(line: 1430, column: 12, scope: !944)
!953 = !DILocation(line: 1431, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !944, file: !120, line: 1431, column: 4)
!955 = !DILocation(line: 1431, column: 9, scope: !954)
!956 = !DILocation(line: 1431, column: 16, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !120, discriminator: 1)
!958 = distinct !DILexicalBlock(scope: !954, file: !120, line: 1431, column: 4)
!959 = !DILocation(line: 1431, column: 20, scope: !957)
!960 = !DILocation(line: 1431, column: 18, scope: !957)
!961 = !DILocation(line: 1431, column: 4, scope: !957)
!962 = !DILocation(line: 1433, column: 24, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !120, line: 1433, column: 5)
!964 = distinct !DILexicalBlock(scope: !958, file: !120, line: 1432, column: 4)
!965 = !DILocation(line: 1433, column: 33, scope: !963)
!966 = !DILocation(line: 1433, column: 31, scope: !963)
!967 = !DILocation(line: 1433, column: 35, scope: !963)
!968 = !DILocation(line: 1433, column: 43, scope: !963)
!969 = !DILocation(line: 1433, column: 51, scope: !963)
!970 = !DILocation(line: 1433, column: 49, scope: !963)
!971 = !DILocation(line: 1433, column: 40, scope: !963)
!972 = !DILocation(line: 1433, column: 15, scope: !963)
!973 = !DILocation(line: 1433, column: 58, scope: !963)
!974 = !DILocation(line: 1433, column: 62, scope: !963)
!975 = !DILocation(line: 1433, column: 64, scope: !963)
!976 = !DILocation(line: 1433, column: 72, scope: !963)
!977 = !DILocation(line: 1433, column: 70, scope: !963)
!978 = !DILocation(line: 1433, column: 7, scope: !963)
!979 = !DILocation(line: 1433, column: 88, scope: !963)
!980 = !DILocation(line: 1433, column: 96, scope: !963)
!981 = !DILocation(line: 1433, column: 94, scope: !963)
!982 = !DILocation(line: 1433, column: 79, scope: !963)
!983 = !DILocation(line: 1433, column: 83, scope: !963)
!984 = !DILocation(line: 1433, column: 85, scope: !963)
!985 = !DILocation(line: 1435, column: 4, scope: !964)
!986 = !DILocation(line: 1431, column: 29, scope: !987)
!987 = !DILexicalBlockFile(scope: !958, file: !120, discriminator: 2)
!988 = !DILocation(line: 1431, column: 4, scope: !987)
!989 = distinct !{!989, !990}
!990 = !DILocation(line: 1431, column: 4, scope: !944)
!991 = !DILocation(line: 1436, column: 20, scope: !944)
!992 = !DILocation(line: 1436, column: 26, scope: !944)
!993 = !DILocation(line: 1436, column: 31, scope: !944)
!994 = !DILocation(line: 1436, column: 35, scope: !944)
!995 = !DILocation(line: 1436, column: 39, scope: !944)
!996 = !DILocation(line: 1436, column: 46, scope: !944)
!997 = !DILocation(line: 1436, column: 54, scope: !944)
!998 = !DILocation(line: 1436, column: 4, scope: !944)
!999 = !DILocation(line: 1437, column: 10, scope: !944)
!1000 = !DILocation(line: 1437, column: 4, scope: !944)
!1001 = !DILocation(line: 1438, column: 4, scope: !944)
!1002 = !DILocation(line: 1442, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1442, column: 7)
!1004 = !DILocation(line: 1442, column: 16, scope: !1003)
!1005 = !DILocation(line: 1442, column: 7, scope: !845)
!1006 = !DILocation(line: 1444, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !120, line: 1443, column: 3)
!1008 = !DILocation(line: 1444, column: 9, scope: !1007)
!1009 = !DILocation(line: 1445, column: 3, scope: !1007)
!1010 = !DILocation(line: 1448, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !120, line: 1447, column: 3)
!1012 = !DILocation(line: 1448, column: 9, scope: !1011)
!1013 = !DILocation(line: 1448, column: 11, scope: !1011)
!1014 = !DILocation(line: 1449, column: 26, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !120, line: 1449, column: 4)
!1016 = !DILocation(line: 1449, column: 30, scope: !1015)
!1017 = !DILocation(line: 1449, column: 13, scope: !1015)
!1018 = !DILocation(line: 1449, column: 11, scope: !1015)
!1019 = !DILocation(line: 1449, column: 35, scope: !1015)
!1020 = !DILocation(line: 1449, column: 39, scope: !1015)
!1021 = !DILocation(line: 1449, column: 41, scope: !1015)
!1022 = !DILocation(line: 1450, column: 5, scope: !1011)
!1023 = !DILocation(line: 1450, column: 9, scope: !1011)
!1024 = !DILocation(line: 1450, column: 11, scope: !1011)
!1025 = !DILocation(line: 1452, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1452, column: 3)
!1027 = !DILocation(line: 1452, column: 17, scope: !1026)
!1028 = !DILocation(line: 1452, column: 10, scope: !1026)
!1029 = !DILocation(line: 1452, column: 30, scope: !1026)
!1030 = !DILocation(line: 1452, column: 21, scope: !1026)
!1031 = !DILocation(line: 1452, column: 25, scope: !1026)
!1032 = !DILocation(line: 1452, column: 27, scope: !1026)
!1033 = !DILocation(line: 1453, column: 31, scope: !845)
!1034 = !DILocation(line: 1453, column: 39, scope: !845)
!1035 = !DILocation(line: 1453, column: 37, scope: !845)
!1036 = !DILocation(line: 1453, column: 48, scope: !845)
!1037 = !DILocation(line: 1453, column: 46, scope: !845)
!1038 = !DILocation(line: 1453, column: 23, scope: !845)
!1039 = !DILocation(line: 1453, column: 11, scope: !845)
!1040 = !DILocation(line: 1454, column: 25, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !845, file: !120, line: 1454, column: 7)
!1042 = !DILocation(line: 1454, column: 34, scope: !1041)
!1043 = !DILocation(line: 1454, column: 41, scope: !1041)
!1044 = !DILocation(line: 1454, column: 49, scope: !1041)
!1045 = !DILocation(line: 1454, column: 55, scope: !1041)
!1046 = !DILocation(line: 1454, column: 61, scope: !1041)
!1047 = !DILocation(line: 1454, column: 7, scope: !1041)
!1048 = !DILocation(line: 1454, column: 7, scope: !845)
!1049 = !DILocation(line: 1456, column: 20, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1041, file: !120, line: 1455, column: 3)
!1051 = !DILocation(line: 1456, column: 26, scope: !1050)
!1052 = !DILocation(line: 1456, column: 31, scope: !1050)
!1053 = !DILocation(line: 1456, column: 35, scope: !1050)
!1054 = !DILocation(line: 1456, column: 39, scope: !1050)
!1055 = !DILocation(line: 1456, column: 46, scope: !1050)
!1056 = !DILocation(line: 1456, column: 54, scope: !1050)
!1057 = !DILocation(line: 1456, column: 4, scope: !1050)
!1058 = !DILocation(line: 1457, column: 3, scope: !1050)
!1059 = !DILocation(line: 1460, column: 4, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1041, file: !120, line: 1459, column: 3)
!1061 = !DILocation(line: 1464, column: 9, scope: !845)
!1062 = !DILocation(line: 1464, column: 3, scope: !845)
!1063 = !DILocation(line: 1465, column: 2, scope: !845)
!1064 = !DILocation(line: 1407, column: 32, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !839, file: !120, discriminator: 2)
!1066 = !DILocation(line: 1407, column: 2, scope: !1065)
!1067 = distinct !{!1067, !1068}
!1068 = !DILocation(line: 1407, column: 2, scope: !788)
!1069 = !DILocation(line: 1466, column: 1, scope: !788)
!1070 = distinct !DISubprogram(name: "process_palette", scope: !120, file: !120, line: 1470, type: !552, isLocal: false, isDefinition: true, scopeLine: 1471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1071 = !DILocalVariable(name: "s", arg: 1, scope: !1070, file: !120, line: 1470, type: !127)
!1072 = !DILocation(line: 1470, column: 24, scope: !1070)
!1073 = !DILocalVariable(name: "entry", scope: !1070, file: !120, line: 1472, type: !110)
!1074 = !DILocation(line: 1472, column: 15, scope: !1070)
!1075 = !DILocalVariable(name: "map", scope: !1070, file: !120, line: 1473, type: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOURMAP", file: !68, line: 81, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_COLOURMAP", file: !68, line: 75, size: 128, align: 64, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ncolours", scope: !1077, file: !68, line: 77, baseType: !102, size: 16, align: 16)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "colours", scope: !1077, file: !68, line: 78, baseType: !110, size: 64, align: 64, offset: 64)
!1081 = !DILocation(line: 1473, column: 12, scope: !1070)
!1082 = !DILocalVariable(name: "hmap", scope: !1070, file: !120, line: 1474, type: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_HCOLOURMAP", file: !68, line: 48, baseType: !94)
!1084 = !DILocation(line: 1474, column: 16, scope: !1070)
!1085 = !DILocalVariable(name: "i", scope: !1070, file: !120, line: 1475, type: !122)
!1086 = !DILocation(line: 1475, column: 6, scope: !1070)
!1087 = !DILocation(line: 1477, column: 3, scope: !1070)
!1088 = !DILocation(line: 1477, column: 7, scope: !1070)
!1089 = !DILocation(line: 1477, column: 9, scope: !1070)
!1090 = !DILocation(line: 1478, column: 32, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1070, file: !120, line: 1478, column: 2)
!1092 = !DILocation(line: 1478, column: 36, scope: !1091)
!1093 = !DILocation(line: 1478, column: 19, scope: !1091)
!1094 = !DILocation(line: 1478, column: 8, scope: !1091)
!1095 = !DILocation(line: 1478, column: 17, scope: !1091)
!1096 = !DILocation(line: 1478, column: 41, scope: !1091)
!1097 = !DILocation(line: 1478, column: 45, scope: !1091)
!1098 = !DILocation(line: 1478, column: 47, scope: !1091)
!1099 = !DILocation(line: 1479, column: 3, scope: !1070)
!1100 = !DILocation(line: 1479, column: 7, scope: !1070)
!1101 = !DILocation(line: 1479, column: 9, scope: !1070)
!1102 = !DILocation(line: 1481, column: 66, scope: !1070)
!1103 = !DILocation(line: 1481, column: 62, scope: !1070)
!1104 = !DILocation(line: 1481, column: 60, scope: !1070)
!1105 = !DILocation(line: 1481, column: 40, scope: !1070)
!1106 = !DILocation(line: 1481, column: 32, scope: !1070)
!1107 = !DILocation(line: 1481, column: 16, scope: !1070)
!1108 = !DILocation(line: 1481, column: 6, scope: !1070)
!1109 = !DILocation(line: 1481, column: 14, scope: !1070)
!1110 = !DILocation(line: 1483, column: 68, scope: !1070)
!1111 = !DILocation(line: 1483, column: 64, scope: !1070)
!1112 = !DILocation(line: 1483, column: 2, scope: !1070)
!1113 = !DILocation(line: 1485, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1070, file: !120, line: 1485, column: 2)
!1115 = !DILocation(line: 1485, column: 7, scope: !1114)
!1116 = !DILocation(line: 1485, column: 14, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1118, file: !120, discriminator: 1)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !120, line: 1485, column: 2)
!1119 = !DILocation(line: 1485, column: 22, scope: !1117)
!1120 = !DILocation(line: 1485, column: 18, scope: !1117)
!1121 = !DILocation(line: 1485, column: 16, scope: !1117)
!1122 = !DILocation(line: 1485, column: 2, scope: !1117)
!1123 = !DILocation(line: 1487, column: 24, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !120, line: 1486, column: 2)
!1125 = !DILocation(line: 1487, column: 12, scope: !1124)
!1126 = !DILocation(line: 1487, column: 16, scope: !1124)
!1127 = !DILocation(line: 1487, column: 9, scope: !1124)
!1128 = !DILocation(line: 1488, column: 19, scope: !1124)
!1129 = !DILocation(line: 1488, column: 23, scope: !1124)
!1130 = !DILocation(line: 1488, column: 24, scope: !1124)
!1131 = !DILocation(line: 1488, column: 16, scope: !1124)
!1132 = !DILocation(line: 1488, column: 3, scope: !1124)
!1133 = !DILocation(line: 1488, column: 10, scope: !1124)
!1134 = !DILocation(line: 1488, column: 14, scope: !1124)
!1135 = !DILocation(line: 1489, column: 21, scope: !1124)
!1136 = !DILocation(line: 1489, column: 25, scope: !1124)
!1137 = !DILocation(line: 1489, column: 26, scope: !1124)
!1138 = !DILocation(line: 1489, column: 18, scope: !1124)
!1139 = !DILocation(line: 1489, column: 3, scope: !1124)
!1140 = !DILocation(line: 1489, column: 10, scope: !1124)
!1141 = !DILocation(line: 1489, column: 16, scope: !1124)
!1142 = !DILocation(line: 1490, column: 20, scope: !1124)
!1143 = !DILocation(line: 1490, column: 24, scope: !1124)
!1144 = !DILocation(line: 1490, column: 25, scope: !1124)
!1145 = !DILocation(line: 1490, column: 17, scope: !1124)
!1146 = !DILocation(line: 1490, column: 3, scope: !1124)
!1147 = !DILocation(line: 1490, column: 10, scope: !1124)
!1148 = !DILocation(line: 1490, column: 15, scope: !1124)
!1149 = !DILocation(line: 1491, column: 2, scope: !1124)
!1150 = !DILocation(line: 1485, column: 33, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1118, file: !120, discriminator: 2)
!1152 = !DILocation(line: 1485, column: 2, scope: !1151)
!1153 = distinct !{!1153, !1154}
!1154 = !DILocation(line: 1485, column: 2, scope: !1070)
!1155 = !DILocation(line: 1493, column: 9, scope: !1070)
!1156 = !DILocation(line: 1493, column: 7, scope: !1070)
!1157 = !DILocation(line: 1494, column: 19, scope: !1070)
!1158 = !DILocation(line: 1494, column: 2, scope: !1070)
!1159 = !DILocation(line: 1496, column: 12, scope: !1070)
!1160 = !DILocation(line: 1496, column: 8, scope: !1070)
!1161 = !DILocation(line: 1496, column: 2, scope: !1070)
!1162 = !DILocation(line: 1497, column: 1, scope: !1070)
!1163 = distinct !DISubprogram(name: "process_pdu_logon", scope: !120, file: !120, line: 1589, type: !552, isLocal: false, isDefinition: true, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1164 = !DILocalVariable(name: "s", arg: 1, scope: !1163, file: !120, line: 1589, type: !127)
!1165 = !DILocation(line: 1589, column: 26, scope: !1163)
!1166 = !DILocalVariable(name: "infotype", scope: !1163, file: !120, line: 1591, type: !105)
!1167 = !DILocation(line: 1591, column: 9, scope: !1163)
!1168 = !DILocation(line: 1592, column: 28, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !120, line: 1592, column: 2)
!1170 = !DILocation(line: 1592, column: 32, scope: !1169)
!1171 = !DILocation(line: 1592, column: 15, scope: !1169)
!1172 = !DILocation(line: 1592, column: 13, scope: !1169)
!1173 = !DILocation(line: 1592, column: 37, scope: !1169)
!1174 = !DILocation(line: 1592, column: 41, scope: !1169)
!1175 = !DILocation(line: 1592, column: 43, scope: !1169)
!1176 = !DILocation(line: 1594, column: 9, scope: !1163)
!1177 = !DILocation(line: 1594, column: 2, scope: !1163)
!1178 = !DILocation(line: 1597, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !120, line: 1595, column: 2)
!1180 = !DILocation(line: 1598, column: 4, scope: !1179)
!1181 = !DILocation(line: 1598, column: 8, scope: !1179)
!1182 = !DILocation(line: 1598, column: 10, scope: !1179)
!1183 = !DILocation(line: 1599, column: 3, scope: !1179)
!1184 = !DILocation(line: 1602, column: 3, scope: !1179)
!1185 = !DILocation(line: 1603, column: 34, scope: !1179)
!1186 = !DILocation(line: 1603, column: 3, scope: !1179)
!1187 = !DILocation(line: 1604, column: 3, scope: !1179)
!1188 = !DILocation(line: 1607, column: 81, scope: !1179)
!1189 = !DILocation(line: 1607, column: 3, scope: !1179)
!1190 = !DILocation(line: 1608, column: 2, scope: !1179)
!1191 = !DILocation(line: 1609, column: 1, scope: !1163)
!1192 = distinct !DISubprogram(name: "process_ts_logon_info_extended", scope: !120, file: !120, line: 1543, type: !552, isLocal: true, isDefinition: true, scopeLine: 1544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1193 = !DILocalVariable(name: "s", arg: 1, scope: !1192, file: !120, line: 1543, type: !127)
!1194 = !DILocation(line: 1543, column: 39, scope: !1192)
!1195 = !DILocalVariable(name: "fieldspresent", scope: !1192, file: !120, line: 1545, type: !105)
!1196 = !DILocation(line: 1545, column: 9, scope: !1192)
!1197 = !DILocalVariable(name: "len", scope: !1192, file: !120, line: 1546, type: !105)
!1198 = !DILocation(line: 1546, column: 9, scope: !1192)
!1199 = !DILocalVariable(name: "version", scope: !1192, file: !120, line: 1547, type: !105)
!1200 = !DILocation(line: 1547, column: 9, scope: !1192)
!1201 = !DILocation(line: 1549, column: 2, scope: !1192)
!1202 = !DILocation(line: 1551, column: 3, scope: !1192)
!1203 = !DILocation(line: 1551, column: 7, scope: !1192)
!1204 = !DILocation(line: 1551, column: 9, scope: !1192)
!1205 = !DILocation(line: 1552, column: 33, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1192, file: !120, line: 1552, column: 2)
!1207 = !DILocation(line: 1552, column: 37, scope: !1206)
!1208 = !DILocation(line: 1552, column: 20, scope: !1206)
!1209 = !DILocation(line: 1552, column: 18, scope: !1206)
!1210 = !DILocation(line: 1552, column: 42, scope: !1206)
!1211 = !DILocation(line: 1552, column: 46, scope: !1206)
!1212 = !DILocation(line: 1552, column: 48, scope: !1206)
!1213 = !DILocation(line: 1553, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1192, file: !120, line: 1553, column: 6)
!1215 = !DILocation(line: 1553, column: 20, scope: !1214)
!1216 = !DILocation(line: 1553, column: 6, scope: !1192)
!1217 = !DILocation(line: 1556, column: 4, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !120, line: 1554, column: 2)
!1219 = !DILocation(line: 1556, column: 8, scope: !1218)
!1220 = !DILocation(line: 1556, column: 10, scope: !1218)
!1221 = !DILocation(line: 1559, column: 24, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1559, column: 3)
!1223 = !DILocation(line: 1559, column: 28, scope: !1222)
!1224 = !DILocation(line: 1559, column: 11, scope: !1222)
!1225 = !DILocation(line: 1559, column: 9, scope: !1222)
!1226 = !DILocation(line: 1559, column: 33, scope: !1222)
!1227 = !DILocation(line: 1559, column: 37, scope: !1222)
!1228 = !DILocation(line: 1559, column: 39, scope: !1222)
!1229 = !DILocation(line: 1560, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1560, column: 7)
!1231 = !DILocation(line: 1560, column: 11, scope: !1230)
!1232 = !DILocation(line: 1560, column: 7, scope: !1218)
!1233 = !DILocation(line: 1562, column: 4, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !120, line: 1561, column: 3)
!1235 = !DILocation(line: 1564, column: 4, scope: !1234)
!1236 = !DILocation(line: 1567, column: 28, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1567, column: 3)
!1238 = !DILocation(line: 1567, column: 32, scope: !1237)
!1239 = !DILocation(line: 1567, column: 15, scope: !1237)
!1240 = !DILocation(line: 1567, column: 13, scope: !1237)
!1241 = !DILocation(line: 1567, column: 37, scope: !1237)
!1242 = !DILocation(line: 1567, column: 41, scope: !1237)
!1243 = !DILocation(line: 1567, column: 43, scope: !1237)
!1244 = !DILocation(line: 1568, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1568, column: 7)
!1246 = !DILocation(line: 1568, column: 15, scope: !1245)
!1247 = !DILocation(line: 1568, column: 7, scope: !1218)
!1248 = !DILocation(line: 1570, column: 4, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !120, line: 1569, column: 3)
!1250 = !DILocation(line: 1572, column: 4, scope: !1249)
!1251 = !DILocation(line: 1575, column: 40, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1575, column: 3)
!1253 = !DILocation(line: 1575, column: 44, scope: !1252)
!1254 = !DILocation(line: 1575, column: 27, scope: !1252)
!1255 = !DILocation(line: 1575, column: 25, scope: !1252)
!1256 = !DILocation(line: 1575, column: 49, scope: !1252)
!1257 = !DILocation(line: 1575, column: 53, scope: !1252)
!1258 = !DILocation(line: 1575, column: 55, scope: !1252)
!1259 = !DILocation(line: 1576, column: 32, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1218, file: !120, line: 1576, column: 3)
!1261 = !DILocation(line: 1576, column: 36, scope: !1260)
!1262 = !DILocation(line: 1576, column: 5, scope: !1260)
!1263 = !DILocation(line: 1576, column: 44, scope: !1260)
!1264 = !DILocation(line: 1576, column: 48, scope: !1260)
!1265 = !DILocation(line: 1576, column: 50, scope: !1260)
!1266 = !DILocation(line: 1577, column: 26, scope: !1218)
!1267 = !DILocation(line: 1578, column: 27, scope: !1218)
!1268 = !DILocation(line: 1578, column: 25, scope: !1218)
!1269 = !DILocation(line: 1581, column: 10, scope: !1218)
!1270 = !DILocation(line: 1579, column: 3, scope: !1218)
!1271 = !DILocation(line: 1583, column: 3, scope: !1218)
!1272 = !DILocation(line: 1584, column: 2, scope: !1218)
!1273 = !DILocation(line: 1585, column: 1, scope: !1192)
!1274 = distinct !DISubprogram(name: "rdp_main_loop", scope: !120, file: !120, line: 1903, type: !1275, isLocal: false, isDefinition: true, scopeLine: 1904, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !1277, !104}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!1278 = !DILocalVariable(name: "deactivated", arg: 1, scope: !1274, file: !120, line: 1903, type: !1277)
!1279 = !DILocation(line: 1903, column: 25, scope: !1274)
!1280 = !DILocalVariable(name: "ext_disc_reason", arg: 2, scope: !1274, file: !120, line: 1903, type: !104)
!1281 = !DILocation(line: 1903, column: 47, scope: !1274)
!1282 = !DILocation(line: 1905, column: 2, scope: !1274)
!1283 = distinct !{!1283, !1282}
!1284 = !DILocation(line: 1907, column: 16, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !120, line: 1907, column: 7)
!1286 = distinct !DILexicalBlock(scope: !1274, file: !120, line: 1906, column: 2)
!1287 = !DILocation(line: 1907, column: 29, scope: !1285)
!1288 = !DILocation(line: 1907, column: 7, scope: !1285)
!1289 = !DILocation(line: 1907, column: 46, scope: !1285)
!1290 = !DILocation(line: 1907, column: 7, scope: !1286)
!1291 = !DILocation(line: 1909, column: 20, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !120, line: 1908, column: 3)
!1293 = !DILocation(line: 1910, column: 3, scope: !1292)
!1294 = !DILocation(line: 1911, column: 2, scope: !1286)
!1295 = !DILocation(line: 1911, column: 10, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1274, file: !120, discriminator: 1)
!1297 = !DILocation(line: 1911, column: 26, scope: !1296)
!1298 = !DILocation(line: 1911, column: 2, scope: !1296)
!1299 = !DILocation(line: 1912, column: 1, scope: !1274)
!1300 = distinct !DISubprogram(name: "rdp_loop", scope: !120, file: !120, line: 1916, type: !1301, isLocal: false, isDefinition: true, scopeLine: 1917, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!121, !1277, !104}
!1303 = !DILocalVariable(name: "deactivated", arg: 1, scope: !1300, file: !120, line: 1916, type: !1277)
!1304 = !DILocation(line: 1916, column: 20, scope: !1300)
!1305 = !DILocalVariable(name: "ext_disc_reason", arg: 2, scope: !1300, file: !120, line: 1916, type: !104)
!1306 = !DILocation(line: 1916, column: 42, scope: !1300)
!1307 = !DILocalVariable(name: "type", scope: !1300, file: !120, line: 1918, type: !108)
!1308 = !DILocation(line: 1918, column: 8, scope: !1300)
!1309 = !DILocalVariable(name: "cont", scope: !1300, file: !120, line: 1919, type: !121)
!1310 = !DILocation(line: 1919, column: 10, scope: !1300)
!1311 = !DILocalVariable(name: "s", scope: !1300, file: !120, line: 1920, type: !127)
!1312 = !DILocation(line: 1920, column: 9, scope: !1300)
!1313 = !DILocation(line: 1922, column: 2, scope: !1300)
!1314 = !DILocation(line: 1922, column: 9, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1300, file: !120, discriminator: 1)
!1316 = !DILocation(line: 1922, column: 25, scope: !1315)
!1317 = !DILocation(line: 1922, column: 32, scope: !1315)
!1318 = !DILocation(line: 1922, column: 35, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1300, file: !120, discriminator: 2)
!1320 = !DILocation(line: 1922, column: 32, scope: !1319)
!1321 = !DILocation(line: 1922, column: 2, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1300, file: !120, discriminator: 3)
!1323 = !DILocation(line: 1924, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1300, file: !120, line: 1923, column: 2)
!1325 = !DILocation(line: 1924, column: 5, scope: !1324)
!1326 = !DILocation(line: 1925, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !120, line: 1925, column: 7)
!1328 = !DILocation(line: 1925, column: 9, scope: !1327)
!1329 = !DILocation(line: 1925, column: 7, scope: !1324)
!1330 = !DILocation(line: 1926, column: 4, scope: !1327)
!1331 = !DILocation(line: 1927, column: 11, scope: !1324)
!1332 = !DILocation(line: 1927, column: 3, scope: !1324)
!1333 = !DILocation(line: 1930, column: 27, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !120, line: 1928, column: 3)
!1335 = !DILocation(line: 1930, column: 5, scope: !1334)
!1336 = !DILocation(line: 1931, column: 6, scope: !1334)
!1337 = !DILocation(line: 1931, column: 18, scope: !1334)
!1338 = !DILocation(line: 1932, column: 5, scope: !1334)
!1339 = !DILocation(line: 1934, column: 5, scope: !1334)
!1340 = !DILocation(line: 1936, column: 6, scope: !1334)
!1341 = !DILocation(line: 1936, column: 18, scope: !1334)
!1342 = !DILocation(line: 1937, column: 30, scope: !1334)
!1343 = !DILocation(line: 1938, column: 5, scope: !1334)
!1344 = !DILocation(line: 1941, column: 30, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1334, file: !120, line: 1941, column: 9)
!1346 = !DILocation(line: 1941, column: 35, scope: !1345)
!1347 = !DILocation(line: 1941, column: 40, scope: !1345)
!1348 = !DILocation(line: 1941, column: 33, scope: !1345)
!1349 = !DILocation(line: 1941, column: 9, scope: !1345)
!1350 = !DILocation(line: 1941, column: 62, scope: !1345)
!1351 = !DILocation(line: 1941, column: 9, scope: !1334)
!1352 = !DILocation(line: 1943, column: 22, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !120, line: 1942, column: 5)
!1354 = !DILocation(line: 1944, column: 6, scope: !1353)
!1355 = distinct !{!1355, !1313}
!1356 = !DILocation(line: 1946, column: 5, scope: !1334)
!1357 = !DILocation(line: 1950, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1334, file: !120, line: 1950, column: 9)
!1359 = !DILocation(line: 1950, column: 23, scope: !1358)
!1360 = !DILocation(line: 1950, column: 9, scope: !1334)
!1361 = !DILocation(line: 1951, column: 6, scope: !1358)
!1362 = !DILocation(line: 1953, column: 22, scope: !1334)
!1363 = !DILocation(line: 1953, column: 25, scope: !1334)
!1364 = !DILocation(line: 1953, column: 5, scope: !1334)
!1365 = !DILocation(line: 1954, column: 5, scope: !1334)
!1366 = !DILocation(line: 1957, column: 58, scope: !1334)
!1367 = !DILocation(line: 1956, column: 5, scope: !1334)
!1368 = !DILocation(line: 1958, column: 3, scope: !1334)
!1369 = !DILocation(line: 1959, column: 10, scope: !1324)
!1370 = !DILocation(line: 1959, column: 26, scope: !1324)
!1371 = !DILocation(line: 1959, column: 29, scope: !1324)
!1372 = !DILocation(line: 1959, column: 24, scope: !1324)
!1373 = !DILocation(line: 1959, column: 8, scope: !1324)
!1374 = !DILocation(line: 1922, column: 2, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1300, file: !120, discriminator: 4)
!1376 = !DILocation(line: 1961, column: 2, scope: !1300)
!1377 = !DILocation(line: 1962, column: 1, scope: !1300)
!1378 = !DILocalVariable(name: "type", arg: 1, scope: !151, file: !120, line: 133, type: !107)
!1379 = !DILocation(line: 133, column: 18, scope: !151)
!1380 = !DILocalVariable(name: "is_fastpath", scope: !151, file: !120, line: 135, type: !121)
!1381 = !DILocation(line: 135, column: 10, scope: !151)
!1382 = !DILocalVariable(name: "length", scope: !151, file: !120, line: 137, type: !102)
!1383 = !DILocation(line: 137, column: 9, scope: !151)
!1384 = !DILocation(line: 139, column: 2, scope: !151)
!1385 = !DILocation(line: 142, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !120, line: 142, column: 7)
!1387 = distinct !DILexicalBlock(scope: !151, file: !120, line: 140, column: 2)
!1388 = !DILocation(line: 142, column: 14, scope: !1386)
!1389 = !DILocation(line: 142, column: 22, scope: !1386)
!1390 = !DILocation(line: 142, column: 26, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1386, file: !120, discriminator: 1)
!1392 = !DILocation(line: 142, column: 43, scope: !1391)
!1393 = !DILocation(line: 142, column: 50, scope: !1391)
!1394 = !DILocation(line: 142, column: 40, scope: !1391)
!1395 = !DILocation(line: 142, column: 55, scope: !1391)
!1396 = !DILocation(line: 142, column: 59, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1386, file: !120, discriminator: 2)
!1398 = !DILocation(line: 142, column: 73, scope: !1397)
!1399 = !DILocation(line: 142, column: 7, scope: !1397)
!1400 = !DILocation(line: 144, column: 12, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1386, file: !120, line: 143, column: 3)
!1402 = !DILocation(line: 144, column: 10, scope: !1401)
!1403 = !DILocation(line: 145, column: 8, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !120, line: 145, column: 8)
!1405 = !DILocation(line: 145, column: 14, scope: !1404)
!1406 = !DILocation(line: 145, column: 8, scope: !1401)
!1407 = !DILocation(line: 146, column: 5, scope: !1404)
!1408 = !DILocation(line: 148, column: 8, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !120, line: 148, column: 8)
!1410 = !DILocation(line: 148, column: 20, scope: !1409)
!1411 = !DILocation(line: 148, column: 8, scope: !1401)
!1412 = !DILocation(line: 151, column: 27, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !120, line: 149, column: 4)
!1414 = !DILocation(line: 151, column: 5, scope: !1413)
!1415 = !DILocation(line: 152, column: 5, scope: !1413)
!1416 = distinct !{!1416, !1384}
!1417 = !DILocation(line: 155, column: 20, scope: !1401)
!1418 = !DILocation(line: 155, column: 27, scope: !1401)
!1419 = !DILocation(line: 155, column: 18, scope: !1401)
!1420 = !DILocation(line: 156, column: 3, scope: !1401)
!1421 = !DILocation(line: 159, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1386, file: !120, line: 158, column: 3)
!1423 = !DILocation(line: 159, column: 4, scope: !1422)
!1424 = !DILocation(line: 159, column: 11, scope: !1422)
!1425 = !DILocation(line: 159, column: 13, scope: !1422)
!1426 = !DILocation(line: 163, column: 38, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1387, file: !120, line: 163, column: 7)
!1428 = !DILocation(line: 163, column: 45, scope: !1427)
!1429 = !DILocation(line: 163, column: 7, scope: !1427)
!1430 = !DILocation(line: 163, column: 60, scope: !1427)
!1431 = !DILocation(line: 163, column: 7, scope: !1387)
!1432 = !DILocation(line: 164, column: 4, scope: !1427)
!1433 = !DILocation(line: 166, column: 3, scope: !1387)
!1434 = !DILocation(line: 169, column: 67, scope: !151)
!1435 = !DILocation(line: 169, column: 82, scope: !151)
!1436 = !DILocation(line: 169, column: 81, scope: !151)
!1437 = !DILocation(line: 169, column: 2, scope: !151)
!1438 = !DILocation(line: 171, column: 19, scope: !151)
!1439 = !DILocation(line: 171, column: 16, scope: !151)
!1440 = !DILocation(line: 172, column: 9, scope: !151)
!1441 = !DILocation(line: 172, column: 2, scope: !151)
!1442 = !DILocation(line: 173, column: 1, scope: !151)
!1443 = distinct !DISubprogram(name: "process_demand_active", scope: !120, file: !120, line: 1210, type: !552, isLocal: true, isDefinition: true, scopeLine: 1211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1444 = !DILocalVariable(name: "s", arg: 1, scope: !1443, file: !120, line: 1210, type: !127)
!1445 = !DILocation(line: 1210, column: 30, scope: !1443)
!1446 = !DILocalVariable(name: "type", scope: !1443, file: !120, line: 1212, type: !108)
!1447 = !DILocation(line: 1212, column: 8, scope: !1443)
!1448 = !DILocalVariable(name: "len_src_descriptor", scope: !1443, file: !120, line: 1213, type: !102)
!1449 = !DILocation(line: 1213, column: 9, scope: !1443)
!1450 = !DILocalVariable(name: "len_combined_caps", scope: !1443, file: !120, line: 1213, type: !102)
!1451 = !DILocation(line: 1213, column: 29, scope: !1443)
!1452 = !DILocation(line: 1216, column: 2, scope: !1443)
!1453 = !DILocation(line: 1218, column: 33, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1443, file: !120, line: 1218, column: 2)
!1455 = !DILocation(line: 1218, column: 37, scope: !1454)
!1456 = !DILocation(line: 1218, column: 20, scope: !1454)
!1457 = !DILocation(line: 1218, column: 18, scope: !1454)
!1458 = !DILocation(line: 1218, column: 42, scope: !1454)
!1459 = !DILocation(line: 1218, column: 46, scope: !1454)
!1460 = !DILocation(line: 1218, column: 48, scope: !1454)
!1461 = !DILocation(line: 1219, column: 38, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1443, file: !120, line: 1219, column: 2)
!1463 = !DILocation(line: 1219, column: 42, scope: !1462)
!1464 = !DILocation(line: 1219, column: 25, scope: !1462)
!1465 = !DILocation(line: 1219, column: 23, scope: !1462)
!1466 = !DILocation(line: 1219, column: 47, scope: !1462)
!1467 = !DILocation(line: 1219, column: 51, scope: !1462)
!1468 = !DILocation(line: 1219, column: 53, scope: !1462)
!1469 = !DILocation(line: 1220, column: 37, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1443, file: !120, line: 1220, column: 2)
!1471 = !DILocation(line: 1220, column: 41, scope: !1470)
!1472 = !DILocation(line: 1220, column: 24, scope: !1470)
!1473 = !DILocation(line: 1220, column: 22, scope: !1470)
!1474 = !DILocation(line: 1220, column: 46, scope: !1470)
!1475 = !DILocation(line: 1220, column: 50, scope: !1470)
!1476 = !DILocation(line: 1220, column: 52, scope: !1470)
!1477 = !DILocation(line: 1221, column: 12, scope: !1443)
!1478 = !DILocation(line: 1221, column: 3, scope: !1443)
!1479 = !DILocation(line: 1221, column: 7, scope: !1443)
!1480 = !DILocation(line: 1221, column: 9, scope: !1443)
!1481 = !DILocation(line: 1223, column: 67, scope: !1443)
!1482 = !DILocation(line: 1223, column: 2, scope: !1443)
!1483 = !DILocation(line: 1225, column: 26, scope: !1443)
!1484 = !DILocation(line: 1225, column: 29, scope: !1443)
!1485 = !DILocation(line: 1225, column: 2, scope: !1443)
!1486 = !DILocation(line: 1227, column: 2, scope: !1443)
!1487 = !DILocation(line: 1228, column: 2, scope: !1443)
!1488 = !DILocation(line: 1229, column: 2, scope: !1443)
!1489 = !DILocation(line: 1230, column: 2, scope: !1443)
!1490 = !DILocation(line: 1231, column: 2, scope: !1443)
!1491 = !DILocation(line: 1232, column: 2, scope: !1443)
!1492 = !DILocation(line: 1233, column: 2, scope: !1443)
!1493 = !DILocation(line: 1235, column: 10, scope: !1443)
!1494 = !DILocation(line: 1235, column: 48, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1443, file: !120, discriminator: 1)
!1496 = !DILocation(line: 1235, column: 27, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1495, file: !120, discriminator: 4)
!1498 = !DILocation(line: 1235, column: 27, scope: !1495)
!1499 = !DILocation(line: 1235, column: 10, scope: !1495)
!1500 = !DILocation(line: 1235, column: 10, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1443, file: !120, discriminator: 2)
!1502 = !DILocation(line: 1235, column: 10, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1443, file: !120, discriminator: 3)
!1504 = !DILocation(line: 1234, column: 2, scope: !1443)
!1505 = !DILocation(line: 1237, column: 6, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1443, file: !120, line: 1237, column: 6)
!1507 = !DILocation(line: 1237, column: 20, scope: !1506)
!1508 = !DILocation(line: 1237, column: 6, scope: !1443)
!1509 = !DILocation(line: 1239, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !120, line: 1238, column: 2)
!1511 = !DILocation(line: 1240, column: 3, scope: !1510)
!1512 = !DILocation(line: 1241, column: 2, scope: !1510)
!1513 = !DILocation(line: 1244, column: 3, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !120, line: 1243, column: 2)
!1515 = !DILocation(line: 1245, column: 3, scope: !1514)
!1516 = !DILocation(line: 1248, column: 2, scope: !1443)
!1517 = !DILocation(line: 1249, column: 2, scope: !1443)
!1518 = !DILocation(line: 1250, column: 1, scope: !1443)
!1519 = distinct !DISubprogram(name: "process_redirect_pdu", scope: !120, file: !120, line: 1717, type: !1520, isLocal: true, isDefinition: true, scopeLine: 1718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!121, !127, !121}
!1522 = !DILocalVariable(name: "s", arg: 1, scope: !1519, file: !120, line: 1717, type: !127)
!1523 = !DILocation(line: 1717, column: 29, scope: !1519)
!1524 = !DILocalVariable(name: "enhanced_redirect", arg: 2, scope: !1519, file: !120, line: 1717, type: !121)
!1525 = !DILocation(line: 1717, column: 40, scope: !1519)
!1526 = !DILocalVariable(name: "len", scope: !1519, file: !120, line: 1719, type: !105)
!1527 = !DILocation(line: 1719, column: 9, scope: !1519)
!1528 = !DILocalVariable(name: "redirect_identifier", scope: !1519, file: !120, line: 1720, type: !102)
!1529 = !DILocation(line: 1720, column: 9, scope: !1519)
!1530 = !DILocation(line: 1722, column: 2, scope: !1519)
!1531 = !DILocation(line: 1725, column: 13, scope: !1519)
!1532 = !DILocation(line: 1726, column: 7, scope: !1519)
!1533 = !DILocation(line: 1726, column: 2, scope: !1519)
!1534 = !DILocation(line: 1727, column: 7, scope: !1519)
!1535 = !DILocation(line: 1727, column: 2, scope: !1519)
!1536 = !DILocation(line: 1728, column: 7, scope: !1519)
!1537 = !DILocation(line: 1728, column: 2, scope: !1519)
!1538 = !DILocation(line: 1729, column: 7, scope: !1519)
!1539 = !DILocation(line: 1729, column: 2, scope: !1519)
!1540 = !DILocation(line: 1730, column: 7, scope: !1519)
!1541 = !DILocation(line: 1730, column: 2, scope: !1519)
!1542 = !DILocation(line: 1732, column: 20, scope: !1519)
!1543 = !DILocation(line: 1733, column: 22, scope: !1519)
!1544 = !DILocation(line: 1734, column: 20, scope: !1519)
!1545 = !DILocation(line: 1735, column: 21, scope: !1519)
!1546 = !DILocation(line: 1736, column: 20, scope: !1519)
!1547 = !DILocation(line: 1739, column: 3, scope: !1519)
!1548 = !DILocation(line: 1739, column: 7, scope: !1519)
!1549 = !DILocation(line: 1739, column: 9, scope: !1519)
!1550 = !DILocation(line: 1746, column: 6, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1746, column: 6)
!1552 = !DILocation(line: 1746, column: 6, scope: !1519)
!1553 = !DILocation(line: 1749, column: 40, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !120, line: 1749, column: 3)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !120, line: 1747, column: 2)
!1556 = !DILocation(line: 1749, column: 44, scope: !1554)
!1557 = !DILocation(line: 1749, column: 27, scope: !1554)
!1558 = !DILocation(line: 1749, column: 25, scope: !1554)
!1559 = !DILocation(line: 1749, column: 49, scope: !1554)
!1560 = !DILocation(line: 1749, column: 53, scope: !1554)
!1561 = !DILocation(line: 1749, column: 55, scope: !1554)
!1562 = !DILocation(line: 1750, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !120, line: 1750, column: 7)
!1564 = !DILocation(line: 1750, column: 27, scope: !1563)
!1565 = !DILocation(line: 1750, column: 7, scope: !1555)
!1566 = !DILocation(line: 1751, column: 4, scope: !1563)
!1567 = !DILocation(line: 1754, column: 4, scope: !1555)
!1568 = !DILocation(line: 1754, column: 8, scope: !1555)
!1569 = !DILocation(line: 1754, column: 10, scope: !1555)
!1570 = !DILocation(line: 1757, column: 42, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1555, file: !120, line: 1757, column: 3)
!1572 = !DILocation(line: 1757, column: 46, scope: !1571)
!1573 = !DILocation(line: 1757, column: 29, scope: !1571)
!1574 = !DILocation(line: 1757, column: 27, scope: !1571)
!1575 = !DILocation(line: 1757, column: 51, scope: !1571)
!1576 = !DILocation(line: 1757, column: 55, scope: !1571)
!1577 = !DILocation(line: 1757, column: 57, scope: !1571)
!1578 = !DILocation(line: 1758, column: 2, scope: !1555)
!1579 = !DILocation(line: 1761, column: 36, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1761, column: 2)
!1581 = !DILocation(line: 1761, column: 40, scope: !1580)
!1582 = !DILocation(line: 1761, column: 23, scope: !1580)
!1583 = !DILocation(line: 1761, column: 21, scope: !1580)
!1584 = !DILocation(line: 1761, column: 45, scope: !1580)
!1585 = !DILocation(line: 1761, column: 49, scope: !1580)
!1586 = !DILocation(line: 1761, column: 51, scope: !1580)
!1587 = !DILocation(line: 1763, column: 6, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1763, column: 6)
!1589 = !DILocation(line: 1763, column: 23, scope: !1588)
!1590 = !DILocation(line: 1763, column: 6, scope: !1519)
!1591 = !DILocation(line: 1766, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !120, line: 1766, column: 3)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !120, line: 1764, column: 2)
!1594 = !DILocation(line: 1766, column: 28, scope: !1592)
!1595 = !DILocation(line: 1766, column: 11, scope: !1592)
!1596 = !DILocation(line: 1766, column: 9, scope: !1592)
!1597 = !DILocation(line: 1766, column: 33, scope: !1592)
!1598 = !DILocation(line: 1766, column: 37, scope: !1592)
!1599 = !DILocation(line: 1766, column: 39, scope: !1592)
!1600 = !DILocation(line: 1769, column: 17, scope: !1593)
!1601 = !DILocation(line: 1769, column: 20, scope: !1593)
!1602 = !DILocation(line: 1769, column: 3, scope: !1593)
!1603 = !DILocation(line: 1770, column: 2, scope: !1593)
!1604 = !DILocation(line: 1772, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1772, column: 6)
!1606 = !DILocation(line: 1772, column: 23, scope: !1605)
!1607 = !DILocation(line: 1772, column: 6, scope: !1519)
!1608 = !DILocation(line: 1775, column: 43, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !120, line: 1775, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !120, line: 1773, column: 2)
!1611 = !DILocation(line: 1775, column: 47, scope: !1609)
!1612 = !DILocation(line: 1775, column: 30, scope: !1609)
!1613 = !DILocation(line: 1775, column: 28, scope: !1609)
!1614 = !DILocation(line: 1775, column: 52, scope: !1609)
!1615 = !DILocation(line: 1775, column: 56, scope: !1609)
!1616 = !DILocation(line: 1775, column: 58, scope: !1609)
!1617 = !DILocation(line: 1778, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !120, line: 1778, column: 7)
!1619 = !DILocation(line: 1778, column: 26, scope: !1618)
!1620 = !DILocation(line: 1778, column: 7, scope: !1610)
!1621 = !DILocation(line: 1779, column: 9, scope: !1618)
!1622 = !DILocation(line: 1779, column: 4, scope: !1618)
!1623 = !DILocation(line: 1781, column: 32, scope: !1610)
!1624 = !DILocation(line: 1781, column: 24, scope: !1610)
!1625 = !DILocation(line: 1781, column: 22, scope: !1610)
!1626 = !DILocation(line: 1784, column: 27, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1610, file: !120, line: 1784, column: 3)
!1628 = !DILocation(line: 1784, column: 31, scope: !1627)
!1629 = !DILocation(line: 1784, column: 24, scope: !1627)
!1630 = !DILocation(line: 1784, column: 44, scope: !1627)
!1631 = !DILocation(line: 1784, column: 35, scope: !1627)
!1632 = !DILocation(line: 1784, column: 39, scope: !1627)
!1633 = !DILocation(line: 1784, column: 41, scope: !1627)
!1634 = !DILocation(line: 1785, column: 2, scope: !1610)
!1635 = !DILocation(line: 1787, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1787, column: 6)
!1637 = !DILocation(line: 1787, column: 23, scope: !1636)
!1638 = !DILocation(line: 1787, column: 6, scope: !1519)
!1639 = !DILocation(line: 1790, column: 24, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !120, line: 1790, column: 3)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !120, line: 1788, column: 2)
!1642 = !DILocation(line: 1790, column: 28, scope: !1640)
!1643 = !DILocation(line: 1790, column: 11, scope: !1640)
!1644 = !DILocation(line: 1790, column: 9, scope: !1640)
!1645 = !DILocation(line: 1790, column: 33, scope: !1640)
!1646 = !DILocation(line: 1790, column: 37, scope: !1640)
!1647 = !DILocation(line: 1790, column: 39, scope: !1640)
!1648 = !DILocation(line: 1793, column: 17, scope: !1641)
!1649 = !DILocation(line: 1793, column: 20, scope: !1641)
!1650 = !DILocation(line: 1793, column: 3, scope: !1641)
!1651 = !DILocation(line: 1794, column: 2, scope: !1641)
!1652 = !DILocation(line: 1796, column: 6, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1796, column: 6)
!1654 = !DILocation(line: 1796, column: 23, scope: !1653)
!1655 = !DILocation(line: 1796, column: 6, scope: !1519)
!1656 = !DILocation(line: 1799, column: 24, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !120, line: 1799, column: 3)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !120, line: 1797, column: 2)
!1659 = !DILocation(line: 1799, column: 28, scope: !1657)
!1660 = !DILocation(line: 1799, column: 11, scope: !1657)
!1661 = !DILocation(line: 1799, column: 9, scope: !1657)
!1662 = !DILocation(line: 1799, column: 33, scope: !1657)
!1663 = !DILocation(line: 1799, column: 37, scope: !1657)
!1664 = !DILocation(line: 1799, column: 39, scope: !1657)
!1665 = !DILocation(line: 1802, column: 17, scope: !1658)
!1666 = !DILocation(line: 1802, column: 20, scope: !1658)
!1667 = !DILocation(line: 1802, column: 3, scope: !1658)
!1668 = !DILocation(line: 1803, column: 2, scope: !1658)
!1669 = !DILocation(line: 1805, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1805, column: 6)
!1671 = !DILocation(line: 1805, column: 23, scope: !1670)
!1672 = !DILocation(line: 1805, column: 6, scope: !1519)
!1673 = !DILocation(line: 1811, column: 42, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !120, line: 1811, column: 3)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !120, line: 1806, column: 2)
!1676 = !DILocation(line: 1811, column: 46, scope: !1674)
!1677 = !DILocation(line: 1811, column: 29, scope: !1674)
!1678 = !DILocation(line: 1811, column: 27, scope: !1674)
!1679 = !DILocation(line: 1811, column: 51, scope: !1674)
!1680 = !DILocation(line: 1811, column: 55, scope: !1674)
!1681 = !DILocation(line: 1811, column: 57, scope: !1674)
!1682 = !DILocation(line: 1814, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1675, file: !120, line: 1814, column: 7)
!1684 = !DILocation(line: 1814, column: 25, scope: !1683)
!1685 = !DILocation(line: 1814, column: 7, scope: !1675)
!1686 = !DILocation(line: 1815, column: 9, scope: !1683)
!1687 = !DILocation(line: 1815, column: 4, scope: !1683)
!1688 = !DILocation(line: 1817, column: 31, scope: !1675)
!1689 = !DILocation(line: 1817, column: 23, scope: !1675)
!1690 = !DILocation(line: 1817, column: 21, scope: !1675)
!1691 = !DILocation(line: 1820, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1675, file: !120, line: 1820, column: 3)
!1693 = !DILocation(line: 1820, column: 30, scope: !1692)
!1694 = !DILocation(line: 1820, column: 23, scope: !1692)
!1695 = !DILocation(line: 1820, column: 43, scope: !1692)
!1696 = !DILocation(line: 1820, column: 34, scope: !1692)
!1697 = !DILocation(line: 1820, column: 38, scope: !1692)
!1698 = !DILocation(line: 1820, column: 40, scope: !1692)
!1699 = !DILocation(line: 1823, column: 10, scope: !1675)
!1700 = !DILocation(line: 1822, column: 3, scope: !1675)
!1701 = !DILocation(line: 1824, column: 2, scope: !1675)
!1702 = !DILocation(line: 1826, column: 6, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1826, column: 6)
!1704 = !DILocation(line: 1826, column: 23, scope: !1703)
!1705 = !DILocation(line: 1826, column: 6, scope: !1519)
!1706 = !DILocation(line: 1828, column: 3, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !120, line: 1827, column: 2)
!1708 = !DILocation(line: 1830, column: 2, scope: !1707)
!1709 = !DILocation(line: 1832, column: 6, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1832, column: 6)
!1711 = !DILocation(line: 1832, column: 23, scope: !1710)
!1712 = !DILocation(line: 1832, column: 6, scope: !1519)
!1713 = !DILocation(line: 1834, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !120, line: 1833, column: 2)
!1715 = !DILocation(line: 1836, column: 2, scope: !1714)
!1716 = !DILocation(line: 1838, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1838, column: 6)
!1718 = !DILocation(line: 1838, column: 23, scope: !1717)
!1719 = !DILocation(line: 1838, column: 6, scope: !1519)
!1720 = !DILocation(line: 1842, column: 14, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !120, line: 1839, column: 2)
!1722 = !DILocation(line: 1843, column: 2, scope: !1721)
!1723 = !DILocation(line: 1845, column: 6, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1845, column: 6)
!1725 = !DILocation(line: 1845, column: 23, scope: !1724)
!1726 = !DILocation(line: 1845, column: 6, scope: !1519)
!1727 = !DILocation(line: 1847, column: 24, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !120, line: 1847, column: 3)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !120, line: 1846, column: 2)
!1730 = !DILocation(line: 1847, column: 28, scope: !1728)
!1731 = !DILocation(line: 1847, column: 11, scope: !1728)
!1732 = !DILocation(line: 1847, column: 9, scope: !1728)
!1733 = !DILocation(line: 1847, column: 33, scope: !1728)
!1734 = !DILocation(line: 1847, column: 37, scope: !1728)
!1735 = !DILocation(line: 1847, column: 39, scope: !1728)
!1736 = !DILocation(line: 1850, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !120, line: 1850, column: 7)
!1738 = !DILocation(line: 1850, column: 7, scope: !1729)
!1739 = !DILocation(line: 1852, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !120, line: 1851, column: 3)
!1741 = !DILocation(line: 1852, column: 4, scope: !1740)
!1742 = !DILocation(line: 1853, column: 22, scope: !1740)
!1743 = !DILocation(line: 1854, column: 3, scope: !1740)
!1744 = !DILocation(line: 1857, column: 17, scope: !1729)
!1745 = !DILocation(line: 1857, column: 20, scope: !1729)
!1746 = !DILocation(line: 1857, column: 3, scope: !1729)
!1747 = !DILocation(line: 1858, column: 2, scope: !1729)
!1748 = !DILocation(line: 1860, column: 6, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1860, column: 6)
!1750 = !DILocation(line: 1860, column: 23, scope: !1749)
!1751 = !DILocation(line: 1860, column: 6, scope: !1519)
!1752 = !DILocation(line: 1862, column: 3, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !120, line: 1861, column: 2)
!1754 = !DILocation(line: 1863, column: 2, scope: !1753)
!1755 = !DILocation(line: 1865, column: 6, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1865, column: 6)
!1757 = !DILocation(line: 1865, column: 23, scope: !1756)
!1758 = !DILocation(line: 1865, column: 6, scope: !1519)
!1759 = !DILocation(line: 1867, column: 3, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !120, line: 1866, column: 2)
!1761 = !DILocation(line: 1869, column: 2, scope: !1760)
!1762 = !DILocation(line: 1871, column: 6, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1871, column: 6)
!1764 = !DILocation(line: 1871, column: 23, scope: !1763)
!1765 = !DILocation(line: 1871, column: 6, scope: !1519)
!1766 = !DILocation(line: 1873, column: 3, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !120, line: 1872, column: 2)
!1768 = !DILocation(line: 1874, column: 2, scope: !1767)
!1769 = !DILocation(line: 1876, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1876, column: 6)
!1771 = !DILocation(line: 1876, column: 23, scope: !1770)
!1772 = !DILocation(line: 1876, column: 6, scope: !1519)
!1773 = !DILocation(line: 1878, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !120, line: 1877, column: 2)
!1775 = !DILocation(line: 1879, column: 2, scope: !1774)
!1776 = !DILocation(line: 1881, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1881, column: 6)
!1778 = !DILocation(line: 1881, column: 23, scope: !1777)
!1779 = !DILocation(line: 1881, column: 6, scope: !1519)
!1780 = !DILocation(line: 1883, column: 3, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !120, line: 1882, column: 2)
!1782 = !DILocation(line: 1885, column: 2, scope: !1781)
!1783 = !DILocation(line: 1887, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1887, column: 6)
!1785 = !DILocation(line: 1887, column: 23, scope: !1784)
!1786 = !DILocation(line: 1887, column: 6, scope: !1519)
!1787 = !DILocation(line: 1889, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !120, line: 1888, column: 2)
!1789 = !DILocation(line: 1890, column: 2, scope: !1788)
!1790 = !DILocation(line: 1892, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1519, file: !120, line: 1892, column: 6)
!1792 = !DILocation(line: 1892, column: 23, scope: !1791)
!1793 = !DILocation(line: 1892, column: 6, scope: !1519)
!1794 = !DILocation(line: 1894, column: 3, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !120, line: 1893, column: 2)
!1796 = !DILocation(line: 1896, column: 2, scope: !1795)
!1797 = !DILocation(line: 1898, column: 9, scope: !1519)
!1798 = !DILocation(line: 1898, column: 2, scope: !1519)
!1799 = distinct !DISubprogram(name: "process_data_pdu", scope: !120, file: !120, line: 1623, type: !1800, isLocal: true, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!121, !127, !104}
!1802 = !DILocalVariable(name: "s", arg: 1, scope: !1799, file: !120, line: 1623, type: !127)
!1803 = !DILocation(line: 1623, column: 25, scope: !1799)
!1804 = !DILocalVariable(name: "ext_disc_reason", arg: 2, scope: !1799, file: !120, line: 1623, type: !104)
!1805 = !DILocation(line: 1623, column: 37, scope: !1799)
!1806 = !DILocalVariable(name: "data_pdu_type", scope: !1799, file: !120, line: 1625, type: !108)
!1807 = !DILocation(line: 1625, column: 8, scope: !1799)
!1808 = !DILocalVariable(name: "ctype", scope: !1799, file: !120, line: 1626, type: !108)
!1809 = !DILocation(line: 1626, column: 8, scope: !1799)
!1810 = !DILocalVariable(name: "clen", scope: !1799, file: !120, line: 1627, type: !102)
!1811 = !DILocation(line: 1627, column: 9, scope: !1799)
!1812 = !DILocalVariable(name: "len", scope: !1799, file: !120, line: 1628, type: !105)
!1813 = !DILocation(line: 1628, column: 9, scope: !1799)
!1814 = !DILocalVariable(name: "roff", scope: !1799, file: !120, line: 1630, type: !105)
!1815 = !DILocation(line: 1630, column: 9, scope: !1799)
!1816 = !DILocalVariable(name: "rlen", scope: !1799, file: !120, line: 1630, type: !105)
!1817 = !DILocation(line: 1630, column: 15, scope: !1799)
!1818 = !DILocalVariable(name: "ns", scope: !1799, file: !120, line: 1632, type: !129)
!1819 = !DILocation(line: 1632, column: 17, scope: !1799)
!1820 = !DILocation(line: 1634, column: 3, scope: !1799)
!1821 = !DILocation(line: 1634, column: 7, scope: !1799)
!1822 = !DILocation(line: 1634, column: 9, scope: !1799)
!1823 = !DILocation(line: 1635, column: 23, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1799, file: !120, line: 1635, column: 2)
!1825 = !DILocation(line: 1635, column: 27, scope: !1824)
!1826 = !DILocation(line: 1635, column: 10, scope: !1824)
!1827 = !DILocation(line: 1635, column: 8, scope: !1824)
!1828 = !DILocation(line: 1635, column: 32, scope: !1824)
!1829 = !DILocation(line: 1635, column: 36, scope: !1824)
!1830 = !DILocation(line: 1635, column: 38, scope: !1824)
!1831 = !DILocation(line: 1636, column: 21, scope: !1799)
!1832 = !DILocation(line: 1636, column: 25, scope: !1799)
!1833 = !DILocation(line: 1636, column: 26, scope: !1799)
!1834 = !DILocation(line: 1636, column: 18, scope: !1799)
!1835 = !DILocation(line: 1636, column: 16, scope: !1799)
!1836 = !DILocation(line: 1637, column: 13, scope: !1799)
!1837 = !DILocation(line: 1637, column: 17, scope: !1799)
!1838 = !DILocation(line: 1637, column: 18, scope: !1799)
!1839 = !DILocation(line: 1637, column: 10, scope: !1799)
!1840 = !DILocation(line: 1637, column: 8, scope: !1799)
!1841 = !DILocation(line: 1638, column: 24, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1799, file: !120, line: 1638, column: 2)
!1843 = !DILocation(line: 1638, column: 28, scope: !1842)
!1844 = !DILocation(line: 1638, column: 11, scope: !1842)
!1845 = !DILocation(line: 1638, column: 9, scope: !1842)
!1846 = !DILocation(line: 1638, column: 33, scope: !1842)
!1847 = !DILocation(line: 1638, column: 37, scope: !1842)
!1848 = !DILocation(line: 1638, column: 39, scope: !1842)
!1849 = !DILocation(line: 1639, column: 7, scope: !1799)
!1850 = !DILocation(line: 1641, column: 6, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1799, file: !120, line: 1641, column: 6)
!1852 = !DILocation(line: 1641, column: 12, scope: !1851)
!1853 = !DILocation(line: 1641, column: 6, scope: !1799)
!1854 = !DILocation(line: 1643, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !120, line: 1643, column: 7)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !120, line: 1642, column: 2)
!1857 = !DILocation(line: 1643, column: 11, scope: !1855)
!1858 = !DILocation(line: 1643, column: 7, scope: !1856)
!1859 = !DILocation(line: 1644, column: 4, scope: !1855)
!1860 = !DILocation(line: 1646, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !120, line: 1646, column: 7)
!1862 = !DILocation(line: 1646, column: 22, scope: !1861)
!1863 = !DILocation(line: 1646, column: 25, scope: !1861)
!1864 = !DILocation(line: 1646, column: 31, scope: !1861)
!1865 = !DILocation(line: 1646, column: 7, scope: !1861)
!1866 = !DILocation(line: 1646, column: 52, scope: !1861)
!1867 = !DILocation(line: 1646, column: 7, scope: !1856)
!1868 = !DILocation(line: 1647, column: 4, scope: !1861)
!1869 = !DILocation(line: 1653, column: 33, scope: !1856)
!1870 = !DILocation(line: 1653, column: 37, scope: !1856)
!1871 = !DILocation(line: 1653, column: 43, scope: !1856)
!1872 = !DILocation(line: 1653, column: 24, scope: !1856)
!1873 = !DILocation(line: 1653, column: 3, scope: !1856)
!1874 = !DILocation(line: 1653, column: 7, scope: !1856)
!1875 = !DILocation(line: 1653, column: 12, scope: !1856)
!1876 = !DILocation(line: 1655, column: 11, scope: !1856)
!1877 = !DILocation(line: 1655, column: 15, scope: !1856)
!1878 = !DILocation(line: 1655, column: 60, scope: !1856)
!1879 = !DILocation(line: 1655, column: 58, scope: !1856)
!1880 = !DILocation(line: 1655, column: 67, scope: !1856)
!1881 = !DILocation(line: 1655, column: 3, scope: !1856)
!1882 = !DILocation(line: 1657, column: 14, scope: !1856)
!1883 = !DILocation(line: 1657, column: 3, scope: !1856)
!1884 = !DILocation(line: 1657, column: 7, scope: !1856)
!1885 = !DILocation(line: 1657, column: 12, scope: !1856)
!1886 = !DILocation(line: 1658, column: 14, scope: !1856)
!1887 = !DILocation(line: 1658, column: 18, scope: !1856)
!1888 = !DILocation(line: 1658, column: 25, scope: !1856)
!1889 = !DILocation(line: 1658, column: 29, scope: !1856)
!1890 = !DILocation(line: 1658, column: 23, scope: !1856)
!1891 = !DILocation(line: 1658, column: 3, scope: !1856)
!1892 = !DILocation(line: 1658, column: 7, scope: !1856)
!1893 = !DILocation(line: 1658, column: 11, scope: !1856)
!1894 = !DILocation(line: 1659, column: 11, scope: !1856)
!1895 = !DILocation(line: 1659, column: 15, scope: !1856)
!1896 = !DILocation(line: 1659, column: 3, scope: !1856)
!1897 = !DILocation(line: 1659, column: 7, scope: !1856)
!1898 = !DILocation(line: 1659, column: 9, scope: !1856)
!1899 = !DILocation(line: 1660, column: 17, scope: !1856)
!1900 = !DILocation(line: 1660, column: 21, scope: !1856)
!1901 = !DILocation(line: 1660, column: 3, scope: !1856)
!1902 = !DILocation(line: 1660, column: 7, scope: !1856)
!1903 = !DILocation(line: 1660, column: 15, scope: !1856)
!1904 = !DILocation(line: 1662, column: 7, scope: !1856)
!1905 = !DILocation(line: 1662, column: 5, scope: !1856)
!1906 = !DILocation(line: 1663, column: 2, scope: !1856)
!1907 = !DILocation(line: 1665, column: 10, scope: !1799)
!1908 = !DILocation(line: 1665, column: 2, scope: !1799)
!1909 = !DILocation(line: 1668, column: 23, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1799, file: !120, line: 1666, column: 2)
!1911 = !DILocation(line: 1668, column: 4, scope: !1910)
!1912 = !DILocation(line: 1669, column: 4, scope: !1910)
!1913 = !DILocation(line: 1672, column: 4, scope: !1910)
!1914 = !DILocation(line: 1673, column: 4, scope: !1910)
!1915 = !DILocation(line: 1676, column: 4, scope: !1910)
!1916 = !DILocation(line: 1677, column: 4, scope: !1910)
!1917 = !DILocation(line: 1680, column: 24, scope: !1910)
!1918 = !DILocation(line: 1680, column: 4, scope: !1910)
!1919 = !DILocation(line: 1681, column: 4, scope: !1910)
!1920 = !DILocation(line: 1684, column: 4, scope: !1910)
!1921 = !DILocation(line: 1685, column: 4, scope: !1910)
!1922 = !DILocation(line: 1688, column: 4, scope: !1910)
!1923 = !DILocation(line: 1690, column: 22, scope: !1910)
!1924 = !DILocation(line: 1690, column: 4, scope: !1910)
!1925 = !DILocation(line: 1691, column: 4, scope: !1910)
!1926 = !DILocation(line: 1694, column: 34, scope: !1910)
!1927 = !DILocation(line: 1694, column: 37, scope: !1910)
!1928 = !DILocation(line: 1694, column: 4, scope: !1910)
!1929 = !DILocation(line: 1701, column: 4, scope: !1910)
!1930 = !DILocation(line: 1704, column: 4, scope: !1910)
!1931 = !DILocation(line: 1706, column: 4, scope: !1910)
!1932 = !DILocation(line: 1710, column: 11, scope: !1910)
!1933 = !DILocation(line: 1709, column: 4, scope: !1910)
!1934 = !DILocation(line: 1711, column: 2, scope: !1910)
!1935 = !DILocation(line: 1712, column: 2, scope: !1799)
!1936 = distinct !DISubprogram(name: "rdp_connect", scope: !120, file: !120, line: 1966, type: !1937, isLocal: false, isDefinition: true, scopeLine: 1968, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!121, !95, !105, !95, !95, !95, !95, !121}
!1939 = !DILocalVariable(name: "server", arg: 1, scope: !1936, file: !120, line: 1966, type: !95)
!1940 = !DILocation(line: 1966, column: 19, scope: !1936)
!1941 = !DILocalVariable(name: "flags", arg: 2, scope: !1936, file: !120, line: 1966, type: !105)
!1942 = !DILocation(line: 1966, column: 34, scope: !1936)
!1943 = !DILocalVariable(name: "domain", arg: 3, scope: !1936, file: !120, line: 1966, type: !95)
!1944 = !DILocation(line: 1966, column: 47, scope: !1936)
!1945 = !DILocalVariable(name: "password", arg: 4, scope: !1936, file: !120, line: 1966, type: !95)
!1946 = !DILocation(line: 1966, column: 61, scope: !1936)
!1947 = !DILocalVariable(name: "command", arg: 5, scope: !1936, file: !120, line: 1967, type: !95)
!1948 = !DILocation(line: 1967, column: 12, scope: !1936)
!1949 = !DILocalVariable(name: "directory", arg: 6, scope: !1936, file: !120, line: 1967, type: !95)
!1950 = !DILocation(line: 1967, column: 27, scope: !1936)
!1951 = !DILocalVariable(name: "reconnect", arg: 7, scope: !1936, file: !120, line: 1967, type: !121)
!1952 = !DILocation(line: 1967, column: 46, scope: !1936)
!1953 = !DILocalVariable(name: "deactivated", scope: !1936, file: !120, line: 1969, type: !121)
!1954 = !DILocation(line: 1969, column: 10, scope: !1936)
!1955 = !DILocalVariable(name: "ext_disc_reason", scope: !1936, file: !120, line: 1970, type: !105)
!1956 = !DILocation(line: 1970, column: 9, scope: !1936)
!1957 = !DILocation(line: 1972, column: 19, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1936, file: !120, line: 1972, column: 6)
!1959 = !DILocation(line: 1972, column: 27, scope: !1958)
!1960 = !DILocation(line: 1972, column: 39, scope: !1958)
!1961 = !DILocation(line: 1972, column: 47, scope: !1958)
!1962 = !DILocation(line: 1972, column: 57, scope: !1958)
!1963 = !DILocation(line: 1972, column: 7, scope: !1958)
!1964 = !DILocation(line: 1972, column: 6, scope: !1936)
!1965 = !DILocation(line: 1973, column: 3, scope: !1958)
!1966 = !DILocation(line: 1975, column: 27, scope: !1936)
!1967 = !DILocation(line: 1975, column: 34, scope: !1936)
!1968 = !DILocation(line: 1975, column: 42, scope: !1936)
!1969 = !DILocation(line: 1975, column: 54, scope: !1936)
!1970 = !DILocation(line: 1975, column: 64, scope: !1936)
!1971 = !DILocation(line: 1975, column: 73, scope: !1936)
!1972 = !DILocation(line: 1975, column: 2, scope: !1936)
!1973 = !DILocation(line: 1978, column: 2, scope: !1936)
!1974 = !DILocation(line: 1978, column: 10, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1936, file: !120, discriminator: 1)
!1976 = !DILocation(line: 1978, column: 9, scope: !1975)
!1977 = !DILocation(line: 1978, column: 2, scope: !1975)
!1978 = !DILocation(line: 1980, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !120, line: 1980, column: 7)
!1980 = distinct !DILexicalBlock(scope: !1936, file: !120, line: 1979, column: 2)
!1981 = !DILocation(line: 1980, column: 7, scope: !1980)
!1982 = !DILocation(line: 1981, column: 4, scope: !1979)
!1983 = !DILocation(line: 1983, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !120, line: 1983, column: 7)
!1985 = !DILocation(line: 1983, column: 7, scope: !1980)
!1986 = !DILocation(line: 1984, column: 4, scope: !1984)
!1987 = !DILocation(line: 1986, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !120, line: 1986, column: 7)
!1989 = !DILocation(line: 1986, column: 7, scope: !1980)
!1990 = !DILocation(line: 1987, column: 4, scope: !1988)
!1991 = !DILocation(line: 1978, column: 2, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1936, file: !120, discriminator: 2)
!1993 = distinct !{!1993, !1973}
!1994 = !DILocation(line: 1989, column: 2, scope: !1936)
!1995 = !DILocation(line: 1990, column: 1, scope: !1936)
!1996 = distinct !DISubprogram(name: "rdp_send_client_info_pdu", scope: !120, file: !120, line: 343, type: !1997, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !105, !95, !95, !95, !95, !95}
!1999 = !DILocalVariable(name: "flags", arg: 1, scope: !1996, file: !120, line: 343, type: !105)
!2000 = !DILocation(line: 343, column: 33, scope: !1996)
!2001 = !DILocalVariable(name: "domain", arg: 2, scope: !1996, file: !120, line: 343, type: !95)
!2002 = !DILocation(line: 343, column: 46, scope: !1996)
!2003 = !DILocalVariable(name: "user", arg: 3, scope: !1996, file: !120, line: 343, type: !95)
!2004 = !DILocation(line: 343, column: 60, scope: !1996)
!2005 = !DILocalVariable(name: "password", arg: 4, scope: !1996, file: !120, line: 344, type: !95)
!2006 = !DILocation(line: 344, column: 11, scope: !1996)
!2007 = !DILocalVariable(name: "program", arg: 5, scope: !1996, file: !120, line: 344, type: !95)
!2008 = !DILocation(line: 344, column: 27, scope: !1996)
!2009 = !DILocalVariable(name: "directory", arg: 6, scope: !1996, file: !120, line: 344, type: !95)
!2010 = !DILocation(line: 344, column: 42, scope: !1996)
!2011 = !DILocalVariable(name: "ipaddr", scope: !1996, file: !120, line: 346, type: !95)
!2012 = !DILocation(line: 346, column: 8, scope: !1996)
!2013 = !DILocation(line: 346, column: 17, scope: !1996)
!2014 = !DILocalVariable(name: "len_domain", scope: !1996, file: !120, line: 348, type: !122)
!2015 = !DILocation(line: 348, column: 6, scope: !1996)
!2016 = !DILocation(line: 348, column: 30, scope: !1996)
!2017 = !DILocation(line: 348, column: 23, scope: !1996)
!2018 = !DILocation(line: 348, column: 21, scope: !1996)
!2019 = !DILocation(line: 348, column: 19, scope: !1996)
!2020 = !DILocalVariable(name: "len_user", scope: !1996, file: !120, line: 349, type: !122)
!2021 = !DILocation(line: 349, column: 6, scope: !1996)
!2022 = !DILocation(line: 349, column: 28, scope: !1996)
!2023 = !DILocation(line: 349, column: 21, scope: !1996)
!2024 = !DILocation(line: 349, column: 19, scope: !1996)
!2025 = !DILocation(line: 349, column: 17, scope: !1996)
!2026 = !DILocalVariable(name: "len_password", scope: !1996, file: !120, line: 350, type: !122)
!2027 = !DILocation(line: 350, column: 6, scope: !1996)
!2028 = !DILocation(line: 350, column: 32, scope: !1996)
!2029 = !DILocation(line: 350, column: 25, scope: !1996)
!2030 = !DILocation(line: 350, column: 23, scope: !1996)
!2031 = !DILocation(line: 350, column: 21, scope: !1996)
!2032 = !DILocalVariable(name: "len_program", scope: !1996, file: !120, line: 351, type: !122)
!2033 = !DILocation(line: 351, column: 6, scope: !1996)
!2034 = !DILocation(line: 351, column: 31, scope: !1996)
!2035 = !DILocation(line: 351, column: 24, scope: !1996)
!2036 = !DILocation(line: 351, column: 22, scope: !1996)
!2037 = !DILocation(line: 351, column: 20, scope: !1996)
!2038 = !DILocalVariable(name: "len_directory", scope: !1996, file: !120, line: 352, type: !122)
!2039 = !DILocation(line: 352, column: 6, scope: !1996)
!2040 = !DILocation(line: 352, column: 33, scope: !1996)
!2041 = !DILocation(line: 352, column: 26, scope: !1996)
!2042 = !DILocation(line: 352, column: 24, scope: !1996)
!2043 = !DILocation(line: 352, column: 22, scope: !1996)
!2044 = !DILocalVariable(name: "len_ip", scope: !1996, file: !120, line: 355, type: !122)
!2045 = !DILocation(line: 355, column: 6, scope: !1996)
!2046 = !DILocation(line: 355, column: 26, scope: !1996)
!2047 = !DILocation(line: 355, column: 19, scope: !1996)
!2048 = !DILocation(line: 355, column: 17, scope: !1996)
!2049 = !DILocation(line: 355, column: 34, scope: !1996)
!2050 = !DILocation(line: 355, column: 15, scope: !1996)
!2051 = !DILocalVariable(name: "len_dll", scope: !1996, file: !120, line: 356, type: !122)
!2052 = !DILocation(line: 356, column: 6, scope: !1996)
!2053 = !DILocalVariable(name: "packetlen", scope: !1996, file: !120, line: 358, type: !122)
!2054 = !DILocation(line: 358, column: 6, scope: !1996)
!2055 = !DILocalVariable(name: "sec_flags", scope: !1996, file: !120, line: 359, type: !105)
!2056 = !DILocation(line: 359, column: 9, scope: !1996)
!2057 = !DILocation(line: 359, column: 21, scope: !1996)
!2058 = !DILocalVariable(name: "s", scope: !1996, file: !120, line: 360, type: !127)
!2059 = !DILocation(line: 360, column: 9, scope: !1996)
!2060 = !DILocalVariable(name: "t", scope: !1996, file: !120, line: 361, type: !2061)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2062, line: 75, baseType: !2063)
!2062 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2064, line: 139, baseType: !2065)
!2064 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2065 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!2066 = !DILocation(line: 361, column: 9, scope: !1996)
!2067 = !DILocation(line: 361, column: 13, scope: !1996)
!2068 = !DILocalVariable(name: "tzone", scope: !1996, file: !120, line: 362, type: !2061)
!2069 = !DILocation(line: 362, column: 9, scope: !1996)
!2070 = !DILocalVariable(name: "security_verifier", scope: !1996, file: !120, line: 363, type: !2071)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 8, elements: !2072)
!2072 = !{!2073}
!2073 = !DISubrange(count: 16)
!2074 = !DILocation(line: 363, column: 8, scope: !1996)
!2075 = !DILocation(line: 365, column: 6, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1996, file: !120, line: 365, column: 6)
!2077 = !DILocation(line: 365, column: 20, scope: !2076)
!2078 = !DILocation(line: 365, column: 30, scope: !2076)
!2079 = !DILocation(line: 365, column: 38, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2076, file: !120, discriminator: 1)
!2081 = !DILocation(line: 365, column: 35, scope: !2080)
!2082 = !DILocation(line: 365, column: 6, scope: !2080)
!2083 = !DILocation(line: 367, column: 3, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !120, line: 366, column: 2)
!2085 = !DILocation(line: 369, column: 16, scope: !2084)
!2086 = !DILocation(line: 369, column: 32, scope: !2084)
!2087 = !DILocation(line: 369, column: 30, scope: !2084)
!2088 = !DILocation(line: 369, column: 45, scope: !2084)
!2089 = !DILocation(line: 369, column: 43, scope: !2084)
!2090 = !DILocation(line: 369, column: 56, scope: !2084)
!2091 = !DILocation(line: 369, column: 54, scope: !2084)
!2092 = !DILocation(line: 370, column: 11, scope: !2084)
!2093 = !DILocation(line: 370, column: 9, scope: !2084)
!2094 = !DILocation(line: 370, column: 25, scope: !2084)
!2095 = !DILocation(line: 370, column: 23, scope: !2084)
!2096 = !DILocation(line: 370, column: 39, scope: !2084)
!2097 = !DILocation(line: 369, column: 7, scope: !2084)
!2098 = !DILocation(line: 369, column: 5, scope: !2084)
!2099 = !DILocation(line: 372, column: 18, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 372, column: 3)
!2101 = !DILocation(line: 372, column: 22, scope: !2100)
!2102 = !DILocation(line: 372, column: 5, scope: !2100)
!2103 = !DILocation(line: 372, column: 25, scope: !2100)
!2104 = !DILocation(line: 372, column: 31, scope: !2100)
!2105 = !DILocation(line: 372, column: 35, scope: !2100)
!2106 = !DILocation(line: 372, column: 37, scope: !2100)
!2107 = !DILocation(line: 373, column: 27, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 373, column: 3)
!2109 = !DILocation(line: 373, column: 18, scope: !2108)
!2110 = !DILocation(line: 373, column: 22, scope: !2108)
!2111 = !DILocation(line: 373, column: 5, scope: !2108)
!2112 = !DILocation(line: 373, column: 25, scope: !2108)
!2113 = !DILocation(line: 373, column: 35, scope: !2108)
!2114 = !DILocation(line: 373, column: 39, scope: !2108)
!2115 = !DILocation(line: 373, column: 41, scope: !2108)
!2116 = !DILocation(line: 374, column: 27, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 374, column: 3)
!2118 = !DILocation(line: 374, column: 18, scope: !2117)
!2119 = !DILocation(line: 374, column: 22, scope: !2117)
!2120 = !DILocation(line: 374, column: 5, scope: !2117)
!2121 = !DILocation(line: 374, column: 25, scope: !2117)
!2122 = !DILocation(line: 374, column: 40, scope: !2117)
!2123 = !DILocation(line: 374, column: 44, scope: !2117)
!2124 = !DILocation(line: 374, column: 46, scope: !2117)
!2125 = !DILocation(line: 375, column: 27, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 375, column: 3)
!2127 = !DILocation(line: 375, column: 18, scope: !2126)
!2128 = !DILocation(line: 375, column: 22, scope: !2126)
!2129 = !DILocation(line: 375, column: 5, scope: !2126)
!2130 = !DILocation(line: 375, column: 25, scope: !2126)
!2131 = !DILocation(line: 375, column: 38, scope: !2126)
!2132 = !DILocation(line: 375, column: 42, scope: !2126)
!2133 = !DILocation(line: 375, column: 44, scope: !2126)
!2134 = !DILocation(line: 376, column: 27, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 376, column: 3)
!2136 = !DILocation(line: 376, column: 18, scope: !2135)
!2137 = !DILocation(line: 376, column: 22, scope: !2135)
!2138 = !DILocation(line: 376, column: 5, scope: !2135)
!2139 = !DILocation(line: 376, column: 25, scope: !2135)
!2140 = !DILocation(line: 376, column: 42, scope: !2135)
!2141 = !DILocation(line: 376, column: 46, scope: !2135)
!2142 = !DILocation(line: 376, column: 48, scope: !2135)
!2143 = !DILocation(line: 377, column: 27, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 377, column: 3)
!2145 = !DILocation(line: 377, column: 18, scope: !2144)
!2146 = !DILocation(line: 377, column: 22, scope: !2144)
!2147 = !DILocation(line: 377, column: 5, scope: !2144)
!2148 = !DILocation(line: 377, column: 25, scope: !2144)
!2149 = !DILocation(line: 377, column: 41, scope: !2144)
!2150 = !DILocation(line: 377, column: 45, scope: !2144)
!2151 = !DILocation(line: 377, column: 47, scope: !2144)
!2152 = !DILocation(line: 378, column: 27, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2084, file: !120, line: 378, column: 3)
!2154 = !DILocation(line: 378, column: 18, scope: !2153)
!2155 = !DILocation(line: 378, column: 22, scope: !2153)
!2156 = !DILocation(line: 378, column: 5, scope: !2153)
!2157 = !DILocation(line: 378, column: 25, scope: !2153)
!2158 = !DILocation(line: 378, column: 43, scope: !2153)
!2159 = !DILocation(line: 378, column: 47, scope: !2153)
!2160 = !DILocation(line: 378, column: 49, scope: !2153)
!2161 = !DILocation(line: 380, column: 33, scope: !2084)
!2162 = !DILocation(line: 380, column: 36, scope: !2084)
!2163 = !DILocation(line: 380, column: 44, scope: !2084)
!2164 = !DILocation(line: 380, column: 3, scope: !2084)
!2165 = !DILocation(line: 381, column: 33, scope: !2084)
!2166 = !DILocation(line: 381, column: 36, scope: !2084)
!2167 = !DILocation(line: 381, column: 42, scope: !2084)
!2168 = !DILocation(line: 381, column: 3, scope: !2084)
!2169 = !DILocation(line: 382, column: 33, scope: !2084)
!2170 = !DILocation(line: 382, column: 36, scope: !2084)
!2171 = !DILocation(line: 382, column: 46, scope: !2084)
!2172 = !DILocation(line: 382, column: 3, scope: !2084)
!2173 = !DILocation(line: 383, column: 33, scope: !2084)
!2174 = !DILocation(line: 383, column: 36, scope: !2084)
!2175 = !DILocation(line: 383, column: 45, scope: !2084)
!2176 = !DILocation(line: 383, column: 3, scope: !2084)
!2177 = !DILocation(line: 384, column: 33, scope: !2084)
!2178 = !DILocation(line: 384, column: 36, scope: !2084)
!2179 = !DILocation(line: 384, column: 47, scope: !2084)
!2180 = !DILocation(line: 384, column: 3, scope: !2084)
!2181 = !DILocation(line: 385, column: 2, scope: !2084)
!2182 = !DILocation(line: 389, column: 3, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2076, file: !120, line: 387, column: 2)
!2184 = !DILocation(line: 391, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 391, column: 7)
!2186 = !DILocation(line: 391, column: 18, scope: !2185)
!2187 = !DILocation(line: 391, column: 25, scope: !2185)
!2188 = !DILocation(line: 391, column: 28, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2185, file: !120, discriminator: 1)
!2190 = !DILocation(line: 391, column: 50, scope: !2189)
!2191 = !DILocation(line: 391, column: 7, scope: !2189)
!2192 = !DILocation(line: 393, column: 10, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !120, line: 392, column: 3)
!2194 = !DILocation(line: 394, column: 10, scope: !2193)
!2195 = !DILocation(line: 395, column: 19, scope: !2193)
!2196 = !DILocation(line: 395, column: 17, scope: !2193)
!2197 = !DILocation(line: 396, column: 17, scope: !2193)
!2198 = !DILocation(line: 399, column: 11, scope: !2193)
!2199 = !DILocation(line: 397, column: 4, scope: !2193)
!2200 = !DILocation(line: 400, column: 3, scope: !2193)
!2201 = !DILocation(line: 411, column: 8, scope: !2183)
!2202 = !DILocation(line: 411, column: 6, scope: !2183)
!2203 = !DILocation(line: 411, column: 19, scope: !2183)
!2204 = !DILocation(line: 412, column: 8, scope: !2183)
!2205 = !DILocation(line: 412, column: 6, scope: !2183)
!2206 = !DILocation(line: 412, column: 17, scope: !2183)
!2207 = !DILocation(line: 413, column: 8, scope: !2183)
!2208 = !DILocation(line: 413, column: 6, scope: !2183)
!2209 = !DILocation(line: 413, column: 21, scope: !2183)
!2210 = !DILocation(line: 414, column: 8, scope: !2183)
!2211 = !DILocation(line: 414, column: 6, scope: !2183)
!2212 = !DILocation(line: 414, column: 20, scope: !2183)
!2213 = !DILocation(line: 415, column: 8, scope: !2183)
!2214 = !DILocation(line: 415, column: 6, scope: !2183)
!2215 = !DILocation(line: 415, column: 22, scope: !2183)
!2216 = !DILocation(line: 417, column: 6, scope: !2183)
!2217 = !DILocation(line: 419, column: 4, scope: !2183)
!2218 = !DILocation(line: 418, column: 6, scope: !2183)
!2219 = !DILocation(line: 419, column: 11, scope: !2183)
!2220 = !DILocation(line: 421, column: 4, scope: !2183)
!2221 = !DILocation(line: 420, column: 6, scope: !2183)
!2222 = !DILocation(line: 421, column: 12, scope: !2183)
!2223 = !DILocation(line: 423, column: 6, scope: !2183)
!2224 = !DILocation(line: 424, column: 7, scope: !2183)
!2225 = !DILocation(line: 425, column: 7, scope: !2183)
!2226 = !DILocation(line: 426, column: 6, scope: !2183)
!2227 = !DILocation(line: 427, column: 7, scope: !2183)
!2228 = !DILocation(line: 428, column: 7, scope: !2183)
!2229 = !DILocation(line: 429, column: 6, scope: !2183)
!2230 = !DILocation(line: 430, column: 6, scope: !2183)
!2231 = !DILocation(line: 431, column: 6, scope: !2183)
!2232 = !DILocation(line: 432, column: 6, scope: !2183)
!2233 = !DILocation(line: 402, column: 13, scope: !2183)
!2234 = !DILocation(line: 437, column: 16, scope: !2183)
!2235 = !DILocation(line: 437, column: 27, scope: !2183)
!2236 = !DILocation(line: 437, column: 7, scope: !2183)
!2237 = !DILocation(line: 437, column: 5, scope: !2183)
!2238 = !DILocation(line: 440, column: 10, scope: !2183)
!2239 = !DILocation(line: 439, column: 3, scope: !2183)
!2240 = !DILocation(line: 443, column: 18, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 443, column: 3)
!2242 = !DILocation(line: 443, column: 22, scope: !2241)
!2243 = !DILocation(line: 443, column: 5, scope: !2241)
!2244 = !DILocation(line: 443, column: 25, scope: !2241)
!2245 = !DILocation(line: 443, column: 31, scope: !2241)
!2246 = !DILocation(line: 443, column: 35, scope: !2241)
!2247 = !DILocation(line: 443, column: 37, scope: !2241)
!2248 = !DILocation(line: 444, column: 27, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 444, column: 3)
!2250 = !DILocation(line: 444, column: 18, scope: !2249)
!2251 = !DILocation(line: 444, column: 22, scope: !2249)
!2252 = !DILocation(line: 444, column: 5, scope: !2249)
!2253 = !DILocation(line: 444, column: 25, scope: !2249)
!2254 = !DILocation(line: 444, column: 35, scope: !2249)
!2255 = !DILocation(line: 444, column: 39, scope: !2249)
!2256 = !DILocation(line: 444, column: 41, scope: !2249)
!2257 = !DILocation(line: 445, column: 27, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 445, column: 3)
!2259 = !DILocation(line: 445, column: 18, scope: !2258)
!2260 = !DILocation(line: 445, column: 22, scope: !2258)
!2261 = !DILocation(line: 445, column: 5, scope: !2258)
!2262 = !DILocation(line: 445, column: 25, scope: !2258)
!2263 = !DILocation(line: 445, column: 40, scope: !2258)
!2264 = !DILocation(line: 445, column: 44, scope: !2258)
!2265 = !DILocation(line: 445, column: 46, scope: !2258)
!2266 = !DILocation(line: 446, column: 27, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 446, column: 3)
!2268 = !DILocation(line: 446, column: 18, scope: !2267)
!2269 = !DILocation(line: 446, column: 22, scope: !2267)
!2270 = !DILocation(line: 446, column: 5, scope: !2267)
!2271 = !DILocation(line: 446, column: 25, scope: !2267)
!2272 = !DILocation(line: 446, column: 38, scope: !2267)
!2273 = !DILocation(line: 446, column: 42, scope: !2267)
!2274 = !DILocation(line: 446, column: 44, scope: !2267)
!2275 = !DILocation(line: 447, column: 27, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 447, column: 3)
!2277 = !DILocation(line: 447, column: 18, scope: !2276)
!2278 = !DILocation(line: 447, column: 22, scope: !2276)
!2279 = !DILocation(line: 447, column: 5, scope: !2276)
!2280 = !DILocation(line: 447, column: 25, scope: !2276)
!2281 = !DILocation(line: 447, column: 42, scope: !2276)
!2282 = !DILocation(line: 447, column: 46, scope: !2276)
!2283 = !DILocation(line: 447, column: 48, scope: !2276)
!2284 = !DILocation(line: 448, column: 27, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 448, column: 3)
!2286 = !DILocation(line: 448, column: 18, scope: !2285)
!2287 = !DILocation(line: 448, column: 22, scope: !2285)
!2288 = !DILocation(line: 448, column: 5, scope: !2285)
!2289 = !DILocation(line: 448, column: 25, scope: !2285)
!2290 = !DILocation(line: 448, column: 41, scope: !2285)
!2291 = !DILocation(line: 448, column: 45, scope: !2285)
!2292 = !DILocation(line: 448, column: 47, scope: !2285)
!2293 = !DILocation(line: 449, column: 27, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 449, column: 3)
!2295 = !DILocation(line: 449, column: 18, scope: !2294)
!2296 = !DILocation(line: 449, column: 22, scope: !2294)
!2297 = !DILocation(line: 449, column: 5, scope: !2294)
!2298 = !DILocation(line: 449, column: 25, scope: !2294)
!2299 = !DILocation(line: 449, column: 43, scope: !2294)
!2300 = !DILocation(line: 449, column: 47, scope: !2294)
!2301 = !DILocation(line: 449, column: 49, scope: !2294)
!2302 = !DILocation(line: 451, column: 33, scope: !2183)
!2303 = !DILocation(line: 451, column: 36, scope: !2183)
!2304 = !DILocation(line: 451, column: 44, scope: !2183)
!2305 = !DILocation(line: 451, column: 3, scope: !2183)
!2306 = !DILocation(line: 452, column: 33, scope: !2183)
!2307 = !DILocation(line: 452, column: 36, scope: !2183)
!2308 = !DILocation(line: 452, column: 42, scope: !2183)
!2309 = !DILocation(line: 452, column: 3, scope: !2183)
!2310 = !DILocation(line: 454, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 454, column: 7)
!2312 = !DILocation(line: 454, column: 18, scope: !2311)
!2313 = !DILocation(line: 454, column: 25, scope: !2311)
!2314 = !DILocation(line: 454, column: 32, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2311, file: !120, discriminator: 1)
!2316 = !DILocation(line: 454, column: 30, scope: !2315)
!2317 = !DILocation(line: 454, column: 7, scope: !2315)
!2318 = !DILocation(line: 456, column: 14, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !120, line: 456, column: 4)
!2320 = distinct !DILexicalBlock(scope: !2311, file: !120, line: 455, column: 3)
!2321 = !DILocation(line: 456, column: 18, scope: !2319)
!2322 = !DILocation(line: 456, column: 20, scope: !2319)
!2323 = !DILocation(line: 456, column: 38, scope: !2319)
!2324 = !DILocation(line: 456, column: 6, scope: !2319)
!2325 = !DILocation(line: 456, column: 72, scope: !2319)
!2326 = !DILocation(line: 456, column: 63, scope: !2319)
!2327 = !DILocation(line: 456, column: 67, scope: !2319)
!2328 = !DILocation(line: 456, column: 69, scope: !2319)
!2329 = !DILocation(line: 457, column: 3, scope: !2320)
!2330 = !DILocation(line: 460, column: 34, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2311, file: !120, line: 459, column: 3)
!2332 = !DILocation(line: 460, column: 37, scope: !2331)
!2333 = !DILocation(line: 460, column: 47, scope: !2331)
!2334 = !DILocation(line: 460, column: 4, scope: !2331)
!2335 = !DILocation(line: 464, column: 33, scope: !2183)
!2336 = !DILocation(line: 464, column: 36, scope: !2183)
!2337 = !DILocation(line: 464, column: 45, scope: !2183)
!2338 = !DILocation(line: 464, column: 3, scope: !2183)
!2339 = !DILocation(line: 465, column: 33, scope: !2183)
!2340 = !DILocation(line: 465, column: 36, scope: !2183)
!2341 = !DILocation(line: 465, column: 47, scope: !2183)
!2342 = !DILocation(line: 465, column: 3, scope: !2183)
!2343 = !DILocation(line: 468, column: 18, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 468, column: 3)
!2345 = !DILocation(line: 468, column: 22, scope: !2344)
!2346 = !DILocation(line: 468, column: 5, scope: !2344)
!2347 = !DILocation(line: 468, column: 25, scope: !2344)
!2348 = !DILocation(line: 468, column: 31, scope: !2344)
!2349 = !DILocation(line: 468, column: 35, scope: !2344)
!2350 = !DILocation(line: 468, column: 37, scope: !2344)
!2351 = !DILocation(line: 469, column: 27, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 469, column: 3)
!2353 = !DILocation(line: 469, column: 18, scope: !2352)
!2354 = !DILocation(line: 469, column: 22, scope: !2352)
!2355 = !DILocation(line: 469, column: 5, scope: !2352)
!2356 = !DILocation(line: 469, column: 25, scope: !2352)
!2357 = !DILocation(line: 469, column: 36, scope: !2352)
!2358 = !DILocation(line: 469, column: 40, scope: !2352)
!2359 = !DILocation(line: 469, column: 42, scope: !2352)
!2360 = !DILocation(line: 470, column: 33, scope: !2183)
!2361 = !DILocation(line: 470, column: 36, scope: !2183)
!2362 = !DILocation(line: 470, column: 44, scope: !2183)
!2363 = !DILocation(line: 470, column: 51, scope: !2183)
!2364 = !DILocation(line: 470, column: 3, scope: !2183)
!2365 = !DILocation(line: 471, column: 27, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 471, column: 3)
!2367 = !DILocation(line: 471, column: 18, scope: !2366)
!2368 = !DILocation(line: 471, column: 22, scope: !2366)
!2369 = !DILocation(line: 471, column: 5, scope: !2366)
!2370 = !DILocation(line: 471, column: 25, scope: !2366)
!2371 = !DILocation(line: 471, column: 37, scope: !2366)
!2372 = !DILocation(line: 471, column: 41, scope: !2366)
!2373 = !DILocation(line: 471, column: 43, scope: !2366)
!2374 = !DILocation(line: 472, column: 33, scope: !2183)
!2375 = !DILocation(line: 472, column: 72, scope: !2183)
!2376 = !DILocation(line: 472, column: 80, scope: !2183)
!2377 = !DILocation(line: 472, column: 3, scope: !2183)
!2378 = !DILocation(line: 475, column: 19, scope: !2183)
!2379 = !DILocation(line: 475, column: 12, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2183, file: !120, discriminator: 1)
!2381 = !DILocation(line: 475, column: 40, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2183, file: !120, discriminator: 2)
!2383 = !DILocation(line: 475, column: 33, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2183, file: !120, discriminator: 3)
!2385 = !DILocation(line: 475, column: 31, scope: !2183)
!2386 = !DILocation(line: 475, column: 56, scope: !2183)
!2387 = !DILocation(line: 475, column: 9, scope: !2183)
!2388 = !DILocation(line: 476, column: 27, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 476, column: 3)
!2390 = !DILocation(line: 476, column: 18, scope: !2389)
!2391 = !DILocation(line: 476, column: 22, scope: !2389)
!2392 = !DILocation(line: 476, column: 5, scope: !2389)
!2393 = !DILocation(line: 476, column: 25, scope: !2389)
!2394 = !DILocation(line: 476, column: 35, scope: !2389)
!2395 = !DILocation(line: 476, column: 39, scope: !2389)
!2396 = !DILocation(line: 476, column: 41, scope: !2389)
!2397 = !DILocation(line: 477, column: 18, scope: !2183)
!2398 = !DILocation(line: 477, column: 3, scope: !2183)
!2399 = !DILocation(line: 478, column: 13, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 478, column: 3)
!2401 = !DILocation(line: 478, column: 17, scope: !2400)
!2402 = !DILocation(line: 478, column: 5, scope: !2400)
!2403 = !DILocation(line: 478, column: 58, scope: !2400)
!2404 = !DILocation(line: 478, column: 62, scope: !2400)
!2405 = !DILocation(line: 478, column: 64, scope: !2400)
!2406 = !DILocation(line: 479, column: 18, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 479, column: 3)
!2408 = !DILocation(line: 479, column: 22, scope: !2407)
!2409 = !DILocation(line: 479, column: 5, scope: !2407)
!2410 = !DILocation(line: 479, column: 25, scope: !2407)
!2411 = !DILocation(line: 479, column: 38, scope: !2407)
!2412 = !DILocation(line: 479, column: 42, scope: !2407)
!2413 = !DILocation(line: 479, column: 44, scope: !2407)
!2414 = !DILocation(line: 480, column: 18, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 480, column: 3)
!2416 = !DILocation(line: 480, column: 22, scope: !2415)
!2417 = !DILocation(line: 480, column: 5, scope: !2415)
!2418 = !DILocation(line: 480, column: 25, scope: !2415)
!2419 = !DILocation(line: 480, column: 38, scope: !2415)
!2420 = !DILocation(line: 480, column: 42, scope: !2415)
!2421 = !DILocation(line: 480, column: 44, scope: !2415)
!2422 = !DILocation(line: 481, column: 18, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 481, column: 3)
!2424 = !DILocation(line: 481, column: 22, scope: !2423)
!2425 = !DILocation(line: 481, column: 5, scope: !2423)
!2426 = !DILocation(line: 481, column: 25, scope: !2423)
!2427 = !DILocation(line: 481, column: 31, scope: !2423)
!2428 = !DILocation(line: 481, column: 35, scope: !2423)
!2429 = !DILocation(line: 481, column: 37, scope: !2423)
!2430 = !DILocation(line: 482, column: 18, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 482, column: 3)
!2432 = !DILocation(line: 482, column: 22, scope: !2431)
!2433 = !DILocation(line: 482, column: 5, scope: !2431)
!2434 = !DILocation(line: 482, column: 25, scope: !2431)
!2435 = !DILocation(line: 482, column: 31, scope: !2431)
!2436 = !DILocation(line: 482, column: 35, scope: !2431)
!2437 = !DILocation(line: 482, column: 37, scope: !2431)
!2438 = !DILocation(line: 483, column: 18, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 483, column: 3)
!2440 = !DILocation(line: 483, column: 22, scope: !2439)
!2441 = !DILocation(line: 483, column: 5, scope: !2439)
!2442 = !DILocation(line: 483, column: 25, scope: !2439)
!2443 = !DILocation(line: 483, column: 31, scope: !2439)
!2444 = !DILocation(line: 483, column: 35, scope: !2439)
!2445 = !DILocation(line: 483, column: 37, scope: !2439)
!2446 = !DILocation(line: 484, column: 18, scope: !2183)
!2447 = !DILocation(line: 484, column: 3, scope: !2183)
!2448 = !DILocation(line: 485, column: 13, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 485, column: 3)
!2450 = !DILocation(line: 485, column: 17, scope: !2449)
!2451 = !DILocation(line: 485, column: 5, scope: !2449)
!2452 = !DILocation(line: 485, column: 58, scope: !2449)
!2453 = !DILocation(line: 485, column: 62, scope: !2449)
!2454 = !DILocation(line: 485, column: 64, scope: !2449)
!2455 = !DILocation(line: 486, column: 18, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 486, column: 3)
!2457 = !DILocation(line: 486, column: 22, scope: !2456)
!2458 = !DILocation(line: 486, column: 5, scope: !2456)
!2459 = !DILocation(line: 486, column: 25, scope: !2456)
!2460 = !DILocation(line: 486, column: 37, scope: !2456)
!2461 = !DILocation(line: 486, column: 41, scope: !2456)
!2462 = !DILocation(line: 486, column: 43, scope: !2456)
!2463 = !DILocation(line: 487, column: 18, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 487, column: 3)
!2465 = !DILocation(line: 487, column: 22, scope: !2464)
!2466 = !DILocation(line: 487, column: 5, scope: !2464)
!2467 = !DILocation(line: 487, column: 25, scope: !2464)
!2468 = !DILocation(line: 487, column: 38, scope: !2464)
!2469 = !DILocation(line: 487, column: 42, scope: !2464)
!2470 = !DILocation(line: 487, column: 44, scope: !2464)
!2471 = !DILocation(line: 488, column: 18, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 488, column: 3)
!2473 = !DILocation(line: 488, column: 22, scope: !2472)
!2474 = !DILocation(line: 488, column: 5, scope: !2472)
!2475 = !DILocation(line: 488, column: 25, scope: !2472)
!2476 = !DILocation(line: 488, column: 31, scope: !2472)
!2477 = !DILocation(line: 488, column: 35, scope: !2472)
!2478 = !DILocation(line: 488, column: 37, scope: !2472)
!2479 = !DILocation(line: 489, column: 18, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 489, column: 3)
!2481 = !DILocation(line: 489, column: 22, scope: !2480)
!2482 = !DILocation(line: 489, column: 5, scope: !2480)
!2483 = !DILocation(line: 489, column: 25, scope: !2480)
!2484 = !DILocation(line: 489, column: 31, scope: !2480)
!2485 = !DILocation(line: 489, column: 35, scope: !2480)
!2486 = !DILocation(line: 489, column: 37, scope: !2480)
!2487 = !DILocation(line: 490, column: 18, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 490, column: 3)
!2489 = !DILocation(line: 490, column: 22, scope: !2488)
!2490 = !DILocation(line: 490, column: 5, scope: !2488)
!2491 = !DILocation(line: 490, column: 25, scope: !2488)
!2492 = !DILocation(line: 490, column: 40, scope: !2488)
!2493 = !DILocation(line: 490, column: 44, scope: !2488)
!2494 = !DILocation(line: 490, column: 46, scope: !2488)
!2495 = !DILocation(line: 493, column: 18, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 493, column: 3)
!2497 = !DILocation(line: 493, column: 22, scope: !2496)
!2498 = !DILocation(line: 493, column: 5, scope: !2496)
!2499 = !DILocation(line: 493, column: 25, scope: !2496)
!2500 = !DILocation(line: 493, column: 31, scope: !2496)
!2501 = !DILocation(line: 493, column: 35, scope: !2496)
!2502 = !DILocation(line: 493, column: 37, scope: !2496)
!2503 = !DILocation(line: 494, column: 27, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 494, column: 3)
!2505 = !DILocation(line: 494, column: 18, scope: !2504)
!2506 = !DILocation(line: 494, column: 22, scope: !2504)
!2507 = !DILocation(line: 494, column: 5, scope: !2504)
!2508 = !DILocation(line: 494, column: 25, scope: !2504)
!2509 = !DILocation(line: 494, column: 53, scope: !2504)
!2510 = !DILocation(line: 494, column: 57, scope: !2504)
!2511 = !DILocation(line: 494, column: 59, scope: !2504)
!2512 = !DILocation(line: 497, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2183, file: !120, line: 497, column: 7)
!2514 = !DILocation(line: 497, column: 7, scope: !2183)
!2515 = !DILocation(line: 499, column: 4, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !120, line: 498, column: 3)
!2517 = !DILocation(line: 500, column: 19, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2516, file: !120, line: 500, column: 4)
!2519 = !DILocation(line: 500, column: 23, scope: !2518)
!2520 = !DILocation(line: 500, column: 6, scope: !2518)
!2521 = !DILocation(line: 500, column: 26, scope: !2518)
!2522 = !DILocation(line: 500, column: 33, scope: !2518)
!2523 = !DILocation(line: 500, column: 37, scope: !2518)
!2524 = !DILocation(line: 500, column: 39, scope: !2518)
!2525 = !DILocation(line: 502, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2516, file: !120, line: 502, column: 4)
!2527 = !DILocation(line: 502, column: 23, scope: !2526)
!2528 = !DILocation(line: 502, column: 6, scope: !2526)
!2529 = !DILocation(line: 502, column: 26, scope: !2526)
!2530 = !DILocation(line: 502, column: 33, scope: !2526)
!2531 = !DILocation(line: 502, column: 37, scope: !2526)
!2532 = !DILocation(line: 502, column: 39, scope: !2526)
!2533 = !DILocation(line: 503, column: 19, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2516, file: !120, line: 503, column: 4)
!2535 = !DILocation(line: 503, column: 23, scope: !2534)
!2536 = !DILocation(line: 503, column: 6, scope: !2534)
!2537 = !DILocation(line: 503, column: 26, scope: !2534)
!2538 = !DILocation(line: 503, column: 32, scope: !2534)
!2539 = !DILocation(line: 503, column: 36, scope: !2534)
!2540 = !DILocation(line: 503, column: 38, scope: !2534)
!2541 = !DILocation(line: 504, column: 28, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2516, file: !120, line: 504, column: 4)
!2543 = !DILocation(line: 504, column: 19, scope: !2542)
!2544 = !DILocation(line: 504, column: 23, scope: !2542)
!2545 = !DILocation(line: 504, column: 6, scope: !2542)
!2546 = !DILocation(line: 504, column: 26, scope: !2542)
!2547 = !DILocation(line: 504, column: 50, scope: !2542)
!2548 = !DILocation(line: 504, column: 54, scope: !2542)
!2549 = !DILocation(line: 504, column: 56, scope: !2542)
!2550 = !DILocation(line: 506, column: 33, scope: !2516)
!2551 = !DILocation(line: 505, column: 4, scope: !2516)
!2552 = !DILocation(line: 507, column: 14, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2516, file: !120, line: 507, column: 4)
!2554 = !DILocation(line: 507, column: 18, scope: !2553)
!2555 = !DILocation(line: 507, column: 6, scope: !2553)
!2556 = !DILocation(line: 507, column: 67, scope: !2553)
!2557 = !DILocation(line: 507, column: 71, scope: !2553)
!2558 = !DILocation(line: 507, column: 73, scope: !2553)
!2559 = !DILocation(line: 508, column: 3, scope: !2516)
!2560 = !DILocation(line: 511, column: 19, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !120, line: 511, column: 4)
!2562 = distinct !DILexicalBlock(scope: !2513, file: !120, line: 510, column: 3)
!2563 = !DILocation(line: 511, column: 23, scope: !2561)
!2564 = !DILocation(line: 511, column: 6, scope: !2561)
!2565 = !DILocation(line: 511, column: 26, scope: !2561)
!2566 = !DILocation(line: 511, column: 32, scope: !2561)
!2567 = !DILocation(line: 511, column: 36, scope: !2561)
!2568 = !DILocation(line: 511, column: 38, scope: !2561)
!2569 = !DILocation(line: 515, column: 14, scope: !1996)
!2570 = !DILocation(line: 515, column: 18, scope: !1996)
!2571 = !DILocation(line: 515, column: 3, scope: !1996)
!2572 = !DILocation(line: 515, column: 7, scope: !1996)
!2573 = !DILocation(line: 515, column: 11, scope: !1996)
!2574 = !DILocation(line: 518, column: 13, scope: !1996)
!2575 = !DILocation(line: 520, column: 11, scope: !1996)
!2576 = !DILocation(line: 520, column: 14, scope: !1996)
!2577 = !DILocation(line: 520, column: 2, scope: !1996)
!2578 = !DILocation(line: 521, column: 1, scope: !1996)
!2579 = distinct !DISubprogram(name: "rdp_reset_state", scope: !120, file: !120, line: 1994, type: !2580, isLocal: false, isDefinition: true, scopeLine: 1995, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null}
!2582 = !DILocation(line: 1996, column: 2, scope: !2579)
!2583 = !DILocation(line: 1997, column: 16, scope: !2579)
!2584 = !DILocation(line: 1998, column: 16, scope: !2579)
!2585 = !DILocation(line: 1999, column: 18, scope: !2579)
!2586 = !DILocation(line: 2000, column: 22, scope: !2579)
!2587 = !DILocation(line: 2001, column: 2, scope: !2579)
!2588 = !DILocation(line: 2002, column: 1, scope: !2579)
!2589 = distinct !DISubprogram(name: "rdp_disconnect", scope: !120, file: !120, line: 2006, type: !2580, isLocal: false, isDefinition: true, scopeLine: 2007, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2590 = !DILocation(line: 2008, column: 2, scope: !2589)
!2591 = !DILocation(line: 2009, column: 2, scope: !2589)
!2592 = !DILocation(line: 2010, column: 1, scope: !2589)
!2593 = distinct !DISubprogram(name: "rdp_ts_in_share_control_header", scope: !120, file: !120, line: 101, type: !2594, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!121, !127, !107, !101}
!2596 = !DILocalVariable(name: "s", arg: 1, scope: !2593, file: !120, line: 101, type: !127)
!2597 = !DILocation(line: 101, column: 39, scope: !2593)
!2598 = !DILocalVariable(name: "type", arg: 2, scope: !2593, file: !120, line: 101, type: !107)
!2599 = !DILocation(line: 101, column: 49, scope: !2593)
!2600 = !DILocalVariable(name: "length", arg: 3, scope: !2593, file: !120, line: 101, type: !101)
!2601 = !DILocation(line: 101, column: 63, scope: !2593)
!2602 = !DILocalVariable(name: "pdu_type", scope: !2593, file: !120, line: 103, type: !102)
!2603 = !DILocation(line: 103, column: 9, scope: !2593)
!2604 = !DILocalVariable(name: "pdu_source", scope: !2593, file: !120, line: 104, type: !102)
!2605 = !DILocation(line: 104, column: 9, scope: !2593)
!2606 = !DILocation(line: 106, column: 9, scope: !2593)
!2607 = !DILocation(line: 108, column: 27, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2593, file: !120, line: 108, column: 2)
!2609 = !DILocation(line: 108, column: 31, scope: !2608)
!2610 = !DILocation(line: 108, column: 14, scope: !2608)
!2611 = !DILocation(line: 108, column: 5, scope: !2608)
!2612 = !DILocation(line: 108, column: 12, scope: !2608)
!2613 = !DILocation(line: 108, column: 36, scope: !2608)
!2614 = !DILocation(line: 108, column: 40, scope: !2608)
!2615 = !DILocation(line: 108, column: 42, scope: !2608)
!2616 = !DILocation(line: 116, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2593, file: !120, line: 116, column: 6)
!2618 = !DILocation(line: 116, column: 6, scope: !2617)
!2619 = !DILocation(line: 116, column: 14, scope: !2617)
!2620 = !DILocation(line: 116, column: 6, scope: !2593)
!2621 = !DILocation(line: 119, column: 17, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !120, line: 117, column: 2)
!2623 = !DILocation(line: 120, column: 3, scope: !2622)
!2624 = !DILocation(line: 123, column: 28, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2593, file: !120, line: 123, column: 2)
!2626 = !DILocation(line: 123, column: 32, scope: !2625)
!2627 = !DILocation(line: 123, column: 15, scope: !2625)
!2628 = !DILocation(line: 123, column: 13, scope: !2625)
!2629 = !DILocation(line: 123, column: 37, scope: !2625)
!2630 = !DILocation(line: 123, column: 41, scope: !2625)
!2631 = !DILocation(line: 123, column: 43, scope: !2625)
!2632 = !DILocation(line: 124, column: 30, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2593, file: !120, line: 124, column: 2)
!2634 = !DILocation(line: 124, column: 34, scope: !2633)
!2635 = !DILocation(line: 124, column: 17, scope: !2633)
!2636 = !DILocation(line: 124, column: 15, scope: !2633)
!2637 = !DILocation(line: 124, column: 39, scope: !2633)
!2638 = !DILocation(line: 124, column: 43, scope: !2633)
!2639 = !DILocation(line: 124, column: 45, scope: !2633)
!2640 = !DILocation(line: 126, column: 10, scope: !2593)
!2641 = !DILocation(line: 126, column: 19, scope: !2593)
!2642 = !DILocation(line: 126, column: 3, scope: !2593)
!2643 = !DILocation(line: 126, column: 8, scope: !2593)
!2644 = !DILocation(line: 128, column: 2, scope: !2593)
!2645 = !DILocation(line: 129, column: 1, scope: !2593)
!2646 = distinct !DISubprogram(name: "rdp_process_server_caps", scope: !120, file: !120, line: 1170, type: !2647, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !127, !102}
!2649 = !DILocalVariable(name: "s", arg: 1, scope: !2646, file: !120, line: 1170, type: !127)
!2650 = !DILocation(line: 1170, column: 32, scope: !2646)
!2651 = !DILocalVariable(name: "length", arg: 2, scope: !2646, file: !120, line: 1170, type: !102)
!2652 = !DILocation(line: 1170, column: 42, scope: !2646)
!2653 = !DILocalVariable(name: "n", scope: !2646, file: !120, line: 1172, type: !122)
!2654 = !DILocation(line: 1172, column: 6, scope: !2646)
!2655 = !DILocalVariable(name: "next", scope: !2646, file: !120, line: 1173, type: !107)
!2656 = !DILocation(line: 1173, column: 9, scope: !2646)
!2657 = !DILocalVariable(name: "start", scope: !2646, file: !120, line: 1173, type: !107)
!2658 = !DILocation(line: 1173, column: 16, scope: !2646)
!2659 = !DILocalVariable(name: "ncapsets", scope: !2646, file: !120, line: 1174, type: !102)
!2660 = !DILocation(line: 1174, column: 9, scope: !2646)
!2661 = !DILocalVariable(name: "capset_type", scope: !2646, file: !120, line: 1174, type: !102)
!2662 = !DILocation(line: 1174, column: 19, scope: !2646)
!2663 = !DILocalVariable(name: "capset_length", scope: !2646, file: !120, line: 1174, type: !102)
!2664 = !DILocation(line: 1174, column: 32, scope: !2646)
!2665 = !DILocation(line: 1176, column: 2, scope: !2646)
!2666 = !DILocation(line: 1178, column: 10, scope: !2646)
!2667 = !DILocation(line: 1178, column: 13, scope: !2646)
!2668 = !DILocation(line: 1178, column: 8, scope: !2646)
!2669 = !DILocation(line: 1180, column: 28, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2646, file: !120, line: 1180, column: 2)
!2671 = !DILocation(line: 1180, column: 32, scope: !2670)
!2672 = !DILocation(line: 1180, column: 15, scope: !2670)
!2673 = !DILocation(line: 1180, column: 13, scope: !2670)
!2674 = !DILocation(line: 1180, column: 37, scope: !2670)
!2675 = !DILocation(line: 1180, column: 41, scope: !2670)
!2676 = !DILocation(line: 1180, column: 43, scope: !2670)
!2677 = !DILocation(line: 1181, column: 3, scope: !2646)
!2678 = !DILocation(line: 1181, column: 7, scope: !2646)
!2679 = !DILocation(line: 1181, column: 9, scope: !2646)
!2680 = !DILocation(line: 1183, column: 9, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2646, file: !120, line: 1183, column: 2)
!2682 = !DILocation(line: 1183, column: 7, scope: !2681)
!2683 = !DILocation(line: 1183, column: 14, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2685, file: !120, discriminator: 1)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !120, line: 1183, column: 2)
!2686 = !DILocation(line: 1183, column: 18, scope: !2684)
!2687 = !DILocation(line: 1183, column: 16, scope: !2684)
!2688 = !DILocation(line: 1183, column: 2, scope: !2684)
!2689 = !DILocation(line: 1185, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !120, line: 1185, column: 7)
!2691 = distinct !DILexicalBlock(scope: !2685, file: !120, line: 1184, column: 2)
!2692 = !DILocation(line: 1185, column: 10, scope: !2690)
!2693 = !DILocation(line: 1185, column: 14, scope: !2690)
!2694 = !DILocation(line: 1185, column: 22, scope: !2690)
!2695 = !DILocation(line: 1185, column: 20, scope: !2690)
!2696 = !DILocation(line: 1185, column: 12, scope: !2690)
!2697 = !DILocation(line: 1185, column: 7, scope: !2691)
!2698 = !DILocation(line: 1186, column: 4, scope: !2690)
!2699 = !DILocation(line: 1188, column: 32, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2691, file: !120, line: 1188, column: 3)
!2701 = !DILocation(line: 1188, column: 36, scope: !2700)
!2702 = !DILocation(line: 1188, column: 19, scope: !2700)
!2703 = !DILocation(line: 1188, column: 17, scope: !2700)
!2704 = !DILocation(line: 1188, column: 41, scope: !2700)
!2705 = !DILocation(line: 1188, column: 45, scope: !2700)
!2706 = !DILocation(line: 1188, column: 47, scope: !2700)
!2707 = !DILocation(line: 1189, column: 34, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2691, file: !120, line: 1189, column: 3)
!2709 = !DILocation(line: 1189, column: 38, scope: !2708)
!2710 = !DILocation(line: 1189, column: 21, scope: !2708)
!2711 = !DILocation(line: 1189, column: 19, scope: !2708)
!2712 = !DILocation(line: 1189, column: 43, scope: !2708)
!2713 = !DILocation(line: 1189, column: 47, scope: !2708)
!2714 = !DILocation(line: 1189, column: 49, scope: !2708)
!2715 = !DILocation(line: 1191, column: 10, scope: !2691)
!2716 = !DILocation(line: 1191, column: 13, scope: !2691)
!2717 = !DILocation(line: 1191, column: 17, scope: !2691)
!2718 = !DILocation(line: 1191, column: 15, scope: !2691)
!2719 = !DILocation(line: 1191, column: 31, scope: !2691)
!2720 = !DILocation(line: 1191, column: 8, scope: !2691)
!2721 = !DILocation(line: 1193, column: 11, scope: !2691)
!2722 = !DILocation(line: 1193, column: 3, scope: !2691)
!2723 = !DILocation(line: 1196, column: 30, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2691, file: !120, line: 1194, column: 3)
!2725 = !DILocation(line: 1196, column: 5, scope: !2724)
!2726 = !DILocation(line: 1197, column: 5, scope: !2724)
!2727 = !DILocation(line: 1200, column: 29, scope: !2724)
!2728 = !DILocation(line: 1200, column: 5, scope: !2724)
!2729 = !DILocation(line: 1201, column: 5, scope: !2724)
!2730 = !DILocation(line: 1204, column: 10, scope: !2691)
!2731 = !DILocation(line: 1204, column: 3, scope: !2691)
!2732 = !DILocation(line: 1204, column: 6, scope: !2691)
!2733 = !DILocation(line: 1204, column: 8, scope: !2691)
!2734 = !DILocation(line: 1205, column: 2, scope: !2691)
!2735 = !DILocation(line: 1183, column: 29, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2685, file: !120, discriminator: 2)
!2737 = !DILocation(line: 1183, column: 2, scope: !2736)
!2738 = distinct !{!2738, !2739}
!2739 = !DILocation(line: 1183, column: 2, scope: !2646)
!2740 = !DILocation(line: 1206, column: 1, scope: !2646)
!2741 = distinct !DISubprogram(name: "rdp_send_confirm_active", scope: !120, file: !120, line: 1014, type: !2580, isLocal: true, isDefinition: true, scopeLine: 1015, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2742 = !DILocalVariable(name: "s", scope: !2741, file: !120, line: 1016, type: !127)
!2743 = !DILocation(line: 1016, column: 9, scope: !2741)
!2744 = !DILocalVariable(name: "sec_flags", scope: !2741, file: !120, line: 1017, type: !105)
!2745 = !DILocation(line: 1017, column: 9, scope: !2741)
!2746 = !DILocation(line: 1017, column: 21, scope: !2741)
!2747 = !DILocalVariable(name: "caplen", scope: !2741, file: !120, line: 1018, type: !102)
!2748 = !DILocation(line: 1018, column: 9, scope: !2741)
!2749 = !DILocation(line: 1035, column: 2, scope: !2741)
!2750 = !DILocation(line: 1037, column: 6, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1037, column: 6)
!2752 = !DILocation(line: 1037, column: 20, scope: !2751)
!2753 = !DILocation(line: 1037, column: 6, scope: !2741)
!2754 = !DILocation(line: 1039, column: 10, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !120, line: 1038, column: 2)
!2756 = !DILocation(line: 1040, column: 10, scope: !2755)
!2757 = !DILocation(line: 1041, column: 2, scope: !2755)
!2758 = !DILocation(line: 1044, column: 10, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2751, file: !120, line: 1043, column: 2)
!2760 = !DILocation(line: 1045, column: 10, scope: !2759)
!2761 = !DILocation(line: 1048, column: 15, scope: !2741)
!2762 = !DILocation(line: 1048, column: 35, scope: !2741)
!2763 = !DILocation(line: 1048, column: 33, scope: !2741)
!2764 = !DILocation(line: 1048, column: 26, scope: !2741)
!2765 = !DILocation(line: 1048, column: 42, scope: !2741)
!2766 = !DILocation(line: 1048, column: 6, scope: !2741)
!2767 = !DILocation(line: 1048, column: 4, scope: !2741)
!2768 = !DILocation(line: 1050, column: 35, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1050, column: 2)
!2770 = !DILocation(line: 1050, column: 33, scope: !2769)
!2771 = !DILocation(line: 1050, column: 26, scope: !2769)
!2772 = !DILocation(line: 1050, column: 42, scope: !2769)
!2773 = !DILocation(line: 1050, column: 17, scope: !2769)
!2774 = !DILocation(line: 1050, column: 21, scope: !2769)
!2775 = !DILocation(line: 1050, column: 4, scope: !2769)
!2776 = !DILocation(line: 1050, column: 24, scope: !2769)
!2777 = !DILocation(line: 1050, column: 62, scope: !2769)
!2778 = !DILocation(line: 1050, column: 66, scope: !2769)
!2779 = !DILocation(line: 1050, column: 68, scope: !2769)
!2780 = !DILocation(line: 1051, column: 17, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1051, column: 2)
!2782 = !DILocation(line: 1051, column: 21, scope: !2781)
!2783 = !DILocation(line: 1051, column: 4, scope: !2781)
!2784 = !DILocation(line: 1051, column: 24, scope: !2781)
!2785 = !DILocation(line: 1051, column: 60, scope: !2781)
!2786 = !DILocation(line: 1051, column: 64, scope: !2781)
!2787 = !DILocation(line: 1051, column: 66, scope: !2781)
!2788 = !DILocation(line: 1052, column: 27, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1052, column: 2)
!2790 = !DILocation(line: 1052, column: 40, scope: !2789)
!2791 = !DILocation(line: 1052, column: 26, scope: !2789)
!2792 = !DILocation(line: 1052, column: 17, scope: !2789)
!2793 = !DILocation(line: 1052, column: 21, scope: !2789)
!2794 = !DILocation(line: 1052, column: 4, scope: !2789)
!2795 = !DILocation(line: 1052, column: 24, scope: !2789)
!2796 = !DILocation(line: 1052, column: 50, scope: !2789)
!2797 = !DILocation(line: 1052, column: 54, scope: !2789)
!2798 = !DILocation(line: 1052, column: 56, scope: !2789)
!2799 = !DILocation(line: 1054, column: 26, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1054, column: 2)
!2801 = !DILocation(line: 1054, column: 17, scope: !2800)
!2802 = !DILocation(line: 1054, column: 21, scope: !2800)
!2803 = !DILocation(line: 1054, column: 4, scope: !2800)
!2804 = !DILocation(line: 1054, column: 24, scope: !2800)
!2805 = !DILocation(line: 1054, column: 42, scope: !2800)
!2806 = !DILocation(line: 1054, column: 46, scope: !2800)
!2807 = !DILocation(line: 1054, column: 48, scope: !2800)
!2808 = !DILocation(line: 1055, column: 17, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1055, column: 2)
!2810 = !DILocation(line: 1055, column: 21, scope: !2809)
!2811 = !DILocation(line: 1055, column: 4, scope: !2809)
!2812 = !DILocation(line: 1055, column: 24, scope: !2809)
!2813 = !DILocation(line: 1055, column: 34, scope: !2809)
!2814 = !DILocation(line: 1055, column: 38, scope: !2809)
!2815 = !DILocation(line: 1055, column: 40, scope: !2809)
!2816 = !DILocation(line: 1056, column: 17, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1056, column: 2)
!2818 = !DILocation(line: 1056, column: 21, scope: !2817)
!2819 = !DILocation(line: 1056, column: 4, scope: !2817)
!2820 = !DILocation(line: 1056, column: 24, scope: !2817)
!2821 = !DILocation(line: 1056, column: 44, scope: !2817)
!2822 = !DILocation(line: 1056, column: 48, scope: !2817)
!2823 = !DILocation(line: 1056, column: 50, scope: !2817)
!2824 = !DILocation(line: 1057, column: 26, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1057, column: 2)
!2826 = !DILocation(line: 1057, column: 17, scope: !2825)
!2827 = !DILocation(line: 1057, column: 21, scope: !2825)
!2828 = !DILocation(line: 1057, column: 4, scope: !2825)
!2829 = !DILocation(line: 1057, column: 24, scope: !2825)
!2830 = !DILocation(line: 1057, column: 35, scope: !2825)
!2831 = !DILocation(line: 1057, column: 39, scope: !2825)
!2832 = !DILocation(line: 1057, column: 41, scope: !2825)
!2833 = !DILocation(line: 1059, column: 12, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1059, column: 2)
!2835 = !DILocation(line: 1059, column: 16, scope: !2834)
!2836 = !DILocation(line: 1059, column: 4, scope: !2834)
!2837 = !DILocation(line: 1059, column: 45, scope: !2834)
!2838 = !DILocation(line: 1059, column: 49, scope: !2834)
!2839 = !DILocation(line: 1059, column: 51, scope: !2834)
!2840 = !DILocation(line: 1060, column: 17, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1060, column: 2)
!2842 = !DILocation(line: 1060, column: 21, scope: !2841)
!2843 = !DILocation(line: 1060, column: 4, scope: !2841)
!2844 = !DILocation(line: 1060, column: 24, scope: !2841)
!2845 = !DILocation(line: 1060, column: 31, scope: !2841)
!2846 = !DILocation(line: 1060, column: 35, scope: !2841)
!2847 = !DILocation(line: 1060, column: 37, scope: !2841)
!2848 = !DILocation(line: 1061, column: 12, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1061, column: 2)
!2850 = !DILocation(line: 1061, column: 16, scope: !2849)
!2851 = !DILocation(line: 1061, column: 4, scope: !2849)
!2852 = !DILocation(line: 1061, column: 25, scope: !2849)
!2853 = !DILocation(line: 1061, column: 29, scope: !2849)
!2854 = !DILocation(line: 1061, column: 31, scope: !2849)
!2855 = !DILocation(line: 1063, column: 35, scope: !2741)
!2856 = !DILocation(line: 1063, column: 2, scope: !2741)
!2857 = !DILocation(line: 1064, column: 34, scope: !2741)
!2858 = !DILocation(line: 1064, column: 2, scope: !2741)
!2859 = !DILocation(line: 1065, column: 33, scope: !2741)
!2860 = !DILocation(line: 1065, column: 2, scope: !2741)
!2861 = !DILocation(line: 1066, column: 6, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2741, file: !120, line: 1066, column: 6)
!2863 = !DILocation(line: 1066, column: 20, scope: !2862)
!2864 = !DILocation(line: 1066, column: 6, scope: !2741)
!2865 = !DILocation(line: 1068, column: 26, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !120, line: 1067, column: 2)
!2867 = !DILocation(line: 1068, column: 3, scope: !2866)
!2868 = !DILocation(line: 1069, column: 27, scope: !2866)
!2869 = !DILocation(line: 1069, column: 3, scope: !2866)
!2870 = !DILocation(line: 1070, column: 2, scope: !2866)
!2871 = !DILocation(line: 1073, column: 25, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !120, line: 1072, column: 2)
!2873 = !DILocation(line: 1073, column: 3, scope: !2872)
!2874 = !DILocation(line: 1074, column: 24, scope: !2872)
!2875 = !DILocation(line: 1074, column: 3, scope: !2872)
!2876 = !DILocation(line: 1076, column: 24, scope: !2741)
!2877 = !DILocation(line: 1076, column: 2, scope: !2741)
!2878 = !DILocation(line: 1077, column: 24, scope: !2741)
!2879 = !DILocation(line: 1077, column: 2, scope: !2741)
!2880 = !DILocation(line: 1078, column: 23, scope: !2741)
!2881 = !DILocation(line: 1078, column: 2, scope: !2741)
!2882 = !DILocation(line: 1079, column: 21, scope: !2741)
!2883 = !DILocation(line: 1079, column: 2, scope: !2741)
!2884 = !DILocation(line: 1080, column: 26, scope: !2741)
!2885 = !DILocation(line: 1080, column: 2, scope: !2741)
!2886 = !DILocation(line: 1082, column: 33, scope: !2741)
!2887 = !DILocation(line: 1082, column: 2, scope: !2741)
!2888 = !DILocation(line: 1083, column: 33, scope: !2741)
!2889 = !DILocation(line: 1083, column: 2, scope: !2741)
!2890 = !DILocation(line: 1084, column: 32, scope: !2741)
!2891 = !DILocation(line: 1084, column: 2, scope: !2741)
!2892 = !DILocation(line: 1085, column: 38, scope: !2741)
!2893 = !DILocation(line: 1085, column: 2, scope: !2741)
!2894 = !DILocation(line: 1086, column: 47, scope: !2741)
!2895 = !DILocation(line: 1086, column: 2, scope: !2741)
!2896 = !DILocation(line: 1087, column: 41, scope: !2741)
!2897 = !DILocation(line: 1087, column: 2, scope: !2741)
!2898 = !DILocation(line: 1089, column: 14, scope: !2741)
!2899 = !DILocation(line: 1089, column: 18, scope: !2741)
!2900 = !DILocation(line: 1089, column: 3, scope: !2741)
!2901 = !DILocation(line: 1089, column: 7, scope: !2741)
!2902 = !DILocation(line: 1089, column: 11, scope: !2741)
!2903 = !DILocation(line: 1090, column: 11, scope: !2741)
!2904 = !DILocation(line: 1090, column: 14, scope: !2741)
!2905 = !DILocation(line: 1090, column: 2, scope: !2741)
!2906 = !DILocation(line: 1091, column: 1, scope: !2741)
!2907 = distinct !DISubprogram(name: "rdp_send_synchronise", scope: !120, file: !120, line: 541, type: !2580, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2908 = !DILocalVariable(name: "s", scope: !2907, file: !120, line: 543, type: !127)
!2909 = !DILocation(line: 543, column: 9, scope: !2907)
!2910 = !DILocation(line: 545, column: 2, scope: !2907)
!2911 = !DILocation(line: 547, column: 6, scope: !2907)
!2912 = !DILocation(line: 547, column: 4, scope: !2907)
!2913 = !DILocation(line: 549, column: 17, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2907, file: !120, line: 549, column: 2)
!2915 = !DILocation(line: 549, column: 21, scope: !2914)
!2916 = !DILocation(line: 549, column: 4, scope: !2914)
!2917 = !DILocation(line: 549, column: 24, scope: !2914)
!2918 = !DILocation(line: 549, column: 30, scope: !2914)
!2919 = !DILocation(line: 549, column: 34, scope: !2914)
!2920 = !DILocation(line: 549, column: 36, scope: !2914)
!2921 = !DILocation(line: 550, column: 17, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2907, file: !120, line: 550, column: 2)
!2923 = !DILocation(line: 550, column: 21, scope: !2922)
!2924 = !DILocation(line: 550, column: 4, scope: !2922)
!2925 = !DILocation(line: 550, column: 24, scope: !2922)
!2926 = !DILocation(line: 550, column: 33, scope: !2922)
!2927 = !DILocation(line: 550, column: 37, scope: !2922)
!2928 = !DILocation(line: 550, column: 39, scope: !2922)
!2929 = !DILocation(line: 552, column: 14, scope: !2907)
!2930 = !DILocation(line: 552, column: 18, scope: !2907)
!2931 = !DILocation(line: 552, column: 3, scope: !2907)
!2932 = !DILocation(line: 552, column: 7, scope: !2907)
!2933 = !DILocation(line: 552, column: 11, scope: !2907)
!2934 = !DILocation(line: 553, column: 16, scope: !2907)
!2935 = !DILocation(line: 553, column: 2, scope: !2907)
!2936 = !DILocation(line: 554, column: 1, scope: !2907)
!2937 = distinct !DISubprogram(name: "rdp_send_control", scope: !120, file: !120, line: 525, type: !2938, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !102}
!2940 = !DILocalVariable(name: "action", arg: 1, scope: !2937, file: !120, line: 525, type: !102)
!2941 = !DILocation(line: 525, column: 25, scope: !2937)
!2942 = !DILocalVariable(name: "s", scope: !2937, file: !120, line: 527, type: !127)
!2943 = !DILocation(line: 527, column: 9, scope: !2937)
!2944 = !DILocation(line: 529, column: 6, scope: !2937)
!2945 = !DILocation(line: 529, column: 4, scope: !2937)
!2946 = !DILocation(line: 531, column: 26, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !120, line: 531, column: 2)
!2948 = !DILocation(line: 531, column: 17, scope: !2947)
!2949 = !DILocation(line: 531, column: 21, scope: !2947)
!2950 = !DILocation(line: 531, column: 4, scope: !2947)
!2951 = !DILocation(line: 531, column: 24, scope: !2947)
!2952 = !DILocation(line: 531, column: 35, scope: !2947)
!2953 = !DILocation(line: 531, column: 39, scope: !2947)
!2954 = !DILocation(line: 531, column: 41, scope: !2947)
!2955 = !DILocation(line: 532, column: 17, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2937, file: !120, line: 532, column: 2)
!2957 = !DILocation(line: 532, column: 21, scope: !2956)
!2958 = !DILocation(line: 532, column: 4, scope: !2956)
!2959 = !DILocation(line: 532, column: 24, scope: !2956)
!2960 = !DILocation(line: 532, column: 30, scope: !2956)
!2961 = !DILocation(line: 532, column: 34, scope: !2956)
!2962 = !DILocation(line: 532, column: 36, scope: !2956)
!2963 = !DILocation(line: 533, column: 17, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2937, file: !120, line: 533, column: 2)
!2965 = !DILocation(line: 533, column: 21, scope: !2964)
!2966 = !DILocation(line: 533, column: 4, scope: !2964)
!2967 = !DILocation(line: 533, column: 24, scope: !2964)
!2968 = !DILocation(line: 533, column: 30, scope: !2964)
!2969 = !DILocation(line: 533, column: 34, scope: !2964)
!2970 = !DILocation(line: 533, column: 36, scope: !2964)
!2971 = !DILocation(line: 535, column: 14, scope: !2937)
!2972 = !DILocation(line: 535, column: 18, scope: !2937)
!2973 = !DILocation(line: 535, column: 3, scope: !2937)
!2974 = !DILocation(line: 535, column: 7, scope: !2937)
!2975 = !DILocation(line: 535, column: 11, scope: !2937)
!2976 = !DILocation(line: 536, column: 16, scope: !2937)
!2977 = !DILocation(line: 536, column: 2, scope: !2937)
!2978 = !DILocation(line: 537, column: 1, scope: !2937)
!2979 = distinct !DISubprogram(name: "rdp_enum_bmpcache2", scope: !120, file: !120, line: 616, type: !2580, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!2980 = !DILocalVariable(name: "s", scope: !2979, file: !120, line: 618, type: !127)
!2981 = !DILocation(line: 618, column: 9, scope: !2979)
!2982 = !DILocalVariable(name: "keylist", scope: !2979, file: !120, line: 619, type: !2983)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 163200, align: 8, elements: !2988)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "HASH_KEY", file: !68, line: 172, baseType: !2985)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, align: 8, elements: !2986)
!2986 = !{!2987}
!2987 = !DISubrange(count: 8)
!2988 = !{!2989}
!2989 = !DISubrange(count: 2550)
!2990 = !DILocation(line: 619, column: 11, scope: !2979)
!2991 = !DILocalVariable(name: "num_keys", scope: !2979, file: !120, line: 620, type: !105)
!2992 = !DILocation(line: 620, column: 9, scope: !2979)
!2993 = !DILocalVariable(name: "offset", scope: !2979, file: !120, line: 620, type: !105)
!2994 = !DILocation(line: 620, column: 19, scope: !2979)
!2995 = !DILocalVariable(name: "count", scope: !2979, file: !120, line: 620, type: !105)
!2996 = !DILocation(line: 620, column: 27, scope: !2979)
!2997 = !DILocalVariable(name: "flags", scope: !2979, file: !120, line: 620, type: !105)
!2998 = !DILocation(line: 620, column: 34, scope: !2979)
!2999 = !DILocation(line: 622, column: 2, scope: !2979)
!3000 = !DILocation(line: 624, column: 9, scope: !2979)
!3001 = !DILocation(line: 625, column: 35, scope: !2979)
!3002 = !DILocation(line: 625, column: 13, scope: !2979)
!3003 = !DILocation(line: 625, column: 11, scope: !2979)
!3004 = !DILocation(line: 627, column: 2, scope: !2979)
!3005 = !DILocation(line: 627, column: 9, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !2979, file: !120, discriminator: 1)
!3007 = !DILocation(line: 627, column: 18, scope: !3006)
!3008 = !DILocation(line: 627, column: 16, scope: !3006)
!3009 = !DILocation(line: 627, column: 2, scope: !3006)
!3010 = !DILocation(line: 629, column: 14, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2979, file: !120, line: 628, column: 2)
!3012 = !DILocation(line: 629, column: 25, scope: !3011)
!3013 = !DILocation(line: 629, column: 23, scope: !3011)
!3014 = !DILocation(line: 629, column: 33, scope: !3011)
!3015 = !DILocation(line: 629, column: 12, scope: !3011)
!3016 = !DILocation(line: 629, column: 45, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3011, file: !120, discriminator: 1)
!3018 = !DILocation(line: 629, column: 56, scope: !3017)
!3019 = !DILocation(line: 629, column: 54, scope: !3017)
!3020 = !DILocation(line: 629, column: 12, scope: !3017)
!3021 = !DILocation(line: 629, column: 12, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3011, file: !120, discriminator: 2)
!3023 = !DILocation(line: 629, column: 12, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3011, file: !120, discriminator: 3)
!3025 = !DILocation(line: 629, column: 9, scope: !3024)
!3026 = !DILocation(line: 631, column: 26, scope: !3011)
!3027 = !DILocation(line: 631, column: 32, scope: !3011)
!3028 = !DILocation(line: 631, column: 24, scope: !3011)
!3029 = !DILocation(line: 631, column: 21, scope: !3011)
!3030 = !DILocation(line: 631, column: 7, scope: !3011)
!3031 = !DILocation(line: 631, column: 5, scope: !3011)
!3032 = !DILocation(line: 633, column: 9, scope: !3011)
!3033 = !DILocation(line: 634, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 634, column: 7)
!3035 = !DILocation(line: 634, column: 14, scope: !3034)
!3036 = !DILocation(line: 634, column: 7, scope: !3011)
!3037 = !DILocation(line: 635, column: 10, scope: !3034)
!3038 = !DILocation(line: 635, column: 4, scope: !3034)
!3039 = !DILocation(line: 636, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 636, column: 7)
!3041 = !DILocation(line: 636, column: 18, scope: !3040)
!3042 = !DILocation(line: 636, column: 16, scope: !3040)
!3043 = !DILocation(line: 636, column: 25, scope: !3040)
!3044 = !DILocation(line: 636, column: 7, scope: !3011)
!3045 = !DILocation(line: 637, column: 10, scope: !3040)
!3046 = !DILocation(line: 637, column: 4, scope: !3040)
!3047 = !DILocation(line: 640, column: 18, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 640, column: 3)
!3049 = !DILocation(line: 640, column: 22, scope: !3048)
!3050 = !DILocation(line: 640, column: 5, scope: !3048)
!3051 = !DILocation(line: 640, column: 25, scope: !3048)
!3052 = !DILocation(line: 640, column: 31, scope: !3048)
!3053 = !DILocation(line: 640, column: 35, scope: !3048)
!3054 = !DILocation(line: 640, column: 37, scope: !3048)
!3055 = !DILocation(line: 641, column: 27, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 641, column: 3)
!3057 = !DILocation(line: 641, column: 18, scope: !3056)
!3058 = !DILocation(line: 641, column: 22, scope: !3056)
!3059 = !DILocation(line: 641, column: 5, scope: !3056)
!3060 = !DILocation(line: 641, column: 25, scope: !3056)
!3061 = !DILocation(line: 641, column: 35, scope: !3056)
!3062 = !DILocation(line: 641, column: 39, scope: !3056)
!3063 = !DILocation(line: 641, column: 41, scope: !3056)
!3064 = !DILocation(line: 642, column: 18, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 642, column: 3)
!3066 = !DILocation(line: 642, column: 22, scope: !3065)
!3067 = !DILocation(line: 642, column: 5, scope: !3065)
!3068 = !DILocation(line: 642, column: 25, scope: !3065)
!3069 = !DILocation(line: 642, column: 31, scope: !3065)
!3070 = !DILocation(line: 642, column: 35, scope: !3065)
!3071 = !DILocation(line: 642, column: 37, scope: !3065)
!3072 = !DILocation(line: 643, column: 18, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 643, column: 3)
!3074 = !DILocation(line: 643, column: 22, scope: !3073)
!3075 = !DILocation(line: 643, column: 5, scope: !3073)
!3076 = !DILocation(line: 643, column: 25, scope: !3073)
!3077 = !DILocation(line: 643, column: 31, scope: !3073)
!3078 = !DILocation(line: 643, column: 35, scope: !3073)
!3079 = !DILocation(line: 643, column: 37, scope: !3073)
!3080 = !DILocation(line: 644, column: 18, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 644, column: 3)
!3082 = !DILocation(line: 644, column: 22, scope: !3081)
!3083 = !DILocation(line: 644, column: 5, scope: !3081)
!3084 = !DILocation(line: 644, column: 25, scope: !3081)
!3085 = !DILocation(line: 644, column: 31, scope: !3081)
!3086 = !DILocation(line: 644, column: 35, scope: !3081)
!3087 = !DILocation(line: 644, column: 37, scope: !3081)
!3088 = !DILocation(line: 645, column: 18, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 645, column: 3)
!3090 = !DILocation(line: 645, column: 22, scope: !3089)
!3091 = !DILocation(line: 645, column: 5, scope: !3089)
!3092 = !DILocation(line: 645, column: 25, scope: !3089)
!3093 = !DILocation(line: 645, column: 31, scope: !3089)
!3094 = !DILocation(line: 645, column: 35, scope: !3089)
!3095 = !DILocation(line: 645, column: 37, scope: !3089)
!3096 = !DILocation(line: 646, column: 27, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 646, column: 3)
!3098 = !DILocation(line: 646, column: 18, scope: !3097)
!3099 = !DILocation(line: 646, column: 22, scope: !3097)
!3100 = !DILocation(line: 646, column: 5, scope: !3097)
!3101 = !DILocation(line: 646, column: 25, scope: !3097)
!3102 = !DILocation(line: 646, column: 38, scope: !3097)
!3103 = !DILocation(line: 646, column: 42, scope: !3097)
!3104 = !DILocation(line: 646, column: 44, scope: !3097)
!3105 = !DILocation(line: 647, column: 18, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 647, column: 3)
!3107 = !DILocation(line: 647, column: 22, scope: !3106)
!3108 = !DILocation(line: 647, column: 5, scope: !3106)
!3109 = !DILocation(line: 647, column: 25, scope: !3106)
!3110 = !DILocation(line: 647, column: 31, scope: !3106)
!3111 = !DILocation(line: 647, column: 35, scope: !3106)
!3112 = !DILocation(line: 647, column: 37, scope: !3106)
!3113 = !DILocation(line: 648, column: 27, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 648, column: 3)
!3115 = !DILocation(line: 648, column: 18, scope: !3114)
!3116 = !DILocation(line: 648, column: 22, scope: !3114)
!3117 = !DILocation(line: 648, column: 5, scope: !3114)
!3118 = !DILocation(line: 648, column: 25, scope: !3114)
!3119 = !DILocation(line: 648, column: 35, scope: !3114)
!3120 = !DILocation(line: 648, column: 39, scope: !3114)
!3121 = !DILocation(line: 648, column: 41, scope: !3114)
!3122 = !DILocation(line: 651, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3011, file: !120, line: 651, column: 3)
!3124 = !DILocation(line: 651, column: 17, scope: !3123)
!3125 = !DILocation(line: 651, column: 27, scope: !3123)
!3126 = !DILocation(line: 651, column: 19, scope: !3123)
!3127 = !DILocation(line: 651, column: 5, scope: !3123)
!3128 = !DILocation(line: 651, column: 35, scope: !3123)
!3129 = !DILocation(line: 651, column: 41, scope: !3123)
!3130 = !DILocation(line: 651, column: 72, scope: !3123)
!3131 = !DILocation(line: 651, column: 78, scope: !3123)
!3132 = !DILocation(line: 651, column: 63, scope: !3123)
!3133 = !DILocation(line: 651, column: 67, scope: !3123)
!3134 = !DILocation(line: 651, column: 69, scope: !3123)
!3135 = !DILocation(line: 653, column: 15, scope: !3011)
!3136 = !DILocation(line: 653, column: 19, scope: !3011)
!3137 = !DILocation(line: 653, column: 4, scope: !3011)
!3138 = !DILocation(line: 653, column: 8, scope: !3011)
!3139 = !DILocation(line: 653, column: 12, scope: !3011)
!3140 = !DILocation(line: 654, column: 17, scope: !3011)
!3141 = !DILocation(line: 654, column: 3, scope: !3011)
!3142 = !DILocation(line: 656, column: 10, scope: !3011)
!3143 = !DILocation(line: 627, column: 2, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !2979, file: !120, discriminator: 2)
!3145 = distinct !{!3145, !3004}
!3146 = !DILocation(line: 658, column: 1, scope: !2979)
!3147 = distinct !DISubprogram(name: "rdp_send_fonts", scope: !120, file: !120, line: 662, type: !2938, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3148 = !DILocalVariable(name: "seq", arg: 1, scope: !3147, file: !120, line: 662, type: !102)
!3149 = !DILocation(line: 662, column: 23, scope: !3147)
!3150 = !DILocalVariable(name: "s", scope: !3147, file: !120, line: 664, type: !127)
!3151 = !DILocation(line: 664, column: 9, scope: !3147)
!3152 = !DILocation(line: 666, column: 2, scope: !3147)
!3153 = !DILocation(line: 668, column: 6, scope: !3147)
!3154 = !DILocation(line: 668, column: 4, scope: !3147)
!3155 = !DILocation(line: 670, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3147, file: !120, line: 670, column: 2)
!3157 = !DILocation(line: 670, column: 21, scope: !3156)
!3158 = !DILocation(line: 670, column: 4, scope: !3156)
!3159 = !DILocation(line: 670, column: 24, scope: !3156)
!3160 = !DILocation(line: 670, column: 30, scope: !3156)
!3161 = !DILocation(line: 670, column: 34, scope: !3156)
!3162 = !DILocation(line: 670, column: 36, scope: !3156)
!3163 = !DILocation(line: 671, column: 17, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3147, file: !120, line: 671, column: 2)
!3165 = !DILocation(line: 671, column: 21, scope: !3164)
!3166 = !DILocation(line: 671, column: 4, scope: !3164)
!3167 = !DILocation(line: 671, column: 24, scope: !3164)
!3168 = !DILocation(line: 671, column: 30, scope: !3164)
!3169 = !DILocation(line: 671, column: 34, scope: !3164)
!3170 = !DILocation(line: 671, column: 36, scope: !3164)
!3171 = !DILocation(line: 672, column: 26, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3147, file: !120, line: 672, column: 2)
!3173 = !DILocation(line: 672, column: 17, scope: !3172)
!3174 = !DILocation(line: 672, column: 21, scope: !3172)
!3175 = !DILocation(line: 672, column: 4, scope: !3172)
!3176 = !DILocation(line: 672, column: 24, scope: !3172)
!3177 = !DILocation(line: 672, column: 32, scope: !3172)
!3178 = !DILocation(line: 672, column: 36, scope: !3172)
!3179 = !DILocation(line: 672, column: 38, scope: !3172)
!3180 = !DILocation(line: 673, column: 17, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3147, file: !120, line: 673, column: 2)
!3182 = !DILocation(line: 673, column: 21, scope: !3181)
!3183 = !DILocation(line: 673, column: 4, scope: !3181)
!3184 = !DILocation(line: 673, column: 24, scope: !3181)
!3185 = !DILocation(line: 673, column: 33, scope: !3181)
!3186 = !DILocation(line: 673, column: 37, scope: !3181)
!3187 = !DILocation(line: 673, column: 39, scope: !3181)
!3188 = !DILocation(line: 675, column: 14, scope: !3147)
!3189 = !DILocation(line: 675, column: 18, scope: !3147)
!3190 = !DILocation(line: 675, column: 3, scope: !3147)
!3191 = !DILocation(line: 675, column: 7, scope: !3147)
!3192 = !DILocation(line: 675, column: 11, scope: !3147)
!3193 = !DILocation(line: 676, column: 16, scope: !3147)
!3194 = !DILocation(line: 676, column: 2, scope: !3147)
!3195 = !DILocation(line: 677, column: 1, scope: !3147)
!3196 = distinct !DISubprogram(name: "rdp_process_general_caps", scope: !120, file: !120, line: 1095, type: !552, isLocal: true, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3197 = !DILocalVariable(name: "s", arg: 1, scope: !3196, file: !120, line: 1095, type: !127)
!3198 = !DILocation(line: 1095, column: 33, scope: !3196)
!3199 = !DILocalVariable(name: "pad2octetsB", scope: !3196, file: !120, line: 1097, type: !102)
!3200 = !DILocation(line: 1097, column: 9, scope: !3196)
!3201 = !DILocation(line: 1099, column: 2, scope: !3196)
!3202 = !DILocation(line: 1101, column: 3, scope: !3196)
!3203 = !DILocation(line: 1101, column: 7, scope: !3196)
!3204 = !DILocation(line: 1101, column: 9, scope: !3196)
!3205 = !DILocation(line: 1102, column: 31, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3196, file: !120, line: 1102, column: 2)
!3207 = !DILocation(line: 1102, column: 35, scope: !3206)
!3208 = !DILocation(line: 1102, column: 18, scope: !3206)
!3209 = !DILocation(line: 1102, column: 16, scope: !3206)
!3210 = !DILocation(line: 1102, column: 40, scope: !3206)
!3211 = !DILocation(line: 1102, column: 44, scope: !3206)
!3212 = !DILocation(line: 1102, column: 46, scope: !3206)
!3213 = !DILocation(line: 1104, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3196, file: !120, line: 1104, column: 6)
!3215 = !DILocation(line: 1104, column: 6, scope: !3196)
!3216 = !DILocation(line: 1105, column: 17, scope: !3214)
!3217 = !DILocation(line: 1105, column: 3, scope: !3214)
!3218 = !DILocation(line: 1106, column: 1, scope: !3196)
!3219 = distinct !DISubprogram(name: "rdp_process_bitmap_caps", scope: !120, file: !120, line: 1112, type: !552, isLocal: true, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3220 = !DILocalVariable(name: "s", arg: 1, scope: !3219, file: !120, line: 1112, type: !127)
!3221 = !DILocation(line: 1112, column: 32, scope: !3219)
!3222 = !DILocalVariable(name: "depth", scope: !3219, file: !120, line: 1115, type: !102)
!3223 = !DILocation(line: 1115, column: 9, scope: !3219)
!3224 = !DILocation(line: 1117, column: 2, scope: !3219)
!3225 = !DILocation(line: 1119, column: 25, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1119, column: 2)
!3227 = !DILocation(line: 1119, column: 29, scope: !3226)
!3228 = !DILocation(line: 1119, column: 12, scope: !3226)
!3229 = !DILocation(line: 1119, column: 10, scope: !3226)
!3230 = !DILocation(line: 1119, column: 34, scope: !3226)
!3231 = !DILocation(line: 1119, column: 38, scope: !3226)
!3232 = !DILocation(line: 1119, column: 40, scope: !3226)
!3233 = !DILocation(line: 1120, column: 3, scope: !3219)
!3234 = !DILocation(line: 1120, column: 7, scope: !3219)
!3235 = !DILocation(line: 1120, column: 9, scope: !3219)
!3236 = !DILocation(line: 1122, column: 35, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1122, column: 2)
!3238 = !DILocation(line: 1122, column: 39, scope: !3237)
!3239 = !DILocation(line: 1122, column: 22, scope: !3237)
!3240 = !DILocation(line: 1122, column: 20, scope: !3237)
!3241 = !DILocation(line: 1122, column: 44, scope: !3237)
!3242 = !DILocation(line: 1122, column: 48, scope: !3237)
!3243 = !DILocation(line: 1122, column: 50, scope: !3237)
!3244 = !DILocation(line: 1123, column: 36, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1123, column: 2)
!3246 = !DILocation(line: 1123, column: 40, scope: !3245)
!3247 = !DILocation(line: 1123, column: 23, scope: !3245)
!3248 = !DILocation(line: 1123, column: 21, scope: !3245)
!3249 = !DILocation(line: 1123, column: 45, scope: !3245)
!3250 = !DILocation(line: 1123, column: 49, scope: !3245)
!3251 = !DILocation(line: 1123, column: 51, scope: !3245)
!3252 = !DILocation(line: 1127, column: 9, scope: !3219)
!3253 = !DILocation(line: 1127, column: 26, scope: !3219)
!3254 = !DILocation(line: 1127, column: 44, scope: !3219)
!3255 = !DILocation(line: 1125, column: 2, scope: !3219)
!3256 = !DILocation(line: 1130, column: 6, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1130, column: 6)
!3258 = !DILocation(line: 1130, column: 26, scope: !3257)
!3259 = !DILocation(line: 1130, column: 33, scope: !3257)
!3260 = !DILocation(line: 1130, column: 38, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3257, file: !120, discriminator: 1)
!3262 = !DILocation(line: 1130, column: 57, scope: !3261)
!3263 = !DILocation(line: 1130, column: 54, scope: !3261)
!3264 = !DILocation(line: 1131, column: 10, scope: !3257)
!3265 = !DILocation(line: 1131, column: 13, scope: !3261)
!3266 = !DILocation(line: 1131, column: 33, scope: !3261)
!3267 = !DILocation(line: 1131, column: 30, scope: !3261)
!3268 = !DILocation(line: 1130, column: 6, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3219, file: !120, discriminator: 2)
!3270 = !DILocation(line: 1133, column: 3, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3257, file: !120, line: 1132, column: 2)
!3272 = !DILocation(line: 1134, column: 28, scope: !3271)
!3273 = !DILocation(line: 1135, column: 2, scope: !3271)
!3274 = !DILocation(line: 1136, column: 22, scope: !3219)
!3275 = !DILocation(line: 1142, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1142, column: 6)
!3277 = !DILocation(line: 1142, column: 24, scope: !3276)
!3278 = !DILocation(line: 1142, column: 21, scope: !3276)
!3279 = !DILocation(line: 1142, column: 6, scope: !3219)
!3280 = !DILocation(line: 1146, column: 10, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !120, line: 1143, column: 2)
!3282 = !DILocation(line: 1146, column: 26, scope: !3281)
!3283 = !DILocation(line: 1144, column: 3, scope: !3281)
!3284 = !DILocation(line: 1147, column: 20, scope: !3281)
!3285 = !DILocation(line: 1147, column: 18, scope: !3281)
!3286 = !DILocation(line: 1148, column: 2, scope: !3281)
!3287 = !DILocation(line: 1154, column: 6, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1154, column: 6)
!3289 = !DILocation(line: 1154, column: 19, scope: !3288)
!3290 = !DILocation(line: 1154, column: 6, scope: !3219)
!3291 = !DILocation(line: 1155, column: 3, scope: !3288)
!3292 = !DILocation(line: 1159, column: 6, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3219, file: !120, line: 1159, column: 6)
!3294 = !DILocation(line: 1159, column: 31, scope: !3293)
!3295 = !DILocation(line: 1159, column: 6, scope: !3219)
!3296 = !DILocation(line: 1161, column: 30, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !120, line: 1160, column: 2)
!3298 = !DILocation(line: 1161, column: 47, scope: !3297)
!3299 = !DILocation(line: 1161, column: 3, scope: !3297)
!3300 = !DILocation(line: 1162, column: 3, scope: !3297)
!3301 = !DILocation(line: 1165, column: 19, scope: !3219)
!3302 = !DILocation(line: 1165, column: 36, scope: !3219)
!3303 = !DILocation(line: 1165, column: 2, scope: !3219)
!3304 = !DILocation(line: 1166, column: 1, scope: !3219)
!3305 = !DILocation(line: 1166, column: 1, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3219, file: !120, discriminator: 1)
!3307 = distinct !DISubprogram(name: "rdp_out_ts_general_capabilityset", scope: !120, file: !120, line: 681, type: !552, isLocal: true, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3307, file: !120, line: 681, type: !127)
!3309 = !DILocation(line: 681, column: 41, scope: !3307)
!3310 = !DILocalVariable(name: "extraFlags", scope: !3307, file: !120, line: 683, type: !102)
!3311 = !DILocation(line: 683, column: 9, scope: !3307)
!3312 = !DILocation(line: 684, column: 6, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 684, column: 6)
!3314 = !DILocation(line: 684, column: 20, scope: !3313)
!3315 = !DILocation(line: 684, column: 6, scope: !3307)
!3316 = !DILocation(line: 686, column: 14, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !120, line: 685, column: 2)
!3318 = !DILocation(line: 687, column: 14, scope: !3317)
!3319 = !DILocation(line: 688, column: 14, scope: !3317)
!3320 = !DILocation(line: 689, column: 14, scope: !3317)
!3321 = !DILocation(line: 690, column: 2, scope: !3317)
!3322 = !DILocation(line: 692, column: 17, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 692, column: 2)
!3324 = !DILocation(line: 692, column: 21, scope: !3323)
!3325 = !DILocation(line: 692, column: 4, scope: !3323)
!3326 = !DILocation(line: 692, column: 24, scope: !3323)
!3327 = !DILocation(line: 692, column: 30, scope: !3323)
!3328 = !DILocation(line: 692, column: 34, scope: !3323)
!3329 = !DILocation(line: 692, column: 36, scope: !3323)
!3330 = !DILocation(line: 693, column: 17, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 693, column: 2)
!3332 = !DILocation(line: 693, column: 21, scope: !3331)
!3333 = !DILocation(line: 693, column: 4, scope: !3331)
!3334 = !DILocation(line: 693, column: 24, scope: !3331)
!3335 = !DILocation(line: 693, column: 33, scope: !3331)
!3336 = !DILocation(line: 693, column: 37, scope: !3331)
!3337 = !DILocation(line: 693, column: 39, scope: !3331)
!3338 = !DILocation(line: 694, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 694, column: 2)
!3340 = !DILocation(line: 694, column: 21, scope: !3339)
!3341 = !DILocation(line: 694, column: 4, scope: !3339)
!3342 = !DILocation(line: 694, column: 24, scope: !3339)
!3343 = !DILocation(line: 694, column: 35, scope: !3339)
!3344 = !DILocation(line: 694, column: 39, scope: !3339)
!3345 = !DILocation(line: 694, column: 41, scope: !3339)
!3346 = !DILocation(line: 695, column: 17, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 695, column: 2)
!3348 = !DILocation(line: 695, column: 21, scope: !3347)
!3349 = !DILocation(line: 695, column: 4, scope: !3347)
!3350 = !DILocation(line: 695, column: 24, scope: !3347)
!3351 = !DILocation(line: 695, column: 35, scope: !3347)
!3352 = !DILocation(line: 695, column: 39, scope: !3347)
!3353 = !DILocation(line: 695, column: 41, scope: !3347)
!3354 = !DILocation(line: 696, column: 17, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 696, column: 2)
!3356 = !DILocation(line: 696, column: 21, scope: !3355)
!3357 = !DILocation(line: 696, column: 4, scope: !3355)
!3358 = !DILocation(line: 696, column: 24, scope: !3355)
!3359 = !DILocation(line: 696, column: 35, scope: !3355)
!3360 = !DILocation(line: 696, column: 39, scope: !3355)
!3361 = !DILocation(line: 696, column: 41, scope: !3355)
!3362 = !DILocation(line: 697, column: 17, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 697, column: 2)
!3364 = !DILocation(line: 697, column: 21, scope: !3363)
!3365 = !DILocation(line: 697, column: 4, scope: !3363)
!3366 = !DILocation(line: 697, column: 24, scope: !3363)
!3367 = !DILocation(line: 697, column: 30, scope: !3363)
!3368 = !DILocation(line: 697, column: 34, scope: !3363)
!3369 = !DILocation(line: 697, column: 36, scope: !3363)
!3370 = !DILocation(line: 698, column: 17, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 698, column: 2)
!3372 = !DILocation(line: 698, column: 21, scope: !3371)
!3373 = !DILocation(line: 698, column: 4, scope: !3371)
!3374 = !DILocation(line: 698, column: 24, scope: !3371)
!3375 = !DILocation(line: 698, column: 30, scope: !3371)
!3376 = !DILocation(line: 698, column: 34, scope: !3371)
!3377 = !DILocation(line: 698, column: 36, scope: !3371)
!3378 = !DILocation(line: 699, column: 26, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 699, column: 2)
!3380 = !DILocation(line: 699, column: 17, scope: !3379)
!3381 = !DILocation(line: 699, column: 21, scope: !3379)
!3382 = !DILocation(line: 699, column: 4, scope: !3379)
!3383 = !DILocation(line: 699, column: 24, scope: !3379)
!3384 = !DILocation(line: 699, column: 39, scope: !3379)
!3385 = !DILocation(line: 699, column: 43, scope: !3379)
!3386 = !DILocation(line: 699, column: 45, scope: !3379)
!3387 = !DILocation(line: 700, column: 17, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 700, column: 2)
!3389 = !DILocation(line: 700, column: 21, scope: !3388)
!3390 = !DILocation(line: 700, column: 4, scope: !3388)
!3391 = !DILocation(line: 700, column: 24, scope: !3388)
!3392 = !DILocation(line: 700, column: 30, scope: !3388)
!3393 = !DILocation(line: 700, column: 34, scope: !3388)
!3394 = !DILocation(line: 700, column: 36, scope: !3388)
!3395 = !DILocation(line: 701, column: 17, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 701, column: 2)
!3397 = !DILocation(line: 701, column: 21, scope: !3396)
!3398 = !DILocation(line: 701, column: 4, scope: !3396)
!3399 = !DILocation(line: 701, column: 24, scope: !3396)
!3400 = !DILocation(line: 701, column: 30, scope: !3396)
!3401 = !DILocation(line: 701, column: 34, scope: !3396)
!3402 = !DILocation(line: 701, column: 36, scope: !3396)
!3403 = !DILocation(line: 702, column: 17, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3307, file: !120, line: 702, column: 2)
!3405 = !DILocation(line: 702, column: 21, scope: !3404)
!3406 = !DILocation(line: 702, column: 4, scope: !3404)
!3407 = !DILocation(line: 702, column: 24, scope: !3404)
!3408 = !DILocation(line: 702, column: 30, scope: !3404)
!3409 = !DILocation(line: 702, column: 34, scope: !3404)
!3410 = !DILocation(line: 702, column: 36, scope: !3404)
!3411 = !DILocation(line: 703, column: 5, scope: !3307)
!3412 = !DILocation(line: 703, column: 9, scope: !3307)
!3413 = !DILocation(line: 703, column: 10, scope: !3307)
!3414 = !DILocation(line: 703, column: 14, scope: !3307)
!3415 = !DILocation(line: 704, column: 5, scope: !3307)
!3416 = !DILocation(line: 704, column: 9, scope: !3307)
!3417 = !DILocation(line: 704, column: 10, scope: !3307)
!3418 = !DILocation(line: 704, column: 14, scope: !3307)
!3419 = !DILocation(line: 705, column: 1, scope: !3307)
!3420 = distinct !DISubprogram(name: "rdp_out_ts_bitmap_capabilityset", scope: !120, file: !120, line: 709, type: !552, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3421 = !DILocalVariable(name: "s", arg: 1, scope: !3420, file: !120, line: 709, type: !127)
!3422 = !DILocation(line: 709, column: 40, scope: !3420)
!3423 = !DILocation(line: 712, column: 9, scope: !3420)
!3424 = !DILocation(line: 712, column: 26, scope: !3420)
!3425 = !DILocation(line: 711, column: 2, scope: !3420)
!3426 = !DILocation(line: 713, column: 17, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 713, column: 2)
!3428 = !DILocation(line: 713, column: 21, scope: !3427)
!3429 = !DILocation(line: 713, column: 4, scope: !3427)
!3430 = !DILocation(line: 713, column: 24, scope: !3427)
!3431 = !DILocation(line: 713, column: 30, scope: !3427)
!3432 = !DILocation(line: 713, column: 34, scope: !3427)
!3433 = !DILocation(line: 713, column: 36, scope: !3427)
!3434 = !DILocation(line: 714, column: 17, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 714, column: 2)
!3436 = !DILocation(line: 714, column: 21, scope: !3435)
!3437 = !DILocation(line: 714, column: 4, scope: !3435)
!3438 = !DILocation(line: 714, column: 24, scope: !3435)
!3439 = !DILocation(line: 714, column: 33, scope: !3435)
!3440 = !DILocation(line: 714, column: 37, scope: !3435)
!3441 = !DILocation(line: 714, column: 39, scope: !3435)
!3442 = !DILocation(line: 715, column: 26, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 715, column: 2)
!3444 = !DILocation(line: 715, column: 17, scope: !3443)
!3445 = !DILocation(line: 715, column: 21, scope: !3443)
!3446 = !DILocation(line: 715, column: 4, scope: !3443)
!3447 = !DILocation(line: 715, column: 24, scope: !3443)
!3448 = !DILocation(line: 715, column: 43, scope: !3443)
!3449 = !DILocation(line: 715, column: 47, scope: !3443)
!3450 = !DILocation(line: 715, column: 49, scope: !3443)
!3451 = !DILocation(line: 716, column: 17, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 716, column: 2)
!3453 = !DILocation(line: 716, column: 21, scope: !3452)
!3454 = !DILocation(line: 716, column: 4, scope: !3452)
!3455 = !DILocation(line: 716, column: 24, scope: !3452)
!3456 = !DILocation(line: 716, column: 30, scope: !3452)
!3457 = !DILocation(line: 716, column: 34, scope: !3452)
!3458 = !DILocation(line: 716, column: 36, scope: !3452)
!3459 = !DILocation(line: 717, column: 17, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 717, column: 2)
!3461 = !DILocation(line: 717, column: 21, scope: !3460)
!3462 = !DILocation(line: 717, column: 4, scope: !3460)
!3463 = !DILocation(line: 717, column: 24, scope: !3460)
!3464 = !DILocation(line: 717, column: 30, scope: !3460)
!3465 = !DILocation(line: 717, column: 34, scope: !3460)
!3466 = !DILocation(line: 717, column: 36, scope: !3460)
!3467 = !DILocation(line: 718, column: 17, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 718, column: 2)
!3469 = !DILocation(line: 718, column: 21, scope: !3468)
!3470 = !DILocation(line: 718, column: 4, scope: !3468)
!3471 = !DILocation(line: 718, column: 24, scope: !3468)
!3472 = !DILocation(line: 718, column: 30, scope: !3468)
!3473 = !DILocation(line: 718, column: 34, scope: !3468)
!3474 = !DILocation(line: 718, column: 36, scope: !3468)
!3475 = !DILocation(line: 719, column: 26, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 719, column: 2)
!3477 = !DILocation(line: 719, column: 17, scope: !3476)
!3478 = !DILocation(line: 719, column: 21, scope: !3476)
!3479 = !DILocation(line: 719, column: 4, scope: !3476)
!3480 = !DILocation(line: 719, column: 24, scope: !3476)
!3481 = !DILocation(line: 719, column: 44, scope: !3476)
!3482 = !DILocation(line: 719, column: 48, scope: !3476)
!3483 = !DILocation(line: 719, column: 50, scope: !3476)
!3484 = !DILocation(line: 720, column: 26, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 720, column: 2)
!3486 = !DILocation(line: 720, column: 17, scope: !3485)
!3487 = !DILocation(line: 720, column: 21, scope: !3485)
!3488 = !DILocation(line: 720, column: 4, scope: !3485)
!3489 = !DILocation(line: 720, column: 24, scope: !3485)
!3490 = !DILocation(line: 720, column: 45, scope: !3485)
!3491 = !DILocation(line: 720, column: 49, scope: !3485)
!3492 = !DILocation(line: 720, column: 51, scope: !3485)
!3493 = !DILocation(line: 721, column: 17, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 721, column: 2)
!3495 = !DILocation(line: 721, column: 21, scope: !3494)
!3496 = !DILocation(line: 721, column: 4, scope: !3494)
!3497 = !DILocation(line: 721, column: 24, scope: !3494)
!3498 = !DILocation(line: 721, column: 30, scope: !3494)
!3499 = !DILocation(line: 721, column: 34, scope: !3494)
!3500 = !DILocation(line: 721, column: 36, scope: !3494)
!3501 = !DILocation(line: 722, column: 17, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 722, column: 2)
!3503 = !DILocation(line: 722, column: 21, scope: !3502)
!3504 = !DILocation(line: 722, column: 4, scope: !3502)
!3505 = !DILocation(line: 722, column: 24, scope: !3502)
!3506 = !DILocation(line: 722, column: 30, scope: !3502)
!3507 = !DILocation(line: 722, column: 34, scope: !3502)
!3508 = !DILocation(line: 722, column: 36, scope: !3502)
!3509 = !DILocation(line: 723, column: 17, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 723, column: 2)
!3511 = !DILocation(line: 723, column: 21, scope: !3510)
!3512 = !DILocation(line: 723, column: 4, scope: !3510)
!3513 = !DILocation(line: 723, column: 24, scope: !3510)
!3514 = !DILocation(line: 723, column: 30, scope: !3510)
!3515 = !DILocation(line: 723, column: 34, scope: !3510)
!3516 = !DILocation(line: 723, column: 36, scope: !3510)
!3517 = !DILocation(line: 724, column: 5, scope: !3420)
!3518 = !DILocation(line: 724, column: 9, scope: !3420)
!3519 = !DILocation(line: 724, column: 10, scope: !3420)
!3520 = !DILocation(line: 724, column: 14, scope: !3420)
!3521 = !DILocation(line: 725, column: 5, scope: !3420)
!3522 = !DILocation(line: 725, column: 9, scope: !3420)
!3523 = !DILocation(line: 725, column: 10, scope: !3420)
!3524 = !DILocation(line: 725, column: 14, scope: !3420)
!3525 = !DILocation(line: 726, column: 17, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 726, column: 2)
!3527 = !DILocation(line: 726, column: 21, scope: !3526)
!3528 = !DILocation(line: 726, column: 4, scope: !3526)
!3529 = !DILocation(line: 726, column: 24, scope: !3526)
!3530 = !DILocation(line: 726, column: 30, scope: !3526)
!3531 = !DILocation(line: 726, column: 34, scope: !3526)
!3532 = !DILocation(line: 726, column: 36, scope: !3526)
!3533 = !DILocation(line: 727, column: 17, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3420, file: !120, line: 727, column: 2)
!3535 = !DILocation(line: 727, column: 21, scope: !3534)
!3536 = !DILocation(line: 727, column: 4, scope: !3534)
!3537 = !DILocation(line: 727, column: 24, scope: !3534)
!3538 = !DILocation(line: 727, column: 30, scope: !3534)
!3539 = !DILocation(line: 727, column: 34, scope: !3534)
!3540 = !DILocation(line: 727, column: 36, scope: !3534)
!3541 = !DILocation(line: 728, column: 1, scope: !3420)
!3542 = distinct !DISubprogram(name: "rdp_out_ts_order_capabilityset", scope: !120, file: !120, line: 732, type: !552, isLocal: true, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3543 = !DILocalVariable(name: "s", arg: 1, scope: !3542, file: !120, line: 732, type: !127)
!3544 = !DILocation(line: 732, column: 39, scope: !3542)
!3545 = !DILocalVariable(name: "order_caps", scope: !3542, file: !120, line: 734, type: !3546)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, align: 8, elements: !3547)
!3547 = !{!3548}
!3548 = !DISubrange(count: 32)
!3549 = !DILocation(line: 734, column: 8, scope: !3542)
!3550 = !DILocalVariable(name: "orderflags", scope: !3542, file: !120, line: 735, type: !102)
!3551 = !DILocation(line: 735, column: 9, scope: !3542)
!3552 = !DILocalVariable(name: "cachesize", scope: !3542, file: !120, line: 736, type: !105)
!3553 = !DILocation(line: 736, column: 9, scope: !3542)
!3554 = !DILocation(line: 738, column: 13, scope: !3542)
!3555 = !DILocation(line: 739, column: 13, scope: !3542)
!3556 = !DILocation(line: 741, column: 2, scope: !3542)
!3557 = !DILocation(line: 743, column: 2, scope: !3542)
!3558 = !DILocation(line: 743, column: 19, scope: !3542)
!3559 = !DILocation(line: 744, column: 2, scope: !3542)
!3560 = !DILocation(line: 744, column: 19, scope: !3542)
!3561 = !DILocation(line: 745, column: 2, scope: !3542)
!3562 = !DILocation(line: 745, column: 19, scope: !3542)
!3563 = !DILocation(line: 746, column: 2, scope: !3542)
!3564 = !DILocation(line: 746, column: 19, scope: !3542)
!3565 = !DILocation(line: 747, column: 2, scope: !3542)
!3566 = !DILocation(line: 747, column: 19, scope: !3542)
!3567 = !DILocation(line: 748, column: 2, scope: !3542)
!3568 = !DILocation(line: 748, column: 19, scope: !3542)
!3569 = !DILocation(line: 749, column: 2, scope: !3542)
!3570 = !DILocation(line: 749, column: 19, scope: !3542)
!3571 = !DILocation(line: 751, column: 6, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 751, column: 6)
!3573 = !DILocation(line: 751, column: 6, scope: !3542)
!3574 = !DILocation(line: 752, column: 3, scope: !3572)
!3575 = !DILocation(line: 752, column: 20, scope: !3572)
!3576 = !DILocation(line: 754, column: 6, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 754, column: 6)
!3578 = !DILocation(line: 754, column: 6, scope: !3542)
!3579 = !DILocation(line: 756, column: 13, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !120, line: 755, column: 2)
!3581 = !DILocation(line: 757, column: 3, scope: !3580)
!3582 = !DILocation(line: 757, column: 20, scope: !3580)
!3583 = !DILocation(line: 758, column: 2, scope: !3580)
!3584 = !DILocation(line: 760, column: 6, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 760, column: 6)
!3586 = !DILocation(line: 760, column: 6, scope: !3542)
!3587 = !DILocation(line: 762, column: 3, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3585, file: !120, line: 761, column: 2)
!3589 = !DILocation(line: 762, column: 20, scope: !3588)
!3590 = !DILocation(line: 763, column: 3, scope: !3588)
!3591 = !DILocation(line: 763, column: 20, scope: !3588)
!3592 = !DILocation(line: 764, column: 3, scope: !3588)
!3593 = !DILocation(line: 764, column: 20, scope: !3588)
!3594 = !DILocation(line: 765, column: 3, scope: !3588)
!3595 = !DILocation(line: 765, column: 20, scope: !3588)
!3596 = !DILocation(line: 766, column: 2, scope: !3588)
!3597 = !DILocation(line: 768, column: 17, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 768, column: 2)
!3599 = !DILocation(line: 768, column: 21, scope: !3598)
!3600 = !DILocation(line: 768, column: 4, scope: !3598)
!3601 = !DILocation(line: 768, column: 24, scope: !3598)
!3602 = !DILocation(line: 768, column: 30, scope: !3598)
!3603 = !DILocation(line: 768, column: 34, scope: !3598)
!3604 = !DILocation(line: 768, column: 36, scope: !3598)
!3605 = !DILocation(line: 769, column: 17, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 769, column: 2)
!3607 = !DILocation(line: 769, column: 21, scope: !3606)
!3608 = !DILocation(line: 769, column: 4, scope: !3606)
!3609 = !DILocation(line: 769, column: 24, scope: !3606)
!3610 = !DILocation(line: 769, column: 33, scope: !3606)
!3611 = !DILocation(line: 769, column: 37, scope: !3606)
!3612 = !DILocation(line: 769, column: 39, scope: !3606)
!3613 = !DILocation(line: 770, column: 12, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 770, column: 2)
!3615 = !DILocation(line: 770, column: 16, scope: !3614)
!3616 = !DILocation(line: 770, column: 4, scope: !3614)
!3617 = !DILocation(line: 770, column: 26, scope: !3614)
!3618 = !DILocation(line: 770, column: 30, scope: !3614)
!3619 = !DILocation(line: 770, column: 32, scope: !3614)
!3620 = !DILocation(line: 771, column: 12, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 771, column: 2)
!3622 = !DILocation(line: 771, column: 16, scope: !3621)
!3623 = !DILocation(line: 771, column: 4, scope: !3621)
!3624 = !DILocation(line: 771, column: 25, scope: !3621)
!3625 = !DILocation(line: 771, column: 29, scope: !3621)
!3626 = !DILocation(line: 771, column: 31, scope: !3621)
!3627 = !DILocation(line: 772, column: 17, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 772, column: 2)
!3629 = !DILocation(line: 772, column: 21, scope: !3628)
!3630 = !DILocation(line: 772, column: 4, scope: !3628)
!3631 = !DILocation(line: 772, column: 24, scope: !3628)
!3632 = !DILocation(line: 772, column: 30, scope: !3628)
!3633 = !DILocation(line: 772, column: 34, scope: !3628)
!3634 = !DILocation(line: 772, column: 36, scope: !3628)
!3635 = !DILocation(line: 773, column: 17, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 773, column: 2)
!3637 = !DILocation(line: 773, column: 21, scope: !3636)
!3638 = !DILocation(line: 773, column: 4, scope: !3636)
!3639 = !DILocation(line: 773, column: 24, scope: !3636)
!3640 = !DILocation(line: 773, column: 31, scope: !3636)
!3641 = !DILocation(line: 773, column: 35, scope: !3636)
!3642 = !DILocation(line: 773, column: 37, scope: !3636)
!3643 = !DILocation(line: 774, column: 17, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 774, column: 2)
!3645 = !DILocation(line: 774, column: 21, scope: !3644)
!3646 = !DILocation(line: 774, column: 4, scope: !3644)
!3647 = !DILocation(line: 774, column: 24, scope: !3644)
!3648 = !DILocation(line: 774, column: 30, scope: !3644)
!3649 = !DILocation(line: 774, column: 34, scope: !3644)
!3650 = !DILocation(line: 774, column: 36, scope: !3644)
!3651 = !DILocation(line: 775, column: 17, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 775, column: 2)
!3653 = !DILocation(line: 775, column: 21, scope: !3652)
!3654 = !DILocation(line: 775, column: 4, scope: !3652)
!3655 = !DILocation(line: 775, column: 24, scope: !3652)
!3656 = !DILocation(line: 775, column: 30, scope: !3652)
!3657 = !DILocation(line: 775, column: 34, scope: !3652)
!3658 = !DILocation(line: 775, column: 36, scope: !3652)
!3659 = !DILocation(line: 776, column: 17, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 776, column: 2)
!3661 = !DILocation(line: 776, column: 21, scope: !3660)
!3662 = !DILocation(line: 776, column: 4, scope: !3660)
!3663 = !DILocation(line: 776, column: 24, scope: !3660)
!3664 = !DILocation(line: 776, column: 30, scope: !3660)
!3665 = !DILocation(line: 776, column: 34, scope: !3660)
!3666 = !DILocation(line: 776, column: 36, scope: !3660)
!3667 = !DILocation(line: 777, column: 26, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 777, column: 2)
!3669 = !DILocation(line: 777, column: 17, scope: !3668)
!3670 = !DILocation(line: 777, column: 21, scope: !3668)
!3671 = !DILocation(line: 777, column: 4, scope: !3668)
!3672 = !DILocation(line: 777, column: 24, scope: !3668)
!3673 = !DILocation(line: 777, column: 39, scope: !3668)
!3674 = !DILocation(line: 777, column: 43, scope: !3668)
!3675 = !DILocation(line: 777, column: 45, scope: !3668)
!3676 = !DILocation(line: 778, column: 12, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 778, column: 2)
!3678 = !DILocation(line: 778, column: 16, scope: !3677)
!3679 = !DILocation(line: 778, column: 4, scope: !3677)
!3680 = !DILocation(line: 778, column: 35, scope: !3677)
!3681 = !DILocation(line: 778, column: 39, scope: !3677)
!3682 = !DILocation(line: 778, column: 41, scope: !3677)
!3683 = !DILocation(line: 779, column: 17, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 779, column: 2)
!3685 = !DILocation(line: 779, column: 21, scope: !3684)
!3686 = !DILocation(line: 779, column: 4, scope: !3684)
!3687 = !DILocation(line: 779, column: 24, scope: !3684)
!3688 = !DILocation(line: 779, column: 30, scope: !3684)
!3689 = !DILocation(line: 779, column: 34, scope: !3684)
!3690 = !DILocation(line: 779, column: 36, scope: !3684)
!3691 = !DILocation(line: 780, column: 17, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 780, column: 2)
!3693 = !DILocation(line: 780, column: 21, scope: !3692)
!3694 = !DILocation(line: 780, column: 4, scope: !3692)
!3695 = !DILocation(line: 780, column: 24, scope: !3692)
!3696 = !DILocation(line: 780, column: 30, scope: !3692)
!3697 = !DILocation(line: 780, column: 34, scope: !3692)
!3698 = !DILocation(line: 780, column: 36, scope: !3692)
!3699 = !DILocation(line: 781, column: 17, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 781, column: 2)
!3701 = !DILocation(line: 781, column: 21, scope: !3700)
!3702 = !DILocation(line: 781, column: 4, scope: !3700)
!3703 = !DILocation(line: 781, column: 24, scope: !3700)
!3704 = !DILocation(line: 781, column: 30, scope: !3700)
!3705 = !DILocation(line: 781, column: 34, scope: !3700)
!3706 = !DILocation(line: 781, column: 36, scope: !3700)
!3707 = !DILocation(line: 782, column: 26, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 782, column: 2)
!3709 = !DILocation(line: 782, column: 17, scope: !3708)
!3710 = !DILocation(line: 782, column: 21, scope: !3708)
!3711 = !DILocation(line: 782, column: 4, scope: !3708)
!3712 = !DILocation(line: 782, column: 24, scope: !3708)
!3713 = !DILocation(line: 782, column: 38, scope: !3708)
!3714 = !DILocation(line: 782, column: 42, scope: !3708)
!3715 = !DILocation(line: 782, column: 44, scope: !3708)
!3716 = !DILocation(line: 783, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 783, column: 2)
!3718 = !DILocation(line: 783, column: 21, scope: !3717)
!3719 = !DILocation(line: 783, column: 4, scope: !3717)
!3720 = !DILocation(line: 783, column: 24, scope: !3717)
!3721 = !DILocation(line: 783, column: 30, scope: !3717)
!3722 = !DILocation(line: 783, column: 34, scope: !3717)
!3723 = !DILocation(line: 783, column: 36, scope: !3717)
!3724 = !DILocation(line: 784, column: 17, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 784, column: 2)
!3726 = !DILocation(line: 784, column: 21, scope: !3725)
!3727 = !DILocation(line: 784, column: 4, scope: !3725)
!3728 = !DILocation(line: 784, column: 24, scope: !3725)
!3729 = !DILocation(line: 784, column: 30, scope: !3725)
!3730 = !DILocation(line: 784, column: 34, scope: !3725)
!3731 = !DILocation(line: 784, column: 36, scope: !3725)
!3732 = !DILocation(line: 785, column: 17, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 785, column: 2)
!3734 = !DILocation(line: 785, column: 21, scope: !3733)
!3735 = !DILocation(line: 785, column: 4, scope: !3733)
!3736 = !DILocation(line: 785, column: 24, scope: !3733)
!3737 = !DILocation(line: 785, column: 33, scope: !3733)
!3738 = !DILocation(line: 785, column: 37, scope: !3733)
!3739 = !DILocation(line: 785, column: 39, scope: !3733)
!3740 = !DILocation(line: 786, column: 17, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3542, file: !120, line: 786, column: 2)
!3742 = !DILocation(line: 786, column: 21, scope: !3741)
!3743 = !DILocation(line: 786, column: 4, scope: !3741)
!3744 = !DILocation(line: 786, column: 24, scope: !3741)
!3745 = !DILocation(line: 786, column: 30, scope: !3741)
!3746 = !DILocation(line: 786, column: 34, scope: !3741)
!3747 = !DILocation(line: 786, column: 36, scope: !3741)
!3748 = !DILocation(line: 787, column: 1, scope: !3542)
!3749 = distinct !DISubprogram(name: "rdp_out_bmpcache2_caps", scope: !120, file: !120, line: 812, type: !552, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3750 = !DILocalVariable(name: "s", arg: 1, scope: !3749, file: !120, line: 812, type: !127)
!3751 = !DILocation(line: 812, column: 31, scope: !3749)
!3752 = !DILocation(line: 814, column: 17, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 814, column: 2)
!3754 = !DILocation(line: 814, column: 21, scope: !3753)
!3755 = !DILocation(line: 814, column: 4, scope: !3753)
!3756 = !DILocation(line: 814, column: 24, scope: !3753)
!3757 = !DILocation(line: 814, column: 31, scope: !3753)
!3758 = !DILocation(line: 814, column: 35, scope: !3753)
!3759 = !DILocation(line: 814, column: 37, scope: !3753)
!3760 = !DILocation(line: 815, column: 17, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 815, column: 2)
!3762 = !DILocation(line: 815, column: 21, scope: !3761)
!3763 = !DILocation(line: 815, column: 4, scope: !3761)
!3764 = !DILocation(line: 815, column: 24, scope: !3761)
!3765 = !DILocation(line: 815, column: 33, scope: !3761)
!3766 = !DILocation(line: 815, column: 37, scope: !3761)
!3767 = !DILocation(line: 815, column: 39, scope: !3761)
!3768 = !DILocation(line: 817, column: 26, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 817, column: 2)
!3770 = !DILocation(line: 817, column: 17, scope: !3769)
!3771 = !DILocation(line: 817, column: 21, scope: !3769)
!3772 = !DILocation(line: 817, column: 4, scope: !3769)
!3773 = !DILocation(line: 817, column: 24, scope: !3769)
!3774 = !DILocation(line: 817, column: 66, scope: !3769)
!3775 = !DILocation(line: 817, column: 70, scope: !3769)
!3776 = !DILocation(line: 817, column: 72, scope: !3769)
!3777 = !DILocation(line: 819, column: 7, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 819, column: 2)
!3779 = !DILocation(line: 819, column: 11, scope: !3778)
!3780 = !DILocation(line: 819, column: 12, scope: !3778)
!3781 = !DILocation(line: 819, column: 16, scope: !3778)
!3782 = !DILocation(line: 819, column: 40, scope: !3778)
!3783 = !DILocation(line: 819, column: 44, scope: !3778)
!3784 = !DILocation(line: 819, column: 45, scope: !3778)
!3785 = !DILocation(line: 819, column: 49, scope: !3778)
!3786 = !DILocation(line: 822, column: 17, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 822, column: 2)
!3788 = !DILocation(line: 822, column: 21, scope: !3787)
!3789 = !DILocation(line: 822, column: 4, scope: !3787)
!3790 = !DILocation(line: 822, column: 24, scope: !3787)
!3791 = !DILocation(line: 822, column: 33, scope: !3787)
!3792 = !DILocation(line: 822, column: 37, scope: !3787)
!3793 = !DILocation(line: 822, column: 39, scope: !3787)
!3794 = !DILocation(line: 823, column: 17, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 823, column: 2)
!3796 = !DILocation(line: 823, column: 21, scope: !3795)
!3797 = !DILocation(line: 823, column: 4, scope: !3795)
!3798 = !DILocation(line: 823, column: 24, scope: !3795)
!3799 = !DILocation(line: 823, column: 33, scope: !3795)
!3800 = !DILocation(line: 823, column: 37, scope: !3795)
!3801 = !DILocation(line: 823, column: 39, scope: !3795)
!3802 = !DILocation(line: 824, column: 6, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 824, column: 6)
!3804 = !DILocation(line: 824, column: 6, scope: !3749)
!3805 = !DILocation(line: 826, column: 18, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !120, line: 826, column: 3)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !120, line: 825, column: 2)
!3808 = !DILocation(line: 826, column: 22, scope: !3806)
!3809 = !DILocation(line: 826, column: 5, scope: !3806)
!3810 = !DILocation(line: 826, column: 25, scope: !3806)
!3811 = !DILocation(line: 826, column: 53, scope: !3806)
!3812 = !DILocation(line: 826, column: 57, scope: !3806)
!3813 = !DILocation(line: 826, column: 59, scope: !3806)
!3814 = !DILocation(line: 827, column: 2, scope: !3807)
!3815 = !DILocation(line: 830, column: 18, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !120, line: 830, column: 3)
!3817 = distinct !DILexicalBlock(scope: !3803, file: !120, line: 829, column: 2)
!3818 = !DILocation(line: 830, column: 22, scope: !3816)
!3819 = !DILocation(line: 830, column: 5, scope: !3816)
!3820 = !DILocation(line: 830, column: 25, scope: !3816)
!3821 = !DILocation(line: 830, column: 35, scope: !3816)
!3822 = !DILocation(line: 830, column: 39, scope: !3816)
!3823 = !DILocation(line: 830, column: 41, scope: !3816)
!3824 = !DILocation(line: 832, column: 12, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3749, file: !120, line: 832, column: 2)
!3826 = !DILocation(line: 832, column: 16, scope: !3825)
!3827 = !DILocation(line: 832, column: 4, scope: !3825)
!3828 = !DILocation(line: 832, column: 26, scope: !3825)
!3829 = !DILocation(line: 832, column: 30, scope: !3825)
!3830 = !DILocation(line: 832, column: 32, scope: !3825)
!3831 = !DILocation(line: 833, column: 1, scope: !3749)
!3832 = distinct !DISubprogram(name: "rdp_out_newpointer_caps", scope: !120, file: !120, line: 874, type: !552, isLocal: true, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3833 = !DILocalVariable(name: "s", arg: 1, scope: !3832, file: !120, line: 874, type: !127)
!3834 = !DILocation(line: 874, column: 32, scope: !3832)
!3835 = !DILocation(line: 876, column: 17, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3832, file: !120, line: 876, column: 2)
!3837 = !DILocation(line: 876, column: 21, scope: !3836)
!3838 = !DILocation(line: 876, column: 4, scope: !3836)
!3839 = !DILocation(line: 876, column: 24, scope: !3836)
!3840 = !DILocation(line: 876, column: 30, scope: !3836)
!3841 = !DILocation(line: 876, column: 34, scope: !3836)
!3842 = !DILocation(line: 876, column: 36, scope: !3836)
!3843 = !DILocation(line: 877, column: 17, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3832, file: !120, line: 877, column: 2)
!3845 = !DILocation(line: 877, column: 21, scope: !3844)
!3846 = !DILocation(line: 877, column: 4, scope: !3844)
!3847 = !DILocation(line: 877, column: 24, scope: !3844)
!3848 = !DILocation(line: 877, column: 33, scope: !3844)
!3849 = !DILocation(line: 877, column: 37, scope: !3844)
!3850 = !DILocation(line: 877, column: 39, scope: !3844)
!3851 = !DILocation(line: 879, column: 17, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3832, file: !120, line: 879, column: 2)
!3853 = !DILocation(line: 879, column: 21, scope: !3852)
!3854 = !DILocation(line: 879, column: 4, scope: !3852)
!3855 = !DILocation(line: 879, column: 24, scope: !3852)
!3856 = !DILocation(line: 879, column: 30, scope: !3852)
!3857 = !DILocation(line: 879, column: 34, scope: !3852)
!3858 = !DILocation(line: 879, column: 36, scope: !3852)
!3859 = !DILocation(line: 880, column: 17, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3832, file: !120, line: 880, column: 2)
!3861 = !DILocation(line: 880, column: 21, scope: !3860)
!3862 = !DILocation(line: 880, column: 4, scope: !3860)
!3863 = !DILocation(line: 880, column: 24, scope: !3860)
!3864 = !DILocation(line: 880, column: 31, scope: !3860)
!3865 = !DILocation(line: 880, column: 35, scope: !3860)
!3866 = !DILocation(line: 880, column: 37, scope: !3860)
!3867 = !DILocation(line: 881, column: 17, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3832, file: !120, line: 881, column: 2)
!3869 = !DILocation(line: 881, column: 21, scope: !3868)
!3870 = !DILocation(line: 881, column: 4, scope: !3868)
!3871 = !DILocation(line: 881, column: 24, scope: !3868)
!3872 = !DILocation(line: 881, column: 31, scope: !3868)
!3873 = !DILocation(line: 881, column: 35, scope: !3868)
!3874 = !DILocation(line: 881, column: 37, scope: !3868)
!3875 = !DILocation(line: 882, column: 1, scope: !3832)
!3876 = distinct !DISubprogram(name: "rdp_out_bmpcache_caps", scope: !120, file: !120, line: 791, type: !552, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3877 = !DILocalVariable(name: "s", arg: 1, scope: !3876, file: !120, line: 791, type: !127)
!3878 = !DILocation(line: 791, column: 30, scope: !3876)
!3879 = !DILocalVariable(name: "Bpp", scope: !3876, file: !120, line: 793, type: !122)
!3880 = !DILocation(line: 793, column: 6, scope: !3876)
!3881 = !DILocation(line: 795, column: 2, scope: !3876)
!3882 = !DILocation(line: 797, column: 17, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 797, column: 2)
!3884 = !DILocation(line: 797, column: 21, scope: !3883)
!3885 = !DILocation(line: 797, column: 4, scope: !3883)
!3886 = !DILocation(line: 797, column: 24, scope: !3883)
!3887 = !DILocation(line: 797, column: 30, scope: !3883)
!3888 = !DILocation(line: 797, column: 34, scope: !3883)
!3889 = !DILocation(line: 797, column: 36, scope: !3883)
!3890 = !DILocation(line: 798, column: 17, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 798, column: 2)
!3892 = !DILocation(line: 798, column: 21, scope: !3891)
!3893 = !DILocation(line: 798, column: 4, scope: !3891)
!3894 = !DILocation(line: 798, column: 24, scope: !3891)
!3895 = !DILocation(line: 798, column: 33, scope: !3891)
!3896 = !DILocation(line: 798, column: 37, scope: !3891)
!3897 = !DILocation(line: 798, column: 39, scope: !3891)
!3898 = !DILocation(line: 800, column: 9, scope: !3876)
!3899 = !DILocation(line: 800, column: 24, scope: !3876)
!3900 = !DILocation(line: 800, column: 29, scope: !3876)
!3901 = !DILocation(line: 800, column: 6, scope: !3876)
!3902 = !DILocation(line: 801, column: 12, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 801, column: 2)
!3904 = !DILocation(line: 801, column: 16, scope: !3903)
!3905 = !DILocation(line: 801, column: 4, scope: !3903)
!3906 = !DILocation(line: 801, column: 26, scope: !3903)
!3907 = !DILocation(line: 801, column: 30, scope: !3903)
!3908 = !DILocation(line: 801, column: 32, scope: !3903)
!3909 = !DILocation(line: 802, column: 17, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 802, column: 2)
!3911 = !DILocation(line: 802, column: 21, scope: !3910)
!3912 = !DILocation(line: 802, column: 4, scope: !3910)
!3913 = !DILocation(line: 802, column: 24, scope: !3910)
!3914 = !DILocation(line: 802, column: 34, scope: !3910)
!3915 = !DILocation(line: 802, column: 38, scope: !3910)
!3916 = !DILocation(line: 802, column: 40, scope: !3910)
!3917 = !DILocation(line: 803, column: 34, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 803, column: 2)
!3919 = !DILocation(line: 803, column: 32, scope: !3918)
!3920 = !DILocation(line: 803, column: 26, scope: !3918)
!3921 = !DILocation(line: 803, column: 17, scope: !3918)
!3922 = !DILocation(line: 803, column: 21, scope: !3918)
!3923 = !DILocation(line: 803, column: 4, scope: !3918)
!3924 = !DILocation(line: 803, column: 24, scope: !3918)
!3925 = !DILocation(line: 803, column: 40, scope: !3918)
!3926 = !DILocation(line: 803, column: 44, scope: !3918)
!3927 = !DILocation(line: 803, column: 46, scope: !3918)
!3928 = !DILocation(line: 804, column: 17, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 804, column: 2)
!3930 = !DILocation(line: 804, column: 21, scope: !3929)
!3931 = !DILocation(line: 804, column: 4, scope: !3929)
!3932 = !DILocation(line: 804, column: 24, scope: !3929)
!3933 = !DILocation(line: 804, column: 34, scope: !3929)
!3934 = !DILocation(line: 804, column: 38, scope: !3929)
!3935 = !DILocation(line: 804, column: 40, scope: !3929)
!3936 = !DILocation(line: 805, column: 34, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 805, column: 2)
!3938 = !DILocation(line: 805, column: 32, scope: !3937)
!3939 = !DILocation(line: 805, column: 26, scope: !3937)
!3940 = !DILocation(line: 805, column: 17, scope: !3937)
!3941 = !DILocation(line: 805, column: 21, scope: !3937)
!3942 = !DILocation(line: 805, column: 4, scope: !3937)
!3943 = !DILocation(line: 805, column: 24, scope: !3937)
!3944 = !DILocation(line: 805, column: 40, scope: !3937)
!3945 = !DILocation(line: 805, column: 44, scope: !3937)
!3946 = !DILocation(line: 805, column: 46, scope: !3937)
!3947 = !DILocation(line: 806, column: 17, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 806, column: 2)
!3949 = !DILocation(line: 806, column: 21, scope: !3948)
!3950 = !DILocation(line: 806, column: 4, scope: !3948)
!3951 = !DILocation(line: 806, column: 24, scope: !3948)
!3952 = !DILocation(line: 806, column: 34, scope: !3948)
!3953 = !DILocation(line: 806, column: 38, scope: !3948)
!3954 = !DILocation(line: 806, column: 40, scope: !3948)
!3955 = !DILocation(line: 807, column: 35, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3876, file: !120, line: 807, column: 2)
!3957 = !DILocation(line: 807, column: 33, scope: !3956)
!3958 = !DILocation(line: 807, column: 26, scope: !3956)
!3959 = !DILocation(line: 807, column: 17, scope: !3956)
!3960 = !DILocation(line: 807, column: 21, scope: !3956)
!3961 = !DILocation(line: 807, column: 4, scope: !3956)
!3962 = !DILocation(line: 807, column: 24, scope: !3956)
!3963 = !DILocation(line: 807, column: 41, scope: !3956)
!3964 = !DILocation(line: 807, column: 45, scope: !3956)
!3965 = !DILocation(line: 807, column: 47, scope: !3956)
!3966 = !DILocation(line: 808, column: 1, scope: !3876)
!3967 = distinct !DISubprogram(name: "rdp_out_pointer_caps", scope: !120, file: !120, line: 863, type: !552, isLocal: true, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!3968 = !DILocalVariable(name: "s", arg: 1, scope: !3967, file: !120, line: 863, type: !127)
!3969 = !DILocation(line: 863, column: 29, scope: !3967)
!3970 = !DILocation(line: 865, column: 17, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !120, line: 865, column: 2)
!3972 = !DILocation(line: 865, column: 21, scope: !3971)
!3973 = !DILocation(line: 865, column: 4, scope: !3971)
!3974 = !DILocation(line: 865, column: 24, scope: !3971)
!3975 = !DILocation(line: 865, column: 30, scope: !3971)
!3976 = !DILocation(line: 865, column: 34, scope: !3971)
!3977 = !DILocation(line: 865, column: 36, scope: !3971)
!3978 = !DILocation(line: 866, column: 17, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3967, file: !120, line: 866, column: 2)
!3980 = !DILocation(line: 866, column: 21, scope: !3979)
!3981 = !DILocation(line: 866, column: 4, scope: !3979)
!3982 = !DILocation(line: 866, column: 24, scope: !3979)
!3983 = !DILocation(line: 866, column: 33, scope: !3979)
!3984 = !DILocation(line: 866, column: 37, scope: !3979)
!3985 = !DILocation(line: 866, column: 39, scope: !3979)
!3986 = !DILocation(line: 868, column: 17, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3967, file: !120, line: 868, column: 2)
!3988 = !DILocation(line: 868, column: 21, scope: !3987)
!3989 = !DILocation(line: 868, column: 4, scope: !3987)
!3990 = !DILocation(line: 868, column: 24, scope: !3987)
!3991 = !DILocation(line: 868, column: 30, scope: !3987)
!3992 = !DILocation(line: 868, column: 34, scope: !3987)
!3993 = !DILocation(line: 868, column: 36, scope: !3987)
!3994 = !DILocation(line: 869, column: 17, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3967, file: !120, line: 869, column: 2)
!3996 = !DILocation(line: 869, column: 21, scope: !3995)
!3997 = !DILocation(line: 869, column: 4, scope: !3995)
!3998 = !DILocation(line: 869, column: 24, scope: !3995)
!3999 = !DILocation(line: 869, column: 31, scope: !3995)
!4000 = !DILocation(line: 869, column: 35, scope: !3995)
!4001 = !DILocation(line: 869, column: 37, scope: !3995)
!4002 = !DILocation(line: 870, column: 1, scope: !3967)
!4003 = distinct !DISubprogram(name: "rdp_out_colcache_caps", scope: !120, file: !120, line: 897, type: !552, isLocal: true, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4004 = !DILocalVariable(name: "s", arg: 1, scope: !4003, file: !120, line: 897, type: !127)
!4005 = !DILocation(line: 897, column: 30, scope: !4003)
!4006 = !DILocation(line: 899, column: 17, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !120, line: 899, column: 2)
!4008 = !DILocation(line: 899, column: 21, scope: !4007)
!4009 = !DILocation(line: 899, column: 4, scope: !4007)
!4010 = !DILocation(line: 899, column: 24, scope: !4007)
!4011 = !DILocation(line: 899, column: 31, scope: !4007)
!4012 = !DILocation(line: 899, column: 35, scope: !4007)
!4013 = !DILocation(line: 899, column: 37, scope: !4007)
!4014 = !DILocation(line: 900, column: 17, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4003, file: !120, line: 900, column: 2)
!4016 = !DILocation(line: 900, column: 21, scope: !4015)
!4017 = !DILocation(line: 900, column: 4, scope: !4015)
!4018 = !DILocation(line: 900, column: 24, scope: !4015)
!4019 = !DILocation(line: 900, column: 33, scope: !4015)
!4020 = !DILocation(line: 900, column: 37, scope: !4015)
!4021 = !DILocation(line: 900, column: 39, scope: !4015)
!4022 = !DILocation(line: 902, column: 17, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4003, file: !120, line: 902, column: 2)
!4024 = !DILocation(line: 902, column: 21, scope: !4023)
!4025 = !DILocation(line: 902, column: 4, scope: !4023)
!4026 = !DILocation(line: 902, column: 24, scope: !4023)
!4027 = !DILocation(line: 902, column: 30, scope: !4023)
!4028 = !DILocation(line: 902, column: 34, scope: !4023)
!4029 = !DILocation(line: 902, column: 36, scope: !4023)
!4030 = !DILocation(line: 903, column: 17, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4003, file: !120, line: 903, column: 2)
!4032 = !DILocation(line: 903, column: 21, scope: !4031)
!4033 = !DILocation(line: 903, column: 4, scope: !4031)
!4034 = !DILocation(line: 903, column: 24, scope: !4031)
!4035 = !DILocation(line: 903, column: 30, scope: !4031)
!4036 = !DILocation(line: 903, column: 34, scope: !4031)
!4037 = !DILocation(line: 903, column: 36, scope: !4031)
!4038 = !DILocation(line: 904, column: 1, scope: !4003)
!4039 = distinct !DISubprogram(name: "rdp_out_activate_caps", scope: !120, file: !120, line: 850, type: !552, isLocal: true, isDefinition: true, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4040 = !DILocalVariable(name: "s", arg: 1, scope: !4039, file: !120, line: 850, type: !127)
!4041 = !DILocation(line: 850, column: 30, scope: !4039)
!4042 = !DILocation(line: 852, column: 17, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 852, column: 2)
!4044 = !DILocation(line: 852, column: 21, scope: !4043)
!4045 = !DILocation(line: 852, column: 4, scope: !4043)
!4046 = !DILocation(line: 852, column: 24, scope: !4043)
!4047 = !DILocation(line: 852, column: 30, scope: !4043)
!4048 = !DILocation(line: 852, column: 34, scope: !4043)
!4049 = !DILocation(line: 852, column: 36, scope: !4043)
!4050 = !DILocation(line: 853, column: 17, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 853, column: 2)
!4052 = !DILocation(line: 853, column: 21, scope: !4051)
!4053 = !DILocation(line: 853, column: 4, scope: !4051)
!4054 = !DILocation(line: 853, column: 24, scope: !4051)
!4055 = !DILocation(line: 853, column: 33, scope: !4051)
!4056 = !DILocation(line: 853, column: 37, scope: !4051)
!4057 = !DILocation(line: 853, column: 39, scope: !4051)
!4058 = !DILocation(line: 855, column: 17, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 855, column: 2)
!4060 = !DILocation(line: 855, column: 21, scope: !4059)
!4061 = !DILocation(line: 855, column: 4, scope: !4059)
!4062 = !DILocation(line: 855, column: 24, scope: !4059)
!4063 = !DILocation(line: 855, column: 30, scope: !4059)
!4064 = !DILocation(line: 855, column: 34, scope: !4059)
!4065 = !DILocation(line: 855, column: 36, scope: !4059)
!4066 = !DILocation(line: 856, column: 17, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 856, column: 2)
!4068 = !DILocation(line: 856, column: 21, scope: !4067)
!4069 = !DILocation(line: 856, column: 4, scope: !4067)
!4070 = !DILocation(line: 856, column: 24, scope: !4067)
!4071 = !DILocation(line: 856, column: 30, scope: !4067)
!4072 = !DILocation(line: 856, column: 34, scope: !4067)
!4073 = !DILocation(line: 856, column: 36, scope: !4067)
!4074 = !DILocation(line: 857, column: 17, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 857, column: 2)
!4076 = !DILocation(line: 857, column: 21, scope: !4075)
!4077 = !DILocation(line: 857, column: 4, scope: !4075)
!4078 = !DILocation(line: 857, column: 24, scope: !4075)
!4079 = !DILocation(line: 857, column: 30, scope: !4075)
!4080 = !DILocation(line: 857, column: 34, scope: !4075)
!4081 = !DILocation(line: 857, column: 36, scope: !4075)
!4082 = !DILocation(line: 858, column: 17, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4039, file: !120, line: 858, column: 2)
!4084 = !DILocation(line: 858, column: 21, scope: !4083)
!4085 = !DILocation(line: 858, column: 4, scope: !4083)
!4086 = !DILocation(line: 858, column: 24, scope: !4083)
!4087 = !DILocation(line: 858, column: 30, scope: !4083)
!4088 = !DILocation(line: 858, column: 34, scope: !4083)
!4089 = !DILocation(line: 858, column: 36, scope: !4083)
!4090 = !DILocation(line: 859, column: 1, scope: !4039)
!4091 = distinct !DISubprogram(name: "rdp_out_control_caps", scope: !120, file: !120, line: 837, type: !552, isLocal: true, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4092 = !DILocalVariable(name: "s", arg: 1, scope: !4091, file: !120, line: 837, type: !127)
!4093 = !DILocation(line: 837, column: 29, scope: !4091)
!4094 = !DILocation(line: 839, column: 17, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 839, column: 2)
!4096 = !DILocation(line: 839, column: 21, scope: !4095)
!4097 = !DILocation(line: 839, column: 4, scope: !4095)
!4098 = !DILocation(line: 839, column: 24, scope: !4095)
!4099 = !DILocation(line: 839, column: 30, scope: !4095)
!4100 = !DILocation(line: 839, column: 34, scope: !4095)
!4101 = !DILocation(line: 839, column: 36, scope: !4095)
!4102 = !DILocation(line: 840, column: 17, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 840, column: 2)
!4104 = !DILocation(line: 840, column: 21, scope: !4103)
!4105 = !DILocation(line: 840, column: 4, scope: !4103)
!4106 = !DILocation(line: 840, column: 24, scope: !4103)
!4107 = !DILocation(line: 840, column: 33, scope: !4103)
!4108 = !DILocation(line: 840, column: 37, scope: !4103)
!4109 = !DILocation(line: 840, column: 39, scope: !4103)
!4110 = !DILocation(line: 842, column: 17, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 842, column: 2)
!4112 = !DILocation(line: 842, column: 21, scope: !4111)
!4113 = !DILocation(line: 842, column: 4, scope: !4111)
!4114 = !DILocation(line: 842, column: 24, scope: !4111)
!4115 = !DILocation(line: 842, column: 30, scope: !4111)
!4116 = !DILocation(line: 842, column: 34, scope: !4111)
!4117 = !DILocation(line: 842, column: 36, scope: !4111)
!4118 = !DILocation(line: 843, column: 17, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 843, column: 2)
!4120 = !DILocation(line: 843, column: 21, scope: !4119)
!4121 = !DILocation(line: 843, column: 4, scope: !4119)
!4122 = !DILocation(line: 843, column: 24, scope: !4119)
!4123 = !DILocation(line: 843, column: 30, scope: !4119)
!4124 = !DILocation(line: 843, column: 34, scope: !4119)
!4125 = !DILocation(line: 843, column: 36, scope: !4119)
!4126 = !DILocation(line: 844, column: 17, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 844, column: 2)
!4128 = !DILocation(line: 844, column: 21, scope: !4127)
!4129 = !DILocation(line: 844, column: 4, scope: !4127)
!4130 = !DILocation(line: 844, column: 24, scope: !4127)
!4131 = !DILocation(line: 844, column: 30, scope: !4127)
!4132 = !DILocation(line: 844, column: 34, scope: !4127)
!4133 = !DILocation(line: 844, column: 36, scope: !4127)
!4134 = !DILocation(line: 845, column: 17, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4091, file: !120, line: 845, column: 2)
!4136 = !DILocation(line: 845, column: 21, scope: !4135)
!4137 = !DILocation(line: 845, column: 4, scope: !4135)
!4138 = !DILocation(line: 845, column: 24, scope: !4135)
!4139 = !DILocation(line: 845, column: 30, scope: !4135)
!4140 = !DILocation(line: 845, column: 34, scope: !4135)
!4141 = !DILocation(line: 845, column: 36, scope: !4135)
!4142 = !DILocation(line: 846, column: 1, scope: !4091)
!4143 = distinct !DISubprogram(name: "rdp_out_share_caps", scope: !120, file: !120, line: 886, type: !552, isLocal: true, isDefinition: true, scopeLine: 887, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4144 = !DILocalVariable(name: "s", arg: 1, scope: !4143, file: !120, line: 886, type: !127)
!4145 = !DILocation(line: 886, column: 27, scope: !4143)
!4146 = !DILocation(line: 888, column: 17, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4143, file: !120, line: 888, column: 2)
!4148 = !DILocation(line: 888, column: 21, scope: !4147)
!4149 = !DILocation(line: 888, column: 4, scope: !4147)
!4150 = !DILocation(line: 888, column: 24, scope: !4147)
!4151 = !DILocation(line: 888, column: 30, scope: !4147)
!4152 = !DILocation(line: 888, column: 34, scope: !4147)
!4153 = !DILocation(line: 888, column: 36, scope: !4147)
!4154 = !DILocation(line: 889, column: 17, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4143, file: !120, line: 889, column: 2)
!4156 = !DILocation(line: 889, column: 21, scope: !4155)
!4157 = !DILocation(line: 889, column: 4, scope: !4155)
!4158 = !DILocation(line: 889, column: 24, scope: !4155)
!4159 = !DILocation(line: 889, column: 33, scope: !4155)
!4160 = !DILocation(line: 889, column: 37, scope: !4155)
!4161 = !DILocation(line: 889, column: 39, scope: !4155)
!4162 = !DILocation(line: 891, column: 17, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4143, file: !120, line: 891, column: 2)
!4164 = !DILocation(line: 891, column: 21, scope: !4163)
!4165 = !DILocation(line: 891, column: 4, scope: !4163)
!4166 = !DILocation(line: 891, column: 24, scope: !4163)
!4167 = !DILocation(line: 891, column: 30, scope: !4163)
!4168 = !DILocation(line: 891, column: 34, scope: !4163)
!4169 = !DILocation(line: 891, column: 36, scope: !4163)
!4170 = !DILocation(line: 892, column: 17, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4143, file: !120, line: 892, column: 2)
!4172 = !DILocation(line: 892, column: 21, scope: !4171)
!4173 = !DILocation(line: 892, column: 4, scope: !4171)
!4174 = !DILocation(line: 892, column: 24, scope: !4171)
!4175 = !DILocation(line: 892, column: 30, scope: !4171)
!4176 = !DILocation(line: 892, column: 34, scope: !4171)
!4177 = !DILocation(line: 892, column: 36, scope: !4171)
!4178 = !DILocation(line: 893, column: 1, scope: !4143)
!4179 = distinct !DISubprogram(name: "rdp_out_brushcache_caps", scope: !120, file: !120, line: 908, type: !552, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4180 = !DILocalVariable(name: "s", arg: 1, scope: !4179, file: !120, line: 908, type: !127)
!4181 = !DILocation(line: 908, column: 32, scope: !4179)
!4182 = !DILocation(line: 910, column: 17, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !120, line: 910, column: 2)
!4184 = !DILocation(line: 910, column: 21, scope: !4183)
!4185 = !DILocation(line: 910, column: 4, scope: !4183)
!4186 = !DILocation(line: 910, column: 24, scope: !4183)
!4187 = !DILocation(line: 910, column: 31, scope: !4183)
!4188 = !DILocation(line: 910, column: 35, scope: !4183)
!4189 = !DILocation(line: 910, column: 37, scope: !4183)
!4190 = !DILocation(line: 911, column: 17, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4179, file: !120, line: 911, column: 2)
!4192 = !DILocation(line: 911, column: 21, scope: !4191)
!4193 = !DILocation(line: 911, column: 4, scope: !4191)
!4194 = !DILocation(line: 911, column: 24, scope: !4191)
!4195 = !DILocation(line: 911, column: 33, scope: !4191)
!4196 = !DILocation(line: 911, column: 37, scope: !4191)
!4197 = !DILocation(line: 911, column: 39, scope: !4191)
!4198 = !DILocation(line: 912, column: 17, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4179, file: !120, line: 912, column: 2)
!4200 = !DILocation(line: 912, column: 21, scope: !4199)
!4201 = !DILocation(line: 912, column: 4, scope: !4199)
!4202 = !DILocation(line: 912, column: 24, scope: !4199)
!4203 = !DILocation(line: 912, column: 30, scope: !4199)
!4204 = !DILocation(line: 912, column: 34, scope: !4199)
!4205 = !DILocation(line: 912, column: 36, scope: !4199)
!4206 = !DILocation(line: 913, column: 1, scope: !4179)
!4207 = distinct !DISubprogram(name: "rdp_out_ts_input_capabilityset", scope: !120, file: !120, line: 917, type: !552, isLocal: true, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4208 = !DILocalVariable(name: "s", arg: 1, scope: !4207, file: !120, line: 917, type: !127)
!4209 = !DILocation(line: 917, column: 39, scope: !4207)
!4210 = !DILocalVariable(name: "inputflags", scope: !4207, file: !120, line: 919, type: !102)
!4211 = !DILocation(line: 919, column: 9, scope: !4207)
!4212 = !DILocation(line: 920, column: 13, scope: !4207)
!4213 = !DILocation(line: 922, column: 17, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 922, column: 2)
!4215 = !DILocation(line: 922, column: 21, scope: !4214)
!4216 = !DILocation(line: 922, column: 4, scope: !4214)
!4217 = !DILocation(line: 922, column: 24, scope: !4214)
!4218 = !DILocation(line: 922, column: 31, scope: !4214)
!4219 = !DILocation(line: 922, column: 35, scope: !4214)
!4220 = !DILocation(line: 922, column: 37, scope: !4214)
!4221 = !DILocation(line: 923, column: 17, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 923, column: 2)
!4223 = !DILocation(line: 923, column: 21, scope: !4222)
!4224 = !DILocation(line: 923, column: 4, scope: !4222)
!4225 = !DILocation(line: 923, column: 24, scope: !4222)
!4226 = !DILocation(line: 923, column: 31, scope: !4222)
!4227 = !DILocation(line: 923, column: 35, scope: !4222)
!4228 = !DILocation(line: 923, column: 37, scope: !4222)
!4229 = !DILocation(line: 925, column: 26, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 925, column: 2)
!4231 = !DILocation(line: 925, column: 17, scope: !4230)
!4232 = !DILocation(line: 925, column: 21, scope: !4230)
!4233 = !DILocation(line: 925, column: 4, scope: !4230)
!4234 = !DILocation(line: 925, column: 24, scope: !4230)
!4235 = !DILocation(line: 925, column: 39, scope: !4230)
!4236 = !DILocation(line: 925, column: 43, scope: !4230)
!4237 = !DILocation(line: 925, column: 45, scope: !4230)
!4238 = !DILocation(line: 926, column: 17, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 926, column: 2)
!4240 = !DILocation(line: 926, column: 21, scope: !4239)
!4241 = !DILocation(line: 926, column: 4, scope: !4239)
!4242 = !DILocation(line: 926, column: 24, scope: !4239)
!4243 = !DILocation(line: 926, column: 30, scope: !4239)
!4244 = !DILocation(line: 926, column: 34, scope: !4239)
!4245 = !DILocation(line: 926, column: 36, scope: !4239)
!4246 = !DILocation(line: 927, column: 17, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 927, column: 2)
!4248 = !DILocation(line: 927, column: 21, scope: !4247)
!4249 = !DILocation(line: 927, column: 4, scope: !4247)
!4250 = !DILocation(line: 927, column: 24, scope: !4247)
!4251 = !DILocation(line: 927, column: 34, scope: !4247)
!4252 = !DILocation(line: 927, column: 38, scope: !4247)
!4253 = !DILocation(line: 927, column: 40, scope: !4247)
!4254 = !DILocation(line: 928, column: 17, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 928, column: 2)
!4256 = !DILocation(line: 928, column: 21, scope: !4255)
!4257 = !DILocation(line: 928, column: 4, scope: !4255)
!4258 = !DILocation(line: 928, column: 24, scope: !4255)
!4259 = !DILocation(line: 928, column: 32, scope: !4255)
!4260 = !DILocation(line: 928, column: 36, scope: !4255)
!4261 = !DILocation(line: 928, column: 38, scope: !4255)
!4262 = !DILocation(line: 929, column: 17, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 929, column: 2)
!4264 = !DILocation(line: 929, column: 21, scope: !4263)
!4265 = !DILocation(line: 929, column: 4, scope: !4263)
!4266 = !DILocation(line: 929, column: 24, scope: !4263)
!4267 = !DILocation(line: 929, column: 30, scope: !4263)
!4268 = !DILocation(line: 929, column: 34, scope: !4263)
!4269 = !DILocation(line: 929, column: 36, scope: !4263)
!4270 = !DILocation(line: 930, column: 17, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4207, file: !120, line: 930, column: 2)
!4272 = !DILocation(line: 930, column: 21, scope: !4271)
!4273 = !DILocation(line: 930, column: 4, scope: !4271)
!4274 = !DILocation(line: 930, column: 24, scope: !4271)
!4275 = !DILocation(line: 930, column: 32, scope: !4271)
!4276 = !DILocation(line: 930, column: 36, scope: !4271)
!4277 = !DILocation(line: 930, column: 38, scope: !4271)
!4278 = !DILocation(line: 931, column: 20, scope: !4207)
!4279 = !DILocation(line: 931, column: 2, scope: !4207)
!4280 = !DILocation(line: 932, column: 1, scope: !4207)
!4281 = distinct !DISubprogram(name: "rdp_out_ts_sound_capabilityset", scope: !120, file: !120, line: 936, type: !552, isLocal: true, isDefinition: true, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4282 = !DILocalVariable(name: "s", arg: 1, scope: !4281, file: !120, line: 936, type: !127)
!4283 = !DILocation(line: 936, column: 39, scope: !4281)
!4284 = !DILocalVariable(name: "soundflags", scope: !4281, file: !120, line: 938, type: !102)
!4285 = !DILocation(line: 938, column: 9, scope: !4281)
!4286 = !DILocation(line: 940, column: 17, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4281, file: !120, line: 940, column: 2)
!4288 = !DILocation(line: 940, column: 21, scope: !4287)
!4289 = !DILocation(line: 940, column: 4, scope: !4287)
!4290 = !DILocation(line: 940, column: 24, scope: !4287)
!4291 = !DILocation(line: 940, column: 31, scope: !4287)
!4292 = !DILocation(line: 940, column: 35, scope: !4287)
!4293 = !DILocation(line: 940, column: 37, scope: !4287)
!4294 = !DILocation(line: 941, column: 17, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4281, file: !120, line: 941, column: 2)
!4296 = !DILocation(line: 941, column: 21, scope: !4295)
!4297 = !DILocation(line: 941, column: 4, scope: !4295)
!4298 = !DILocation(line: 941, column: 24, scope: !4295)
!4299 = !DILocation(line: 941, column: 30, scope: !4295)
!4300 = !DILocation(line: 941, column: 34, scope: !4295)
!4301 = !DILocation(line: 941, column: 36, scope: !4295)
!4302 = !DILocation(line: 943, column: 26, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4281, file: !120, line: 943, column: 2)
!4304 = !DILocation(line: 943, column: 17, scope: !4303)
!4305 = !DILocation(line: 943, column: 21, scope: !4303)
!4306 = !DILocation(line: 943, column: 4, scope: !4303)
!4307 = !DILocation(line: 943, column: 24, scope: !4303)
!4308 = !DILocation(line: 943, column: 39, scope: !4303)
!4309 = !DILocation(line: 943, column: 43, scope: !4303)
!4310 = !DILocation(line: 943, column: 45, scope: !4303)
!4311 = !DILocation(line: 944, column: 17, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4281, file: !120, line: 944, column: 2)
!4313 = !DILocation(line: 944, column: 21, scope: !4312)
!4314 = !DILocation(line: 944, column: 4, scope: !4312)
!4315 = !DILocation(line: 944, column: 24, scope: !4312)
!4316 = !DILocation(line: 944, column: 30, scope: !4312)
!4317 = !DILocation(line: 944, column: 34, scope: !4312)
!4318 = !DILocation(line: 944, column: 36, scope: !4312)
!4319 = !DILocation(line: 945, column: 1, scope: !4281)
!4320 = distinct !DISubprogram(name: "rdp_out_ts_font_capabilityset", scope: !120, file: !120, line: 949, type: !552, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4321 = !DILocalVariable(name: "s", arg: 1, scope: !4320, file: !120, line: 949, type: !127)
!4322 = !DILocation(line: 949, column: 38, scope: !4320)
!4323 = !DILocalVariable(name: "flags", scope: !4320, file: !120, line: 951, type: !102)
!4324 = !DILocation(line: 951, column: 9, scope: !4320)
!4325 = !DILocation(line: 953, column: 17, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4320, file: !120, line: 953, column: 2)
!4327 = !DILocation(line: 953, column: 21, scope: !4326)
!4328 = !DILocation(line: 953, column: 4, scope: !4326)
!4329 = !DILocation(line: 953, column: 24, scope: !4326)
!4330 = !DILocation(line: 953, column: 31, scope: !4326)
!4331 = !DILocation(line: 953, column: 35, scope: !4326)
!4332 = !DILocation(line: 953, column: 37, scope: !4326)
!4333 = !DILocation(line: 954, column: 17, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4320, file: !120, line: 954, column: 2)
!4335 = !DILocation(line: 954, column: 21, scope: !4334)
!4336 = !DILocation(line: 954, column: 4, scope: !4334)
!4337 = !DILocation(line: 954, column: 24, scope: !4334)
!4338 = !DILocation(line: 954, column: 30, scope: !4334)
!4339 = !DILocation(line: 954, column: 34, scope: !4334)
!4340 = !DILocation(line: 954, column: 36, scope: !4334)
!4341 = !DILocation(line: 956, column: 26, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4320, file: !120, line: 956, column: 2)
!4343 = !DILocation(line: 956, column: 17, scope: !4342)
!4344 = !DILocation(line: 956, column: 21, scope: !4342)
!4345 = !DILocation(line: 956, column: 4, scope: !4342)
!4346 = !DILocation(line: 956, column: 24, scope: !4342)
!4347 = !DILocation(line: 956, column: 34, scope: !4342)
!4348 = !DILocation(line: 956, column: 38, scope: !4342)
!4349 = !DILocation(line: 956, column: 40, scope: !4342)
!4350 = !DILocation(line: 957, column: 17, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4320, file: !120, line: 957, column: 2)
!4352 = !DILocation(line: 957, column: 21, scope: !4351)
!4353 = !DILocation(line: 957, column: 4, scope: !4351)
!4354 = !DILocation(line: 957, column: 24, scope: !4351)
!4355 = !DILocation(line: 957, column: 30, scope: !4351)
!4356 = !DILocation(line: 957, column: 34, scope: !4351)
!4357 = !DILocation(line: 957, column: 36, scope: !4351)
!4358 = !DILocation(line: 958, column: 1, scope: !4320)
!4359 = distinct !DISubprogram(name: "rdp_out_ts_glyphcache_capabilityset", scope: !120, file: !120, line: 969, type: !552, isLocal: true, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4360 = !DILocalVariable(name: "s", arg: 1, scope: !4359, file: !120, line: 969, type: !127)
!4361 = !DILocation(line: 969, column: 44, scope: !4359)
!4362 = !DILocalVariable(name: "supportlvl", scope: !4359, file: !120, line: 971, type: !102)
!4363 = !DILocation(line: 971, column: 9, scope: !4359)
!4364 = !DILocalVariable(name: "fragcache", scope: !4359, file: !120, line: 972, type: !105)
!4365 = !DILocation(line: 972, column: 9, scope: !4359)
!4366 = !DILocation(line: 973, column: 17, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4359, file: !120, line: 973, column: 2)
!4368 = !DILocation(line: 973, column: 21, scope: !4367)
!4369 = !DILocation(line: 973, column: 4, scope: !4367)
!4370 = !DILocation(line: 973, column: 24, scope: !4367)
!4371 = !DILocation(line: 973, column: 31, scope: !4367)
!4372 = !DILocation(line: 973, column: 35, scope: !4367)
!4373 = !DILocation(line: 973, column: 37, scope: !4367)
!4374 = !DILocation(line: 974, column: 17, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4359, file: !120, line: 974, column: 2)
!4376 = !DILocation(line: 974, column: 21, scope: !4375)
!4377 = !DILocation(line: 974, column: 4, scope: !4375)
!4378 = !DILocation(line: 974, column: 24, scope: !4375)
!4379 = !DILocation(line: 974, column: 31, scope: !4375)
!4380 = !DILocation(line: 974, column: 35, scope: !4375)
!4381 = !DILocation(line: 974, column: 37, scope: !4375)
!4382 = !DILocation(line: 977, column: 30, scope: !4359)
!4383 = !DILocation(line: 977, column: 2, scope: !4359)
!4384 = !DILocation(line: 978, column: 30, scope: !4359)
!4385 = !DILocation(line: 978, column: 2, scope: !4359)
!4386 = !DILocation(line: 979, column: 30, scope: !4359)
!4387 = !DILocation(line: 979, column: 2, scope: !4359)
!4388 = !DILocation(line: 980, column: 30, scope: !4359)
!4389 = !DILocation(line: 980, column: 2, scope: !4359)
!4390 = !DILocation(line: 981, column: 30, scope: !4359)
!4391 = !DILocation(line: 981, column: 2, scope: !4359)
!4392 = !DILocation(line: 982, column: 30, scope: !4359)
!4393 = !DILocation(line: 982, column: 2, scope: !4359)
!4394 = !DILocation(line: 983, column: 30, scope: !4359)
!4395 = !DILocation(line: 983, column: 2, scope: !4359)
!4396 = !DILocation(line: 984, column: 30, scope: !4359)
!4397 = !DILocation(line: 984, column: 2, scope: !4359)
!4398 = !DILocation(line: 985, column: 30, scope: !4359)
!4399 = !DILocation(line: 985, column: 2, scope: !4359)
!4400 = !DILocation(line: 986, column: 30, scope: !4359)
!4401 = !DILocation(line: 986, column: 2, scope: !4359)
!4402 = !DILocation(line: 988, column: 26, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4359, file: !120, line: 988, column: 2)
!4404 = !DILocation(line: 988, column: 17, scope: !4403)
!4405 = !DILocation(line: 988, column: 21, scope: !4403)
!4406 = !DILocation(line: 988, column: 4, scope: !4403)
!4407 = !DILocation(line: 988, column: 24, scope: !4403)
!4408 = !DILocation(line: 988, column: 38, scope: !4403)
!4409 = !DILocation(line: 988, column: 42, scope: !4403)
!4410 = !DILocation(line: 988, column: 44, scope: !4403)
!4411 = !DILocation(line: 989, column: 26, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4359, file: !120, line: 989, column: 2)
!4413 = !DILocation(line: 989, column: 17, scope: !4412)
!4414 = !DILocation(line: 989, column: 21, scope: !4412)
!4415 = !DILocation(line: 989, column: 4, scope: !4412)
!4416 = !DILocation(line: 989, column: 24, scope: !4412)
!4417 = !DILocation(line: 989, column: 39, scope: !4412)
!4418 = !DILocation(line: 989, column: 43, scope: !4412)
!4419 = !DILocation(line: 989, column: 45, scope: !4412)
!4420 = !DILocation(line: 990, column: 17, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4359, file: !120, line: 990, column: 2)
!4422 = !DILocation(line: 990, column: 21, scope: !4421)
!4423 = !DILocation(line: 990, column: 4, scope: !4421)
!4424 = !DILocation(line: 990, column: 24, scope: !4421)
!4425 = !DILocation(line: 990, column: 30, scope: !4421)
!4426 = !DILocation(line: 990, column: 34, scope: !4421)
!4427 = !DILocation(line: 990, column: 36, scope: !4421)
!4428 = !DILocation(line: 991, column: 1, scope: !4359)
!4429 = distinct !DISubprogram(name: "rdp_out_ts_multifragmentupdate_capabilityset", scope: !120, file: !120, line: 994, type: !552, isLocal: true, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4430 = !DILocalVariable(name: "s", arg: 1, scope: !4429, file: !120, line: 994, type: !127)
!4431 = !DILocation(line: 994, column: 53, scope: !4429)
!4432 = !DILocation(line: 996, column: 17, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !120, line: 996, column: 2)
!4434 = !DILocation(line: 996, column: 21, scope: !4433)
!4435 = !DILocation(line: 996, column: 4, scope: !4433)
!4436 = !DILocation(line: 996, column: 24, scope: !4433)
!4437 = !DILocation(line: 996, column: 31, scope: !4433)
!4438 = !DILocation(line: 996, column: 35, scope: !4433)
!4439 = !DILocation(line: 996, column: 37, scope: !4433)
!4440 = !DILocation(line: 997, column: 17, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4429, file: !120, line: 997, column: 2)
!4442 = !DILocation(line: 997, column: 21, scope: !4441)
!4443 = !DILocation(line: 997, column: 4, scope: !4441)
!4444 = !DILocation(line: 997, column: 24, scope: !4441)
!4445 = !DILocation(line: 997, column: 30, scope: !4441)
!4446 = !DILocation(line: 997, column: 34, scope: !4441)
!4447 = !DILocation(line: 997, column: 36, scope: !4441)
!4448 = !DILocation(line: 998, column: 17, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4429, file: !120, line: 998, column: 2)
!4450 = !DILocation(line: 998, column: 21, scope: !4449)
!4451 = !DILocation(line: 998, column: 4, scope: !4449)
!4452 = !DILocation(line: 998, column: 24, scope: !4449)
!4453 = !DILocation(line: 998, column: 34, scope: !4449)
!4454 = !DILocation(line: 998, column: 38, scope: !4449)
!4455 = !DILocation(line: 998, column: 40, scope: !4449)
!4456 = !DILocation(line: 999, column: 1, scope: !4429)
!4457 = distinct !DISubprogram(name: "rdp_out_ts_large_pointer_capabilityset", scope: !120, file: !120, line: 1002, type: !552, isLocal: true, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4458 = !DILocalVariable(name: "s", arg: 1, scope: !4457, file: !120, line: 1002, type: !127)
!4459 = !DILocation(line: 1002, column: 47, scope: !4457)
!4460 = !DILocalVariable(name: "flags", scope: !4457, file: !120, line: 1004, type: !102)
!4461 = !DILocation(line: 1004, column: 9, scope: !4457)
!4462 = !DILocation(line: 1006, column: 17, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4457, file: !120, line: 1006, column: 2)
!4464 = !DILocation(line: 1006, column: 21, scope: !4463)
!4465 = !DILocation(line: 1006, column: 4, scope: !4463)
!4466 = !DILocation(line: 1006, column: 24, scope: !4463)
!4467 = !DILocation(line: 1006, column: 31, scope: !4463)
!4468 = !DILocation(line: 1006, column: 35, scope: !4463)
!4469 = !DILocation(line: 1006, column: 37, scope: !4463)
!4470 = !DILocation(line: 1007, column: 17, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4457, file: !120, line: 1007, column: 2)
!4472 = !DILocation(line: 1007, column: 21, scope: !4471)
!4473 = !DILocation(line: 1007, column: 4, scope: !4471)
!4474 = !DILocation(line: 1007, column: 24, scope: !4471)
!4475 = !DILocation(line: 1007, column: 30, scope: !4471)
!4476 = !DILocation(line: 1007, column: 34, scope: !4471)
!4477 = !DILocation(line: 1007, column: 36, scope: !4471)
!4478 = !DILocation(line: 1008, column: 26, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4457, file: !120, line: 1008, column: 2)
!4480 = !DILocation(line: 1008, column: 17, scope: !4479)
!4481 = !DILocation(line: 1008, column: 21, scope: !4479)
!4482 = !DILocation(line: 1008, column: 4, scope: !4479)
!4483 = !DILocation(line: 1008, column: 24, scope: !4479)
!4484 = !DILocation(line: 1008, column: 34, scope: !4479)
!4485 = !DILocation(line: 1008, column: 38, scope: !4479)
!4486 = !DILocation(line: 1008, column: 40, scope: !4479)
!4487 = !DILocation(line: 1009, column: 1, scope: !4457)
!4488 = distinct !DISubprogram(name: "rdp_out_ts_cache_definition", scope: !120, file: !120, line: 961, type: !4489, isLocal: true, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !127, !102, !102}
!4491 = !DILocalVariable(name: "s", arg: 1, scope: !4488, file: !120, line: 961, type: !127)
!4492 = !DILocation(line: 961, column: 36, scope: !4488)
!4493 = !DILocalVariable(name: "entries", arg: 2, scope: !4488, file: !120, line: 961, type: !102)
!4494 = !DILocation(line: 961, column: 46, scope: !4488)
!4495 = !DILocalVariable(name: "maxcellsize", arg: 3, scope: !4488, file: !120, line: 961, type: !102)
!4496 = !DILocation(line: 961, column: 62, scope: !4488)
!4497 = !DILocation(line: 963, column: 26, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4488, file: !120, line: 963, column: 2)
!4499 = !DILocation(line: 963, column: 17, scope: !4498)
!4500 = !DILocation(line: 963, column: 21, scope: !4498)
!4501 = !DILocation(line: 963, column: 4, scope: !4498)
!4502 = !DILocation(line: 963, column: 24, scope: !4498)
!4503 = !DILocation(line: 963, column: 36, scope: !4498)
!4504 = !DILocation(line: 963, column: 40, scope: !4498)
!4505 = !DILocation(line: 963, column: 42, scope: !4498)
!4506 = !DILocation(line: 964, column: 26, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4488, file: !120, line: 964, column: 2)
!4508 = !DILocation(line: 964, column: 17, scope: !4507)
!4509 = !DILocation(line: 964, column: 21, scope: !4507)
!4510 = !DILocation(line: 964, column: 4, scope: !4507)
!4511 = !DILocation(line: 964, column: 24, scope: !4507)
!4512 = !DILocation(line: 964, column: 40, scope: !4507)
!4513 = !DILocation(line: 964, column: 44, scope: !4507)
!4514 = !DILocation(line: 964, column: 46, scope: !4507)
!4515 = !DILocation(line: 965, column: 1, scope: !4488)
!4516 = distinct !DISubprogram(name: "process_update_pdu", scope: !120, file: !120, line: 1501, type: !552, isLocal: true, isDefinition: true, scopeLine: 1502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4517 = !DILocalVariable(name: "s", arg: 1, scope: !4516, file: !120, line: 1501, type: !127)
!4518 = !DILocation(line: 1501, column: 27, scope: !4516)
!4519 = !DILocalVariable(name: "update_type", scope: !4516, file: !120, line: 1503, type: !102)
!4520 = !DILocation(line: 1503, column: 9, scope: !4516)
!4521 = !DILocalVariable(name: "count", scope: !4516, file: !120, line: 1503, type: !102)
!4522 = !DILocation(line: 1503, column: 22, scope: !4516)
!4523 = !DILocation(line: 1505, column: 31, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4516, file: !120, line: 1505, column: 2)
!4525 = !DILocation(line: 1505, column: 35, scope: !4524)
!4526 = !DILocation(line: 1505, column: 18, scope: !4524)
!4527 = !DILocation(line: 1505, column: 16, scope: !4524)
!4528 = !DILocation(line: 1505, column: 40, scope: !4524)
!4529 = !DILocation(line: 1505, column: 44, scope: !4524)
!4530 = !DILocation(line: 1505, column: 46, scope: !4524)
!4531 = !DILocation(line: 1507, column: 2, scope: !4516)
!4532 = !DILocation(line: 1508, column: 10, scope: !4516)
!4533 = !DILocation(line: 1508, column: 2, scope: !4516)
!4534 = !DILocation(line: 1511, column: 4, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4516, file: !120, line: 1509, column: 2)
!4536 = !DILocation(line: 1513, column: 5, scope: !4535)
!4537 = !DILocation(line: 1513, column: 9, scope: !4535)
!4538 = !DILocation(line: 1513, column: 11, scope: !4535)
!4539 = !DILocation(line: 1514, column: 27, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4535, file: !120, line: 1514, column: 4)
!4541 = !DILocation(line: 1514, column: 31, scope: !4540)
!4542 = !DILocation(line: 1514, column: 14, scope: !4540)
!4543 = !DILocation(line: 1514, column: 12, scope: !4540)
!4544 = !DILocation(line: 1514, column: 36, scope: !4540)
!4545 = !DILocation(line: 1514, column: 40, scope: !4540)
!4546 = !DILocation(line: 1514, column: 42, scope: !4540)
!4547 = !DILocation(line: 1515, column: 5, scope: !4535)
!4548 = !DILocation(line: 1515, column: 9, scope: !4535)
!4549 = !DILocation(line: 1515, column: 11, scope: !4535)
!4550 = !DILocation(line: 1516, column: 19, scope: !4535)
!4551 = !DILocation(line: 1516, column: 22, scope: !4535)
!4552 = !DILocation(line: 1516, column: 4, scope: !4535)
!4553 = !DILocation(line: 1517, column: 4, scope: !4535)
!4554 = !DILocation(line: 1520, column: 4, scope: !4535)
!4555 = !DILocation(line: 1521, column: 27, scope: !4535)
!4556 = !DILocation(line: 1521, column: 4, scope: !4535)
!4557 = !DILocation(line: 1522, column: 4, scope: !4535)
!4558 = !DILocation(line: 1525, column: 4, scope: !4535)
!4559 = !DILocation(line: 1526, column: 20, scope: !4535)
!4560 = !DILocation(line: 1526, column: 4, scope: !4535)
!4561 = !DILocation(line: 1527, column: 4, scope: !4535)
!4562 = !DILocation(line: 1530, column: 4, scope: !4535)
!4563 = !DILocation(line: 1531, column: 4, scope: !4535)
!4564 = !DILocation(line: 1535, column: 11, scope: !4535)
!4565 = !DILocation(line: 1534, column: 4, scope: !4535)
!4566 = !DILocation(line: 1536, column: 2, scope: !4535)
!4567 = !DILocation(line: 1537, column: 2, scope: !4516)
!4568 = !DILocation(line: 1538, column: 1, scope: !4516)
!4569 = distinct !DISubprogram(name: "process_pointer_pdu", scope: !120, file: !120, line: 1352, type: !552, isLocal: true, isDefinition: true, scopeLine: 1353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4570 = !DILocalVariable(name: "s", arg: 1, scope: !4569, file: !120, line: 1352, type: !127)
!4571 = !DILocation(line: 1352, column: 28, scope: !4569)
!4572 = !DILocalVariable(name: "message_type", scope: !4569, file: !120, line: 1354, type: !102)
!4573 = !DILocation(line: 1354, column: 9, scope: !4569)
!4574 = !DILocalVariable(name: "x", scope: !4569, file: !120, line: 1355, type: !102)
!4575 = !DILocation(line: 1355, column: 9, scope: !4569)
!4576 = !DILocalVariable(name: "y", scope: !4569, file: !120, line: 1355, type: !102)
!4577 = !DILocation(line: 1355, column: 12, scope: !4569)
!4578 = !DILocation(line: 1357, column: 2, scope: !4569)
!4579 = !DILocation(line: 1359, column: 32, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4569, file: !120, line: 1359, column: 2)
!4581 = !DILocation(line: 1359, column: 36, scope: !4580)
!4582 = !DILocation(line: 1359, column: 19, scope: !4580)
!4583 = !DILocation(line: 1359, column: 17, scope: !4580)
!4584 = !DILocation(line: 1359, column: 41, scope: !4580)
!4585 = !DILocation(line: 1359, column: 45, scope: !4580)
!4586 = !DILocation(line: 1359, column: 47, scope: !4580)
!4587 = !DILocation(line: 1360, column: 3, scope: !4569)
!4588 = !DILocation(line: 1360, column: 7, scope: !4569)
!4589 = !DILocation(line: 1360, column: 9, scope: !4569)
!4590 = !DILocation(line: 1362, column: 10, scope: !4569)
!4591 = !DILocation(line: 1362, column: 2, scope: !4569)
!4592 = !DILocation(line: 1365, column: 23, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !120, line: 1365, column: 4)
!4594 = distinct !DILexicalBlock(scope: !4569, file: !120, line: 1363, column: 2)
!4595 = !DILocation(line: 1365, column: 27, scope: !4593)
!4596 = !DILocation(line: 1365, column: 10, scope: !4593)
!4597 = !DILocation(line: 1365, column: 8, scope: !4593)
!4598 = !DILocation(line: 1365, column: 32, scope: !4593)
!4599 = !DILocation(line: 1365, column: 36, scope: !4593)
!4600 = !DILocation(line: 1365, column: 38, scope: !4593)
!4601 = !DILocation(line: 1366, column: 23, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4594, file: !120, line: 1366, column: 4)
!4603 = !DILocation(line: 1366, column: 27, scope: !4602)
!4604 = !DILocation(line: 1366, column: 10, scope: !4602)
!4605 = !DILocation(line: 1366, column: 8, scope: !4602)
!4606 = !DILocation(line: 1366, column: 32, scope: !4602)
!4607 = !DILocation(line: 1366, column: 36, scope: !4602)
!4608 = !DILocation(line: 1366, column: 38, scope: !4602)
!4609 = !DILocation(line: 1367, column: 10, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4594, file: !120, line: 1367, column: 8)
!4611 = !DILocation(line: 1367, column: 14, scope: !4610)
!4612 = !DILocation(line: 1367, column: 20, scope: !4610)
!4613 = !DILocation(line: 1367, column: 24, scope: !4610)
!4614 = !DILocation(line: 1367, column: 16, scope: !4610)
!4615 = !DILocation(line: 1367, column: 8, scope: !4594)
!4616 = !DILocation(line: 1368, column: 21, scope: !4610)
!4617 = !DILocation(line: 1368, column: 24, scope: !4610)
!4618 = !DILocation(line: 1368, column: 5, scope: !4610)
!4619 = !DILocation(line: 1369, column: 4, scope: !4594)
!4620 = !DILocation(line: 1372, column: 31, scope: !4594)
!4621 = !DILocation(line: 1372, column: 4, scope: !4594)
!4622 = !DILocation(line: 1373, column: 4, scope: !4594)
!4623 = !DILocation(line: 1376, column: 31, scope: !4594)
!4624 = !DILocation(line: 1376, column: 4, scope: !4594)
!4625 = !DILocation(line: 1377, column: 4, scope: !4594)
!4626 = !DILocation(line: 1380, column: 31, scope: !4594)
!4627 = !DILocation(line: 1380, column: 4, scope: !4594)
!4628 = !DILocation(line: 1381, column: 4, scope: !4594)
!4629 = !DILocation(line: 1384, column: 28, scope: !4594)
!4630 = !DILocation(line: 1384, column: 4, scope: !4594)
!4631 = !DILocation(line: 1385, column: 4, scope: !4594)
!4632 = !DILocation(line: 1389, column: 65, scope: !4594)
!4633 = !DILocation(line: 1388, column: 4, scope: !4594)
!4634 = !DILocation(line: 1390, column: 2, scope: !4594)
!4635 = !DILocation(line: 1391, column: 1, scope: !4569)
!4636 = distinct !DISubprogram(name: "process_ts_set_error_info_pdu", scope: !120, file: !120, line: 1614, type: !4637, isLocal: true, isDefinition: true, scopeLine: 1615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !127, !104}
!4639 = !DILocalVariable(name: "s", arg: 1, scope: !4636, file: !120, line: 1614, type: !127)
!4640 = !DILocation(line: 1614, column: 38, scope: !4636)
!4641 = !DILocalVariable(name: "ext_disc_reason", arg: 2, scope: !4636, file: !120, line: 1614, type: !104)
!4642 = !DILocation(line: 1614, column: 50, scope: !4636)
!4643 = !DILocation(line: 1616, column: 36, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4636, file: !120, line: 1616, column: 2)
!4645 = !DILocation(line: 1616, column: 40, scope: !4644)
!4646 = !DILocation(line: 1616, column: 23, scope: !4644)
!4647 = !DILocation(line: 1616, column: 5, scope: !4644)
!4648 = !DILocation(line: 1616, column: 21, scope: !4644)
!4649 = !DILocation(line: 1616, column: 45, scope: !4644)
!4650 = !DILocation(line: 1616, column: 49, scope: !4644)
!4651 = !DILocation(line: 1616, column: 51, scope: !4644)
!4652 = !DILocation(line: 1618, column: 79, scope: !4636)
!4653 = !DILocation(line: 1618, column: 78, scope: !4636)
!4654 = !DILocation(line: 1618, column: 2, scope: !4636)
!4655 = !DILocation(line: 1619, column: 1, scope: !4636)
!4656 = distinct !DISubprogram(name: "rdp_out_unistr_mandatory_null", scope: !120, file: !120, line: 215, type: !157, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !141)
!4657 = !DILocalVariable(name: "s", arg: 1, scope: !4656, file: !120, line: 215, type: !127)
!4658 = !DILocation(line: 215, column: 38, scope: !4656)
!4659 = !DILocalVariable(name: "string", arg: 2, scope: !4656, file: !120, line: 215, type: !95)
!4660 = !DILocation(line: 215, column: 47, scope: !4656)
!4661 = !DILocalVariable(name: "len", arg: 3, scope: !4656, file: !120, line: 215, type: !122)
!4662 = !DILocation(line: 215, column: 59, scope: !4656)
!4663 = !DILocation(line: 223, column: 6, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4656, file: !120, line: 223, column: 6)
!4665 = !DILocation(line: 223, column: 13, scope: !4664)
!4666 = !DILocation(line: 223, column: 16, scope: !4667)
!4667 = !DILexicalBlockFile(scope: !4664, file: !120, discriminator: 1)
!4668 = !DILocation(line: 223, column: 20, scope: !4667)
!4669 = !DILocation(line: 223, column: 6, scope: !4667)
!4670 = !DILocation(line: 224, column: 18, scope: !4664)
!4671 = !DILocation(line: 224, column: 21, scope: !4664)
!4672 = !DILocation(line: 224, column: 29, scope: !4664)
!4673 = !DILocation(line: 224, column: 3, scope: !4664)
!4674 = !DILocation(line: 226, column: 18, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4664, file: !120, line: 226, column: 3)
!4676 = !DILocation(line: 226, column: 22, scope: !4675)
!4677 = !DILocation(line: 226, column: 5, scope: !4675)
!4678 = !DILocation(line: 226, column: 25, scope: !4675)
!4679 = !DILocation(line: 226, column: 31, scope: !4675)
!4680 = !DILocation(line: 226, column: 35, scope: !4675)
!4681 = !DILocation(line: 226, column: 37, scope: !4675)
!4682 = !DILocation(line: 227, column: 1, scope: !4656)
!4683 = !DILocalVariable(name: "s", arg: 1, scope: !156, file: !120, line: 231, type: !127)
!4684 = !DILocation(line: 231, column: 23, scope: !156)
!4685 = !DILocalVariable(name: "string", arg: 2, scope: !156, file: !120, line: 231, type: !95)
!4686 = !DILocation(line: 231, column: 32, scope: !156)
!4687 = !DILocalVariable(name: "len", arg: 3, scope: !156, file: !120, line: 231, type: !122)
!4688 = !DILocation(line: 231, column: 44, scope: !156)
!4689 = !DILocalVariable(name: "ibl", scope: !156, file: !120, line: 240, type: !98)
!4690 = !DILocation(line: 240, column: 9, scope: !156)
!4691 = !DILocalVariable(name: "obl", scope: !156, file: !120, line: 240, type: !98)
!4692 = !DILocation(line: 240, column: 14, scope: !156)
!4693 = !DILocalVariable(name: "pin", scope: !156, file: !120, line: 241, type: !95)
!4694 = !DILocation(line: 241, column: 8, scope: !156)
!4695 = !DILocalVariable(name: "pout", scope: !156, file: !120, line: 241, type: !95)
!4696 = !DILocation(line: 241, column: 14, scope: !156)
!4697 = !DILocation(line: 244, column: 6, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !156, file: !120, line: 244, column: 6)
!4699 = !DILocation(line: 244, column: 13, scope: !4698)
!4700 = !DILocation(line: 244, column: 20, scope: !4698)
!4701 = !DILocation(line: 244, column: 23, scope: !4702)
!4702 = !DILexicalBlockFile(scope: !4698, file: !120, discriminator: 1)
!4703 = !DILocation(line: 244, column: 27, scope: !4702)
!4704 = !DILocation(line: 244, column: 6, scope: !4702)
!4705 = !DILocation(line: 245, column: 3, scope: !4698)
!4706 = !DILocation(line: 248, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !156, file: !120, line: 248, column: 6)
!4708 = !DILocation(line: 248, column: 6, scope: !156)
!4709 = !DILocation(line: 250, column: 23, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4707, file: !120, line: 249, column: 2)
!4711 = !DILocation(line: 250, column: 22, scope: !4710)
!4712 = !DILocation(line: 251, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4710, file: !120, line: 251, column: 7)
!4714 = !DILocation(line: 251, column: 26, scope: !4713)
!4715 = !DILocation(line: 251, column: 7, scope: !4710)
!4716 = !DILocation(line: 254, column: 35, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4713, file: !120, line: 252, column: 3)
!4718 = !DILocation(line: 253, column: 4, scope: !4717)
!4719 = !DILocation(line: 255, column: 4, scope: !4717)
!4720 = !DILocation(line: 257, column: 2, scope: !4710)
!4721 = !DILocation(line: 260, column: 15, scope: !156)
!4722 = !DILocation(line: 260, column: 8, scope: !156)
!4723 = !DILocation(line: 260, column: 6, scope: !156)
!4724 = !DILocation(line: 261, column: 8, scope: !156)
!4725 = !DILocation(line: 261, column: 12, scope: !156)
!4726 = !DILocation(line: 261, column: 6, scope: !156)
!4727 = !DILocation(line: 262, column: 8, scope: !156)
!4728 = !DILocation(line: 262, column: 6, scope: !156)
!4729 = !DILocation(line: 263, column: 18, scope: !156)
!4730 = !DILocation(line: 263, column: 21, scope: !156)
!4731 = !DILocation(line: 263, column: 7, scope: !156)
!4732 = !DILocation(line: 265, column: 9, scope: !156)
!4733 = !DILocation(line: 265, column: 18, scope: !156)
!4734 = !DILocation(line: 265, column: 22, scope: !156)
!4735 = !DILocation(line: 265, column: 2, scope: !156)
!4736 = !DILocation(line: 268, column: 11, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !156, file: !120, line: 268, column: 5)
!4738 = !DILocation(line: 268, column: 5, scope: !4737)
!4739 = !DILocation(line: 268, column: 66, scope: !4737)
!4740 = !DILocation(line: 268, column: 5, scope: !156)
!4741 = !DILocation(line: 270, column: 73, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4737, file: !120, line: 269, column: 2)
!4743 = !DILocation(line: 270, column: 72, scope: !4742)
!4744 = !DILocation(line: 270, column: 3, scope: !4745)
!4745 = !DILexicalBlockFile(scope: !4742, file: !120, discriminator: 1)
!4746 = !DILocation(line: 271, column: 3, scope: !4742)
!4747 = !DILocation(line: 274, column: 10, scope: !156)
!4748 = !DILocation(line: 274, column: 14, scope: !156)
!4749 = !DILocation(line: 274, column: 2, scope: !156)
!4750 = !DILocation(line: 274, column: 5, scope: !156)
!4751 = !DILocation(line: 274, column: 7, scope: !156)
!4752 = !DILocation(line: 275, column: 1, scope: !156)
!4753 = !DILocation(line: 275, column: 1, scope: !4754)
!4754 = !DILexicalBlockFile(scope: !156, file: !120, discriminator: 1)
