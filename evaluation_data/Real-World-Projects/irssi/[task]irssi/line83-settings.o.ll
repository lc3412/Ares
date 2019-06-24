; ModuleID = './line83-settings.o.i'
source_filename = "./line83-settings.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.SETTINGS_REC = type { i32, i8*, i8*, i8*, i32, %struct.SettingValue, i8** }
%struct.SettingValue = type { i8*, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [11675 x i8] c"servers = (\0A  { address = \22irc.dal.net\22;       chatnet = \22DALnet\22;    port = \226667\22; },\0A  { address = \22ssl.efnet.org\22;     chatnet = \22EFNet\22;     port = \229999\22; use_tls = \22yes\22; },\0A  { address = \22irc.esper.net\22;     chatnet = \22EsperNet\22;  port = \226697\22; use_tls = \22yes\22; tls_verify = \22yes\22; },\0A  { address = \22chat.freenode.net\22; chatnet = \22Freenode\22;  port = \226697\22; use_tls = \22yes\22; tls_verify = \22yes\22; },\0A  { address = \22irc.gamesurge.net\22; chatnet = \22GameSurge\22; port = \226667\22; },\0A  { address = \22eu.irc6.net\22;       chatnet = \22IRCnet\22;    port = \226667\22; use_tls = \22yes\22; },\0A  { address = \22open.ircnet.net\22;   chatnet = \22IRCnet\22;    port = \226667\22; },\0A  { address = \22irc.ircsource.net\22; chatnet = \22IRCSource\22; port = \226667\22; },\0A  { address = \22irc.netfuze.net\22;   chatnet = \22NetFuze\22;   port = \226667\22; },\0A  { address = \22irc.oftc.net\22;      chatnet = \22OFTC\22;      port = \226697\22; use_tls = \22yes\22; tls_verify = \22yes\22; },\0A  { address = \22irc.quakenet.org\22;  chatnet = \22QuakeNet\22;  port = \226667\22; },\0A  { address = \22irc.rizon.net\22;     chatnet = \22Rizon\22;     port = \226697\22; use_tls = \22yes\22; tls_verify = \22yes\22; },\0A  { address = \22silc.silcnet.org\22;  chatnet = \22SILC\22;      port = \22706\22;  },\0A  { address = \22irc.undernet.org\22;  chatnet = \22Undernet\22;  port = \226667\22; }\0A);\0A\0Achatnets = {\0A  DALnet = {\0A    type      = \22IRC\22;\0A    max_kicks = \224\22;\0A    max_msgs  = \2220\22;\0A    max_whois = \2230\22;\0A  }; \0A  EFNet = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \224\22;\0A    max_whois = \221\22;\0A  };\0A  EsperNet = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \224\22;\0A    max_whois = \221\22;\0A  };\0A  Freenode = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \224\22;\0A    max_whois = \221\22;\0A  };\0A  GameSurge = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  IRCnet = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  IRCSource = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \224\22;\0A    max_whois = \221\22;\0A  };\0A  NetFuze = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  OFTC = {   \0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  QuakeNet = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  Rizon = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A  SILC = {\0A    type = \22SILC\22;\0A  };\0A  Undernet = {\0A    type      = \22IRC\22;\0A    max_kicks = \221\22;\0A    max_msgs  = \221\22;\0A    max_whois = \221\22;\0A  };\0A};\0A\0Achannels = (\0A  { name = \22#lobby\22;     chatnet = \22EsperNet\22;  autojoin = \22No\22; },\0A  { name = \22#freenode\22;  chatnet = \22Freenode\22;  autojoin = \22No\22; },\0A  { name = \22#irssi\22;     chatnet = \22Freenode\22;  autojoin = \22No\22; },\0A  { name = \22#gamesurge\22; chatnet = \22GameSurge\22; autojoin = \22No\22; },\0A  { name = \22#irssi\22;     chatnet = \22IRCNet\22;    autojoin = \22No\22; },\0A  { name = \22#ircsource\22; chatnet = \22IRCSource\22; autojoin = \22No\22; },\0A  { name = \22#netfuze\22;   chatnet = \22NetFuze\22;   autojoin = \22No\22; },\0A  { name = \22#oftc\22;      chatnet = \22OFTC\22;      autojoin = \22No\22; },\0A  { name = \22silc\22;       chatnet = \22SILC\22;      autojoin = \22No\22; }\0A);\0A\0Aaliases = {\0A  ATAG        = \22WINDOW SERVER\22;\0A  ADDALLCHANS = \22SCRIPT EXEC foreach my \5C\5C$channel (Irssi::channels()) { Irssi::command(\5C\22CHANNEL ADD -auto \5C\5C$channel->{name} \5C\5C$channel->{server}->{tag} \5C\5C$channel->{key}\5C\22)\5C\5C;}\22;\0A  B           = \22BAN\22;\0A  BACK        = \22AWAY\22;\0A  BANS        = \22BAN\22;\0A  BYE         = \22QUIT\22;\0A  C           = \22CLEAR\22;\0A  CALC        = \22EXEC - if command -v bc >/dev/null 2>&1\5C\5C; then printf '%s=' '$*'\5C\5C; echo '$*' | bc -l\5C\5C; else echo bc was not found\5C\5C; fi\22;\0A  CHAT        = \22DCC CHAT\22;\0A  CUBES       = \22SCRIPT EXEC Irssi::active_win->print(\5C\22%_bases\5C\22, MSGLEVEL_CLIENTCRAP) \5C\5C; Irssi::active_win->print( do { join '', map { \5C\22%x0\5C\5C${_}0\5C\5C$_\5C\22 } '0'..'9','A'..'F' }, MSGLEVEL_NEVER | MSGLEVEL_CLIENTCRAP) \5C\5C; Irssi::active_win->print(\5C\22%_cubes\5C\22, MSGLEVEL_CLIENTCRAP) \5C\5C; Irssi::active_win->print( do { my \5C\5C$y = \5C\5C$_*6 \5C\5C; join '', map { my \5C\5C$x = \5C\5C$_ \5C\5C; map { \5C\22%x\5C\5C$x\5C\5C$_\5C\5C$x\5C\5C$_\5C\22 } @{['0'..'9','A'..'Z']}[\5C\5C$y .. \5C\5C$y+5] } 1..6 }, MSGLEVEL_NEVER | MSGLEVEL_CLIENTCRAP) for 0..5 \5C\5C; Irssi::active_win->print(\5C\22%_grays\5C\22, MSGLEVEL_CLIENTCRAP) \5C\5C; Irssi::active_win->print( do { join '', map { \5C\22%x7\5C\5C${_}7\5C\5C$_\5C\22 } 'A'..'X' }, MSGLEVEL_NEVER | MSGLEVEL_CLIENTCRAP) \5C\5C; Irssi::active_win->print(\5C\22%_mIRC extended colours\5C\22, MSGLEVEL_CLIENTCRAP) \5C\5C; my \5C\5C$x \5C\5C; \5C\5C$x .= sprintf \5C\22\5C00399,%02d%02d\5C\22,\5C\5C$_,\5C\5C$_ for 0..15 \5C\5C; Irssi::active_win->print(\5C\5C$x, MSGLEVEL_NEVER | MSGLEVEL_CLIENTCRAP) \5C\5C; for my \5C\5C$z (0..6) { my \5C\5C$x \5C\5C; \5C\5C$x .= sprintf \5C\22\5C00399,%02d%02d\5C\22,\5C\5C$_,\5C\5C$_ for 16+(\5C\5C$z*12)..16+(\5C\5C$z*12)+11 \5C\5C; Irssi::active_win->print(\5C\5C$x, MSGLEVEL_NEVER | MSGLEVEL_CLIENTCRAP) }\22;\0A  DATE        = \22TIME\22;\0A  DEHIGHLIGHT = \22DEHILIGHT\22;\0A  DESCRIBE    = \22ACTION\22;\0A  DHL         = \22DEHILIGHT\22;\0A  EXEMPTLIST  = \22MODE $C +e\22;\0A  EXIT        = \22QUIT\22;\0A  GOTO        = \22SCROLLBACK GOTO\22;\0A  HIGHLIGHT   = \22HILIGHT\22;\0A  HL          = \22HILIGHT\22;\0A  HOST        = \22USERHOST\22;\0A  INVITELIST  = \22MODE $C +I\22;\0A  J           = \22JOIN\22;\0A  K           = \22KICK\22;\0A  KB          = \22KICKBAN\22;\0A  KN          = \22KNOCKOUT\22;\0A  LAST        = \22LASTLOG\22;\0A  LEAVE       = \22PART\22;\0A  M           = \22MSG\22;\0A  MUB         = \22UNBAN *\22;\0A  N           = \22NAMES\22;\0A  NMSG        = \22^MSG\22;\0A  P           = \22PART\22;\0A  Q           = \22QUERY\22;\0A  RESET       = \22SET -default\22;\0A  RUN         = \22SCRIPT LOAD\22;\0A  SAY         = \22MSG *\22;\0A  SB          = \22SCROLLBACK\22;\0A  SBAR        = \22STATUSBAR\22;\0A  SIGNOFF     = \22QUIT\22;\0A  SV          = \22MSG * Irssi $J ($V) - https://irssi.org\22;\0A  T           = \22TOPIC\22; \0A  UB          = \22UNBAN\22;\0A  UMODE       = \22MODE $N\22;\0A  UNSET       = \22SET -clear\22;\0A  W           = \22WHO\22;\0A  WC          = \22WINDOW CLOSE\22;\0A  WG          = \22WINDOW GOTO\22;\0A  WJOIN       = \22JOIN -window\22;\0A  WI          = \22WHOIS\22;\0A  WII         = \22WHOIS $0 $0\22;\0A  WL          = \22WINDOW LIST\22;\0A  WN          = \22WINDOW NEW HIDDEN\22;\0A  WQUERY      = \22QUERY -window\22;\0A  WW          = \22WHOWAS\22;\0A  1           = \22WINDOW GOTO 1\22;\0A  2           = \22WINDOW GOTO 2\22;\0A  3           = \22WINDOW GOTO 3\22;\0A  4           = \22WINDOW GOTO 4\22;\0A  5           = \22WINDOW GOTO 5\22;\0A  6           = \22WINDOW GOTO 6\22;\0A  7           = \22WINDOW GOTO 7\22;\0A  8           = \22WINDOW GOTO 8\22;\0A  9           = \22WINDOW GOTO 9\22;\0A  10          = \22WINDOW GOTO 10\22;\0A  11          = \22WINDOW GOTO 11\22;\0A  12          = \22WINDOW GOTO 12\22;\0A  13          = \22WINDOW GOTO 13\22;\0A  14          = \22WINDOW GOTO 14\22;\0A  15          = \22WINDOW GOTO 15\22;\0A  16          = \22WINDOW GOTO 16\22;\0A  17          = \22WINDOW GOTO 17\22;\0A  18          = \22WINDOW GOTO 18\22;\0A  19          = \22WINDOW GOTO 19\22;\0A  20          = \22WINDOW GOTO 20\22;\0A  21          = \22WINDOW GOTO 21\22;\0A  22          = \22WINDOW GOTO 22\22;\0A  23          = \22WINDOW GOTO 23\22;\0A  24          = \22WINDOW GOTO 24\22;\0A  25          = \22WINDOW GOTO 25\22;\0A  26          = \22WINDOW GOTO 26\22;\0A  27          = \22WINDOW GOTO 27\22;\0A  28          = \22WINDOW GOTO 28\22;\0A  29          = \22WINDOW GOTO 29\22;\0A  30          = \22WINDOW GOTO 30\22;\0A  31          = \22WINDOW GOTO 31\22;\0A  32          = \22WINDOW GOTO 32\22;\0A  33          = \22WINDOW GOTO 33\22;\0A  34          = \22WINDOW GOTO 34\22;\0A  35          = \22WINDOW GOTO 35\22;\0A  36          = \22WINDOW GOTO 36\22;\0A  37          = \22WINDOW GOTO 37\22;\0A  38          = \22WINDOW GOTO 38\22;\0A  39          = \22WINDOW GOTO 39\22;\0A  40          = \22WINDOW GOTO 40\22;\0A  41          = \22WINDOW GOTO 41\22;\0A  42          = \22WINDOW GOTO 42\22;\0A  43          = \22WINDOW GOTO 43\22;\0A  44          = \22WINDOW GOTO 44\22;\0A  45          = \22WINDOW GOTO 45\22;\0A  46          = \22WINDOW GOTO 46\22;\0A  47          = \22WINDOW GOTO 47\22;\0A  48          = \22WINDOW GOTO 48\22;\0A  49          = \22WINDOW GOTO 49\22;\0A  50          = \22WINDOW GOTO 50\22;\0A  51          = \22WINDOW GOTO 51\22;\0A  52          = \22WINDOW GOTO 52\22;\0A  53          = \22WINDOW GOTO 53\22;\0A  54          = \22WINDOW GOTO 54\22;\0A  55          = \22WINDOW GOTO 55\22;\0A  56          = \22WINDOW GOTO 56\22;\0A  57          = \22WINDOW GOTO 57\22;\0A  58          = \22WINDOW GOTO 58\22;\0A  59          = \22WINDOW GOTO 59\22;\0A  60          = \22WINDOW GOTO 60\22;\0A  61          = \22WINDOW GOTO 61\22;\0A  62          = \22WINDOW GOTO 62\22;\0A  63          = \22WINDOW GOTO 63\22;\0A  64          = \22WINDOW GOTO 64\22;\0A  65          = \22WINDOW GOTO 65\22;\0A  66          = \22WINDOW GOTO 66\22;\0A  67          = \22WINDOW GOTO 67\22;\0A  68          = \22WINDOW GOTO 68\22;\0A  69          = \22WINDOW GOTO 69\22;\0A  70          = \22WINDOW GOTO 70\22;\0A  71          = \22WINDOW GOTO 71\22;\0A  72          = \22WINDOW GOTO 72\22;\0A  73          = \22WINDOW GOTO 73\22;\0A  74          = \22WINDOW GOTO 74\22;\0A  75          = \22WINDOW GOTO 75\22;\0A  76          = \22WINDOW GOTO 76\22;\0A  77          = \22WINDOW GOTO 77\22;\0A  78          = \22WINDOW GOTO 78\22;\0A  79          = \22WINDOW GOTO 79\22;\0A  80          = \22WINDOW GOTO 80\22;\0A  81          = \22WINDOW GOTO 81\22;\0A  82          = \22WINDOW GOTO 82\22;\0A  83          = \22WINDOW GOTO 83\22;\0A  84          = \22WINDOW GOTO 84\22;\0A  85          = \22WINDOW GOTO 85\22;\0A  86          = \22WINDOW GOTO 86\22;\0A  87          = \22WINDOW GOTO 87\22;\0A  88          = \22WINDOW GOTO 88\22;\0A  89          = \22WINDOW GOTO 89\22;\0A  90          = \22WINDOW GOTO 90\22;\0A  91          = \22WINDOW GOTO 91\22;\0A  92          = \22WINDOW GOTO 92\22;\0A  93          = \22WINDOW GOTO 93\22;\0A  94          = \22WINDOW GOTO 94\22;\0A  95          = \22WINDOW GOTO 95\22;\0A  96          = \22WINDOW GOTO 96\22;\0A  97          = \22WINDOW GOTO 97\22;\0A  98          = \22WINDOW GOTO 98\22;\0A  99          = \22WINDOW GOTO 99\22;\0A};\0A\0Astatusbar = {\0A\0A  items = {\0A    \0A    barstart = \22{sbstart}\22;\0A    barend   = \22{sbend}\22;\0A\0A    topicbarstart = \22{topicsbstart}\22;\0A    topicbarend   = \22{topicsbend}\22;\0A\0A    time = \22{sb $Z}\22;\0A    user = \22{sb {sbnickmode $cumode}$N{sbmode $usermode}{sbaway $A}}\22;\0A\0A    window       = \22{sb $winref:$tag/$itemname{sbmode $M}}\22;\0A    window_empty = \22{sb $winref{sbservertag $tag}}\22;\0A    \0A    prompt       = \22{prompt $[.15]itemname}\22;\0A    prompt_empty = \22{prompt $winname}\22;\0A    \0A    topic       = \22 $topic\22;\0A    topic_empty = \22 Irssi v$J - https://irssi.org\22;\0A\0A    lag  = \22{sb Lag: $0-}\22;\0A    act  = \22{sb Act: $0-}\22;\0A    more = \22-- more --\22;\0A  };\0A\0A  default = {\0A\0A    window = {\0A\0A      disabled  = \22no\22;\0A      type      = \22window\22;\0A      placement = \22bottom\22;\0A      position  = \221\22;\0A      visible   = \22active\22;\0A\0A      items = {\0A        barstart     = { priority = \22100\22; };\0A        time         = { };\0A        user         = { };\0A        window       = { };\0A        window_empty = { };\0A        lag          = { priority = \22-1\22; };\0A        act          = { priority = \2210\22; };\0A        more         = { priority = \22-1\22;  alignment = \22right\22; };\0A        barend       = { priority = \22100\22; alignment = \22right\22; };\0A      };\0A    };\0A\0A    window_inact = {\0A\0A      type      = \22window\22;\0A      placement = \22bottom\22;\0A      position  = \221\22;\0A      visible   = \22inactive\22;\0A\0A      items = {\0A        barstart     = { priority = \22100\22; };\0A        window       = { };\0A        window_empty = { };\0A        more         = { priority = \22-1\22;  alignment = \22right\22; };\0A        barend       = { priority = \22100\22; alignment = \22right\22; };\0A      };\0A    };\0A\0A    prompt = {\0A    \0A      type      = \22root\22;\0A      placement = \22bottom\22;\0A      position  = \22100\22;\0A      visible   = \22always\22;\0A\0A      items = {\0A        prompt       = { priority = \22-1\22; };\0A        prompt_empty = { priority = \22-1\22; };\0A        input        = { priority = \2210\22; };\0A      };\0A    };\0A\0A    topic = {\0A\0A      type      = \22root\22;\0A      placement = \22top\22;\0A      position  = \221\22;\0A      visible   = \22always\22;\0A\0A      items = {\0A        topicbarstart = { priority = \22100\22; };\0A        topic         = { };\0A        topic_empty   = { };\0A        topicbarend   = { priority = \22100\22; alignment = \22right\22; };\0A      };\0A    };\0A  };\0A};\0A\00", align 1
@default_config = global i8* getelementptr inbounds ([11675 x i8], [11675 x i8]* @.str, i32 0, i32 0), align 8
@mainconfig = common global %struct._CONFIG_REC* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"settings_get_time(%s) : Invalid time '%s'\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"settings_get_size(%s) : Invalid size '%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.settings_remove = private unnamed_addr constant [16 x i8] c"settings_remove\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@settings = internal global %struct._GHashTable* null, align 8
@__func__.settings_get_type = private unnamed_addr constant [18 x i8] c"settings_get_type\00", align 1
@__func__.settings_get_record = private unnamed_addr constant [20 x i8] c"settings_get_record\00", align 1
@last_invalid_modules = internal global %struct._GSList* null, align 8
@__func__.settings_check_module = private unnamed_addr constant [22 x i8] c"settings_check_module\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Unknown settings in configuration file for module %s:\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@fe_initialized = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"settings errors\00", align 1
@last_errors = internal global %struct._GString* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"command quit\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@config_last_mtime = internal global i64 0, align 8
@config_last_size = internal global i64 0, align 8
@config_last_checksum = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"gui dialog\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Errors in configuration file:\0A%s\00", align 1
@config_last_modifycounter = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Couldn't save configuration file: %s\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"setup saved\00", align 1
@config_changed = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"settings_autosave\00", align 1
@timeout_tag = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"irssi init userinfo changed\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"gui exit\00", align 1
@__func__.settings_get = private unnamed_addr constant [13 x i8] c"settings_get\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"settings_get(%s) : not found\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"settings_get(%s) : invalid type\00", align 1
@__func__.settings_add = private unnamed_addr constant [13 x i8] c"settings_add\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"section != NULL\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Trying to add setting '%s' with no choices.\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"Trying to add setting '%s' with an invalid default value.\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"Trying to add already existing setting '%s' with different type.\00", align 1
@__func__.settings_get_node = private unnamed_addr constant [18 x i8] c"settings_get_node\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Changing unknown setting '%s'\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"term_type\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"term_charset\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"actlist_moves\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"actlist_sort\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"recent\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"/usr/local/etc/irssi.conf\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Error opening configuration file %s: %s\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@__func__.irssi_config_save_state = private unnamed_addr constant [24 x i8] c"irssi_config_save_state\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"Couldn't create %s directory: %s\00", align 1
@.str.48 = private unnamed_addr constant [64 x i8] c"%s is not a directory.\0AYou should remove it with command: rm %s\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"Ignored errors in configuration file:\0A%s\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c".autosave\00", align 1
@.str.51 = private unnamed_addr constant [149 x i8] c"Configuration file was modified while irssi was running. Saving configuration to file '%s' instead. Use /SAVE or /RELOAD to get rid of this message.\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.53 = private unnamed_addr constant [55 x i8] c"Some settings were automatically updated, please /SAVE\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"settings userinfo changed\00", align 1
@user_settings_changed = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @settings_get_str(i8*) #0 !dbg !472 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !476, metadata !477), !dbg !478
  %3 = load i8*, i8** %2, align 8, !dbg !479
  %4 = call i8* @settings_get_str_type(i8* %3, i32 7), !dbg !480
  ret i8* %4, !dbg !481
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i8* @settings_get_str_type(i8*, i32) #0 !dbg !482 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SETTINGS_REC*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !485, metadata !477), !dbg !486
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !487, metadata !477), !dbg !488
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !489, metadata !477), !dbg !490
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !491, metadata !477), !dbg !492
  %8 = load i8*, i8** %4, align 8, !dbg !493
  %9 = load i32, i32* %5, align 4, !dbg !494
  %10 = call %struct.SETTINGS_REC* @settings_get(i8* %8, i32 %9), !dbg !495
  store %struct.SETTINGS_REC* %10, %struct.SETTINGS_REC** %6, align 8, !dbg !496
  %11 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !497
  %12 = icmp eq %struct.SETTINGS_REC* %11, null, !dbg !499
  br i1 %12, label %13, label %14, !dbg !500

; <label>:13:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !501
  br label %46, !dbg !501

; <label>:14:                                     ; preds = %2
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !503
  %16 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !504
  store %struct._CONFIG_NODE* %16, %struct._CONFIG_NODE** %7, align 8, !dbg !505
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !506
  %18 = icmp eq %struct._CONFIG_NODE* %17, null, !dbg !507
  br i1 %18, label %19, label %20, !dbg !506

; <label>:19:                                     ; preds = %14
  br label %27, !dbg !508

; <label>:20:                                     ; preds = %14
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !510
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !512
  %23 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !513
  %24 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %23, i32 0, i32 1, !dbg !514
  %25 = load i8*, i8** %24, align 8, !dbg !514
  %26 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %21, %struct._CONFIG_NODE* %22, i8* %25, i32 -1), !dbg !515
  br label %27, !dbg !516

; <label>:27:                                     ; preds = %20, %19
  %28 = phi %struct._CONFIG_NODE* [ null, %19 ], [ %26, %20 ], !dbg !517
  store %struct._CONFIG_NODE* %28, %struct._CONFIG_NODE** %7, align 8, !dbg !519
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !520
  %30 = icmp eq %struct._CONFIG_NODE* %29, null, !dbg !521
  br i1 %30, label %31, label %36, !dbg !520

; <label>:31:                                     ; preds = %27
  %32 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !522
  %33 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %32, i32 0, i32 5, !dbg !523
  %34 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %33, i32 0, i32 0, !dbg !524
  %35 = load i8*, i8** %34, align 8, !dbg !524
  br label %44, !dbg !525

; <label>:36:                                     ; preds = %27
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !526
  %38 = load i8*, i8** %4, align 8, !dbg !527
  %39 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !528
  %40 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %39, i32 0, i32 5, !dbg !529
  %41 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %40, i32 0, i32 0, !dbg !530
  %42 = load i8*, i8** %41, align 8, !dbg !530
  %43 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %37, i8* %38, i8* %42), !dbg !531
  br label %44, !dbg !532

; <label>:44:                                     ; preds = %36, %31
  %45 = phi i8* [ %35, %31 ], [ %43, %36 ], !dbg !533
  store i8* %45, i8** %3, align 8, !dbg !534
  br label %46, !dbg !534

; <label>:46:                                     ; preds = %44, %13
  %47 = load i8*, i8** %3, align 8, !dbg !535
  ret i8* %47, !dbg !535
}

; Function Attrs: nounwind uwtable
define i32 @settings_get_int(i8*) #0 !dbg !536 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !539, metadata !477), !dbg !540
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !541, metadata !477), !dbg !542
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !543, metadata !477), !dbg !544
  %6 = load i8*, i8** %3, align 8, !dbg !545
  %7 = call %struct.SETTINGS_REC* @settings_get(i8* %6, i32 1), !dbg !546
  store %struct.SETTINGS_REC* %7, %struct.SETTINGS_REC** %4, align 8, !dbg !547
  %8 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !548
  %9 = icmp eq %struct.SETTINGS_REC* %8, null, !dbg !550
  br i1 %9, label %10, label %11, !dbg !551

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !552
  br label %43, !dbg !552

; <label>:11:                                     ; preds = %1
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !554
  %13 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !555
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %5, align 8, !dbg !556
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !557
  %15 = icmp eq %struct._CONFIG_NODE* %14, null, !dbg !558
  br i1 %15, label %16, label %17, !dbg !557

; <label>:16:                                     ; preds = %11
  br label %24, !dbg !559

; <label>:17:                                     ; preds = %11
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !561
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !563
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !564
  %21 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %20, i32 0, i32 1, !dbg !565
  %22 = load i8*, i8** %21, align 8, !dbg !565
  %23 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %18, %struct._CONFIG_NODE* %19, i8* %22, i32 -1), !dbg !566
  br label %24, !dbg !567

; <label>:24:                                     ; preds = %17, %16
  %25 = phi %struct._CONFIG_NODE* [ null, %16 ], [ %23, %17 ], !dbg !568
  store %struct._CONFIG_NODE* %25, %struct._CONFIG_NODE** %5, align 8, !dbg !570
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !571
  %27 = icmp eq %struct._CONFIG_NODE* %26, null, !dbg !572
  br i1 %27, label %28, label %33, !dbg !571

; <label>:28:                                     ; preds = %24
  %29 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !573
  %30 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %29, i32 0, i32 5, !dbg !574
  %31 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %30, i32 0, i32 1, !dbg !575
  %32 = load i32, i32* %31, align 8, !dbg !575
  br label %41, !dbg !576

; <label>:33:                                     ; preds = %24
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !577
  %35 = load i8*, i8** %3, align 8, !dbg !578
  %36 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !579
  %37 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %36, i32 0, i32 5, !dbg !580
  %38 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %37, i32 0, i32 1, !dbg !581
  %39 = load i32, i32* %38, align 8, !dbg !581
  %40 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %34, i8* %35, i32 %39), !dbg !582
  br label %41, !dbg !583

; <label>:41:                                     ; preds = %33, %28
  %42 = phi i32 [ %32, %28 ], [ %40, %33 ], !dbg !584
  store i32 %42, i32* %2, align 4, !dbg !585
  br label %43, !dbg !585

; <label>:43:                                     ; preds = %41, %10
  %44 = load i32, i32* %2, align 4, !dbg !586
  ret i32 %44, !dbg !586
}

; Function Attrs: nounwind uwtable
define internal %struct.SETTINGS_REC* @settings_get(i8*, i32) #0 !dbg !587 {
  %3 = alloca %struct.SETTINGS_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !590, metadata !477), !dbg !591
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !592, metadata !477), !dbg !593
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !594, metadata !477), !dbg !595
  br label %7, !dbg !596, !llvm.loop !597

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !598
  %9 = icmp ne i8* %8, null, !dbg !602
  br i1 %9, label %10, label %11, !dbg !598

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !603

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.settings_get, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !606
  store %struct.SETTINGS_REC* null, %struct.SETTINGS_REC** %3, align 8, !dbg !609
  br label %35, !dbg !609

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !610

; <label>:13:                                     ; preds = %12
  %14 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !612
  %15 = load i8*, i8** %4, align 8, !dbg !613
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %14, i8* %15), !dbg !614
  %17 = bitcast i8* %16 to %struct.SETTINGS_REC*, !dbg !614
  store %struct.SETTINGS_REC* %17, %struct.SETTINGS_REC** %6, align 8, !dbg !615
  %18 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !616
  %19 = icmp eq %struct.SETTINGS_REC* %18, null, !dbg !618
  br i1 %19, label %20, label %22, !dbg !619

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %4, align 8, !dbg !620
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i8* %21), !dbg !622
  store %struct.SETTINGS_REC* null, %struct.SETTINGS_REC** %3, align 8, !dbg !623
  br label %35, !dbg !623

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %5, align 4, !dbg !624
  %24 = icmp ne i32 %23, 7, !dbg !626
  br i1 %24, label %25, label %33, !dbg !627

; <label>:25:                                     ; preds = %22
  %26 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !628
  %27 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %26, i32 0, i32 4, !dbg !630
  %28 = load i32, i32* %27, align 8, !dbg !630
  %29 = load i32, i32* %5, align 4, !dbg !631
  %30 = icmp ne i32 %28, %29, !dbg !632
  br i1 %30, label %31, label %33, !dbg !633

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %4, align 8, !dbg !634
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i8* %32), !dbg !636
  store %struct.SETTINGS_REC* null, %struct.SETTINGS_REC** %3, align 8, !dbg !637
  br label %35, !dbg !637

; <label>:33:                                     ; preds = %25, %22
  %34 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !638
  store %struct.SETTINGS_REC* %34, %struct.SETTINGS_REC** %3, align 8, !dbg !639
  br label %35, !dbg !639

; <label>:35:                                     ; preds = %33, %31, %20, %11
  %36 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !640
  ret %struct.SETTINGS_REC* %36, !dbg !640
}

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @settings_get_bool(i8*) #0 !dbg !641 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !642, metadata !477), !dbg !643
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !644, metadata !477), !dbg !645
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !646, metadata !477), !dbg !647
  %6 = load i8*, i8** %3, align 8, !dbg !648
  %7 = call %struct.SETTINGS_REC* @settings_get(i8* %6, i32 2), !dbg !649
  store %struct.SETTINGS_REC* %7, %struct.SETTINGS_REC** %4, align 8, !dbg !650
  %8 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !651
  %9 = icmp eq %struct.SETTINGS_REC* %8, null, !dbg !653
  br i1 %9, label %10, label %11, !dbg !654

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !655
  br label %47, !dbg !655

; <label>:11:                                     ; preds = %1
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !657
  %13 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !658
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %5, align 8, !dbg !659
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !660
  %15 = icmp eq %struct._CONFIG_NODE* %14, null, !dbg !661
  br i1 %15, label %16, label %17, !dbg !660

; <label>:16:                                     ; preds = %11
  br label %24, !dbg !662

; <label>:17:                                     ; preds = %11
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !664
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !666
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !667
  %21 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %20, i32 0, i32 1, !dbg !668
  %22 = load i8*, i8** %21, align 8, !dbg !668
  %23 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %18, %struct._CONFIG_NODE* %19, i8* %22, i32 -1), !dbg !669
  br label %24, !dbg !670

; <label>:24:                                     ; preds = %17, %16
  %25 = phi %struct._CONFIG_NODE* [ null, %16 ], [ %23, %17 ], !dbg !671
  store %struct._CONFIG_NODE* %25, %struct._CONFIG_NODE** %5, align 8, !dbg !673
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !674
  %27 = icmp eq %struct._CONFIG_NODE* %26, null, !dbg !675
  br i1 %27, label %28, label %35, !dbg !674

; <label>:28:                                     ; preds = %24
  %29 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !676
  %30 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %29, i32 0, i32 5, !dbg !677
  %31 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %30, i32 0, i32 2, !dbg !678
  %32 = load i8, i8* %31, align 4, !dbg !678
  %33 = and i8 %32, 1, !dbg !678
  %34 = zext i8 %33 to i32, !dbg !678
  br label %45, !dbg !679

; <label>:35:                                     ; preds = %24
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !680
  %37 = load i8*, i8** %3, align 8, !dbg !681
  %38 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !682
  %39 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %38, i32 0, i32 5, !dbg !683
  %40 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %39, i32 0, i32 2, !dbg !684
  %41 = load i8, i8* %40, align 4, !dbg !684
  %42 = and i8 %41, 1, !dbg !684
  %43 = zext i8 %42 to i32, !dbg !684
  %44 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %36, i8* %37, i32 %43), !dbg !685
  br label %45, !dbg !686

; <label>:45:                                     ; preds = %35, %28
  %46 = phi i32 [ %34, %28 ], [ %44, %35 ], !dbg !687
  store i32 %46, i32* %2, align 4, !dbg !688
  br label %47, !dbg !688

; <label>:47:                                     ; preds = %45, %10
  %48 = load i32, i32* %2, align 4, !dbg !689
  ret i32 %48, !dbg !689
}

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @settings_get_time(i8*) #0 !dbg !690 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !691, metadata !477), !dbg !692
  call void @llvm.dbg.declare(metadata i8** %3, metadata !693, metadata !477), !dbg !694
  call void @llvm.dbg.declare(metadata i32* %4, metadata !695, metadata !477), !dbg !696
  store i32 0, i32* %4, align 4, !dbg !696
  %5 = load i8*, i8** %2, align 8, !dbg !697
  %6 = call i8* @settings_get_str_type(i8* %5, i32 3), !dbg !698
  store i8* %6, i8** %3, align 8, !dbg !699
  %7 = load i8*, i8** %3, align 8, !dbg !700
  %8 = icmp ne i8* %7, null, !dbg !702
  br i1 %8, label %9, label %16, !dbg !703

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !704
  %11 = call i32 @parse_time_interval(i8* %10, i32* %4), !dbg !706
  %12 = icmp ne i32 %11, 0, !dbg !706
  br i1 %12, label %16, label %13, !dbg !707

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %2, align 8, !dbg !708
  %15 = load i8*, i8** %3, align 8, !dbg !709
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* %14, i8* %15), !dbg !710
  br label %16, !dbg !710

; <label>:16:                                     ; preds = %13, %9, %1
  %17 = load i8*, i8** %3, align 8, !dbg !711
  %18 = icmp eq i8* %17, null, !dbg !712
  br i1 %18, label %19, label %20, !dbg !711

; <label>:19:                                     ; preds = %16
  br label %22, !dbg !713

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !715
  br label %22, !dbg !717

; <label>:22:                                     ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ], !dbg !718
  ret i32 %23, !dbg !720
}

declare i32 @parse_time_interval(i8*, i32*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @settings_get_level(i8*) #0 !dbg !721 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !722, metadata !477), !dbg !723
  call void @llvm.dbg.declare(metadata i8** %3, metadata !724, metadata !477), !dbg !725
  %4 = load i8*, i8** %2, align 8, !dbg !726
  %5 = call i8* @settings_get_str_type(i8* %4, i32 4), !dbg !727
  store i8* %5, i8** %3, align 8, !dbg !728
  %6 = load i8*, i8** %3, align 8, !dbg !729
  %7 = icmp eq i8* %6, null, !dbg !730
  br i1 %7, label %8, label %9, !dbg !729

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !731

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !733
  %11 = call i32 @level2bits(i8* %10, i32* null), !dbg !735
  br label %12, !dbg !736

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ], !dbg !737
  ret i32 %13, !dbg !739
}

declare i32 @level2bits(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @settings_get_size(i8*) #0 !dbg !740 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !741, metadata !477), !dbg !742
  call void @llvm.dbg.declare(metadata i8** %3, metadata !743, metadata !477), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %4, metadata !745, metadata !477), !dbg !746
  store i32 0, i32* %4, align 4, !dbg !746
  %5 = load i8*, i8** %2, align 8, !dbg !747
  %6 = call i8* @settings_get_str_type(i8* %5, i32 5), !dbg !748
  store i8* %6, i8** %3, align 8, !dbg !749
  %7 = load i8*, i8** %3, align 8, !dbg !750
  %8 = icmp ne i8* %7, null, !dbg !752
  br i1 %8, label %9, label %16, !dbg !753

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !754
  %11 = call i32 @parse_size(i8* %10, i32* %4), !dbg !756
  %12 = icmp ne i32 %11, 0, !dbg !756
  br i1 %12, label %16, label %13, !dbg !757

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %2, align 8, !dbg !758
  %15 = load i8*, i8** %3, align 8, !dbg !759
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %14, i8* %15), !dbg !760
  br label %16, !dbg !760

; <label>:16:                                     ; preds = %13, %9, %1
  %17 = load i8*, i8** %3, align 8, !dbg !761
  %18 = icmp eq i8* %17, null, !dbg !762
  br i1 %18, label %19, label %20, !dbg !761

; <label>:19:                                     ; preds = %16
  br label %22, !dbg !763

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !765
  br label %22, !dbg !767

; <label>:22:                                     ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ], !dbg !768
  ret i32 %23, !dbg !770
}

