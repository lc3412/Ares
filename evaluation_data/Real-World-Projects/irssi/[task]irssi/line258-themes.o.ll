; ModuleID = './line258-themes.o.i'
source_filename = "./line258-themes.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GString = type { i8*, i64, i64 }
%struct.theme_rm_col = type { [8 x i8] }
%struct._GTree = type opaque
%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct.THEME_READ_REC = type { %struct.THEME_REC*, %struct._CONFIG_REC* }
%struct.THEME_SEARCH_REC = type { i8*, i8* }
%struct.MODULE_THEME_REC = type { i8*, i32, i8**, i8** }
%struct.THEME_SAVE_REC = type { %struct._CONFIG_REC*, i32 }

@.str = private unnamed_addr constant [8496 x i8] c"# When testing changes, the easiest way to reload the theme is with /RELOAD.\0A# This reloads the configuration file too, so if you did any changes remember\0A# to /SAVE it first. Remember also that /SAVE overwrites the theme file with\0A# old data so keep backups :)\0A\0A# TEMPLATES:\0A\0A# The real text formats that irssi uses are the ones you can find with\0A# /FORMAT command. Back in the old days all the colors and texts were mixed\0A# up in those formats, and it was really hard to change the colors since you\0A# might have had to change them in tens of different places. So, then came\0A# this templating system.\0A\0A# Now the /FORMATs don't have any colors in them, and they also have very\0A# little other styling. Most of the stuff you need to change is in this\0A# theme file. If you can't change something here, you can always go back\0A# to change the /FORMATs directly, they're also saved in these .theme files.\0A\0A# So .. the templates. They're those {blahblah} parts you see all over the\0A# /FORMATs and here. Their usage is simply {name parameter1 parameter2}.\0A# When irssi sees this kind of text, it goes to find \22name\22 from abstracts\0A# block below and sets \22parameter1\22 into $0 and \22parameter2\22 into $1 (you\0A# can have more parameters of course). Templates can have subtemplates.\0A# Here's a small example:\0A#   /FORMAT format hello {colorify {underline world}}\0A#   abstracts = { colorify = \22%G$0-%n\22; underline = \22%U$0-%U\22; }\0A# When irssi expands the templates in \22format\22, the final string would be:\0A#   hello %G%Uworld%U%n\0A# ie. underlined bright green \22world\22 text.\0A# and why \22$0-\22, why not \22$0\22? $0 would only mean the first parameter,\0A# $0- means all the parameters. With {underline hello world} you'd really\0A# want to underline both of the words, not just the hello (and world would\0A# actually be removed entirely).\0A\0A# COLORS:\0A\0A# You can find definitions for the color format codes in docs/formats.txt.\0A\0A# There's one difference here though. %n format. Normally it means the\0A# default color of the terminal (white mostly), but here it means the\0A# \22reset color back to the one it was in higher template\22. For example\0A# if there was /FORMAT test %g{foo}bar, and foo = \22%Y$0%n\22, irssi would\0A# print yellow \22foo\22 (as set with %Y) but \22bar\22 would be green, which was\0A# set at the beginning before the {foo} template. If there wasn't the %g\0A# at start, the normal behaviour of %n would occur. If you _really_ want\0A# to use the terminal's default color, use %N.\0A\0A#############################################################################\0A\0A# default foreground color (%N) - -1 is the \22default terminal color\22\0Adefault_color = \22-1\22;\0A\0A# print timestamp/servertag at the end of line, not at beginning\0Ainfo_eol = \22false\22;\0A\0A# these characters are automatically replaced with specified color\0A# (dark grey by default)\0Areplaces = { \22[]=\22 = \22%K$*%n\22; };\0A\0Aabstracts = {\0A  ##\0A  ## generic\0A  ##\0A\0A  # text to insert at the beginning of each non-message line\0A  line_start = \22%B-%n!%B-%n \22;\0A\0A  # timestamp styling, nothing by default\0A  timestamp = \22$*\22;\0A\0A  # any kind of text that needs hilighting, default is to bold\0A  hilight = \22%_$*%_\22;\0A\0A  # any kind of error message, default is bright red\0A  error = \22%R$*%n\22;\0A\0A  # channel name is printed\0A  channel = \22%_$*%_\22;\0A\0A  # nick is printed\0A  nick = \22%_$*%_\22;\0A\0A  # nick host is printed\0A  nickhost = \22[$*]\22;\0A\0A  # server name is printed\0A  server = \22%_$*%_\22;\0A\0A  # some kind of comment is printed\0A  comment = \22[$*]\22;\0A\0A  # reason for something is printed (part, quit, kick, ..)\0A  reason = \22{comment $*}\22;\0A\0A  # mode change is printed ([+o nick])\0A  mode = \22{comment $*}\22;\0A\0A  ##\0A  ## channel specific messages\0A  ##\0A\0A  # highlighted nick/host is printed (joins)\0A  channick_hilight = \22%C$*%n\22;\0A  chanhost_hilight = \22{nickhost %c$*%n}\22;\0A\0A  # nick/host is printed (parts, quits, etc.)\0A  channick = \22%c$*%n\22;\0A  chanhost = \22{nickhost $*}\22;\0A\0A  # highlighted channel name is printed\0A  channelhilight = \22%c$*%n\22;\0A\0A  # ban/ban exception/invite list mask is printed\0A  ban = \22%c$*%n\22;\0A\0A  ##\0A  ## messages\0A  ##\0A\0A  # the basic styling of how to print message, $0 = nick mode, $1 = nick\0A  msgnick = \22%K<%n$0$1-%K>%n %|\22;\0A\0A  # message from you is printed. \22ownnick\22 specifies the styling of the\0A  # nick ($0 part in msgnick) and \22ownmsgnick\22 specifies the styling of the\0A  # whole line.\0A\0A  # Example1: You want the message text to be green:\0A  #  ownmsgnick = \22{msgnick $0 $1-}%g\22;\0A  # Example2.1: You want < and > chars to be yellow:\0A  #  ownmsgnick = \22%Y{msgnick $0 $1-%Y}%n\22;\0A  #  (you'll also have to remove <> from replaces list above)\0A  # Example2.2: But you still want to keep <> grey for other messages:\0A  #  pubmsgnick = \22%K{msgnick $0 $1-%K}%n\22;\0A  #  pubmsgmenick = \22%K{msgnick $0 $1-%K}%n\22;\0A  #  pubmsghinick = \22%K{msgnick $1 $0$2-%n%K}%n\22;\0A  #  ownprivmsgnick = \22%K{msgnick  $*%K}%n\22;\0A  #  privmsgnick = \22%K{msgnick  %R$*%K}%n\22;\0A\0A  # $0 = nick mode, $1 = nick\0A  ownmsgnick = \22{msgnick $0 $1-}\22;\0A  ownnick = \22%_$*%n\22;\0A\0A  # public message in channel, $0 = nick mode, $1 = nick\0A  pubmsgnick = \22{msgnick $0 $1-}\22;\0A  pubnick = \22%N$*%n\22;\0A\0A  # public message in channel meant for me, $0 = nick mode, $1 = nick\0A  pubmsgmenick = \22{msgnick $0 $1-}\22;\0A  menick = \22%Y$*%n\22;\0A\0A  # public highlighted message in channel\0A  # $0 = highlight color, $1 = nick mode, $2 = nick\0A  pubmsghinick = \22{msgnick $1 $0$2-%n}\22;\0A\0A  # channel name is printed with message\0A  msgchannel = \22%K:%c$*%n\22;\0A\0A  # private message, $0 = nick, $1 = host\0A  privmsg = \22[%R$0%K(%r$1-%K)%n] \22;\0A\0A  # private message from you, $0 = \22msg\22, $1 = target nick\0A  ownprivmsg = \22[%r$0%K(%R$1-%K)%n] \22;\0A\0A  # own private message in query\0A  ownprivmsgnick = \22{msgnick  $*}\22;\0A  ownprivnick = \22%_$*%n\22;\0A\0A  # private message in query\0A  privmsgnick = \22{msgnick  %R$*%n}\22;\0A\0A  ##\0A  ## Actions (/ME stuff)\0A  ##\0A\0A  # used internally by this theme\0A  action_core = \22%_ * $*%n\22;\0A\0A  # generic one that's used by most actions\0A  action = \22{action_core $*} \22;\0A\0A  # own action, both private/public\0A  ownaction = \22{action $*}\22;\0A\0A  # own action with target, both private/public\0A  ownaction_target = \22{action_core $0}%K:%c$1%n \22;\0A\0A  # private action sent by others\0A  pvtaction = \22%_ (*) $*%n \22;\0A  pvtaction_query = \22{action $*}\22;\0A\0A  # public action sent by others\0A  pubaction = \22{action $*}\22;\0A\0A\0A  ##\0A  ## other IRC events\0A  ##\0A\0A  # whois\0A  whois = \22%# $[8]0 : $1-\22;\0A\0A  # notices\0A  ownnotice = \22[%r$0%K(%R$1-%K)]%n \22;\0A  notice = \22%K-%M$*%K-%n \22;\0A  pubnotice_channel = \22%K:%m$*\22;\0A  pvtnotice_host = \22%K(%m$*%K)\22;\0A  servernotice = \22%g!$*%n \22;\0A\0A  # CTCPs\0A  ownctcp = \22[%r$0%K(%R$1-%K)] \22;\0A  ctcp = \22%g$*%n\22;\0A\0A  # wallops\0A  wallop = \22%_$*%n: \22;\0A  wallop_nick = \22%n$*\22;\0A  wallop_action = \22%_ * $*%n \22;\0A\0A  # netsplits\0A  netsplit = \22%R$*%n\22;\0A  netjoin = \22%C$*%n\22;\0A\0A  # /names list\0A  names_prefix = \22\22;\0A  names_nick = \22[%_$0%_$1-] \22;\0A  names_nick_op = \22{names_nick $*}\22;\0A  names_nick_halfop = \22{names_nick $*}\22;\0A  names_nick_voice = \22{names_nick $*}\22;\0A  names_users = \22[%g$*%n]\22;\0A  names_channel = \22%G$*%n\22;\0A\0A  # DCC\0A  dcc = \22%g$*%n\22;\0A  dccfile = \22%_$*%_\22;\0A\0A  # DCC chat, own msg/action\0A  dccownmsg = \22[%r$0%K($1-%K)%n] \22;\0A  dccownnick = \22%R$*%n\22;\0A  dccownquerynick = \22%_$*%n\22;\0A  dccownaction = \22{action $*}\22;\0A  dccownaction_target = \22{action_core $0}%K:%c$1%n \22;\0A\0A  # DCC chat, others\0A  dccmsg = \22[%G$1-%K(%g$0%K)%n] \22;\0A  dccquerynick = \22%G$*%n\22;\0A  dccaction = \22%_ (*dcc*) $*%n %|\22;\0A\0A  ##\0A  ## statusbar\0A  ##\0A\0A  # default background for all statusbars. You can also give\0A  # the default foreground color for statusbar items.\0A  sb_background = \22%4%w\22;\0A  window_border = \22%4%w\22;\0A\0A  # default backround for \22default\22 statusbar group\0A  #sb_default_bg = \22%4\22;\0A  # background for prompt / input line\0A  sb_prompt_bg = \22%n\22;\0A  # background for info statusbar\0A  sb_info_bg = \22%8\22;\0A  # background for topicbar (same default)\0A  #sb_topic_bg = \22%4\22;\0A\0A  # text at the beginning of statusbars. \22sb\22 already puts a space there,\0A  # so we don't use anything by default.\0A  sbstart = \22\22;\0A  # text at the end of statusbars. Use space so that it's never\0A  # used for anything.\0A  sbend = \22 \22;\0A\0A  topicsbstart = \22{sbstart $*}\22;\0A  topicsbend = \22{sbend $*}\22;\0A\0A  prompt = \22[$*] \22;\0A\0A  sb = \22 %c[%n$*%c]%n\22;\0A  sbmode = \22(%c+%n$*)\22;\0A  sbaway = \22 (%GzZzZ%n)\22;\0A  sbservertag = \22:$0 (change with ^X)\22;\0A  sbnickmode = \22$0\22;\0A\0A  # activity in statusbar\0A\0A  # ',' separator\0A  sb_act_sep = \22%c$*\22;\0A  # normal text\0A  sb_act_text = \22%c$*\22;\0A  # public message\0A  sb_act_msg = \22%W$*\22;\0A  # hilight\0A  sb_act_hilight = \22%M$*\22;\0A  # hilight with specified color, $0 = color, $1 = text\0A  sb_act_hilight_color = \22$0$1-%n\22;\0A};\0A\00", align 1
@default_theme = global i8* getelementptr inbounds ([8496 x i8], [8496 x i8]* @.str, i32 0, i32 0), align 8
@__func__.theme_create = private unnamed_addr constant [13 x i8] c"theme_create\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@themes = common global %struct._GSList* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"theme created\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"theme destroyed\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\5Cx20\00", align 1
@__func__.theme_format_expand = private unnamed_addr constant [20 x i8] c"theme_format_expand\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"theme != NULL\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@default_formats = common global %struct._GHashTable* null, align 8
@internal_theme = internal global %struct.THEME_REC* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c".theme\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s/%s.theme\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"/usr/local/share/irssi/themes/%s.theme\00", align 1
@current_theme = common global %struct.THEME_REC* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%s/default.theme\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"theme\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@init_finished = internal global i32 0, align 4
@init_errors = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"complete command format\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"delete reset\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%n\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@fgcolorformats = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), align 8
@bgcolorformats = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"nkrgybmpcwKRGYBMPCW\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"n01234567\00", align 1
@__func__.theme_replace_expand = private unnamed_addr constant [21 x i8] c"theme_replace_expand\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"$0-\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s{%c}\00", align 1
@data_is_empty.arglist = internal global [11 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.32 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.theme_init_module = private unnamed_addr constant [18 x i8] c"theme_init_module\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"formats != NULL\00", align 1
@__func__.theme_module_create = private unnamed_addr constant [20 x i8] c"theme_module_create\00", align 1
@windows = external global %struct._GSList*, align 8
@.str.34 = private unnamed_addr constant [32 x i8] c"Error reading theme file %s: %s\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Ignored errors in theme %s:\0A%s\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"default_color\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"info_eol\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"replaces\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"abstracts\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"theme changed\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"_internal\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@__func__.sig_complete_format = private unnamed_addr constant [20 x i8] c"sig_complete_format\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@__func__.completion_get_formats = private unnamed_addr constant [23 x i8] c"completion_get_formats\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"gui dialog\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define %struct.THEME_REC* @theme_create(i8*, i8*) #0 !dbg !476 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.THEME_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !479, metadata !480), !dbg !481
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !482, metadata !480), !dbg !483
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %6, metadata !484, metadata !480), !dbg !485
  br label %7, !dbg !486, !llvm.loop !487

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !488
  %9 = icmp ne i8* %8, null, !dbg !492
  br i1 %9, label %10, label %11, !dbg !488

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !493

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.theme_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !496
  store %struct.THEME_REC* null, %struct.THEME_REC** %3, align 8, !dbg !499
  br label %46, !dbg !499

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !500

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !502, !llvm.loop !503

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !504
  %16 = icmp ne i8* %15, null, !dbg !508
  br i1 %16, label %17, label %18, !dbg !504

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !509

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.theme_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !512
  store %struct.THEME_REC* null, %struct.THEME_REC** %3, align 8, !dbg !515
  br label %46, !dbg !515

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !516

; <label>:20:                                     ; preds = %19
  %21 = call noalias i8* @g_malloc0_n(i64 1, i64 1096), !dbg !518
  %22 = bitcast i8* %21 to %struct.THEME_REC*, !dbg !519
  store %struct.THEME_REC* %22, %struct.THEME_REC** %6, align 8, !dbg !520
  %23 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !521
  %24 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %23, i32 0, i32 0, !dbg !522
  store i32 1, i32* %24, align 8, !dbg !523
  %25 = load i8*, i8** %4, align 8, !dbg !524
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !525
  %27 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !526
  %28 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %27, i32 0, i32 1, !dbg !527
  store i8* %26, i8** %28, align 8, !dbg !528
  %29 = load i8*, i8** %5, align 8, !dbg !529
  %30 = call noalias i8* @g_strdup(i8* %29), !dbg !530
  %31 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !531
  %32 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %31, i32 0, i32 2, !dbg !532
  store i8* %30, i8** %32, align 8, !dbg !533
  %33 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !534
  %34 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !535
  %35 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %34, i32 0, i32 9, !dbg !536
  store %struct._GHashTable* %33, %struct._GHashTable** %35, align 8, !dbg !537
  %36 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !538
  %37 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !539
  %38 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %37, i32 0, i32 6, !dbg !540
  store %struct._GHashTable* %36, %struct._GHashTable** %38, align 8, !dbg !541
  %39 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !542
  %40 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !543
  %41 = bitcast %struct.THEME_REC* %40 to i8*, !dbg !543
  %42 = call %struct._GSList* @g_slist_append(%struct._GSList* %39, i8* %41), !dbg !544
  store %struct._GSList* %42, %struct._GSList** @themes, align 8, !dbg !545
  %43 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !546
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.THEME_REC* %43), !dbg !547
  %45 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !548
  store %struct.THEME_REC* %45, %struct.THEME_REC** %3, align 8, !dbg !549
  br label %46, !dbg !549

; <label>:46:                                     ; preds = %20, %18, %11
  %47 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !550
  ret %struct.THEME_REC* %47, !dbg !550
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare i32 @g_istr_hash(i8*) #2

declare i32 @g_istr_equal(i8*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @theme_destroy(%struct.THEME_REC*) #0 !dbg !551 {
  %2 = alloca %struct.THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %2, metadata !554, metadata !480), !dbg !555
  %3 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !556
  %4 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !557
  %5 = bitcast %struct.THEME_REC* %4 to i8*, !dbg !557
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !558
  store %struct._GSList* %6, %struct._GSList** @themes, align 8, !dbg !559
  %7 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !560
  %8 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.THEME_REC* %7), !dbg !561
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !562
  call void @theme_unref(%struct.THEME_REC* %9), !dbg !563
  ret void, !dbg !564
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_unref(%struct.THEME_REC*) #0 !dbg !565 {
  %2 = alloca %struct.THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %2, metadata !566, metadata !480), !dbg !567
  %3 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !568
  %4 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %3, i32 0, i32 0, !dbg !570
  %5 = load i32, i32* %4, align 8, !dbg !571
  %6 = add nsw i32 %5, -1, !dbg !571
  store i32 %6, i32* %4, align 8, !dbg !571
  %7 = icmp eq i32 %6, 0, !dbg !572
  br i1 %7, label %8, label %10, !dbg !573

; <label>:8:                                      ; preds = %1
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !574
  call void @theme_real_destroy(%struct.THEME_REC* %9), !dbg !575
  br label %10, !dbg !575

; <label>:10:                                     ; preds = %8, %1
  ret void, !dbg !576
}

; Function Attrs: nounwind uwtable
define i8* @theme_format_expand_get(%struct.THEME_REC*, i8**) #0 !dbg !577 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.theme_rm_col, align 1
  %8 = alloca %struct.theme_rm_col, align 1
  %9 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !580, metadata !480), !dbg !581
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !582, metadata !480), !dbg !583
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !584, metadata !480), !dbg !596
  call void @llvm.dbg.declare(metadata i8** %6, metadata !597, metadata !480), !dbg !598
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %7, metadata !599, metadata !480), !dbg !607
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %8, metadata !608, metadata !480), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %9, metadata !610, metadata !480), !dbg !611
  store i32 1, i32* %9, align 4, !dbg !611
  %10 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %7, i32 0, i32 0, !dbg !612
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0, !dbg !613
  store i8 0, i8* %11, align 1, !dbg !614
  %12 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !615
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i32 0, i32 0, !dbg !616
  %14 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !617
  %15 = call %struct._GString* @g_string_new(i8* null), !dbg !618
  store %struct._GString* %15, %struct._GString** %5, align 8, !dbg !619
  br label %16, !dbg !620

; <label>:16:                                     ; preds = %78, %60, %54, %2
  %17 = load i8**, i8*** %4, align 8, !dbg !621
  %18 = load i8*, i8** %17, align 8, !dbg !623
  %19 = load i8, i8* %18, align 1, !dbg !624
  %20 = sext i8 %19 to i32, !dbg !624
  %21 = icmp ne i32 %20, 0, !dbg !625
  br i1 %21, label %22, label %25, !dbg !626

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %9, align 4, !dbg !627
  %24 = icmp ne i32 %23, 0, !dbg !629
  br label %25

; <label>:25:                                     ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ]
  br i1 %26, label %27, label %87, !dbg !630

; <label>:27:                                     ; preds = %25
  %28 = load i8**, i8*** %4, align 8, !dbg !632
  %29 = load i8*, i8** %28, align 8, !dbg !635
  %30 = load i8, i8* %29, align 1, !dbg !636
  %31 = sext i8 %30 to i32, !dbg !636
  %32 = icmp eq i32 %31, 123, !dbg !637
  br i1 %32, label %33, label %36, !dbg !638

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %9, align 4, !dbg !639
  %35 = add nsw i32 %34, 1, !dbg !639
  store i32 %35, i32* %9, align 4, !dbg !639
  br label %71, !dbg !640

; <label>:36:                                     ; preds = %27
  %37 = load i8**, i8*** %4, align 8, !dbg !641
  %38 = load i8*, i8** %37, align 8, !dbg !643
  %39 = load i8, i8* %38, align 1, !dbg !644
  %40 = sext i8 %39 to i32, !dbg !644
  %41 = icmp eq i32 %40, 125, !dbg !645
  br i1 %41, label %42, label %45, !dbg !646

; <label>:42:                                     ; preds = %36
  %43 = load i32, i32* %9, align 4, !dbg !647
  %44 = add nsw i32 %43, -1, !dbg !647
  store i32 %44, i32* %9, align 4, !dbg !647
  br label %70, !dbg !648

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %9, align 4, !dbg !649
  %47 = icmp sgt i32 %46, 1, !dbg !651
  br i1 %47, label %48, label %60, !dbg !652

; <label>:48:                                     ; preds = %45
  %49 = load i8**, i8*** %4, align 8, !dbg !653
  %50 = load i8*, i8** %49, align 8, !dbg !655
  %51 = load i8, i8* %50, align 1, !dbg !656
  %52 = sext i8 %51 to i32, !dbg !656
  %53 = icmp eq i32 %52, 32, !dbg !657
  br i1 %53, label %54, label %60, !dbg !658

; <label>:54:                                     ; preds = %48
  %55 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !659
  %56 = call %struct._GString* @g_string_append(%struct._GString* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !661
  %57 = load i8**, i8*** %4, align 8, !dbg !662
  %58 = load i8*, i8** %57, align 8, !dbg !663
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !663
  store i8* %59, i8** %57, align 8, !dbg !663
  br label %16, !dbg !664, !llvm.loop !665

; <label>:60:                                     ; preds = %48, %45
  %61 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !666
  %62 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !668
  %63 = load i8**, i8*** %4, align 8, !dbg !669
  %64 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !670
  %65 = bitcast [8 x i8]* %64 to i64*, !dbg !670
  %66 = load i64, i64* %65, align 1, !dbg !670
  %67 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !670
  %68 = bitcast [8 x i8]* %67 to i64*, !dbg !670
  %69 = load i64, i64* %68, align 1, !dbg !670
  call void @theme_format_append_next(%struct.THEME_REC* %61, %struct._GString* %62, i8** %63, i64 %66, i64 %69, %struct.theme_rm_col* %7, %struct.theme_rm_col* %7, i32 1), !dbg !670
  br label %16, !dbg !671, !llvm.loop !665

; <label>:70:                                     ; preds = %42
  br label %71

; <label>:71:                                     ; preds = %70, %33
  %72 = load i32, i32* %9, align 4, !dbg !672
  %73 = icmp eq i32 %72, 0, !dbg !674
  br i1 %73, label %74, label %78, !dbg !675

; <label>:74:                                     ; preds = %71
  %75 = load i8**, i8*** %4, align 8, !dbg !676
  %76 = load i8*, i8** %75, align 8, !dbg !678
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !678
  store i8* %77, i8** %75, align 8, !dbg !678
  br label %87, !dbg !679

; <label>:78:                                     ; preds = %71
  %79 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !680
  %80 = load i8**, i8*** %4, align 8, !dbg !681
  %81 = load i8*, i8** %80, align 8, !dbg !682
  %82 = load i8, i8* %81, align 1, !dbg !683
  %83 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %79, i8 signext %82), !dbg !684
  %84 = load i8**, i8*** %4, align 8, !dbg !685
  %85 = load i8*, i8** %84, align 8, !dbg !686
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !686
  store i8* %86, i8** %84, align 8, !dbg !686
  br label %16, !dbg !687, !llvm.loop !665

; <label>:87:                                     ; preds = %74, %25
  %88 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !689
  %89 = getelementptr inbounds %struct._GString, %struct._GString* %88, i32 0, i32 0, !dbg !690
  %90 = load i8*, i8** %89, align 8, !dbg !690
  store i8* %90, i8** %6, align 8, !dbg !691
  %91 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !692
  %92 = call i8* @g_string_free(%struct._GString* %91, i32 0), !dbg !693
  %93 = load i8*, i8** %6, align 8, !dbg !694
  ret i8* %93, !dbg !695
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_format_append_next(%struct.THEME_REC*, %struct._GString*, i8**, i64, i64, %struct.theme_rm_col*, %struct.theme_rm_col*, i32) #0 !dbg !696 {
  %9 = alloca %struct.theme_rm_col, align 1
  %10 = alloca %struct.theme_rm_col, align 1
  %11 = alloca %struct.THEME_REC*, align 8
  %12 = alloca %struct._GString*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.theme_rm_col*, align 8
  %15 = alloca %struct.theme_rm_col*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0
  %22 = bitcast [8 x i8]* %21 to i64*
  store i64 %3, i64* %22, align 1
  %23 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0
  %24 = bitcast [8 x i8]* %23 to i64*
  store i64 %4, i64* %24, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %11, metadata !700, metadata !480), !dbg !701
  store %struct._GString* %1, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !702, metadata !480), !dbg !703
  store i8** %2, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !704, metadata !480), !dbg !705
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %9, metadata !706, metadata !480), !dbg !707
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %10, metadata !708, metadata !480), !dbg !709
  store %struct.theme_rm_col* %5, %struct.theme_rm_col** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %14, metadata !710, metadata !480), !dbg !711
  store %struct.theme_rm_col* %6, %struct.theme_rm_col** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %15, metadata !712, metadata !480), !dbg !713
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !714, metadata !480), !dbg !715
  call void @llvm.dbg.declare(metadata i32* %17, metadata !716, metadata !480), !dbg !717
  call void @llvm.dbg.declare(metadata i8* %18, metadata !718, metadata !480), !dbg !719
  call void @llvm.dbg.declare(metadata i8** %19, metadata !720, metadata !480), !dbg !721
  %25 = load i8**, i8*** %13, align 8, !dbg !722
  %26 = load i8*, i8** %25, align 8, !dbg !723
  %27 = load i8, i8* %26, align 1, !dbg !724
  store i8 %27, i8* %18, align 1, !dbg !725
  %28 = load i8, i8* %18, align 1, !dbg !726
  %29 = zext i8 %28 to i32, !dbg !726
  %30 = icmp eq i32 %29, 36, !dbg !728
  br i1 %30, label %35, label %31, !dbg !729

; <label>:31:                                     ; preds = %8
  %32 = load i8, i8* %18, align 1, !dbg !730
  %33 = zext i8 %32 to i32, !dbg !730
  %34 = icmp eq i32 %33, 37, !dbg !732
  br i1 %34, label %35, label %49, !dbg !733

; <label>:35:                                     ; preds = %31, %8
  %36 = load i8**, i8*** %13, align 8, !dbg !734
  %37 = load i8*, i8** %36, align 8, !dbg !735
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !736
  %39 = load i8, i8* %38, align 1, !dbg !736
  %40 = sext i8 %39 to i32, !dbg !736
  %41 = icmp eq i32 %40, 0, !dbg !737
  br i1 %41, label %42, label %49, !dbg !738

; <label>:42:                                     ; preds = %35
  %43 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !740
  %44 = load i8, i8* %18, align 1, !dbg !742
  %45 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %43, i8 signext %44), !dbg !743
  %46 = load i8**, i8*** %13, align 8, !dbg !744
  %47 = load i8*, i8** %46, align 8, !dbg !745
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !745
  store i8* %48, i8** %46, align 8, !dbg !745
  br label %318, !dbg !746

; <label>:49:                                     ; preds = %35, %31
  %50 = load i8, i8* %18, align 1, !dbg !747
  %51 = zext i8 %50 to i32, !dbg !747
  %52 = icmp eq i32 %51, 36, !dbg !749
  br i1 %52, label %53, label %56, !dbg !750

; <label>:53:                                     ; preds = %49
  %54 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !751
  %55 = load i8**, i8*** %13, align 8, !dbg !753
  call void @theme_format_append_variable(%struct._GString* %54, i8** %55), !dbg !754
  br label %318, !dbg !755

; <label>:56:                                     ; preds = %49
  %57 = load i8**, i8*** %13, align 8, !dbg !756
  %58 = load i8*, i8** %57, align 8, !dbg !758
  %59 = load i8, i8* %58, align 1, !dbg !759
  %60 = sext i8 %59 to i32, !dbg !759
  %61 = icmp eq i32 %60, 37, !dbg !760
  br i1 %61, label %62, label %275, !dbg !761

; <label>:62:                                     ; preds = %56
  %63 = load i8**, i8*** %13, align 8, !dbg !762
  %64 = load i8*, i8** %63, align 8, !dbg !764
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !764
  store i8* %65, i8** %63, align 8, !dbg !764
  %66 = load i8**, i8*** %13, align 8, !dbg !765
  %67 = load i8*, i8** %66, align 8, !dbg !767
  %68 = load i8, i8* %67, align 1, !dbg !768
  %69 = sext i8 %68 to i32, !dbg !768
  %70 = icmp ne i32 %69, 123, !dbg !769
  br i1 %70, label %71, label %269, !dbg !770

; <label>:71:                                     ; preds = %62
  %72 = load i8**, i8*** %13, align 8, !dbg !771
  %73 = load i8*, i8** %72, align 8, !dbg !773
  %74 = load i8, i8* %73, align 1, !dbg !774
  %75 = sext i8 %74 to i32, !dbg !774
  %76 = icmp ne i32 %75, 125, !dbg !775
  br i1 %76, label %77, label %269, !dbg !776

; <label>:77:                                     ; preds = %71
  %78 = load i8**, i8*** %13, align 8, !dbg !777
  %79 = load i8*, i8** %78, align 8, !dbg !779
  %80 = load i8, i8* %79, align 1, !dbg !780
  store i8 %80, i8* %18, align 1, !dbg !781
  %81 = load i8**, i8*** %13, align 8, !dbg !782
  %82 = load i8*, i8** %81, align 8, !dbg !784
  %83 = load i8, i8* %82, align 1, !dbg !785
  %84 = sext i8 %83 to i32, !dbg !785
  %85 = icmp eq i32 %84, 110, !dbg !786
  br i1 %85, label %86, label %121, !dbg !787

; <label>:86:                                     ; preds = %77
  %87 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !788
  %88 = call %struct._GString* @g_string_append(%struct._GString* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)), !dbg !790
  %89 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0, !dbg !791
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %89, i64 0, i64 0, !dbg !793
  %91 = load i8, i8* %90, align 1, !dbg !793
  %92 = sext i8 %91 to i32, !dbg !793
  %93 = icmp ne i32 %92, 110, !dbg !794
  br i1 %93, label %94, label %101, !dbg !795

; <label>:94:                                     ; preds = %86
  %95 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !796
  %96 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %95, i8 signext 37), !dbg !798
  %97 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !799
  %98 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0, !dbg !800
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %98, i32 0, i32 0, !dbg !801
  %100 = call %struct._GString* @g_string_append(%struct._GString* %97, i8* %99), !dbg !802
  br label %101, !dbg !803

; <label>:101:                                    ; preds = %94, %86
  %102 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0, !dbg !804
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %102, i64 0, i64 0, !dbg !806
  %104 = load i8, i8* %103, align 1, !dbg !806
  %105 = sext i8 %104 to i32, !dbg !806
  %106 = icmp ne i32 %105, 110, !dbg !807
  br i1 %106, label %107, label %114, !dbg !808

; <label>:107:                                    ; preds = %101
  %108 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !809
  %109 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %108, i8 signext 37), !dbg !811
  %110 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !812
  %111 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0, !dbg !813
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %111, i32 0, i32 0, !dbg !814
  %113 = call %struct._GString* @g_string_append(%struct._GString* %110, i8* %112), !dbg !815
  br label %114, !dbg !816

; <label>:114:                                    ; preds = %107, %101
  %115 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !817
  %116 = bitcast %struct.theme_rm_col* %115 to i8*, !dbg !818
  %117 = bitcast %struct.theme_rm_col* %9 to i8*, !dbg !818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 8, i32 1, i1 false), !dbg !818
  %118 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !819
  %119 = bitcast %struct.theme_rm_col* %118 to i8*, !dbg !820
  %120 = bitcast %struct.theme_rm_col* %10 to i8*, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 8, i32 1, i1 false), !dbg !820
  br label %265, !dbg !821

; <label>:121:                                    ; preds = %77
  %122 = load i8, i8* %18, align 1, !dbg !822
  %123 = zext i8 %122 to i32, !dbg !822
  %124 = icmp eq i32 %123, 122, !dbg !825
  br i1 %124, label %129, label %125, !dbg !826

; <label>:125:                                    ; preds = %121
  %126 = load i8, i8* %18, align 1, !dbg !827
  %127 = zext i8 %126 to i32, !dbg !827
  %128 = icmp eq i32 %127, 90, !dbg !829
  br i1 %128, label %129, label %171, !dbg !830

; <label>:129:                                    ; preds = %125, %121
  %130 = load i8**, i8*** %13, align 8, !dbg !831
  %131 = load i8*, i8** %130, align 8, !dbg !834
  %132 = call i32 @chr_is_valid_rgb(i8* %131), !dbg !835
  %133 = icmp eq i32 %132, 0, !dbg !836
  br i1 %133, label %134, label %162, !dbg !837

; <label>:134:                                    ; preds = %129
  %135 = load i8, i8* %18, align 1, !dbg !838
  %136 = zext i8 %135 to i32, !dbg !838
  %137 = icmp eq i32 %136, 122, !dbg !840
  br i1 %137, label %138, label %142, !dbg !838

; <label>:138:                                    ; preds = %134
  %139 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !841
  %140 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %139, i32 0, i32 0, !dbg !843
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %140, i32 0, i32 0, !dbg !844
  br label %146, !dbg !845

; <label>:142:                                    ; preds = %134
  %143 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !846
  %144 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %143, i32 0, i32 0, !dbg !848
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %144, i32 0, i32 0, !dbg !849
  br label %146, !dbg !850

; <label>:146:                                    ; preds = %142, %138
  %147 = phi i8* [ %141, %138 ], [ %145, %142 ], !dbg !851
  store i8* %147, i8** %19, align 8, !dbg !853
  %148 = load i8*, i8** %19, align 8, !dbg !854
  %149 = load i8**, i8*** %13, align 8, !dbg !855
  %150 = load i8*, i8** %149, align 8, !dbg !856
  %151 = call i8* @strncpy(i8* %148, i8* %150, i64 7) #8, !dbg !857
  %152 = load i8*, i8** %19, align 8, !dbg !858
  %153 = getelementptr inbounds i8, i8* %152, i64 7, !dbg !858
  store i8 0, i8* %153, align 1, !dbg !859
  %154 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !860
  %155 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %154, i8 signext 37), !dbg !861
  %156 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !862
  %157 = load i8*, i8** %19, align 8, !dbg !863
  %158 = call %struct._GString* @g_string_append(%struct._GString* %156, i8* %157), !dbg !864
  %159 = load i8**, i8*** %13, align 8, !dbg !865
  %160 = load i8*, i8** %159, align 8, !dbg !866
  %161 = getelementptr inbounds i8, i8* %160, i64 6, !dbg !866
  store i8* %161, i8** %159, align 8, !dbg !866
  br label %170, !dbg !867

; <label>:162:                                    ; preds = %129
  %163 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !868
  %164 = call %struct._GString* @g_string_append(%struct._GString* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)), !dbg !870
  %165 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !871
  %166 = load i8**, i8*** %13, align 8, !dbg !872
  %167 = load i8*, i8** %166, align 8, !dbg !873
  %168 = load i8, i8* %167, align 1, !dbg !874
  %169 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %165, i8 signext %168), !dbg !875
  br label %170

; <label>:170:                                    ; preds = %162, %146
  br label %264, !dbg !876

; <label>:171:                                    ; preds = %125
  %172 = load i8, i8* %18, align 1, !dbg !877
  %173 = zext i8 %172 to i32, !dbg !877
  %174 = icmp eq i32 %173, 120, !dbg !880
  br i1 %174, label %179, label %175, !dbg !881

; <label>:175:                                    ; preds = %171
  %176 = load i8, i8* %18, align 1, !dbg !882
  %177 = zext i8 %176 to i32, !dbg !882
  %178 = icmp eq i32 %177, 88, !dbg !884
  br i1 %178, label %179, label %221, !dbg !885

; <label>:179:                                    ; preds = %175, %171
  %180 = load i8**, i8*** %13, align 8, !dbg !886
  %181 = load i8*, i8** %180, align 8, !dbg !889
  %182 = call i32 @chr_is_valid_ext(i8* %181), !dbg !890
  %183 = icmp eq i32 %182, 0, !dbg !891
  br i1 %183, label %184, label %212, !dbg !892

; <label>:184:                                    ; preds = %179
  %185 = load i8, i8* %18, align 1, !dbg !893
  %186 = zext i8 %185 to i32, !dbg !893
  %187 = icmp eq i32 %186, 120, !dbg !895
  br i1 %187, label %188, label %192, !dbg !893

; <label>:188:                                    ; preds = %184
  %189 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !896
  %190 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %189, i32 0, i32 0, !dbg !898
  %191 = getelementptr inbounds [8 x i8], [8 x i8]* %190, i32 0, i32 0, !dbg !899
  br label %196, !dbg !900

; <label>:192:                                    ; preds = %184
  %193 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !901
  %194 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %193, i32 0, i32 0, !dbg !903
  %195 = getelementptr inbounds [8 x i8], [8 x i8]* %194, i32 0, i32 0, !dbg !904
  br label %196, !dbg !905

; <label>:196:                                    ; preds = %192, %188
  %197 = phi i8* [ %191, %188 ], [ %195, %192 ], !dbg !906
  store i8* %197, i8** %19, align 8, !dbg !908
  %198 = load i8*, i8** %19, align 8, !dbg !909
  %199 = load i8**, i8*** %13, align 8, !dbg !910
  %200 = load i8*, i8** %199, align 8, !dbg !911
  %201 = call i8* @strncpy(i8* %198, i8* %200, i64 3) #8, !dbg !912
  %202 = load i8*, i8** %19, align 8, !dbg !913
  %203 = getelementptr inbounds i8, i8* %202, i64 3, !dbg !913
  store i8 0, i8* %203, align 1, !dbg !914
  %204 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !915
  %205 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %204, i8 signext 37), !dbg !916
  %206 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !917
  %207 = load i8*, i8** %19, align 8, !dbg !918
  %208 = call %struct._GString* @g_string_append(%struct._GString* %206, i8* %207), !dbg !919
  %209 = load i8**, i8*** %13, align 8, !dbg !920
  %210 = load i8*, i8** %209, align 8, !dbg !921
  %211 = getelementptr inbounds i8, i8* %210, i64 2, !dbg !921
  store i8* %211, i8** %209, align 8, !dbg !921
  br label %220, !dbg !922

; <label>:212:                                    ; preds = %179
  %213 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !923
  %214 = call %struct._GString* @g_string_append(%struct._GString* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)), !dbg !925
  %215 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !926
  %216 = load i8**, i8*** %13, align 8, !dbg !927
  %217 = load i8*, i8** %216, align 8, !dbg !928
  %218 = load i8, i8* %217, align 1, !dbg !929
  %219 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %215, i8 signext %218), !dbg !930
  br label %220

; <label>:220:                                    ; preds = %212, %196
  br label %263, !dbg !931

; <label>:221:                                    ; preds = %175
  %222 = load i8, i8* %18, align 1, !dbg !932
  %223 = zext i8 %222 to i32, !dbg !935
  %224 = icmp ne i32 %223, 0, !dbg !936
  br i1 %224, label %225, label %239, !dbg !937

; <label>:225:                                    ; preds = %221
  %226 = load i8*, i8** @fgcolorformats, align 8, !dbg !938
  %227 = load i8, i8* %18, align 1, !dbg !940
  %228 = zext i8 %227 to i32, !dbg !940
  %229 = call i8* @strchr(i8* %226, i32 %228) #9, !dbg !941
  %230 = icmp ne i8* %229, null, !dbg !942
  br i1 %230, label %231, label %239, !dbg !943

; <label>:231:                                    ; preds = %225
  %232 = load i8, i8* %18, align 1, !dbg !944
  %233 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !946
  %234 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %233, i32 0, i32 0, !dbg !947
  %235 = getelementptr inbounds [8 x i8], [8 x i8]* %234, i64 0, i64 0, !dbg !948
  store i8 %232, i8* %235, align 1, !dbg !949
  %236 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !950
  %237 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %236, i32 0, i32 0, !dbg !951
  %238 = getelementptr inbounds [8 x i8], [8 x i8]* %237, i64 0, i64 1, !dbg !952
  store i8 0, i8* %238, align 1, !dbg !953
  br label %239, !dbg !954

; <label>:239:                                    ; preds = %231, %225, %221
  %240 = load i8, i8* %18, align 1, !dbg !955
  %241 = zext i8 %240 to i32, !dbg !957
  %242 = icmp ne i32 %241, 0, !dbg !958
  br i1 %242, label %243, label %257, !dbg !959

; <label>:243:                                    ; preds = %239
  %244 = load i8*, i8** @bgcolorformats, align 8, !dbg !960
  %245 = load i8, i8* %18, align 1, !dbg !962
  %246 = zext i8 %245 to i32, !dbg !962
  %247 = call i8* @strchr(i8* %244, i32 %246) #9, !dbg !963
  %248 = icmp ne i8* %247, null, !dbg !964
  br i1 %248, label %249, label %257, !dbg !965

; <label>:249:                                    ; preds = %243
  %250 = load i8, i8* %18, align 1, !dbg !966
  %251 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !968
  %252 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %251, i32 0, i32 0, !dbg !969
  %253 = getelementptr inbounds [8 x i8], [8 x i8]* %252, i64 0, i64 0, !dbg !970
  store i8 %250, i8* %253, align 1, !dbg !971
  %254 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !972
  %255 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %254, i32 0, i32 0, !dbg !973
  %256 = getelementptr inbounds [8 x i8], [8 x i8]* %255, i64 0, i64 1, !dbg !974
  store i8 0, i8* %256, align 1, !dbg !975
  br label %257, !dbg !976

; <label>:257:                                    ; preds = %249, %243, %239
  %258 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !977
  %259 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %258, i8 signext 37), !dbg !978
  %260 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !979
  %261 = load i8, i8* %18, align 1, !dbg !980
  %262 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %260, i8 signext %261), !dbg !981
  br label %263

; <label>:263:                                    ; preds = %257, %220
  br label %264

; <label>:264:                                    ; preds = %263, %170
  br label %265

; <label>:265:                                    ; preds = %264, %114
  %266 = load i8**, i8*** %13, align 8, !dbg !982
  %267 = load i8*, i8** %266, align 8, !dbg !983
  %268 = getelementptr inbounds i8, i8* %267, i32 1, !dbg !983
  store i8* %268, i8** %266, align 8, !dbg !983
  br label %318, !dbg !984

; <label>:269:                                    ; preds = %71, %62
  %270 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !985
  %271 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %270, i8 signext 37), !dbg !986
  %272 = load i8**, i8*** %13, align 8, !dbg !987
  %273 = load i8*, i8** %272, align 8, !dbg !988
  %274 = load i8, i8* %273, align 1, !dbg !989
  store i8 %274, i8* %18, align 1, !dbg !990
  br label %275, !dbg !991

; <label>:275:                                    ; preds = %269, %56
  %276 = load i32, i32* %16, align 4, !dbg !992
  %277 = and i32 %276, 1, !dbg !993
  %278 = icmp ne i32 %277, 0, !dbg !993
  br i1 %278, label %279, label %280, !dbg !994

; <label>:279:                                    ; preds = %275
  br label %288, !dbg !995

; <label>:280:                                    ; preds = %275
  %281 = load i8, i8* %18, align 1, !dbg !997
  %282 = zext i8 %281 to i32, !dbg !998
  %283 = sext i32 %282 to i64, !dbg !999
  %284 = load %struct.THEME_REC*, %struct.THEME_REC** %11, align 8, !dbg !999
  %285 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %284, i32 0, i32 7, !dbg !1000
  %286 = getelementptr inbounds [256 x i32], [256 x i32]* %285, i64 0, i64 %283, !dbg !999
  %287 = load i32, i32* %286, align 4, !dbg !999
  br label %288, !dbg !1001

; <label>:288:                                    ; preds = %280, %279
  %289 = phi i32 [ -1, %279 ], [ %287, %280 ], !dbg !1002
  store i32 %289, i32* %17, align 4, !dbg !1004
  %290 = load i32, i32* %17, align 4, !dbg !1005
  %291 = icmp eq i32 %290, -1, !dbg !1007
  br i1 %291, label %292, label %296, !dbg !1008

; <label>:292:                                    ; preds = %288
  %293 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !1009
  %294 = load i8, i8* %18, align 1, !dbg !1010
  %295 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %293, i8 signext %294), !dbg !1011
  br label %314, !dbg !1011

; <label>:296:                                    ; preds = %288
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1012, metadata !480), !dbg !1014
  %297 = load %struct.THEME_REC*, %struct.THEME_REC** %11, align 8, !dbg !1015
  %298 = load i32, i32* %17, align 4, !dbg !1016
  %299 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !1017
  %300 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !1018
  %301 = load i8, i8* %18, align 1, !dbg !1019
  %302 = load i32, i32* %16, align 4, !dbg !1020
  %303 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0, !dbg !1021
  %304 = bitcast [8 x i8]* %303 to i64*, !dbg !1021
  %305 = load i64, i64* %304, align 1, !dbg !1021
  %306 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0, !dbg !1021
  %307 = bitcast [8 x i8]* %306 to i64*, !dbg !1021
  %308 = load i64, i64* %307, align 1, !dbg !1021
  %309 = call i8* @theme_replace_expand(%struct.THEME_REC* %297, i32 %298, i64 %305, i64 %308, %struct.theme_rm_col* %299, %struct.theme_rm_col* %300, i8 signext %301, i32 %302), !dbg !1021
  store i8* %309, i8** %20, align 8, !dbg !1022
  %310 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !1023
  %311 = load i8*, i8** %20, align 8, !dbg !1024
  %312 = call %struct._GString* @g_string_append(%struct._GString* %310, i8* %311), !dbg !1025
  %313 = load i8*, i8** %20, align 8, !dbg !1026
  call void @g_free(i8* %313), !dbg !1027
  br label %314

; <label>:314:                                    ; preds = %296, %292
  %315 = load i8**, i8*** %13, align 8, !dbg !1028
  %316 = load i8*, i8** %315, align 8, !dbg !1029
  %317 = getelementptr inbounds i8, i8* %316, i32 1, !dbg !1029
  store i8* %317, i8** %315, align 8, !dbg !1029
  br label %318, !dbg !1030

; <label>:318:                                    ; preds = %314, %265, %53, %42
  ret void, !dbg !1031
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1032 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1035, metadata !480), !dbg !1036
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1037, metadata !480), !dbg !1038
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1039
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1041
  %7 = load i64, i64* %6, align 8, !dbg !1041
  %8 = add i64 %7, 1, !dbg !1042
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1043
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1044
  %11 = load i64, i64* %10, align 8, !dbg !1044
  %12 = icmp ult i64 %8, %11, !dbg !1045
  br i1 %12, label %13, label %30, !dbg !1046

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1047
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1049
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1050
  %17 = load i64, i64* %16, align 8, !dbg !1051
  %18 = add i64 %17, 1, !dbg !1051
  store i64 %18, i64* %16, align 8, !dbg !1051
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1052
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1053
  %21 = load i8*, i8** %20, align 8, !dbg !1053
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1052
  store i8 %14, i8* %22, align 1, !dbg !1054
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1055
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1056
  %25 = load i64, i64* %24, align 8, !dbg !1056
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1057
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1058
  %28 = load i8*, i8** %27, align 8, !dbg !1058
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1057
  store i8 0, i8* %29, align 1, !dbg !1059
  br label %34, !dbg !1060

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1061
  %32 = load i8, i8* %4, align 1, !dbg !1062
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1063
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1064
  ret %struct._GString* %35, !dbg !1065
}

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @theme_format_expand_data(%struct.THEME_REC*, i8**, i64, i64, %struct.theme_rm_col*, %struct.theme_rm_col*, i32) #0 !dbg !1066 {
  %8 = alloca %struct.theme_rm_col, align 1
  %9 = alloca %struct.theme_rm_col, align 1
  %10 = alloca %struct.THEME_REC*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.theme_rm_col*, align 8
  %13 = alloca %struct.theme_rm_col*, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0
  %16 = bitcast [8 x i8]* %15 to i64*
  store i64 %2, i64* %16, align 1
  %17 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0
  %18 = bitcast [8 x i8]* %17 to i64*
  store i64 %3, i64* %18, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %10, metadata !1069, metadata !480), !dbg !1070
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1071, metadata !480), !dbg !1072
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %8, metadata !1073, metadata !480), !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %9, metadata !1075, metadata !480), !dbg !1076
  store %struct.theme_rm_col* %4, %struct.theme_rm_col** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %12, metadata !1077, metadata !480), !dbg !1078
  store %struct.theme_rm_col* %5, %struct.theme_rm_col** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %13, metadata !1079, metadata !480), !dbg !1080
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1081, metadata !480), !dbg !1082
  %19 = load %struct.THEME_REC*, %struct.THEME_REC** %10, align 8, !dbg !1083
  %20 = load i8**, i8*** %11, align 8, !dbg !1084
  %21 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1085
  %22 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1086
  %23 = load i32, i32* %14, align 4, !dbg !1087
  %24 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !1088
  %25 = bitcast [8 x i8]* %24 to i64*, !dbg !1088
  %26 = load i64, i64* %25, align 1, !dbg !1088
  %27 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0, !dbg !1088
  %28 = bitcast [8 x i8]* %27 to i64*, !dbg !1088
  %29 = load i64, i64* %28, align 1, !dbg !1088
  %30 = call i8* @theme_format_expand_data_rec(%struct.THEME_REC* %19, i8** %20, i64 %26, i64 %29, %struct.theme_rm_col* %21, %struct.theme_rm_col* %22, i32 %23, %struct._GTree* null), !dbg !1088
  ret i8* %30, !dbg !1089
}

; Function Attrs: nounwind uwtable
define internal i8* @theme_format_expand_data_rec(%struct.THEME_REC*, i8**, i64, i64, %struct.theme_rm_col*, %struct.theme_rm_col*, i32, %struct._GTree*) #0 !dbg !1090 {
  %9 = alloca %struct.theme_rm_col, align 1
  %10 = alloca %struct.theme_rm_col, align 1
  %11 = alloca %struct.THEME_REC*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.theme_rm_col*, align 8
  %14 = alloca %struct.theme_rm_col*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._GTree*, align 8
  %17 = alloca %struct._GString*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.theme_rm_col, align 1
  %21 = alloca %struct.theme_rm_col, align 1
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0
  %24 = bitcast [8 x i8]* %23 to i64*
  store i64 %2, i64* %24, align 1
  %25 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0
  %26 = bitcast [8 x i8]* %25 to i64*
  store i64 %3, i64* %26, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %11, metadata !1097, metadata !480), !dbg !1098
  store i8** %1, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !1099, metadata !480), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %9, metadata !1101, metadata !480), !dbg !1102
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %10, metadata !1103, metadata !480), !dbg !1104
  store %struct.theme_rm_col* %4, %struct.theme_rm_col** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %13, metadata !1105, metadata !480), !dbg !1106
  store %struct.theme_rm_col* %5, %struct.theme_rm_col** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %14, metadata !1107, metadata !480), !dbg !1108
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1109, metadata !480), !dbg !1110
  store %struct._GTree* %7, %struct._GTree** %16, align 8
  call void @llvm.dbg.declare(metadata %struct._GTree** %16, metadata !1111, metadata !480), !dbg !1112
  call void @llvm.dbg.declare(metadata %struct._GString** %17, metadata !1113, metadata !480), !dbg !1114
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1115, metadata !480), !dbg !1116
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1117, metadata !480), !dbg !1118
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %20, metadata !1119, metadata !480), !dbg !1120
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %21, metadata !1121, metadata !480), !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1123, metadata !480), !dbg !1124
  %27 = bitcast %struct.theme_rm_col* %20 to i8*, !dbg !1125
  %28 = bitcast %struct.theme_rm_col* %9 to i8*, !dbg !1125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false), !dbg !1125
  %29 = bitcast %struct.theme_rm_col* %21 to i8*, !dbg !1126
  %30 = bitcast %struct.theme_rm_col* %10 to i8*, !dbg !1126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 1, i1 false), !dbg !1126
  %31 = load i32, i32* %15, align 4, !dbg !1127
  %32 = and i32 %31, 15, !dbg !1128
  store i32 %32, i32* %22, align 4, !dbg !1129
  %33 = call %struct._GString* @g_string_new(i8* null), !dbg !1130
  store %struct._GString* %33, %struct._GString** %17, align 8, !dbg !1131
  br label %34, !dbg !1132

; <label>:34:                                     ; preds = %132, %92, %8
  %35 = load i8**, i8*** %12, align 8, !dbg !1133
  %36 = load i8*, i8** %35, align 8, !dbg !1135
  %37 = load i8, i8* %36, align 1, !dbg !1136
  %38 = sext i8 %37 to i32, !dbg !1136
  %39 = icmp ne i32 %38, 0, !dbg !1137
  br i1 %39, label %40, label %133, !dbg !1138

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %15, align 4, !dbg !1139
  %42 = and i32 %41, 16, !dbg !1142
  %43 = icmp eq i32 %42, 0, !dbg !1143
  br i1 %43, label %44, label %54, !dbg !1144

; <label>:44:                                     ; preds = %40
  %45 = load i8**, i8*** %12, align 8, !dbg !1145
  %46 = load i8*, i8** %45, align 8, !dbg !1147
  %47 = load i8, i8* %46, align 1, !dbg !1148
  %48 = sext i8 %47 to i32, !dbg !1148
  %49 = icmp eq i32 %48, 125, !dbg !1149
  br i1 %49, label %50, label %54, !dbg !1150

; <label>:50:                                     ; preds = %44
  %51 = load i8**, i8*** %12, align 8, !dbg !1151
  %52 = load i8*, i8** %51, align 8, !dbg !1153
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1153
  store i8* %53, i8** %51, align 8, !dbg !1153
  br label %133, !dbg !1154

; <label>:54:                                     ; preds = %44, %40
  %55 = load i8**, i8*** %12, align 8, !dbg !1155
  %56 = load i8*, i8** %55, align 8, !dbg !1157
  %57 = load i8, i8* %56, align 1, !dbg !1158
  %58 = sext i8 %57 to i32, !dbg !1158
  %59 = icmp ne i32 %58, 123, !dbg !1159
  br i1 %59, label %60, label %103, !dbg !1160

; <label>:60:                                     ; preds = %54
  %61 = load i32, i32* %15, align 4, !dbg !1161
  %62 = and i32 %61, 32, !dbg !1164
  %63 = icmp ne i32 %62, 0, !dbg !1164
  br i1 %63, label %64, label %92, !dbg !1165

; <label>:64:                                     ; preds = %60
  %65 = load i8**, i8*** %12, align 8, !dbg !1166
  %66 = load i8*, i8** %65, align 8, !dbg !1167
  %67 = load i8, i8* %66, align 1, !dbg !1168
  %68 = sext i8 %67 to i32, !dbg !1168
  %69 = icmp eq i32 %68, 36, !dbg !1169
  br i1 %69, label %70, label %92, !dbg !1170

; <label>:70:                                     ; preds = %64
  %71 = load i8**, i8*** %12, align 8, !dbg !1171
  %72 = load i8*, i8** %71, align 8, !dbg !1173
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1174
  %74 = load i8, i8* %73, align 1, !dbg !1174
  %75 = sext i8 %74 to i32, !dbg !1174
  %76 = icmp eq i32 %75, 48, !dbg !1175
  br i1 %76, label %77, label %92, !dbg !1176

; <label>:77:                                     ; preds = %70
  %78 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1178
  %79 = icmp ne %struct.theme_rm_col* %78, null, !dbg !1181
  br i1 %79, label %80, label %84, !dbg !1182

; <label>:80:                                     ; preds = %77
  %81 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1183
  %82 = bitcast %struct.theme_rm_col* %81 to i8*, !dbg !1185
  %83 = bitcast %struct.theme_rm_col* %20 to i8*, !dbg !1185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 8, i32 1, i1 false), !dbg !1185
  store %struct.theme_rm_col* null, %struct.theme_rm_col** %13, align 8, !dbg !1186
  br label %84, !dbg !1187

; <label>:84:                                     ; preds = %80, %77
  %85 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !1188
  %86 = icmp ne %struct.theme_rm_col* %85, null, !dbg !1190
  br i1 %86, label %87, label %91, !dbg !1191

; <label>:87:                                     ; preds = %84
  %88 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !1192
  %89 = bitcast %struct.theme_rm_col* %88 to i8*, !dbg !1194
  %90 = bitcast %struct.theme_rm_col* %21 to i8*, !dbg !1194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 8, i32 1, i1 false), !dbg !1194
  store %struct.theme_rm_col* null, %struct.theme_rm_col** %14, align 8, !dbg !1195
  br label %91, !dbg !1196

; <label>:91:                                     ; preds = %87, %84
  br label %92, !dbg !1197

; <label>:92:                                     ; preds = %91, %70, %64, %60
  %93 = load %struct.THEME_REC*, %struct.THEME_REC** %11, align 8, !dbg !1198
  %94 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1199
  %95 = load i8**, i8*** %12, align 8, !dbg !1200
  %96 = load i32, i32* %22, align 4, !dbg !1201
  %97 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %9, i32 0, i32 0, !dbg !1202
  %98 = bitcast [8 x i8]* %97 to i64*, !dbg !1202
  %99 = load i64, i64* %98, align 1, !dbg !1202
  %100 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0, !dbg !1202
  %101 = bitcast [8 x i8]* %100 to i64*, !dbg !1202
  %102 = load i64, i64* %101, align 1, !dbg !1202
  call void @theme_format_append_next(%struct.THEME_REC* %93, %struct._GString* %94, i8** %95, i64 %99, i64 %102, %struct.theme_rm_col* %20, %struct.theme_rm_col* %21, i32 %96), !dbg !1202
  br label %34, !dbg !1203, !llvm.loop !1204

; <label>:103:                                    ; preds = %54
  %104 = load i8**, i8*** %12, align 8, !dbg !1205
  %105 = load i8*, i8** %104, align 8, !dbg !1206
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1206
  store i8* %106, i8** %104, align 8, !dbg !1206
  %107 = load i8**, i8*** %12, align 8, !dbg !1207
  %108 = load i8*, i8** %107, align 8, !dbg !1209
  %109 = load i8, i8* %108, align 1, !dbg !1210
  %110 = sext i8 %109 to i32, !dbg !1210
  %111 = icmp eq i32 %110, 0, !dbg !1211
  br i1 %111, label %118, label %112, !dbg !1212

; <label>:112:                                    ; preds = %103
  %113 = load i8**, i8*** %12, align 8, !dbg !1213
  %114 = load i8*, i8** %113, align 8, !dbg !1215
  %115 = load i8, i8* %114, align 1, !dbg !1216
  %116 = sext i8 %115 to i32, !dbg !1216
  %117 = icmp eq i32 %116, 125, !dbg !1217
  br i1 %117, label %118, label %119, !dbg !1218

; <label>:118:                                    ; preds = %112, %103
  br label %133, !dbg !1219

; <label>:119:                                    ; preds = %112
  %120 = load %struct.THEME_REC*, %struct.THEME_REC** %11, align 8, !dbg !1220
  %121 = load i8**, i8*** %12, align 8, !dbg !1221
  %122 = load i32, i32* %22, align 4, !dbg !1222
  %123 = load %struct._GTree*, %struct._GTree** %16, align 8, !dbg !1223
  %124 = call i8* @theme_format_expand_abstract(%struct.THEME_REC* %120, i8** %121, %struct.theme_rm_col* %20, %struct.theme_rm_col* %21, i32 %122, %struct._GTree* %123), !dbg !1224
  store i8* %124, i8** %19, align 8, !dbg !1225
  %125 = load i8*, i8** %19, align 8, !dbg !1226
  %126 = icmp ne i8* %125, null, !dbg !1228
  br i1 %126, label %127, label %132, !dbg !1229

; <label>:127:                                    ; preds = %119
  %128 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1230
  %129 = load i8*, i8** %19, align 8, !dbg !1232
  %130 = call %struct._GString* @g_string_append(%struct._GString* %128, i8* %129), !dbg !1233
  %131 = load i8*, i8** %19, align 8, !dbg !1234
  call void @g_free(i8* %131), !dbg !1235
  br label %132, !dbg !1236

; <label>:132:                                    ; preds = %127, %119
  br label %34, !dbg !1237, !llvm.loop !1204

; <label>:133:                                    ; preds = %118, %50, %34
  %134 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1239
  %135 = icmp ne %struct.theme_rm_col* %134, null, !dbg !1241
  br i1 %135, label %136, label %140, !dbg !1242

; <label>:136:                                    ; preds = %133
  %137 = load %struct.theme_rm_col*, %struct.theme_rm_col** %13, align 8, !dbg !1243
  %138 = bitcast %struct.theme_rm_col* %137 to i8*, !dbg !1244
  %139 = bitcast %struct.theme_rm_col* %20 to i8*, !dbg !1244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 8, i32 1, i1 false), !dbg !1244
  br label %140, !dbg !1245

; <label>:140:                                    ; preds = %136, %133
  %141 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !1246
  %142 = icmp ne %struct.theme_rm_col* %141, null, !dbg !1248
  br i1 %142, label %143, label %147, !dbg !1249

; <label>:143:                                    ; preds = %140
  %144 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !1250
  %145 = bitcast %struct.theme_rm_col* %144 to i8*, !dbg !1251
  %146 = bitcast %struct.theme_rm_col* %21 to i8*, !dbg !1251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 8, i32 1, i1 false), !dbg !1251
  br label %147, !dbg !1252

; <label>:147:                                    ; preds = %143, %140
  %148 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1253
  %149 = getelementptr inbounds %struct._GString, %struct._GString* %148, i32 0, i32 0, !dbg !1254
  %150 = load i8*, i8** %149, align 8, !dbg !1254
  store i8* %150, i8** %18, align 8, !dbg !1255
  %151 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1256
  %152 = call i8* @g_string_free(%struct._GString* %151, i32 0), !dbg !1257
  %153 = load i8*, i8** %18, align 8, !dbg !1258
  ret i8* %153, !dbg !1259
}

; Function Attrs: nounwind uwtable
define i8* @theme_format_expand(%struct.THEME_REC*, i8*) #0 !dbg !1260 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.theme_rm_col, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !1263, metadata !480), !dbg !1264
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1265, metadata !480), !dbg !1266
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1267, metadata !480), !dbg !1268
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1269, metadata !480), !dbg !1270
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %8, metadata !1271, metadata !480), !dbg !1272
  %9 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !1273
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i32 0, i32 0, !dbg !1274
  %11 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !1275
  br label %12, !dbg !1276, !llvm.loop !1277

; <label>:12:                                     ; preds = %2
  %13 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1278
  %14 = icmp ne %struct.THEME_REC* %13, null, !dbg !1282
  br i1 %14, label %15, label %16, !dbg !1278

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1283

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.theme_format_expand, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !1286
  store i8* null, i8** %3, align 8, !dbg !1289
  br label %39, !dbg !1289

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1290

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !1292, !llvm.loop !1293

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %5, align 8, !dbg !1294
  %21 = icmp ne i8* %20, null, !dbg !1298
  br i1 %21, label %22, label %23, !dbg !1294

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !1299

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.theme_format_expand, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !1302
  store i8* null, i8** %3, align 8, !dbg !1305
  br label %39, !dbg !1305

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1306

; <label>:25:                                     ; preds = %24
  %26 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1308
  %27 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !1309
  %28 = bitcast [8 x i8]* %27 to i64*, !dbg !1309
  %29 = load i64, i64* %28, align 1, !dbg !1309
  %30 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %8, i32 0, i32 0, !dbg !1309
  %31 = bitcast [8 x i8]* %30 to i64*, !dbg !1309
  %32 = load i64, i64* %31, align 1, !dbg !1309
  %33 = call i8* @theme_format_expand_data(%struct.THEME_REC* %26, i8** %5, i64 %29, i64 %32, %struct.theme_rm_col* null, %struct.theme_rm_col* null, i32 16), !dbg !1309
  store i8* %33, i8** %6, align 8, !dbg !1310
  %34 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1311
  %35 = load i8*, i8** %6, align 8, !dbg !1312
  %36 = call i8* @theme_format_compress_colors(%struct.THEME_REC* %34, i8* %35), !dbg !1313
  store i8* %36, i8** %7, align 8, !dbg !1314
  %37 = load i8*, i8** %6, align 8, !dbg !1315
  call void @g_free(i8* %37), !dbg !1316
  %38 = load i8*, i8** %7, align 8, !dbg !1317
  store i8* %38, i8** %3, align 8, !dbg !1318
  br label %39, !dbg !1318

; <label>:39:                                     ; preds = %25, %23, %16
  %40 = load i8*, i8** %3, align 8, !dbg !1319
  ret i8* %40, !dbg !1319
}

; Function Attrs: nounwind uwtable
define internal i8* @theme_format_compress_colors(%struct.THEME_REC*, i8*) #0 !dbg !1320 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !1321, metadata !480), !dbg !1322
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1323, metadata !480), !dbg !1324
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1325, metadata !480), !dbg !1326
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1327, metadata !480), !dbg !1328
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1329, metadata !480), !dbg !1330
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1331, metadata !480), !dbg !1332
  %9 = call %struct._GString* @g_string_new(i8* null), !dbg !1333
  store %struct._GString* %9, %struct._GString** %5, align 8, !dbg !1334
  store i8 0, i8* %8, align 1, !dbg !1335
  store i8 0, i8* %7, align 1, !dbg !1336
  br label %10, !dbg !1337

; <label>:10:                                     ; preds = %193, %2
  %11 = load i8*, i8** %4, align 8, !dbg !1338
  %12 = load i8, i8* %11, align 1, !dbg !1340
  %13 = sext i8 %12 to i32, !dbg !1340
  %14 = icmp ne i32 %13, 0, !dbg !1341
  br i1 %14, label %15, label %194, !dbg !1342

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %4, align 8, !dbg !1343
  %17 = load i8, i8* %16, align 1, !dbg !1346
  %18 = sext i8 %17 to i32, !dbg !1346
  %19 = icmp eq i32 %18, 36, !dbg !1347
  br i1 %19, label %20, label %22, !dbg !1348

; <label>:20:                                     ; preds = %15
  %21 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1349
  call void @theme_format_append_variable(%struct._GString* %21, i8** %4), !dbg !1351
  store i8 0, i8* %8, align 1, !dbg !1352
  store i8 0, i8* %7, align 1, !dbg !1353
  br label %193, !dbg !1354

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %4, align 8, !dbg !1355
  %24 = load i8, i8* %23, align 1, !dbg !1358
  %25 = sext i8 %24 to i32, !dbg !1358
  %26 = icmp ne i32 %25, 37, !dbg !1359
  br i1 %26, label %27, label %34, !dbg !1358

; <label>:27:                                     ; preds = %22
  %28 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1360
  %29 = load i8*, i8** %4, align 8, !dbg !1362
  %30 = load i8, i8* %29, align 1, !dbg !1363
  %31 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %28, i8 signext %30), !dbg !1364
  %32 = load i8*, i8** %4, align 8, !dbg !1365
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1365
  store i8* %33, i8** %4, align 8, !dbg !1365
  br label %192, !dbg !1366

; <label>:34:                                     ; preds = %22
  %35 = load i8*, i8** %4, align 8, !dbg !1367
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1367
  %37 = load i8, i8* %36, align 1, !dbg !1367
  %38 = sext i8 %37 to i32, !dbg !1367
  %39 = icmp ne i32 %38, 0, !dbg !1370
  br i1 %39, label %40, label %184, !dbg !1367

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %4, align 8, !dbg !1371
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !1371
  store i8* %42, i8** %4, align 8, !dbg !1371
  %43 = load i8*, i8** %4, align 8, !dbg !1373
  %44 = load i8, i8* %43, align 1, !dbg !1375
  %45 = sext i8 %44 to i32, !dbg !1376
  %46 = icmp eq i32 %45, 110, !dbg !1377
  br i1 %46, label %47, label %55, !dbg !1378

; <label>:47:                                     ; preds = %40
  %48 = load i8, i8* %7, align 1, !dbg !1379
  %49 = sext i8 %48 to i32, !dbg !1381
  %50 = icmp eq i32 %49, 110, !dbg !1382
  br i1 %50, label %51, label %55, !dbg !1383

; <label>:51:                                     ; preds = %47
  %52 = load i8, i8* %8, align 1, !dbg !1384
  %53 = sext i8 %52 to i32, !dbg !1386
  %54 = icmp eq i32 %53, 110, !dbg !1387
  br i1 %54, label %74, label %55, !dbg !1388

; <label>:55:                                     ; preds = %51, %47, %40
  %56 = load i8*, i8** %4, align 8, !dbg !1389
  %57 = load i8, i8* %56, align 1, !dbg !1391
  %58 = sext i8 %57 to i32, !dbg !1392
  %59 = icmp ne i32 %58, 110, !dbg !1393
  br i1 %59, label %60, label %75, !dbg !1394

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %4, align 8, !dbg !1395
  %62 = load i8, i8* %61, align 1, !dbg !1397
  %63 = sext i8 %62 to i32, !dbg !1398
  %64 = load i8, i8* %7, align 1, !dbg !1399
  %65 = sext i8 %64 to i32, !dbg !1400
  %66 = icmp eq i32 %63, %65, !dbg !1401
  br i1 %66, label %74, label %67, !dbg !1402

; <label>:67:                                     ; preds = %60
  %68 = load i8*, i8** %4, align 8, !dbg !1403
  %69 = load i8, i8* %68, align 1, !dbg !1405
  %70 = sext i8 %69 to i32, !dbg !1406
  %71 = load i8, i8* %8, align 1, !dbg !1407
  %72 = sext i8 %71 to i32, !dbg !1408
  %73 = icmp eq i32 %70, %72, !dbg !1409
  br i1 %73, label %74, label %75, !dbg !1410

; <label>:74:                                     ; preds = %67, %60, %51
  br label %181, !dbg !1411

; <label>:75:                                     ; preds = %67, %55
  %76 = load i8*, i8** %4, align 8, !dbg !1413
  %77 = load i8, i8* %76, align 1, !dbg !1416
  %78 = sext i8 %77 to i32, !dbg !1417
  %79 = icmp ne i32 %78, 0, !dbg !1418
  br i1 %79, label %80, label %119, !dbg !1419

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** @fgcolorformats, align 8, !dbg !1420
  %82 = load i8*, i8** %4, align 8, !dbg !1422
  %83 = load i8, i8* %82, align 1, !dbg !1423
  %84 = sext i8 %83 to i32, !dbg !1423
  %85 = call i8* @strchr(i8* %81, i32 %84) #9, !dbg !1424
  %86 = icmp ne i8* %85, null, !dbg !1425
  br i1 %86, label %87, label %119, !dbg !1426

; <label>:87:                                     ; preds = %80
  %88 = load i8*, i8** %4, align 8, !dbg !1427
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1427
  %90 = load i8, i8* %89, align 1, !dbg !1427
  %91 = sext i8 %90 to i32, !dbg !1427
  %92 = icmp eq i32 %91, 37, !dbg !1428
  br i1 %92, label %93, label %119, !dbg !1429

; <label>:93:                                     ; preds = %87
  %94 = load i8*, i8** %4, align 8, !dbg !1430
  %95 = getelementptr inbounds i8, i8* %94, i64 2, !dbg !1430
  %96 = load i8, i8* %95, align 1, !dbg !1430
  %97 = sext i8 %96 to i32, !dbg !1431
  %98 = icmp ne i32 %97, 0, !dbg !1432
  br i1 %98, label %99, label %119, !dbg !1433

; <label>:99:                                     ; preds = %93
  %100 = load i8*, i8** @fgcolorformats, align 8, !dbg !1434
  %101 = load i8*, i8** %4, align 8, !dbg !1435
  %102 = getelementptr inbounds i8, i8* %101, i64 2, !dbg !1435
  %103 = load i8, i8* %102, align 1, !dbg !1435
  %104 = sext i8 %103 to i32, !dbg !1435
  %105 = call i8* @strchr(i8* %100, i32 %104) #9, !dbg !1436
  %106 = icmp ne i8* %105, null, !dbg !1437
  br i1 %106, label %107, label %119, !dbg !1438

; <label>:107:                                    ; preds = %99
  %108 = load i8*, i8** %4, align 8, !dbg !1439
  %109 = load i8, i8* %108, align 1, !dbg !1440
  %110 = sext i8 %109 to i32, !dbg !1440
  %111 = icmp ne i32 %110, 110, !dbg !1441
  br i1 %111, label %118, label %112, !dbg !1442

; <label>:112:                                    ; preds = %107
  %113 = load i8*, i8** %4, align 8, !dbg !1443
  %114 = getelementptr inbounds i8, i8* %113, i64 2, !dbg !1443
  %115 = load i8, i8* %114, align 1, !dbg !1443
  %116 = sext i8 %115 to i32, !dbg !1443
  %117 = icmp eq i32 %116, 110, !dbg !1444
  br i1 %117, label %118, label %119, !dbg !1445

; <label>:118:                                    ; preds = %112, %107
  br label %180, !dbg !1446

; <label>:119:                                    ; preds = %112, %99, %93, %87, %80, %75
  %120 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1448
  %121 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %120, i8 signext 37), !dbg !1450
  %122 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1451
  %123 = load i8*, i8** %4, align 8, !dbg !1452
  %124 = load i8, i8* %123, align 1, !dbg !1453
  %125 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %122, i8 signext %124), !dbg !1454
  %126 = load i8*, i8** %4, align 8, !dbg !1455
  %127 = load i8, i8* %126, align 1, !dbg !1457
  %128 = sext i8 %127 to i32, !dbg !1458
  %129 = icmp ne i32 %128, 0, !dbg !1459
  br i1 %129, label %130, label %140, !dbg !1460

; <label>:130:                                    ; preds = %119
  %131 = load i8*, i8** @fgcolorformats, align 8, !dbg !1461
  %132 = load i8*, i8** %4, align 8, !dbg !1463
  %133 = load i8, i8* %132, align 1, !dbg !1464
  %134 = sext i8 %133 to i32, !dbg !1464
  %135 = call i8* @strchr(i8* %131, i32 %134) #9, !dbg !1465
  %136 = icmp ne i8* %135, null, !dbg !1466
  br i1 %136, label %137, label %140, !dbg !1467

; <label>:137:                                    ; preds = %130
  %138 = load i8*, i8** %4, align 8, !dbg !1468
  %139 = load i8, i8* %138, align 1, !dbg !1469
  store i8 %139, i8* %7, align 1, !dbg !1470
  br label %152, !dbg !1471

; <label>:140:                                    ; preds = %130, %119
  %141 = load i8*, i8** %4, align 8, !dbg !1472
  %142 = load i8, i8* %141, align 1, !dbg !1474
  %143 = sext i8 %142 to i32, !dbg !1474
  %144 = icmp eq i32 %143, 90, !dbg !1475
  br i1 %144, label %150, label %145, !dbg !1476

; <label>:145:                                    ; preds = %140
  %146 = load i8*, i8** %4, align 8, !dbg !1477
  %147 = load i8, i8* %146, align 1, !dbg !1479
  %148 = sext i8 %147 to i32, !dbg !1479
  %149 = icmp eq i32 %148, 88, !dbg !1480
  br i1 %149, label %150, label %151, !dbg !1481

; <label>:150:                                    ; preds = %145, %140
  store i8 0, i8* %7, align 1, !dbg !1482
  br label %151, !dbg !1483

; <label>:151:                                    ; preds = %150, %145
  br label %152

; <label>:152:                                    ; preds = %151, %137
  %153 = load i8*, i8** %4, align 8, !dbg !1484
  %154 = load i8, i8* %153, align 1, !dbg !1486
  %155 = sext i8 %154 to i32, !dbg !1487
  %156 = icmp ne i32 %155, 0, !dbg !1488
  br i1 %156, label %157, label %167, !dbg !1489

; <label>:157:                                    ; preds = %152
  %158 = load i8*, i8** @bgcolorformats, align 8, !dbg !1490
  %159 = load i8*, i8** %4, align 8, !dbg !1492
  %160 = load i8, i8* %159, align 1, !dbg !1493
  %161 = sext i8 %160 to i32, !dbg !1493
  %162 = call i8* @strchr(i8* %158, i32 %161) #9, !dbg !1494
  %163 = icmp ne i8* %162, null, !dbg !1495
  br i1 %163, label %164, label %167, !dbg !1496

; <label>:164:                                    ; preds = %157
  %165 = load i8*, i8** %4, align 8, !dbg !1497
  %166 = load i8, i8* %165, align 1, !dbg !1498
  store i8 %166, i8* %8, align 1, !dbg !1499
  br label %179, !dbg !1500

; <label>:167:                                    ; preds = %157, %152
  %168 = load i8*, i8** %4, align 8, !dbg !1501
  %169 = load i8, i8* %168, align 1, !dbg !1503
  %170 = sext i8 %169 to i32, !dbg !1503
  %171 = icmp eq i32 %170, 122, !dbg !1504
  br i1 %171, label %177, label %172, !dbg !1505

; <label>:172:                                    ; preds = %167
  %173 = load i8*, i8** %4, align 8, !dbg !1506
  %174 = load i8, i8* %173, align 1, !dbg !1508
  %175 = sext i8 %174 to i32, !dbg !1508
  %176 = icmp eq i32 %175, 120, !dbg !1509
  br i1 %176, label %177, label %178, !dbg !1510

; <label>:177:                                    ; preds = %172, %167
  store i8 0, i8* %8, align 1, !dbg !1511
  br label %178, !dbg !1512

; <label>:178:                                    ; preds = %177, %172
  br label %179

; <label>:179:                                    ; preds = %178, %164
  br label %180

; <label>:180:                                    ; preds = %179, %118
  br label %181

; <label>:181:                                    ; preds = %180, %74
  %182 = load i8*, i8** %4, align 8, !dbg !1513
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !1513
  store i8* %183, i8** %4, align 8, !dbg !1513
  br label %191, !dbg !1514

; <label>:184:                                    ; preds = %34
  %185 = load i8*, i8** %4, align 8, !dbg !1515
  %186 = getelementptr inbounds i8, i8* %185, i32 1, !dbg !1515
  store i8* %186, i8** %4, align 8, !dbg !1515
  %187 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1517
  %188 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %187, i8 signext 37), !dbg !1518
  %189 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1519
  %190 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %189, i8 signext 37), !dbg !1520
  br label %191

; <label>:191:                                    ; preds = %184, %181
  br label %192

; <label>:192:                                    ; preds = %191, %27
  br label %193

; <label>:193:                                    ; preds = %192, %20
  br label %10, !dbg !1521, !llvm.loop !1523

; <label>:194:                                    ; preds = %10
  %195 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1524
  %196 = getelementptr inbounds %struct._GString, %struct._GString* %195, i32 0, i32 0, !dbg !1525
  %197 = load i8*, i8** %196, align 8, !dbg !1525
  store i8* %197, i8** %6, align 8, !dbg !1526
  %198 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1527
  %199 = call i8* @g_string_free(%struct._GString* %198, i32 0), !dbg !1528
  %200 = load i8*, i8** %6, align 8, !dbg !1529
  ret i8* %200, !dbg !1530
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @theme_register_module(i8*, %struct._FORMAT_REC*) #0 !dbg !1531 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._FORMAT_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1546, metadata !480), !dbg !1547
  store %struct._FORMAT_REC* %1, %struct._FORMAT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %4, metadata !1548, metadata !480), !dbg !1549
  %5 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !1550
  %6 = load i8*, i8** %3, align 8, !dbg !1552
  %7 = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %6), !dbg !1553
  %8 = icmp ne i8* %7, null, !dbg !1554
  br i1 %8, label %9, label %10, !dbg !1555

; <label>:9:                                      ; preds = %2
  br label %18, !dbg !1556

; <label>:10:                                     ; preds = %2
  %11 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !1557
  %12 = load i8*, i8** %3, align 8, !dbg !1558
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !1559
  %14 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %4, align 8, !dbg !1560
  %15 = bitcast %struct._FORMAT_REC* %14 to i8*, !dbg !1560
  %16 = call i32 @g_hash_table_insert(%struct._GHashTable* %11, i8* %13, i8* %15), !dbg !1561
  %17 = load i8*, i8** %3, align 8, !dbg !1563
  call void @themes_read_module(i8* %17), !dbg !1564
  br label %18, !dbg !1565

; <label>:18:                                     ; preds = %10, %9
  ret void, !dbg !1566
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @themes_read_module(i8*) #0 !dbg !1567 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1570, metadata !480), !dbg !1571
  %3 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !1572
  %4 = load i8*, i8** %2, align 8, !dbg !1573
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (%struct.THEME_REC*, i8*)* @theme_read_module to void (i8*, i8*)*), i8* %4), !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind uwtable
define void @theme_unregister_module(i8*) #0 !dbg !1576 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1577, metadata !480), !dbg !1578
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1579, metadata !480), !dbg !1580
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1581, metadata !480), !dbg !1582
  %5 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !1583
  %6 = icmp eq %struct._GHashTable* %5, null, !dbg !1585
  br i1 %6, label %7, label %8, !dbg !1586

; <label>:7:                                      ; preds = %1
  br label %20, !dbg !1587

; <label>:8:                                      ; preds = %1
  %9 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !1588
  %10 = load i8*, i8** %2, align 8, !dbg !1590
  %11 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %9, i8* %10, i8** %3, i8** %4), !dbg !1591
  %12 = icmp ne i32 %11, 0, !dbg !1591
  br i1 %12, label %14, label %13, !dbg !1592

; <label>:13:                                     ; preds = %8
  br label %20, !dbg !1593

; <label>:14:                                     ; preds = %8
  %15 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !1594
  %16 = load i8*, i8** %3, align 8, !dbg !1595
  %17 = call i32 @g_hash_table_remove(%struct._GHashTable* %15, i8* %16), !dbg !1596
  %18 = load i8*, i8** %3, align 8, !dbg !1597
  call void @g_free(i8* %18), !dbg !1598
  %19 = load i8*, i8** %2, align 8, !dbg !1599
  call void @themes_remove_module(i8* %19), !dbg !1600
  br label %20, !dbg !1601

; <label>:20:                                     ; preds = %14, %13, %7
  ret void, !dbg !1602
}

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @themes_remove_module(i8*) #0 !dbg !1604 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1605, metadata !480), !dbg !1606
  %3 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !1607
  %4 = load i8*, i8** %2, align 8, !dbg !1608
  call void @g_slist_foreach(%struct._GSList* %3, void (i8*, i8*)* bitcast (void (%struct.THEME_REC*, i8*)* @theme_remove_module to void (i8*, i8*)*), i8* %4), !dbg !1609
  ret void, !dbg !1610
}

; Function Attrs: nounwind uwtable
define void @theme_set_default_abstract(i8*, i8*) #0 !dbg !1611 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1614, metadata !480), !dbg !1615
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1616, metadata !480), !dbg !1617
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1618, metadata !480), !dbg !1619
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1620, metadata !480), !dbg !1621
  %7 = load %struct.THEME_REC*, %struct.THEME_REC** @internal_theme, align 8, !dbg !1622
  %8 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %7, i32 0, i32 9, !dbg !1624
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !1624
  %10 = load i8*, i8** %3, align 8, !dbg !1625
  %11 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %9, i8* %10, i8** %5, i8** %6), !dbg !1626
  %12 = icmp ne i32 %11, 0, !dbg !1626
  br i1 %12, label %13, label %21, !dbg !1627

; <label>:13:                                     ; preds = %2
  %14 = load %struct.THEME_REC*, %struct.THEME_REC** @internal_theme, align 8, !dbg !1628
  %15 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %14, i32 0, i32 9, !dbg !1630
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !1630
  %17 = load i8*, i8** %5, align 8, !dbg !1631
  %18 = call i32 @g_hash_table_remove(%struct._GHashTable* %16, i8* %17), !dbg !1632
  %19 = load i8*, i8** %5, align 8, !dbg !1633
  call void @g_free(i8* %19), !dbg !1634
  %20 = load i8*, i8** %6, align 8, !dbg !1635
  call void @g_free(i8* %20), !dbg !1636
  br label %21, !dbg !1637

; <label>:21:                                     ; preds = %13, %2
  %22 = load %struct.THEME_REC*, %struct.THEME_REC** @internal_theme, align 8, !dbg !1638
  %23 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %22, i32 0, i32 9, !dbg !1639
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !1639
  %25 = load i8*, i8** %3, align 8, !dbg !1640
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !1641
  %27 = load i8*, i8** %4, align 8, !dbg !1642
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !1643
  %29 = call i32 @g_hash_table_insert(%struct._GHashTable* %24, i8* %26, i8* %28), !dbg !1645
  ret void, !dbg !1646
}

; Function Attrs: nounwind uwtable
define %struct.THEME_REC* @theme_load(i8*) #0 !dbg !1647 {
  %2 = alloca %struct.THEME_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1650, metadata !480), !dbg !1651
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !1652, metadata !480), !dbg !1653
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !1654, metadata !480), !dbg !1655
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !1656, metadata !480), !dbg !1692
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1693, metadata !480), !dbg !1694
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1695, metadata !480), !dbg !1696
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1697, metadata !480), !dbg !1698
  %10 = load i8*, i8** %3, align 8, !dbg !1699
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !1700
  store i8* %11, i8** %8, align 8, !dbg !1701
  %12 = load i8*, i8** %8, align 8, !dbg !1702
  %13 = call i8* @strrchr(i8* %12, i32 46) #9, !dbg !1703
  store i8* %13, i8** %9, align 8, !dbg !1704
  %14 = load i8*, i8** %9, align 8, !dbg !1705
  %15 = icmp ne i8* %14, null, !dbg !1707
  br i1 %15, label %16, label %22, !dbg !1708

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %9, align 8, !dbg !1709
  %18 = call i32 @g_strcmp0(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1711
  %19 = icmp eq i32 %18, 0, !dbg !1712
  br i1 %19, label %20, label %22, !dbg !1713

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %9, align 8, !dbg !1714
  store i8 0, i8* %21, align 1, !dbg !1716
  br label %22, !dbg !1717

; <label>:22:                                     ; preds = %20, %16, %1
  %23 = load i8*, i8** %8, align 8, !dbg !1718
  %24 = call %struct.THEME_REC* @theme_find(i8* %23), !dbg !1719
  store %struct.THEME_REC* %24, %struct.THEME_REC** %4, align 8, !dbg !1720
  %25 = call i8* @get_irssi_dir(), !dbg !1721
  %26 = load i8*, i8** %8, align 8, !dbg !1722
  %27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* %25, i8* %26), !dbg !1723
  store i8* %27, i8** %7, align 8, !dbg !1725
  %28 = load i8*, i8** %7, align 8, !dbg !1726
  %29 = call i32 @stat(i8* %28, %struct.stat* %6) #8, !dbg !1728
  %30 = icmp ne i32 %29, 0, !dbg !1729
  br i1 %30, label %31, label %43, !dbg !1730

; <label>:31:                                     ; preds = %22
  %32 = load i8*, i8** %7, align 8, !dbg !1731
  call void @g_free(i8* %32), !dbg !1733
  %33 = load i8*, i8** %8, align 8, !dbg !1734
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i8* %33), !dbg !1735
  store i8* %34, i8** %7, align 8, !dbg !1736
  %35 = load i8*, i8** %7, align 8, !dbg !1737
  %36 = call i32 @stat(i8* %35, %struct.stat* %6) #8, !dbg !1739
  %37 = icmp ne i32 %36, 0, !dbg !1740
  br i1 %37, label %38, label %42, !dbg !1741

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %7, align 8, !dbg !1742
  call void @g_free(i8* %39), !dbg !1744
  %40 = load i8*, i8** %8, align 8, !dbg !1745
  call void @g_free(i8* %40), !dbg !1746
  %41 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1747
  store %struct.THEME_REC* %41, %struct.THEME_REC** %2, align 8, !dbg !1748
  br label %94, !dbg !1748

; <label>:42:                                     ; preds = %31
  br label %43, !dbg !1749

; <label>:43:                                     ; preds = %42, %22
  %44 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1750
  %45 = icmp ne %struct.THEME_REC* %44, null, !dbg !1752
  br i1 %45, label %46, label %58, !dbg !1753

; <label>:46:                                     ; preds = %43
  %47 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1754
  %48 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %47, i32 0, i32 3, !dbg !1756
  %49 = load i64, i64* %48, align 8, !dbg !1756
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 12, !dbg !1757
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %50, i32 0, i32 0, !dbg !1758
  %52 = load i64, i64* %51, align 8, !dbg !1758
  %53 = icmp eq i64 %49, %52, !dbg !1759
  br i1 %53, label %54, label %58, !dbg !1760

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %7, align 8, !dbg !1761
  call void @g_free(i8* %55), !dbg !1763
  %56 = load i8*, i8** %8, align 8, !dbg !1764
  call void @g_free(i8* %56), !dbg !1765
  %57 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1766
  store %struct.THEME_REC* %57, %struct.THEME_REC** %2, align 8, !dbg !1767
  br label %94, !dbg !1767

; <label>:58:                                     ; preds = %46, %43
  %59 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1768
  store %struct.THEME_REC* %59, %struct.THEME_REC** %5, align 8, !dbg !1769
  %60 = load i8*, i8** %7, align 8, !dbg !1770
  %61 = load i8*, i8** %8, align 8, !dbg !1771
  %62 = call %struct.THEME_REC* @theme_create(i8* %60, i8* %61), !dbg !1772
  store %struct.THEME_REC* %62, %struct.THEME_REC** %4, align 8, !dbg !1773
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 12, !dbg !1774
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i32 0, i32 0, !dbg !1775
  %65 = load i64, i64* %64, align 8, !dbg !1775
  %66 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1776
  %67 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %66, i32 0, i32 3, !dbg !1777
  store i64 %65, i64* %67, align 8, !dbg !1778
  %68 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1779
  %69 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1781
  %70 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %69, i32 0, i32 1, !dbg !1782
  %71 = load i8*, i8** %70, align 8, !dbg !1782
  %72 = call i32 @theme_read(%struct.THEME_REC* %68, i8* %71), !dbg !1783
  %73 = icmp ne i32 %72, 0, !dbg !1783
  br i1 %73, label %76, label %74, !dbg !1784

; <label>:74:                                     ; preds = %58
  %75 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1785
  call void @theme_destroy(%struct.THEME_REC* %75), !dbg !1787
  store %struct.THEME_REC* null, %struct.THEME_REC** %4, align 8, !dbg !1788
  br label %76, !dbg !1789

; <label>:76:                                     ; preds = %74, %58
  %77 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1790
  %78 = icmp ne %struct.THEME_REC* %77, null, !dbg !1792
  br i1 %78, label %79, label %90, !dbg !1793

; <label>:79:                                     ; preds = %76
  %80 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1794
  %81 = icmp ne %struct.THEME_REC* %80, null, !dbg !1796
  br i1 %81, label %82, label %90, !dbg !1797

; <label>:82:                                     ; preds = %79
  %83 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1798
  call void @theme_destroy(%struct.THEME_REC* %83), !dbg !1800
  %84 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1801
  %85 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1803
  %86 = icmp eq %struct.THEME_REC* %84, %85, !dbg !1804
  br i1 %86, label %87, label %89, !dbg !1805

; <label>:87:                                     ; preds = %82
  %88 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1806
  store %struct.THEME_REC* %88, %struct.THEME_REC** @current_theme, align 8, !dbg !1807
  br label %89, !dbg !1808

; <label>:89:                                     ; preds = %87, %82
  call void @window_themes_update(), !dbg !1809
  br label %90, !dbg !1810

; <label>:90:                                     ; preds = %89, %79, %76
  %91 = load i8*, i8** %7, align 8, !dbg !1811
  call void @g_free(i8* %91), !dbg !1812
  %92 = load i8*, i8** %8, align 8, !dbg !1813
  call void @g_free(i8* %92), !dbg !1814
  %93 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !1815
  store %struct.THEME_REC* %93, %struct.THEME_REC** %2, align 8, !dbg !1816
  br label %94, !dbg !1816

; <label>:94:                                     ; preds = %90, %54, %38
  %95 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !1817
  ret %struct.THEME_REC* %95, !dbg !1817
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.THEME_REC* @theme_find(i8*) #0 !dbg !1818 {
  %2 = alloca %struct.THEME_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1819, metadata !480), !dbg !1820
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1821, metadata !480), !dbg !1822
  %6 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !1823
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !1825
  br label %7, !dbg !1826

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1827
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1830
  br i1 %9, label %10, label %28, !dbg !1831

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !1832, metadata !480), !dbg !1834
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1835
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1836
  %13 = load i8*, i8** %12, align 8, !dbg !1836
  %14 = bitcast i8* %13 to %struct.THEME_REC*, !dbg !1835
  store %struct.THEME_REC* %14, %struct.THEME_REC** %5, align 8, !dbg !1834
  %15 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1837
  %16 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %15, i32 0, i32 2, !dbg !1839
  %17 = load i8*, i8** %16, align 8, !dbg !1839
  %18 = load i8*, i8** %3, align 8, !dbg !1840
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !1841
  %20 = icmp eq i32 %19, 0, !dbg !1842
  br i1 %20, label %21, label %23, !dbg !1843

; <label>:21:                                     ; preds = %10
  %22 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1844
  store %struct.THEME_REC* %22, %struct.THEME_REC** %2, align 8, !dbg !1845
  br label %29, !dbg !1845

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !1846

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1847
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !1849
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1849
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !1850
  br label %7, !dbg !1851, !llvm.loop !1852

; <label>:28:                                     ; preds = %7
  store %struct.THEME_REC* null, %struct.THEME_REC** %2, align 8, !dbg !1854
  br label %29, !dbg !1854

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !1855
  ret %struct.THEME_REC* %30, !dbg !1855
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @get_irssi_dir() #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal i32 @theme_read(%struct.THEME_REC*, i8*) #0 !dbg !1856 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca %struct.THEME_READ_REC, align 8
  %8 = alloca i8*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !1859, metadata !480), !dbg !1860
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1861, metadata !480), !dbg !1862
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !1863, metadata !480), !dbg !2129
  call void @llvm.dbg.declare(metadata %struct.THEME_READ_REC* %7, metadata !2130, metadata !480), !dbg !2136
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2137, metadata !480), !dbg !2138
  %9 = load i8*, i8** %5, align 8, !dbg !2139
  %10 = call %struct._CONFIG_REC* @config_open(i8* %9, i32 -1), !dbg !2140
  store %struct._CONFIG_REC* %10, %struct._CONFIG_REC** %6, align 8, !dbg !2141
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2142
  %12 = icmp eq %struct._CONFIG_REC* %11, null, !dbg !2144
  br i1 %12, label %13, label %21, !dbg !2145

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !2146
  %15 = call i32* @__errno_location() #1, !dbg !2148
  %16 = load i32, i32* %15, align 4, !dbg !2149
  %17 = call i8* @g_strerror(i32 %16) #1, !dbg !2150
  %18 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i8* %14, i8* %17), !dbg !2152
  store i8* %18, i8** %8, align 8, !dbg !2153
  %19 = load i8*, i8** %8, align 8, !dbg !2154
  call void @read_error(i8* %19), !dbg !2155
  %20 = load i8*, i8** %8, align 8, !dbg !2156
  call void @g_free(i8* %20), !dbg !2157
  store i32 0, i32* %3, align 4, !dbg !2158
  br label %78, !dbg !2158

; <label>:21:                                     ; preds = %2
  %22 = load i8*, i8** %5, align 8, !dbg !2159
  %23 = icmp eq i8* %22, null, !dbg !2161
  br i1 %23, label %24, label %28, !dbg !2162

; <label>:24:                                     ; preds = %21
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2163
  %26 = load i8*, i8** @default_theme, align 8, !dbg !2164
  %27 = call i32 @config_parse_data(%struct._CONFIG_REC* %25, i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)), !dbg !2165
  br label %31, !dbg !2165

; <label>:28:                                     ; preds = %21
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2166
  %30 = call i32 @config_parse(%struct._CONFIG_REC* %29), !dbg !2167
  br label %31

; <label>:31:                                     ; preds = %28, %24
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2168
  %33 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %32, i32 0, i32 3, !dbg !2170
  %34 = load i8*, i8** %33, align 8, !dbg !2170
  %35 = icmp ne i8* %34, null, !dbg !2171
  br i1 %35, label %36, label %46, !dbg !2172

; <label>:36:                                     ; preds = %31
  %37 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2173
  %38 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %37, i32 0, i32 2, !dbg !2175
  %39 = load i8*, i8** %38, align 8, !dbg !2175
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2176
  %41 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %40, i32 0, i32 3, !dbg !2177
  %42 = load i8*, i8** %41, align 8, !dbg !2177
  %43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* %39, i8* %42), !dbg !2178
  store i8* %43, i8** %8, align 8, !dbg !2179
  %44 = load i8*, i8** %8, align 8, !dbg !2180
  call void @read_error(i8* %44), !dbg !2181
  %45 = load i8*, i8** %8, align 8, !dbg !2182
  call void @g_free(i8* %45), !dbg !2183
  br label %46, !dbg !2184

; <label>:46:                                     ; preds = %36, %31
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2185
  %48 = call i32 @config_get_int(%struct._CONFIG_REC* %47, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 -1), !dbg !2186
  %49 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2187
  %50 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %49, i32 0, i32 4, !dbg !2188
  store i32 %48, i32* %50, align 8, !dbg !2189
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2190
  %52 = call i32 @config_get_bool(%struct._CONFIG_REC* %51, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 0), !dbg !2191
  %53 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2192
  %54 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %53, i32 0, i32 5, !dbg !2193
  %55 = trunc i32 %52 to i8, !dbg !2194
  %56 = load i8, i8* %54, align 4, !dbg !2194
  %57 = and i8 %55, 1, !dbg !2194
  %58 = and i8 %56, -2, !dbg !2194
  %59 = or i8 %58, %57, !dbg !2194
  store i8 %59, i8* %54, align 4, !dbg !2194
  %60 = zext i8 %57 to i32, !dbg !2194
  %61 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2195
  %62 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2196
  call void @theme_read_replaces(%struct._CONFIG_REC* %61, %struct.THEME_REC* %62), !dbg !2197
  %63 = load i8*, i8** %5, align 8, !dbg !2198
  %64 = icmp ne i8* %63, null, !dbg !2200
  br i1 %64, label %65, label %68, !dbg !2201

; <label>:65:                                     ; preds = %46
  %66 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2202
  %67 = load %struct.THEME_REC*, %struct.THEME_REC** @internal_theme, align 8, !dbg !2203
  call void @theme_copy_abstracts(%struct.THEME_REC* %66, %struct.THEME_REC* %67), !dbg !2204
  br label %68, !dbg !2204

; <label>:68:                                     ; preds = %65, %46
  %69 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2205
  %70 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2206
  call void @theme_read_abstracts(%struct._CONFIG_REC* %69, %struct.THEME_REC* %70), !dbg !2207
  %71 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2208
  %72 = getelementptr inbounds %struct.THEME_READ_REC, %struct.THEME_READ_REC* %7, i32 0, i32 0, !dbg !2209
  store %struct.THEME_REC* %71, %struct.THEME_REC** %72, align 8, !dbg !2210
  %73 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2211
  %74 = getelementptr inbounds %struct.THEME_READ_REC, %struct.THEME_READ_REC* %7, i32 0, i32 1, !dbg !2212
  store %struct._CONFIG_REC* %73, %struct._CONFIG_REC** %74, align 8, !dbg !2213
  %75 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !2214
  %76 = bitcast %struct.THEME_READ_REC* %7 to i8*, !dbg !2215
  call void @g_hash_table_foreach(%struct._GHashTable* %75, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.THEME_READ_REC*)* @theme_read_modules to void (i8*, i8*, i8*)*), i8* %76), !dbg !2216
  %77 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !2217
  call void @config_close(%struct._CONFIG_REC* %77), !dbg !2218
  store i32 1, i32* %3, align 4, !dbg !2219
  br label %78, !dbg !2219

; <label>:78:                                     ; preds = %68, %13
  %79 = load i32, i32* %3, align 4, !dbg !2220
  ret i32 %79, !dbg !2220
}

; Function Attrs: nounwind uwtable
define internal void @window_themes_update() #0 !dbg !2221 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._WINDOW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2222, metadata !480), !dbg !2223
  %3 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2224
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !2226
  br label %4, !dbg !2227

; <label>:4:                                      ; preds = %25, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2228
  %6 = icmp ne %struct._GSList* %5, null, !dbg !2231
  br i1 %6, label %7, label %29, !dbg !2232

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2233, metadata !480), !dbg !2309
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2310
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !2311
  %10 = load i8*, i8** %9, align 8, !dbg !2311
  %11 = bitcast i8* %10 to %struct._WINDOW_REC*, !dbg !2310
  store %struct._WINDOW_REC* %11, %struct._WINDOW_REC** %2, align 8, !dbg !2309
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2312
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 18, !dbg !2314
  %14 = load i8*, i8** %13, align 8, !dbg !2314
  %15 = icmp ne i8* %14, null, !dbg !2315
  br i1 %15, label %16, label %24, !dbg !2316

; <label>:16:                                     ; preds = %7
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2317
  %18 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %17, i32 0, i32 18, !dbg !2318
  %19 = load i8*, i8** %18, align 8, !dbg !2318
  %20 = call %struct.THEME_REC* @theme_load(i8* %19), !dbg !2319
  %21 = bitcast %struct.THEME_REC* %20 to i8*, !dbg !2319
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2320
  %23 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %22, i32 0, i32 19, !dbg !2321
  store i8* %21, i8** %23, align 8, !dbg !2322
  br label %24, !dbg !2320

; <label>:24:                                     ; preds = %16, %7
  br label %25, !dbg !2323

; <label>:25:                                     ; preds = %24
  %26 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2324
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !2326
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !2326
  store %struct._GSList* %28, %struct._GSList** %1, align 8, !dbg !2327
  br label %4, !dbg !2328, !llvm.loop !2329

; <label>:29:                                     ; preds = %4
  ret void, !dbg !2331
}

; Function Attrs: nounwind uwtable
define void @themes_reload() #0 !dbg !2332 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !2333, metadata !480), !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2335, metadata !480), !dbg !2336
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !2337
  br label %5, !dbg !2338

; <label>:5:                                      ; preds = %8, %0
  %6 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !2339
  %7 = icmp ne %struct._GSList* %6, null, !dbg !2341
  br i1 %7, label %8, label %22, !dbg !2342

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !2343, metadata !480), !dbg !2345
  %9 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !2346
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !2347
  %11 = load i8*, i8** %10, align 8, !dbg !2347
  %12 = bitcast i8* %11 to %struct.THEME_REC*, !dbg !2346
  store %struct.THEME_REC* %12, %struct.THEME_REC** %3, align 8, !dbg !2345
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2348
  %14 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2349
  %15 = bitcast %struct.THEME_REC* %14 to i8*, !dbg !2349
  %16 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %13, i8* %15), !dbg !2350
  store %struct._GSList* %16, %struct._GSList** %1, align 8, !dbg !2351
  %17 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2352
  %18 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %17, i32 0, i32 0, !dbg !2353
  %19 = load i32, i32* %18, align 8, !dbg !2354
  %20 = add nsw i32 %19, 1, !dbg !2354
  store i32 %20, i32* %18, align 8, !dbg !2354
  %21 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !2355
  call void @theme_destroy(%struct.THEME_REC* %21), !dbg !2356
  br label %5, !dbg !2357, !llvm.loop !2359

; <label>:22:                                     ; preds = %5
  %23 = call %struct.THEME_REC* @theme_load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !2360
  store %struct.THEME_REC* %23, %struct.THEME_REC** @current_theme, align 8, !dbg !2361
  %24 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2362
  %25 = icmp eq %struct.THEME_REC* %24, null, !dbg !2364
  br i1 %25, label %26, label %36, !dbg !2365

; <label>:26:                                     ; preds = %22
  %27 = call i8* @get_irssi_dir(), !dbg !2366
  %28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %27), !dbg !2368
  store i8* %28, i8** %2, align 8, !dbg !2370
  %29 = load i8*, i8** %2, align 8, !dbg !2371
  %30 = call %struct.THEME_REC* @theme_create(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !2372
  store %struct.THEME_REC* %30, %struct.THEME_REC** @current_theme, align 8, !dbg !2373
  %31 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2374
  %32 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %31, i32 0, i32 4, !dbg !2375
  store i32 -1, i32* %32, align 8, !dbg !2376
  %33 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2377
  %34 = call i32 @theme_read(%struct.THEME_REC* %33, i8* null), !dbg !2378
  %35 = load i8*, i8** %2, align 8, !dbg !2379
  call void @g_free(i8* %35), !dbg !2380
  br label %36, !dbg !2381

; <label>:36:                                     ; preds = %26, %22
  call void @window_themes_update(), !dbg !2382
  %37 = call i8* @settings_get_str(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)), !dbg !2383
  call void @change_theme(i8* %37, i32 0), !dbg !2384
  br label %38, !dbg !2385

; <label>:38:                                     ; preds = %41, %36
  %39 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2386
  %40 = icmp ne %struct._GSList* %39, null, !dbg !2387
  br i1 %40, label %41, label %52, !dbg !2388

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2389, metadata !480), !dbg !2391
  %42 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2392
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !2393
  %44 = load i8*, i8** %43, align 8, !dbg !2393
  store i8* %44, i8** %4, align 8, !dbg !2391
  %45 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2394
  %46 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !2395
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !2396
  %48 = load i8*, i8** %47, align 8, !dbg !2396
  %49 = call %struct._GSList* @g_slist_remove(%struct._GSList* %45, i8* %48), !dbg !2397
  store %struct._GSList* %49, %struct._GSList** %1, align 8, !dbg !2398
  %50 = load i8*, i8** %4, align 8, !dbg !2399
  %51 = bitcast i8* %50 to %struct.THEME_REC*, !dbg !2399
  call void @theme_unref(%struct.THEME_REC* %51), !dbg !2400
  br label %38, !dbg !2401, !llvm.loop !2402

; <label>:52:                                     ; preds = %38
  ret void, !dbg !2403
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @change_theme(i8*, i32) #0 !dbg !2404 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.THEME_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2407, metadata !480), !dbg !2408
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2409, metadata !480), !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !2411, metadata !480), !dbg !2412
  %6 = load i8*, i8** %3, align 8, !dbg !2413
  %7 = call %struct.THEME_REC* @theme_load(i8* %6), !dbg !2414
  store %struct.THEME_REC* %7, %struct.THEME_REC** %5, align 8, !dbg !2415
  %8 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2416
  %9 = icmp ne %struct.THEME_REC* %8, null, !dbg !2418
  br i1 %9, label %10, label %24, !dbg !2419

; <label>:10:                                     ; preds = %2
  %11 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2420
  store %struct.THEME_REC* %11, %struct.THEME_REC** @current_theme, align 8, !dbg !2422
  %12 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2423
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct.THEME_REC* %12), !dbg !2424
  %14 = load i32, i32* %4, align 4, !dbg !2425
  %15 = icmp ne i32 %14, 0, !dbg !2425
  br i1 %15, label %16, label %23, !dbg !2427

; <label>:16:                                     ; preds = %10
  %17 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2428
  %18 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %17, i32 0, i32 2, !dbg !2430
  %19 = load i8*, i8** %18, align 8, !dbg !2430
  %20 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2431
  %21 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %20, i32 0, i32 1, !dbg !2432
  %22 = load i8*, i8** %21, align 8, !dbg !2432
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 177, i8* %19, i8* %22), !dbg !2433
  br label %23, !dbg !2434

; <label>:23:                                     ; preds = %16, %10
  br label %30, !dbg !2435

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %4, align 4, !dbg !2436
  %26 = icmp ne i32 %25, 0, !dbg !2436
  br i1 %26, label %27, label %29, !dbg !2436

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %3, align 8, !dbg !2439
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 176, i8* %28), !dbg !2441
  br label %29, !dbg !2442

; <label>:29:                                     ; preds = %27, %24
  br label %30

; <label>:30:                                     ; preds = %29, %23
  ret void, !dbg !2443
}

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define void @themes_init() #0 !dbg !2444 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !2445
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !2446
  store %struct._GHashTable* %1, %struct._GHashTable** @default_formats, align 8, !dbg !2447
  %2 = call %struct.THEME_REC* @read_internal_theme(), !dbg !2448
  store %struct.THEME_REC* %2, %struct.THEME_REC** @internal_theme, align 8, !dbg !2449
  store i32 0, i32* @init_finished, align 4, !dbg !2450
  store i8* null, i8** @init_errors, align 8, !dbg !2451
  call void @themes_reload(), !dbg !2452
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2453
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2454
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2455
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_errors to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2456
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2457
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @themes_reload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2458
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)), !dbg !2459
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !2460
  ret void, !dbg !2461
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.THEME_REC* @read_internal_theme() #0 !dbg !2462 {
  %1 = alloca %struct._CONFIG_REC*, align 8
  %2 = alloca %struct.THEME_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %1, metadata !2465, metadata !480), !dbg !2466
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %2, metadata !2467, metadata !480), !dbg !2468
  %3 = call %struct.THEME_REC* @theme_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)), !dbg !2469
  store %struct.THEME_REC* %3, %struct.THEME_REC** %2, align 8, !dbg !2470
  %4 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2471
  %5 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %4, i32 0, i32 0, !dbg !2472
  %6 = load i32, i32* %5, align 8, !dbg !2473
  %7 = add nsw i32 %6, 1, !dbg !2473
  store i32 %7, i32* %5, align 8, !dbg !2473
  %8 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2474
  call void @theme_destroy(%struct.THEME_REC* %8), !dbg !2475
  %9 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !2476
  store %struct._CONFIG_REC* %9, %struct._CONFIG_REC** %1, align 8, !dbg !2477
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !2478
  %11 = load i8*, i8** @default_theme, align 8, !dbg !2479
  %12 = call i32 @config_parse_data(%struct._CONFIG_REC* %10, i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)), !dbg !2480
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !2481
  %14 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2482
  call void @theme_read_abstracts(%struct._CONFIG_REC* %13, %struct.THEME_REC* %14), !dbg !2483
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %1, align 8, !dbg !2484
  call void @config_close(%struct._CONFIG_REC* %15), !dbg !2485
  %16 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2486
  ret %struct.THEME_REC* %16, !dbg !2487
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_format(i8*) #0 !dbg !2488 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.THEME_SEARCH_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2489, metadata !480), !dbg !2490
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !2491, metadata !480), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2493, metadata !480), !dbg !2494
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2495, metadata !480), !dbg !2496
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2497, metadata !480), !dbg !2498
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2499, metadata !480), !dbg !2500
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2501, metadata !480), !dbg !2502
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2503, metadata !480), !dbg !2504
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2505, metadata !480), !dbg !2506
  %12 = load i8*, i8** %2, align 8, !dbg !2507
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %9, i32 24579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._GHashTable** %3, i8** %6, i8** %7, i8** %8), !dbg !2509
  %14 = icmp ne i32 %13, 0, !dbg !2509
  br i1 %14, label %16, label %15, !dbg !2510

; <label>:15:                                     ; preds = %1
  br label %93, !dbg !2511

; <label>:16:                                     ; preds = %1
  %17 = call %struct._GSList* @get_sorted_modules(), !dbg !2512
  store %struct._GSList* %17, %struct._GSList** %5, align 8, !dbg !2513
  %18 = load i8*, i8** %6, align 8, !dbg !2514
  %19 = load i8, i8* %18, align 1, !dbg !2516
  %20 = sext i8 %19 to i32, !dbg !2516
  %21 = icmp eq i32 %20, 0, !dbg !2517
  br i1 %21, label %22, label %23, !dbg !2518

; <label>:22:                                     ; preds = %16
  store i8* null, i8** %6, align 8, !dbg !2519
  br label %36, !dbg !2520

; <label>:23:                                     ; preds = %16
  %24 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2521
  %25 = load i8*, i8** %6, align 8, !dbg !2523
  %26 = call %struct.THEME_SEARCH_REC* @theme_search(%struct._GSList* %24, i8* %25), !dbg !2524
  %27 = icmp eq %struct.THEME_SEARCH_REC* %26, null, !dbg !2525
  br i1 %27, label %28, label %35, !dbg !2526

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %9, align 8, !dbg !2527
  call void @cmd_params_free(i8* %29), !dbg !2529
  %30 = load i8*, i8** %2, align 8, !dbg !2530
  %31 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %30, i8** %9, i32 24578, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._GHashTable** %3, i8** %7, i8** %8), !dbg !2532
  %32 = icmp ne i32 %31, 0, !dbg !2532
  br i1 %32, label %34, label %33, !dbg !2533

; <label>:33:                                     ; preds = %28
  br label %93, !dbg !2534

; <label>:34:                                     ; preds = %28
  store i8* null, i8** %6, align 8, !dbg !2535
  br label %35, !dbg !2536

; <label>:35:                                     ; preds = %34, %23
  br label %36

; <label>:36:                                     ; preds = %35, %22
  store i32 0, i32* %10, align 4, !dbg !2537
  %37 = load i8*, i8** %7, align 8, !dbg !2538
  %38 = load i8, i8* %37, align 1, !dbg !2540
  %39 = sext i8 %38 to i32, !dbg !2540
  %40 = icmp eq i32 %39, 0, !dbg !2541
  br i1 %40, label %41, label %42, !dbg !2542

; <label>:41:                                     ; preds = %36
  store i8* null, i8** %7, align 8, !dbg !2543
  br label %42, !dbg !2545

; <label>:42:                                     ; preds = %41, %36
  %43 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2546
  %44 = call i8* @g_hash_table_lookup(%struct._GHashTable* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)), !dbg !2548
  %45 = icmp ne i8* %44, null, !dbg !2548
  br i1 %45, label %46, label %47, !dbg !2549

; <label>:46:                                     ; preds = %42
  store i32 1, i32* %10, align 4, !dbg !2550
  br label %60, !dbg !2551

; <label>:47:                                     ; preds = %42
  %48 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2552
  %49 = call i8* @g_hash_table_lookup(%struct._GHashTable* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0)), !dbg !2554
  %50 = icmp ne i8* %49, null, !dbg !2554
  br i1 %50, label %51, label %52, !dbg !2555

; <label>:51:                                     ; preds = %47
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i32 0, i32 0), i8** %8, align 8, !dbg !2556
  br label %59, !dbg !2557

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %8, align 8, !dbg !2558
  %54 = load i8, i8* %53, align 1, !dbg !2560
  %55 = sext i8 %54 to i32, !dbg !2560
  %56 = icmp eq i32 %55, 0, !dbg !2561
  br i1 %56, label %57, label %58, !dbg !2562

; <label>:57:                                     ; preds = %52
  store i8* null, i8** %8, align 8, !dbg !2563
  br label %58, !dbg !2564

; <label>:58:                                     ; preds = %57, %52
  br label %59

; <label>:59:                                     ; preds = %58, %51
  br label %60

; <label>:60:                                     ; preds = %59, %46
  %61 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2565
  store %struct._GSList* %61, %struct._GSList** %4, align 8, !dbg !2567
  br label %62, !dbg !2568

; <label>:62:                                     ; preds = %85, %60
  %63 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2569
  %64 = icmp ne %struct._GSList* %63, null, !dbg !2572
  br i1 %64, label %65, label %89, !dbg !2573

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %11, metadata !2574, metadata !480), !dbg !2576
  %66 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2577
  %67 = getelementptr inbounds %struct._GSList, %struct._GSList* %66, i32 0, i32 0, !dbg !2578
  %68 = load i8*, i8** %67, align 8, !dbg !2578
  %69 = bitcast i8* %68 to %struct.THEME_SEARCH_REC*, !dbg !2577
  store %struct.THEME_SEARCH_REC* %69, %struct.THEME_SEARCH_REC** %11, align 8, !dbg !2576
  %70 = load i8*, i8** %6, align 8, !dbg !2579
  %71 = icmp eq i8* %70, null, !dbg !2581
  br i1 %71, label %79, label %72, !dbg !2582

; <label>:72:                                     ; preds = %65
  %73 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %11, align 8, !dbg !2583
  %74 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %73, i32 0, i32 1, !dbg !2585
  %75 = load i8*, i8** %74, align 8, !dbg !2585
  %76 = load i8*, i8** %6, align 8, !dbg !2586
  %77 = call i32 @g_ascii_strcasecmp(i8* %75, i8* %76), !dbg !2587
  %78 = icmp eq i32 %77, 0, !dbg !2588
  br i1 %78, label %79, label %84, !dbg !2589

; <label>:79:                                     ; preds = %72, %65
  %80 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %11, align 8, !dbg !2590
  %81 = load i8*, i8** %7, align 8, !dbg !2591
  %82 = load i8*, i8** %8, align 8, !dbg !2592
  %83 = load i32, i32* %10, align 4, !dbg !2593
  call void @theme_show(%struct.THEME_SEARCH_REC* %80, i8* %81, i8* %82, i32 %83), !dbg !2594
  br label %84, !dbg !2594

; <label>:84:                                     ; preds = %79, %72
  br label %85, !dbg !2595

; <label>:85:                                     ; preds = %84
  %86 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2596
  %87 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 1, !dbg !2598
  %88 = load %struct._GSList*, %struct._GSList** %87, align 8, !dbg !2598
  store %struct._GSList* %88, %struct._GSList** %4, align 8, !dbg !2599
  br label %62, !dbg !2600, !llvm.loop !2601

; <label>:89:                                     ; preds = %62
  %90 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2603
  call void @g_slist_foreach(%struct._GSList* %90, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !2604
  %91 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2605
  call void @g_slist_free(%struct._GSList* %91), !dbg !2606
  %92 = load i8*, i8** %9, align 8, !dbg !2607
  call void @cmd_params_free(i8* %92), !dbg !2608
  br label %93, !dbg !2609

; <label>:93:                                     ; preds = %89, %33, %15
  ret void, !dbg !2610
}

; Function Attrs: nounwind uwtable
define internal void @cmd_save(i8*) #0 !dbg !2612 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.THEME_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2613, metadata !480), !dbg !2614
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2615, metadata !480), !dbg !2616
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !2617, metadata !480), !dbg !2618
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2619, metadata !480), !dbg !2620
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2621, metadata !480), !dbg !2622
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2623, metadata !480), !dbg !2624
  %9 = load i8*, i8** %2, align 8, !dbg !2625
  %10 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %9, i8** %5, i32 16385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._GHashTable** %4, i8** %6), !dbg !2627
  %11 = icmp ne i32 %10, 0, !dbg !2627
  br i1 %11, label %13, label %12, !dbg !2628

; <label>:12:                                     ; preds = %1
  br label %35, !dbg !2629

; <label>:13:                                     ; preds = %1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !2630
  %15 = call i8* @g_hash_table_lookup(%struct._GHashTable* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !2631
  %16 = icmp ne i8* %15, null, !dbg !2632
  %17 = zext i1 %16 to i32, !dbg !2632
  store i32 %17, i32* %7, align 4, !dbg !2633
  %18 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !2634
  store %struct._GSList* %18, %struct._GSList** %3, align 8, !dbg !2636
  br label %19, !dbg !2637

; <label>:19:                                     ; preds = %29, %13
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2638
  %21 = icmp ne %struct._GSList* %20, null, !dbg !2641
  br i1 %21, label %22, label %33, !dbg !2642

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %8, metadata !2643, metadata !480), !dbg !2645
  %23 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2646
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !2647
  %25 = load i8*, i8** %24, align 8, !dbg !2647
  %26 = bitcast i8* %25 to %struct.THEME_REC*, !dbg !2646
  store %struct.THEME_REC* %26, %struct.THEME_REC** %8, align 8, !dbg !2645
  %27 = load %struct.THEME_REC*, %struct.THEME_REC** %8, align 8, !dbg !2648
  %28 = load i32, i32* %7, align 4, !dbg !2649
  call void @theme_save(%struct.THEME_REC* %27, i32 %28), !dbg !2650
  br label %29, !dbg !2651

; <label>:29:                                     ; preds = %22
  %30 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2652
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1, !dbg !2654
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !2654
  store %struct._GSList* %32, %struct._GSList** %3, align 8, !dbg !2655
  br label %19, !dbg !2656, !llvm.loop !2657

; <label>:33:                                     ; preds = %19
  %34 = load i8*, i8** %5, align 8, !dbg !2659
  call void @cmd_params_free(i8* %34), !dbg !2660
  br label %35, !dbg !2661

; <label>:35:                                     ; preds = %33, %12
  ret void, !dbg !2662
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_complete_format(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2664 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2669, metadata !480), !dbg !2670
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2671, metadata !480), !dbg !2672
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2673, metadata !480), !dbg !2674
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2675, metadata !480), !dbg !2676
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2677, metadata !480), !dbg !2678
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2679, metadata !480), !dbg !2680
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2681, metadata !480), !dbg !2682
  br label %13, !dbg !2683, !llvm.loop !2684

; <label>:13:                                     ; preds = %5
  %14 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2685
  %15 = icmp ne %struct._GList** %14, null, !dbg !2689
  br i1 %15, label %16, label %17, !dbg !2685

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !2690

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_format, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0)), !dbg !2693
  br label %64, !dbg !2696

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !2697

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !2699, !llvm.loop !2700

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %8, align 8, !dbg !2701
  %22 = icmp ne i8* %21, null, !dbg !2705
  br i1 %22, label %23, label %24, !dbg !2701

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !2706

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_format, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0)), !dbg !2709
  br label %64, !dbg !2712

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !2713

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !2715, !llvm.loop !2716

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %9, align 8, !dbg !2717
  %29 = icmp ne i8* %28, null, !dbg !2721
  br i1 %29, label %30, label %31, !dbg !2717

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !2722

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_format, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0)), !dbg !2725
  br label %64, !dbg !2728

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !2729

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %9, align 8, !dbg !2731
  store i8* %34, i8** %11, align 8, !dbg !2732
  store i32 0, i32* %12, align 4, !dbg !2733
  %35 = load i8*, i8** %11, align 8, !dbg !2734
  %36 = load i8, i8* %35, align 1, !dbg !2736
  %37 = sext i8 %36 to i32, !dbg !2736
  %38 = icmp ne i32 %37, 0, !dbg !2737
  br i1 %38, label %39, label %51, !dbg !2738

; <label>:39:                                     ; preds = %33
  br label %40, !dbg !2739, !llvm.loop !2741

; <label>:40:                                     ; preds = %47, %39
  %41 = load i8*, i8** %11, align 8, !dbg !2742
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !2742
  store i8* %42, i8** %11, align 8, !dbg !2742
  %43 = load i32, i32* %12, align 4, !dbg !2744
  %44 = add nsw i32 %43, 1, !dbg !2744
  store i32 %44, i32* %12, align 4, !dbg !2744
  %45 = load i8*, i8** %11, align 8, !dbg !2745
  %46 = call i8* @strchr(i8* %45, i32 32) #9, !dbg !2746
  store i8* %46, i8** %11, align 8, !dbg !2747
  br label %47, !dbg !2748

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %11, align 8, !dbg !2749
  %49 = icmp ne i8* %48, null, !dbg !2751
  br i1 %49, label %40, label %50, !dbg !2752, !llvm.loop !2741

; <label>:50:                                     ; preds = %47
  br label %51, !dbg !2753

; <label>:51:                                     ; preds = %50, %33
  %52 = load i32, i32* %12, align 4, !dbg !2754
  %53 = icmp sgt i32 %52, 2, !dbg !2756
  br i1 %53, label %54, label %55, !dbg !2757

; <label>:54:                                     ; preds = %51
  br label %64, !dbg !2758

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %9, align 8, !dbg !2759
  %57 = load i8*, i8** %8, align 8, !dbg !2760
  %58 = call %struct._GList* @completion_get_formats(i8* %56, i8* %57), !dbg !2761
  %59 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2762
  store %struct._GList* %58, %struct._GList** %59, align 8, !dbg !2763
  %60 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2764
  %61 = load %struct._GList*, %struct._GList** %60, align 8, !dbg !2766
  %62 = icmp ne %struct._GList* %61, null, !dbg !2767
  br i1 %62, label %63, label %64, !dbg !2768

; <label>:63:                                     ; preds = %55
  call void @signal_stop(), !dbg !2769
  br label %64, !dbg !2769

; <label>:64:                                     ; preds = %17, %24, %31, %54, %63, %55
  ret void, !dbg !2771
}

; Function Attrs: nounwind uwtable
define internal void @sig_print_errors() #0 !dbg !2772 {
  store i32 1, i32* @init_finished, align 4, !dbg !2773
  %1 = load i8*, i8** @init_errors, align 8, !dbg !2774
  %2 = icmp ne i8* %1, null, !dbg !2776
  br i1 %2, label %3, label %7, !dbg !2777

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @init_errors, align 8, !dbg !2778
  %5 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* %4), !dbg !2780
  %6 = load i8*, i8** @init_errors, align 8, !dbg !2781
  call void @g_free(i8* %6), !dbg !2782
  br label %7, !dbg !2783

; <label>:7:                                      ; preds = %3, %0
  ret void, !dbg !2784
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !2785 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2786, metadata !480), !dbg !2787
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2788, metadata !480), !dbg !2789
  %3 = call i8* @settings_get_str(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)), !dbg !2790
  store i8* %3, i8** %1, align 8, !dbg !2791
  %4 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2792
  %5 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %4, i32 0, i32 2, !dbg !2793
  %6 = load i8*, i8** %5, align 8, !dbg !2793
  %7 = call i64 @strlen(i8* %6) #9, !dbg !2794
  %8 = trunc i64 %7 to i32, !dbg !2794
  store i32 %8, i32* %2, align 4, !dbg !2795
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2796
  %10 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %9, i32 0, i32 2, !dbg !2798
  %11 = load i8*, i8** %10, align 8, !dbg !2798
  %12 = load i8*, i8** %1, align 8, !dbg !2799
  %13 = call i32 @g_strcmp0(i8* %11, i8* %12), !dbg !2800
  %14 = icmp ne i32 %13, 0, !dbg !2801
  br i1 %14, label %15, label %33, !dbg !2802

; <label>:15:                                     ; preds = %0
  %16 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2803
  %17 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %16, i32 0, i32 2, !dbg !2804
  %18 = load i8*, i8** %17, align 8, !dbg !2804
  %19 = load i8*, i8** %1, align 8, !dbg !2805
  %20 = load i32, i32* %2, align 4, !dbg !2806
  %21 = sext i32 %20 to i64, !dbg !2806
  %22 = call i32 @strncmp(i8* %18, i8* %19, i64 %21) #9, !dbg !2807
  %23 = icmp ne i32 %22, 0, !dbg !2808
  br i1 %23, label %31, label %24, !dbg !2809

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %1, align 8, !dbg !2810
  %26 = load i32, i32* %2, align 4, !dbg !2811
  %27 = sext i32 %26 to i64, !dbg !2812
  %28 = getelementptr inbounds i8, i8* %25, i64 %27, !dbg !2812
  %29 = call i32 @g_strcmp0(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !2813
  %30 = icmp ne i32 %29, 0, !dbg !2814
  br i1 %30, label %31, label %33, !dbg !2815

; <label>:31:                                     ; preds = %24, %15
  %32 = load i8*, i8** %1, align 8, !dbg !2817
  call void @change_theme(i8* %32, i32 1), !dbg !2818
  br label %33, !dbg !2818

; <label>:33:                                     ; preds = %31, %24, %0
  ret void, !dbg !2819
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @themes_deinit() #0 !dbg !2820 {
  br label %1, !dbg !2821

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !2822
  %3 = icmp ne %struct._GSList* %2, null, !dbg !2824
  br i1 %3, label %4, label %9, !dbg !2825

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @themes, align 8, !dbg !2826
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !2827
  %7 = load i8*, i8** %6, align 8, !dbg !2827
  %8 = bitcast i8* %7 to %struct.THEME_REC*, !dbg !2826
  call void @theme_destroy(%struct.THEME_REC* %8), !dbg !2828
  br label %1, !dbg !2829, !llvm.loop !2831

; <label>:9:                                      ; preds = %1
  %10 = load %struct.THEME_REC*, %struct.THEME_REC** @internal_theme, align 8, !dbg !2832
  call void @theme_destroy(%struct.THEME_REC* %10), !dbg !2833
  %11 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !2834
  call void @g_hash_table_destroy(%struct._GHashTable* %11), !dbg !2835
  store %struct._GHashTable* null, %struct._GHashTable** @default_formats, align 8, !dbg !2836
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2837
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2838
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_format to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2839
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_errors to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2840
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2841
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @themes_reload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2842
  ret void, !dbg !2843
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_real_destroy(%struct.THEME_REC*) #0 !dbg !2844 {
  %2 = alloca %struct.THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %2, metadata !2845, metadata !480), !dbg !2846
  %3 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2847
  %4 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %3, i32 0, i32 9, !dbg !2848
  %5 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !2848
  call void @g_hash_table_foreach(%struct._GHashTable* %5, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @theme_abstract_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !2849
  %6 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2850
  %7 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %6, i32 0, i32 9, !dbg !2851
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !2851
  call void @g_hash_table_destroy(%struct._GHashTable* %8), !dbg !2852
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2853
  %10 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %9, i32 0, i32 6, !dbg !2854
  %11 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !2854
  call void @g_hash_table_foreach(%struct._GHashTable* %11, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.MODULE_THEME_REC*)* @theme_module_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !2855
  %12 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2856
  %13 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %12, i32 0, i32 6, !dbg !2857
  %14 = load %struct._GHashTable*, %struct._GHashTable** %13, align 8, !dbg !2857
  call void @g_hash_table_destroy(%struct._GHashTable* %14), !dbg !2858
  %15 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2859
  %16 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %15, i32 0, i32 8, !dbg !2860
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !2860
  call void @g_slist_foreach(%struct._GSList* %17, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !2861
  %18 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2862
  %19 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %18, i32 0, i32 8, !dbg !2863
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !2863
  call void @g_slist_free(%struct._GSList* %20), !dbg !2864
  %21 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2865
  %22 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %21, i32 0, i32 1, !dbg !2866
  %23 = load i8*, i8** %22, align 8, !dbg !2866
  call void @g_free(i8* %23), !dbg !2867
  %24 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2868
  %25 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %24, i32 0, i32 2, !dbg !2869
  %26 = load i8*, i8** %25, align 8, !dbg !2869
  call void @g_free(i8* %26), !dbg !2870
  %27 = load %struct.THEME_REC*, %struct.THEME_REC** %2, align 8, !dbg !2871
  %28 = bitcast %struct.THEME_REC* %27 to i8*, !dbg !2871
  call void @g_free(i8* %28), !dbg !2872
  ret void, !dbg !2873
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_abstract_destroy(i8*, i8*) #0 !dbg !2874 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2877, metadata !480), !dbg !2878
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2879, metadata !480), !dbg !2880
  %5 = load i8*, i8** %3, align 8, !dbg !2881
  call void @g_free(i8* %5), !dbg !2882
  %6 = load i8*, i8** %4, align 8, !dbg !2883
  call void @g_free(i8* %6), !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: nounwind uwtable
define internal void @theme_module_destroy(i8*, %struct.MODULE_THEME_REC*) #0 !dbg !2886 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.MODULE_THEME_REC*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2889, metadata !480), !dbg !2890
  store %struct.MODULE_THEME_REC* %1, %struct.MODULE_THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %4, metadata !2891, metadata !480), !dbg !2892
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2893, metadata !480), !dbg !2894
  store i32 0, i32* %5, align 4, !dbg !2895
  br label %6, !dbg !2897

; <label>:6:                                      ; preds = %27, %2
  %7 = load i32, i32* %5, align 4, !dbg !2898
  %8 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2901
  %9 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %8, i32 0, i32 1, !dbg !2902
  %10 = load i32, i32* %9, align 8, !dbg !2902
  %11 = icmp slt i32 %7, %10, !dbg !2903
  br i1 %11, label %12, label %30, !dbg !2904

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %5, align 4, !dbg !2905
  %14 = sext i32 %13 to i64, !dbg !2907
  %15 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2907
  %16 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %15, i32 0, i32 2, !dbg !2908
  %17 = load i8**, i8*** %16, align 8, !dbg !2908
  %18 = getelementptr inbounds i8*, i8** %17, i64 %14, !dbg !2907
  %19 = load i8*, i8** %18, align 8, !dbg !2907
  call void @g_free(i8* %19), !dbg !2909
  %20 = load i32, i32* %5, align 4, !dbg !2910
  %21 = sext i32 %20 to i64, !dbg !2911
  %22 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2911
  %23 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %22, i32 0, i32 3, !dbg !2912
  %24 = load i8**, i8*** %23, align 8, !dbg !2912
  %25 = getelementptr inbounds i8*, i8** %24, i64 %21, !dbg !2911
  %26 = load i8*, i8** %25, align 8, !dbg !2911
  call void @g_free(i8* %26), !dbg !2913
  br label %27, !dbg !2914

; <label>:27:                                     ; preds = %12
  %28 = load i32, i32* %5, align 4, !dbg !2915
  %29 = add nsw i32 %28, 1, !dbg !2915
  store i32 %29, i32* %5, align 4, !dbg !2915
  br label %6, !dbg !2917, !llvm.loop !2918

; <label>:30:                                     ; preds = %6
  %31 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2920
  %32 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %31, i32 0, i32 2, !dbg !2921
  %33 = load i8**, i8*** %32, align 8, !dbg !2921
  %34 = bitcast i8** %33 to i8*, !dbg !2920
  call void @g_free(i8* %34), !dbg !2922
  %35 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2923
  %36 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %35, i32 0, i32 3, !dbg !2924
  %37 = load i8**, i8*** %36, align 8, !dbg !2924
  %38 = bitcast i8** %37 to i8*, !dbg !2923
  call void @g_free(i8* %38), !dbg !2925
  %39 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2926
  %40 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %39, i32 0, i32 0, !dbg !2927
  %41 = load i8*, i8** %40, align 8, !dbg !2927
  call void @g_free(i8* %41), !dbg !2928
  %42 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %4, align 8, !dbg !2929
  %43 = bitcast %struct.MODULE_THEME_REC* %42 to i8*, !dbg !2929
  call void @g_free(i8* %43), !dbg !2930
  ret void, !dbg !2931
}

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_format_append_variable(%struct._GString*, i8**) #0 !dbg !2932 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x i8*], align 8
  %8 = alloca i32, align 4
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2935, metadata !480), !dbg !2936
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2937, metadata !480), !dbg !2938
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2939, metadata !480), !dbg !2940
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2941, metadata !480), !dbg !2942
  call void @llvm.dbg.declare(metadata [1 x i8*]* %7, metadata !2943, metadata !480), !dbg !2947
  %9 = bitcast [1 x i8*]* %7 to i8*, !dbg !2947
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 8, i32 8, i1 false), !dbg !2947
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2948, metadata !480), !dbg !2949
  %10 = load i8**, i8*** %4, align 8, !dbg !2950
  %11 = load i8*, i8** %10, align 8, !dbg !2951
  store i8* %11, i8** %5, align 8, !dbg !2952
  %12 = load i8**, i8*** %4, align 8, !dbg !2953
  %13 = load i8*, i8** %12, align 8, !dbg !2954
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !2954
  store i8* %14, i8** %12, align 8, !dbg !2954
  %15 = load i8**, i8*** %4, align 8, !dbg !2955
  %16 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i32 0, i32 0, !dbg !2956
  %17 = call i8* @parse_special(i8** %15, %struct._SERVER_REC* null, i8* null, i8** %16, i32* %8, i32* null, i32 16), !dbg !2957
  store i8* %17, i8** %6, align 8, !dbg !2958
  %18 = load i32, i32* %8, align 4, !dbg !2959
  %19 = icmp ne i32 %18, 0, !dbg !2959
  br i1 %19, label %20, label %22, !dbg !2961

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %6, align 8, !dbg !2962
  call void @g_free(i8* %21), !dbg !2964
  br label %22, !dbg !2964

; <label>:22:                                     ; preds = %20, %2
  %23 = load i8**, i8*** %4, align 8, !dbg !2965
  %24 = load i8*, i8** %23, align 8, !dbg !2967
  %25 = load i8, i8* %24, align 1, !dbg !2968
  %26 = sext i8 %25 to i32, !dbg !2968
  %27 = icmp ne i32 %26, 0, !dbg !2969
  br i1 %27, label %28, label %32, !dbg !2970

; <label>:28:                                     ; preds = %22
  %29 = load i8**, i8*** %4, align 8, !dbg !2971
  %30 = load i8*, i8** %29, align 8, !dbg !2972
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !2972
  store i8* %31, i8** %29, align 8, !dbg !2972
  br label %32, !dbg !2973

; <label>:32:                                     ; preds = %28, %22
  %33 = load i8*, i8** %5, align 8, !dbg !2974
  %34 = load i8**, i8*** %4, align 8, !dbg !2975
  %35 = load i8*, i8** %34, align 8, !dbg !2976
  %36 = load i8*, i8** %5, align 8, !dbg !2977
  %37 = ptrtoint i8* %35 to i64, !dbg !2978
  %38 = ptrtoint i8* %36 to i64, !dbg !2978
  %39 = sub i64 %37, %38, !dbg !2978
  %40 = trunc i64 %39 to i32, !dbg !2979
  %41 = sext i32 %40 to i64, !dbg !2979
  %42 = call noalias i8* @g_strndup(i8* %33, i64 %41), !dbg !2980
  store i8* %42, i8** %6, align 8, !dbg !2981
  %43 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2982
  %44 = load i8*, i8** %6, align 8, !dbg !2983
  %45 = call %struct._GString* @g_string_append(%struct._GString* %43, i8* %44), !dbg !2984
  %46 = load i8*, i8** %6, align 8, !dbg !2985
  call void @g_free(i8* %46), !dbg !2986
  ret void, !dbg !2987
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @chr_is_valid_rgb(i8*) #4 !dbg !2988 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2991, metadata !480), !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2993, metadata !480), !dbg !2994
  store i32 1, i32* %4, align 4, !dbg !2995
  br label %5, !dbg !2997

; <label>:5:                                      ; preds = %26, %1
  %6 = load i32, i32* %4, align 4, !dbg !2998
  %7 = icmp slt i32 %6, 7, !dbg !3001
  br i1 %7, label %8, label %29, !dbg !3002

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4, !dbg !3003
  %10 = sext i32 %9 to i64, !dbg !3006
  %11 = load i8*, i8** %3, align 8, !dbg !3006
  %12 = getelementptr inbounds i8, i8* %11, i64 %10, !dbg !3006
  %13 = load i8, i8* %12, align 1, !dbg !3006
  %14 = sext i8 %13 to i32, !dbg !3007
  %15 = sext i32 %14 to i64, !dbg !3008
  %16 = call i16** @__ctype_b_loc() #1, !dbg !3009
  %17 = load i16*, i16** %16, align 8, !dbg !3010
  %18 = getelementptr inbounds i16, i16* %17, i64 %15, !dbg !3008
  %19 = load i16, i16* %18, align 2, !dbg !3008
  %20 = zext i16 %19 to i32, !dbg !3008
  %21 = and i32 %20, 4096, !dbg !3011
  %22 = icmp ne i32 %21, 0, !dbg !3011
  br i1 %22, label %25, label %23, !dbg !3012

; <label>:23:                                     ; preds = %8
  %24 = load i32, i32* %4, align 4, !dbg !3013
  store i32 %24, i32* %2, align 4, !dbg !3014
  br label %30, !dbg !3014

; <label>:25:                                     ; preds = %8
  br label %26, !dbg !3015

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %4, align 4, !dbg !3016
  %28 = add nsw i32 %27, 1, !dbg !3016
  store i32 %28, i32* %4, align 4, !dbg !3016
  br label %5, !dbg !3018, !llvm.loop !3019

; <label>:29:                                     ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !3021
  br label %30, !dbg !3021

; <label>:30:                                     ; preds = %29, %23
  %31 = load i32, i32* %2, align 4, !dbg !3022
  ret i32 %31, !dbg !3022
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @chr_is_valid_ext(i8*) #4 !dbg !3023 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3024, metadata !480), !dbg !3025
  %4 = load i8*, i8** %3, align 8, !dbg !3026
  %5 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3026
  %6 = load i8, i8* %5, align 1, !dbg !3026
  %7 = sext i8 %6 to i32, !dbg !3026
  %8 = icmp slt i32 %7, 48, !dbg !3028
  br i1 %8, label %15, label %9, !dbg !3029

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !3030
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3030
  %12 = load i8, i8* %11, align 1, !dbg !3030
  %13 = sext i8 %12 to i32, !dbg !3030
  %14 = icmp sgt i32 %13, 55, !dbg !3032
  br i1 %14, label %15, label %16, !dbg !3033

; <label>:15:                                     ; preds = %9, %1
  store i32 1, i32* %2, align 4, !dbg !3034
  br label %99, !dbg !3034

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %3, align 8, !dbg !3035
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !3035
  %19 = load i8, i8* %18, align 1, !dbg !3035
  %20 = sext i8 %19 to i32, !dbg !3035
  %21 = icmp eq i32 %20, 55, !dbg !3037
  br i1 %21, label %22, label %61, !dbg !3038

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %3, align 8, !dbg !3039
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !3039
  %25 = load i8, i8* %24, align 1, !dbg !3039
  %26 = sext i8 %25 to i32, !dbg !3042
  %27 = sext i32 %26 to i64, !dbg !3043
  %28 = call i16** @__ctype_b_loc() #1, !dbg !3044
  %29 = load i16*, i16** %28, align 8, !dbg !3045
  %30 = getelementptr inbounds i16, i16* %29, i64 %27, !dbg !3043
  %31 = load i16, i16* %30, align 2, !dbg !3043
  %32 = zext i16 %31 to i32, !dbg !3043
  %33 = and i32 %32, 1024, !dbg !3046
  %34 = icmp ne i32 %33, 0, !dbg !3046
  br i1 %34, label %35, label %59, !dbg !3047

; <label>:35:                                     ; preds = %22
  %36 = load i8*, i8** %3, align 8, !dbg !3048
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !3048
  %38 = load i8, i8* %37, align 1, !dbg !3048
  %39 = sext i8 %38 to i32, !dbg !3048
  %40 = icmp eq i32 %39, 121, !dbg !3050
  br i1 %40, label %59, label %41, !dbg !3051

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %3, align 8, !dbg !3052
  %43 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !3052
  %44 = load i8, i8* %43, align 1, !dbg !3052
  %45 = sext i8 %44 to i32, !dbg !3052
  %46 = icmp eq i32 %45, 89, !dbg !3054
  br i1 %46, label %59, label %47, !dbg !3055

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %3, align 8, !dbg !3056
  %49 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !3056
  %50 = load i8, i8* %49, align 1, !dbg !3056
  %51 = sext i8 %50 to i32, !dbg !3056
  %52 = icmp eq i32 %51, 122, !dbg !3057
  br i1 %52, label %59, label %53, !dbg !3058

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %3, align 8, !dbg !3059
  %55 = getelementptr inbounds i8, i8* %54, i64 2, !dbg !3059
  %56 = load i8, i8* %55, align 1, !dbg !3059
  %57 = sext i8 %56 to i32, !dbg !3059
  %58 = icmp eq i32 %57, 90, !dbg !3060
  br i1 %58, label %59, label %60, !dbg !3061

; <label>:59:                                     ; preds = %53, %47, %41, %35, %22
  store i32 2, i32* %2, align 4, !dbg !3063
  br label %99, !dbg !3063

; <label>:60:                                     ; preds = %53
  br label %98, !dbg !3064

; <label>:61:                                     ; preds = %16
  %62 = load i8*, i8** %3, align 8, !dbg !3065
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3065
  %64 = load i8, i8* %63, align 1, !dbg !3065
  %65 = sext i8 %64 to i32, !dbg !3065
  %66 = icmp eq i32 %65, 48, !dbg !3068
  br i1 %66, label %67, label %82, !dbg !3065

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %3, align 8, !dbg !3069
  %69 = getelementptr inbounds i8, i8* %68, i64 2, !dbg !3069
  %70 = load i8, i8* %69, align 1, !dbg !3069
  %71 = sext i8 %70 to i32, !dbg !3072
  %72 = sext i32 %71 to i64, !dbg !3073
  %73 = call i16** @__ctype_b_loc() #1, !dbg !3074
  %74 = load i16*, i16** %73, align 8, !dbg !3075
  %75 = getelementptr inbounds i16, i16* %74, i64 %72, !dbg !3073
  %76 = load i16, i16* %75, align 2, !dbg !3073
  %77 = zext i16 %76 to i32, !dbg !3073
  %78 = and i32 %77, 4096, !dbg !3076
  %79 = icmp ne i32 %78, 0, !dbg !3076
  br i1 %79, label %81, label %80, !dbg !3077

; <label>:80:                                     ; preds = %67
  store i32 2, i32* %2, align 4, !dbg !3078
  br label %99, !dbg !3078

; <label>:81:                                     ; preds = %67
  br label %97, !dbg !3079

; <label>:82:                                     ; preds = %61
  %83 = load i8*, i8** %3, align 8, !dbg !3080
  %84 = getelementptr inbounds i8, i8* %83, i64 2, !dbg !3080
  %85 = load i8, i8* %84, align 1, !dbg !3080
  %86 = sext i8 %85 to i32, !dbg !3083
  %87 = sext i32 %86 to i64, !dbg !3084
  %88 = call i16** @__ctype_b_loc() #1, !dbg !3085
  %89 = load i16*, i16** %88, align 8, !dbg !3086
  %90 = getelementptr inbounds i16, i16* %89, i64 %87, !dbg !3084
  %91 = load i16, i16* %90, align 2, !dbg !3084
  %92 = zext i16 %91 to i32, !dbg !3084
  %93 = and i32 %92, 8, !dbg !3087
  %94 = icmp ne i32 %93, 0, !dbg !3087
  br i1 %94, label %96, label %95, !dbg !3080

; <label>:95:                                     ; preds = %82
  store i32 2, i32* %2, align 4, !dbg !3088
  br label %99, !dbg !3088

; <label>:96:                                     ; preds = %82
  br label %97

; <label>:97:                                     ; preds = %96, %81
  br label %98

; <label>:98:                                     ; preds = %97, %60
  store i32 0, i32* %2, align 4, !dbg !3089
  br label %99, !dbg !3089

; <label>:99:                                     ; preds = %98, %95, %80, %59, %15
  %100 = load i32, i32* %2, align 4, !dbg !3090
  ret i32 %100, !dbg !3090
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i8* @theme_replace_expand(%struct.THEME_REC*, i32, i64, i64, %struct.theme_rm_col*, %struct.theme_rm_col*, i8 signext, i32) #0 !dbg !3091 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.theme_rm_col, align 1
  %11 = alloca %struct.theme_rm_col, align 1
  %12 = alloca %struct.THEME_REC*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.theme_rm_col*, align 8
  %15 = alloca %struct.theme_rm_col*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca %struct._GSList*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [2 x i8], align 1
  %22 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0
  %23 = bitcast [8 x i8]* %22 to i64*
  store i64 %2, i64* %23, align 1
  %24 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %11, i32 0, i32 0
  %25 = bitcast [8 x i8]* %24 to i64*
  store i64 %3, i64* %25, align 1
  store %struct.THEME_REC* %0, %struct.THEME_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %12, metadata !3094, metadata !480), !dbg !3095
  store i32 %1, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3096, metadata !480), !dbg !3097
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %10, metadata !3098, metadata !480), !dbg !3099
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %11, metadata !3100, metadata !480), !dbg !3101
  store %struct.theme_rm_col* %4, %struct.theme_rm_col** %14, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %14, metadata !3102, metadata !480), !dbg !3103
  store %struct.theme_rm_col* %5, %struct.theme_rm_col** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %15, metadata !3104, metadata !480), !dbg !3105
  store i8 %6, i8* %16, align 1
  call void @llvm.dbg.declare(metadata i8* %16, metadata !3106, metadata !480), !dbg !3107
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3108, metadata !480), !dbg !3109
  call void @llvm.dbg.declare(metadata %struct._GSList** %18, metadata !3110, metadata !480), !dbg !3111
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3112, metadata !480), !dbg !3113
  call void @llvm.dbg.declare(metadata i8** %20, metadata !3114, metadata !480), !dbg !3115
  call void @llvm.dbg.declare(metadata [2 x i8]* %21, metadata !3116, metadata !480), !dbg !3120
  %26 = load %struct.THEME_REC*, %struct.THEME_REC** %12, align 8, !dbg !3121
  %27 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %26, i32 0, i32 8, !dbg !3122
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !3122
  %29 = load i32, i32* %13, align 4, !dbg !3123
  %30 = call %struct._GSList* @g_slist_nth(%struct._GSList* %28, i32 %29), !dbg !3124
  store %struct._GSList* %30, %struct._GSList** %18, align 8, !dbg !3125
  br label %31, !dbg !3126, !llvm.loop !3127

; <label>:31:                                     ; preds = %8
  %32 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !3128
  %33 = icmp ne %struct._GSList* %32, null, !dbg !3132
  br i1 %33, label %34, label %35, !dbg !3128

; <label>:34:                                     ; preds = %31
  br label %36, !dbg !3133

; <label>:35:                                     ; preds = %31
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.theme_replace_expand, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !3136
  store i8* null, i8** %9, align 8, !dbg !3139
  br label %61, !dbg !3139

; <label>:36:                                     ; preds = %34
  br label %37, !dbg !3140

; <label>:37:                                     ; preds = %36
  %38 = load i8, i8* %16, align 1, !dbg !3142
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0, !dbg !3143
  store i8 %38, i8* %39, align 1, !dbg !3144
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 1, !dbg !3145
  store i8 0, i8* %40, align 1, !dbg !3146
  %41 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !3147
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !3148
  %43 = load i8*, i8** %42, align 8, !dbg !3148
  store i8* %43, i8** %20, align 8, !dbg !3149
  %44 = load %struct.THEME_REC*, %struct.THEME_REC** %12, align 8, !dbg !3150
  %45 = load %struct.theme_rm_col*, %struct.theme_rm_col** %14, align 8, !dbg !3151
  %46 = load %struct.theme_rm_col*, %struct.theme_rm_col** %15, align 8, !dbg !3152
  %47 = load i32, i32* %17, align 4, !dbg !3153
  %48 = or i32 %47, 1, !dbg !3154
  %49 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %10, i32 0, i32 0, !dbg !3155
  %50 = bitcast [8 x i8]* %49 to i64*, !dbg !3155
  %51 = load i64, i64* %50, align 1, !dbg !3155
  %52 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %11, i32 0, i32 0, !dbg !3155
  %53 = bitcast [8 x i8]* %52 to i64*, !dbg !3155
  %54 = load i64, i64* %53, align 1, !dbg !3155
  %55 = call i8* @theme_format_expand_data(%struct.THEME_REC* %44, i8** %20, i64 %51, i64 %54, %struct.theme_rm_col* %45, %struct.theme_rm_col* %46, i32 %48), !dbg !3155
  store i8* %55, i8** %20, align 8, !dbg !3156
  %56 = load i8*, i8** %20, align 8, !dbg !3157
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i32 0, i32 0, !dbg !3158
  %58 = call i8* @parse_special_string(i8* %56, %struct._SERVER_REC* null, i8* null, i8* %57, i32* null, i32 16), !dbg !3159
  store i8* %58, i8** %19, align 8, !dbg !3160
  %59 = load i8*, i8** %20, align 8, !dbg !3161
  call void @g_free(i8* %59), !dbg !3162
  %60 = load i8*, i8** %19, align 8, !dbg !3163
  store i8* %60, i8** %9, align 8, !dbg !3164
  br label %61, !dbg !3164

; <label>:61:                                     ; preds = %37, %35
  %62 = load i8*, i8** %9, align 8, !dbg !3165
  ret i8* %62, !dbg !3165
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i8* @parse_special(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #2

declare noalias i8* @g_strndup(i8*, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #2

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

; Function Attrs: nounwind uwtable
define internal i8* @theme_format_expand_abstract(%struct.THEME_REC*, i8**, %struct.theme_rm_col*, %struct.theme_rm_col*, i32, %struct._GTree*) #0 !dbg !3166 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.THEME_REC*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.theme_rm_col*, align 8
  %11 = alloca %struct.theme_rm_col*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._GTree*, align 8
  %14 = alloca %struct._GString*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.theme_rm_col, align 1
  %22 = alloca %struct.theme_rm_col, align 1
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %8, metadata !3169, metadata !480), !dbg !3170
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !3171, metadata !480), !dbg !3172
  store %struct.theme_rm_col* %2, %struct.theme_rm_col** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %10, metadata !3173, metadata !480), !dbg !3174
  store %struct.theme_rm_col* %3, %struct.theme_rm_col** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col** %11, metadata !3175, metadata !480), !dbg !3176
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3177, metadata !480), !dbg !3178
  store %struct._GTree* %5, %struct._GTree** %13, align 8
  call void @llvm.dbg.declare(metadata %struct._GTree** %13, metadata !3179, metadata !480), !dbg !3180
  call void @llvm.dbg.declare(metadata %struct._GString** %14, metadata !3181, metadata !480), !dbg !3182
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3183, metadata !480), !dbg !3184
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3185, metadata !480), !dbg !3186
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3187, metadata !480), !dbg !3188
  call void @llvm.dbg.declare(metadata i8** %18, metadata !3189, metadata !480), !dbg !3190
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3191, metadata !480), !dbg !3192
  call void @llvm.dbg.declare(metadata i8** %20, metadata !3193, metadata !480), !dbg !3194
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %21, metadata !3195, metadata !480), !dbg !3196
  call void @llvm.dbg.declare(metadata %struct.theme_rm_col* %22, metadata !3197, metadata !480), !dbg !3198
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3199, metadata !480), !dbg !3200
  %27 = load i8**, i8*** %9, align 8, !dbg !3201
  %28 = load i8*, i8** %27, align 8, !dbg !3202
  store i8* %28, i8** %16, align 8, !dbg !3203
  %29 = load %struct.theme_rm_col*, %struct.theme_rm_col** %10, align 8, !dbg !3204
  %30 = bitcast %struct.theme_rm_col* %21 to i8*, !dbg !3205
  %31 = bitcast %struct.theme_rm_col* %29 to i8*, !dbg !3205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 1, i1 false), !dbg !3205
  %32 = load %struct.theme_rm_col*, %struct.theme_rm_col** %11, align 8, !dbg !3206
  %33 = bitcast %struct.theme_rm_col* %22 to i8*, !dbg !3207
  %34 = bitcast %struct.theme_rm_col* %32 to i8*, !dbg !3207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 8, i32 1, i1 false), !dbg !3207
  %35 = load i8*, i8** %16, align 8, !dbg !3208
  store i8* %35, i8** %15, align 8, !dbg !3209
  br label %36, !dbg !3210

; <label>:36:                                     ; preds = %58, %6
  %37 = load i8*, i8** %15, align 8, !dbg !3211
  %38 = load i8, i8* %37, align 1, !dbg !3213
  %39 = sext i8 %38 to i32, !dbg !3213
  %40 = icmp ne i32 %39, 0, !dbg !3214
  br i1 %40, label %41, label %56, !dbg !3215

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %15, align 8, !dbg !3216
  %43 = load i8, i8* %42, align 1, !dbg !3218
  %44 = sext i8 %43 to i32, !dbg !3218
  %45 = icmp ne i32 %44, 32, !dbg !3219
  br i1 %45, label %46, label %56, !dbg !3220

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %15, align 8, !dbg !3221
  %48 = load i8, i8* %47, align 1, !dbg !3222
  %49 = sext i8 %48 to i32, !dbg !3222
  %50 = icmp ne i32 %49, 123, !dbg !3223
  br i1 %50, label %51, label %56, !dbg !3224

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %15, align 8, !dbg !3225
  %53 = load i8, i8* %52, align 1, !dbg !3226
  %54 = sext i8 %53 to i32, !dbg !3226
  %55 = icmp ne i32 %54, 125, !dbg !3227
  br label %56

; <label>:56:                                     ; preds = %51, %46, %41, %36
  %57 = phi i1 [ false, %46 ], [ false, %41 ], [ false, %36 ], [ %55, %51 ]
  br i1 %57, label %58, label %61, !dbg !3228

; <label>:58:                                     ; preds = %56
  %59 = load i8*, i8** %15, align 8, !dbg !3230
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !3230
  store i8* %60, i8** %15, align 8, !dbg !3230
  br label %36, !dbg !3231, !llvm.loop !3233

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %15, align 8, !dbg !3234
  %63 = load i8, i8* %62, align 1, !dbg !3236
  %64 = sext i8 %63 to i32, !dbg !3236
  %65 = icmp eq i32 %64, 0, !dbg !3237
  br i1 %65, label %70, label %66, !dbg !3238

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %15, align 8, !dbg !3239
  %68 = load i8*, i8** %16, align 8, !dbg !3241
  %69 = icmp eq i8* %67, %68, !dbg !3242
  br i1 %69, label %70, label %71, !dbg !3243

; <label>:70:                                     ; preds = %66, %61
  store i8* null, i8** %7, align 8, !dbg !3244
  br label %267, !dbg !3244

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %15, align 8, !dbg !3245
  %73 = load i8*, i8** %16, align 8, !dbg !3246
  %74 = ptrtoint i8* %72 to i64, !dbg !3247
  %75 = ptrtoint i8* %73 to i64, !dbg !3247
  %76 = sub i64 %74, %75, !dbg !3247
  %77 = trunc i64 %76 to i32, !dbg !3248
  store i32 %77, i32* %23, align 4, !dbg !3249
  %78 = load i8*, i8** %16, align 8, !dbg !3250
  %79 = load i32, i32* %23, align 4, !dbg !3251
  %80 = sext i32 %79 to i64, !dbg !3251
  %81 = call noalias i8* @g_strndup(i8* %78, i64 %80), !dbg !3252
  store i8* %81, i8** %17, align 8, !dbg !3253
  %82 = load i8*, i8** %15, align 8, !dbg !3254
  %83 = load i8, i8* %82, align 1, !dbg !3256
  %84 = sext i8 %83 to i32, !dbg !3256
  %85 = icmp eq i32 %84, 32, !dbg !3257
  br i1 %85, label %86, label %100, !dbg !3258

; <label>:86:                                     ; preds = %71
  %87 = load i32, i32* %23, align 4, !dbg !3259
  %88 = add nsw i32 %87, 1, !dbg !3259
  store i32 %88, i32* %23, align 4, !dbg !3259
  %89 = load i32, i32* %12, align 4, !dbg !3261
  %90 = and i32 %89, 2, !dbg !3263
  %91 = icmp ne i32 %90, 0, !dbg !3263
  br i1 %91, label %92, label %99, !dbg !3264

; <label>:92:                                     ; preds = %86
  %93 = call i32 @data_is_empty(i8** %15), !dbg !3265
  %94 = icmp ne i32 %93, 0, !dbg !3265
  br i1 %94, label %95, label %99, !dbg !3267

; <label>:95:                                     ; preds = %92
  %96 = load i8*, i8** %15, align 8, !dbg !3268
  %97 = load i8**, i8*** %9, align 8, !dbg !3270
  store i8* %96, i8** %97, align 8, !dbg !3271
  %98 = load i8*, i8** %17, align 8, !dbg !3272
  call void @g_free(i8* %98), !dbg !3273
  store i8* null, i8** %7, align 8, !dbg !3274
  br label %267, !dbg !3274

; <label>:99:                                     ; preds = %92, %86
  br label %100, !dbg !3275

; <label>:100:                                    ; preds = %99, %71
  %101 = load i8*, i8** %16, align 8, !dbg !3276
  %102 = load i32, i32* %23, align 4, !dbg !3277
  %103 = sext i32 %102 to i64, !dbg !3278
  %104 = getelementptr inbounds i8, i8* %101, i64 %103, !dbg !3278
  %105 = load i8**, i8*** %9, align 8, !dbg !3279
  store i8* %104, i8** %105, align 8, !dbg !3280
  %106 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3281
  %107 = icmp eq %struct._GTree* %106, null, !dbg !3283
  br i1 %107, label %108, label %110, !dbg !3284

; <label>:108:                                    ; preds = %100
  %109 = call %struct._GTree* @g_tree_new_full(i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, i8*)* @g_strcmp0 to i32 (i8*, i8*, i8*)*), i8* null, void (i8*)* @g_free, void (i8*)* null), !dbg !3285
  store %struct._GTree* %109, %struct._GTree** %13, align 8, !dbg !3287
  br label %113, !dbg !3288

; <label>:110:                                    ; preds = %100
  %111 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3289
  %112 = call %struct._GTree* @g_tree_ref(%struct._GTree* %111), !dbg !3291
  br label %113

; <label>:113:                                    ; preds = %110, %108
  %114 = load %struct.THEME_REC*, %struct.THEME_REC** %8, align 8, !dbg !3292
  %115 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %114, i32 0, i32 9, !dbg !3293
  %116 = load %struct._GHashTable*, %struct._GHashTable** %115, align 8, !dbg !3293
  %117 = load i8*, i8** %17, align 8, !dbg !3294
  %118 = call i8* @g_hash_table_lookup(%struct._GHashTable* %116, i8* %117), !dbg !3295
  store i8* %118, i8** %18, align 8, !dbg !3296
  %119 = load i8*, i8** %18, align 8, !dbg !3297
  %120 = icmp eq i8* %119, null, !dbg !3299
  br i1 %120, label %126, label %121, !dbg !3300

; <label>:121:                                    ; preds = %113
  %122 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3301
  %123 = load i8*, i8** %17, align 8, !dbg !3303
  %124 = call i8* @g_tree_lookup(%struct._GTree* %122, i8* %123), !dbg !3304
  %125 = icmp ne i8* %124, null, !dbg !3305
  br i1 %125, label %126, label %128, !dbg !3306

; <label>:126:                                    ; preds = %121, %113
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8** %18, align 8, !dbg !3307
  %127 = load i8*, i8** %17, align 8, !dbg !3309
  call void @g_free(i8* %127), !dbg !3310
  store i8* null, i8** %20, align 8, !dbg !3311
  br label %133, !dbg !3312

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %17, align 8, !dbg !3313
  store i8* %129, i8** %20, align 8, !dbg !3315
  %130 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3316
  %131 = load i8*, i8** %20, align 8, !dbg !3317
  %132 = load i8*, i8** %20, align 8, !dbg !3318
  call void @g_tree_insert(%struct._GTree* %130, i8* %131, i8* %132), !dbg !3319
  br label %133

; <label>:133:                                    ; preds = %128, %126
  %134 = load i8*, i8** %18, align 8, !dbg !3320
  %135 = call noalias i8* @g_strdup(i8* %134), !dbg !3321
  store i8* %135, i8** %17, align 8, !dbg !3322
  %136 = load %struct.THEME_REC*, %struct.THEME_REC** %8, align 8, !dbg !3323
  %137 = load i8**, i8*** %9, align 8, !dbg !3324
  %138 = call i8* @theme_format_expand_get(%struct.THEME_REC* %136, i8** %137), !dbg !3325
  store i8* %138, i8** %18, align 8, !dbg !3326
  %139 = load i8*, i8** %18, align 8, !dbg !3327
  %140 = call i64 @strlen(i8* %139) #9, !dbg !3328
  %141 = trunc i64 %140 to i32, !dbg !3328
  store i32 %141, i32* %23, align 4, !dbg !3329
  %142 = load i32, i32* %23, align 4, !dbg !3330
  %143 = icmp sgt i32 %142, 1, !dbg !3332
  br i1 %143, label %144, label %187, !dbg !3333

; <label>:144:                                    ; preds = %133
  %145 = load i32, i32* %23, align 4, !dbg !3334
  %146 = sub nsw i32 %145, 1, !dbg !3336
  %147 = sext i32 %146 to i64, !dbg !3337
  %148 = load i8*, i8** %18, align 8, !dbg !3337
  %149 = getelementptr inbounds i8, i8* %148, i64 %147, !dbg !3337
  %150 = load i8, i8* %149, align 1, !dbg !3337
  %151 = zext i8 %150 to i32, !dbg !3338
  %152 = sext i32 %151 to i64, !dbg !3339
  %153 = call i16** @__ctype_b_loc() #1, !dbg !3340
  %154 = load i16*, i16** %153, align 8, !dbg !3341
  %155 = getelementptr inbounds i16, i16* %154, i64 %152, !dbg !3339
  %156 = load i16, i16* %155, align 2, !dbg !3339
  %157 = zext i16 %156 to i32, !dbg !3339
  %158 = and i32 %157, 2048, !dbg !3342
  %159 = icmp ne i32 %158, 0, !dbg !3342
  br i1 %159, label %160, label %187, !dbg !3337

; <label>:160:                                    ; preds = %144
  %161 = load i32, i32* %23, align 4, !dbg !3343
  %162 = sub nsw i32 %161, 2, !dbg !3345
  %163 = sext i32 %162 to i64, !dbg !3346
  %164 = load i8*, i8** %18, align 8, !dbg !3346
  %165 = getelementptr inbounds i8, i8* %164, i64 %163, !dbg !3346
  %166 = load i8, i8* %165, align 1, !dbg !3346
  %167 = sext i8 %166 to i32, !dbg !3346
  %168 = icmp eq i32 %167, 36, !dbg !3347
  br i1 %168, label %169, label %187, !dbg !3348

; <label>:169:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata i8* %24, metadata !3349, metadata !480), !dbg !3351
  call void @llvm.dbg.declare(metadata i8** %25, metadata !3352, metadata !480), !dbg !3353
  %170 = load i8*, i8** %18, align 8, !dbg !3354
  store i8* %170, i8** %25, align 8, !dbg !3355
  %171 = load i32, i32* %23, align 4, !dbg !3356
  %172 = sub nsw i32 %171, 1, !dbg !3357
  %173 = sext i32 %172 to i64, !dbg !3358
  %174 = load i8*, i8** %25, align 8, !dbg !3358
  %175 = getelementptr inbounds i8, i8* %174, i64 %173, !dbg !3358
  %176 = load i8, i8* %175, align 1, !dbg !3358
  store i8 %176, i8* %24, align 1, !dbg !3359
  %177 = load i32, i32* %23, align 4, !dbg !3360
  %178 = sub nsw i32 %177, 1, !dbg !3361
  %179 = sext i32 %178 to i64, !dbg !3362
  %180 = load i8*, i8** %25, align 8, !dbg !3362
  %181 = getelementptr inbounds i8, i8* %180, i64 %179, !dbg !3362
  store i8 0, i8* %181, align 1, !dbg !3363
  %182 = load i8*, i8** %25, align 8, !dbg !3364
  %183 = load i8, i8* %24, align 1, !dbg !3365
  %184 = sext i8 %183 to i32, !dbg !3365
  %185 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* %182, i32 %184), !dbg !3366
  store i8* %185, i8** %18, align 8, !dbg !3367
  %186 = load i8*, i8** %25, align 8, !dbg !3368
  call void @g_free(i8* %186), !dbg !3369
  br label %187, !dbg !3370

; <label>:187:                                    ; preds = %169, %160, %144, %133
  %188 = load i8*, i8** %17, align 8, !dbg !3371
  %189 = load i8*, i8** %18, align 8, !dbg !3372
  %190 = call i8* @parse_special_string(i8* %188, %struct._SERVER_REC* null, i8* null, i8* %189, i32* null, i32 16), !dbg !3373
  store i8* %190, i8** %19, align 8, !dbg !3374
  %191 = load i8*, i8** %17, align 8, !dbg !3375
  call void @g_free(i8* %191), !dbg !3376
  %192 = load i8*, i8** %18, align 8, !dbg !3377
  call void @g_free(i8* %192), !dbg !3378
  %193 = call %struct._GString* @g_string_new(i8* null), !dbg !3379
  store %struct._GString* %193, %struct._GString** %14, align 8, !dbg !3380
  %194 = load i8*, i8** %19, align 8, !dbg !3381
  store i8* %194, i8** %15, align 8, !dbg !3382
  br label %195, !dbg !3383

; <label>:195:                                    ; preds = %233, %187
  %196 = load i8*, i8** %15, align 8, !dbg !3384
  %197 = load i8, i8* %196, align 1, !dbg !3385
  %198 = sext i8 %197 to i32, !dbg !3385
  %199 = icmp ne i32 %198, 0, !dbg !3386
  br i1 %199, label %200, label %236, !dbg !3387

; <label>:200:                                    ; preds = %195
  %201 = load i8*, i8** %15, align 8, !dbg !3388
  %202 = load i8, i8* %201, align 1, !dbg !3391
  %203 = sext i8 %202 to i32, !dbg !3391
  %204 = icmp eq i32 %203, 92, !dbg !3392
  br i1 %204, label %205, label %228, !dbg !3393

; <label>:205:                                    ; preds = %200
  %206 = load i8*, i8** %15, align 8, !dbg !3394
  %207 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !3394
  %208 = load i8, i8* %207, align 1, !dbg !3394
  %209 = sext i8 %208 to i32, !dbg !3394
  %210 = icmp ne i32 %209, 0, !dbg !3396
  br i1 %210, label %211, label %228, !dbg !3397

; <label>:211:                                    ; preds = %205
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3398, metadata !480), !dbg !3400
  %212 = load i8*, i8** %15, align 8, !dbg !3401
  %213 = getelementptr inbounds i8, i8* %212, i32 1, !dbg !3401
  store i8* %213, i8** %15, align 8, !dbg !3401
  %214 = call i32 @expand_escape(i8** %15), !dbg !3402
  store i32 %214, i32* %26, align 4, !dbg !3403
  %215 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !3404
  %216 = load i32, i32* %26, align 4, !dbg !3405
  %217 = icmp ne i32 %216, -1, !dbg !3406
  br i1 %217, label %218, label %220, !dbg !3405

; <label>:218:                                    ; preds = %211
  %219 = load i32, i32* %26, align 4, !dbg !3407
  br label %224, !dbg !3409

; <label>:220:                                    ; preds = %211
  %221 = load i8*, i8** %15, align 8, !dbg !3410
  %222 = load i8, i8* %221, align 1, !dbg !3412
  %223 = sext i8 %222 to i32, !dbg !3412
  br label %224, !dbg !3413

; <label>:224:                                    ; preds = %220, %218
  %225 = phi i32 [ %219, %218 ], [ %223, %220 ], !dbg !3414
  %226 = trunc i32 %225 to i8, !dbg !3414
  %227 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %215, i8 signext %226), !dbg !3416
  br label %233, !dbg !3417

; <label>:228:                                    ; preds = %205, %200
  %229 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !3418
  %230 = load i8*, i8** %15, align 8, !dbg !3419
  %231 = load i8, i8* %230, align 1, !dbg !3420
  %232 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %229, i8 signext %231), !dbg !3421
  br label %233

; <label>:233:                                    ; preds = %228, %224
  %234 = load i8*, i8** %15, align 8, !dbg !3422
  %235 = getelementptr inbounds i8, i8* %234, i32 1, !dbg !3422
  store i8* %235, i8** %15, align 8, !dbg !3422
  br label %195, !dbg !3423, !llvm.loop !3424

; <label>:236:                                    ; preds = %195
  %237 = load i8*, i8** %19, align 8, !dbg !3425
  call void @g_free(i8* %237), !dbg !3426
  %238 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !3427
  %239 = getelementptr inbounds %struct._GString, %struct._GString* %238, i32 0, i32 0, !dbg !3428
  %240 = load i8*, i8** %239, align 8, !dbg !3428
  store i8* %240, i8** %17, align 8, !dbg !3429
  %241 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !3430
  %242 = call i8* @g_string_free(%struct._GString* %241, i32 0), !dbg !3431
  %243 = load i8*, i8** %17, align 8, !dbg !3432
  store i8* %243, i8** %15, align 8, !dbg !3433
  %244 = load %struct.THEME_REC*, %struct.THEME_REC** %8, align 8, !dbg !3434
  %245 = load %struct.theme_rm_col*, %struct.theme_rm_col** %10, align 8, !dbg !3435
  %246 = load %struct.theme_rm_col*, %struct.theme_rm_col** %11, align 8, !dbg !3436
  %247 = load i32, i32* %12, align 4, !dbg !3437
  %248 = or i32 %247, 32, !dbg !3438
  %249 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3439
  %250 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %21, i32 0, i32 0, !dbg !3440
  %251 = bitcast [8 x i8]* %250 to i64*, !dbg !3440
  %252 = load i64, i64* %251, align 1, !dbg !3440
  %253 = getelementptr inbounds %struct.theme_rm_col, %struct.theme_rm_col* %22, i32 0, i32 0, !dbg !3440
  %254 = bitcast [8 x i8]* %253 to i64*, !dbg !3440
  %255 = load i64, i64* %254, align 1, !dbg !3440
  %256 = call i8* @theme_format_expand_data_rec(%struct.THEME_REC* %244, i8** %15, i64 %252, i64 %255, %struct.theme_rm_col* %245, %struct.theme_rm_col* %246, i32 %248, %struct._GTree* %249), !dbg !3440
  store i8* %256, i8** %19, align 8, !dbg !3441
  %257 = load i8*, i8** %17, align 8, !dbg !3442
  call void @g_free(i8* %257), !dbg !3443
  %258 = load i8*, i8** %20, align 8, !dbg !3444
  %259 = icmp ne i8* %258, null, !dbg !3446
  br i1 %259, label %260, label %264, !dbg !3447

; <label>:260:                                    ; preds = %236
  %261 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3448
  %262 = load i8*, i8** %20, align 8, !dbg !3450
  %263 = call i32 @g_tree_remove(%struct._GTree* %261, i8* %262), !dbg !3451
  br label %264, !dbg !3452

; <label>:264:                                    ; preds = %260, %236
  %265 = load %struct._GTree*, %struct._GTree** %13, align 8, !dbg !3453
  call void @g_tree_unref(%struct._GTree* %265), !dbg !3454
  %266 = load i8*, i8** %19, align 8, !dbg !3455
  store i8* %266, i8** %7, align 8, !dbg !3456
  br label %267, !dbg !3456

; <label>:267:                                    ; preds = %264, %95, %70
  %268 = load i8*, i8** %7, align 8, !dbg !3457
  ret i8* %268, !dbg !3457
}

; Function Attrs: nounwind uwtable
define internal i32 @data_is_empty(i8**) #0 !dbg !466 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !3458, metadata !480), !dbg !3459
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !3460, metadata !480), !dbg !3461
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3462, metadata !480), !dbg !3463
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3464, metadata !480), !dbg !3465
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3466, metadata !480), !dbg !3467
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3468, metadata !480), !dbg !3469
  %9 = load i8**, i8*** %3, align 8, !dbg !3470
  %10 = load i8*, i8** %9, align 8, !dbg !3471
  store i8* %10, i8** %5, align 8, !dbg !3472
  br label %11, !dbg !3473

; <label>:11:                                     ; preds = %16, %1
  %12 = load i8*, i8** %5, align 8, !dbg !3474
  %13 = load i8, i8* %12, align 1, !dbg !3476
  %14 = sext i8 %13 to i32, !dbg !3476
  %15 = icmp eq i32 %14, 32, !dbg !3477
  br i1 %15, label %16, label %19, !dbg !3478

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %5, align 8, !dbg !3479
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !3479
  store i8* %18, i8** %5, align 8, !dbg !3479
  br label %11, !dbg !3481, !llvm.loop !3482

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %5, align 8, !dbg !3483
  %21 = load i8, i8* %20, align 1, !dbg !3485
  %22 = sext i8 %21 to i32, !dbg !3485
  %23 = icmp eq i32 %22, 125, !dbg !3486
  br i1 %23, label %24, label %28, !dbg !3487

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !3488
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !3490
  %27 = load i8**, i8*** %3, align 8, !dbg !3491
  store i8* %26, i8** %27, align 8, !dbg !3492
  store i32 1, i32* %2, align 4, !dbg !3493
  br label %109, !dbg !3493

; <label>:28:                                     ; preds = %19
  %29 = load i8*, i8** %5, align 8, !dbg !3494
  %30 = load i8, i8* %29, align 1, !dbg !3496
  %31 = sext i8 %30 to i32, !dbg !3496
  %32 = icmp ne i32 %31, 36, !dbg !3497
  br i1 %32, label %33, label %34, !dbg !3498

; <label>:33:                                     ; preds = %28
  store i32 0, i32* %2, align 4, !dbg !3499
  br label %109, !dbg !3499

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %5, align 8, !dbg !3501
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !3501
  store i8* %36, i8** %5, align 8, !dbg !3501
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3502
  %38 = icmp eq %struct._WINDOW_REC* %37, null, !dbg !3503
  br i1 %38, label %39, label %40, !dbg !3502

; <label>:39:                                     ; preds = %34
  br label %55, !dbg !3504

; <label>:40:                                     ; preds = %34
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3505
  %42 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %41, i32 0, i32 6, !dbg !3506
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %42, align 8, !dbg !3506
  %44 = icmp ne %struct._SERVER_REC* %43, null, !dbg !3507
  br i1 %44, label %45, label %49, !dbg !3505

; <label>:45:                                     ; preds = %40
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3508
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 6, !dbg !3509
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %47, align 8, !dbg !3509
  br label %53, !dbg !3510

; <label>:49:                                     ; preds = %40
  %50 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3511
  %51 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %50, i32 0, i32 7, !dbg !3512
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %51, align 8, !dbg !3512
  br label %53, !dbg !3513

; <label>:53:                                     ; preds = %49, %45
  %54 = phi %struct._SERVER_REC* [ %48, %45 ], [ %52, %49 ], !dbg !3514
  br label %55, !dbg !3516

; <label>:55:                                     ; preds = %53, %39
  %56 = phi %struct._SERVER_REC* [ null, %39 ], [ %54, %53 ], !dbg !3517
  store %struct._SERVER_REC* %56, %struct._SERVER_REC** %4, align 8, !dbg !3518
  %57 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !3519
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3520
  %59 = icmp eq %struct._WINDOW_REC* %58, null, !dbg !3521
  br i1 %59, label %60, label %61, !dbg !3520

; <label>:60:                                     ; preds = %55
  br label %65, !dbg !3522

; <label>:61:                                     ; preds = %55
  %62 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !3523
  %63 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %62, i32 0, i32 5, !dbg !3524
  %64 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %63, align 8, !dbg !3524
  br label %65, !dbg !3525

; <label>:65:                                     ; preds = %61, %60
  %66 = phi %struct._WI_ITEM_REC* [ null, %60 ], [ %64, %61 ], !dbg !3526
  %67 = bitcast %struct._WI_ITEM_REC* %66 to i8*, !dbg !3526
  %68 = call i8* @parse_special(i8** %5, %struct._SERVER_REC* %57, i8* %67, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @data_is_empty.arglist, i32 0, i32 0), i32* %7, i32* null, i32 0), !dbg !3527
  store i8* %68, i8** %6, align 8, !dbg !3528
  %69 = load i8*, i8** %5, align 8, !dbg !3529
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !3529
  store i8* %70, i8** %5, align 8, !dbg !3529
  br label %71, !dbg !3530

; <label>:71:                                     ; preds = %76, %65
  %72 = load i8*, i8** %5, align 8, !dbg !3531
  %73 = load i8, i8* %72, align 1, !dbg !3532
  %74 = sext i8 %73 to i32, !dbg !3532
  %75 = icmp eq i32 %74, 32, !dbg !3533
  br i1 %75, label %76, label %79, !dbg !3534

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %5, align 8, !dbg !3535
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !3535
  store i8* %78, i8** %5, align 8, !dbg !3535
  br label %71, !dbg !3536, !llvm.loop !3537

; <label>:79:                                     ; preds = %71
  %80 = load i8*, i8** %5, align 8, !dbg !3538
  %81 = load i8, i8* %80, align 1, !dbg !3539
  %82 = sext i8 %81 to i32, !dbg !3539
  %83 = icmp eq i32 %82, 125, !dbg !3540
  br i1 %83, label %84, label %94, !dbg !3541

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %6, align 8, !dbg !3542
  %86 = icmp eq i8* %85, null, !dbg !3543
  br i1 %86, label %92, label %87, !dbg !3544

; <label>:87:                                     ; preds = %84
  %88 = load i8*, i8** %6, align 8, !dbg !3545
  %89 = load i8, i8* %88, align 1, !dbg !3546
  %90 = sext i8 %89 to i32, !dbg !3546
  %91 = icmp eq i32 %90, 0, !dbg !3547
  br label %92, !dbg !3548

; <label>:92:                                     ; preds = %87, %84
  %93 = phi i1 [ true, %84 ], [ %91, %87 ]
  br label %94

; <label>:94:                                     ; preds = %92, %79
  %95 = phi i1 [ false, %79 ], [ %93, %92 ]
  %96 = zext i1 %95 to i32, !dbg !3549
  store i32 %96, i32* %8, align 4, !dbg !3550
  %97 = load i32, i32* %7, align 4, !dbg !3551
  %98 = icmp ne i32 %97, 0, !dbg !3551
  br i1 %98, label %99, label %101, !dbg !3553

; <label>:99:                                     ; preds = %94
  %100 = load i8*, i8** %6, align 8, !dbg !3554
  call void @g_free(i8* %100), !dbg !3556
  br label %101, !dbg !3556

; <label>:101:                                    ; preds = %99, %94
  %102 = load i32, i32* %8, align 4, !dbg !3557
  %103 = icmp ne i32 %102, 0, !dbg !3557
  br i1 %103, label %104, label %108, !dbg !3559

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %5, align 8, !dbg !3560
  %106 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !3562
  %107 = load i8**, i8*** %3, align 8, !dbg !3563
  store i8* %106, i8** %107, align 8, !dbg !3564
  store i32 1, i32* %2, align 4, !dbg !3565
  br label %109, !dbg !3565

; <label>:108:                                    ; preds = %101
  store i32 0, i32* %2, align 4, !dbg !3566
  br label %109, !dbg !3566

; <label>:109:                                    ; preds = %108, %104, %33, %24
  %110 = load i32, i32* %2, align 4, !dbg !3567
  ret i32 %110, !dbg !3567
}

declare %struct._GTree* @g_tree_new_full(i32 (i8*, i8*, i8*)*, i8*, void (i8*)*, void (i8*)*) #2

declare %struct._GTree* @g_tree_ref(%struct._GTree*) #2

declare i8* @g_tree_lookup(%struct._GTree*, i8*) #2

declare void @g_tree_insert(%struct._GTree*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @expand_escape(i8**) #2

declare i32 @g_tree_remove(%struct._GTree*, i8*) #2

declare void @g_tree_unref(%struct._GTree*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_read_module(%struct.THEME_REC*, i8*) #0 !dbg !3568 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !3571, metadata !480), !dbg !3572
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3573, metadata !480), !dbg !3574
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !3575, metadata !480), !dbg !3576
  %6 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !3577
  %7 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %6, i32 0, i32 1, !dbg !3578
  %8 = load i8*, i8** %7, align 8, !dbg !3578
  %9 = call %struct._CONFIG_REC* @config_open(i8* %8, i32 -1), !dbg !3579
  store %struct._CONFIG_REC* %9, %struct._CONFIG_REC** %5, align 8, !dbg !3580
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !3581
  %11 = icmp ne %struct._CONFIG_REC* %10, null, !dbg !3583
  br i1 %11, label %12, label %15, !dbg !3584

; <label>:12:                                     ; preds = %2
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !3585
  %14 = call i32 @config_parse(%struct._CONFIG_REC* %13), !dbg !3586
  br label %15, !dbg !3586

; <label>:15:                                     ; preds = %12, %2
  %16 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !3587
  %17 = load i8*, i8** %4, align 8, !dbg !3588
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !3589
  call void @theme_init_module(%struct.THEME_REC* %16, i8* %17, %struct._CONFIG_REC* %18), !dbg !3590
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !3591
  %20 = icmp ne %struct._CONFIG_REC* %19, null, !dbg !3593
  br i1 %20, label %21, label %23, !dbg !3594

; <label>:21:                                     ; preds = %15
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !3595
  call void @config_close(%struct._CONFIG_REC* %22), !dbg !3597
  br label %23, !dbg !3597

; <label>:23:                                     ; preds = %21, %15
  ret void, !dbg !3598
}

declare %struct._CONFIG_REC* @config_open(i8*, i32) #2

declare i32 @config_parse(%struct._CONFIG_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_init_module(%struct.THEME_REC*, i8*, %struct._CONFIG_REC*) #0 !dbg !3599 {
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca %struct.MODULE_THEME_REC*, align 8
  %8 = alloca %struct._FORMAT_REC*, align 8
  %9 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !3602, metadata !480), !dbg !3603
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3604, metadata !480), !dbg !3605
  store %struct._CONFIG_REC* %2, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !3606, metadata !480), !dbg !3607
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %7, metadata !3608, metadata !480), !dbg !3609
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %8, metadata !3610, metadata !480), !dbg !3611
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3612, metadata !480), !dbg !3613
  %10 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !3614
  %11 = load i8*, i8** %5, align 8, !dbg !3615
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %11), !dbg !3616
  %13 = bitcast i8* %12 to %struct._FORMAT_REC*, !dbg !3616
  store %struct._FORMAT_REC* %13, %struct._FORMAT_REC** %8, align 8, !dbg !3617
  br label %14, !dbg !3618, !llvm.loop !3619

; <label>:14:                                     ; preds = %3
  %15 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !3620
  %16 = icmp ne %struct._FORMAT_REC* %15, null, !dbg !3624
  br i1 %16, label %17, label %18, !dbg !3620

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !3625

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.theme_init_module, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)), !dbg !3628
  br label %66, !dbg !3631

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !3632

; <label>:20:                                     ; preds = %19
  %21 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3634
  %22 = load i8*, i8** %5, align 8, !dbg !3635
  %23 = call %struct.MODULE_THEME_REC* @theme_module_create(%struct.THEME_REC* %21, i8* %22), !dbg !3636
  store %struct.MODULE_THEME_REC* %23, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3637
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !3638
  %25 = icmp ne %struct._CONFIG_REC* %24, null, !dbg !3640
  br i1 %25, label %26, label %31, !dbg !3641

; <label>:26:                                     ; preds = %20
  %27 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3642
  %28 = load i8*, i8** %5, align 8, !dbg !3643
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !3644
  %30 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3645
  call void @theme_read_formats(%struct.THEME_REC* %27, i8* %28, %struct._CONFIG_REC* %29, %struct.MODULE_THEME_REC* %30), !dbg !3646
  br label %31, !dbg !3646

; <label>:31:                                     ; preds = %26, %20
  store i32 0, i32* %9, align 4, !dbg !3647
  br label %32, !dbg !3649

; <label>:32:                                     ; preds = %63, %31
  %33 = load i32, i32* %9, align 4, !dbg !3650
  %34 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3653
  %35 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %34, i32 0, i32 1, !dbg !3654
  %36 = load i32, i32* %35, align 8, !dbg !3654
  %37 = icmp slt i32 %33, %36, !dbg !3655
  br i1 %37, label %38, label %66, !dbg !3656

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %9, align 4, !dbg !3657
  %40 = sext i32 %39 to i64, !dbg !3660
  %41 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3660
  %42 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %41, i32 0, i32 3, !dbg !3661
  %43 = load i8**, i8*** %42, align 8, !dbg !3661
  %44 = getelementptr inbounds i8*, i8** %43, i64 %40, !dbg !3660
  %45 = load i8*, i8** %44, align 8, !dbg !3660
  %46 = icmp eq i8* %45, null, !dbg !3662
  br i1 %46, label %47, label %62, !dbg !3663

; <label>:47:                                     ; preds = %38
  %48 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3664
  %49 = load i32, i32* %9, align 4, !dbg !3666
  %50 = sext i32 %49 to i64, !dbg !3667
  %51 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !3667
  %52 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %51, i64 %50, !dbg !3667
  %53 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %52, i32 0, i32 1, !dbg !3668
  %54 = load i8*, i8** %53, align 8, !dbg !3668
  %55 = call i8* @theme_format_expand(%struct.THEME_REC* %48, i8* %54), !dbg !3669
  %56 = load i32, i32* %9, align 4, !dbg !3670
  %57 = sext i32 %56 to i64, !dbg !3671
  %58 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3671
  %59 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %58, i32 0, i32 3, !dbg !3672
  %60 = load i8**, i8*** %59, align 8, !dbg !3672
  %61 = getelementptr inbounds i8*, i8** %60, i64 %57, !dbg !3671
  store i8* %55, i8** %61, align 8, !dbg !3673
  br label %62, !dbg !3674

; <label>:62:                                     ; preds = %47, %38
  br label %63, !dbg !3675

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %9, align 4, !dbg !3676
  %65 = add nsw i32 %64, 1, !dbg !3676
  store i32 %65, i32* %9, align 4, !dbg !3676
  br label %32, !dbg !3678, !llvm.loop !3679

; <label>:66:                                     ; preds = %18, %32
  ret void, !dbg !3681
}

declare void @config_close(%struct._CONFIG_REC*) #2

; Function Attrs: nounwind uwtable
define internal %struct.MODULE_THEME_REC* @theme_module_create(%struct.THEME_REC*, i8*) #0 !dbg !3682 {
  %3 = alloca %struct.MODULE_THEME_REC*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.MODULE_THEME_REC*, align 8
  %7 = alloca %struct._FORMAT_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !3685, metadata !480), !dbg !3686
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3687, metadata !480), !dbg !3688
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %6, metadata !3689, metadata !480), !dbg !3690
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %7, metadata !3691, metadata !480), !dbg !3692
  %8 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3693
  %9 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %8, i32 0, i32 6, !dbg !3694
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !3694
  %11 = load i8*, i8** %5, align 8, !dbg !3695
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %11), !dbg !3696
  %13 = bitcast i8* %12 to %struct.MODULE_THEME_REC*, !dbg !3696
  store %struct.MODULE_THEME_REC* %13, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3697
  %14 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3698
  %15 = icmp ne %struct.MODULE_THEME_REC* %14, null, !dbg !3700
  br i1 %15, label %16, label %18, !dbg !3701

; <label>:16:                                     ; preds = %2
  %17 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3702
  store %struct.MODULE_THEME_REC* %17, %struct.MODULE_THEME_REC** %3, align 8, !dbg !3704
  br label %81, !dbg !3704

; <label>:18:                                     ; preds = %2
  %19 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !3705
  %20 = load i8*, i8** %5, align 8, !dbg !3706
  %21 = call i8* @g_hash_table_lookup(%struct._GHashTable* %19, i8* %20), !dbg !3707
  %22 = bitcast i8* %21 to %struct._FORMAT_REC*, !dbg !3707
  store %struct._FORMAT_REC* %22, %struct._FORMAT_REC** %7, align 8, !dbg !3708
  br label %23, !dbg !3709, !llvm.loop !3710

; <label>:23:                                     ; preds = %18
  %24 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %7, align 8, !dbg !3711
  %25 = icmp ne %struct._FORMAT_REC* %24, null, !dbg !3715
  br i1 %25, label %26, label %27, !dbg !3711

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !3716

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.theme_module_create, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0)), !dbg !3719
  store %struct.MODULE_THEME_REC* null, %struct.MODULE_THEME_REC** %3, align 8, !dbg !3722
  br label %81, !dbg !3722

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !3723

; <label>:29:                                     ; preds = %28
  %30 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !3725
  %31 = bitcast i8* %30 to %struct.MODULE_THEME_REC*, !dbg !3726
  store %struct.MODULE_THEME_REC* %31, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3727
  %32 = load i8*, i8** %5, align 8, !dbg !3728
  %33 = call noalias i8* @g_strdup(i8* %32), !dbg !3729
  %34 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3730
  %35 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %34, i32 0, i32 0, !dbg !3731
  store i8* %33, i8** %35, align 8, !dbg !3732
  %36 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3733
  %37 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %36, i32 0, i32 1, !dbg !3735
  store i32 0, i32* %37, align 8, !dbg !3736
  br label %38, !dbg !3733

; <label>:38:                                     ; preds = %49, %29
  %39 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3737
  %40 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %39, i32 0, i32 1, !dbg !3740
  %41 = load i32, i32* %40, align 8, !dbg !3740
  %42 = sext i32 %41 to i64, !dbg !3741
  %43 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %7, align 8, !dbg !3741
  %44 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %43, i64 %42, !dbg !3741
  %45 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %44, i32 0, i32 1, !dbg !3742
  %46 = load i8*, i8** %45, align 8, !dbg !3742
  %47 = icmp ne i8* %46, null, !dbg !3743
  br i1 %47, label %48, label %54, !dbg !3744

; <label>:48:                                     ; preds = %38
  br label %49, !dbg !3745

; <label>:49:                                     ; preds = %48
  %50 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3747
  %51 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %50, i32 0, i32 1, !dbg !3749
  %52 = load i32, i32* %51, align 8, !dbg !3750
  %53 = add nsw i32 %52, 1, !dbg !3750
  store i32 %53, i32* %51, align 8, !dbg !3750
  br label %38, !dbg !3751, !llvm.loop !3752

; <label>:54:                                     ; preds = %38
  %55 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3754
  %56 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %55, i32 0, i32 1, !dbg !3755
  %57 = load i32, i32* %56, align 8, !dbg !3755
  %58 = sext i32 %57 to i64, !dbg !3756
  %59 = call noalias i8* @g_malloc0_n(i64 %58, i64 8), !dbg !3757
  %60 = bitcast i8* %59 to i8**, !dbg !3758
  %61 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3759
  %62 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %61, i32 0, i32 2, !dbg !3760
  store i8** %60, i8*** %62, align 8, !dbg !3761
  %63 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3762
  %64 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %63, i32 0, i32 1, !dbg !3763
  %65 = load i32, i32* %64, align 8, !dbg !3763
  %66 = sext i32 %65 to i64, !dbg !3764
  %67 = call noalias i8* @g_malloc0_n(i64 %66, i64 8), !dbg !3765
  %68 = bitcast i8* %67 to i8**, !dbg !3766
  %69 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3767
  %70 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %69, i32 0, i32 3, !dbg !3768
  store i8** %68, i8*** %70, align 8, !dbg !3769
  %71 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3770
  %72 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %71, i32 0, i32 6, !dbg !3771
  %73 = load %struct._GHashTable*, %struct._GHashTable** %72, align 8, !dbg !3771
  %74 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3772
  %75 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %74, i32 0, i32 0, !dbg !3773
  %76 = load i8*, i8** %75, align 8, !dbg !3773
  %77 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3774
  %78 = bitcast %struct.MODULE_THEME_REC* %77 to i8*, !dbg !3774
  %79 = call i32 @g_hash_table_insert(%struct._GHashTable* %73, i8* %76, i8* %78), !dbg !3775
  %80 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %6, align 8, !dbg !3776
  store %struct.MODULE_THEME_REC* %80, %struct.MODULE_THEME_REC** %3, align 8, !dbg !3777
  br label %81, !dbg !3777

; <label>:81:                                     ; preds = %54, %27, %16
  %82 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %3, align 8, !dbg !3778
  ret %struct.MODULE_THEME_REC* %82, !dbg !3778
}

; Function Attrs: nounwind uwtable
define internal void @theme_read_formats(%struct.THEME_REC*, i8*, %struct._CONFIG_REC*, %struct.MODULE_THEME_REC*) #0 !dbg !3779 {
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._CONFIG_REC*, align 8
  %8 = alloca %struct.MODULE_THEME_REC*, align 8
  %9 = alloca %struct._CONFIG_NODE*, align 8
  %10 = alloca %struct._GSList*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !3782, metadata !480), !dbg !3783
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3784, metadata !480), !dbg !3785
  store %struct._CONFIG_REC* %2, %struct._CONFIG_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %7, metadata !3786, metadata !480), !dbg !3787
  store %struct.MODULE_THEME_REC* %3, %struct.MODULE_THEME_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %8, metadata !3788, metadata !480), !dbg !3789
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %9, metadata !3790, metadata !480), !dbg !3791
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !3792, metadata !480), !dbg !3793
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !3794
  %12 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 0), !dbg !3795
  store %struct._CONFIG_NODE* %12, %struct._CONFIG_NODE** %9, align 8, !dbg !3796
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3797
  %14 = icmp eq %struct._CONFIG_NODE* %13, null, !dbg !3799
  br i1 %14, label %15, label %16, !dbg !3800

; <label>:15:                                     ; preds = %4
  br label %61, !dbg !3801

; <label>:16:                                     ; preds = %4
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !3803
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3804
  %19 = load i8*, i8** %6, align 8, !dbg !3805
  %20 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %17, %struct._CONFIG_NODE* %18, i8* %19, i32 -1), !dbg !3806
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %9, align 8, !dbg !3807
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3808
  %22 = icmp eq %struct._CONFIG_NODE* %21, null, !dbg !3810
  br i1 %22, label %23, label %24, !dbg !3811

; <label>:23:                                     ; preds = %16
  br label %61, !dbg !3812

; <label>:24:                                     ; preds = %16
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3814
  %26 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %25, i32 0, i32 2, !dbg !3816
  %27 = load i8*, i8** %26, align 8, !dbg !3816
  %28 = bitcast i8* %27 to %struct._GSList*, !dbg !3814
  store %struct._GSList* %28, %struct._GSList** %10, align 8, !dbg !3817
  br label %29, !dbg !3818

; <label>:29:                                     ; preds = %57, %24
  %30 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !3819
  %31 = icmp ne %struct._GSList* %30, null, !dbg !3822
  br i1 %31, label %32, label %61, !dbg !3823

; <label>:32:                                     ; preds = %29
  %33 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !3824
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !3826
  %35 = load i8*, i8** %34, align 8, !dbg !3826
  %36 = bitcast i8* %35 to %struct._CONFIG_NODE*, !dbg !3824
  store %struct._CONFIG_NODE* %36, %struct._CONFIG_NODE** %9, align 8, !dbg !3827
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3828
  %38 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %37, i32 0, i32 1, !dbg !3830
  %39 = load i8*, i8** %38, align 8, !dbg !3830
  %40 = icmp ne i8* %39, null, !dbg !3831
  br i1 %40, label %41, label %56, !dbg !3832

; <label>:41:                                     ; preds = %32
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3833
  %43 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %42, i32 0, i32 2, !dbg !3835
  %44 = load i8*, i8** %43, align 8, !dbg !3835
  %45 = icmp ne i8* %44, null, !dbg !3836
  br i1 %45, label %46, label %56, !dbg !3837

; <label>:46:                                     ; preds = %41
  %47 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !3838
  %48 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %8, align 8, !dbg !3840
  %49 = load i8*, i8** %6, align 8, !dbg !3841
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3842
  %51 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %50, i32 0, i32 1, !dbg !3843
  %52 = load i8*, i8** %51, align 8, !dbg !3843
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !3844
  %54 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %53, i32 0, i32 2, !dbg !3845
  %55 = load i8*, i8** %54, align 8, !dbg !3845
  call void @theme_set_format(%struct.THEME_REC* %47, %struct.MODULE_THEME_REC* %48, i8* %49, i8* %52, i8* %55), !dbg !3846
  br label %56, !dbg !3847

; <label>:56:                                     ; preds = %46, %41, %32
  br label %57, !dbg !3848

; <label>:57:                                     ; preds = %56
  %58 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !3849
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 1, !dbg !3851
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !3851
  store %struct._GSList* %60, %struct._GSList** %10, align 8, !dbg !3852
  br label %29, !dbg !3853, !llvm.loop !3854

; <label>:61:                                     ; preds = %15, %23, %29
  ret void, !dbg !3856
}

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @theme_set_format(%struct.THEME_REC*, %struct.MODULE_THEME_REC*, i8*, i8*, i8*) #0 !dbg !3857 {
  %6 = alloca %struct.THEME_REC*, align 8
  %7 = alloca %struct.MODULE_THEME_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %6, metadata !3860, metadata !480), !dbg !3861
  store %struct.MODULE_THEME_REC* %1, %struct.MODULE_THEME_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %7, metadata !3862, metadata !480), !dbg !3863
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3864, metadata !480), !dbg !3865
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3866, metadata !480), !dbg !3867
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3868, metadata !480), !dbg !3869
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3870, metadata !480), !dbg !3871
  %12 = load i8*, i8** %8, align 8, !dbg !3872
  %13 = load i8*, i8** %9, align 8, !dbg !3873
  %14 = call i32 @format_find_tag(i8* %12, i8* %13), !dbg !3874
  store i32 %14, i32* %11, align 4, !dbg !3875
  %15 = load i32, i32* %11, align 4, !dbg !3876
  %16 = icmp ne i32 %15, -1, !dbg !3878
  br i1 %16, label %17, label %35, !dbg !3879

; <label>:17:                                     ; preds = %5
  %18 = load i8*, i8** %10, align 8, !dbg !3880
  %19 = call noalias i8* @g_strdup(i8* %18), !dbg !3882
  %20 = load i32, i32* %11, align 4, !dbg !3883
  %21 = sext i32 %20 to i64, !dbg !3884
  %22 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3884
  %23 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %22, i32 0, i32 2, !dbg !3885
  %24 = load i8**, i8*** %23, align 8, !dbg !3885
  %25 = getelementptr inbounds i8*, i8** %24, i64 %21, !dbg !3884
  store i8* %19, i8** %25, align 8, !dbg !3886
  %26 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !3887
  %27 = load i8*, i8** %10, align 8, !dbg !3888
  %28 = call i8* @theme_format_expand(%struct.THEME_REC* %26, i8* %27), !dbg !3889
  %29 = load i32, i32* %11, align 4, !dbg !3890
  %30 = sext i32 %29 to i64, !dbg !3891
  %31 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %7, align 8, !dbg !3891
  %32 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %31, i32 0, i32 3, !dbg !3892
  %33 = load i8**, i8*** %32, align 8, !dbg !3892
  %34 = getelementptr inbounds i8*, i8** %33, i64 %30, !dbg !3891
  store i8* %28, i8** %34, align 8, !dbg !3893
  br label %35, !dbg !3894

; <label>:35:                                     ; preds = %17, %5
  ret void, !dbg !3895
}

declare i32 @format_find_tag(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_remove_module(%struct.THEME_REC*, i8*) #0 !dbg !3896 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MODULE_THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !3897, metadata !480), !dbg !3898
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3899, metadata !480), !dbg !3900
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %5, metadata !3901, metadata !480), !dbg !3902
  %6 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !3903
  %7 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %6, i32 0, i32 6, !dbg !3904
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !3904
  %9 = load i8*, i8** %4, align 8, !dbg !3905
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %9), !dbg !3906
  %11 = bitcast i8* %10 to %struct.MODULE_THEME_REC*, !dbg !3906
  store %struct.MODULE_THEME_REC* %11, %struct.MODULE_THEME_REC** %5, align 8, !dbg !3907
  %12 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !3908
  %13 = icmp eq %struct.MODULE_THEME_REC* %12, null, !dbg !3910
  br i1 %13, label %14, label %15, !dbg !3911

; <label>:14:                                     ; preds = %2
  br label %23, !dbg !3912

; <label>:15:                                     ; preds = %2
  %16 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !3914
  %17 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %16, i32 0, i32 6, !dbg !3915
  %18 = load %struct._GHashTable*, %struct._GHashTable** %17, align 8, !dbg !3915
  %19 = load i8*, i8** %4, align 8, !dbg !3916
  %20 = call i32 @g_hash_table_remove(%struct._GHashTable* %18, i8* %19), !dbg !3917
  %21 = load i8*, i8** %4, align 8, !dbg !3918
  %22 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !3919
  call void @theme_module_destroy(i8* %21, %struct.MODULE_THEME_REC* %22), !dbg !3920
  br label %23, !dbg !3921

; <label>:23:                                     ; preds = %15, %14
  ret void, !dbg !3922
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal void @read_error(i8*) #0 !dbg !3924 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3925, metadata !480), !dbg !3926
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3927, metadata !480), !dbg !3928
  %4 = load i32, i32* @init_finished, align 4, !dbg !3929
  %5 = icmp ne i32 %4, 0, !dbg !3929
  br i1 %5, label %6, label %8, !dbg !3931

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3932
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* %7), !dbg !3933
  br label %21, !dbg !3933

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** @init_errors, align 8, !dbg !3934
  %10 = icmp eq i8* %9, null, !dbg !3936
  br i1 %10, label %11, label %14, !dbg !3937

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %2, align 8, !dbg !3938
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !3939
  store i8* %13, i8** @init_errors, align 8, !dbg !3940
  br label %20, !dbg !3941

; <label>:14:                                     ; preds = %8
  %15 = load i8*, i8** @init_errors, align 8, !dbg !3942
  store i8* %15, i8** %3, align 8, !dbg !3944
  %16 = load i8*, i8** @init_errors, align 8, !dbg !3945
  %17 = load i8*, i8** %2, align 8, !dbg !3946
  %18 = call noalias i8* (i8*, ...) @g_strconcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* %17, i8* null), !dbg !3947
  store i8* %18, i8** @init_errors, align 8, !dbg !3948
  %19 = load i8*, i8** %3, align 8, !dbg !3949
  call void @g_free(i8* %19), !dbg !3950
  br label %20

; <label>:20:                                     ; preds = %14, %11
  br label %21

; <label>:21:                                     ; preds = %20, %6
  ret void, !dbg !3951
}

declare i32 @config_parse_data(%struct._CONFIG_REC*, i8*, i8*) #2

declare i32 @config_get_int(%struct._CONFIG_REC*, i8*, i8*, i32) #2

declare i32 @config_get_bool(%struct._CONFIG_REC*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @theme_read_replaces(%struct._CONFIG_REC*, %struct.THEME_REC*) #0 !dbg !3952 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !3955, metadata !480), !dbg !3956
  store %struct.THEME_REC* %1, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !3957, metadata !480), !dbg !3958
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !3959, metadata !480), !dbg !3960
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !3961, metadata !480), !dbg !3962
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3963, metadata !480), !dbg !3964
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3965, metadata !480), !dbg !3966
  store i32 0, i32* %8, align 4, !dbg !3967
  br label %9, !dbg !3969

; <label>:9:                                      ; preds = %18, %2
  %10 = load i32, i32* %8, align 4, !dbg !3970
  %11 = icmp slt i32 %10, 256, !dbg !3973
  br i1 %11, label %12, label %21, !dbg !3974

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %8, align 4, !dbg !3975
  %14 = sext i32 %13 to i64, !dbg !3976
  %15 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !3976
  %16 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %15, i32 0, i32 7, !dbg !3977
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %14, !dbg !3976
  store i32 -1, i32* %17, align 4, !dbg !3978
  br label %18, !dbg !3976

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %8, align 4, !dbg !3979
  %20 = add nsw i32 %19, 1, !dbg !3979
  store i32 %20, i32* %8, align 4, !dbg !3979
  br label %9, !dbg !3981, !llvm.loop !3982

; <label>:21:                                     ; preds = %9
  store i32 0, i32* %8, align 4, !dbg !3984
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !3985
  %23 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 0), !dbg !3986
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %6, align 8, !dbg !3987
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !3988
  %25 = icmp eq %struct._CONFIG_NODE* %24, null, !dbg !3990
  br i1 %25, label %31, label %26, !dbg !3991

; <label>:26:                                     ; preds = %21
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !3992
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 0, !dbg !3994
  %29 = load i32, i32* %28, align 8, !dbg !3994
  %30 = icmp ne i32 %29, 2, !dbg !3995
  br i1 %30, label %31, label %32, !dbg !3996

; <label>:31:                                     ; preds = %26, %21
  br label %93, !dbg !3997

; <label>:32:                                     ; preds = %26
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !3999
  %34 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %33, i32 0, i32 2, !dbg !4001
  %35 = load i8*, i8** %34, align 8, !dbg !4001
  %36 = bitcast i8* %35 to %struct._GSList*, !dbg !3999
  store %struct._GSList* %36, %struct._GSList** %5, align 8, !dbg !4002
  br label %37, !dbg !4003

; <label>:37:                                     ; preds = %89, %32
  %38 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4004
  %39 = icmp ne %struct._GSList* %38, null, !dbg !4007
  br i1 %39, label %40, label %93, !dbg !4008

; <label>:40:                                     ; preds = %37
  %41 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4009
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !4011
  %43 = load i8*, i8** %42, align 8, !dbg !4011
  %44 = bitcast i8* %43 to %struct._CONFIG_NODE*, !dbg !4009
  store %struct._CONFIG_NODE* %44, %struct._CONFIG_NODE** %6, align 8, !dbg !4012
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4013
  %46 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %45, i32 0, i32 1, !dbg !4015
  %47 = load i8*, i8** %46, align 8, !dbg !4015
  %48 = icmp ne i8* %47, null, !dbg !4016
  br i1 %48, label %49, label %88, !dbg !4017

; <label>:49:                                     ; preds = %40
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4018
  %51 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %50, i32 0, i32 2, !dbg !4020
  %52 = load i8*, i8** %51, align 8, !dbg !4020
  %53 = icmp ne i8* %52, null, !dbg !4021
  br i1 %53, label %54, label %88, !dbg !4022

; <label>:54:                                     ; preds = %49
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4023
  %56 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %55, i32 0, i32 1, !dbg !4026
  %57 = load i8*, i8** %56, align 8, !dbg !4026
  store i8* %57, i8** %7, align 8, !dbg !4027
  br label %58, !dbg !4028

; <label>:58:                                     ; preds = %72, %54
  %59 = load i8*, i8** %7, align 8, !dbg !4029
  %60 = load i8, i8* %59, align 1, !dbg !4032
  %61 = sext i8 %60 to i32, !dbg !4032
  %62 = icmp ne i32 %61, 0, !dbg !4033
  br i1 %62, label %63, label %75, !dbg !4034

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %8, align 4, !dbg !4035
  %65 = load i8*, i8** %7, align 8, !dbg !4036
  %66 = load i8, i8* %65, align 1, !dbg !4037
  %67 = zext i8 %66 to i32, !dbg !4038
  %68 = sext i32 %67 to i64, !dbg !4039
  %69 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4039
  %70 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %69, i32 0, i32 7, !dbg !4040
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %70, i64 0, i64 %68, !dbg !4039
  store i32 %64, i32* %71, align 4, !dbg !4041
  br label %72, !dbg !4039

; <label>:72:                                     ; preds = %63
  %73 = load i8*, i8** %7, align 8, !dbg !4042
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !4042
  store i8* %74, i8** %7, align 8, !dbg !4042
  br label %58, !dbg !4044, !llvm.loop !4045

; <label>:75:                                     ; preds = %58
  %76 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4047
  %77 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %76, i32 0, i32 8, !dbg !4048
  %78 = load %struct._GSList*, %struct._GSList** %77, align 8, !dbg !4048
  %79 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4049
  %80 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %79, i32 0, i32 2, !dbg !4050
  %81 = load i8*, i8** %80, align 8, !dbg !4050
  %82 = call noalias i8* @g_strdup(i8* %81), !dbg !4051
  %83 = call %struct._GSList* @g_slist_append(%struct._GSList* %78, i8* %82), !dbg !4052
  %84 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4053
  %85 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %84, i32 0, i32 8, !dbg !4054
  store %struct._GSList* %83, %struct._GSList** %85, align 8, !dbg !4055
  %86 = load i32, i32* %8, align 4, !dbg !4056
  %87 = add nsw i32 %86, 1, !dbg !4056
  store i32 %87, i32* %8, align 4, !dbg !4056
  br label %88, !dbg !4057

; <label>:88:                                     ; preds = %75, %49, %40
  br label %89, !dbg !4058

; <label>:89:                                     ; preds = %88
  %90 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4059
  %91 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 1, !dbg !4061
  %92 = load %struct._GSList*, %struct._GSList** %91, align 8, !dbg !4061
  store %struct._GSList* %92, %struct._GSList** %5, align 8, !dbg !4062
  br label %37, !dbg !4063, !llvm.loop !4064

; <label>:93:                                     ; preds = %31, %37
  ret void, !dbg !4066
}

; Function Attrs: nounwind uwtable
define internal void @theme_copy_abstracts(%struct.THEME_REC*, %struct.THEME_REC*) #0 !dbg !4067 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !4070, metadata !480), !dbg !4071
  store %struct.THEME_REC* %1, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !4072, metadata !480), !dbg !4073
  %5 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4074
  %6 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %5, i32 0, i32 9, !dbg !4075
  %7 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !4075
  %8 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4076
  %9 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %8, i32 0, i32 9, !dbg !4077
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !4077
  %11 = bitcast %struct._GHashTable* %10 to i8*, !dbg !4076
  call void @g_hash_table_foreach(%struct._GHashTable* %7, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._GHashTable*)* @copy_abstract_hash to void (i8*, i8*, i8*)*), i8* %11), !dbg !4078
  ret void, !dbg !4079
}

; Function Attrs: nounwind uwtable
define internal void @theme_read_abstracts(%struct._CONFIG_REC*, %struct.THEME_REC*) #0 !dbg !4080 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !4081, metadata !480), !dbg !4082
  store %struct.THEME_REC* %1, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !4083, metadata !480), !dbg !4084
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !4085, metadata !480), !dbg !4086
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !4087, metadata !480), !dbg !4088
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4089, metadata !480), !dbg !4090
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4091, metadata !480), !dbg !4092
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !4093
  %10 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 0), !dbg !4094
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %6, align 8, !dbg !4095
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4096
  %12 = icmp eq %struct._CONFIG_NODE* %11, null, !dbg !4098
  br i1 %12, label %18, label %13, !dbg !4099

; <label>:13:                                     ; preds = %2
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4100
  %15 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %14, i32 0, i32 0, !dbg !4102
  %16 = load i32, i32* %15, align 8, !dbg !4102
  %17 = icmp ne i32 %16, 2, !dbg !4103
  br i1 %17, label %18, label %19, !dbg !4104

; <label>:18:                                     ; preds = %13, %2
  br label %76, !dbg !4105

; <label>:19:                                     ; preds = %13
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4107
  %21 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %20, i32 0, i32 2, !dbg !4109
  %22 = load i8*, i8** %21, align 8, !dbg !4109
  %23 = bitcast i8* %22 to %struct._GSList*, !dbg !4107
  store %struct._GSList* %23, %struct._GSList** %5, align 8, !dbg !4110
  br label %24, !dbg !4111

; <label>:24:                                     ; preds = %72, %19
  %25 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4112
  %26 = icmp ne %struct._GSList* %25, null, !dbg !4115
  br i1 %26, label %27, label %76, !dbg !4116

; <label>:27:                                     ; preds = %24
  %28 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4117
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0, !dbg !4119
  %30 = load i8*, i8** %29, align 8, !dbg !4119
  %31 = bitcast i8* %30 to %struct._CONFIG_NODE*, !dbg !4117
  store %struct._CONFIG_NODE* %31, %struct._CONFIG_NODE** %6, align 8, !dbg !4120
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4121
  %33 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %32, i32 0, i32 1, !dbg !4123
  %34 = load i8*, i8** %33, align 8, !dbg !4123
  %35 = icmp eq i8* %34, null, !dbg !4124
  br i1 %35, label %41, label %36, !dbg !4125

; <label>:36:                                     ; preds = %27
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4126
  %38 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %37, i32 0, i32 2, !dbg !4128
  %39 = load i8*, i8** %38, align 8, !dbg !4128
  %40 = icmp eq i8* %39, null, !dbg !4129
  br i1 %40, label %41, label %42, !dbg !4130

; <label>:41:                                     ; preds = %36, %27
  br label %72, !dbg !4131

; <label>:42:                                     ; preds = %36
  %43 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4132
  %44 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %43, i32 0, i32 9, !dbg !4134
  %45 = load %struct._GHashTable*, %struct._GHashTable** %44, align 8, !dbg !4134
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4135
  %47 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %46, i32 0, i32 1, !dbg !4136
  %48 = load i8*, i8** %47, align 8, !dbg !4136
  %49 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %45, i8* %48, i8** %7, i8** %8), !dbg !4137
  %50 = icmp ne i32 %49, 0, !dbg !4137
  br i1 %50, label %51, label %59, !dbg !4138

; <label>:51:                                     ; preds = %42
  %52 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4139
  %53 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %52, i32 0, i32 9, !dbg !4141
  %54 = load %struct._GHashTable*, %struct._GHashTable** %53, align 8, !dbg !4141
  %55 = load i8*, i8** %7, align 8, !dbg !4142
  %56 = call i32 @g_hash_table_remove(%struct._GHashTable* %54, i8* %55), !dbg !4143
  %57 = load i8*, i8** %7, align 8, !dbg !4144
  call void @g_free(i8* %57), !dbg !4145
  %58 = load i8*, i8** %8, align 8, !dbg !4146
  call void @g_free(i8* %58), !dbg !4147
  br label %59, !dbg !4148

; <label>:59:                                     ; preds = %51, %42
  %60 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !4149
  %61 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %60, i32 0, i32 9, !dbg !4150
  %62 = load %struct._GHashTable*, %struct._GHashTable** %61, align 8, !dbg !4150
  %63 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4151
  %64 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %63, i32 0, i32 1, !dbg !4152
  %65 = load i8*, i8** %64, align 8, !dbg !4152
  %66 = call noalias i8* @g_strdup(i8* %65), !dbg !4153
  %67 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !4154
  %68 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %67, i32 0, i32 2, !dbg !4155
  %69 = load i8*, i8** %68, align 8, !dbg !4155
  %70 = call noalias i8* @g_strdup(i8* %69), !dbg !4156
  %71 = call i32 @g_hash_table_insert(%struct._GHashTable* %62, i8* %66, i8* %70), !dbg !4157
  br label %72, !dbg !4159

; <label>:72:                                     ; preds = %59, %41
  %73 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !4160
  %74 = getelementptr inbounds %struct._GSList, %struct._GSList* %73, i32 0, i32 1, !dbg !4162
  %75 = load %struct._GSList*, %struct._GSList** %74, align 8, !dbg !4162
  store %struct._GSList* %75, %struct._GSList** %5, align 8, !dbg !4163
  br label %24, !dbg !4164, !llvm.loop !4165

; <label>:76:                                     ; preds = %18, %24
  ret void, !dbg !4167
}

; Function Attrs: nounwind uwtable
define internal void @theme_read_modules(i8*, i8*, %struct.THEME_READ_REC*) #0 !dbg !4168 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.THEME_READ_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4172, metadata !480), !dbg !4173
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4174, metadata !480), !dbg !4175
  store %struct.THEME_READ_REC* %2, %struct.THEME_READ_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_READ_REC** %6, metadata !4176, metadata !480), !dbg !4177
  %7 = load %struct.THEME_READ_REC*, %struct.THEME_READ_REC** %6, align 8, !dbg !4178
  %8 = getelementptr inbounds %struct.THEME_READ_REC, %struct.THEME_READ_REC* %7, i32 0, i32 0, !dbg !4179
  %9 = load %struct.THEME_REC*, %struct.THEME_REC** %8, align 8, !dbg !4179
  %10 = load i8*, i8** %4, align 8, !dbg !4180
  %11 = load %struct.THEME_READ_REC*, %struct.THEME_READ_REC** %6, align 8, !dbg !4181
  %12 = getelementptr inbounds %struct.THEME_READ_REC, %struct.THEME_READ_REC* %11, i32 0, i32 1, !dbg !4182
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %12, align 8, !dbg !4182
  call void @theme_init_module(%struct.THEME_REC* %9, i8* %10, %struct._CONFIG_REC* %13), !dbg !4183
  ret void, !dbg !4184
}

declare void @printtext(i8*, i8*, i32, i8*, ...) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @copy_abstract_hash(i8*, i8*, %struct._GHashTable*) #0 !dbg !4185 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4188, metadata !480), !dbg !4189
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4190, metadata !480), !dbg !4191
  store %struct._GHashTable* %2, %struct._GHashTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !4192, metadata !480), !dbg !4193
  %7 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !4194
  %8 = load i8*, i8** %4, align 8, !dbg !4195
  %9 = call noalias i8* @g_strdup(i8* %8), !dbg !4196
  %10 = load i8*, i8** %5, align 8, !dbg !4197
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !4198
  %12 = call i32 @g_hash_table_insert(%struct._GHashTable* %7, i8* %9, i8* %11), !dbg !4200
  ret void, !dbg !4202
}

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @get_sorted_modules() #0 !dbg !4203 {
  %1 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !4206, metadata !480), !dbg !4207
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !4208
  %2 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !4209
  %3 = bitcast %struct._GSList** %1 to i8*, !dbg !4210
  call void @g_hash_table_foreach(%struct._GHashTable* %2, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._FORMAT_REC*, %struct._GSList**)* @theme_get_modules to void (i8*, i8*, i8*)*), i8* %3), !dbg !4211
  %4 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !4212
  ret %struct._GSList* %4, !dbg !4213
}

; Function Attrs: nounwind uwtable
define internal %struct.THEME_SEARCH_REC* @theme_search(%struct._GSList*, i8*) #0 !dbg !4214 {
  %3 = alloca %struct.THEME_SEARCH_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.THEME_SEARCH_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4217, metadata !480), !dbg !4218
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4219, metadata !480), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %6, metadata !4221, metadata !480), !dbg !4222
  br label %7, !dbg !4223

; <label>:7:                                      ; preds = %23, %2
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4224
  %9 = icmp ne %struct._GSList* %8, null, !dbg !4226
  br i1 %9, label %10, label %27, !dbg !4227

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4228
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !4230
  %13 = load i8*, i8** %12, align 8, !dbg !4230
  %14 = bitcast i8* %13 to %struct.THEME_SEARCH_REC*, !dbg !4228
  store %struct.THEME_SEARCH_REC* %14, %struct.THEME_SEARCH_REC** %6, align 8, !dbg !4231
  %15 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %6, align 8, !dbg !4232
  %16 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %15, i32 0, i32 1, !dbg !4234
  %17 = load i8*, i8** %16, align 8, !dbg !4234
  %18 = load i8*, i8** %5, align 8, !dbg !4235
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !4236
  %20 = icmp eq i32 %19, 0, !dbg !4237
  br i1 %20, label %21, label %23, !dbg !4238

; <label>:21:                                     ; preds = %10
  %22 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %6, align 8, !dbg !4239
  store %struct.THEME_SEARCH_REC* %22, %struct.THEME_SEARCH_REC** %3, align 8, !dbg !4240
  br label %28, !dbg !4240

; <label>:23:                                     ; preds = %10
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4241
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 1, !dbg !4242
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !4242
  store %struct._GSList* %26, %struct._GSList** %4, align 8, !dbg !4243
  br label %7, !dbg !4244, !llvm.loop !4246

; <label>:27:                                     ; preds = %7
  store %struct.THEME_SEARCH_REC* null, %struct.THEME_SEARCH_REC** %3, align 8, !dbg !4247
  br label %28, !dbg !4247

; <label>:28:                                     ; preds = %27, %21
  %29 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %3, align 8, !dbg !4248
  ret %struct.THEME_SEARCH_REC* %29, !dbg !4248
}

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_show(%struct.THEME_SEARCH_REC*, i8*, i8*, i32) #0 !dbg !4249 {
  %5 = alloca %struct.THEME_SEARCH_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.MODULE_THEME_REC*, align 8
  %10 = alloca %struct._FORMAT_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.THEME_SEARCH_REC* %0, %struct.THEME_SEARCH_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %5, metadata !4252, metadata !480), !dbg !4253
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4254, metadata !480), !dbg !4255
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4256, metadata !480), !dbg !4257
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4258, metadata !480), !dbg !4259
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %9, metadata !4260, metadata !480), !dbg !4261
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %10, metadata !4262, metadata !480), !dbg !4263
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4264, metadata !480), !dbg !4265
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4266, metadata !480), !dbg !4267
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4268, metadata !480), !dbg !4269
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4270, metadata !480), !dbg !4271
  %15 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !4272
  %16 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %5, align 8, !dbg !4273
  %17 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %16, i32 0, i32 0, !dbg !4274
  %18 = load i8*, i8** %17, align 8, !dbg !4274
  %19 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %18), !dbg !4275
  %20 = bitcast i8* %19 to %struct._FORMAT_REC*, !dbg !4275
  store %struct._FORMAT_REC* %20, %struct._FORMAT_REC** %10, align 8, !dbg !4276
  %21 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !4277
  %22 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %21, i32 0, i32 6, !dbg !4278
  %23 = load %struct._GHashTable*, %struct._GHashTable** %22, align 8, !dbg !4278
  %24 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %5, align 8, !dbg !4279
  %25 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %24, i32 0, i32 0, !dbg !4280
  %26 = load i8*, i8** %25, align 8, !dbg !4280
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %23, i8* %26), !dbg !4281
  %28 = bitcast i8* %27 to %struct.MODULE_THEME_REC*, !dbg !4281
  store %struct.MODULE_THEME_REC* %28, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4282
  store i8* null, i8** %12, align 8, !dbg !4283
  store i32 1, i32* %14, align 4, !dbg !4284
  store i32 1, i32* %13, align 4, !dbg !4285
  br label %29, !dbg !4287

; <label>:29:                                     ; preds = %195, %4
  %30 = load i32, i32* %13, align 4, !dbg !4288
  %31 = sext i32 %30 to i64, !dbg !4291
  %32 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4291
  %33 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %32, i64 %31, !dbg !4291
  %34 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %33, i32 0, i32 1, !dbg !4292
  %35 = load i8*, i8** %34, align 8, !dbg !4292
  %36 = icmp ne i8* %35, null, !dbg !4293
  br i1 %36, label %37, label %198, !dbg !4294

; <label>:37:                                     ; preds = %29
  %38 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4295
  %39 = icmp ne %struct.MODULE_THEME_REC* %38, null, !dbg !4297
  br i1 %39, label %40, label %57, !dbg !4298

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %13, align 4, !dbg !4299
  %42 = sext i32 %41 to i64, !dbg !4301
  %43 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4301
  %44 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %43, i32 0, i32 2, !dbg !4302
  %45 = load i8**, i8*** %44, align 8, !dbg !4302
  %46 = getelementptr inbounds i8*, i8** %45, i64 %42, !dbg !4301
  %47 = load i8*, i8** %46, align 8, !dbg !4301
  %48 = icmp ne i8* %47, null, !dbg !4303
  br i1 %48, label %49, label %57, !dbg !4304

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %13, align 4, !dbg !4305
  %51 = sext i32 %50 to i64, !dbg !4306
  %52 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4306
  %53 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %52, i32 0, i32 2, !dbg !4307
  %54 = load i8**, i8*** %53, align 8, !dbg !4307
  %55 = getelementptr inbounds i8*, i8** %54, i64 %51, !dbg !4306
  %56 = load i8*, i8** %55, align 8, !dbg !4306
  br label %64, !dbg !4308

; <label>:57:                                     ; preds = %40, %37
  %58 = load i32, i32* %13, align 4, !dbg !4310
  %59 = sext i32 %58 to i64, !dbg !4311
  %60 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4311
  %61 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %60, i64 %59, !dbg !4311
  %62 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %61, i32 0, i32 1, !dbg !4312
  %63 = load i8*, i8** %62, align 8, !dbg !4312
  br label %64, !dbg !4313

; <label>:64:                                     ; preds = %57, %49
  %65 = phi i8* [ %56, %49 ], [ %63, %57 ], !dbg !4315
  store i8* %65, i8** %11, align 8, !dbg !4317
  %66 = load i32, i32* %13, align 4, !dbg !4318
  %67 = sext i32 %66 to i64, !dbg !4320
  %68 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4320
  %69 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %68, i64 %67, !dbg !4320
  %70 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %69, i32 0, i32 0, !dbg !4321
  %71 = load i8*, i8** %70, align 8, !dbg !4321
  %72 = icmp eq i8* %71, null, !dbg !4322
  br i1 %72, label %73, label %75, !dbg !4323

; <label>:73:                                     ; preds = %64
  %74 = load i8*, i8** %11, align 8, !dbg !4324
  store i8* %74, i8** %12, align 8, !dbg !4325
  br label %194, !dbg !4326

; <label>:75:                                     ; preds = %64
  %76 = load i8*, i8** %7, align 8, !dbg !4327
  %77 = icmp ne i8* %76, null, !dbg !4329
  br i1 %77, label %78, label %91, !dbg !4330

; <label>:78:                                     ; preds = %75
  %79 = load i8*, i8** %6, align 8, !dbg !4331
  %80 = icmp ne i8* %79, null, !dbg !4333
  br i1 %80, label %81, label %91, !dbg !4334

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %13, align 4, !dbg !4335
  %83 = sext i32 %82 to i64, !dbg !4337
  %84 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4337
  %85 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %84, i64 %83, !dbg !4337
  %86 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %85, i32 0, i32 0, !dbg !4338
  %87 = load i8*, i8** %86, align 8, !dbg !4338
  %88 = load i8*, i8** %6, align 8, !dbg !4339
  %89 = call i32 @g_ascii_strcasecmp(i8* %87, i8* %88), !dbg !4340
  %90 = icmp eq i32 %89, 0, !dbg !4341
  br i1 %90, label %107, label %91, !dbg !4342

; <label>:91:                                     ; preds = %81, %78, %75
  %92 = load i8*, i8** %7, align 8, !dbg !4343
  %93 = icmp eq i8* %92, null, !dbg !4344
  br i1 %93, label %94, label %193, !dbg !4345

; <label>:94:                                     ; preds = %91
  %95 = load i8*, i8** %6, align 8, !dbg !4346
  %96 = icmp eq i8* %95, null, !dbg !4347
  br i1 %96, label %107, label %97, !dbg !4348

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %13, align 4, !dbg !4349
  %99 = sext i32 %98 to i64, !dbg !4350
  %100 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4350
  %101 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %100, i64 %99, !dbg !4350
  %102 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %101, i32 0, i32 0, !dbg !4351
  %103 = load i8*, i8** %102, align 8, !dbg !4351
  %104 = load i8*, i8** %6, align 8, !dbg !4352
  %105 = call i8* @stristr(i8* %103, i8* %104), !dbg !4353
  %106 = icmp ne i8* %105, null, !dbg !4354
  br i1 %106, label %107, label %193, !dbg !4355

; <label>:107:                                    ; preds = %97, %94, %81
  %108 = load i32, i32* %14, align 4, !dbg !4357
  %109 = icmp ne i32 %108, 0, !dbg !4357
  br i1 %109, label %110, label %118, !dbg !4360

; <label>:110:                                    ; preds = %107
  %111 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %5, align 8, !dbg !4361
  %112 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %111, i32 0, i32 1, !dbg !4363
  %113 = load i8*, i8** %112, align 8, !dbg !4363
  %114 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4364
  %115 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %114, i64 0, !dbg !4364
  %116 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %115, i32 0, i32 1, !dbg !4365
  %117 = load i8*, i8** %116, align 8, !dbg !4365
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 182, i8* %113, i8* %117), !dbg !4366
  store i32 0, i32* %14, align 4, !dbg !4367
  br label %118, !dbg !4368

; <label>:118:                                    ; preds = %110, %107
  %119 = load i8*, i8** %12, align 8, !dbg !4369
  %120 = icmp ne i8* %119, null, !dbg !4371
  br i1 %120, label %121, label %123, !dbg !4372

; <label>:121:                                    ; preds = %118
  %122 = load i8*, i8** %12, align 8, !dbg !4373
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 183, i8* %122), !dbg !4374
  br label %123, !dbg !4374

; <label>:123:                                    ; preds = %121, %118
  %124 = load i32, i32* %8, align 4, !dbg !4375
  %125 = icmp ne i32 %124, 0, !dbg !4375
  br i1 %125, label %129, label %126, !dbg !4377

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** %7, align 8, !dbg !4378
  %128 = icmp ne i8* %127, null, !dbg !4380
  br i1 %128, label %129, label %185, !dbg !4381

; <label>:129:                                    ; preds = %126, %123
  %130 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !4382
  %131 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %5, align 8, !dbg !4384
  %132 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %131, i32 0, i32 0, !dbg !4385
  %133 = load i8*, i8** %132, align 8, !dbg !4385
  %134 = call %struct.MODULE_THEME_REC* @theme_module_create(%struct.THEME_REC* %130, i8* %133), !dbg !4386
  store %struct.MODULE_THEME_REC* %134, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4387
  %135 = load i32, i32* %13, align 4, !dbg !4388
  %136 = sext i32 %135 to i64, !dbg !4389
  %137 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4389
  %138 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %137, i32 0, i32 2, !dbg !4390
  %139 = load i8**, i8*** %138, align 8, !dbg !4390
  %140 = getelementptr inbounds i8*, i8** %139, i64 %136, !dbg !4389
  %141 = load i8*, i8** %140, align 8, !dbg !4389
  call void @g_free(i8* %141), !dbg !4391
  %142 = load i32, i32* %13, align 4, !dbg !4392
  %143 = sext i32 %142 to i64, !dbg !4393
  %144 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4393
  %145 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %144, i32 0, i32 3, !dbg !4394
  %146 = load i8**, i8*** %145, align 8, !dbg !4394
  %147 = getelementptr inbounds i8*, i8** %146, i64 %143, !dbg !4393
  %148 = load i8*, i8** %147, align 8, !dbg !4393
  call void @g_free(i8* %148), !dbg !4395
  %149 = load i32, i32* %8, align 4, !dbg !4396
  %150 = icmp ne i32 %149, 0, !dbg !4396
  br i1 %150, label %151, label %158, !dbg !4396

; <label>:151:                                    ; preds = %129
  %152 = load i32, i32* %13, align 4, !dbg !4397
  %153 = sext i32 %152 to i64, !dbg !4399
  %154 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4399
  %155 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %154, i64 %153, !dbg !4399
  %156 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %155, i32 0, i32 1, !dbg !4400
  %157 = load i8*, i8** %156, align 8, !dbg !4400
  br label %160, !dbg !4401

; <label>:158:                                    ; preds = %129
  %159 = load i8*, i8** %7, align 8, !dbg !4402
  br label %160, !dbg !4404

; <label>:160:                                    ; preds = %158, %151
  %161 = phi i8* [ %157, %151 ], [ %159, %158 ], !dbg !4405
  store i8* %161, i8** %11, align 8, !dbg !4407
  %162 = load i32, i32* %8, align 4, !dbg !4408
  %163 = icmp ne i32 %162, 0, !dbg !4408
  br i1 %163, label %164, label %165, !dbg !4408

; <label>:164:                                    ; preds = %160
  br label %168, !dbg !4409

; <label>:165:                                    ; preds = %160
  %166 = load i8*, i8** %7, align 8, !dbg !4410
  %167 = call noalias i8* @g_strdup(i8* %166), !dbg !4411
  br label %168, !dbg !4412

; <label>:168:                                    ; preds = %165, %164
  %169 = phi i8* [ null, %164 ], [ %167, %165 ], !dbg !4413
  %170 = load i32, i32* %13, align 4, !dbg !4414
  %171 = sext i32 %170 to i64, !dbg !4415
  %172 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4415
  %173 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %172, i32 0, i32 2, !dbg !4416
  %174 = load i8**, i8*** %173, align 8, !dbg !4416
  %175 = getelementptr inbounds i8*, i8** %174, i64 %171, !dbg !4415
  store i8* %169, i8** %175, align 8, !dbg !4417
  %176 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !4418
  %177 = load i8*, i8** %11, align 8, !dbg !4419
  %178 = call i8* @theme_format_expand(%struct.THEME_REC* %176, i8* %177), !dbg !4420
  %179 = load i32, i32* %13, align 4, !dbg !4421
  %180 = sext i32 %179 to i64, !dbg !4422
  %181 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %9, align 8, !dbg !4422
  %182 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %181, i32 0, i32 3, !dbg !4423
  %183 = load i8**, i8*** %182, align 8, !dbg !4423
  %184 = getelementptr inbounds i8*, i8** %183, i64 %180, !dbg !4422
  store i8* %178, i8** %184, align 8, !dbg !4424
  br label %185, !dbg !4425

; <label>:185:                                    ; preds = %168, %126
  %186 = load i32, i32* %13, align 4, !dbg !4426
  %187 = sext i32 %186 to i64, !dbg !4427
  %188 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !4427
  %189 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %188, i64 %187, !dbg !4427
  %190 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %189, i32 0, i32 0, !dbg !4428
  %191 = load i8*, i8** %190, align 8, !dbg !4428
  %192 = load i8*, i8** %11, align 8, !dbg !4429
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 184, i8* %191, i8* %192), !dbg !4430
  store i8* null, i8** %12, align 8, !dbg !4431
  br label %193, !dbg !4432

; <label>:193:                                    ; preds = %185, %97, %91
  br label %194

; <label>:194:                                    ; preds = %193, %73
  br label %195, !dbg !4433

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* %13, align 4, !dbg !4434
  %197 = add nsw i32 %196, 1, !dbg !4434
  store i32 %197, i32* %13, align 4, !dbg !4434
  br label %29, !dbg !4436, !llvm.loop !4437

; <label>:198:                                    ; preds = %29
  ret void, !dbg !4439
}

; Function Attrs: nounwind uwtable
define internal void @theme_get_modules(i8*, %struct._FORMAT_REC*, %struct._GSList**) #0 !dbg !4440 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._FORMAT_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  %7 = alloca %struct.THEME_SEARCH_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4444, metadata !480), !dbg !4445
  store %struct._FORMAT_REC* %1, %struct._FORMAT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %5, metadata !4446, metadata !480), !dbg !4447
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !4448, metadata !480), !dbg !4449
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %7, metadata !4450, metadata !480), !dbg !4451
  %8 = call noalias i8* @g_malloc_n(i64 1, i64 16), !dbg !4452
  %9 = bitcast i8* %8 to %struct.THEME_SEARCH_REC*, !dbg !4453
  store %struct.THEME_SEARCH_REC* %9, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4454
  %10 = load i8*, i8** %4, align 8, !dbg !4455
  %11 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4456
  %12 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %11, i32 0, i32 0, !dbg !4457
  store i8* %10, i8** %12, align 8, !dbg !4458
  %13 = load i8*, i8** %4, align 8, !dbg !4459
  %14 = call i8* @strrchr(i8* %13, i32 47) #9, !dbg !4460
  %15 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4461
  %16 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %15, i32 0, i32 1, !dbg !4462
  store i8* %14, i8** %16, align 8, !dbg !4463
  %17 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4464
  %18 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %17, i32 0, i32 1, !dbg !4466
  %19 = load i8*, i8** %18, align 8, !dbg !4466
  %20 = icmp ne i8* %19, null, !dbg !4467
  br i1 %20, label %21, label %26, !dbg !4468

; <label>:21:                                     ; preds = %3
  %22 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4469
  %23 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %22, i32 0, i32 1, !dbg !4470
  %24 = load i8*, i8** %23, align 8, !dbg !4471
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !4471
  store i8* %25, i8** %23, align 8, !dbg !4471
  br label %30, !dbg !4469

; <label>:26:                                     ; preds = %3
  %27 = load i8*, i8** %4, align 8, !dbg !4472
  %28 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4474
  %29 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %28, i32 0, i32 1, !dbg !4475
  store i8* %27, i8** %29, align 8, !dbg !4476
  br label %30

; <label>:30:                                     ; preds = %26, %21
  %31 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !4477
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !4478
  %33 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %7, align 8, !dbg !4479
  %34 = bitcast %struct.THEME_SEARCH_REC* %33 to i8*, !dbg !4479
  %35 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %32, i8* %34, i32 (i8*, i8*)* bitcast (i32 (%struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC*)* @theme_search_equal to i32 (i8*, i8*)*)), !dbg !4480
  %36 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !4481
  store %struct._GSList* %35, %struct._GSList** %36, align 8, !dbg !4482
  ret void, !dbg !4483
}

declare noalias i8* @g_malloc_n(i64, i64) #2

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @theme_search_equal(%struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC*) #0 !dbg !4484 {
  %3 = alloca %struct.THEME_SEARCH_REC*, align 8
  %4 = alloca %struct.THEME_SEARCH_REC*, align 8
  store %struct.THEME_SEARCH_REC* %0, %struct.THEME_SEARCH_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %3, metadata !4487, metadata !480), !dbg !4488
  store %struct.THEME_SEARCH_REC* %1, %struct.THEME_SEARCH_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %4, metadata !4489, metadata !480), !dbg !4490
  %5 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %3, align 8, !dbg !4491
  %6 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %5, i32 0, i32 1, !dbg !4492
  %7 = load i8*, i8** %6, align 8, !dbg !4492
  %8 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %4, align 8, !dbg !4493
  %9 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %8, i32 0, i32 1, !dbg !4494
  %10 = load i8*, i8** %9, align 8, !dbg !4494
  %11 = call i32 @g_ascii_strcasecmp(i8* %7, i8* %10), !dbg !4495
  ret i32 %11, !dbg !4496
}

declare i8* @stristr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @theme_save(%struct.THEME_REC*, i32) #0 !dbg !4497 {
  %3 = alloca %struct.THEME_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct.THEME_SAVE_REC, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %3, metadata !4500, metadata !480), !dbg !4501
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4502, metadata !480), !dbg !4503
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !4504, metadata !480), !dbg !4505
  call void @llvm.dbg.declare(metadata %struct.THEME_SAVE_REC* %6, metadata !4506, metadata !480), !dbg !4512
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4513, metadata !480), !dbg !4514
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4515, metadata !480), !dbg !4516
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4517, metadata !480), !dbg !4518
  %10 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4519
  %11 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %10, i32 0, i32 1, !dbg !4520
  %12 = load i8*, i8** %11, align 8, !dbg !4520
  %13 = call %struct._CONFIG_REC* @config_open(i8* %12, i32 -1), !dbg !4521
  store %struct._CONFIG_REC* %13, %struct._CONFIG_REC** %5, align 8, !dbg !4522
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4523
  %15 = icmp ne %struct._CONFIG_REC* %14, null, !dbg !4525
  br i1 %15, label %16, label %19, !dbg !4526

; <label>:16:                                     ; preds = %2
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4527
  %18 = call i32 @config_parse(%struct._CONFIG_REC* %17), !dbg !4528
  br label %46, !dbg !4528

; <label>:19:                                     ; preds = %2
  %20 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4529
  %21 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %20, i32 0, i32 2, !dbg !4532
  %22 = load i8*, i8** %21, align 8, !dbg !4532
  %23 = call i32 @g_ascii_strcasecmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !4533
  %24 = icmp eq i32 %23, 0, !dbg !4534
  br i1 %24, label %25, label %34, !dbg !4535

; <label>:25:                                     ; preds = %19
  %26 = call %struct._CONFIG_REC* @config_open(i8* null, i32 -1), !dbg !4536
  store %struct._CONFIG_REC* %26, %struct._CONFIG_REC** %5, align 8, !dbg !4538
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4539
  %28 = load i8*, i8** @default_theme, align 8, !dbg !4540
  %29 = call i32 @config_parse_data(%struct._CONFIG_REC* %27, i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)), !dbg !4541
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4542
  %31 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4543
  %32 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %31, i32 0, i32 1, !dbg !4544
  %33 = load i8*, i8** %32, align 8, !dbg !4544
  call void @config_change_file_name(%struct._CONFIG_REC* %30, i8* %33, i32 432), !dbg !4545
  br label %45, !dbg !4546

; <label>:34:                                     ; preds = %19
  %35 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4547
  %36 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %35, i32 0, i32 1, !dbg !4549
  %37 = load i8*, i8** %36, align 8, !dbg !4549
  %38 = call %struct._CONFIG_REC* @config_open(i8* %37, i32 432), !dbg !4550
  store %struct._CONFIG_REC* %38, %struct._CONFIG_REC** %5, align 8, !dbg !4551
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4552
  %40 = icmp eq %struct._CONFIG_REC* %39, null, !dbg !4554
  br i1 %40, label %41, label %42, !dbg !4555

; <label>:41:                                     ; preds = %34
  br label %77, !dbg !4556

; <label>:42:                                     ; preds = %34
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4557
  %44 = call i32 @config_parse(%struct._CONFIG_REC* %43), !dbg !4558
  br label %45

; <label>:45:                                     ; preds = %42, %25
  br label %46

; <label>:46:                                     ; preds = %45, %16
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4559
  %48 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %6, i32 0, i32 0, !dbg !4560
  store %struct._CONFIG_REC* %47, %struct._CONFIG_REC** %48, align 8, !dbg !4561
  %49 = load i32, i32* %4, align 4, !dbg !4562
  %50 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %6, i32 0, i32 1, !dbg !4563
  store i32 %49, i32* %50, align 8, !dbg !4564
  %51 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4565
  %52 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %51, i32 0, i32 6, !dbg !4566
  %53 = load %struct._GHashTable*, %struct._GHashTable** %52, align 8, !dbg !4566
  %54 = bitcast %struct.THEME_SAVE_REC* %6 to i8*, !dbg !4567
  call void @g_hash_table_foreach(%struct._GHashTable* %53, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.MODULE_THEME_REC*, %struct.THEME_SAVE_REC*)* @module_save to void (i8*, i8*, i8*)*), i8* %54), !dbg !4568
  %55 = load %struct.THEME_REC*, %struct.THEME_REC** %3, align 8, !dbg !4569
  %56 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %55, i32 0, i32 1, !dbg !4570
  %57 = load i8*, i8** %56, align 8, !dbg !4570
  %58 = call noalias i8* @g_path_get_basename(i8* %57), !dbg !4571
  store i8* %58, i8** %8, align 8, !dbg !4572
  %59 = call i8* @get_irssi_dir(), !dbg !4573
  %60 = load i8*, i8** %8, align 8, !dbg !4574
  %61 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* %59, i8* %60), !dbg !4575
  store i8* %61, i8** %7, align 8, !dbg !4577
  %62 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4578
  %63 = load i8*, i8** %7, align 8, !dbg !4579
  %64 = call i32 @config_write(%struct._CONFIG_REC* %62, i8* %63, i32 432), !dbg !4580
  %65 = icmp eq i32 %64, 0, !dbg !4581
  %66 = zext i1 %65 to i32, !dbg !4581
  store i32 %66, i32* %9, align 4, !dbg !4582
  %67 = load i8*, i8** %8, align 8, !dbg !4583
  call void @g_free(i8* %67), !dbg !4584
  %68 = load i32, i32* %9, align 4, !dbg !4585
  %69 = icmp ne i32 %68, 0, !dbg !4585
  %70 = select i1 %69, i32 174, i32 175, !dbg !4585
  %71 = load i8*, i8** %7, align 8, !dbg !4586
  %72 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4587
  %73 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %72, i32 0, i32 3, !dbg !4588
  %74 = load i8*, i8** %73, align 8, !dbg !4588
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 %70, i8* %71, i8* %74), !dbg !4589
  %75 = load i8*, i8** %7, align 8, !dbg !4590
  call void @g_free(i8* %75), !dbg !4591
  %76 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !4592
  call void @config_close(%struct._CONFIG_REC* %76), !dbg !4593
  br label %77, !dbg !4594

; <label>:77:                                     ; preds = %46, %41
  ret void, !dbg !4595
}

declare void @config_change_file_name(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @module_save(i8*, %struct.MODULE_THEME_REC*, %struct.THEME_SAVE_REC*) #0 !dbg !4596 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MODULE_THEME_REC*, align 8
  %6 = alloca %struct.THEME_SAVE_REC*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca %struct._FORMAT_REC*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4600, metadata !480), !dbg !4601
  store %struct.MODULE_THEME_REC* %1, %struct.MODULE_THEME_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %5, metadata !4602, metadata !480), !dbg !4603
  store %struct.THEME_SAVE_REC* %2, %struct.THEME_SAVE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_SAVE_REC** %6, metadata !4604, metadata !480), !dbg !4605
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !4606, metadata !480), !dbg !4607
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !4608, metadata !480), !dbg !4609
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %9, metadata !4610, metadata !480), !dbg !4611
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4612, metadata !480), !dbg !4613
  %11 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !4614
  %12 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !4615
  %13 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %12, i32 0, i32 0, !dbg !4616
  %14 = load i8*, i8** %13, align 8, !dbg !4616
  %15 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %14), !dbg !4617
  %16 = bitcast i8* %15 to %struct._FORMAT_REC*, !dbg !4617
  store %struct._FORMAT_REC* %16, %struct._FORMAT_REC** %9, align 8, !dbg !4618
  %17 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4619
  %18 = icmp eq %struct._FORMAT_REC* %17, null, !dbg !4621
  br i1 %18, label %19, label %20, !dbg !4622

; <label>:19:                                     ; preds = %3
  br label %129, !dbg !4623

; <label>:20:                                     ; preds = %3
  %21 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4625
  %22 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %21, i32 0, i32 0, !dbg !4626
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %22, align 8, !dbg !4626
  %24 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 1), !dbg !4627
  store %struct._CONFIG_NODE* %24, %struct._CONFIG_NODE** %7, align 8, !dbg !4628
  %25 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4629
  %26 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %25, i32 0, i32 0, !dbg !4630
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %26, align 8, !dbg !4630
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !4631
  %29 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !4632
  %30 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %29, i32 0, i32 0, !dbg !4633
  %31 = load i8*, i8** %30, align 8, !dbg !4633
  %32 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %27, %struct._CONFIG_NODE* %28, i8* %31, i32 2), !dbg !4634
  store %struct._CONFIG_NODE* %32, %struct._CONFIG_NODE** %8, align 8, !dbg !4635
  store i32 1, i32* %10, align 4, !dbg !4636
  br label %33, !dbg !4638

; <label>:33:                                     ; preds = %100, %20
  %34 = load i32, i32* %10, align 4, !dbg !4639
  %35 = sext i32 %34 to i64, !dbg !4642
  %36 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4642
  %37 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %36, i64 %35, !dbg !4642
  %38 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %37, i32 0, i32 1, !dbg !4643
  %39 = load i8*, i8** %38, align 8, !dbg !4643
  %40 = icmp ne i8* %39, null, !dbg !4644
  br i1 %40, label %41, label %103, !dbg !4645

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %10, align 4, !dbg !4646
  %43 = sext i32 %42 to i64, !dbg !4649
  %44 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !4649
  %45 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %44, i32 0, i32 2, !dbg !4650
  %46 = load i8**, i8*** %45, align 8, !dbg !4650
  %47 = getelementptr inbounds i8*, i8** %46, i64 %43, !dbg !4649
  %48 = load i8*, i8** %47, align 8, !dbg !4649
  %49 = icmp ne i8* %48, null, !dbg !4651
  br i1 %49, label %50, label %68, !dbg !4652

; <label>:50:                                     ; preds = %41
  %51 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4653
  %52 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %51, i32 0, i32 0, !dbg !4655
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %52, align 8, !dbg !4655
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !4656
  %55 = load i32, i32* %10, align 4, !dbg !4657
  %56 = sext i32 %55 to i64, !dbg !4658
  %57 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4658
  %58 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %57, i64 %56, !dbg !4658
  %59 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %58, i32 0, i32 0, !dbg !4659
  %60 = load i8*, i8** %59, align 8, !dbg !4659
  %61 = load i32, i32* %10, align 4, !dbg !4660
  %62 = sext i32 %61 to i64, !dbg !4661
  %63 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %5, align 8, !dbg !4661
  %64 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %63, i32 0, i32 2, !dbg !4662
  %65 = load i8**, i8*** %64, align 8, !dbg !4662
  %66 = getelementptr inbounds i8*, i8** %65, i64 %62, !dbg !4661
  %67 = load i8*, i8** %66, align 8, !dbg !4661
  call void @config_node_set_str(%struct._CONFIG_REC* %53, %struct._CONFIG_NODE* %54, i8* %60, i8* %67), !dbg !4663
  br label %99, !dbg !4664

; <label>:68:                                     ; preds = %41
  %69 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4665
  %70 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %69, i32 0, i32 1, !dbg !4668
  %71 = load i32, i32* %70, align 8, !dbg !4668
  %72 = icmp ne i32 %71, 0, !dbg !4665
  br i1 %72, label %73, label %98, !dbg !4669

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %10, align 4, !dbg !4670
  %75 = sext i32 %74 to i64, !dbg !4672
  %76 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4672
  %77 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %76, i64 %75, !dbg !4672
  %78 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %77, i32 0, i32 0, !dbg !4673
  %79 = load i8*, i8** %78, align 8, !dbg !4673
  %80 = icmp ne i8* %79, null, !dbg !4674
  br i1 %80, label %81, label %98, !dbg !4675

; <label>:81:                                     ; preds = %73
  %82 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4676
  %83 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %82, i32 0, i32 0, !dbg !4678
  %84 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %83, align 8, !dbg !4678
  %85 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !4679
  %86 = load i32, i32* %10, align 4, !dbg !4680
  %87 = sext i32 %86 to i64, !dbg !4681
  %88 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4681
  %89 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %88, i64 %87, !dbg !4681
  %90 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %89, i32 0, i32 0, !dbg !4682
  %91 = load i8*, i8** %90, align 8, !dbg !4682
  %92 = load i32, i32* %10, align 4, !dbg !4683
  %93 = sext i32 %92 to i64, !dbg !4684
  %94 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %9, align 8, !dbg !4684
  %95 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %94, i64 %93, !dbg !4684
  %96 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %95, i32 0, i32 1, !dbg !4685
  %97 = load i8*, i8** %96, align 8, !dbg !4685
  call void @config_node_set_str(%struct._CONFIG_REC* %84, %struct._CONFIG_NODE* %85, i8* %91, i8* %97), !dbg !4686
  br label %98, !dbg !4687

; <label>:98:                                     ; preds = %81, %73, %68
  br label %99

; <label>:99:                                     ; preds = %98, %50
  br label %100, !dbg !4688

; <label>:100:                                    ; preds = %99
  %101 = load i32, i32* %10, align 4, !dbg !4689
  %102 = add nsw i32 %101, 1, !dbg !4689
  store i32 %102, i32* %10, align 4, !dbg !4689
  br label %33, !dbg !4691, !llvm.loop !4692

; <label>:103:                                    ; preds = %33
  %104 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !4694
  %105 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %104, i32 0, i32 2, !dbg !4696
  %106 = load i8*, i8** %105, align 8, !dbg !4696
  %107 = icmp eq i8* %106, null, !dbg !4697
  br i1 %107, label %108, label %129, !dbg !4698

; <label>:108:                                    ; preds = %103
  %109 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4699
  %110 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %109, i32 0, i32 0, !dbg !4701
  %111 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %110, align 8, !dbg !4701
  %112 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !4702
  %113 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !4703
  call void @config_node_remove(%struct._CONFIG_REC* %111, %struct._CONFIG_NODE* %112, %struct._CONFIG_NODE* %113), !dbg !4704
  %114 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !4705
  %115 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %114, i32 0, i32 2, !dbg !4707
  %116 = load i8*, i8** %115, align 8, !dbg !4707
  %117 = icmp eq i8* %116, null, !dbg !4708
  br i1 %117, label %118, label %128, !dbg !4709

; <label>:118:                                    ; preds = %108
  %119 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4710
  %120 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %119, i32 0, i32 0, !dbg !4712
  %121 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %120, align 8, !dbg !4712
  %122 = load %struct.THEME_SAVE_REC*, %struct.THEME_SAVE_REC** %6, align 8, !dbg !4713
  %123 = getelementptr inbounds %struct.THEME_SAVE_REC, %struct.THEME_SAVE_REC* %122, i32 0, i32 0, !dbg !4714
  %124 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %123, align 8, !dbg !4714
  %125 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %124, i32 0, i32 4, !dbg !4715
  %126 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %125, align 8, !dbg !4715
  %127 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !4716
  call void @config_node_remove(%struct._CONFIG_REC* %121, %struct._CONFIG_NODE* %126, %struct._CONFIG_NODE* %127), !dbg !4717
  br label %128, !dbg !4718

; <label>:128:                                    ; preds = %118, %108
  br label %129, !dbg !4719

; <label>:129:                                    ; preds = %19, %128, %103
  ret void, !dbg !4720
}

declare noalias i8* @g_path_get_basename(i8*) #2

declare i32 @config_write(%struct._CONFIG_REC*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_formats(i8*, i8*) #0 !dbg !4721 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GList*, align 8
  %9 = alloca %struct.THEME_SEARCH_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4724, metadata !480), !dbg !4725
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4726, metadata !480), !dbg !4727
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !4728, metadata !480), !dbg !4729
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !4730, metadata !480), !dbg !4731
  call void @llvm.dbg.declare(metadata %struct._GList** %8, metadata !4732, metadata !480), !dbg !4733
  br label %10, !dbg !4734, !llvm.loop !4735

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !4736
  %12 = icmp ne i8* %11, null, !dbg !4740
  br i1 %12, label %13, label %14, !dbg !4736

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !4741

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_formats, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0)), !dbg !4744
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !4747
  br label %61, !dbg !4747

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !4748

; <label>:16:                                     ; preds = %15
  store %struct._GList* null, %struct._GList** %8, align 8, !dbg !4750
  %17 = call %struct._GSList* @get_sorted_modules(), !dbg !4751
  store %struct._GSList* %17, %struct._GSList** %6, align 8, !dbg !4752
  %18 = load i8*, i8** %4, align 8, !dbg !4753
  %19 = load i8, i8* %18, align 1, !dbg !4755
  %20 = sext i8 %19 to i32, !dbg !4755
  %21 = icmp eq i32 %20, 0, !dbg !4756
  br i1 %21, label %27, label %22, !dbg !4757

; <label>:22:                                     ; preds = %16
  %23 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4758
  %24 = load i8*, i8** %4, align 8, !dbg !4760
  %25 = call %struct.THEME_SEARCH_REC* @theme_search(%struct._GSList* %23, i8* %24), !dbg !4761
  %26 = icmp ne %struct.THEME_SEARCH_REC* %25, null, !dbg !4762
  br i1 %26, label %27, label %57, !dbg !4763

; <label>:27:                                     ; preds = %22, %16
  %28 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4764
  store %struct._GSList* %28, %struct._GSList** %7, align 8, !dbg !4767
  br label %29, !dbg !4768

; <label>:29:                                     ; preds = %52, %27
  %30 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4769
  %31 = icmp ne %struct._GSList* %30, null, !dbg !4772
  br i1 %31, label %32, label %56, !dbg !4773

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %9, metadata !4774, metadata !480), !dbg !4776
  %33 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4777
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !4778
  %35 = load i8*, i8** %34, align 8, !dbg !4778
  %36 = bitcast i8* %35 to %struct.THEME_SEARCH_REC*, !dbg !4777
  store %struct.THEME_SEARCH_REC* %36, %struct.THEME_SEARCH_REC** %9, align 8, !dbg !4776
  %37 = load i8*, i8** %4, align 8, !dbg !4779
  %38 = load i8, i8* %37, align 1, !dbg !4781
  %39 = sext i8 %38 to i32, !dbg !4781
  %40 = icmp eq i32 %39, 0, !dbg !4782
  br i1 %40, label %48, label %41, !dbg !4783

; <label>:41:                                     ; preds = %32
  %42 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %9, align 8, !dbg !4784
  %43 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %42, i32 0, i32 1, !dbg !4786
  %44 = load i8*, i8** %43, align 8, !dbg !4786
  %45 = load i8*, i8** %4, align 8, !dbg !4787
  %46 = call i32 @g_ascii_strcasecmp(i8* %44, i8* %45), !dbg !4788
  %47 = icmp eq i32 %46, 0, !dbg !4789
  br i1 %47, label %48, label %51, !dbg !4790

; <label>:48:                                     ; preds = %41, %32
  %49 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %9, align 8, !dbg !4791
  %50 = load i8*, i8** %5, align 8, !dbg !4792
  call void @complete_format_list(%struct.THEME_SEARCH_REC* %49, i8* %50, %struct._GList** %8), !dbg !4793
  br label %51, !dbg !4793

; <label>:51:                                     ; preds = %48, %41
  br label %52, !dbg !4794

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !4795
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !4797
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !4797
  store %struct._GSList* %55, %struct._GSList** %7, align 8, !dbg !4798
  br label %29, !dbg !4799, !llvm.loop !4800

; <label>:56:                                     ; preds = %29
  br label %57, !dbg !4802

; <label>:57:                                     ; preds = %56, %22
  %58 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4803
  call void @g_slist_foreach(%struct._GSList* %58, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !4804
  %59 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4805
  call void @g_slist_free(%struct._GSList* %59), !dbg !4806
  %60 = load %struct._GList*, %struct._GList** %8, align 8, !dbg !4807
  store %struct._GList* %60, %struct._GList** %3, align 8, !dbg !4808
  br label %61, !dbg !4808

; <label>:61:                                     ; preds = %57, %14
  %62 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !4809
  ret %struct._GList* %62, !dbg !4809
}

declare void @signal_stop() #2

; Function Attrs: nounwind uwtable
define internal void @complete_format_list(%struct.THEME_SEARCH_REC*, i8*, %struct._GList**) #0 !dbg !4810 {
  %4 = alloca %struct.THEME_SEARCH_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._FORMAT_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.THEME_SEARCH_REC* %0, %struct.THEME_SEARCH_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_SEARCH_REC** %4, metadata !4813, metadata !480), !dbg !4814
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4815, metadata !480), !dbg !4816
  store %struct._GList** %2, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !4817, metadata !480), !dbg !4818
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %7, metadata !4819, metadata !480), !dbg !4820
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4821, metadata !480), !dbg !4822
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4823, metadata !480), !dbg !4824
  %11 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !4825
  %12 = load %struct.THEME_SEARCH_REC*, %struct.THEME_SEARCH_REC** %4, align 8, !dbg !4826
  %13 = getelementptr inbounds %struct.THEME_SEARCH_REC, %struct.THEME_SEARCH_REC* %12, i32 0, i32 0, !dbg !4827
  %14 = load i8*, i8** %13, align 8, !dbg !4827
  %15 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %14), !dbg !4828
  %16 = bitcast i8* %15 to %struct._FORMAT_REC*, !dbg !4828
  store %struct._FORMAT_REC* %16, %struct._FORMAT_REC** %7, align 8, !dbg !4829
  %17 = load i8*, i8** %5, align 8, !dbg !4830
  %18 = call i64 @strlen(i8* %17) #9, !dbg !4831
  %19 = trunc i64 %18 to i32, !dbg !4831
  store i32 %19, i32* %9, align 4, !dbg !4832
  store i32 1, i32* %8, align 4, !dbg !4833
  br label %20, !dbg !4835

; <label>:20:                                     ; preds = %52, %3
  %21 = load i32, i32* %8, align 4, !dbg !4836
  %22 = sext i32 %21 to i64, !dbg !4839
  %23 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %7, align 8, !dbg !4839
  %24 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %23, i64 %22, !dbg !4839
  %25 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %24, i32 0, i32 1, !dbg !4840
  %26 = load i8*, i8** %25, align 8, !dbg !4840
  %27 = icmp ne i8* %26, null, !dbg !4841
  br i1 %27, label %28, label %55, !dbg !4842

; <label>:28:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4843, metadata !480), !dbg !4845
  %29 = load i32, i32* %8, align 4, !dbg !4846
  %30 = sext i32 %29 to i64, !dbg !4847
  %31 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %7, align 8, !dbg !4847
  %32 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %31, i64 %30, !dbg !4847
  %33 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %32, i32 0, i32 0, !dbg !4848
  %34 = load i8*, i8** %33, align 8, !dbg !4848
  store i8* %34, i8** %10, align 8, !dbg !4845
  %35 = load i8*, i8** %10, align 8, !dbg !4849
  %36 = icmp ne i8* %35, null, !dbg !4851
  br i1 %36, label %37, label %51, !dbg !4852

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %10, align 8, !dbg !4853
  %39 = load i8*, i8** %5, align 8, !dbg !4855
  %40 = load i32, i32* %9, align 4, !dbg !4856
  %41 = sext i32 %40 to i64, !dbg !4856
  %42 = call i32 @g_ascii_strncasecmp(i8* %38, i8* %39, i64 %41), !dbg !4857
  %43 = icmp eq i32 %42, 0, !dbg !4858
  br i1 %43, label %44, label %51, !dbg !4859

; <label>:44:                                     ; preds = %37
  %45 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4860
  %46 = load %struct._GList*, %struct._GList** %45, align 8, !dbg !4861
  %47 = load i8*, i8** %10, align 8, !dbg !4862
  %48 = call noalias i8* @g_strdup(i8* %47), !dbg !4863
  %49 = call %struct._GList* @g_list_append(%struct._GList* %46, i8* %48), !dbg !4864
  %50 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4865
  store %struct._GList* %49, %struct._GList** %50, align 8, !dbg !4866
  br label %51, !dbg !4867

; <label>:51:                                     ; preds = %44, %37, %28
  br label %52, !dbg !4868

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %8, align 4, !dbg !4869
  %54 = add nsw i32 %53, 1, !dbg !4869
  store i32 %54, i32* %8, align 4, !dbg !4869
  br label %20, !dbg !4871, !llvm.loop !4872

; <label>:55:                                     ; preds = %20
  ret void, !dbg !4874
}

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!473, !474}
!llvm.ident = !{!475}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !358, globals: !454)
!1 = !DIFile(filename: "line258-themes.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !18, !45, !52, !57, !66, !77, !108, !116}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 75, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!21 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!22 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!23 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!24 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!25 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!26 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!27 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!28 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!29 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!30 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!31 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!32 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!33 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!34 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!35 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!36 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!37 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!38 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!39 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!40 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!41 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!42 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!43 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!44 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 69, size: 32, align: 32, elements: !47)
!46 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!49 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!50 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!51 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 77, size: 32, align: 32, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!55 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!56 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 31, size: 32, align: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DIEnumerator(name: "G_IO_IN", value: 1)
!61 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!62 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!63 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!64 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!65 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 84, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76}
!68 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!69 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!70 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!71 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!72 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!73 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!74 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!75 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!76 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 10, size: 32, align: 32, elements: !79)
!78 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!80 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!81 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!82 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!83 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!84 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!85 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!86 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!87 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!88 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!89 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!90 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!91 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!92 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!93 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!94 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!95 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!96 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!97 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!98 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!99 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!100 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!101 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!102 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!103 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!104 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!105 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!106 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!107 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 4, size: 32, align: 32, elements: !110)
!109 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!112 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!113 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!114 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!115 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 3, size: 32, align: 32, elements: !118)
!117 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!119 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!120 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!121 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!122 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!123 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!124 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!125 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!126 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!127 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!128 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!129 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!130 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!131 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!132 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!133 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!134 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!135 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!136 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!137 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!138 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!139 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!140 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!141 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!142 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!143 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!144 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!145 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!146 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!147 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!148 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!149 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!150 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!151 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!152 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!153 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!154 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!155 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!156 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!157 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!158 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!159 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!160 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!161 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!162 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!163 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!164 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!165 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!166 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!167 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!168 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!169 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!170 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!171 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!172 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!173 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!174 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!175 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!176 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!177 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!178 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!179 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!180 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!181 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!182 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!183 = !DIEnumerator(name: "TXT_PART", value: 64)
!184 = !DIEnumerator(name: "TXT_KICK", value: 65)
!185 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!186 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!187 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!188 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!189 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!190 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!191 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!192 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!193 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!194 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!195 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!196 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!197 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!198 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!199 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!200 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!201 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!202 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!203 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!204 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!205 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!206 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!207 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!208 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!209 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!210 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!211 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!212 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!213 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!214 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!215 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!216 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!217 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!218 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!219 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!220 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!221 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!222 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!223 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!224 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!225 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!226 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!227 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!228 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!229 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!230 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!231 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!232 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!233 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!234 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!235 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!236 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!237 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!238 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!239 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!240 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!241 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!242 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!243 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!244 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!245 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!246 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!247 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!248 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!249 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!250 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!251 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!252 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!253 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!254 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!255 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!256 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!257 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!258 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!259 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!260 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!261 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!262 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!263 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!264 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!265 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!266 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!267 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!268 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!269 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!270 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!271 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!272 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!273 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!274 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!275 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!276 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!277 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!278 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!279 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!280 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!281 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!282 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!283 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!284 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!285 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!286 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!287 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!288 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!289 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!290 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!291 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!292 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!293 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!294 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!295 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!296 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!297 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!298 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!299 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!300 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!301 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!302 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!303 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!304 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!305 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!306 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!307 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!308 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!309 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!310 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!311 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!312 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!313 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!314 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!315 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!316 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!317 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!318 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!319 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!320 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!321 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!322 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!323 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!324 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!325 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!326 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!327 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!328 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!329 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!330 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!331 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!332 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!333 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!334 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!335 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!336 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!337 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!338 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!339 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!340 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!341 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!342 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!343 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!344 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!345 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!346 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!347 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!348 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!349 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!350 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!351 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!352 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!353 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!354 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!355 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!356 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!357 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!358 = !{!359, !360, !364, !366, !405, !413, !418, !423, !427, !372, !431, !432, !433, !434, !435, !439, !447}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !362, line: 46, baseType: !363)
!362 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!363 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !368, line: 33, baseType: !369)
!368 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 13, size: 8768, align: 64, elements: !370)
!370 = !{!371, !373, !375, !376, !382, !383, !385, !390, !394, !403, !404}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !369, file: !368, line: 14, baseType: !372, size: 32, align: 32)
!372 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !369, file: !368, line: 16, baseType: !374, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !368, line: 17, baseType: !374, size: 64, align: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !369, file: !368, line: 18, baseType: !377, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !378, line: 75, baseType: !379)
!378 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !380, line: 139, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!381 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !369, file: !368, line: 20, baseType: !372, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !369, file: !368, line: 23, baseType: !384, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!384 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !369, file: !368, line: 26, baseType: !386, size: 64, align: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !388, line: 37, baseType: !389)
!388 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !388, line: 37, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !369, file: !368, line: 28, baseType: !391, size: 8192, align: 32, offset: 384)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 8192, align: 32, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !369, file: !368, line: 29, baseType: !395, size: 64, align: 64, offset: 8576)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !397, line: 37, baseType: !398)
!397 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !397, line: 39, size: 128, align: 64, elements: !399)
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !398, file: !397, line: 41, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !362, line: 77, baseType: !359)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !397, line: 42, baseType: !395, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !369, file: !368, line: 30, baseType: !386, size: 64, align: 64, offset: 8640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !369, file: !368, line: 32, baseType: !359, size: 64, align: 64, offset: 8704)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !362, line: 90, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !362, line: 55, baseType: !384)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !362, line: 78, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !362, line: 80, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !410, !410}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !362, line: 49, baseType: !372)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !419, line: 9, baseType: !420)
!419 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !411, !411, !411, !411, !411, !411}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !362, line: 91, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !401, !401, !401}
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !362, line: 88, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !401, !401}
!431 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!433 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareDataFunc", file: !362, line: 82, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!417, !410, !410, !401}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_THEME_REC", file: !368, line: 11, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 4, size: 256, align: 64, elements: !442)
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !441, file: !368, line: 5, baseType: !374, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !368, line: 7, baseType: !372, size: 32, align: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !441, file: !368, line: 8, baseType: !432, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "expanded_formats", scope: !441, file: !368, line: 9, baseType: !432, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_SEARCH_REC", file: !449, line: 1063, baseType: !450)
!449 = !DIFile(filename: "themes.c", directory: "/home/lichi/Desktop/irssi/task1")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 1060, size: 128, align: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !450, file: !449, line: 1061, baseType: !374, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !450, file: !449, line: 1062, baseType: !374, size: 64, align: 64, offset: 64)
!454 = !{!455, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!455 = distinct !DIGlobalVariable(name: "default_theme", scope: !0, file: !456, line: 1, type: !364, isLocal: false, isDefinition: true, variable: i8** @default_theme)
!456 = !DIFile(filename: "../../../default-theme.h", directory: "/home/lichi/Desktop/irssi/task1")
!457 = distinct !DIGlobalVariable(name: "themes", scope: !0, file: !449, line: 36, type: !395, isLocal: false, isDefinition: true, variable: %struct._GSList** @themes)
!458 = distinct !DIGlobalVariable(name: "current_theme", scope: !0, file: !449, line: 37, type: !366, isLocal: false, isDefinition: true, variable: %struct.THEME_REC** @current_theme)
!459 = distinct !DIGlobalVariable(name: "default_formats", scope: !0, file: !449, line: 38, type: !386, isLocal: false, isDefinition: true, variable: %struct._GHashTable** @default_formats)
!460 = distinct !DIGlobalVariable(name: "init_finished", scope: !0, file: !449, line: 40, type: !372, isLocal: true, isDefinition: true, variable: i32* @init_finished)
!461 = distinct !DIGlobalVariable(name: "init_errors", scope: !0, file: !449, line: 41, type: !374, isLocal: true, isDefinition: true, variable: i8** @init_errors)
!462 = distinct !DIGlobalVariable(name: "internal_theme", scope: !0, file: !449, line: 42, type: !366, isLocal: true, isDefinition: true, variable: %struct.THEME_REC** @internal_theme)
!463 = distinct !DIGlobalVariable(name: "fgcolorformats", scope: !0, file: !449, line: 140, type: !364, isLocal: true, isDefinition: true, variable: i8** @fgcolorformats)
!464 = distinct !DIGlobalVariable(name: "bgcolorformats", scope: !0, file: !449, line: 141, type: !364, isLocal: true, isDefinition: true, variable: i8** @bgcolorformats)
!465 = distinct !DIGlobalVariable(name: "arglist", scope: !466, file: !449, line: 314, type: !470, isLocal: true, isDefinition: true, variable: [11 x i8*]* @data_is_empty.arglist)
!466 = distinct !DISubprogram(name: "data_is_empty", scope: !449, file: !449, line: 310, type: !467, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!372, !434}
!469 = !{}
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 704, align: 64, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 11)
!473 = !{i32 2, !"Dwarf Version", i32 4}
!474 = !{i32 2, !"Debug Info Version", i32 3}
!475 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!476 = distinct !DISubprogram(name: "theme_create", scope: !449, file: !449, line: 46, type: !477, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!477 = !DISubroutineType(types: !478)
!478 = !{!366, !364, !364}
!479 = !DILocalVariable(name: "path", arg: 1, scope: !476, file: !449, line: 46, type: !364)
!480 = !DIExpression()
!481 = !DILocation(line: 46, column: 37, scope: !476)
!482 = !DILocalVariable(name: "name", arg: 2, scope: !476, file: !449, line: 46, type: !364)
!483 = !DILocation(line: 46, column: 55, scope: !476)
!484 = !DILocalVariable(name: "rec", scope: !476, file: !449, line: 48, type: !366)
!485 = !DILocation(line: 48, column: 13, scope: !476)
!486 = !DILocation(line: 50, column: 2, scope: !476)
!487 = distinct !{!487, !486}
!488 = !DILocation(line: 50, column: 10, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !449, discriminator: 1)
!490 = distinct !DILexicalBlock(scope: !491, file: !449, line: 50, column: 10)
!491 = distinct !DILexicalBlock(scope: !476, file: !449, line: 50, column: 4)
!492 = !DILocation(line: 50, column: 15, scope: !489)
!493 = !DILocation(line: 50, column: 5, scope: !494)
!494 = !DILexicalBlockFile(scope: !495, file: !449, discriminator: 2)
!495 = distinct !DILexicalBlock(scope: !490, file: !449, line: 50, column: 3)
!496 = !DILocation(line: 50, column: 14, scope: !497)
!497 = !DILexicalBlockFile(scope: !498, file: !449, discriminator: 3)
!498 = distinct !DILexicalBlock(scope: !490, file: !449, line: 50, column: 12)
!499 = !DILocation(line: 50, column: 99, scope: !497)
!500 = !DILocation(line: 50, column: 7, scope: !501)
!501 = !DILexicalBlockFile(scope: !491, file: !449, discriminator: 4)
!502 = !DILocation(line: 51, column: 2, scope: !476)
!503 = distinct !{!503, !502}
!504 = !DILocation(line: 51, column: 10, scope: !505)
!505 = !DILexicalBlockFile(scope: !506, file: !449, discriminator: 1)
!506 = distinct !DILexicalBlock(scope: !507, file: !449, line: 51, column: 10)
!507 = distinct !DILexicalBlock(scope: !476, file: !449, line: 51, column: 4)
!508 = !DILocation(line: 51, column: 15, scope: !505)
!509 = !DILocation(line: 51, column: 5, scope: !510)
!510 = !DILexicalBlockFile(scope: !511, file: !449, discriminator: 2)
!511 = distinct !DILexicalBlock(scope: !506, file: !449, line: 51, column: 3)
!512 = !DILocation(line: 51, column: 14, scope: !513)
!513 = !DILexicalBlockFile(scope: !514, file: !449, discriminator: 3)
!514 = distinct !DILexicalBlock(scope: !506, file: !449, line: 51, column: 12)
!515 = !DILocation(line: 51, column: 99, scope: !513)
!516 = !DILocation(line: 51, column: 7, scope: !517)
!517 = !DILexicalBlockFile(scope: !507, file: !449, discriminator: 4)
!518 = !DILocation(line: 53, column: 23, scope: !476)
!519 = !DILocation(line: 53, column: 9, scope: !476)
!520 = !DILocation(line: 53, column: 6, scope: !476)
!521 = !DILocation(line: 54, column: 2, scope: !476)
!522 = !DILocation(line: 54, column: 7, scope: !476)
!523 = !DILocation(line: 54, column: 16, scope: !476)
!524 = !DILocation(line: 55, column: 23, scope: !476)
!525 = !DILocation(line: 55, column: 14, scope: !476)
!526 = !DILocation(line: 55, column: 2, scope: !476)
!527 = !DILocation(line: 55, column: 7, scope: !476)
!528 = !DILocation(line: 55, column: 12, scope: !476)
!529 = !DILocation(line: 56, column: 23, scope: !476)
!530 = !DILocation(line: 56, column: 14, scope: !476)
!531 = !DILocation(line: 56, column: 2, scope: !476)
!532 = !DILocation(line: 56, column: 7, scope: !476)
!533 = !DILocation(line: 56, column: 12, scope: !476)
!534 = !DILocation(line: 57, column: 19, scope: !476)
!535 = !DILocation(line: 57, column: 2, scope: !476)
!536 = !DILocation(line: 57, column: 7, scope: !476)
!537 = !DILocation(line: 57, column: 17, scope: !476)
!538 = !DILocation(line: 59, column: 17, scope: !476)
!539 = !DILocation(line: 59, column: 2, scope: !476)
!540 = !DILocation(line: 59, column: 7, scope: !476)
!541 = !DILocation(line: 59, column: 15, scope: !476)
!542 = !DILocation(line: 61, column: 26, scope: !476)
!543 = !DILocation(line: 61, column: 34, scope: !476)
!544 = !DILocation(line: 61, column: 11, scope: !476)
!545 = !DILocation(line: 61, column: 9, scope: !476)
!546 = !DILocation(line: 62, column: 34, scope: !476)
!547 = !DILocation(line: 62, column: 2, scope: !476)
!548 = !DILocation(line: 64, column: 9, scope: !476)
!549 = !DILocation(line: 64, column: 2, scope: !476)
!550 = !DILocation(line: 65, column: 1, scope: !476)
!551 = distinct !DISubprogram(name: "theme_destroy", scope: !449, file: !449, line: 109, type: !552, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !366}
!554 = !DILocalVariable(name: "rec", arg: 1, scope: !551, file: !449, line: 109, type: !366)
!555 = !DILocation(line: 109, column: 31, scope: !551)
!556 = !DILocation(line: 111, column: 26, scope: !551)
!557 = !DILocation(line: 111, column: 34, scope: !551)
!558 = !DILocation(line: 111, column: 11, scope: !551)
!559 = !DILocation(line: 111, column: 9, scope: !551)
!560 = !DILocation(line: 112, column: 36, scope: !551)
!561 = !DILocation(line: 112, column: 2, scope: !551)
!562 = !DILocation(line: 114, column: 14, scope: !551)
!563 = !DILocation(line: 114, column: 2, scope: !551)
!564 = !DILocation(line: 115, column: 1, scope: !551)
!565 = distinct !DISubprogram(name: "theme_unref", scope: !449, file: !449, line: 103, type: !552, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!566 = !DILocalVariable(name: "rec", arg: 1, scope: !565, file: !449, line: 103, type: !366)
!567 = !DILocation(line: 103, column: 36, scope: !565)
!568 = !DILocation(line: 105, column: 8, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !449, line: 105, column: 6)
!570 = !DILocation(line: 105, column: 13, scope: !569)
!571 = !DILocation(line: 105, column: 6, scope: !569)
!572 = !DILocation(line: 105, column: 22, scope: !569)
!573 = !DILocation(line: 105, column: 6, scope: !565)
!574 = !DILocation(line: 106, column: 22, scope: !569)
!575 = !DILocation(line: 106, column: 3, scope: !569)
!576 = !DILocation(line: 107, column: 1, scope: !565)
!577 = distinct !DISubprogram(name: "theme_format_expand_get", scope: !449, file: !449, line: 363, type: !578, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!578 = !DISubroutineType(types: !579)
!579 = !{!374, !366, !434}
!580 = !DILocalVariable(name: "theme", arg: 1, scope: !577, file: !449, line: 363, type: !366)
!581 = !DILocation(line: 363, column: 42, scope: !577)
!582 = !DILocalVariable(name: "format", arg: 2, scope: !577, file: !449, line: 363, type: !434)
!583 = !DILocation(line: 363, column: 62, scope: !577)
!584 = !DILocalVariable(name: "str", scope: !577, file: !449, line: 365, type: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !587, line: 39, baseType: !588)
!587 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !587, line: 41, size: 192, align: 64, elements: !589)
!589 = !{!590, !591, !595}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !588, file: !587, line: 43, baseType: !360, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !588, file: !587, line: 44, baseType: !592, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !593, line: 66, baseType: !594)
!593 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!594 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !588, file: !587, line: 45, baseType: !592, size: 64, align: 64, offset: 128)
!596 = !DILocation(line: 365, column: 11, scope: !577)
!597 = !DILocalVariable(name: "ret", scope: !577, file: !449, line: 366, type: !374)
!598 = !DILocation(line: 366, column: 8, scope: !577)
!599 = !DILocalVariable(name: "dummy", scope: !577, file: !449, line: 367, type: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "theme_rm_col", file: !368, line: 62, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 60, size: 64, align: 8, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !601, file: !368, line: 61, baseType: !604, size: 64, align: 8)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 64, align: 8, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 8)
!607 = !DILocation(line: 367, column: 15, scope: !577)
!608 = !DILocalVariable(name: "reset", scope: !577, file: !449, line: 367, type: !600)
!609 = !DILocation(line: 367, column: 22, scope: !577)
!610 = !DILocalVariable(name: "braces", scope: !577, file: !449, line: 368, type: !372)
!611 = !DILocation(line: 368, column: 6, scope: !577)
!612 = !DILocation(line: 369, column: 8, scope: !577)
!613 = !DILocation(line: 369, column: 2, scope: !577)
!614 = !DILocation(line: 369, column: 13, scope: !577)
!615 = !DILocation(line: 370, column: 15, scope: !577)
!616 = !DILocation(line: 370, column: 9, scope: !577)
!617 = !DILocation(line: 370, column: 2, scope: !577)
!618 = !DILocation(line: 372, column: 8, scope: !577)
!619 = !DILocation(line: 372, column: 6, scope: !577)
!620 = !DILocation(line: 373, column: 2, scope: !577)
!621 = !DILocation(line: 373, column: 11, scope: !622)
!622 = !DILexicalBlockFile(scope: !577, file: !449, discriminator: 1)
!623 = !DILocation(line: 373, column: 10, scope: !622)
!624 = !DILocation(line: 373, column: 9, scope: !622)
!625 = !DILocation(line: 373, column: 18, scope: !622)
!626 = !DILocation(line: 373, column: 26, scope: !622)
!627 = !DILocation(line: 373, column: 29, scope: !628)
!628 = !DILexicalBlockFile(scope: !577, file: !449, discriminator: 2)
!629 = !DILocation(line: 373, column: 36, scope: !628)
!630 = !DILocation(line: 373, column: 2, scope: !631)
!631 = !DILexicalBlockFile(scope: !577, file: !449, discriminator: 3)
!632 = !DILocation(line: 374, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !449, line: 374, column: 7)
!634 = distinct !DILexicalBlock(scope: !577, file: !449, line: 373, column: 42)
!635 = !DILocation(line: 374, column: 8, scope: !633)
!636 = !DILocation(line: 374, column: 7, scope: !633)
!637 = !DILocation(line: 374, column: 16, scope: !633)
!638 = !DILocation(line: 374, column: 7, scope: !634)
!639 = !DILocation(line: 375, column: 10, scope: !633)
!640 = !DILocation(line: 375, column: 4, scope: !633)
!641 = !DILocation(line: 376, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !633, file: !449, line: 376, column: 12)
!643 = !DILocation(line: 376, column: 13, scope: !642)
!644 = !DILocation(line: 376, column: 12, scope: !642)
!645 = !DILocation(line: 376, column: 21, scope: !642)
!646 = !DILocation(line: 376, column: 12, scope: !633)
!647 = !DILocation(line: 377, column: 10, scope: !642)
!648 = !DILocation(line: 377, column: 4, scope: !642)
!649 = !DILocation(line: 378, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !642, file: !449, line: 378, column: 12)
!651 = !DILocation(line: 378, column: 20, scope: !650)
!652 = !DILocation(line: 378, column: 25, scope: !650)
!653 = !DILocation(line: 378, column: 31, scope: !654)
!654 = !DILexicalBlockFile(scope: !650, file: !449, discriminator: 1)
!655 = !DILocation(line: 378, column: 30, scope: !654)
!656 = !DILocation(line: 378, column: 29, scope: !654)
!657 = !DILocation(line: 378, column: 38, scope: !654)
!658 = !DILocation(line: 378, column: 12, scope: !654)
!659 = !DILocation(line: 379, column: 20, scope: !660)
!660 = distinct !DILexicalBlock(scope: !650, file: !449, line: 378, column: 47)
!661 = !DILocation(line: 379, column: 4, scope: !660)
!662 = !DILocation(line: 380, column: 6, scope: !660)
!663 = !DILocation(line: 380, column: 13, scope: !660)
!664 = !DILocation(line: 381, column: 4, scope: !660)
!665 = distinct !{!665, !620}
!666 = !DILocation(line: 383, column: 29, scope: !667)
!667 = distinct !DILexicalBlock(scope: !650, file: !449, line: 382, column: 10)
!668 = !DILocation(line: 383, column: 36, scope: !667)
!669 = !DILocation(line: 383, column: 41, scope: !667)
!670 = !DILocation(line: 383, column: 4, scope: !667)
!671 = !DILocation(line: 387, column: 4, scope: !667)
!672 = !DILocation(line: 390, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !634, file: !449, line: 390, column: 7)
!674 = !DILocation(line: 390, column: 14, scope: !673)
!675 = !DILocation(line: 390, column: 7, scope: !634)
!676 = !DILocation(line: 391, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !449, line: 390, column: 20)
!678 = !DILocation(line: 391, column: 13, scope: !677)
!679 = !DILocation(line: 392, column: 4, scope: !677)
!680 = !DILocation(line: 395, column: 29, scope: !634)
!681 = !DILocation(line: 395, column: 36, scope: !634)
!682 = !DILocation(line: 395, column: 35, scope: !634)
!683 = !DILocation(line: 395, column: 34, scope: !634)
!684 = !DILocation(line: 395, column: 3, scope: !634)
!685 = !DILocation(line: 396, column: 5, scope: !634)
!686 = !DILocation(line: 396, column: 12, scope: !634)
!687 = !DILocation(line: 373, column: 2, scope: !688)
!688 = !DILexicalBlockFile(scope: !577, file: !449, discriminator: 4)
!689 = !DILocation(line: 399, column: 8, scope: !577)
!690 = !DILocation(line: 399, column: 13, scope: !577)
!691 = !DILocation(line: 399, column: 6, scope: !577)
!692 = !DILocation(line: 400, column: 23, scope: !577)
!693 = !DILocation(line: 400, column: 9, scope: !577)
!694 = !DILocation(line: 401, column: 16, scope: !577)
!695 = !DILocation(line: 401, column: 9, scope: !577)
!696 = distinct !DISubprogram(name: "theme_format_append_next", scope: !449, file: !449, line: 200, type: !697, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !366, !585, !434, !600, !600, !699, !699, !372}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!700 = !DILocalVariable(name: "theme", arg: 1, scope: !696, file: !449, line: 200, type: !366)
!701 = !DILocation(line: 200, column: 49, scope: !696)
!702 = !DILocalVariable(name: "str", arg: 2, scope: !696, file: !449, line: 200, type: !585)
!703 = !DILocation(line: 200, column: 65, scope: !696)
!704 = !DILocalVariable(name: "format", arg: 3, scope: !696, file: !449, line: 201, type: !434)
!705 = !DILocation(line: 201, column: 23, scope: !696)
!706 = !DILocalVariable(name: "default_fg", arg: 4, scope: !696, file: !449, line: 202, type: !600)
!707 = !DILocation(line: 202, column: 23, scope: !696)
!708 = !DILocalVariable(name: "default_bg", arg: 5, scope: !696, file: !449, line: 202, type: !600)
!709 = !DILocation(line: 202, column: 48, scope: !696)
!710 = !DILocalVariable(name: "last_fg", arg: 6, scope: !696, file: !449, line: 203, type: !699)
!711 = !DILocation(line: 203, column: 24, scope: !696)
!712 = !DILocalVariable(name: "last_bg", arg: 7, scope: !696, file: !449, line: 203, type: !699)
!713 = !DILocation(line: 203, column: 47, scope: !696)
!714 = !DILocalVariable(name: "flags", arg: 8, scope: !696, file: !449, line: 204, type: !372)
!715 = !DILocation(line: 204, column: 14, scope: !696)
!716 = !DILocalVariable(name: "index", scope: !696, file: !449, line: 206, type: !372)
!717 = !DILocation(line: 206, column: 6, scope: !696)
!718 = !DILocalVariable(name: "chr", scope: !696, file: !449, line: 207, type: !431)
!719 = !DILocation(line: 207, column: 16, scope: !696)
!720 = !DILocalVariable(name: "t", scope: !696, file: !449, line: 208, type: !374)
!721 = !DILocation(line: 208, column: 8, scope: !696)
!722 = !DILocation(line: 210, column: 10, scope: !696)
!723 = !DILocation(line: 210, column: 9, scope: !696)
!724 = !DILocation(line: 210, column: 8, scope: !696)
!725 = !DILocation(line: 210, column: 6, scope: !696)
!726 = !DILocation(line: 211, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !696, file: !449, line: 211, column: 6)
!728 = !DILocation(line: 211, column: 11, scope: !727)
!729 = !DILocation(line: 211, column: 18, scope: !727)
!730 = !DILocation(line: 211, column: 21, scope: !731)
!731 = !DILexicalBlockFile(scope: !727, file: !449, discriminator: 1)
!732 = !DILocation(line: 211, column: 25, scope: !731)
!733 = !DILocation(line: 211, column: 33, scope: !731)
!734 = !DILocation(line: 212, column: 8, scope: !727)
!735 = !DILocation(line: 212, column: 7, scope: !727)
!736 = !DILocation(line: 212, column: 6, scope: !727)
!737 = !DILocation(line: 212, column: 19, scope: !727)
!738 = !DILocation(line: 211, column: 6, scope: !739)
!739 = !DILexicalBlockFile(scope: !696, file: !449, discriminator: 2)
!740 = !DILocation(line: 214, column: 29, scope: !741)
!741 = distinct !DILexicalBlock(scope: !727, file: !449, line: 212, column: 28)
!742 = !DILocation(line: 214, column: 34, scope: !741)
!743 = !DILocation(line: 214, column: 3, scope: !741)
!744 = !DILocation(line: 215, column: 5, scope: !741)
!745 = !DILocation(line: 215, column: 12, scope: !741)
!746 = !DILocation(line: 216, column: 17, scope: !741)
!747 = !DILocation(line: 219, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !696, file: !449, line: 219, column: 6)
!749 = !DILocation(line: 219, column: 10, scope: !748)
!750 = !DILocation(line: 219, column: 6, scope: !696)
!751 = !DILocation(line: 222, column: 32, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !449, line: 219, column: 18)
!753 = !DILocation(line: 222, column: 37, scope: !752)
!754 = !DILocation(line: 222, column: 3, scope: !752)
!755 = !DILocation(line: 223, column: 3, scope: !752)
!756 = !DILocation(line: 226, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !696, file: !449, line: 226, column: 6)
!758 = !DILocation(line: 226, column: 7, scope: !757)
!759 = !DILocation(line: 226, column: 6, scope: !757)
!760 = !DILocation(line: 226, column: 15, scope: !757)
!761 = !DILocation(line: 226, column: 6, scope: !696)
!762 = !DILocation(line: 228, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !449, line: 226, column: 23)
!764 = !DILocation(line: 228, column: 12, scope: !763)
!765 = !DILocation(line: 229, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !449, line: 229, column: 7)
!767 = !DILocation(line: 229, column: 8, scope: !766)
!768 = !DILocation(line: 229, column: 7, scope: !766)
!769 = !DILocation(line: 229, column: 16, scope: !766)
!770 = !DILocation(line: 229, column: 23, scope: !766)
!771 = !DILocation(line: 229, column: 28, scope: !772)
!772 = !DILexicalBlockFile(scope: !766, file: !449, discriminator: 1)
!773 = !DILocation(line: 229, column: 27, scope: !772)
!774 = !DILocation(line: 229, column: 26, scope: !772)
!775 = !DILocation(line: 229, column: 35, scope: !772)
!776 = !DILocation(line: 229, column: 7, scope: !772)
!777 = !DILocation(line: 230, column: 33, scope: !778)
!778 = distinct !DILexicalBlock(scope: !766, file: !449, line: 229, column: 43)
!779 = !DILocation(line: 230, column: 32, scope: !778)
!780 = !DILocation(line: 230, column: 31, scope: !778)
!781 = !DILocation(line: 230, column: 29, scope: !778)
!782 = !DILocation(line: 231, column: 10, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !449, line: 231, column: 8)
!784 = !DILocation(line: 231, column: 9, scope: !783)
!785 = !DILocation(line: 231, column: 8, scope: !783)
!786 = !DILocation(line: 231, column: 17, scope: !783)
!787 = !DILocation(line: 231, column: 8, scope: !778)
!788 = !DILocation(line: 233, column: 21, scope: !789)
!789 = distinct !DILexicalBlock(scope: !783, file: !449, line: 231, column: 25)
!790 = !DILocation(line: 233, column: 5, scope: !789)
!791 = !DILocation(line: 235, column: 20, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !449, line: 235, column: 9)
!793 = !DILocation(line: 235, column: 9, scope: !792)
!794 = !DILocation(line: 235, column: 25, scope: !792)
!795 = !DILocation(line: 235, column: 9, scope: !789)
!796 = !DILocation(line: 236, column: 32, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !449, line: 235, column: 33)
!798 = !DILocation(line: 236, column: 6, scope: !797)
!799 = !DILocation(line: 237, column: 22, scope: !797)
!800 = !DILocation(line: 237, column: 38, scope: !797)
!801 = !DILocation(line: 237, column: 27, scope: !797)
!802 = !DILocation(line: 237, column: 6, scope: !797)
!803 = !DILocation(line: 238, column: 5, scope: !797)
!804 = !DILocation(line: 239, column: 20, scope: !805)
!805 = distinct !DILexicalBlock(scope: !789, file: !449, line: 239, column: 9)
!806 = !DILocation(line: 239, column: 9, scope: !805)
!807 = !DILocation(line: 239, column: 25, scope: !805)
!808 = !DILocation(line: 239, column: 9, scope: !789)
!809 = !DILocation(line: 240, column: 32, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !449, line: 239, column: 33)
!811 = !DILocation(line: 240, column: 6, scope: !810)
!812 = !DILocation(line: 241, column: 22, scope: !810)
!813 = !DILocation(line: 241, column: 38, scope: !810)
!814 = !DILocation(line: 241, column: 27, scope: !810)
!815 = !DILocation(line: 241, column: 6, scope: !810)
!816 = !DILocation(line: 242, column: 5, scope: !810)
!817 = !DILocation(line: 244, column: 6, scope: !789)
!818 = !DILocation(line: 244, column: 16, scope: !789)
!819 = !DILocation(line: 245, column: 6, scope: !789)
!820 = !DILocation(line: 245, column: 16, scope: !789)
!821 = !DILocation(line: 246, column: 4, scope: !789)
!822 = !DILocation(line: 246, column: 15, scope: !823)
!823 = !DILexicalBlockFile(scope: !824, file: !449, discriminator: 1)
!824 = distinct !DILexicalBlock(scope: !783, file: !449, line: 246, column: 15)
!825 = !DILocation(line: 246, column: 19, scope: !823)
!826 = !DILocation(line: 246, column: 26, scope: !823)
!827 = !DILocation(line: 246, column: 29, scope: !828)
!828 = !DILexicalBlockFile(scope: !824, file: !449, discriminator: 2)
!829 = !DILocation(line: 246, column: 33, scope: !828)
!830 = !DILocation(line: 246, column: 15, scope: !828)
!831 = !DILocation(line: 247, column: 27, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !449, line: 247, column: 9)
!833 = distinct !DILexicalBlock(scope: !824, file: !449, line: 246, column: 41)
!834 = !DILocation(line: 247, column: 26, scope: !832)
!835 = !DILocation(line: 247, column: 9, scope: !832)
!836 = !DILocation(line: 247, column: 35, scope: !832)
!837 = !DILocation(line: 247, column: 9, scope: !833)
!838 = !DILocation(line: 248, column: 10, scope: !839)
!839 = distinct !DILexicalBlock(scope: !832, file: !449, line: 247, column: 41)
!840 = !DILocation(line: 248, column: 14, scope: !839)
!841 = !DILocation(line: 248, column: 25, scope: !842)
!842 = !DILexicalBlockFile(scope: !839, file: !449, discriminator: 1)
!843 = !DILocation(line: 248, column: 34, scope: !842)
!844 = !DILocation(line: 248, column: 23, scope: !842)
!845 = !DILocation(line: 248, column: 10, scope: !842)
!846 = !DILocation(line: 248, column: 40, scope: !847)
!847 = !DILexicalBlockFile(scope: !839, file: !449, discriminator: 2)
!848 = !DILocation(line: 248, column: 49, scope: !847)
!849 = !DILocation(line: 248, column: 38, scope: !847)
!850 = !DILocation(line: 248, column: 10, scope: !847)
!851 = !DILocation(line: 248, column: 10, scope: !852)
!852 = !DILexicalBlockFile(scope: !839, file: !449, discriminator: 3)
!853 = !DILocation(line: 248, column: 8, scope: !852)
!854 = !DILocation(line: 249, column: 14, scope: !839)
!855 = !DILocation(line: 249, column: 18, scope: !839)
!856 = !DILocation(line: 249, column: 17, scope: !839)
!857 = !DILocation(line: 249, column: 6, scope: !839)
!858 = !DILocation(line: 250, column: 6, scope: !839)
!859 = !DILocation(line: 250, column: 11, scope: !839)
!860 = !DILocation(line: 251, column: 32, scope: !839)
!861 = !DILocation(line: 251, column: 6, scope: !839)
!862 = !DILocation(line: 252, column: 22, scope: !839)
!863 = !DILocation(line: 252, column: 27, scope: !839)
!864 = !DILocation(line: 252, column: 6, scope: !839)
!865 = !DILocation(line: 253, column: 8, scope: !839)
!866 = !DILocation(line: 253, column: 15, scope: !839)
!867 = !DILocation(line: 254, column: 5, scope: !839)
!868 = !DILocation(line: 255, column: 22, scope: !869)
!869 = distinct !DILexicalBlock(scope: !832, file: !449, line: 254, column: 12)
!870 = !DILocation(line: 255, column: 6, scope: !869)
!871 = !DILocation(line: 256, column: 32, scope: !869)
!872 = !DILocation(line: 256, column: 39, scope: !869)
!873 = !DILocation(line: 256, column: 38, scope: !869)
!874 = !DILocation(line: 256, column: 37, scope: !869)
!875 = !DILocation(line: 256, column: 6, scope: !869)
!876 = !DILocation(line: 258, column: 4, scope: !833)
!877 = !DILocation(line: 258, column: 15, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !449, discriminator: 1)
!879 = distinct !DILexicalBlock(scope: !824, file: !449, line: 258, column: 15)
!880 = !DILocation(line: 258, column: 19, scope: !878)
!881 = !DILocation(line: 258, column: 26, scope: !878)
!882 = !DILocation(line: 258, column: 29, scope: !883)
!883 = !DILexicalBlockFile(scope: !879, file: !449, discriminator: 2)
!884 = !DILocation(line: 258, column: 33, scope: !883)
!885 = !DILocation(line: 258, column: 15, scope: !883)
!886 = !DILocation(line: 259, column: 27, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !449, line: 259, column: 9)
!888 = distinct !DILexicalBlock(scope: !879, file: !449, line: 258, column: 41)
!889 = !DILocation(line: 259, column: 26, scope: !887)
!890 = !DILocation(line: 259, column: 9, scope: !887)
!891 = !DILocation(line: 259, column: 35, scope: !887)
!892 = !DILocation(line: 259, column: 9, scope: !888)
!893 = !DILocation(line: 260, column: 10, scope: !894)
!894 = distinct !DILexicalBlock(scope: !887, file: !449, line: 259, column: 41)
!895 = !DILocation(line: 260, column: 14, scope: !894)
!896 = !DILocation(line: 260, column: 25, scope: !897)
!897 = !DILexicalBlockFile(scope: !894, file: !449, discriminator: 1)
!898 = !DILocation(line: 260, column: 34, scope: !897)
!899 = !DILocation(line: 260, column: 23, scope: !897)
!900 = !DILocation(line: 260, column: 10, scope: !897)
!901 = !DILocation(line: 260, column: 40, scope: !902)
!902 = !DILexicalBlockFile(scope: !894, file: !449, discriminator: 2)
!903 = !DILocation(line: 260, column: 49, scope: !902)
!904 = !DILocation(line: 260, column: 38, scope: !902)
!905 = !DILocation(line: 260, column: 10, scope: !902)
!906 = !DILocation(line: 260, column: 10, scope: !907)
!907 = !DILexicalBlockFile(scope: !894, file: !449, discriminator: 3)
!908 = !DILocation(line: 260, column: 8, scope: !907)
!909 = !DILocation(line: 261, column: 14, scope: !894)
!910 = !DILocation(line: 261, column: 18, scope: !894)
!911 = !DILocation(line: 261, column: 17, scope: !894)
!912 = !DILocation(line: 261, column: 6, scope: !894)
!913 = !DILocation(line: 262, column: 6, scope: !894)
!914 = !DILocation(line: 262, column: 11, scope: !894)
!915 = !DILocation(line: 263, column: 32, scope: !894)
!916 = !DILocation(line: 263, column: 6, scope: !894)
!917 = !DILocation(line: 264, column: 22, scope: !894)
!918 = !DILocation(line: 264, column: 27, scope: !894)
!919 = !DILocation(line: 264, column: 6, scope: !894)
!920 = !DILocation(line: 265, column: 8, scope: !894)
!921 = !DILocation(line: 265, column: 15, scope: !894)
!922 = !DILocation(line: 266, column: 5, scope: !894)
!923 = !DILocation(line: 267, column: 22, scope: !924)
!924 = distinct !DILexicalBlock(scope: !887, file: !449, line: 266, column: 12)
!925 = !DILocation(line: 267, column: 6, scope: !924)
!926 = !DILocation(line: 268, column: 32, scope: !924)
!927 = !DILocation(line: 268, column: 39, scope: !924)
!928 = !DILocation(line: 268, column: 38, scope: !924)
!929 = !DILocation(line: 268, column: 37, scope: !924)
!930 = !DILocation(line: 268, column: 6, scope: !924)
!931 = !DILocation(line: 270, column: 4, scope: !888)
!932 = !DILocation(line: 271, column: 11, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !449, line: 271, column: 9)
!934 = distinct !DILexicalBlock(scope: !879, file: !449, line: 270, column: 11)
!935 = !DILocation(line: 271, column: 10, scope: !933)
!936 = !DILocation(line: 271, column: 16, scope: !933)
!937 = !DILocation(line: 271, column: 24, scope: !933)
!938 = !DILocation(line: 271, column: 34, scope: !939)
!939 = !DILexicalBlockFile(scope: !933, file: !449, discriminator: 1)
!940 = !DILocation(line: 271, column: 50, scope: !939)
!941 = !DILocation(line: 271, column: 27, scope: !939)
!942 = !DILocation(line: 271, column: 55, scope: !939)
!943 = !DILocation(line: 271, column: 9, scope: !939)
!944 = !DILocation(line: 272, column: 24, scope: !945)
!945 = distinct !DILexicalBlock(scope: !933, file: !449, line: 271, column: 11)
!946 = !DILocation(line: 272, column: 8, scope: !945)
!947 = !DILocation(line: 272, column: 17, scope: !945)
!948 = !DILocation(line: 272, column: 6, scope: !945)
!949 = !DILocation(line: 272, column: 22, scope: !945)
!950 = !DILocation(line: 273, column: 8, scope: !945)
!951 = !DILocation(line: 273, column: 17, scope: !945)
!952 = !DILocation(line: 273, column: 6, scope: !945)
!953 = !DILocation(line: 273, column: 22, scope: !945)
!954 = !DILocation(line: 274, column: 5, scope: !945)
!955 = !DILocation(line: 275, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !934, file: !449, line: 275, column: 9)
!957 = !DILocation(line: 275, column: 10, scope: !956)
!958 = !DILocation(line: 275, column: 16, scope: !956)
!959 = !DILocation(line: 275, column: 24, scope: !956)
!960 = !DILocation(line: 275, column: 34, scope: !961)
!961 = !DILexicalBlockFile(scope: !956, file: !449, discriminator: 1)
!962 = !DILocation(line: 275, column: 50, scope: !961)
!963 = !DILocation(line: 275, column: 27, scope: !961)
!964 = !DILocation(line: 275, column: 55, scope: !961)
!965 = !DILocation(line: 275, column: 9, scope: !961)
!966 = !DILocation(line: 276, column: 24, scope: !967)
!967 = distinct !DILexicalBlock(scope: !956, file: !449, line: 275, column: 11)
!968 = !DILocation(line: 276, column: 8, scope: !967)
!969 = !DILocation(line: 276, column: 17, scope: !967)
!970 = !DILocation(line: 276, column: 6, scope: !967)
!971 = !DILocation(line: 276, column: 22, scope: !967)
!972 = !DILocation(line: 277, column: 8, scope: !967)
!973 = !DILocation(line: 277, column: 17, scope: !967)
!974 = !DILocation(line: 277, column: 6, scope: !967)
!975 = !DILocation(line: 277, column: 22, scope: !967)
!976 = !DILocation(line: 278, column: 5, scope: !967)
!977 = !DILocation(line: 279, column: 31, scope: !934)
!978 = !DILocation(line: 279, column: 5, scope: !934)
!979 = !DILocation(line: 280, column: 31, scope: !934)
!980 = !DILocation(line: 280, column: 36, scope: !934)
!981 = !DILocation(line: 280, column: 5, scope: !934)
!982 = !DILocation(line: 282, column: 6, scope: !778)
!983 = !DILocation(line: 282, column: 13, scope: !778)
!984 = !DILocation(line: 283, column: 4, scope: !778)
!985 = !DILocation(line: 288, column: 29, scope: !763)
!986 = !DILocation(line: 288, column: 3, scope: !763)
!987 = !DILocation(line: 289, column: 11, scope: !763)
!988 = !DILocation(line: 289, column: 10, scope: !763)
!989 = !DILocation(line: 289, column: 9, scope: !763)
!990 = !DILocation(line: 289, column: 7, scope: !763)
!991 = !DILocation(line: 290, column: 2, scope: !763)
!992 = !DILocation(line: 292, column: 11, scope: !696)
!993 = !DILocation(line: 292, column: 17, scope: !696)
!994 = !DILocation(line: 292, column: 10, scope: !696)
!995 = !DILocation(line: 292, column: 10, scope: !996)
!996 = !DILexicalBlockFile(scope: !696, file: !449, discriminator: 1)
!997 = !DILocation(line: 293, column: 45, scope: !696)
!998 = !DILocation(line: 293, column: 23, scope: !696)
!999 = !DILocation(line: 293, column: 3, scope: !696)
!1000 = !DILocation(line: 293, column: 10, scope: !696)
!1001 = !DILocation(line: 292, column: 10, scope: !739)
!1002 = !DILocation(line: 292, column: 10, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !696, file: !449, discriminator: 3)
!1004 = !DILocation(line: 292, column: 8, scope: !1003)
!1005 = !DILocation(line: 294, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !696, file: !449, line: 294, column: 6)
!1007 = !DILocation(line: 294, column: 12, scope: !1006)
!1008 = !DILocation(line: 294, column: 6, scope: !696)
!1009 = !DILocation(line: 295, column: 29, scope: !1006)
!1010 = !DILocation(line: 295, column: 34, scope: !1006)
!1011 = !DILocation(line: 295, column: 3, scope: !1006)
!1012 = !DILocalVariable(name: "value", scope: !1013, file: !449, line: 297, type: !374)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !449, line: 296, column: 7)
!1014 = !DILocation(line: 297, column: 9, scope: !1013)
!1015 = !DILocation(line: 299, column: 32, scope: !1013)
!1016 = !DILocation(line: 299, column: 39, scope: !1013)
!1017 = !DILocation(line: 301, column: 11, scope: !1013)
!1018 = !DILocation(line: 301, column: 20, scope: !1013)
!1019 = !DILocation(line: 301, column: 29, scope: !1013)
!1020 = !DILocation(line: 301, column: 34, scope: !1013)
!1021 = !DILocation(line: 299, column: 11, scope: !1013)
!1022 = !DILocation(line: 299, column: 9, scope: !1013)
!1023 = !DILocation(line: 302, column: 19, scope: !1013)
!1024 = !DILocation(line: 302, column: 24, scope: !1013)
!1025 = !DILocation(line: 302, column: 3, scope: !1013)
!1026 = !DILocation(line: 303, column: 10, scope: !1013)
!1027 = !DILocation(line: 303, column: 3, scope: !1013)
!1028 = !DILocation(line: 306, column: 11, scope: !696)
!1029 = !DILocation(line: 306, column: 18, scope: !696)
!1030 = !DILocation(line: 307, column: 1, scope: !696)
!1031 = !DILocation(line: 307, column: 1, scope: !996)
!1032 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !587, file: !587, line: 161, type: !1033, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!585, !585, !361}
!1035 = !DILocalVariable(name: "gstring", arg: 1, scope: !1032, file: !587, line: 161, type: !585)
!1036 = !DILocation(line: 161, column: 36, scope: !1032)
!1037 = !DILocalVariable(name: "c", arg: 2, scope: !1032, file: !587, line: 162, type: !361)
!1038 = !DILocation(line: 162, column: 33, scope: !1032)
!1039 = !DILocation(line: 164, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !587, line: 164, column: 7)
!1041 = !DILocation(line: 164, column: 16, scope: !1040)
!1042 = !DILocation(line: 164, column: 20, scope: !1040)
!1043 = !DILocation(line: 164, column: 26, scope: !1040)
!1044 = !DILocation(line: 164, column: 35, scope: !1040)
!1045 = !DILocation(line: 164, column: 24, scope: !1040)
!1046 = !DILocation(line: 164, column: 7, scope: !1032)
!1047 = !DILocation(line: 166, column: 38, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !587, line: 165, column: 5)
!1049 = !DILocation(line: 166, column: 20, scope: !1048)
!1050 = !DILocation(line: 166, column: 29, scope: !1048)
!1051 = !DILocation(line: 166, column: 32, scope: !1048)
!1052 = !DILocation(line: 166, column: 7, scope: !1048)
!1053 = !DILocation(line: 166, column: 16, scope: !1048)
!1054 = !DILocation(line: 166, column: 36, scope: !1048)
!1055 = !DILocation(line: 167, column: 20, scope: !1048)
!1056 = !DILocation(line: 167, column: 29, scope: !1048)
!1057 = !DILocation(line: 167, column: 7, scope: !1048)
!1058 = !DILocation(line: 167, column: 16, scope: !1048)
!1059 = !DILocation(line: 167, column: 34, scope: !1048)
!1060 = !DILocation(line: 168, column: 5, scope: !1048)
!1061 = !DILocation(line: 170, column: 24, scope: !1040)
!1062 = !DILocation(line: 170, column: 37, scope: !1040)
!1063 = !DILocation(line: 170, column: 5, scope: !1040)
!1064 = !DILocation(line: 171, column: 10, scope: !1032)
!1065 = !DILocation(line: 171, column: 3, scope: !1032)
!1066 = distinct !DISubprogram(name: "theme_format_expand_data", scope: !449, file: !449, line: 584, type: !1067, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!374, !366, !434, !600, !600, !699, !699, !372}
!1069 = !DILocalVariable(name: "theme", arg: 1, scope: !1066, file: !449, line: 584, type: !366)
!1070 = !DILocation(line: 584, column: 43, scope: !1066)
!1071 = !DILocalVariable(name: "format", arg: 2, scope: !1066, file: !449, line: 584, type: !434)
!1072 = !DILocation(line: 584, column: 63, scope: !1066)
!1073 = !DILocalVariable(name: "default_fg", arg: 3, scope: !1066, file: !449, line: 584, type: !600)
!1074 = !DILocation(line: 584, column: 84, scope: !1066)
!1075 = !DILocalVariable(name: "default_bg", arg: 4, scope: !1066, file: !449, line: 585, type: !600)
!1076 = !DILocation(line: 585, column: 45, scope: !1066)
!1077 = !DILocalVariable(name: "save_last_fg", arg: 5, scope: !1066, file: !449, line: 585, type: !699)
!1078 = !DILocation(line: 585, column: 71, scope: !1066)
!1079 = !DILocalVariable(name: "save_last_bg", arg: 6, scope: !1066, file: !449, line: 586, type: !699)
!1080 = !DILocation(line: 586, column: 46, scope: !1066)
!1081 = !DILocalVariable(name: "flags", arg: 7, scope: !1066, file: !449, line: 586, type: !372)
!1082 = !DILocation(line: 586, column: 64, scope: !1066)
!1083 = !DILocation(line: 588, column: 38, scope: !1066)
!1084 = !DILocation(line: 588, column: 45, scope: !1066)
!1085 = !DILocation(line: 588, column: 77, scope: !1066)
!1086 = !DILocation(line: 589, column: 38, scope: !1066)
!1087 = !DILocation(line: 589, column: 52, scope: !1066)
!1088 = !DILocation(line: 588, column: 9, scope: !1066)
!1089 = !DILocation(line: 588, column: 2, scope: !1066)
!1090 = distinct !DISubprogram(name: "theme_format_expand_data_rec", scope: !449, file: !449, line: 515, type: !1091, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!374, !366, !434, !600, !600, !699, !699, !372, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTree", file: !1095, line: 36, baseType: !1096)
!1095 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtree.h", directory: "/home/lichi/Desktop/irssi/task1")
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GTree", file: !1095, line: 36, flags: DIFlagFwdDecl)
!1097 = !DILocalVariable(name: "theme", arg: 1, scope: !1090, file: !449, line: 515, type: !366)
!1098 = !DILocation(line: 515, column: 54, scope: !1090)
!1099 = !DILocalVariable(name: "format", arg: 2, scope: !1090, file: !449, line: 515, type: !434)
!1100 = !DILocation(line: 515, column: 74, scope: !1090)
!1101 = !DILocalVariable(name: "default_fg", arg: 3, scope: !1090, file: !449, line: 516, type: !600)
!1102 = !DILocation(line: 516, column: 56, scope: !1090)
!1103 = !DILocalVariable(name: "default_bg", arg: 4, scope: !1090, file: !449, line: 516, type: !600)
!1104 = !DILocation(line: 516, column: 81, scope: !1090)
!1105 = !DILocalVariable(name: "save_last_fg", arg: 5, scope: !1090, file: !449, line: 517, type: !699)
!1106 = !DILocation(line: 517, column: 57, scope: !1090)
!1107 = !DILocalVariable(name: "save_last_bg", arg: 6, scope: !1090, file: !449, line: 517, type: !699)
!1108 = !DILocation(line: 517, column: 85, scope: !1090)
!1109 = !DILocalVariable(name: "flags", arg: 7, scope: !1090, file: !449, line: 518, type: !372)
!1110 = !DILocation(line: 518, column: 47, scope: !1090)
!1111 = !DILocalVariable(name: "block_list", arg: 8, scope: !1090, file: !449, line: 518, type: !1093)
!1112 = !DILocation(line: 518, column: 61, scope: !1090)
!1113 = !DILocalVariable(name: "str", scope: !1090, file: !449, line: 520, type: !585)
!1114 = !DILocation(line: 520, column: 11, scope: !1090)
!1115 = !DILocalVariable(name: "ret", scope: !1090, file: !449, line: 521, type: !374)
!1116 = !DILocation(line: 521, column: 8, scope: !1090)
!1117 = !DILocalVariable(name: "abstract", scope: !1090, file: !449, line: 521, type: !374)
!1118 = !DILocation(line: 521, column: 14, scope: !1090)
!1119 = !DILocalVariable(name: "last_fg", scope: !1090, file: !449, line: 522, type: !600)
!1120 = !DILocation(line: 522, column: 15, scope: !1090)
!1121 = !DILocalVariable(name: "last_bg", scope: !1090, file: !449, line: 522, type: !600)
!1122 = !DILocation(line: 522, column: 24, scope: !1090)
!1123 = !DILocalVariable(name: "recurse_flags", scope: !1090, file: !449, line: 523, type: !372)
!1124 = !DILocation(line: 523, column: 13, scope: !1090)
!1125 = !DILocation(line: 525, column: 12, scope: !1090)
!1126 = !DILocation(line: 526, column: 12, scope: !1090)
!1127 = !DILocation(line: 527, column: 25, scope: !1090)
!1128 = !DILocation(line: 527, column: 31, scope: !1090)
!1129 = !DILocation(line: 527, column: 23, scope: !1090)
!1130 = !DILocation(line: 529, column: 8, scope: !1090)
!1131 = !DILocation(line: 529, column: 6, scope: !1090)
!1132 = !DILocation(line: 530, column: 2, scope: !1090)
!1133 = !DILocation(line: 530, column: 11, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1090, file: !449, discriminator: 1)
!1135 = !DILocation(line: 530, column: 10, scope: !1134)
!1136 = !DILocation(line: 530, column: 9, scope: !1134)
!1137 = !DILocation(line: 530, column: 18, scope: !1134)
!1138 = !DILocation(line: 530, column: 2, scope: !1134)
!1139 = !DILocation(line: 531, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !449, line: 531, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1090, file: !449, line: 530, column: 27)
!1142 = !DILocation(line: 531, column: 14, scope: !1140)
!1143 = !DILocation(line: 531, column: 22, scope: !1140)
!1144 = !DILocation(line: 531, column: 27, scope: !1140)
!1145 = !DILocation(line: 531, column: 32, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1140, file: !449, discriminator: 1)
!1147 = !DILocation(line: 531, column: 31, scope: !1146)
!1148 = !DILocation(line: 531, column: 30, scope: !1146)
!1149 = !DILocation(line: 531, column: 39, scope: !1146)
!1150 = !DILocation(line: 531, column: 7, scope: !1146)
!1151 = !DILocation(line: 533, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1140, file: !449, line: 531, column: 47)
!1153 = !DILocation(line: 533, column: 13, scope: !1152)
!1154 = !DILocation(line: 534, column: 4, scope: !1152)
!1155 = !DILocation(line: 537, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1141, file: !449, line: 537, column: 7)
!1157 = !DILocation(line: 537, column: 8, scope: !1156)
!1158 = !DILocation(line: 537, column: 7, scope: !1156)
!1159 = !DILocation(line: 537, column: 16, scope: !1156)
!1160 = !DILocation(line: 537, column: 7, scope: !1141)
!1161 = !DILocation(line: 538, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !449, line: 538, column: 8)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !449, line: 537, column: 24)
!1164 = !DILocation(line: 538, column: 15, scope: !1162)
!1165 = !DILocation(line: 538, column: 23, scope: !1162)
!1166 = !DILocation(line: 539, column: 10, scope: !1162)
!1167 = !DILocation(line: 539, column: 9, scope: !1162)
!1168 = !DILocation(line: 539, column: 8, scope: !1162)
!1169 = !DILocation(line: 539, column: 17, scope: !1162)
!1170 = !DILocation(line: 539, column: 24, scope: !1162)
!1171 = !DILocation(line: 539, column: 29, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1162, file: !449, discriminator: 1)
!1173 = !DILocation(line: 539, column: 28, scope: !1172)
!1174 = !DILocation(line: 539, column: 27, scope: !1172)
!1175 = !DILocation(line: 539, column: 40, scope: !1172)
!1176 = !DILocation(line: 538, column: 8, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1163, file: !449, discriminator: 1)
!1178 = !DILocation(line: 542, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !449, line: 542, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1162, file: !449, line: 539, column: 48)
!1181 = !DILocation(line: 542, column: 22, scope: !1179)
!1182 = !DILocation(line: 542, column: 9, scope: !1180)
!1183 = !DILocation(line: 543, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !449, line: 542, column: 30)
!1185 = !DILocation(line: 543, column: 22, scope: !1184)
!1186 = !DILocation(line: 544, column: 19, scope: !1184)
!1187 = !DILocation(line: 545, column: 5, scope: !1184)
!1188 = !DILocation(line: 546, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1180, file: !449, line: 546, column: 9)
!1190 = !DILocation(line: 546, column: 22, scope: !1189)
!1191 = !DILocation(line: 546, column: 9, scope: !1180)
!1192 = !DILocation(line: 547, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !449, line: 546, column: 30)
!1194 = !DILocation(line: 547, column: 22, scope: !1193)
!1195 = !DILocation(line: 548, column: 19, scope: !1193)
!1196 = !DILocation(line: 549, column: 5, scope: !1193)
!1197 = !DILocation(line: 550, column: 4, scope: !1180)
!1198 = !DILocation(line: 552, column: 29, scope: !1163)
!1199 = !DILocation(line: 552, column: 36, scope: !1163)
!1200 = !DILocation(line: 552, column: 41, scope: !1163)
!1201 = !DILocation(line: 555, column: 8, scope: !1163)
!1202 = !DILocation(line: 552, column: 4, scope: !1163)
!1203 = !DILocation(line: 556, column: 4, scope: !1163)
!1204 = distinct !{!1204, !1132}
!1205 = !DILocation(line: 559, column: 5, scope: !1141)
!1206 = !DILocation(line: 559, column: 12, scope: !1141)
!1207 = !DILocation(line: 560, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1141, file: !449, line: 560, column: 7)
!1209 = !DILocation(line: 560, column: 8, scope: !1208)
!1210 = !DILocation(line: 560, column: 7, scope: !1208)
!1211 = !DILocation(line: 560, column: 16, scope: !1208)
!1212 = !DILocation(line: 560, column: 24, scope: !1208)
!1213 = !DILocation(line: 560, column: 29, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1208, file: !449, discriminator: 1)
!1215 = !DILocation(line: 560, column: 28, scope: !1214)
!1216 = !DILocation(line: 560, column: 27, scope: !1214)
!1217 = !DILocation(line: 560, column: 36, scope: !1214)
!1218 = !DILocation(line: 560, column: 7, scope: !1214)
!1219 = !DILocation(line: 561, column: 4, scope: !1208)
!1220 = !DILocation(line: 564, column: 43, scope: !1141)
!1221 = !DILocation(line: 564, column: 50, scope: !1141)
!1222 = !DILocation(line: 565, column: 43, scope: !1141)
!1223 = !DILocation(line: 565, column: 58, scope: !1141)
!1224 = !DILocation(line: 564, column: 14, scope: !1141)
!1225 = !DILocation(line: 564, column: 12, scope: !1141)
!1226 = !DILocation(line: 566, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1141, file: !449, line: 566, column: 7)
!1228 = !DILocation(line: 566, column: 16, scope: !1227)
!1229 = !DILocation(line: 566, column: 7, scope: !1141)
!1230 = !DILocation(line: 567, column: 20, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !449, line: 566, column: 24)
!1232 = !DILocation(line: 567, column: 25, scope: !1231)
!1233 = !DILocation(line: 567, column: 4, scope: !1231)
!1234 = !DILocation(line: 568, column: 11, scope: !1231)
!1235 = !DILocation(line: 568, column: 4, scope: !1231)
!1236 = !DILocation(line: 569, column: 3, scope: !1231)
!1237 = !DILocation(line: 530, column: 2, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1090, file: !449, discriminator: 2)
!1239 = !DILocation(line: 573, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1090, file: !449, line: 573, column: 7)
!1241 = !DILocation(line: 573, column: 20, scope: !1240)
!1242 = !DILocation(line: 573, column: 7, scope: !1090)
!1243 = !DILocation(line: 574, column: 5, scope: !1240)
!1244 = !DILocation(line: 574, column: 20, scope: !1240)
!1245 = !DILocation(line: 574, column: 4, scope: !1240)
!1246 = !DILocation(line: 575, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1090, file: !449, line: 575, column: 7)
!1248 = !DILocation(line: 575, column: 20, scope: !1247)
!1249 = !DILocation(line: 575, column: 7, scope: !1090)
!1250 = !DILocation(line: 576, column: 5, scope: !1247)
!1251 = !DILocation(line: 576, column: 20, scope: !1247)
!1252 = !DILocation(line: 576, column: 4, scope: !1247)
!1253 = !DILocation(line: 578, column: 8, scope: !1090)
!1254 = !DILocation(line: 578, column: 13, scope: !1090)
!1255 = !DILocation(line: 578, column: 6, scope: !1090)
!1256 = !DILocation(line: 579, column: 23, scope: !1090)
!1257 = !DILocation(line: 579, column: 9, scope: !1090)
!1258 = !DILocation(line: 580, column: 16, scope: !1090)
!1259 = !DILocation(line: 580, column: 9, scope: !1090)
!1260 = distinct !DISubprogram(name: "theme_format_expand", scope: !449, file: !449, line: 654, type: !1261, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!374, !366, !364}
!1263 = !DILocalVariable(name: "theme", arg: 1, scope: !1260, file: !449, line: 654, type: !366)
!1264 = !DILocation(line: 654, column: 38, scope: !1260)
!1265 = !DILocalVariable(name: "format", arg: 2, scope: !1260, file: !449, line: 654, type: !364)
!1266 = !DILocation(line: 654, column: 57, scope: !1260)
!1267 = !DILocalVariable(name: "data", scope: !1260, file: !449, line: 656, type: !374)
!1268 = !DILocation(line: 656, column: 8, scope: !1260)
!1269 = !DILocalVariable(name: "ret", scope: !1260, file: !449, line: 656, type: !374)
!1270 = !DILocation(line: 656, column: 15, scope: !1260)
!1271 = !DILocalVariable(name: "reset", scope: !1260, file: !449, line: 657, type: !600)
!1272 = !DILocation(line: 657, column: 15, scope: !1260)
!1273 = !DILocation(line: 658, column: 15, scope: !1260)
!1274 = !DILocation(line: 658, column: 9, scope: !1260)
!1275 = !DILocation(line: 658, column: 2, scope: !1260)
!1276 = !DILocation(line: 660, column: 2, scope: !1260)
!1277 = distinct !{!1277, !1276}
!1278 = !DILocation(line: 660, column: 10, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !449, discriminator: 1)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !449, line: 660, column: 10)
!1281 = distinct !DILexicalBlock(scope: !1260, file: !449, line: 660, column: 4)
!1282 = !DILocation(line: 660, column: 16, scope: !1279)
!1283 = !DILocation(line: 660, column: 5, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !449, discriminator: 2)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !449, line: 660, column: 3)
!1286 = !DILocation(line: 660, column: 14, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !449, discriminator: 3)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !449, line: 660, column: 12)
!1289 = !DILocation(line: 660, column: 100, scope: !1287)
!1290 = !DILocation(line: 660, column: 7, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1281, file: !449, discriminator: 4)
!1292 = !DILocation(line: 661, column: 2, scope: !1260)
!1293 = distinct !{!1293, !1292}
!1294 = !DILocation(line: 661, column: 10, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !449, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !449, line: 661, column: 10)
!1297 = distinct !DILexicalBlock(scope: !1260, file: !449, line: 661, column: 4)
!1298 = !DILocation(line: 661, column: 17, scope: !1295)
!1299 = !DILocation(line: 661, column: 5, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1301, file: !449, discriminator: 2)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !449, line: 661, column: 3)
!1302 = !DILocation(line: 661, column: 14, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !449, discriminator: 3)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !449, line: 661, column: 12)
!1305 = !DILocation(line: 661, column: 101, scope: !1303)
!1306 = !DILocation(line: 661, column: 7, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1297, file: !449, discriminator: 4)
!1308 = !DILocation(line: 663, column: 34, scope: !1260)
!1309 = !DILocation(line: 663, column: 9, scope: !1260)
!1310 = !DILocation(line: 663, column: 7, scope: !1260)
!1311 = !DILocation(line: 665, column: 37, scope: !1260)
!1312 = !DILocation(line: 665, column: 44, scope: !1260)
!1313 = !DILocation(line: 665, column: 8, scope: !1260)
!1314 = !DILocation(line: 665, column: 6, scope: !1260)
!1315 = !DILocation(line: 666, column: 16, scope: !1260)
!1316 = !DILocation(line: 666, column: 9, scope: !1260)
!1317 = !DILocation(line: 667, column: 9, scope: !1260)
!1318 = !DILocation(line: 667, column: 2, scope: !1260)
!1319 = !DILocation(line: 668, column: 1, scope: !1260)
!1320 = distinct !DISubprogram(name: "theme_format_compress_colors", scope: !449, file: !449, line: 596, type: !1261, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1321 = !DILocalVariable(name: "theme", arg: 1, scope: !1320, file: !449, line: 596, type: !366)
!1322 = !DILocation(line: 596, column: 54, scope: !1320)
!1323 = !DILocalVariable(name: "format", arg: 2, scope: !1320, file: !449, line: 596, type: !364)
!1324 = !DILocation(line: 596, column: 73, scope: !1320)
!1325 = !DILocalVariable(name: "str", scope: !1320, file: !449, line: 598, type: !585)
!1326 = !DILocation(line: 598, column: 11, scope: !1320)
!1327 = !DILocalVariable(name: "ret", scope: !1320, file: !449, line: 599, type: !374)
!1328 = !DILocation(line: 599, column: 8, scope: !1320)
!1329 = !DILocalVariable(name: "last_fg", scope: !1320, file: !449, line: 600, type: !363)
!1330 = !DILocation(line: 600, column: 7, scope: !1320)
!1331 = !DILocalVariable(name: "last_bg", scope: !1320, file: !449, line: 600, type: !363)
!1332 = !DILocation(line: 600, column: 16, scope: !1320)
!1333 = !DILocation(line: 602, column: 8, scope: !1320)
!1334 = !DILocation(line: 602, column: 6, scope: !1320)
!1335 = !DILocation(line: 604, column: 20, scope: !1320)
!1336 = !DILocation(line: 604, column: 10, scope: !1320)
!1337 = !DILocation(line: 605, column: 2, scope: !1320)
!1338 = !DILocation(line: 605, column: 10, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1320, file: !449, discriminator: 1)
!1340 = !DILocation(line: 605, column: 9, scope: !1339)
!1341 = !DILocation(line: 605, column: 17, scope: !1339)
!1342 = !DILocation(line: 605, column: 2, scope: !1339)
!1343 = !DILocation(line: 606, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !449, line: 606, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1320, file: !449, line: 605, column: 26)
!1346 = !DILocation(line: 606, column: 7, scope: !1344)
!1347 = !DILocation(line: 606, column: 15, scope: !1344)
!1348 = !DILocation(line: 606, column: 7, scope: !1345)
!1349 = !DILocation(line: 608, column: 33, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !449, line: 606, column: 23)
!1351 = !DILocation(line: 608, column: 4, scope: !1350)
!1352 = !DILocation(line: 609, column: 43, scope: !1350)
!1353 = !DILocation(line: 609, column: 33, scope: !1350)
!1354 = !DILocation(line: 610, column: 3, scope: !1350)
!1355 = !DILocation(line: 610, column: 15, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !449, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1344, file: !449, line: 610, column: 14)
!1358 = !DILocation(line: 610, column: 14, scope: !1356)
!1359 = !DILocation(line: 610, column: 22, scope: !1356)
!1360 = !DILocation(line: 612, column: 30, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !449, line: 610, column: 30)
!1362 = !DILocation(line: 612, column: 36, scope: !1361)
!1363 = !DILocation(line: 612, column: 35, scope: !1361)
!1364 = !DILocation(line: 612, column: 4, scope: !1361)
!1365 = !DILocation(line: 613, column: 10, scope: !1361)
!1366 = !DILocation(line: 614, column: 3, scope: !1361)
!1367 = !DILocation(line: 614, column: 14, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1369, file: !449, discriminator: 1)
!1369 = distinct !DILexicalBlock(scope: !1357, file: !449, line: 614, column: 14)
!1370 = !DILocation(line: 614, column: 24, scope: !1368)
!1371 = !DILocation(line: 616, column: 10, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !449, line: 614, column: 33)
!1373 = !DILocation(line: 617, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !449, line: 617, column: 8)
!1375 = !DILocation(line: 617, column: 11, scope: !1374)
!1376 = !DILocation(line: 617, column: 10, scope: !1374)
!1377 = !DILocation(line: 617, column: 20, scope: !1374)
!1378 = !DILocation(line: 617, column: 27, scope: !1374)
!1379 = !DILocation(line: 617, column: 31, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1374, file: !449, discriminator: 1)
!1381 = !DILocation(line: 617, column: 30, scope: !1380)
!1382 = !DILocation(line: 617, column: 40, scope: !1380)
!1383 = !DILocation(line: 617, column: 47, scope: !1380)
!1384 = !DILocation(line: 617, column: 51, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1374, file: !449, discriminator: 2)
!1386 = !DILocation(line: 617, column: 50, scope: !1385)
!1387 = !DILocation(line: 617, column: 60, scope: !1385)
!1388 = !DILocation(line: 617, column: 68, scope: !1385)
!1389 = !DILocation(line: 617, column: 74, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1374, file: !449, discriminator: 3)
!1391 = !DILocation(line: 617, column: 73, scope: !1390)
!1392 = !DILocation(line: 617, column: 72, scope: !1390)
!1393 = !DILocation(line: 617, column: 82, scope: !1390)
!1394 = !DILocation(line: 617, column: 89, scope: !1390)
!1395 = !DILocation(line: 617, column: 95, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1374, file: !449, discriminator: 4)
!1397 = !DILocation(line: 617, column: 94, scope: !1396)
!1398 = !DILocation(line: 617, column: 93, scope: !1396)
!1399 = !DILocation(line: 617, column: 107, scope: !1396)
!1400 = !DILocation(line: 617, column: 106, scope: !1396)
!1401 = !DILocation(line: 617, column: 103, scope: !1396)
!1402 = !DILocation(line: 617, column: 116, scope: !1396)
!1403 = !DILocation(line: 617, column: 121, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1374, file: !449, discriminator: 5)
!1405 = !DILocation(line: 617, column: 120, scope: !1404)
!1406 = !DILocation(line: 617, column: 119, scope: !1404)
!1407 = !DILocation(line: 617, column: 133, scope: !1404)
!1408 = !DILocation(line: 617, column: 132, scope: !1404)
!1409 = !DILocation(line: 617, column: 129, scope: !1404)
!1410 = !DILocation(line: 617, column: 8, scope: !1404)
!1411 = !DILocation(line: 619, column: 4, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1374, file: !449, line: 617, column: 146)
!1413 = !DILocation(line: 619, column: 18, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !449, discriminator: 1)
!1415 = distinct !DILexicalBlock(scope: !1374, file: !449, line: 619, column: 15)
!1416 = !DILocation(line: 619, column: 17, scope: !1414)
!1417 = !DILocation(line: 619, column: 16, scope: !1414)
!1418 = !DILocation(line: 619, column: 26, scope: !1414)
!1419 = !DILocation(line: 619, column: 34, scope: !1414)
!1420 = !DILocation(line: 619, column: 44, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !449, discriminator: 2)
!1422 = !DILocation(line: 619, column: 61, scope: !1421)
!1423 = !DILocation(line: 619, column: 60, scope: !1421)
!1424 = !DILocation(line: 619, column: 37, scope: !1421)
!1425 = !DILocation(line: 619, column: 69, scope: !1421)
!1426 = !DILocation(line: 619, column: 16, scope: !1421)
!1427 = !DILocation(line: 620, column: 8, scope: !1415)
!1428 = !DILocation(line: 620, column: 18, scope: !1415)
!1429 = !DILocation(line: 620, column: 25, scope: !1415)
!1430 = !DILocation(line: 621, column: 10, scope: !1415)
!1431 = !DILocation(line: 621, column: 9, scope: !1415)
!1432 = !DILocation(line: 621, column: 21, scope: !1415)
!1433 = !DILocation(line: 621, column: 29, scope: !1415)
!1434 = !DILocation(line: 621, column: 39, scope: !1414)
!1435 = !DILocation(line: 621, column: 55, scope: !1414)
!1436 = !DILocation(line: 621, column: 32, scope: !1414)
!1437 = !DILocation(line: 621, column: 66, scope: !1414)
!1438 = !DILocation(line: 621, column: 9, scope: !1414)
!1439 = !DILocation(line: 622, column: 10, scope: !1415)
!1440 = !DILocation(line: 622, column: 9, scope: !1415)
!1441 = !DILocation(line: 622, column: 17, scope: !1415)
!1442 = !DILocation(line: 622, column: 24, scope: !1415)
!1443 = !DILocation(line: 622, column: 27, scope: !1414)
!1444 = !DILocation(line: 622, column: 37, scope: !1414)
!1445 = !DILocation(line: 619, column: 15, scope: !1390)
!1446 = !DILocation(line: 626, column: 4, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1415, file: !449, line: 622, column: 46)
!1448 = !DILocation(line: 628, column: 31, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1415, file: !449, line: 626, column: 11)
!1450 = !DILocation(line: 628, column: 5, scope: !1449)
!1451 = !DILocation(line: 629, column: 31, scope: !1449)
!1452 = !DILocation(line: 629, column: 37, scope: !1449)
!1453 = !DILocation(line: 629, column: 36, scope: !1449)
!1454 = !DILocation(line: 629, column: 5, scope: !1449)
!1455 = !DILocation(line: 631, column: 12, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !449, line: 631, column: 9)
!1457 = !DILocation(line: 631, column: 11, scope: !1456)
!1458 = !DILocation(line: 631, column: 10, scope: !1456)
!1459 = !DILocation(line: 631, column: 20, scope: !1456)
!1460 = !DILocation(line: 631, column: 28, scope: !1456)
!1461 = !DILocation(line: 631, column: 38, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1456, file: !449, discriminator: 1)
!1463 = !DILocation(line: 631, column: 55, scope: !1462)
!1464 = !DILocation(line: 631, column: 54, scope: !1462)
!1465 = !DILocation(line: 631, column: 31, scope: !1462)
!1466 = !DILocation(line: 631, column: 63, scope: !1462)
!1467 = !DILocation(line: 631, column: 9, scope: !1462)
!1468 = !DILocation(line: 632, column: 17, scope: !1456)
!1469 = !DILocation(line: 632, column: 16, scope: !1456)
!1470 = !DILocation(line: 632, column: 14, scope: !1456)
!1471 = !DILocation(line: 632, column: 6, scope: !1456)
!1472 = !DILocation(line: 633, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1456, file: !449, line: 633, column: 14)
!1474 = !DILocation(line: 633, column: 14, scope: !1473)
!1475 = !DILocation(line: 633, column: 22, scope: !1473)
!1476 = !DILocation(line: 633, column: 29, scope: !1473)
!1477 = !DILocation(line: 633, column: 33, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1473, file: !449, discriminator: 1)
!1479 = !DILocation(line: 633, column: 32, scope: !1478)
!1480 = !DILocation(line: 633, column: 40, scope: !1478)
!1481 = !DILocation(line: 633, column: 14, scope: !1478)
!1482 = !DILocation(line: 634, column: 14, scope: !1473)
!1483 = !DILocation(line: 634, column: 6, scope: !1473)
!1484 = !DILocation(line: 635, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1449, file: !449, line: 635, column: 9)
!1486 = !DILocation(line: 635, column: 11, scope: !1485)
!1487 = !DILocation(line: 635, column: 10, scope: !1485)
!1488 = !DILocation(line: 635, column: 20, scope: !1485)
!1489 = !DILocation(line: 635, column: 28, scope: !1485)
!1490 = !DILocation(line: 635, column: 38, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1485, file: !449, discriminator: 1)
!1492 = !DILocation(line: 635, column: 55, scope: !1491)
!1493 = !DILocation(line: 635, column: 54, scope: !1491)
!1494 = !DILocation(line: 635, column: 31, scope: !1491)
!1495 = !DILocation(line: 635, column: 63, scope: !1491)
!1496 = !DILocation(line: 635, column: 9, scope: !1491)
!1497 = !DILocation(line: 636, column: 17, scope: !1485)
!1498 = !DILocation(line: 636, column: 16, scope: !1485)
!1499 = !DILocation(line: 636, column: 14, scope: !1485)
!1500 = !DILocation(line: 636, column: 6, scope: !1485)
!1501 = !DILocation(line: 637, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1485, file: !449, line: 637, column: 14)
!1503 = !DILocation(line: 637, column: 14, scope: !1502)
!1504 = !DILocation(line: 637, column: 22, scope: !1502)
!1505 = !DILocation(line: 637, column: 29, scope: !1502)
!1506 = !DILocation(line: 637, column: 33, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1502, file: !449, discriminator: 1)
!1508 = !DILocation(line: 637, column: 32, scope: !1507)
!1509 = !DILocation(line: 637, column: 40, scope: !1507)
!1510 = !DILocation(line: 637, column: 14, scope: !1507)
!1511 = !DILocation(line: 638, column: 14, scope: !1502)
!1512 = !DILocation(line: 638, column: 6, scope: !1502)
!1513 = !DILocation(line: 640, column: 10, scope: !1372)
!1514 = !DILocation(line: 641, column: 3, scope: !1372)
!1515 = !DILocation(line: 643, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1369, file: !449, line: 641, column: 10)
!1517 = !DILocation(line: 644, column: 30, scope: !1516)
!1518 = !DILocation(line: 644, column: 4, scope: !1516)
!1519 = !DILocation(line: 645, column: 30, scope: !1516)
!1520 = !DILocation(line: 645, column: 4, scope: !1516)
!1521 = !DILocation(line: 605, column: 2, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1320, file: !449, discriminator: 2)
!1523 = distinct !{!1523, !1337}
!1524 = !DILocation(line: 649, column: 8, scope: !1320)
!1525 = !DILocation(line: 649, column: 13, scope: !1320)
!1526 = !DILocation(line: 649, column: 6, scope: !1320)
!1527 = !DILocation(line: 650, column: 23, scope: !1320)
!1528 = !DILocation(line: 650, column: 9, scope: !1320)
!1529 = !DILocation(line: 651, column: 16, scope: !1320)
!1530 = !DILocation(line: 651, column: 9, scope: !1320)
!1531 = distinct !DISubprogram(name: "theme_register_module", scope: !449, file: !449, line: 852, type: !1532, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !364, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64, align: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FORMAT_REC", file: !368, line: 35, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FORMAT_REC", file: !1537, line: 30, size: 512, align: 64, elements: !1538)
!1537 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1536, file: !1537, line: 31, baseType: !374, size: 64, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1536, file: !1537, line: 32, baseType: !374, size: 64, align: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1536, file: !1537, line: 34, baseType: !372, size: 32, align: 32, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "paramtypes", scope: !1536, file: !1537, line: 35, baseType: !1543, size: 320, align: 32, offset: 160)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 320, align: 32, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 10)
!1546 = !DILocalVariable(name: "module", arg: 1, scope: !1531, file: !449, line: 852, type: !364)
!1547 = !DILocation(line: 852, column: 40, scope: !1531)
!1548 = !DILocalVariable(name: "formats", arg: 2, scope: !1531, file: !449, line: 852, type: !1534)
!1549 = !DILocation(line: 852, column: 60, scope: !1531)
!1550 = !DILocation(line: 854, column: 26, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1531, file: !449, line: 854, column: 6)
!1552 = !DILocation(line: 854, column: 43, scope: !1551)
!1553 = !DILocation(line: 854, column: 6, scope: !1551)
!1554 = !DILocation(line: 854, column: 51, scope: !1551)
!1555 = !DILocation(line: 854, column: 6, scope: !1531)
!1556 = !DILocation(line: 855, column: 3, scope: !1551)
!1557 = !DILocation(line: 857, column: 29, scope: !1531)
!1558 = !DILocation(line: 857, column: 55, scope: !1531)
!1559 = !DILocation(line: 857, column: 46, scope: !1531)
!1560 = !DILocation(line: 857, column: 64, scope: !1531)
!1561 = !DILocation(line: 857, column: 9, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1531, file: !449, discriminator: 1)
!1563 = !DILocation(line: 858, column: 21, scope: !1531)
!1564 = !DILocation(line: 858, column: 2, scope: !1531)
!1565 = !DILocation(line: 859, column: 1, scope: !1531)
!1566 = !DILocation(line: 859, column: 1, scope: !1562)
!1567 = distinct !DISubprogram(name: "themes_read_module", scope: !449, file: !449, line: 831, type: !1568, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !364}
!1570 = !DILocalVariable(name: "module", arg: 1, scope: !1567, file: !449, line: 831, type: !364)
!1571 = !DILocation(line: 831, column: 44, scope: !1567)
!1572 = !DILocation(line: 833, column: 25, scope: !1567)
!1573 = !DILocation(line: 833, column: 69, scope: !1567)
!1574 = !DILocation(line: 833, column: 9, scope: !1567)
!1575 = !DILocation(line: 834, column: 1, scope: !1567)
!1576 = distinct !DISubprogram(name: "theme_unregister_module", scope: !449, file: !449, line: 861, type: !1568, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1577 = !DILocalVariable(name: "module", arg: 1, scope: !1576, file: !449, line: 861, type: !364)
!1578 = !DILocation(line: 861, column: 42, scope: !1576)
!1579 = !DILocalVariable(name: "key", scope: !1576, file: !449, line: 863, type: !401)
!1580 = !DILocation(line: 863, column: 11, scope: !1576)
!1581 = !DILocalVariable(name: "value", scope: !1576, file: !449, line: 863, type: !401)
!1582 = !DILocation(line: 863, column: 16, scope: !1576)
!1583 = !DILocation(line: 865, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !449, line: 865, column: 6)
!1585 = !DILocation(line: 865, column: 22, scope: !1584)
!1586 = !DILocation(line: 865, column: 6, scope: !1576)
!1587 = !DILocation(line: 866, column: 3, scope: !1584)
!1588 = !DILocation(line: 868, column: 36, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1576, file: !449, line: 868, column: 6)
!1590 = !DILocation(line: 868, column: 53, scope: !1589)
!1591 = !DILocation(line: 868, column: 7, scope: !1589)
!1592 = !DILocation(line: 868, column: 6, scope: !1576)
!1593 = !DILocation(line: 869, column: 3, scope: !1589)
!1594 = !DILocation(line: 871, column: 22, scope: !1576)
!1595 = !DILocation(line: 871, column: 39, scope: !1576)
!1596 = !DILocation(line: 871, column: 2, scope: !1576)
!1597 = !DILocation(line: 872, column: 9, scope: !1576)
!1598 = !DILocation(line: 872, column: 2, scope: !1576)
!1599 = !DILocation(line: 874, column: 23, scope: !1576)
!1600 = !DILocation(line: 874, column: 2, scope: !1576)
!1601 = !DILocation(line: 875, column: 1, scope: !1576)
!1602 = !DILocation(line: 875, column: 1, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1576, file: !449, discriminator: 1)
!1604 = distinct !DISubprogram(name: "themes_remove_module", scope: !449, file: !449, line: 847, type: !1568, isLocal: true, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1605 = !DILocalVariable(name: "module", arg: 1, scope: !1604, file: !449, line: 847, type: !364)
!1606 = !DILocation(line: 847, column: 46, scope: !1604)
!1607 = !DILocation(line: 849, column: 25, scope: !1604)
!1608 = !DILocation(line: 849, column: 71, scope: !1604)
!1609 = !DILocation(line: 849, column: 9, scope: !1604)
!1610 = !DILocation(line: 850, column: 1, scope: !1604)
!1611 = distinct !DISubprogram(name: "theme_set_default_abstract", scope: !449, file: !449, line: 877, type: !1612, isLocal: false, isDefinition: true, scopeLine: 878, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !364, !364}
!1614 = !DILocalVariable(name: "key", arg: 1, scope: !1611, file: !449, line: 877, type: !364)
!1615 = !DILocation(line: 877, column: 45, scope: !1611)
!1616 = !DILocalVariable(name: "value", arg: 2, scope: !1611, file: !449, line: 877, type: !364)
!1617 = !DILocation(line: 877, column: 62, scope: !1611)
!1618 = !DILocalVariable(name: "oldkey", scope: !1611, file: !449, line: 879, type: !401)
!1619 = !DILocation(line: 879, column: 11, scope: !1611)
!1620 = !DILocalVariable(name: "oldvalue", scope: !1611, file: !449, line: 879, type: !401)
!1621 = !DILocation(line: 879, column: 19, scope: !1611)
!1622 = !DILocation(line: 881, column: 35, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1611, file: !449, line: 881, column: 6)
!1624 = !DILocation(line: 881, column: 51, scope: !1623)
!1625 = !DILocation(line: 881, column: 62, scope: !1623)
!1626 = !DILocation(line: 881, column: 6, scope: !1623)
!1627 = !DILocation(line: 881, column: 6, scope: !1611)
!1628 = !DILocation(line: 884, column: 23, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !449, line: 882, column: 28)
!1630 = !DILocation(line: 884, column: 39, scope: !1629)
!1631 = !DILocation(line: 884, column: 50, scope: !1629)
!1632 = !DILocation(line: 884, column: 3, scope: !1629)
!1633 = !DILocation(line: 885, column: 10, scope: !1629)
!1634 = !DILocation(line: 885, column: 3, scope: !1629)
!1635 = !DILocation(line: 886, column: 10, scope: !1629)
!1636 = !DILocation(line: 886, column: 3, scope: !1629)
!1637 = !DILocation(line: 887, column: 2, scope: !1629)
!1638 = !DILocation(line: 889, column: 22, scope: !1611)
!1639 = !DILocation(line: 889, column: 38, scope: !1611)
!1640 = !DILocation(line: 890, column: 17, scope: !1611)
!1641 = !DILocation(line: 890, column: 8, scope: !1611)
!1642 = !DILocation(line: 890, column: 32, scope: !1611)
!1643 = !DILocation(line: 890, column: 23, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1611, file: !449, discriminator: 1)
!1645 = !DILocation(line: 889, column: 2, scope: !1611)
!1646 = !DILocation(line: 891, column: 1, scope: !1611)
!1647 = distinct !DISubprogram(name: "theme_load", scope: !449, file: !449, line: 919, type: !1648, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!366, !364}
!1650 = !DILocalVariable(name: "setname", arg: 1, scope: !1647, file: !449, line: 919, type: !364)
!1651 = !DILocation(line: 919, column: 35, scope: !1647)
!1652 = !DILocalVariable(name: "theme", scope: !1647, file: !449, line: 921, type: !366)
!1653 = !DILocation(line: 921, column: 13, scope: !1647)
!1654 = !DILocalVariable(name: "oldtheme", scope: !1647, file: !449, line: 921, type: !366)
!1655 = !DILocation(line: 921, column: 21, scope: !1647)
!1656 = !DILocalVariable(name: "statbuf", scope: !1647, file: !449, line: 922, type: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1658, line: 46, size: 1152, align: 64, elements: !1659)
!1658 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1659 = !{!1660, !1662, !1664, !1666, !1668, !1670, !1672, !1673, !1674, !1676, !1678, !1680, !1686, !1687, !1688}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1657, file: !1658, line: 48, baseType: !1661, size: 64, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !380, line: 124, baseType: !594)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1657, file: !1658, line: 53, baseType: !1663, size: 64, align: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !380, line: 127, baseType: !594)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1657, file: !1658, line: 61, baseType: !1665, size: 64, align: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !380, line: 130, baseType: !594)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1657, file: !1658, line: 62, baseType: !1667, size: 32, align: 32, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !380, line: 129, baseType: !384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1657, file: !1658, line: 64, baseType: !1669, size: 32, align: 32, offset: 224)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !380, line: 125, baseType: !384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1657, file: !1658, line: 65, baseType: !1671, size: 32, align: 32, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !380, line: 126, baseType: !384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1657, file: !1658, line: 67, baseType: !372, size: 32, align: 32, offset: 288)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1657, file: !1658, line: 69, baseType: !1661, size: 64, align: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1657, file: !1658, line: 74, baseType: !1675, size: 64, align: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !380, line: 131, baseType: !381)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1657, file: !1658, line: 78, baseType: !1677, size: 64, align: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !380, line: 153, baseType: !381)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1657, file: !1658, line: 80, baseType: !1679, size: 64, align: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !380, line: 158, baseType: !381)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1657, file: !1658, line: 91, baseType: !1681, size: 128, align: 64, offset: 576)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !378, line: 120, size: 128, align: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1681, file: !378, line: 122, baseType: !379, size: 64, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1681, file: !378, line: 123, baseType: !1685, size: 64, align: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !380, line: 175, baseType: !381)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1657, file: !1658, line: 92, baseType: !1681, size: 128, align: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1657, file: !1658, line: 93, baseType: !1681, size: 128, align: 64, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1657, file: !1658, line: 106, baseType: !1689, size: 192, align: 64, offset: 960)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1685, size: 192, align: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 3)
!1692 = !DILocation(line: 922, column: 14, scope: !1647)
!1693 = !DILocalVariable(name: "fname", scope: !1647, file: !449, line: 923, type: !374)
!1694 = !DILocation(line: 923, column: 8, scope: !1647)
!1695 = !DILocalVariable(name: "name", scope: !1647, file: !449, line: 923, type: !374)
!1696 = !DILocation(line: 923, column: 16, scope: !1647)
!1697 = !DILocalVariable(name: "p", scope: !1647, file: !449, line: 923, type: !374)
!1698 = !DILocation(line: 923, column: 23, scope: !1647)
!1699 = !DILocation(line: 925, column: 25, scope: !1647)
!1700 = !DILocation(line: 925, column: 16, scope: !1647)
!1701 = !DILocation(line: 925, column: 14, scope: !1647)
!1702 = !DILocation(line: 926, column: 14, scope: !1647)
!1703 = !DILocation(line: 926, column: 6, scope: !1647)
!1704 = !DILocation(line: 926, column: 4, scope: !1647)
!1705 = !DILocation(line: 927, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1647, file: !449, line: 927, column: 6)
!1707 = !DILocation(line: 927, column: 8, scope: !1706)
!1708 = !DILocation(line: 927, column: 15, scope: !1706)
!1709 = !DILocation(line: 927, column: 28, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1706, file: !449, discriminator: 1)
!1711 = !DILocation(line: 927, column: 18, scope: !1710)
!1712 = !DILocation(line: 927, column: 41, scope: !1710)
!1713 = !DILocation(line: 927, column: 6, scope: !1710)
!1714 = !DILocation(line: 929, column: 18, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1706, file: !449, line: 927, column: 47)
!1716 = !DILocation(line: 929, column: 20, scope: !1715)
!1717 = !DILocation(line: 930, column: 2, scope: !1715)
!1718 = !DILocation(line: 932, column: 21, scope: !1647)
!1719 = !DILocation(line: 932, column: 10, scope: !1647)
!1720 = !DILocation(line: 932, column: 8, scope: !1647)
!1721 = !DILocation(line: 935, column: 41, scope: !1647)
!1722 = !DILocation(line: 935, column: 58, scope: !1647)
!1723 = !DILocation(line: 935, column: 10, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1647, file: !449, discriminator: 1)
!1725 = !DILocation(line: 935, column: 8, scope: !1647)
!1726 = !DILocation(line: 936, column: 11, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1647, file: !449, line: 936, column: 6)
!1728 = !DILocation(line: 936, column: 6, scope: !1727)
!1729 = !DILocation(line: 936, column: 28, scope: !1727)
!1730 = !DILocation(line: 936, column: 6, scope: !1647)
!1731 = !DILocation(line: 938, column: 10, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !449, line: 936, column: 34)
!1733 = !DILocation(line: 938, column: 3, scope: !1732)
!1734 = !DILocation(line: 939, column: 71, scope: !1732)
!1735 = !DILocation(line: 939, column: 11, scope: !1732)
!1736 = !DILocation(line: 939, column: 9, scope: !1732)
!1737 = !DILocation(line: 940, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !449, line: 940, column: 7)
!1739 = !DILocation(line: 940, column: 7, scope: !1738)
!1740 = !DILocation(line: 940, column: 29, scope: !1738)
!1741 = !DILocation(line: 940, column: 7, scope: !1732)
!1742 = !DILocation(line: 942, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !449, line: 940, column: 35)
!1744 = !DILocation(line: 942, column: 4, scope: !1743)
!1745 = !DILocation(line: 943, column: 11, scope: !1743)
!1746 = !DILocation(line: 943, column: 4, scope: !1743)
!1747 = !DILocation(line: 944, column: 11, scope: !1743)
!1748 = !DILocation(line: 944, column: 4, scope: !1743)
!1749 = !DILocation(line: 946, column: 2, scope: !1732)
!1750 = !DILocation(line: 948, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1647, file: !449, line: 948, column: 6)
!1752 = !DILocation(line: 948, column: 12, scope: !1751)
!1753 = !DILocation(line: 948, column: 19, scope: !1751)
!1754 = !DILocation(line: 948, column: 22, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1751, file: !449, discriminator: 1)
!1756 = !DILocation(line: 948, column: 29, scope: !1755)
!1757 = !DILocation(line: 948, column: 52, scope: !1755)
!1758 = !DILocation(line: 948, column: 60, scope: !1755)
!1759 = !DILocation(line: 948, column: 41, scope: !1755)
!1760 = !DILocation(line: 948, column: 6, scope: !1755)
!1761 = !DILocation(line: 950, column: 10, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1751, file: !449, line: 948, column: 62)
!1763 = !DILocation(line: 950, column: 3, scope: !1762)
!1764 = !DILocation(line: 951, column: 10, scope: !1762)
!1765 = !DILocation(line: 951, column: 3, scope: !1762)
!1766 = !DILocation(line: 952, column: 10, scope: !1762)
!1767 = !DILocation(line: 952, column: 3, scope: !1762)
!1768 = !DILocation(line: 955, column: 20, scope: !1647)
!1769 = !DILocation(line: 955, column: 18, scope: !1647)
!1770 = !DILocation(line: 956, column: 23, scope: !1647)
!1771 = !DILocation(line: 956, column: 30, scope: !1647)
!1772 = !DILocation(line: 956, column: 10, scope: !1647)
!1773 = !DILocation(line: 956, column: 8, scope: !1647)
!1774 = !DILocation(line: 957, column: 30, scope: !1647)
!1775 = !DILocation(line: 957, column: 38, scope: !1647)
!1776 = !DILocation(line: 957, column: 2, scope: !1647)
!1777 = !DILocation(line: 957, column: 9, scope: !1647)
!1778 = !DILocation(line: 957, column: 21, scope: !1647)
!1779 = !DILocation(line: 958, column: 18, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1647, file: !449, line: 958, column: 6)
!1781 = !DILocation(line: 958, column: 25, scope: !1780)
!1782 = !DILocation(line: 958, column: 32, scope: !1780)
!1783 = !DILocation(line: 958, column: 7, scope: !1780)
!1784 = !DILocation(line: 958, column: 6, scope: !1647)
!1785 = !DILocation(line: 960, column: 17, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !449, line: 958, column: 39)
!1787 = !DILocation(line: 960, column: 3, scope: !1786)
!1788 = !DILocation(line: 961, column: 9, scope: !1786)
!1789 = !DILocation(line: 962, column: 2, scope: !1786)
!1790 = !DILocation(line: 964, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1647, file: !449, line: 964, column: 6)
!1792 = !DILocation(line: 964, column: 15, scope: !1791)
!1793 = !DILocation(line: 964, column: 22, scope: !1791)
!1794 = !DILocation(line: 964, column: 25, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1791, file: !449, discriminator: 1)
!1796 = !DILocation(line: 964, column: 31, scope: !1795)
!1797 = !DILocation(line: 964, column: 6, scope: !1795)
!1798 = !DILocation(line: 965, column: 17, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1791, file: !449, line: 964, column: 40)
!1800 = !DILocation(line: 965, column: 3, scope: !1799)
!1801 = !DILocation(line: 966, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !449, line: 966, column: 7)
!1803 = !DILocation(line: 966, column: 24, scope: !1802)
!1804 = !DILocation(line: 966, column: 21, scope: !1802)
!1805 = !DILocation(line: 966, column: 7, scope: !1799)
!1806 = !DILocation(line: 967, column: 20, scope: !1802)
!1807 = !DILocation(line: 967, column: 18, scope: !1802)
!1808 = !DILocation(line: 967, column: 4, scope: !1802)
!1809 = !DILocation(line: 968, column: 3, scope: !1799)
!1810 = !DILocation(line: 969, column: 2, scope: !1799)
!1811 = !DILocation(line: 971, column: 9, scope: !1647)
!1812 = !DILocation(line: 971, column: 2, scope: !1647)
!1813 = !DILocation(line: 972, column: 9, scope: !1647)
!1814 = !DILocation(line: 972, column: 2, scope: !1647)
!1815 = !DILocation(line: 973, column: 9, scope: !1647)
!1816 = !DILocation(line: 973, column: 2, scope: !1647)
!1817 = !DILocation(line: 974, column: 1, scope: !1647)
!1818 = distinct !DISubprogram(name: "theme_find", scope: !449, file: !449, line: 893, type: !1648, isLocal: true, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1819 = !DILocalVariable(name: "name", arg: 1, scope: !1818, file: !449, line: 893, type: !364)
!1820 = !DILocation(line: 893, column: 42, scope: !1818)
!1821 = !DILocalVariable(name: "tmp", scope: !1818, file: !449, line: 895, type: !395)
!1822 = !DILocation(line: 895, column: 10, scope: !1818)
!1823 = !DILocation(line: 897, column: 13, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !449, line: 897, column: 2)
!1825 = !DILocation(line: 897, column: 11, scope: !1824)
!1826 = !DILocation(line: 897, column: 7, scope: !1824)
!1827 = !DILocation(line: 897, column: 21, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !449, discriminator: 1)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !449, line: 897, column: 2)
!1830 = !DILocation(line: 897, column: 25, scope: !1828)
!1831 = !DILocation(line: 897, column: 2, scope: !1828)
!1832 = !DILocalVariable(name: "rec", scope: !1833, file: !449, line: 898, type: !366)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !449, line: 897, column: 50)
!1834 = !DILocation(line: 898, column: 14, scope: !1833)
!1835 = !DILocation(line: 898, column: 20, scope: !1833)
!1836 = !DILocation(line: 898, column: 25, scope: !1833)
!1837 = !DILocation(line: 900, column: 26, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !449, line: 900, column: 7)
!1839 = !DILocation(line: 900, column: 31, scope: !1838)
!1840 = !DILocation(line: 900, column: 37, scope: !1838)
!1841 = !DILocation(line: 900, column: 7, scope: !1838)
!1842 = !DILocation(line: 900, column: 43, scope: !1838)
!1843 = !DILocation(line: 900, column: 7, scope: !1833)
!1844 = !DILocation(line: 901, column: 11, scope: !1838)
!1845 = !DILocation(line: 901, column: 4, scope: !1838)
!1846 = !DILocation(line: 902, column: 2, scope: !1833)
!1847 = !DILocation(line: 897, column: 39, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1829, file: !449, discriminator: 2)
!1849 = !DILocation(line: 897, column: 44, scope: !1848)
!1850 = !DILocation(line: 897, column: 37, scope: !1848)
!1851 = !DILocation(line: 897, column: 2, scope: !1848)
!1852 = distinct !{!1852, !1853}
!1853 = !DILocation(line: 897, column: 2, scope: !1818)
!1854 = !DILocation(line: 904, column: 2, scope: !1818)
!1855 = !DILocation(line: 905, column: 1, scope: !1818)
!1856 = distinct !DISubprogram(name: "theme_read", scope: !449, file: !449, line: 1013, type: !1857, isLocal: true, isDefinition: true, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!372, !366, !364}
!1859 = !DILocalVariable(name: "theme", arg: 1, scope: !1856, file: !449, line: 1013, type: !366)
!1860 = !DILocation(line: 1013, column: 34, scope: !1856)
!1861 = !DILocalVariable(name: "path", arg: 2, scope: !1856, file: !449, line: 1013, type: !364)
!1862 = !DILocation(line: 1013, column: 53, scope: !1856)
!1863 = !DILocalVariable(name: "config", scope: !1856, file: !449, line: 1015, type: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64, align: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !109, line: 18, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !109, line: 49, size: 576, align: 64, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1880, !1881, !1882, !1971, !2127, !2128}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !1866, file: !109, line: 50, baseType: !374, size: 64, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !1866, file: !109, line: 51, baseType: !372, size: 32, align: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !1866, file: !109, line: 52, baseType: !372, size: 32, align: 32, offset: 96)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !1866, file: !109, line: 54, baseType: !374, size: 64, align: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !1866, file: !109, line: 55, baseType: !1873, size: 64, align: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64, align: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !109, line: 17, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !109, line: 20, size: 192, align: 64, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1875, file: !109, line: 21, baseType: !372, size: 32, align: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1875, file: !109, line: 22, baseType: !374, size: 64, align: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1875, file: !109, line: 23, baseType: !359, size: 64, align: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1866, file: !109, line: 56, baseType: !386, size: 64, align: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !1866, file: !109, line: 57, baseType: !386, size: 64, align: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !1866, file: !109, line: 59, baseType: !1883, size: 64, align: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64, align: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !19, line: 37, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !19, line: 169, size: 1152, align: 64, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1893, !1898, !1930, !1932, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !1885, file: !19, line: 172, baseType: !401, size: 64, align: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !1885, file: !19, line: 173, baseType: !409, size: 32, align: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !1885, file: !19, line: 176, baseType: !409, size: 32, align: 32, offset: 96)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !1885, file: !19, line: 179, baseType: !1891, size: 64, align: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64, align: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !1885, file: !19, line: 182, baseType: !1894, size: 64, align: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !1896, line: 36, baseType: !1897)
!1896 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !1896, line: 36, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !1885, file: !19, line: 185, baseType: !1899, size: 64, align: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64, align: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !19, line: 38, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !19, line: 127, size: 320, align: 64, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !1901, file: !19, line: 131, baseType: !360, size: 64, align: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !1901, file: !19, line: 132, baseType: !360, size: 64, align: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !1901, file: !19, line: 133, baseType: !360, size: 64, align: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !1901, file: !19, line: 134, baseType: !360, size: 64, align: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !1901, file: !19, line: 138, baseType: !409, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !1901, file: !19, line: 143, baseType: !409, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !1901, file: !19, line: 144, baseType: !409, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !1901, file: !19, line: 145, baseType: !409, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !1901, file: !19, line: 146, baseType: !409, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !1901, file: !19, line: 147, baseType: !409, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !1901, file: !19, line: 148, baseType: !409, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !1901, file: !19, line: 149, baseType: !409, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !1901, file: !19, line: 150, baseType: !409, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !1901, file: !19, line: 151, baseType: !409, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !1901, file: !19, line: 152, baseType: !409, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !1901, file: !19, line: 153, baseType: !409, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !1901, file: !19, line: 154, baseType: !409, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !1901, file: !19, line: 155, baseType: !409, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !1901, file: !19, line: 156, baseType: !409, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !1901, file: !19, line: 157, baseType: !409, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !1901, file: !19, line: 158, baseType: !409, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !1901, file: !19, line: 159, baseType: !409, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !1901, file: !19, line: 160, baseType: !409, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !1901, file: !19, line: 161, baseType: !409, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !1901, file: !19, line: 162, baseType: !409, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !1901, file: !19, line: 163, baseType: !409, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !1901, file: !19, line: 166, baseType: !409, size: 32, align: 32, offset: 288)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1885, file: !19, line: 188, baseType: !1931, size: 32, align: 32, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !19, line: 109, baseType: !18)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1885, file: !19, line: 189, baseType: !1933, size: 64, align: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !19, line: 39, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !19, line: 111, size: 64, align: 64, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1940, !1941, !1942, !1944, !1947, !1948, !1949, !1950, !1952}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !1934, file: !19, line: 113, baseType: !401, size: 64, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !1934, file: !19, line: 114, baseType: !360, size: 64, align: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !1934, file: !19, line: 115, baseType: !1939, size: 64, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !362, line: 54, baseType: !594)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !1934, file: !19, line: 116, baseType: !1939, size: 64, align: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !1934, file: !19, line: 117, baseType: !1939, size: 64, align: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !1934, file: !19, line: 118, baseType: !1943, size: 64, align: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !593, line: 52, baseType: !594)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !1934, file: !19, line: 119, baseType: !1945, size: 64, align: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !362, line: 58, baseType: !1946)
!1946 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !1934, file: !19, line: 120, baseType: !1939, size: 64, align: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !1934, file: !19, line: 121, baseType: !360, size: 64, align: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !1934, file: !19, line: 122, baseType: !360, size: 64, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !1934, file: !19, line: 123, baseType: !1951, size: 8, align: 8)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !362, line: 52, baseType: !431)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !1934, file: !19, line: 124, baseType: !409, size: 32, align: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1885, file: !19, line: 190, baseType: !409, size: 32, align: 32, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !1885, file: !19, line: 191, baseType: !409, size: 32, align: 32, offset: 480)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !1885, file: !19, line: 194, baseType: !1931, size: 32, align: 32, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !1885, file: !19, line: 195, baseType: !1933, size: 64, align: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !1885, file: !19, line: 196, baseType: !409, size: 32, align: 32, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !1885, file: !19, line: 197, baseType: !409, size: 32, align: 32, offset: 672)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !1885, file: !19, line: 201, baseType: !386, size: 64, align: 64, offset: 704)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !1885, file: !19, line: 202, baseType: !417, size: 32, align: 32, offset: 768)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1885, file: !19, line: 203, baseType: !1891, size: 64, align: 64, offset: 832)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !1885, file: !19, line: 204, baseType: !1891, size: 64, align: 64, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1885, file: !19, line: 205, baseType: !360, size: 64, align: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !1885, file: !19, line: 206, baseType: !409, size: 32, align: 32, offset: 1024)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !1885, file: !19, line: 210, baseType: !1966, size: 64, align: 64, offset: 1088)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !19, line: 41, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64, align: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1883, !360, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !362, line: 50, baseType: !417)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1866, file: !109, line: 62, baseType: !1972, size: 64, align: 64, offset: 448)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64, align: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !46, line: 41, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !46, line: 97, size: 896, align: 64, elements: !1975)
!1975 = !{!1976, !1977, !2102, !2103, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !1974, file: !46, line: 100, baseType: !417, size: 32, align: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !1974, file: !46, line: 101, baseType: !1978, size: 64, align: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !46, line: 42, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !46, line: 131, size: 512, align: 64, elements: !1981)
!1981 = !{!1982, !2000, !2004, !2010, !2014, !2089, !2093, !2098}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !1980, file: !46, line: 133, baseType: !1983, size: 64, align: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64, align: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !1972, !360, !592, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !46, line: 75, baseType: !45)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64, align: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64, align: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !1991, line: 42, baseType: !1992)
!1991 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !1991, line: 44, size: 128, align: 64, elements: !1993)
!1993 = !{!1994, !1998, !1999}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1992, file: !1991, line: 46, baseType: !1995, size: 32, align: 32)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !1996, line: 36, baseType: !1997)
!1996 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !593, line: 45, baseType: !384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1992, file: !1991, line: 47, baseType: !417, size: 32, align: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1992, file: !1991, line: 48, baseType: !360, size: 64, align: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !1980, file: !46, line: 138, baseType: !2001, size: 64, align: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64, align: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!1986, !1972, !1891, !592, !1987, !1988}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !1980, file: !46, line: 143, baseType: !2005, size: 64, align: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64, align: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1986, !1972, !2008, !2009, !1988}
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !593, line: 51, baseType: !381)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !46, line: 82, baseType: !52)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !1980, file: !46, line: 147, baseType: !2011, size: 64, align: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64, align: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1986, !1972, !1988}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !1980, file: !46, line: 149, baseType: !2015, size: 64, align: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64, align: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!2018, !1972, !2088}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64, align: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !58, line: 64, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !58, line: 171, size: 768, align: 64, elements: !2021)
!2021 = !{!2022, !2023, !2043, !2072, !2073, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !2020, file: !58, line: 174, baseType: !401, size: 64, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !2020, file: !58, line: 175, baseType: !2024, size: 64, align: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !58, line: 77, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !58, line: 196, size: 192, align: 64, elements: !2027)
!2027 = !{!2028, !2032, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2026, file: !58, line: 198, baseType: !2029, size: 64, align: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64, align: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !401}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !2026, file: !58, line: 199, baseType: !2029, size: 64, align: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2026, file: !58, line: 200, baseType: !2034, size: 64, align: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64, align: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !401, !2018, !2037, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64, align: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !58, line: 155, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64, align: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1970, !401}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !2020, file: !58, line: 177, baseType: !2044, size: 64, align: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64, align: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !58, line: 130, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !58, line: 214, size: 384, align: 64, elements: !2048)
!2048 = !{!2049, !2054, !2058, !2062, !2066, !2067}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2047, file: !58, line: 216, baseType: !2050, size: 64, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64, align: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1970, !2018, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2047, file: !58, line: 218, baseType: !2055, size: 64, align: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64, align: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1970, !2018}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2047, file: !58, line: 219, baseType: !2059, size: 64, align: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64, align: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!1970, !2018, !2038, !401}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !2047, file: !58, line: 222, baseType: !2063, size: 64, align: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64, align: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2018}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !2047, file: !58, line: 226, baseType: !2038, size: 64, align: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !2047, file: !58, line: 227, baseType: !2068, size: 64, align: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !58, line: 212, baseType: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64, align: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !2020, file: !58, line: 178, baseType: !409, size: 32, align: 32, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2020, file: !58, line: 180, baseType: !2074, size: 64, align: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64, align: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !58, line: 48, baseType: !2076)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !58, line: 48, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2020, file: !58, line: 182, baseType: !417, size: 32, align: 32, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !58, line: 183, baseType: !409, size: 32, align: 32, offset: 352)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !2020, file: !58, line: 184, baseType: !409, size: 32, align: 32, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !2020, file: !58, line: 186, baseType: !395, size: 64, align: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2020, file: !58, line: 188, baseType: !2018, size: 64, align: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2020, file: !58, line: 189, baseType: !2018, size: 64, align: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !58, line: 191, baseType: !374, size: 64, align: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2020, file: !58, line: 193, baseType: !2085, size: 64, align: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64, align: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !58, line: 65, baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !58, line: 65, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !58, line: 39, baseType: !57)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !1980, file: !46, line: 151, baseType: !2090, size: 64, align: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64, align: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !1972}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !1980, file: !46, line: 152, baseType: !2094, size: 64, align: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64, align: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!1986, !1972, !2097, !1988}
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !46, line: 95, baseType: !66)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !1980, file: !46, line: 155, baseType: !2099, size: 64, align: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64, align: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2097, !1972}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1974, file: !46, line: 103, baseType: !360, size: 64, align: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !1974, file: !46, line: 104, baseType: !2104, size: 64, align: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !2105, line: 77, baseType: !2106)
!2105 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64, align: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !2105, line: 77, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !1974, file: !46, line: 105, baseType: !2104, size: 64, align: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !1974, file: !46, line: 106, baseType: !360, size: 64, align: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !1974, file: !46, line: 107, baseType: !409, size: 32, align: 32, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !1974, file: !46, line: 109, baseType: !592, size: 64, align: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !1974, file: !46, line: 110, baseType: !585, size: 64, align: 64, offset: 512)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !1974, file: !46, line: 111, baseType: !585, size: 64, align: 64, offset: 576)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1974, file: !46, line: 112, baseType: !585, size: 64, align: 64, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !1974, file: !46, line: 113, baseType: !2116, size: 48, align: 8, offset: 704)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 48, align: 8, elements: !2117)
!2117 = !{!2118}
!2118 = !DISubrange(count: 6)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !1974, file: !46, line: 117, baseType: !409, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !1974, file: !46, line: 118, baseType: !409, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !1974, file: !46, line: 119, baseType: !409, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !1974, file: !46, line: 120, baseType: !409, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !1974, file: !46, line: 121, baseType: !409, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !1974, file: !46, line: 122, baseType: !409, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1974, file: !46, line: 124, baseType: !401, size: 64, align: 64, offset: 768)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1974, file: !46, line: 125, baseType: !401, size: 64, align: 64, offset: 832)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !1866, file: !109, line: 63, baseType: !372, size: 32, align: 32, offset: 512)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !1866, file: !109, line: 64, baseType: !372, size: 32, align: 32, offset: 544)
!2129 = !DILocation(line: 1015, column: 14, scope: !1856)
!2130 = !DILocalVariable(name: "rec", scope: !1856, file: !449, line: 1016, type: !2131)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_READ_REC", file: !449, line: 990, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 987, size: 128, align: 64, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !2132, file: !449, line: 988, baseType: !366, size: 64, align: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2132, file: !449, line: 989, baseType: !1864, size: 64, align: 64, offset: 64)
!2136 = !DILocation(line: 1016, column: 17, scope: !1856)
!2137 = !DILocalVariable(name: "str", scope: !1856, file: !449, line: 1017, type: !374)
!2138 = !DILocation(line: 1017, column: 15, scope: !1856)
!2139 = !DILocation(line: 1019, column: 23, scope: !1856)
!2140 = !DILocation(line: 1019, column: 11, scope: !1856)
!2141 = !DILocation(line: 1019, column: 9, scope: !1856)
!2142 = !DILocation(line: 1020, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1856, file: !449, line: 1020, column: 6)
!2144 = !DILocation(line: 1020, column: 13, scope: !2143)
!2145 = !DILocation(line: 1020, column: 6, scope: !1856)
!2146 = !DILocation(line: 1023, column: 11, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !449, line: 1020, column: 21)
!2148 = !DILocation(line: 1023, column: 29, scope: !2147)
!2149 = !DILocation(line: 1023, column: 28, scope: !2147)
!2150 = !DILocation(line: 1023, column: 17, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2147, file: !449, discriminator: 1)
!2152 = !DILocation(line: 1022, column: 9, scope: !2147)
!2153 = !DILocation(line: 1022, column: 7, scope: !2147)
!2154 = !DILocation(line: 1024, column: 14, scope: !2147)
!2155 = !DILocation(line: 1024, column: 3, scope: !2147)
!2156 = !DILocation(line: 1025, column: 10, scope: !2147)
!2157 = !DILocation(line: 1025, column: 3, scope: !2147)
!2158 = !DILocation(line: 1026, column: 3, scope: !2147)
!2159 = !DILocation(line: 1029, column: 6, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1856, file: !449, line: 1029, column: 6)
!2161 = !DILocation(line: 1029, column: 11, scope: !2160)
!2162 = !DILocation(line: 1029, column: 6, scope: !1856)
!2163 = !DILocation(line: 1030, column: 21, scope: !2160)
!2164 = !DILocation(line: 1030, column: 29, scope: !2160)
!2165 = !DILocation(line: 1030, column: 3, scope: !2160)
!2166 = !DILocation(line: 1032, column: 16, scope: !2160)
!2167 = !DILocation(line: 1032, column: 3, scope: !2160)
!2168 = !DILocation(line: 1034, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !1856, file: !449, line: 1034, column: 6)
!2170 = !DILocation(line: 1034, column: 16, scope: !2169)
!2171 = !DILocation(line: 1034, column: 27, scope: !2169)
!2172 = !DILocation(line: 1034, column: 6, scope: !1856)
!2173 = !DILocation(line: 1036, column: 11, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !449, line: 1034, column: 40)
!2175 = !DILocation(line: 1036, column: 18, scope: !2174)
!2176 = !DILocation(line: 1036, column: 25, scope: !2174)
!2177 = !DILocation(line: 1036, column: 34, scope: !2174)
!2178 = !DILocation(line: 1035, column: 9, scope: !2174)
!2179 = !DILocation(line: 1035, column: 7, scope: !2174)
!2180 = !DILocation(line: 1037, column: 14, scope: !2174)
!2181 = !DILocation(line: 1037, column: 3, scope: !2174)
!2182 = !DILocation(line: 1038, column: 24, scope: !2174)
!2183 = !DILocation(line: 1038, column: 17, scope: !2174)
!2184 = !DILocation(line: 1039, column: 2, scope: !2174)
!2185 = !DILocation(line: 1042, column: 18, scope: !1856)
!2186 = !DILocation(line: 1042, column: 3, scope: !1856)
!2187 = !DILocation(line: 1041, column: 2, scope: !1856)
!2188 = !DILocation(line: 1041, column: 9, scope: !1856)
!2189 = !DILocation(line: 1041, column: 23, scope: !1856)
!2190 = !DILocation(line: 1043, column: 36, scope: !1856)
!2191 = !DILocation(line: 1043, column: 20, scope: !1856)
!2192 = !DILocation(line: 1043, column: 2, scope: !1856)
!2193 = !DILocation(line: 1043, column: 9, scope: !1856)
!2194 = !DILocation(line: 1043, column: 18, scope: !1856)
!2195 = !DILocation(line: 1045, column: 22, scope: !1856)
!2196 = !DILocation(line: 1045, column: 30, scope: !1856)
!2197 = !DILocation(line: 1045, column: 2, scope: !1856)
!2198 = !DILocation(line: 1047, column: 6, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1856, file: !449, line: 1047, column: 6)
!2200 = !DILocation(line: 1047, column: 11, scope: !2199)
!2201 = !DILocation(line: 1047, column: 6, scope: !1856)
!2202 = !DILocation(line: 1048, column: 24, scope: !2199)
!2203 = !DILocation(line: 1048, column: 31, scope: !2199)
!2204 = !DILocation(line: 1048, column: 3, scope: !2199)
!2205 = !DILocation(line: 1049, column: 23, scope: !1856)
!2206 = !DILocation(line: 1049, column: 31, scope: !1856)
!2207 = !DILocation(line: 1049, column: 2, scope: !1856)
!2208 = !DILocation(line: 1051, column: 14, scope: !1856)
!2209 = !DILocation(line: 1051, column: 6, scope: !1856)
!2210 = !DILocation(line: 1051, column: 12, scope: !1856)
!2211 = !DILocation(line: 1052, column: 15, scope: !1856)
!2212 = !DILocation(line: 1052, column: 6, scope: !1856)
!2213 = !DILocation(line: 1052, column: 13, scope: !1856)
!2214 = !DILocation(line: 1053, column: 23, scope: !1856)
!2215 = !DILocation(line: 1054, column: 38, scope: !1856)
!2216 = !DILocation(line: 1053, column: 2, scope: !1856)
!2217 = !DILocation(line: 1055, column: 15, scope: !1856)
!2218 = !DILocation(line: 1055, column: 2, scope: !1856)
!2219 = !DILocation(line: 1057, column: 9, scope: !1856)
!2220 = !DILocation(line: 1058, column: 1, scope: !1856)
!2221 = distinct !DISubprogram(name: "window_themes_update", scope: !449, file: !449, line: 907, type: !2070, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2222 = !DILocalVariable(name: "tmp", scope: !2221, file: !449, line: 909, type: !395)
!2223 = !DILocation(line: 909, column: 10, scope: !2221)
!2224 = !DILocation(line: 911, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !449, line: 911, column: 2)
!2226 = !DILocation(line: 911, column: 11, scope: !2225)
!2227 = !DILocation(line: 911, column: 7, scope: !2225)
!2228 = !DILocation(line: 911, column: 22, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !449, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !449, line: 911, column: 2)
!2231 = !DILocation(line: 911, column: 26, scope: !2229)
!2232 = !DILocation(line: 911, column: 2, scope: !2229)
!2233 = !DILocalVariable(name: "rec", scope: !2234, file: !449, line: 912, type: !2235)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !449, line: 911, column: 51)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64, align: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !2237, line: 117, baseType: !2238)
!2237 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !2239, line: 28, size: 1280, align: 64, elements: !2240)
!2239 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !2238, file: !2239, line: 29, baseType: !372, size: 32, align: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2238, file: !2239, line: 30, baseType: !374, size: 64, align: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2238, file: !2239, line: 32, baseType: !372, size: 32, align: 32, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !2238, file: !2239, line: 32, baseType: !372, size: 32, align: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !2238, file: !2239, line: 34, baseType: !395, size: 64, align: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2238, file: !2239, line: 35, baseType: !2247, size: 64, align: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64, align: 64)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !2237, line: 108, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !2250, line: 5, size: 704, align: 64, elements: !2251)
!2250 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!2251 = !{!2252, !2254, !2255, !2256, !2257, !2261, !2262, !2263, !2264, !2265, !2266, !2270}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2249, file: !2253, line: 3, baseType: !372, size: 32, align: 32)
!2253 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !2249, file: !2253, line: 4, baseType: !372, size: 32, align: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !2249, file: !2253, line: 5, baseType: !386, size: 64, align: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !2249, file: !2253, line: 7, baseType: !359, size: 64, align: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !2249, file: !2253, line: 8, baseType: !2258, size: 64, align: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64, align: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !2237, line: 107, baseType: !2260)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !2237, line: 107, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !2249, file: !2253, line: 9, baseType: !374, size: 64, align: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2249, file: !2253, line: 10, baseType: !374, size: 64, align: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !2249, file: !2253, line: 11, baseType: !377, size: 64, align: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !2249, file: !2253, line: 12, baseType: !372, size: 32, align: 32, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !2249, file: !2253, line: 13, baseType: !374, size: 64, align: 64, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2249, file: !2253, line: 15, baseType: !2267, size: 64, align: 64, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64, align: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !2247}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !2249, file: !2253, line: 17, baseType: !2271, size: 64, align: 64, offset: 640)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64, align: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!364, !2247}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !2238, file: !2239, line: 36, baseType: !2258, size: 64, align: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !2238, file: !2239, line: 37, baseType: !2258, size: 64, align: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !2238, file: !2239, line: 38, baseType: !374, size: 64, align: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2238, file: !2239, line: 40, baseType: !372, size: 32, align: 32, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !2238, file: !2239, line: 41, baseType: !395, size: 64, align: 64, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !2238, file: !2239, line: 43, baseType: !384, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !2238, file: !2239, line: 44, baseType: !384, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !2238, file: !2239, line: 45, baseType: !384, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !2238, file: !2239, line: 48, baseType: !2283, size: 64, align: 64, offset: 704)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64, align: 64)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !2285, line: 14, baseType: !2286)
!2285 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2285, line: 6, size: 256, align: 64, elements: !2287)
!2287 = !{!2288, !2289, !2298, !2299, !2300}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2286, file: !2285, line: 7, baseType: !374, size: 64, align: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2286, file: !2285, line: 9, baseType: !2290, size: 64, align: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64, align: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !2292, line: 37, baseType: !2293)
!2292 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !2292, line: 39, size: 192, align: 64, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2293, file: !2292, line: 41, baseType: !401, size: 64, align: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2293, file: !2292, line: 42, baseType: !2290, size: 64, align: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2293, file: !2292, line: 43, baseType: !2290, size: 64, align: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !2286, file: !2285, line: 10, baseType: !372, size: 32, align: 32, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2286, file: !2285, line: 12, baseType: !372, size: 32, align: 32, offset: 160)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !2286, file: !2285, line: 13, baseType: !372, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !2238, file: !2239, line: 49, baseType: !374, size: 64, align: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !2238, file: !2239, line: 51, baseType: !372, size: 32, align: 32, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !2238, file: !2239, line: 52, baseType: !374, size: 64, align: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !2238, file: !2239, line: 54, baseType: !377, size: 64, align: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !2238, file: !2239, line: 55, baseType: !377, size: 64, align: 64, offset: 1024)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !2238, file: !2239, line: 57, baseType: !374, size: 64, align: 64, offset: 1088)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !2238, file: !2239, line: 58, baseType: !359, size: 64, align: 64, offset: 1152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !2238, file: !2239, line: 60, baseType: !359, size: 64, align: 64, offset: 1216)
!2309 = !DILocation(line: 912, column: 15, scope: !2234)
!2310 = !DILocation(line: 912, column: 21, scope: !2234)
!2311 = !DILocation(line: 912, column: 26, scope: !2234)
!2312 = !DILocation(line: 914, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2234, file: !449, line: 914, column: 7)
!2314 = !DILocation(line: 914, column: 12, scope: !2313)
!2315 = !DILocation(line: 914, column: 23, scope: !2313)
!2316 = !DILocation(line: 914, column: 7, scope: !2234)
!2317 = !DILocation(line: 915, column: 49, scope: !2313)
!2318 = !DILocation(line: 915, column: 54, scope: !2313)
!2319 = !DILocation(line: 915, column: 38, scope: !2313)
!2320 = !DILocation(line: 915, column: 25, scope: !2313)
!2321 = !DILocation(line: 915, column: 30, scope: !2313)
!2322 = !DILocation(line: 915, column: 36, scope: !2313)
!2323 = !DILocation(line: 916, column: 2, scope: !2234)
!2324 = !DILocation(line: 911, column: 40, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2230, file: !449, discriminator: 2)
!2326 = !DILocation(line: 911, column: 45, scope: !2325)
!2327 = !DILocation(line: 911, column: 38, scope: !2325)
!2328 = !DILocation(line: 911, column: 2, scope: !2325)
!2329 = distinct !{!2329, !2330}
!2330 = !DILocation(line: 911, column: 2, scope: !2221)
!2331 = !DILocation(line: 917, column: 1, scope: !2221)
!2332 = distinct !DISubprogram(name: "themes_reload", scope: !449, file: !449, line: 1396, type: !2070, isLocal: false, isDefinition: true, scopeLine: 1397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2333 = !DILocalVariable(name: "refs", scope: !2332, file: !449, line: 1398, type: !395)
!2334 = !DILocation(line: 1398, column: 10, scope: !2332)
!2335 = !DILocalVariable(name: "fname", scope: !2332, file: !449, line: 1399, type: !374)
!2336 = !DILocation(line: 1399, column: 8, scope: !2332)
!2337 = !DILocation(line: 1403, column: 7, scope: !2332)
!2338 = !DILocation(line: 1404, column: 2, scope: !2332)
!2339 = !DILocation(line: 1404, column: 9, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2332, file: !449, discriminator: 1)
!2341 = !DILocation(line: 1404, column: 16, scope: !2340)
!2342 = !DILocation(line: 1404, column: 2, scope: !2340)
!2343 = !DILocalVariable(name: "theme", scope: !2344, file: !449, line: 1405, type: !366)
!2344 = distinct !DILexicalBlock(scope: !2332, file: !449, line: 1404, column: 24)
!2345 = !DILocation(line: 1405, column: 14, scope: !2344)
!2346 = !DILocation(line: 1405, column: 22, scope: !2344)
!2347 = !DILocation(line: 1405, column: 30, scope: !2344)
!2348 = !DILocation(line: 1407, column: 26, scope: !2344)
!2349 = !DILocation(line: 1407, column: 32, scope: !2344)
!2350 = !DILocation(line: 1407, column: 10, scope: !2344)
!2351 = !DILocation(line: 1407, column: 8, scope: !2344)
!2352 = !DILocation(line: 1409, column: 3, scope: !2344)
!2353 = !DILocation(line: 1409, column: 10, scope: !2344)
!2354 = !DILocation(line: 1409, column: 18, scope: !2344)
!2355 = !DILocation(line: 1410, column: 17, scope: !2344)
!2356 = !DILocation(line: 1410, column: 3, scope: !2344)
!2357 = !DILocation(line: 1404, column: 2, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2332, file: !449, discriminator: 2)
!2359 = distinct !{!2359, !2338}
!2360 = !DILocation(line: 1414, column: 18, scope: !2332)
!2361 = !DILocation(line: 1414, column: 16, scope: !2332)
!2362 = !DILocation(line: 1415, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2332, file: !449, line: 1415, column: 6)
!2364 = !DILocation(line: 1415, column: 20, scope: !2363)
!2365 = !DILocation(line: 1415, column: 6, scope: !2332)
!2366 = !DILocation(line: 1416, column: 47, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !449, line: 1415, column: 28)
!2368 = !DILocation(line: 1416, column: 11, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2367, file: !449, discriminator: 1)
!2370 = !DILocation(line: 1416, column: 9, scope: !2367)
!2371 = !DILocation(line: 1417, column: 32, scope: !2367)
!2372 = !DILocation(line: 1417, column: 19, scope: !2367)
!2373 = !DILocation(line: 1417, column: 17, scope: !2367)
!2374 = !DILocation(line: 1418, column: 3, scope: !2367)
!2375 = !DILocation(line: 1418, column: 18, scope: !2367)
!2376 = !DILocation(line: 1418, column: 32, scope: !2367)
!2377 = !DILocation(line: 1419, column: 28, scope: !2367)
!2378 = !DILocation(line: 1419, column: 17, scope: !2367)
!2379 = !DILocation(line: 1420, column: 10, scope: !2367)
!2380 = !DILocation(line: 1420, column: 3, scope: !2367)
!2381 = !DILocation(line: 1421, column: 2, scope: !2367)
!2382 = !DILocation(line: 1423, column: 9, scope: !2332)
!2383 = !DILocation(line: 1424, column: 15, scope: !2332)
!2384 = !DILocation(line: 1424, column: 2, scope: !2340)
!2385 = !DILocation(line: 1426, column: 2, scope: !2332)
!2386 = !DILocation(line: 1426, column: 9, scope: !2340)
!2387 = !DILocation(line: 1426, column: 14, scope: !2340)
!2388 = !DILocation(line: 1426, column: 2, scope: !2340)
!2389 = !DILocalVariable(name: "tmp", scope: !2390, file: !449, line: 1427, type: !359)
!2390 = distinct !DILexicalBlock(scope: !2332, file: !449, line: 1426, column: 22)
!2391 = !DILocation(line: 1427, column: 9, scope: !2390)
!2392 = !DILocation(line: 1427, column: 15, scope: !2390)
!2393 = !DILocation(line: 1427, column: 21, scope: !2390)
!2394 = !DILocation(line: 1428, column: 25, scope: !2390)
!2395 = !DILocation(line: 1428, column: 31, scope: !2390)
!2396 = !DILocation(line: 1428, column: 37, scope: !2390)
!2397 = !DILocation(line: 1428, column: 10, scope: !2390)
!2398 = !DILocation(line: 1428, column: 8, scope: !2390)
!2399 = !DILocation(line: 1429, column: 15, scope: !2390)
!2400 = !DILocation(line: 1429, column: 3, scope: !2390)
!2401 = !DILocation(line: 1426, column: 2, scope: !2358)
!2402 = distinct !{!2402, !2385}
!2403 = !DILocation(line: 1431, column: 1, scope: !2332)
!2404 = distinct !DISubprogram(name: "change_theme", scope: !449, file: !449, line: 1363, type: !2405, isLocal: true, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !364, !372}
!2407 = !DILocalVariable(name: "name", arg: 1, scope: !2404, file: !449, line: 1363, type: !364)
!2408 = !DILocation(line: 1363, column: 38, scope: !2404)
!2409 = !DILocalVariable(name: "verbose", arg: 2, scope: !2404, file: !449, line: 1363, type: !372)
!2410 = !DILocation(line: 1363, column: 48, scope: !2404)
!2411 = !DILocalVariable(name: "rec", scope: !2404, file: !449, line: 1365, type: !366)
!2412 = !DILocation(line: 1365, column: 13, scope: !2404)
!2413 = !DILocation(line: 1367, column: 19, scope: !2404)
!2414 = !DILocation(line: 1367, column: 8, scope: !2404)
!2415 = !DILocation(line: 1367, column: 6, scope: !2404)
!2416 = !DILocation(line: 1368, column: 6, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2404, file: !449, line: 1368, column: 6)
!2418 = !DILocation(line: 1368, column: 10, scope: !2417)
!2419 = !DILocation(line: 1368, column: 6, scope: !2404)
!2420 = !DILocation(line: 1369, column: 19, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !449, line: 1368, column: 18)
!2422 = !DILocation(line: 1369, column: 17, scope: !2421)
!2423 = !DILocation(line: 1370, column: 49, scope: !2421)
!2424 = !DILocation(line: 1370, column: 17, scope: !2421)
!2425 = !DILocation(line: 1372, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2421, file: !449, line: 1372, column: 7)
!2427 = !DILocation(line: 1372, column: 7, scope: !2421)
!2428 = !DILocation(line: 1373, column: 47, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !449, line: 1372, column: 16)
!2430 = !DILocation(line: 1373, column: 52, scope: !2429)
!2431 = !DILocation(line: 1373, column: 58, scope: !2429)
!2432 = !DILocation(line: 1373, column: 63, scope: !2429)
!2433 = !DILocation(line: 1373, column: 4, scope: !2429)
!2434 = !DILocation(line: 1376, column: 3, scope: !2429)
!2435 = !DILocation(line: 1377, column: 2, scope: !2421)
!2436 = !DILocation(line: 1377, column: 13, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2438, file: !449, discriminator: 1)
!2438 = distinct !DILexicalBlock(scope: !2417, file: !449, line: 1377, column: 13)
!2439 = !DILocation(line: 1378, column: 47, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !449, line: 1377, column: 22)
!2441 = !DILocation(line: 1378, column: 3, scope: !2440)
!2442 = !DILocation(line: 1380, column: 2, scope: !2440)
!2443 = !DILocation(line: 1381, column: 1, scope: !2404)
!2444 = distinct !DISubprogram(name: "themes_init", scope: !449, file: !449, line: 1450, type: !2070, isLocal: false, isDefinition: true, scopeLine: 1451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2445 = !DILocation(line: 1452, column: 2, scope: !2444)
!2446 = !DILocation(line: 1454, column: 20, scope: !2444)
!2447 = !DILocation(line: 1454, column: 18, scope: !2444)
!2448 = !DILocation(line: 1456, column: 19, scope: !2444)
!2449 = !DILocation(line: 1456, column: 17, scope: !2444)
!2450 = !DILocation(line: 1458, column: 23, scope: !2444)
!2451 = !DILocation(line: 1459, column: 21, scope: !2444)
!2452 = !DILocation(line: 1461, column: 2, scope: !2444)
!2453 = !DILocation(line: 1463, column: 2, scope: !2444)
!2454 = !DILocation(line: 1464, column: 2, scope: !2444)
!2455 = !DILocation(line: 1465, column: 2, scope: !2444)
!2456 = !DILocation(line: 1466, column: 2, scope: !2444)
!2457 = !DILocation(line: 1467, column: 9, scope: !2444)
!2458 = !DILocation(line: 1468, column: 2, scope: !2444)
!2459 = !DILocation(line: 1470, column: 2, scope: !2444)
!2460 = !DILocation(line: 1471, column: 2, scope: !2444)
!2461 = !DILocation(line: 1472, column: 1, scope: !2444)
!2462 = distinct !DISubprogram(name: "read_internal_theme", scope: !449, file: !449, line: 1433, type: !2463, isLocal: true, isDefinition: true, scopeLine: 1434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!366}
!2465 = !DILocalVariable(name: "config", scope: !2462, file: !449, line: 1435, type: !1864)
!2466 = !DILocation(line: 1435, column: 14, scope: !2462)
!2467 = !DILocalVariable(name: "theme", scope: !2462, file: !449, line: 1436, type: !366)
!2468 = !DILocation(line: 1436, column: 13, scope: !2462)
!2469 = !DILocation(line: 1438, column: 10, scope: !2462)
!2470 = !DILocation(line: 1438, column: 8, scope: !2462)
!2471 = !DILocation(line: 1439, column: 2, scope: !2462)
!2472 = !DILocation(line: 1439, column: 9, scope: !2462)
!2473 = !DILocation(line: 1439, column: 17, scope: !2462)
!2474 = !DILocation(line: 1440, column: 16, scope: !2462)
!2475 = !DILocation(line: 1440, column: 2, scope: !2462)
!2476 = !DILocation(line: 1442, column: 11, scope: !2462)
!2477 = !DILocation(line: 1442, column: 9, scope: !2462)
!2478 = !DILocation(line: 1443, column: 20, scope: !2462)
!2479 = !DILocation(line: 1443, column: 28, scope: !2462)
!2480 = !DILocation(line: 1443, column: 2, scope: !2462)
!2481 = !DILocation(line: 1444, column: 23, scope: !2462)
!2482 = !DILocation(line: 1444, column: 31, scope: !2462)
!2483 = !DILocation(line: 1444, column: 2, scope: !2462)
!2484 = !DILocation(line: 1445, column: 15, scope: !2462)
!2485 = !DILocation(line: 1445, column: 2, scope: !2462)
!2486 = !DILocation(line: 1447, column: 9, scope: !2462)
!2487 = !DILocation(line: 1447, column: 2, scope: !2462)
!2488 = distinct !DISubprogram(name: "cmd_format", scope: !449, file: !449, line: 1147, type: !1568, isLocal: true, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2489 = !DILocalVariable(name: "data", arg: 1, scope: !2488, file: !449, line: 1147, type: !364)
!2490 = !DILocation(line: 1147, column: 36, scope: !2488)
!2491 = !DILocalVariable(name: "optlist", scope: !2488, file: !449, line: 1149, type: !386)
!2492 = !DILocation(line: 1149, column: 21, scope: !2488)
!2493 = !DILocalVariable(name: "tmp", scope: !2488, file: !449, line: 1150, type: !395)
!2494 = !DILocation(line: 1150, column: 10, scope: !2488)
!2495 = !DILocalVariable(name: "modules", scope: !2488, file: !449, line: 1150, type: !395)
!2496 = !DILocation(line: 1150, column: 16, scope: !2488)
!2497 = !DILocalVariable(name: "module", scope: !2488, file: !449, line: 1151, type: !374)
!2498 = !DILocation(line: 1151, column: 8, scope: !2488)
!2499 = !DILocalVariable(name: "key", scope: !2488, file: !449, line: 1151, type: !374)
!2500 = !DILocation(line: 1151, column: 17, scope: !2488)
!2501 = !DILocalVariable(name: "value", scope: !2488, file: !449, line: 1151, type: !374)
!2502 = !DILocation(line: 1151, column: 23, scope: !2488)
!2503 = !DILocalVariable(name: "free_arg", scope: !2488, file: !449, line: 1152, type: !359)
!2504 = !DILocation(line: 1152, column: 8, scope: !2488)
!2505 = !DILocalVariable(name: "reset", scope: !2488, file: !449, line: 1153, type: !372)
!2506 = !DILocation(line: 1153, column: 6, scope: !2488)
!2507 = !DILocation(line: 1155, column: 22, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2488, file: !449, line: 1155, column: 6)
!2509 = !DILocation(line: 1155, column: 7, scope: !2508)
!2510 = !DILocation(line: 1155, column: 6, scope: !2488)
!2511 = !DILocation(line: 1157, column: 3, scope: !2508)
!2512 = !DILocation(line: 1159, column: 12, scope: !2488)
!2513 = !DILocation(line: 1159, column: 10, scope: !2488)
!2514 = !DILocation(line: 1160, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2488, file: !449, line: 1160, column: 6)
!2516 = !DILocation(line: 1160, column: 6, scope: !2515)
!2517 = !DILocation(line: 1160, column: 14, scope: !2515)
!2518 = !DILocation(line: 1160, column: 6, scope: !2488)
!2519 = !DILocation(line: 1161, column: 10, scope: !2515)
!2520 = !DILocation(line: 1161, column: 3, scope: !2515)
!2521 = !DILocation(line: 1162, column: 24, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !449, line: 1162, column: 11)
!2523 = !DILocation(line: 1162, column: 33, scope: !2522)
!2524 = !DILocation(line: 1162, column: 11, scope: !2522)
!2525 = !DILocation(line: 1162, column: 41, scope: !2522)
!2526 = !DILocation(line: 1162, column: 11, scope: !2515)
!2527 = !DILocation(line: 1164, column: 19, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !449, line: 1162, column: 49)
!2529 = !DILocation(line: 1164, column: 3, scope: !2528)
!2530 = !DILocation(line: 1165, column: 23, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !449, line: 1165, column: 7)
!2532 = !DILocation(line: 1165, column: 8, scope: !2531)
!2533 = !DILocation(line: 1165, column: 7, scope: !2528)
!2534 = !DILocation(line: 1167, column: 4, scope: !2531)
!2535 = !DILocation(line: 1168, column: 10, scope: !2528)
!2536 = !DILocation(line: 1169, column: 2, scope: !2528)
!2537 = !DILocation(line: 1171, column: 8, scope: !2488)
!2538 = !DILocation(line: 1172, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2488, file: !449, line: 1172, column: 6)
!2540 = !DILocation(line: 1172, column: 6, scope: !2539)
!2541 = !DILocation(line: 1172, column: 11, scope: !2539)
!2542 = !DILocation(line: 1172, column: 6, scope: !2488)
!2543 = !DILocation(line: 1172, column: 24, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2539, file: !449, discriminator: 1)
!2545 = !DILocation(line: 1172, column: 20, scope: !2544)
!2546 = !DILocation(line: 1173, column: 26, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2488, file: !449, line: 1173, column: 6)
!2548 = !DILocation(line: 1173, column: 6, scope: !2547)
!2549 = !DILocation(line: 1173, column: 6, scope: !2488)
!2550 = !DILocation(line: 1174, column: 9, scope: !2547)
!2551 = !DILocation(line: 1174, column: 3, scope: !2547)
!2552 = !DILocation(line: 1175, column: 31, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2547, file: !449, line: 1175, column: 11)
!2554 = !DILocation(line: 1175, column: 11, scope: !2553)
!2555 = !DILocation(line: 1175, column: 11, scope: !2547)
!2556 = !DILocation(line: 1176, column: 9, scope: !2553)
!2557 = !DILocation(line: 1176, column: 3, scope: !2553)
!2558 = !DILocation(line: 1177, column: 12, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !449, line: 1177, column: 11)
!2560 = !DILocation(line: 1177, column: 11, scope: !2559)
!2561 = !DILocation(line: 1177, column: 18, scope: !2559)
!2562 = !DILocation(line: 1177, column: 11, scope: !2553)
!2563 = !DILocation(line: 1178, column: 9, scope: !2559)
!2564 = !DILocation(line: 1178, column: 3, scope: !2559)
!2565 = !DILocation(line: 1180, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2488, file: !449, line: 1180, column: 2)
!2567 = !DILocation(line: 1180, column: 11, scope: !2566)
!2568 = !DILocation(line: 1180, column: 7, scope: !2566)
!2569 = !DILocation(line: 1180, column: 22, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2571, file: !449, discriminator: 1)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !449, line: 1180, column: 2)
!2572 = !DILocation(line: 1180, column: 26, scope: !2570)
!2573 = !DILocation(line: 1180, column: 2, scope: !2570)
!2574 = !DILocalVariable(name: "rec", scope: !2575, file: !449, line: 1181, type: !447)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !449, line: 1180, column: 51)
!2576 = !DILocation(line: 1181, column: 21, scope: !2575)
!2577 = !DILocation(line: 1181, column: 27, scope: !2575)
!2578 = !DILocation(line: 1181, column: 32, scope: !2575)
!2579 = !DILocation(line: 1183, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2575, file: !449, line: 1183, column: 7)
!2581 = !DILocation(line: 1183, column: 14, scope: !2580)
!2582 = !DILocation(line: 1183, column: 21, scope: !2580)
!2583 = !DILocation(line: 1183, column: 43, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2580, file: !449, discriminator: 1)
!2585 = !DILocation(line: 1183, column: 48, scope: !2584)
!2586 = !DILocation(line: 1183, column: 60, scope: !2584)
!2587 = !DILocation(line: 1183, column: 24, scope: !2584)
!2588 = !DILocation(line: 1183, column: 68, scope: !2584)
!2589 = !DILocation(line: 1183, column: 7, scope: !2584)
!2590 = !DILocation(line: 1184, column: 15, scope: !2580)
!2591 = !DILocation(line: 1184, column: 20, scope: !2580)
!2592 = !DILocation(line: 1184, column: 25, scope: !2580)
!2593 = !DILocation(line: 1184, column: 32, scope: !2580)
!2594 = !DILocation(line: 1184, column: 4, scope: !2580)
!2595 = !DILocation(line: 1185, column: 2, scope: !2575)
!2596 = !DILocation(line: 1180, column: 40, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2571, file: !449, discriminator: 2)
!2598 = !DILocation(line: 1180, column: 45, scope: !2597)
!2599 = !DILocation(line: 1180, column: 38, scope: !2597)
!2600 = !DILocation(line: 1180, column: 2, scope: !2597)
!2601 = distinct !{!2601, !2602}
!2602 = !DILocation(line: 1180, column: 2, scope: !2488)
!2603 = !DILocation(line: 1186, column: 18, scope: !2488)
!2604 = !DILocation(line: 1186, column: 2, scope: !2488)
!2605 = !DILocation(line: 1187, column: 15, scope: !2488)
!2606 = !DILocation(line: 1187, column: 2, scope: !2488)
!2607 = !DILocation(line: 1189, column: 25, scope: !2488)
!2608 = !DILocation(line: 1189, column: 9, scope: !2488)
!2609 = !DILocation(line: 1190, column: 1, scope: !2488)
!2610 = !DILocation(line: 1190, column: 1, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2488, file: !449, discriminator: 1)
!2612 = distinct !DISubprogram(name: "cmd_save", scope: !449, file: !449, line: 1273, type: !1568, isLocal: true, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2613 = !DILocalVariable(name: "data", arg: 1, scope: !2612, file: !449, line: 1273, type: !364)
!2614 = !DILocation(line: 1273, column: 34, scope: !2612)
!2615 = !DILocalVariable(name: "tmp", scope: !2612, file: !449, line: 1275, type: !395)
!2616 = !DILocation(line: 1275, column: 10, scope: !2612)
!2617 = !DILocalVariable(name: "optlist", scope: !2612, file: !449, line: 1276, type: !386)
!2618 = !DILocation(line: 1276, column: 21, scope: !2612)
!2619 = !DILocalVariable(name: "free_arg", scope: !2612, file: !449, line: 1277, type: !359)
!2620 = !DILocation(line: 1277, column: 15, scope: !2612)
!2621 = !DILocalVariable(name: "fname", scope: !2612, file: !449, line: 1278, type: !374)
!2622 = !DILocation(line: 1278, column: 8, scope: !2612)
!2623 = !DILocalVariable(name: "saveall", scope: !2612, file: !449, line: 1279, type: !372)
!2624 = !DILocation(line: 1279, column: 6, scope: !2612)
!2625 = !DILocation(line: 1281, column: 22, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2612, file: !449, line: 1281, column: 6)
!2627 = !DILocation(line: 1281, column: 7, scope: !2626)
!2628 = !DILocation(line: 1281, column: 6, scope: !2612)
!2629 = !DILocation(line: 1283, column: 3, scope: !2626)
!2630 = !DILocation(line: 1285, column: 39, scope: !2612)
!2631 = !DILocation(line: 1285, column: 19, scope: !2612)
!2632 = !DILocation(line: 1285, column: 59, scope: !2612)
!2633 = !DILocation(line: 1285, column: 17, scope: !2612)
!2634 = !DILocation(line: 1286, column: 13, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2612, file: !449, line: 1286, column: 2)
!2636 = !DILocation(line: 1286, column: 11, scope: !2635)
!2637 = !DILocation(line: 1286, column: 7, scope: !2635)
!2638 = !DILocation(line: 1286, column: 21, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !449, discriminator: 1)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !449, line: 1286, column: 2)
!2641 = !DILocation(line: 1286, column: 25, scope: !2639)
!2642 = !DILocation(line: 1286, column: 2, scope: !2639)
!2643 = !DILocalVariable(name: "theme", scope: !2644, file: !449, line: 1287, type: !366)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !449, line: 1286, column: 50)
!2645 = !DILocation(line: 1287, column: 14, scope: !2644)
!2646 = !DILocation(line: 1287, column: 22, scope: !2644)
!2647 = !DILocation(line: 1287, column: 27, scope: !2644)
!2648 = !DILocation(line: 1289, column: 14, scope: !2644)
!2649 = !DILocation(line: 1289, column: 21, scope: !2644)
!2650 = !DILocation(line: 1289, column: 3, scope: !2644)
!2651 = !DILocation(line: 1290, column: 2, scope: !2644)
!2652 = !DILocation(line: 1286, column: 39, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2640, file: !449, discriminator: 2)
!2654 = !DILocation(line: 1286, column: 44, scope: !2653)
!2655 = !DILocation(line: 1286, column: 37, scope: !2653)
!2656 = !DILocation(line: 1286, column: 2, scope: !2653)
!2657 = distinct !{!2657, !2658}
!2658 = !DILocation(line: 1286, column: 2, scope: !2612)
!2659 = !DILocation(line: 1292, column: 18, scope: !2612)
!2660 = !DILocation(line: 1292, column: 2, scope: !2612)
!2661 = !DILocation(line: 1293, column: 1, scope: !2612)
!2662 = !DILocation(line: 1293, column: 1, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2612, file: !449, discriminator: 1)
!2664 = distinct !DISubprogram(name: "sig_complete_format", scope: !449, file: !449, line: 1335, type: !2665, isLocal: true, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2667, !2235, !364, !364, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64, align: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!2669 = !DILocalVariable(name: "list", arg: 1, scope: !2664, file: !449, line: 1335, type: !2667)
!2670 = !DILocation(line: 1335, column: 41, scope: !2664)
!2671 = !DILocalVariable(name: "window", arg: 2, scope: !2664, file: !449, line: 1335, type: !2235)
!2672 = !DILocation(line: 1335, column: 59, scope: !2664)
!2673 = !DILocalVariable(name: "word", arg: 3, scope: !2664, file: !449, line: 1336, type: !364)
!2674 = !DILocation(line: 1336, column: 17, scope: !2664)
!2675 = !DILocalVariable(name: "line", arg: 4, scope: !2664, file: !449, line: 1336, type: !364)
!2676 = !DILocation(line: 1336, column: 35, scope: !2664)
!2677 = !DILocalVariable(name: "want_space", arg: 5, scope: !2664, file: !449, line: 1336, type: !2668)
!2678 = !DILocation(line: 1336, column: 46, scope: !2664)
!2679 = !DILocalVariable(name: "ptr", scope: !2664, file: !449, line: 1338, type: !364)
!2680 = !DILocation(line: 1338, column: 14, scope: !2664)
!2681 = !DILocalVariable(name: "words", scope: !2664, file: !449, line: 1339, type: !372)
!2682 = !DILocation(line: 1339, column: 6, scope: !2664)
!2683 = !DILocation(line: 1341, column: 2, scope: !2664)
!2684 = distinct !{!2684, !2683}
!2685 = !DILocation(line: 1341, column: 10, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2687, file: !449, discriminator: 1)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !449, line: 1341, column: 10)
!2688 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1341, column: 4)
!2689 = !DILocation(line: 1341, column: 15, scope: !2686)
!2690 = !DILocation(line: 1341, column: 5, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !449, discriminator: 2)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !449, line: 1341, column: 3)
!2693 = !DILocation(line: 1341, column: 14, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2695, file: !449, discriminator: 3)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !449, line: 1341, column: 12)
!2696 = !DILocation(line: 1341, column: 99, scope: !2694)
!2697 = !DILocation(line: 1341, column: 110, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2688, file: !449, discriminator: 4)
!2699 = !DILocation(line: 1342, column: 2, scope: !2664)
!2700 = distinct !{!2700, !2699}
!2701 = !DILocation(line: 1342, column: 10, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2703, file: !449, discriminator: 1)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !449, line: 1342, column: 10)
!2704 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1342, column: 4)
!2705 = !DILocation(line: 1342, column: 15, scope: !2702)
!2706 = !DILocation(line: 1342, column: 5, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2708, file: !449, discriminator: 2)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !449, line: 1342, column: 3)
!2709 = !DILocation(line: 1342, column: 14, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2711, file: !449, discriminator: 3)
!2711 = distinct !DILexicalBlock(scope: !2703, file: !449, line: 1342, column: 12)
!2712 = !DILocation(line: 1342, column: 99, scope: !2710)
!2713 = !DILocation(line: 1342, column: 110, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2704, file: !449, discriminator: 4)
!2715 = !DILocation(line: 1343, column: 2, scope: !2664)
!2716 = distinct !{!2716, !2715}
!2717 = !DILocation(line: 1343, column: 10, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2719, file: !449, discriminator: 1)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !449, line: 1343, column: 10)
!2720 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1343, column: 4)
!2721 = !DILocation(line: 1343, column: 15, scope: !2718)
!2722 = !DILocation(line: 1343, column: 5, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2724, file: !449, discriminator: 2)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !449, line: 1343, column: 3)
!2725 = !DILocation(line: 1343, column: 14, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2727, file: !449, discriminator: 3)
!2727 = distinct !DILexicalBlock(scope: !2719, file: !449, line: 1343, column: 12)
!2728 = !DILocation(line: 1343, column: 99, scope: !2726)
!2729 = !DILocation(line: 1343, column: 110, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2720, file: !449, discriminator: 4)
!2731 = !DILocation(line: 1345, column: 15, scope: !2664)
!2732 = !DILocation(line: 1345, column: 13, scope: !2664)
!2733 = !DILocation(line: 1347, column: 8, scope: !2664)
!2734 = !DILocation(line: 1348, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1348, column: 6)
!2736 = !DILocation(line: 1348, column: 6, scope: !2735)
!2737 = !DILocation(line: 1348, column: 11, scope: !2735)
!2738 = !DILocation(line: 1348, column: 6, scope: !2664)
!2739 = !DILocation(line: 1349, column: 3, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !449, line: 1348, column: 20)
!2741 = distinct !{!2741, !2739}
!2742 = !DILocation(line: 1350, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2740, file: !449, line: 1349, column: 6)
!2744 = !DILocation(line: 1351, column: 9, scope: !2743)
!2745 = !DILocation(line: 1352, column: 17, scope: !2743)
!2746 = !DILocation(line: 1352, column: 10, scope: !2743)
!2747 = !DILocation(line: 1352, column: 8, scope: !2743)
!2748 = !DILocation(line: 1353, column: 3, scope: !2743)
!2749 = !DILocation(line: 1353, column: 12, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2740, file: !449, discriminator: 1)
!2751 = !DILocation(line: 1353, column: 16, scope: !2750)
!2752 = !DILocation(line: 1353, column: 3, scope: !2750)
!2753 = !DILocation(line: 1354, column: 2, scope: !2740)
!2754 = !DILocation(line: 1356, column: 6, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1356, column: 6)
!2756 = !DILocation(line: 1356, column: 12, scope: !2755)
!2757 = !DILocation(line: 1356, column: 6, scope: !2664)
!2758 = !DILocation(line: 1357, column: 3, scope: !2755)
!2759 = !DILocation(line: 1359, column: 33, scope: !2664)
!2760 = !DILocation(line: 1359, column: 39, scope: !2664)
!2761 = !DILocation(line: 1359, column: 10, scope: !2664)
!2762 = !DILocation(line: 1359, column: 3, scope: !2664)
!2763 = !DILocation(line: 1359, column: 8, scope: !2664)
!2764 = !DILocation(line: 1360, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2664, file: !449, line: 1360, column: 6)
!2766 = !DILocation(line: 1360, column: 6, scope: !2765)
!2767 = !DILocation(line: 1360, column: 12, scope: !2765)
!2768 = !DILocation(line: 1360, column: 6, scope: !2664)
!2769 = !DILocation(line: 1360, column: 20, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2765, file: !449, discriminator: 1)
!2771 = !DILocation(line: 1361, column: 1, scope: !2664)
!2772 = distinct !DISubprogram(name: "sig_print_errors", scope: !449, file: !449, line: 808, type: !2070, isLocal: true, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2773 = !DILocation(line: 810, column: 16, scope: !2772)
!2774 = !DILocation(line: 812, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !449, line: 812, column: 6)
!2776 = !DILocation(line: 812, column: 18, scope: !2775)
!2777 = !DILocation(line: 812, column: 6, scope: !2772)
!2778 = !DILocation(line: 813, column: 41, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !449, line: 812, column: 26)
!2780 = !DILocation(line: 813, column: 3, scope: !2779)
!2781 = !DILocation(line: 814, column: 24, scope: !2779)
!2782 = !DILocation(line: 814, column: 17, scope: !2779)
!2783 = !DILocation(line: 815, column: 2, scope: !2779)
!2784 = !DILocation(line: 816, column: 1, scope: !2772)
!2785 = distinct !DISubprogram(name: "read_settings", scope: !449, file: !449, line: 1383, type: !2070, isLocal: true, isDefinition: true, scopeLine: 1384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2786 = !DILocalVariable(name: "theme", scope: !2785, file: !449, line: 1385, type: !364)
!2787 = !DILocation(line: 1385, column: 14, scope: !2785)
!2788 = !DILocalVariable(name: "len", scope: !2785, file: !449, line: 1386, type: !372)
!2789 = !DILocation(line: 1386, column: 13, scope: !2785)
!2790 = !DILocation(line: 1388, column: 10, scope: !2785)
!2791 = !DILocation(line: 1388, column: 8, scope: !2785)
!2792 = !DILocation(line: 1389, column: 15, scope: !2785)
!2793 = !DILocation(line: 1389, column: 30, scope: !2785)
!2794 = !DILocation(line: 1389, column: 8, scope: !2785)
!2795 = !DILocation(line: 1389, column: 6, scope: !2785)
!2796 = !DILocation(line: 1390, column: 16, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2785, file: !449, line: 1390, column: 6)
!2798 = !DILocation(line: 1390, column: 31, scope: !2797)
!2799 = !DILocation(line: 1390, column: 37, scope: !2797)
!2800 = !DILocation(line: 1390, column: 6, scope: !2797)
!2801 = !DILocation(line: 1390, column: 44, scope: !2797)
!2802 = !DILocation(line: 1390, column: 49, scope: !2797)
!2803 = !DILocation(line: 1391, column: 15, scope: !2797)
!2804 = !DILocation(line: 1391, column: 30, scope: !2797)
!2805 = !DILocation(line: 1391, column: 36, scope: !2797)
!2806 = !DILocation(line: 1391, column: 43, scope: !2797)
!2807 = !DILocation(line: 1391, column: 7, scope: !2797)
!2808 = !DILocation(line: 1391, column: 48, scope: !2797)
!2809 = !DILocation(line: 1391, column: 53, scope: !2797)
!2810 = !DILocation(line: 1392, column: 17, scope: !2797)
!2811 = !DILocation(line: 1392, column: 23, scope: !2797)
!2812 = !DILocation(line: 1392, column: 22, scope: !2797)
!2813 = !DILocation(line: 1392, column: 7, scope: !2797)
!2814 = !DILocation(line: 1392, column: 38, scope: !2797)
!2815 = !DILocation(line: 1390, column: 6, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2785, file: !449, discriminator: 1)
!2817 = !DILocation(line: 1393, column: 16, scope: !2797)
!2818 = !DILocation(line: 1393, column: 3, scope: !2797)
!2819 = !DILocation(line: 1394, column: 1, scope: !2785)
!2820 = distinct !DISubprogram(name: "themes_deinit", scope: !449, file: !449, line: 1474, type: !2070, isLocal: false, isDefinition: true, scopeLine: 1475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2821 = !DILocation(line: 1476, column: 2, scope: !2820)
!2822 = !DILocation(line: 1476, column: 9, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2820, file: !449, discriminator: 1)
!2824 = !DILocation(line: 1476, column: 16, scope: !2823)
!2825 = !DILocation(line: 1476, column: 2, scope: !2823)
!2826 = !DILocation(line: 1477, column: 17, scope: !2820)
!2827 = !DILocation(line: 1477, column: 25, scope: !2820)
!2828 = !DILocation(line: 1477, column: 3, scope: !2820)
!2829 = !DILocation(line: 1476, column: 2, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2820, file: !449, discriminator: 2)
!2831 = distinct !{!2831, !2821}
!2832 = !DILocation(line: 1478, column: 16, scope: !2820)
!2833 = !DILocation(line: 1478, column: 2, scope: !2820)
!2834 = !DILocation(line: 1480, column: 23, scope: !2820)
!2835 = !DILocation(line: 1480, column: 2, scope: !2820)
!2836 = !DILocation(line: 1481, column: 18, scope: !2820)
!2837 = !DILocation(line: 1483, column: 2, scope: !2820)
!2838 = !DILocation(line: 1484, column: 2, scope: !2820)
!2839 = !DILocation(line: 1485, column: 2, scope: !2820)
!2840 = !DILocation(line: 1486, column: 2, scope: !2820)
!2841 = !DILocation(line: 1487, column: 9, scope: !2820)
!2842 = !DILocation(line: 1488, column: 9, scope: !2820)
!2843 = !DILocation(line: 1489, column: 1, scope: !2820)
!2844 = distinct !DISubprogram(name: "theme_real_destroy", scope: !449, file: !449, line: 88, type: !552, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2845 = !DILocalVariable(name: "rec", arg: 1, scope: !2844, file: !449, line: 88, type: !366)
!2846 = !DILocation(line: 88, column: 43, scope: !2844)
!2847 = !DILocation(line: 90, column: 23, scope: !2844)
!2848 = !DILocation(line: 90, column: 28, scope: !2844)
!2849 = !DILocation(line: 90, column: 2, scope: !2844)
!2850 = !DILocation(line: 91, column: 23, scope: !2844)
!2851 = !DILocation(line: 91, column: 28, scope: !2844)
!2852 = !DILocation(line: 91, column: 2, scope: !2844)
!2853 = !DILocation(line: 92, column: 23, scope: !2844)
!2854 = !DILocation(line: 92, column: 28, scope: !2844)
!2855 = !DILocation(line: 92, column: 2, scope: !2844)
!2856 = !DILocation(line: 93, column: 23, scope: !2844)
!2857 = !DILocation(line: 93, column: 28, scope: !2844)
!2858 = !DILocation(line: 93, column: 2, scope: !2844)
!2859 = !DILocation(line: 95, column: 18, scope: !2844)
!2860 = !DILocation(line: 95, column: 23, scope: !2844)
!2861 = !DILocation(line: 95, column: 2, scope: !2844)
!2862 = !DILocation(line: 96, column: 15, scope: !2844)
!2863 = !DILocation(line: 96, column: 20, scope: !2844)
!2864 = !DILocation(line: 96, column: 2, scope: !2844)
!2865 = !DILocation(line: 98, column: 9, scope: !2844)
!2866 = !DILocation(line: 98, column: 14, scope: !2844)
!2867 = !DILocation(line: 98, column: 2, scope: !2844)
!2868 = !DILocation(line: 99, column: 9, scope: !2844)
!2869 = !DILocation(line: 99, column: 14, scope: !2844)
!2870 = !DILocation(line: 99, column: 2, scope: !2844)
!2871 = !DILocation(line: 100, column: 9, scope: !2844)
!2872 = !DILocation(line: 100, column: 2, scope: !2844)
!2873 = !DILocation(line: 101, column: 1, scope: !2844)
!2874 = distinct !DISubprogram(name: "theme_abstract_destroy", scope: !449, file: !449, line: 67, type: !2875, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !374, !374}
!2877 = !DILocalVariable(name: "key", arg: 1, scope: !2874, file: !449, line: 67, type: !374)
!2878 = !DILocation(line: 67, column: 42, scope: !2874)
!2879 = !DILocalVariable(name: "value", arg: 2, scope: !2874, file: !449, line: 67, type: !374)
!2880 = !DILocation(line: 67, column: 53, scope: !2874)
!2881 = !DILocation(line: 69, column: 9, scope: !2874)
!2882 = !DILocation(line: 69, column: 2, scope: !2874)
!2883 = !DILocation(line: 70, column: 16, scope: !2874)
!2884 = !DILocation(line: 70, column: 9, scope: !2874)
!2885 = !DILocation(line: 71, column: 1, scope: !2874)
!2886 = distinct !DISubprogram(name: "theme_module_destroy", scope: !449, file: !449, line: 73, type: !2887, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !364, !439}
!2889 = !DILocalVariable(name: "key", arg: 1, scope: !2886, file: !449, line: 73, type: !364)
!2890 = !DILocation(line: 73, column: 46, scope: !2886)
!2891 = !DILocalVariable(name: "rec", arg: 2, scope: !2886, file: !449, line: 73, type: !439)
!2892 = !DILocation(line: 73, column: 69, scope: !2886)
!2893 = !DILocalVariable(name: "n", scope: !2886, file: !449, line: 75, type: !372)
!2894 = !DILocation(line: 75, column: 6, scope: !2886)
!2895 = !DILocation(line: 77, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2886, file: !449, line: 77, column: 2)
!2897 = !DILocation(line: 77, column: 7, scope: !2896)
!2898 = !DILocation(line: 77, column: 14, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2900, file: !449, discriminator: 1)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !449, line: 77, column: 2)
!2901 = !DILocation(line: 77, column: 18, scope: !2899)
!2902 = !DILocation(line: 77, column: 23, scope: !2899)
!2903 = !DILocation(line: 77, column: 16, scope: !2899)
!2904 = !DILocation(line: 77, column: 2, scope: !2899)
!2905 = !DILocation(line: 78, column: 23, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !449, line: 77, column: 35)
!2907 = !DILocation(line: 78, column: 10, scope: !2906)
!2908 = !DILocation(line: 78, column: 15, scope: !2906)
!2909 = !DILocation(line: 78, column: 3, scope: !2906)
!2910 = !DILocation(line: 79, column: 32, scope: !2906)
!2911 = !DILocation(line: 79, column: 10, scope: !2906)
!2912 = !DILocation(line: 79, column: 15, scope: !2906)
!2913 = !DILocation(line: 79, column: 3, scope: !2906)
!2914 = !DILocation(line: 80, column: 2, scope: !2906)
!2915 = !DILocation(line: 77, column: 31, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2900, file: !449, discriminator: 2)
!2917 = !DILocation(line: 77, column: 2, scope: !2916)
!2918 = distinct !{!2918, !2919}
!2919 = !DILocation(line: 77, column: 2, scope: !2886)
!2920 = !DILocation(line: 81, column: 9, scope: !2886)
!2921 = !DILocation(line: 81, column: 14, scope: !2886)
!2922 = !DILocation(line: 81, column: 2, scope: !2886)
!2923 = !DILocation(line: 82, column: 9, scope: !2886)
!2924 = !DILocation(line: 82, column: 14, scope: !2886)
!2925 = !DILocation(line: 82, column: 2, scope: !2886)
!2926 = !DILocation(line: 84, column: 9, scope: !2886)
!2927 = !DILocation(line: 84, column: 14, scope: !2886)
!2928 = !DILocation(line: 84, column: 2, scope: !2886)
!2929 = !DILocation(line: 85, column: 9, scope: !2886)
!2930 = !DILocation(line: 85, column: 2, scope: !2886)
!2931 = !DILocation(line: 86, column: 1, scope: !2886)
!2932 = distinct !DISubprogram(name: "theme_format_append_variable", scope: !449, file: !449, line: 149, type: !2933, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !585, !434}
!2935 = !DILocalVariable(name: "str", arg: 1, scope: !2932, file: !449, line: 149, type: !585)
!2936 = !DILocation(line: 149, column: 51, scope: !2932)
!2937 = !DILocalVariable(name: "format", arg: 2, scope: !2932, file: !449, line: 149, type: !434)
!2938 = !DILocation(line: 149, column: 69, scope: !2932)
!2939 = !DILocalVariable(name: "orig", scope: !2932, file: !449, line: 151, type: !364)
!2940 = !DILocation(line: 151, column: 14, scope: !2932)
!2941 = !DILocalVariable(name: "value", scope: !2932, file: !449, line: 152, type: !374)
!2942 = !DILocation(line: 152, column: 8, scope: !2932)
!2943 = !DILocalVariable(name: "args", scope: !2932, file: !449, line: 152, type: !2944)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 64, align: 64, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 1)
!2947 = !DILocation(line: 152, column: 16, scope: !2932)
!2948 = !DILocalVariable(name: "free_ret", scope: !2932, file: !449, line: 153, type: !372)
!2949 = !DILocation(line: 153, column: 6, scope: !2932)
!2950 = !DILocation(line: 155, column: 10, scope: !2932)
!2951 = !DILocation(line: 155, column: 9, scope: !2932)
!2952 = !DILocation(line: 155, column: 7, scope: !2932)
!2953 = !DILocation(line: 156, column: 4, scope: !2932)
!2954 = !DILocation(line: 156, column: 11, scope: !2932)
!2955 = !DILocation(line: 158, column: 34, scope: !2932)
!2956 = !DILocation(line: 159, column: 10, scope: !2932)
!2957 = !DILocation(line: 158, column: 10, scope: !2932)
!2958 = !DILocation(line: 158, column: 8, scope: !2932)
!2959 = !DILocation(line: 160, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2932, file: !449, line: 160, column: 6)
!2961 = !DILocation(line: 160, column: 6, scope: !2932)
!2962 = !DILocation(line: 160, column: 23, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2960, file: !449, discriminator: 1)
!2964 = !DILocation(line: 160, column: 16, scope: !2963)
!2965 = !DILocation(line: 162, column: 8, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2932, file: !449, line: 162, column: 6)
!2967 = !DILocation(line: 162, column: 7, scope: !2966)
!2968 = !DILocation(line: 162, column: 6, scope: !2966)
!2969 = !DILocation(line: 162, column: 15, scope: !2966)
!2970 = !DILocation(line: 162, column: 6, scope: !2932)
!2971 = !DILocation(line: 163, column: 5, scope: !2966)
!2972 = !DILocation(line: 163, column: 12, scope: !2966)
!2973 = !DILocation(line: 163, column: 3, scope: !2966)
!2974 = !DILocation(line: 166, column: 20, scope: !2932)
!2975 = !DILocation(line: 166, column: 34, scope: !2932)
!2976 = !DILocation(line: 166, column: 33, scope: !2932)
!2977 = !DILocation(line: 166, column: 41, scope: !2932)
!2978 = !DILocation(line: 166, column: 40, scope: !2932)
!2979 = !DILocation(line: 166, column: 26, scope: !2932)
!2980 = !DILocation(line: 166, column: 10, scope: !2932)
!2981 = !DILocation(line: 166, column: 8, scope: !2932)
!2982 = !DILocation(line: 167, column: 18, scope: !2932)
!2983 = !DILocation(line: 167, column: 23, scope: !2932)
!2984 = !DILocation(line: 167, column: 2, scope: !2932)
!2985 = !DILocation(line: 168, column: 9, scope: !2932)
!2986 = !DILocation(line: 168, column: 2, scope: !2932)
!2987 = !DILocation(line: 169, column: 1, scope: !2932)
!2988 = distinct !DISubprogram(name: "chr_is_valid_rgb", scope: !449, file: !449, line: 171, type: !2989, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!372, !364}
!2991 = !DILocalVariable(name: "format", arg: 1, scope: !2988, file: !449, line: 171, type: !364)
!2992 = !DILocation(line: 171, column: 47, scope: !2988)
!2993 = !DILocalVariable(name: "tmp", scope: !2988, file: !449, line: 173, type: !372)
!2994 = !DILocation(line: 173, column: 6, scope: !2988)
!2995 = !DILocation(line: 174, column: 11, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2988, file: !449, line: 174, column: 2)
!2997 = !DILocation(line: 174, column: 7, scope: !2996)
!2998 = !DILocation(line: 174, column: 16, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !3000, file: !449, discriminator: 1)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !449, line: 174, column: 2)
!3001 = !DILocation(line: 174, column: 20, scope: !2999)
!3002 = !DILocation(line: 174, column: 2, scope: !2999)
!3003 = !DILocation(line: 175, column: 14, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !449, line: 175, column: 7)
!3005 = distinct !DILexicalBlock(scope: !3000, file: !449, line: 174, column: 32)
!3006 = !DILocation(line: 175, column: 7, scope: !3004)
!3007 = !DILocation(line: 175, column: 28, scope: !3004)
!3008 = !DILocation(line: 175, column: 8, scope: !3004)
!3009 = !DILocation(line: 175, column: 10, scope: !3004)
!3010 = !DILocation(line: 175, column: 9, scope: !3004)
!3011 = !DILocation(line: 175, column: 11, scope: !3004)
!3012 = !DILocation(line: 175, column: 7, scope: !3005)
!3013 = !DILocation(line: 176, column: 11, scope: !3004)
!3014 = !DILocation(line: 176, column: 4, scope: !3004)
!3015 = !DILocation(line: 177, column: 2, scope: !3005)
!3016 = !DILocation(line: 174, column: 25, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3000, file: !449, discriminator: 2)
!3018 = !DILocation(line: 174, column: 2, scope: !3017)
!3019 = distinct !{!3019, !3020}
!3020 = !DILocation(line: 174, column: 2, scope: !2988)
!3021 = !DILocation(line: 178, column: 2, scope: !2988)
!3022 = !DILocation(line: 179, column: 1, scope: !2988)
!3023 = distinct !DISubprogram(name: "chr_is_valid_ext", scope: !449, file: !449, line: 181, type: !2989, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3024 = !DILocalVariable(name: "format", arg: 1, scope: !3023, file: !449, line: 181, type: !364)
!3025 = !DILocation(line: 181, column: 47, scope: !3023)
!3026 = !DILocation(line: 183, column: 6, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !449, line: 183, column: 6)
!3028 = !DILocation(line: 183, column: 16, scope: !3027)
!3029 = !DILocation(line: 183, column: 22, scope: !3027)
!3030 = !DILocation(line: 183, column: 25, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3027, file: !449, discriminator: 1)
!3032 = !DILocation(line: 183, column: 35, scope: !3031)
!3033 = !DILocation(line: 183, column: 6, scope: !3031)
!3034 = !DILocation(line: 184, column: 3, scope: !3027)
!3035 = !DILocation(line: 186, column: 6, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3023, file: !449, line: 186, column: 6)
!3037 = !DILocation(line: 186, column: 16, scope: !3036)
!3038 = !DILocation(line: 186, column: 6, scope: !3023)
!3039 = !DILocation(line: 187, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !449, line: 187, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !449, line: 186, column: 24)
!3042 = !DILocation(line: 187, column: 28, scope: !3040)
!3043 = !DILocation(line: 187, column: 8, scope: !3040)
!3044 = !DILocation(line: 187, column: 10, scope: !3040)
!3045 = !DILocation(line: 187, column: 9, scope: !3040)
!3046 = !DILocation(line: 187, column: 11, scope: !3040)
!3047 = !DILocation(line: 187, column: 26, scope: !3040)
!3048 = !DILocation(line: 187, column: 29, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3040, file: !449, discriminator: 1)
!3050 = !DILocation(line: 187, column: 39, scope: !3049)
!3051 = !DILocation(line: 187, column: 46, scope: !3049)
!3052 = !DILocation(line: 187, column: 49, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3040, file: !449, discriminator: 2)
!3054 = !DILocation(line: 187, column: 59, scope: !3053)
!3055 = !DILocation(line: 188, column: 7, scope: !3040)
!3056 = !DILocation(line: 188, column: 10, scope: !3049)
!3057 = !DILocation(line: 188, column: 20, scope: !3049)
!3058 = !DILocation(line: 188, column: 26, scope: !3049)
!3059 = !DILocation(line: 188, column: 29, scope: !3053)
!3060 = !DILocation(line: 188, column: 39, scope: !3053)
!3061 = !DILocation(line: 187, column: 7, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3041, file: !449, discriminator: 3)
!3063 = !DILocation(line: 189, column: 4, scope: !3040)
!3064 = !DILocation(line: 190, column: 2, scope: !3041)
!3065 = !DILocation(line: 190, column: 13, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3067, file: !449, discriminator: 1)
!3067 = distinct !DILexicalBlock(scope: !3036, file: !449, line: 190, column: 13)
!3068 = !DILocation(line: 190, column: 23, scope: !3066)
!3069 = !DILocation(line: 191, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !449, line: 191, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3067, file: !449, line: 190, column: 31)
!3072 = !DILocation(line: 191, column: 28, scope: !3070)
!3073 = !DILocation(line: 191, column: 8, scope: !3070)
!3074 = !DILocation(line: 191, column: 10, scope: !3070)
!3075 = !DILocation(line: 191, column: 9, scope: !3070)
!3076 = !DILocation(line: 191, column: 11, scope: !3070)
!3077 = !DILocation(line: 191, column: 7, scope: !3071)
!3078 = !DILocation(line: 192, column: 4, scope: !3070)
!3079 = !DILocation(line: 193, column: 2, scope: !3071)
!3080 = !DILocation(line: 193, column: 13, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3082, file: !449, discriminator: 1)
!3082 = distinct !DILexicalBlock(scope: !3067, file: !449, line: 193, column: 13)
!3083 = !DILocation(line: 193, column: 34, scope: !3081)
!3084 = !DILocation(line: 193, column: 14, scope: !3081)
!3085 = !DILocation(line: 193, column: 16, scope: !3081)
!3086 = !DILocation(line: 193, column: 15, scope: !3081)
!3087 = !DILocation(line: 193, column: 17, scope: !3081)
!3088 = !DILocation(line: 194, column: 3, scope: !3082)
!3089 = !DILocation(line: 196, column: 2, scope: !3023)
!3090 = !DILocation(line: 197, column: 1, scope: !3023)
!3091 = distinct !DISubprogram(name: "theme_replace_expand", scope: !449, file: !449, line: 117, type: !3092, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!374, !366, !372, !600, !600, !699, !699, !363, !372}
!3094 = !DILocalVariable(name: "theme", arg: 1, scope: !3091, file: !449, line: 117, type: !366)
!3095 = !DILocation(line: 117, column: 46, scope: !3091)
!3096 = !DILocalVariable(name: "index", arg: 2, scope: !3091, file: !449, line: 117, type: !372)
!3097 = !DILocation(line: 117, column: 57, scope: !3091)
!3098 = !DILocalVariable(name: "default_fg", arg: 3, scope: !3091, file: !449, line: 118, type: !600)
!3099 = !DILocation(line: 118, column: 20, scope: !3091)
!3100 = !DILocalVariable(name: "default_bg", arg: 4, scope: !3091, file: !449, line: 118, type: !600)
!3101 = !DILocation(line: 118, column: 45, scope: !3091)
!3102 = !DILocalVariable(name: "last_fg", arg: 5, scope: !3091, file: !449, line: 119, type: !699)
!3103 = !DILocation(line: 119, column: 21, scope: !3091)
!3104 = !DILocalVariable(name: "last_bg", arg: 6, scope: !3091, file: !449, line: 119, type: !699)
!3105 = !DILocation(line: 119, column: 44, scope: !3091)
!3106 = !DILocalVariable(name: "chr", arg: 7, scope: !3091, file: !449, line: 120, type: !363)
!3107 = !DILocation(line: 120, column: 12, scope: !3091)
!3108 = !DILocalVariable(name: "flags", arg: 8, scope: !3091, file: !449, line: 120, type: !372)
!3109 = !DILocation(line: 120, column: 21, scope: !3091)
!3110 = !DILocalVariable(name: "rec", scope: !3091, file: !449, line: 122, type: !395)
!3111 = !DILocation(line: 122, column: 10, scope: !3091)
!3112 = !DILocalVariable(name: "ret", scope: !3091, file: !449, line: 123, type: !374)
!3113 = !DILocation(line: 123, column: 8, scope: !3091)
!3114 = !DILocalVariable(name: "abstract", scope: !3091, file: !449, line: 123, type: !374)
!3115 = !DILocation(line: 123, column: 14, scope: !3091)
!3116 = !DILocalVariable(name: "data", scope: !3091, file: !449, line: 123, type: !3117)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 16, align: 8, elements: !3118)
!3118 = !{!3119}
!3119 = !DISubrange(count: 2)
!3120 = !DILocation(line: 123, column: 24, scope: !3091)
!3121 = !DILocation(line: 125, column: 20, scope: !3091)
!3122 = !DILocation(line: 125, column: 27, scope: !3091)
!3123 = !DILocation(line: 125, column: 43, scope: !3091)
!3124 = !DILocation(line: 125, column: 8, scope: !3091)
!3125 = !DILocation(line: 125, column: 6, scope: !3091)
!3126 = !DILocation(line: 126, column: 2, scope: !3091)
!3127 = distinct !{!3127, !3126}
!3128 = !DILocation(line: 126, column: 10, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3130, file: !449, discriminator: 1)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !449, line: 126, column: 10)
!3131 = distinct !DILexicalBlock(scope: !3091, file: !449, line: 126, column: 4)
!3132 = !DILocation(line: 126, column: 14, scope: !3129)
!3133 = !DILocation(line: 126, column: 5, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3135, file: !449, discriminator: 2)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !449, line: 126, column: 3)
!3136 = !DILocation(line: 126, column: 14, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !449, discriminator: 3)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !449, line: 126, column: 12)
!3139 = !DILocation(line: 126, column: 98, scope: !3137)
!3140 = !DILocation(line: 126, column: 7, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3131, file: !449, discriminator: 4)
!3142 = !DILocation(line: 128, column: 12, scope: !3091)
!3143 = !DILocation(line: 128, column: 2, scope: !3091)
!3144 = !DILocation(line: 128, column: 10, scope: !3091)
!3145 = !DILocation(line: 128, column: 17, scope: !3091)
!3146 = !DILocation(line: 128, column: 25, scope: !3091)
!3147 = !DILocation(line: 130, column: 13, scope: !3091)
!3148 = !DILocation(line: 130, column: 18, scope: !3091)
!3149 = !DILocation(line: 130, column: 11, scope: !3091)
!3150 = !DILocation(line: 131, column: 38, scope: !3091)
!3151 = !DILocation(line: 133, column: 10, scope: !3091)
!3152 = !DILocation(line: 133, column: 19, scope: !3091)
!3153 = !DILocation(line: 133, column: 29, scope: !3091)
!3154 = !DILocation(line: 133, column: 35, scope: !3091)
!3155 = !DILocation(line: 131, column: 13, scope: !3091)
!3156 = !DILocation(line: 131, column: 11, scope: !3091)
!3157 = !DILocation(line: 134, column: 29, scope: !3091)
!3158 = !DILocation(line: 134, column: 50, scope: !3091)
!3159 = !DILocation(line: 134, column: 8, scope: !3091)
!3160 = !DILocation(line: 134, column: 6, scope: !3091)
!3161 = !DILocation(line: 136, column: 9, scope: !3091)
!3162 = !DILocation(line: 136, column: 2, scope: !3091)
!3163 = !DILocation(line: 137, column: 9, scope: !3091)
!3164 = !DILocation(line: 137, column: 2, scope: !3091)
!3165 = !DILocation(line: 138, column: 1, scope: !3091)
!3166 = distinct !DISubprogram(name: "theme_format_expand_abstract", scope: !449, file: !449, line: 410, type: !3167, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!374, !366, !434, !699, !699, !372, !1093}
!3169 = !DILocalVariable(name: "theme", arg: 1, scope: !3166, file: !449, line: 410, type: !366)
!3170 = !DILocation(line: 410, column: 54, scope: !3166)
!3171 = !DILocalVariable(name: "formatp", arg: 2, scope: !3166, file: !449, line: 410, type: !434)
!3172 = !DILocation(line: 410, column: 74, scope: !3166)
!3173 = !DILocalVariable(name: "last_fg", arg: 3, scope: !3166, file: !449, line: 411, type: !699)
!3174 = !DILocation(line: 411, column: 57, scope: !3166)
!3175 = !DILocalVariable(name: "last_bg", arg: 4, scope: !3166, file: !449, line: 411, type: !699)
!3176 = !DILocation(line: 411, column: 80, scope: !3166)
!3177 = !DILocalVariable(name: "flags", arg: 5, scope: !3166, file: !449, line: 411, type: !372)
!3178 = !DILocation(line: 411, column: 93, scope: !3166)
!3179 = !DILocalVariable(name: "block_list", arg: 6, scope: !3166, file: !449, line: 412, type: !1093)
!3180 = !DILocation(line: 412, column: 50, scope: !3166)
!3181 = !DILocalVariable(name: "str", scope: !3166, file: !449, line: 414, type: !585)
!3182 = !DILocation(line: 414, column: 11, scope: !3166)
!3183 = !DILocalVariable(name: "p", scope: !3166, file: !449, line: 415, type: !364)
!3184 = !DILocation(line: 415, column: 14, scope: !3166)
!3185 = !DILocalVariable(name: "format", scope: !3166, file: !449, line: 415, type: !364)
!3186 = !DILocation(line: 415, column: 18, scope: !3166)
!3187 = !DILocalVariable(name: "abstract", scope: !3166, file: !449, line: 416, type: !374)
!3188 = !DILocation(line: 416, column: 8, scope: !3166)
!3189 = !DILocalVariable(name: "data", scope: !3166, file: !449, line: 416, type: !374)
!3190 = !DILocation(line: 416, column: 19, scope: !3166)
!3191 = !DILocalVariable(name: "ret", scope: !3166, file: !449, line: 416, type: !374)
!3192 = !DILocation(line: 416, column: 26, scope: !3166)
!3193 = !DILocalVariable(name: "blocking", scope: !3166, file: !449, line: 416, type: !374)
!3194 = !DILocation(line: 416, column: 32, scope: !3166)
!3195 = !DILocalVariable(name: "default_fg", scope: !3166, file: !449, line: 417, type: !600)
!3196 = !DILocation(line: 417, column: 15, scope: !3166)
!3197 = !DILocalVariable(name: "default_bg", scope: !3166, file: !449, line: 417, type: !600)
!3198 = !DILocation(line: 417, column: 27, scope: !3166)
!3199 = !DILocalVariable(name: "len", scope: !3166, file: !449, line: 418, type: !372)
!3200 = !DILocation(line: 418, column: 6, scope: !3166)
!3201 = !DILocation(line: 420, column: 12, scope: !3166)
!3202 = !DILocation(line: 420, column: 11, scope: !3166)
!3203 = !DILocation(line: 420, column: 9, scope: !3166)
!3204 = !DILocation(line: 421, column: 16, scope: !3166)
!3205 = !DILocation(line: 421, column: 15, scope: !3166)
!3206 = !DILocation(line: 422, column: 16, scope: !3166)
!3207 = !DILocation(line: 422, column: 15, scope: !3166)
!3208 = !DILocation(line: 425, column: 6, scope: !3166)
!3209 = !DILocation(line: 425, column: 4, scope: !3166)
!3210 = !DILocation(line: 426, column: 2, scope: !3166)
!3211 = !DILocation(line: 426, column: 10, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3166, file: !449, discriminator: 1)
!3213 = !DILocation(line: 426, column: 9, scope: !3212)
!3214 = !DILocation(line: 426, column: 12, scope: !3212)
!3215 = !DILocation(line: 426, column: 20, scope: !3212)
!3216 = !DILocation(line: 426, column: 24, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3166, file: !449, discriminator: 2)
!3218 = !DILocation(line: 426, column: 23, scope: !3217)
!3219 = !DILocation(line: 426, column: 26, scope: !3217)
!3220 = !DILocation(line: 426, column: 33, scope: !3217)
!3221 = !DILocation(line: 427, column: 10, scope: !3166)
!3222 = !DILocation(line: 427, column: 9, scope: !3166)
!3223 = !DILocation(line: 427, column: 12, scope: !3166)
!3224 = !DILocation(line: 427, column: 19, scope: !3166)
!3225 = !DILocation(line: 427, column: 23, scope: !3212)
!3226 = !DILocation(line: 427, column: 22, scope: !3212)
!3227 = !DILocation(line: 427, column: 25, scope: !3212)
!3228 = !DILocation(line: 426, column: 2, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3166, file: !449, discriminator: 3)
!3230 = !DILocation(line: 427, column: 34, scope: !3217)
!3231 = !DILocation(line: 426, column: 2, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3166, file: !449, discriminator: 4)
!3233 = distinct !{!3233, !3210}
!3234 = !DILocation(line: 428, column: 7, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 428, column: 6)
!3236 = !DILocation(line: 428, column: 6, scope: !3235)
!3237 = !DILocation(line: 428, column: 9, scope: !3235)
!3238 = !DILocation(line: 428, column: 17, scope: !3235)
!3239 = !DILocation(line: 428, column: 20, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3235, file: !449, discriminator: 1)
!3241 = !DILocation(line: 428, column: 25, scope: !3240)
!3242 = !DILocation(line: 428, column: 22, scope: !3240)
!3243 = !DILocation(line: 428, column: 6, scope: !3240)
!3244 = !DILocation(line: 429, column: 3, scope: !3235)
!3245 = !DILocation(line: 431, column: 15, scope: !3166)
!3246 = !DILocation(line: 431, column: 17, scope: !3166)
!3247 = !DILocation(line: 431, column: 16, scope: !3166)
!3248 = !DILocation(line: 431, column: 8, scope: !3166)
!3249 = !DILocation(line: 431, column: 6, scope: !3166)
!3250 = !DILocation(line: 432, column: 23, scope: !3166)
!3251 = !DILocation(line: 432, column: 31, scope: !3166)
!3252 = !DILocation(line: 432, column: 13, scope: !3166)
!3253 = !DILocation(line: 432, column: 11, scope: !3166)
!3254 = !DILocation(line: 436, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 436, column: 6)
!3256 = !DILocation(line: 436, column: 6, scope: !3255)
!3257 = !DILocation(line: 436, column: 9, scope: !3255)
!3258 = !DILocation(line: 436, column: 6, scope: !3166)
!3259 = !DILocation(line: 437, column: 6, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3255, file: !449, line: 436, column: 17)
!3261 = !DILocation(line: 438, column: 8, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3260, file: !449, line: 438, column: 7)
!3263 = !DILocation(line: 438, column: 14, scope: !3262)
!3264 = !DILocation(line: 438, column: 22, scope: !3262)
!3265 = !DILocation(line: 438, column: 25, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3262, file: !449, discriminator: 1)
!3267 = !DILocation(line: 438, column: 7, scope: !3266)
!3268 = !DILocation(line: 439, column: 15, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3262, file: !449, line: 438, column: 44)
!3270 = !DILocation(line: 439, column: 5, scope: !3269)
!3271 = !DILocation(line: 439, column: 13, scope: !3269)
!3272 = !DILocation(line: 440, column: 11, scope: !3269)
!3273 = !DILocation(line: 440, column: 4, scope: !3269)
!3274 = !DILocation(line: 441, column: 4, scope: !3269)
!3275 = !DILocation(line: 443, column: 2, scope: !3260)
!3276 = !DILocation(line: 444, column: 13, scope: !3166)
!3277 = !DILocation(line: 444, column: 20, scope: !3166)
!3278 = !DILocation(line: 444, column: 19, scope: !3166)
!3279 = !DILocation(line: 444, column: 3, scope: !3166)
!3280 = !DILocation(line: 444, column: 11, scope: !3166)
!3281 = !DILocation(line: 446, column: 6, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 446, column: 6)
!3283 = !DILocation(line: 446, column: 17, scope: !3282)
!3284 = !DILocation(line: 446, column: 6, scope: !3166)
!3285 = !DILocation(line: 447, column: 16, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !449, line: 446, column: 25)
!3287 = !DILocation(line: 447, column: 14, scope: !3286)
!3288 = !DILocation(line: 448, column: 2, scope: !3286)
!3289 = !DILocation(line: 449, column: 14, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3282, file: !449, line: 448, column: 9)
!3291 = !DILocation(line: 449, column: 3, scope: !3290)
!3292 = !DILocation(line: 453, column: 29, scope: !3166)
!3293 = !DILocation(line: 453, column: 36, scope: !3166)
!3294 = !DILocation(line: 453, column: 47, scope: !3166)
!3295 = !DILocation(line: 453, column: 9, scope: !3166)
!3296 = !DILocation(line: 453, column: 7, scope: !3166)
!3297 = !DILocation(line: 454, column: 6, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 454, column: 6)
!3299 = !DILocation(line: 454, column: 11, scope: !3298)
!3300 = !DILocation(line: 454, column: 18, scope: !3298)
!3301 = !DILocation(line: 454, column: 35, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3298, file: !449, discriminator: 1)
!3303 = !DILocation(line: 454, column: 47, scope: !3302)
!3304 = !DILocation(line: 454, column: 21, scope: !3302)
!3305 = !DILocation(line: 454, column: 57, scope: !3302)
!3306 = !DILocation(line: 454, column: 6, scope: !3302)
!3307 = !DILocation(line: 456, column: 8, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3298, file: !449, line: 454, column: 66)
!3309 = !DILocation(line: 457, column: 10, scope: !3308)
!3310 = !DILocation(line: 457, column: 3, scope: !3308)
!3311 = !DILocation(line: 458, column: 12, scope: !3308)
!3312 = !DILocation(line: 459, column: 2, scope: !3308)
!3313 = !DILocation(line: 460, column: 14, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3298, file: !449, line: 459, column: 9)
!3315 = !DILocation(line: 460, column: 12, scope: !3314)
!3316 = !DILocation(line: 461, column: 17, scope: !3314)
!3317 = !DILocation(line: 461, column: 29, scope: !3314)
!3318 = !DILocation(line: 461, column: 39, scope: !3314)
!3319 = !DILocation(line: 461, column: 3, scope: !3314)
!3320 = !DILocation(line: 463, column: 22, scope: !3166)
!3321 = !DILocation(line: 463, column: 13, scope: !3166)
!3322 = !DILocation(line: 463, column: 11, scope: !3166)
!3323 = !DILocation(line: 467, column: 33, scope: !3166)
!3324 = !DILocation(line: 467, column: 40, scope: !3166)
!3325 = !DILocation(line: 467, column: 9, scope: !3166)
!3326 = !DILocation(line: 467, column: 7, scope: !3166)
!3327 = !DILocation(line: 468, column: 15, scope: !3166)
!3328 = !DILocation(line: 468, column: 8, scope: !3166)
!3329 = !DILocation(line: 468, column: 6, scope: !3166)
!3330 = !DILocation(line: 470, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 470, column: 6)
!3332 = !DILocation(line: 470, column: 10, scope: !3331)
!3333 = !DILocation(line: 470, column: 14, scope: !3331)
!3334 = !DILocation(line: 470, column: 44, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3331, file: !449, discriminator: 1)
!3336 = !DILocation(line: 470, column: 47, scope: !3335)
!3337 = !DILocation(line: 470, column: 39, scope: !3335)
!3338 = !DILocation(line: 470, column: 16, scope: !3335)
!3339 = !DILocation(line: 470, column: 17, scope: !3335)
!3340 = !DILocation(line: 470, column: 19, scope: !3335)
!3341 = !DILocation(line: 470, column: 18, scope: !3335)
!3342 = !DILocation(line: 470, column: 20, scope: !3335)
!3343 = !DILocation(line: 470, column: 47, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3331, file: !449, discriminator: 2)
!3345 = !DILocation(line: 470, column: 50, scope: !3344)
!3346 = !DILocation(line: 470, column: 42, scope: !3344)
!3347 = !DILocation(line: 470, column: 54, scope: !3344)
!3348 = !DILocation(line: 470, column: 6, scope: !3344)
!3349 = !DILocalVariable(name: "digit", scope: !3350, file: !449, line: 473, type: !363)
!3350 = distinct !DILexicalBlock(scope: !3331, file: !449, line: 470, column: 62)
!3351 = !DILocation(line: 473, column: 22, scope: !3350)
!3352 = !DILocalVariable(name: "tmp", scope: !3350, file: !449, line: 473, type: !374)
!3353 = !DILocation(line: 473, column: 30, scope: !3350)
!3354 = !DILocation(line: 475, column: 9, scope: !3350)
!3355 = !DILocation(line: 475, column: 7, scope: !3350)
!3356 = !DILocation(line: 476, column: 15, scope: !3350)
!3357 = !DILocation(line: 476, column: 18, scope: !3350)
!3358 = !DILocation(line: 476, column: 11, scope: !3350)
!3359 = !DILocation(line: 476, column: 9, scope: !3350)
!3360 = !DILocation(line: 477, column: 7, scope: !3350)
!3361 = !DILocation(line: 477, column: 10, scope: !3350)
!3362 = !DILocation(line: 477, column: 3, scope: !3350)
!3363 = !DILocation(line: 477, column: 14, scope: !3350)
!3364 = !DILocation(line: 479, column: 36, scope: !3350)
!3365 = !DILocation(line: 479, column: 41, scope: !3350)
!3366 = !DILocation(line: 479, column: 10, scope: !3350)
!3367 = !DILocation(line: 479, column: 8, scope: !3350)
!3368 = !DILocation(line: 480, column: 10, scope: !3350)
!3369 = !DILocation(line: 480, column: 3, scope: !3350)
!3370 = !DILocation(line: 481, column: 2, scope: !3350)
!3371 = !DILocation(line: 483, column: 29, scope: !3166)
!3372 = !DILocation(line: 483, column: 50, scope: !3166)
!3373 = !DILocation(line: 483, column: 8, scope: !3166)
!3374 = !DILocation(line: 483, column: 6, scope: !3166)
!3375 = !DILocation(line: 485, column: 9, scope: !3166)
!3376 = !DILocation(line: 485, column: 2, scope: !3166)
!3377 = !DILocation(line: 486, column: 16, scope: !3166)
!3378 = !DILocation(line: 486, column: 9, scope: !3166)
!3379 = !DILocation(line: 487, column: 8, scope: !3166)
!3380 = !DILocation(line: 487, column: 6, scope: !3166)
!3381 = !DILocation(line: 488, column: 6, scope: !3166)
!3382 = !DILocation(line: 488, column: 4, scope: !3166)
!3383 = !DILocation(line: 489, column: 2, scope: !3166)
!3384 = !DILocation(line: 489, column: 10, scope: !3212)
!3385 = !DILocation(line: 489, column: 9, scope: !3212)
!3386 = !DILocation(line: 489, column: 12, scope: !3212)
!3387 = !DILocation(line: 489, column: 2, scope: !3212)
!3388 = !DILocation(line: 490, column: 8, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !449, line: 490, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 489, column: 21)
!3391 = !DILocation(line: 490, column: 7, scope: !3389)
!3392 = !DILocation(line: 490, column: 10, scope: !3389)
!3393 = !DILocation(line: 490, column: 18, scope: !3389)
!3394 = !DILocation(line: 490, column: 21, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3389, file: !449, discriminator: 1)
!3396 = !DILocation(line: 490, column: 26, scope: !3395)
!3397 = !DILocation(line: 490, column: 7, scope: !3395)
!3398 = !DILocalVariable(name: "chr", scope: !3399, file: !449, line: 491, type: !372)
!3399 = distinct !DILexicalBlock(scope: !3389, file: !449, line: 490, column: 35)
!3400 = !DILocation(line: 491, column: 8, scope: !3399)
!3401 = !DILocation(line: 492, column: 5, scope: !3399)
!3402 = !DILocation(line: 493, column: 10, scope: !3399)
!3403 = !DILocation(line: 493, column: 8, scope: !3399)
!3404 = !DILocation(line: 494, column: 30, scope: !3399)
!3405 = !DILocation(line: 494, column: 35, scope: !3399)
!3406 = !DILocation(line: 494, column: 39, scope: !3399)
!3407 = !DILocation(line: 494, column: 47, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !3399, file: !449, discriminator: 1)
!3409 = !DILocation(line: 494, column: 35, scope: !3408)
!3410 = !DILocation(line: 494, column: 54, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3399, file: !449, discriminator: 2)
!3412 = !DILocation(line: 494, column: 53, scope: !3411)
!3413 = !DILocation(line: 494, column: 35, scope: !3411)
!3414 = !DILocation(line: 494, column: 35, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3399, file: !449, discriminator: 3)
!3416 = !DILocation(line: 494, column: 4, scope: !3415)
!3417 = !DILocation(line: 495, column: 3, scope: !3399)
!3418 = !DILocation(line: 496, column: 30, scope: !3389)
!3419 = !DILocation(line: 496, column: 36, scope: !3389)
!3420 = !DILocation(line: 496, column: 35, scope: !3389)
!3421 = !DILocation(line: 496, column: 4, scope: !3389)
!3422 = !DILocation(line: 497, column: 4, scope: !3390)
!3423 = !DILocation(line: 489, column: 2, scope: !3217)
!3424 = distinct !{!3424, !3383}
!3425 = !DILocation(line: 499, column: 9, scope: !3166)
!3426 = !DILocation(line: 499, column: 2, scope: !3166)
!3427 = !DILocation(line: 500, column: 13, scope: !3166)
!3428 = !DILocation(line: 500, column: 18, scope: !3166)
!3429 = !DILocation(line: 500, column: 11, scope: !3166)
!3430 = !DILocation(line: 501, column: 16, scope: !3166)
!3431 = !DILocation(line: 501, column: 2, scope: !3166)
!3432 = !DILocation(line: 504, column: 6, scope: !3166)
!3433 = !DILocation(line: 504, column: 4, scope: !3166)
!3434 = !DILocation(line: 505, column: 37, scope: !3166)
!3435 = !DILocation(line: 505, column: 72, scope: !3166)
!3436 = !DILocation(line: 505, column: 81, scope: !3166)
!3437 = !DILocation(line: 506, column: 37, scope: !3166)
!3438 = !DILocation(line: 506, column: 43, scope: !3166)
!3439 = !DILocation(line: 506, column: 51, scope: !3166)
!3440 = !DILocation(line: 505, column: 8, scope: !3166)
!3441 = !DILocation(line: 505, column: 6, scope: !3166)
!3442 = !DILocation(line: 507, column: 9, scope: !3166)
!3443 = !DILocation(line: 507, column: 2, scope: !3166)
!3444 = !DILocation(line: 508, column: 6, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3166, file: !449, line: 508, column: 6)
!3446 = !DILocation(line: 508, column: 15, scope: !3445)
!3447 = !DILocation(line: 508, column: 6, scope: !3166)
!3448 = !DILocation(line: 509, column: 17, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !449, line: 508, column: 23)
!3450 = !DILocation(line: 509, column: 29, scope: !3449)
!3451 = !DILocation(line: 509, column: 3, scope: !3449)
!3452 = !DILocation(line: 510, column: 2, scope: !3449)
!3453 = !DILocation(line: 511, column: 15, scope: !3166)
!3454 = !DILocation(line: 511, column: 2, scope: !3166)
!3455 = !DILocation(line: 512, column: 9, scope: !3166)
!3456 = !DILocation(line: 512, column: 2, scope: !3166)
!3457 = !DILocation(line: 513, column: 1, scope: !3166)
!3458 = !DILocalVariable(name: "data", arg: 1, scope: !466, file: !449, line: 310, type: !434)
!3459 = !DILocation(line: 310, column: 39, scope: !466)
!3460 = !DILocalVariable(name: "server", scope: !466, file: !449, line: 318, type: !2258)
!3461 = !DILocation(line: 318, column: 14, scope: !466)
!3462 = !DILocalVariable(name: "p", scope: !466, file: !449, line: 319, type: !364)
!3463 = !DILocation(line: 319, column: 14, scope: !466)
!3464 = !DILocalVariable(name: "ret", scope: !466, file: !449, line: 320, type: !374)
!3465 = !DILocation(line: 320, column: 8, scope: !466)
!3466 = !DILocalVariable(name: "free_ret", scope: !466, file: !449, line: 321, type: !372)
!3467 = !DILocation(line: 321, column: 13, scope: !466)
!3468 = !DILocalVariable(name: "empty", scope: !466, file: !449, line: 321, type: !372)
!3469 = !DILocation(line: 321, column: 23, scope: !466)
!3470 = !DILocation(line: 323, column: 14, scope: !466)
!3471 = !DILocation(line: 323, column: 13, scope: !466)
!3472 = !DILocation(line: 323, column: 11, scope: !466)
!3473 = !DILocation(line: 324, column: 2, scope: !466)
!3474 = !DILocation(line: 324, column: 10, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !466, file: !449, discriminator: 1)
!3476 = !DILocation(line: 324, column: 9, scope: !3475)
!3477 = !DILocation(line: 324, column: 12, scope: !3475)
!3478 = !DILocation(line: 324, column: 2, scope: !3475)
!3479 = !DILocation(line: 324, column: 21, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !466, file: !449, discriminator: 2)
!3481 = !DILocation(line: 324, column: 2, scope: !3480)
!3482 = distinct !{!3482, !3473}
!3483 = !DILocation(line: 326, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !466, file: !449, line: 326, column: 6)
!3485 = !DILocation(line: 326, column: 6, scope: !3484)
!3486 = !DILocation(line: 326, column: 9, scope: !3484)
!3487 = !DILocation(line: 326, column: 6, scope: !466)
!3488 = !DILocation(line: 328, column: 25, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !449, line: 326, column: 17)
!3490 = !DILocation(line: 328, column: 26, scope: !3489)
!3491 = !DILocation(line: 328, column: 18, scope: !3489)
!3492 = !DILocation(line: 328, column: 23, scope: !3489)
!3493 = !DILocation(line: 329, column: 17, scope: !3489)
!3494 = !DILocation(line: 332, column: 7, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !466, file: !449, line: 332, column: 6)
!3496 = !DILocation(line: 332, column: 6, scope: !3495)
!3497 = !DILocation(line: 332, column: 9, scope: !3495)
!3498 = !DILocation(line: 332, column: 6, scope: !466)
!3499 = !DILocation(line: 334, column: 3, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !449, line: 332, column: 17)
!3501 = !DILocation(line: 338, column: 10, scope: !466)
!3502 = !DILocation(line: 340, column: 11, scope: !466)
!3503 = !DILocation(line: 340, column: 22, scope: !466)
!3504 = !DILocation(line: 340, column: 11, scope: !3475)
!3505 = !DILocation(line: 341, column: 3, scope: !466)
!3506 = !DILocation(line: 341, column: 15, scope: !466)
!3507 = !DILocation(line: 341, column: 29, scope: !466)
!3508 = !DILocation(line: 342, column: 3, scope: !466)
!3509 = !DILocation(line: 342, column: 15, scope: !466)
!3510 = !DILocation(line: 341, column: 3, scope: !3475)
!3511 = !DILocation(line: 342, column: 31, scope: !3475)
!3512 = !DILocation(line: 342, column: 43, scope: !3475)
!3513 = !DILocation(line: 341, column: 3, scope: !3480)
!3514 = !DILocation(line: 341, column: 3, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !466, file: !449, discriminator: 3)
!3516 = !DILocation(line: 340, column: 11, scope: !3480)
!3517 = !DILocation(line: 340, column: 11, scope: !3515)
!3518 = !DILocation(line: 340, column: 9, scope: !3515)
!3519 = !DILocation(line: 344, column: 36, scope: !466)
!3520 = !DILocation(line: 345, column: 8, scope: !466)
!3521 = !DILocation(line: 345, column: 19, scope: !466)
!3522 = !DILocation(line: 345, column: 8, scope: !3475)
!3523 = !DILocation(line: 345, column: 35, scope: !3480)
!3524 = !DILocation(line: 345, column: 47, scope: !3480)
!3525 = !DILocation(line: 345, column: 8, scope: !3480)
!3526 = !DILocation(line: 345, column: 8, scope: !3515)
!3527 = !DILocation(line: 344, column: 8, scope: !3475)
!3528 = !DILocation(line: 344, column: 6, scope: !3475)
!3529 = !DILocation(line: 347, column: 10, scope: !466)
!3530 = !DILocation(line: 349, column: 2, scope: !466)
!3531 = !DILocation(line: 349, column: 10, scope: !3475)
!3532 = !DILocation(line: 349, column: 9, scope: !3475)
!3533 = !DILocation(line: 349, column: 12, scope: !3475)
!3534 = !DILocation(line: 349, column: 2, scope: !3475)
!3535 = !DILocation(line: 349, column: 21, scope: !3480)
!3536 = !DILocation(line: 349, column: 2, scope: !3480)
!3537 = distinct !{!3537, !3530}
!3538 = !DILocation(line: 350, column: 11, scope: !466)
!3539 = !DILocation(line: 350, column: 10, scope: !466)
!3540 = !DILocation(line: 350, column: 13, scope: !466)
!3541 = !DILocation(line: 350, column: 20, scope: !466)
!3542 = !DILocation(line: 350, column: 24, scope: !3475)
!3543 = !DILocation(line: 350, column: 28, scope: !3475)
!3544 = !DILocation(line: 350, column: 35, scope: !3475)
!3545 = !DILocation(line: 350, column: 39, scope: !3480)
!3546 = !DILocation(line: 350, column: 38, scope: !3480)
!3547 = !DILocation(line: 350, column: 43, scope: !3480)
!3548 = !DILocation(line: 350, column: 35, scope: !3480)
!3549 = !DILocation(line: 350, column: 20, scope: !3515)
!3550 = !DILocation(line: 350, column: 8, scope: !3515)
!3551 = !DILocation(line: 351, column: 13, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !466, file: !449, line: 351, column: 13)
!3553 = !DILocation(line: 351, column: 13, scope: !466)
!3554 = !DILocation(line: 351, column: 30, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3552, file: !449, discriminator: 1)
!3556 = !DILocation(line: 351, column: 23, scope: !3555)
!3557 = !DILocation(line: 353, column: 6, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !466, file: !449, line: 353, column: 6)
!3559 = !DILocation(line: 353, column: 6, scope: !466)
!3560 = !DILocation(line: 355, column: 11, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !449, line: 353, column: 13)
!3562 = !DILocation(line: 355, column: 12, scope: !3561)
!3563 = !DILocation(line: 355, column: 4, scope: !3561)
!3564 = !DILocation(line: 355, column: 9, scope: !3561)
!3565 = !DILocation(line: 356, column: 17, scope: !3561)
!3566 = !DILocation(line: 359, column: 9, scope: !466)
!3567 = !DILocation(line: 360, column: 1, scope: !466)
!3568 = distinct !DISubprogram(name: "theme_read_module", scope: !449, file: !449, line: 818, type: !3569, isLocal: true, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !366, !364}
!3571 = !DILocalVariable(name: "theme", arg: 1, scope: !3568, file: !449, line: 818, type: !366)
!3572 = !DILocation(line: 818, column: 42, scope: !3568)
!3573 = !DILocalVariable(name: "module", arg: 2, scope: !3568, file: !449, line: 818, type: !364)
!3574 = !DILocation(line: 818, column: 61, scope: !3568)
!3575 = !DILocalVariable(name: "config", scope: !3568, file: !449, line: 820, type: !1864)
!3576 = !DILocation(line: 820, column: 14, scope: !3568)
!3577 = !DILocation(line: 822, column: 23, scope: !3568)
!3578 = !DILocation(line: 822, column: 30, scope: !3568)
!3579 = !DILocation(line: 822, column: 11, scope: !3568)
!3580 = !DILocation(line: 822, column: 9, scope: !3568)
!3581 = !DILocation(line: 823, column: 6, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3568, file: !449, line: 823, column: 6)
!3583 = !DILocation(line: 823, column: 13, scope: !3582)
!3584 = !DILocation(line: 823, column: 6, scope: !3568)
!3585 = !DILocation(line: 824, column: 16, scope: !3582)
!3586 = !DILocation(line: 824, column: 3, scope: !3582)
!3587 = !DILocation(line: 826, column: 20, scope: !3568)
!3588 = !DILocation(line: 826, column: 27, scope: !3568)
!3589 = !DILocation(line: 826, column: 35, scope: !3568)
!3590 = !DILocation(line: 826, column: 2, scope: !3568)
!3591 = !DILocation(line: 828, column: 6, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3568, file: !449, line: 828, column: 6)
!3593 = !DILocation(line: 828, column: 13, scope: !3592)
!3594 = !DILocation(line: 828, column: 6, scope: !3568)
!3595 = !DILocation(line: 828, column: 34, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3592, file: !449, discriminator: 1)
!3597 = !DILocation(line: 828, column: 21, scope: !3596)
!3598 = !DILocation(line: 829, column: 1, scope: !3568)
!3599 = distinct !DISubprogram(name: "theme_init_module", scope: !449, file: !449, line: 784, type: !3600, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !366, !364, !1864}
!3602 = !DILocalVariable(name: "theme", arg: 1, scope: !3599, file: !449, line: 784, type: !366)
!3603 = !DILocation(line: 784, column: 42, scope: !3599)
!3604 = !DILocalVariable(name: "module", arg: 2, scope: !3599, file: !449, line: 784, type: !364)
!3605 = !DILocation(line: 784, column: 61, scope: !3599)
!3606 = !DILocalVariable(name: "config", arg: 3, scope: !3599, file: !449, line: 785, type: !1864)
!3607 = !DILocation(line: 785, column: 22, scope: !3599)
!3608 = !DILocalVariable(name: "rec", scope: !3599, file: !449, line: 787, type: !439)
!3609 = !DILocation(line: 787, column: 20, scope: !3599)
!3610 = !DILocalVariable(name: "formats", scope: !3599, file: !449, line: 788, type: !1534)
!3611 = !DILocation(line: 788, column: 14, scope: !3599)
!3612 = !DILocalVariable(name: "n", scope: !3599, file: !449, line: 789, type: !372)
!3613 = !DILocation(line: 789, column: 6, scope: !3599)
!3614 = !DILocation(line: 791, column: 32, scope: !3599)
!3615 = !DILocation(line: 791, column: 49, scope: !3599)
!3616 = !DILocation(line: 791, column: 12, scope: !3599)
!3617 = !DILocation(line: 791, column: 10, scope: !3599)
!3618 = !DILocation(line: 792, column: 2, scope: !3599)
!3619 = distinct !{!3619, !3618}
!3620 = !DILocation(line: 792, column: 10, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3622, file: !449, discriminator: 1)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !449, line: 792, column: 10)
!3623 = distinct !DILexicalBlock(scope: !3599, file: !449, line: 792, column: 4)
!3624 = !DILocation(line: 792, column: 18, scope: !3621)
!3625 = !DILocation(line: 792, column: 5, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3627, file: !449, discriminator: 2)
!3627 = distinct !DILexicalBlock(scope: !3622, file: !449, line: 792, column: 3)
!3628 = !DILocation(line: 792, column: 14, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3630, file: !449, discriminator: 3)
!3630 = distinct !DILexicalBlock(scope: !3622, file: !449, line: 792, column: 12)
!3631 = !DILocation(line: 792, column: 102, scope: !3629)
!3632 = !DILocation(line: 792, column: 113, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3623, file: !449, discriminator: 4)
!3634 = !DILocation(line: 794, column: 28, scope: !3599)
!3635 = !DILocation(line: 794, column: 35, scope: !3599)
!3636 = !DILocation(line: 794, column: 8, scope: !3599)
!3637 = !DILocation(line: 794, column: 6, scope: !3599)
!3638 = !DILocation(line: 796, column: 6, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3599, file: !449, line: 796, column: 6)
!3640 = !DILocation(line: 796, column: 13, scope: !3639)
!3641 = !DILocation(line: 796, column: 6, scope: !3599)
!3642 = !DILocation(line: 797, column: 22, scope: !3639)
!3643 = !DILocation(line: 797, column: 29, scope: !3639)
!3644 = !DILocation(line: 797, column: 37, scope: !3639)
!3645 = !DILocation(line: 797, column: 45, scope: !3639)
!3646 = !DILocation(line: 797, column: 3, scope: !3639)
!3647 = !DILocation(line: 800, column: 9, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3599, file: !449, line: 800, column: 2)
!3649 = !DILocation(line: 800, column: 7, scope: !3648)
!3650 = !DILocation(line: 800, column: 14, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3652, file: !449, discriminator: 1)
!3652 = distinct !DILexicalBlock(scope: !3648, file: !449, line: 800, column: 2)
!3653 = !DILocation(line: 800, column: 18, scope: !3651)
!3654 = !DILocation(line: 800, column: 23, scope: !3651)
!3655 = !DILocation(line: 800, column: 16, scope: !3651)
!3656 = !DILocation(line: 800, column: 2, scope: !3651)
!3657 = !DILocation(line: 801, column: 29, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !449, line: 801, column: 7)
!3659 = distinct !DILexicalBlock(scope: !3652, file: !449, line: 800, column: 35)
!3660 = !DILocation(line: 801, column: 7, scope: !3658)
!3661 = !DILocation(line: 801, column: 12, scope: !3658)
!3662 = !DILocation(line: 801, column: 32, scope: !3658)
!3663 = !DILocation(line: 801, column: 7, scope: !3659)
!3664 = !DILocation(line: 803, column: 25, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3658, file: !449, line: 801, column: 40)
!3666 = !DILocation(line: 803, column: 40, scope: !3665)
!3667 = !DILocation(line: 803, column: 32, scope: !3665)
!3668 = !DILocation(line: 803, column: 43, scope: !3665)
!3669 = !DILocation(line: 803, column: 5, scope: !3665)
!3670 = !DILocation(line: 802, column: 26, scope: !3665)
!3671 = !DILocation(line: 802, column: 4, scope: !3665)
!3672 = !DILocation(line: 802, column: 9, scope: !3665)
!3673 = !DILocation(line: 802, column: 29, scope: !3665)
!3674 = !DILocation(line: 804, column: 3, scope: !3665)
!3675 = !DILocation(line: 805, column: 2, scope: !3659)
!3676 = !DILocation(line: 800, column: 31, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3652, file: !449, discriminator: 2)
!3678 = !DILocation(line: 800, column: 2, scope: !3677)
!3679 = distinct !{!3679, !3680}
!3680 = !DILocation(line: 800, column: 2, scope: !3599)
!3681 = !DILocation(line: 806, column: 1, scope: !3599)
!3682 = distinct !DISubprogram(name: "theme_module_create", scope: !449, file: !449, line: 670, type: !3683, isLocal: true, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!439, !366, !364}
!3685 = !DILocalVariable(name: "theme", arg: 1, scope: !3682, file: !449, line: 670, type: !366)
!3686 = !DILocation(line: 670, column: 57, scope: !3682)
!3687 = !DILocalVariable(name: "module", arg: 2, scope: !3682, file: !449, line: 670, type: !364)
!3688 = !DILocation(line: 670, column: 76, scope: !3682)
!3689 = !DILocalVariable(name: "rec", scope: !3682, file: !449, line: 672, type: !439)
!3690 = !DILocation(line: 672, column: 20, scope: !3682)
!3691 = !DILocalVariable(name: "formats", scope: !3682, file: !449, line: 673, type: !1534)
!3692 = !DILocation(line: 673, column: 14, scope: !3682)
!3693 = !DILocation(line: 675, column: 28, scope: !3682)
!3694 = !DILocation(line: 675, column: 35, scope: !3682)
!3695 = !DILocation(line: 675, column: 44, scope: !3682)
!3696 = !DILocation(line: 675, column: 8, scope: !3682)
!3697 = !DILocation(line: 675, column: 6, scope: !3682)
!3698 = !DILocation(line: 676, column: 6, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3682, file: !449, line: 676, column: 6)
!3700 = !DILocation(line: 676, column: 10, scope: !3699)
!3701 = !DILocation(line: 676, column: 6, scope: !3682)
!3702 = !DILocation(line: 676, column: 25, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3699, file: !449, discriminator: 1)
!3704 = !DILocation(line: 676, column: 18, scope: !3703)
!3705 = !DILocation(line: 678, column: 32, scope: !3682)
!3706 = !DILocation(line: 678, column: 49, scope: !3682)
!3707 = !DILocation(line: 678, column: 12, scope: !3682)
!3708 = !DILocation(line: 678, column: 10, scope: !3682)
!3709 = !DILocation(line: 679, column: 9, scope: !3682)
!3710 = distinct !{!3710, !3709}
!3711 = !DILocation(line: 679, column: 17, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !3713, file: !449, discriminator: 1)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !449, line: 679, column: 17)
!3714 = distinct !DILexicalBlock(scope: !3682, file: !449, line: 679, column: 11)
!3715 = !DILocation(line: 679, column: 25, scope: !3712)
!3716 = !DILocation(line: 679, column: 12, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3718, file: !449, discriminator: 2)
!3718 = distinct !DILexicalBlock(scope: !3713, file: !449, line: 679, column: 10)
!3719 = !DILocation(line: 679, column: 21, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3721, file: !449, discriminator: 3)
!3721 = distinct !DILexicalBlock(scope: !3713, file: !449, line: 679, column: 19)
!3722 = !DILocation(line: 679, column: 109, scope: !3720)
!3723 = !DILocation(line: 679, column: 14, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3714, file: !449, discriminator: 4)
!3725 = !DILocation(line: 681, column: 30, scope: !3682)
!3726 = !DILocation(line: 681, column: 9, scope: !3682)
!3727 = !DILocation(line: 681, column: 6, scope: !3682)
!3728 = !DILocation(line: 682, column: 23, scope: !3682)
!3729 = !DILocation(line: 682, column: 14, scope: !3682)
!3730 = !DILocation(line: 682, column: 2, scope: !3682)
!3731 = !DILocation(line: 682, column: 7, scope: !3682)
!3732 = !DILocation(line: 682, column: 12, scope: !3682)
!3733 = !DILocation(line: 684, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3682, file: !449, line: 684, column: 2)
!3735 = !DILocation(line: 684, column: 12, scope: !3734)
!3736 = !DILocation(line: 684, column: 18, scope: !3734)
!3737 = !DILocation(line: 684, column: 31, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !3739, file: !449, discriminator: 1)
!3739 = distinct !DILexicalBlock(scope: !3734, file: !449, line: 684, column: 2)
!3740 = !DILocation(line: 684, column: 36, scope: !3738)
!3741 = !DILocation(line: 684, column: 23, scope: !3738)
!3742 = !DILocation(line: 684, column: 43, scope: !3738)
!3743 = !DILocation(line: 684, column: 47, scope: !3738)
!3744 = !DILocation(line: 684, column: 2, scope: !3738)
!3745 = !DILocation(line: 684, column: 2, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3734, file: !449, discriminator: 2)
!3747 = !DILocation(line: 684, column: 55, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !3739, file: !449, discriminator: 3)
!3749 = !DILocation(line: 684, column: 60, scope: !3748)
!3750 = !DILocation(line: 684, column: 65, scope: !3748)
!3751 = !DILocation(line: 684, column: 2, scope: !3748)
!3752 = distinct !{!3752, !3753}
!3753 = !DILocation(line: 684, column: 2, scope: !3682)
!3754 = !DILocation(line: 685, column: 43, scope: !3682)
!3755 = !DILocation(line: 685, column: 48, scope: !3682)
!3756 = !DILocation(line: 685, column: 42, scope: !3682)
!3757 = !DILocation(line: 685, column: 29, scope: !3682)
!3758 = !DILocation(line: 685, column: 18, scope: !3682)
!3759 = !DILocation(line: 685, column: 2, scope: !3682)
!3760 = !DILocation(line: 685, column: 7, scope: !3682)
!3761 = !DILocation(line: 685, column: 15, scope: !3682)
!3762 = !DILocation(line: 686, column: 52, scope: !3682)
!3763 = !DILocation(line: 686, column: 57, scope: !3682)
!3764 = !DILocation(line: 686, column: 51, scope: !3682)
!3765 = !DILocation(line: 686, column: 38, scope: !3682)
!3766 = !DILocation(line: 686, column: 27, scope: !3682)
!3767 = !DILocation(line: 686, column: 2, scope: !3682)
!3768 = !DILocation(line: 686, column: 7, scope: !3682)
!3769 = !DILocation(line: 686, column: 24, scope: !3682)
!3770 = !DILocation(line: 688, column: 22, scope: !3682)
!3771 = !DILocation(line: 688, column: 29, scope: !3682)
!3772 = !DILocation(line: 688, column: 38, scope: !3682)
!3773 = !DILocation(line: 688, column: 43, scope: !3682)
!3774 = !DILocation(line: 688, column: 49, scope: !3682)
!3775 = !DILocation(line: 688, column: 2, scope: !3682)
!3776 = !DILocation(line: 689, column: 9, scope: !3682)
!3777 = !DILocation(line: 689, column: 2, scope: !3682)
!3778 = !DILocation(line: 690, column: 1, scope: !3682)
!3779 = distinct !DISubprogram(name: "theme_read_formats", scope: !449, file: !449, line: 763, type: !3780, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{null, !366, !364, !1864, !439}
!3782 = !DILocalVariable(name: "theme", arg: 1, scope: !3779, file: !449, line: 763, type: !366)
!3783 = !DILocation(line: 763, column: 43, scope: !3779)
!3784 = !DILocalVariable(name: "module", arg: 2, scope: !3779, file: !449, line: 763, type: !364)
!3785 = !DILocation(line: 763, column: 62, scope: !3779)
!3786 = !DILocalVariable(name: "config", arg: 3, scope: !3779, file: !449, line: 764, type: !1864)
!3787 = !DILocation(line: 764, column: 23, scope: !3779)
!3788 = !DILocalVariable(name: "rec", arg: 4, scope: !3779, file: !449, line: 764, type: !439)
!3789 = !DILocation(line: 764, column: 49, scope: !3779)
!3790 = !DILocalVariable(name: "node", scope: !3779, file: !449, line: 766, type: !1873)
!3791 = !DILocation(line: 766, column: 15, scope: !3779)
!3792 = !DILocalVariable(name: "tmp", scope: !3779, file: !449, line: 767, type: !395)
!3793 = !DILocation(line: 767, column: 10, scope: !3779)
!3794 = !DILocation(line: 769, column: 30, scope: !3779)
!3795 = !DILocation(line: 769, column: 9, scope: !3779)
!3796 = !DILocation(line: 769, column: 7, scope: !3779)
!3797 = !DILocation(line: 770, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3779, file: !449, line: 770, column: 6)
!3799 = !DILocation(line: 770, column: 11, scope: !3798)
!3800 = !DILocation(line: 770, column: 6, scope: !3779)
!3801 = !DILocation(line: 770, column: 19, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3798, file: !449, discriminator: 1)
!3803 = !DILocation(line: 771, column: 29, scope: !3779)
!3804 = !DILocation(line: 771, column: 37, scope: !3779)
!3805 = !DILocation(line: 771, column: 43, scope: !3779)
!3806 = !DILocation(line: 771, column: 9, scope: !3779)
!3807 = !DILocation(line: 771, column: 7, scope: !3779)
!3808 = !DILocation(line: 772, column: 6, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3779, file: !449, line: 772, column: 6)
!3810 = !DILocation(line: 772, column: 11, scope: !3809)
!3811 = !DILocation(line: 772, column: 6, scope: !3779)
!3812 = !DILocation(line: 772, column: 19, scope: !3813)
!3813 = !DILexicalBlockFile(scope: !3809, file: !449, discriminator: 1)
!3814 = !DILocation(line: 774, column: 13, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3779, file: !449, line: 774, column: 2)
!3816 = !DILocation(line: 774, column: 19, scope: !3815)
!3817 = !DILocation(line: 774, column: 11, scope: !3815)
!3818 = !DILocation(line: 774, column: 7, scope: !3815)
!3819 = !DILocation(line: 774, column: 26, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !3821, file: !449, discriminator: 1)
!3821 = distinct !DILexicalBlock(scope: !3815, file: !449, line: 774, column: 2)
!3822 = !DILocation(line: 774, column: 30, scope: !3820)
!3823 = !DILocation(line: 774, column: 2, scope: !3820)
!3824 = !DILocation(line: 775, column: 10, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !449, line: 774, column: 55)
!3826 = !DILocation(line: 775, column: 15, scope: !3825)
!3827 = !DILocation(line: 775, column: 8, scope: !3825)
!3828 = !DILocation(line: 777, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !449, line: 777, column: 7)
!3830 = !DILocation(line: 777, column: 13, scope: !3829)
!3831 = !DILocation(line: 777, column: 17, scope: !3829)
!3832 = !DILocation(line: 777, column: 24, scope: !3829)
!3833 = !DILocation(line: 777, column: 27, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3829, file: !449, discriminator: 1)
!3835 = !DILocation(line: 777, column: 33, scope: !3834)
!3836 = !DILocation(line: 777, column: 39, scope: !3834)
!3837 = !DILocation(line: 777, column: 7, scope: !3834)
!3838 = !DILocation(line: 778, column: 21, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3829, file: !449, line: 777, column: 48)
!3840 = !DILocation(line: 778, column: 28, scope: !3839)
!3841 = !DILocation(line: 778, column: 33, scope: !3839)
!3842 = !DILocation(line: 779, column: 7, scope: !3839)
!3843 = !DILocation(line: 779, column: 13, scope: !3839)
!3844 = !DILocation(line: 779, column: 18, scope: !3839)
!3845 = !DILocation(line: 779, column: 24, scope: !3839)
!3846 = !DILocation(line: 778, column: 4, scope: !3839)
!3847 = !DILocation(line: 780, column: 3, scope: !3839)
!3848 = !DILocation(line: 781, column: 2, scope: !3825)
!3849 = !DILocation(line: 774, column: 44, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3821, file: !449, discriminator: 2)
!3851 = !DILocation(line: 774, column: 49, scope: !3850)
!3852 = !DILocation(line: 774, column: 42, scope: !3850)
!3853 = !DILocation(line: 774, column: 2, scope: !3850)
!3854 = distinct !{!3854, !3855}
!3855 = !DILocation(line: 774, column: 2, scope: !3779)
!3856 = !DILocation(line: 782, column: 1, scope: !3779)
!3857 = distinct !DISubprogram(name: "theme_set_format", scope: !449, file: !449, line: 750, type: !3858, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !366, !439, !364, !364, !364}
!3860 = !DILocalVariable(name: "theme", arg: 1, scope: !3857, file: !449, line: 750, type: !366)
!3861 = !DILocation(line: 750, column: 41, scope: !3857)
!3862 = !DILocalVariable(name: "rec", arg: 2, scope: !3857, file: !449, line: 750, type: !439)
!3863 = !DILocation(line: 750, column: 66, scope: !3857)
!3864 = !DILocalVariable(name: "module", arg: 3, scope: !3857, file: !449, line: 751, type: !364)
!3865 = !DILocation(line: 751, column: 21, scope: !3857)
!3866 = !DILocalVariable(name: "key", arg: 4, scope: !3857, file: !449, line: 752, type: !364)
!3867 = !DILocation(line: 752, column: 21, scope: !3857)
!3868 = !DILocalVariable(name: "value", arg: 5, scope: !3857, file: !449, line: 752, type: !364)
!3869 = !DILocation(line: 752, column: 38, scope: !3857)
!3870 = !DILocalVariable(name: "num", scope: !3857, file: !449, line: 754, type: !372)
!3871 = !DILocation(line: 754, column: 6, scope: !3857)
!3872 = !DILocation(line: 756, column: 31, scope: !3857)
!3873 = !DILocation(line: 756, column: 39, scope: !3857)
!3874 = !DILocation(line: 756, column: 15, scope: !3857)
!3875 = !DILocation(line: 756, column: 13, scope: !3857)
!3876 = !DILocation(line: 757, column: 6, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3857, file: !449, line: 757, column: 6)
!3878 = !DILocation(line: 757, column: 10, scope: !3877)
!3879 = !DILocation(line: 757, column: 6, scope: !3857)
!3880 = !DILocation(line: 758, column: 32, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3877, file: !449, line: 757, column: 17)
!3882 = !DILocation(line: 758, column: 23, scope: !3881)
!3883 = !DILocation(line: 758, column: 16, scope: !3881)
!3884 = !DILocation(line: 758, column: 3, scope: !3881)
!3885 = !DILocation(line: 758, column: 8, scope: !3881)
!3886 = !DILocation(line: 758, column: 21, scope: !3881)
!3887 = !DILocation(line: 759, column: 52, scope: !3881)
!3888 = !DILocation(line: 759, column: 59, scope: !3881)
!3889 = !DILocation(line: 759, column: 32, scope: !3881)
!3890 = !DILocation(line: 759, column: 25, scope: !3881)
!3891 = !DILocation(line: 759, column: 3, scope: !3881)
!3892 = !DILocation(line: 759, column: 8, scope: !3881)
!3893 = !DILocation(line: 759, column: 30, scope: !3881)
!3894 = !DILocation(line: 760, column: 2, scope: !3881)
!3895 = !DILocation(line: 761, column: 1, scope: !3857)
!3896 = distinct !DISubprogram(name: "theme_remove_module", scope: !449, file: !449, line: 836, type: !3569, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3897 = !DILocalVariable(name: "theme", arg: 1, scope: !3896, file: !449, line: 836, type: !366)
!3898 = !DILocation(line: 836, column: 44, scope: !3896)
!3899 = !DILocalVariable(name: "module", arg: 2, scope: !3896, file: !449, line: 836, type: !364)
!3900 = !DILocation(line: 836, column: 63, scope: !3896)
!3901 = !DILocalVariable(name: "rec", scope: !3896, file: !449, line: 838, type: !439)
!3902 = !DILocation(line: 838, column: 20, scope: !3896)
!3903 = !DILocation(line: 840, column: 28, scope: !3896)
!3904 = !DILocation(line: 840, column: 35, scope: !3896)
!3905 = !DILocation(line: 840, column: 44, scope: !3896)
!3906 = !DILocation(line: 840, column: 8, scope: !3896)
!3907 = !DILocation(line: 840, column: 6, scope: !3896)
!3908 = !DILocation(line: 841, column: 6, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3896, file: !449, line: 841, column: 6)
!3910 = !DILocation(line: 841, column: 10, scope: !3909)
!3911 = !DILocation(line: 841, column: 6, scope: !3896)
!3912 = !DILocation(line: 841, column: 18, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !3909, file: !449, discriminator: 1)
!3914 = !DILocation(line: 843, column: 22, scope: !3896)
!3915 = !DILocation(line: 843, column: 29, scope: !3896)
!3916 = !DILocation(line: 843, column: 38, scope: !3896)
!3917 = !DILocation(line: 843, column: 2, scope: !3896)
!3918 = !DILocation(line: 844, column: 23, scope: !3896)
!3919 = !DILocation(line: 844, column: 31, scope: !3896)
!3920 = !DILocation(line: 844, column: 2, scope: !3896)
!3921 = !DILocation(line: 845, column: 1, scope: !3896)
!3922 = !DILocation(line: 845, column: 1, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3896, file: !449, discriminator: 1)
!3924 = distinct !DISubprogram(name: "read_error", scope: !449, file: !449, line: 998, type: !1568, isLocal: true, isDefinition: true, scopeLine: 999, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3925 = !DILocalVariable(name: "str", arg: 1, scope: !3924, file: !449, line: 998, type: !364)
!3926 = !DILocation(line: 998, column: 36, scope: !3924)
!3927 = !DILocalVariable(name: "old", scope: !3924, file: !449, line: 1000, type: !374)
!3928 = !DILocation(line: 1000, column: 8, scope: !3924)
!3929 = !DILocation(line: 1002, column: 6, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3924, file: !449, line: 1002, column: 6)
!3931 = !DILocation(line: 1002, column: 6, scope: !3924)
!3932 = !DILocation(line: 1003, column: 66, scope: !3930)
!3933 = !DILocation(line: 1003, column: 17, scope: !3930)
!3934 = !DILocation(line: 1004, column: 11, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3930, file: !449, line: 1004, column: 11)
!3936 = !DILocation(line: 1004, column: 23, scope: !3935)
!3937 = !DILocation(line: 1004, column: 11, scope: !3930)
!3938 = !DILocation(line: 1005, column: 26, scope: !3935)
!3939 = !DILocation(line: 1005, column: 17, scope: !3935)
!3940 = !DILocation(line: 1005, column: 15, scope: !3935)
!3941 = !DILocation(line: 1005, column: 3, scope: !3935)
!3942 = !DILocation(line: 1007, column: 23, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3935, file: !449, line: 1006, column: 7)
!3944 = !DILocation(line: 1007, column: 21, scope: !3943)
!3945 = !DILocation(line: 1008, column: 29, scope: !3943)
!3946 = !DILocation(line: 1008, column: 48, scope: !3943)
!3947 = !DILocation(line: 1008, column: 17, scope: !3943)
!3948 = !DILocation(line: 1008, column: 15, scope: !3943)
!3949 = !DILocation(line: 1009, column: 24, scope: !3943)
!3950 = !DILocation(line: 1009, column: 17, scope: !3943)
!3951 = !DILocation(line: 1011, column: 1, scope: !3924)
!3952 = distinct !DISubprogram(name: "theme_read_replaces", scope: !449, file: !449, line: 692, type: !3953, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !1864, !366}
!3955 = !DILocalVariable(name: "config", arg: 1, scope: !3952, file: !449, line: 692, type: !1864)
!3956 = !DILocation(line: 692, column: 45, scope: !3952)
!3957 = !DILocalVariable(name: "theme", arg: 2, scope: !3952, file: !449, line: 692, type: !366)
!3958 = !DILocation(line: 692, column: 64, scope: !3952)
!3959 = !DILocalVariable(name: "tmp", scope: !3952, file: !449, line: 694, type: !395)
!3960 = !DILocation(line: 694, column: 10, scope: !3952)
!3961 = !DILocalVariable(name: "node", scope: !3952, file: !449, line: 695, type: !1873)
!3962 = !DILocation(line: 695, column: 15, scope: !3952)
!3963 = !DILocalVariable(name: "p", scope: !3952, file: !449, line: 696, type: !364)
!3964 = !DILocation(line: 696, column: 14, scope: !3952)
!3965 = !DILocalVariable(name: "index", scope: !3952, file: !449, line: 697, type: !372)
!3966 = !DILocation(line: 697, column: 13, scope: !3952)
!3967 = !DILocation(line: 700, column: 13, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3952, file: !449, line: 700, column: 2)
!3969 = !DILocation(line: 700, column: 7, scope: !3968)
!3970 = !DILocation(line: 700, column: 18, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3972, file: !449, discriminator: 1)
!3972 = distinct !DILexicalBlock(scope: !3968, file: !449, line: 700, column: 2)
!3973 = !DILocation(line: 700, column: 24, scope: !3971)
!3974 = !DILocation(line: 700, column: 2, scope: !3971)
!3975 = !DILocation(line: 701, column: 37, scope: !3972)
!3976 = !DILocation(line: 701, column: 17, scope: !3972)
!3977 = !DILocation(line: 701, column: 24, scope: !3972)
!3978 = !DILocation(line: 701, column: 44, scope: !3972)
!3979 = !DILocation(line: 700, column: 36, scope: !3980)
!3980 = !DILexicalBlockFile(scope: !3972, file: !449, discriminator: 2)
!3981 = !DILocation(line: 700, column: 2, scope: !3980)
!3982 = distinct !{!3982, !3983}
!3983 = !DILocation(line: 700, column: 2, scope: !3952)
!3984 = !DILocation(line: 702, column: 8, scope: !3952)
!3985 = !DILocation(line: 704, column: 30, scope: !3952)
!3986 = !DILocation(line: 704, column: 9, scope: !3952)
!3987 = !DILocation(line: 704, column: 7, scope: !3952)
!3988 = !DILocation(line: 705, column: 6, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3952, file: !449, line: 705, column: 6)
!3990 = !DILocation(line: 705, column: 11, scope: !3989)
!3991 = !DILocation(line: 705, column: 18, scope: !3989)
!3992 = !DILocation(line: 705, column: 21, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !3989, file: !449, discriminator: 1)
!3994 = !DILocation(line: 705, column: 27, scope: !3993)
!3995 = !DILocation(line: 705, column: 32, scope: !3993)
!3996 = !DILocation(line: 705, column: 6, scope: !3993)
!3997 = !DILocation(line: 705, column: 52, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3989, file: !449, discriminator: 2)
!3999 = !DILocation(line: 707, column: 13, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3952, file: !449, line: 707, column: 2)
!4001 = !DILocation(line: 707, column: 19, scope: !4000)
!4002 = !DILocation(line: 707, column: 11, scope: !4000)
!4003 = !DILocation(line: 707, column: 7, scope: !4000)
!4004 = !DILocation(line: 707, column: 26, scope: !4005)
!4005 = !DILexicalBlockFile(scope: !4006, file: !449, discriminator: 1)
!4006 = distinct !DILexicalBlock(scope: !4000, file: !449, line: 707, column: 2)
!4007 = !DILocation(line: 707, column: 30, scope: !4005)
!4008 = !DILocation(line: 707, column: 2, scope: !4005)
!4009 = !DILocation(line: 708, column: 10, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4006, file: !449, line: 707, column: 55)
!4011 = !DILocation(line: 708, column: 15, scope: !4010)
!4012 = !DILocation(line: 708, column: 8, scope: !4010)
!4013 = !DILocation(line: 710, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !449, line: 710, column: 7)
!4015 = !DILocation(line: 710, column: 13, scope: !4014)
!4016 = !DILocation(line: 710, column: 17, scope: !4014)
!4017 = !DILocation(line: 710, column: 24, scope: !4014)
!4018 = !DILocation(line: 710, column: 27, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !4014, file: !449, discriminator: 1)
!4020 = !DILocation(line: 710, column: 33, scope: !4019)
!4021 = !DILocation(line: 710, column: 39, scope: !4019)
!4022 = !DILocation(line: 710, column: 7, scope: !4019)
!4023 = !DILocation(line: 711, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !449, line: 711, column: 4)
!4025 = distinct !DILexicalBlock(scope: !4014, file: !449, line: 710, column: 48)
!4026 = !DILocation(line: 711, column: 19, scope: !4024)
!4027 = !DILocation(line: 711, column: 11, scope: !4024)
!4028 = !DILocation(line: 711, column: 9, scope: !4024)
!4029 = !DILocation(line: 711, column: 25, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4031, file: !449, discriminator: 1)
!4031 = distinct !DILexicalBlock(scope: !4024, file: !449, line: 711, column: 4)
!4032 = !DILocation(line: 711, column: 24, scope: !4030)
!4033 = !DILocation(line: 711, column: 27, scope: !4030)
!4034 = !DILocation(line: 711, column: 4, scope: !4030)
!4035 = !DILocation(line: 712, column: 81, scope: !4031)
!4036 = !DILocation(line: 712, column: 76, scope: !4031)
!4037 = !DILocation(line: 712, column: 75, scope: !4031)
!4038 = !DILocation(line: 712, column: 53, scope: !4031)
!4039 = !DILocation(line: 712, column: 33, scope: !4031)
!4040 = !DILocation(line: 712, column: 40, scope: !4031)
!4041 = !DILocation(line: 712, column: 79, scope: !4031)
!4042 = !DILocation(line: 711, column: 37, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !4031, file: !449, discriminator: 2)
!4044 = !DILocation(line: 711, column: 4, scope: !4043)
!4045 = distinct !{!4045, !4046}
!4046 = !DILocation(line: 711, column: 4, scope: !4025)
!4047 = !DILocation(line: 715, column: 20, scope: !4025)
!4048 = !DILocation(line: 715, column: 27, scope: !4025)
!4049 = !DILocation(line: 716, column: 22, scope: !4025)
!4050 = !DILocation(line: 716, column: 28, scope: !4025)
!4051 = !DILocation(line: 716, column: 13, scope: !4025)
!4052 = !DILocation(line: 715, column: 5, scope: !4025)
!4053 = !DILocation(line: 714, column: 4, scope: !4025)
!4054 = !DILocation(line: 714, column: 11, scope: !4025)
!4055 = !DILocation(line: 714, column: 26, scope: !4025)
!4056 = !DILocation(line: 717, column: 30, scope: !4025)
!4057 = !DILocation(line: 718, column: 3, scope: !4025)
!4058 = !DILocation(line: 719, column: 2, scope: !4010)
!4059 = !DILocation(line: 707, column: 44, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4006, file: !449, discriminator: 2)
!4061 = !DILocation(line: 707, column: 49, scope: !4060)
!4062 = !DILocation(line: 707, column: 42, scope: !4060)
!4063 = !DILocation(line: 707, column: 2, scope: !4060)
!4064 = distinct !{!4064, !4065}
!4065 = !DILocation(line: 707, column: 2, scope: !3952)
!4066 = !DILocation(line: 720, column: 1, scope: !3952)
!4067 = distinct !DISubprogram(name: "theme_copy_abstracts", scope: !449, file: !449, line: 981, type: !4068, isLocal: true, isDefinition: true, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !366, !366}
!4070 = !DILocalVariable(name: "dest", arg: 1, scope: !4067, file: !449, line: 981, type: !366)
!4071 = !DILocation(line: 981, column: 45, scope: !4067)
!4072 = !DILocalVariable(name: "src", arg: 2, scope: !4067, file: !449, line: 981, type: !366)
!4073 = !DILocation(line: 981, column: 62, scope: !4067)
!4074 = !DILocation(line: 983, column: 23, scope: !4067)
!4075 = !DILocation(line: 983, column: 28, scope: !4067)
!4076 = !DILocation(line: 984, column: 9, scope: !4067)
!4077 = !DILocation(line: 984, column: 15, scope: !4067)
!4078 = !DILocation(line: 983, column: 2, scope: !4067)
!4079 = !DILocation(line: 985, column: 1, scope: !4067)
!4080 = distinct !DISubprogram(name: "theme_read_abstracts", scope: !449, file: !449, line: 722, type: !3953, isLocal: true, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4081 = !DILocalVariable(name: "config", arg: 1, scope: !4080, file: !449, line: 722, type: !1864)
!4082 = !DILocation(line: 722, column: 46, scope: !4080)
!4083 = !DILocalVariable(name: "theme", arg: 2, scope: !4080, file: !449, line: 722, type: !366)
!4084 = !DILocation(line: 722, column: 65, scope: !4080)
!4085 = !DILocalVariable(name: "tmp", scope: !4080, file: !449, line: 724, type: !395)
!4086 = !DILocation(line: 724, column: 10, scope: !4080)
!4087 = !DILocalVariable(name: "node", scope: !4080, file: !449, line: 725, type: !1873)
!4088 = !DILocation(line: 725, column: 15, scope: !4080)
!4089 = !DILocalVariable(name: "oldkey", scope: !4080, file: !449, line: 726, type: !401)
!4090 = !DILocation(line: 726, column: 18, scope: !4080)
!4091 = !DILocalVariable(name: "oldvalue", scope: !4080, file: !449, line: 726, type: !401)
!4092 = !DILocation(line: 726, column: 26, scope: !4080)
!4093 = !DILocation(line: 728, column: 30, scope: !4080)
!4094 = !DILocation(line: 728, column: 9, scope: !4080)
!4095 = !DILocation(line: 728, column: 7, scope: !4080)
!4096 = !DILocation(line: 729, column: 6, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4080, file: !449, line: 729, column: 6)
!4098 = !DILocation(line: 729, column: 11, scope: !4097)
!4099 = !DILocation(line: 729, column: 18, scope: !4097)
!4100 = !DILocation(line: 729, column: 21, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4097, file: !449, discriminator: 1)
!4102 = !DILocation(line: 729, column: 27, scope: !4101)
!4103 = !DILocation(line: 729, column: 32, scope: !4101)
!4104 = !DILocation(line: 729, column: 6, scope: !4101)
!4105 = !DILocation(line: 729, column: 52, scope: !4106)
!4106 = !DILexicalBlockFile(scope: !4097, file: !449, discriminator: 2)
!4107 = !DILocation(line: 731, column: 13, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4080, file: !449, line: 731, column: 2)
!4109 = !DILocation(line: 731, column: 19, scope: !4108)
!4110 = !DILocation(line: 731, column: 11, scope: !4108)
!4111 = !DILocation(line: 731, column: 7, scope: !4108)
!4112 = !DILocation(line: 731, column: 26, scope: !4113)
!4113 = !DILexicalBlockFile(scope: !4114, file: !449, discriminator: 1)
!4114 = distinct !DILexicalBlock(scope: !4108, file: !449, line: 731, column: 2)
!4115 = !DILocation(line: 731, column: 30, scope: !4113)
!4116 = !DILocation(line: 731, column: 2, scope: !4113)
!4117 = !DILocation(line: 732, column: 10, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !449, line: 731, column: 55)
!4119 = !DILocation(line: 732, column: 15, scope: !4118)
!4120 = !DILocation(line: 732, column: 8, scope: !4118)
!4121 = !DILocation(line: 734, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !449, line: 734, column: 7)
!4123 = !DILocation(line: 734, column: 13, scope: !4122)
!4124 = !DILocation(line: 734, column: 17, scope: !4122)
!4125 = !DILocation(line: 734, column: 24, scope: !4122)
!4126 = !DILocation(line: 734, column: 27, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4122, file: !449, discriminator: 1)
!4128 = !DILocation(line: 734, column: 33, scope: !4127)
!4129 = !DILocation(line: 734, column: 39, scope: !4127)
!4130 = !DILocation(line: 734, column: 7, scope: !4127)
!4131 = !DILocation(line: 735, column: 4, scope: !4122)
!4132 = !DILocation(line: 737, column: 36, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4118, file: !449, line: 737, column: 7)
!4134 = !DILocation(line: 737, column: 43, scope: !4133)
!4135 = !DILocation(line: 737, column: 54, scope: !4133)
!4136 = !DILocation(line: 737, column: 60, scope: !4133)
!4137 = !DILocation(line: 737, column: 7, scope: !4133)
!4138 = !DILocation(line: 737, column: 7, scope: !4118)
!4139 = !DILocation(line: 740, column: 45, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !449, line: 738, column: 29)
!4141 = !DILocation(line: 740, column: 52, scope: !4140)
!4142 = !DILocation(line: 740, column: 63, scope: !4140)
!4143 = !DILocation(line: 740, column: 25, scope: !4140)
!4144 = !DILocation(line: 741, column: 11, scope: !4140)
!4145 = !DILocation(line: 741, column: 4, scope: !4140)
!4146 = !DILocation(line: 742, column: 11, scope: !4140)
!4147 = !DILocation(line: 742, column: 4, scope: !4140)
!4148 = !DILocation(line: 743, column: 3, scope: !4140)
!4149 = !DILocation(line: 745, column: 23, scope: !4118)
!4150 = !DILocation(line: 745, column: 30, scope: !4118)
!4151 = !DILocation(line: 745, column: 50, scope: !4118)
!4152 = !DILocation(line: 745, column: 56, scope: !4118)
!4153 = !DILocation(line: 745, column: 41, scope: !4118)
!4154 = !DILocation(line: 746, column: 18, scope: !4118)
!4155 = !DILocation(line: 746, column: 24, scope: !4118)
!4156 = !DILocation(line: 746, column: 9, scope: !4118)
!4157 = !DILocation(line: 745, column: 3, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4118, file: !449, discriminator: 1)
!4159 = !DILocation(line: 747, column: 2, scope: !4118)
!4160 = !DILocation(line: 731, column: 44, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4114, file: !449, discriminator: 2)
!4162 = !DILocation(line: 731, column: 49, scope: !4161)
!4163 = !DILocation(line: 731, column: 42, scope: !4161)
!4164 = !DILocation(line: 731, column: 2, scope: !4161)
!4165 = distinct !{!4165, !4166}
!4166 = !DILocation(line: 731, column: 2, scope: !4080)
!4167 = !DILocation(line: 748, column: 1, scope: !4080)
!4168 = distinct !DISubprogram(name: "theme_read_modules", scope: !449, file: !449, line: 992, type: !4169, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !364, !359, !4171}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64, align: 64)
!4172 = !DILocalVariable(name: "module", arg: 1, scope: !4168, file: !449, line: 992, type: !364)
!4173 = !DILocation(line: 992, column: 44, scope: !4168)
!4174 = !DILocalVariable(name: "value", arg: 2, scope: !4168, file: !449, line: 992, type: !359)
!4175 = !DILocation(line: 992, column: 58, scope: !4168)
!4176 = !DILocalVariable(name: "rec", arg: 3, scope: !4168, file: !449, line: 993, type: !4171)
!4177 = !DILocation(line: 993, column: 27, scope: !4168)
!4178 = !DILocation(line: 995, column: 20, scope: !4168)
!4179 = !DILocation(line: 995, column: 25, scope: !4168)
!4180 = !DILocation(line: 995, column: 32, scope: !4168)
!4181 = !DILocation(line: 995, column: 40, scope: !4168)
!4182 = !DILocation(line: 995, column: 45, scope: !4168)
!4183 = !DILocation(line: 995, column: 2, scope: !4168)
!4184 = !DILocation(line: 996, column: 1, scope: !4168)
!4185 = distinct !DISubprogram(name: "copy_abstract_hash", scope: !449, file: !449, line: 976, type: !4186, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !374, !374, !386}
!4188 = !DILocalVariable(name: "key", arg: 1, scope: !4185, file: !449, line: 976, type: !374)
!4189 = !DILocation(line: 976, column: 38, scope: !4185)
!4190 = !DILocalVariable(name: "value", arg: 2, scope: !4185, file: !449, line: 976, type: !374)
!4191 = !DILocation(line: 976, column: 49, scope: !4185)
!4192 = !DILocalVariable(name: "dest", arg: 3, scope: !4185, file: !449, line: 976, type: !386)
!4193 = !DILocation(line: 976, column: 68, scope: !4185)
!4194 = !DILocation(line: 978, column: 22, scope: !4185)
!4195 = !DILocation(line: 978, column: 37, scope: !4185)
!4196 = !DILocation(line: 978, column: 28, scope: !4185)
!4197 = !DILocation(line: 978, column: 52, scope: !4185)
!4198 = !DILocation(line: 978, column: 43, scope: !4199)
!4199 = !DILexicalBlockFile(scope: !4185, file: !449, discriminator: 1)
!4200 = !DILocation(line: 978, column: 2, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4185, file: !449, discriminator: 2)
!4202 = !DILocation(line: 979, column: 1, scope: !4185)
!4203 = distinct !DISubprogram(name: "get_sorted_modules", scope: !449, file: !449, line: 1082, type: !4204, isLocal: true, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!395}
!4206 = !DILocalVariable(name: "list", scope: !4203, file: !449, line: 1084, type: !395)
!4207 = !DILocation(line: 1084, column: 10, scope: !4203)
!4208 = !DILocation(line: 1086, column: 7, scope: !4203)
!4209 = !DILocation(line: 1087, column: 23, scope: !4203)
!4210 = !DILocation(line: 1087, column: 68, scope: !4203)
!4211 = !DILocation(line: 1087, column: 2, scope: !4203)
!4212 = !DILocation(line: 1088, column: 9, scope: !4203)
!4213 = !DILocation(line: 1088, column: 2, scope: !4203)
!4214 = distinct !DISubprogram(name: "theme_search", scope: !449, file: !449, line: 1091, type: !4215, isLocal: true, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!447, !395, !364}
!4217 = !DILocalVariable(name: "list", arg: 1, scope: !4214, file: !449, line: 1091, type: !395)
!4218 = !DILocation(line: 1091, column: 47, scope: !4214)
!4219 = !DILocalVariable(name: "module", arg: 2, scope: !4214, file: !449, line: 1091, type: !364)
!4220 = !DILocation(line: 1091, column: 65, scope: !4214)
!4221 = !DILocalVariable(name: "rec", scope: !4214, file: !449, line: 1093, type: !447)
!4222 = !DILocation(line: 1093, column: 20, scope: !4214)
!4223 = !DILocation(line: 1095, column: 2, scope: !4214)
!4224 = !DILocation(line: 1095, column: 9, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !4214, file: !449, discriminator: 1)
!4226 = !DILocation(line: 1095, column: 14, scope: !4225)
!4227 = !DILocation(line: 1095, column: 2, scope: !4225)
!4228 = !DILocation(line: 1096, column: 9, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4214, file: !449, line: 1095, column: 22)
!4230 = !DILocation(line: 1096, column: 15, scope: !4229)
!4231 = !DILocation(line: 1096, column: 7, scope: !4229)
!4232 = !DILocation(line: 1098, column: 26, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !449, line: 1098, column: 7)
!4234 = !DILocation(line: 1098, column: 31, scope: !4233)
!4235 = !DILocation(line: 1098, column: 43, scope: !4233)
!4236 = !DILocation(line: 1098, column: 7, scope: !4233)
!4237 = !DILocation(line: 1098, column: 51, scope: !4233)
!4238 = !DILocation(line: 1098, column: 7, scope: !4229)
!4239 = !DILocation(line: 1099, column: 11, scope: !4233)
!4240 = !DILocation(line: 1099, column: 4, scope: !4233)
!4241 = !DILocation(line: 1100, column: 10, scope: !4229)
!4242 = !DILocation(line: 1100, column: 16, scope: !4229)
!4243 = !DILocation(line: 1100, column: 8, scope: !4229)
!4244 = !DILocation(line: 1095, column: 2, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !4214, file: !449, discriminator: 2)
!4246 = distinct !{!4246, !4223}
!4247 = !DILocation(line: 1103, column: 2, scope: !4214)
!4248 = !DILocation(line: 1104, column: 1, scope: !4214)
!4249 = distinct !DISubprogram(name: "theme_show", scope: !449, file: !449, line: 1106, type: !4250, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !447, !364, !364, !372}
!4252 = !DILocalVariable(name: "rec", arg: 1, scope: !4249, file: !449, line: 1106, type: !447)
!4253 = !DILocation(line: 1106, column: 42, scope: !4249)
!4254 = !DILocalVariable(name: "key", arg: 2, scope: !4249, file: !449, line: 1106, type: !364)
!4255 = !DILocation(line: 1106, column: 59, scope: !4249)
!4256 = !DILocalVariable(name: "value", arg: 3, scope: !4249, file: !449, line: 1106, type: !364)
!4257 = !DILocation(line: 1106, column: 76, scope: !4249)
!4258 = !DILocalVariable(name: "reset", arg: 4, scope: !4249, file: !449, line: 1106, type: !372)
!4259 = !DILocation(line: 1106, column: 87, scope: !4249)
!4260 = !DILocalVariable(name: "theme", scope: !4249, file: !449, line: 1108, type: !439)
!4261 = !DILocation(line: 1108, column: 20, scope: !4249)
!4262 = !DILocalVariable(name: "formats", scope: !4249, file: !449, line: 1109, type: !1534)
!4263 = !DILocation(line: 1109, column: 14, scope: !4249)
!4264 = !DILocalVariable(name: "text", scope: !4249, file: !449, line: 1110, type: !364)
!4265 = !DILocation(line: 1110, column: 14, scope: !4249)
!4266 = !DILocalVariable(name: "last_title", scope: !4249, file: !449, line: 1110, type: !364)
!4267 = !DILocation(line: 1110, column: 21, scope: !4249)
!4268 = !DILocalVariable(name: "n", scope: !4249, file: !449, line: 1111, type: !372)
!4269 = !DILocation(line: 1111, column: 6, scope: !4249)
!4270 = !DILocalVariable(name: "first", scope: !4249, file: !449, line: 1111, type: !372)
!4271 = !DILocation(line: 1111, column: 9, scope: !4249)
!4272 = !DILocation(line: 1113, column: 32, scope: !4249)
!4273 = !DILocation(line: 1113, column: 49, scope: !4249)
!4274 = !DILocation(line: 1113, column: 54, scope: !4249)
!4275 = !DILocation(line: 1113, column: 12, scope: !4249)
!4276 = !DILocation(line: 1113, column: 10, scope: !4249)
!4277 = !DILocation(line: 1114, column: 30, scope: !4249)
!4278 = !DILocation(line: 1114, column: 45, scope: !4249)
!4279 = !DILocation(line: 1114, column: 54, scope: !4249)
!4280 = !DILocation(line: 1114, column: 59, scope: !4249)
!4281 = !DILocation(line: 1114, column: 10, scope: !4249)
!4282 = !DILocation(line: 1114, column: 8, scope: !4249)
!4283 = !DILocation(line: 1116, column: 13, scope: !4249)
!4284 = !DILocation(line: 1116, column: 26, scope: !4249)
!4285 = !DILocation(line: 1117, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4249, file: !449, line: 1117, column: 2)
!4287 = !DILocation(line: 1117, column: 7, scope: !4286)
!4288 = !DILocation(line: 1117, column: 22, scope: !4289)
!4289 = !DILexicalBlockFile(scope: !4290, file: !449, discriminator: 1)
!4290 = distinct !DILexicalBlock(scope: !4286, file: !449, line: 1117, column: 2)
!4291 = !DILocation(line: 1117, column: 14, scope: !4289)
!4292 = !DILocation(line: 1117, column: 25, scope: !4289)
!4293 = !DILocation(line: 1117, column: 29, scope: !4289)
!4294 = !DILocation(line: 1117, column: 2, scope: !4289)
!4295 = !DILocation(line: 1118, column: 10, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !449, line: 1117, column: 42)
!4297 = !DILocation(line: 1118, column: 16, scope: !4296)
!4298 = !DILocation(line: 1118, column: 23, scope: !4296)
!4299 = !DILocation(line: 1118, column: 41, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4296, file: !449, discriminator: 1)
!4301 = !DILocation(line: 1118, column: 26, scope: !4300)
!4302 = !DILocation(line: 1118, column: 33, scope: !4300)
!4303 = !DILocation(line: 1118, column: 44, scope: !4300)
!4304 = !DILocation(line: 1118, column: 10, scope: !4300)
!4305 = !DILocation(line: 1119, column: 19, scope: !4296)
!4306 = !DILocation(line: 1119, column: 4, scope: !4296)
!4307 = !DILocation(line: 1119, column: 11, scope: !4296)
!4308 = !DILocation(line: 1118, column: 10, scope: !4309)
!4309 = !DILexicalBlockFile(scope: !4296, file: !449, discriminator: 2)
!4310 = !DILocation(line: 1119, column: 32, scope: !4300)
!4311 = !DILocation(line: 1119, column: 24, scope: !4300)
!4312 = !DILocation(line: 1119, column: 35, scope: !4300)
!4313 = !DILocation(line: 1118, column: 10, scope: !4314)
!4314 = !DILexicalBlockFile(scope: !4296, file: !449, discriminator: 3)
!4315 = !DILocation(line: 1118, column: 10, scope: !4316)
!4316 = !DILexicalBlockFile(scope: !4296, file: !449, discriminator: 4)
!4317 = !DILocation(line: 1118, column: 8, scope: !4316)
!4318 = !DILocation(line: 1121, column: 15, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4296, file: !449, line: 1121, column: 7)
!4320 = !DILocation(line: 1121, column: 7, scope: !4319)
!4321 = !DILocation(line: 1121, column: 18, scope: !4319)
!4322 = !DILocation(line: 1121, column: 22, scope: !4319)
!4323 = !DILocation(line: 1121, column: 7, scope: !4296)
!4324 = !DILocation(line: 1122, column: 17, scope: !4319)
!4325 = !DILocation(line: 1122, column: 15, scope: !4319)
!4326 = !DILocation(line: 1122, column: 4, scope: !4319)
!4327 = !DILocation(line: 1123, column: 13, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4319, file: !449, line: 1123, column: 12)
!4329 = !DILocation(line: 1123, column: 19, scope: !4328)
!4330 = !DILocation(line: 1123, column: 26, scope: !4328)
!4331 = !DILocation(line: 1123, column: 29, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !4328, file: !449, discriminator: 1)
!4333 = !DILocation(line: 1123, column: 33, scope: !4332)
!4334 = !DILocation(line: 1123, column: 41, scope: !4332)
!4335 = !DILocation(line: 1123, column: 71, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4328, file: !449, discriminator: 2)
!4337 = !DILocation(line: 1123, column: 63, scope: !4336)
!4338 = !DILocation(line: 1123, column: 74, scope: !4336)
!4339 = !DILocation(line: 1123, column: 79, scope: !4336)
!4340 = !DILocation(line: 1123, column: 44, scope: !4336)
!4341 = !DILocation(line: 1123, column: 84, scope: !4336)
!4342 = !DILocation(line: 1123, column: 90, scope: !4336)
!4343 = !DILocation(line: 1124, column: 6, scope: !4328)
!4344 = !DILocation(line: 1124, column: 12, scope: !4328)
!4345 = !DILocation(line: 1124, column: 19, scope: !4328)
!4346 = !DILocation(line: 1124, column: 23, scope: !4332)
!4347 = !DILocation(line: 1124, column: 27, scope: !4332)
!4348 = !DILocation(line: 1124, column: 35, scope: !4332)
!4349 = !DILocation(line: 1124, column: 54, scope: !4336)
!4350 = !DILocation(line: 1124, column: 46, scope: !4336)
!4351 = !DILocation(line: 1124, column: 57, scope: !4336)
!4352 = !DILocation(line: 1124, column: 62, scope: !4336)
!4353 = !DILocation(line: 1124, column: 38, scope: !4336)
!4354 = !DILocation(line: 1124, column: 67, scope: !4336)
!4355 = !DILocation(line: 1123, column: 12, scope: !4356)
!4356 = !DILexicalBlockFile(scope: !4319, file: !449, discriminator: 3)
!4357 = !DILocation(line: 1125, column: 8, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !449, line: 1125, column: 8)
!4359 = distinct !DILexicalBlock(scope: !4328, file: !449, line: 1124, column: 78)
!4360 = !DILocation(line: 1125, column: 8, scope: !4359)
!4361 = !DILocation(line: 1126, column: 45, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4358, file: !449, line: 1125, column: 15)
!4363 = !DILocation(line: 1126, column: 50, scope: !4362)
!4364 = !DILocation(line: 1126, column: 62, scope: !4362)
!4365 = !DILocation(line: 1126, column: 73, scope: !4362)
!4366 = !DILocation(line: 1126, column: 5, scope: !4362)
!4367 = !DILocation(line: 1127, column: 11, scope: !4362)
!4368 = !DILocation(line: 1128, column: 4, scope: !4362)
!4369 = !DILocation(line: 1129, column: 8, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4359, file: !449, line: 1129, column: 8)
!4371 = !DILocation(line: 1129, column: 19, scope: !4370)
!4372 = !DILocation(line: 1129, column: 8, scope: !4359)
!4373 = !DILocation(line: 1130, column: 48, scope: !4370)
!4374 = !DILocation(line: 1130, column: 5, scope: !4370)
!4375 = !DILocation(line: 1131, column: 8, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4359, file: !449, line: 1131, column: 8)
!4377 = !DILocation(line: 1131, column: 14, scope: !4376)
!4378 = !DILocation(line: 1131, column: 17, scope: !4379)
!4379 = !DILexicalBlockFile(scope: !4376, file: !449, discriminator: 1)
!4380 = !DILocation(line: 1131, column: 23, scope: !4379)
!4381 = !DILocation(line: 1131, column: 8, scope: !4379)
!4382 = !DILocation(line: 1132, column: 33, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4376, file: !449, line: 1131, column: 31)
!4384 = !DILocation(line: 1132, column: 48, scope: !4383)
!4385 = !DILocation(line: 1132, column: 53, scope: !4383)
!4386 = !DILocation(line: 1132, column: 13, scope: !4383)
!4387 = !DILocation(line: 1132, column: 11, scope: !4383)
!4388 = !DILocation(line: 1133, column: 55, scope: !4383)
!4389 = !DILocation(line: 1133, column: 40, scope: !4383)
!4390 = !DILocation(line: 1133, column: 47, scope: !4383)
!4391 = !DILocation(line: 1133, column: 33, scope: !4383)
!4392 = !DILocation(line: 1134, column: 64, scope: !4383)
!4393 = !DILocation(line: 1134, column: 40, scope: !4383)
!4394 = !DILocation(line: 1134, column: 47, scope: !4383)
!4395 = !DILocation(line: 1134, column: 33, scope: !4383)
!4396 = !DILocation(line: 1136, column: 12, scope: !4383)
!4397 = !DILocation(line: 1136, column: 28, scope: !4398)
!4398 = !DILexicalBlockFile(scope: !4383, file: !449, discriminator: 1)
!4399 = !DILocation(line: 1136, column: 20, scope: !4398)
!4400 = !DILocation(line: 1136, column: 31, scope: !4398)
!4401 = !DILocation(line: 1136, column: 12, scope: !4398)
!4402 = !DILocation(line: 1136, column: 37, scope: !4403)
!4403 = !DILexicalBlockFile(scope: !4383, file: !449, discriminator: 2)
!4404 = !DILocation(line: 1136, column: 12, scope: !4403)
!4405 = !DILocation(line: 1136, column: 12, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4383, file: !449, discriminator: 3)
!4407 = !DILocation(line: 1136, column: 10, scope: !4406)
!4408 = !DILocation(line: 1137, column: 25, scope: !4383)
!4409 = !DILocation(line: 1137, column: 25, scope: !4398)
!4410 = !DILocation(line: 1137, column: 48, scope: !4403)
!4411 = !DILocation(line: 1137, column: 39, scope: !4403)
!4412 = !DILocation(line: 1137, column: 25, scope: !4403)
!4413 = !DILocation(line: 1137, column: 25, scope: !4406)
!4414 = !DILocation(line: 1137, column: 20, scope: !4406)
!4415 = !DILocation(line: 1137, column: 5, scope: !4406)
!4416 = !DILocation(line: 1137, column: 12, scope: !4406)
!4417 = !DILocation(line: 1137, column: 23, scope: !4406)
!4418 = !DILocation(line: 1138, column: 54, scope: !4383)
!4419 = !DILocation(line: 1138, column: 69, scope: !4383)
!4420 = !DILocation(line: 1138, column: 34, scope: !4383)
!4421 = !DILocation(line: 1138, column: 29, scope: !4383)
!4422 = !DILocation(line: 1138, column: 5, scope: !4383)
!4423 = !DILocation(line: 1138, column: 12, scope: !4383)
!4424 = !DILocation(line: 1138, column: 32, scope: !4383)
!4425 = !DILocation(line: 1139, column: 4, scope: !4383)
!4426 = !DILocation(line: 1140, column: 51, scope: !4359)
!4427 = !DILocation(line: 1140, column: 43, scope: !4359)
!4428 = !DILocation(line: 1140, column: 54, scope: !4359)
!4429 = !DILocation(line: 1140, column: 59, scope: !4359)
!4430 = !DILocation(line: 1140, column: 4, scope: !4359)
!4431 = !DILocation(line: 1141, column: 15, scope: !4359)
!4432 = !DILocation(line: 1142, column: 3, scope: !4359)
!4433 = !DILocation(line: 1143, column: 2, scope: !4296)
!4434 = !DILocation(line: 1117, column: 38, scope: !4435)
!4435 = !DILexicalBlockFile(scope: !4290, file: !449, discriminator: 2)
!4436 = !DILocation(line: 1117, column: 2, scope: !4435)
!4437 = distinct !{!4437, !4438}
!4438 = !DILocation(line: 1117, column: 2, scope: !4249)
!4439 = !DILocation(line: 1144, column: 1, scope: !4249)
!4440 = distinct !DISubprogram(name: "theme_get_modules", scope: !449, file: !449, line: 1070, type: !4441, isLocal: true, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !374, !1534, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!4444 = !DILocalVariable(name: "module", arg: 1, scope: !4440, file: !449, line: 1070, type: !374)
!4445 = !DILocation(line: 1070, column: 37, scope: !4440)
!4446 = !DILocalVariable(name: "formats", arg: 2, scope: !4440, file: !449, line: 1070, type: !1534)
!4447 = !DILocation(line: 1070, column: 57, scope: !4440)
!4448 = !DILocalVariable(name: "list", arg: 3, scope: !4440, file: !449, line: 1070, type: !4443)
!4449 = !DILocation(line: 1070, column: 75, scope: !4440)
!4450 = !DILocalVariable(name: "rec", scope: !4440, file: !449, line: 1072, type: !447)
!4451 = !DILocation(line: 1072, column: 20, scope: !4440)
!4452 = !DILocation(line: 1074, column: 30, scope: !4440)
!4453 = !DILocation(line: 1074, column: 9, scope: !4440)
!4454 = !DILocation(line: 1074, column: 6, scope: !4440)
!4455 = !DILocation(line: 1075, column: 14, scope: !4440)
!4456 = !DILocation(line: 1075, column: 2, scope: !4440)
!4457 = !DILocation(line: 1075, column: 7, scope: !4440)
!4458 = !DILocation(line: 1075, column: 12, scope: !4440)
!4459 = !DILocation(line: 1076, column: 28, scope: !4440)
!4460 = !DILocation(line: 1076, column: 20, scope: !4440)
!4461 = !DILocation(line: 1076, column: 2, scope: !4440)
!4462 = !DILocation(line: 1076, column: 7, scope: !4440)
!4463 = !DILocation(line: 1076, column: 18, scope: !4440)
!4464 = !DILocation(line: 1077, column: 6, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4440, file: !449, line: 1077, column: 6)
!4466 = !DILocation(line: 1077, column: 11, scope: !4465)
!4467 = !DILocation(line: 1077, column: 22, scope: !4465)
!4468 = !DILocation(line: 1077, column: 6, scope: !4440)
!4469 = !DILocation(line: 1078, column: 3, scope: !4465)
!4470 = !DILocation(line: 1078, column: 8, scope: !4465)
!4471 = !DILocation(line: 1078, column: 18, scope: !4465)
!4472 = !DILocation(line: 1078, column: 45, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4465, file: !449, discriminator: 1)
!4474 = !DILocation(line: 1078, column: 27, scope: !4473)
!4475 = !DILocation(line: 1078, column: 32, scope: !4473)
!4476 = !DILocation(line: 1078, column: 43, scope: !4473)
!4477 = !DILocation(line: 1079, column: 33, scope: !4440)
!4478 = !DILocation(line: 1079, column: 32, scope: !4440)
!4479 = !DILocation(line: 1079, column: 39, scope: !4440)
!4480 = !DILocation(line: 1079, column: 10, scope: !4440)
!4481 = !DILocation(line: 1079, column: 3, scope: !4440)
!4482 = !DILocation(line: 1079, column: 8, scope: !4440)
!4483 = !DILocation(line: 1080, column: 1, scope: !4440)
!4484 = distinct !DISubprogram(name: "theme_search_equal", scope: !449, file: !449, line: 1065, type: !4485, isLocal: true, isDefinition: true, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!372, !447, !447}
!4487 = !DILocalVariable(name: "r1", arg: 1, scope: !4484, file: !449, line: 1065, type: !447)
!4488 = !DILocation(line: 1065, column: 49, scope: !4484)
!4489 = !DILocalVariable(name: "r2", arg: 2, scope: !4484, file: !449, line: 1065, type: !447)
!4490 = !DILocation(line: 1065, column: 71, scope: !4484)
!4491 = !DILocation(line: 1067, column: 28, scope: !4484)
!4492 = !DILocation(line: 1067, column: 32, scope: !4484)
!4493 = !DILocation(line: 1067, column: 44, scope: !4484)
!4494 = !DILocation(line: 1067, column: 48, scope: !4484)
!4495 = !DILocation(line: 1067, column: 9, scope: !4484)
!4496 = !DILocation(line: 1067, column: 2, scope: !4484)
!4497 = distinct !DISubprogram(name: "theme_save", scope: !449, file: !449, line: 1230, type: !4498, isLocal: true, isDefinition: true, scopeLine: 1231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !366, !372}
!4500 = !DILocalVariable(name: "theme", arg: 1, scope: !4497, file: !449, line: 1230, type: !366)
!4501 = !DILocation(line: 1230, column: 35, scope: !4497)
!4502 = !DILocalVariable(name: "save_all", arg: 2, scope: !4497, file: !449, line: 1230, type: !372)
!4503 = !DILocation(line: 1230, column: 46, scope: !4497)
!4504 = !DILocalVariable(name: "config", scope: !4497, file: !449, line: 1232, type: !1864)
!4505 = !DILocation(line: 1232, column: 14, scope: !4497)
!4506 = !DILocalVariable(name: "data", scope: !4497, file: !449, line: 1233, type: !4507)
!4507 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_SAVE_REC", file: !449, line: 1195, baseType: !4508)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 1192, size: 128, align: 64, elements: !4509)
!4509 = !{!4510, !4511}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4508, file: !449, line: 1193, baseType: !1864, size: 64, align: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "save_all", scope: !4508, file: !449, line: 1194, baseType: !372, size: 32, align: 32, offset: 64)
!4512 = !DILocation(line: 1233, column: 17, scope: !4497)
!4513 = !DILocalVariable(name: "path", scope: !4497, file: !449, line: 1234, type: !374)
!4514 = !DILocation(line: 1234, column: 8, scope: !4497)
!4515 = !DILocalVariable(name: "basename", scope: !4497, file: !449, line: 1235, type: !374)
!4516 = !DILocation(line: 1235, column: 8, scope: !4497)
!4517 = !DILocalVariable(name: "ok", scope: !4497, file: !449, line: 1236, type: !372)
!4518 = !DILocation(line: 1236, column: 6, scope: !4497)
!4519 = !DILocation(line: 1238, column: 23, scope: !4497)
!4520 = !DILocation(line: 1238, column: 30, scope: !4497)
!4521 = !DILocation(line: 1238, column: 11, scope: !4497)
!4522 = !DILocation(line: 1238, column: 9, scope: !4497)
!4523 = !DILocation(line: 1239, column: 13, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4497, file: !449, line: 1239, column: 13)
!4525 = !DILocation(line: 1239, column: 20, scope: !4524)
!4526 = !DILocation(line: 1239, column: 13, scope: !4497)
!4527 = !DILocation(line: 1240, column: 30, scope: !4524)
!4528 = !DILocation(line: 1240, column: 17, scope: !4524)
!4529 = !DILocation(line: 1242, column: 40, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !449, line: 1242, column: 21)
!4531 = distinct !DILexicalBlock(scope: !4524, file: !449, line: 1241, column: 14)
!4532 = !DILocation(line: 1242, column: 47, scope: !4530)
!4533 = !DILocation(line: 1242, column: 21, scope: !4530)
!4534 = !DILocation(line: 1242, column: 64, scope: !4530)
!4535 = !DILocation(line: 1242, column: 21, scope: !4531)
!4536 = !DILocation(line: 1243, column: 34, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4530, file: !449, line: 1242, column: 70)
!4538 = !DILocation(line: 1243, column: 32, scope: !4537)
!4539 = !DILocation(line: 1244, column: 43, scope: !4537)
!4540 = !DILocation(line: 1244, column: 51, scope: !4537)
!4541 = !DILocation(line: 1244, column: 25, scope: !4537)
!4542 = !DILocation(line: 1245, column: 49, scope: !4537)
!4543 = !DILocation(line: 1245, column: 57, scope: !4537)
!4544 = !DILocation(line: 1245, column: 64, scope: !4537)
!4545 = !DILocation(line: 1245, column: 25, scope: !4537)
!4546 = !DILocation(line: 1246, column: 17, scope: !4537)
!4547 = !DILocation(line: 1247, column: 46, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4530, file: !449, line: 1246, column: 24)
!4549 = !DILocation(line: 1247, column: 53, scope: !4548)
!4550 = !DILocation(line: 1247, column: 34, scope: !4548)
!4551 = !DILocation(line: 1247, column: 32, scope: !4548)
!4552 = !DILocation(line: 1248, column: 29, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4548, file: !449, line: 1248, column: 29)
!4554 = !DILocation(line: 1248, column: 36, scope: !4553)
!4555 = !DILocation(line: 1248, column: 29, scope: !4548)
!4556 = !DILocation(line: 1249, column: 33, scope: !4553)
!4557 = !DILocation(line: 1250, column: 38, scope: !4548)
!4558 = !DILocation(line: 1250, column: 25, scope: !4548)
!4559 = !DILocation(line: 1254, column: 16, scope: !4497)
!4560 = !DILocation(line: 1254, column: 7, scope: !4497)
!4561 = !DILocation(line: 1254, column: 14, scope: !4497)
!4562 = !DILocation(line: 1255, column: 25, scope: !4497)
!4563 = !DILocation(line: 1255, column: 14, scope: !4497)
!4564 = !DILocation(line: 1255, column: 23, scope: !4497)
!4565 = !DILocation(line: 1256, column: 23, scope: !4497)
!4566 = !DILocation(line: 1256, column: 30, scope: !4497)
!4567 = !DILocation(line: 1256, column: 61, scope: !4497)
!4568 = !DILocation(line: 1256, column: 2, scope: !4497)
!4569 = !DILocation(line: 1258, column: 33, scope: !4497)
!4570 = !DILocation(line: 1258, column: 40, scope: !4497)
!4571 = !DILocation(line: 1258, column: 13, scope: !4497)
!4572 = !DILocation(line: 1258, column: 11, scope: !4497)
!4573 = !DILocation(line: 1260, column: 34, scope: !4497)
!4574 = !DILocation(line: 1260, column: 51, scope: !4497)
!4575 = !DILocation(line: 1260, column: 9, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4497, file: !449, discriminator: 1)
!4577 = !DILocation(line: 1260, column: 7, scope: !4497)
!4578 = !DILocation(line: 1261, column: 20, scope: !4497)
!4579 = !DILocation(line: 1261, column: 28, scope: !4497)
!4580 = !DILocation(line: 1261, column: 7, scope: !4497)
!4581 = !DILocation(line: 1261, column: 40, scope: !4497)
!4582 = !DILocation(line: 1261, column: 5, scope: !4497)
!4583 = !DILocation(line: 1262, column: 9, scope: !4497)
!4584 = !DILocation(line: 1262, column: 2, scope: !4497)
!4585 = !DILocation(line: 1264, column: 26, scope: !4497)
!4586 = !DILocation(line: 1264, column: 72, scope: !4497)
!4587 = !DILocation(line: 1264, column: 79, scope: !4497)
!4588 = !DILocation(line: 1264, column: 88, scope: !4497)
!4589 = !DILocation(line: 1264, column: 2, scope: !4497)
!4590 = !DILocation(line: 1268, column: 9, scope: !4497)
!4591 = !DILocation(line: 1268, column: 2, scope: !4497)
!4592 = !DILocation(line: 1269, column: 15, scope: !4497)
!4593 = !DILocation(line: 1269, column: 2, scope: !4497)
!4594 = !DILocation(line: 1270, column: 1, scope: !4497)
!4595 = !DILocation(line: 1270, column: 1, scope: !4576)
!4596 = distinct !DISubprogram(name: "module_save", scope: !449, file: !449, line: 1197, type: !4597, isLocal: true, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{null, !364, !439, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64, align: 64)
!4600 = !DILocalVariable(name: "module", arg: 1, scope: !4596, file: !449, line: 1197, type: !364)
!4601 = !DILocation(line: 1197, column: 37, scope: !4596)
!4602 = !DILocalVariable(name: "rec", arg: 2, scope: !4596, file: !449, line: 1197, type: !439)
!4603 = !DILocation(line: 1197, column: 63, scope: !4596)
!4604 = !DILocalVariable(name: "data", arg: 3, scope: !4596, file: !449, line: 1198, type: !4599)
!4605 = !DILocation(line: 1198, column: 41, scope: !4596)
!4606 = !DILocalVariable(name: "fnode", scope: !4596, file: !449, line: 1200, type: !1873)
!4607 = !DILocation(line: 1200, column: 15, scope: !4596)
!4608 = !DILocalVariable(name: "node", scope: !4596, file: !449, line: 1200, type: !1873)
!4609 = !DILocation(line: 1200, column: 23, scope: !4596)
!4610 = !DILocalVariable(name: "formats", scope: !4596, file: !449, line: 1201, type: !1534)
!4611 = !DILocation(line: 1201, column: 14, scope: !4596)
!4612 = !DILocalVariable(name: "n", scope: !4596, file: !449, line: 1202, type: !372)
!4613 = !DILocation(line: 1202, column: 6, scope: !4596)
!4614 = !DILocation(line: 1204, column: 39, scope: !4596)
!4615 = !DILocation(line: 1204, column: 56, scope: !4596)
!4616 = !DILocation(line: 1204, column: 61, scope: !4596)
!4617 = !DILocation(line: 1204, column: 19, scope: !4596)
!4618 = !DILocation(line: 1204, column: 17, scope: !4596)
!4619 = !DILocation(line: 1205, column: 6, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4596, file: !449, line: 1205, column: 6)
!4621 = !DILocation(line: 1205, column: 14, scope: !4620)
!4622 = !DILocation(line: 1205, column: 6, scope: !4596)
!4623 = !DILocation(line: 1205, column: 22, scope: !4624)
!4624 = !DILexicalBlockFile(scope: !4620, file: !449, discriminator: 1)
!4625 = !DILocation(line: 1207, column: 31, scope: !4596)
!4626 = !DILocation(line: 1207, column: 37, scope: !4596)
!4627 = !DILocation(line: 1207, column: 10, scope: !4596)
!4628 = !DILocation(line: 1207, column: 8, scope: !4596)
!4629 = !DILocation(line: 1209, column: 29, scope: !4596)
!4630 = !DILocation(line: 1209, column: 35, scope: !4596)
!4631 = !DILocation(line: 1209, column: 43, scope: !4596)
!4632 = !DILocation(line: 1209, column: 50, scope: !4596)
!4633 = !DILocation(line: 1209, column: 55, scope: !4596)
!4634 = !DILocation(line: 1209, column: 9, scope: !4596)
!4635 = !DILocation(line: 1209, column: 7, scope: !4596)
!4636 = !DILocation(line: 1210, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4596, file: !449, line: 1210, column: 2)
!4638 = !DILocation(line: 1210, column: 7, scope: !4637)
!4639 = !DILocation(line: 1210, column: 22, scope: !4640)
!4640 = !DILexicalBlockFile(scope: !4641, file: !449, discriminator: 1)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !449, line: 1210, column: 2)
!4642 = !DILocation(line: 1210, column: 14, scope: !4640)
!4643 = !DILocation(line: 1210, column: 25, scope: !4640)
!4644 = !DILocation(line: 1210, column: 29, scope: !4640)
!4645 = !DILocation(line: 1210, column: 2, scope: !4640)
!4646 = !DILocation(line: 1211, column: 34, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4648, file: !449, line: 1211, column: 21)
!4648 = distinct !DILexicalBlock(scope: !4641, file: !449, line: 1210, column: 42)
!4649 = !DILocation(line: 1211, column: 21, scope: !4647)
!4650 = !DILocation(line: 1211, column: 26, scope: !4647)
!4651 = !DILocation(line: 1211, column: 37, scope: !4647)
!4652 = !DILocation(line: 1211, column: 21, scope: !4648)
!4653 = !DILocation(line: 1212, column: 45, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !449, line: 1211, column: 45)
!4655 = !DILocation(line: 1212, column: 51, scope: !4654)
!4656 = !DILocation(line: 1212, column: 59, scope: !4654)
!4657 = !DILocation(line: 1212, column: 73, scope: !4654)
!4658 = !DILocation(line: 1212, column: 65, scope: !4654)
!4659 = !DILocation(line: 1212, column: 76, scope: !4654)
!4660 = !DILocation(line: 1213, column: 58, scope: !4654)
!4661 = !DILocation(line: 1213, column: 45, scope: !4654)
!4662 = !DILocation(line: 1213, column: 50, scope: !4654)
!4663 = !DILocation(line: 1212, column: 25, scope: !4654)
!4664 = !DILocation(line: 1214, column: 3, scope: !4654)
!4665 = !DILocation(line: 1214, column: 14, scope: !4666)
!4666 = !DILexicalBlockFile(scope: !4667, file: !449, discriminator: 1)
!4667 = distinct !DILexicalBlock(scope: !4647, file: !449, line: 1214, column: 14)
!4668 = !DILocation(line: 1214, column: 20, scope: !4666)
!4669 = !DILocation(line: 1214, column: 29, scope: !4666)
!4670 = !DILocation(line: 1214, column: 40, scope: !4671)
!4671 = !DILexicalBlockFile(scope: !4667, file: !449, discriminator: 2)
!4672 = !DILocation(line: 1214, column: 32, scope: !4671)
!4673 = !DILocation(line: 1214, column: 43, scope: !4671)
!4674 = !DILocation(line: 1214, column: 47, scope: !4671)
!4675 = !DILocation(line: 1214, column: 14, scope: !4671)
!4676 = !DILocation(line: 1215, column: 45, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4667, file: !449, line: 1214, column: 55)
!4678 = !DILocation(line: 1215, column: 51, scope: !4677)
!4679 = !DILocation(line: 1215, column: 59, scope: !4677)
!4680 = !DILocation(line: 1215, column: 73, scope: !4677)
!4681 = !DILocation(line: 1215, column: 65, scope: !4677)
!4682 = !DILocation(line: 1215, column: 76, scope: !4677)
!4683 = !DILocation(line: 1216, column: 53, scope: !4677)
!4684 = !DILocation(line: 1216, column: 45, scope: !4677)
!4685 = !DILocation(line: 1216, column: 56, scope: !4677)
!4686 = !DILocation(line: 1215, column: 25, scope: !4677)
!4687 = !DILocation(line: 1217, column: 3, scope: !4677)
!4688 = !DILocation(line: 1218, column: 9, scope: !4648)
!4689 = !DILocation(line: 1210, column: 38, scope: !4690)
!4690 = !DILexicalBlockFile(scope: !4641, file: !449, discriminator: 2)
!4691 = !DILocation(line: 1210, column: 2, scope: !4690)
!4692 = distinct !{!4692, !4693}
!4693 = !DILocation(line: 1210, column: 2, scope: !4596)
!4694 = !DILocation(line: 1220, column: 13, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4596, file: !449, line: 1220, column: 13)
!4696 = !DILocation(line: 1220, column: 19, scope: !4695)
!4697 = !DILocation(line: 1220, column: 25, scope: !4695)
!4698 = !DILocation(line: 1220, column: 13, scope: !4596)
!4699 = !DILocation(line: 1222, column: 36, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4695, file: !449, line: 1220, column: 33)
!4701 = !DILocation(line: 1222, column: 42, scope: !4700)
!4702 = !DILocation(line: 1222, column: 50, scope: !4700)
!4703 = !DILocation(line: 1222, column: 57, scope: !4700)
!4704 = !DILocation(line: 1222, column: 17, scope: !4700)
!4705 = !DILocation(line: 1223, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4700, file: !449, line: 1223, column: 7)
!4707 = !DILocation(line: 1223, column: 14, scope: !4706)
!4708 = !DILocation(line: 1223, column: 20, scope: !4706)
!4709 = !DILocation(line: 1223, column: 7, scope: !4700)
!4710 = !DILocation(line: 1224, column: 23, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4706, file: !449, line: 1223, column: 28)
!4712 = !DILocation(line: 1224, column: 29, scope: !4711)
!4713 = !DILocation(line: 1225, column: 9, scope: !4711)
!4714 = !DILocation(line: 1225, column: 15, scope: !4711)
!4715 = !DILocation(line: 1225, column: 23, scope: !4711)
!4716 = !DILocation(line: 1225, column: 33, scope: !4711)
!4717 = !DILocation(line: 1224, column: 4, scope: !4711)
!4718 = !DILocation(line: 1226, column: 3, scope: !4711)
!4719 = !DILocation(line: 1227, column: 9, scope: !4700)
!4720 = !DILocation(line: 1228, column: 1, scope: !4596)
!4721 = distinct !DISubprogram(name: "completion_get_formats", scope: !449, file: !449, line: 1311, type: !4722, isLocal: true, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!2290, !364, !364}
!4724 = !DILocalVariable(name: "module", arg: 1, scope: !4721, file: !449, line: 1311, type: !364)
!4725 = !DILocation(line: 1311, column: 50, scope: !4721)
!4726 = !DILocalVariable(name: "key", arg: 2, scope: !4721, file: !449, line: 1311, type: !364)
!4727 = !DILocation(line: 1311, column: 70, scope: !4721)
!4728 = !DILocalVariable(name: "modules", scope: !4721, file: !449, line: 1313, type: !395)
!4729 = !DILocation(line: 1313, column: 10, scope: !4721)
!4730 = !DILocalVariable(name: "tmp", scope: !4721, file: !449, line: 1313, type: !395)
!4731 = !DILocation(line: 1313, column: 20, scope: !4721)
!4732 = !DILocalVariable(name: "list", scope: !4721, file: !449, line: 1314, type: !2290)
!4733 = !DILocation(line: 1314, column: 9, scope: !4721)
!4734 = !DILocation(line: 1316, column: 2, scope: !4721)
!4735 = distinct !{!4735, !4734}
!4736 = !DILocation(line: 1316, column: 10, scope: !4737)
!4737 = !DILexicalBlockFile(scope: !4738, file: !449, discriminator: 1)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !449, line: 1316, column: 10)
!4739 = distinct !DILexicalBlock(scope: !4721, file: !449, line: 1316, column: 4)
!4740 = !DILocation(line: 1316, column: 14, scope: !4737)
!4741 = !DILocation(line: 1316, column: 5, scope: !4742)
!4742 = !DILexicalBlockFile(scope: !4743, file: !449, discriminator: 2)
!4743 = distinct !DILexicalBlock(scope: !4738, file: !449, line: 1316, column: 3)
!4744 = !DILocation(line: 1316, column: 14, scope: !4745)
!4745 = !DILexicalBlockFile(scope: !4746, file: !449, discriminator: 3)
!4746 = distinct !DILexicalBlock(scope: !4738, file: !449, line: 1316, column: 12)
!4747 = !DILocation(line: 1316, column: 98, scope: !4745)
!4748 = !DILocation(line: 1316, column: 7, scope: !4749)
!4749 = !DILexicalBlockFile(scope: !4739, file: !449, discriminator: 4)
!4750 = !DILocation(line: 1318, column: 7, scope: !4721)
!4751 = !DILocation(line: 1320, column: 12, scope: !4721)
!4752 = !DILocation(line: 1320, column: 10, scope: !4721)
!4753 = !DILocation(line: 1321, column: 7, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4721, file: !449, line: 1321, column: 6)
!4755 = !DILocation(line: 1321, column: 6, scope: !4754)
!4756 = !DILocation(line: 1321, column: 14, scope: !4754)
!4757 = !DILocation(line: 1321, column: 22, scope: !4754)
!4758 = !DILocation(line: 1321, column: 38, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !4754, file: !449, discriminator: 1)
!4760 = !DILocation(line: 1321, column: 47, scope: !4759)
!4761 = !DILocation(line: 1321, column: 25, scope: !4759)
!4762 = !DILocation(line: 1321, column: 55, scope: !4759)
!4763 = !DILocation(line: 1321, column: 6, scope: !4759)
!4764 = !DILocation(line: 1322, column: 14, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4766, file: !449, line: 1322, column: 3)
!4766 = distinct !DILexicalBlock(scope: !4754, file: !449, line: 1321, column: 63)
!4767 = !DILocation(line: 1322, column: 12, scope: !4765)
!4768 = !DILocation(line: 1322, column: 8, scope: !4765)
!4769 = !DILocation(line: 1322, column: 23, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4771, file: !449, discriminator: 1)
!4771 = distinct !DILexicalBlock(scope: !4765, file: !449, line: 1322, column: 3)
!4772 = !DILocation(line: 1322, column: 27, scope: !4770)
!4773 = !DILocation(line: 1322, column: 3, scope: !4770)
!4774 = !DILocalVariable(name: "rec", scope: !4775, file: !449, line: 1323, type: !447)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !449, line: 1322, column: 52)
!4776 = !DILocation(line: 1323, column: 22, scope: !4775)
!4777 = !DILocation(line: 1323, column: 28, scope: !4775)
!4778 = !DILocation(line: 1323, column: 33, scope: !4775)
!4779 = !DILocation(line: 1325, column: 9, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4775, file: !449, line: 1325, column: 8)
!4781 = !DILocation(line: 1325, column: 8, scope: !4780)
!4782 = !DILocation(line: 1325, column: 16, scope: !4780)
!4783 = !DILocation(line: 1325, column: 24, scope: !4780)
!4784 = !DILocation(line: 1325, column: 46, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4780, file: !449, discriminator: 1)
!4786 = !DILocation(line: 1325, column: 51, scope: !4785)
!4787 = !DILocation(line: 1325, column: 63, scope: !4785)
!4788 = !DILocation(line: 1325, column: 27, scope: !4785)
!4789 = !DILocation(line: 1325, column: 71, scope: !4785)
!4790 = !DILocation(line: 1325, column: 8, scope: !4785)
!4791 = !DILocation(line: 1326, column: 26, scope: !4780)
!4792 = !DILocation(line: 1326, column: 31, scope: !4780)
!4793 = !DILocation(line: 1326, column: 5, scope: !4780)
!4794 = !DILocation(line: 1327, column: 3, scope: !4775)
!4795 = !DILocation(line: 1322, column: 41, scope: !4796)
!4796 = !DILexicalBlockFile(scope: !4771, file: !449, discriminator: 2)
!4797 = !DILocation(line: 1322, column: 46, scope: !4796)
!4798 = !DILocation(line: 1322, column: 39, scope: !4796)
!4799 = !DILocation(line: 1322, column: 3, scope: !4796)
!4800 = distinct !{!4800, !4801}
!4801 = !DILocation(line: 1322, column: 3, scope: !4766)
!4802 = !DILocation(line: 1328, column: 2, scope: !4766)
!4803 = !DILocation(line: 1329, column: 18, scope: !4721)
!4804 = !DILocation(line: 1329, column: 2, scope: !4721)
!4805 = !DILocation(line: 1330, column: 15, scope: !4721)
!4806 = !DILocation(line: 1330, column: 2, scope: !4721)
!4807 = !DILocation(line: 1332, column: 9, scope: !4721)
!4808 = !DILocation(line: 1332, column: 2, scope: !4721)
!4809 = !DILocation(line: 1333, column: 1, scope: !4721)
!4810 = distinct !DISubprogram(name: "complete_format_list", scope: !449, file: !449, line: 1295, type: !4811, isLocal: true, isDefinition: true, scopeLine: 1296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !469)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !447, !364, !2667}
!4813 = !DILocalVariable(name: "rec", arg: 1, scope: !4810, file: !449, line: 1295, type: !447)
!4814 = !DILocation(line: 1295, column: 52, scope: !4810)
!4815 = !DILocalVariable(name: "key", arg: 2, scope: !4810, file: !449, line: 1295, type: !364)
!4816 = !DILocation(line: 1295, column: 69, scope: !4810)
!4817 = !DILocalVariable(name: "list", arg: 3, scope: !4810, file: !449, line: 1295, type: !2667)
!4818 = !DILocation(line: 1295, column: 82, scope: !4810)
!4819 = !DILocalVariable(name: "formats", scope: !4810, file: !449, line: 1297, type: !1534)
!4820 = !DILocation(line: 1297, column: 14, scope: !4810)
!4821 = !DILocalVariable(name: "n", scope: !4810, file: !449, line: 1298, type: !372)
!4822 = !DILocation(line: 1298, column: 6, scope: !4810)
!4823 = !DILocalVariable(name: "len", scope: !4810, file: !449, line: 1298, type: !372)
!4824 = !DILocation(line: 1298, column: 9, scope: !4810)
!4825 = !DILocation(line: 1300, column: 32, scope: !4810)
!4826 = !DILocation(line: 1300, column: 49, scope: !4810)
!4827 = !DILocation(line: 1300, column: 54, scope: !4810)
!4828 = !DILocation(line: 1300, column: 12, scope: !4810)
!4829 = !DILocation(line: 1300, column: 10, scope: !4810)
!4830 = !DILocation(line: 1302, column: 15, scope: !4810)
!4831 = !DILocation(line: 1302, column: 8, scope: !4810)
!4832 = !DILocation(line: 1302, column: 6, scope: !4810)
!4833 = !DILocation(line: 1303, column: 9, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4810, file: !449, line: 1303, column: 2)
!4835 = !DILocation(line: 1303, column: 7, scope: !4834)
!4836 = !DILocation(line: 1303, column: 22, scope: !4837)
!4837 = !DILexicalBlockFile(scope: !4838, file: !449, discriminator: 1)
!4838 = distinct !DILexicalBlock(scope: !4834, file: !449, line: 1303, column: 2)
!4839 = !DILocation(line: 1303, column: 14, scope: !4837)
!4840 = !DILocation(line: 1303, column: 25, scope: !4837)
!4841 = !DILocation(line: 1303, column: 29, scope: !4837)
!4842 = !DILocation(line: 1303, column: 2, scope: !4837)
!4843 = !DILocalVariable(name: "item", scope: !4844, file: !449, line: 1304, type: !364)
!4844 = distinct !DILexicalBlock(scope: !4838, file: !449, line: 1303, column: 42)
!4845 = !DILocation(line: 1304, column: 15, scope: !4844)
!4846 = !DILocation(line: 1304, column: 30, scope: !4844)
!4847 = !DILocation(line: 1304, column: 22, scope: !4844)
!4848 = !DILocation(line: 1304, column: 33, scope: !4844)
!4849 = !DILocation(line: 1306, column: 7, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4844, file: !449, line: 1306, column: 7)
!4851 = !DILocation(line: 1306, column: 12, scope: !4850)
!4852 = !DILocation(line: 1306, column: 19, scope: !4850)
!4853 = !DILocation(line: 1306, column: 42, scope: !4854)
!4854 = !DILexicalBlockFile(scope: !4850, file: !449, discriminator: 1)
!4855 = !DILocation(line: 1306, column: 48, scope: !4854)
!4856 = !DILocation(line: 1306, column: 53, scope: !4854)
!4857 = !DILocation(line: 1306, column: 22, scope: !4854)
!4858 = !DILocation(line: 1306, column: 58, scope: !4854)
!4859 = !DILocation(line: 1306, column: 7, scope: !4854)
!4860 = !DILocation(line: 1307, column: 48, scope: !4850)
!4861 = !DILocation(line: 1307, column: 47, scope: !4850)
!4862 = !DILocation(line: 1307, column: 63, scope: !4850)
!4863 = !DILocation(line: 1307, column: 54, scope: !4850)
!4864 = !DILocation(line: 1307, column: 33, scope: !4854)
!4865 = !DILocation(line: 1307, column: 26, scope: !4850)
!4866 = !DILocation(line: 1307, column: 31, scope: !4850)
!4867 = !DILocation(line: 1307, column: 25, scope: !4850)
!4868 = !DILocation(line: 1308, column: 2, scope: !4844)
!4869 = !DILocation(line: 1303, column: 38, scope: !4870)
!4870 = !DILexicalBlockFile(scope: !4838, file: !449, discriminator: 2)
!4871 = !DILocation(line: 1303, column: 2, scope: !4870)
!4872 = distinct !{!4872, !4873}
!4873 = !DILocation(line: 1303, column: 2, scope: !4810)
!4874 = !DILocation(line: 1309, column: 1, scope: !4810)
