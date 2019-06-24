; ModuleID = './line302-fe-irc-messages.o.i'
source_filename = "./line302-fe-irc-messages.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"message own_public\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"message irc op_public\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"message irc own_wall\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"message irc own_action\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"message irc action\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"message irc own_notice\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"message irc notice\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"message irc own_ctcp\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"message irc ctcp\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @fe_irc_messages_init() #0 !dbg !1102 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1105
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_op_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1106
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_message_own_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1107
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sig_message_own_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1108
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1109
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sig_message_own_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1110
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1111
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1112
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_irc_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1113
  ret void, !dbg !1114
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_public(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1115 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1118, metadata !1119), !dbg !1120
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1121, metadata !1119), !dbg !1122
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1123, metadata !1119), !dbg !1124
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1125, metadata !1119), !dbg !1126
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1127, metadata !1119), !dbg !1128
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1129, metadata !1119), !dbg !1130
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1131
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !1131
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1133
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !1134
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !1135
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1136
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !1138
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !1138
  br i1 %18, label %19, label %20, !dbg !1139

; <label>:19:                                     ; preds = %4
  br i1 false, label %21, label %22, !dbg !1140

; <label>:20:                                     ; preds = %4
  br i1 false, label %22, label %21, !dbg !1142

; <label>:21:                                     ; preds = %20, %19
  br label %54, !dbg !1144

; <label>:22:                                     ; preds = %20, %19
  %23 = load i8*, i8** %7, align 8, !dbg !1145
  store i8* %23, i8** %9, align 8, !dbg !1146
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1147
  %25 = bitcast %struct._SERVER_REC* %24 to i8*, !dbg !1147
  %26 = call i8* @module_check_cast(i8* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1148
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !1149
  %28 = bitcast %struct._SERVER_REC* %27 to i8*, !dbg !1150
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1151
  %30 = bitcast i8* %29 to %struct._IRC_SERVER_REC*, !dbg !1153
  %31 = load i8*, i8** %7, align 8, !dbg !1154
  %32 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1155
  store i8* %32, i8** %7, align 8, !dbg !1156
  %33 = load i8*, i8** %7, align 8, !dbg !1157
  %34 = load i8*, i8** %9, align 8, !dbg !1159
  %35 = icmp ne i8* %33, %34, !dbg !1160
  br i1 %35, label %36, label %54, !dbg !1161

; <label>:36:                                     ; preds = %22
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1162
  %38 = load i8*, i8** %7, align 8, !dbg !1164
  %39 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %37, i8* %38), !dbg !1165
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1166
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 7, !dbg !1167
  %42 = load i8*, i8** %41, align 8, !dbg !1167
  %43 = call i8* @channel_get_nickmode(%struct._CHANNEL_REC* %39, i8* %42), !dbg !1168
  store i8* %43, i8** %10, align 8, !dbg !1170
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1171
  %45 = bitcast %struct._SERVER_REC* %44 to i8*, !dbg !1171
  %46 = load i8*, i8** %7, align 8, !dbg !1172
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1173
  %48 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %47, i32 0, i32 7, !dbg !1174
  %49 = load i8*, i8** %48, align 8, !dbg !1174
  %50 = load i8*, i8** %9, align 8, !dbg !1175
  %51 = load i8*, i8** %6, align 8, !dbg !1176
  %52 = load i8*, i8** %10, align 8, !dbg !1177
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %45, i8* %46, i32 50331652, i32 94, i8* %49, i8* %50, i8* %51, i8* %52), !dbg !1178
  %53 = load i8*, i8** %10, align 8, !dbg !1179
  call void @g_free(i8* %53), !dbg !1180
  call void @signal_stop(), !dbg !1181
  br label %54, !dbg !1182

; <label>:54:                                     ; preds = %21, %36, %22
  ret void, !dbg !1183
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_irc_op_public(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1184 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1187, metadata !1119), !dbg !1188
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1189, metadata !1119), !dbg !1190
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1191, metadata !1119), !dbg !1192
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1193, metadata !1119), !dbg !1194
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1195, metadata !1119), !dbg !1196
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1197, metadata !1119), !dbg !1198
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1199, metadata !1119), !dbg !1200
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1201, metadata !1119), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1203, metadata !1119), !dbg !1204
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1205
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1205
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1206
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1207
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1208
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1209
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1211
  %22 = load i8*, i8** %10, align 8, !dbg !1212
  %23 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %21, i8* %22), !dbg !1213
  store i8* %23, i8** %14, align 8, !dbg !1215
  %24 = load i8*, i8** %10, align 8, !dbg !1216
  %25 = load i8*, i8** %14, align 8, !dbg !1217
  %26 = load i8*, i8** %10, align 8, !dbg !1218
  %27 = ptrtoint i8* %25 to i64, !dbg !1219
  %28 = ptrtoint i8* %26 to i64, !dbg !1219
  %29 = sub i64 %27, %28, !dbg !1219
  %30 = call noalias i8* @g_strndup(i8* %24, i64 %29), !dbg !1220
  store i8* %30, i8** %13, align 8, !dbg !1221
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1222
  %32 = bitcast %struct._SERVER_REC* %31 to i8*, !dbg !1222
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1223
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !1224
  %35 = bitcast %struct._SERVER_REC* %34 to i8*, !dbg !1225
  %36 = call i8* @chat_protocol_check_cast(i8* %35, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1226
  %37 = bitcast i8* %36 to %struct._IRC_SERVER_REC*, !dbg !1227
  %38 = load i8*, i8** %14, align 8, !dbg !1228
  %39 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %37, i8* %38), !dbg !1229
  store i8* %39, i8** %14, align 8, !dbg !1230
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1231
  %41 = load i8*, i8** %14, align 8, !dbg !1232
  %42 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %40, i8* %41), !dbg !1233
  %43 = load i8*, i8** %8, align 8, !dbg !1234
  %44 = call i8* @channel_get_nickmode(%struct._CHANNEL_REC* %42, i8* %43), !dbg !1235
  store i8* %44, i8** %11, align 8, !dbg !1236
  %45 = load i8*, i8** %13, align 8, !dbg !1237
  %46 = load i8*, i8** %14, align 8, !dbg !1238
  %47 = call noalias i8* (i8*, ...) @g_strconcat(i8* %45, i8* %46, i8* null), !dbg !1239
  store i8* %47, i8** %12, align 8, !dbg !1240
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1241
  %49 = bitcast %struct._SERVER_REC* %48 to i8*, !dbg !1241
  %50 = load i8*, i8** %14, align 8, !dbg !1242
  %51 = load i8*, i8** %8, align 8, !dbg !1243
  %52 = load i8*, i8** %12, align 8, !dbg !1244
  %53 = load i8*, i8** %7, align 8, !dbg !1245
  %54 = load i8*, i8** %11, align 8, !dbg !1246
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %49, i8* %50, i32 4, i32 102, i8* %51, i8* %52, i8* %53, i8* %54), !dbg !1247
  %55 = load i8*, i8** %11, align 8, !dbg !1248
  call void @g_free(i8* %55), !dbg !1249
  %56 = load i8*, i8** %12, align 8, !dbg !1250
  call void @g_free(i8* %56), !dbg !1251
  %57 = load i8*, i8** %13, align 8, !dbg !1252
  call void @g_free(i8* %57), !dbg !1253
  ret void, !dbg !1254
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_wall(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !1255 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1258, metadata !1119), !dbg !1259
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1260, metadata !1119), !dbg !1261
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1262, metadata !1119), !dbg !1263
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1264, metadata !1119), !dbg !1265
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1266, metadata !1119), !dbg !1267
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1268
  %10 = load i8*, i8** %6, align 8, !dbg !1269
  %11 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %9, i8* %10), !dbg !1270
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1271
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 7, !dbg !1272
  %14 = load i8*, i8** %13, align 8, !dbg !1272
  %15 = call i8* @channel_get_nickmode(%struct._CHANNEL_REC* %11, i8* %14), !dbg !1273
  store i8* %15, i8** %7, align 8, !dbg !1275
  %16 = load i8*, i8** %6, align 8, !dbg !1276
  %17 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* %16, i8* null), !dbg !1277
  store i8* %17, i8** %8, align 8, !dbg !1278
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1279
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1279
  %20 = load i8*, i8** %6, align 8, !dbg !1280
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1281
  %22 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %21, i32 0, i32 7, !dbg !1282
  %23 = load i8*, i8** %22, align 8, !dbg !1282
  %24 = load i8*, i8** %8, align 8, !dbg !1283
  %25 = load i8*, i8** %5, align 8, !dbg !1284
  %26 = load i8*, i8** %7, align 8, !dbg !1285
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %19, i8* %20, i32 50331652, i32 94, i8* %23, i8* %24, i8* %25, i8* %26), !dbg !1286
  %27 = load i8*, i8** %7, align 8, !dbg !1287
  call void @g_free(i8* %27), !dbg !1288
  %28 = load i8*, i8** %8, align 8, !dbg !1289
  call void @g_free(i8* %28), !dbg !1290
  ret void, !dbg !1291
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_action(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1292 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1295, metadata !1119), !dbg !1296
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1297, metadata !1119), !dbg !1298
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1299, metadata !1119), !dbg !1300
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1301, metadata !1119), !dbg !1302
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1303, metadata !1119), !dbg !1304
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1305, metadata !1119), !dbg !1306
  store i8* null, i8** %9, align 8, !dbg !1306
  %10 = load i8*, i8** %6, align 8, !dbg !1307
  store i8* %10, i8** %8, align 8, !dbg !1308
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1309
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !1309
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1310
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !1311
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !1312
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1313
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !1315
  %18 = load i8*, i8** %6, align 8, !dbg !1316
  %19 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %17, i8* %18), !dbg !1317
  store i8* %19, i8** %6, align 8, !dbg !1319
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1320
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !1320
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1322
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !1323
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 27, !dbg !1324
  %25 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %24, align 8, !dbg !1324
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1325
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1325
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1326
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1328
  %30 = load i8*, i8** %6, align 8, !dbg !1329
  %31 = call i32 %25(%struct._SERVER_REC* %29, i8* %30), !dbg !1330
  %32 = icmp ne i32 %31, 0, !dbg !1332
  br i1 %32, label %33, label %47, !dbg !1333

; <label>:33:                                     ; preds = %3
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1334
  %35 = bitcast %struct._IRC_SERVER_REC* %34 to i8*, !dbg !1334
  %36 = call i8* @module_check_cast(i8* %35, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1335
  %37 = bitcast i8* %36 to %struct._SERVER_REC*, !dbg !1336
  %38 = load i8*, i8** %6, align 8, !dbg !1337
  %39 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %37, i8* %38), !dbg !1338
  %40 = bitcast %struct._CHANNEL_REC* %39 to i8*, !dbg !1339
  %41 = call i8* @module_check_cast_module(i8* %40, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !1340
  %42 = bitcast i8* %41 to %struct._CHANNEL_REC*, !dbg !1341
  %43 = bitcast %struct._CHANNEL_REC* %42 to i8*, !dbg !1342
  %44 = call i8* @chat_protocol_check_cast(i8* %43, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1343
  %45 = bitcast i8* %44 to %struct._IRC_CHANNEL_REC*, !dbg !1345
  %46 = bitcast %struct._IRC_CHANNEL_REC* %45 to i8*, !dbg !1346
  store i8* %46, i8** %7, align 8, !dbg !1347
  br label %52, !dbg !1348

; <label>:47:                                     ; preds = %3
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1349
  %49 = load i8*, i8** %6, align 8, !dbg !1350
  %50 = call %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC* %48, i8* %49), !dbg !1351
  %51 = bitcast %struct._QUERY_REC* %50 to i8*, !dbg !1351
  store i8* %51, i8** %7, align 8, !dbg !1352
  br label %52

; <label>:52:                                     ; preds = %47, %33
  %53 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1353
  %54 = icmp ne i32 %53, 0, !dbg !1353
  br i1 %54, label %55, label %60, !dbg !1355

; <label>:55:                                     ; preds = %52
  %56 = load i8*, i8** %7, align 8, !dbg !1356
  %57 = bitcast i8* %56 to %struct._WI_ITEM_REC*, !dbg !1356
  %58 = load i8*, i8** %5, align 8, !dbg !1357
  %59 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %57, i8* %58), !dbg !1358
  store i8* %59, i8** %9, align 8, !dbg !1359
  store i8* %59, i8** %5, align 8, !dbg !1360
  br label %60, !dbg !1361