declare i32 @parse_size(i8*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @settings_get_choice(i8*) #0 !dbg !771 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !772, metadata !477), !dbg !773
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !774, metadata !477), !dbg !775
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !776, metadata !477), !dbg !777
  call void @llvm.dbg.declare(metadata i8** %6, metadata !778, metadata !477), !dbg !779
  call void @llvm.dbg.declare(metadata i32* %7, metadata !780, metadata !477), !dbg !781
  %8 = load i8*, i8** %3, align 8, !dbg !782
  %9 = call %struct.SETTINGS_REC* @settings_get(i8* %8, i32 6), !dbg !783
  store %struct.SETTINGS_REC* %9, %struct.SETTINGS_REC** %4, align 8, !dbg !784
  %10 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !785
  %11 = icmp eq %struct.SETTINGS_REC* %10, null, !dbg !787
  br i1 %11, label %12, label %13, !dbg !788

; <label>:12:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !789
  br label %61, !dbg !789

; <label>:13:                                     ; preds = %1
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !791
  %15 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !792
  store %struct._CONFIG_NODE* %15, %struct._CONFIG_NODE** %5, align 8, !dbg !793
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !794
  %17 = icmp eq %struct._CONFIG_NODE* %16, null, !dbg !795
  br i1 %17, label %18, label %19, !dbg !794

; <label>:18:                                     ; preds = %13
  br label %26, !dbg !796

; <label>:19:                                     ; preds = %13
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !798
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !800
  %22 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !801
  %23 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %22, i32 0, i32 1, !dbg !802
  %24 = load i8*, i8** %23, align 8, !dbg !802
  %25 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %20, %struct._CONFIG_NODE* %21, i8* %24, i32 -1), !dbg !803
  br label %26, !dbg !804

; <label>:26:                                     ; preds = %19, %18
  %27 = phi %struct._CONFIG_NODE* [ null, %18 ], [ %25, %19 ], !dbg !805
  store %struct._CONFIG_NODE* %27, %struct._CONFIG_NODE** %5, align 8, !dbg !807
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !808
  %29 = icmp eq %struct._CONFIG_NODE* %28, null, !dbg !809
  br i1 %29, label %30, label %35, !dbg !808

; <label>:30:                                     ; preds = %26
  %31 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !810
  %32 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %31, i32 0, i32 5, !dbg !811
  %33 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %32, i32 0, i32 0, !dbg !812
  %34 = load i8*, i8** %33, align 8, !dbg !812
  br label %43, !dbg !813

; <label>:35:                                     ; preds = %26
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !814
  %37 = load i8*, i8** %3, align 8, !dbg !815
  %38 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !816
  %39 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %38, i32 0, i32 5, !dbg !817
  %40 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %39, i32 0, i32 0, !dbg !818
  %41 = load i8*, i8** %40, align 8, !dbg !818
  %42 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %36, i8* %37, i8* %41), !dbg !819
  br label %43, !dbg !820

; <label>:43:                                     ; preds = %35, %30
  %44 = phi i8* [ %34, %30 ], [ %42, %35 ], !dbg !821
  store i8* %44, i8** %6, align 8, !dbg !822
  %45 = load i8*, i8** %6, align 8, !dbg !823
  %46 = icmp eq i8* %45, null, !dbg !825
  br i1 %46, label %54, label %47, !dbg !826

; <label>:47:                                     ; preds = %43
  %48 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !827
  %49 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %48, i32 0, i32 6, !dbg !829
  %50 = load i8**, i8*** %49, align 8, !dbg !829
  %51 = load i8*, i8** %6, align 8, !dbg !830
  %52 = call i32 @strarray_find(i8** %50, i8* %51), !dbg !831
  store i32 %52, i32* %7, align 4, !dbg !832
  %53 = icmp slt i32 %52, 0, !dbg !833
  br i1 %53, label %54, label %59, !dbg !834

; <label>:54:                                     ; preds = %47, %43
  %55 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !835
  %56 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %55, i32 0, i32 5, !dbg !836
  %57 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %56, i32 0, i32 1, !dbg !837
  %58 = load i32, i32* %57, align 8, !dbg !837
  store i32 %58, i32* %2, align 4, !dbg !838
  br label %61, !dbg !838

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %7, align 4, !dbg !839
  store i32 %60, i32* %2, align 4, !dbg !840
  br label %61, !dbg !840

; <label>:61:                                     ; preds = %59, %54, %12
  %62 = load i32, i32* %2, align 4, !dbg !841
  ret i32 %62, !dbg !841
}

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare i32 @strarray_find(i8**, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @settings_get_print(%struct.SETTINGS_REC*) #0 !dbg !842 {
  %2 = alloca %struct.SETTINGS_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.SETTINGS_REC* %0, %struct.SETTINGS_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %2, metadata !845, metadata !477), !dbg !846
  call void @llvm.dbg.declare(metadata i8** %3, metadata !847, metadata !477), !dbg !848
  store i8* null, i8** %3, align 8, !dbg !848
  %4 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !849
  %5 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %4, i32 0, i32 4, !dbg !850
  %6 = load i32, i32* %5, align 8, !dbg !850
  switch i32 %6, label %39 [
    i32 6, label %7
    i32 2, label %19
    i32 1, label %27
    i32 0, label %33
    i32 3, label %33
    i32 4, label %33
    i32 5, label %33
    i32 7, label %33
  ], !dbg !851

; <label>:7:                                      ; preds = %1
  %8 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !852
  %9 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %8, i32 0, i32 2, !dbg !854
  %10 = load i8*, i8** %9, align 8, !dbg !854
  %11 = call i32 @settings_get_choice(i8* %10), !dbg !855
  %12 = sext i32 %11 to i64, !dbg !856
  %13 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !856
  %14 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %13, i32 0, i32 6, !dbg !857
  %15 = load i8**, i8*** %14, align 8, !dbg !857
  %16 = getelementptr inbounds i8*, i8** %15, i64 %12, !dbg !856
  %17 = load i8*, i8** %16, align 8, !dbg !856
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !858
  store i8* %18, i8** %3, align 8, !dbg !860
  br label %39, !dbg !861

; <label>:19:                                     ; preds = %1
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !862
  %21 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %20, i32 0, i32 2, !dbg !863
  %22 = load i8*, i8** %21, align 8, !dbg !863
  %23 = call i32 @settings_get_bool(i8* %22), !dbg !864
  %24 = icmp ne i32 %23, 0, !dbg !864
  %25 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), !dbg !864
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !865
  store i8* %26, i8** %3, align 8, !dbg !866
  br label %39, !dbg !867

; <label>:27:                                     ; preds = %1
  %28 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !868
  %29 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %28, i32 0, i32 2, !dbg !869
  %30 = load i8*, i8** %29, align 8, !dbg !869
  %31 = call i32 @settings_get_int(i8* %30), !dbg !870
  %32 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %31), !dbg !871
  store i8* %32, i8** %3, align 8, !dbg !872
  br label %39, !dbg !873

; <label>:33:                                     ; preds = %1, %1, %1, %1, %1
  %34 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !874
  %35 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %34, i32 0, i32 2, !dbg !875
  %36 = load i8*, i8** %35, align 8, !dbg !875
  %37 = call i8* @settings_get_str(i8* %36), !dbg !876
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !877
  store i8* %38, i8** %3, align 8, !dbg !878
  br label %39, !dbg !879

; <label>:39:                                     ; preds = %1, %33, %27, %19, %7
  %40 = load i8*, i8** %3, align 8, !dbg !880
  ret i8* %40, !dbg !881
}

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @settings_add_str_module(i8*, i8*, i8*, i8*) #0 !dbg !882 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !885, metadata !477), !dbg !886
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !887, metadata !477), !dbg !888
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !889, metadata !477), !dbg !890
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !891, metadata !477), !dbg !892
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !893, metadata !477), !dbg !894
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !895
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !895
  %11 = load i8*, i8** %8, align 8, !dbg !896
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !897
  %13 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 0, !dbg !898
  store i8* %12, i8** %13, align 8, !dbg !899
  %14 = load i8*, i8** %5, align 8, !dbg !900
  %15 = load i8*, i8** %6, align 8, !dbg !901
  %16 = load i8*, i8** %7, align 8, !dbg !902
  call void @settings_add(i8* %14, i8* %15, i8* %16, i32 0, %struct.SettingValue* %9, i8* null), !dbg !903
  ret void, !dbg !904
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @settings_add(i8*, i8*, i8*, i32, %struct.SettingValue*, i8*) #0 !dbg !905 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.SettingValue*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.SETTINGS_REC*, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !910, metadata !477), !dbg !911
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !912, metadata !477), !dbg !913
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !914, metadata !477), !dbg !915
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !916, metadata !477), !dbg !917
  store %struct.SettingValue* %4, %struct.SettingValue** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.SettingValue** %11, metadata !918, metadata !477), !dbg !919
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !920, metadata !477), !dbg !921
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %13, metadata !922, metadata !477), !dbg !923
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !924, metadata !477), !dbg !925
  store i8** null, i8*** %14, align 8, !dbg !925
  br label %15, !dbg !926, !llvm.loop !927

; <label>:15:                                     ; preds = %6
  %16 = load i8*, i8** %9, align 8, !dbg !928
  %17 = icmp ne i8* %16, null, !dbg !932
  br i1 %17, label %18, label %19, !dbg !928

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !933

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.settings_add, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !936
  br label %109, !dbg !939

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !940

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !942, !llvm.loop !943

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %8, align 8, !dbg !944
  %24 = icmp ne i8* %23, null, !dbg !948
  br i1 %24, label %25, label %26, !dbg !944

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !949

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.settings_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)), !dbg !952
  br label %109, !dbg !955

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !956

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %10, align 4, !dbg !958
  %30 = icmp eq i32 %29, 6, !dbg !960
  br i1 %30, label %31, label %54, !dbg !961

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %12, align 8, !dbg !962
  %33 = icmp eq i8* %32, null, !dbg !965
  br i1 %33, label %34, label %36, !dbg !966

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %9, align 8, !dbg !967
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), i8* %35), !dbg !969
  br label %109, !dbg !970

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %12, align 8, !dbg !971
  %38 = call noalias i8** @g_strsplit(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i32 -1), !dbg !972
  store i8** %38, i8*** %14, align 8, !dbg !973
  %39 = load %struct.SettingValue*, %struct.SettingValue** %11, align 8, !dbg !974
  %40 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %39, i32 0, i32 1, !dbg !976
  %41 = load i32, i32* %40, align 8, !dbg !976
  %42 = icmp slt i32 %41, 0, !dbg !977
  br i1 %42, label %50, label %43, !dbg !978

; <label>:43:                                     ; preds = %36
  %44 = load %struct.SettingValue*, %struct.SettingValue** %11, align 8, !dbg !979
  %45 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %44, i32 0, i32 1, !dbg !981
  %46 = load i32, i32* %45, align 8, !dbg !981
  %47 = load i8**, i8*** %14, align 8, !dbg !982
  %48 = call i32 @g_strv_length(i8** %47), !dbg !983
  %49 = icmp uge i32 %46, %48, !dbg !984
  br i1 %49, label %50, label %53, !dbg !985

; <label>:50:                                     ; preds = %43, %36
  %51 = load i8*, i8** %9, align 8, !dbg !986
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i32 0, i32 0), i8* %51), !dbg !988
  %52 = load i8**, i8*** %14, align 8, !dbg !989
  call void @g_strfreev(i8** %52), !dbg !990
  br label %109, !dbg !991

; <label>:53:                                     ; preds = %43
  br label %54, !dbg !992

; <label>:54:                                     ; preds = %53, %28
  %55 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !993
  %56 = load i8*, i8** %9, align 8, !dbg !994
  %57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %55, i8* %56), !dbg !995
  %58 = bitcast i8* %57 to %struct.SETTINGS_REC*, !dbg !995
  store %struct.SETTINGS_REC* %58, %struct.SETTINGS_REC** %13, align 8, !dbg !996
  %59 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !997
  %60 = icmp ne %struct.SETTINGS_REC* %59, null, !dbg !999
  br i1 %60, label %61, label %74, !dbg !1000

; <label>:61:                                     ; preds = %54
  %62 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1001
  %63 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %62, i32 0, i32 4, !dbg !1004
  %64 = load i32, i32* %63, align 8, !dbg !1004
  %65 = load i32, i32* %10, align 4, !dbg !1005
  %66 = icmp ne i32 %64, %65, !dbg !1006
  br i1 %66, label %67, label %69, !dbg !1007

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %9, align 8, !dbg !1008
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.33, i32 0, i32 0), i8* %68), !dbg !1010
  br label %109, !dbg !1011

; <label>:69:                                     ; preds = %61
  %70 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1012
  %71 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %70, i32 0, i32 0, !dbg !1013
  %72 = load i32, i32* %71, align 8, !dbg !1014
  %73 = add nsw i32 %72, 1, !dbg !1014
  store i32 %73, i32* %71, align 8, !dbg !1014
  br label %109, !dbg !1015

; <label>:74:                                     ; preds = %54
  %75 = call noalias i8* @g_malloc_n(i64 1, i64 64), !dbg !1016
  %76 = bitcast i8* %75 to %struct.SETTINGS_REC*, !dbg !1018
  store %struct.SETTINGS_REC* %76, %struct.SETTINGS_REC** %13, align 8, !dbg !1019
  %77 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1020
  %78 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %77, i32 0, i32 0, !dbg !1021
  store i32 1, i32* %78, align 8, !dbg !1022
  %79 = load i8*, i8** %7, align 8, !dbg !1023
  %80 = call noalias i8* @g_strdup(i8* %79), !dbg !1024
  %81 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1025
  %82 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %81, i32 0, i32 1, !dbg !1026
  store i8* %80, i8** %82, align 8, !dbg !1027
  %83 = load i8*, i8** %9, align 8, !dbg !1028
  %84 = call noalias i8* @g_strdup(i8* %83), !dbg !1029
  %85 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1030
  %86 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %85, i32 0, i32 2, !dbg !1031
  store i8* %84, i8** %86, align 8, !dbg !1032
  %87 = load i8*, i8** %8, align 8, !dbg !1033
  %88 = call noalias i8* @g_strdup(i8* %87), !dbg !1034
  %89 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1035
  %90 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %89, i32 0, i32 3, !dbg !1036
  store i8* %88, i8** %90, align 8, !dbg !1037
  %91 = load i32, i32* %10, align 4, !dbg !1038
  %92 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1039
  %93 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %92, i32 0, i32 4, !dbg !1040
  store i32 %91, i32* %93, align 8, !dbg !1041
  %94 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1042
  %95 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %94, i32 0, i32 5, !dbg !1043
  %96 = load %struct.SettingValue*, %struct.SettingValue** %11, align 8, !dbg !1044
  %97 = bitcast %struct.SettingValue* %95 to i8*, !dbg !1045
  %98 = bitcast %struct.SettingValue* %96 to i8*, !dbg !1045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false), !dbg !1045
  %99 = load i8**, i8*** %14, align 8, !dbg !1046
  %100 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1047
  %101 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %100, i32 0, i32 6, !dbg !1048
  store i8** %99, i8*** %101, align 8, !dbg !1049
  %102 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1050
  %103 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1051
  %104 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %103, i32 0, i32 2, !dbg !1052
  %105 = load i8*, i8** %104, align 8, !dbg !1052
  %106 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %13, align 8, !dbg !1053
  %107 = bitcast %struct.SETTINGS_REC* %106 to i8*, !dbg !1053
  %108 = call i32 @g_hash_table_insert(%struct._GHashTable* %102, i8* %105, i8* %107), !dbg !1054
  br label %109

; <label>:109:                                    ; preds = %19, %26, %34, %50, %67, %74, %69
  ret void, !dbg !1055
}

; Function Attrs: nounwind uwtable
define void @settings_add_choice_module(i8*, i8*, i8*, i32, i8*) #0 !dbg !1056 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1059, metadata !477), !dbg !1060
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1061, metadata !477), !dbg !1062
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1063, metadata !477), !dbg !1064
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1065, metadata !477), !dbg !1066
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1067, metadata !477), !dbg !1068
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %11, metadata !1069, metadata !477), !dbg !1070
  %12 = bitcast %struct.SettingValue* %11 to i8*, !dbg !1071
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false), !dbg !1071
  %13 = load i32, i32* %9, align 4, !dbg !1072
  %14 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %11, i32 0, i32 1, !dbg !1073
  store i32 %13, i32* %14, align 8, !dbg !1074
  %15 = load i8*, i8** %6, align 8, !dbg !1075
  %16 = load i8*, i8** %7, align 8, !dbg !1076
  %17 = load i8*, i8** %8, align 8, !dbg !1077
  %18 = load i8*, i8** %10, align 8, !dbg !1078
  call void @settings_add(i8* %15, i8* %16, i8* %17, i32 6, %struct.SettingValue* %11, i8* %18), !dbg !1079
  ret void, !dbg !1080
}

; Function Attrs: nounwind uwtable
define void @settings_add_int_module(i8*, i8*, i8*, i32) #0 !dbg !1081 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1084, metadata !477), !dbg !1085
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1086, metadata !477), !dbg !1087
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1088, metadata !477), !dbg !1089
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1090, metadata !477), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !1092, metadata !477), !dbg !1093
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !1094
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1094
  %11 = load i32, i32* %8, align 4, !dbg !1095
  %12 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 1, !dbg !1096
  store i32 %11, i32* %12, align 8, !dbg !1097
  %13 = load i8*, i8** %5, align 8, !dbg !1098
  %14 = load i8*, i8** %6, align 8, !dbg !1099
  %15 = load i8*, i8** %7, align 8, !dbg !1100
  call void @settings_add(i8* %13, i8* %14, i8* %15, i32 1, %struct.SettingValue* %9, i8* null), !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define void @settings_add_bool_module(i8*, i8*, i8*, i32) #0 !dbg !1103 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1104, metadata !477), !dbg !1105
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1106, metadata !477), !dbg !1107
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1108, metadata !477), !dbg !1109
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1110, metadata !477), !dbg !1111
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !1112, metadata !477), !dbg !1113
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !1114
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1114
  %11 = load i32, i32* %8, align 4, !dbg !1115
  %12 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 2, !dbg !1116
  %13 = trunc i32 %11 to i8, !dbg !1117
  %14 = load i8, i8* %12, align 4, !dbg !1117
  %15 = and i8 %13, 1, !dbg !1117
  %16 = and i8 %14, -2, !dbg !1117
  %17 = or i8 %16, %15, !dbg !1117
  store i8 %17, i8* %12, align 4, !dbg !1117
  %18 = zext i8 %15 to i32, !dbg !1117
  %19 = load i8*, i8** %5, align 8, !dbg !1118
  %20 = load i8*, i8** %6, align 8, !dbg !1119
  %21 = load i8*, i8** %7, align 8, !dbg !1120
  call void @settings_add(i8* %19, i8* %20, i8* %21, i32 2, %struct.SettingValue* %9, i8* null), !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: nounwind uwtable
define void @settings_add_time_module(i8*, i8*, i8*, i8*) #0 !dbg !1123 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1124, metadata !477), !dbg !1125
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1126, metadata !477), !dbg !1127
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1128, metadata !477), !dbg !1129
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1130, metadata !477), !dbg !1131
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !1132, metadata !477), !dbg !1133
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !1134
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1134
  %11 = load i8*, i8** %8, align 8, !dbg !1135
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !1136
  %13 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 0, !dbg !1137
  store i8* %12, i8** %13, align 8, !dbg !1138
  %14 = load i8*, i8** %5, align 8, !dbg !1139
  %15 = load i8*, i8** %6, align 8, !dbg !1140
  %16 = load i8*, i8** %7, align 8, !dbg !1141
  call void @settings_add(i8* %14, i8* %15, i8* %16, i32 3, %struct.SettingValue* %9, i8* null), !dbg !1142
  ret void, !dbg !1143
}

; Function Attrs: nounwind uwtable
define void @settings_add_level_module(i8*, i8*, i8*, i8*) #0 !dbg !1144 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1145, metadata !477), !dbg !1146
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1147, metadata !477), !dbg !1148
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1149, metadata !477), !dbg !1150
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1151, metadata !477), !dbg !1152
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !1153, metadata !477), !dbg !1154
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !1155
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1155
  %11 = load i8*, i8** %8, align 8, !dbg !1156
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !1157
  %13 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 0, !dbg !1158
  store i8* %12, i8** %13, align 8, !dbg !1159
  %14 = load i8*, i8** %5, align 8, !dbg !1160
  %15 = load i8*, i8** %6, align 8, !dbg !1161
  %16 = load i8*, i8** %7, align 8, !dbg !1162
  call void @settings_add(i8* %14, i8* %15, i8* %16, i32 4, %struct.SettingValue* %9, i8* null), !dbg !1163
  ret void, !dbg !1164
}

; Function Attrs: nounwind uwtable
define void @settings_add_size_module(i8*, i8*, i8*, i8*) #0 !dbg !1165 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SettingValue, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1166, metadata !477), !dbg !1167
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1168, metadata !477), !dbg !1169
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1170, metadata !477), !dbg !1171
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1172, metadata !477), !dbg !1173
  call void @llvm.dbg.declare(metadata %struct.SettingValue* %9, metadata !1174, metadata !477), !dbg !1175
  %10 = bitcast %struct.SettingValue* %9 to i8*, !dbg !1176
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false), !dbg !1176
  %11 = load i8*, i8** %8, align 8, !dbg !1177
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !1178
  %13 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %9, i32 0, i32 0, !dbg !1179
  store i8* %12, i8** %13, align 8, !dbg !1180
  %14 = load i8*, i8** %5, align 8, !dbg !1181
  %15 = load i8*, i8** %6, align 8, !dbg !1182
  %16 = load i8*, i8** %7, align 8, !dbg !1183
  call void @settings_add(i8* %14, i8* %15, i8* %16, i32 5, %struct.SettingValue* %9, i8* null), !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: nounwind uwtable
define void @settings_remove(i8*) #0 !dbg !1186 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1189, metadata !477), !dbg !1190
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %3, metadata !1191, metadata !477), !dbg !1192
  br label %4, !dbg !1193, !llvm.loop !1194

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !1195
  %6 = icmp ne i8* %5, null, !dbg !1199
  br i1 %6, label %7, label %8, !dbg !1195

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1200

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.settings_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !1203
  br label %19, !dbg !1206

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1207

; <label>:10:                                     ; preds = %9
  %11 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1209
  %12 = load i8*, i8** %2, align 8, !dbg !1210
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %12), !dbg !1211
  %14 = bitcast i8* %13 to %struct.SETTINGS_REC*, !dbg !1211
  store %struct.SETTINGS_REC* %14, %struct.SETTINGS_REC** %3, align 8, !dbg !1212
  %15 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1213
  %16 = icmp ne %struct.SETTINGS_REC* %15, null, !dbg !1215
  br i1 %16, label %17, label %19, !dbg !1216

; <label>:17:                                     ; preds = %10
  %18 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1217
  call void @settings_unref(%struct.SETTINGS_REC* %18, i32 1), !dbg !1218
  br label %19, !dbg !1218

; <label>:19:                                     ; preds = %8, %17, %10
  ret void, !dbg !1219
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_unref(%struct.SETTINGS_REC*, i32) #0 !dbg !1220 {
  %3 = alloca %struct.SETTINGS_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.SETTINGS_REC* %0, %struct.SETTINGS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %3, metadata !1223, metadata !477), !dbg !1224
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1225, metadata !477), !dbg !1226
  %5 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1227
  %6 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %5, i32 0, i32 0, !dbg !1229
  %7 = load i32, i32* %6, align 8, !dbg !1230
  %8 = add nsw i32 %7, -1, !dbg !1230
  store i32 %8, i32* %6, align 8, !dbg !1230
  %9 = icmp eq i32 %8, 0, !dbg !1231
  br i1 %9, label %10, label %21, !dbg !1232

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !1233
  %12 = icmp ne i32 %11, 0, !dbg !1233
  br i1 %12, label %13, label %19, !dbg !1236

; <label>:13:                                     ; preds = %10
  %14 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1237
  %15 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1238
  %16 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %15, i32 0, i32 2, !dbg !1239
  %17 = load i8*, i8** %16, align 8, !dbg !1239
  %18 = call i32 @g_hash_table_remove(%struct._GHashTable* %14, i8* %17), !dbg !1240
  br label %19, !dbg !1240

; <label>:19:                                     ; preds = %13, %10
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1241
  call void @settings_destroy(%struct.SETTINGS_REC* %20), !dbg !1242
  br label %21, !dbg !1243

; <label>:21:                                     ; preds = %19, %2
  ret void, !dbg !1244
}

; Function Attrs: nounwind uwtable
define void @settings_remove_module(i8*) #0 !dbg !1245 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1246, metadata !477), !dbg !1247
  %3 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1248
  %4 = load i8*, i8** %2, align 8, !dbg !1249
  %5 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %3, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.SETTINGS_REC*, i8*)* @settings_remove_hash to i32 (i8*, i8*, i8*)*), i8* %4), !dbg !1250
  ret void, !dbg !1251
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @settings_remove_hash(i8*, %struct.SETTINGS_REC*, i8*) #0 !dbg !1252 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SETTINGS_REC*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1255, metadata !477), !dbg !1256
  store %struct.SETTINGS_REC* %1, %struct.SETTINGS_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !1257, metadata !477), !dbg !1258
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1259, metadata !477), !dbg !1260
  %8 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !1261
  %9 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %8, i32 0, i32 1, !dbg !1263
  %10 = load i8*, i8** %9, align 8, !dbg !1263
  %11 = load i8*, i8** %7, align 8, !dbg !1264
  %12 = call i32 @g_strcmp0(i8* %10, i8* %11), !dbg !1265
  %13 = icmp eq i32 %12, 0, !dbg !1266
  br i1 %13, label %14, label %16, !dbg !1267

; <label>:14:                                     ; preds = %3
  %15 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !1268
  call void @settings_unref(%struct.SETTINGS_REC* %15, i32 0), !dbg !1270
  store i32 1, i32* %4, align 4, !dbg !1271
  br label %17, !dbg !1271

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1272
  br label %17, !dbg !1272

; <label>:17:                                     ; preds = %16, %14
  %18 = load i32, i32* %4, align 4, !dbg !1273
  ret i32 %18, !dbg !1273
}

; Function Attrs: nounwind uwtable
define i32 @settings_set_choice(i8*, i8*) #0 !dbg !1274 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1277, metadata !477), !dbg !1278
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1279, metadata !477), !dbg !1280
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !1281, metadata !477), !dbg !1282
  %7 = load i8*, i8** %4, align 8, !dbg !1283
  %8 = call %struct.SETTINGS_REC* @settings_get_record(i8* %7), !dbg !1284
  store %struct.SETTINGS_REC* %8, %struct.SETTINGS_REC** %6, align 8, !dbg !1285
  %9 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !1286
  %10 = icmp ne %struct.SETTINGS_REC* %9, null, !dbg !1288
  br i1 %10, label %11, label %19, !dbg !1289

; <label>:11:                                     ; preds = %2
  %12 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !1290
  %13 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %12, i32 0, i32 6, !dbg !1292
  %14 = load i8**, i8*** %13, align 8, !dbg !1292
  %15 = load i8*, i8** %5, align 8, !dbg !1293
  %16 = call i32 @strarray_find(i8** %14, i8* %15), !dbg !1294
  %17 = icmp slt i32 %16, 0, !dbg !1295
  br i1 %17, label %18, label %19, !dbg !1296

; <label>:18:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !1297
  br label %22, !dbg !1297

; <label>:19:                                     ; preds = %11, %2
  %20 = load i8*, i8** %4, align 8, !dbg !1298
  %21 = load i8*, i8** %5, align 8, !dbg !1299
  call void @settings_set_str(i8* %20, i8* %21), !dbg !1300
  store i32 1, i32* %3, align 4, !dbg !1301
  br label %22, !dbg !1301

; <label>:22:                                     ; preds = %19, %18
  %23 = load i32, i32* %3, align 4, !dbg !1302
  ret i32 %23, !dbg !1302
}

; Function Attrs: nounwind uwtable
define %struct.SETTINGS_REC* @settings_get_record(i8*) #0 !dbg !1303 {
  %2 = alloca %struct.SETTINGS_REC*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1306, metadata !477), !dbg !1307
  br label %4, !dbg !1308, !llvm.loop !1309

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %3, align 8, !dbg !1310
  %6 = icmp ne i8* %5, null, !dbg !1314
  br i1 %6, label %7, label %8, !dbg !1310

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1315

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.settings_get_record, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !1318
  store %struct.SETTINGS_REC* null, %struct.SETTINGS_REC** %2, align 8, !dbg !1321
  br label %15, !dbg !1321

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1322

; <label>:10:                                     ; preds = %9
  %11 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1324
  %12 = load i8*, i8** %3, align 8, !dbg !1325
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %12), !dbg !1326
  %14 = bitcast i8* %13 to %struct.SETTINGS_REC*, !dbg !1326
  store %struct.SETTINGS_REC* %14, %struct.SETTINGS_REC** %2, align 8, !dbg !1327
  br label %15, !dbg !1327

; <label>:15:                                     ; preds = %10, %8
  %16 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !1328
  ret %struct.SETTINGS_REC* %16, !dbg !1328
}

; Function Attrs: nounwind uwtable
define void @settings_set_str(i8*, i8*) #0 !dbg !1329 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1332, metadata !477), !dbg !1333
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1334, metadata !477), !dbg !1335
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1336
  %6 = load i8*, i8** %3, align 8, !dbg !1337
  %7 = call %struct._CONFIG_NODE* @settings_get_node(i8* %6), !dbg !1338
  %8 = load i8*, i8** %3, align 8, !dbg !1339
  %9 = load i8*, i8** %4, align 8, !dbg !1340
  call void @config_node_set_str(%struct._CONFIG_REC* %5, %struct._CONFIG_NODE* %7, i8* %8, i8* %9), !dbg !1341
  ret void, !dbg !1343
}

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_NODE* @settings_get_node(i8*) #0 !dbg !1344 {
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1347, metadata !477), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !1349, metadata !477), !dbg !1350
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1351, metadata !477), !dbg !1352
  br label %6, !dbg !1353, !llvm.loop !1354

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !1355
  %8 = icmp ne i8* %7, null, !dbg !1359
  br i1 %8, label %9, label %10, !dbg !1355

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1360

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.settings_get_node, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !1363
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %2, align 8, !dbg !1366
  br label %30, !dbg !1366

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1367

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1369
  %14 = load i8*, i8** %3, align 8, !dbg !1370
  %15 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* %14), !dbg !1371
  %16 = bitcast i8* %15 to %struct.SETTINGS_REC*, !dbg !1371
  store %struct.SETTINGS_REC* %16, %struct.SETTINGS_REC** %4, align 8, !dbg !1372
  %17 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1373
  %18 = icmp eq %struct.SETTINGS_REC* %17, null, !dbg !1375
  br i1 %18, label %19, label %21, !dbg !1376

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %3, align 8, !dbg !1377
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0), i8* %20), !dbg !1379
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %2, align 8, !dbg !1380
  br label %30, !dbg !1380

; <label>:21:                                     ; preds = %12
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1381
  %23 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1), !dbg !1382
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %5, align 8, !dbg !1383
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1384
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1385
  %26 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1386
  %27 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %26, i32 0, i32 1, !dbg !1387
  %28 = load i8*, i8** %27, align 8, !dbg !1387
  %29 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %24, %struct._CONFIG_NODE* %25, i8* %28, i32 2), !dbg !1388
  store %struct._CONFIG_NODE* %29, %struct._CONFIG_NODE** %2, align 8, !dbg !1389
  br label %30, !dbg !1389

; <label>:30:                                     ; preds = %21, %19, %10
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1390
  ret %struct._CONFIG_NODE* %31, !dbg !1390
}

; Function Attrs: nounwind uwtable
define void @settings_set_int(i8*, i32) #0 !dbg !1391 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1394, metadata !477), !dbg !1395
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1396, metadata !477), !dbg !1397
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1398
  %6 = load i8*, i8** %3, align 8, !dbg !1399
  %7 = call %struct._CONFIG_NODE* @settings_get_node(i8* %6), !dbg !1400
  %8 = load i8*, i8** %3, align 8, !dbg !1401
  %9 = load i32, i32* %4, align 4, !dbg !1402
  call void @config_node_set_int(%struct._CONFIG_REC* %5, %struct._CONFIG_NODE* %7, i8* %8, i32 %9), !dbg !1403
  ret void, !dbg !1405
}

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @settings_set_bool(i8*, i32) #0 !dbg !1406 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1407, metadata !477), !dbg !1408
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1409, metadata !477), !dbg !1410
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1411
  %6 = load i8*, i8** %3, align 8, !dbg !1412
  %7 = call %struct._CONFIG_NODE* @settings_get_node(i8* %6), !dbg !1413
  %8 = load i8*, i8** %3, align 8, !dbg !1414
  %9 = load i32, i32* %4, align 4, !dbg !1415
  call void @config_node_set_bool(%struct._CONFIG_REC* %5, %struct._CONFIG_NODE* %7, i8* %8, i32 %9), !dbg !1416
  ret void, !dbg !1418
}

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @settings_set_time(i8*, i8*) #0 !dbg !1419 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1420, metadata !477), !dbg !1421
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1422, metadata !477), !dbg !1423
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1424, metadata !477), !dbg !1425
  %7 = load i8*, i8** %5, align 8, !dbg !1426
  %8 = call i32 @parse_time_interval(i8* %7, i32* %6), !dbg !1428
  %9 = icmp ne i32 %8, 0, !dbg !1428
  br i1 %9, label %11, label %10, !dbg !1429

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1430
  br label %17, !dbg !1430

; <label>:11:                                     ; preds = %2
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1431
  %13 = load i8*, i8** %4, align 8, !dbg !1432
  %14 = call %struct._CONFIG_NODE* @settings_get_node(i8* %13), !dbg !1433
  %15 = load i8*, i8** %4, align 8, !dbg !1434
  %16 = load i8*, i8** %5, align 8, !dbg !1435
  call void @config_node_set_str(%struct._CONFIG_REC* %12, %struct._CONFIG_NODE* %14, i8* %15, i8* %16), !dbg !1436
  store i32 1, i32* %3, align 4, !dbg !1438
  br label %17, !dbg !1438

; <label>:17:                                     ; preds = %11, %10
  %18 = load i32, i32* %3, align 4, !dbg !1439
  ret i32 %18, !dbg !1439
}

; Function Attrs: nounwind uwtable
define i32 @settings_set_level(i8*, i8*) #0 !dbg !1440 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1441, metadata !477), !dbg !1442
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1443, metadata !477), !dbg !1444
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1445, metadata !477), !dbg !1446
  %7 = load i8*, i8** %5, align 8, !dbg !1447
  %8 = call i32 @level2bits(i8* %7, i32* %6), !dbg !1448
  %9 = load i32, i32* %6, align 4, !dbg !1449
  %10 = icmp ne i32 %9, 0, !dbg !1449
  br i1 %10, label %11, label %12, !dbg !1451

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1452
  br label %18, !dbg !1452

; <label>:12:                                     ; preds = %2
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1453
  %14 = load i8*, i8** %4, align 8, !dbg !1454
  %15 = call %struct._CONFIG_NODE* @settings_get_node(i8* %14), !dbg !1455
  %16 = load i8*, i8** %4, align 8, !dbg !1456
  %17 = load i8*, i8** %5, align 8, !dbg !1457
  call void @config_node_set_str(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %15, i8* %16, i8* %17), !dbg !1458
  store i32 1, i32* %3, align 4, !dbg !1460
  br label %18, !dbg !1460

; <label>:18:                                     ; preds = %12, %11
  %19 = load i32, i32* %3, align 4, !dbg !1461
  ret i32 %19, !dbg !1461
}

; Function Attrs: nounwind uwtable
define i32 @settings_set_size(i8*, i8*) #0 !dbg !1462 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1463, metadata !477), !dbg !1464
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1465, metadata !477), !dbg !1466
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1467, metadata !477), !dbg !1468
  %7 = load i8*, i8** %5, align 8, !dbg !1469
  %8 = call i32 @parse_size(i8* %7, i32* %6), !dbg !1471
  %9 = icmp ne i32 %8, 0, !dbg !1471
  br i1 %9, label %11, label %10, !dbg !1472

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1473
  br label %17, !dbg !1473

; <label>:11:                                     ; preds = %2
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1474
  %13 = load i8*, i8** %4, align 8, !dbg !1475
  %14 = call %struct._CONFIG_NODE* @settings_get_node(i8* %13), !dbg !1476
  %15 = load i8*, i8** %4, align 8, !dbg !1477
  %16 = load i8*, i8** %5, align 8, !dbg !1478
  call void @config_node_set_str(%struct._CONFIG_REC* %12, %struct._CONFIG_NODE* %14, i8* %15, i8* %16), !dbg !1479
  store i32 1, i32* %3, align 4, !dbg !1481
  br label %17, !dbg !1481

; <label>:17:                                     ; preds = %11, %10
  %18 = load i32, i32* %3, align 4, !dbg !1482
  ret i32 %18, !dbg !1482
}