; <label>:60:                                     ; preds = %55, %52
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1362
  %62 = bitcast %struct._IRC_SERVER_REC* %61 to i8*, !dbg !1362
  %63 = load i8*, i8** %6, align 8, !dbg !1363
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1364
  %65 = bitcast %struct._IRC_SERVER_REC* %64 to i8*, !dbg !1364
  %66 = call i8* @module_check_cast(i8* %65, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1365
  %67 = bitcast i8* %66 to %struct._SERVER_REC*, !dbg !1366
  %68 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %67, i32 0, i32 27, !dbg !1367
  %69 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %68, align 8, !dbg !1367
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1368
  %71 = bitcast %struct._IRC_SERVER_REC* %70 to i8*, !dbg !1368
  %72 = call i8* @module_check_cast(i8* %71, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1369
  %73 = bitcast i8* %72 to %struct._SERVER_REC*, !dbg !1371
  %74 = load i8*, i8** %6, align 8, !dbg !1372
  %75 = call i32 %69(%struct._SERVER_REC* %73, i8* %74), !dbg !1373
  %76 = icmp ne i32 %75, 0, !dbg !1375
  %77 = select i1 %76, i32 4, i32 2, !dbg !1375
  %78 = or i32 50331712, %77, !dbg !1376
  %79 = load i8*, i8** %7, align 8, !dbg !1368
  %80 = icmp ne i8* %79, null, !dbg !1377
  br i1 %80, label %81, label %85, !dbg !1378

; <label>:81:                                     ; preds = %60
  %82 = load i8*, i8** %8, align 8, !dbg !1379
  %83 = load i8*, i8** %6, align 8, !dbg !1380
  %84 = icmp eq i8* %82, %83, !dbg !1381
  br label %85

; <label>:85:                                     ; preds = %81, %60
  %86 = phi i1 [ false, %60 ], [ %84, %81 ]
  %87 = select i1 %86, i32 89, i32 90, !dbg !1382
  %88 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1383
  %89 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %88, i32 0, i32 7, !dbg !1384
  %90 = load i8*, i8** %89, align 8, !dbg !1384
  %91 = load i8*, i8** %5, align 8, !dbg !1385
  %92 = load i8*, i8** %8, align 8, !dbg !1386
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %62, i8* %63, i32 %78, i32 %87, i8* %90, i8* %91, i8* %92), !dbg !1387
  %93 = load i8*, i8** %9, align 8, !dbg !1388
  call void @g_free(i8* %93), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_irc_action(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1391 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1394, metadata !1119), !dbg !1395
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1396, metadata !1119), !dbg !1397
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1398, metadata !1119), !dbg !1399
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1400, metadata !1119), !dbg !1401
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1402, metadata !1119), !dbg !1403
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1404, metadata !1119), !dbg !1405
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1406, metadata !1119), !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1408, metadata !1119), !dbg !1409
  store i8* null, i8** %13, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1410, metadata !1119), !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1412, metadata !1119), !dbg !1413
  store i32 0, i32* %15, align 4, !dbg !1413
  %16 = load i8*, i8** %10, align 8, !dbg !1414
  store i8* %16, i8** %12, align 8, !dbg !1415
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1416
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1416
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1417
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !1418
  %21 = bitcast %struct._SERVER_REC* %20 to i8*, !dbg !1419
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1420
  %23 = bitcast i8* %22 to %struct._IRC_SERVER_REC*, !dbg !1422
  %24 = load i8*, i8** %10, align 8, !dbg !1423
  %25 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %23, i8* %24), !dbg !1424
  store i8* %25, i8** %10, align 8, !dbg !1426
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1427
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1427
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1428
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1429
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 27, !dbg !1430
  %31 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %30, align 8, !dbg !1430
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1431
  %33 = bitcast %struct._IRC_SERVER_REC* %32 to i8*, !dbg !1431
  %34 = call i8* @module_check_cast(i8* %33, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1432
  %35 = bitcast i8* %34 to %struct._SERVER_REC*, !dbg !1433
  %36 = load i8*, i8** %10, align 8, !dbg !1434
  %37 = call i32 %31(%struct._SERVER_REC* %35, i8* %36), !dbg !1435
  %38 = icmp ne i32 %37, 0, !dbg !1436
  %39 = select i1 %38, i32 4, i32 2, !dbg !1436
  %40 = or i32 64, %39, !dbg !1437
  store i32 %40, i32* %14, align 4, !dbg !1438
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1439
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !1439
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1441
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !1442
  %45 = load i8*, i8** %8, align 8, !dbg !1443
  %46 = load i8*, i8** %9, align 8, !dbg !1444
  %47 = load i8*, i8** %10, align 8, !dbg !1445
  %48 = load i8*, i8** %7, align 8, !dbg !1446
  %49 = load i32, i32* %14, align 4, !dbg !1447
  %50 = call i32 @ignore_check(%struct._SERVER_REC* %44, i8* %45, i8* %46, i8* %47, i8* %48, i32 %49), !dbg !1448
  %51 = icmp ne i32 %50, 0, !dbg !1450
  br i1 %51, label %52, label %53, !dbg !1451

; <label>:52:                                     ; preds = %5
  br label %224, !dbg !1452

; <label>:53:                                     ; preds = %5
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1453
  %55 = bitcast %struct._IRC_SERVER_REC* %54 to i8*, !dbg !1453
  %56 = call i8* @module_check_cast(i8* %55, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1455
  %57 = bitcast i8* %56 to %struct._SERVER_REC*, !dbg !1456
  %58 = load i8*, i8** %8, align 8, !dbg !1457
  %59 = load i8*, i8** %9, align 8, !dbg !1458
  %60 = load i8*, i8** %10, align 8, !dbg !1459
  %61 = load i8*, i8** %7, align 8, !dbg !1460
  %62 = load i32, i32* %14, align 4, !dbg !1461
  %63 = or i32 %62, 33554432, !dbg !1462
  %64 = call i32 @ignore_check(%struct._SERVER_REC* %57, i8* %58, i8* %59, i8* %60, i8* %61, i32 %63), !dbg !1463
  %65 = icmp ne i32 %64, 0, !dbg !1465
  br i1 %65, label %66, label %69, !dbg !1466

; <label>:66:                                     ; preds = %53
  %67 = load i32, i32* %14, align 4, !dbg !1467
  %68 = or i32 %67, 33554432, !dbg !1467
  store i32 %68, i32* %14, align 4, !dbg !1467
  br label %69, !dbg !1468

; <label>:69:                                     ; preds = %66, %53
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1469
  %71 = bitcast %struct._IRC_SERVER_REC* %70 to i8*, !dbg !1469
  %72 = call i8* @module_check_cast(i8* %71, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1471
  %73 = bitcast i8* %72 to %struct._SERVER_REC*, !dbg !1472
  %74 = load i8*, i8** %8, align 8, !dbg !1473
  %75 = load i8*, i8** %9, align 8, !dbg !1474
  %76 = load i8*, i8** %10, align 8, !dbg !1475
  %77 = load i8*, i8** %7, align 8, !dbg !1476
  %78 = load i32, i32* %14, align 4, !dbg !1477
  %79 = or i32 %78, 268435456, !dbg !1478
  %80 = call i32 @ignore_check(%struct._SERVER_REC* %73, i8* %74, i8* %75, i8* %76, i8* %77, i32 %79), !dbg !1479
  %81 = icmp ne i32 %80, 0, !dbg !1481
  br i1 %81, label %82, label %85, !dbg !1482

; <label>:82:                                     ; preds = %69
  %83 = load i32, i32* %14, align 4, !dbg !1483
  %84 = or i32 %83, 268435456, !dbg !1483
  store i32 %84, i32* %14, align 4, !dbg !1483
  br label %85, !dbg !1484

; <label>:85:                                     ; preds = %82, %69
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1485
  %87 = bitcast %struct._IRC_SERVER_REC* %86 to i8*, !dbg !1485
  %88 = call i8* @module_check_cast(i8* %87, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1487
  %89 = bitcast i8* %88 to %struct._SERVER_REC*, !dbg !1488
  %90 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %89, i32 0, i32 27, !dbg !1489
  %91 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %90, align 8, !dbg !1489
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1490
  %93 = bitcast %struct._IRC_SERVER_REC* %92 to i8*, !dbg !1490
  %94 = call i8* @module_check_cast(i8* %93, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1491
  %95 = bitcast i8* %94 to %struct._SERVER_REC*, !dbg !1493
  %96 = load i8*, i8** %10, align 8, !dbg !1494
  %97 = call i32 %91(%struct._SERVER_REC* %95, i8* %96), !dbg !1495
  %98 = icmp ne i32 %97, 0, !dbg !1497
  br i1 %98, label %99, label %113, !dbg !1498

; <label>:99:                                     ; preds = %85
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1499
  %101 = bitcast %struct._IRC_SERVER_REC* %100 to i8*, !dbg !1499
  %102 = call i8* @module_check_cast(i8* %101, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1501
  %103 = bitcast i8* %102 to %struct._SERVER_REC*, !dbg !1502
  %104 = load i8*, i8** %10, align 8, !dbg !1503
  %105 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %103, i8* %104), !dbg !1504
  %106 = bitcast %struct._CHANNEL_REC* %105 to i8*, !dbg !1506
  %107 = call i8* @module_check_cast_module(i8* %106, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !1507
  %108 = bitcast i8* %107 to %struct._CHANNEL_REC*, !dbg !1509
  %109 = bitcast %struct._CHANNEL_REC* %108 to i8*, !dbg !1510
  %110 = call i8* @chat_protocol_check_cast(i8* %109, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1511
  %111 = bitcast i8* %110 to %struct._IRC_CHANNEL_REC*, !dbg !1513
  %112 = bitcast %struct._IRC_CHANNEL_REC* %111 to i8*, !dbg !1514
  store i8* %112, i8** %11, align 8, !dbg !1515
  br label %137, !dbg !1516

; <label>:113:                                    ; preds = %85
  %114 = load i8*, i8** %8, align 8, !dbg !1517
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1519
  %116 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %115, i32 0, i32 7, !dbg !1520
  %117 = load i8*, i8** %116, align 8, !dbg !1520
  %118 = call i32 @g_strcmp0(i8* %114, i8* %117), !dbg !1521
  %119 = icmp ne i32 %118, 0, !dbg !1522
  %120 = xor i1 %119, true, !dbg !1522
  %121 = zext i1 %120 to i32, !dbg !1522
  store i32 %121, i32* %15, align 4, !dbg !1523
  %122 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1524
  %123 = bitcast %struct._IRC_SERVER_REC* %122 to i8*, !dbg !1524
  %124 = call i8* @module_check_cast(i8* %123, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1525
  %125 = bitcast i8* %124 to %struct._SERVER_REC*, !dbg !1526
  %126 = load i32, i32* %15, align 4, !dbg !1527
  %127 = icmp ne i32 %126, 0, !dbg !1527
  br i1 %127, label %128, label %130, !dbg !1527

; <label>:128:                                    ; preds = %113
  %129 = load i8*, i8** %10, align 8, !dbg !1528
  br label %132, !dbg !1530

; <label>:130:                                    ; preds = %113
  %131 = load i8*, i8** %8, align 8, !dbg !1531
  br label %132, !dbg !1533

; <label>:132:                                    ; preds = %130, %128
  %133 = phi i8* [ %129, %128 ], [ %131, %130 ], !dbg !1534
  %134 = load i32, i32* %14, align 4, !dbg !1536
  %135 = call %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC* %125, i8* %133, i32 0, i32 %134), !dbg !1537
  %136 = bitcast %struct._QUERY_REC* %135 to i8*, !dbg !1537
  store i8* %136, i8** %11, align 8, !dbg !1538
  br label %137

; <label>:137:                                    ; preds = %132, %99
  %138 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1539
  %139 = icmp ne i32 %138, 0, !dbg !1539
  br i1 %139, label %140, label %145, !dbg !1541

; <label>:140:                                    ; preds = %137
  %141 = load i8*, i8** %11, align 8, !dbg !1542
  %142 = bitcast i8* %141 to %struct._WI_ITEM_REC*, !dbg !1542
  %143 = load i8*, i8** %7, align 8, !dbg !1543
  %144 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %142, i8* %143), !dbg !1544
  store i8* %144, i8** %13, align 8, !dbg !1545
  store i8* %144, i8** %7, align 8, !dbg !1546
  br label %145, !dbg !1547

; <label>:145:                                    ; preds = %140, %137
  %146 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1548
  %147 = bitcast %struct._IRC_SERVER_REC* %146 to i8*, !dbg !1548
  %148 = call i8* @module_check_cast(i8* %147, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1550
  %149 = bitcast i8* %148 to %struct._SERVER_REC*, !dbg !1551
  %150 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %149, i32 0, i32 27, !dbg !1552
  %151 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %150, align 8, !dbg !1552
  %152 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1553
  %153 = bitcast %struct._IRC_SERVER_REC* %152 to i8*, !dbg !1553
  %154 = call i8* @module_check_cast(i8* %153, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1554
  %155 = bitcast i8* %154 to %struct._SERVER_REC*, !dbg !1556
  %156 = load i8*, i8** %10, align 8, !dbg !1557
  %157 = call i32 %151(%struct._SERVER_REC* %155, i8* %156), !dbg !1558
  %158 = icmp ne i32 %157, 0, !dbg !1560
  br i1 %158, label %159, label %184, !dbg !1561

; <label>:159:                                    ; preds = %145
  %160 = load i8*, i8** %11, align 8, !dbg !1562
  %161 = bitcast i8* %160 to %struct._WI_ITEM_REC*, !dbg !1562
  %162 = call i32 @window_item_is_active(%struct._WI_ITEM_REC* %161), !dbg !1565
  %163 = icmp ne i32 %162, 0, !dbg !1565
  br i1 %163, label %164, label %175, !dbg !1566

; <label>:164:                                    ; preds = %159
  %165 = load i8*, i8** %10, align 8, !dbg !1567
  %166 = load i8*, i8** %12, align 8, !dbg !1569
  %167 = icmp eq i8* %165, %166, !dbg !1570
  br i1 %167, label %168, label %175, !dbg !1571

; <label>:168:                                    ; preds = %164
  %169 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1572
  %170 = bitcast %struct._IRC_SERVER_REC* %169 to i8*, !dbg !1572
  %171 = load i8*, i8** %10, align 8, !dbg !1574
  %172 = load i32, i32* %14, align 4, !dbg !1575
  %173 = load i8*, i8** %8, align 8, !dbg !1576
  %174 = load i8*, i8** %7, align 8, !dbg !1577
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %170, i8* %171, i32 %172, i32 98, i8* %173, i8* %174), !dbg !1578
  br label %183, !dbg !1579

; <label>:175:                                    ; preds = %164, %159
  %176 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1580
  %177 = bitcast %struct._IRC_SERVER_REC* %176 to i8*, !dbg !1580
  %178 = load i8*, i8** %10, align 8, !dbg !1582
  %179 = load i32, i32* %14, align 4, !dbg !1583
  %180 = load i8*, i8** %8, align 8, !dbg !1584
  %181 = load i8*, i8** %12, align 8, !dbg !1585
  %182 = load i8*, i8** %7, align 8, !dbg !1586
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %177, i8* %178, i32 %179, i32 99, i8* %180, i8* %181, i8* %182), !dbg !1587
  br label %183

; <label>:183:                                    ; preds = %175, %168
  br label %222, !dbg !1588

; <label>:184:                                    ; preds = %145
  %185 = load i32, i32* %15, align 4, !dbg !1589
  %186 = icmp ne i32 %185, 0, !dbg !1589
  br i1 %186, label %187, label %205, !dbg !1592

; <label>:187:                                    ; preds = %184
  %188 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1593
  %189 = bitcast %struct._IRC_SERVER_REC* %188 to i8*, !dbg !1593
  %190 = load i8*, i8** %10, align 8, !dbg !1595
  %191 = load i8*, i8** %11, align 8, !dbg !1596
  %192 = icmp ne i8* %191, null, !dbg !1597
  br i1 %192, label %193, label %197, !dbg !1598

; <label>:193:                                    ; preds = %187
  %194 = load i8*, i8** %12, align 8, !dbg !1599
  %195 = load i8*, i8** %10, align 8, !dbg !1601
  %196 = icmp eq i8* %194, %195, !dbg !1602
  br label %197

; <label>:197:                                    ; preds = %193, %187
  %198 = phi i1 [ false, %187 ], [ %196, %193 ]
  %199 = select i1 %198, i32 89, i32 90, !dbg !1603
  %200 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1605
  %201 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %200, i32 0, i32 7, !dbg !1606
  %202 = load i8*, i8** %201, align 8, !dbg !1606
  %203 = load i8*, i8** %7, align 8, !dbg !1607
  %204 = load i8*, i8** %12, align 8, !dbg !1608
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %189, i8* %190, i32 66, i32 %199, i8* %202, i8* %203, i8* %204), !dbg !1609
  br label %221, !dbg !1610

; <label>:205:                                    ; preds = %184
  %206 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1611
  %207 = bitcast %struct._IRC_SERVER_REC* %206 to i8*, !dbg !1611
  %208 = load i8*, i8** %8, align 8, !dbg !1613
  %209 = load i8*, i8** %11, align 8, !dbg !1614
  %210 = icmp eq i8* %209, null, !dbg !1615
  %211 = select i1 %210, i32 96, i32 97, !dbg !1614
  %212 = load i8*, i8** %8, align 8, !dbg !1616
  %213 = load i8*, i8** %9, align 8, !dbg !1617
  %214 = icmp eq i8* %213, null, !dbg !1618
  br i1 %214, label %215, label %216, !dbg !1617

; <label>:215:                                    ; preds = %205
  br label %218, !dbg !1619

; <label>:216:                                    ; preds = %205
  %217 = load i8*, i8** %9, align 8, !dbg !1621
  br label %218, !dbg !1623

; <label>:218:                                    ; preds = %216, %215
  %219 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), %215 ], [ %217, %216 ], !dbg !1624
  %220 = load i8*, i8** %7, align 8, !dbg !1626
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %207, i8* %208, i32 66, i32 %211, i8* %212, i8* %219, i8* %220), !dbg !1627
  br label %221

; <label>:221:                                    ; preds = %218, %197
  br label %222

; <label>:222:                                    ; preds = %221, %183
  %223 = load i8*, i8** %13, align 8, !dbg !1628
  call void @g_free(i8* %223), !dbg !1629
  br label %224, !dbg !1630

; <label>:224:                                    ; preds = %222, %52
  ret void, !dbg !1631
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_notice(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1632 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1633, metadata !1119), !dbg !1634
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1635, metadata !1119), !dbg !1636
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1637, metadata !1119), !dbg !1638
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1639
  %8 = bitcast %struct._IRC_SERVER_REC* %7 to i8*, !dbg !1639
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1640
  %10 = load i8*, i8** %6, align 8, !dbg !1641
  %11 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %9, i8* %10), !dbg !1642
  %12 = load i8*, i8** %6, align 8, !dbg !1643
  %13 = load i8*, i8** %5, align 8, !dbg !1644
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %8, i8* %11, i32 50331656, i32 88, i8* %12, i8* %13), !dbg !1645
  ret void, !dbg !1647
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_irc_notice(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1648 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1649, metadata !1119), !dbg !1650
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1651, metadata !1119), !dbg !1652
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1653, metadata !1119), !dbg !1654
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1655, metadata !1119), !dbg !1656
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1657, metadata !1119), !dbg !1658
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1659, metadata !1119), !dbg !1660
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1661, metadata !1119), !dbg !1662
  store i32 8, i32* %12, align 4, !dbg !1662
  %13 = load i8*, i8** %10, align 8, !dbg !1663
  store i8* %13, i8** %11, align 8, !dbg !1664
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1665
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !1665
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1666
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1667
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1668
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1669
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1671
  %21 = load i8*, i8** %10, align 8, !dbg !1672
  %22 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %20, i8* %21), !dbg !1673
  store i8* %22, i8** %10, align 8, !dbg !1675
  %23 = load i8*, i8** %9, align 8, !dbg !1676
  %24 = icmp eq i8* %23, null, !dbg !1678
  br i1 %24, label %30, label %25, !dbg !1679

; <label>:25:                                     ; preds = %5
  %26 = load i8*, i8** %9, align 8, !dbg !1680
  %27 = load i8, i8* %26, align 1, !dbg !1682
  %28 = sext i8 %27 to i32, !dbg !1682
  %29 = icmp eq i32 %28, 0, !dbg !1683
  br i1 %29, label %30, label %44, !dbg !1684

; <label>:30:                                     ; preds = %25, %5
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1685
  %32 = load i8*, i8** %8, align 8, !dbg !1688
  %33 = load i8*, i8** %10, align 8, !dbg !1689
  %34 = load i8*, i8** %7, align 8, !dbg !1690
  %35 = call i32 @ignore_check(%struct._SERVER_REC* %31, i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8* %33, i8* %34, i32 16), !dbg !1691
  %36 = icmp ne i32 %35, 0, !dbg !1691
  br i1 %36, label %43, label %37, !dbg !1692

; <label>:37:                                     ; preds = %30
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1693
  %39 = bitcast %struct._SERVER_REC* %38 to i8*, !dbg !1693
  %40 = load i8*, i8** %10, align 8, !dbg !1695
  %41 = load i8*, i8** %8, align 8, !dbg !1696
  %42 = load i8*, i8** %7, align 8, !dbg !1697
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %39, i8* %40, i32 16, i32 93, i8* %41, i8* %42), !dbg !1698
  br label %43, !dbg !1699

; <label>:43:                                     ; preds = %37, %30
  br label %167, !dbg !1700

; <label>:44:                                     ; preds = %25
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1701
  %46 = load i8*, i8** %8, align 8, !dbg !1703
  %47 = load i8*, i8** %9, align 8, !dbg !1704
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1705
  %49 = bitcast %struct._SERVER_REC* %48 to i8*, !dbg !1705
  %50 = call i8* @module_check_cast(i8* %49, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1706
  %51 = bitcast i8* %50 to %struct._SERVER_REC*, !dbg !1707
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 27, !dbg !1708
  %53 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %52, align 8, !dbg !1708
  %54 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1709
  %55 = bitcast %struct._SERVER_REC* %54 to i8*, !dbg !1709
  %56 = call i8* @module_check_cast(i8* %55, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1710
  %57 = bitcast i8* %56 to %struct._SERVER_REC*, !dbg !1712
  %58 = load i8*, i8** %10, align 8, !dbg !1713
  %59 = call i32 %53(%struct._SERVER_REC* %57, i8* %58), !dbg !1714
  %60 = icmp ne i32 %59, 0, !dbg !1716
  br i1 %60, label %61, label %63, !dbg !1717

; <label>:61:                                     ; preds = %44
  %62 = load i8*, i8** %10, align 8, !dbg !1718
  br label %64, !dbg !1720

; <label>:63:                                     ; preds = %44
  br label %64, !dbg !1721

; <label>:64:                                     ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ null, %63 ], !dbg !1723
  %66 = load i8*, i8** %7, align 8, !dbg !1725
  %67 = load i32, i32* %12, align 4, !dbg !1726
  %68 = call i32 @ignore_check(%struct._SERVER_REC* %45, i8* %46, i8* %47, i8* %65, i8* %66, i32 %67), !dbg !1727
  %69 = icmp ne i32 %68, 0, !dbg !1727
  br i1 %69, label %70, label %71, !dbg !1727

; <label>:70:                                     ; preds = %64
  br label %167, !dbg !1728

; <label>:71:                                     ; preds = %64
  %72 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1729
  %73 = load i8*, i8** %8, align 8, !dbg !1731
  %74 = load i8*, i8** %9, align 8, !dbg !1732
  %75 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1733
  %76 = bitcast %struct._SERVER_REC* %75 to i8*, !dbg !1733
  %77 = call i8* @module_check_cast(i8* %76, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1734
  %78 = bitcast i8* %77 to %struct._SERVER_REC*, !dbg !1735
  %79 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %78, i32 0, i32 27, !dbg !1736
  %80 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %79, align 8, !dbg !1736
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1737
  %82 = bitcast %struct._SERVER_REC* %81 to i8*, !dbg !1737
  %83 = call i8* @module_check_cast(i8* %82, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1738
  %84 = bitcast i8* %83 to %struct._SERVER_REC*, !dbg !1740
  %85 = load i8*, i8** %10, align 8, !dbg !1741
  %86 = call i32 %80(%struct._SERVER_REC* %84, i8* %85), !dbg !1742
  %87 = icmp ne i32 %86, 0, !dbg !1744
  br i1 %87, label %88, label %90, !dbg !1745

; <label>:88:                                     ; preds = %71
  %89 = load i8*, i8** %10, align 8, !dbg !1746
  br label %91, !dbg !1748

; <label>:90:                                     ; preds = %71
  br label %91, !dbg !1749

; <label>:91:                                     ; preds = %90, %88
  %92 = phi i8* [ %89, %88 ], [ null, %90 ], !dbg !1751
  %93 = load i8*, i8** %7, align 8, !dbg !1753
  %94 = load i32, i32* %12, align 4, !dbg !1754
  %95 = or i32 %94, 33554432, !dbg !1755
  %96 = call i32 @ignore_check(%struct._SERVER_REC* %72, i8* %73, i8* %74, i8* %92, i8* %93, i32 %95), !dbg !1756
  %97 = icmp ne i32 %96, 0, !dbg !1756
  br i1 %97, label %98, label %101, !dbg !1756

; <label>:98:                                     ; preds = %91
  %99 = load i32, i32* %12, align 4, !dbg !1757
  %100 = or i32 %99, 33554432, !dbg !1757
  store i32 %100, i32* %12, align 4, !dbg !1757
  br label %101, !dbg !1758

; <label>:101:                                    ; preds = %98, %91
  %102 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1759
  %103 = load i8*, i8** %8, align 8, !dbg !1761
  %104 = load i8*, i8** %9, align 8, !dbg !1762
  %105 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1763
  %106 = bitcast %struct._SERVER_REC* %105 to i8*, !dbg !1763
  %107 = call i8* @module_check_cast(i8* %106, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1764
  %108 = bitcast i8* %107 to %struct._SERVER_REC*, !dbg !1765
  %109 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %108, i32 0, i32 27, !dbg !1766
  %110 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %109, align 8, !dbg !1766
  %111 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1767
  %112 = bitcast %struct._SERVER_REC* %111 to i8*, !dbg !1767
  %113 = call i8* @module_check_cast(i8* %112, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1768
  %114 = bitcast i8* %113 to %struct._SERVER_REC*, !dbg !1770
  %115 = load i8*, i8** %10, align 8, !dbg !1771
  %116 = call i32 %110(%struct._SERVER_REC* %114, i8* %115), !dbg !1772
  %117 = icmp ne i32 %116, 0, !dbg !1774
  br i1 %117, label %118, label %120, !dbg !1775

; <label>:118:                                    ; preds = %101
  %119 = load i8*, i8** %10, align 8, !dbg !1776
  br label %121, !dbg !1778

; <label>:120:                                    ; preds = %101
  br label %121, !dbg !1779

; <label>:121:                                    ; preds = %120, %118
  %122 = phi i8* [ %119, %118 ], [ null, %120 ], !dbg !1781
  %123 = load i8*, i8** %7, align 8, !dbg !1783
  %124 = load i32, i32* %12, align 4, !dbg !1784
  %125 = or i32 %124, 268435456, !dbg !1785
  %126 = call i32 @ignore_check(%struct._SERVER_REC* %102, i8* %103, i8* %104, i8* %122, i8* %123, i32 %125), !dbg !1786
  %127 = icmp ne i32 %126, 0, !dbg !1786
  br i1 %127, label %128, label %131, !dbg !1786

; <label>:128:                                    ; preds = %121
  %129 = load i32, i32* %12, align 4, !dbg !1787
  %130 = or i32 %129, 268435456, !dbg !1787
  store i32 %130, i32* %12, align 4, !dbg !1787
  br label %131, !dbg !1788

; <label>:131:                                    ; preds = %128, %121
  %132 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1789
  %133 = bitcast %struct._SERVER_REC* %132 to i8*, !dbg !1789
  %134 = call i8* @module_check_cast(i8* %133, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1791
  %135 = bitcast i8* %134 to %struct._SERVER_REC*, !dbg !1792
  %136 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %135, i32 0, i32 27, !dbg !1793
  %137 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %136, align 8, !dbg !1793
  %138 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1794
  %139 = bitcast %struct._SERVER_REC* %138 to i8*, !dbg !1794
  %140 = call i8* @module_check_cast(i8* %139, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1795
  %141 = bitcast i8* %140 to %struct._SERVER_REC*, !dbg !1797
  %142 = load i8*, i8** %10, align 8, !dbg !1798
  %143 = call i32 %137(%struct._SERVER_REC* %141, i8* %142), !dbg !1799
  %144 = icmp ne i32 %143, 0, !dbg !1801
  br i1 %144, label %145, label %153, !dbg !1802

; <label>:145:                                    ; preds = %131
  %146 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1803
  %147 = bitcast %struct._SERVER_REC* %146 to i8*, !dbg !1803
  %148 = load i8*, i8** %10, align 8, !dbg !1805
  %149 = load i32, i32* %12, align 4, !dbg !1806
  %150 = load i8*, i8** %8, align 8, !dbg !1807
  %151 = load i8*, i8** %11, align 8, !dbg !1808
  %152 = load i8*, i8** %7, align 8, !dbg !1809
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %147, i8* %148, i32 %149, i32 94, i8* %150, i8* %151, i8* %152), !dbg !1810
  br label %167, !dbg !1811

; <label>:153:                                    ; preds = %131
  %154 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1812
  %155 = bitcast %struct._SERVER_REC* %154 to i8*, !dbg !1812
  %156 = call i8* @module_check_cast(i8* %155, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1814
  %157 = bitcast i8* %156 to %struct._SERVER_REC*, !dbg !1815
  %158 = load i8*, i8** %8, align 8, !dbg !1816
  %159 = call %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC* %157, i8* %158, i32 0, i32 8), !dbg !1817
  %160 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1819
  %161 = bitcast %struct._SERVER_REC* %160 to i8*, !dbg !1819
  %162 = load i8*, i8** %8, align 8, !dbg !1820
  %163 = load i32, i32* %12, align 4, !dbg !1821
  %164 = load i8*, i8** %8, align 8, !dbg !1822
  %165 = load i8*, i8** %9, align 8, !dbg !1823
  %166 = load i8*, i8** %7, align 8, !dbg !1824
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %161, i8* %162, i32 %163, i32 95, i8* %164, i8* %165, i8* %166), !dbg !1825
  br label %167

; <label>:167:                                    ; preds = %43, %70, %153, %145
  ret void, !dbg !1826
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_ctcp(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1827 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1830, metadata !1119), !dbg !1831
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1832, metadata !1119), !dbg !1833
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1834, metadata !1119), !dbg !1835
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1836, metadata !1119), !dbg !1837
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1838
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !1838
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1839
  %12 = load i8*, i8** %8, align 8, !dbg !1840
  %13 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %11, i8* %12), !dbg !1841
  %14 = load i8*, i8** %8, align 8, !dbg !1842
  %15 = load i8*, i8** %6, align 8, !dbg !1843
  %16 = load i8*, i8** %7, align 8, !dbg !1844
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %10, i8* %13, i32 50331680, i32 91, i8* %14, i8* %15, i8* %16), !dbg !1845
  ret void, !dbg !1847
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_irc_ctcp(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !1848 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1851, metadata !1119), !dbg !1852
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1853, metadata !1119), !dbg !1854
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1855, metadata !1119), !dbg !1856
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1857, metadata !1119), !dbg !1858
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1859, metadata !1119), !dbg !1860
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1861, metadata !1119), !dbg !1862
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1863, metadata !1119), !dbg !1864
  %14 = load i8*, i8** %12, align 8, !dbg !1865
  store i8* %14, i8** %13, align 8, !dbg !1866
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1867
  %16 = load i8*, i8** %12, align 8, !dbg !1868
  %17 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %15, i8* %16), !dbg !1869
  store i8* %17, i8** %12, align 8, !dbg !1870
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1871
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1871
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1872
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !1872
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1873
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !1874
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 27, !dbg !1875
  %25 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %24, align 8, !dbg !1875
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1876
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1876
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1877
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1879
  %30 = load i8*, i8** %12, align 8, !dbg !1880
  %31 = call i32 %25(%struct._SERVER_REC* %29, i8* %30), !dbg !1881
  %32 = icmp ne i32 %31, 0, !dbg !1883
  br i1 %32, label %33, label %35, !dbg !1884

; <label>:33:                                     ; preds = %6
  %34 = load i8*, i8** %12, align 8, !dbg !1885
  br label %37, !dbg !1887

; <label>:35:                                     ; preds = %6
  %36 = load i8*, i8** %10, align 8, !dbg !1888
  br label %37, !dbg !1890

; <label>:37:                                     ; preds = %35, %33
  %38 = phi i8* [ %34, %33 ], [ %36, %35 ], !dbg !1891
  %39 = load i8*, i8** %10, align 8, !dbg !1893
  %40 = load i8*, i8** %11, align 8, !dbg !1894
  %41 = load i8*, i8** %8, align 8, !dbg !1895
  %42 = load i8*, i8** %9, align 8, !dbg !1896
  %43 = load i8*, i8** %13, align 8, !dbg !1897
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %19, i8* %38, i32 32, i32 104, i8* %39, i8* %40, i8* %41, i8* %42, i8* %43), !dbg !1898
  ret void, !dbg !1899
}

; Function Attrs: nounwind uwtable
define void @fe_irc_messages_deinit() #0 !dbg !1900 {
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1901
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_op_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1902
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_message_own_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1903
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sig_message_own_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1904
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1905
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sig_message_own_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1906
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_irc_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1907
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1908
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_irc_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1909
  ret void, !dbg !1910
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC*, i8*) #1