; Function Attrs: nounwind uwtable
define i32 @settings_get_type(i8*) #0 !dbg !1483 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1486, metadata !477), !dbg !1487
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !1488, metadata !477), !dbg !1489
  br label %5, !dbg !1490, !llvm.loop !1491

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %3, align 8, !dbg !1492
  %7 = icmp ne i8* %6, null, !dbg !1496
  br i1 %7, label %8, label %9, !dbg !1492

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1497

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.settings_get_type, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !1500
  store i32 7, i32* %2, align 4, !dbg !1503
  br label %25, !dbg !1503

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1504

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1506
  %13 = load i8*, i8** %3, align 8, !dbg !1507
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %13), !dbg !1508
  %15 = bitcast i8* %14 to %struct.SETTINGS_REC*, !dbg !1508
  store %struct.SETTINGS_REC* %15, %struct.SETTINGS_REC** %4, align 8, !dbg !1509
  %16 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1510
  %17 = icmp eq %struct.SETTINGS_REC* %16, null, !dbg !1511
  br i1 %17, label %18, label %19, !dbg !1510

; <label>:18:                                     ; preds = %11
  br label %23, !dbg !1512

; <label>:19:                                     ; preds = %11
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1514
  %21 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %20, i32 0, i32 4, !dbg !1516
  %22 = load i32, i32* %21, align 8, !dbg !1516
  br label %23, !dbg !1517

; <label>:23:                                     ; preds = %19, %18
  %24 = phi i32 [ 7, %18 ], [ %22, %19 ], !dbg !1518
  store i32 %24, i32* %2, align 4, !dbg !1520
  br label %25, !dbg !1520

; <label>:25:                                     ; preds = %23, %9
  %26 = load i32, i32* %2, align 4, !dbg !1521
  ret i32 %26, !dbg !1521
}

; Function Attrs: nounwind uwtable
define void @settings_clean_invalid() #0 !dbg !1522 {
  %1 = alloca i8*, align 8
  br label %2, !dbg !1523

; <label>:2:                                      ; preds = %5, %0
  %3 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !1524
  %4 = icmp ne %struct._GSList* %3, null, !dbg !1526
  br i1 %4, label %5, label %14, !dbg !1527

; <label>:5:                                      ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1528, metadata !477), !dbg !1530
  %6 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !1531
  %7 = getelementptr inbounds %struct._GSList, %struct._GSList* %6, i32 0, i32 0, !dbg !1532
  %8 = load i8*, i8** %7, align 8, !dbg !1532
  store i8* %8, i8** %1, align 8, !dbg !1530
  %9 = load i8*, i8** %1, align 8, !dbg !1533
  call void @settings_clean_invalid_module(i8* %9), !dbg !1534
  %10 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !1535
  %11 = load i8*, i8** %1, align 8, !dbg !1536
  %12 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %11), !dbg !1537
  store %struct._GSList* %12, %struct._GSList** @last_invalid_modules, align 8, !dbg !1538
  %13 = load i8*, i8** %1, align 8, !dbg !1539
  call void @g_free(i8* %13), !dbg !1540
  br label %2, !dbg !1541, !llvm.loop !1543

; <label>:14:                                     ; preds = %2
  ret void, !dbg !1544
}

; Function Attrs: nounwind uwtable
define internal void @settings_clean_invalid_module(i8*) #0 !dbg !1545 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1546, metadata !477), !dbg !1547
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1548, metadata !477), !dbg !1549
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !1550, metadata !477), !dbg !1551
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1552, metadata !477), !dbg !1553
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1554, metadata !477), !dbg !1555
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1556
  %9 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !1557
  store %struct._CONFIG_NODE* %9, %struct._CONFIG_NODE** %3, align 8, !dbg !1558
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1559
  %11 = icmp eq %struct._CONFIG_NODE* %10, null, !dbg !1561
  br i1 %11, label %12, label %13, !dbg !1562

; <label>:12:                                     ; preds = %1
  br label %59, !dbg !1563

; <label>:13:                                     ; preds = %1
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1565
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1566
  %16 = load i8*, i8** %2, align 8, !dbg !1567
  %17 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %14, %struct._CONFIG_NODE* %15, i8* %16, i32 -1), !dbg !1568
  store %struct._CONFIG_NODE* %17, %struct._CONFIG_NODE** %3, align 8, !dbg !1569
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1570
  %19 = icmp eq %struct._CONFIG_NODE* %18, null, !dbg !1572
  br i1 %19, label %20, label %21, !dbg !1573

; <label>:20:                                     ; preds = %13
  br label %59, !dbg !1574

; <label>:21:                                     ; preds = %13
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1576
  %23 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %22, i32 0, i32 2, !dbg !1578
  %24 = load i8*, i8** %23, align 8, !dbg !1578
  %25 = bitcast i8* %24 to %struct._GSList*, !dbg !1576
  %26 = call %struct._GSList* @config_node_first(%struct._GSList* %25), !dbg !1579
  store %struct._GSList* %26, %struct._GSList** %5, align 8, !dbg !1580
  br label %27, !dbg !1581

; <label>:27:                                     ; preds = %57, %21
  %28 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1582
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1585
  br i1 %29, label %30, label %59, !dbg !1586

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1587, metadata !477), !dbg !1589
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1590
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1591
  %33 = load i8*, i8** %32, align 8, !dbg !1591
  %34 = bitcast i8* %33 to %struct._CONFIG_NODE*, !dbg !1590
  store %struct._CONFIG_NODE* %34, %struct._CONFIG_NODE** %7, align 8, !dbg !1589
  %35 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1592
  %36 = call %struct._GSList* @config_node_next(%struct._GSList* %35), !dbg !1593
  store %struct._GSList* %36, %struct._GSList** %6, align 8, !dbg !1594
  %37 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1595
  %38 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1596
  %39 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %38, i32 0, i32 1, !dbg !1597
  %40 = load i8*, i8** %39, align 8, !dbg !1597
  %41 = call i8* @g_hash_table_lookup(%struct._GHashTable* %37, i8* %40), !dbg !1598
  %42 = bitcast i8* %41 to %struct.SETTINGS_REC*, !dbg !1598
  store %struct.SETTINGS_REC* %42, %struct.SETTINGS_REC** %4, align 8, !dbg !1599
  %43 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1600
  %44 = icmp eq %struct.SETTINGS_REC* %43, null, !dbg !1602
  br i1 %44, label %52, label %45, !dbg !1603

; <label>:45:                                     ; preds = %30
  %46 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !1604
  %47 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %46, i32 0, i32 1, !dbg !1606
  %48 = load i8*, i8** %47, align 8, !dbg !1606
  %49 = load i8*, i8** %2, align 8, !dbg !1607
  %50 = call i32 @g_strcmp0(i8* %48, i8* %49), !dbg !1608
  %51 = icmp ne i32 %50, 0, !dbg !1609
  br i1 %51, label %52, label %56, !dbg !1610

; <label>:52:                                     ; preds = %45, %30
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1611
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1612
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1613
  call void @config_node_remove(%struct._CONFIG_REC* %53, %struct._CONFIG_NODE* %54, %struct._CONFIG_NODE* %55), !dbg !1614
  br label %56, !dbg !1614

; <label>:56:                                     ; preds = %52, %45
  br label %57, !dbg !1615

; <label>:57:                                     ; preds = %56
  %58 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1616
  store %struct._GSList* %58, %struct._GSList** %5, align 8, !dbg !1618
  br label %27, !dbg !1619, !llvm.loop !1620

; <label>:59:                                     ; preds = %12, %20, %27
  ret void, !dbg !1622
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @settings_check_module(i8*) #0 !dbg !1623 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.SETTINGS_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1624, metadata !477), !dbg !1625
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %3, metadata !1626, metadata !477), !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1628, metadata !477), !dbg !1629
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1630, metadata !477), !dbg !1631
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1632, metadata !477), !dbg !1633
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1634, metadata !477), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1636, metadata !477), !dbg !1637
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1638, metadata !477), !dbg !1639
  br label %10, !dbg !1640, !llvm.loop !1641

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1642
  %12 = icmp ne i8* %11, null, !dbg !1646
  br i1 %12, label %13, label %14, !dbg !1642

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1647

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.settings_check_module, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !1650
  br label %129, !dbg !1653

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1654

; <label>:16:                                     ; preds = %15
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1656
  %18 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !1657
  store %struct._CONFIG_NODE* %18, %struct._CONFIG_NODE** %4, align 8, !dbg !1658
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1659
  %20 = icmp eq %struct._CONFIG_NODE* %19, null, !dbg !1660
  br i1 %20, label %21, label %22, !dbg !1659

; <label>:21:                                     ; preds = %16
  br label %27, !dbg !1661

; <label>:22:                                     ; preds = %16
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1663
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1665
  %25 = load i8*, i8** %2, align 8, !dbg !1666
  %26 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %23, %struct._CONFIG_NODE* %24, i8* %25, i32 -1), !dbg !1667
  br label %27, !dbg !1668

; <label>:27:                                     ; preds = %22, %21
  %28 = phi %struct._CONFIG_NODE* [ null, %21 ], [ %26, %22 ], !dbg !1669
  store %struct._CONFIG_NODE* %28, %struct._CONFIG_NODE** %4, align 8, !dbg !1671
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1672
  %30 = icmp eq %struct._CONFIG_NODE* %29, null, !dbg !1674
  br i1 %30, label %31, label %32, !dbg !1675

; <label>:31:                                     ; preds = %27
  br label %129, !dbg !1676

; <label>:32:                                     ; preds = %27
  %33 = call %struct._GString* @g_string_new(i8* null), !dbg !1678
  store %struct._GString* %33, %struct._GString** %6, align 8, !dbg !1679
  %34 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1680
  %35 = load i8*, i8** %2, align 8, !dbg !1681
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i8* %35), !dbg !1682
  store i32 0, i32* %9, align 4, !dbg !1683
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1684
  store %struct._CONFIG_NODE* %36, %struct._CONFIG_NODE** %5, align 8, !dbg !1685
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1686
  %38 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %37, i32 0, i32 2, !dbg !1687
  %39 = load i8*, i8** %38, align 8, !dbg !1687
  %40 = bitcast i8* %39 to %struct._GSList*, !dbg !1686
  %41 = call %struct._GSList* @config_node_first(%struct._GSList* %40), !dbg !1688
  store %struct._GSList* %41, %struct._GSList** %7, align 8, !dbg !1689
  br label %42, !dbg !1690

; <label>:42:                                     ; preds = %88, %32
  %43 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1691
  %44 = icmp ne %struct._GSList* %43, null, !dbg !1695
  br i1 %44, label %45, label %90, !dbg !1696

; <label>:45:                                     ; preds = %42
  %46 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1697
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !1699
  %48 = load i8*, i8** %47, align 8, !dbg !1699
  %49 = bitcast i8* %48 to %struct._CONFIG_NODE*, !dbg !1697
  store %struct._CONFIG_NODE* %49, %struct._CONFIG_NODE** %4, align 8, !dbg !1700
  %50 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1701
  %51 = call %struct._GSList* @config_node_next(%struct._GSList* %50), !dbg !1702
  store %struct._GSList* %51, %struct._GSList** %8, align 8, !dbg !1703
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1704
  %53 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %52, i32 0, i32 1, !dbg !1706
  %54 = load i8*, i8** %53, align 8, !dbg !1706
  %55 = icmp eq i8* %54, null, !dbg !1707
  br i1 %55, label %56, label %57, !dbg !1708

; <label>:56:                                     ; preds = %45
  br label %88, !dbg !1709

; <label>:57:                                     ; preds = %45
  %58 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1711
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1712
  %60 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %59, i32 0, i32 1, !dbg !1713
  %61 = load i8*, i8** %60, align 8, !dbg !1713
  %62 = call i8* @g_hash_table_lookup(%struct._GHashTable* %58, i8* %61), !dbg !1714
  %63 = bitcast i8* %62 to %struct.SETTINGS_REC*, !dbg !1714
  store %struct.SETTINGS_REC* %63, %struct.SETTINGS_REC** %3, align 8, !dbg !1715
  %64 = load i8*, i8** %2, align 8, !dbg !1716
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1718
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1719
  %67 = call i32 @backwards_compatibility(i8* %64, %struct._CONFIG_NODE* %65, %struct._CONFIG_NODE* %66), !dbg !1720
  %68 = icmp ne i32 %67, 0, !dbg !1720
  br i1 %68, label %69, label %70, !dbg !1721

; <label>:69:                                     ; preds = %57
  br label %88, !dbg !1722

; <label>:70:                                     ; preds = %57
  %71 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1723
  %72 = icmp eq %struct.SETTINGS_REC* %71, null, !dbg !1725
  br i1 %72, label %80, label %73, !dbg !1726

; <label>:73:                                     ; preds = %70
  %74 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !1727
  %75 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %74, i32 0, i32 1, !dbg !1729
  %76 = load i8*, i8** %75, align 8, !dbg !1729
  %77 = load i8*, i8** %2, align 8, !dbg !1730
  %78 = call i32 @g_strcmp0(i8* %76, i8* %77), !dbg !1731
  %79 = icmp ne i32 %78, 0, !dbg !1732
  br i1 %79, label %80, label %87, !dbg !1733

; <label>:80:                                     ; preds = %73, %70
  %81 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1734
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1736
  %83 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %82, i32 0, i32 1, !dbg !1737
  %84 = load i8*, i8** %83, align 8, !dbg !1737
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %84), !dbg !1738
  %85 = load i32, i32* %9, align 4, !dbg !1739
  %86 = add nsw i32 %85, 1, !dbg !1739
  store i32 %86, i32* %9, align 4, !dbg !1739
  br label %87, !dbg !1740

; <label>:87:                                     ; preds = %80, %73
  br label %88, !dbg !1741

; <label>:88:                                     ; preds = %87, %69, %56
  %89 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1742
  store %struct._GSList* %89, %struct._GSList** %7, align 8, !dbg !1744
  br label %42, !dbg !1745, !llvm.loop !1746

; <label>:90:                                     ; preds = %42
  %91 = load i32, i32* %9, align 4, !dbg !1747
  %92 = icmp sgt i32 %91, 0, !dbg !1749
  br i1 %92, label %93, label %126, !dbg !1750

; <label>:93:                                     ; preds = %90
  %94 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !1751
  %95 = load i8*, i8** %2, align 8, !dbg !1754
  %96 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %94, i8* %95), !dbg !1755
  %97 = icmp eq %struct._GSList* %96, null, !dbg !1756
  br i1 %97, label %98, label %103, !dbg !1757

; <label>:98:                                     ; preds = %93
  %99 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !1758
  %100 = load i8*, i8** %2, align 8, !dbg !1760
  %101 = call noalias i8* @g_strdup(i8* %100), !dbg !1761
  %102 = call %struct._GSList* @g_slist_append(%struct._GSList* %99, i8* %101), !dbg !1762
  store %struct._GSList* %102, %struct._GSList** @last_invalid_modules, align 8, !dbg !1763
  br label %103, !dbg !1764

; <label>:103:                                    ; preds = %98, %93
  %104 = load i32, i32* @fe_initialized, align 4, !dbg !1765
  %105 = icmp ne i32 %104, 0, !dbg !1765
  br i1 %105, label %106, label %111, !dbg !1767

; <label>:106:                                    ; preds = %103
  %107 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1768
  %108 = getelementptr inbounds %struct._GString, %struct._GString* %107, i32 0, i32 0, !dbg !1769
  %109 = load i8*, i8** %108, align 8, !dbg !1769
  %110 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* %109), !dbg !1770
  br label %125, !dbg !1770

; <label>:111:                                    ; preds = %103
  %112 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !1771
  %113 = icmp eq %struct._GString* %112, null, !dbg !1774
  br i1 %113, label %114, label %116, !dbg !1775

; <label>:114:                                    ; preds = %111
  %115 = call %struct._GString* @g_string_new(i8* null), !dbg !1776
  store %struct._GString* %115, %struct._GString** @last_errors, align 8, !dbg !1777
  br label %119, !dbg !1778

; <label>:116:                                    ; preds = %111
  %117 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !1779
  %118 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %117, i8 signext 10), !dbg !1780
  br label %119

; <label>:119:                                    ; preds = %116, %114
  %120 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !1781
  %121 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1782
  %122 = getelementptr inbounds %struct._GString, %struct._GString* %121, i32 0, i32 0, !dbg !1783
  %123 = load i8*, i8** %122, align 8, !dbg !1783
  %124 = call %struct._GString* @g_string_append(%struct._GString* %120, i8* %123), !dbg !1784
  br label %125

; <label>:125:                                    ; preds = %119, %106
  br label %126, !dbg !1785

; <label>:126:                                    ; preds = %125, %90
  %127 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1786
  %128 = call i8* @g_string_free(%struct._GString* %127, i32 1), !dbg !1787
  br label %129, !dbg !1788

; <label>:129:                                    ; preds = %126, %31, %14
  ret void, !dbg !1789
}

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_printf(%struct._GString*, i8*, ...) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal i32 @backwards_compatibility(i8*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !1790 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._CONFIG_NODE*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1793, metadata !477), !dbg !1794
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1795, metadata !477), !dbg !1796
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1797, metadata !477), !dbg !1798
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1799, metadata !477), !dbg !1800
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1801, metadata !477), !dbg !1802
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %10, metadata !1803, metadata !477), !dbg !1804
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1805, metadata !477), !dbg !1806
  store i8* null, i8** %11, align 8, !dbg !1807
  store i8* null, i8** %8, align 8, !dbg !1808
  store i8* null, i8** %9, align 8, !dbg !1809
  %12 = load i8*, i8** %5, align 8, !dbg !1810
  %13 = call i32 @g_strcmp0(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)), !dbg !1812
  %14 = icmp eq i32 %13, 0, !dbg !1813
  br i1 %14, label %15, label %93, !dbg !1814

; <label>:15:                                     ; preds = %3
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1815
  %17 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %16, i32 0, i32 1, !dbg !1818
  %18 = load i8*, i8** %17, align 8, !dbg !1818
  %19 = call i32 @g_ascii_strcasecmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)), !dbg !1819
  %20 = icmp eq i32 %19, 0, !dbg !1820
  br i1 %20, label %27, label %21, !dbg !1821

; <label>:21:                                     ; preds = %15
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1822
  %23 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %22, i32 0, i32 1, !dbg !1823
  %24 = load i8*, i8** %23, align 8, !dbg !1823
  %25 = call i32 @g_ascii_strcasecmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)), !dbg !1824
  %26 = icmp eq i32 %25, 0, !dbg !1825
  br i1 %26, label %27, label %66, !dbg !1826

; <label>:27:                                     ; preds = %21, %15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8** %9, align 8, !dbg !1828
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8** %8, align 8, !dbg !1830
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1831
  %29 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %28, i32 0, i32 2, !dbg !1832
  %30 = load i8*, i8** %29, align 8, !dbg !1832
  %31 = call i32 @is_valid_charset(i8* %30), !dbg !1833
  %32 = icmp ne i32 %31, 0, !dbg !1833
  br i1 %32, label %34, label %33, !dbg !1834

; <label>:33:                                     ; preds = %27
  br label %39, !dbg !1835

; <label>:34:                                     ; preds = %27
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1837
  %36 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %35, i32 0, i32 2, !dbg !1838
  %37 = load i8*, i8** %36, align 8, !dbg !1838
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !1839
  br label %39, !dbg !1840

; <label>:39:                                     ; preds = %34, %33
  %40 = phi i8* [ null, %33 ], [ %38, %34 ], !dbg !1842
  store i8* %40, i8** %11, align 8, !dbg !1844
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1845
  %42 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !1846
  store %struct._CONFIG_NODE* %42, %struct._CONFIG_NODE** %10, align 8, !dbg !1847
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !1848
  %44 = icmp eq %struct._CONFIG_NODE* %43, null, !dbg !1849
  br i1 %44, label %45, label %46, !dbg !1848

; <label>:45:                                     ; preds = %39
  br label %51, !dbg !1850

; <label>:46:                                     ; preds = %39
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1851
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !1852
  %49 = load i8*, i8** %9, align 8, !dbg !1853
  %50 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %47, %struct._CONFIG_NODE* %48, i8* %49, i32 -1), !dbg !1854
  br label %51, !dbg !1855

; <label>:51:                                     ; preds = %46, %45
  %52 = phi %struct._CONFIG_NODE* [ null, %45 ], [ %50, %46 ], !dbg !1856
  store %struct._CONFIG_NODE* %52, %struct._CONFIG_NODE** %10, align 8, !dbg !1857
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1858
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !1859
  %55 = load i8*, i8** %8, align 8, !dbg !1860
  %56 = load i8*, i8** %11, align 8, !dbg !1861
  call void @config_node_set_str(%struct._CONFIG_REC* %53, %struct._CONFIG_NODE* %54, i8* %55, i8* %56), !dbg !1862
  %57 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1863
  %58 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1864
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1865
  %60 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %59, i32 0, i32 1, !dbg !1866
  %61 = load i8*, i8** %60, align 8, !dbg !1866
  call void @config_node_set_str(%struct._CONFIG_REC* %57, %struct._CONFIG_NODE* %58, i8* %61, i8* null), !dbg !1867
  %62 = load i8*, i8** %11, align 8, !dbg !1868
  call void @g_free(i8* %62), !dbg !1869
  store i32 1, i32* @config_changed, align 4, !dbg !1870
  %63 = load i8*, i8** %8, align 8, !dbg !1871
  %64 = icmp ne i8* %63, null, !dbg !1872
  %65 = zext i1 %64 to i32, !dbg !1872
  store i32 %65, i32* %4, align 4, !dbg !1873
  br label %97, !dbg !1873

; <label>:66:                                     ; preds = %21
  %67 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1874
  %68 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %67, i32 0, i32 1, !dbg !1876
  %69 = load i8*, i8** %68, align 8, !dbg !1876
  %70 = call i32 @g_ascii_strcasecmp(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)), !dbg !1877
  %71 = icmp eq i32 %70, 0, !dbg !1878
  br i1 %71, label %72, label %91, !dbg !1879

; <label>:72:                                     ; preds = %66
  %73 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1880
  %74 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %73, i32 0, i32 2, !dbg !1881
  %75 = load i8*, i8** %74, align 8, !dbg !1881
  %76 = icmp ne i8* %75, null, !dbg !1882
  br i1 %76, label %77, label %91, !dbg !1883

; <label>:77:                                     ; preds = %72
  %78 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1884
  %79 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %78, i32 0, i32 2, !dbg !1886
  %80 = load i8*, i8** %79, align 8, !dbg !1886
  %81 = call i32 @g_ascii_strcasecmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0)), !dbg !1887
  %82 = icmp eq i32 %81, 0, !dbg !1888
  br i1 %82, label %83, label %91, !dbg !1889

; <label>:83:                                     ; preds = %77
  %84 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1891
  %85 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1893
  call void @config_node_set_str(%struct._CONFIG_REC* %84, %struct._CONFIG_NODE* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)), !dbg !1894
  %86 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1895
  %87 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1896
  %88 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1897
  %89 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %88, i32 0, i32 1, !dbg !1898
  %90 = load i8*, i8** %89, align 8, !dbg !1898
  call void @config_node_set_str(%struct._CONFIG_REC* %86, %struct._CONFIG_NODE* %87, i8* %90, i8* null), !dbg !1899
  store i32 1, i32* @config_changed, align 4, !dbg !1900
  store i32 1, i32* %4, align 4, !dbg !1901
  br label %97, !dbg !1901

; <label>:91:                                     ; preds = %77, %72, %66
  br label %92

; <label>:92:                                     ; preds = %91
  br label %93, !dbg !1902

; <label>:93:                                     ; preds = %92, %3
  %94 = load i8*, i8** %8, align 8, !dbg !1903
  %95 = icmp ne i8* %94, null, !dbg !1904
  %96 = zext i1 %95 to i32, !dbg !1904
  store i32 %96, i32* %4, align 4, !dbg !1905
  br label %97, !dbg !1905

; <label>:97:                                     ; preds = %93, %83, %51
  %98 = load i32, i32* %4, align 4, !dbg !1906
  ret i32 %98, !dbg !1906
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1907 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1910, metadata !477), !dbg !1911
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1912, metadata !477), !dbg !1913
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1914
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1916
  %7 = load i64, i64* %6, align 8, !dbg !1916
  %8 = add i64 %7, 1, !dbg !1917
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1918
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1919
  %11 = load i64, i64* %10, align 8, !dbg !1919
  %12 = icmp ult i64 %8, %11, !dbg !1920
  br i1 %12, label %13, label %30, !dbg !1921

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1922
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1924
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1925
  %17 = load i64, i64* %16, align 8, !dbg !1926
  %18 = add i64 %17, 1, !dbg !1926
  store i64 %18, i64* %16, align 8, !dbg !1926
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1927
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1928
  %21 = load i8*, i8** %20, align 8, !dbg !1928
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1927
  store i8 %14, i8* %22, align 1, !dbg !1929
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1930
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1931
  %25 = load i64, i64* %24, align 8, !dbg !1931
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1932
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1933
  %28 = load i8*, i8** %27, align 8, !dbg !1933
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1932
  store i8 0, i8* %29, align 1, !dbg !1934
  br label %34, !dbg !1935

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1936
  %32 = load i8, i8* %4, align 1, !dbg !1937
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1938
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1939
  ret %struct._GString* %35, !dbg !1940
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._GSList* @settings_get_sorted() #0 !dbg !1941 {
  %1 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1944, metadata !477), !dbg !1945
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !1946
  %2 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !1947
  %3 = bitcast %struct._GSList** %1 to i8*, !dbg !1948
  call void @g_hash_table_foreach(%struct._GHashTable* %2, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.SETTINGS_REC*, %struct._GSList**)* @settings_hash_get to void (i8*, i8*, i8*)*), i8* %3), !dbg !1949
  %4 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1950
  ret %struct._GSList* %4, !dbg !1951
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_hash_get(i8*, %struct.SETTINGS_REC*, %struct._GSList**) #0 !dbg !1952 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SETTINGS_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1956, metadata !477), !dbg !1957
  store %struct.SETTINGS_REC* %1, %struct.SETTINGS_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %5, metadata !1958, metadata !477), !dbg !1959
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !1960, metadata !477), !dbg !1961
  %7 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1962
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1963
  %9 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %5, align 8, !dbg !1964
  %10 = bitcast %struct.SETTINGS_REC* %9 to i8*, !dbg !1964
  %11 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %8, i8* %10, i32 (i8*, i8*)* bitcast (i32 (%struct.SETTINGS_REC*, %struct.SETTINGS_REC*)* @settings_compare to i32 (i8*, i8*)*)), !dbg !1965
  %12 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1966
  store %struct._GSList* %11, %struct._GSList** %12, align 8, !dbg !1967
  ret void, !dbg !1968
}

; Function Attrs: nounwind uwtable
define void @sig_term(i32) #0 !dbg !1969 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1970, metadata !477), !dbg !1971
  %3 = call void (i32)* @signal(i32 15, void (i32)* null) #7, !dbg !1972
  %4 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)), !dbg !1973
  %5 = call i32 @raise(i32 15) #7, !dbg !1974
  ret void, !dbg !1975
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #5

; Function Attrs: nounwind
declare i32 @raise(i32) #5

; Function Attrs: nounwind uwtable
define i32 @irssi_config_is_changed(i8*) #0 !dbg !1976 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1977, metadata !477), !dbg !1978
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1979, metadata !477), !dbg !2015
  %5 = load i8*, i8** %3, align 8, !dbg !2016
  %6 = icmp eq i8* %5, null, !dbg !2018
  br i1 %6, label %7, label %11, !dbg !2019

; <label>:7:                                      ; preds = %1
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2020
  %9 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %8, i32 0, i32 0, !dbg !2021
  %10 = load i8*, i8** %9, align 8, !dbg !2021
  store i8* %10, i8** %3, align 8, !dbg !2022
  br label %11, !dbg !2023

; <label>:11:                                     ; preds = %7, %1
  %12 = load i8*, i8** %3, align 8, !dbg !2024
  %13 = call i32 @stat(i8* %12, %struct.stat* %4) #7, !dbg !2026
  %14 = icmp ne i32 %13, 0, !dbg !2027
  br i1 %14, label %15, label %16, !dbg !2028

; <label>:15:                                     ; preds = %11
  store i32 0, i32* %2, align 4, !dbg !2029
  br label %37, !dbg !2029

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* @config_last_mtime, align 8, !dbg !2030
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !2031
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0, !dbg !2032
  %20 = load i64, i64* %19, align 8, !dbg !2032
  %21 = icmp ne i64 %17, %20, !dbg !2033
  br i1 %21, label %22, label %34, !dbg !2034

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* @config_last_size, align 8, !dbg !2035
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !2036
  %25 = load i64, i64* %24, align 8, !dbg !2036
  %26 = icmp ne i64 %23, %25, !dbg !2037
  br i1 %26, label %32, label %27, !dbg !2038

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* @config_last_checksum, align 4, !dbg !2039
  %29 = load i8*, i8** %3, align 8, !dbg !2040
  %30 = call i32 @file_checksum(i8* %29), !dbg !2041
  %31 = icmp ne i32 %28, %30, !dbg !2042
  br label %32, !dbg !2043

; <label>:32:                                     ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  br label %34

; <label>:34:                                     ; preds = %32, %16
  %35 = phi i1 [ false, %16 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32, !dbg !2045
  store i32 %36, i32* %2, align 4, !dbg !2046
  br label %37, !dbg !2046

; <label>:37:                                     ; preds = %34, %15
  %38 = load i32, i32* %2, align 4, !dbg !2047
  ret i32 %38, !dbg !2047
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define internal i32 @file_checksum(i8*) #0 !dbg !2048 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2051, metadata !477), !dbg !2052
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !2053, metadata !477), !dbg !2057
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2058, metadata !477), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2060, metadata !477), !dbg !2061
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2062, metadata !477), !dbg !2063
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2064, metadata !477), !dbg !2065
  store i32 0, i32* %8, align 4, !dbg !2065
  %9 = load i8*, i8** %3, align 8, !dbg !2066
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 0), !dbg !2067
  store i32 %10, i32* %5, align 4, !dbg !2068
  %11 = load i32, i32* %5, align 4, !dbg !2069
  %12 = icmp eq i32 %11, -1, !dbg !2071
  br i1 %12, label %13, label %14, !dbg !2072

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !2073
  br label %44, !dbg !2073

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %7, align 4, !dbg !2075
  br label %15, !dbg !2076

; <label>:15:                                     ; preds = %39, %14
  %16 = load i32, i32* %5, align 4, !dbg !2077
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !2079
  %18 = call i64 @read(i32 %16, i8* %17, i64 512), !dbg !2080
  %19 = trunc i64 %18 to i32, !dbg !2080
  store i32 %19, i32* %6, align 4, !dbg !2081
  %20 = icmp sgt i32 %19, 0, !dbg !2082
  br i1 %20, label %21, label %40, !dbg !2083

; <label>:21:                                     ; preds = %15
  br label %22, !dbg !2084

; <label>:22:                                     ; preds = %26, %21
  %23 = load i32, i32* %6, align 4, !dbg !2086
  %24 = add nsw i32 %23, -1, !dbg !2086
  store i32 %24, i32* %6, align 4, !dbg !2086
  %25 = icmp sgt i32 %23, 0, !dbg !2088
  br i1 %25, label %26, label %39, !dbg !2089

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %6, align 4, !dbg !2090
  %28 = sext i32 %27 to i64, !dbg !2091
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %28, !dbg !2091
  %30 = load i8, i8* %29, align 1, !dbg !2091
  %31 = sext i8 %30 to i32, !dbg !2091
  %32 = load i32, i32* %7, align 4, !dbg !2092
  %33 = add nsw i32 %32, 1, !dbg !2092
  store i32 %33, i32* %7, align 4, !dbg !2092
  %34 = and i32 %32, 3, !dbg !2093
  %35 = mul nsw i32 %34, 8, !dbg !2094
  %36 = shl i32 %31, %35, !dbg !2095
  %37 = load i32, i32* %8, align 4, !dbg !2096
  %38 = add i32 %37, %36, !dbg !2096
  store i32 %38, i32* %8, align 4, !dbg !2096
  br label %22, !dbg !2097, !llvm.loop !2099

; <label>:39:                                     ; preds = %22
  br label %15, !dbg !2100, !llvm.loop !2102

; <label>:40:                                     ; preds = %15
  %41 = load i32, i32* %5, align 4, !dbg !2103
  %42 = call i32 @close(i32 %41), !dbg !2104
  %43 = load i32, i32* %8, align 4, !dbg !2105
  store i32 %43, i32* %2, align 4, !dbg !2106
  br label %44, !dbg !2106

; <label>:44:                                     ; preds = %40, %13
  %45 = load i32, i32* %2, align 4, !dbg !2107
  ret i32 %45, !dbg !2107
}

; Function Attrs: nounwind uwtable
define i32 @settings_reread(i8*) #0 !dbg !2108 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2109, metadata !477), !dbg !2110
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !2111, metadata !477), !dbg !2112
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2113, metadata !477), !dbg !2114
  %6 = load i8*, i8** %3, align 8, !dbg !2115
  %7 = icmp eq i8* %6, null, !dbg !2116
  br i1 %7, label %8, label %9, !dbg !2115

; <label>:8:                                      ; preds = %1
  br label %12, !dbg !2117

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !2119
  %11 = call i8* @convert_home(i8* %10), !dbg !2121
  br label %12, !dbg !2122

; <label>:12:                                     ; preds = %9, %8
  %13 = phi i8* [ null, %8 ], [ %11, %9 ], !dbg !2123
  store i8* %13, i8** %5, align 8, !dbg !2125
  %14 = load i8*, i8** %5, align 8, !dbg !2126
  %15 = call %struct._CONFIG_REC* @parse_configfile(i8* %14), !dbg !2127
  store %struct._CONFIG_REC* %15, %struct._CONFIG_REC** %4, align 8, !dbg !2128
  %16 = load i8*, i8** %5, align 8, !dbg !2129
  call void @g_free(i8* %16), !dbg !2130
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2131
  %18 = icmp eq %struct._CONFIG_REC* %17, null, !dbg !2133
  br i1 %18, label %19, label %24, !dbg !2134

; <label>:19:                                     ; preds = %12
  %20 = call i32* @__errno_location() #1, !dbg !2135
  %21 = load i32, i32* %20, align 4, !dbg !2137
  %22 = call i8* @g_strerror(i32 %21) #1, !dbg !2138
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %22), !dbg !2140
  store i32 0, i32* %2, align 4, !dbg !2142
  br label %49, !dbg !2142

; <label>:24:                                     ; preds = %12
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2143
  %26 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %25, i32 0, i32 3, !dbg !2145
  %27 = load i8*, i8** %26, align 8, !dbg !2145
  %28 = icmp ne i8* %27, null, !dbg !2146
  br i1 %28, label %29, label %38, !dbg !2147

; <label>:29:                                     ; preds = %24
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2148
  %31 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %30, i32 0, i32 3, !dbg !2150
  %32 = load i8*, i8** %31, align 8, !dbg !2150
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* %32), !dbg !2151
  store i8* %33, i8** %5, align 8, !dbg !2152
  %34 = load i8*, i8** %5, align 8, !dbg !2153
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %34), !dbg !2154
  %36 = load i8*, i8** %5, align 8, !dbg !2155
  call void @g_free(i8* %36), !dbg !2156
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2157
  call void @config_close(%struct._CONFIG_REC* %37), !dbg !2158
  store i32 0, i32* %2, align 4, !dbg !2159
  br label %49, !dbg !2159

; <label>:38:                                     ; preds = %24
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2160
  call void @config_close(%struct._CONFIG_REC* %39), !dbg !2161
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !2162
  store %struct._CONFIG_REC* %40, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2163
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2164
  %42 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %41, i32 0, i32 2, !dbg !2165
  %43 = load i32, i32* %42, align 4, !dbg !2165
  store i32 %43, i32* @config_last_modifycounter, align 4, !dbg !2166
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !2167
  %45 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2168
  %46 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %45, i32 0, i32 0, !dbg !2169
  %47 = load i8*, i8** %46, align 8, !dbg !2169
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* %47), !dbg !2170
  store i32 1, i32* %2, align 4, !dbg !2171
  br label %49, !dbg !2171

; <label>:49:                                     ; preds = %38, %29, %19
  %50 = load i32, i32* %2, align 4, !dbg !2172
  ret i32 %50, !dbg !2172
}

declare i8* @convert_home(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CONFIG_REC* @parse_configfile(i8*) #0 !dbg !2173 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2176, metadata !477), !dbg !2177
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !2178, metadata !477), !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2180, metadata !477), !dbg !2181
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2182, metadata !477), !dbg !2183
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2184, metadata !477), !dbg !2185
  %7 = load i8*, i8** %2, align 8, !dbg !2186
  %8 = icmp eq i8* %7, null, !dbg !2188
  br i1 %8, label %9, label %11, !dbg !2189

; <label>:9:                                      ; preds = %1
  %10 = call i8* @get_irssi_config(), !dbg !2190
  store i8* %10, i8** %2, align 8, !dbg !2191
  br label %11, !dbg !2192

; <label>:11:                                     ; preds = %9, %1
  %12 = load i8*, i8** %2, align 8, !dbg !2193
  %13 = call i32 @stat(i8* %12, %struct.stat* %4) #7, !dbg !2195
  %14 = icmp eq i32 %13, 0, !dbg !2196
  br i1 %14, label %15, label %17, !dbg !2197

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %2, align 8, !dbg !2198
  store i8* %16, i8** %5, align 8, !dbg !2199
  br label %23, !dbg !2200

; <label>:17:                                     ; preds = %11
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i8** %5, align 8, !dbg !2201
  %18 = load i8*, i8** %5, align 8, !dbg !2203
  %19 = call i32 @stat(i8* %18, %struct.stat* %4) #7, !dbg !2205
  %20 = icmp ne i32 %19, 0, !dbg !2206
  br i1 %20, label %21, label %22, !dbg !2207

; <label>:21:                                     ; preds = %17
  store i8* null, i8** %5, align 8, !dbg !2208
  br label %22, !dbg !2210

; <label>:22:                                     ; preds = %21, %17
  br label %23

; <label>:23:                                     ; preds = %22, %15
  %24 = load i8*, i8** %5, align 8, !dbg !2211
  %25 = call %struct._CONFIG_REC* @config_open(i8* %24, i32 -1), !dbg !2212
  store %struct._CONFIG_REC* %25, %struct._CONFIG_REC** %3, align 8, !dbg !2213
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2214
  %27 = icmp eq %struct._CONFIG_REC* %26, null, !dbg !2216
  br i1 %27, label %28, label %38, !dbg !2217

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %5, align 8, !dbg !2218
  %30 = call i32* @__errno_location() #1, !dbg !2220
  %31 = load i32, i32* %30, align 4, !dbg !2221
  %32 = call i8* @g_strerror(i32 %31) #1, !dbg !2222
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0), i8* %29, i8* %32), !dbg !2224
  store i8* %33, i8** %6, align 8, !dbg !2225
  %34 = load i8*, i8** %6, align 8, !dbg !2226
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %34), !dbg !2227
  %36 = load i8*, i8** %6, align 8, !dbg !2228
  call void @g_free(i8* %36), !dbg !2229
  %37 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !2230
  store %struct._CONFIG_REC* %37, %struct._CONFIG_REC** %3, align 8, !dbg !2231
  br label %38, !dbg !2232

; <label>:38:                                     ; preds = %28, %23
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2233
  %40 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %39, i32 0, i32 0, !dbg !2235
  %41 = load i8*, i8** %40, align 8, !dbg !2235
  %42 = icmp ne i8* %41, null, !dbg !2236
  br i1 %42, label %43, label %46, !dbg !2237

; <label>:43:                                     ; preds = %38
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2238
  %45 = call i32 @config_parse(%struct._CONFIG_REC* %44), !dbg !2239
  br label %50, !dbg !2239

; <label>:46:                                     ; preds = %38
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2240
  %48 = load i8*, i8** @default_config, align 8, !dbg !2241
  %49 = call i32 @config_parse_data(%struct._CONFIG_REC* %47, i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)), !dbg !2242
  br label %50

; <label>:50:                                     ; preds = %46, %43
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2243
  %52 = load i8*, i8** %2, align 8, !dbg !2244
  call void @config_change_file_name(%struct._CONFIG_REC* %51, i8* %52, i32 432), !dbg !2245
  %53 = load i8*, i8** %2, align 8, !dbg !2246
  call void @irssi_config_save_state(i8* %53), !dbg !2247
  %54 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !2248
  ret %struct._CONFIG_REC* %54, !dbg !2249
}

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @config_close(%struct._CONFIG_REC*) #2

; Function Attrs: nounwind uwtable
define i32 @settings_save(i8*, i32) #0 !dbg !2250 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2253, metadata !477), !dbg !2254
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2255, metadata !477), !dbg !2256
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2257, metadata !477), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2259, metadata !477), !dbg !2260
  %7 = load i8*, i8** %3, align 8, !dbg !2261
  %8 = icmp eq i8* %7, null, !dbg !2263
  br i1 %8, label %9, label %13, !dbg !2264

; <label>:9:                                      ; preds = %2
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2265
  %11 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %10, i32 0, i32 0, !dbg !2266
  %12 = load i8*, i8** %11, align 8, !dbg !2266
  store i8* %12, i8** %3, align 8, !dbg !2267
  br label %13, !dbg !2268

; <label>:13:                                     ; preds = %9, %2
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2269
  %15 = load i8*, i8** %3, align 8, !dbg !2270
  %16 = call i32 @config_write(%struct._CONFIG_REC* %14, i8* %15, i32 432), !dbg !2271
  %17 = icmp ne i32 %16, 0, !dbg !2272
  %18 = zext i1 %17 to i32, !dbg !2272
  store i32 %18, i32* %6, align 4, !dbg !2273
  %19 = load i8*, i8** %3, align 8, !dbg !2274
  call void @irssi_config_save_state(i8* %19), !dbg !2275
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2276
  %21 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %20, i32 0, i32 2, !dbg !2277
  %22 = load i32, i32* %21, align 4, !dbg !2277
  store i32 %22, i32* @config_last_modifycounter, align 4, !dbg !2278
  %23 = load i32, i32* %6, align 4, !dbg !2279
  %24 = icmp ne i32 %23, 0, !dbg !2279
  br i1 %24, label %25, label %33, !dbg !2281

; <label>:25:                                     ; preds = %13
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2282
  %27 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %26, i32 0, i32 3, !dbg !2284
  %28 = load i8*, i8** %27, align 8, !dbg !2284
  %29 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0), i8* %28), !dbg !2285
  store i8* %29, i8** %5, align 8, !dbg !2286
  %30 = load i8*, i8** %5, align 8, !dbg !2287
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %30), !dbg !2288
  %32 = load i8*, i8** %5, align 8, !dbg !2289
  call void @g_free(i8* %32), !dbg !2290
  br label %33, !dbg !2291

; <label>:33:                                     ; preds = %25, %13
  %34 = load i8*, i8** %3, align 8, !dbg !2292
  %35 = load i32, i32* %4, align 4, !dbg !2293
  %36 = sext i32 %35 to i64, !dbg !2294
  %37 = inttoptr i64 %36 to i8*, !dbg !2295
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* %34, i8* %37), !dbg !2296
  %39 = load i32, i32* %6, align 4, !dbg !2297
  %40 = icmp ne i32 %39, 0, !dbg !2298
  %41 = xor i1 %40, true, !dbg !2298
  %42 = zext i1 %41 to i32, !dbg !2298
  ret i32 %42, !dbg !2299
}

declare i32 @config_write(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @irssi_config_save_state(i8*) #0 !dbg !2300 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2301, metadata !477), !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !2303, metadata !477), !dbg !2304
  br label %4, !dbg !2305, !llvm.loop !2306

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !2307
  %6 = icmp ne i8* %5, null, !dbg !2311
  br i1 %6, label %7, label %8, !dbg !2307

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !2312

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irssi_config_save_state, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0)), !dbg !2315
  br label %23, !dbg !2318

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !2319

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !2321
  %12 = call i32 @stat(i8* %11, %struct.stat* %3) #7, !dbg !2323
  %13 = icmp ne i32 %12, 0, !dbg !2324
  br i1 %13, label %14, label %15, !dbg !2325

; <label>:14:                                     ; preds = %10
  br label %23, !dbg !2326

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 12, !dbg !2327
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0, !dbg !2328
  %18 = load i64, i64* %17, align 8, !dbg !2328
  store i64 %18, i64* @config_last_mtime, align 8, !dbg !2329
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 8, !dbg !2330
  %20 = load i64, i64* %19, align 8, !dbg !2330
  store i64 %20, i64* @config_last_size, align 8, !dbg !2331
  %21 = load i8*, i8** %2, align 8, !dbg !2332
  %22 = call i32 @file_checksum(i8* %21), !dbg !2333
  store i32 %22, i32* @config_last_checksum, align 4, !dbg !2334
  br label %23, !dbg !2335

; <label>:23:                                     ; preds = %15, %14, %8
  ret void, !dbg !2336
}

; Function Attrs: nounwind uwtable
define void @settings_init() #0 !dbg !2338 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !2339
  store %struct._GHashTable* %1, %struct._GHashTable** @settings, align 8, !dbg !2340
  store %struct._GString* null, %struct._GString** @last_errors, align 8, !dbg !2341
  store %struct._GSList* null, %struct._GSList** @last_invalid_modules, align 8, !dbg !2342
  store i32 0, i32* @fe_initialized, align 4, !dbg !2343
  store i32 0, i32* @config_changed, align 4, !dbg !2344
  store i64 0, i64* @config_last_mtime, align 8, !dbg !2345
  store i32 0, i32* @config_last_modifycounter, align 4, !dbg !2346
  call void @init_configfile(), !dbg !2347
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 1), !dbg !2348
  %2 = call i32 @g_timeout_add(i32 3600000, i32 (i8*)* bitcast (i32 ()* @sig_autosave to i32 (i8*)*), i8* null), !dbg !2349
  store i32 %2, i32* @timeout_tag, align 4, !dbg !2350
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2351
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_init_userinfo_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2352
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (i32 ()* @sig_autosave to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2353
  ret void, !dbg !2354
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_istr_hash(i8*) #2

declare i32 @g_istr_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @init_configfile() #0 !dbg !2355 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !2356, metadata !477), !dbg !2357
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2358, metadata !477), !dbg !2359
  %3 = call i8* @get_irssi_dir(), !dbg !2360
  %4 = call i32 @stat(i8* %3, %struct.stat* %1) #7, !dbg !2362
  %5 = icmp ne i32 %4, 0, !dbg !2364
  br i1 %5, label %6, label %19, !dbg !2365

; <label>:6:                                      ; preds = %0
  %7 = call i8* @get_irssi_dir(), !dbg !2366
  %8 = call i32 @g_mkdir_with_parents(i8* %7, i32 448), !dbg !2369
  %9 = icmp ne i32 %8, 0, !dbg !2371
  br i1 %9, label %10, label %18, !dbg !2372

; <label>:10:                                     ; preds = %6
  br label %11, !dbg !2373, !llvm.loop !2375

; <label>:11:                                     ; preds = %10
  %12 = call i8* @get_irssi_dir(), !dbg !2376
  %13 = call i32* @__errno_location() #1, !dbg !2379
  %14 = load i32, i32* %13, align 4, !dbg !2381
  %15 = call i8* @g_strerror(i32 %14) #1, !dbg !2382
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0), i8* %12, i8* %15), !dbg !2384
  br label %16, !dbg !2386

; <label>:16:                                     ; preds = %16, %11
  br label %16, !dbg !2387, !llvm.loop !2391
                                                  ; No predecessors!
  br label %18, !dbg !2393

; <label>:18:                                     ; preds = %17, %6
  br label %31, !dbg !2394

; <label>:19:                                     ; preds = %0
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !2395
  %21 = load i32, i32* %20, align 8, !dbg !2395
  %22 = and i32 %21, 61440, !dbg !2398
  %23 = icmp eq i32 %22, 16384, !dbg !2399
  br i1 %23, label %30, label %24, !dbg !2400

; <label>:24:                                     ; preds = %19
  br label %25, !dbg !2401, !llvm.loop !2403

; <label>:25:                                     ; preds = %24
  %26 = call i8* @get_irssi_dir(), !dbg !2404
  %27 = call i8* @get_irssi_dir(), !dbg !2407
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.48, i32 0, i32 0), i8* %26, i8* %27), !dbg !2409
  br label %28, !dbg !2411

; <label>:28:                                     ; preds = %28, %25
  br label %28, !dbg !2412, !llvm.loop !2416
                                                  ; No predecessors!
  br label %30, !dbg !2418

; <label>:30:                                     ; preds = %29, %19
  br label %31

; <label>:31:                                     ; preds = %30, %18
  %32 = call %struct._CONFIG_REC* @parse_configfile(i8* null), !dbg !2419
  store %struct._CONFIG_REC* %32, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2420
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2421
  %34 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %33, i32 0, i32 2, !dbg !2422
  %35 = load i32, i32* %34, align 4, !dbg !2422
  store i32 %35, i32* @config_last_modifycounter, align 4, !dbg !2423
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2424
  %37 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %36, i32 0, i32 3, !dbg !2426
  %38 = load i8*, i8** %37, align 8, !dbg !2426
  %39 = icmp ne i8* %38, null, !dbg !2427
  br i1 %39, label %40, label %48, !dbg !2428

; <label>:40:                                     ; preds = %31
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2429
  %42 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %41, i32 0, i32 3, !dbg !2431
  %43 = load i8*, i8** %42, align 8, !dbg !2431
  %44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.49, i32 0, i32 0), i8* %43), !dbg !2432
  store i8* %44, i8** %2, align 8, !dbg !2433
  %45 = load i8*, i8** %2, align 8, !dbg !2434
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %45), !dbg !2435
  %47 = load i8*, i8** %2, align 8, !dbg !2436
  call void @g_free(i8* %47), !dbg !2437
  br label %48, !dbg !2438

; <label>:48:                                     ; preds = %40, %31
  %49 = call void (i32)* @signal(i32 15, void (i32)* @sig_term) #7, !dbg !2439
  ret void, !dbg !2440
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_autosave() #0 !dbg !2441 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2444, metadata !477), !dbg !2445
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2446, metadata !477), !dbg !2447
  %4 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0)), !dbg !2448
  %5 = icmp ne i32 %4, 0, !dbg !2448
  br i1 %5, label %6, label %12, !dbg !2450

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @config_last_modifycounter, align 4, !dbg !2451
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2452
  %9 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %8, i32 0, i32 2, !dbg !2453
  %10 = load i32, i32* %9, align 4, !dbg !2453
  %11 = icmp eq i32 %7, %10, !dbg !2454
  br i1 %11, label %12, label %13, !dbg !2455

; <label>:12:                                     ; preds = %6, %0
  store i32 1, i32* %1, align 4, !dbg !2457
  br label %32, !dbg !2457

; <label>:13:                                     ; preds = %6
  %14 = call i32 @irssi_config_is_changed(i8* null), !dbg !2458
  %15 = icmp ne i32 %14, 0, !dbg !2458
  br i1 %15, label %18, label %16, !dbg !2460

; <label>:16:                                     ; preds = %13
  %17 = call i32 @settings_save(i8* null, i32 1), !dbg !2461
  br label %31, !dbg !2461

; <label>:18:                                     ; preds = %13
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2462
  %20 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %19, i32 0, i32 0, !dbg !2464
  %21 = load i8*, i8** %20, align 8, !dbg !2464
  %22 = call noalias i8* (i8*, ...) @g_strconcat(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* null), !dbg !2465
  store i8* %22, i8** %2, align 8, !dbg !2466
  %23 = load i8*, i8** %2, align 8, !dbg !2467
  %24 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.51, i32 0, i32 0), i8* %23), !dbg !2468
  store i8* %24, i8** %3, align 8, !dbg !2469
  %25 = load i8*, i8** %3, align 8, !dbg !2470
  %26 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* %25), !dbg !2471
  %27 = load i8*, i8** %3, align 8, !dbg !2472
  call void @g_free(i8* %27), !dbg !2473
  %28 = load i8*, i8** %2, align 8, !dbg !2474
  %29 = call i32 @settings_save(i8* %28, i32 1), !dbg !2475
  %30 = load i8*, i8** %2, align 8, !dbg !2476
  call void @g_free(i8* %30), !dbg !2477
  br label %31

; <label>:31:                                     ; preds = %18, %16
  store i32 1, i32* %1, align 4, !dbg !2478
  br label %32, !dbg !2478

; <label>:32:                                     ; preds = %31, %12
  %33 = load i32, i32* %1, align 4, !dbg !2479
  ret i32 %33, !dbg !2479
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_init_finished() #0 !dbg !2480 {
  store i32 1, i32* @fe_initialized, align 4, !dbg !2481
  %1 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !2482
  %2 = icmp ne %struct._GString* %1, null, !dbg !2484
  br i1 %2, label %3, label %10, !dbg !2485

; <label>:3:                                      ; preds = %0
  %4 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !2486
  %5 = getelementptr inbounds %struct._GString, %struct._GString* %4, i32 0, i32 0, !dbg !2488
  %6 = load i8*, i8** %5, align 8, !dbg !2488
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* %6), !dbg !2489
  %8 = load %struct._GString*, %struct._GString** @last_errors, align 8, !dbg !2490
  %9 = call i8* @g_string_free(%struct._GString* %8, i32 1), !dbg !2491
  br label %10, !dbg !2492

; <label>:10:                                     ; preds = %3, %0
  %11 = load i32, i32* @config_changed, align 4, !dbg !2493
  %12 = icmp ne i32 %11, 0, !dbg !2493
  br i1 %12, label %13, label %15, !dbg !2495

; <label>:13:                                     ; preds = %10
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.53, i32 0, i32 0)), !dbg !2496
  %14 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !2498
  br label %15, !dbg !2499

; <label>:15:                                     ; preds = %13, %10
  %16 = load i32, i32* @user_settings_changed, align 4, !dbg !2500
  %17 = zext i32 %16 to i64, !dbg !2501
  %18 = inttoptr i64 %17 to i8*, !dbg !2502
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i32 0, i32 0), i32 1, i8* %18), !dbg !2503
  ret void, !dbg !2504
}

; Function Attrs: nounwind uwtable
define internal void @sig_init_userinfo_changed(i8*) #0 !dbg !2505 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2506, metadata !477), !dbg !2507
  %3 = load i8*, i8** %2, align 8, !dbg !2508
  %4 = ptrtoint i8* %3 to i64, !dbg !2509
  %5 = trunc i64 %4 to i32, !dbg !2510
  %6 = load i32, i32* @user_settings_changed, align 4, !dbg !2511
  %7 = or i32 %6, %5, !dbg !2511
  store i32 %7, i32* @user_settings_changed, align 4, !dbg !2511
  ret void, !dbg !2512
}

; Function Attrs: nounwind uwtable
define void @settings_deinit() #0 !dbg !2513 {
  %1 = load i32, i32* @timeout_tag, align 4, !dbg !2514
  %2 = call i32 @g_source_remove(i32 %1), !dbg !2515
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_init_finished to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2516
  call void @signal_remove_full(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_init_userinfo_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2517
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (i32 ()* @sig_autosave to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2518
  %3 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !2519
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !2520
  %4 = load %struct._GSList*, %struct._GSList** @last_invalid_modules, align 8, !dbg !2521
  call void @g_slist_free(%struct._GSList* %4), !dbg !2522
  %5 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !2523
  call void @g_hash_table_foreach(%struct._GHashTable* %5, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.SETTINGS_REC*)* @settings_hash_free to void (i8*, i8*, i8*)*), i8* null), !dbg !2524
  %6 = load %struct._GHashTable*, %struct._GHashTable** @settings, align 8, !dbg !2525
  call void @g_hash_table_destroy(%struct._GHashTable* %6), !dbg !2526
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2527
  %8 = icmp ne %struct._CONFIG_REC* %7, null, !dbg !2529
  br i1 %8, label %9, label %11, !dbg !2530

; <label>:9:                                      ; preds = %0
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2531
  call void @config_close(%struct._CONFIG_REC* %10), !dbg !2533
  br label %11, !dbg !2533

; <label>:11:                                     ; preds = %9, %0
  ret void, !dbg !2534
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_hash_free(i8*, %struct.SETTINGS_REC*) #0 !dbg !2535 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2538, metadata !477), !dbg !2539
  store %struct.SETTINGS_REC* %1, %struct.SETTINGS_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !2540, metadata !477), !dbg !2541
  %5 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !2542
  call void @settings_destroy(%struct.SETTINGS_REC* %5), !dbg !2543
  ret void, !dbg !2544
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @g_strv_length(i8**) #2

declare void @g_strfreev(i8**) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_destroy(%struct.SETTINGS_REC*) #0 !dbg !2545 {
  %2 = alloca %struct.SETTINGS_REC*, align 8
  store %struct.SETTINGS_REC* %0, %struct.SETTINGS_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %2, metadata !2548, metadata !477), !dbg !2549
  %3 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2550
  %4 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %3, i32 0, i32 4, !dbg !2552
  %5 = load i32, i32* %4, align 8, !dbg !2552
  %6 = icmp ne i32 %5, 1, !dbg !2553
  br i1 %6, label %7, label %22, !dbg !2554

; <label>:7:                                      ; preds = %1
  %8 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2555
  %9 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %8, i32 0, i32 4, !dbg !2556
  %10 = load i32, i32* %9, align 8, !dbg !2556
  %11 = icmp ne i32 %10, 2, !dbg !2557
  br i1 %11, label %12, label %22, !dbg !2558

; <label>:12:                                     ; preds = %7
  %13 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2559
  %14 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %13, i32 0, i32 4, !dbg !2560
  %15 = load i32, i32* %14, align 8, !dbg !2560
  %16 = icmp ne i32 %15, 6, !dbg !2561
  br i1 %16, label %17, label %22, !dbg !2562

; <label>:17:                                     ; preds = %12
  %18 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2564
  %19 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %18, i32 0, i32 5, !dbg !2565
  %20 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %19, i32 0, i32 0, !dbg !2566
  %21 = load i8*, i8** %20, align 8, !dbg !2566
  call void @g_free(i8* %21), !dbg !2567
  br label %22, !dbg !2567

; <label>:22:                                     ; preds = %17, %12, %7, %1
  %23 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2568
  %24 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %23, i32 0, i32 6, !dbg !2569
  %25 = load i8**, i8*** %24, align 8, !dbg !2569
  call void @g_strfreev(i8** %25), !dbg !2570
  %26 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2571
  %27 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %26, i32 0, i32 1, !dbg !2572
  %28 = load i8*, i8** %27, align 8, !dbg !2572
  call void @g_free(i8* %28), !dbg !2573
  %29 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2574
  %30 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %29, i32 0, i32 3, !dbg !2575
  %31 = load i8*, i8** %30, align 8, !dbg !2575
  call void @g_free(i8* %31), !dbg !2576
  %32 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2577
  %33 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %32, i32 0, i32 2, !dbg !2578
  %34 = load i8*, i8** %33, align 8, !dbg !2578
  call void @g_free(i8* %34), !dbg !2579
  %35 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !2580
  %36 = bitcast %struct.SETTINGS_REC* %35 to i8*, !dbg !2580
  call void @g_free(i8* %36), !dbg !2581
  ret void, !dbg !2582
}

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @is_valid_charset(i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @settings_compare(%struct.SETTINGS_REC*, %struct.SETTINGS_REC*) #0 !dbg !2583 {
  %3 = alloca %struct.SETTINGS_REC*, align 8
  %4 = alloca %struct.SETTINGS_REC*, align 8
  %5 = alloca i32, align 4
  store %struct.SETTINGS_REC* %0, %struct.SETTINGS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %3, metadata !2586, metadata !477), !dbg !2587
  store %struct.SETTINGS_REC* %1, %struct.SETTINGS_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %4, metadata !2588, metadata !477), !dbg !2589
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2590, metadata !477), !dbg !2591
  %6 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !2592
  %7 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %6, i32 0, i32 3, !dbg !2593
  %8 = load i8*, i8** %7, align 8, !dbg !2593
  %9 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !2594
  %10 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %9, i32 0, i32 3, !dbg !2595
  %11 = load i8*, i8** %10, align 8, !dbg !2595
  %12 = call i32 @g_strcmp0(i8* %8, i8* %11), !dbg !2596
  store i32 %12, i32* %5, align 4, !dbg !2591
  %13 = load i32, i32* %5, align 4, !dbg !2597
  %14 = icmp ne i32 %13, 0, !dbg !2597
  br i1 %14, label %23, label %15, !dbg !2599

; <label>:15:                                     ; preds = %2
  %16 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %3, align 8, !dbg !2600
  %17 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %16, i32 0, i32 2, !dbg !2601
  %18 = load i8*, i8** %17, align 8, !dbg !2601
  %19 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %4, align 8, !dbg !2602
  %20 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %19, i32 0, i32 2, !dbg !2603
  %21 = load i8*, i8** %20, align 8, !dbg !2603
  %22 = call i32 @g_strcmp0(i8* %18, i8* %21), !dbg !2604
  store i32 %22, i32* %5, align 4, !dbg !2605
  br label %23, !dbg !2606

; <label>:23:                                     ; preds = %15, %2
  %24 = load i32, i32* %5, align 4, !dbg !2607
  ret i32 %24, !dbg !2608
}

declare i32 @open(i8*, i32, ...) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @close(i32) #2

declare i8* @get_irssi_config() #2

declare %struct._CONFIG_REC* @config_open(i8*, i32) #2

declare i32 @config_parse(%struct._CONFIG_REC*) #2

declare i32 @config_parse_data(%struct._CONFIG_REC*, i8*, i8*) #2

declare void @config_change_file_name(%struct._CONFIG_REC*, i8*, i32) #2

declare i8* @get_irssi_dir() #2