declare i8* @channel_get_nickmode(%struct._CHANNEL_REC*, i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_free(i8*) #1

declare void @signal_stop() #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @get_visible_target(%struct._IRC_SERVER_REC*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i8* @expand_emphasis(%struct._WI_ITEM_REC*, i8*) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC*, i8*, i32, i32) #1

declare i32 @window_item_is_active(%struct._WI_ITEM_REC*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1099, !1100}
!llvm.ident = !{!1101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !434)
!1 = !DIFile(filename: "line302-fe-irc-messages.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !308}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!39 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!40 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!41 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!42 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!43 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!44 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!45 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!46 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!47 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!48 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!49 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!50 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!51 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!52 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!53 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!54 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!55 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!56 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!57 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!58 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!59 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!60 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!61 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!62 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!63 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!64 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!65 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "../core/module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!69 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!72 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!73 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!74 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!75 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!76 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!77 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!78 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!79 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!80 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!81 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!82 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!83 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!84 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!85 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!86 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!87 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!88 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!89 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!90 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!93 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!109 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!110 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!111 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!112 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!113 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!114 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!115 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!116 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!117 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!118 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!119 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!120 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!121 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!122 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!123 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!124 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!125 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!126 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!127 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!128 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!129 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!130 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!131 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!132 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!133 = !DIEnumerator(name: "TXT_PART", value: 64)
!134 = !DIEnumerator(name: "TXT_KICK", value: 65)
!135 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!136 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!137 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!138 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!139 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!140 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!141 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!142 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!143 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!144 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!145 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!146 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!147 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!148 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!149 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!150 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!151 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!152 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!153 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!154 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!155 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!156 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!157 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!158 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!159 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!160 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!161 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!162 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!163 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!164 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!166 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!167 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!168 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!169 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!170 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!171 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!173 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!174 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!175 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!176 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!177 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!178 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!179 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!180 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!181 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!182 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!183 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!184 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!185 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!186 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!187 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!188 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!189 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!190 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!191 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!192 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!193 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!194 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!195 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!196 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!197 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!198 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!199 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!200 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!201 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!202 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!203 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!204 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!205 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!206 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!207 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!208 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!209 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!210 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!211 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!212 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!213 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!214 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!215 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!216 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!217 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!218 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!219 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!220 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!221 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!222 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!223 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!224 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!225 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!226 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!227 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!228 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!229 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!230 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!231 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!232 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!233 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!234 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!235 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!236 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!237 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!238 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!239 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!240 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!241 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!242 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!243 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!244 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!245 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!246 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!247 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!248 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!249 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!250 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!251 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!252 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!253 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!254 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!255 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!256 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!257 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!258 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!259 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!260 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!261 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!262 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!263 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!264 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!265 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!266 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!267 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!268 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!269 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!270 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!271 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!272 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!273 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!274 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!275 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!276 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!277 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!278 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!279 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!280 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!281 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!282 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!283 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!284 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!285 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!286 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!287 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!288 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!289 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!290 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!291 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!292 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!293 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!294 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!295 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!296 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!297 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!298 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!299 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!300 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!301 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!302 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!303 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!304 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!305 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!306 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!307 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 3, size: 32, align: 32, elements: !310)
!309 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!311 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!312 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!313 = !DIEnumerator(name: "IRCTXT_NETSPLIT", value: 2)
!314 = !DIEnumerator(name: "IRCTXT_NETSPLIT_MORE", value: 3)
!315 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN", value: 4)
!316 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN_MORE", value: 5)
!317 = !DIEnumerator(name: "IRCTXT_NO_NETSPLITS", value: 6)
!318 = !DIEnumerator(name: "IRCTXT_NETSPLITS_HEADER", value: 7)
!319 = !DIEnumerator(name: "IRCTXT_NETSPLITS_LINE", value: 8)
!320 = !DIEnumerator(name: "IRCTXT_NETSPLITS_FOOTER", value: 9)
!321 = !DIEnumerator(name: "IRCTXT_NETWORK_ADDED", value: 10)
!322 = !DIEnumerator(name: "IRCTXT_NETWORK_REMOVED", value: 11)
!323 = !DIEnumerator(name: "IRCTXT_NETWORK_NOT_FOUND", value: 12)
!324 = !DIEnumerator(name: "IRCTXT_NETWORK_HEADER", value: 13)
!325 = !DIEnumerator(name: "IRCTXT_NETWORK_LINE", value: 14)
!326 = !DIEnumerator(name: "IRCTXT_NETWORK_FOOTER", value: 15)
!327 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_HEADER", value: 16)
!328 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_LINE", value: 17)
!329 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_FOOTER", value: 18)
!330 = !DIEnumerator(name: "IRCTXT_SASL_SUCCESS", value: 19)
!331 = !DIEnumerator(name: "IRCTXT_SASL_ERROR", value: 20)
!332 = !DIEnumerator(name: "IRCTXT_CAP_REQ", value: 21)
!333 = !DIEnumerator(name: "IRCTXT_CAP_LS", value: 22)
!334 = !DIEnumerator(name: "IRCTXT_CAP_ACK", value: 23)
!335 = !DIEnumerator(name: "IRCTXT_CAP_NAK", value: 24)
!336 = !DIEnumerator(name: "IRCTXT_CAP_LIST", value: 25)
!337 = !DIEnumerator(name: "IRCTXT_CAP_NEW", value: 26)
!338 = !DIEnumerator(name: "IRCTXT_CAP_DEL", value: 27)
!339 = !DIEnumerator(name: "IRCTXT_FILL_2", value: 28)
!340 = !DIEnumerator(name: "IRCTXT_JOINERROR_TOOMANY", value: 29)
!341 = !DIEnumerator(name: "IRCTXT_JOINERROR_FULL", value: 30)
!342 = !DIEnumerator(name: "IRCTXT_JOINERROR_INVITE", value: 31)
!343 = !DIEnumerator(name: "IRCTXT_JOINERROR_BANNED", value: 32)
!344 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_KEY", value: 33)
!345 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_MASK", value: 34)
!346 = !DIEnumerator(name: "IRCTXT_JOINERROR_UNAVAIL", value: 35)
!347 = !DIEnumerator(name: "IRCTXT_JOINERROR_DUPLICATE", value: 36)
!348 = !DIEnumerator(name: "IRCTXT_CHANNEL_REJOIN", value: 37)
!349 = !DIEnumerator(name: "IRCTXT_INVITING", value: 38)
!350 = !DIEnumerator(name: "IRCTXT_CHANNEL_CREATED", value: 39)
!351 = !DIEnumerator(name: "IRCTXT_CHANNEL_URL", value: 40)
!352 = !DIEnumerator(name: "IRCTXT_TOPIC", value: 41)
!353 = !DIEnumerator(name: "IRCTXT_NO_TOPIC", value: 42)
!354 = !DIEnumerator(name: "IRCTXT_TOPIC_INFO", value: 43)
!355 = !DIEnumerator(name: "IRCTXT_CHANMODE_CHANGE", value: 44)
!356 = !DIEnumerator(name: "IRCTXT_SERVER_CHANMODE_CHANGE", value: 45)
!357 = !DIEnumerator(name: "IRCTXT_CHANNEL_MODE", value: 46)
!358 = !DIEnumerator(name: "IRCTXT_BANTYPE", value: 47)
!359 = !DIEnumerator(name: "IRCTXT_NO_BANS", value: 48)
!360 = !DIEnumerator(name: "IRCTXT_BANLIST", value: 49)
!361 = !DIEnumerator(name: "IRCTXT_BANLIST_LONG", value: 50)
!362 = !DIEnumerator(name: "IRCTXT_EBANLIST", value: 51)
!363 = !DIEnumerator(name: "IRCTXT_EBANLIST_LONG", value: 52)
!364 = !DIEnumerator(name: "IRCTXT_NO_INVITELIST", value: 53)
!365 = !DIEnumerator(name: "IRCTXT_INVITELIST", value: 54)
!366 = !DIEnumerator(name: "IRCTXT_INVITELIST_LONG", value: 55)
!367 = !DIEnumerator(name: "IRCTXT_NO_SUCH_CHANNEL", value: 56)
!368 = !DIEnumerator(name: "IRCTXT_CHANNEL_SYNCED", value: 57)
!369 = !DIEnumerator(name: "IRCTXT_FILL_4", value: 58)
!370 = !DIEnumerator(name: "IRCTXT_USERMODE_CHANGE", value: 59)
!371 = !DIEnumerator(name: "IRCTXT_USER_MODE", value: 60)
!372 = !DIEnumerator(name: "IRCTXT_AWAY", value: 61)
!373 = !DIEnumerator(name: "IRCTXT_UNAWAY", value: 62)
!374 = !DIEnumerator(name: "IRCTXT_NICK_AWAY", value: 63)
!375 = !DIEnumerator(name: "IRCTXT_NO_SUCH_NICK", value: 64)
!376 = !DIEnumerator(name: "IRCTXT_NICK_IN_USE", value: 65)
!377 = !DIEnumerator(name: "IRCTXT_NICK_UNAVAILABLE", value: 66)
!378 = !DIEnumerator(name: "IRCTXT_YOUR_NICK_OWNED", value: 67)
!379 = !DIEnumerator(name: "IRCTXT_FILL_5", value: 68)
!380 = !DIEnumerator(name: "IRCTXT_WHOIS", value: 69)
!381 = !DIEnumerator(name: "IRCTXT_WHOWAS", value: 70)
!382 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE", value: 71)
!383 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE_SIGNON", value: 72)
!384 = !DIEnumerator(name: "IRCTXT_WHOIS_SERVER", value: 73)
!385 = !DIEnumerator(name: "IRCTXT_WHOIS_OPER", value: 74)
!386 = !DIEnumerator(name: "IRCTXT_WHOIS_MODES", value: 75)
!387 = !DIEnumerator(name: "IRCTXT_WHOIS_REALHOST", value: 76)
!388 = !DIEnumerator(name: "IRCTXT_WHOIS_USERMODE", value: 77)
!389 = !DIEnumerator(name: "IRCTXT_WHOIS_CHANNELS", value: 78)
!390 = !DIEnumerator(name: "IRCTXT_WHOIS_AWAY", value: 79)
!391 = !DIEnumerator(name: "IRCTXT_WHOIS_SPECIAL", value: 80)
!392 = !DIEnumerator(name: "IRCTXT_WHOIS_EXTRA", value: 81)
!393 = !DIEnumerator(name: "IRCTXT_END_OF_WHOIS", value: 82)
!394 = !DIEnumerator(name: "IRCTXT_END_OF_WHOWAS", value: 83)
!395 = !DIEnumerator(name: "IRCTXT_WHOIS_NOT_FOUND", value: 84)
!396 = !DIEnumerator(name: "IRCTXT_WHO", value: 85)
!397 = !DIEnumerator(name: "IRCTXT_END_OF_WHO", value: 86)
!398 = !DIEnumerator(name: "IRCTXT_FILL_6", value: 87)
!399 = !DIEnumerator(name: "IRCTXT_OWN_NOTICE", value: 88)
!400 = !DIEnumerator(name: "IRCTXT_OWN_ACTION", value: 89)
!401 = !DIEnumerator(name: "IRCTXT_OWN_ACTION_TARGET", value: 90)
!402 = !DIEnumerator(name: "IRCTXT_OWN_CTCP", value: 91)
!403 = !DIEnumerator(name: "IRCTXT_FILL_7", value: 92)
!404 = !DIEnumerator(name: "IRCTXT_NOTICE_SERVER", value: 93)
!405 = !DIEnumerator(name: "IRCTXT_NOTICE_PUBLIC", value: 94)
!406 = !DIEnumerator(name: "IRCTXT_NOTICE_PRIVATE", value: 95)
!407 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE", value: 96)
!408 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE_QUERY", value: 97)
!409 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC", value: 98)
!410 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC_CHANNEL", value: 99)
!411 = !DIEnumerator(name: "IRCTXT_FILL_8", value: 100)
!412 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY", value: 101)
!413 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY_CHANNEL", value: 102)
!414 = !DIEnumerator(name: "IRCTXT_CTCP_PING_REPLY", value: 103)
!415 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED", value: 104)
!416 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED_UNKNOWN", value: 105)
!417 = !DIEnumerator(name: "IRCTXT_FILL_10", value: 106)
!418 = !DIEnumerator(name: "IRCTXT_ONLINE", value: 107)
!419 = !DIEnumerator(name: "IRCTXT_PONG", value: 108)
!420 = !DIEnumerator(name: "IRCTXT_WALLOPS", value: 109)
!421 = !DIEnumerator(name: "IRCTXT_ACTION_WALLOPS", value: 110)
!422 = !DIEnumerator(name: "IRCTXT_KILL", value: 111)
!423 = !DIEnumerator(name: "IRCTXT_KILL_SERVER", value: 112)
!424 = !DIEnumerator(name: "IRCTXT_ERROR", value: 113)
!425 = !DIEnumerator(name: "IRCTXT_UNKNOWN_MODE", value: 114)
!426 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT", value: 115)
!427 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT_SERVER", value: 116)
!428 = !DIEnumerator(name: "IRCTXT_FILL_11", value: 117)
!429 = !DIEnumerator(name: "IRCTXT_SILENCED", value: 118)
!430 = !DIEnumerator(name: "IRCTXT_UNSILENCED", value: 119)
!431 = !DIEnumerator(name: "IRCTXT_SILENCE_LINE", value: 120)
!432 = !DIEnumerator(name: "IRCTXT_ASK_OPER_PASS", value: 121)
!433 = !DIEnumerator(name: "IRCTXT_ACCEPT_LIST", value: 122)
!434 = !{!435, !442, !443, !756, !1053, !863}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !436, line: 9, baseType: !437)
!436 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440, !440, !440, !440, !440, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !445, line: 6, baseType: !446)
!445 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !447, line: 42, size: 39168, align: 64, elements: !448)
!447 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!448 = !{!449, !452, !453, !454, !701, !706, !707, !708, !709, !710, !711, !712, !713, !714, !718, !719, !723, !724, !725, !729, !734, !735, !736, !737, !738, !739, !740, !741, !748, !749, !750, !751, !752, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1096, !1098}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !450, line: 3, baseType: !451, size: 32, align: 32)
!450 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!451 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !446, file: !450, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !446, file: !450, line: 6, baseType: !451, size: 32, align: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !446, file: !450, line: 8, baseType: !455, size: 64, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !445, line: 5, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !447, line: 24, size: 2496, align: 64, elements: !458)
!458 = !{!459, !461, !462, !463, !466, !467, !468, !469, !470, !472, !473, !474, !475, !476, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !460, line: 3, baseType: !451, size: 32, align: 32)
!460 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !457, file: !460, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !457, file: !460, line: 6, baseType: !451, size: 32, align: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !457, file: !460, line: 9, baseType: !464, size: 64, align: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !457, file: !460, line: 10, baseType: !451, size: 32, align: 32, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !457, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !457, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !457, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !457, file: !460, line: 13, baseType: !471, size: 16, align: 16, offset: 448)
!471 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !457, file: !460, line: 14, baseType: !464, size: 64, align: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !460, line: 15, baseType: !464, size: 64, align: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !457, file: !460, line: 16, baseType: !451, size: 32, align: 32, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !457, file: !460, line: 17, baseType: !464, size: 64, align: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !457, file: !460, line: 19, baseType: !477, size: 64, align: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !479, line: 99, baseType: !480)
!479 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !479, line: 99, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !457, file: !460, line: 19, baseType: !477, size: 64, align: 64, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !457, file: !460, line: 21, baseType: !464, size: 64, align: 64, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !457, file: !460, line: 22, baseType: !464, size: 64, align: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !457, file: !460, line: 23, baseType: !464, size: 64, align: 64, offset: 1024)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !457, file: !460, line: 24, baseType: !464, size: 64, align: 64, offset: 1088)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !457, file: !460, line: 26, baseType: !464, size: 64, align: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !457, file: !460, line: 27, baseType: !464, size: 64, align: 64, offset: 1216)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !457, file: !460, line: 28, baseType: !464, size: 64, align: 64, offset: 1280)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !457, file: !460, line: 29, baseType: !464, size: 64, align: 64, offset: 1344)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !457, file: !460, line: 30, baseType: !464, size: 64, align: 64, offset: 1408)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !457, file: !460, line: 31, baseType: !464, size: 64, align: 64, offset: 1472)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !457, file: !460, line: 32, baseType: !464, size: 64, align: 64, offset: 1536)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !457, file: !460, line: 33, baseType: !464, size: 64, align: 64, offset: 1600)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !457, file: !460, line: 35, baseType: !495, size: 64, align: 64, offset: 1664)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !498)
!498 = !{!499, !502, !646, !647, !652, !653, !654, !655, !656, !665, !666, !667, !671, !672, !673, !674, !675, !676, !677, !678}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !497, file: !4, line: 100, baseType: !500, size: 32, align: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !501, line: 49, baseType: !451)
!501 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!502 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !497, file: !4, line: 101, baseType: !503, size: 64, align: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !506)
!506 = !{!507, !531, !537, !544, !548, !633, !637, !642}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !505, file: !4, line: 133, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !495, !512, !514, !517, !518}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !501, line: 46, baseType: !465)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !515, line: 66, baseType: !516)
!515 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!516 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !521, line: 42, baseType: !522)
!521 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !521, line: 44, size: 128, align: 64, elements: !523)
!523 = !{!524, !529, !530}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !522, file: !521, line: 46, baseType: !525, size: 32, align: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !526, line: 36, baseType: !527)
!526 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !515, line: 45, baseType: !528)
!528 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !522, file: !521, line: 47, baseType: !500, size: 32, align: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !522, file: !521, line: 48, baseType: !512, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !505, file: !4, line: 138, baseType: !532, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!511, !495, !535, !514, !517, !518}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !505, file: !4, line: 143, baseType: !538, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!511, !495, !541, !543, !518}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !515, line: 51, baseType: !542)
!542 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !505, file: !4, line: 147, baseType: !545, size: 64, align: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!511, !495, !518}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !505, file: !4, line: 149, baseType: !549, size: 64, align: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !495, !632}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !555)
!555 = !{!556, !558, !579, !608, !610, !614, !615, !616, !617, !625, !626, !627, !628}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !554, file: !16, line: 174, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !501, line: 77, baseType: !442)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !554, file: !16, line: 175, baseType: !559, size: 64, align: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !562)
!562 = !{!563, !567, !568}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !561, file: !16, line: 198, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !557}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !561, file: !16, line: 199, baseType: !564, size: 64, align: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !561, file: !16, line: 200, baseType: !569, size: 64, align: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !557, !552, !572, !578}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!577, !557}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !501, line: 50, baseType: !500)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !554, file: !16, line: 177, baseType: !580, size: 64, align: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !584)
!584 = !{!585, !590, !594, !598, !602, !603}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !583, file: !16, line: 216, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!577, !552, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !583, file: !16, line: 218, baseType: !591, size: 64, align: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!577, !552}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !583, file: !16, line: 219, baseType: !595, size: 64, align: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!577, !552, !573, !557}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !583, file: !16, line: 222, baseType: !599, size: 64, align: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !552}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !583, file: !16, line: 226, baseType: !573, size: 64, align: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !583, file: !16, line: 227, baseType: !604, size: 64, align: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !554, file: !16, line: 178, baseType: !609, size: 32, align: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !501, line: 55, baseType: !528)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !554, file: !16, line: 180, baseType: !611, size: 64, align: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !554, file: !16, line: 182, baseType: !500, size: 32, align: 32, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !16, line: 183, baseType: !609, size: 32, align: 32, offset: 352)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !554, file: !16, line: 184, baseType: !609, size: 32, align: 32, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !554, file: !16, line: 186, baseType: !618, size: 64, align: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !620, line: 37, baseType: !621)
!620 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !620, line: 39, size: 128, align: 64, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !621, file: !620, line: 41, baseType: !557, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !620, line: 42, baseType: !618, size: 64, align: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !554, file: !16, line: 188, baseType: !552, size: 64, align: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !16, line: 189, baseType: !552, size: 64, align: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !16, line: 191, baseType: !464, size: 64, align: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !554, file: !16, line: 193, baseType: !629, size: 64, align: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !631)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !505, file: !4, line: 151, baseType: !634, size: 64, align: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !495}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !505, file: !4, line: 152, baseType: !638, size: 64, align: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!511, !495, !641, !518}
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !505, file: !4, line: 155, baseType: !643, size: 64, align: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!641, !495}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !497, file: !4, line: 103, baseType: !512, size: 64, align: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !497, file: !4, line: 104, baseType: !648, size: 64, align: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !649, line: 77, baseType: !650)
!649 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !649, line: 77, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !497, file: !4, line: 105, baseType: !648, size: 64, align: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !497, file: !4, line: 106, baseType: !512, size: 64, align: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !497, file: !4, line: 107, baseType: !609, size: 32, align: 32, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !497, file: !4, line: 109, baseType: !514, size: 64, align: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !497, file: !4, line: 110, baseType: !657, size: 64, align: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !659, line: 39, baseType: !660)
!659 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !659, line: 41, size: 192, align: 64, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !660, file: !659, line: 43, baseType: !512, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !660, file: !659, line: 44, baseType: !514, size: 64, align: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !660, file: !659, line: 45, baseType: !514, size: 64, align: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !497, file: !4, line: 111, baseType: !657, size: 64, align: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !497, file: !4, line: 112, baseType: !657, size: 64, align: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !497, file: !4, line: 113, baseType: !668, size: 48, align: 8, offset: 704)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 48, align: 8, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 6)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !497, file: !4, line: 117, baseType: !609, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !497, file: !4, line: 118, baseType: !609, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !497, file: !4, line: 119, baseType: !609, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !497, file: !4, line: 120, baseType: !609, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !497, file: !4, line: 121, baseType: !609, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !497, file: !4, line: 122, baseType: !609, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !497, file: !4, line: 124, baseType: !557, size: 64, align: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !497, file: !4, line: 125, baseType: !557, size: 64, align: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !457, file: !460, line: 38, baseType: !528, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !457, file: !460, line: 39, baseType: !528, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !457, file: !460, line: 40, baseType: !528, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !457, file: !460, line: 41, baseType: !528, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !457, file: !460, line: 42, baseType: !528, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !457, file: !460, line: 43, baseType: !528, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !457, file: !460, line: 44, baseType: !528, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !457, file: !460, line: 45, baseType: !528, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !457, file: !460, line: 46, baseType: !464, size: 64, align: 64, offset: 1792)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !457, file: !460, line: 47, baseType: !464, size: 64, align: 64, offset: 1856)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !457, file: !447, line: 27, baseType: !464, size: 64, align: 64, offset: 1920)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !457, file: !447, line: 28, baseType: !464, size: 64, align: 64, offset: 1984)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !457, file: !447, line: 30, baseType: !451, size: 32, align: 32, offset: 2048)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !457, file: !447, line: 31, baseType: !464, size: 64, align: 64, offset: 2112)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !457, file: !447, line: 32, baseType: !464, size: 64, align: 64, offset: 2176)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !457, file: !447, line: 34, baseType: !451, size: 32, align: 32, offset: 2240)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !457, file: !447, line: 35, baseType: !451, size: 32, align: 32, offset: 2272)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !457, file: !447, line: 36, baseType: !451, size: 32, align: 32, offset: 2304)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !457, file: !447, line: 38, baseType: !451, size: 32, align: 32, offset: 2336)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !457, file: !447, line: 38, baseType: !451, size: 32, align: 32, offset: 2368)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !457, file: !447, line: 38, baseType: !451, size: 32, align: 32, offset: 2400)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !457, file: !447, line: 38, baseType: !451, size: 32, align: 32, offset: 2432)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !446, file: !450, line: 9, baseType: !702, size: 64, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !703, line: 75, baseType: !704)
!703 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !705, line: 139, baseType: !542)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!706 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !446, file: !450, line: 10, baseType: !702, size: 64, align: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !446, file: !450, line: 12, baseType: !464, size: 64, align: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !446, file: !450, line: 13, baseType: !464, size: 64, align: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !446, file: !450, line: 15, baseType: !528, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !446, file: !450, line: 16, baseType: !528, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !446, file: !450, line: 17, baseType: !528, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !446, file: !450, line: 18, baseType: !528, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !446, file: !450, line: 19, baseType: !528, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !446, file: !450, line: 21, baseType: !715, size: 64, align: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !479, line: 102, baseType: !717)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !479, line: 102, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !446, file: !450, line: 22, baseType: !451, size: 32, align: 32, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !446, file: !450, line: 25, baseType: !720, size: 128, align: 64, offset: 640)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 128, align: 64, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 2)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !446, file: !450, line: 26, baseType: !451, size: 32, align: 32, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !446, file: !450, line: 27, baseType: !451, size: 32, align: 32, offset: 800)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !446, file: !450, line: 29, baseType: !726, size: 64, align: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !479, line: 103, baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !479, line: 103, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !446, file: !450, line: 30, baseType: !730, size: 64, align: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !732, line: 37, baseType: !733)
!732 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !732, line: 37, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !446, file: !450, line: 32, baseType: !464, size: 64, align: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !446, file: !450, line: 33, baseType: !464, size: 64, align: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !446, file: !450, line: 34, baseType: !464, size: 64, align: 64, offset: 1088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !446, file: !450, line: 35, baseType: !528, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !446, file: !450, line: 36, baseType: !528, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !446, file: !450, line: 37, baseType: !528, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !446, file: !450, line: 38, baseType: !528, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !446, file: !450, line: 40, baseType: !742, size: 128, align: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !501, line: 504, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !501, line: 506, size: 128, align: 64, elements: !744)
!744 = !{!745, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !743, file: !501, line: 508, baseType: !746, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !501, line: 48, baseType: !542)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !743, file: !501, line: 509, baseType: !746, size: 64, align: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !446, file: !450, line: 41, baseType: !702, size: 64, align: 64, offset: 1344)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !446, file: !450, line: 42, baseType: !451, size: 32, align: 32, offset: 1408)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !446, file: !450, line: 44, baseType: !618, size: 64, align: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !446, file: !450, line: 45, baseType: !618, size: 64, align: 64, offset: 1536)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !446, file: !450, line: 53, baseType: !753, size: 64, align: 64, offset: 1600)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756, !844, !451}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !479, line: 107, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !759, line: 30, size: 2240, align: 64, elements: !760)
!759 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!760 = !{!761, !762, !763, !764, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !840, !846, !850, !854, !859, !952, !979, !983}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !450, line: 3, baseType: !451, size: 32, align: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !758, file: !450, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !758, file: !450, line: 6, baseType: !451, size: 32, align: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !758, file: !450, line: 8, baseType: !765, size: 64, align: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !479, line: 113, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !759, line: 25, size: 1920, align: 64, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !460, line: 3, baseType: !451, size: 32, align: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !767, file: !460, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !767, file: !460, line: 6, baseType: !451, size: 32, align: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !767, file: !460, line: 9, baseType: !464, size: 64, align: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !767, file: !460, line: 10, baseType: !451, size: 32, align: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !767, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !767, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !767, file: !460, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !767, file: !460, line: 13, baseType: !471, size: 16, align: 16, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !767, file: !460, line: 14, baseType: !464, size: 64, align: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !767, file: !460, line: 15, baseType: !464, size: 64, align: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !767, file: !460, line: 16, baseType: !451, size: 32, align: 32, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !767, file: !460, line: 17, baseType: !464, size: 64, align: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !767, file: !460, line: 19, baseType: !477, size: 64, align: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !767, file: !460, line: 19, baseType: !477, size: 64, align: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !767, file: !460, line: 21, baseType: !464, size: 64, align: 64, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !767, file: !460, line: 22, baseType: !464, size: 64, align: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !767, file: !460, line: 23, baseType: !464, size: 64, align: 64, offset: 1024)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !767, file: !460, line: 24, baseType: !464, size: 64, align: 64, offset: 1088)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !767, file: !460, line: 26, baseType: !464, size: 64, align: 64, offset: 1152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !767, file: !460, line: 27, baseType: !464, size: 64, align: 64, offset: 1216)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !767, file: !460, line: 28, baseType: !464, size: 64, align: 64, offset: 1280)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !767, file: !460, line: 29, baseType: !464, size: 64, align: 64, offset: 1344)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !767, file: !460, line: 30, baseType: !464, size: 64, align: 64, offset: 1408)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !767, file: !460, line: 31, baseType: !464, size: 64, align: 64, offset: 1472)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !767, file: !460, line: 32, baseType: !464, size: 64, align: 64, offset: 1536)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !767, file: !460, line: 33, baseType: !464, size: 64, align: 64, offset: 1600)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !767, file: !460, line: 35, baseType: !495, size: 64, align: 64, offset: 1664)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !767, file: !460, line: 38, baseType: !528, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !767, file: !460, line: 39, baseType: !528, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !767, file: !460, line: 40, baseType: !528, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !767, file: !460, line: 41, baseType: !528, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !767, file: !460, line: 42, baseType: !528, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !767, file: !460, line: 43, baseType: !528, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !767, file: !460, line: 44, baseType: !528, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !767, file: !460, line: 45, baseType: !528, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !767, file: !460, line: 46, baseType: !464, size: 64, align: 64, offset: 1792)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !767, file: !460, line: 47, baseType: !464, size: 64, align: 64, offset: 1856)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !758, file: !450, line: 9, baseType: !702, size: 64, align: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !758, file: !450, line: 10, baseType: !702, size: 64, align: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !758, file: !450, line: 12, baseType: !464, size: 64, align: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !758, file: !450, line: 13, baseType: !464, size: 64, align: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !758, file: !450, line: 15, baseType: !528, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !758, file: !450, line: 16, baseType: !528, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !758, file: !450, line: 17, baseType: !528, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !758, file: !450, line: 18, baseType: !528, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !758, file: !450, line: 19, baseType: !528, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !758, file: !450, line: 21, baseType: !715, size: 64, align: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !758, file: !450, line: 22, baseType: !451, size: 32, align: 32, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !758, file: !450, line: 25, baseType: !720, size: 128, align: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !758, file: !450, line: 26, baseType: !451, size: 32, align: 32, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !758, file: !450, line: 27, baseType: !451, size: 32, align: 32, offset: 800)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !758, file: !450, line: 29, baseType: !726, size: 64, align: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !758, file: !450, line: 30, baseType: !730, size: 64, align: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !758, file: !450, line: 32, baseType: !464, size: 64, align: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !758, file: !450, line: 33, baseType: !464, size: 64, align: 64, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !758, file: !450, line: 34, baseType: !464, size: 64, align: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !758, file: !450, line: 35, baseType: !528, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !758, file: !450, line: 36, baseType: !528, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !758, file: !450, line: 37, baseType: !528, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !758, file: !450, line: 38, baseType: !528, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !758, file: !450, line: 40, baseType: !742, size: 128, align: 64, offset: 1216)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !758, file: !450, line: 41, baseType: !702, size: 64, align: 64, offset: 1344)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !758, file: !450, line: 42, baseType: !451, size: 32, align: 32, offset: 1408)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !758, file: !450, line: 44, baseType: !618, size: 64, align: 64, offset: 1472)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !758, file: !450, line: 45, baseType: !618, size: 64, align: 64, offset: 1536)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !758, file: !450, line: 53, baseType: !753, size: 64, align: 64, offset: 1600)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !758, file: !450, line: 55, baseType: !837, size: 64, align: 64, offset: 1664)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!451, !756, !465}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !758, file: !450, line: 57, baseType: !841, size: 64, align: 64, offset: 1728)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!451, !756, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64, align: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !758, file: !450, line: 60, baseType: !847, size: 64, align: 64, offset: 1792)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!844, !756}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !758, file: !450, line: 62, baseType: !851, size: 64, align: 64, offset: 1856)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !756, !844, !844, !451}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !758, file: !450, line: 65, baseType: !855, size: 64, align: 64, offset: 1920)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64, align: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!858, !756, !844, !844}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !758, file: !450, line: 69, baseType: !860, size: 64, align: 64, offset: 1984)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !756, !844}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !479, line: 109, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !866, line: 15, size: 1408, align: 64, elements: !867)
!866 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!867 = !{!868, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !903, !904, !906, !907, !908, !909, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !865, file: !869, line: 3, baseType: !451, size: 32, align: 32)
!869 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !865, file: !869, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !865, file: !869, line: 5, baseType: !730, size: 64, align: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !865, file: !869, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !865, file: !869, line: 8, baseType: !756, size: 64, align: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !865, file: !869, line: 9, baseType: !464, size: 64, align: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !869, line: 10, baseType: !464, size: 64, align: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !865, file: !869, line: 11, baseType: !702, size: 64, align: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !865, file: !869, line: 12, baseType: !451, size: 32, align: 32, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !865, file: !869, line: 13, baseType: !464, size: 64, align: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !865, file: !869, line: 15, baseType: !880, size: 64, align: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !479, line: 108, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !886, line: 5, size: 704, align: 64, elements: !887)
!886 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!887 = !{!888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !869, line: 3, baseType: !451, size: 32, align: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !885, file: !869, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !885, file: !869, line: 5, baseType: !730, size: 64, align: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !885, file: !869, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !885, file: !869, line: 8, baseType: !756, size: 64, align: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !885, file: !869, line: 9, baseType: !464, size: 64, align: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !885, file: !869, line: 10, baseType: !464, size: 64, align: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !885, file: !869, line: 11, baseType: !702, size: 64, align: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !885, file: !869, line: 12, baseType: !451, size: 32, align: 32, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !885, file: !869, line: 13, baseType: !464, size: 64, align: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !885, file: !869, line: 15, baseType: !880, size: 64, align: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !885, file: !869, line: 17, baseType: !900, size: 64, align: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64, align: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!844, !883}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !865, file: !869, line: 17, baseType: !900, size: 64, align: 64, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !865, file: !905, line: 5, baseType: !464, size: 64, align: 64, offset: 704)
!905 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!906 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !865, file: !905, line: 6, baseType: !464, size: 64, align: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !865, file: !905, line: 7, baseType: !702, size: 64, align: 64, offset: 832)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !865, file: !905, line: 9, baseType: !730, size: 64, align: 64, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !865, file: !905, line: 10, baseType: !910, size: 64, align: 64, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !479, line: 111, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !913, line: 13, size: 576, align: 64, elements: !914)
!913 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!914 = !{!915, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !933, !934}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !912, file: !916, line: 3, baseType: !451, size: 32, align: 32)
!916 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !912, file: !916, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !912, file: !916, line: 6, baseType: !702, size: 64, align: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !912, file: !916, line: 8, baseType: !464, size: 64, align: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !912, file: !916, line: 9, baseType: !464, size: 64, align: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !912, file: !916, line: 10, baseType: !464, size: 64, align: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !912, file: !916, line: 11, baseType: !451, size: 32, align: 32, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !912, file: !916, line: 14, baseType: !528, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !912, file: !916, line: 15, baseType: !528, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !912, file: !916, line: 18, baseType: !528, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !912, file: !916, line: 19, baseType: !528, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !912, file: !916, line: 20, baseType: !528, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !912, file: !916, line: 21, baseType: !528, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !912, file: !916, line: 22, baseType: !930, size: 64, align: 8, offset: 360)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 64, align: 8, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 8)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !912, file: !916, line: 26, baseType: !442, size: 64, align: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !916, line: 28, baseType: !910, size: 64, align: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !865, file: !905, line: 12, baseType: !528, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !865, file: !905, line: 13, baseType: !464, size: 64, align: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !865, file: !905, line: 14, baseType: !451, size: 32, align: 32, offset: 1152)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !865, file: !905, line: 15, baseType: !464, size: 64, align: 64, offset: 1216)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !865, file: !905, line: 17, baseType: !528, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !865, file: !905, line: 18, baseType: !528, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !865, file: !905, line: 19, baseType: !528, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !865, file: !905, line: 20, baseType: !528, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !865, file: !905, line: 22, baseType: !528, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !865, file: !905, line: 23, baseType: !528, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !865, file: !905, line: 24, baseType: !528, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !865, file: !905, line: 25, baseType: !528, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !865, file: !905, line: 26, baseType: !528, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !865, file: !905, line: 31, baseType: !949, size: 64, align: 64, offset: 1344)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64, align: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!464, !863}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !758, file: !450, line: 70, baseType: !953, size: 64, align: 64, offset: 2048)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, align: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!956, !756, !844}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !479, line: 110, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !959, line: 15, size: 960, align: 64, elements: !960)
!959 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !975, !976, !977, !978}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !958, file: !869, line: 3, baseType: !451, size: 32, align: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !958, file: !869, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !958, file: !869, line: 5, baseType: !730, size: 64, align: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !958, file: !869, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !958, file: !869, line: 8, baseType: !756, size: 64, align: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !958, file: !869, line: 9, baseType: !464, size: 64, align: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !958, file: !869, line: 10, baseType: !464, size: 64, align: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !958, file: !869, line: 11, baseType: !702, size: 64, align: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !958, file: !869, line: 12, baseType: !451, size: 32, align: 32, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !958, file: !869, line: 13, baseType: !464, size: 64, align: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !958, file: !869, line: 15, baseType: !880, size: 64, align: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !958, file: !869, line: 17, baseType: !900, size: 64, align: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !958, file: !974, line: 5, baseType: !464, size: 64, align: 64, offset: 704)
!974 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !958, file: !974, line: 6, baseType: !464, size: 64, align: 64, offset: 768)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !958, file: !974, line: 7, baseType: !702, size: 64, align: 64, offset: 832)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !958, file: !974, line: 9, baseType: !528, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !958, file: !974, line: 11, baseType: !528, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !758, file: !450, line: 71, baseType: !980, size: 64, align: 64, offset: 2112)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64, align: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!451, !844, !844}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !758, file: !450, line: 73, baseType: !980, size: 64, align: 64, offset: 2176)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !446, file: !450, line: 55, baseType: !837, size: 64, align: 64, offset: 1664)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !446, file: !450, line: 57, baseType: !841, size: 64, align: 64, offset: 1728)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !446, file: !450, line: 60, baseType: !847, size: 64, align: 64, offset: 1792)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !446, file: !450, line: 62, baseType: !851, size: 64, align: 64, offset: 1856)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !446, file: !450, line: 65, baseType: !855, size: 64, align: 64, offset: 1920)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !446, file: !450, line: 69, baseType: !860, size: 64, align: 64, offset: 1984)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !446, file: !450, line: 70, baseType: !953, size: 64, align: 64, offset: 2048)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !446, file: !450, line: 71, baseType: !980, size: 64, align: 64, offset: 2112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !446, file: !450, line: 73, baseType: !980, size: 64, align: 64, offset: 2176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !446, file: !447, line: 46, baseType: !618, size: 64, align: 64, offset: 2240)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !446, file: !447, line: 47, baseType: !618, size: 64, align: 64, offset: 2304)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !446, file: !447, line: 48, baseType: !996, size: 64, align: 64, offset: 2368)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !445, line: 8, baseType: !998)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !445, line: 8, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !446, file: !447, line: 49, baseType: !618, size: 64, align: 64, offset: 2432)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !446, file: !447, line: 51, baseType: !464, size: 64, align: 64, offset: 2496)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !446, file: !447, line: 53, baseType: !464, size: 64, align: 64, offset: 2560)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !446, file: !447, line: 54, baseType: !464, size: 64, align: 64, offset: 2624)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !446, file: !447, line: 55, baseType: !464, size: 64, align: 64, offset: 2688)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !446, file: !447, line: 56, baseType: !464, size: 64, align: 64, offset: 2752)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !446, file: !447, line: 57, baseType: !451, size: 32, align: 32, offset: 2816)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !446, file: !447, line: 59, baseType: !528, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !446, file: !447, line: 60, baseType: !528, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !446, file: !447, line: 62, baseType: !528, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !446, file: !447, line: 63, baseType: !528, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !446, file: !447, line: 64, baseType: !528, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !446, file: !447, line: 65, baseType: !528, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !446, file: !447, line: 66, baseType: !528, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !446, file: !447, line: 67, baseType: !528, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !446, file: !447, line: 68, baseType: !528, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !446, file: !447, line: 69, baseType: !528, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !446, file: !447, line: 70, baseType: !528, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !446, file: !447, line: 71, baseType: !528, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !446, file: !447, line: 72, baseType: !528, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !446, file: !447, line: 74, baseType: !451, size: 32, align: 32, offset: 2880)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !446, file: !447, line: 75, baseType: !451, size: 32, align: 32, offset: 2912)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !446, file: !447, line: 76, baseType: !451, size: 32, align: 32, offset: 2944)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !446, file: !447, line: 77, baseType: !451, size: 32, align: 32, offset: 2976)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !446, file: !447, line: 79, baseType: !730, size: 64, align: 64, offset: 3008)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !446, file: !447, line: 80, baseType: !618, size: 64, align: 64, offset: 3072)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !446, file: !447, line: 81, baseType: !618, size: 64, align: 64, offset: 3136)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !446, file: !447, line: 83, baseType: !657, size: 64, align: 64, offset: 3200)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !446, file: !447, line: 84, baseType: !609, size: 32, align: 32, offset: 3264)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !446, file: !447, line: 87, baseType: !451, size: 32, align: 32, offset: 3296)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !446, file: !447, line: 91, baseType: !618, size: 64, align: 64, offset: 3328)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !446, file: !447, line: 92, baseType: !742, size: 128, align: 64, offset: 3392)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !446, file: !447, line: 93, baseType: !742, size: 128, align: 64, offset: 3520)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !446, file: !447, line: 95, baseType: !451, size: 32, align: 32, offset: 3648)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !446, file: !447, line: 96, baseType: !451, size: 32, align: 32, offset: 3680)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !446, file: !447, line: 97, baseType: !451, size: 32, align: 32, offset: 3712)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !446, file: !447, line: 100, baseType: !618, size: 64, align: 64, offset: 3776)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !446, file: !447, line: 103, baseType: !618, size: 64, align: 64, offset: 3840)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !446, file: !447, line: 106, baseType: !618, size: 64, align: 64, offset: 3904)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !446, file: !447, line: 108, baseType: !730, size: 64, align: 64, offset: 3968)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !446, file: !447, line: 109, baseType: !618, size: 64, align: 64, offset: 4032)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !446, file: !447, line: 111, baseType: !618, size: 64, align: 64, offset: 4096)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !446, file: !447, line: 114, baseType: !442, size: 64, align: 64, offset: 4160)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !446, file: !447, line: 116, baseType: !730, size: 64, align: 64, offset: 4224)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !446, file: !447, line: 117, baseType: !1044, size: 32768, align: 64, offset: 4288)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, size: 32768, align: 64, elements: !1094)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !1046, line: 10, size: 128, align: 64, elements: !1047)
!1046 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1047 = !{!1048, !1093}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1045, file: !1046, line: 11, baseType: !1049, size: 64, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64, align: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !1046, line: 7, baseType: !1051)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1053, !844, !465, !465, !464, !657}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !445, line: 7, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !1056, line: 15, size: 1600, align: 64, elements: !1057)
!1056 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1055, file: !869, line: 3, baseType: !451, size: 32, align: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1055, file: !869, line: 4, baseType: !451, size: 32, align: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1055, file: !869, line: 5, baseType: !730, size: 64, align: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1055, file: !869, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1055, file: !869, line: 8, baseType: !443, size: 64, align: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !1055, file: !869, line: 9, baseType: !464, size: 64, align: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1055, file: !869, line: 10, baseType: !464, size: 64, align: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !1055, file: !869, line: 11, baseType: !702, size: 64, align: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1055, file: !869, line: 12, baseType: !451, size: 32, align: 32, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1055, file: !869, line: 13, baseType: !464, size: 64, align: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1055, file: !869, line: 15, baseType: !880, size: 64, align: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !1055, file: !869, line: 17, baseType: !900, size: 64, align: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !1055, file: !905, line: 5, baseType: !464, size: 64, align: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !1055, file: !905, line: 6, baseType: !464, size: 64, align: 64, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !1055, file: !905, line: 7, baseType: !702, size: 64, align: 64, offset: 832)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !1055, file: !905, line: 9, baseType: !730, size: 64, align: 64, offset: 896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !1055, file: !905, line: 10, baseType: !910, size: 64, align: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !1055, file: !905, line: 12, baseType: !528, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1055, file: !905, line: 13, baseType: !464, size: 64, align: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1055, file: !905, line: 14, baseType: !451, size: 32, align: 32, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1055, file: !905, line: 15, baseType: !464, size: 64, align: 64, offset: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !1055, file: !905, line: 17, baseType: !528, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !1055, file: !905, line: 18, baseType: !528, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !1055, file: !905, line: 19, baseType: !528, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !1055, file: !905, line: 20, baseType: !528, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !1055, file: !905, line: 22, baseType: !528, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1055, file: !905, line: 23, baseType: !528, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !1055, file: !905, line: 24, baseType: !528, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !1055, file: !905, line: 25, baseType: !528, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1055, file: !905, line: 26, baseType: !528, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !1055, file: !905, line: 31, baseType: !949, size: 64, align: 64, offset: 1344)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !1055, file: !1056, line: 18, baseType: !618, size: 64, align: 64, offset: 1408)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !1055, file: !1056, line: 20, baseType: !702, size: 64, align: 64, offset: 1472)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !1055, file: !1056, line: 21, baseType: !451, size: 32, align: 32, offset: 1536)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !1055, file: !1056, line: 22, baseType: !451, size: 32, align: 32, offset: 1568)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1045, file: !1046, line: 12, baseType: !465, size: 8, align: 8, offset: 64)
!1094 = !{!1095}
!1095 = !DISubrange(count: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !446, file: !447, line: 118, baseType: !1097, size: 2048, align: 8, offset: 37056)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 2048, align: 8, elements: !1094)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !446, file: !447, line: 120, baseType: !980, size: 64, align: 64, offset: 39104)
!1099 = !{i32 2, !"Dwarf Version", i32 4}
!1100 = !{i32 2, !"Debug Info Version", i32 3}
!1101 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!1102 = distinct !DISubprogram(name: "fe_irc_messages_init", scope: !1103, file: !1103, line: 286, type: !606, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1103 = !DIFile(filename: "fe-irc-messages.c", directory: "/home/lichi/Desktop/irssi/task1")
!1104 = !{}
!1105 = !DILocation(line: 288, column: 9, scope: !1102)
!1106 = !DILocation(line: 289, column: 9, scope: !1102)
!1107 = !DILocation(line: 290, column: 9, scope: !1102)
!1108 = !DILocation(line: 291, column: 9, scope: !1102)
!1109 = !DILocation(line: 292, column: 9, scope: !1102)
!1110 = !DILocation(line: 293, column: 9, scope: !1102)
!1111 = !DILocation(line: 294, column: 9, scope: !1102)
!1112 = !DILocation(line: 295, column: 9, scope: !1102)
!1113 = !DILocation(line: 296, column: 9, scope: !1102)
!1114 = !DILocation(line: 297, column: 1, scope: !1102)
!1115 = distinct !DISubprogram(name: "sig_message_own_public", scope: !1103, file: !1103, line: 42, type: !1116, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !756, !844, !844, !844}
!1118 = !DILocalVariable(name: "server", arg: 1, scope: !1115, file: !1103, line: 42, type: !756)
!1119 = !DIExpression()
!1120 = !DILocation(line: 42, column: 48, scope: !1115)
!1121 = !DILocalVariable(name: "msg", arg: 2, scope: !1115, file: !1103, line: 42, type: !844)
!1122 = !DILocation(line: 42, column: 68, scope: !1115)
!1123 = !DILocalVariable(name: "target", arg: 3, scope: !1115, file: !1103, line: 43, type: !844)
!1124 = !DILocation(line: 43, column: 20, scope: !1115)
!1125 = !DILocalVariable(name: "origtarget", arg: 4, scope: !1115, file: !1103, line: 43, type: !844)
!1126 = !DILocation(line: 43, column: 40, scope: !1115)
!1127 = !DILocalVariable(name: "oldtarget", scope: !1115, file: !1103, line: 45, type: !844)
!1128 = !DILocation(line: 45, column: 14, scope: !1115)
!1129 = !DILocalVariable(name: "nickmode", scope: !1115, file: !1103, line: 46, type: !464)
!1130 = !DILocation(line: 46, column: 8, scope: !1115)
!1131 = !DILocation(line: 48, column: 87, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1115, file: !1103, line: 48, column: 6)
!1133 = !DILocation(line: 48, column: 69, scope: !1132)
!1134 = !DILocation(line: 48, column: 54, scope: !1132)
!1135 = !DILocation(line: 48, column: 53, scope: !1132)
!1136 = !DILocation(line: 48, column: 28, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1132, file: !1103, discriminator: 3)
!1138 = !DILocation(line: 48, column: 9, scope: !1132)
!1139 = !DILocation(line: 48, column: 6, scope: !1115)
!1140 = !DILocation(line: 48, column: 8, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1132, file: !1103, discriminator: 1)
!1142 = !DILocation(line: 48, column: 6, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1115, file: !1103, discriminator: 2)
!1144 = !DILocation(line: 49, column: 3, scope: !1132)
!1145 = !DILocation(line: 50, column: 14, scope: !1115)
!1146 = !DILocation(line: 50, column: 12, scope: !1115)
!1147 = !DILocation(line: 51, column: 113, scope: !1115)
!1148 = !DILocation(line: 51, column: 95, scope: !1115)
!1149 = !DILocation(line: 51, column: 80, scope: !1115)
!1150 = !DILocation(line: 51, column: 79, scope: !1115)
!1151 = !DILocation(line: 51, column: 54, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1115, file: !1103, discriminator: 1)
!1153 = !DILocation(line: 51, column: 35, scope: !1115)
!1154 = !DILocation(line: 51, column: 44, scope: !1115)
!1155 = !DILocation(line: 51, column: 11, scope: !1143)
!1156 = !DILocation(line: 51, column: 9, scope: !1115)
!1157 = !DILocation(line: 52, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1115, file: !1103, line: 52, column: 6)
!1159 = !DILocation(line: 52, column: 16, scope: !1158)
!1160 = !DILocation(line: 52, column: 13, scope: !1158)
!1161 = !DILocation(line: 52, column: 6, scope: !1115)
!1162 = !DILocation(line: 55, column: 48, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !1103, line: 52, column: 27)
!1164 = !DILocation(line: 55, column: 56, scope: !1163)
!1165 = !DILocation(line: 55, column: 35, scope: !1163)
!1166 = !DILocation(line: 56, column: 7, scope: !1163)
!1167 = !DILocation(line: 56, column: 15, scope: !1163)
!1168 = !DILocation(line: 55, column: 14, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1163, file: !1103, discriminator: 1)
!1170 = !DILocation(line: 55, column: 12, scope: !1163)
!1171 = !DILocation(line: 58, column: 40, scope: !1163)
!1172 = !DILocation(line: 58, column: 48, scope: !1163)
!1173 = !DILocation(line: 62, column: 8, scope: !1163)
!1174 = !DILocation(line: 62, column: 16, scope: !1163)
!1175 = !DILocation(line: 62, column: 22, scope: !1163)
!1176 = !DILocation(line: 62, column: 33, scope: !1163)
!1177 = !DILocation(line: 62, column: 38, scope: !1163)
!1178 = !DILocation(line: 58, column: 3, scope: !1163)
!1179 = !DILocation(line: 63, column: 10, scope: !1163)
!1180 = !DILocation(line: 63, column: 3, scope: !1163)
!1181 = !DILocation(line: 64, column: 17, scope: !1163)
!1182 = !DILocation(line: 65, column: 2, scope: !1163)
!1183 = !DILocation(line: 67, column: 1, scope: !1115)
!1184 = distinct !DISubprogram(name: "sig_message_irc_op_public", scope: !1103, file: !1103, line: 70, type: !1185, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !756, !844, !844, !844, !844}
!1187 = !DILocalVariable(name: "server", arg: 1, scope: !1184, file: !1103, line: 70, type: !756)
!1188 = !DILocation(line: 70, column: 51, scope: !1184)
!1189 = !DILocalVariable(name: "msg", arg: 2, scope: !1184, file: !1103, line: 70, type: !844)
!1190 = !DILocation(line: 70, column: 71, scope: !1184)
!1191 = !DILocalVariable(name: "nick", arg: 3, scope: !1184, file: !1103, line: 71, type: !844)
!1192 = !DILocation(line: 71, column: 23, scope: !1184)
!1193 = !DILocalVariable(name: "address", arg: 4, scope: !1184, file: !1103, line: 71, type: !844)
!1194 = !DILocation(line: 71, column: 41, scope: !1184)
!1195 = !DILocalVariable(name: "target", arg: 5, scope: !1184, file: !1103, line: 72, type: !844)
!1196 = !DILocation(line: 72, column: 23, scope: !1184)
!1197 = !DILocalVariable(name: "nickmode", scope: !1184, file: !1103, line: 74, type: !464)
!1198 = !DILocation(line: 74, column: 8, scope: !1184)
!1199 = !DILocalVariable(name: "optarget", scope: !1184, file: !1103, line: 74, type: !464)
!1200 = !DILocation(line: 74, column: 19, scope: !1184)
!1201 = !DILocalVariable(name: "prefix", scope: !1184, file: !1103, line: 74, type: !464)
!1202 = !DILocation(line: 74, column: 30, scope: !1184)
!1203 = !DILocalVariable(name: "cleantarget", scope: !1184, file: !1103, line: 75, type: !844)
!1204 = !DILocation(line: 75, column: 14, scope: !1184)
!1205 = !DILocation(line: 78, column: 118, scope: !1184)
!1206 = !DILocation(line: 78, column: 100, scope: !1184)
!1207 = !DILocation(line: 78, column: 85, scope: !1184)
!1208 = !DILocation(line: 78, column: 84, scope: !1184)
!1209 = !DILocation(line: 78, column: 59, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1184, file: !1103, discriminator: 1)
!1211 = !DILocation(line: 78, column: 40, scope: !1184)
!1212 = !DILocation(line: 78, column: 49, scope: !1184)
!1213 = !DILocation(line: 78, column: 16, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1184, file: !1103, discriminator: 2)
!1215 = !DILocation(line: 78, column: 14, scope: !1184)
!1216 = !DILocation(line: 79, column: 21, scope: !1184)
!1217 = !DILocation(line: 79, column: 29, scope: !1184)
!1218 = !DILocation(line: 79, column: 43, scope: !1184)
!1219 = !DILocation(line: 79, column: 41, scope: !1184)
!1220 = !DILocation(line: 79, column: 11, scope: !1184)
!1221 = !DILocation(line: 79, column: 9, scope: !1184)
!1222 = !DILocation(line: 82, column: 114, scope: !1184)
!1223 = !DILocation(line: 82, column: 96, scope: !1184)
!1224 = !DILocation(line: 82, column: 81, scope: !1184)
!1225 = !DILocation(line: 82, column: 80, scope: !1184)
!1226 = !DILocation(line: 82, column: 55, scope: !1210)
!1227 = !DILocation(line: 82, column: 36, scope: !1184)
!1228 = !DILocation(line: 82, column: 45, scope: !1184)
!1229 = !DILocation(line: 82, column: 16, scope: !1214)
!1230 = !DILocation(line: 82, column: 14, scope: !1184)
!1231 = !DILocation(line: 84, column: 47, scope: !1184)
!1232 = !DILocation(line: 84, column: 55, scope: !1184)
!1233 = !DILocation(line: 84, column: 34, scope: !1184)
!1234 = !DILocation(line: 85, column: 6, scope: !1184)
!1235 = !DILocation(line: 84, column: 13, scope: !1210)
!1236 = !DILocation(line: 84, column: 11, scope: !1184)
!1237 = !DILocation(line: 87, column: 25, scope: !1184)
!1238 = !DILocation(line: 87, column: 33, scope: !1184)
!1239 = !DILocation(line: 87, column: 13, scope: !1184)
!1240 = !DILocation(line: 87, column: 11, scope: !1184)
!1241 = !DILocation(line: 89, column: 39, scope: !1184)
!1242 = !DILocation(line: 89, column: 47, scope: !1184)
!1243 = !DILocation(line: 92, column: 7, scope: !1184)
!1244 = !DILocation(line: 92, column: 13, scope: !1184)
!1245 = !DILocation(line: 92, column: 23, scope: !1184)
!1246 = !DILocation(line: 92, column: 28, scope: !1184)
!1247 = !DILocation(line: 89, column: 2, scope: !1184)
!1248 = !DILocation(line: 93, column: 9, scope: !1184)
!1249 = !DILocation(line: 93, column: 2, scope: !1184)
!1250 = !DILocation(line: 94, column: 9, scope: !1184)
!1251 = !DILocation(line: 94, column: 2, scope: !1184)
!1252 = !DILocation(line: 95, column: 9, scope: !1184)
!1253 = !DILocation(line: 95, column: 2, scope: !1184)
!1254 = !DILocation(line: 96, column: 1, scope: !1184)
!1255 = distinct !DISubprogram(name: "sig_message_own_wall", scope: !1103, file: !1103, line: 98, type: !1256, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !756, !844, !844}
!1258 = !DILocalVariable(name: "server", arg: 1, scope: !1255, file: !1103, line: 98, type: !756)
!1259 = !DILocation(line: 98, column: 46, scope: !1255)
!1260 = !DILocalVariable(name: "msg", arg: 2, scope: !1255, file: !1103, line: 98, type: !844)
!1261 = !DILocation(line: 98, column: 66, scope: !1255)
!1262 = !DILocalVariable(name: "target", arg: 3, scope: !1255, file: !1103, line: 99, type: !844)
!1263 = !DILocation(line: 99, column: 18, scope: !1255)
!1264 = !DILocalVariable(name: "nickmode", scope: !1255, file: !1103, line: 101, type: !464)
!1265 = !DILocation(line: 101, column: 15, scope: !1255)
!1266 = !DILocalVariable(name: "optarget", scope: !1255, file: !1103, line: 101, type: !464)
!1267 = !DILocation(line: 101, column: 26, scope: !1255)
!1268 = !DILocation(line: 103, column: 47, scope: !1255)
!1269 = !DILocation(line: 103, column: 55, scope: !1255)
!1270 = !DILocation(line: 103, column: 34, scope: !1255)
!1271 = !DILocation(line: 104, column: 6, scope: !1255)
!1272 = !DILocation(line: 104, column: 14, scope: !1255)
!1273 = !DILocation(line: 103, column: 13, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1255, file: !1103, discriminator: 1)
!1275 = !DILocation(line: 103, column: 11, scope: !1255)
!1276 = !DILocation(line: 107, column: 30, scope: !1255)
!1277 = !DILocation(line: 107, column: 13, scope: !1255)
!1278 = !DILocation(line: 107, column: 11, scope: !1255)
!1279 = !DILocation(line: 108, column: 39, scope: !1255)
!1280 = !DILocation(line: 108, column: 47, scope: !1255)
!1281 = !DILocation(line: 112, column: 7, scope: !1255)
!1282 = !DILocation(line: 112, column: 15, scope: !1255)
!1283 = !DILocation(line: 112, column: 21, scope: !1255)
!1284 = !DILocation(line: 112, column: 31, scope: !1255)
!1285 = !DILocation(line: 112, column: 36, scope: !1255)
!1286 = !DILocation(line: 108, column: 2, scope: !1255)
!1287 = !DILocation(line: 113, column: 9, scope: !1255)
!1288 = !DILocation(line: 113, column: 2, scope: !1255)
!1289 = !DILocation(line: 114, column: 16, scope: !1255)
!1290 = !DILocation(line: 114, column: 9, scope: !1255)
!1291 = !DILocation(line: 115, column: 1, scope: !1255)
!1292 = distinct !DISubprogram(name: "sig_message_own_action", scope: !1103, file: !1103, line: 117, type: !1293, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !443, !844, !844}
!1295 = !DILocalVariable(name: "server", arg: 1, scope: !1292, file: !1103, line: 117, type: !443)
!1296 = !DILocation(line: 117, column: 52, scope: !1292)
!1297 = !DILocalVariable(name: "msg", arg: 2, scope: !1292, file: !1103, line: 117, type: !844)
!1298 = !DILocation(line: 117, column: 72, scope: !1292)
!1299 = !DILocalVariable(name: "target", arg: 3, scope: !1292, file: !1103, line: 118, type: !844)
!1300 = !DILocation(line: 118, column: 48, scope: !1292)
!1301 = !DILocalVariable(name: "item", scope: !1292, file: !1103, line: 120, type: !442)
!1302 = !DILocation(line: 120, column: 8, scope: !1292)
!1303 = !DILocalVariable(name: "oldtarget", scope: !1292, file: !1103, line: 121, type: !844)
!1304 = !DILocation(line: 121, column: 14, scope: !1292)
!1305 = !DILocalVariable(name: "freemsg", scope: !1292, file: !1103, line: 122, type: !464)
!1306 = !DILocation(line: 122, column: 15, scope: !1292)
!1307 = !DILocation(line: 124, column: 14, scope: !1292)
!1308 = !DILocation(line: 124, column: 12, scope: !1292)
!1309 = !DILocation(line: 125, column: 113, scope: !1292)
!1310 = !DILocation(line: 125, column: 95, scope: !1292)
!1311 = !DILocation(line: 125, column: 80, scope: !1292)
!1312 = !DILocation(line: 125, column: 79, scope: !1292)
!1313 = !DILocation(line: 125, column: 54, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1292, file: !1103, discriminator: 1)
!1315 = !DILocation(line: 125, column: 35, scope: !1292)
!1316 = !DILocation(line: 125, column: 44, scope: !1292)
!1317 = !DILocation(line: 125, column: 11, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1292, file: !1103, discriminator: 2)
!1319 = !DILocation(line: 125, column: 9, scope: !1292)
!1320 = !DILocation(line: 126, column: 42, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1292, file: !1103, line: 126, column: 6)
!1322 = !DILocation(line: 126, column: 24, scope: !1321)
!1323 = !DILocation(line: 126, column: 9, scope: !1321)
!1324 = !DILocation(line: 126, column: 20, scope: !1321)
!1325 = !DILocation(line: 126, column: 64, scope: !1321)
!1326 = !DILocation(line: 126, column: 46, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1321, file: !1103, discriminator: 1)
!1328 = !DILocation(line: 126, column: 31, scope: !1321)
!1329 = !DILocation(line: 126, column: 19, scope: !1321)
!1330 = !DILocation(line: 126, column: 7, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1321, file: !1103, discriminator: 2)
!1332 = !DILocation(line: 126, column: 7, scope: !1321)
!1333 = !DILocation(line: 126, column: 6, scope: !1292)
!1334 = !DILocation(line: 127, column: 145, scope: !1321)
!1335 = !DILocation(line: 127, column: 127, scope: !1321)
!1336 = !DILocation(line: 127, column: 112, scope: !1321)
!1337 = !DILocation(line: 127, column: 23, scope: !1321)
!1338 = !DILocation(line: 127, column: 98, scope: !1327)
!1339 = !DILocation(line: 127, column: 98, scope: !1321)
!1340 = !DILocation(line: 127, column: 73, scope: !1331)
!1341 = !DILocation(line: 127, column: 57, scope: !1321)
!1342 = !DILocation(line: 127, column: 56, scope: !1321)
!1343 = !DILocation(line: 127, column: 31, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1321, file: !1103, discriminator: 3)
!1345 = !DILocation(line: 127, column: 11, scope: !1321)
!1346 = !DILocation(line: 127, column: 10, scope: !1321)
!1347 = !DILocation(line: 127, column: 8, scope: !1321)
!1348 = !DILocation(line: 127, column: 3, scope: !1321)
!1349 = !DILocation(line: 129, column: 25, scope: !1321)
!1350 = !DILocation(line: 129, column: 33, scope: !1321)
!1351 = !DILocation(line: 129, column: 10, scope: !1321)
!1352 = !DILocation(line: 129, column: 8, scope: !1321)
!1353 = !DILocation(line: 131, column: 6, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1292, file: !1103, line: 131, column: 6)
!1355 = !DILocation(line: 131, column: 6, scope: !1292)
!1356 = !DILocation(line: 132, column: 35, scope: !1354)
!1357 = !DILocation(line: 132, column: 41, scope: !1354)
!1358 = !DILocation(line: 132, column: 19, scope: !1354)
!1359 = !DILocation(line: 132, column: 17, scope: !1354)
!1360 = !DILocation(line: 132, column: 7, scope: !1354)
!1361 = !DILocation(line: 132, column: 3, scope: !1354)
!1362 = !DILocation(line: 134, column: 38, scope: !1292)
!1363 = !DILocation(line: 134, column: 46, scope: !1292)
!1364 = !DILocation(line: 134, column: 149, scope: !1292)
!1365 = !DILocation(line: 134, column: 131, scope: !1292)
!1366 = !DILocation(line: 134, column: 116, scope: !1292)
!1367 = !DILocation(line: 134, column: 16, scope: !1292)
!1368 = !DILocation(line: 134, column: 60, scope: !1292)
!1369 = !DILocation(line: 134, column: 42, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1292, file: !1103, discriminator: 3)
!1371 = !DILocation(line: 134, column: 27, scope: !1292)
!1372 = !DILocation(line: 134, column: 15, scope: !1292)
!1373 = !DILocation(line: 134, column: 114, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1292, file: !1103, discriminator: 4)
!1375 = !DILocation(line: 134, column: 113, scope: !1292)
!1376 = !DILocation(line: 134, column: 110, scope: !1292)
!1377 = !DILocation(line: 134, column: 65, scope: !1292)
!1378 = !DILocation(line: 134, column: 1, scope: !1292)
!1379 = !DILocation(line: 134, column: 4, scope: !1314)
!1380 = !DILocation(line: 134, column: 17, scope: !1314)
!1381 = !DILocation(line: 134, column: 14, scope: !1314)
!1382 = !DILocation(line: 134, column: 60, scope: !1318)
!1383 = !DILocation(line: 134, column: 72, scope: !1318)
!1384 = !DILocation(line: 134, column: 80, scope: !1318)
!1385 = !DILocation(line: 134, column: 86, scope: !1318)
!1386 = !DILocation(line: 134, column: 91, scope: !1318)
!1387 = !DILocation(line: 134, column: 2, scope: !1318)
!1388 = !DILocation(line: 139, column: 16, scope: !1292)
!1389 = !DILocation(line: 139, column: 9, scope: !1292)
!1390 = !DILocation(line: 140, column: 1, scope: !1292)
!1391 = distinct !DISubprogram(name: "sig_message_irc_action", scope: !1103, file: !1103, line: 142, type: !1392, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !443, !844, !844, !844, !844}
!1394 = !DILocalVariable(name: "server", arg: 1, scope: !1391, file: !1103, line: 142, type: !443)
!1395 = !DILocation(line: 142, column: 52, scope: !1391)
!1396 = !DILocalVariable(name: "msg", arg: 2, scope: !1391, file: !1103, line: 142, type: !844)
!1397 = !DILocation(line: 142, column: 72, scope: !1391)
!1398 = !DILocalVariable(name: "nick", arg: 3, scope: !1391, file: !1103, line: 143, type: !844)
!1399 = !DILocation(line: 143, column: 20, scope: !1391)
!1400 = !DILocalVariable(name: "address", arg: 4, scope: !1391, file: !1103, line: 143, type: !844)
!1401 = !DILocation(line: 143, column: 38, scope: !1391)
!1402 = !DILocalVariable(name: "target", arg: 5, scope: !1391, file: !1103, line: 144, type: !844)
!1403 = !DILocation(line: 144, column: 20, scope: !1391)
!1404 = !DILocalVariable(name: "item", scope: !1391, file: !1103, line: 146, type: !442)
!1405 = !DILocation(line: 146, column: 8, scope: !1391)
!1406 = !DILocalVariable(name: "oldtarget", scope: !1391, file: !1103, line: 147, type: !844)
!1407 = !DILocation(line: 147, column: 14, scope: !1391)
!1408 = !DILocalVariable(name: "freemsg", scope: !1391, file: !1103, line: 148, type: !464)
!1409 = !DILocation(line: 148, column: 15, scope: !1391)
!1410 = !DILocalVariable(name: "level", scope: !1391, file: !1103, line: 149, type: !451)
!1411 = !DILocation(line: 149, column: 6, scope: !1391)
!1412 = !DILocalVariable(name: "own", scope: !1391, file: !1103, line: 150, type: !451)
!1413 = !DILocation(line: 150, column: 6, scope: !1391)
!1414 = !DILocation(line: 152, column: 14, scope: !1391)
!1415 = !DILocation(line: 152, column: 12, scope: !1391)
!1416 = !DILocation(line: 153, column: 113, scope: !1391)
!1417 = !DILocation(line: 153, column: 95, scope: !1391)
!1418 = !DILocation(line: 153, column: 80, scope: !1391)
!1419 = !DILocation(line: 153, column: 79, scope: !1391)
!1420 = !DILocation(line: 153, column: 54, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1391, file: !1103, discriminator: 1)
!1422 = !DILocation(line: 153, column: 35, scope: !1391)
!1423 = !DILocation(line: 153, column: 44, scope: !1391)
!1424 = !DILocation(line: 153, column: 11, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1391, file: !1103, discriminator: 2)
!1426 = !DILocation(line: 153, column: 9, scope: !1391)
!1427 = !DILocation(line: 156, column: 40, scope: !1391)
!1428 = !DILocation(line: 156, column: 22, scope: !1391)
!1429 = !DILocation(line: 156, column: 7, scope: !1391)
!1430 = !DILocation(line: 156, column: 18, scope: !1391)
!1431 = !DILocation(line: 156, column: 62, scope: !1391)
!1432 = !DILocation(line: 156, column: 44, scope: !1421)
!1433 = !DILocation(line: 156, column: 29, scope: !1391)
!1434 = !DILocation(line: 156, column: 17, scope: !1391)
!1435 = !DILocation(line: 156, column: 5, scope: !1425)
!1436 = !DILocation(line: 156, column: 4, scope: !1391)
!1437 = !DILocation(line: 155, column: 27, scope: !1391)
!1438 = !DILocation(line: 155, column: 8, scope: !1391)
!1439 = !DILocation(line: 158, column: 53, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 158, column: 6)
!1441 = !DILocation(line: 158, column: 35, scope: !1440)
!1442 = !DILocation(line: 158, column: 20, scope: !1440)
!1443 = !DILocation(line: 158, column: 32, scope: !1440)
!1444 = !DILocation(line: 158, column: 38, scope: !1440)
!1445 = !DILocation(line: 158, column: 47, scope: !1440)
!1446 = !DILocation(line: 158, column: 55, scope: !1440)
!1447 = !DILocation(line: 158, column: 60, scope: !1440)
!1448 = !DILocation(line: 158, column: 6, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1440, file: !1103, discriminator: 1)
!1450 = !DILocation(line: 158, column: 6, scope: !1440)
!1451 = !DILocation(line: 158, column: 6, scope: !1391)
!1452 = !DILocation(line: 159, column: 3, scope: !1440)
!1453 = !DILocation(line: 161, column: 53, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 161, column: 6)
!1455 = !DILocation(line: 161, column: 35, scope: !1454)
!1456 = !DILocation(line: 161, column: 20, scope: !1454)
!1457 = !DILocation(line: 161, column: 32, scope: !1454)
!1458 = !DILocation(line: 161, column: 38, scope: !1454)
!1459 = !DILocation(line: 161, column: 47, scope: !1454)
!1460 = !DILocation(line: 161, column: 55, scope: !1454)
!1461 = !DILocation(line: 162, column: 5, scope: !1454)
!1462 = !DILocation(line: 162, column: 11, scope: !1454)
!1463 = !DILocation(line: 161, column: 6, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1454, file: !1103, discriminator: 1)
!1465 = !DILocation(line: 161, column: 6, scope: !1454)
!1466 = !DILocation(line: 161, column: 6, scope: !1391)
!1467 = !DILocation(line: 163, column: 9, scope: !1454)
!1468 = !DILocation(line: 163, column: 3, scope: !1454)
!1469 = !DILocation(line: 165, column: 53, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 165, column: 6)
!1471 = !DILocation(line: 165, column: 35, scope: !1470)
!1472 = !DILocation(line: 165, column: 20, scope: !1470)
!1473 = !DILocation(line: 165, column: 32, scope: !1470)
!1474 = !DILocation(line: 165, column: 38, scope: !1470)
!1475 = !DILocation(line: 165, column: 47, scope: !1470)
!1476 = !DILocation(line: 165, column: 55, scope: !1470)
!1477 = !DILocation(line: 166, column: 5, scope: !1470)
!1478 = !DILocation(line: 166, column: 11, scope: !1470)
!1479 = !DILocation(line: 165, column: 6, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1470, file: !1103, discriminator: 1)
!1481 = !DILocation(line: 165, column: 6, scope: !1470)
!1482 = !DILocation(line: 165, column: 6, scope: !1391)
!1483 = !DILocation(line: 167, column: 9, scope: !1470)
!1484 = !DILocation(line: 167, column: 3, scope: !1470)
!1485 = !DILocation(line: 169, column: 42, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 169, column: 6)
!1487 = !DILocation(line: 169, column: 24, scope: !1486)
!1488 = !DILocation(line: 169, column: 9, scope: !1486)
!1489 = !DILocation(line: 169, column: 20, scope: !1486)
!1490 = !DILocation(line: 169, column: 64, scope: !1486)
!1491 = !DILocation(line: 169, column: 46, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1486, file: !1103, discriminator: 1)
!1493 = !DILocation(line: 169, column: 31, scope: !1486)
!1494 = !DILocation(line: 169, column: 19, scope: !1486)
!1495 = !DILocation(line: 169, column: 7, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1486, file: !1103, discriminator: 2)
!1497 = !DILocation(line: 169, column: 7, scope: !1486)
!1498 = !DILocation(line: 169, column: 6, scope: !1391)
!1499 = !DILocation(line: 170, column: 145, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1486, file: !1103, line: 169, column: 29)
!1501 = !DILocation(line: 170, column: 127, scope: !1500)
!1502 = !DILocation(line: 170, column: 112, scope: !1500)
!1503 = !DILocation(line: 170, column: 23, scope: !1500)
!1504 = !DILocation(line: 170, column: 98, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1500, file: !1103, discriminator: 1)
!1506 = !DILocation(line: 170, column: 98, scope: !1500)
!1507 = !DILocation(line: 170, column: 73, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1500, file: !1103, discriminator: 2)
!1509 = !DILocation(line: 170, column: 57, scope: !1500)
!1510 = !DILocation(line: 170, column: 56, scope: !1500)
!1511 = !DILocation(line: 170, column: 31, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1500, file: !1103, discriminator: 3)
!1513 = !DILocation(line: 170, column: 11, scope: !1500)
!1514 = !DILocation(line: 170, column: 10, scope: !1500)
!1515 = !DILocation(line: 170, column: 8, scope: !1500)
!1516 = !DILocation(line: 171, column: 2, scope: !1500)
!1517 = !DILocation(line: 172, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1486, file: !1103, line: 171, column: 9)
!1519 = !DILocation(line: 172, column: 27, scope: !1518)
!1520 = !DILocation(line: 172, column: 35, scope: !1518)
!1521 = !DILocation(line: 172, column: 11, scope: !1518)
!1522 = !DILocation(line: 172, column: 10, scope: !1518)
!1523 = !DILocation(line: 172, column: 7, scope: !1518)
!1524 = !DILocation(line: 173, column: 62, scope: !1518)
!1525 = !DILocation(line: 173, column: 44, scope: !1518)
!1526 = !DILocation(line: 173, column: 29, scope: !1518)
!1527 = !DILocation(line: 173, column: 41, scope: !1518)
!1528 = !DILocation(line: 173, column: 47, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1518, file: !1103, discriminator: 1)
!1530 = !DILocation(line: 173, column: 41, scope: !1529)
!1531 = !DILocation(line: 173, column: 56, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1518, file: !1103, discriminator: 2)
!1533 = !DILocation(line: 173, column: 41, scope: !1532)
!1534 = !DILocation(line: 173, column: 41, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1518, file: !1103, discriminator: 3)
!1536 = !DILocation(line: 173, column: 67, scope: !1535)
!1537 = !DILocation(line: 173, column: 10, scope: !1535)
!1538 = !DILocation(line: 173, column: 8, scope: !1535)
!1539 = !DILocation(line: 176, column: 6, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 176, column: 6)
!1541 = !DILocation(line: 176, column: 6, scope: !1391)
!1542 = !DILocation(line: 177, column: 35, scope: !1540)
!1543 = !DILocation(line: 177, column: 41, scope: !1540)
!1544 = !DILocation(line: 177, column: 19, scope: !1540)
!1545 = !DILocation(line: 177, column: 17, scope: !1540)
!1546 = !DILocation(line: 177, column: 7, scope: !1540)
!1547 = !DILocation(line: 177, column: 3, scope: !1540)
!1548 = !DILocation(line: 179, column: 42, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1391, file: !1103, line: 179, column: 6)
!1550 = !DILocation(line: 179, column: 24, scope: !1549)
!1551 = !DILocation(line: 179, column: 9, scope: !1549)
!1552 = !DILocation(line: 179, column: 20, scope: !1549)
!1553 = !DILocation(line: 179, column: 64, scope: !1549)
!1554 = !DILocation(line: 179, column: 46, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1549, file: !1103, discriminator: 1)
!1556 = !DILocation(line: 179, column: 31, scope: !1549)
!1557 = !DILocation(line: 179, column: 19, scope: !1549)
!1558 = !DILocation(line: 179, column: 7, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1549, file: !1103, discriminator: 2)
!1560 = !DILocation(line: 179, column: 7, scope: !1549)
!1561 = !DILocation(line: 179, column: 6, scope: !1391)
!1562 = !DILocation(line: 181, column: 29, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !1103, line: 181, column: 7)
!1564 = distinct !DILexicalBlock(scope: !1549, file: !1103, line: 179, column: 29)
!1565 = !DILocation(line: 181, column: 7, scope: !1563)
!1566 = !DILocation(line: 181, column: 35, scope: !1563)
!1567 = !DILocation(line: 181, column: 38, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1563, file: !1103, discriminator: 1)
!1569 = !DILocation(line: 181, column: 48, scope: !1568)
!1570 = !DILocation(line: 181, column: 45, scope: !1568)
!1571 = !DILocation(line: 181, column: 7, scope: !1568)
!1572 = !DILocation(line: 183, column: 40, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1563, file: !1103, line: 181, column: 59)
!1574 = !DILocation(line: 183, column: 48, scope: !1573)
!1575 = !DILocation(line: 183, column: 56, scope: !1573)
!1576 = !DILocation(line: 183, column: 85, scope: !1573)
!1577 = !DILocation(line: 183, column: 91, scope: !1573)
!1578 = !DILocation(line: 183, column: 4, scope: !1573)
!1579 = !DILocation(line: 185, column: 3, scope: !1573)
!1580 = !DILocation(line: 187, column: 40, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1563, file: !1103, line: 185, column: 10)
!1582 = !DILocation(line: 187, column: 48, scope: !1581)
!1583 = !DILocation(line: 187, column: 56, scope: !1581)
!1584 = !DILocation(line: 187, column: 93, scope: !1581)
!1585 = !DILocation(line: 187, column: 99, scope: !1581)
!1586 = !DILocation(line: 187, column: 110, scope: !1581)
!1587 = !DILocation(line: 187, column: 4, scope: !1581)
!1588 = !DILocation(line: 191, column: 2, scope: !1564)
!1589 = !DILocation(line: 192, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1103, line: 192, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1549, file: !1103, line: 191, column: 9)
!1592 = !DILocation(line: 192, column: 7, scope: !1591)
!1593 = !DILocation(line: 194, column: 40, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !1103, line: 192, column: 12)
!1595 = !DILocation(line: 194, column: 48, scope: !1594)
!1596 = !DILocation(line: 194, column: 90, scope: !1594)
!1597 = !DILocation(line: 194, column: 95, scope: !1594)
!1598 = !DILocation(line: 194, column: 3, scope: !1594)
!1599 = !DILocation(line: 194, column: 6, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1594, file: !1103, discriminator: 1)
!1601 = !DILocation(line: 194, column: 19, scope: !1600)
!1602 = !DILocation(line: 194, column: 16, scope: !1600)
!1603 = !DILocation(line: 194, column: 90, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1594, file: !1103, discriminator: 2)
!1605 = !DILocation(line: 194, column: 74, scope: !1604)
!1606 = !DILocation(line: 194, column: 82, scope: !1604)
!1607 = !DILocation(line: 194, column: 88, scope: !1604)
!1608 = !DILocation(line: 194, column: 93, scope: !1604)
!1609 = !DILocation(line: 194, column: 4, scope: !1604)
!1610 = !DILocation(line: 198, column: 3, scope: !1594)
!1611 = !DILocation(line: 200, column: 40, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1590, file: !1103, line: 198, column: 10)
!1613 = !DILocation(line: 200, column: 48, scope: !1612)
!1614 = !DILocation(line: 200, column: 88, scope: !1612)
!1615 = !DILocation(line: 200, column: 93, scope: !1612)
!1616 = !DILocation(line: 200, column: 58, scope: !1612)
!1617 = !DILocation(line: 200, column: 64, scope: !1612)
!1618 = !DILocation(line: 200, column: 72, scope: !1612)
!1619 = !DILocation(line: 200, column: 64, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1612, file: !1103, discriminator: 1)
!1621 = !DILocation(line: 200, column: 10, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1612, file: !1103, discriminator: 2)
!1623 = !DILocation(line: 200, column: 64, scope: !1622)
!1624 = !DILocation(line: 200, column: 64, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1612, file: !1103, discriminator: 3)
!1626 = !DILocation(line: 200, column: 19, scope: !1625)
!1627 = !DILocation(line: 200, column: 4, scope: !1625)
!1628 = !DILocation(line: 207, column: 9, scope: !1391)
!1629 = !DILocation(line: 207, column: 2, scope: !1391)
!1630 = !DILocation(line: 208, column: 1, scope: !1391)
!1631 = !DILocation(line: 208, column: 1, scope: !1421)
!1632 = distinct !DISubprogram(name: "sig_message_own_notice", scope: !1103, file: !1103, line: 210, type: !1293, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1633 = !DILocalVariable(name: "server", arg: 1, scope: !1632, file: !1103, line: 210, type: !443)
!1634 = !DILocation(line: 210, column: 52, scope: !1632)
!1635 = !DILocalVariable(name: "msg", arg: 2, scope: !1632, file: !1103, line: 210, type: !844)
!1636 = !DILocation(line: 210, column: 72, scope: !1632)
!1637 = !DILocalVariable(name: "target", arg: 3, scope: !1632, file: !1103, line: 211, type: !844)
!1638 = !DILocation(line: 211, column: 20, scope: !1632)
!1639 = !DILocation(line: 213, column: 38, scope: !1632)
!1640 = !DILocation(line: 213, column: 69, scope: !1632)
!1641 = !DILocation(line: 213, column: 77, scope: !1632)
!1642 = !DILocation(line: 213, column: 46, scope: !1632)
!1643 = !DILocation(line: 213, column: 162, scope: !1632)
!1644 = !DILocation(line: 213, column: 170, scope: !1632)
!1645 = !DILocation(line: 213, column: 2, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1632, file: !1103, discriminator: 1)
!1647 = !DILocation(line: 216, column: 1, scope: !1632)
!1648 = distinct !DISubprogram(name: "sig_message_irc_notice", scope: !1103, file: !1103, line: 218, type: !1185, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1649 = !DILocalVariable(name: "server", arg: 1, scope: !1648, file: !1103, line: 218, type: !756)
!1650 = !DILocation(line: 218, column: 48, scope: !1648)
!1651 = !DILocalVariable(name: "msg", arg: 2, scope: !1648, file: !1103, line: 218, type: !844)
!1652 = !DILocation(line: 218, column: 68, scope: !1648)
!1653 = !DILocalVariable(name: "nick", arg: 3, scope: !1648, file: !1103, line: 219, type: !844)
!1654 = !DILocation(line: 219, column: 20, scope: !1648)
!1655 = !DILocalVariable(name: "address", arg: 4, scope: !1648, file: !1103, line: 219, type: !844)
!1656 = !DILocation(line: 219, column: 38, scope: !1648)
!1657 = !DILocalVariable(name: "target", arg: 5, scope: !1648, file: !1103, line: 220, type: !844)
!1658 = !DILocation(line: 220, column: 20, scope: !1648)
!1659 = !DILocalVariable(name: "oldtarget", scope: !1648, file: !1103, line: 222, type: !844)
!1660 = !DILocation(line: 222, column: 14, scope: !1648)
!1661 = !DILocalVariable(name: "level", scope: !1648, file: !1103, line: 223, type: !451)
!1662 = !DILocation(line: 223, column: 6, scope: !1648)
!1663 = !DILocation(line: 225, column: 14, scope: !1648)
!1664 = !DILocation(line: 225, column: 12, scope: !1648)
!1665 = !DILocation(line: 226, column: 113, scope: !1648)
!1666 = !DILocation(line: 226, column: 95, scope: !1648)
!1667 = !DILocation(line: 226, column: 80, scope: !1648)
!1668 = !DILocation(line: 226, column: 79, scope: !1648)
!1669 = !DILocation(line: 226, column: 54, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1648, file: !1103, discriminator: 1)
!1671 = !DILocation(line: 226, column: 35, scope: !1648)
!1672 = !DILocation(line: 226, column: 44, scope: !1648)
!1673 = !DILocation(line: 226, column: 11, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1648, file: !1103, discriminator: 2)
!1675 = !DILocation(line: 226, column: 9, scope: !1648)
!1676 = !DILocation(line: 228, column: 6, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1648, file: !1103, line: 228, column: 6)
!1678 = !DILocation(line: 228, column: 14, scope: !1677)
!1679 = !DILocation(line: 228, column: 21, scope: !1677)
!1680 = !DILocation(line: 228, column: 25, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1677, file: !1103, discriminator: 1)
!1682 = !DILocation(line: 228, column: 24, scope: !1681)
!1683 = !DILocation(line: 228, column: 33, scope: !1681)
!1684 = !DILocation(line: 228, column: 6, scope: !1681)
!1685 = !DILocation(line: 230, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1103, line: 230, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1677, file: !1103, line: 228, column: 42)
!1688 = !DILocation(line: 230, column: 29, scope: !1686)
!1689 = !DILocation(line: 231, column: 7, scope: !1686)
!1690 = !DILocation(line: 231, column: 15, scope: !1686)
!1691 = !DILocation(line: 230, column: 8, scope: !1686)
!1692 = !DILocation(line: 230, column: 7, scope: !1687)
!1693 = !DILocation(line: 232, column: 40, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !1103, line: 231, column: 38)
!1695 = !DILocation(line: 232, column: 48, scope: !1694)
!1696 = !DILocation(line: 232, column: 95, scope: !1694)
!1697 = !DILocation(line: 232, column: 101, scope: !1694)
!1698 = !DILocation(line: 232, column: 4, scope: !1694)
!1699 = !DILocation(line: 234, column: 3, scope: !1694)
!1700 = !DILocation(line: 235, column: 17, scope: !1687)
!1701 = !DILocation(line: 238, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1648, file: !1103, line: 238, column: 6)
!1703 = !DILocation(line: 238, column: 27, scope: !1702)
!1704 = !DILocation(line: 238, column: 33, scope: !1702)
!1705 = !DILocation(line: 239, column: 41, scope: !1702)
!1706 = !DILocation(line: 239, column: 23, scope: !1702)
!1707 = !DILocation(line: 239, column: 8, scope: !1702)
!1708 = !DILocation(line: 239, column: 19, scope: !1702)
!1709 = !DILocation(line: 239, column: 63, scope: !1702)
!1710 = !DILocation(line: 239, column: 45, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1702, file: !1103, discriminator: 4)
!1712 = !DILocation(line: 239, column: 30, scope: !1702)
!1713 = !DILocation(line: 239, column: 18, scope: !1702)
!1714 = !DILocation(line: 239, column: 6, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1702, file: !1103, discriminator: 5)
!1716 = !DILocation(line: 239, column: 6, scope: !1702)
!1717 = !DILocation(line: 239, column: 5, scope: !1702)
!1718 = !DILocation(line: 239, column: 29, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1702, file: !1103, discriminator: 1)
!1720 = !DILocation(line: 239, column: 5, scope: !1719)
!1721 = !DILocation(line: 239, column: 5, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1702, file: !1103, discriminator: 2)
!1723 = !DILocation(line: 239, column: 5, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1702, file: !1103, discriminator: 3)
!1725 = !DILocation(line: 240, column: 5, scope: !1702)
!1726 = !DILocation(line: 240, column: 10, scope: !1702)
!1727 = !DILocation(line: 238, column: 6, scope: !1719)
!1728 = !DILocation(line: 241, column: 3, scope: !1702)
!1729 = !DILocation(line: 243, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1648, file: !1103, line: 243, column: 6)
!1731 = !DILocation(line: 243, column: 27, scope: !1730)
!1732 = !DILocation(line: 243, column: 33, scope: !1730)
!1733 = !DILocation(line: 244, column: 41, scope: !1730)
!1734 = !DILocation(line: 244, column: 23, scope: !1730)
!1735 = !DILocation(line: 244, column: 8, scope: !1730)
!1736 = !DILocation(line: 244, column: 19, scope: !1730)
!1737 = !DILocation(line: 244, column: 63, scope: !1730)
!1738 = !DILocation(line: 244, column: 45, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1730, file: !1103, discriminator: 4)
!1740 = !DILocation(line: 244, column: 30, scope: !1730)
!1741 = !DILocation(line: 244, column: 18, scope: !1730)
!1742 = !DILocation(line: 244, column: 6, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1730, file: !1103, discriminator: 5)
!1744 = !DILocation(line: 244, column: 6, scope: !1730)
!1745 = !DILocation(line: 244, column: 5, scope: !1730)
!1746 = !DILocation(line: 244, column: 29, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1730, file: !1103, discriminator: 1)
!1748 = !DILocation(line: 244, column: 5, scope: !1747)
!1749 = !DILocation(line: 244, column: 5, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1730, file: !1103, discriminator: 2)
!1751 = !DILocation(line: 244, column: 5, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1730, file: !1103, discriminator: 3)
!1753 = !DILocation(line: 245, column: 5, scope: !1730)
!1754 = !DILocation(line: 245, column: 10, scope: !1730)
!1755 = !DILocation(line: 245, column: 16, scope: !1730)
!1756 = !DILocation(line: 243, column: 6, scope: !1747)
!1757 = !DILocation(line: 246, column: 9, scope: !1730)
!1758 = !DILocation(line: 246, column: 3, scope: !1730)
!1759 = !DILocation(line: 248, column: 19, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1648, file: !1103, line: 248, column: 6)
!1761 = !DILocation(line: 248, column: 27, scope: !1760)
!1762 = !DILocation(line: 248, column: 33, scope: !1760)
!1763 = !DILocation(line: 249, column: 41, scope: !1760)
!1764 = !DILocation(line: 249, column: 23, scope: !1760)
!1765 = !DILocation(line: 249, column: 8, scope: !1760)
!1766 = !DILocation(line: 249, column: 19, scope: !1760)
!1767 = !DILocation(line: 249, column: 63, scope: !1760)
!1768 = !DILocation(line: 249, column: 45, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1760, file: !1103, discriminator: 4)
!1770 = !DILocation(line: 249, column: 30, scope: !1760)
!1771 = !DILocation(line: 249, column: 18, scope: !1760)
!1772 = !DILocation(line: 249, column: 6, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1760, file: !1103, discriminator: 5)
!1774 = !DILocation(line: 249, column: 6, scope: !1760)
!1775 = !DILocation(line: 249, column: 5, scope: !1760)
!1776 = !DILocation(line: 249, column: 29, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1760, file: !1103, discriminator: 1)
!1778 = !DILocation(line: 249, column: 5, scope: !1777)
!1779 = !DILocation(line: 249, column: 5, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1760, file: !1103, discriminator: 2)
!1781 = !DILocation(line: 249, column: 5, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1760, file: !1103, discriminator: 3)
!1783 = !DILocation(line: 250, column: 5, scope: !1760)
!1784 = !DILocation(line: 250, column: 10, scope: !1760)
!1785 = !DILocation(line: 250, column: 16, scope: !1760)
!1786 = !DILocation(line: 248, column: 6, scope: !1777)
!1787 = !DILocation(line: 251, column: 9, scope: !1760)
!1788 = !DILocation(line: 251, column: 3, scope: !1760)
!1789 = !DILocation(line: 253, column: 49, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1648, file: !1103, line: 253, column: 13)
!1791 = !DILocation(line: 253, column: 31, scope: !1790)
!1792 = !DILocation(line: 253, column: 16, scope: !1790)
!1793 = !DILocation(line: 253, column: 27, scope: !1790)
!1794 = !DILocation(line: 253, column: 71, scope: !1790)
!1795 = !DILocation(line: 253, column: 53, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1790, file: !1103, discriminator: 1)
!1797 = !DILocation(line: 253, column: 38, scope: !1790)
!1798 = !DILocation(line: 253, column: 26, scope: !1790)
!1799 = !DILocation(line: 253, column: 14, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1790, file: !1103, discriminator: 2)
!1801 = !DILocation(line: 253, column: 14, scope: !1790)
!1802 = !DILocation(line: 253, column: 13, scope: !1648)
!1803 = !DILocation(line: 255, column: 39, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1790, file: !1103, line: 253, column: 36)
!1805 = !DILocation(line: 255, column: 47, scope: !1804)
!1806 = !DILocation(line: 255, column: 55, scope: !1804)
!1807 = !DILocation(line: 255, column: 84, scope: !1804)
!1808 = !DILocation(line: 255, column: 90, scope: !1804)
!1809 = !DILocation(line: 255, column: 101, scope: !1804)
!1810 = !DILocation(line: 255, column: 3, scope: !1804)
!1811 = !DILocation(line: 257, column: 2, scope: !1804)
!1812 = !DILocation(line: 259, column: 55, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1790, file: !1103, line: 257, column: 9)
!1814 = !DILocation(line: 259, column: 37, scope: !1813)
!1815 = !DILocation(line: 259, column: 22, scope: !1813)
!1816 = !DILocation(line: 259, column: 34, scope: !1813)
!1817 = !DILocation(line: 259, column: 3, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1813, file: !1103, discriminator: 1)
!1819 = !DILocation(line: 261, column: 39, scope: !1813)
!1820 = !DILocation(line: 261, column: 47, scope: !1813)
!1821 = !DILocation(line: 261, column: 53, scope: !1813)
!1822 = !DILocation(line: 261, column: 83, scope: !1813)
!1823 = !DILocation(line: 261, column: 89, scope: !1813)
!1824 = !DILocation(line: 261, column: 98, scope: !1813)
!1825 = !DILocation(line: 261, column: 3, scope: !1813)
!1826 = !DILocation(line: 264, column: 1, scope: !1648)
!1827 = distinct !DISubprogram(name: "sig_message_own_ctcp", scope: !1103, file: !1103, line: 266, type: !1828, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !443, !844, !844, !844}
!1830 = !DILocalVariable(name: "server", arg: 1, scope: !1827, file: !1103, line: 266, type: !443)
!1831 = !DILocation(line: 266, column: 50, scope: !1827)
!1832 = !DILocalVariable(name: "cmd", arg: 2, scope: !1827, file: !1103, line: 266, type: !844)
!1833 = !DILocation(line: 266, column: 70, scope: !1827)
!1834 = !DILocalVariable(name: "data", arg: 3, scope: !1827, file: !1103, line: 267, type: !844)
!1835 = !DILocation(line: 267, column: 18, scope: !1827)
!1836 = !DILocalVariable(name: "target", arg: 4, scope: !1827, file: !1103, line: 267, type: !844)
!1837 = !DILocation(line: 267, column: 36, scope: !1827)
!1838 = !DILocation(line: 269, column: 38, scope: !1827)
!1839 = !DILocation(line: 269, column: 69, scope: !1827)
!1840 = !DILocation(line: 269, column: 77, scope: !1827)
!1841 = !DILocation(line: 269, column: 46, scope: !1827)
!1842 = !DILocation(line: 269, column: 158, scope: !1827)
!1843 = !DILocation(line: 269, column: 166, scope: !1827)
!1844 = !DILocation(line: 269, column: 171, scope: !1827)
!1845 = !DILocation(line: 269, column: 2, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1827, file: !1103, discriminator: 1)
!1847 = !DILocation(line: 272, column: 1, scope: !1827)
!1848 = distinct !DISubprogram(name: "sig_message_irc_ctcp", scope: !1103, file: !1103, line: 274, type: !1849, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !443, !844, !844, !844, !844, !844}
!1851 = !DILocalVariable(name: "server", arg: 1, scope: !1848, file: !1103, line: 274, type: !443)
!1852 = !DILocation(line: 274, column: 50, scope: !1848)
!1853 = !DILocalVariable(name: "cmd", arg: 2, scope: !1848, file: !1103, line: 274, type: !844)
!1854 = !DILocation(line: 274, column: 70, scope: !1848)
!1855 = !DILocalVariable(name: "data", arg: 3, scope: !1848, file: !1103, line: 275, type: !844)
!1856 = !DILocation(line: 275, column: 18, scope: !1848)
!1857 = !DILocalVariable(name: "nick", arg: 4, scope: !1848, file: !1103, line: 275, type: !844)
!1858 = !DILocation(line: 275, column: 36, scope: !1848)
!1859 = !DILocalVariable(name: "addr", arg: 5, scope: !1848, file: !1103, line: 276, type: !844)
!1860 = !DILocation(line: 276, column: 18, scope: !1848)
!1861 = !DILocalVariable(name: "target", arg: 6, scope: !1848, file: !1103, line: 276, type: !844)
!1862 = !DILocation(line: 276, column: 36, scope: !1848)
!1863 = !DILocalVariable(name: "oldtarget", scope: !1848, file: !1103, line: 278, type: !844)
!1864 = !DILocation(line: 278, column: 14, scope: !1848)
!1865 = !DILocation(line: 280, column: 14, scope: !1848)
!1866 = !DILocation(line: 280, column: 12, scope: !1848)
!1867 = !DILocation(line: 281, column: 34, scope: !1848)
!1868 = !DILocation(line: 281, column: 42, scope: !1848)
!1869 = !DILocation(line: 281, column: 11, scope: !1848)
!1870 = !DILocation(line: 281, column: 9, scope: !1848)
!1871 = !DILocation(line: 282, column: 38, scope: !1848)
!1872 = !DILocation(line: 282, column: 82, scope: !1848)
!1873 = !DILocation(line: 282, column: 64, scope: !1848)
!1874 = !DILocation(line: 282, column: 49, scope: !1848)
!1875 = !DILocation(line: 282, column: 16, scope: !1848)
!1876 = !DILocation(line: 282, column: 60, scope: !1848)
!1877 = !DILocation(line: 282, column: 42, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1848, file: !1103, discriminator: 4)
!1879 = !DILocation(line: 282, column: 27, scope: !1848)
!1880 = !DILocation(line: 282, column: 15, scope: !1848)
!1881 = !DILocation(line: 282, column: 47, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1848, file: !1103, discriminator: 5)
!1883 = !DILocation(line: 282, column: 47, scope: !1848)
!1884 = !DILocation(line: 282, column: 46, scope: !1848)
!1885 = !DILocation(line: 282, column: 26, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1848, file: !1103, discriminator: 1)
!1887 = !DILocation(line: 282, column: 46, scope: !1886)
!1888 = !DILocation(line: 282, column: 35, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1848, file: !1103, discriminator: 2)
!1890 = !DILocation(line: 282, column: 46, scope: !1889)
!1891 = !DILocation(line: 282, column: 46, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1848, file: !1103, discriminator: 3)
!1893 = !DILocation(line: 282, column: 80, scope: !1892)
!1894 = !DILocation(line: 282, column: 86, scope: !1892)
!1895 = !DILocation(line: 282, column: 92, scope: !1892)
!1896 = !DILocation(line: 282, column: 97, scope: !1892)
!1897 = !DILocation(line: 282, column: 103, scope: !1892)
!1898 = !DILocation(line: 282, column: 2, scope: !1892)
!1899 = !DILocation(line: 284, column: 1, scope: !1848)
!1900 = distinct !DISubprogram(name: "fe_irc_messages_deinit", scope: !1103, file: !1103, line: 299, type: !606, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1104)
!1901 = !DILocation(line: 301, column: 9, scope: !1900)
!1902 = !DILocation(line: 302, column: 9, scope: !1900)
!1903 = !DILocation(line: 303, column: 9, scope: !1900)
!1904 = !DILocation(line: 304, column: 9, scope: !1900)
!1905 = !DILocation(line: 305, column: 9, scope: !1900)
!1906 = !DILocation(line: 306, column: 9, scope: !1900)
!1907 = !DILocation(line: 307, column: 9, scope: !1900)
!1908 = !DILocation(line: 308, column: 9, scope: !1900)
!1909 = !DILocation(line: 309, column: 9, scope: !1900)
!1910 = !DILocation(line: 310, column: 1, scope: !1900)