declare i32 @g_mkdir_with_parents(i8*, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!469, !470}
!llvm.ident = !{!471}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !93, globals: !169)
!1 = !DIFile(filename: "line83-settings.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !14, !26, !53, !60, !65, !74, !85}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "SETTING_TYPE_STRING", value: 0)
!7 = !DIEnumerator(name: "SETTING_TYPE_INT", value: 1)
!8 = !DIEnumerator(name: "SETTING_TYPE_BOOLEAN", value: 2)
!9 = !DIEnumerator(name: "SETTING_TYPE_TIME", value: 3)
!10 = !DIEnumerator(name: "SETTING_TYPE_LEVEL", value: 4)
!11 = !DIEnumerator(name: "SETTING_TYPE_SIZE", value: 5)
!12 = !DIEnumerator(name: "SETTING_TYPE_CHOICE", value: 6)
!13 = !DIEnumerator(name: "SETTING_TYPE_ANY", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 51, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25}
!17 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!18 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!19 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!21 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!22 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!23 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!24 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!25 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 75, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!29 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!30 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!31 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!32 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!33 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!34 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!35 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!36 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!37 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!38 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!39 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!40 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!41 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!42 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!43 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!44 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!45 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!46 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!47 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!48 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!49 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!50 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!51 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!52 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 69, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!57 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!58 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!59 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 77, size: 32, align: 32, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!63 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!64 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 31, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "G_IO_IN", value: 1)
!69 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!70 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!71 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!72 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!73 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 84, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84}
!76 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!77 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!78 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!79 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!80 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!81 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!82 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!83 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!84 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 4, size: 32, align: 32, elements: !87)
!86 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!89 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!90 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!91 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!92 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!93 = !{!94, !95, !99, !101, !110, !114, !109, !119, !121, !130, !134, !138, !143, !147, !167, !125}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!98 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !102, line: 39, baseType: !103)
!102 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !109, !109, !109}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !97, line: 50, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !97, line: 49, baseType: !108)
!108 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !97, line: 77, baseType: !94)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !97, line: 91, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !109, !109, !109}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !115, line: 85, baseType: !116)
!115 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !108}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !97, line: 48, baseType: !120)
!120 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !97, line: 90, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !97, line: 55, baseType: !126)
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !97, line: 78, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !97, line: 80, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!107, !127, !127}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !66, line: 155, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!106, !109}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !139, line: 9, baseType: !140)
!139 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !128, !128, !128, !128, !128, !128}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !97, line: 88, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !109, !109}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETTINGS_REC", file: !4, line: 31, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 21, size: 512, align: 64, elements: !150)
!150 = !{!151, !152, !154, !155, !156, !158, !165}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !149, file: !4, line: 22, baseType: !108, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !149, file: !4, line: 24, baseType: !153, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !149, file: !4, line: 25, baseType: !153, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !149, file: !4, line: 26, baseType: !153, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !4, line: 28, baseType: !157, size: 32, align: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingType", file: !4, line: 13, baseType: !3)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !149, file: !4, line: 29, baseType: !159, size: 128, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingValue", file: !4, line: 19, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 15, size: 128, align: 64, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !160, file: !4, line: 16, baseType: !153, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !160, file: !4, line: 17, baseType: !108, size: 32, align: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !160, file: !4, line: 18, baseType: !126, size: 1, align: 32, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "choices", scope: !149, file: !4, line: 30, baseType: !166, size: 64, align: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !97, line: 54, baseType: !168)
!168 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!169 = !{!170, !172, !454, !455, !456, !457, !458, !459, !460, !461, !466, !467, !468}
!170 = distinct !DIGlobalVariable(name: "default_config", scope: !0, file: !171, line: 1, type: !99, isLocal: false, isDefinition: true, variable: i8** @default_config)
!171 = !DIFile(filename: "../../default-config.h", directory: "/home/lichi/Desktop/irssi/task1")
!172 = distinct !DIGlobalVariable(name: "mainconfig", scope: !0, file: !173, line: 36, type: !174, isLocal: false, isDefinition: true, variable: %struct._CONFIG_REC** @mainconfig)
!173 = !DIFile(filename: "settings.c", directory: "/home/lichi/Desktop/irssi/task1")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !86, line: 18, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !86, line: 49, size: 576, align: 64, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !190, !194, !195, !284, !452, !453}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !176, file: !86, line: 50, baseType: !153, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !176, file: !86, line: 51, baseType: !108, size: 32, align: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !176, file: !86, line: 52, baseType: !108, size: 32, align: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !176, file: !86, line: 54, baseType: !153, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !176, file: !86, line: 55, baseType: !183, size: 64, align: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !86, line: 17, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !86, line: 20, size: 192, align: 64, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !185, file: !86, line: 21, baseType: !108, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !185, file: !86, line: 22, baseType: !153, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !86, line: 23, baseType: !94, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !176, file: !86, line: 56, baseType: !191, size: 64, align: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !102, line: 37, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !102, line: 37, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !176, file: !86, line: 57, baseType: !191, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !176, file: !86, line: 59, baseType: !196, size: 64, align: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !27, line: 37, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !27, line: 169, size: 1152, align: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !206, !211, !243, !245, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !198, file: !27, line: 172, baseType: !109, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !198, file: !27, line: 173, baseType: !125, size: 32, align: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !198, file: !27, line: 176, baseType: !125, size: 32, align: 32, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !198, file: !27, line: 179, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !198, file: !27, line: 182, baseType: !207, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !209, line: 36, baseType: !210)
!209 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !209, line: 36, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !198, file: !27, line: 185, baseType: !212, size: 64, align: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !27, line: 38, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !27, line: 127, size: 320, align: 64, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !214, file: !27, line: 131, baseType: !95, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !214, file: !27, line: 132, baseType: !95, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !214, file: !27, line: 133, baseType: !95, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !214, file: !27, line: 134, baseType: !95, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !214, file: !27, line: 138, baseType: !125, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !214, file: !27, line: 143, baseType: !125, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !214, file: !27, line: 144, baseType: !125, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !214, file: !27, line: 145, baseType: !125, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !214, file: !27, line: 146, baseType: !125, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !214, file: !27, line: 147, baseType: !125, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !214, file: !27, line: 148, baseType: !125, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !214, file: !27, line: 149, baseType: !125, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !214, file: !27, line: 150, baseType: !125, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !214, file: !27, line: 151, baseType: !125, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !214, file: !27, line: 152, baseType: !125, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !214, file: !27, line: 153, baseType: !125, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !214, file: !27, line: 154, baseType: !125, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !214, file: !27, line: 155, baseType: !125, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !214, file: !27, line: 156, baseType: !125, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !214, file: !27, line: 157, baseType: !125, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !214, file: !27, line: 158, baseType: !125, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !214, file: !27, line: 159, baseType: !125, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !214, file: !27, line: 160, baseType: !125, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !214, file: !27, line: 161, baseType: !125, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !214, file: !27, line: 162, baseType: !125, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !214, file: !27, line: 163, baseType: !125, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !214, file: !27, line: 166, baseType: !125, size: 32, align: 32, offset: 288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !198, file: !27, line: 188, baseType: !244, size: 32, align: 32, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !27, line: 109, baseType: !26)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !27, line: 189, baseType: !246, size: 64, align: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !27, line: 39, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !27, line: 111, size: 64, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !257, !260, !261, !262, !263, !266}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !247, file: !27, line: 113, baseType: !109, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !247, file: !27, line: 114, baseType: !95, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !247, file: !27, line: 115, baseType: !167, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !247, file: !27, line: 116, baseType: !167, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !247, file: !27, line: 117, baseType: !167, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !247, file: !27, line: 118, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !256, line: 52, baseType: !168)
!256 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !247, file: !27, line: 119, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !97, line: 58, baseType: !259)
!259 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !247, file: !27, line: 120, baseType: !167, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !247, file: !27, line: 121, baseType: !95, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !247, file: !27, line: 122, baseType: !95, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !247, file: !27, line: 123, baseType: !264, size: 8, align: 8)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !97, line: 52, baseType: !265)
!265 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !247, file: !27, line: 124, baseType: !125, size: 32, align: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !198, file: !27, line: 190, baseType: !125, size: 32, align: 32, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !198, file: !27, line: 191, baseType: !125, size: 32, align: 32, offset: 480)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !198, file: !27, line: 194, baseType: !244, size: 32, align: 32, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !198, file: !27, line: 195, baseType: !246, size: 64, align: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !198, file: !27, line: 196, baseType: !125, size: 32, align: 32, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !198, file: !27, line: 197, baseType: !125, size: 32, align: 32, offset: 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !198, file: !27, line: 201, baseType: !191, size: 64, align: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !198, file: !27, line: 202, baseType: !107, size: 32, align: 32, offset: 768)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !198, file: !27, line: 203, baseType: !204, size: 64, align: 64, offset: 832)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !198, file: !27, line: 204, baseType: !204, size: 64, align: 64, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !27, line: 205, baseType: !95, size: 64, align: 64, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !198, file: !27, line: 206, baseType: !125, size: 32, align: 32, offset: 1024)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !198, file: !27, line: 210, baseType: !280, size: 64, align: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !27, line: 41, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !196, !95, !106}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !176, file: !86, line: 62, baseType: !285, size: 64, align: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !54, line: 41, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !54, line: 97, size: 896, align: 64, elements: !288)
!288 = !{!289, !290, !419, !420, !425, !426, !427, !428, !429, !438, !439, !440, !444, !445, !446, !447, !448, !449, !450, !451}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !287, file: !54, line: 100, baseType: !107, size: 32, align: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !287, file: !54, line: 101, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !54, line: 42, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !54, line: 131, size: 512, align: 64, elements: !294)
!294 = !{!295, !314, !318, !324, !328, !406, !410, !415}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !293, file: !54, line: 133, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !285, !95, !300, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !54, line: 75, baseType: !53)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !256, line: 66, baseType: !168)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !305, line: 42, baseType: !306)
!305 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !305, line: 44, size: 128, align: 64, elements: !307)
!307 = !{!308, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !306, file: !305, line: 46, baseType: !309, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !310, line: 36, baseType: !311)
!310 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !256, line: 45, baseType: !126)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !306, file: !305, line: 47, baseType: !107, size: 32, align: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !306, file: !305, line: 48, baseType: !95, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !293, file: !54, line: 138, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!299, !285, !204, !300, !301, !302}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !293, file: !54, line: 143, baseType: !319, size: 64, align: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!299, !285, !322, !323, !302}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !256, line: 51, baseType: !120)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !54, line: 82, baseType: !60)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !293, file: !54, line: 147, baseType: !325, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!299, !285, !302}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !293, file: !54, line: 149, baseType: !329, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !285, !405}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !66, line: 64, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !66, line: 171, size: 768, align: 64, elements: !335)
!335 = !{!336, !337, !353, !382, !383, !387, !388, !389, !390, !398, !399, !400, !401}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !334, file: !66, line: 174, baseType: !109, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !334, file: !66, line: 175, baseType: !338, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !66, line: 77, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !66, line: 196, size: 192, align: 64, elements: !341)
!341 = !{!342, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !340, file: !66, line: 198, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !109}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !340, file: !66, line: 199, baseType: !343, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !340, file: !66, line: 200, baseType: !348, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !109, !332, !351, !352}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !334, file: !66, line: 177, baseType: !354, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !66, line: 130, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !66, line: 214, size: 384, align: 64, elements: !358)
!358 = !{!359, !364, !368, !372, !376, !377}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !357, file: !66, line: 216, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!106, !332, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !357, file: !66, line: 218, baseType: !365, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!106, !332}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !357, file: !66, line: 219, baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!106, !332, !134, !109}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !357, file: !66, line: 222, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !332}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !357, file: !66, line: 226, baseType: !134, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !357, file: !66, line: 227, baseType: !378, size: 64, align: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !66, line: 212, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !334, file: !66, line: 178, baseType: !125, size: 32, align: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !334, file: !66, line: 180, baseType: !384, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !66, line: 48, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !66, line: 48, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !334, file: !66, line: 182, baseType: !107, size: 32, align: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !66, line: 183, baseType: !125, size: 32, align: 32, offset: 352)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !334, file: !66, line: 184, baseType: !125, size: 32, align: 32, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !334, file: !66, line: 186, baseType: !391, size: 64, align: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !393, line: 37, baseType: !394)
!393 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !393, line: 39, size: 128, align: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !394, file: !393, line: 41, baseType: !109, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !393, line: 42, baseType: !391, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !334, file: !66, line: 188, baseType: !332, size: 64, align: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !66, line: 189, baseType: !332, size: 64, align: 64, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !66, line: 191, baseType: !153, size: 64, align: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !334, file: !66, line: 193, baseType: !402, size: 64, align: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !66, line: 65, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !66, line: 65, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !66, line: 39, baseType: !65)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !293, file: !54, line: 151, baseType: !407, size: 64, align: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !285}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !293, file: !54, line: 152, baseType: !411, size: 64, align: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!299, !285, !414, !302}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !54, line: 95, baseType: !74)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !293, file: !54, line: 155, baseType: !416, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!414, !285}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !287, file: !54, line: 103, baseType: !95, size: 64, align: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !287, file: !54, line: 104, baseType: !421, size: 64, align: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !422, line: 77, baseType: !423)
!422 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !422, line: 77, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !287, file: !54, line: 105, baseType: !421, size: 64, align: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !287, file: !54, line: 106, baseType: !95, size: 64, align: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !287, file: !54, line: 107, baseType: !125, size: 32, align: 32, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !287, file: !54, line: 109, baseType: !300, size: 64, align: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !287, file: !54, line: 110, baseType: !430, size: 64, align: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !432, line: 39, baseType: !433)
!432 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !432, line: 41, size: 192, align: 64, elements: !434)
!434 = !{!435, !436, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !433, file: !432, line: 43, baseType: !95, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !433, file: !432, line: 44, baseType: !300, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !433, file: !432, line: 45, baseType: !300, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !287, file: !54, line: 111, baseType: !430, size: 64, align: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !287, file: !54, line: 112, baseType: !430, size: 64, align: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !287, file: !54, line: 113, baseType: !441, size: 48, align: 8, offset: 704)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 48, align: 8, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 6)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !287, file: !54, line: 117, baseType: !125, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !287, file: !54, line: 118, baseType: !125, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !287, file: !54, line: 119, baseType: !125, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !287, file: !54, line: 120, baseType: !125, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !287, file: !54, line: 121, baseType: !125, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !287, file: !54, line: 122, baseType: !125, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !287, file: !54, line: 124, baseType: !109, size: 64, align: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !287, file: !54, line: 125, baseType: !109, size: 64, align: 64, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !176, file: !86, line: 63, baseType: !108, size: 32, align: 32, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !176, file: !86, line: 64, baseType: !108, size: 32, align: 32, offset: 544)
!454 = distinct !DIGlobalVariable(name: "last_errors", scope: !0, file: !173, line: 38, type: !430, isLocal: true, isDefinition: true, variable: %struct._GString** @last_errors)
!455 = distinct !DIGlobalVariable(name: "last_invalid_modules", scope: !0, file: !173, line: 39, type: !391, isLocal: true, isDefinition: true, variable: %struct._GSList** @last_invalid_modules)
!456 = distinct !DIGlobalVariable(name: "fe_initialized", scope: !0, file: !173, line: 40, type: !108, isLocal: true, isDefinition: true, variable: i32* @fe_initialized)
!457 = distinct !DIGlobalVariable(name: "config_changed", scope: !0, file: !173, line: 41, type: !108, isLocal: true, isDefinition: true, variable: i32* @config_changed)
!458 = distinct !DIGlobalVariable(name: "settings", scope: !0, file: !173, line: 44, type: !191, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @settings)
!459 = distinct !DIGlobalVariable(name: "timeout_tag", scope: !0, file: !173, line: 45, type: !108, isLocal: true, isDefinition: true, variable: i32* @timeout_tag)
!460 = distinct !DIGlobalVariable(name: "config_last_modifycounter", scope: !0, file: !173, line: 47, type: !108, isLocal: true, isDefinition: true, variable: i32* @config_last_modifycounter)
!461 = distinct !DIGlobalVariable(name: "config_last_mtime", scope: !0, file: !173, line: 48, type: !462, isLocal: true, isDefinition: true, variable: i64* @config_last_mtime)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !463, line: 75, baseType: !464)
!463 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !465, line: 139, baseType: !120)
!465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!466 = distinct !DIGlobalVariable(name: "config_last_size", scope: !0, file: !173, line: 49, type: !120, isLocal: true, isDefinition: true, variable: i64* @config_last_size)
!467 = distinct !DIGlobalVariable(name: "config_last_checksum", scope: !0, file: !173, line: 50, type: !126, isLocal: true, isDefinition: true, variable: i32* @config_last_checksum)
!468 = distinct !DIGlobalVariable(name: "user_settings_changed", scope: !0, file: !173, line: 42, type: !126, isLocal: true, isDefinition: true, variable: i32* @user_settings_changed)
!469 = !{i32 2, !"Dwarf Version", i32 4}
!470 = !{i32 2, !"Debug Info Version", i32 3}
!471 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!472 = distinct !DISubprogram(name: "settings_get_str", scope: !173, file: !173, line: 87, type: !473, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!99, !99}
!475 = !{}
!476 = !DILocalVariable(name: "key", arg: 1, scope: !472, file: !173, line: 87, type: !99)
!477 = !DIExpression()
!478 = !DILocation(line: 87, column: 42, scope: !472)
!479 = !DILocation(line: 89, column: 31, scope: !472)
!480 = !DILocation(line: 89, column: 9, scope: !472)
!481 = !DILocation(line: 89, column: 2, scope: !472)
!482 = distinct !DISubprogram(name: "settings_get_str_type", scope: !173, file: !173, line: 72, type: !483, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!483 = !DISubroutineType(types: !484)
!484 = !{!99, !99, !157}
!485 = !DILocalVariable(name: "key", arg: 1, scope: !482, file: !173, line: 72, type: !99)
!486 = !DILocation(line: 72, column: 35, scope: !482)
!487 = !DILocalVariable(name: "type", arg: 2, scope: !482, file: !173, line: 72, type: !157)
!488 = !DILocation(line: 72, column: 52, scope: !482)
!489 = !DILocalVariable(name: "rec", scope: !482, file: !173, line: 74, type: !147)
!490 = !DILocation(line: 74, column: 16, scope: !482)
!491 = !DILocalVariable(name: "node", scope: !482, file: !173, line: 75, type: !183)
!492 = !DILocation(line: 75, column: 15, scope: !482)
!493 = !DILocation(line: 77, column: 21, scope: !482)
!494 = !DILocation(line: 77, column: 26, scope: !482)
!495 = !DILocation(line: 77, column: 8, scope: !482)
!496 = !DILocation(line: 77, column: 6, scope: !482)
!497 = !DILocation(line: 78, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !482, file: !173, line: 78, column: 6)
!499 = !DILocation(line: 78, column: 10, scope: !498)
!500 = !DILocation(line: 78, column: 6, scope: !482)
!501 = !DILocation(line: 78, column: 18, scope: !502)
!502 = !DILexicalBlockFile(scope: !498, file: !173, discriminator: 1)
!503 = !DILocation(line: 80, column: 30, scope: !482)
!504 = !DILocation(line: 80, column: 9, scope: !482)
!505 = !DILocation(line: 80, column: 7, scope: !482)
!506 = !DILocation(line: 81, column: 9, scope: !482)
!507 = !DILocation(line: 81, column: 14, scope: !482)
!508 = !DILocation(line: 81, column: 9, scope: !509)
!509 = !DILexicalBlockFile(scope: !482, file: !173, discriminator: 1)
!510 = !DILocation(line: 81, column: 50, scope: !511)
!511 = !DILexicalBlockFile(scope: !482, file: !173, discriminator: 2)
!512 = !DILocation(line: 81, column: 62, scope: !511)
!513 = !DILocation(line: 81, column: 68, scope: !511)
!514 = !DILocation(line: 81, column: 73, scope: !511)
!515 = !DILocation(line: 81, column: 30, scope: !511)
!516 = !DILocation(line: 81, column: 9, scope: !511)
!517 = !DILocation(line: 81, column: 9, scope: !518)
!518 = !DILexicalBlockFile(scope: !482, file: !173, discriminator: 3)
!519 = !DILocation(line: 81, column: 7, scope: !518)
!520 = !DILocation(line: 83, column: 9, scope: !482)
!521 = !DILocation(line: 83, column: 14, scope: !482)
!522 = !DILocation(line: 83, column: 23, scope: !509)
!523 = !DILocation(line: 83, column: 28, scope: !509)
!524 = !DILocation(line: 83, column: 42, scope: !509)
!525 = !DILocation(line: 83, column: 9, scope: !509)
!526 = !DILocation(line: 84, column: 23, scope: !482)
!527 = !DILocation(line: 84, column: 29, scope: !482)
!528 = !DILocation(line: 84, column: 34, scope: !482)
!529 = !DILocation(line: 84, column: 39, scope: !482)
!530 = !DILocation(line: 84, column: 53, scope: !482)
!531 = !DILocation(line: 84, column: 3, scope: !482)
!532 = !DILocation(line: 83, column: 9, scope: !511)
!533 = !DILocation(line: 83, column: 9, scope: !518)
!534 = !DILocation(line: 83, column: 2, scope: !518)
!535 = !DILocation(line: 85, column: 1, scope: !482)
!536 = distinct !DISubprogram(name: "settings_get_int", scope: !173, file: !173, line: 92, type: !537, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!537 = !DISubroutineType(types: !538)
!538 = !{!108, !99}
!539 = !DILocalVariable(name: "key", arg: 1, scope: !536, file: !173, line: 92, type: !99)
!540 = !DILocation(line: 92, column: 34, scope: !536)
!541 = !DILocalVariable(name: "rec", scope: !536, file: !173, line: 94, type: !147)
!542 = !DILocation(line: 94, column: 16, scope: !536)
!543 = !DILocalVariable(name: "node", scope: !536, file: !173, line: 95, type: !183)
!544 = !DILocation(line: 95, column: 15, scope: !536)
!545 = !DILocation(line: 97, column: 21, scope: !536)
!546 = !DILocation(line: 97, column: 8, scope: !536)
!547 = !DILocation(line: 97, column: 6, scope: !536)
!548 = !DILocation(line: 98, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !536, file: !173, line: 98, column: 6)
!550 = !DILocation(line: 98, column: 10, scope: !549)
!551 = !DILocation(line: 98, column: 6, scope: !536)
!552 = !DILocation(line: 98, column: 18, scope: !553)
!553 = !DILexicalBlockFile(scope: !549, file: !173, discriminator: 1)
!554 = !DILocation(line: 100, column: 30, scope: !536)
!555 = !DILocation(line: 100, column: 9, scope: !536)
!556 = !DILocation(line: 100, column: 7, scope: !536)
!557 = !DILocation(line: 101, column: 9, scope: !536)
!558 = !DILocation(line: 101, column: 14, scope: !536)
!559 = !DILocation(line: 101, column: 9, scope: !560)
!560 = !DILexicalBlockFile(scope: !536, file: !173, discriminator: 1)
!561 = !DILocation(line: 101, column: 50, scope: !562)
!562 = !DILexicalBlockFile(scope: !536, file: !173, discriminator: 2)
!563 = !DILocation(line: 101, column: 62, scope: !562)
!564 = !DILocation(line: 101, column: 68, scope: !562)
!565 = !DILocation(line: 101, column: 73, scope: !562)
!566 = !DILocation(line: 101, column: 30, scope: !562)
!567 = !DILocation(line: 101, column: 9, scope: !562)
!568 = !DILocation(line: 101, column: 9, scope: !569)
!569 = !DILexicalBlockFile(scope: !536, file: !173, discriminator: 3)
!570 = !DILocation(line: 101, column: 7, scope: !569)
!571 = !DILocation(line: 103, column: 9, scope: !536)
!572 = !DILocation(line: 103, column: 14, scope: !536)
!573 = !DILocation(line: 103, column: 23, scope: !560)
!574 = !DILocation(line: 103, column: 28, scope: !560)
!575 = !DILocation(line: 103, column: 42, scope: !560)
!576 = !DILocation(line: 103, column: 9, scope: !560)
!577 = !DILocation(line: 104, column: 23, scope: !536)
!578 = !DILocation(line: 104, column: 29, scope: !536)
!579 = !DILocation(line: 104, column: 34, scope: !536)
!580 = !DILocation(line: 104, column: 39, scope: !536)
!581 = !DILocation(line: 104, column: 53, scope: !536)
!582 = !DILocation(line: 104, column: 3, scope: !536)
!583 = !DILocation(line: 103, column: 9, scope: !562)
!584 = !DILocation(line: 103, column: 9, scope: !569)
!585 = !DILocation(line: 103, column: 2, scope: !569)
!586 = !DILocation(line: 105, column: 1, scope: !536)
!587 = distinct !DISubprogram(name: "settings_get", scope: !173, file: !173, line: 52, type: !588, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!588 = !DISubroutineType(types: !589)
!589 = !{!147, !99, !157}
!590 = !DILocalVariable(name: "key", arg: 1, scope: !587, file: !173, line: 52, type: !99)
!591 = !DILocation(line: 52, column: 47, scope: !587)
!592 = !DILocalVariable(name: "type", arg: 2, scope: !587, file: !173, line: 52, type: !157)
!593 = !DILocation(line: 52, column: 64, scope: !587)
!594 = !DILocalVariable(name: "rec", scope: !587, file: !173, line: 54, type: !147)
!595 = !DILocation(line: 54, column: 16, scope: !587)
!596 = !DILocation(line: 56, column: 2, scope: !587)
!597 = distinct !{!597, !596}
!598 = !DILocation(line: 56, column: 10, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !173, discriminator: 1)
!600 = distinct !DILexicalBlock(scope: !601, file: !173, line: 56, column: 10)
!601 = distinct !DILexicalBlock(scope: !587, file: !173, line: 56, column: 4)
!602 = !DILocation(line: 56, column: 14, scope: !599)
!603 = !DILocation(line: 56, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !173, discriminator: 2)
!605 = distinct !DILexicalBlock(scope: !600, file: !173, line: 56, column: 3)
!606 = !DILocation(line: 56, column: 14, scope: !607)
!607 = !DILexicalBlockFile(scope: !608, file: !173, discriminator: 3)
!608 = distinct !DILexicalBlock(scope: !600, file: !173, line: 56, column: 12)
!609 = !DILocation(line: 56, column: 98, scope: !607)
!610 = !DILocation(line: 56, column: 7, scope: !611)
!611 = !DILexicalBlockFile(scope: !601, file: !173, discriminator: 4)
!612 = !DILocation(line: 58, column: 28, scope: !587)
!613 = !DILocation(line: 58, column: 38, scope: !587)
!614 = !DILocation(line: 58, column: 8, scope: !587)
!615 = !DILocation(line: 58, column: 6, scope: !587)
!616 = !DILocation(line: 59, column: 6, scope: !617)
!617 = distinct !DILexicalBlock(scope: !587, file: !173, line: 59, column: 6)
!618 = !DILocation(line: 59, column: 10, scope: !617)
!619 = !DILocation(line: 59, column: 6, scope: !587)
!620 = !DILocation(line: 60, column: 77, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !173, line: 59, column: 18)
!622 = !DILocation(line: 60, column: 3, scope: !621)
!623 = !DILocation(line: 61, column: 3, scope: !621)
!624 = !DILocation(line: 63, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !587, file: !173, line: 63, column: 6)
!626 = !DILocation(line: 63, column: 11, scope: !625)
!627 = !DILocation(line: 63, column: 31, scope: !625)
!628 = !DILocation(line: 63, column: 34, scope: !629)
!629 = !DILexicalBlockFile(scope: !625, file: !173, discriminator: 1)
!630 = !DILocation(line: 63, column: 39, scope: !629)
!631 = !DILocation(line: 63, column: 47, scope: !629)
!632 = !DILocation(line: 63, column: 44, scope: !629)
!633 = !DILocation(line: 63, column: 6, scope: !629)
!634 = !DILocation(line: 64, column: 80, scope: !635)
!635 = distinct !DILexicalBlock(scope: !625, file: !173, line: 63, column: 53)
!636 = !DILocation(line: 64, column: 3, scope: !635)
!637 = !DILocation(line: 65, column: 3, scope: !635)
!638 = !DILocation(line: 68, column: 9, scope: !587)
!639 = !DILocation(line: 68, column: 2, scope: !587)
!640 = !DILocation(line: 69, column: 1, scope: !587)
!641 = distinct !DISubprogram(name: "settings_get_bool", scope: !173, file: !173, line: 107, type: !537, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!642 = !DILocalVariable(name: "key", arg: 1, scope: !641, file: !173, line: 107, type: !99)
!643 = !DILocation(line: 107, column: 35, scope: !641)
!644 = !DILocalVariable(name: "rec", scope: !641, file: !173, line: 109, type: !147)
!645 = !DILocation(line: 109, column: 16, scope: !641)
!646 = !DILocalVariable(name: "node", scope: !641, file: !173, line: 110, type: !183)
!647 = !DILocation(line: 110, column: 15, scope: !641)
!648 = !DILocation(line: 112, column: 21, scope: !641)
!649 = !DILocation(line: 112, column: 8, scope: !641)
!650 = !DILocation(line: 112, column: 6, scope: !641)
!651 = !DILocation(line: 113, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !641, file: !173, line: 113, column: 6)
!653 = !DILocation(line: 113, column: 10, scope: !652)
!654 = !DILocation(line: 113, column: 6, scope: !641)
!655 = !DILocation(line: 113, column: 18, scope: !656)
!656 = !DILexicalBlockFile(scope: !652, file: !173, discriminator: 1)
!657 = !DILocation(line: 115, column: 30, scope: !641)
!658 = !DILocation(line: 115, column: 9, scope: !641)
!659 = !DILocation(line: 115, column: 7, scope: !641)
!660 = !DILocation(line: 116, column: 9, scope: !641)
!661 = !DILocation(line: 116, column: 14, scope: !641)
!662 = !DILocation(line: 116, column: 9, scope: !663)
!663 = !DILexicalBlockFile(scope: !641, file: !173, discriminator: 1)
!664 = !DILocation(line: 116, column: 50, scope: !665)
!665 = !DILexicalBlockFile(scope: !641, file: !173, discriminator: 2)
!666 = !DILocation(line: 116, column: 62, scope: !665)
!667 = !DILocation(line: 116, column: 68, scope: !665)
!668 = !DILocation(line: 116, column: 73, scope: !665)
!669 = !DILocation(line: 116, column: 30, scope: !665)
!670 = !DILocation(line: 116, column: 9, scope: !665)
!671 = !DILocation(line: 116, column: 9, scope: !672)
!672 = !DILexicalBlockFile(scope: !641, file: !173, discriminator: 3)
!673 = !DILocation(line: 116, column: 7, scope: !672)
!674 = !DILocation(line: 118, column: 9, scope: !641)
!675 = !DILocation(line: 118, column: 14, scope: !641)
!676 = !DILocation(line: 118, column: 23, scope: !663)
!677 = !DILocation(line: 118, column: 28, scope: !663)
!678 = !DILocation(line: 118, column: 42, scope: !663)
!679 = !DILocation(line: 118, column: 9, scope: !663)
!680 = !DILocation(line: 119, column: 24, scope: !641)
!681 = !DILocation(line: 119, column: 30, scope: !641)
!682 = !DILocation(line: 119, column: 35, scope: !641)
!683 = !DILocation(line: 119, column: 40, scope: !641)
!684 = !DILocation(line: 119, column: 54, scope: !641)
!685 = !DILocation(line: 119, column: 3, scope: !641)
!686 = !DILocation(line: 118, column: 9, scope: !665)
!687 = !DILocation(line: 118, column: 9, scope: !672)
!688 = !DILocation(line: 118, column: 2, scope: !672)
!689 = !DILocation(line: 120, column: 1, scope: !641)
!690 = distinct !DISubprogram(name: "settings_get_time", scope: !173, file: !173, line: 122, type: !537, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!691 = !DILocalVariable(name: "key", arg: 1, scope: !690, file: !173, line: 122, type: !99)
!692 = !DILocation(line: 122, column: 35, scope: !690)
!693 = !DILocalVariable(name: "str", scope: !690, file: !173, line: 124, type: !99)
!694 = !DILocation(line: 124, column: 14, scope: !690)
!695 = !DILocalVariable(name: "msecs", scope: !690, file: !173, line: 125, type: !108)
!696 = !DILocation(line: 125, column: 6, scope: !690)
!697 = !DILocation(line: 127, column: 30, scope: !690)
!698 = !DILocation(line: 127, column: 8, scope: !690)
!699 = !DILocation(line: 127, column: 6, scope: !690)
!700 = !DILocation(line: 128, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !690, file: !173, line: 128, column: 6)
!702 = !DILocation(line: 128, column: 10, scope: !701)
!703 = !DILocation(line: 128, column: 17, scope: !701)
!704 = !DILocation(line: 128, column: 41, scope: !705)
!705 = !DILexicalBlockFile(scope: !701, file: !173, discriminator: 1)
!706 = !DILocation(line: 128, column: 21, scope: !705)
!707 = !DILocation(line: 128, column: 6, scope: !705)
!708 = !DILocation(line: 129, column: 90, scope: !701)
!709 = !DILocation(line: 129, column: 95, scope: !701)
!710 = !DILocation(line: 129, column: 3, scope: !701)
!711 = !DILocation(line: 130, column: 9, scope: !690)
!712 = !DILocation(line: 130, column: 13, scope: !690)
!713 = !DILocation(line: 130, column: 9, scope: !714)
!714 = !DILexicalBlockFile(scope: !690, file: !173, discriminator: 1)
!715 = !DILocation(line: 130, column: 26, scope: !716)
!716 = !DILexicalBlockFile(scope: !690, file: !173, discriminator: 2)
!717 = !DILocation(line: 130, column: 9, scope: !716)
!718 = !DILocation(line: 130, column: 9, scope: !719)
!719 = !DILexicalBlockFile(scope: !690, file: !173, discriminator: 3)
!720 = !DILocation(line: 130, column: 2, scope: !719)
!721 = distinct !DISubprogram(name: "settings_get_level", scope: !173, file: !173, line: 133, type: !537, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!722 = !DILocalVariable(name: "key", arg: 1, scope: !721, file: !173, line: 133, type: !99)
!723 = !DILocation(line: 133, column: 36, scope: !721)
!724 = !DILocalVariable(name: "str", scope: !721, file: !173, line: 135, type: !99)
!725 = !DILocation(line: 135, column: 14, scope: !721)
!726 = !DILocation(line: 137, column: 30, scope: !721)
!727 = !DILocation(line: 137, column: 8, scope: !721)
!728 = !DILocation(line: 137, column: 6, scope: !721)
!729 = !DILocation(line: 138, column: 9, scope: !721)
!730 = !DILocation(line: 138, column: 13, scope: !721)
!731 = !DILocation(line: 138, column: 9, scope: !732)
!732 = !DILexicalBlockFile(scope: !721, file: !173, discriminator: 1)
!733 = !DILocation(line: 138, column: 37, scope: !734)
!734 = !DILexicalBlockFile(scope: !721, file: !173, discriminator: 2)
!735 = !DILocation(line: 138, column: 26, scope: !734)
!736 = !DILocation(line: 138, column: 9, scope: !734)
!737 = !DILocation(line: 138, column: 9, scope: !738)
!738 = !DILexicalBlockFile(scope: !721, file: !173, discriminator: 3)
!739 = !DILocation(line: 138, column: 2, scope: !738)
!740 = distinct !DISubprogram(name: "settings_get_size", scope: !173, file: !173, line: 141, type: !537, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!741 = !DILocalVariable(name: "key", arg: 1, scope: !740, file: !173, line: 141, type: !99)
!742 = !DILocation(line: 141, column: 35, scope: !740)
!743 = !DILocalVariable(name: "str", scope: !740, file: !173, line: 143, type: !99)
!744 = !DILocation(line: 143, column: 14, scope: !740)
!745 = !DILocalVariable(name: "bytes", scope: !740, file: !173, line: 144, type: !108)
!746 = !DILocation(line: 144, column: 6, scope: !740)
!747 = !DILocation(line: 146, column: 30, scope: !740)
!748 = !DILocation(line: 146, column: 8, scope: !740)
!749 = !DILocation(line: 146, column: 6, scope: !740)
!750 = !DILocation(line: 147, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !740, file: !173, line: 147, column: 6)
!752 = !DILocation(line: 147, column: 10, scope: !751)
!753 = !DILocation(line: 147, column: 17, scope: !751)
!754 = !DILocation(line: 147, column: 32, scope: !755)
!755 = !DILexicalBlockFile(scope: !751, file: !173, discriminator: 1)
!756 = !DILocation(line: 147, column: 21, scope: !755)
!757 = !DILocation(line: 147, column: 6, scope: !755)
!758 = !DILocation(line: 148, column: 90, scope: !751)
!759 = !DILocation(line: 148, column: 95, scope: !751)
!760 = !DILocation(line: 148, column: 3, scope: !751)
!761 = !DILocation(line: 149, column: 9, scope: !740)
!762 = !DILocation(line: 149, column: 13, scope: !740)
!763 = !DILocation(line: 149, column: 9, scope: !764)
!764 = !DILexicalBlockFile(scope: !740, file: !173, discriminator: 1)
!765 = !DILocation(line: 149, column: 26, scope: !766)
!766 = !DILexicalBlockFile(scope: !740, file: !173, discriminator: 2)
!767 = !DILocation(line: 149, column: 9, scope: !766)
!768 = !DILocation(line: 149, column: 9, scope: !769)
!769 = !DILexicalBlockFile(scope: !740, file: !173, discriminator: 3)
!770 = !DILocation(line: 149, column: 2, scope: !769)
!771 = distinct !DISubprogram(name: "settings_get_choice", scope: !173, file: !173, line: 152, type: !537, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!772 = !DILocalVariable(name: "key", arg: 1, scope: !771, file: !173, line: 152, type: !99)
!773 = !DILocation(line: 152, column: 37, scope: !771)
!774 = !DILocalVariable(name: "rec", scope: !771, file: !173, line: 154, type: !147)
!775 = !DILocation(line: 154, column: 16, scope: !771)
!776 = !DILocalVariable(name: "node", scope: !771, file: !173, line: 155, type: !183)
!777 = !DILocation(line: 155, column: 15, scope: !771)
!778 = !DILocalVariable(name: "str", scope: !771, file: !173, line: 156, type: !153)
!779 = !DILocation(line: 156, column: 8, scope: !771)
!780 = !DILocalVariable(name: "index", scope: !771, file: !173, line: 157, type: !108)
!781 = !DILocation(line: 157, column: 6, scope: !771)
!782 = !DILocation(line: 159, column: 21, scope: !771)
!783 = !DILocation(line: 159, column: 8, scope: !771)
!784 = !DILocation(line: 159, column: 6, scope: !771)
!785 = !DILocation(line: 160, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !771, file: !173, line: 160, column: 6)
!787 = !DILocation(line: 160, column: 10, scope: !786)
!788 = !DILocation(line: 160, column: 6, scope: !771)
!789 = !DILocation(line: 160, column: 18, scope: !790)
!790 = !DILexicalBlockFile(scope: !786, file: !173, discriminator: 1)
!791 = !DILocation(line: 162, column: 30, scope: !771)
!792 = !DILocation(line: 162, column: 9, scope: !771)
!793 = !DILocation(line: 162, column: 7, scope: !771)
!794 = !DILocation(line: 163, column: 9, scope: !771)
!795 = !DILocation(line: 163, column: 14, scope: !771)
!796 = !DILocation(line: 163, column: 9, scope: !797)
!797 = !DILexicalBlockFile(scope: !771, file: !173, discriminator: 1)
!798 = !DILocation(line: 163, column: 50, scope: !799)
!799 = !DILexicalBlockFile(scope: !771, file: !173, discriminator: 2)
!800 = !DILocation(line: 163, column: 62, scope: !799)
!801 = !DILocation(line: 163, column: 68, scope: !799)
!802 = !DILocation(line: 163, column: 73, scope: !799)
!803 = !DILocation(line: 163, column: 30, scope: !799)
!804 = !DILocation(line: 163, column: 9, scope: !799)
!805 = !DILocation(line: 163, column: 9, scope: !806)
!806 = !DILexicalBlockFile(scope: !771, file: !173, discriminator: 3)
!807 = !DILocation(line: 163, column: 7, scope: !806)
!808 = !DILocation(line: 165, column: 8, scope: !771)
!809 = !DILocation(line: 165, column: 13, scope: !771)
!810 = !DILocation(line: 165, column: 22, scope: !797)
!811 = !DILocation(line: 165, column: 27, scope: !797)
!812 = !DILocation(line: 165, column: 41, scope: !797)
!813 = !DILocation(line: 165, column: 8, scope: !797)
!814 = !DILocation(line: 166, column: 23, scope: !771)
!815 = !DILocation(line: 166, column: 29, scope: !771)
!816 = !DILocation(line: 166, column: 34, scope: !771)
!817 = !DILocation(line: 166, column: 39, scope: !771)
!818 = !DILocation(line: 166, column: 53, scope: !771)
!819 = !DILocation(line: 166, column: 3, scope: !771)
!820 = !DILocation(line: 165, column: 8, scope: !799)
!821 = !DILocation(line: 165, column: 8, scope: !806)
!822 = !DILocation(line: 165, column: 6, scope: !806)
!823 = !DILocation(line: 168, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !771, file: !173, line: 168, column: 6)
!825 = !DILocation(line: 168, column: 10, scope: !824)
!826 = !DILocation(line: 168, column: 17, scope: !824)
!827 = !DILocation(line: 168, column: 43, scope: !828)
!828 = !DILexicalBlockFile(scope: !824, file: !173, discriminator: 1)
!829 = !DILocation(line: 168, column: 48, scope: !828)
!830 = !DILocation(line: 168, column: 57, scope: !828)
!831 = !DILocation(line: 168, column: 29, scope: !828)
!832 = !DILocation(line: 168, column: 27, scope: !828)
!833 = !DILocation(line: 168, column: 63, scope: !828)
!834 = !DILocation(line: 168, column: 6, scope: !828)
!835 = !DILocation(line: 169, column: 10, scope: !824)
!836 = !DILocation(line: 169, column: 15, scope: !824)
!837 = !DILocation(line: 169, column: 29, scope: !824)
!838 = !DILocation(line: 169, column: 3, scope: !824)
!839 = !DILocation(line: 171, column: 9, scope: !771)
!840 = !DILocation(line: 171, column: 2, scope: !771)
!841 = !DILocation(line: 172, column: 1, scope: !771)
!842 = distinct !DISubprogram(name: "settings_get_print", scope: !173, file: !173, line: 174, type: !843, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!843 = !DISubroutineType(types: !844)
!844 = !{!153, !147}
!845 = !DILocalVariable(name: "rec", arg: 1, scope: !842, file: !173, line: 174, type: !147)
!846 = !DILocation(line: 174, column: 40, scope: !842)
!847 = !DILocalVariable(name: "value", scope: !842, file: !173, line: 176, type: !153)
!848 = !DILocation(line: 176, column: 8, scope: !842)
!849 = !DILocation(line: 178, column: 9, scope: !842)
!850 = !DILocation(line: 178, column: 14, scope: !842)
!851 = !DILocation(line: 178, column: 2, scope: !842)
!852 = !DILocation(line: 180, column: 53, scope: !853)
!853 = distinct !DILexicalBlock(scope: !842, file: !173, line: 178, column: 20)
!854 = !DILocation(line: 180, column: 58, scope: !853)
!855 = !DILocation(line: 180, column: 33, scope: !853)
!856 = !DILocation(line: 180, column: 20, scope: !853)
!857 = !DILocation(line: 180, column: 25, scope: !853)
!858 = !DILocation(line: 180, column: 11, scope: !859)
!859 = !DILexicalBlockFile(scope: !853, file: !173, discriminator: 1)
!860 = !DILocation(line: 180, column: 9, scope: !853)
!861 = !DILocation(line: 181, column: 3, scope: !853)
!862 = !DILocation(line: 183, column: 38, scope: !853)
!863 = !DILocation(line: 183, column: 43, scope: !853)
!864 = !DILocation(line: 183, column: 20, scope: !853)
!865 = !DILocation(line: 183, column: 11, scope: !859)
!866 = !DILocation(line: 183, column: 9, scope: !853)
!867 = !DILocation(line: 184, column: 3, scope: !853)
!868 = !DILocation(line: 186, column: 50, scope: !853)
!869 = !DILocation(line: 186, column: 55, scope: !853)
!870 = !DILocation(line: 186, column: 33, scope: !853)
!871 = !DILocation(line: 186, column: 11, scope: !859)
!872 = !DILocation(line: 186, column: 9, scope: !853)
!873 = !DILocation(line: 187, column: 3, scope: !853)
!874 = !DILocation(line: 193, column: 37, scope: !853)
!875 = !DILocation(line: 193, column: 42, scope: !853)
!876 = !DILocation(line: 193, column: 20, scope: !853)
!877 = !DILocation(line: 193, column: 11, scope: !859)
!878 = !DILocation(line: 193, column: 9, scope: !853)
!879 = !DILocation(line: 194, column: 3, scope: !853)
!880 = !DILocation(line: 196, column: 9, scope: !842)
!881 = !DILocation(line: 196, column: 2, scope: !842)
!882 = distinct !DISubprogram(name: "settings_add_str_module", scope: !173, file: !173, line: 249, type: !883, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !99, !99, !99, !99}
!885 = !DILocalVariable(name: "module", arg: 1, scope: !882, file: !173, line: 249, type: !99)
!886 = !DILocation(line: 249, column: 42, scope: !882)
!887 = !DILocalVariable(name: "section", arg: 2, scope: !882, file: !173, line: 249, type: !99)
!888 = !DILocation(line: 249, column: 62, scope: !882)
!889 = !DILocalVariable(name: "key", arg: 3, scope: !882, file: !173, line: 250, type: !99)
!890 = !DILocation(line: 250, column: 21, scope: !882)
!891 = !DILocalVariable(name: "def", arg: 4, scope: !882, file: !173, line: 250, type: !99)
!892 = !DILocation(line: 250, column: 38, scope: !882)
!893 = !DILocalVariable(name: "default_value", scope: !882, file: !173, line: 252, type: !159)
!894 = !DILocation(line: 252, column: 15, scope: !882)
!895 = !DILocation(line: 254, column: 2, scope: !882)
!896 = !DILocation(line: 255, column: 36, scope: !882)
!897 = !DILocation(line: 255, column: 27, scope: !882)
!898 = !DILocation(line: 255, column: 16, scope: !882)
!899 = !DILocation(line: 255, column: 25, scope: !882)
!900 = !DILocation(line: 256, column: 15, scope: !882)
!901 = !DILocation(line: 256, column: 23, scope: !882)
!902 = !DILocation(line: 256, column: 32, scope: !882)
!903 = !DILocation(line: 256, column: 2, scope: !882)
!904 = !DILocation(line: 257, column: 1, scope: !882)
!905 = distinct !DISubprogram(name: "settings_add", scope: !173, file: !173, line: 199, type: !906, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !99, !99, !99, !157, !908, !99}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!910 = !DILocalVariable(name: "module", arg: 1, scope: !905, file: !173, line: 199, type: !99)
!911 = !DILocation(line: 199, column: 38, scope: !905)
!912 = !DILocalVariable(name: "section", arg: 2, scope: !905, file: !173, line: 199, type: !99)
!913 = !DILocation(line: 199, column: 58, scope: !905)
!914 = !DILocalVariable(name: "key", arg: 3, scope: !905, file: !173, line: 200, type: !99)
!915 = !DILocation(line: 200, column: 17, scope: !905)
!916 = !DILocalVariable(name: "type", arg: 4, scope: !905, file: !173, line: 200, type: !157)
!917 = !DILocation(line: 200, column: 34, scope: !905)
!918 = !DILocalVariable(name: "default_value", arg: 5, scope: !905, file: !173, line: 201, type: !908)
!919 = !DILocation(line: 201, column: 25, scope: !905)
!920 = !DILocalVariable(name: "choices", arg: 6, scope: !905, file: !173, line: 202, type: !99)
!921 = !DILocation(line: 202, column: 17, scope: !905)
!922 = !DILocalVariable(name: "rec", scope: !905, file: !173, line: 204, type: !147)
!923 = !DILocation(line: 204, column: 16, scope: !905)
!924 = !DILocalVariable(name: "choices_vec", scope: !905, file: !173, line: 205, type: !166)
!925 = !DILocation(line: 205, column: 9, scope: !905)
!926 = !DILocation(line: 207, column: 2, scope: !905)
!927 = distinct !{!927, !926}
!928 = !DILocation(line: 207, column: 10, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !173, discriminator: 1)
!930 = distinct !DILexicalBlock(scope: !931, file: !173, line: 207, column: 10)
!931 = distinct !DILexicalBlock(scope: !905, file: !173, line: 207, column: 4)
!932 = !DILocation(line: 207, column: 14, scope: !929)
!933 = !DILocation(line: 207, column: 5, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !173, discriminator: 2)
!935 = distinct !DILexicalBlock(scope: !930, file: !173, line: 207, column: 3)
!936 = !DILocation(line: 207, column: 14, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !173, discriminator: 3)
!938 = distinct !DILexicalBlock(scope: !930, file: !173, line: 207, column: 12)
!939 = !DILocation(line: 207, column: 98, scope: !937)
!940 = !DILocation(line: 207, column: 109, scope: !941)
!941 = !DILexicalBlockFile(scope: !931, file: !173, discriminator: 4)
!942 = !DILocation(line: 208, column: 2, scope: !905)
!943 = distinct !{!943, !942}
!944 = !DILocation(line: 208, column: 10, scope: !945)
!945 = !DILexicalBlockFile(scope: !946, file: !173, discriminator: 1)
!946 = distinct !DILexicalBlock(scope: !947, file: !173, line: 208, column: 10)
!947 = distinct !DILexicalBlock(scope: !905, file: !173, line: 208, column: 4)
!948 = !DILocation(line: 208, column: 18, scope: !945)
!949 = !DILocation(line: 208, column: 5, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !173, discriminator: 2)
!951 = distinct !DILexicalBlock(scope: !946, file: !173, line: 208, column: 3)
!952 = !DILocation(line: 208, column: 14, scope: !953)
!953 = !DILexicalBlockFile(scope: !954, file: !173, discriminator: 3)
!954 = distinct !DILexicalBlock(scope: !946, file: !173, line: 208, column: 12)
!955 = !DILocation(line: 208, column: 102, scope: !953)
!956 = !DILocation(line: 208, column: 113, scope: !957)
!957 = !DILexicalBlockFile(scope: !947, file: !173, discriminator: 4)
!958 = !DILocation(line: 210, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !905, file: !173, line: 210, column: 6)
!960 = !DILocation(line: 210, column: 11, scope: !959)
!961 = !DILocation(line: 210, column: 6, scope: !905)
!962 = !DILocation(line: 211, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !173, line: 211, column: 7)
!964 = distinct !DILexicalBlock(scope: !959, file: !173, line: 210, column: 35)
!965 = !DILocation(line: 211, column: 15, scope: !963)
!966 = !DILocation(line: 211, column: 7, scope: !964)
!967 = !DILocation(line: 212, column: 93, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !173, line: 211, column: 23)
!969 = !DILocation(line: 212, column: 4, scope: !968)
!970 = !DILocation(line: 213, column: 4, scope: !968)
!971 = !DILocation(line: 216, column: 28, scope: !964)
!972 = !DILocation(line: 216, column: 17, scope: !964)
!973 = !DILocation(line: 216, column: 15, scope: !964)
!974 = !DILocation(line: 219, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !964, file: !173, line: 219, column: 7)
!976 = !DILocation(line: 219, column: 22, scope: !975)
!977 = !DILocation(line: 219, column: 28, scope: !975)
!978 = !DILocation(line: 219, column: 32, scope: !975)
!979 = !DILocation(line: 219, column: 35, scope: !980)
!980 = !DILexicalBlockFile(scope: !975, file: !173, discriminator: 1)
!981 = !DILocation(line: 219, column: 50, scope: !980)
!982 = !DILocation(line: 219, column: 73, scope: !980)
!983 = !DILocation(line: 219, column: 59, scope: !980)
!984 = !DILocation(line: 219, column: 56, scope: !980)
!985 = !DILocation(line: 219, column: 7, scope: !980)
!986 = !DILocation(line: 220, column: 107, scope: !987)
!987 = distinct !DILexicalBlock(scope: !975, file: !173, line: 219, column: 87)
!988 = !DILocation(line: 220, column: 4, scope: !987)
!989 = !DILocation(line: 221, column: 15, scope: !987)
!990 = !DILocation(line: 221, column: 4, scope: !987)
!991 = !DILocation(line: 222, column: 4, scope: !987)
!992 = !DILocation(line: 224, column: 2, scope: !964)
!993 = !DILocation(line: 226, column: 28, scope: !905)
!994 = !DILocation(line: 226, column: 38, scope: !905)
!995 = !DILocation(line: 226, column: 8, scope: !905)
!996 = !DILocation(line: 226, column: 6, scope: !905)
!997 = !DILocation(line: 227, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !905, file: !173, line: 227, column: 6)
!999 = !DILocation(line: 227, column: 10, scope: !998)
!1000 = !DILocation(line: 227, column: 6, scope: !905)
!1001 = !DILocation(line: 229, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !173, line: 229, column: 7)
!1003 = distinct !DILexicalBlock(scope: !998, file: !173, line: 227, column: 18)
!1004 = !DILocation(line: 229, column: 12, scope: !1002)
!1005 = !DILocation(line: 229, column: 20, scope: !1002)
!1006 = !DILocation(line: 229, column: 17, scope: !1002)
!1007 = !DILocation(line: 229, column: 7, scope: !1003)
!1008 = !DILocation(line: 230, column: 117, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !173, line: 229, column: 26)
!1010 = !DILocation(line: 230, column: 4, scope: !1009)
!1011 = !DILocation(line: 232, column: 4, scope: !1009)
!1012 = !DILocation(line: 234, column: 3, scope: !1003)
!1013 = !DILocation(line: 234, column: 8, scope: !1003)
!1014 = !DILocation(line: 234, column: 16, scope: !1003)
!1015 = !DILocation(line: 235, column: 2, scope: !1003)
!1016 = !DILocation(line: 236, column: 27, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !998, file: !173, line: 235, column: 9)
!1018 = !DILocation(line: 236, column: 10, scope: !1017)
!1019 = !DILocation(line: 236, column: 7, scope: !1017)
!1020 = !DILocation(line: 237, column: 3, scope: !1017)
!1021 = !DILocation(line: 237, column: 8, scope: !1017)
!1022 = !DILocation(line: 237, column: 17, scope: !1017)
!1023 = !DILocation(line: 238, column: 26, scope: !1017)
!1024 = !DILocation(line: 238, column: 17, scope: !1017)
!1025 = !DILocation(line: 238, column: 3, scope: !1017)
!1026 = !DILocation(line: 238, column: 8, scope: !1017)
!1027 = !DILocation(line: 238, column: 15, scope: !1017)
!1028 = !DILocation(line: 239, column: 23, scope: !1017)
!1029 = !DILocation(line: 239, column: 14, scope: !1017)
!1030 = !DILocation(line: 239, column: 3, scope: !1017)
!1031 = !DILocation(line: 239, column: 8, scope: !1017)
!1032 = !DILocation(line: 239, column: 12, scope: !1017)
!1033 = !DILocation(line: 240, column: 27, scope: !1017)
!1034 = !DILocation(line: 240, column: 18, scope: !1017)
!1035 = !DILocation(line: 240, column: 3, scope: !1017)
!1036 = !DILocation(line: 240, column: 8, scope: !1017)
!1037 = !DILocation(line: 240, column: 16, scope: !1017)
!1038 = !DILocation(line: 241, column: 29, scope: !1017)
!1039 = !DILocation(line: 241, column: 17, scope: !1017)
!1040 = !DILocation(line: 241, column: 22, scope: !1017)
!1041 = !DILocation(line: 241, column: 27, scope: !1017)
!1042 = !DILocation(line: 243, column: 3, scope: !1017)
!1043 = !DILocation(line: 243, column: 8, scope: !1017)
!1044 = !DILocation(line: 243, column: 25, scope: !1017)
!1045 = !DILocation(line: 243, column: 24, scope: !1017)
!1046 = !DILocation(line: 244, column: 18, scope: !1017)
!1047 = !DILocation(line: 244, column: 3, scope: !1017)
!1048 = !DILocation(line: 244, column: 8, scope: !1017)
!1049 = !DILocation(line: 244, column: 16, scope: !1017)
!1050 = !DILocation(line: 245, column: 23, scope: !1017)
!1051 = !DILocation(line: 245, column: 33, scope: !1017)
!1052 = !DILocation(line: 245, column: 38, scope: !1017)
!1053 = !DILocation(line: 245, column: 43, scope: !1017)
!1054 = !DILocation(line: 245, column: 3, scope: !1017)
!1055 = !DILocation(line: 247, column: 1, scope: !905)
!1056 = distinct !DISubprogram(name: "settings_add_choice_module", scope: !173, file: !173, line: 259, type: !1057, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !99, !99, !99, !108, !99}
!1059 = !DILocalVariable(name: "module", arg: 1, scope: !1056, file: !173, line: 259, type: !99)
!1060 = !DILocation(line: 259, column: 45, scope: !1056)
!1061 = !DILocalVariable(name: "section", arg: 2, scope: !1056, file: !173, line: 259, type: !99)
!1062 = !DILocation(line: 259, column: 65, scope: !1056)
!1063 = !DILocalVariable(name: "key", arg: 3, scope: !1056, file: !173, line: 260, type: !99)
!1064 = !DILocation(line: 260, column: 17, scope: !1056)
!1065 = !DILocalVariable(name: "def", arg: 4, scope: !1056, file: !173, line: 260, type: !108)
!1066 = !DILocation(line: 260, column: 26, scope: !1056)
!1067 = !DILocalVariable(name: "choices", arg: 5, scope: !1056, file: !173, line: 260, type: !99)
!1068 = !DILocation(line: 260, column: 43, scope: !1056)
!1069 = !DILocalVariable(name: "default_value", scope: !1056, file: !173, line: 262, type: !159)
!1070 = !DILocation(line: 262, column: 15, scope: !1056)
!1071 = !DILocation(line: 264, column: 2, scope: !1056)
!1072 = !DILocation(line: 265, column: 24, scope: !1056)
!1073 = !DILocation(line: 265, column: 16, scope: !1056)
!1074 = !DILocation(line: 265, column: 22, scope: !1056)
!1075 = !DILocation(line: 266, column: 15, scope: !1056)
!1076 = !DILocation(line: 266, column: 23, scope: !1056)
!1077 = !DILocation(line: 266, column: 32, scope: !1056)
!1078 = !DILocation(line: 266, column: 74, scope: !1056)
!1079 = !DILocation(line: 266, column: 2, scope: !1056)
!1080 = !DILocation(line: 267, column: 1, scope: !1056)
!1081 = distinct !DISubprogram(name: "settings_add_int_module", scope: !173, file: !173, line: 269, type: !1082, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !99, !99, !99, !108}
!1084 = !DILocalVariable(name: "module", arg: 1, scope: !1081, file: !173, line: 269, type: !99)
!1085 = !DILocation(line: 269, column: 42, scope: !1081)
!1086 = !DILocalVariable(name: "section", arg: 2, scope: !1081, file: !173, line: 269, type: !99)
!1087 = !DILocation(line: 269, column: 62, scope: !1081)
!1088 = !DILocalVariable(name: "key", arg: 3, scope: !1081, file: !173, line: 270, type: !99)
!1089 = !DILocation(line: 270, column: 21, scope: !1081)
!1090 = !DILocalVariable(name: "def", arg: 4, scope: !1081, file: !173, line: 270, type: !108)
!1091 = !DILocation(line: 270, column: 30, scope: !1081)
!1092 = !DILocalVariable(name: "default_value", scope: !1081, file: !173, line: 272, type: !159)
!1093 = !DILocation(line: 272, column: 15, scope: !1081)
!1094 = !DILocation(line: 274, column: 2, scope: !1081)
!1095 = !DILocation(line: 275, column: 31, scope: !1081)
!1096 = !DILocation(line: 275, column: 23, scope: !1081)
!1097 = !DILocation(line: 275, column: 29, scope: !1081)
!1098 = !DILocation(line: 276, column: 15, scope: !1081)
!1099 = !DILocation(line: 276, column: 23, scope: !1081)
!1100 = !DILocation(line: 276, column: 32, scope: !1081)
!1101 = !DILocation(line: 276, column: 2, scope: !1081)
!1102 = !DILocation(line: 277, column: 1, scope: !1081)
!1103 = distinct !DISubprogram(name: "settings_add_bool_module", scope: !173, file: !173, line: 279, type: !1082, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1104 = !DILocalVariable(name: "module", arg: 1, scope: !1103, file: !173, line: 279, type: !99)
!1105 = !DILocation(line: 279, column: 43, scope: !1103)
!1106 = !DILocalVariable(name: "section", arg: 2, scope: !1103, file: !173, line: 279, type: !99)
!1107 = !DILocation(line: 279, column: 63, scope: !1103)
!1108 = !DILocalVariable(name: "key", arg: 3, scope: !1103, file: !173, line: 280, type: !99)
!1109 = !DILocation(line: 280, column: 22, scope: !1103)
!1110 = !DILocalVariable(name: "def", arg: 4, scope: !1103, file: !173, line: 280, type: !108)
!1111 = !DILocation(line: 280, column: 31, scope: !1103)
!1112 = !DILocalVariable(name: "default_value", scope: !1103, file: !173, line: 282, type: !159)
!1113 = !DILocation(line: 282, column: 15, scope: !1103)
!1114 = !DILocation(line: 284, column: 2, scope: !1103)
!1115 = !DILocation(line: 285, column: 32, scope: !1103)
!1116 = !DILocation(line: 285, column: 23, scope: !1103)
!1117 = !DILocation(line: 285, column: 30, scope: !1103)
!1118 = !DILocation(line: 286, column: 15, scope: !1103)
!1119 = !DILocation(line: 286, column: 23, scope: !1103)
!1120 = !DILocation(line: 286, column: 32, scope: !1103)
!1121 = !DILocation(line: 286, column: 2, scope: !1103)
!1122 = !DILocation(line: 287, column: 1, scope: !1103)
!1123 = distinct !DISubprogram(name: "settings_add_time_module", scope: !173, file: !173, line: 289, type: !883, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1124 = !DILocalVariable(name: "module", arg: 1, scope: !1123, file: !173, line: 289, type: !99)
!1125 = !DILocation(line: 289, column: 43, scope: !1123)
!1126 = !DILocalVariable(name: "section", arg: 2, scope: !1123, file: !173, line: 289, type: !99)
!1127 = !DILocation(line: 289, column: 63, scope: !1123)
!1128 = !DILocalVariable(name: "key", arg: 3, scope: !1123, file: !173, line: 290, type: !99)
!1129 = !DILocation(line: 290, column: 22, scope: !1123)
!1130 = !DILocalVariable(name: "def", arg: 4, scope: !1123, file: !173, line: 290, type: !99)
!1131 = !DILocation(line: 290, column: 39, scope: !1123)
!1132 = !DILocalVariable(name: "default_value", scope: !1123, file: !173, line: 292, type: !159)
!1133 = !DILocation(line: 292, column: 15, scope: !1123)
!1134 = !DILocation(line: 294, column: 2, scope: !1123)
!1135 = !DILocation(line: 295, column: 36, scope: !1123)
!1136 = !DILocation(line: 295, column: 27, scope: !1123)
!1137 = !DILocation(line: 295, column: 16, scope: !1123)
!1138 = !DILocation(line: 295, column: 25, scope: !1123)
!1139 = !DILocation(line: 296, column: 15, scope: !1123)
!1140 = !DILocation(line: 296, column: 23, scope: !1123)
!1141 = !DILocation(line: 296, column: 32, scope: !1123)
!1142 = !DILocation(line: 296, column: 2, scope: !1123)
!1143 = !DILocation(line: 297, column: 1, scope: !1123)
!1144 = distinct !DISubprogram(name: "settings_add_level_module", scope: !173, file: !173, line: 299, type: !883, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1145 = !DILocalVariable(name: "module", arg: 1, scope: !1144, file: !173, line: 299, type: !99)
!1146 = !DILocation(line: 299, column: 44, scope: !1144)
!1147 = !DILocalVariable(name: "section", arg: 2, scope: !1144, file: !173, line: 299, type: !99)
!1148 = !DILocation(line: 299, column: 64, scope: !1144)
!1149 = !DILocalVariable(name: "key", arg: 3, scope: !1144, file: !173, line: 300, type: !99)
!1150 = !DILocation(line: 300, column: 23, scope: !1144)
!1151 = !DILocalVariable(name: "def", arg: 4, scope: !1144, file: !173, line: 300, type: !99)
!1152 = !DILocation(line: 300, column: 40, scope: !1144)
!1153 = !DILocalVariable(name: "default_value", scope: !1144, file: !173, line: 302, type: !159)
!1154 = !DILocation(line: 302, column: 15, scope: !1144)
!1155 = !DILocation(line: 304, column: 2, scope: !1144)
!1156 = !DILocation(line: 305, column: 36, scope: !1144)
!1157 = !DILocation(line: 305, column: 27, scope: !1144)
!1158 = !DILocation(line: 305, column: 16, scope: !1144)
!1159 = !DILocation(line: 305, column: 25, scope: !1144)
!1160 = !DILocation(line: 306, column: 15, scope: !1144)
!1161 = !DILocation(line: 306, column: 23, scope: !1144)
!1162 = !DILocation(line: 306, column: 32, scope: !1144)
!1163 = !DILocation(line: 306, column: 2, scope: !1144)
!1164 = !DILocation(line: 307, column: 1, scope: !1144)
!1165 = distinct !DISubprogram(name: "settings_add_size_module", scope: !173, file: !173, line: 309, type: !883, isLocal: false, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1166 = !DILocalVariable(name: "module", arg: 1, scope: !1165, file: !173, line: 309, type: !99)
!1167 = !DILocation(line: 309, column: 43, scope: !1165)
!1168 = !DILocalVariable(name: "section", arg: 2, scope: !1165, file: !173, line: 309, type: !99)
!1169 = !DILocation(line: 309, column: 63, scope: !1165)
!1170 = !DILocalVariable(name: "key", arg: 3, scope: !1165, file: !173, line: 310, type: !99)
!1171 = !DILocation(line: 310, column: 22, scope: !1165)
!1172 = !DILocalVariable(name: "def", arg: 4, scope: !1165, file: !173, line: 310, type: !99)
!1173 = !DILocation(line: 310, column: 39, scope: !1165)
!1174 = !DILocalVariable(name: "default_value", scope: !1165, file: !173, line: 312, type: !159)
!1175 = !DILocation(line: 312, column: 15, scope: !1165)
!1176 = !DILocation(line: 314, column: 2, scope: !1165)
!1177 = !DILocation(line: 315, column: 36, scope: !1165)
!1178 = !DILocation(line: 315, column: 27, scope: !1165)
!1179 = !DILocation(line: 315, column: 16, scope: !1165)
!1180 = !DILocation(line: 315, column: 25, scope: !1165)
!1181 = !DILocation(line: 316, column: 15, scope: !1165)
!1182 = !DILocation(line: 316, column: 23, scope: !1165)
!1183 = !DILocation(line: 316, column: 32, scope: !1165)
!1184 = !DILocation(line: 316, column: 2, scope: !1165)
!1185 = !DILocation(line: 317, column: 1, scope: !1165)
!1186 = distinct !DISubprogram(name: "settings_remove", scope: !173, file: !173, line: 341, type: !1187, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !99}
!1189 = !DILocalVariable(name: "key", arg: 1, scope: !1186, file: !173, line: 341, type: !99)
!1190 = !DILocation(line: 341, column: 34, scope: !1186)
!1191 = !DILocalVariable(name: "rec", scope: !1186, file: !173, line: 343, type: !147)
!1192 = !DILocation(line: 343, column: 16, scope: !1186)
!1193 = !DILocation(line: 345, column: 2, scope: !1186)
!1194 = distinct !{!1194, !1193}
!1195 = !DILocation(line: 345, column: 10, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !173, discriminator: 1)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !173, line: 345, column: 10)
!1198 = distinct !DILexicalBlock(scope: !1186, file: !173, line: 345, column: 4)
!1199 = !DILocation(line: 345, column: 14, scope: !1196)
!1200 = !DILocation(line: 345, column: 5, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !173, discriminator: 2)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !173, line: 345, column: 3)
!1203 = !DILocation(line: 345, column: 14, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1205, file: !173, discriminator: 3)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !173, line: 345, column: 12)
!1206 = !DILocation(line: 345, column: 98, scope: !1204)
!1207 = !DILocation(line: 345, column: 109, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1198, file: !173, discriminator: 4)
!1209 = !DILocation(line: 347, column: 28, scope: !1186)
!1210 = !DILocation(line: 347, column: 38, scope: !1186)
!1211 = !DILocation(line: 347, column: 8, scope: !1186)
!1212 = !DILocation(line: 347, column: 6, scope: !1186)
!1213 = !DILocation(line: 348, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1186, file: !173, line: 348, column: 6)
!1215 = !DILocation(line: 348, column: 10, scope: !1214)
!1216 = !DILocation(line: 348, column: 6, scope: !1186)
!1217 = !DILocation(line: 349, column: 18, scope: !1214)
!1218 = !DILocation(line: 349, column: 3, scope: !1214)
!1219 = !DILocation(line: 350, column: 1, scope: !1186)
!1220 = distinct !DISubprogram(name: "settings_unref", scope: !173, file: !173, line: 332, type: !1221, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !147, !108}
!1223 = !DILocalVariable(name: "rec", arg: 1, scope: !1220, file: !173, line: 332, type: !147)
!1224 = !DILocation(line: 332, column: 42, scope: !1220)
!1225 = !DILocalVariable(name: "remove_hash", arg: 2, scope: !1220, file: !173, line: 332, type: !108)
!1226 = !DILocation(line: 332, column: 51, scope: !1220)
!1227 = !DILocation(line: 334, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1220, file: !173, line: 334, column: 6)
!1229 = !DILocation(line: 334, column: 13, scope: !1228)
!1230 = !DILocation(line: 334, column: 6, scope: !1228)
!1231 = !DILocation(line: 334, column: 22, scope: !1228)
!1232 = !DILocation(line: 334, column: 6, scope: !1220)
!1233 = !DILocation(line: 335, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !173, line: 335, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !173, line: 334, column: 28)
!1236 = !DILocation(line: 335, column: 7, scope: !1235)
!1237 = !DILocation(line: 336, column: 24, scope: !1234)
!1238 = !DILocation(line: 336, column: 34, scope: !1234)
!1239 = !DILocation(line: 336, column: 39, scope: !1234)
!1240 = !DILocation(line: 336, column: 4, scope: !1234)
!1241 = !DILocation(line: 337, column: 20, scope: !1235)
!1242 = !DILocation(line: 337, column: 3, scope: !1235)
!1243 = !DILocation(line: 338, column: 2, scope: !1235)
!1244 = !DILocation(line: 339, column: 1, scope: !1220)
!1245 = distinct !DISubprogram(name: "settings_remove_module", scope: !173, file: !173, line: 363, type: !1187, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1246 = !DILocalVariable(name: "module", arg: 1, scope: !1245, file: !173, line: 363, type: !99)
!1247 = !DILocation(line: 363, column: 41, scope: !1245)
!1248 = !DILocation(line: 365, column: 30, scope: !1245)
!1249 = !DILocation(line: 367, column: 18, scope: !1245)
!1250 = !DILocation(line: 365, column: 2, scope: !1245)
!1251 = !DILocation(line: 368, column: 1, scope: !1245)
!1252 = distinct !DISubprogram(name: "settings_remove_hash", scope: !173, file: !173, line: 352, type: !1253, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!108, !99, !147, !99}
!1255 = !DILocalVariable(name: "key", arg: 1, scope: !1252, file: !173, line: 352, type: !99)
!1256 = !DILocation(line: 352, column: 45, scope: !1252)
!1257 = !DILocalVariable(name: "rec", arg: 2, scope: !1252, file: !173, line: 352, type: !147)
!1258 = !DILocation(line: 352, column: 64, scope: !1252)
!1259 = !DILocalVariable(name: "module", arg: 3, scope: !1252, file: !173, line: 353, type: !99)
!1260 = !DILocation(line: 353, column: 17, scope: !1252)
!1261 = !DILocation(line: 355, column: 16, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !173, line: 355, column: 6)
!1263 = !DILocation(line: 355, column: 21, scope: !1262)
!1264 = !DILocation(line: 355, column: 29, scope: !1262)
!1265 = !DILocation(line: 355, column: 6, scope: !1262)
!1266 = !DILocation(line: 355, column: 37, scope: !1262)
!1267 = !DILocation(line: 355, column: 6, scope: !1252)
!1268 = !DILocation(line: 356, column: 18, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1262, file: !173, line: 355, column: 43)
!1270 = !DILocation(line: 356, column: 3, scope: !1269)
!1271 = !DILocation(line: 357, column: 17, scope: !1269)
!1272 = !DILocation(line: 360, column: 9, scope: !1252)
!1273 = !DILocation(line: 361, column: 1, scope: !1252)
!1274 = distinct !DISubprogram(name: "settings_set_choice", scope: !173, file: !173, line: 387, type: !1275, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!106, !99, !99}
!1277 = !DILocalVariable(name: "key", arg: 1, scope: !1274, file: !173, line: 387, type: !99)
!1278 = !DILocation(line: 387, column: 42, scope: !1274)
!1279 = !DILocalVariable(name: "value", arg: 2, scope: !1274, file: !173, line: 387, type: !99)
!1280 = !DILocation(line: 387, column: 59, scope: !1274)
!1281 = !DILocalVariable(name: "rec", scope: !1274, file: !173, line: 389, type: !147)
!1282 = !DILocation(line: 389, column: 16, scope: !1274)
!1283 = !DILocation(line: 391, column: 28, scope: !1274)
!1284 = !DILocation(line: 391, column: 8, scope: !1274)
!1285 = !DILocation(line: 391, column: 6, scope: !1274)
!1286 = !DILocation(line: 393, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1274, file: !173, line: 393, column: 6)
!1288 = !DILocation(line: 393, column: 10, scope: !1287)
!1289 = !DILocation(line: 393, column: 17, scope: !1287)
!1290 = !DILocation(line: 393, column: 34, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1287, file: !173, discriminator: 1)
!1292 = !DILocation(line: 393, column: 39, scope: !1291)
!1293 = !DILocation(line: 393, column: 48, scope: !1291)
!1294 = !DILocation(line: 393, column: 20, scope: !1291)
!1295 = !DILocation(line: 393, column: 55, scope: !1291)
!1296 = !DILocation(line: 393, column: 6, scope: !1291)
!1297 = !DILocation(line: 394, column: 3, scope: !1287)
!1298 = !DILocation(line: 396, column: 19, scope: !1274)
!1299 = !DILocation(line: 396, column: 24, scope: !1274)
!1300 = !DILocation(line: 396, column: 2, scope: !1274)
!1301 = !DILocation(line: 398, column: 2, scope: !1274)
!1302 = !DILocation(line: 399, column: 1, scope: !1274)
!1303 = distinct !DISubprogram(name: "settings_get_record", scope: !173, file: !173, line: 461, type: !1304, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!147, !99}
!1306 = !DILocalVariable(name: "key", arg: 1, scope: !1303, file: !173, line: 461, type: !99)
!1307 = !DILocation(line: 461, column: 47, scope: !1303)
!1308 = !DILocation(line: 463, column: 2, scope: !1303)
!1309 = distinct !{!1309, !1308}
!1310 = !DILocation(line: 463, column: 10, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !173, discriminator: 1)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !173, line: 463, column: 10)
!1313 = distinct !DILexicalBlock(scope: !1303, file: !173, line: 463, column: 4)
!1314 = !DILocation(line: 463, column: 14, scope: !1311)
!1315 = !DILocation(line: 463, column: 5, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1317, file: !173, discriminator: 2)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !173, line: 463, column: 3)
!1318 = !DILocation(line: 463, column: 14, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !173, discriminator: 3)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !173, line: 463, column: 12)
!1321 = !DILocation(line: 463, column: 98, scope: !1319)
!1322 = !DILocation(line: 463, column: 7, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1313, file: !173, discriminator: 4)
!1324 = !DILocation(line: 465, column: 29, scope: !1303)
!1325 = !DILocation(line: 465, column: 39, scope: !1303)
!1326 = !DILocation(line: 465, column: 9, scope: !1303)
!1327 = !DILocation(line: 465, column: 2, scope: !1303)
!1328 = !DILocation(line: 466, column: 1, scope: !1303)
!1329 = distinct !DISubprogram(name: "settings_set_str", scope: !173, file: !173, line: 401, type: !1330, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !99, !99}
!1332 = !DILocalVariable(name: "key", arg: 1, scope: !1329, file: !173, line: 401, type: !99)
!1333 = !DILocation(line: 401, column: 35, scope: !1329)
!1334 = !DILocalVariable(name: "value", arg: 2, scope: !1329, file: !173, line: 401, type: !99)
!1335 = !DILocation(line: 401, column: 52, scope: !1329)
!1336 = !DILocation(line: 403, column: 29, scope: !1329)
!1337 = !DILocation(line: 403, column: 59, scope: !1329)
!1338 = !DILocation(line: 403, column: 41, scope: !1329)
!1339 = !DILocation(line: 403, column: 65, scope: !1329)
!1340 = !DILocation(line: 403, column: 70, scope: !1329)
!1341 = !DILocation(line: 403, column: 9, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1329, file: !173, discriminator: 1)
!1343 = !DILocation(line: 404, column: 1, scope: !1329)
!1344 = distinct !DISubprogram(name: "settings_get_node", scope: !173, file: !173, line: 370, type: !1345, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!183, !99}
!1347 = !DILocalVariable(name: "key", arg: 1, scope: !1344, file: !173, line: 370, type: !99)
!1348 = !DILocation(line: 370, column: 51, scope: !1344)
!1349 = !DILocalVariable(name: "rec", scope: !1344, file: !173, line: 372, type: !147)
!1350 = !DILocation(line: 372, column: 16, scope: !1344)
!1351 = !DILocalVariable(name: "node", scope: !1344, file: !173, line: 373, type: !183)
!1352 = !DILocation(line: 373, column: 22, scope: !1344)
!1353 = !DILocation(line: 375, column: 2, scope: !1344)
!1354 = distinct !{!1354, !1353}
!1355 = !DILocation(line: 375, column: 10, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !173, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !173, line: 375, column: 10)
!1358 = distinct !DILexicalBlock(scope: !1344, file: !173, line: 375, column: 4)
!1359 = !DILocation(line: 375, column: 14, scope: !1356)
!1360 = !DILocation(line: 375, column: 5, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !173, discriminator: 2)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !173, line: 375, column: 3)
!1363 = !DILocation(line: 375, column: 14, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !173, discriminator: 3)
!1365 = distinct !DILexicalBlock(scope: !1357, file: !173, line: 375, column: 12)
!1366 = !DILocation(line: 375, column: 98, scope: !1364)
!1367 = !DILocation(line: 375, column: 7, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1358, file: !173, discriminator: 4)
!1369 = !DILocation(line: 377, column: 28, scope: !1344)
!1370 = !DILocation(line: 377, column: 38, scope: !1344)
!1371 = !DILocation(line: 377, column: 8, scope: !1344)
!1372 = !DILocation(line: 377, column: 6, scope: !1344)
!1373 = !DILocation(line: 378, column: 6, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1344, file: !173, line: 378, column: 6)
!1375 = !DILocation(line: 378, column: 10, scope: !1374)
!1376 = !DILocation(line: 378, column: 6, scope: !1344)
!1377 = !DILocation(line: 379, column: 78, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !173, line: 378, column: 18)
!1379 = !DILocation(line: 379, column: 3, scope: !1378)
!1380 = !DILocation(line: 380, column: 3, scope: !1378)
!1381 = !DILocation(line: 383, column: 30, scope: !1344)
!1382 = !DILocation(line: 383, column: 9, scope: !1344)
!1383 = !DILocation(line: 383, column: 7, scope: !1344)
!1384 = !DILocation(line: 384, column: 29, scope: !1344)
!1385 = !DILocation(line: 384, column: 41, scope: !1344)
!1386 = !DILocation(line: 384, column: 47, scope: !1344)
!1387 = !DILocation(line: 384, column: 52, scope: !1344)
!1388 = !DILocation(line: 384, column: 9, scope: !1344)
!1389 = !DILocation(line: 384, column: 2, scope: !1344)
!1390 = !DILocation(line: 385, column: 1, scope: !1344)
!1391 = distinct !DISubprogram(name: "settings_set_int", scope: !173, file: !173, line: 406, type: !1392, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !99, !108}
!1394 = !DILocalVariable(name: "key", arg: 1, scope: !1391, file: !173, line: 406, type: !99)
!1395 = !DILocation(line: 406, column: 35, scope: !1391)
!1396 = !DILocalVariable(name: "value", arg: 2, scope: !1391, file: !173, line: 406, type: !108)
!1397 = !DILocation(line: 406, column: 44, scope: !1391)
!1398 = !DILocation(line: 408, column: 29, scope: !1391)
!1399 = !DILocation(line: 408, column: 59, scope: !1391)
!1400 = !DILocation(line: 408, column: 41, scope: !1391)
!1401 = !DILocation(line: 408, column: 65, scope: !1391)
!1402 = !DILocation(line: 408, column: 70, scope: !1391)
!1403 = !DILocation(line: 408, column: 9, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1391, file: !173, discriminator: 1)
!1405 = !DILocation(line: 409, column: 1, scope: !1391)
!1406 = distinct !DISubprogram(name: "settings_set_bool", scope: !173, file: !173, line: 411, type: !1392, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1407 = !DILocalVariable(name: "key", arg: 1, scope: !1406, file: !173, line: 411, type: !99)
!1408 = !DILocation(line: 411, column: 36, scope: !1406)
!1409 = !DILocalVariable(name: "value", arg: 2, scope: !1406, file: !173, line: 411, type: !108)
!1410 = !DILocation(line: 411, column: 45, scope: !1406)
!1411 = !DILocation(line: 413, column: 30, scope: !1406)
!1412 = !DILocation(line: 413, column: 60, scope: !1406)
!1413 = !DILocation(line: 413, column: 42, scope: !1406)
!1414 = !DILocation(line: 413, column: 66, scope: !1406)
!1415 = !DILocation(line: 413, column: 71, scope: !1406)
!1416 = !DILocation(line: 413, column: 9, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1406, file: !173, discriminator: 1)
!1418 = !DILocation(line: 414, column: 1, scope: !1406)
!1419 = distinct !DISubprogram(name: "settings_set_time", scope: !173, file: !173, line: 416, type: !1275, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1420 = !DILocalVariable(name: "key", arg: 1, scope: !1419, file: !173, line: 416, type: !99)
!1421 = !DILocation(line: 416, column: 40, scope: !1419)
!1422 = !DILocalVariable(name: "value", arg: 2, scope: !1419, file: !173, line: 416, type: !99)
!1423 = !DILocation(line: 416, column: 57, scope: !1419)
!1424 = !DILocalVariable(name: "msecs", scope: !1419, file: !173, line: 418, type: !108)
!1425 = !DILocation(line: 418, column: 6, scope: !1419)
!1426 = !DILocation(line: 420, column: 27, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !173, line: 420, column: 6)
!1428 = !DILocation(line: 420, column: 7, scope: !1427)
!1429 = !DILocation(line: 420, column: 6, scope: !1419)
!1430 = !DILocation(line: 421, column: 3, scope: !1427)
!1431 = !DILocation(line: 423, column: 22, scope: !1419)
!1432 = !DILocation(line: 423, column: 52, scope: !1419)
!1433 = !DILocation(line: 423, column: 34, scope: !1419)
!1434 = !DILocation(line: 423, column: 58, scope: !1419)
!1435 = !DILocation(line: 423, column: 63, scope: !1419)
!1436 = !DILocation(line: 423, column: 2, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1419, file: !173, discriminator: 1)
!1438 = !DILocation(line: 424, column: 2, scope: !1419)
!1439 = !DILocation(line: 425, column: 1, scope: !1419)
!1440 = distinct !DISubprogram(name: "settings_set_level", scope: !173, file: !173, line: 427, type: !1275, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1441 = !DILocalVariable(name: "key", arg: 1, scope: !1440, file: !173, line: 427, type: !99)
!1442 = !DILocation(line: 427, column: 41, scope: !1440)
!1443 = !DILocalVariable(name: "value", arg: 2, scope: !1440, file: !173, line: 427, type: !99)
!1444 = !DILocation(line: 427, column: 58, scope: !1440)
!1445 = !DILocalVariable(name: "iserror", scope: !1440, file: !173, line: 429, type: !108)
!1446 = !DILocation(line: 429, column: 6, scope: !1440)
!1447 = !DILocation(line: 431, column: 19, scope: !1440)
!1448 = !DILocation(line: 431, column: 8, scope: !1440)
!1449 = !DILocation(line: 432, column: 6, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !173, line: 432, column: 6)
!1451 = !DILocation(line: 432, column: 6, scope: !1440)
!1452 = !DILocation(line: 433, column: 3, scope: !1450)
!1453 = !DILocation(line: 435, column: 29, scope: !1440)
!1454 = !DILocation(line: 435, column: 59, scope: !1440)
!1455 = !DILocation(line: 435, column: 41, scope: !1440)
!1456 = !DILocation(line: 435, column: 65, scope: !1440)
!1457 = !DILocation(line: 435, column: 70, scope: !1440)
!1458 = !DILocation(line: 435, column: 9, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1440, file: !173, discriminator: 1)
!1460 = !DILocation(line: 436, column: 2, scope: !1440)
!1461 = !DILocation(line: 437, column: 1, scope: !1440)
!1462 = distinct !DISubprogram(name: "settings_set_size", scope: !173, file: !173, line: 439, type: !1275, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1463 = !DILocalVariable(name: "key", arg: 1, scope: !1462, file: !173, line: 439, type: !99)
!1464 = !DILocation(line: 439, column: 40, scope: !1462)
!1465 = !DILocalVariable(name: "value", arg: 2, scope: !1462, file: !173, line: 439, type: !99)
!1466 = !DILocation(line: 439, column: 57, scope: !1462)
!1467 = !DILocalVariable(name: "size", scope: !1462, file: !173, line: 441, type: !108)
!1468 = !DILocation(line: 441, column: 6, scope: !1462)
!1469 = !DILocation(line: 443, column: 18, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1462, file: !173, line: 443, column: 6)
!1471 = !DILocation(line: 443, column: 7, scope: !1470)
!1472 = !DILocation(line: 443, column: 6, scope: !1462)
!1473 = !DILocation(line: 444, column: 3, scope: !1470)
!1474 = !DILocation(line: 446, column: 29, scope: !1462)
!1475 = !DILocation(line: 446, column: 59, scope: !1462)
!1476 = !DILocation(line: 446, column: 41, scope: !1462)
!1477 = !DILocation(line: 446, column: 65, scope: !1462)
!1478 = !DILocation(line: 446, column: 70, scope: !1462)
!1479 = !DILocation(line: 446, column: 9, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1462, file: !173, discriminator: 1)
!1481 = !DILocation(line: 447, column: 2, scope: !1462)
!1482 = !DILocation(line: 448, column: 1, scope: !1462)
!1483 = distinct !DISubprogram(name: "settings_get_type", scope: !173, file: !173, line: 450, type: !1484, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!157, !99}
!1486 = !DILocalVariable(name: "key", arg: 1, scope: !1483, file: !173, line: 450, type: !99)
!1487 = !DILocation(line: 450, column: 43, scope: !1483)
!1488 = !DILocalVariable(name: "rec", scope: !1483, file: !173, line: 452, type: !147)
!1489 = !DILocation(line: 452, column: 16, scope: !1483)
!1490 = !DILocation(line: 454, column: 2, scope: !1483)
!1491 = distinct !{!1491, !1490}
!1492 = !DILocation(line: 454, column: 10, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1494, file: !173, discriminator: 1)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !173, line: 454, column: 10)
!1495 = distinct !DILexicalBlock(scope: !1483, file: !173, line: 454, column: 4)
!1496 = !DILocation(line: 454, column: 14, scope: !1493)
!1497 = !DILocation(line: 454, column: 5, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !173, discriminator: 2)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !173, line: 454, column: 3)
!1500 = !DILocation(line: 454, column: 14, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !173, discriminator: 3)
!1502 = distinct !DILexicalBlock(scope: !1494, file: !173, line: 454, column: 12)
!1503 = !DILocation(line: 454, column: 98, scope: !1501)
!1504 = !DILocation(line: 454, column: 128, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1495, file: !173, discriminator: 4)
!1506 = !DILocation(line: 456, column: 28, scope: !1483)
!1507 = !DILocation(line: 456, column: 38, scope: !1483)
!1508 = !DILocation(line: 456, column: 8, scope: !1483)
!1509 = !DILocation(line: 456, column: 6, scope: !1483)
!1510 = !DILocation(line: 457, column: 9, scope: !1483)
!1511 = !DILocation(line: 457, column: 13, scope: !1483)
!1512 = !DILocation(line: 457, column: 9, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1483, file: !173, discriminator: 1)
!1514 = !DILocation(line: 457, column: 41, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1483, file: !173, discriminator: 2)
!1516 = !DILocation(line: 457, column: 46, scope: !1515)
!1517 = !DILocation(line: 457, column: 9, scope: !1515)
!1518 = !DILocation(line: 457, column: 9, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1483, file: !173, discriminator: 3)
!1520 = !DILocation(line: 457, column: 2, scope: !1519)
!1521 = !DILocation(line: 458, column: 1, scope: !1483)
!1522 = distinct !DISubprogram(name: "settings_clean_invalid", scope: !173, file: !173, line: 516, type: !380, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1523 = !DILocation(line: 518, column: 2, scope: !1522)
!1524 = !DILocation(line: 518, column: 9, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1522, file: !173, discriminator: 1)
!1526 = !DILocation(line: 518, column: 30, scope: !1525)
!1527 = !DILocation(line: 518, column: 2, scope: !1525)
!1528 = !DILocalVariable(name: "module", scope: !1529, file: !173, line: 519, type: !153)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !173, line: 518, column: 38)
!1530 = !DILocation(line: 519, column: 9, scope: !1529)
!1531 = !DILocation(line: 519, column: 18, scope: !1529)
!1532 = !DILocation(line: 519, column: 40, scope: !1529)
!1533 = !DILocation(line: 521, column: 47, scope: !1529)
!1534 = !DILocation(line: 521, column: 17, scope: !1529)
!1535 = !DILocation(line: 524, column: 19, scope: !1529)
!1536 = !DILocation(line: 524, column: 41, scope: !1529)
!1537 = !DILocation(line: 524, column: 4, scope: !1529)
!1538 = !DILocation(line: 523, column: 24, scope: !1529)
!1539 = !DILocation(line: 525, column: 24, scope: !1529)
!1540 = !DILocation(line: 525, column: 17, scope: !1529)
!1541 = !DILocation(line: 518, column: 2, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1522, file: !173, discriminator: 2)
!1543 = distinct !{!1543, !1523}
!1544 = !DILocation(line: 527, column: 1, scope: !1522)
!1545 = distinct !DISubprogram(name: "settings_clean_invalid_module", scope: !173, file: !173, line: 492, type: !1187, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1546 = !DILocalVariable(name: "module", arg: 1, scope: !1545, file: !173, line: 492, type: !99)
!1547 = !DILocation(line: 492, column: 55, scope: !1545)
!1548 = !DILocalVariable(name: "node", scope: !1545, file: !173, line: 494, type: !183)
!1549 = !DILocation(line: 494, column: 22, scope: !1545)
!1550 = !DILocalVariable(name: "set", scope: !1545, file: !173, line: 495, type: !147)
!1551 = !DILocation(line: 495, column: 23, scope: !1545)
!1552 = !DILocalVariable(name: "tmp", scope: !1545, file: !173, line: 496, type: !391)
!1553 = !DILocation(line: 496, column: 10, scope: !1545)
!1554 = !DILocalVariable(name: "next", scope: !1545, file: !173, line: 496, type: !391)
!1555 = !DILocation(line: 496, column: 16, scope: !1545)
!1556 = !DILocation(line: 498, column: 30, scope: !1545)
!1557 = !DILocation(line: 498, column: 9, scope: !1545)
!1558 = !DILocation(line: 498, column: 7, scope: !1545)
!1559 = !DILocation(line: 499, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1545, file: !173, line: 499, column: 6)
!1561 = !DILocation(line: 499, column: 11, scope: !1560)
!1562 = !DILocation(line: 499, column: 6, scope: !1545)
!1563 = !DILocation(line: 499, column: 19, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1560, file: !173, discriminator: 1)
!1565 = !DILocation(line: 501, column: 29, scope: !1545)
!1566 = !DILocation(line: 501, column: 41, scope: !1545)
!1567 = !DILocation(line: 501, column: 47, scope: !1545)
!1568 = !DILocation(line: 501, column: 9, scope: !1545)
!1569 = !DILocation(line: 501, column: 7, scope: !1545)
!1570 = !DILocation(line: 502, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1545, file: !173, line: 502, column: 6)
!1572 = !DILocation(line: 502, column: 11, scope: !1571)
!1573 = !DILocation(line: 502, column: 6, scope: !1545)
!1574 = !DILocation(line: 502, column: 19, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1571, file: !173, discriminator: 1)
!1576 = !DILocation(line: 504, column: 31, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1545, file: !173, line: 504, column: 2)
!1578 = !DILocation(line: 504, column: 37, scope: !1577)
!1579 = !DILocation(line: 504, column: 13, scope: !1577)
!1580 = !DILocation(line: 504, column: 11, scope: !1577)
!1581 = !DILocation(line: 504, column: 7, scope: !1577)
!1582 = !DILocation(line: 504, column: 45, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !173, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1577, file: !173, line: 504, column: 2)
!1585 = !DILocation(line: 504, column: 49, scope: !1583)
!1586 = !DILocation(line: 504, column: 2, scope: !1583)
!1587 = !DILocalVariable(name: "subnode", scope: !1588, file: !173, line: 505, type: !183)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !173, line: 504, column: 69)
!1589 = !DILocation(line: 505, column: 16, scope: !1588)
!1590 = !DILocation(line: 505, column: 26, scope: !1588)
!1591 = !DILocation(line: 505, column: 31, scope: !1588)
!1592 = !DILocation(line: 506, column: 41, scope: !1588)
!1593 = !DILocation(line: 506, column: 24, scope: !1588)
!1594 = !DILocation(line: 506, column: 22, scope: !1588)
!1595 = !DILocation(line: 508, column: 29, scope: !1588)
!1596 = !DILocation(line: 508, column: 39, scope: !1588)
!1597 = !DILocation(line: 508, column: 48, scope: !1588)
!1598 = !DILocation(line: 508, column: 9, scope: !1588)
!1599 = !DILocation(line: 508, column: 7, scope: !1588)
!1600 = !DILocation(line: 509, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !173, line: 509, column: 7)
!1602 = !DILocation(line: 509, column: 11, scope: !1601)
!1603 = !DILocation(line: 509, column: 18, scope: !1601)
!1604 = !DILocation(line: 509, column: 31, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1601, file: !173, discriminator: 1)
!1606 = !DILocation(line: 509, column: 36, scope: !1605)
!1607 = !DILocation(line: 509, column: 44, scope: !1605)
!1608 = !DILocation(line: 509, column: 21, scope: !1605)
!1609 = !DILocation(line: 509, column: 52, scope: !1605)
!1610 = !DILocation(line: 509, column: 7, scope: !1605)
!1611 = !DILocation(line: 510, column: 44, scope: !1601)
!1612 = !DILocation(line: 510, column: 56, scope: !1601)
!1613 = !DILocation(line: 510, column: 62, scope: !1601)
!1614 = !DILocation(line: 510, column: 25, scope: !1601)
!1615 = !DILocation(line: 511, column: 2, scope: !1588)
!1616 = !DILocation(line: 504, column: 63, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1584, file: !173, discriminator: 2)
!1618 = !DILocation(line: 504, column: 61, scope: !1617)
!1619 = !DILocation(line: 504, column: 2, scope: !1617)
!1620 = distinct !{!1620, !1621}
!1621 = !DILocation(line: 504, column: 2, scope: !1545)
!1622 = !DILocation(line: 512, column: 1, scope: !1545)
!1623 = distinct !DISubprogram(name: "settings_check_module", scope: !173, file: !173, line: 572, type: !1187, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1624 = !DILocalVariable(name: "module", arg: 1, scope: !1623, file: !173, line: 572, type: !99)
!1625 = !DILocation(line: 572, column: 40, scope: !1623)
!1626 = !DILocalVariable(name: "set", scope: !1623, file: !173, line: 574, type: !147)
!1627 = !DILocation(line: 574, column: 23, scope: !1623)
!1628 = !DILocalVariable(name: "node", scope: !1623, file: !173, line: 575, type: !183)
!1629 = !DILocation(line: 575, column: 15, scope: !1623)
!1630 = !DILocalVariable(name: "parent", scope: !1623, file: !173, line: 575, type: !183)
!1631 = !DILocation(line: 575, column: 22, scope: !1623)
!1632 = !DILocalVariable(name: "errors", scope: !1623, file: !173, line: 576, type: !430)
!1633 = !DILocation(line: 576, column: 18, scope: !1623)
!1634 = !DILocalVariable(name: "tmp", scope: !1623, file: !173, line: 577, type: !391)
!1635 = !DILocation(line: 577, column: 10, scope: !1623)
!1636 = !DILocalVariable(name: "next", scope: !1623, file: !173, line: 577, type: !391)
!1637 = !DILocation(line: 577, column: 16, scope: !1623)
!1638 = !DILocalVariable(name: "count", scope: !1623, file: !173, line: 578, type: !108)
!1639 = !DILocation(line: 578, column: 13, scope: !1623)
!1640 = !DILocation(line: 580, column: 9, scope: !1623)
!1641 = distinct !{!1641, !1640}
!1642 = !DILocation(line: 580, column: 17, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !173, discriminator: 1)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !173, line: 580, column: 17)
!1645 = distinct !DILexicalBlock(scope: !1623, file: !173, line: 580, column: 11)
!1646 = !DILocation(line: 580, column: 24, scope: !1643)
!1647 = !DILocation(line: 580, column: 12, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !173, discriminator: 2)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !173, line: 580, column: 10)
!1650 = !DILocation(line: 580, column: 21, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !173, discriminator: 3)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !173, line: 580, column: 19)
!1653 = !DILocation(line: 580, column: 108, scope: !1651)
!1654 = !DILocation(line: 580, column: 119, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1645, file: !173, discriminator: 4)
!1656 = !DILocation(line: 582, column: 30, scope: !1623)
!1657 = !DILocation(line: 582, column: 9, scope: !1623)
!1658 = !DILocation(line: 582, column: 7, scope: !1623)
!1659 = !DILocation(line: 583, column: 9, scope: !1623)
!1660 = !DILocation(line: 583, column: 14, scope: !1623)
!1661 = !DILocation(line: 583, column: 9, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1623, file: !173, discriminator: 1)
!1663 = !DILocation(line: 583, column: 50, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1623, file: !173, discriminator: 2)
!1665 = !DILocation(line: 583, column: 62, scope: !1664)
!1666 = !DILocation(line: 583, column: 68, scope: !1664)
!1667 = !DILocation(line: 583, column: 30, scope: !1664)
!1668 = !DILocation(line: 583, column: 9, scope: !1664)
!1669 = !DILocation(line: 583, column: 9, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1623, file: !173, discriminator: 3)
!1671 = !DILocation(line: 583, column: 7, scope: !1670)
!1672 = !DILocation(line: 584, column: 6, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1623, file: !173, line: 584, column: 6)
!1674 = !DILocation(line: 584, column: 11, scope: !1673)
!1675 = !DILocation(line: 584, column: 6, scope: !1623)
!1676 = !DILocation(line: 584, column: 19, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1673, file: !173, discriminator: 1)
!1678 = !DILocation(line: 586, column: 18, scope: !1623)
!1679 = !DILocation(line: 586, column: 16, scope: !1623)
!1680 = !DILocation(line: 587, column: 18, scope: !1623)
!1681 = !DILocation(line: 588, column: 28, scope: !1623)
!1682 = !DILocation(line: 587, column: 2, scope: !1623)
!1683 = !DILocation(line: 590, column: 15, scope: !1623)
!1684 = !DILocation(line: 591, column: 11, scope: !1623)
!1685 = !DILocation(line: 591, column: 9, scope: !1623)
!1686 = !DILocation(line: 592, column: 26, scope: !1623)
!1687 = !DILocation(line: 592, column: 32, scope: !1623)
!1688 = !DILocation(line: 592, column: 8, scope: !1623)
!1689 = !DILocation(line: 592, column: 6, scope: !1623)
!1690 = !DILocation(line: 593, column: 2, scope: !1623)
!1691 = !DILocation(line: 593, column: 9, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !173, discriminator: 1)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !173, line: 593, column: 2)
!1694 = distinct !DILexicalBlock(scope: !1623, file: !173, line: 593, column: 2)
!1695 = !DILocation(line: 593, column: 13, scope: !1692)
!1696 = !DILocation(line: 593, column: 2, scope: !1692)
!1697 = !DILocation(line: 594, column: 10, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !173, line: 593, column: 33)
!1699 = !DILocation(line: 594, column: 15, scope: !1698)
!1700 = !DILocation(line: 594, column: 8, scope: !1698)
!1701 = !DILocation(line: 595, column: 27, scope: !1698)
!1702 = !DILocation(line: 595, column: 10, scope: !1698)
!1703 = !DILocation(line: 595, column: 8, scope: !1698)
!1704 = !DILocation(line: 596, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !173, line: 596, column: 7)
!1706 = !DILocation(line: 596, column: 13, scope: !1705)
!1707 = !DILocation(line: 596, column: 17, scope: !1705)
!1708 = !DILocation(line: 596, column: 7, scope: !1698)
!1709 = !DILocation(line: 596, column: 25, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !173, discriminator: 1)
!1711 = !DILocation(line: 598, column: 29, scope: !1698)
!1712 = !DILocation(line: 598, column: 39, scope: !1698)
!1713 = !DILocation(line: 598, column: 45, scope: !1698)
!1714 = !DILocation(line: 598, column: 9, scope: !1698)
!1715 = !DILocation(line: 598, column: 7, scope: !1698)
!1716 = !DILocation(line: 599, column: 31, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !173, line: 599, column: 7)
!1718 = !DILocation(line: 599, column: 39, scope: !1717)
!1719 = !DILocation(line: 599, column: 45, scope: !1717)
!1720 = !DILocation(line: 599, column: 7, scope: !1717)
!1721 = !DILocation(line: 599, column: 7, scope: !1698)
!1722 = !DILocation(line: 600, column: 4, scope: !1717)
!1723 = !DILocation(line: 602, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1698, file: !173, line: 602, column: 7)
!1725 = !DILocation(line: 602, column: 11, scope: !1724)
!1726 = !DILocation(line: 602, column: 18, scope: !1724)
!1727 = !DILocation(line: 602, column: 31, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1724, file: !173, discriminator: 1)
!1729 = !DILocation(line: 602, column: 36, scope: !1728)
!1730 = !DILocation(line: 602, column: 44, scope: !1728)
!1731 = !DILocation(line: 602, column: 21, scope: !1728)
!1732 = !DILocation(line: 602, column: 52, scope: !1728)
!1733 = !DILocation(line: 602, column: 7, scope: !1728)
!1734 = !DILocation(line: 603, column: 27, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1724, file: !173, line: 602, column: 58)
!1736 = !DILocation(line: 603, column: 42, scope: !1735)
!1737 = !DILocation(line: 603, column: 48, scope: !1735)
!1738 = !DILocation(line: 603, column: 4, scope: !1735)
!1739 = !DILocation(line: 604, column: 30, scope: !1735)
!1740 = !DILocation(line: 605, column: 3, scope: !1735)
!1741 = !DILocation(line: 606, column: 2, scope: !1698)
!1742 = !DILocation(line: 593, column: 27, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1693, file: !173, discriminator: 2)
!1744 = !DILocation(line: 593, column: 25, scope: !1743)
!1745 = !DILocation(line: 593, column: 2, scope: !1743)
!1746 = distinct !{!1746, !1690}
!1747 = !DILocation(line: 607, column: 6, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1623, file: !173, line: 607, column: 6)
!1749 = !DILocation(line: 607, column: 12, scope: !1748)
!1750 = !DILocation(line: 607, column: 6, scope: !1623)
!1751 = !DILocation(line: 608, column: 32, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !173, line: 608, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !173, line: 607, column: 17)
!1754 = !DILocation(line: 609, column: 11, scope: !1752)
!1755 = !DILocation(line: 608, column: 7, scope: !1752)
!1756 = !DILocation(line: 609, column: 19, scope: !1752)
!1757 = !DILocation(line: 608, column: 7, scope: !1753)
!1758 = !DILocation(line: 612, column: 20, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 609, column: 27)
!1760 = !DILocation(line: 613, column: 22, scope: !1759)
!1761 = !DILocation(line: 613, column: 13, scope: !1759)
!1762 = !DILocation(line: 612, column: 5, scope: !1759)
!1763 = !DILocation(line: 611, column: 25, scope: !1759)
!1764 = !DILocation(line: 614, column: 3, scope: !1759)
!1765 = !DILocation(line: 615, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1753, file: !173, line: 615, column: 7)
!1767 = !DILocation(line: 615, column: 7, scope: !1753)
!1768 = !DILocation(line: 616, column: 59, scope: !1766)
!1769 = !DILocation(line: 616, column: 67, scope: !1766)
!1770 = !DILocation(line: 616, column: 25, scope: !1766)
!1771 = !DILocation(line: 618, column: 8, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !173, line: 618, column: 8)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !173, line: 617, column: 8)
!1774 = !DILocation(line: 618, column: 20, scope: !1772)
!1775 = !DILocation(line: 618, column: 8, scope: !1773)
!1776 = !DILocation(line: 619, column: 19, scope: !1772)
!1777 = !DILocation(line: 619, column: 17, scope: !1772)
!1778 = !DILocation(line: 619, column: 5, scope: !1772)
!1779 = !DILocation(line: 621, column: 31, scope: !1772)
!1780 = !DILocation(line: 621, column: 5, scope: !1772)
!1781 = !DILocation(line: 622, column: 41, scope: !1773)
!1782 = !DILocation(line: 622, column: 54, scope: !1773)
!1783 = !DILocation(line: 622, column: 62, scope: !1773)
!1784 = !DILocation(line: 622, column: 25, scope: !1773)
!1785 = !DILocation(line: 624, column: 2, scope: !1753)
!1786 = !DILocation(line: 625, column: 23, scope: !1623)
!1787 = !DILocation(line: 625, column: 9, scope: !1623)
!1788 = !DILocation(line: 626, column: 1, scope: !1623)
!1789 = !DILocation(line: 626, column: 1, scope: !1662)
!1790 = distinct !DISubprogram(name: "backwards_compatibility", scope: !173, file: !173, line: 529, type: !1791, isLocal: true, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!108, !99, !183, !183}
!1793 = !DILocalVariable(name: "module", arg: 1, scope: !1790, file: !173, line: 529, type: !99)
!1794 = !DILocation(line: 529, column: 48, scope: !1790)
!1795 = !DILocalVariable(name: "node", arg: 2, scope: !1790, file: !173, line: 529, type: !183)
!1796 = !DILocation(line: 529, column: 69, scope: !1790)
!1797 = !DILocalVariable(name: "parent", arg: 3, scope: !1790, file: !173, line: 530, type: !183)
!1798 = !DILocation(line: 530, column: 21, scope: !1790)
!1799 = !DILocalVariable(name: "new_key", scope: !1790, file: !173, line: 532, type: !99)
!1800 = !DILocation(line: 532, column: 14, scope: !1790)
!1801 = !DILocalVariable(name: "new_module", scope: !1790, file: !173, line: 532, type: !99)
!1802 = !DILocation(line: 532, column: 24, scope: !1790)
!1803 = !DILocalVariable(name: "new_node", scope: !1790, file: !173, line: 533, type: !183)
!1804 = !DILocation(line: 533, column: 15, scope: !1790)
!1805 = !DILocalVariable(name: "new_value", scope: !1790, file: !173, line: 534, type: !153)
!1806 = !DILocation(line: 534, column: 8, scope: !1790)
!1807 = !DILocation(line: 536, column: 12, scope: !1790)
!1808 = !DILocation(line: 536, column: 27, scope: !1790)
!1809 = !DILocation(line: 536, column: 46, scope: !1790)
!1810 = !DILocation(line: 539, column: 16, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1790, file: !173, line: 539, column: 6)
!1812 = !DILocation(line: 539, column: 6, scope: !1811)
!1813 = !DILocation(line: 539, column: 35, scope: !1811)
!1814 = !DILocation(line: 539, column: 6, scope: !1790)
!1815 = !DILocation(line: 540, column: 26, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !173, line: 540, column: 7)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !173, line: 539, column: 41)
!1818 = !DILocation(line: 540, column: 32, scope: !1816)
!1819 = !DILocation(line: 540, column: 7, scope: !1816)
!1820 = !DILocation(line: 540, column: 50, scope: !1816)
!1821 = !DILocation(line: 540, column: 55, scope: !1816)
!1822 = !DILocation(line: 542, column: 26, scope: !1816)
!1823 = !DILocation(line: 542, column: 32, scope: !1816)
!1824 = !DILocation(line: 542, column: 7, scope: !1816)
!1825 = !DILocation(line: 542, column: 53, scope: !1816)
!1826 = !DILocation(line: 540, column: 7, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1817, file: !173, discriminator: 1)
!1828 = !DILocation(line: 543, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !173, line: 542, column: 59)
!1830 = !DILocation(line: 544, column: 12, scope: !1829)
!1831 = !DILocation(line: 545, column: 34, scope: !1829)
!1832 = !DILocation(line: 545, column: 40, scope: !1829)
!1833 = !DILocation(line: 545, column: 17, scope: !1829)
!1834 = !DILocation(line: 545, column: 16, scope: !1829)
!1835 = !DILocation(line: 545, column: 16, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1829, file: !173, discriminator: 1)
!1837 = !DILocation(line: 546, column: 14, scope: !1829)
!1838 = !DILocation(line: 546, column: 20, scope: !1829)
!1839 = !DILocation(line: 546, column: 5, scope: !1829)
!1840 = !DILocation(line: 545, column: 16, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1829, file: !173, discriminator: 2)
!1842 = !DILocation(line: 545, column: 16, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1829, file: !173, discriminator: 3)
!1844 = !DILocation(line: 545, column: 14, scope: !1843)
!1845 = !DILocation(line: 547, column: 36, scope: !1829)
!1846 = !DILocation(line: 547, column: 15, scope: !1829)
!1847 = !DILocation(line: 547, column: 13, scope: !1829)
!1848 = !DILocation(line: 548, column: 15, scope: !1829)
!1849 = !DILocation(line: 548, column: 24, scope: !1829)
!1850 = !DILocation(line: 548, column: 15, scope: !1836)
!1851 = !DILocation(line: 549, column: 25, scope: !1829)
!1852 = !DILocation(line: 549, column: 37, scope: !1829)
!1853 = !DILocation(line: 549, column: 47, scope: !1829)
!1854 = !DILocation(line: 549, column: 5, scope: !1829)
!1855 = !DILocation(line: 548, column: 15, scope: !1841)
!1856 = !DILocation(line: 548, column: 15, scope: !1843)
!1857 = !DILocation(line: 548, column: 13, scope: !1843)
!1858 = !DILocation(line: 551, column: 24, scope: !1829)
!1859 = !DILocation(line: 551, column: 36, scope: !1829)
!1860 = !DILocation(line: 552, column: 10, scope: !1829)
!1861 = !DILocation(line: 552, column: 19, scope: !1829)
!1862 = !DILocation(line: 551, column: 4, scope: !1829)
!1863 = !DILocation(line: 554, column: 24, scope: !1829)
!1864 = !DILocation(line: 554, column: 36, scope: !1829)
!1865 = !DILocation(line: 555, column: 10, scope: !1829)
!1866 = !DILocation(line: 555, column: 16, scope: !1829)
!1867 = !DILocation(line: 554, column: 4, scope: !1829)
!1868 = !DILocation(line: 556, column: 11, scope: !1829)
!1869 = !DILocation(line: 556, column: 4, scope: !1829)
!1870 = !DILocation(line: 557, column: 19, scope: !1829)
!1871 = !DILocation(line: 558, column: 11, scope: !1829)
!1872 = !DILocation(line: 558, column: 19, scope: !1829)
!1873 = !DILocation(line: 558, column: 4, scope: !1829)
!1874 = !DILocation(line: 559, column: 33, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1816, file: !173, line: 559, column: 14)
!1876 = !DILocation(line: 559, column: 39, scope: !1875)
!1877 = !DILocation(line: 559, column: 14, scope: !1875)
!1878 = !DILocation(line: 559, column: 61, scope: !1875)
!1879 = !DILocation(line: 559, column: 66, scope: !1875)
!1880 = !DILocation(line: 560, column: 7, scope: !1875)
!1881 = !DILocation(line: 560, column: 13, scope: !1875)
!1882 = !DILocation(line: 560, column: 19, scope: !1875)
!1883 = !DILocation(line: 560, column: 26, scope: !1875)
!1884 = !DILocation(line: 560, column: 48, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1875, file: !173, discriminator: 1)
!1886 = !DILocation(line: 560, column: 54, scope: !1885)
!1887 = !DILocation(line: 560, column: 29, scope: !1885)
!1888 = !DILocation(line: 560, column: 68, scope: !1885)
!1889 = !DILocation(line: 559, column: 14, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1816, file: !173, discriminator: 1)
!1891 = !DILocation(line: 561, column: 24, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1875, file: !173, line: 560, column: 74)
!1893 = !DILocation(line: 561, column: 36, scope: !1892)
!1894 = !DILocation(line: 561, column: 4, scope: !1892)
!1895 = !DILocation(line: 562, column: 24, scope: !1892)
!1896 = !DILocation(line: 562, column: 36, scope: !1892)
!1897 = !DILocation(line: 562, column: 44, scope: !1892)
!1898 = !DILocation(line: 562, column: 50, scope: !1892)
!1899 = !DILocation(line: 562, column: 4, scope: !1892)
!1900 = !DILocation(line: 563, column: 19, scope: !1892)
!1901 = !DILocation(line: 564, column: 4, scope: !1892)
!1902 = !DILocation(line: 566, column: 2, scope: !1817)
!1903 = !DILocation(line: 567, column: 9, scope: !1790)
!1904 = !DILocation(line: 567, column: 17, scope: !1790)
!1905 = !DILocation(line: 567, column: 2, scope: !1790)
!1906 = !DILocation(line: 568, column: 1, scope: !1790)
!1907 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !432, file: !432, line: 161, type: !1908, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!430, !430, !96}
!1910 = !DILocalVariable(name: "gstring", arg: 1, scope: !1907, file: !432, line: 161, type: !430)
!1911 = !DILocation(line: 161, column: 36, scope: !1907)
!1912 = !DILocalVariable(name: "c", arg: 2, scope: !1907, file: !432, line: 162, type: !96)
!1913 = !DILocation(line: 162, column: 33, scope: !1907)
!1914 = !DILocation(line: 164, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1907, file: !432, line: 164, column: 7)
!1916 = !DILocation(line: 164, column: 16, scope: !1915)
!1917 = !DILocation(line: 164, column: 20, scope: !1915)
!1918 = !DILocation(line: 164, column: 26, scope: !1915)
!1919 = !DILocation(line: 164, column: 35, scope: !1915)
!1920 = !DILocation(line: 164, column: 24, scope: !1915)
!1921 = !DILocation(line: 164, column: 7, scope: !1907)
!1922 = !DILocation(line: 166, column: 38, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !432, line: 165, column: 5)
!1924 = !DILocation(line: 166, column: 20, scope: !1923)
!1925 = !DILocation(line: 166, column: 29, scope: !1923)
!1926 = !DILocation(line: 166, column: 32, scope: !1923)
!1927 = !DILocation(line: 166, column: 7, scope: !1923)
!1928 = !DILocation(line: 166, column: 16, scope: !1923)
!1929 = !DILocation(line: 166, column: 36, scope: !1923)
!1930 = !DILocation(line: 167, column: 20, scope: !1923)
!1931 = !DILocation(line: 167, column: 29, scope: !1923)
!1932 = !DILocation(line: 167, column: 7, scope: !1923)
!1933 = !DILocation(line: 167, column: 16, scope: !1923)
!1934 = !DILocation(line: 167, column: 34, scope: !1923)
!1935 = !DILocation(line: 168, column: 5, scope: !1923)
!1936 = !DILocation(line: 170, column: 24, scope: !1915)
!1937 = !DILocation(line: 170, column: 37, scope: !1915)
!1938 = !DILocation(line: 170, column: 5, scope: !1915)
!1939 = !DILocation(line: 171, column: 10, scope: !1907)
!1940 = !DILocation(line: 171, column: 3, scope: !1907)
!1941 = distinct !DISubprogram(name: "settings_get_sorted", scope: !173, file: !173, line: 643, type: !1942, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!391}
!1944 = !DILocalVariable(name: "list", scope: !1941, file: !173, line: 645, type: !391)
!1945 = !DILocation(line: 645, column: 10, scope: !1941)
!1946 = !DILocation(line: 647, column: 7, scope: !1941)
!1947 = !DILocation(line: 648, column: 23, scope: !1941)
!1948 = !DILocation(line: 648, column: 61, scope: !1941)
!1949 = !DILocation(line: 648, column: 2, scope: !1941)
!1950 = !DILocation(line: 649, column: 9, scope: !1941)
!1951 = !DILocation(line: 649, column: 2, scope: !1941)
!1952 = distinct !DISubprogram(name: "settings_hash_get", scope: !173, file: !173, line: 636, type: !1953, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !99, !147, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!1956 = !DILocalVariable(name: "key", arg: 1, scope: !1952, file: !173, line: 636, type: !99)
!1957 = !DILocation(line: 636, column: 43, scope: !1952)
!1958 = !DILocalVariable(name: "rec", arg: 2, scope: !1952, file: !173, line: 636, type: !147)
!1959 = !DILocation(line: 636, column: 62, scope: !1952)
!1960 = !DILocalVariable(name: "list", arg: 3, scope: !1952, file: !173, line: 637, type: !1955)
!1961 = !DILocation(line: 637, column: 19, scope: !1952)
!1962 = !DILocation(line: 639, column: 33, scope: !1952)
!1963 = !DILocation(line: 639, column: 32, scope: !1952)
!1964 = !DILocation(line: 639, column: 39, scope: !1952)
!1965 = !DILocation(line: 639, column: 10, scope: !1952)
!1966 = !DILocation(line: 639, column: 3, scope: !1952)
!1967 = !DILocation(line: 639, column: 8, scope: !1952)
!1968 = !DILocation(line: 641, column: 1, scope: !1952)
!1969 = distinct !DISubprogram(name: "sig_term", scope: !173, file: !173, line: 652, type: !117, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1970 = !DILocalVariable(name: "n", arg: 1, scope: !1969, file: !173, line: 652, type: !108)
!1971 = !DILocation(line: 652, column: 19, scope: !1969)
!1972 = !DILocation(line: 655, column: 2, scope: !1969)
!1973 = !DILocation(line: 658, column: 2, scope: !1969)
!1974 = !DILocation(line: 661, column: 2, scope: !1969)
!1975 = !DILocation(line: 662, column: 1, scope: !1969)
!1976 = distinct !DISubprogram(name: "irssi_config_is_changed", scope: !173, file: !173, line: 699, type: !537, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!1977 = !DILocalVariable(name: "fname", arg: 1, scope: !1976, file: !173, line: 699, type: !99)
!1978 = !DILocation(line: 699, column: 41, scope: !1976)
!1979 = !DILocalVariable(name: "statbuf", scope: !1976, file: !173, line: 701, type: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1981, line: 46, size: 1152, align: 64, elements: !1982)
!1981 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1982 = !{!1983, !1985, !1987, !1989, !1991, !1993, !1995, !1996, !1997, !1999, !2001, !2003, !2009, !2010, !2011}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1980, file: !1981, line: 48, baseType: !1984, size: 64, align: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !465, line: 124, baseType: !168)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1980, file: !1981, line: 53, baseType: !1986, size: 64, align: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !465, line: 127, baseType: !168)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1980, file: !1981, line: 61, baseType: !1988, size: 64, align: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !465, line: 130, baseType: !168)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1980, file: !1981, line: 62, baseType: !1990, size: 32, align: 32, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !465, line: 129, baseType: !126)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1980, file: !1981, line: 64, baseType: !1992, size: 32, align: 32, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !465, line: 125, baseType: !126)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1980, file: !1981, line: 65, baseType: !1994, size: 32, align: 32, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !465, line: 126, baseType: !126)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1980, file: !1981, line: 67, baseType: !108, size: 32, align: 32, offset: 288)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1980, file: !1981, line: 69, baseType: !1984, size: 64, align: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1980, file: !1981, line: 74, baseType: !1998, size: 64, align: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !465, line: 131, baseType: !120)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1980, file: !1981, line: 78, baseType: !2000, size: 64, align: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !465, line: 153, baseType: !120)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1980, file: !1981, line: 80, baseType: !2002, size: 64, align: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !465, line: 158, baseType: !120)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1980, file: !1981, line: 91, baseType: !2004, size: 128, align: 64, offset: 576)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !463, line: 120, size: 128, align: 64, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2004, file: !463, line: 122, baseType: !464, size: 64, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2004, file: !463, line: 123, baseType: !2008, size: 64, align: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !465, line: 175, baseType: !120)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1980, file: !1981, line: 92, baseType: !2004, size: 128, align: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1980, file: !1981, line: 93, baseType: !2004, size: 128, align: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1980, file: !1981, line: 106, baseType: !2012, size: 192, align: 64, offset: 960)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2008, size: 192, align: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 3)
!2015 = !DILocation(line: 701, column: 14, scope: !1976)
!2016 = !DILocation(line: 703, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1976, file: !173, line: 703, column: 6)
!2018 = !DILocation(line: 703, column: 12, scope: !2017)
!2019 = !DILocation(line: 703, column: 6, scope: !1976)
!2020 = !DILocation(line: 704, column: 11, scope: !2017)
!2021 = !DILocation(line: 704, column: 23, scope: !2017)
!2022 = !DILocation(line: 704, column: 9, scope: !2017)
!2023 = !DILocation(line: 704, column: 3, scope: !2017)
!2024 = !DILocation(line: 706, column: 11, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1976, file: !173, line: 706, column: 6)
!2026 = !DILocation(line: 706, column: 6, scope: !2025)
!2027 = !DILocation(line: 706, column: 28, scope: !2025)
!2028 = !DILocation(line: 706, column: 6, scope: !1976)
!2029 = !DILocation(line: 707, column: 3, scope: !2025)
!2030 = !DILocation(line: 709, column: 9, scope: !1976)
!2031 = !DILocation(line: 709, column: 37, scope: !1976)
!2032 = !DILocation(line: 709, column: 45, scope: !1976)
!2033 = !DILocation(line: 709, column: 27, scope: !1976)
!2034 = !DILocation(line: 709, column: 46, scope: !1976)
!2035 = !DILocation(line: 710, column: 4, scope: !1976)
!2036 = !DILocation(line: 710, column: 32, scope: !1976)
!2037 = !DILocation(line: 710, column: 21, scope: !1976)
!2038 = !DILocation(line: 710, column: 40, scope: !1976)
!2039 = !DILocation(line: 711, column: 4, scope: !1976)
!2040 = !DILocation(line: 711, column: 42, scope: !1976)
!2041 = !DILocation(line: 711, column: 28, scope: !1976)
!2042 = !DILocation(line: 711, column: 25, scope: !1976)
!2043 = !DILocation(line: 710, column: 40, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1976, file: !173, discriminator: 1)
!2045 = !DILocation(line: 709, column: 46, scope: !2044)
!2046 = !DILocation(line: 709, column: 2, scope: !2044)
!2047 = !DILocation(line: 712, column: 1, scope: !1976)
!2048 = distinct !DISubprogram(name: "file_checksum", scope: !173, file: !173, line: 666, type: !2049, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!126, !99}
!2051 = !DILocalVariable(name: "fname", arg: 1, scope: !2048, file: !173, line: 666, type: !99)
!2052 = !DILocation(line: 666, column: 47, scope: !2048)
!2053 = !DILocalVariable(name: "buf", scope: !2048, file: !173, line: 668, type: !2054)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 4096, align: 8, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 512)
!2057 = !DILocation(line: 668, column: 14, scope: !2048)
!2058 = !DILocalVariable(name: "f", scope: !2048, file: !173, line: 669, type: !108)
!2059 = !DILocation(line: 669, column: 13, scope: !2048)
!2060 = !DILocalVariable(name: "ret", scope: !2048, file: !173, line: 669, type: !108)
!2061 = !DILocation(line: 669, column: 16, scope: !2048)
!2062 = !DILocalVariable(name: "n", scope: !2048, file: !173, line: 669, type: !108)
!2063 = !DILocation(line: 669, column: 21, scope: !2048)
!2064 = !DILocalVariable(name: "checksum", scope: !2048, file: !173, line: 670, type: !126)
!2065 = !DILocation(line: 670, column: 15, scope: !2048)
!2066 = !DILocation(line: 672, column: 11, scope: !2048)
!2067 = !DILocation(line: 672, column: 6, scope: !2048)
!2068 = !DILocation(line: 672, column: 4, scope: !2048)
!2069 = !DILocation(line: 673, column: 6, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2048, file: !173, line: 673, column: 6)
!2071 = !DILocation(line: 673, column: 8, scope: !2070)
!2072 = !DILocation(line: 673, column: 6, scope: !2048)
!2073 = !DILocation(line: 673, column: 15, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2070, file: !173, discriminator: 1)
!2075 = !DILocation(line: 675, column: 11, scope: !2048)
!2076 = !DILocation(line: 676, column: 2, scope: !2048)
!2077 = !DILocation(line: 676, column: 21, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2048, file: !173, discriminator: 1)
!2079 = !DILocation(line: 676, column: 24, scope: !2078)
!2080 = !DILocation(line: 676, column: 16, scope: !2078)
!2081 = !DILocation(line: 676, column: 14, scope: !2078)
!2082 = !DILocation(line: 676, column: 43, scope: !2078)
!2083 = !DILocation(line: 676, column: 2, scope: !2078)
!2084 = !DILocation(line: 677, column: 3, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2048, file: !173, line: 676, column: 48)
!2086 = !DILocation(line: 677, column: 13, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2085, file: !173, discriminator: 1)
!2088 = !DILocation(line: 677, column: 16, scope: !2087)
!2089 = !DILocation(line: 677, column: 3, scope: !2087)
!2090 = !DILocation(line: 678, column: 20, scope: !2085)
!2091 = !DILocation(line: 678, column: 16, scope: !2085)
!2092 = !DILocation(line: 678, column: 31, scope: !2085)
!2093 = !DILocation(line: 678, column: 34, scope: !2085)
!2094 = !DILocation(line: 678, column: 38, scope: !2085)
!2095 = !DILocation(line: 678, column: 25, scope: !2085)
!2096 = !DILocation(line: 678, column: 13, scope: !2085)
!2097 = !DILocation(line: 677, column: 3, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2085, file: !173, discriminator: 2)
!2099 = distinct !{!2099, !2084}
!2100 = !DILocation(line: 676, column: 2, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2048, file: !173, discriminator: 2)
!2102 = distinct !{!2102, !2076}
!2103 = !DILocation(line: 680, column: 8, scope: !2048)
!2104 = !DILocation(line: 680, column: 2, scope: !2048)
!2105 = !DILocation(line: 681, column: 9, scope: !2048)
!2106 = !DILocation(line: 681, column: 2, scope: !2048)
!2107 = !DILocation(line: 682, column: 1, scope: !2048)
!2108 = distinct !DISubprogram(name: "settings_reread", scope: !173, file: !173, line: 788, type: !537, isLocal: false, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2109 = !DILocalVariable(name: "fname", arg: 1, scope: !2108, file: !173, line: 788, type: !99)
!2110 = !DILocation(line: 788, column: 33, scope: !2108)
!2111 = !DILocalVariable(name: "tempconfig", scope: !2108, file: !173, line: 790, type: !174)
!2112 = !DILocation(line: 790, column: 14, scope: !2108)
!2113 = !DILocalVariable(name: "str", scope: !2108, file: !173, line: 791, type: !153)
!2114 = !DILocation(line: 791, column: 8, scope: !2108)
!2115 = !DILocation(line: 793, column: 8, scope: !2108)
!2116 = !DILocation(line: 793, column: 14, scope: !2108)
!2117 = !DILocation(line: 793, column: 8, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2108, file: !173, discriminator: 1)
!2119 = !DILocation(line: 793, column: 43, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2108, file: !173, discriminator: 2)
!2121 = !DILocation(line: 793, column: 30, scope: !2120)
!2122 = !DILocation(line: 793, column: 8, scope: !2120)
!2123 = !DILocation(line: 793, column: 8, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2108, file: !173, discriminator: 3)
!2125 = !DILocation(line: 793, column: 6, scope: !2124)
!2126 = !DILocation(line: 794, column: 32, scope: !2108)
!2127 = !DILocation(line: 794, column: 15, scope: !2108)
!2128 = !DILocation(line: 794, column: 13, scope: !2108)
!2129 = !DILocation(line: 795, column: 16, scope: !2108)
!2130 = !DILocation(line: 795, column: 9, scope: !2108)
!2131 = !DILocation(line: 797, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2108, file: !173, line: 797, column: 6)
!2133 = !DILocation(line: 797, column: 17, scope: !2132)
!2134 = !DILocation(line: 797, column: 6, scope: !2108)
!2135 = !DILocation(line: 798, column: 53, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !173, line: 797, column: 25)
!2137 = !DILocation(line: 798, column: 52, scope: !2136)
!2138 = !DILocation(line: 798, column: 41, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2136, file: !173, discriminator: 1)
!2140 = !DILocation(line: 798, column: 3, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2136, file: !173, discriminator: 2)
!2142 = !DILocation(line: 799, column: 3, scope: !2136)
!2143 = !DILocation(line: 802, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2108, file: !173, line: 802, column: 6)
!2145 = !DILocation(line: 802, column: 20, scope: !2144)
!2146 = !DILocation(line: 802, column: 31, scope: !2144)
!2147 = !DILocation(line: 802, column: 6, scope: !2108)
!2148 = !DILocation(line: 804, column: 12, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2144, file: !173, line: 802, column: 44)
!2150 = !DILocation(line: 804, column: 25, scope: !2149)
!2151 = !DILocation(line: 803, column: 9, scope: !2149)
!2152 = !DILocation(line: 803, column: 7, scope: !2149)
!2153 = !DILocation(line: 805, column: 41, scope: !2149)
!2154 = !DILocation(line: 805, column: 3, scope: !2149)
!2155 = !DILocation(line: 806, column: 10, scope: !2149)
!2156 = !DILocation(line: 806, column: 3, scope: !2149)
!2157 = !DILocation(line: 808, column: 16, scope: !2149)
!2158 = !DILocation(line: 808, column: 3, scope: !2149)
!2159 = !DILocation(line: 809, column: 17, scope: !2149)
!2160 = !DILocation(line: 812, column: 15, scope: !2108)
!2161 = !DILocation(line: 812, column: 2, scope: !2108)
!2162 = !DILocation(line: 813, column: 15, scope: !2108)
!2163 = !DILocation(line: 813, column: 13, scope: !2108)
!2164 = !DILocation(line: 814, column: 30, scope: !2108)
!2165 = !DILocation(line: 814, column: 42, scope: !2108)
!2166 = !DILocation(line: 814, column: 28, scope: !2108)
!2167 = !DILocation(line: 816, column: 2, scope: !2108)
!2168 = !DILocation(line: 817, column: 33, scope: !2108)
!2169 = !DILocation(line: 817, column: 45, scope: !2108)
!2170 = !DILocation(line: 817, column: 2, scope: !2108)
!2171 = !DILocation(line: 818, column: 9, scope: !2108)
!2172 = !DILocation(line: 819, column: 1, scope: !2108)
!2173 = distinct !DISubprogram(name: "parse_configfile", scope: !173, file: !173, line: 714, type: !2174, isLocal: true, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!174, !99}
!2176 = !DILocalVariable(name: "fname", arg: 1, scope: !2173, file: !173, line: 714, type: !99)
!2177 = !DILocation(line: 714, column: 49, scope: !2173)
!2178 = !DILocalVariable(name: "config", scope: !2173, file: !173, line: 716, type: !174)
!2179 = !DILocation(line: 716, column: 14, scope: !2173)
!2180 = !DILocalVariable(name: "statbuf", scope: !2173, file: !173, line: 717, type: !1980)
!2181 = !DILocation(line: 717, column: 14, scope: !2173)
!2182 = !DILocalVariable(name: "path", scope: !2173, file: !173, line: 718, type: !99)
!2183 = !DILocation(line: 718, column: 21, scope: !2173)
!2184 = !DILocalVariable(name: "str", scope: !2173, file: !173, line: 719, type: !153)
!2185 = !DILocation(line: 719, column: 8, scope: !2173)
!2186 = !DILocation(line: 721, column: 6, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2173, file: !173, line: 721, column: 6)
!2188 = !DILocation(line: 721, column: 12, scope: !2187)
!2189 = !DILocation(line: 721, column: 6, scope: !2173)
!2190 = !DILocation(line: 722, column: 11, scope: !2187)
!2191 = !DILocation(line: 722, column: 9, scope: !2187)
!2192 = !DILocation(line: 722, column: 3, scope: !2187)
!2193 = !DILocation(line: 724, column: 11, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2173, file: !173, line: 724, column: 6)
!2195 = !DILocation(line: 724, column: 6, scope: !2194)
!2196 = !DILocation(line: 724, column: 28, scope: !2194)
!2197 = !DILocation(line: 724, column: 6, scope: !2173)
!2198 = !DILocation(line: 725, column: 10, scope: !2194)
!2199 = !DILocation(line: 725, column: 8, scope: !2194)
!2200 = !DILocation(line: 725, column: 3, scope: !2194)
!2201 = !DILocation(line: 729, column: 22, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !173, line: 726, column: 7)
!2203 = !DILocation(line: 730, column: 12, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2202, file: !173, line: 730, column: 7)
!2205 = !DILocation(line: 730, column: 7, scope: !2204)
!2206 = !DILocation(line: 730, column: 28, scope: !2204)
!2207 = !DILocation(line: 730, column: 7, scope: !2202)
!2208 = !DILocation(line: 733, column: 30, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !173, line: 730, column: 34)
!2210 = !DILocation(line: 734, column: 3, scope: !2209)
!2211 = !DILocation(line: 737, column: 23, scope: !2173)
!2212 = !DILocation(line: 737, column: 11, scope: !2173)
!2213 = !DILocation(line: 737, column: 9, scope: !2173)
!2214 = !DILocation(line: 738, column: 6, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2173, file: !173, line: 738, column: 6)
!2216 = !DILocation(line: 738, column: 13, scope: !2215)
!2217 = !DILocation(line: 738, column: 6, scope: !2173)
!2218 = !DILocation(line: 740, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !173, line: 738, column: 21)
!2220 = !DILocation(line: 740, column: 29, scope: !2219)
!2221 = !DILocation(line: 740, column: 28, scope: !2219)
!2222 = !DILocation(line: 740, column: 17, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2219, file: !173, discriminator: 1)
!2224 = !DILocation(line: 739, column: 9, scope: !2219)
!2225 = !DILocation(line: 739, column: 7, scope: !2219)
!2226 = !DILocation(line: 741, column: 41, scope: !2219)
!2227 = !DILocation(line: 741, column: 3, scope: !2219)
!2228 = !DILocation(line: 742, column: 24, scope: !2219)
!2229 = !DILocation(line: 742, column: 17, scope: !2219)
!2230 = !DILocation(line: 744, column: 12, scope: !2219)
!2231 = !DILocation(line: 744, column: 10, scope: !2219)
!2232 = !DILocation(line: 745, column: 2, scope: !2219)
!2233 = !DILocation(line: 747, column: 13, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2173, file: !173, line: 747, column: 13)
!2235 = !DILocation(line: 747, column: 21, scope: !2234)
!2236 = !DILocation(line: 747, column: 27, scope: !2234)
!2237 = !DILocation(line: 747, column: 13, scope: !2173)
!2238 = !DILocation(line: 748, column: 16, scope: !2234)
!2239 = !DILocation(line: 748, column: 3, scope: !2234)
!2240 = !DILocation(line: 750, column: 21, scope: !2234)
!2241 = !DILocation(line: 750, column: 29, scope: !2234)
!2242 = !DILocation(line: 750, column: 3, scope: !2234)
!2243 = !DILocation(line: 752, column: 26, scope: !2173)
!2244 = !DILocation(line: 752, column: 34, scope: !2173)
!2245 = !DILocation(line: 752, column: 2, scope: !2173)
!2246 = !DILocation(line: 753, column: 33, scope: !2173)
!2247 = !DILocation(line: 753, column: 9, scope: !2173)
!2248 = !DILocation(line: 754, column: 9, scope: !2173)
!2249 = !DILocation(line: 754, column: 2, scope: !2173)
!2250 = distinct !DISubprogram(name: "settings_save", scope: !173, file: !173, line: 821, type: !2251, isLocal: false, isDefinition: true, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!108, !99, !108}
!2253 = !DILocalVariable(name: "fname", arg: 1, scope: !2250, file: !173, line: 821, type: !99)
!2254 = !DILocation(line: 821, column: 31, scope: !2250)
!2255 = !DILocalVariable(name: "autosave", arg: 2, scope: !2250, file: !173, line: 821, type: !108)
!2256 = !DILocation(line: 821, column: 42, scope: !2250)
!2257 = !DILocalVariable(name: "str", scope: !2250, file: !173, line: 823, type: !153)
!2258 = !DILocation(line: 823, column: 8, scope: !2250)
!2259 = !DILocalVariable(name: "error", scope: !2250, file: !173, line: 824, type: !108)
!2260 = !DILocation(line: 824, column: 6, scope: !2250)
!2261 = !DILocation(line: 826, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2250, file: !173, line: 826, column: 6)
!2263 = !DILocation(line: 826, column: 12, scope: !2262)
!2264 = !DILocation(line: 826, column: 6, scope: !2250)
!2265 = !DILocation(line: 827, column: 11, scope: !2262)
!2266 = !DILocation(line: 827, column: 23, scope: !2262)
!2267 = !DILocation(line: 827, column: 9, scope: !2262)
!2268 = !DILocation(line: 827, column: 3, scope: !2262)
!2269 = !DILocation(line: 829, column: 23, scope: !2250)
!2270 = !DILocation(line: 829, column: 35, scope: !2250)
!2271 = !DILocation(line: 829, column: 10, scope: !2250)
!2272 = !DILocation(line: 829, column: 48, scope: !2250)
!2273 = !DILocation(line: 829, column: 8, scope: !2250)
!2274 = !DILocation(line: 830, column: 26, scope: !2250)
!2275 = !DILocation(line: 830, column: 2, scope: !2250)
!2276 = !DILocation(line: 831, column: 30, scope: !2250)
!2277 = !DILocation(line: 831, column: 42, scope: !2250)
!2278 = !DILocation(line: 831, column: 28, scope: !2250)
!2279 = !DILocation(line: 832, column: 6, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2250, file: !173, line: 832, column: 6)
!2281 = !DILocation(line: 832, column: 6, scope: !2250)
!2282 = !DILocation(line: 834, column: 12, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !173, line: 832, column: 13)
!2284 = !DILocation(line: 834, column: 25, scope: !2283)
!2285 = !DILocation(line: 833, column: 9, scope: !2283)
!2286 = !DILocation(line: 833, column: 7, scope: !2283)
!2287 = !DILocation(line: 835, column: 41, scope: !2283)
!2288 = !DILocation(line: 835, column: 3, scope: !2283)
!2289 = !DILocation(line: 836, column: 10, scope: !2283)
!2290 = !DILocation(line: 836, column: 3, scope: !2283)
!2291 = !DILocation(line: 837, column: 2, scope: !2283)
!2292 = !DILocation(line: 838, column: 32, scope: !2250)
!2293 = !DILocation(line: 838, column: 60, scope: !2250)
!2294 = !DILocation(line: 838, column: 51, scope: !2250)
!2295 = !DILocation(line: 838, column: 40, scope: !2250)
!2296 = !DILocation(line: 838, column: 2, scope: !2250)
!2297 = !DILocation(line: 839, column: 17, scope: !2250)
!2298 = !DILocation(line: 839, column: 16, scope: !2250)
!2299 = !DILocation(line: 839, column: 9, scope: !2250)
!2300 = distinct !DISubprogram(name: "irssi_config_save_state", scope: !173, file: !173, line: 684, type: !1187, isLocal: true, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2301 = !DILocalVariable(name: "fname", arg: 1, scope: !2300, file: !173, line: 684, type: !99)
!2302 = !DILocation(line: 684, column: 49, scope: !2300)
!2303 = !DILocalVariable(name: "statbuf", scope: !2300, file: !173, line: 686, type: !1980)
!2304 = !DILocation(line: 686, column: 14, scope: !2300)
!2305 = !DILocation(line: 688, column: 2, scope: !2300)
!2306 = distinct !{!2306, !2305}
!2307 = !DILocation(line: 688, column: 10, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2309, file: !173, discriminator: 1)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !173, line: 688, column: 10)
!2310 = distinct !DILexicalBlock(scope: !2300, file: !173, line: 688, column: 4)
!2311 = !DILocation(line: 688, column: 16, scope: !2308)
!2312 = !DILocation(line: 688, column: 5, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !173, discriminator: 2)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !173, line: 688, column: 3)
!2315 = !DILocation(line: 688, column: 14, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2317, file: !173, discriminator: 3)
!2317 = distinct !DILexicalBlock(scope: !2309, file: !173, line: 688, column: 12)
!2318 = !DILocation(line: 688, column: 100, scope: !2316)
!2319 = !DILocation(line: 688, column: 111, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2310, file: !173, discriminator: 4)
!2321 = !DILocation(line: 690, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2300, file: !173, line: 690, column: 6)
!2323 = !DILocation(line: 690, column: 6, scope: !2322)
!2324 = !DILocation(line: 690, column: 28, scope: !2322)
!2325 = !DILocation(line: 690, column: 6, scope: !2300)
!2326 = !DILocation(line: 691, column: 3, scope: !2322)
!2327 = !DILocation(line: 694, column: 29, scope: !2300)
!2328 = !DILocation(line: 694, column: 37, scope: !2300)
!2329 = !DILocation(line: 694, column: 20, scope: !2300)
!2330 = !DILocation(line: 695, column: 29, scope: !2300)
!2331 = !DILocation(line: 695, column: 19, scope: !2300)
!2332 = !DILocation(line: 696, column: 39, scope: !2300)
!2333 = !DILocation(line: 696, column: 25, scope: !2300)
!2334 = !DILocation(line: 696, column: 23, scope: !2300)
!2335 = !DILocation(line: 697, column: 1, scope: !2300)
!2336 = !DILocation(line: 697, column: 1, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2300, file: !173, discriminator: 1)
!2338 = distinct !DISubprogram(name: "settings_init", scope: !173, file: !173, line: 869, type: !380, isLocal: false, isDefinition: true, scopeLine: 870, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2339 = !DILocation(line: 871, column: 13, scope: !2338)
!2340 = !DILocation(line: 871, column: 11, scope: !2338)
!2341 = !DILocation(line: 874, column: 14, scope: !2338)
!2342 = !DILocation(line: 875, column: 30, scope: !2338)
!2343 = !DILocation(line: 876, column: 17, scope: !2338)
!2344 = !DILocation(line: 877, column: 24, scope: !2338)
!2345 = !DILocation(line: 879, column: 20, scope: !2338)
!2346 = !DILocation(line: 880, column: 28, scope: !2338)
!2347 = !DILocation(line: 881, column: 2, scope: !2338)
!2348 = !DILocation(line: 883, column: 2, scope: !2338)
!2349 = !DILocation(line: 884, column: 16, scope: !2338)
!2350 = !DILocation(line: 884, column: 14, scope: !2338)
!2351 = !DILocation(line: 886, column: 2, scope: !2338)
!2352 = !DILocation(line: 887, column: 2, scope: !2338)
!2353 = !DILocation(line: 888, column: 2, scope: !2338)
!2354 = !DILocation(line: 889, column: 1, scope: !2338)
!2355 = distinct !DISubprogram(name: "init_configfile", scope: !173, file: !173, line: 757, type: !380, isLocal: true, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2356 = !DILocalVariable(name: "statbuf", scope: !2355, file: !173, line: 759, type: !1980)
!2357 = !DILocation(line: 759, column: 14, scope: !2355)
!2358 = !DILocalVariable(name: "str", scope: !2355, file: !173, line: 760, type: !153)
!2359 = !DILocation(line: 760, column: 8, scope: !2355)
!2360 = !DILocation(line: 762, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !173, line: 762, column: 6)
!2362 = !DILocation(line: 762, column: 6, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2361, file: !173, discriminator: 1)
!2364 = !DILocation(line: 762, column: 38, scope: !2361)
!2365 = !DILocation(line: 762, column: 6, scope: !2355)
!2366 = !DILocation(line: 764, column: 28, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !173, line: 764, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !173, line: 762, column: 44)
!2369 = !DILocation(line: 764, column: 7, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2367, file: !173, discriminator: 1)
!2371 = !DILocation(line: 764, column: 51, scope: !2367)
!2372 = !DILocation(line: 764, column: 7, scope: !2368)
!2373 = !DILocation(line: 765, column: 4, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !173, line: 764, column: 57)
!2375 = distinct !{!2375, !2373}
!2376 = !DILocation(line: 765, column: 85, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !173, discriminator: 1)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !173, line: 765, column: 7)
!2379 = !DILocation(line: 765, column: 5, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2377, file: !173, discriminator: 3)
!2381 = !DILocation(line: 765, column: 4, scope: !2377)
!2382 = !DILocation(line: 765, column: 102, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2377, file: !173, discriminator: 4)
!2384 = !DILocation(line: 765, column: 9, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2377, file: !173, discriminator: 5)
!2386 = !DILocation(line: 765, column: 7, scope: !2377)
!2387 = !DILocation(line: 765, column: 7, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2389, file: !173, discriminator: 2)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !173, line: 765, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2378, file: !173, line: 765, column: 7)
!2391 = distinct !{!2391, !2392}
!2392 = !DILocation(line: 765, column: 7, scope: !2378)
!2393 = !DILocation(line: 767, column: 3, scope: !2374)
!2394 = !DILocation(line: 768, column: 2, scope: !2368)
!2395 = !DILocation(line: 768, column: 21, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2397, file: !173, discriminator: 1)
!2397 = distinct !DILexicalBlock(scope: !2361, file: !173, line: 768, column: 13)
!2398 = !DILocation(line: 768, column: 16, scope: !2396)
!2399 = !DILocation(line: 768, column: 27, scope: !2396)
!2400 = !DILocation(line: 768, column: 13, scope: !2396)
!2401 = !DILocation(line: 769, column: 3, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !173, line: 768, column: 39)
!2403 = distinct !{!2403, !2401}
!2404 = !DILocation(line: 769, column: 119, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2406, file: !173, discriminator: 1)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !173, line: 769, column: 6)
!2407 = !DILocation(line: 769, column: 136, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2405, file: !173, discriminator: 3)
!2409 = !DILocation(line: 769, column: 8, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2405, file: !173, discriminator: 4)
!2411 = !DILocation(line: 769, column: 154, scope: !2405)
!2412 = !DILocation(line: 769, column: 154, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2414, file: !173, discriminator: 2)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !173, line: 769, column: 154)
!2415 = distinct !DILexicalBlock(scope: !2406, file: !173, line: 769, column: 154)
!2416 = distinct !{!2416, !2417}
!2417 = !DILocation(line: 769, column: 154, scope: !2406)
!2418 = !DILocation(line: 772, column: 2, scope: !2402)
!2419 = !DILocation(line: 774, column: 15, scope: !2355)
!2420 = !DILocation(line: 774, column: 13, scope: !2355)
!2421 = !DILocation(line: 775, column: 30, scope: !2355)
!2422 = !DILocation(line: 775, column: 42, scope: !2355)
!2423 = !DILocation(line: 775, column: 28, scope: !2355)
!2424 = !DILocation(line: 778, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2355, file: !173, line: 778, column: 6)
!2426 = !DILocation(line: 778, column: 20, scope: !2425)
!2427 = !DILocation(line: 778, column: 31, scope: !2425)
!2428 = !DILocation(line: 778, column: 6, scope: !2355)
!2429 = !DILocation(line: 780, column: 12, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !173, line: 778, column: 44)
!2431 = !DILocation(line: 780, column: 25, scope: !2430)
!2432 = !DILocation(line: 779, column: 9, scope: !2430)
!2433 = !DILocation(line: 779, column: 7, scope: !2430)
!2434 = !DILocation(line: 781, column: 41, scope: !2430)
!2435 = !DILocation(line: 781, column: 3, scope: !2430)
!2436 = !DILocation(line: 782, column: 24, scope: !2430)
!2437 = !DILocation(line: 782, column: 17, scope: !2430)
!2438 = !DILocation(line: 783, column: 2, scope: !2430)
!2439 = !DILocation(line: 785, column: 2, scope: !2355)
!2440 = !DILocation(line: 786, column: 1, scope: !2355)
!2441 = distinct !DISubprogram(name: "sig_autosave", scope: !173, file: !173, line: 842, type: !2442, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!108}
!2444 = !DILocalVariable(name: "fname", scope: !2441, file: !173, line: 844, type: !153)
!2445 = !DILocation(line: 844, column: 8, scope: !2441)
!2446 = !DILocalVariable(name: "str", scope: !2441, file: !173, line: 844, type: !153)
!2447 = !DILocation(line: 844, column: 16, scope: !2441)
!2448 = !DILocation(line: 846, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !173, line: 846, column: 6)
!2450 = !DILocation(line: 846, column: 46, scope: !2449)
!2451 = !DILocation(line: 847, column: 6, scope: !2449)
!2452 = !DILocation(line: 847, column: 35, scope: !2449)
!2453 = !DILocation(line: 847, column: 47, scope: !2449)
!2454 = !DILocation(line: 847, column: 32, scope: !2449)
!2455 = !DILocation(line: 846, column: 6, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2441, file: !173, discriminator: 1)
!2457 = !DILocation(line: 848, column: 3, scope: !2449)
!2458 = !DILocation(line: 850, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2441, file: !173, line: 850, column: 6)
!2460 = !DILocation(line: 850, column: 6, scope: !2441)
!2461 = !DILocation(line: 851, column: 3, scope: !2459)
!2462 = !DILocation(line: 853, column: 23, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !173, line: 852, column: 7)
!2464 = !DILocation(line: 853, column: 35, scope: !2463)
!2465 = !DILocation(line: 853, column: 11, scope: !2463)
!2466 = !DILocation(line: 853, column: 9, scope: !2463)
!2467 = !DILocation(line: 858, column: 28, scope: !2463)
!2468 = !DILocation(line: 854, column: 9, scope: !2463)
!2469 = !DILocation(line: 854, column: 7, scope: !2463)
!2470 = !DILocation(line: 859, column: 43, scope: !2463)
!2471 = !DILocation(line: 859, column: 3, scope: !2463)
!2472 = !DILocation(line: 860, column: 10, scope: !2463)
!2473 = !DILocation(line: 860, column: 3, scope: !2463)
!2474 = !DILocation(line: 862, column: 31, scope: !2463)
!2475 = !DILocation(line: 862, column: 17, scope: !2463)
!2476 = !DILocation(line: 863, column: 10, scope: !2463)
!2477 = !DILocation(line: 863, column: 3, scope: !2463)
!2478 = !DILocation(line: 866, column: 9, scope: !2441)
!2479 = !DILocation(line: 867, column: 1, scope: !2441)
!2480 = distinct !DISubprogram(name: "sig_init_finished", scope: !173, file: !173, line: 473, type: !380, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2481 = !DILocation(line: 475, column: 17, scope: !2480)
!2482 = !DILocation(line: 476, column: 6, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !173, line: 476, column: 6)
!2484 = !DILocation(line: 476, column: 18, scope: !2483)
!2485 = !DILocation(line: 476, column: 6, scope: !2480)
!2486 = !DILocation(line: 477, column: 37, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !173, line: 476, column: 26)
!2488 = !DILocation(line: 477, column: 50, scope: !2487)
!2489 = !DILocation(line: 477, column: 3, scope: !2487)
!2490 = !DILocation(line: 478, column: 17, scope: !2487)
!2491 = !DILocation(line: 478, column: 3, scope: !2487)
!2492 = !DILocation(line: 479, column: 2, scope: !2487)
!2493 = !DILocation(line: 481, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2480, file: !173, line: 481, column: 6)
!2495 = !DILocation(line: 481, column: 6, scope: !2480)
!2496 = !DILocation(line: 484, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !173, line: 481, column: 22)
!2498 = !DILocation(line: 486, column: 3, scope: !2497)
!2499 = !DILocation(line: 487, column: 2, scope: !2497)
!2500 = !DILocation(line: 489, column: 68, scope: !2480)
!2501 = !DILocation(line: 489, column: 58, scope: !2480)
!2502 = !DILocation(line: 489, column: 47, scope: !2480)
!2503 = !DILocation(line: 489, column: 2, scope: !2480)
!2504 = !DILocation(line: 490, column: 1, scope: !2480)
!2505 = distinct !DISubprogram(name: "sig_init_userinfo_changed", scope: !173, file: !173, line: 468, type: !344, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2506 = !DILocalVariable(name: "changedp", arg: 1, scope: !2505, file: !173, line: 468, type: !109)
!2507 = !DILocation(line: 468, column: 48, scope: !2505)
!2508 = !DILocation(line: 470, column: 46, scope: !2505)
!2509 = !DILocation(line: 470, column: 36, scope: !2505)
!2510 = !DILocation(line: 470, column: 28, scope: !2505)
!2511 = !DILocation(line: 470, column: 24, scope: !2505)
!2512 = !DILocation(line: 471, column: 1, scope: !2505)
!2513 = distinct !DISubprogram(name: "settings_deinit", scope: !173, file: !173, line: 896, type: !380, isLocal: false, isDefinition: true, scopeLine: 897, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2514 = !DILocation(line: 898, column: 25, scope: !2513)
!2515 = !DILocation(line: 898, column: 9, scope: !2513)
!2516 = !DILocation(line: 899, column: 2, scope: !2513)
!2517 = !DILocation(line: 900, column: 2, scope: !2513)
!2518 = !DILocation(line: 901, column: 2, scope: !2513)
!2519 = !DILocation(line: 903, column: 18, scope: !2513)
!2520 = !DILocation(line: 903, column: 2, scope: !2513)
!2521 = !DILocation(line: 904, column: 15, scope: !2513)
!2522 = !DILocation(line: 904, column: 2, scope: !2513)
!2523 = !DILocation(line: 906, column: 23, scope: !2513)
!2524 = !DILocation(line: 906, column: 2, scope: !2513)
!2525 = !DILocation(line: 907, column: 23, scope: !2513)
!2526 = !DILocation(line: 907, column: 2, scope: !2513)
!2527 = !DILocation(line: 909, column: 6, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2513, file: !173, line: 909, column: 6)
!2529 = !DILocation(line: 909, column: 17, scope: !2528)
!2530 = !DILocation(line: 909, column: 6, scope: !2513)
!2531 = !DILocation(line: 909, column: 38, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2528, file: !173, discriminator: 1)
!2533 = !DILocation(line: 909, column: 25, scope: !2532)
!2534 = !DILocation(line: 910, column: 1, scope: !2513)
!2535 = distinct !DISubprogram(name: "settings_hash_free", scope: !173, file: !173, line: 891, type: !2536, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !99, !147}
!2538 = !DILocalVariable(name: "key", arg: 1, scope: !2535, file: !173, line: 891, type: !99)
!2539 = !DILocation(line: 891, column: 44, scope: !2535)
!2540 = !DILocalVariable(name: "rec", arg: 2, scope: !2535, file: !173, line: 891, type: !147)
!2541 = !DILocation(line: 891, column: 63, scope: !2535)
!2542 = !DILocation(line: 893, column: 19, scope: !2535)
!2543 = !DILocation(line: 893, column: 2, scope: !2535)
!2544 = !DILocation(line: 894, column: 1, scope: !2535)
!2545 = distinct !DISubprogram(name: "settings_destroy", scope: !173, file: !173, line: 319, type: !2546, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !147}
!2548 = !DILocalVariable(name: "rec", arg: 1, scope: !2545, file: !173, line: 319, type: !147)
!2549 = !DILocation(line: 319, column: 44, scope: !2545)
!2550 = !DILocation(line: 321, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2545, file: !173, line: 321, column: 6)
!2552 = !DILocation(line: 321, column: 11, scope: !2551)
!2553 = !DILocation(line: 321, column: 16, scope: !2551)
!2554 = !DILocation(line: 321, column: 36, scope: !2551)
!2555 = !DILocation(line: 322, column: 6, scope: !2551)
!2556 = !DILocation(line: 322, column: 11, scope: !2551)
!2557 = !DILocation(line: 322, column: 16, scope: !2551)
!2558 = !DILocation(line: 322, column: 40, scope: !2551)
!2559 = !DILocation(line: 323, column: 6, scope: !2551)
!2560 = !DILocation(line: 323, column: 11, scope: !2551)
!2561 = !DILocation(line: 323, column: 16, scope: !2551)
!2562 = !DILocation(line: 321, column: 6, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2545, file: !173, discriminator: 1)
!2564 = !DILocation(line: 324, column: 10, scope: !2551)
!2565 = !DILocation(line: 324, column: 15, scope: !2551)
!2566 = !DILocation(line: 324, column: 29, scope: !2551)
!2567 = !DILocation(line: 324, column: 3, scope: !2551)
!2568 = !DILocation(line: 325, column: 13, scope: !2545)
!2569 = !DILocation(line: 325, column: 18, scope: !2545)
!2570 = !DILocation(line: 325, column: 2, scope: !2545)
!2571 = !DILocation(line: 326, column: 16, scope: !2545)
!2572 = !DILocation(line: 326, column: 21, scope: !2545)
!2573 = !DILocation(line: 326, column: 9, scope: !2545)
!2574 = !DILocation(line: 327, column: 16, scope: !2545)
!2575 = !DILocation(line: 327, column: 21, scope: !2545)
!2576 = !DILocation(line: 327, column: 9, scope: !2545)
!2577 = !DILocation(line: 328, column: 16, scope: !2545)
!2578 = !DILocation(line: 328, column: 21, scope: !2545)
!2579 = !DILocation(line: 328, column: 9, scope: !2545)
!2580 = !DILocation(line: 329, column: 9, scope: !2545)
!2581 = !DILocation(line: 329, column: 2, scope: !2545)
!2582 = !DILocation(line: 330, column: 1, scope: !2545)
!2583 = distinct !DISubprogram(name: "settings_compare", scope: !173, file: !173, line: 628, type: !2584, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !475)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!108, !147, !147}
!2586 = !DILocalVariable(name: "v1", arg: 1, scope: !2583, file: !173, line: 628, type: !147)
!2587 = !DILocation(line: 628, column: 43, scope: !2583)
!2588 = !DILocalVariable(name: "v2", arg: 2, scope: !2583, file: !173, line: 628, type: !147)
!2589 = !DILocation(line: 628, column: 61, scope: !2583)
!2590 = !DILocalVariable(name: "cmp", scope: !2583, file: !173, line: 630, type: !108)
!2591 = !DILocation(line: 630, column: 6, scope: !2583)
!2592 = !DILocation(line: 630, column: 22, scope: !2583)
!2593 = !DILocation(line: 630, column: 26, scope: !2583)
!2594 = !DILocation(line: 630, column: 35, scope: !2583)
!2595 = !DILocation(line: 630, column: 39, scope: !2583)
!2596 = !DILocation(line: 630, column: 12, scope: !2583)
!2597 = !DILocation(line: 631, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2583, file: !173, line: 631, column: 6)
!2599 = !DILocation(line: 631, column: 6, scope: !2583)
!2600 = !DILocation(line: 632, column: 19, scope: !2598)
!2601 = !DILocation(line: 632, column: 23, scope: !2598)
!2602 = !DILocation(line: 632, column: 28, scope: !2598)
!2603 = !DILocation(line: 632, column: 32, scope: !2598)
!2604 = !DILocation(line: 632, column: 9, scope: !2598)
!2605 = !DILocation(line: 632, column: 7, scope: !2598)
!2606 = !DILocation(line: 632, column: 3, scope: !2598)
!2607 = !DILocation(line: 633, column: 9, scope: !2583)
!2608 = !DILocation(line: 633, column: 2, scope: !2583)
